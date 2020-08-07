#ifndef _CUDA_CORE_H_
#define _CUDA_CORE_H_

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cuda_profiler_api.h>
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <functional>
#include "Core_CXX.h"
#include "Util.cuh"

#ifdef loop_max_default
#undef loop_max_default
#endif
#define loop_max_default 500

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> cuda_func, std::function<void(void)> c1_flush,
                 std::function<void(void)> c2_flush, std::function<void(void)> cuda_flush,
                 std::function<void(double, const char*)> c1_report,
                 std::function<void(double, const char*)> c2_report,
                 std::function<void(double, const char*)> cuda_report,
                 bool c1_enable, bool c2_enable, bool cuda_enable, size_t loop_max);

// Execute function with one input
template<size_t X, size_t Y, typename T, typename R>
void __exec(std::function<void(T*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, R*, size_t, size_t)> c2_func,
            std::function<void(T*, R*, size_t, size_t, dim3&, dim3&)> cuda_func,
            bool enable_c1, bool enable_c2, bool enable_cuda, T* img, ExecResult<X, Y, 3, R>* r,
            unsigned short loop_max = loop_max_default, bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);

  // Determine blocks and threads
  dim3 blocks, threads;
  int cuda_device_count = 0;
  if (cudaGetDeviceCount(&cuda_device_count) == cudaSuccess || cuda_device_count >= 1) {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);

    /* Block/Thread Structure Plan (Example)
     *
     * Take (1025, 1025) image filled with 0x1 and 1024 for maximum threads number per block.
     * Don't care about y-axis maximum (because generally it is 65535, a big enough value).
     *
     * ����������������������������������������������������������������������������������������������������������������������������������
     * ��<----Block(0000,0000,0000)---->��<----Block(0001,0000,0000)---->��
     * ��<----Block(0000,0001,0000)---->��<----Block(0001,0001,0000)---->��
     * ��              ������              ��              ������              ��
     * ��<----Block(0000,1024,0000)---->��<----Block(0001,1024,0000)---->��
     * ����������������������������������������������������������������������������������������������������������������������������������
     *
     * In block (0, 0, 0) ...
     * ������������������������������������������������������������������������������������������������     ����������������
     * �� 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  ������  1 1 1 ��
     * ������������������������������������������������������������������������������������������������     ����������������
     *
     * In block (1, 0, 0) ...
     * ������������������������������������������������������������������������������������������������     ����������������
     * �� 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  ������  0 0 0 ��
     * ������������������������������������������������������������������������������������������������     ����������������
     */
    size_t px_mem_expectation = sizeof(T) + sizeof(R);
    size_t px_max_in_block = prop.sharedMemPerBlock / px_mem_expectation;
    size_t thread_size = std::min(std::min(X, (size_t)prop.maxThreadsPerBlock), px_max_in_block);
    size_t thread_size_with_warp = thread_size / 32 * 32;
    size_t block_width = (size_t)ceil((double)X / (double)thread_size);
    size_t block_height = Y;

    threads.x = (unsigned int)thread_size;
    blocks.x = (unsigned int)block_width;
    blocks.y = (unsigned int)block_height;
  } else {
    // Pass here : no-device case will be caught by __exec_base with exit-safe error reporting.
  }

  // Define wrappers
  T* cuda_input;
  R* cuda_output;
  auto c1_wrapper = [&]() -> void { c1_func(img, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img, r->outputs.at(1), X, Y); };
  auto cuda_wrapper = [&]() -> void {
    if (cudaMalloc((void**)&cuda_input, X * Y * sizeof(T)) != cudaSuccess)
      throw "Failed to allocate input image space in CUDA";
    if (cudaMalloc((void**)&cuda_output, X * Y * sizeof(R)) != cudaSuccess)
      throw "Failed to allocate output image space in CUDA memory";
    if (cudaMemcpy((void*)cuda_input, (const void*)img, X * Y * sizeof(T), cudaMemcpyHostToDevice)
        != cudaSuccess) {
      throw "Failed to copy input image from host to CUDA device";
    }
    cudaProfilerStart();
    cuda_func(cuda_input, cuda_output, X, Y, blocks, threads);
    cudaProfilerStop();
    if (cudaDeviceSynchronize() != cudaSuccess) {
      throw "Failed to synchronize CUDA core after launching the kernel";
    }
    if (cudaMemcpy((void*)r->outputs.at(2), (const void*)cuda_output, X * Y * sizeof(R),
                   cudaMemcpyDeviceToHost) != cudaSuccess)
      throw "Failed to copy output image from CUDA device to host";
  };

  // Define flushers
  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };
  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };
  auto cuda_flush = [&]() -> void {
    cudaFree(cuda_input);
    cudaFree(cuda_output);
  };

  // Define reporters
  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };
  auto cuda_report = [&](double time, const char* error_message) -> void {
    r->times[2] = time;
    r->errors[2] = error_message;
  };

  // Execution
  __exec_base(c1_wrapper, c2_wrapper, cuda_wrapper, c1_flush, c2_flush, cuda_flush,
              c1_report, c2_report, cuda_report, enable_c1, enable_c2, enable_cuda, loop_max);
};

