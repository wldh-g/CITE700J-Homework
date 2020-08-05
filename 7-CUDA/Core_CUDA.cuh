#ifndef _CUDA_CORE_H_
#define _CUDA_CORE_H_

#include <cstdint>
#include <cstdio>
#include <cuda_profiler_api.h>
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <functional>
#include "Core_CXX.h"

#define loop_max_default 2000

#ifdef __CUDACC__
#define __dim__(...) <<<__VA_ARGS__>>>
#else
#define __dim__(...)
#endif

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> cuda_func, std::function<void(void)> c1_flush,
                 std::function<void(void)> c2_flush, std::function<void(void)> cuda_flush,
                 std::function<void(double, const char*)> c1_report,
                 std::function<void(double, const char*)> c2_report,
                 std::function<void(double, const char*)> cuda_report,
                 bool c1_enable, bool c2_enable, bool cuda_enable, size_t loop_max);

template<size_t X, size_t Y, typename T, typename R>
void __exec(std::function<void(T*, R*, size_t, size_t)> c1_func,
            std::function<void(T*, R*, size_t, size_t)> c2_func,
            std::function<void(T*, R*, size_t, size_t)> cuda_func,
            bool enable_c1, bool enable_c2, bool enable_cuda, T* img, ExecResult<X, Y, 3, R>* r,
            unsigned short loop_max = loop_max_default, bool flush_output = true,
            size_t thread_x = X, size_t thread_y = 1) {
  constexpr unsigned int img_size_d128 = (unsigned int)(X * Y * sizeof(T) / 16);
  constexpr unsigned int out_size_d128 = (unsigned int)(X * Y * sizeof(R) / 16);

  T* cuda_input;
  R* cuda_output;
  dim3 blocks, threads;

  threads.x = (unsigned int)thread_x;
  threads.y = (unsigned int)thread_y;
  blocks.x = (unsigned int)((X + thread_x - 1) / thread_x);
  blocks.y = (unsigned int)((Y + thread_y - 1) / thread_y);

  auto c1_wrapper = [&]() -> void { c1_func(img, r->outputs.at(0), X, Y); };
  auto c2_wrapper = [&]() -> void { c2_func(img, r->outputs.at(1), X, Y); };
  auto cuda_wrapper = [&]() -> void {
    if (cudaMalloc((void**)&cuda_input, X * Y * sizeof(T)) != cudaSuccess)
      throw "Failed to allocate input image space in CUDA";
    if (cudaMalloc((void**)&cuda_output, X * Y * sizeof(R)) != cudaSuccess)
      throw "Failed to allocate output image space in CUDA memory";
    if (cudaMemcpy(cuda_input, img, X * Y * sizeof(T), cudaMemcpyHostToDevice) != cudaSuccess) {
      throw "Failed to copy input image from host to CUDA device";
    }
    cudaProfilerStart();
    cuda_func __dim__(blocks, threads) (cuda_input, cuda_output, X, Y);
    cudaProfilerStop();
    if (cudaDeviceSynchronize() != cudaSuccess) {
      throw "Failed to synchronize CUDA core after launching the kernel";
    }
    if (cudaMemcpy(r->outputs[2], cuda_output, X * Y * sizeof(R), cudaMemcpyDeviceToHost)
        != cudaSuccess) throw "Failed to copy output image from CUDA device to host";
  };

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

  __exec_base(c1_wrapper, c2_wrapper, cuda_wrapper, c1_flush, c2_flush, cuda_flush,
              c1_report, c2_report, cuda_report, enable_c1, enable_c2, enable_cuda, loop_max);
};

#endif // _CUDA_CORE_H_
