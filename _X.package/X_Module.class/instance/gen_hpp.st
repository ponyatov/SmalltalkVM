code generation
gen_hpp
	hpp := (dir / 'hpp.hpp') writeStream.
	hpp
		nextPutAll: '#ifndef _H_HPP' , cr , '#define _H_HPP' , cr , cr;
		nextPutAll: '#include <iostream>' , cr.
	win32
		ifTrue: [ hpp nextPutAll: '#include <windows.h>' , cr ].
	hpp
		nextPutAll: 'using namespace std;' , cr;
		nextPutAll: cr , '#endif // _H_HPP' , cr;
		close