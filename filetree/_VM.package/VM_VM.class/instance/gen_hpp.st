code generation
gen_hpp
	self hpp: self dir / 'hpp.hpp'.
	self hpp
		add: '#ifndef _H_HPP'; add: '#define _H_HPP';
		add: '#include <iostream>';
		add: '#include <cstdlib>';
		add: 'using namespace std;';
		add: '#endif // _H_HPP'.