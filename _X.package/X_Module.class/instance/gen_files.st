code generation
gen_files
	self
		gen_log;
		gen_hpp;
		gen_cpp;
		gen_mk;
		gen_bat;
		gen_git.
	win32 ifTrue: [ self gen_winmain ; gen_rc ; gen_reshpp ]