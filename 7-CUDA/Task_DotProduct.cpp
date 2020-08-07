#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::dot_product(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<Dot Product>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for dot product... ";
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
  cout << "Testing dot_product (50 reps)... " << _$r;
  auto* r = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint64_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint64_t>(__FUNC__(dot), __ENABLE_SET__, pirate_img, glow_img, r,
                                            1);
  if (!r->check_error())
    result_list.push_back($ave("dot_product", r));
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
