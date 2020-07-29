#ifndef _FILT_H_
#define _FILT_H_

#include <cstdint>

namespace filt {
	constexpr int8_t ones3x3[3][3] = { 1 };

	constexpr int8_t sobel_x[3][3] = {
		{ -1, 0, +1 },
		{ -2, 0, +2 },
		{ -1, 0, +1 }
	};

	constexpr int8_t sobel_y[3][3] = {
		{ +1, +2, +1 },
		{  0,  0,  0 },
		{ -1, -2, -1 }
	};
}

#endif // _FILT_H_
