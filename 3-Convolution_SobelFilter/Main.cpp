#include <filesystem>
#include "Tasks.h"
#include "Util.h"

int main() {
	std::filesystem::create_directory("output");

	// Tasks
	task::general_convolution_unsigned(false);
	std::cout << std::endl;
	task::general_convolution_signed(false);

	return __exit(0);
}
