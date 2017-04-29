code generation
gen_bat
	self bat: self dir / 'bat.bat'.
	self bat add: '@gvim -p log.log hpp.hpp cpp.cpp Makefile bat.bat .gitignore'.
