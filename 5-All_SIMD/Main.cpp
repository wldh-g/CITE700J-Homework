#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
	std::filesystem::create_directory("output");

	// Tasks
	task::flipx_flipy(true);
	std::cout << std::endl;
	task::addition_8b_16b(true); // Finished
	std::cout << std::endl;
	// task::accumulation(true); // ?
	// std::cout << std::endl;
	task::scaling(true); // Finished
	std::cout << std::endl;
	task::median_filter(true); // Partial_Finished (3by3 remained)
	std::cout << std::endl;
	task::transposition_multibit(true);
	std::cout << std::endl;

	return __exit(0);
}
