#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::scaling(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_05_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_13_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_24_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_05_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* scale_13_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* scale_24_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	cout << _$m << "<Scaling>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for scaling... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	veriples verify_list;
	cout << "Testing 0.5x scaling... ";
	r = __exec<uint8_t, uint8_t>(c::scale_05, simd::scale_05, enable_simd, lena_img, scale_05_c_img,
															 scale_05_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("scaling 0.5x", scale_05_c_img, scale_05_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 1.3x scaling... ";
	r = __exec<uint8_t, uint8_t>(c::scale_13, simd::scale_13, enable_simd, lena_img, scale_13_c_img,
															 scale_13_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("scaling 1.3x", scale_13_c_img, scale_13_simd_img, x_size, y_size));
	else
		cout << "[not comparable] ";
	delete r->print();
	cout << "Testing 2.4x scaling... ";
	r = __exec<uint8_t, uint8_t>(c::scale_24, simd::scale_24, enable_simd, lena_img, scale_24_c_img,
															 scale_24_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("scaling 2.4x", scale_24_c_img, scale_24_simd_img, x_size, y_size));
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
		$("output/c_scaling_05.raw", scale_05_c_img, x_size, y_size),
		$("output/c_scaling_13.raw", scale_13_c_img, x_size, y_size),
		$("output/c_scaling_24.raw", scale_24_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<uint8_t>(fileples {
			$("output/simd_scaling_05.raw", scale_05_simd_img, x_size, y_size),
			$("output/simd_scaling_13.raw", scale_13_simd_img, x_size, y_size),
			$("output/simd_scaling_24.raw", scale_24_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};

void task::scaling_unrolled(bool save_results) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_13_u64_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_24_u64_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_13_u512_img = __malloc<uint8_t>(x_size * y_size);
	auto* scale_24_u512_img = __malloc<uint8_t>(x_size * y_size);
	cout << _$m << "<Scaling (unrolled)>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for scaling (unrolled)... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	cout << "Testing 1.3x scaling (unrolled)... ";
	r = __exec<uint8_t>(c::scale_13_unroll64, c::scale_13_unroll512, "(64)", "(512)", lena_img,
											scale_13_u64_img, scale_13_u512_img, x_size, y_size);
	delete r->print();
	cout << "Testing 2.4x scaling (unrolled)... ";
	r = __exec<uint8_t>(c::scale_24_unroll64, c::scale_24_unroll512, "(64)", "(512)", lena_img,
											scale_24_u64_img, scale_24_u512_img, x_size, y_size);
	delete r->print();

	// Save image(s)
	if (save_results) {
		cout << "Saving results... ";
		__bulk_save<uint8_t>(fileples {
			$("output/c_scaling_13_unroll64.raw", scale_13_u64_img, x_size, y_size),
			$("output/c_scaling_13_unroll512.raw", scale_13_u512_img, x_size, y_size),
			$("output/c_scaling_24_unroll64.raw", scale_24_u64_img, x_size, y_size),
			$("output/c_scaling_24_unroll512.raw", scale_24_u512_img, x_size, y_size)
		});
		cout << "OK" << endl;
	}
};
