#include <iostream>
#include "Functions.h"
#include "Tasks.h"
#include "Util.h"

using std::cout;
using std::endl;

void task::flipx_flipy(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena_img = __malloc<uint8_t>(x_size * y_size);
	auto* xflip_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* yflip_c_img = __malloc<uint8_t>(x_size * y_size);
	auto* xflip_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	auto* yflip_simd_img = enable_simd ? __malloc<uint8_t>(x_size * y_size) : nullptr;
	cout << _$m << "<FlipX & FlipY>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for flipping... ";
	__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	bool do_verify = true;
	cout << "Testing x-axis flipping... ";
	r = __exec<uint8_t>(c::xflip, simd::xflip, enable_simd, lena_img, xflip_c_img, xflip_simd_img,
											x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();
	cout << "Testing y-axis flipping... ";
	r = __exec<uint8_t>(c::yflip, simd::yflip, enable_simd, lena_img, yflip_c_img, yflip_simd_img,
											x_size, y_size);
	do_verify &= (r->c_error != nullptr && r->simd_error != nullptr);
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		if (do_verify) {
			cout << "Verifying results... ";
			__bulk_diff<uint8_t>(veriples {
				$("xflip", xflip_c_img, xflip_simd_img, x_size, y_size),
				$("yflip", yflip_c_img, yflip_simd_img, x_size, y_size)
			});
		} else {
			cout << "Verification condition was not satisfied. Skipping verification." << endl;
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
