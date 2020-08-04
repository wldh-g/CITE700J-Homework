#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::median_filter(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  auto* median_3tap_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* median_5tap_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* median_3by3_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* median_3tap_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  auto* median_5tap_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  auto* median_3by3_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  cout << _$m << "<Median Filter>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for median filter... ";
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecMetaSet* r = nullptr;
  veriples verify_list;
  cout << "Testing 3-tap median filter... ";
  r = __exec<uint8_t, uint8_t>(c::median_3tap, simd::median_3tap, enable_simd, pirate_img,
                               median_3tap_c_img, median_3tap_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list.push_back($("median filter 3-tap", median_3tap_c_img, median_3tap_simd_img, x_size,
                            y_size));
  else
    cout << "[not comparable] ";
  delete r->print();
  cout << "Testing 5-tap median filter... ";
  r = __exec<uint8_t, uint8_t>(c::median_5tap, simd::median_5tap, enable_simd, pirate_img,
                               median_5tap_c_img, median_5tap_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list.push_back($("median filter 5-tap", median_5tap_c_img, median_5tap_simd_img, x_size,
                            y_size));
  else
    cout << "[not comparable] ";
  delete r->print();
  cout << "Testing 3-by-3 median filter... ";
  r = __exec<uint8_t, uint8_t>(c::median_3by3, simd::median_3by3, enable_simd, pirate_img,
                               median_3by3_c_img, median_3by3_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list.push_back($("median filter 3-by-3", median_3by3_c_img, median_3by3_simd_img,
                            x_size, y_size));
  else
    cout << "[not comparable] ";
  delete r->print();

  // Verify results using comparison
  if (enable_simd) {
    cout << "Verifying results... ";
    if (__bulk_diff<uint8_t>(verify_list)) {
      cout << "OK" << endl;
    }
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save<uint8_t>(fileples {
    $("output/c_median_3tap.raw", median_3tap_c_img, x_size, y_size),
    $("output/c_median_5tap.raw", median_5tap_c_img, x_size, y_size),
    $("output/c_median_3by3.raw", median_3by3_c_img, x_size, y_size)
  });
  if (enable_simd) {
    __bulk_save<uint8_t>(fileples {
      $("output/simd_median_3tap.raw", median_3tap_simd_img, x_size, y_size),
      $("output/simd_median_5tap.raw", median_5tap_simd_img, x_size, y_size),
      $("output/simd_median_3by3.raw", median_3by3_simd_img, x_size, y_size)
    });
  }
  cout << "OK" << endl;
};
