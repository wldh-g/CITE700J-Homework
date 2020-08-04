#include <iostream>
#include <tbb/global_control.h>
#include <tbb/task_arena.h>
#include <tbb/parallel_for.h>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::accumulation_16b(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* lena16_img = __malloc<uint16_t>(x_size * y_size);
  cout << _$m << "<Accumulation 16-bit>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for accumulation... ";
  __file<uint16_t>("images/lena_512_16b.raw", lena16_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecResult* r = nullptr;
  uint64_t c_result = 0;
  uint64_t simd_result = 0;
  cout << "Testing accumulation... ";
  r = __exec<uint16_t, uint64_t>(c::accumulation_16b, simd::accumulation_16b, enable_simd,
                                 lena16_img, &c_result, &simd_result, x_size, y_size,
                                 loop_max_default, false);
  if (!(r->error1 == nullptr) || !(r->error2 == nullptr))
    cout << "[not comparable] ";
  delete r->print();

  // Verify results using comparison
  if (enable_simd) {
    cout << "Verifying results... ";
    if (c_result == simd_result) {
      cout << "OK" << endl;
    } else {
      cout << "(C) " << c_result << " != " << simd_result << " (SIMD)" << endl;
      cout << "Verification of accumulation failed." << endl;
    }
  }
};

void task::accumulation_16b_tbb(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* lena16_img = __malloc<uint16_t>(x_size * y_size);
  cout << _$m << "<Accumulation 16-bit w/ Intel® TBB>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for accumulation w/ TBB... ";
  __file<uint16_t>("images/lena_512_16b.raw", lena16_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Initialize TBB scheduler
  tbb::task_scheduler_init init();

  // Define accumulation repeating lambdas
  // Note — because I used 64-bit result store, there's no problem to set `to` as UINT_MAX / 10
  uint32_t from = 0;
  uint32_t to = 500;
  uint32_t step = 1;
  uint64_t c_result = 0;
  uint64_t simd_result = 0;

  auto c_tbb = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto c_acc = [&](uint32_t idx) -> void {
      c::accumulation_16b(in, out, x_size, y_size);
      c_result += *out;
    };
    tbb::parallel_for(from, to, step, c_acc);
  };

  auto simd_tbb = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto simd_acc = [&](uint32_t idx) -> void {
      simd::accumulation_16b(in, out, x_size, y_size);
      simd_result += *out;
    };
    tbb::parallel_for(from, to, step, simd_acc);
  };

  // Execute function(s)
  tbb::task_arena test_arena;
  test_arena.execute([&] {
    cout << _$y << "Note : TBB default number of threads in this environment is "
      << tbb::this_task_arena::max_concurrency() << _$x << endl;
  });
  ExecResult* r = nullptr;
  auto execute_with_nthread = [&](size_t nthread) -> void {
    tbb::task_arena exec_arena((int)nthread);
    exec_arena.execute([&] {
      cout << "Testing accumulation (nthread=" << tbb::this_task_arena::max_concurrency()
        << ")... " << _$r;
      r = __exec<uint16_t, uint64_t>(c_tbb, simd_tbb, enable_simd, lena16_img, &c_result,
                                     &simd_result, x_size, y_size, loop_max_default, false);
      if (!(r->error1 == nullptr) || !(r->error2 == nullptr))
        cout << "[not comparable] ";
      cout << _$x;
      delete r->print();
    });
  };

  execute_with_nthread(1);
  execute_with_nthread(2);
  execute_with_nthread(4);
  execute_with_nthread(8);
  execute_with_nthread(16);
  execute_with_nthread(32);
  execute_with_nthread(64);
  execute_with_nthread(128);
  execute_with_nthread(256);
  execute_with_nthread(512);

  // Verify results using comparison
  if (enable_simd) {
    cout << "Verifying results... ";
    if (c_result == simd_result) {
      cout << "OK" << endl;
    } else {
      cout << "(C) " << c_result << " != " << simd_result << " (SIMD)" << endl;
      cout << "Verification of accumulation w/ TBB failed." << endl;
    }
  }
};
