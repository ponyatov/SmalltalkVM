code generation
gen_cpp
	self cpp: self dir / 'cpp.cpp'.
	self cpp
		add: '#include "hpp.hpp"';
		add: 'int main(int argc, char* argv[]) {';
		add: 'cout << "argv[0] = " << argv[0] << endl;';
		add: '}'.