// Execute function with two inputs
template<size_t X, size_t Y, typename T, typename R>
void __exec(std::function<void(T*, T*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, T*, R*, size_t, size_t)> c2_func,
            std::function<void(T*, T*, R*, size_t, size_t, dim3&, dim3&)> cuda_func,
            bool enable_c1, bool enable_c2, bool enable_cuda, T* img1, T* img2,
            ExecResult<X, Y, 3, R>* r, unsigned short loop_max = loop_max_default,
            bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);

  // Determine blocks and threads
  dim3 blocks, threads;
  int cuda_device_count = 0;
  if (cudaGetDeviceCount(&cuda_device_count) == cudaSuccess || cuda_device_count >= 1) {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);

    // Block/thread structre plan is same with in case of one input
    size_t px_mem_expectation = sizeof(T) + sizeof(R);
    size_t px_max_in_block = prop.sharedMemPerBlock / px_mem_expectation;
    size_t thread_size = std::min(std::min(X, (size_t)prop.maxThreadsPerBlock), px_max_in_block);
    size_t thread_size_with_warp = thread_size / 32 * 32;
    size_t block_width = (size_t)ceil((double)X / (double)thread_size);
    size_t block_height = Y;

    threads.x = (unsigned int)thread_size;
    blocks.x = (unsigned int)block_width;
    blocks.y = (unsigned int)block_height;
  } else {
    // Pass here : no-device case will be caught by __exec_base with exit-safe error reporting.
  }

  // Define wrappers
  T* cuda_input1;
  T* cuda_input2;
  R* cuda_output;
  auto c1_wrapper = [&]() -> void { c1_func(img1, img2, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img1, img2, r->outputs.at(1), X, Y); };
  auto cuda_wrapper = [&]() -> void {
    if (cudaMalloc((void**)&cuda_input1, X * Y * sizeof(T)) != cudaSuccess)
      throw "Failed to allocate input image space in CUDA (1)";
    if (cudaMalloc((void**)&cuda_input2, X * Y * sizeof(T)) != cudaSuccess)
      throw "Failed to allocate input image space in CUDA (2)";
    if (cudaMalloc((void**)&cuda_output, X * Y * sizeof(R)) != cudaSuccess)
      throw "Failed to allocate output image space in CUDA memory";
    if (cudaMemcpy((void*)cuda_input1, (const void*)img1, X * Y * sizeof(T),
                   cudaMemcpyHostToDevice) != cudaSuccess)
      throw "Failed to copy input image from host to CUDA device (1)";
    if (cudaMemcpy((void*)cuda_input2, (const void*)img2, X * Y * sizeof(T),
                   cudaMemcpyHostToDevice) != cudaSuccess)
      throw "Failed to copy input image from host to CUDA device (2)";
    cudaProfilerStart();
    cuda_func(cuda_input1, cuda_input2, cuda_output, X, Y, blocks, threads);
    cudaProfilerStop();
    if (cudaDeviceSynchronize() != cudaSuccess) {
      throw "Failed to synchronize CUDA core after launching the kernel";
    }
    if (cudaMemcpy((void*)r->outputs.at(2), (const void*)cuda_output, X * Y * sizeof(R),
                   cudaMemcpyDeviceToHost) != cudaSuccess)
      throw "Failed to copy output image from CUDA device to host";
  };

  // Define flushers
  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img1, img_size_d128);
    cache_flush((__m128i*)img2, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };
  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img1, img_size_d128);
    cache_flush((__m128i*)img2, img_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };
  auto cuda_flush = [&]() -> void {
    cudaFree(cuda_input1);
    cudaFree(cuda_input2);
    cudaFree(cuda_output);
  };

  // Define reporters
  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };
  auto cuda_report = [&](double time, const char* error_message) -> void {
    r->times[2] = time;
    r->errors[2] = error_message;
  };

  // Execution
  __exec_base(c1_wrapper, c2_wrapper, cuda_wrapper, c1_flush, c2_flush, cuda_flush,
              c1_report, c2_report, cuda_report, enable_c1, enable_c2, enable_cuda, loop_max);
};

