code generation
gen_git
	git := (dir / '.gitignore') writeStream.
	git
		nextPutAll: '*~' , cr;
		nextPutAll: '*.swp' , cr;
		nextPutAll: 'exe.exe' , cr;
		nextPutAll: 'log.log' , cr.
	win32
		ifTrue: [ git nextPutAll: 'res.res' , cr ].
	git close