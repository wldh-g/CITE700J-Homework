#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

void task::all() {
	task::accumulation_16b(true);
	cout << endl;
	task::addition_8b_16b(true);
	cout << endl;
	task::flipx_flipy(true);
	cout << endl;
	task::general_convolution_signed(true);
	cout << endl;
	task::general_convolution_unsigned(true);
	cout << endl;
	task::inversion_8b(true);
	cout << endl;
	task::median_filter(true);
	cout << endl;
	task::scaling(true);
	cout << endl;
	task::scaling_unrolled(true);
	cout << endl;
	task::sobel_filter(true);
	cout << endl;
	task::transposition_8b(true);
	cout << endl;
	task::transposition_multibit(true);
	cout << endl;
	cout << "Done." << endl;
};
