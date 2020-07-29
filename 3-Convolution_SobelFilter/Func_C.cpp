#include "Filters.h"
#include "Functions.h"

/*****************
 ** C Functions **
 *****************/

namespace c {
	//////////////
	// Flipping //
	//////////////

	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t in_pos = y * y_size + x;
				size_t out_pos = y * y_size + x_size - x - 1;
				*(out + out_pos) = *(in + in_pos);
			}
		}
	};

	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t in_pos = y * y_size + x;
				size_t out_pos = (y_size - y - 1) * y_size + x;
				*(out + out_pos) = *(in + in_pos);
			}
		}
	};

	//////////////
	// Addition //
	//////////////

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * y_size + x;
				*(out + pos) = *(in1 + pos) / 2 + *(in2 + pos) / 2;
			}
		}
	};

	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * y_size + x;
				*(out + pos) = (uint16_t)*(in1 + pos) + (uint16_t)*(in2 + pos);
			}
		}
	};

	///////////////
	// Transpose //
	///////////////

	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t in_pos = y * x_size + x;
				size_t out_pos = x * x_size + y;
				*(out + out_pos) = *(in + in_pos);
			}
		}
	};

	void transpose_block(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, size_t blk_size) {
		size_t x, y, blk_x, blk_y;
		const size_t blk_x_size = x_size / blk_size;
		const size_t blk_y_size = y_size / blk_size;
		for (blk_y = 0; blk_y < blk_y_size; blk_y += 1) {
			for (blk_x = 0; blk_x < blk_x_size; blk_x += 1) {
				size_t in_base = blk_size * blk_y * x_size + blk_size * blk_x;
				size_t out_base = blk_size * blk_x * y_size + blk_size * blk_y;
				for (y = 0; y < blk_size; y += 1) {
					for (x = 0; x < blk_size; x += 1) {
						size_t in_pos = in_base + y * x_size + x;
						size_t out_pos = out_base + x * y_size + y;
						*(out + out_pos) = *(in + in_pos);
					}
				}
			}
		}
	};

	void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		return transpose_block(in, out, x_size, y_size, 8);
	};
	void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		return transpose_block(in, out, x_size, y_size, 16);
	};
	void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		return transpose_block(in, out, x_size, y_size, 32);
	};
	void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		return transpose_block(in, out, x_size, y_size, 64);
	};
	void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		return transpose_block(in, out, x_size, y_size, 128);
	};

	/////////////////
	// Convolution //
	/////////////////

	void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};
	void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size) {
		throw "Not implemented"; // TODO
	};
}
