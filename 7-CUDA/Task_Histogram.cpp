#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::histogram_8bin(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<8-bin Histogram>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for histogram... ";
  constexpr size_t x_size = 2048, y_size = 2048;
  auto* pirate_img = __malloc<uint16_t>(x_size * y_size);
  __file<uint16_t>("images/pirate_2048_16b_0.001x.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing histogram (100 reps)... " << _$r;
  auto* r = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint64_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint16_t, uint64_t>(__FUNC__(histogram_8bin), __ENABLE_SET__, pirate_img,
                                             r, 100);
  if (!r->check_error())
    result_list.push_back($ave("histogram", r));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  delete r;
};
