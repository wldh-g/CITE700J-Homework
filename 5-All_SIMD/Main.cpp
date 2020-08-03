#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
	std::filesystem::create_directory("output");

	#ifdef __INTEL_COMPILER
	std::cout << "Compiled with ICL." << std::endl << std::endl;
	#else
	#ifdef _MSC_VER
	std::cout << "Compiled with MSVC." << std::endl << std::endl;
	#else
	std::cout << "Compiled with unknown compiler." << std::endl << std::endl;
	#endif
	#endif

	// Tasks
	// task::all();

	task::flipx_flipy(true);
	std::cout << std::endl;
	task::addition_8b_16b(true);
	std::cout << std::endl;
	task::accumulation_16b(true); // This does not export any output file
	std::cout << std::endl;
	task::scaling(true);
	std::cout << std::endl;
	task::median_filter(true);
	std::cout << std::endl;
	task::transposition_multibit(true);
	std::cout << std::endl;

	return __exit(0);
}
