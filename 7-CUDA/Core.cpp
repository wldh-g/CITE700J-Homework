#include "Core_CXX.h"

std::queue<void*>* q_ptrs = new std::queue<void*>();

void __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                 std::function<void(void)> c1_flush, std::function<void(void)> c2_flush,
                 std::function<void(double, const char*)> c1_report,
                 std::function<void(double, const char*)> c2_report,
                 bool c1_enable, bool c2_enable, size_t loop_max) {
  CPerfCounter timer;
  double c1_time = 0;
  double c2_time = 0;

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
};

bool __bulk_diff(respool v) {
  bool is_not_diff = true;
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    if (std::get<1>(v[idx])()) {
      std::cout << "Verification failed in " << std::get<0>(v[idx]) << "." << std::endl;
      is_not_diff = false;
    }
  }
  return is_not_diff;
};

void __bulk_save(respool v) {
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    std::get<2>(v[idx])();
  }
};
