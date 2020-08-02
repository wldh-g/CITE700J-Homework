#include <intrin.h>
#include "Filters.h"
#include "Functions.h"
#include "Util.h"

/********************
 ** SIMD Functions **
 ********************/

namespace simd {
	///////////////
	// Inversion //
	///////////////

	void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t i_max = x_size * y_size / 16;
		__m128i ff = _mm_set1_epi8((char)255);
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			*(_out + i) = _mm_subs_epi8(ff, *(_in + i));
		}
	};

	//////////////
	// Flipping //
	//////////////

	void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t i_max = x_size * y_size / 32;
		size_t x_iter = x_size / 32;
		__m256i* _in = (__m256i*)in;
		__m256i* _out = (__m256i*)out;
		for (size_t y = 0; y < y_size; y += 1) {
			for (size_t x = 0; x < x_iter; x += 1) {
				size_t i = y * x_iter + x;
				size_t out_pos = y * x_iter + x_iter - x - 1;
				*(_out + out_pos) = _mm256_setr_epi8(
					(_in + i)->m256i_i8[31], (_in + i)->m256i_i8[30], (_in + i)->m256i_i8[29],
					(_in + i)->m256i_i8[28], (_in + i)->m256i_i8[27], (_in + i)->m256i_i8[26],
					(_in + i)->m256i_i8[25], (_in + i)->m256i_i8[24], (_in + i)->m256i_i8[23],
					(_in + i)->m256i_i8[22], (_in + i)->m256i_i8[21], (_in + i)->m256i_i8[20],
					(_in + i)->m256i_i8[19], (_in + i)->m256i_i8[18], (_in + i)->m256i_i8[17],
					(_in + i)->m256i_i8[16], (_in + i)->m256i_i8[15], (_in + i)->m256i_i8[14],
					(_in + i)->m256i_i8[13], (_in + i)->m256i_i8[12], (_in + i)->m256i_i8[11],
					(_in + i)->m256i_i8[10], (_in + i)->m256i_i8[9],  (_in + i)->m256i_i8[8],
					(_in + i)->m256i_i8[7],  (_in + i)->m256i_i8[6],  (_in + i)->m256i_i8[5],
					(_in + i)->m256i_i8[4],  (_in + i)->m256i_i8[3],  (_in + i)->m256i_i8[2],
					(_in + i)->m256i_i8[1],  (_in + i)->m256i_i8[0]
				);
			}
		}
	};

	void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x_iter = x_size / 32;
		__m256i* _in = (__m256i*)in;
		__m256i* _out = (__m256i*)out;
		for (size_t y = 0; y < y_size; y += 1) {
			for (size_t x = 0; x < x_iter; x += 1) {
				size_t in_pos = y * x_iter + x;
				size_t out_pos = (y_size - y - 1) * x_iter + x;
				*(_out + out_pos) = *(_in + in_pos);
			}
		}
	};

	//////////////
	// Addition //
	//////////////

	void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
		// Using __m256i & _mm256_avg_epu8 does not make any performance difference.
		// But it will make image minimum size requirement higher.
		size_t i_max = x_size * y_size / 16;
		__m128i* _in1 = (__m128i*)in1;
		__m128i* _in2 = (__m128i*)in2;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			*(_out + i) = _mm_avg_epu8(*(_in1 + i), *(_in2 + i));
		}
	};

	void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
		size_t i_max = x_size * y_size / 16;
		__m128i* _in1 = (__m128i*)in1;
		__m128i* _in2 = (__m128i*)in2;
		__m256i* _out = (__m256i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			__m256i cvt_in1 = _mm256_cvtepi8_epi16(*(_in1 + i));
			__m256i cvt_in2 = _mm256_cvtepi8_epi16(*(_in2 + i));
			*(_out + i) = _mm256_adds_epi16(cvt_in1, cvt_in2);
		}
	};

	///////////////
	// Transpose //
	///////////////

	void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
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
		throw "Not implemented"; // TODOe
	};

	//////////////////
	// Sobel Filter //
	//////////////////

	void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	///////////////////
	// Median Filter //
	///////////////////

	void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		throw "Not implemented"; // TODO
	};

	/////////////
	// Scaling //
	/////////////

	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		const size_t i_max = x_size * y_size / 16;
		const __m256i scale = _mm256_set1_epi16((short)32);
		const __m128i count = _mm_set_epi64x(0, 6);
		const __m128i mask_low = _mm_set_epi8(
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1,
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0
		);
		const __m128i mask_high = _mm_set_epi8(
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0,
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1
		);
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			__m256i cvt_in = _mm256_cvtepu8_epi16(*(_in + i));
			__m256i scaled_multiplied_256 = _mm256_mullo_epi16(scale, cvt_in);
			__m256i scaled_256 = _mm256_sra_epi16(scaled_multiplied_256, count);
			__m128i scaled_low_256 = _mm256_extracti128_si256(scaled_256, 0);
			__m128i scaled_high_256 = _mm256_extracti128_si256(scaled_256, 1);
			__m128i scaled_shuffled_low = _mm_shuffle_epi8(scaled_low_256, mask_low);
			__m128i scaled_shuffled_high = _mm_shuffle_epi8(scaled_high_256, mask_high);
			*(_out + i) = _mm_or_si128(scaled_shuffled_high, scaled_shuffled_low);
		}
	};

	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		const size_t i_max = x_size * y_size / 16;
		const __m256i scale = _mm256_set1_epi16((short)83);
		const __m256i max = _mm256_set1_epi16((short)16320);
		const __m128i count = _mm_set_epi64x(0, 6);
		const __m128i mask_low = _mm_set_epi8(
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1,
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0
		);
		const __m128i mask_high = _mm_set_epi8(
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0,
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1
		);
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			__m256i cvt_in = _mm256_cvtepu8_epi16(*(_in + i));
			__m256i scaled_multiplied_256 = _mm256_mullo_epi16(scale, cvt_in);
			__m256i scaled_saturated_256 = _mm256_min_epu16(scaled_multiplied_256, max);
			__m256i scaled_256 = _mm256_sra_epi16(scaled_saturated_256, count);
			__m128i scaled_low_256 = _mm256_extracti128_si256(scaled_256, 0);
			__m128i scaled_high_256 = _mm256_extracti128_si256(scaled_256, 1);
			__m128i scaled_shuffled_low = _mm_shuffle_epi8(scaled_low_256, mask_low);
			__m128i scaled_shuffled_high = _mm_shuffle_epi8(scaled_high_256, mask_high);
			*(_out + i) = _mm_or_si128(scaled_shuffled_high, scaled_shuffled_low);
		}
	};

	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		const size_t i_max = x_size * y_size / 16;
		const __m256i scale = _mm256_set1_epi16((short)153);
		const __m256i max = _mm256_set1_epi16((short)16320);
		const __m128i count = _mm_set_epi64x(0, 6);
		const __m128i mask_low = _mm_set_epi8(
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1,
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0
		);
		const __m128i mask_high = _mm_set_epi8(
			(char)14, (char)12, (char)10, (char)8,  (char)6,  (char)4,  (char)2,  (char)0,
			(char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1, (char)-1
		);
		__m128i* _in = (__m128i*)in;
		__m128i* _out = (__m128i*)out;
		for (size_t i = 0; i < i_max; i += 1) {
			__m256i cvt_in = _mm256_cvtepu8_epi16(*(_in + i));
			__m256i scaled_multiplied_256 = _mm256_mullo_epi16(scale, cvt_in);
			__m256i scaled_saturated_256 = _mm256_min_epu16(scaled_multiplied_256, max);
			__m256i scaled_256 = _mm256_sra_epi16(scaled_saturated_256, count);
			__m128i scaled_low_256 = _mm256_extracti128_si256(scaled_256, 0);
			__m128i scaled_high_256 = _mm256_extracti128_si256(scaled_256, 1);
			__m128i scaled_shuffled_low = _mm_shuffle_epi8(scaled_low_256, mask_low);
			__m128i scaled_shuffled_high = _mm_shuffle_epi8(scaled_high_256, mask_high);
			*(_out + i) = _mm_or_si128(scaled_shuffled_high, scaled_shuffled_low);
		}
	};
}
