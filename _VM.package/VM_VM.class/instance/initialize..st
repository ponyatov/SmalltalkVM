initialization
initialize: aPath
	super val: aPath.
	self dir: (VM_Dir val: aPath).
	self gen_hpp ; gen_cpp ; gen_mk ; gen_bat ; gen_git.