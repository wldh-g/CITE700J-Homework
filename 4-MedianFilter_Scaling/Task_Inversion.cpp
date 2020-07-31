#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::inversion_8b(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* invert_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* invert_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	cout << _$m << "<Inversion 8-bit>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for inversion... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing inversion... ";
	r = __exec<uint8_t>(c::invert_8b, simd::invert_8b, enable_simd, lena_img, invert_c_img,
											invert_simd_img, x_size, y_size);
	do_verify &= ((r->c_error != nullptr) && (r->simd_error != nullptr));
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<uint8_t>(veriples {
				$("inversion", invert_c_img, invert_simd_img, x_size, y_size)
			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
		}
	}

	// Save image(s)
	cout << "Saving results... ";
	__file<uint8_t>("output/c_invert8.raw", invert_c_img, x_size, y_size, "wb");
	if (enable_simd) {
		__file<uint8_t>("output/simd_invert8.raw", invert_simd_img, x_size, y_size, "wb");
	}
	cout << "OK" << endl;
};
