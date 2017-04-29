initialization
initialize
	tag := (self class asString asLowercase splitOn: '_') at: 2.
	val := ''