log.log: ./exe$(EXE)
	./exe$(EXE) > $@ && tail $(TAIL) $@
C = cpp.cpp
H = hpp.hpp
./exe$(EXE): $(C) $(H) $(L)
	$(CXX) -o $@ $(C) $(L)kefile
	$(CXX) -o $@ $(C) $(L)
