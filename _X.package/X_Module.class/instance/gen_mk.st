code generation
gen_mk
	mk := (dir / 'Makefile') writeStream.
	mk
		nextPutAll: 'log.log: ./exe$(EXE)' , cr;
		nextPutAll: tab , './exe$(EXE) > $@ ' , cr;
		"&& tail $(TAIL) $@' , cr;"
			nextPutAll: 'C = cpp.cpp' , cr;
		nextPutAll: 'H = hpp.hpp' , cr.
	win32
		ifTrue: [ mk
				nextPutAll: 'C += winmain.cpp' , cr;
				nextPutAll: 'L += res.res ' , cr ;
				nextPutAll: 'res.res: rc.rc' , cr , tab , 'windres -O coff -o $@ $<' , cr ].
	mk
		nextPutAll: './exe$(EXE): $(C) $(H) $(L)' , cr;
		nextPutAll: tab , '$(CXX) -o $@ $(C) $(L)';
		close