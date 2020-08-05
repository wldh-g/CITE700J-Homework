#include "Core_CUDA.cuh"

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> cuda_func, std::function<void(void)> c1_flush,
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
        timer.Start();
        c1_func();
        timer.Stop();
        c1_time += timer.GetElapsedTime();
      }
      c1_report(c1_time / (double)loop_max * 1000.0, nullptr);
    } catch (const char* error) {
      c1_report(0, error);
    } catch (...) {
      c1_report(0, "Unknown error occurred");
    }
  }

  if (c2_enable) {
    try {
      for (size_t loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        timer.Reset();
        c2_flush();
        timer.Start();
        c2_func();
        timer.Stop();
        c2_time += timer.GetElapsedTime();
      }
      c2_report(c2_time / (double)loop_max * 1000.0, nullptr);
    } catch (const char* error) {
      c2_report(0, error);
    } catch (...) {
      c2_report(0, "Unknown error occurred");
    }
  }

  if (cuda_enable) {
    try {
      // Set up device
      int cuda_device_count = 0;
      if (cudaGetDeviceCount(&cuda_device_count) != cudaSuccess || cuda_device_count < 1)
        throw "Failed to get CUDA device";
      if (cudaSetDevice(0) != cudaSuccess) throw "Failed to set CUDA device to 0";
      
      // Set up events & profiler
      cudaEvent_t start, stop;
      cudaEventCreate(&start);
      cudaEventCreate(&stop);

      // Do execution
      float cuda_time_partial = 0;
      for (size_t loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        cudaEventRecord(start);
        cuda_func();
        cudaEventRecord(stop);
        cudaEventSynchronize(stop);
        cudaEventElapsedTime(&cuda_time_partial, start, stop);
        cuda_time += (double)cuda_time_partial;
      }

      // Clearing out
      cudaEventDestroy(start);
      cudaEventDestroy(stop);
      cuda_flush();
      if (cudaDeviceReset() != cudaSuccess) throw "Failed to reset CUDA device";

      cuda_report(cuda_time / (double)loop_max, nullptr);
    } catch (const char* error) {
      cuda_flush();
      cuda_report(0, error);
    } catch (...) {
      cuda_flush();
      cuda_report(0, "Unknown error occurred");
    }
  }
};
