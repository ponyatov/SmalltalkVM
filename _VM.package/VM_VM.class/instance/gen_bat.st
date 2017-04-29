initialization
gen_bat
	self bat: self dir / 'bat.bat'.
	self bat add: '@gvim -p hpp.hpp cpp.cpp Makefile bat.bat .gitignore'.