// Execute function with a filter
template<size_t X, size_t Y, typename T, typename K, typename R>
void __exec(std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t)> c2_func,
            std::function<void(T*, const filt::Filter<K>*, R*, size_t, size_t, dim3&, dim3&)>
            cuda_func, bool enable_c1, bool enable_c2, bool enable_cuda, T* img,
            const filt::Filter<K>* filter, ExecResult<X, Y, 3, R>* r,
            unsigned short loop_max = loop_max_default, bool flush_output = true) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);
  const unsigned int kernel_size_d128 = (unsigned int)(filter->size2 * sizeof(K) / 16);

  // Determine blocks and threads
  dim3 blocks, threads;
  int cuda_device_count = 0;
  if (cudaGetDeviceCount(&cuda_device_count) == cudaSuccess || cuda_device_count >= 1) {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);

    // Block/thread structre plan is same with in case of one input
    size_t px_mem_expectation = sizeof(T) + sizeof(R);
    size_t px_max_in_block = prop.sharedMemPerBlock / px_mem_expectation;
    size_t thread_size = std::min(std::min(X, (size_t)prop.maxThreadsPerBlock), px_max_in_block);
    size_t thread_size_with_warp = thread_size / 32 * 32;
    size_t block_width = (size_t)ceil((double)X / (double)thread_size);
    size_t block_height = Y;

    threads.x = (unsigned int)thread_size;
    blocks.x = (unsigned int)block_width;
    blocks.y = (unsigned int)block_height;
  } else {
    // Pass here : no-device case will be caught by __exec_base with exit-safe error reporting.
  }

  // Define wrappers
  T* cuda_input;
  filt::Filter<K>* cuda_filter;
  R* cuda_output;
  auto c1_wrapper = [&]() -> void { c1_func(img, filter, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img, filter, r->outputs.at(1), X, Y); };
  auto cuda_wrapper = [&]() -> void {
    if (cudaMalloc((void**)&cuda_input, X * Y * sizeof(T)) != cudaSuccess)
      throw "Failed to allocate input image space in CUDA";
    if (cudaMalloc((void**)&cuda_output, X * Y * sizeof(R)) != cudaSuccess)
      throw "Failed to allocate output image space in CUDA memory";
    if (cudaMalloc((void**)&cuda_filter, sizeof(filt::Filter<K>)) != cudaSuccess)
      throw "Failed to allocate input filter space in CUDA";
    if (cudaMemcpy((void*)cuda_input, (const void*)img, X * Y * sizeof(T),
                   cudaMemcpyHostToDevice) != cudaSuccess)
      throw "Failed to copy input image from host to CUDA device";
    if (cudaMemcpy((void*)cuda_filter, (const void*)filter, sizeof(filt::Filter<K>),
                   cudaMemcpyHostToDevice) != cudaSuccess)
      throw "Failed to copy input filter from host to CUDA device";
    cudaProfilerStart();
    cuda_func(cuda_input, cuda_filter, cuda_output, X, Y, blocks, threads);
    cudaProfilerStop();
    if (cudaDeviceSynchronize() != cudaSuccess) {
      throw "Failed to synchronize CUDA core after launching the kernel";
    }
    if (cudaMemcpy((void*)r->outputs.at(2), (const void*)cuda_output, X * Y * sizeof(R),
                   cudaMemcpyDeviceToHost) != cudaSuccess)
      throw "Failed to copy output image from CUDA device to host";
  };

  // Define flushers
  auto c1_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)filter->kernel, kernel_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(0), out_size_d128);
    }
  };
  auto c2_flush = [&]() -> void {
    cache_flush((__m128i*)img, img_size_d128);
    cache_flush((__m128i*)filter->kernel, kernel_size_d128);
    if (flush_output) {
      cache_flush((__m128i*)r->outputs.at(1), out_size_d128);
    }
  };
  auto cuda_flush = [&]() -> void {
    cudaFree(cuda_input);
    cudaFree(cuda_filter);
    cudaFree(cuda_output);
  };

  // Define reporters
  auto c1_report = [&](double time, const char* error_message) -> void {
    r->times[0] = time;
    r->errors[0] = error_message;
  };
  auto c2_report = [&](double time, const char* error_message) -> void {
    r->times[1] = time;
    r->errors[1] = error_message;
  };
  auto cuda_report = [&](double time, const char* error_message) -> void {
    r->times[2] = time;
    r->errors[2] = error_message;
  };

  // Execution
  __exec_base(c1_wrapper, c2_wrapper, cuda_wrapper, c1_flush, c2_flush, cuda_flush,
              c1_report, c2_report, cuda_report, enable_c1, enable_c2, enable_cuda, loop_max);
};

