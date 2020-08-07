#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::multiplication(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Matrix Multiplications>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for multiplication... ";
  constexpr size_t x_size_1 = 32, y_size_1 = 32;
  constexpr size_t x_size_2 = 512, y_size_2 = 512;
  constexpr size_t x_size_3 = 2048, y_size_3 = 2048;
  auto* glow32_img = __malloc<uint8_t>(x_size_1 * y_size_1);
  auto* glow512_img = __malloc<uint8_t>(x_size_2 * y_size_2);
  auto* glow2048_img = __malloc<uint8_t>(x_size_3 * y_size_3);
  auto* pirate32_img = __malloc<uint8_t>(x_size_1 * y_size_1);
  auto* pirate512_img = __malloc<uint8_t>(x_size_2 * y_size_2);
  auto* pirate2048_img = __malloc<uint8_t>(x_size_3 * y_size_3);
  __bulk_load<uint8_t>(filepool {
    $("images/glow_32_8b.raw", glow32_img, x_size_1, y_size_1),
    $("images/glow_512_8b.raw", glow512_img, x_size_2, y_size_2),
    $("images/glow_2048_8b.raw", glow2048_img, x_size_3, y_size_3),
    $("images/pirate_32_8b.raw", pirate32_img, x_size_1, y_size_1),
    $("images/pirate_512_8b.raw", pirate512_img, x_size_2, y_size_2),
    $("images/pirate_2048_8b.raw", pirate2048_img, x_size_3, y_size_3)
  });
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing 32x32 multiplication (1000 reps)... ";
  auto* r_32 = new ExecResult<x_size_1, y_size_1, __TASK_TEST_CNT__, uint8_t>(
    {__TASK_TEST_LABEL__ });
  __exec<x_size_1, y_size_1, uint8_t, uint8_t>(__FUNC__(multiply), __ENABLE_SET__, pirate32_img,
                                               glow32_img, r_32, 1000);
  if (!r_32->check_error())
    result_list.push_back($ave("multiplication_32", r_32));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_32->print_time();

  cout << "Testing 512x512 multiplication (100 reps)... ";
  auto* r_512 = new ExecResult<x_size_2, y_size_2, __TASK_TEST_CNT__, uint8_t>(
    { __TASK_TEST_LABEL__ });
  __exec<x_size_2, y_size_2, uint8_t, uint8_t>(__FUNC__(multiply), __ENABLE_SET__, pirate512_img,
                                               glow512_img, r_512, 100);
  if (!r_512->check_error())
    result_list.push_back($ave("multiplication_512", r_512));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_512->print_time();

  cout << "Testing 2048x2048 multiplication (1 reps)... ";
  auto* r_2048 = new ExecResult<x_size_3, y_size_3, __TASK_TEST_CNT__, uint8_t>(
    { __TASK_TEST_LABEL__ });
  __exec<x_size_3, y_size_3, uint8_t, uint8_t>(__FUNC__(multiply), __ENABLE_SET__, pirate2048_img,
                                               glow2048_img, r_2048, 1);
  if (!r_2048->check_error())
    result_list.push_back($ave("multiplication_2048", r_2048));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_2048->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_32;
  delete r_512;
  delete r_2048;
};
