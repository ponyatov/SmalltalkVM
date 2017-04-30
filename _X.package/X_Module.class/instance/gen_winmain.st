code generation
gen_winmain
	winmain := (dir / 'winmain.cpp') writeStream.
	winmain
		nextPutAll: '// winmain.cpp' , cr;
		close