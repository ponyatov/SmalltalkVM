instance creation
val: aVal dir: aDir
	| inst |
	inst := super val: aVal.
	inst dir: (VM_Dir val: aDir , '/' , aVal).
	inst gen_meta ; gen_readme.
	^ inst