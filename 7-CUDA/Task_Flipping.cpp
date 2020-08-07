#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::flipx_flipy(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<FlipX & FlipY>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for flipping... ";
  constexpr size_t x_size = 2048, y_size = 2048;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_2048_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing x-axis flipping (500 reps)... ";
  auto* r_x = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(xflip), __ENABLE_SET__, pirate_img, r_x, 500);
  if (!r_x->check_error())
    result_list.push_back($ave("xflip", r_x));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_x->print_time();

  cout << "Testing y-axis flipping (500 reps)... ";
  auto* r_y = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(yflip), __ENABLE_SET__, pirate_img, r_y, 500);
  if (!r_y->check_error())
    result_list.push_back($ave("yflip", r_y));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_y->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_x;
  delete r_y;
};
