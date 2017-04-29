code generation
gen_hpp
	hpp := (dir / 'hpp.hpp') writeStream.
	hpp
		nextPutAll: '#ifndef _H_HPP' , cr , '#define _H_HPP' , cr;
		nextPutAll: '#include <iostream>' , cr;
		nextPutAll: 'using namespace std;' , cr;
		nextPutAll: '#endif // _H_HPP' , cr;
		close