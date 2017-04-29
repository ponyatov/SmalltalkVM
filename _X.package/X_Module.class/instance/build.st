building
build
	cr := OSPlatform current lineEnding.
	win32 := OSPlatform current isWindows.
	tab := String tab.
	dir exists ifFalse: [ dir createDirectory ].
	self gen_files