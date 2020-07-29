#include <filesystem>
#include <iostream>
#include "Func.h"
#include "Util.h"

using std::cout;
using std::endl;

int main() {
	std::filesystem::create_directory("output");

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
		__file<uint8_t>("output/c_add8.raw", add8_img, x_size, y_size, "wb");
		__file<uint16_t>("output/c_add16.raw", add16_img, x_size, y_size, "wb");
		cout << "OK" << endl;
	}

	{
		/***************
		 ** Transpose **
		 ***************/

		// Initialization
		size_t x_size = 512, y_size = 512;
		auto* tl_img = __malloc<uint8_t>(x_size * y_size);
		auto* tb8_img = __malloc<uint8_t>(x_size * y_size);
		auto* tb16_img = __malloc<uint8_t>(x_size * y_size);
		auto* tb32_img = __malloc<uint8_t>(x_size * y_size);
		auto* tb64_img = __malloc<uint8_t>(x_size * y_size);
		auto* tb128_img = __malloc<uint8_t>(x_size * y_size);
		auto* lena_img = __malloc<uint8_t>(x_size * y_size);

		// Load Image
		cout << "Opening image for transpose... ";
		__file<uint8_t>("images/lena_512.raw", lena_img, x_size, y_size, "r");
		cout << "OK" << endl;

		// Exec Image
		cout << "Testing C line-by-line transpose... "
			<< __exec<uint8_t>(c::transpose_line_by_line, lena_img, tl_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 8-block transpose... "
			<< __exec<uint8_t>(c::transpose_block_8, lena_img, tb8_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 16-block transpose... "
			<< __exec<uint8_t>(c::transpose_block_16, lena_img, tb16_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 32-block transpose... "
			<< __exec<uint8_t>(c::transpose_block_32, lena_img, tb32_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 64-block transpose... "
			<< __exec<uint8_t>(c::transpose_block_64, lena_img, tb64_img, x_size, y_size)
			<< " ms" << endl;
		cout << "Testing C 128-block transpose... "
			<< __exec<uint8_t>(c::transpose_block_128, lena_img, tb128_img, x_size, y_size)
			<< " ms" << endl;

		// Save Image
		cout << "Saving results... ";
		__bulk_save<uint8_t>(fileples {
			$("output/c_tl.raw", tl_img, x_size, y_size),
			$("output/c_tb8.raw", tb8_img, x_size, y_size),
			$("output/c_tb16.raw", tb16_img, x_size, y_size),
			$("output/c_tb32.raw", tb32_img, x_size, y_size),
			$("output/c_tb64.raw", tb64_img, x_size, y_size),
			$("output/c_tb128.raw", tb128_img, x_size, y_size)
		});
		cout << "OK" << endl;
	}

	return __exit(0);
}
