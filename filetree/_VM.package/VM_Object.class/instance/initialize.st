initialization
initialize
	" initialize empty object with tag name grabbed from class name "
	self tag: ((self class name asString asLowercase splitOn: '_') at: 2).
	self val: ''