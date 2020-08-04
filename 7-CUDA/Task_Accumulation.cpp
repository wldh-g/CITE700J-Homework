#include <iostream>
#ifdef __INTEL_COMPILER
#include <limits>
#include <tbb/global_control.h>
#include <tbb/task_arena.h>
#include <tbb/parallel_for.h>
#endif
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::accumulation_16b(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* pirate16_img = __malloc<uint16_t>(x_size * y_size);
  cout << _$m << "<Accumulation 16-bit>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for accumulation... ";
  __file<uint16_t>("images/pirate_512_16b.raw", pirate16_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecResult* r = nullptr;
  uint64_t c_result = 0;
  uint64_t simd_result = 0;
  cout << "Testing accumulation... ";
  r = __exec<uint16_t, uint64_t>(c::accumulation_16b, simd::accumulation_16b, enable_simd,
                                 pirate16_img, &c_result, &simd_result, x_size, y_size,
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

#ifdef __INTEL_COMPILER
void task::accumulation_16b_tbb(bool enable_simd) {
  // Initialization
  // Note — because I used 64-bit store, there's no problem to set `inner_loop_to` as UINT_MAX / 10
  // Note — but remind that some big images can cause overflow in 32-bit level on SIMD function,
  //        and `pirate_2048_16b_0.001x.raw` is one of the images who does not cause overflow.
  constexpr size_t loop_max = 200;
  constexpr size_t inner_loop_from = 0;
  constexpr size_t inner_loop_to = 500;
  constexpr size_t inner_loop_step = 1;
  size_t x_size = 2048, y_size = 2048;
  auto* pirate16_img = __malloc<uint16_t>(x_size * y_size);
  cout << _$m << "<Accumulation 16-bit w/o Intel® TBB>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for accumulation... ";
  __file<uint16_t>("images/pirate_2048_16b_0.001x.raw", pirate16_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Define accumulation repeating lambdas without TBB
  uint64_t c_result = 0;
  uint64_t simd_result = 0;

  auto c_gen = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto c_acc = [&](uint32_t idx) -> void {
      c::accumulation_16b(in, out, x_size, y_size);
      c_result += *out;
    };
    for (size_t idx = inner_loop_from; idx < inner_loop_to; idx += inner_loop_step) {
      c_acc(idx);
    };
  };

  auto simd_gen = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto simd_acc = [&](uint32_t idx) -> void {
      simd::accumulation_16b(in, out, x_size, y_size);
      simd_result += *out;
    };
    for (size_t idx = inner_loop_from; idx < inner_loop_to; idx += inner_loop_step) {
      simd_acc(idx);
    };
  };

  // Execute without TBB
  ExecResult* r = nullptr;
  cout << "Testing accumulation (without TBB)... ";
  r = __exec<uint16_t, uint64_t>(c_gen, simd_gen, enable_simd, pirate16_img, &c_result,
                                 &simd_result, x_size, y_size, loop_max, false);
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
      cout << "Verification of accumulation w/o TBB failed." << endl;
    }
  }

  // Initialize TBB scheduler
  cout << endl;
  cout << _$m << "<Accumulation 16-bit w/ Intel® TBB>" << _$x << endl;
  tbb::task_scheduler_init init();
  c_result = 0;
  simd_result = 0;

  // Define accumulation repeating lambdas with TBB
  auto c_tbb = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto c_acc = [&](uint32_t idx) -> void {
      c::accumulation_16b(in, out, x_size, y_size);
      c_result += *out;
    };
    tbb::parallel_for(inner_loop_from, inner_loop_to, inner_loop_step, c_acc);
  };

  auto simd_tbb = [&](uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) -> ExecResult* {
    auto simd_acc = [&](uint32_t idx) -> void {
      simd::accumulation_16b(in, out, x_size, y_size);
      simd_result += *out;
    };
    tbb::parallel_for(inner_loop_from, inner_loop_to, inner_loop_step, simd_acc);
  };

  // Execute with TBB
  tbb::global_control control(tbb::global_control::max_allowed_parallelism, 1200);
  tbb::task_arena test_arena;
  test_arena.execute([&] {
    cout << _$y << "Note : TBB default number of threads in this environment is "
      << tbb::this_task_arena::max_concurrency() << _$x << endl;
  });
  test_arena.terminate();
  auto execute_with_nthread = [&](size_t nthread) -> void {
    tbb::task_arena exec_arena((int)nthread);
    exec_arena.execute([&] {
      cout << "Testing accumulation (nthread=" << tbb::this_task_arena::max_concurrency()
        << ")... " << _$r;
      r = __exec<uint16_t, uint64_t>(c_tbb, simd_tbb, enable_simd, pirate16_img, &c_result,
                                     &simd_result, x_size, y_size, loop_max, false);
      if (!(r->error1 == nullptr) || !(r->error2 == nullptr))
        cout << "[not comparable] ";
      cout << _$x;
      delete r->print();
    });
    exec_arena.terminate();
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
  execute_with_nthread(1024);

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
#endif
