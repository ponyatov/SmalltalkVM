code generation
gen_bat
	bat := (dir / 'bat.bat') writeStream.
	bat
		nextPutAll: '@gvim -c "set encoding=utf8" -p ';
		nextPutAll: 'log.log hpp.hpp cpp.cpp Makefile' , cr;
		close