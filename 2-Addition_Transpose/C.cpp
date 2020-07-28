#include "Func.h"

/*****************
 ** C Functions **
 *****************/

namespace c {
	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		register size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t in_pos = y * y_size + x;
				size_t out_pos = y * y_size + x_size - x - 1;
				*(out + out_pos) = *(in + in_pos);
			}
		}
	};

	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		register size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t in_pos = y * y_size + x;
				size_t out_pos = (y_size - y - 1) * y_size + x;
				*(out + out_pos) = *(in + in_pos);
			}
		}
	};

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
		register size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * y_size + x;
				*(out + pos) = *(in1 + pos) / 2 + *(in2 + pos) / 2;
			}
		}
	};

	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
		register size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * y_size + x;
				*(out + pos) = (uint16_t)*(in1 + pos) + (uint16_t)*(in2 + pos);
			}
		}
	};
}
