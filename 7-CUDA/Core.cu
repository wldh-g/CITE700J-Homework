#include "Core_CUDA.cuh"

void __exec_base(std::function<void(CPerfCounter&)> c1_func,
                 std::function<void(CPerfCounter&)> c2_func,
                 std::function<void(CPerfCounter&)> cuda_func, std::function<void(void)> c1_flush,
                 std::function<void(void)> c2_flush, std::function<void(void)> cuda_flush,
                 std::function<void(double, const char*)> c1_report,
                 std::function<void(double, const char*)> c2_report,
                 std::function<void(double, const char*)> cuda_report,
                 bool c1_enable, bool c2_enable, bool cuda_enable, size_t loop_max) {
  CPerfCounter timer;
  double c1_time = 0;
  double c2_time = 0;
  double cuda_time = 0;

  if (c1_enable) {
    try {
      for (size_t loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        timer.Reset();
        c1_flush();
        c1_func(timer);
        c1_time += timer.GetElapsedTime();
      }
      c1_report(c1_time / (double)loop_max * 1000.0, nullptr);
    } catch (const char* error) {
      c1_report(0, error);
    } catch (...) {
      c1_report(0, "Unknown error occurred");
    }
  } else { c1_report(std::numeric_limits<double>::max(), nullptr); }

  if (c2_enable) {
    try {
      for (size_t loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        timer.Reset();
        c2_flush();
        c2_func(timer);
        c2_time += timer.GetElapsedTime();
      }
      c2_report(c2_time / (double)loop_max * 1000.0, nullptr);
    } catch (const char* error) {
      c2_report(0, error);
    } catch (...) {
      c2_report(0, "Unknown error occurred");
    }
  } else { c2_report(std::numeric_limits<double>::max(), nullptr); }

  if (cuda_enable) {
    try {
      // Set up device
      int cuda_device_count = 0;
      if (cudaGetDeviceCount(&cuda_device_count) != cudaSuccess || cuda_device_count < 1)
        throw "Failed to get CUDA device";
      if (cudaSetDevice(0) != cudaSuccess) throw "Failed to set CUDA device to 0";

      // Do execution
      for (size_t loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        timer.Reset();
        cuda_func(timer);
        cuda_time += timer.GetElapsedTime();
        cuda_flush();
      }

      // Clearing out
      if (cudaDeviceReset() != cudaSuccess) throw "Failed to reset CUDA device";
      cuda_report(cuda_time / (double)loop_max * 1000.0, nullptr);
    } catch (cudaError_t& error_code) {
      cuda_report(0, ("Failed to synchronize CUDA core after launching the kernel ("
                      + std::to_string(error_code) + ")").c_str());
    } catch (const char* error) {
      cuda_flush();
      cuda_report(0, error);
    } catch (...) {
      cuda_flush();
      cuda_report(0, "Unknown error occurred");
    }
  } else { cuda_report(std::numeric_limits<double>::max(), nullptr); }
};

__global__ void setKernel_int8_global(filt::Filter<int8_t>* filter, int8_t* kernel_ptr) {
  filter->kernel = kernel_ptr;
};
void setKernel(filt::Filter<int8_t>* filter, int8_t* kernel_ptr) {
  setKernel_int8_global __set_block_thread__(1,1) (filter, kernel_ptr);
};
