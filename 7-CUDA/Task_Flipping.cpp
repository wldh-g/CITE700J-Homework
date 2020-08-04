#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::flipx_flipy(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  auto* xflip_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* yflip_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* xflip_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  auto* yflip_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  cout << _$m << "<FlipX & FlipY>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for flipping... ";
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecMetaSet* r = nullptr;
  veriples verify_list;
  cout << "Testing x-axis flipping... ";
  r = __exec<uint8_t, uint8_t>(c::xflip, simd::xflip, enable_simd, pirate_img, xflip_c_img,
                               xflip_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list.push_back($("xflip", xflip_c_img, xflip_simd_img, x_size, y_size));
  else
    cout << "[not comparable] ";
  delete r->print();
  cout << "Testing y-axis flipping... ";
  r = __exec<uint8_t, uint8_t>(c::yflip, simd::yflip, enable_simd, pirate_img, yflip_c_img,
                               yflip_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list.push_back($("yflip", yflip_c_img, yflip_simd_img, x_size, y_size));
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
    $("output/c_xflip.raw", xflip_c_img, x_size, y_size),
    $("output/c_yflip.raw", yflip_c_img, x_size, y_size)
  });
  if (enable_simd) {
    __bulk_save<uint8_t>(fileples {
      $("output/simd_xflip.raw", xflip_simd_img, x_size, y_size),
      $("output/simd_yflip.raw", yflip_simd_img, x_size, y_size)
    });
  }
  cout << "OK" << endl;
};
