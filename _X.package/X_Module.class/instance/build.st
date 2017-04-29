building
build
	cr := OSPlatform current lineEnding.
	tab := String tab.
	dir exists ifFalse: [ dir createDirectory ].
	self gen_files