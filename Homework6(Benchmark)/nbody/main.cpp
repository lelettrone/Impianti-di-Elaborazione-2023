#include "nbody.h"
#include <iostream>
#include <sstream>
#include <chrono>

#include <windows.h>
#include <stdio.h>

using namespace std::chrono;
using namespace std;

int main(int argc, char* argv[]) {
		int n=0;
		
		SYSTEMTIME st;
		// decode arguments
		if(argc < 2) {
			printf("You must provide at least one argument\n");
			exit(0);
		}
	    std::istringstream ss(argv[1]);

		if (!(ss >> n)) {
				std::cerr << "Invalid number: " << argv[1] << '\n';
		} else if (!ss.eof()) {
			std::cerr << "Trailing characters after number: " << argv[1] << '\n';
		}
		//std::cout<< "parameter n="<<n<<std::endl;
		
		// Get starting timepoint
		//GetSystemTime(&st);
		//auto start1 = st.wMilliseconds;
		auto start = high_resolution_clock::now();
		//calling faunction
		Nbody nbody(n, 0.0001, 10);
		// Get stopping timepoint
		auto stop = high_resolution_clock::now();
	    //GetSystemTime(&st);
		//auto stop1 = st.wMilliseconds;
		
		auto duration = duration_cast<microseconds>(stop - start);
		//auto duration1 = stop1-start1;
  
    cout << "Time: "
         << duration.count() << " us" << endl;
	
	    //Disable output
		//nbody.timeIntegration();
		    return 0;
}

