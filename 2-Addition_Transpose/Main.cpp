#include <iostream>
#include "Func.h"
#include "Util.h"

using std::cout;
using std::endl;

int main() {
	{
		/**************
		 ** Addition **
		 **************/

		// Initialization
		size_t x_size = 512, y_size = 512;
		auto* add16_img = __malloc<uint16_t>(x_size * y_size);
		auto* add8_img = __malloc<uint8_t>(x_size * y_size);
		auto* lena_img = __malloc<uint8_t>(x_size * y_size);
		auto* glow_img = __malloc<uint8_t>(x_size * y_size);

		// Load Image
		cout << "Opening image for addition... ";
		__bulk_load<uint8_t>(fileples {
			$("images/lena_512.raw", lena_img, x_size, y_size),
			$("images/glow_512.raw", glow_img, x_size, y_size)
		});
		cout << "OK" << endl;

		// Exec Image
		cout << "Testing C 8-bit addition... "
			<< __exec<uint8_t, uint8_t>(c::add_8b, lena_img, glow_img, add8_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 16-bit addition... "
			<< __exec<uint8_t, uint16_t>(c::add_16b, lena_img, glow_img, add16_img, x_size, y_size)
			<< " ms" << endl;

		// Save Image
		cout << "Saving results... ";
		__file<uint8_t>("c_add8.raw", add8_img, x_size, y_size, "wb");
		__file<uint16_t>("c_add16.raw", add16_img, x_size, y_size, "wb");
	}

	return __exit(0);
}
