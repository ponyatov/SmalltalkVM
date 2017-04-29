code generation
gen_cpp
	self cpp: self dir / 'cpp.cpp'.
	self cpp
		add: '// проверка кириллицы';
		add: '#include "hpp.hpp"';
		add: 'int main(int argc, char* argv[]) {';
		add: 'wcout << "argv[0] = " << argv[0] << endl;';
		add: 'wcout << "cyrillic: кириллица utf8" << endl; ';
		add: '}'.