#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::median_filter(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Median Filter>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for median filter... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing 3-tap median filter (100 reps)... " << _$r;
  auto* r_3t = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(median_3tap), __ENABLE_SET__, pirate_img, r_3t,
                                           100);
  if (!r_3t->check_error())
    result_list.push_back($ave("median_3tap", r_3t));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_3t->print_time();

  cout << "Testing 5-tap median filter (100 reps)... " << _$r;
  auto* r_5t = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(median_5tap), __ENABLE_SET__, pirate_img, r_5t,
                                           100);
  if (!r_5t->check_error())
    result_list.push_back($ave("median_5tap", r_5t));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_5t->print_time();

  cout << "Testing 3-by-3 median filter (100 reps)... " << _$r;
  auto* r_33 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(median_3by3), __ENABLE_SET__, pirate_img, r_33,
                                           100);
  if (!r_33->check_error())
    result_list.push_back($ave("median_3by3", r_33));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_33->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_3t;
  delete r_5t;
  delete r_33;
};

void task::median_filter_horz(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Horizontal 5-tap Median Filter>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for median filter... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing horizontal 5-tap median filter (1000 reps)... " << _$r;
  auto* r_5t = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(median_5tap_horz), __ENABLE_SET__, pirate_img,
                                           r_5t, 1000);
  if (!r_5t->check_error())
    result_list.push_back($ave("median_5tap", r_5t));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_5t->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_5t;
};

