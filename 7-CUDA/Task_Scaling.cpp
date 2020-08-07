#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::scaling(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Scaling>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for scaling... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing 0.5x scaling (1000 reps)... ";
  auto* r_05 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(scale_05), __ENABLE_SET__, pirate_img, r_05,
                                           1000);
  if (!r_05->check_error())
    result_list.push_back($ave("scale_05", r_05));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_05->print_time();

  cout << "Testing 1.3x scaling (1000 reps)... ";
  auto* r_13 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(scale_13), __ENABLE_SET__, pirate_img, r_13,
                                           1000);
  if (!r_13->check_error())
    result_list.push_back($ave("scale_13", r_13));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_13->print_time();

  cout << "Testing 2.4x scaling (1000 reps)... ";
  auto* r_24 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(scale_24), __ENABLE_SET__, pirate_img, r_24,
                                           1000);
  if (!r_24->check_error())
    result_list.push_back($ave("scale_24", r_24));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_24->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_05;
  delete r_13;
  delete r_24;
};

#ifdef __INTEL_COMPILER
void task::scaling_unrolled(bool save_results) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  auto* scale_13_u64_img = __malloc<uint8_t>(x_size * y_size);
  auto* scale_24_u64_img = __malloc<uint8_t>(x_size * y_size);
  auto* scale_13_u512_img = __malloc<uint8_t>(x_size * y_size);
  auto* scale_24_u512_img = __malloc<uint8_t>(x_size * y_size);
  cout << _$m << "<Scaling (unrolled)>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for scaling (unrolled)... ";
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecResult* r = nullptr;
  cout << "Testing 1.3x scaling (unrolled)... ";
  r = __exec<uint8_t>(c::scale_13_unroll64, c::scale_13_unroll512, "(64)", "(512)", pirate_img,
                      scale_13_u64_img, scale_13_u512_img, x_size, y_size);
  delete r->print();
  cout << "Testing 2.4x scaling (unrolled)... ";
  r = __exec<uint8_t>(c::scale_24_unroll64, c::scale_24_unroll512, "(64)", "(512)", pirate_img,
                      scale_24_u64_img, scale_24_u512_img, x_size, y_size);
  delete r->print();

  // Save image(s)
  if (save_results) {
    cout << "Saving results... ";
    __bulk_save<uint8_t>(fileples {
      $("output/c_scaling_13_unroll64.raw", scale_13_u64_img, x_size, y_size),
      $("output/c_scaling_13_unroll512.raw", scale_13_u512_img, x_size, y_size),
      $("output/c_scaling_24_unroll64.raw", scale_24_u64_img, x_size, y_size),
      $("output/c_scaling_24_unroll512.raw", scale_24_u512_img, x_size, y_size)
    });
    cout << "OK" << endl;
  }
};
#endif
