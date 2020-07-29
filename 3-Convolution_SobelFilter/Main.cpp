#include <filesystem>
#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

int main() {
	std::filesystem::create_directory("output");

	{
		/*****************
		 ** Convolution **
		 *****************/

		// Initialization
		size_t x_size = 512, y_size = 512;
		auto* conv_zp_img = __malloc<uint8_t>(x_size * y_size);
		auto* conv_be_img = __malloc<uint8_t>(x_size * y_size);
		auto* lena_img = __malloc<uint8_t>(x_size * y_size);

		// Load Image
		cout << "Opening image for convolution... ";
		__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
		cout << "OK" << endl;

		// Exec Image
		cout << "Testing C zero-pad convolution... "
			<< __exec<uint8_t, int8_t, uint8_t>(c::conv_zp_unsigned, lena_img,
																					conv_zp_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C boundary extension convolution... "
			<< __exec<uint8_t>(c::conv_be, lena_img, conv_be_img, x_size, y_size)
			<< " ms" << endl;

		// Save Image
		cout << "Saving results... ";
		__file<uint8_t>("output/c_add8.raw", add8_img, x_size, y_size, "wb");
		__file<uint16_t>("output/c_add16.raw", add16_img, x_size, y_size, "wb");
		cout << "OK" << endl;
	}

	return __exit(0);
}
