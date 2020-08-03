#include <iostream>
#include "Core.h"
#include "Functions.h"
#include "Tasks.h"

using std::cout;
using std::endl;

void task::accumulation_16b(bool enable_simd) {
	// Initialization
	size_t x_size = 512, y_size = 512;
	auto* lena16_img = __malloc<uint16_t>(x_size * y_size);
	cout << _$m << "<Accumulation 16-bit>" << _$x << endl;

	// Load image(s)
	cout << "Opening image for accumulation... ";
	__file<uint16_t>("images/lena_512_16b.raw", lena16_img, x_size, y_size, "r");
	cout << "OK" << endl;

	// Execute function(s)
	ExecResult* r = nullptr;
	uint64_t c_result = 0;
	uint64_t simd_result = 0;
	cout << "Testing accumulation... ";
	r = __exec<uint16_t, uint64_t>(c::accumulation_16b, simd::accumulation_16b, enable_simd,
																 lena16_img, &c_result, &simd_result, x_size, y_size,
																 loop_max_default, false);
	if (!(r->error1 == nullptr) || !(r->error2 == nullptr))
		cout << "[not comparable] ";
	delete r->print();

	// Verify results using comparison
	if (enable_simd) {
		cout << "Verifying results... ";
		if (c_result == simd_result) {
			cout << "OK" << endl;
		} else {
			cout << "(C) " << c_result << " != " << simd_result << " (SIMD)" << endl;
			cout << "Verification of accumulation failed." << endl;
		}
	}
};
