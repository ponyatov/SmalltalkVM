tests
test_nul
	self assert: (VM_File val: '' printString) equals: '<file:>'