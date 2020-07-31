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
	bool do_verify = true;
	cout << "Testing 0.5x scaling... ";
	r = __exec<uint8_t>(c::scale_05, simd::scale_05, enable_simd, lena_img, scale_05_c_img,
											scale_05_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 1.3x scaling... ";
	r = __exec<uint8_t>(c::scale_13, simd::scale_13, enable_simd, lena_img, scale_13_c_img,
											scale_13_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing 2.4x scaling... ";
	r = __exec<uint8_t>(c::scale_24, simd::scale_24, enable_simd, lena_img, scale_24_c_img,
											scale_24_simd_img, x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<uint8_t>(veriples {
				$("scaling 0.5x", scale_05_c_img, scale_05_simd_img, x_size, y_size),
				$("scaling 1.3x", scale_13_c_img, scale_13_simd_img, x_size, y_size),
				$("scaling 2.4x", scale_24_c_img, scale_24_simd_img, x_size, y_size)

			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
		}
	}

	// Save image(s)
	cout << "Saving results... ";
	__bulk_save<uint8_t>(fileples {
		$("output/scaling_05_c.raw", scale_05_c_img, x_size, y_size),
		$("output/scaling_13_c.raw", scale_13_c_img, x_size, y_size),
		$("output/scaling_24_c.raw", scale_24_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<uint8_t>(fileples {
			$("output/scaling_05_simd.raw", scale_05_simd_img, x_size, y_size),
			$("output/scaling_13_simd.raw", scale_13_simd_img, x_size, y_size),
			$("output/scaling_24_simd.raw", scale_24_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};
