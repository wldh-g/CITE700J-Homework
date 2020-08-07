#include <iostream>
#include "Core.h"
#include "Filters.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::general_convolution_unsigned(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<General Convolution (unsigned)>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for convolution (unsigned)... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing zero-pad convolution (unsigned, 100 reps)... " << _$r;
  auto* r_zp = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, int8_t, uint8_t>(__FUNC__(conv_zp_unsigned), __ENABLE_SET__,
                                                  pirate_img, filt::blur_15, r_zp, 100);
  if (!r_zp->check_error())
    result_list.push_back($ave("conv_unsigned_zp", r_zp));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_zp->print_time();

  cout << "Testing boundary extension convolution (unsigned, 100 reps)... " << _$r;
  auto* r_be = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, int8_t, uint8_t>(__FUNC__(conv_be_unsigned), __ENABLE_SET__,
                                                  pirate_img, filt::blur_15, r_be, 100);
  if (!r_be->check_error())
    result_list.push_back($ave("conv_unsigned_be", r_be));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_be->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_zp;
  delete r_be;
};

void task::general_convolution_signed(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<General Convolution (signed)>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for convolution (signed)... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing zero-pad convolution (signed, 100 reps)... " << _$r;
  auto* r_zp = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, int8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, int8_t, int8_t>(__FUNC__(conv_zp_signed), __ENABLE_SET__,
                                                  pirate_img, filt::blur_15, r_zp, 100);
  if (!r_zp->check_error())
    result_list.push_back($ave("conv_signed_zp", r_zp));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_zp->print_time();

  cout << "Testing boundary extension convolution (signed, 100 reps)... " << _$r;
  auto* r_be = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, int8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, int8_t, int8_t>(__FUNC__(conv_be_signed), __ENABLE_SET__,
                                                  pirate_img, filt::blur_15, r_be, 100);
  if (!r_be->check_error())
    result_list.push_back($ave("conv_signed_be", r_be));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_be->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_zp;
  delete r_be;
};
