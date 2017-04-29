code generation
gen_cpp
	cpp := (dir / 'cpp.cpp') writeStream.
	cpp
		nextPutAll: '#include "hpp.hpp"' , cr;
		nextPutAll: 'int main(int argc,char *argv[]) {' , cr;
		nextPutAll: tab , 'wcout << "программа: " << argv[0] << endl;' , cr;
		nextPutAll: '}' , cr;
		close