#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::addition_8b_16b(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<8-bit & 16-bit Addition>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for addition... ";
  constexpr size_t x_size = 2048, y_size = 2048;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  auto* glow_img = __malloc<uint8_t>(x_size * y_size);
  __bulk_load<uint8_t>(filepool {
    $("images/pirate_2048_8b.raw", pirate_img, x_size, y_size),
    $("images/glow_2048_8b.raw", glow_img, x_size, y_size)
  });
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing 8-bit addition (500 reps)... ";
  auto* r_8 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(add_8b), __ENABLE_SET__, pirate_img, glow_img,
                                           r_8, 500);
  if (!r_8->check_error())
    result_list.push_back($ave("8b_addition", r_8));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_8->print_time();

  cout << "Testing 16-bit addition (500 reps)... ";
  auto* r_16 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint16_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint16_t>(__FUNC__(add_16b), __ENABLE_SET__, pirate_img, glow_img,
                                            r_16, 500);
  if (!r_16->check_error())
    result_list.push_back($ave("16b_addition", r_16));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_16->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_8;
  delete r_16;
};
