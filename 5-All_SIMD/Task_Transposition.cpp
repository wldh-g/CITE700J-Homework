#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::transposition_8b(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* tl_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tb8_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tb16_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tb32_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tb64_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tb128_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* tl_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* tb8_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* tb16_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* tb32_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* tb64_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* tb128_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	cout << _$m << "<8-bit Transposes>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for transpose... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	veriples verify_list;
	cout << "Testing line-by-line transpose... ";
	r = __exec<uint8_t>(c::transpose_line_by_line, simd::transpose_line_by_line, enable_simd,
											lena_img, tl_c_img, tl_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("line-by-line transpose", tl_c_img, tl_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 8-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_8, simd::transpose_block_8, enable_simd,
											lena_img, tb8_c_img, tb8_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("8-bit block transpose", tb8_c_img, tb8_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 16-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_16, simd::transpose_block_16, enable_simd,
											lena_img, tb16_c_img, tb16_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("16-bit block transpose", tb16_c_img, tb16_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 32-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_32, simd::transpose_block_32, enable_simd,
											lena_img, tb32_c_img, tb32_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("32-bit block transpose", tb32_c_img, tb32_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 64-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_64, simd::transpose_block_64, enable_simd,
											lena_img, tb64_c_img, tb64_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("64-bit block transpose", tb64_c_img, tb64_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 128-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_128, simd::transpose_block_128, enable_simd,
											lena_img, tb128_c_img, tb128_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("128-bit block transpose", tb128_c_img, tb128_simd_img, x_size,
														y_size));
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
			$("output/c_tl.raw", tl_c_img, x_size, y_size),
			$("output/c_tb8.raw", tb8_c_img, x_size, y_size),
			$("output/c_tb16.raw", tb16_c_img, x_size, y_size),
			$("output/c_tb32.raw", tb32_c_img, x_size, y_size),
			$("output/c_tb64.raw", tb64_c_img, x_size, y_size),
			$("output/c_tb128.raw", tb128_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<uint8_t>(fileples {
			$("output/simd_tl.raw", tl_simd_img, x_size, y_size),
			$("output/simd_tb8.raw", tb8_simd_img, x_size, y_size),
			$("output/simd_tb16.raw", tb16_simd_img, x_size, y_size),
			$("output/simd_tb32.raw", tb32_simd_img, x_size, y_size),
			$("output/simd_tb64.raw", tb64_simd_img, x_size, y_size),
			$("output/simd_tb128.raw", tb128_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};

void task::transposition_multibit(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena8_img = __malloc<uint8_t>(x_size * y_size);
	auto* lena16_img = __malloc<uint16_t>(x_size * y_size);
	auto* lena32_img = __malloc<uint32_t>(x_size * y_size);
	auto* t8_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* t16_c_img = __malloc<uint16_t>(x_size * y_size);
	auto* t32_c_img = __malloc<uint32_t>(x_size * y_size);
	auto* t8_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* t16_simd_img = enable_simd ? __malloc<uint16_t>(x_size * y_size) : nullptr;
	auto* t32_simd_img = enable_simd ? __malloc<uint32_t>(x_size * y_size) : nullptr;
	cout << _$m << "<Multi-bit Transposes>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for transpose... ";
	__file<uint8_t>("images/lena_512.raw", lena8_img, x_size, y_size, "r");
	__file<uint16_t>("images/lena_512_16b.raw", lena16_img, x_size, y_size, "r");
	__file<uint32_t>("images/lena_512_32b.raw", lena32_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	veriples verify_list8;
	veriples verify_list16;
	veriples verify_list32;
	cout << "Testing 8-bit transpose... ";
	r = __exec<uint8_t>(c::transpose_block_16, simd::transpose_block_16, enable_simd, lena8_img,
											t8_c_img, t8_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list8.push_back($("8-bit transpose", t8_c_img, t8_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 16-bit transpose... ";
	r = __exec<uint16_t>(c::transpose16_block_8, simd::transpose16_block_8, enable_simd, lena16_img,
											 t16_c_img, t16_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list16.push_back($("16-bit transpose", t16_c_img, t16_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 32-bit transpose... ";
	r = __exec<uint32_t>(c::transpose32_block_4, simd::transpose32_block_4, enable_simd, lena32_img,
											 t32_c_img, t32_simd_img, x_size, y_size);
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
