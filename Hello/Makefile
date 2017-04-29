log.log: ./exe$(EXE)
	./exe$(EXE) > $@ 
C = cpp.cpp
H = hpp.hpp
CXXFLAGS += -DAPP=\"Hello\"
C += winmain.cpp
L += res.res 
CXXFLAGS += -mwindows -DGUI 
res.res: rc.rc
	windres -O coff -o $@ $<
./exe$(EXE): $(C) $(H) $(L)
	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L)
