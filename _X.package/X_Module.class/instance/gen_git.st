code generation
gen_git
	git := (dir / '.gitignore') writeStream.
	git
		nextPutAll: '*~' , cr;
		nextPutAll: '*.swp' , cr;
		nextPutAll: 'exe.exe' , cr;
		nextPutAll: 'log.log' , cr;
		close