#ifdef __CUDACC__
#define __make_host__(fn_name, input_type, output_type) \
  (input_type* in, output_type* out, size_t x_size, size_t y_size, dim3& blocks, dim3& threads) { \
    ::fn_name<<<blocks, threads>>>(in, out, x_size, y_size); }
#define __make_host_2__(fn_name, input_type, output_type) \
  (input_type* in1, input_type* in2, output_type* out, size_t x_size, size_t y_size, \
   dim3& blocks, dim3& threads) { ::fn_name<<<blocks, threads>>>(in1, in2, out, x_size, y_size); }
#define __make_host_f__(fn_name, input_type, filter_type, output_type) \
  (input_type* in, const filt::Filter<filter_type>* f, output_type* out, size_t x_size, \
   size_t y_size, dim3& blocks, dim3& threads) { \
    ::fn_name<<<blocks, threads>>>(in, f, out, x_size, y_size); }
#else
#define __make_host__(fn_name, input_type, output_type) \
  (input_type* in, output_type* out, size_t x_size, size_t y_size, dim3& blocks, dim3& threads) { \
    ::fn_name(in, out, x_size, y_size); }
#define __make_host_2__(fn_name, input_type, output_type) \
  (input_type* in1, input_type* in2, output_type* out, size_t x_size, size_t y_size, \
   dim3& blocks, dim3& threads) { ::fn_name(in1, in2, out, x_size, y_size); }
#define __make_host_f__(fn_name, input_type, filter_type, output_type) \
  (input_type* in, const filt::Filter<filter_type>* f, output_type* out, size_t x_size, \
   size_t y_size, dim3& blocks, dim3& threads) { ::fn_name(in, f, out, x_size, y_size); }
#endif

#define __cuda_todo__(fn_name, input_type, output_type) \
  (input_type* in, output_type* out, size_t x_size, size_t y_size, dim3& blocks, dim3& threads) { \
    throw "Not implemented"; }
#define __cuda_todo_2__(fn_name, input_type, output_type) \
  (input_type* in1, input_type* in2, output_type* out, size_t x_size, size_t y_size, \
   dim3& blocks, dim3& threads) { throw "Not implemented"; }
#define __cuda_todo_f__(fn_name, input_type, filter_type, output_type) \
  (input_type* in, const filt::Filter<filter_type>* f, output_type* out, size_t x_size, \
   size_t y_size, dim3& blocks, dim3& threads) { throw "Not implemented"; }

#endif // _CUDA_CORE_H_
