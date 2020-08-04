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

  //////////////////
  // Accumulation //
  //////////////////

  void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) {
    size_t i_max = x_size * y_size * 2 / 16;
    __m128i* _in = (__m128i*)in;
    __m256i sum = _mm256_set_epi64x(0, 0, 0, 0);
    for (size_t i = 0; i < i_max; i += 1) {
      __m256i upcvt_in = _mm256_cvtepu16_epi32(*(_in + i));
      sum = _mm256_add_epi32(upcvt_in, sum);
    }
    *out = (uint64_t)sum.m256i_u32[0] + (uint64_t)sum.m256i_u32[1] + (uint64_t)sum.m256i_u32[2]
      + (uint64_t)sum.m256i_u32[3] + (uint64_t)sum.m256i_u32[4] + (uint64_t)sum.m256i_u32[5]
      + (uint64_t)sum.m256i_u32[6] + (uint64_t)sum.m256i_u32[7];
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
      __m256i cvt_in1 = _mm256_cvtepu8_epi16(*(_in1 + i));
      __m256i cvt_in2 = _mm256_cvtepu8_epi16(*(_in2 + i));
      *(_out + i) = _mm256_adds_epu16(cvt_in1, cvt_in2);
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
    size_t blk_x, blk_y;
    const size_t blk_y_size1 = y_size / 16;
    const size_t blk_y_size2 = blk_y_size1 * 2;
    const size_t blk_y_size3 = blk_y_size1 * 3;
    const size_t blk_y_size4 = blk_y_size1 * 4;
    const size_t blk_y_size5 = blk_y_size1 * 5;
    const size_t blk_y_size6 = blk_y_size1 * 6;
    const size_t blk_y_size7 = blk_y_size1 * 7;
    const size_t blk_y_size8 = blk_y_size1 * 8;
    const size_t blk_y_size9 = blk_y_size1 * 9;
    const size_t blk_y_size10 = blk_y_size1 * 10;
    const size_t blk_y_size11 = blk_y_size1 * 11;
    const size_t blk_y_size12 = blk_y_size1 * 12;
    const size_t blk_y_size13 = blk_y_size1 * 13;
    const size_t blk_y_size14 = blk_y_size1 * 14;
    const size_t blk_y_size15 = blk_y_size1 * 15;
    const size_t blk_x_size1 = x_size / 16;
    const size_t blk_x_size2 = blk_x_size1 * 2;
    const size_t blk_x_size3 = blk_x_size1 * 3;
    const size_t blk_x_size4 = blk_x_size1 * 4;
    const size_t blk_x_size5 = blk_x_size1 * 5;
    const size_t blk_x_size6 = blk_x_size1 * 6;
    const size_t blk_x_size7 = blk_x_size1 * 7;
    const size_t blk_x_size8 = blk_x_size1 * 8;
    const size_t blk_x_size9 = blk_x_size1 * 9;
    const size_t blk_x_size10 = blk_x_size1 * 10;
    const size_t blk_x_size11 = blk_x_size1 * 11;
    const size_t blk_x_size12 = blk_x_size1 * 12;
    const size_t blk_x_size13 = blk_x_size1 * 13;
    const size_t blk_x_size14 = blk_x_size1 * 14;
    const size_t blk_x_size15 = blk_x_size1 * 15;
    for (blk_y = 0; blk_y < blk_y_size1; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size1; blk_x += 1) {
        __m128i* in_base = (__m128i*)(in + blk_y * 16 * x_size + blk_x * 16);
        __m128i* out_base = (__m128i*)(out + blk_x * 16 * y_size + blk_y * 16);

        // AF AE AD AC AB AA A9 A8 A7 A6 A5 A4 A3 A2 A1 A0
        // BF BE BD BC BB BA B9 B8 B7 B6 B5 B4 B3 B2 B1 B0
        // CF CE CD CC CB CA C9 C8 C7 C6 C5 C4 C3 C2 C1 C0
        // DF DE DD DC DB DA D9 D8 D7 D6 D5 D4 D3 D2 D1 D0
        // EF EE ED EC EB EA E9 E8 E7 E6 E5 E4 E3 E2 E1 E0
        // FF FE FD FC FB FA F9 F8 F7 F6 F5 F4 F3 F2 F1 F0
        // GF GE GD GC GB GA G9 G8 G7 G6 G5 G4 G3 G2 G1 G0
        // HF HE HD HC HB HA H9 H8 H7 H6 H5 H4 H3 H2 H1 H0
        // IF IE ID IC IB IA I9 I8 I7 I6 I5 I4 I3 I2 I1 I0
        // JF JE JD JC JB JA J9 J8 J7 J6 J5 J4 J3 J2 J1 J0
        // KF KE KD KC KB KA K9 K8 K7 K6 K5 K4 K3 K2 K1 K0
        // LF LE LD LC LB LA L9 L8 L7 L6 L5 L4 L3 L2 L1 L0
        // MF ME MD MC MB MA M9 M8 M7 M6 M5 M4 M3 M2 M1 M0
        // NF NE ND NC NB NA N9 N8 N7 N6 N5 N4 N3 N2 N1 N0
        // OF OE OD OC OB OA O9 O8 O7 O6 O5 O4 O3 O2 O1 O0
        // PF PE PD PC PB PA P9 P8 P7 P6 P5 P4 P3 P2 P1 P0
        __m128i row1 = *(in_base);
        __m128i row2 = *(in_base + blk_x_size1);
        __m128i row3 = *(in_base + blk_x_size2);
        __m128i row4 = *(in_base + blk_x_size3);
        __m128i row5 = *(in_base + blk_x_size4);
        __m128i row6 = *(in_base + blk_x_size5);
        __m128i row7 = *(in_base + blk_x_size6);
        __m128i row8 = *(in_base + blk_x_size7);
        __m128i row9 = *(in_base + blk_x_size8);
        __m128i row10 = *(in_base + blk_x_size9);
        __m128i row11 = *(in_base + blk_x_size10);
        __m128i row12 = *(in_base + blk_x_size11);
        __m128i row13 = *(in_base + blk_x_size12);
        __m128i row14 = *(in_base + blk_x_size13);
        __m128i row15 = *(in_base + blk_x_size14);
        __m128i row16 = *(in_base + blk_x_size15);

        // Close your eyes and feel the hexatable
        __m128i p_row1 = _mm_unpacklo_epi8(row1, row2); // B7 A7 to B0 A0
        __m128i p_row2 = _mm_unpackhi_epi8(row1, row2); // BF AF to B8 A8
        __m128i p_row3 = _mm_unpacklo_epi8(row3, row4); // D7 C7 to D0 C0
        __m128i p_row4 = _mm_unpackhi_epi8(row3, row4); // DF CF to D8 C8
        __m128i p_row5 = _mm_unpacklo_epi8(row5, row6); // F7 E7 to F0 E0
        __m128i p_row6 = _mm_unpackhi_epi8(row5, row6); // FF EF to F8 E8
        __m128i p_row7 = _mm_unpacklo_epi8(row7, row8); // ...
        __m128i p_row8 = _mm_unpackhi_epi8(row7, row8);
        __m128i p_row9 = _mm_unpacklo_epi8(row9, row10);
        __m128i p_row10 = _mm_unpackhi_epi8(row9, row10);
        __m128i p_row11 = _mm_unpacklo_epi8(row11, row12);
        __m128i p_row12 = _mm_unpackhi_epi8(row11, row12);
        __m128i p_row13 = _mm_unpacklo_epi8(row13, row14);
        __m128i p_row14 = _mm_unpackhi_epi8(row13, row14);
        __m128i p_row15 = _mm_unpacklo_epi8(row15, row16);
        __m128i p_row16 = _mm_unpackhi_epi8(row15, row16);

        // Close your eyes again and feel it again
        __m128i pp_row1 = _mm_unpacklo_epi16(p_row1, p_row3); // D3 C3 B3 A3 to D0 C0 B0 A0
        __m128i pp_row2 = _mm_unpackhi_epi16(p_row1, p_row3); // D7 C7 B7 A7 to D4 C4 B4 A4
        __m128i pp_row3 = _mm_unpacklo_epi16(p_row2, p_row4); // DB CB BB AB to D8 C8 B8 A8
        __m128i pp_row4 = _mm_unpackhi_epi16(p_row2, p_row4); // DF CF BF AF to DC CC BC AC
        __m128i pp_row5 = _mm_unpacklo_epi16(p_row5, p_row7); // ...
        __m128i pp_row6 = _mm_unpackhi_epi16(p_row5, p_row7);
        __m128i pp_row7 = _mm_unpacklo_epi16(p_row6, p_row8);
        __m128i pp_row8 = _mm_unpackhi_epi16(p_row6, p_row8);
        __m128i pp_row9 = _mm_unpacklo_epi16(p_row9, p_row11);
        __m128i pp_row10 = _mm_unpackhi_epi16(p_row9, p_row11);
        __m128i pp_row11 = _mm_unpacklo_epi16(p_row10, p_row12);
        __m128i pp_row12 = _mm_unpackhi_epi16(p_row10, p_row12);
        __m128i pp_row13 = _mm_unpacklo_epi16(p_row13, p_row15);
        __m128i pp_row14 = _mm_unpackhi_epi16(p_row13, p_row15);
        __m128i pp_row15 = _mm_unpacklo_epi16(p_row14, p_row16);
        __m128i pp_row16 = _mm_unpackhi_epi16(p_row14, p_row16);

        // Almost done, keep close your eyes and feel it more
        __m128i ppp_row1 = _mm_unpacklo_epi32(pp_row1, pp_row5);  // H1~A1 H0~A0
        __m128i ppp_row2 = _mm_unpackhi_epi32(pp_row1, pp_row5);  // H3~A3 H2~A2
        __m128i ppp_row3 = _mm_unpacklo_epi32(pp_row2, pp_row6);  // H5~A5 H4~A4
        __m128i ppp_row4 = _mm_unpackhi_epi32(pp_row2, pp_row6);  // H7~A7 H6~A6
        __m128i ppp_row5 = _mm_unpacklo_epi32(pp_row3, pp_row7);  // H9~A9 H8~A8
        __m128i ppp_row6 = _mm_unpackhi_epi32(pp_row3, pp_row7);  // HB~AB HA~AA
        __m128i ppp_row7 = _mm_unpacklo_epi32(pp_row4, pp_row8);  // HD~AD HC~AC
        __m128i ppp_row8 = _mm_unpackhi_epi32(pp_row4, pp_row8);  // HF~AF HE~AE
        __m128i ppp_row9 = _mm_unpacklo_epi32(pp_row9, pp_row13); // ...
        __m128i ppp_row10 = _mm_unpackhi_epi32(pp_row9, pp_row13);
        __m128i ppp_row11 = _mm_unpacklo_epi32(pp_row10, pp_row14);
        __m128i ppp_row12 = _mm_unpackhi_epi32(pp_row10, pp_row14);
        __m128i ppp_row13 = _mm_unpacklo_epi32(pp_row11, pp_row15);
        __m128i ppp_row14 = _mm_unpackhi_epi32(pp_row11, pp_row15);
        __m128i ppp_row15 = _mm_unpacklo_epi32(pp_row12, pp_row16);
        __m128i ppp_row16 = _mm_unpackhi_epi32(pp_row12, pp_row16);

        // FINISH LINE
        *(out_base) = _mm_unpacklo_epi64(ppp_row1, ppp_row9);
        *(out_base + blk_y_size1) = _mm_unpackhi_epi64(ppp_row1, ppp_row9);
        *(out_base + blk_y_size2) = _mm_unpacklo_epi64(ppp_row2, ppp_row10);
        *(out_base + blk_y_size3) = _mm_unpackhi_epi64(ppp_row2, ppp_row10);
        *(out_base + blk_y_size4) = _mm_unpacklo_epi64(ppp_row3, ppp_row11);
        *(out_base + blk_y_size5) = _mm_unpackhi_epi64(ppp_row3, ppp_row11);
        *(out_base + blk_y_size6) = _mm_unpacklo_epi64(ppp_row4, ppp_row12);
        *(out_base + blk_y_size7) = _mm_unpackhi_epi64(ppp_row4, ppp_row12);
        *(out_base + blk_y_size8) = _mm_unpacklo_epi64(ppp_row5, ppp_row13);
        *(out_base + blk_y_size9) = _mm_unpackhi_epi64(ppp_row5, ppp_row13);
        *(out_base + blk_y_size10) = _mm_unpacklo_epi64(ppp_row6, ppp_row14);
        *(out_base + blk_y_size11) = _mm_unpackhi_epi64(ppp_row6, ppp_row14);
        *(out_base + blk_y_size12) = _mm_unpacklo_epi64(ppp_row7, ppp_row15);
        *(out_base + blk_y_size13) = _mm_unpackhi_epi64(ppp_row7, ppp_row15);
        *(out_base + blk_y_size14) = _mm_unpacklo_epi64(ppp_row8, ppp_row16);
        *(out_base + blk_y_size15) = _mm_unpackhi_epi64(ppp_row8, ppp_row16);
      }
    }
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

  void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size) {
    size_t blk_x, blk_y;
    const size_t blk_y_size1 = y_size / 8;
    const size_t blk_y_size2 = blk_y_size1 * 2;
    const size_t blk_y_size3 = blk_y_size1 * 3;
    const size_t blk_y_size4 = blk_y_size1 * 4;
    const size_t blk_y_size5 = blk_y_size1 * 5;
    const size_t blk_y_size6 = blk_y_size1 * 6;
    const size_t blk_y_size7 = blk_y_size1 * 7;
    const size_t blk_x_size1 = x_size / 8;
    const size_t blk_x_size2 = blk_x_size1 * 2;
    const size_t blk_x_size3 = blk_x_size1 * 3;
    const size_t blk_x_size4 = blk_x_size1 * 4;
    const size_t blk_x_size5 = blk_x_size1 * 5;
    const size_t blk_x_size6 = blk_x_size1 * 6;
    const size_t blk_x_size7 = blk_x_size1 * 7;
    for (blk_y = 0; blk_y < blk_y_size1; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size1; blk_x += 1) {
        __m128i* in_base = (__m128i*)(in + blk_y * 8 * x_size + blk_x * 8);
        __m128i* out_base = (__m128i*)(out + blk_x * 8 * y_size + blk_y * 8);

        __m128i row1 = *(in_base);               // A7 A6 A5 A4 A3 A2 A1 A0
        __m128i row2 = *(in_base + blk_x_size1); // B7 B6 B5 B4 B3 B2 B1 B0
        __m128i row3 = *(in_base + blk_x_size2); // C7 C6 C5 C4 C3 C2 C1 C0
        __m128i row4 = *(in_base + blk_x_size3); // D7 D6 D5 D4 D3 D2 D1 D0
        __m128i row5 = *(in_base + blk_x_size4); // E7 E6 E5 E4 E3 E2 E1 E0
        __m128i row6 = *(in_base + blk_x_size5); // F7 F6 F5 F4 F3 F2 F1 F0
        __m128i row7 = *(in_base + blk_x_size6); // G7 G6 G5 G4 G3 G2 G1 G0
        __m128i row8 = *(in_base + blk_x_size7); // H7 H6 H5 H4 H3 H2 H1 H0

        __m128i p_row1 = _mm_unpacklo_epi16(row1, row2); // B3 A3 B2 A2 B1 A1 B0 A0
        __m128i p_row2 = _mm_unpacklo_epi16(row3, row4); // D3 C3 D2 C2 D1 C1 D0 C0
        __m128i p_row3 = _mm_unpacklo_epi16(row5, row6); // F3 E3 F2 E2 F1 E1 F0 E0
        __m128i p_row4 = _mm_unpacklo_epi16(row7, row8); // H3 G3 H2 G2 H1 G1 H0 G0
        __m128i p_row5 = _mm_unpackhi_epi16(row1, row2); // B7 A7 B6 A6 B5 A5 B4 A4
        __m128i p_row6 = _mm_unpackhi_epi16(row3, row4); // D7 C7 D6 C6 D5 C5 D4 C4
        __m128i p_row7 = _mm_unpackhi_epi16(row5, row6); // F7 E7 F6 E6 F5 E5 F4 E4
        __m128i p_row8 = _mm_unpackhi_epi16(row7, row8); // H7 G7 H6 G6 H5 G5 H4 G4

        __m128i pp_row1 = _mm_unpacklo_epi32(p_row1, p_row2); // D1 C1 B1 A1 D0 C0 B0 A0
        __m128i pp_row2 = _mm_unpackhi_epi32(p_row1, p_row2); // D3 C3 B3 A3 D2 C2 B2 A2
        __m128i pp_row3 = _mm_unpacklo_epi32(p_row5, p_row6); // D5 C5 B5 A5 D4 C4 B4 A4
        __m128i pp_row4 = _mm_unpackhi_epi32(p_row5, p_row6); // D7 C7 B7 A7 D6 C6 B6 A6
        __m128i pp_row5 = _mm_unpacklo_epi32(p_row3, p_row4); // H1 G1 F1 E1 H0 G0 F0 E0
        __m128i pp_row6 = _mm_unpackhi_epi32(p_row3, p_row4); // H3 G3 F3 E3 H2 G2 F2 E2
        __m128i pp_row7 = _mm_unpacklo_epi32(p_row7, p_row8); // H5 G5 F5 E5 H4 G4 F4 E4
        __m128i pp_row8 = _mm_unpackhi_epi32(p_row7, p_row8); // H7 G7 F7 E7 H6 G6 F6 E6

        *(out_base) = _mm_unpacklo_epi64(pp_row1, pp_row5);              // H0 G0 F0 E0 D0 C0 B0 A0
        *(out_base + blk_y_size1) = _mm_unpackhi_epi64(pp_row1, pp_row5);// H1 G1 F1 E1 D1 C1 B1 A1
        *(out_base + blk_y_size2) = _mm_unpacklo_epi64(pp_row2, pp_row6);// H2 G2 F2 E2 D2 C2 B2 A2
        *(out_base + blk_y_size3) = _mm_unpackhi_epi64(pp_row2, pp_row6);// H3 G3 F3 E3 D3 C3 B3 A3
        *(out_base + blk_y_size4) = _mm_unpacklo_epi64(pp_row3, pp_row7);// H4 G4 F4 E4 D4 C4 B4 A4
        *(out_base + blk_y_size5) = _mm_unpackhi_epi64(pp_row3, pp_row7);// H5 G5 F5 E5 D5 C5 B5 A5
        *(out_base + blk_y_size6) = _mm_unpacklo_epi64(pp_row4, pp_row8);// H6 G6 F6 E6 D6 C6 B6 A6
        *(out_base + blk_y_size7) = _mm_unpackhi_epi64(pp_row4, pp_row8);// H7 G7 F7 E7 D7 C7 B7 A7
      }
    }
  };

  void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size) {
    size_t blk_x, blk_y;
    const size_t blk_y_size1 = y_size / 4;
    const size_t blk_y_size2 = blk_y_size1 * 2;
    const size_t blk_y_size3 = blk_y_size1 * 3;
    const size_t blk_x_size1 = x_size / 4;
    const size_t blk_x_size2 = blk_x_size1 * 2;
    const size_t blk_x_size3 = blk_x_size1 * 3;
    for (blk_y = 0; blk_y < blk_y_size1; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size1; blk_x += 1) {
        __m128i* in_base = (__m128i*)(in + blk_y * 4 * x_size + blk_x * 4);
        __m128i* out_base = (__m128i*)(out + blk_x * 4 * y_size + blk_y * 4);

        __m128i row1 = *(in_base);               // A3 A2 A1 A0
        __m128i row2 = *(in_base + blk_x_size1); // B3 B2 B1 B0
        __m128i row3 = *(in_base + blk_x_size2); // C3 C2 C1 C0
        __m128i row4 = *(in_base + blk_x_size3); // D3 D2 D1 D0

        __m128i p_row1 = _mm_unpacklo_epi32(row1, row2); // B1 A1 B0 A0
        __m128i p_row2 = _mm_unpacklo_epi32(row3, row4); // D1 C1 D0 C0
        __m128i p_row3 = _mm_unpackhi_epi32(row1, row2); // B3 A3 B2 A2
        __m128i p_row4 = _mm_unpackhi_epi32(row3, row4); // D3 C3 D2 C2

        __m128i pp_row1 = _mm_unpacklo_epi64(p_row1, p_row2); // D0 C0 B0 A0
        __m128i pp_row2 = _mm_unpackhi_epi64(p_row1, p_row2); // D1 C1 B1 A1
        __m128i pp_row3 = _mm_unpacklo_epi64(p_row3, p_row4); // D2 C2 B2 A2
        __m128i pp_row4 = _mm_unpackhi_epi64(p_row3, p_row4); // D3 C3 B3 A3

        *(out_base) = pp_row1;               // D0 C0 B0 A0
        *(out_base + blk_y_size1) = pp_row2; //	D1 C1 B1 A1
        *(out_base + blk_y_size2) = pp_row3; //	D2 C2 B2 A2
        *(out_base + blk_y_size3) = pp_row4; //	D3 C3 B3 A3
      }
    }
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
    uint8_t* pin = new uint8_t[x_size * (y_size + 2)] { 0 };
    memcpy(pin + x_size, in, x_size * y_size);
    memcpy(pin, in, x_size);
    memcpy(pin + (y_size + 1) * x_size, in + (y_size - 1) * x_size, x_size);
    __m128i* _pin = (__m128i*)pin;
    __m128i* _out = (__m128i*)out;
    size_t x_iter1 = x_size / 16;
    size_t x_iter2 = x_size / 8;
    size_t i_max = x_iter1 * y_size;
    for (size_t i = 0; i < i_max; i += 1) {
      __m128i top = *(_pin + i);
      __m128i mid = *(_pin + i + x_iter1);
      __m128i bot = *(_pin + i + x_iter2);

      // Get rid of the biggest one
      __m128i top_mid__max = _mm_max_epu8(top, mid);
      __m128i top_mid_max__bot__min = _mm_min_epu8(top_mid__max, bot);

      // Get rid of the smallest one
      __m128i top_mid__min = _mm_min_epu8(top, mid);
      __m128i top_mid_min__bot__max = _mm_max_epu8(top_mid__min, top_mid_max__bot__min);

      *(_out + i) = top_mid_min__bot__max;
    }
    delete[] pin;
  };

  void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    uint8_t* pin = new uint8_t[x_size * (y_size + 4)] { 0 };
    memcpy(pin, in, x_size);
    memcpy(pin + x_size, in, x_size);
    memcpy(pin + 2 * x_size, in, x_size * y_size);
    memcpy(pin + (y_size + 2) * x_size, in + (y_size - 1) * x_size, x_size);
    memcpy(pin + (y_size + 3) * x_size, in + (y_size - 1) * x_size, x_size);
    __m128i* _pin = (__m128i*)pin;
    __m128i* _out = (__m128i*)out;
    size_t x_iter1 = x_size / 16;
    size_t x_iter2 = x_size / 8;
    size_t x_iter3 = x_iter1 + x_iter2;
    size_t x_iter4 = x_size / 4;
    size_t i_max = x_iter1 * y_size;
    for (size_t i = 0; i < i_max; i += 1) {
      __m128i top2 = *(_pin + i);
      __m128i top1 = *(_pin + i + x_iter1);
      __m128i mid = *(_pin + i + x_iter2);
      __m128i bot1 = *(_pin + i + x_iter3);
      __m128i bot2 = *(_pin + i + x_iter4);

      // Get rid of the biggest one without middle
      __m128i top_min = _mm_min_epu8(top2, top1);
      __m128i bot_min = _mm_min_epu8(bot1, bot2);
      __m128i top_bot_max = _mm_max_epu8(top_min, bot_min);

      // Get rid of the smallest one without middle
      __m128i top_max = _mm_max_epu8(top2, top1);
      __m128i bot_max = _mm_max_epu8(bot1, bot2);
      __m128i top_bot_min = _mm_min_epu8(top_max, bot_max);

      // Get median from left three
      __m128i top_mid__max = _mm_max_epu8(top_bot_max, mid);
      __m128i top_mid_max__bot__min = _mm_min_epu8(top_mid__max, top_bot_min);
      __m128i top_mid__min = _mm_min_epu8(top_bot_max, mid);
      __m128i top_mid_min__bot__max = _mm_max_epu8(top_mid__min, top_mid_max__bot__min);

      *(_out + i) = top_mid_min__bot__max;
    }
    delete[] pin;
  };

  void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    const size_t x_2plus = x_size + 2;
    const size_t y_2plus = y_size + 2;
    uint8_t* pin1 = new uint8_t[x_size * y_2plus] { 0 };
    uint8_t* pin2 = new uint8_t[x_size * y_2plus] { 0 }; // To prevent memory access error on min &
    uint8_t* pin3 = new uint8_t[x_size * y_2plus] { 0 }; // max intrinsic operations
    for (size_t y = 0; y < y_size; y += 1) {
      memcpy(pin1 + (y + 1) * x_size + 1, in + y * x_size, x_size - 1);
      memcpy(pin2 + (y + 1) * x_size, in + y * x_size, x_size);
      memcpy(pin3 + (y + 1) * x_size, in + y * x_size + 1, x_size - 1);
    }
    memcpy(pin1 + 1, in, x_size - 1);
    memcpy(pin1 + (y_size + 1) * x_size + 1, in + (y_size - 1) * x_size, x_size - 1);
    memcpy(pin2, in, x_size);
    memcpy(pin2 + (y_size + 1) * x_size, in + (y_size - 1) * x_size, x_size);
    memcpy(pin3, in + 1, x_size - 1);
    memcpy(pin3 + (y_size + 1) * x_size, in + (y_size - 1) * x_size + 1, x_size - 1);
    for (size_t y = 0; y < y_2plus; y += 1) {
      *(pin1 + y * x_size) = *(pin1 + y * x_size + 1);
      *(pin3 + (y + 1) * x_size - 1) = *(pin3 + (y + 1) * x_size - 2);
    }
    size_t x_iter1 = x_size / 16;
    size_t x_iter2 = x_iter1 * 2;
    size_t i_max = x_iter1 * y_size;
    __m128i* _pin1 = (__m128i*)pin1;
    __m128i* _pin2 = (__m128i*)pin2;
    __m128i* _pin3 = (__m128i*)pin3;
    __m128i* _out = (__m128i*)out;
    for (size_t i = 0; i < i_max; i += 1) {
      __m128i e1 = *(_pin1 + i);
      __m128i e2 = *(_pin2 + i);
      __m128i e3 = *(_pin3 + i);
      __m128i e4 = *(_pin1 + i + x_iter1);
      __m128i e5 = *(_pin2 + i + x_iter1);
      __m128i e6 = *(_pin3 + i + x_iter1);
      __m128i e7 = *(_pin1 + i + x_iter2);
      __m128i e8 = *(_pin2 + i + x_iter2);
      __m128i e9 = *(_pin3 + i + x_iter2);

      // Get rid of a low value
      __m128i i1 = _mm_min_epu8(e1, e2);
      __m128i i2 = _mm_min_epu8(e3, e4);
      __m128i i3 = _mm_min_epu8(e5, e6);
      __m128i i4 = _mm_min_epu8(e7, e8);
      __m128i i5 = _mm_min_epu8(i1, i2);
      __m128i i6 = _mm_min_epu8(i3, i4);
      __m128i v1 = _mm_max_epu8(e1, e2);
      __m128i v2 = _mm_max_epu8(e3, e4);
      __m128i v3 = _mm_max_epu8(e5, e6);
      __m128i v4 = _mm_max_epu8(e7, e8);
      __m128i v5 = _mm_max_epu8(i1, i2);
      __m128i v6 = _mm_max_epu8(i3, i4);
      __m128i v7 = _mm_max_epu8(i5, i6); // Note : v8 = e9

      // Get rid of a high value
      __m128i a1 = _mm_max_epu8(v1, v2);
      __m128i a2 = _mm_max_epu8(v3, v4);
      __m128i a3 = _mm_max_epu8(v5, v6);
      __m128i a4 = _mm_max_epu8(v7, e9);
      __m128i a5 = _mm_max_epu8(a1, a2);
      __m128i a6 = _mm_max_epu8(a3, a4);
      __m128i n1 = _mm_min_epu8(v1, v2);
      __m128i n2 = _mm_min_epu8(v3, v4);
      __m128i n3 = _mm_min_epu8(v5, v6);
      __m128i n4 = _mm_min_epu8(v7, e9);
      __m128i n5 = _mm_min_epu8(a1, a2);
      __m128i n6 = _mm_min_epu8(a3, a4);
      __m128i n7 = _mm_min_epu8(a5, a6);

      // Get rid of a high value
      __m128i m1 = _mm_max_epu8(n1, n2);
      __m128i m2 = _mm_max_epu8(n3, n4);
      __m128i m3 = _mm_max_epu8(n5, n6);
      __m128i m4 = _mm_max_epu8(m1, m2);
      __m128i m5 = _mm_max_epu8(m3, n7);
      __m128i h1 = _mm_min_epu8(n1, n2);
      __m128i h2 = _mm_min_epu8(n3, n4);
      __m128i h3 = _mm_min_epu8(n5, n6);
      __m128i h4 = _mm_min_epu8(m1, m2);
      __m128i h5 = _mm_min_epu8(m3, n7);
      __m128i h6 = _mm_min_epu8(m4, m5);

      // Get rid of a low value
      __m128i x1 = _mm_min_epu8(h1, h2);
      __m128i x2 = _mm_min_epu8(h3, h4);
      __m128i x3 = _mm_min_epu8(h5, h6);
      __m128i x4 = _mm_min_epu8(x1, x2);
      __m128i f1 = _mm_max_epu8(h1, h2);
      __m128i f2 = _mm_max_epu8(h3, h4);
      __m128i f3 = _mm_max_epu8(h5, h6);
      __m128i f4 = _mm_max_epu8(x1, x2);
      __m128i f5 = _mm_max_epu8(x3, x4);

      // Get median from left 5 values
      __m128i top_min = _mm_min_epu8(f1, f2);
      __m128i bot_min = _mm_min_epu8(f4, f5);
      __m128i top_bot_max = _mm_max_epu8(top_min, bot_min);
      __m128i top_max = _mm_max_epu8(f1, f2);
      __m128i bot_max = _mm_max_epu8(f4, f5);
      __m128i top_bot_min = _mm_min_epu8(top_max, bot_max);
      __m128i top_mid__max = _mm_max_epu8(top_bot_max, f3);
      __m128i top_mid_max__bot__min = _mm_min_epu8(top_mid__max, top_bot_min);
      __m128i top_mid__min = _mm_min_epu8(top_bot_max, f3);
      __m128i top_mid_min__bot__max = _mm_max_epu8(top_mid__min, top_mid_max__bot__min);

      *(_out + i) = top_mid_min__bot__max;
    }
    delete[] pin1;
    delete[] pin2;
    delete[] pin3;
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
