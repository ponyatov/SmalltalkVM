code generation
gen_cpp
	cpp := (dir / 'cpp.cpp') writeStream.
	cpp
		nextPutAll: '#include "hpp.hpp"' , cr;
		nextPutAll: 'int main(int argc,char *argv[]) {' , cr.
	win32
		ifTrue: [ cpp nextPutAll: tab , 'SetConsoleOutputCP(CP_UTF8);' , cr ].
	cpp
		nextPutAll: tab , 'cout << "программа: " << argv[0] << endl;' , cr;
		nextPutAll: '}' , cr;
		close