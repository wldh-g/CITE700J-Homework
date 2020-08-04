#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::inversion_8b(__TASK_ARG_CODE__) {
  // Initialization
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  cout << _$m << "<Inversion 8-bit>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for inversion... ";
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  veriples(uint8_t) verify_list;
  cout << "Testing inversion... ";
  auto* r = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  r = __exec<uint8_t, uint8_t>(__FUNC__(invert_8b), __ENABLE_SET__, pirate_img, out, x_size,
                               y_size);
  if (!r->check_error())
    verify_list.push_back($("inversion", out));
  else
    cout << "[not comparable] ";
  r->print_time();
  delete r;

  // Verify results using comparison
  if (enable_simd) {
    cout << "Verifying results... ";
    if (__bulk_diff<uint8_t>(verify_list)) {
      cout << "OK" << endl;
    }
  }

  // Save image(s)
  cout << "Saving results... ";
  delete out->save("invert8");
  cout << "OK" << endl;

  delete out;
};
