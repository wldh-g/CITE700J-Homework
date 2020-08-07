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
  cout << "Testing 0.5x scaling (1000 reps)... " << _$r;
  auto* r_05 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(scale_05), __ENABLE_SET__, pirate_img, r_05,
                                           1000);
  if (!r_05->check_error())
    result_list.push_back($ave("scale_05", r_05));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_05->print_time();

  cout << "Testing 1.3x scaling (1000 reps)... " << _$r;
  auto* r_13 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(scale_13), __ENABLE_SET__, pirate_img, r_13,
                                           1000);
  if (!r_13->check_error())
    result_list.push_back($ave("scale_13", r_13));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_13->print_time();

  cout << "Testing 2.4x scaling (1000 reps)... " << _$r;
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
void task::scaling_unrolled(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Scaling (unrolled)>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for scaling (unrolled)... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing 1.3x scaling (unrolled, 1000 reps)... " << _$r;
  auto* r_13 = new ExecResult<x_size, y_size, 2, uint8_t>({ "C_64", "C_512" });
  __exec<x_size, y_size, uint8_t, uint8_t>(c::scale_13_unroll64, c::scale_13_unroll512, enable_c,
                                           enable_c, pirate_img, r_13, 1000);
  if (!r_13->check_error())
    result_list.push_back($ave("scaling_13_unroll", r_13));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_13->print_time();

  cout << "Testing 2.4x scaling (unrolled, 1000 reps)... " << _$r;
  auto* r_24 = new ExecResult<x_size, y_size, 2, uint8_t>({ "C_64", "C_512" });
  __exec<x_size, y_size, uint8_t, uint8_t>(c::scale_24_unroll64, c::scale_24_unroll512, enable_c,
                                           enable_c, pirate_img, r_24, 1000);
  if (!r_24->check_error())
    result_list.push_back($ave("scaling_24_unroll", r_24));
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

  delete r_13;
  delete r_24;
};
#endif
