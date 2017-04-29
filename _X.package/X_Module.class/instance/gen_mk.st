code generation
gen_mk
	mk := (dir / 'Makefile') writeStream.
	mk
		nextPutAll: 'log.log: ./exe$(EXE)' , cr;
		nextPutAll: tab , './exe$(EXE) > $@ && tail $(TAIL) $@' , cr;
		nextPutAll: 'C = cpp.cpp' , cr , 'H = hpp.hpp' , cr;
		nextPutAll: './exe$(EXE): $(C) $(H) $(L)' , cr;
		nextPutAll: tab , '$(CXX) -o $@ $(C) $(L)';
		close