#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::transposition_8b(__TASK_ARG_CODE__) {
  // Initialization
  cout << _$m << "<8-bit Transposes>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for transpose... ";
  constexpr size_t x_size = 512, y_size = 512;
  auto* pirate_img = __malloc<uint8_t>(x_size * y_size);
  __file<uint8_t>("images/pirate_512_8b.raw", pirate_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  respool result_list;
  cout << "Testing line-by-line transpose... " << _$r;
  auto* r_ll = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_line_by_line), __ENABLE_SET__, pirate_img, r_ll);
  if (!r_ll->check_error())
    result_list.push_back($ave("transpose_line_by_line", r_ll));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_ll->print_time();

  cout << "Testing 8-bit block transpose... " << _$r;
  auto* r_8 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_block_8), __ENABLE_SET__, pirate_img, r_8);
  if (!r_8->check_error())
    result_list.push_back($ave("transpose_block_8", r_8));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_8->print_time();

  cout << "Testing 16-bit block transpose... " << _$r;
  auto* r_16 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_block_16), __ENABLE_SET__, pirate_img, r_16);
  if (!r_16->check_error())
    result_list.push_back($ave("transpose_block_16", r_16));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_16->print_time();

  cout << "Testing 32-bit block transpose... " << _$r;
  auto* r_32 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_block_32), __ENABLE_SET__, pirate_img, r_32);
  if (!r_32->check_error())
    result_list.push_back($ave("transpose_block_32", r_32));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_32->print_time();

  cout << "Testing 64-bit block transpose... " << _$r;
  auto* r_64 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_block_64), __ENABLE_SET__, pirate_img, r_64);
  if (!r_64->check_error())
    result_list.push_back($ave("transpose_block_64", r_64));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_64->print_time();

  cout << "Testing 128-bit block transpose... " << _$r;
  auto* r_128 = new ExecResult<x_size, y_size, __TASK_TEST_CNT__, uint8_t>({ __TASK_TEST_LABEL__ });
  __exec<x_size, y_size, uint8_t, uint8_t>(__FUNC__(transpose_block_128), __ENABLE_SET__, pirate_img, r_128);
  if (!r_128->check_error())
    result_list.push_back($ave("transpose_block_128", r_128));
  else
    cout << "[not comparable] ";
  cout << _$x;
  r_128->print_time();

  // Verify results using comparison
  cout << "Verifying results... ";
  if (__bulk_diff(result_list)) {
    cout << "OK" << endl;
  }

  // Save image(s)
  cout << "Saving results... ";
  __bulk_save(result_list);
  cout << "OK" << endl;

  delete r_ll;
  delete r_8;
  delete r_16;
  delete r_32;
  delete r_64;
  delete r_128;
};

void task::transposition_multibit(bool enable_simd) {
  // Initialization
  size_t x_size = 512, y_size = 512;
  auto* pirate8_img = __malloc<uint8_t>(x_size * y_size);
  auto* pirate16_img = __malloc<uint16_t>(x_size * y_size);
  auto* pirate32_img = __malloc<uint32_t>(x_size * y_size);
  auto* t8_c_img = __malloc<uint8_t>(x_size * y_size);
  auto* t16_c_img = __malloc<uint16_t>(x_size * y_size);
  auto* t32_c_img = __malloc<uint32_t>(x_size * y_size);
  auto* t8_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
  auto* t16_simd_img = enable_simd ? __malloc<uint16_t>(x_size * y_size) : nullptr;
  auto* t32_simd_img = enable_simd ? __malloc<uint32_t>(x_size * y_size) : nullptr;
  cout << _$m << "<Multi-bit Transposes>" << _$x << endl;

  // Load image(s)
  cout << "Opening image for transpose... ";
  __file<uint8_t>("images/pirate_512_8b.raw", pirate8_img, x_size, y_size, "r");
  __file<uint16_t>("images/pirate_512_16b.raw", pirate16_img, x_size, y_size, "r");
  __file<uint32_t>("images/pirate_512_32b.raw", pirate32_img, x_size, y_size, "r");
  cout << "OK" << endl;

  // Execute function(s)
  ExecMetaSet* r = nullptr;
  veriples verify_list8;
  veriples verify_list16;
  veriples verify_list32;
  cout << "Testing 8-bit transpose... ";
  r = __exec<uint8_t, uint8_t>(c::transpose_block_16, simd::transpose_block_16, enable_simd,
                               pirate8_img, t8_c_img, t8_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list8.push_back($("8-bit transpose", t8_c_img, t8_simd_img, x_size, y_size));
  else
    cout << "[not comparable] ";
  delete r->print();
  cout << "Testing 16-bit transpose... ";
  r = __exec<uint16_t, uint16_t>(c::transpose16_block_8, simd::transpose16_block_8, enable_simd,
                                 pirate16_img, t16_c_img, t16_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list16.push_back($("16-bit transpose", t16_c_img, t16_simd_img, x_size, y_size));
  else
    cout << "[not comparable] ";
  delete r->print();
  cout << "Testing 32-bit transpose... ";
  r = __exec<uint32_t, uint32_t>(c::transpose32_block_4, simd::transpose32_block_4, enable_simd,
                                 pirate32_img, t32_c_img, t32_simd_img, x_size, y_size);
  if ((r->error1 == nullptr) && (r->error2 == nullptr))
    verify_list32.push_back($("32-bit transpose", t32_c_img, t32_simd_img, x_size, y_size));
  else
    cout << "[not comparable] ";
  delete r->print();

  // Verify results using comparison
  if (enable_simd) {
    cout << "Verifying results... ";
    if (
      __bulk_diff<uint8_t>(verify_list8)
      && __bulk_diff<uint16_t>(verify_list16)
      && __bulk_diff<uint32_t>(verify_list32)
      ) {
      cout << "OK" << endl;
    }
  }

  // Save image(s)
  cout << "Saving results... ";
  __file<uint8_t>("output/c_t8.raw", t8_c_img, x_size, y_size, "wb");
  __file<uint16_t>("output/c_t16.raw", t16_c_img, x_size, y_size, "wb");
  __file<uint32_t>("output/c_t32.raw", t32_c_img, x_size, y_size, "wb");
  if (enable_simd) {
    __file<uint8_t>("output/simd_t8.raw", t8_simd_img, x_size, y_size, "wb");
    __file<uint16_t>("output/simd_t16.raw", t16_simd_img, x_size, y_size, "wb");
    __file<uint32_t>("output/simd_t32.raw", t32_simd_img, x_size, y_size, "wb");
  }
  cout << "OK" << endl;
};
