initialization
gen_mk
	self mk: self dir / 'Makefile'.
	self mk add: 'log.log'.
	self mk add: 'exe.exe'.
	