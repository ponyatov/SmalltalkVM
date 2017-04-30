code generation
gen_reshpp
	reshpp := (dir / 'resource.hpp') writeStream.
	reshpp
		nextPutAll: '#define ID_LOGO 0' , cr;
		nextPutAll: '#define ID_HELP_ABOUT 1' , cr;
		nextPutAll: '#define ID_MAINMENU 2' , cr;
		nextPutAll: '#define ID_DIALOG_ABOUT 3' , cr;
		nextPutAll: '#define IDC_STATIC 4' , cr;
		nextPutAll: '#include <windows.h>' , cr;
		close