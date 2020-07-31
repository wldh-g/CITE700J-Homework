#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::median_filter(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* median_3tap_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* median_5tap_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* median_3by3_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* median_3tap_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* median_5tap_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* median_3by3_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	cout << _$m << "<Median Filter>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for median filter... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing 3-tap median filter... ";
	r = __exec<uint8_t>(c::median_3tap, simd::median_3tap, enable_simd, lena_img, median_3tap_c_img,
											median_3tap_simd_img, x_size, y_size);
	do_verify &= (r->error1 == nullptr) && (r->error2 == nullptr);
	delete r->print();
	cout << "Testing 5-tap median filter... ";
	r = __exec<uint8_t>(c::median_5tap, simd::median_5tap, enable_simd, lena_img, median_5tap_c_img,
											median_5tap_simd_img, x_size, y_size);
	do_verify &= (r->error1 == nullptr) && (r->error2 == nullptr);
	delete r->print();
	cout << "Testing 3-by-3 median filter... ";
	r = __exec<uint8_t>(c::median_3by3, simd::median_3by3, enable_simd, lena_img, median_3by3_c_img,
											median_3by3_simd_img, x_size, y_size);
	do_verify &= (r->error1 == nullptr) && (r->error2 == nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<uint8_t>(veriples {
				$("median filter 3-tap", median_3tap_c_img, median_3tap_simd_img, x_size, y_size),
				$("median filter 5-tap", median_5tap_c_img, median_5tap_simd_img, x_size, y_size),
				$("median filter 3-by-3", median_3by3_c_img, median_3by3_simd_img, x_size, y_size)
			});
			cout << "OK" << endl;
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
		}
	}

	// Save image(s)
	cout << "Saving results... ";
	__bulk_save<uint8_t>(fileples {
		$("output/median_3tap_c.raw", median_3tap_c_img, x_size, y_size),
		$("output/median_5tap_c.raw", median_5tap_c_img, x_size, y_size),
		$("output/median_3by3_c.raw", median_3by3_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<uint8_t>(fileples {
			$("output/median_3tap_simd.raw", median_3tap_simd_img, x_size, y_size),
			$("output/median_5tap_simd.raw", median_5tap_simd_img, x_size, y_size),
			$("output/median_3by3_simd.raw", median_3by3_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};
