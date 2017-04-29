log.log: ./exe$(EXE)
	./exe$(EXE) > $@ 
C = cpp.cpp
H = hpp.hpp
C += winmain.cpp
L += res.res 
res.res: rc.rc
	windres -O coff -o $@ $<
./exe$(EXE): $(C) $(H) $(L)
	$(CXX) -o $@ $(C) $(L)
