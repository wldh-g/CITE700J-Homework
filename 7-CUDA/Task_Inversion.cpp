#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::inversion_8b(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Inversion 8-bit>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for inversion... ";
  constexpr size_t x_size = 2048, y_size = 2048;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_2048_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing inversion... " << _$r;
  auto* r = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(invert_8b), __ENABLE_SET__, pirate_img, r);
  if (!r->check_error())
    result_list.push_back($ave("inversion", r));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r;
};
