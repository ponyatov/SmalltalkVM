code generation
gen_git
	" .gitignore "
	self git: self dir / '.gitignore'.
	self git
		add: '*~';
		add: '*.swp';
		add: 'exe.exe';
		add: 'log.log'