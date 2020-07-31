#ifndef _FUNC_H_
#define _FUNC_H_

#include <cstdint>
#include "Filters.h"

namespace c {
	void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);

	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size);
	void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size);
	void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size);
	void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size);

	void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
}

namespace simd {
	void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);

	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size);
	void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size);
	void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
												size_t x_size, size_t y_size);
	void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
											size_t y_size);

	void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
}

#endif // _FUNC_H_
