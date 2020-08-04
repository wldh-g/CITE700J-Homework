#include "Core.h"

std::queue<void*>* q_ptrs = new std::queue<void*>();

ExecMetaSet* __exec_base(std::function<void(void)> c1_func, std::function<void(void)> c2_func,
                        std::function<void(void)> c1_flush, std::function<void(void)> c2_flush,
                        bool enable_second, unsigned short loop_max, const char* c1_title,
                        const char* c2_title) {
  ExecMetaSet* result = new ExecMetaSet(enable_second, c1_title, c2_title);
  CPerfCounter timer;
  double c1_time = 0;
  double c2_time = 0;

  try {
    for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
      c1_flush();
      timer.Reset();
      timer.Start();
      c1_func();
      timer.Stop();
      c1_time += timer.GetElapsedTime();
    }
    result->time1 = c1_time / (double)loop_max * 1000.0;
  } catch (const char* error) {
    result->error1 = error;
  } catch (...) {
    result->error1 = "Unknown error occurred";
  }

  if (enable_second) {
    try {
      for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
        c2_flush();
        timer.Reset();
        timer.Start();
        c2_func();
        timer.Stop();
        c2_time += timer.GetElapsedTime();
      }
      result->time2 = c2_time / (double)loop_max * 1000.0;
    } catch (const char* error) {
      result->error2 = error;
    } catch (...) {
      result->error2 = "Unknown error occurred";
    }
  }

  return result;
};
