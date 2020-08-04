#ifndef _UTIL_H_
#define _UTIL_H_

#include <algorithm>
#include <cstdint>
#include <cstring>
#include <intrin.h>

#define _$lo(m128i) m128i.m128i_u64[0]
#define _$hi(m128i) m128i.m128i_u64[1]
#define _$$(m128i) m128i.m128i_u64[1], m128i.m128i_u64[0]

template<typename T = uint8_t>
inline void sort2(T& a, T& b) {
  if (a > b) std::swap(a, b);
}

inline void print_epu16(const __m256i& i, bool add_newline = true) {
  uint16_t _i[16];
  memcpy(_i, &i, sizeof(_i));
  printf(
    "%04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x\n",
    _i[0], _i[1], _i[2],  _i[3],  _i[4],  _i[5],  _i[6],  _i[7],
    _i[8], _i[9], _i[10], _i[11], _i[12], _i[13], _i[14], _i[15]
  );
}

inline void print_epu16(const __m128i& i, bool add_newline = true) {
  uint16_t _i[8];
  memcpy(_i, &i, sizeof(_i));
  printf(
    "%04x %04x %04x %04x %04x %04x %04x %04x\n",
    _i[0], _i[1], _i[2], _i[3], _i[4], _i[5], _i[6], _i[7]
  );
}

inline void print_epu8(const __m256i& i, bool add_newline = true) {
  uint8_t _i[32];
  memcpy(_i, &i, sizeof(_i));
  printf(
    "%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n",
    _i[0],  _i[1],  _i[2],  _i[3],  _i[4],  _i[5],  _i[6],  _i[7],
    _i[8],  _i[9],  _i[10], _i[11], _i[12], _i[13], _i[14], _i[15],
    _i[16], _i[17], _i[18], _i[19], _i[20], _i[21], _i[22], _i[23],
    _i[24], _i[25], _i[26], _i[27], _i[28], _i[29], _i[30], _i[31]
  );
}

inline void print_epu8(const __m128i& i, bool add_newline = true) {
  uint8_t _i[16];
  memcpy(_i, &i, sizeof(_i));
  printf(
    "%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n",
    _i[0], _i[1], _i[2],  _i[3],  _i[4],  _i[5],  _i[6],  _i[7],
    _i[8], _i[9], _i[10], _i[11], _i[12], _i[13], _i[14], _i[15]
  );
}

#endif // _UTIL_H_
