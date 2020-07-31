#include <iostream>
#include "Core.h"
#include "Filters.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::general_convolution_unsigned(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* conv_zp_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* conv_be_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* conv_zp_simd_img = __malloc<uint8_t>(x_size * y_size);
	auto* conv_be_simd_img = __malloc<uint8_t>(x_size * y_size);
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	cout << _$m << "<General Convolution (unsigned)>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for convolution (unsigned)... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing zero-pad convolution (unsigned)... ";
	r = __exec<uint8_t, int8_t, uint8_t>(c::conv_zp_unsigned, simd::conv_zp_unsigned, enable_simd,
																			 lena_img, filt::blur_15, conv_zp_c_img, conv_zp_simd_img,
																			 x_size, y_size, 1000);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing boundary extension convolution (unsigned)... ";
	r = __exec<uint8_t, int8_t, uint8_t>(c::conv_be_unsigned, simd::conv_be_unsigned, enable_simd,
																			 lena_img, filt::blur_15, conv_be_c_img, conv_be_simd_img,
																			 x_size, y_size, 1000);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<int8_t>(veriples {
				$("zero-pad convolution", conv_zp_c_img, conv_zp_simd_img, x_size, y_size),
				$("boundary extension convolution", conv_be_c_img, conv_zp_simd_img, x_size, y_size)
			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
		}
	}

	// Save image(s)
	cout << "Saving results... ";
	__bulk_save<uint8_t>(fileples {
		$("output/c_conv_zp_unsigned.raw", conv_zp_c_img, x_size, y_size),
		$("output/c_conv_be_unsigned.raw", conv_be_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<uint8_t>(fileples {
			$("output/simd_conv_zp_unsigned.raw", conv_zp_simd_img, x_size, y_size),
			$("output/simd_conv_be_unsigned.raw", conv_be_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};

void task::general_convolution_signed(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* conv_zp_c_img = __malloc<int8_t>(x_size * y_size);
	auto* conv_be_c_img = __malloc<int8_t>(x_size * y_size);
	auto* conv_zp_simd_img = __malloc<int8_t>(x_size * y_size);
	auto* conv_be_simd_img = __malloc<int8_t>(x_size * y_size);
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	cout << _$m << "<General Convolution (signed)>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for convolution (signed)... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing zero-pad convolution (signed)... ";
	r = __exec<uint8_t, int8_t, int8_t>(c::conv_zp_signed, simd::conv_zp_signed, enable_simd,
																			lena_img, filt::blur_15, conv_zp_c_img, conv_zp_simd_img,
																			x_size, y_size, 1000);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing boundary extension convolution (signed)... ";
	r = __exec<uint8_t, int8_t, int8_t>(c::conv_be_signed, simd::conv_be_signed, enable_simd,
																			lena_img, filt::blur_15, conv_be_c_img, conv_be_simd_img,
																			x_size, y_size, 1000);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<int8_t>(veriples {
				$("zero-pad convolution", conv_zp_c_img, conv_zp_simd_img, x_size, y_size),
				$("boundary extension convolution", conv_be_c_img, conv_zp_simd_img, x_size, y_size)
			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
		}
	}

	// Save image(s)
	cout << "Saving results... ";
	__bulk_save<int8_t>(fileples {
		$("output/c_conv_zp_signed.raw", conv_zp_c_img, x_size, y_size),
		$("output/c_conv_be_signed.raw", conv_be_c_img, x_size, y_size)
	});
	if (enable_simd) {
		__bulk_save<int8_t>(fileples {
			$("output/simd_conv_zp_signed.raw", conv_zp_simd_img, x_size, y_size),
			$("output/simd_conv_be_signed.raw", conv_be_simd_img, x_size, y_size)
		});
	}
	cout << "OK" << endl;
};
