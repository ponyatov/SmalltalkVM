code generation
gen_mk
	self mk: self dir / 'Makefile'.
	self mk
		add: 'log.log: ./exe.exe';
		add: String tab , './exe.exe > $@ && tail $(TAIL) $@';
		add: 'C = cpp.cpp';
		add: 'H = hpp.hpp';
		add: './exe.exe: $(C) $(H) $(L)';
		add: String tab , '$(CXX) $(CXXFLAGS) -o $@ $(C) $(L)'
	.
	