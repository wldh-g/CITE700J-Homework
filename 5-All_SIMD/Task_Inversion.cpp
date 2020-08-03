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
	veriples verify_list;
	cout << "Testing inversion... ";
	r = __exec<uint8_t, uint8_t>(c::invert_8b, simd::invert_8b, enable_simd, lena_img, invert_c_img,
															 invert_simd_img, x_size, y_size);
	if ((r->error1 == nullptr) && (r->error2 == nullptr))
		verify_list.push_back($("inversion", invert_c_img, invert_simd_img, x_size, y_size));
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
	__file<uint8_t>("output/c_invert8.raw", invert_c_img, x_size, y_size, "wb");
	if (enable_simd) {
		__file<uint8_t>("output/simd_invert8.raw", invert_simd_img, x_size, y_size, "wb");
	}
	cout << "OK" << endl;
};
