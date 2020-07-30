#include <iostream>
#include "Functions.h"
#include "Tasks.h"
#include "Util.h"

using std::cout;
using std::endl;

void task::transposition(bool enable_simd) {
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
	cout << _$m << "<Transposes>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for transpose... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing line-by-line transpose... ";
	r = __exec<uint8_t>(c::transpose_line_by_line, simd::transpose_line_by_line, enable_simd,
											lena_img, tl_c_img, tl_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 8-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_8, simd::transpose_block_8, enable_simd,
											lena_img, tb8_c_img, tb8_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 16-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_16, simd::transpose_block_16, enable_simd,
											lena_img, tb16_c_img, tb16_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 32-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_32, simd::transpose_block_32, enable_simd,
											lena_img, tb32_c_img, tb32_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 64-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_64, simd::transpose_block_64, enable_simd,
											lena_img, tb64_c_img, tb64_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 128-bit block transpose... ";
	r = __exec<uint8_t>(c::transpose_block_128, simd::transpose_block_128, enable_simd,
											lena_img, tb128_c_img, tb128_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<uint8_t>(veriples {
				$("line-by-line transpose", tl_c_img, tl_simd_img, x_size, y_size),
				$("8-bit block transpose", tb8_c_img, tb8_simd_img, x_size, y_size),
				$("16-bit block transpose", tb16_c_img, tb16_simd_img, x_size, y_size),
				$("32-bit block transpose", tb32_c_img, tb32_simd_img, x_size, y_size),
				$("64-bit block transpose", tb64_c_img, tb64_simd_img, x_size, y_size),
				$("128-bit block transpose", tb128_c_img, tb128_simd_img, x_size, y_size)
			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
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
