#include "Core_CXX.h"

std::vector<void*>* vec_ptrs = new std::vector<void*>();

void __exec_base(std::function<void(CPerfCounter&)> c1_func,
                 std::function<void(CPerfCounter&)> c2_func,
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
};

bool __bulk_diff(respool v) {
  bool is_not_diff = true;
  for (size_t idx = 0; idx < v.size(); idx += 1) {
    if (!std::get<1>(v[idx])(is_not_diff)) {
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
