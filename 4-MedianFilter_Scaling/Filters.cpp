#include "Filters.h"

namespace filt {
	const Filter<int8_t>* blur_3 = new Filter<int8_t>
		(3, {
			1, 1, 1,
			1, 1, 1,
			1, 1, 1
		 });

	const Filter<int8_t>* blur_15 = new Filter<int8_t>
		(15, {
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		 });

	const Filter<int8_t>* sharpen_3 = new Filter<int8_t>
		(3, {
			-1, -1, -1,
			-1,  9, -1,
			-1, -1, -1
		 });

	const Filter<int8_t>* sobel_x = new Filter<int8_t>
		(3, {
			-1, 0, +1,
			-2, 0, +2,
			-1, 0, +1
		 });

	const Filter<int8_t>* sobel_y = new Filter<int8_t>
		(3, {
			+1, +2, +1,
			 0,  0,  0,
			-1, -2, -1
		});
}