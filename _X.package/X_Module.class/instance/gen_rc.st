code generation
gen_rc
	rc := (dir / 'rc.rc') writeStream.
	rc
	
nextPutAll: '#include "resource.hpp"',cr;
nextPutAll: 'ID_LOGO ICON "D:/w/icons/logo64x64.ico"',cr;
nextPutAll: '// Our main menu.',cr;
nextPutAll: 'ID_MAINMENU MENU',cr;
nextPutAll: 'BEGIN',cr;
nextPutAll: 'MENUITEM "&About",ID_HELP_ABOUT',cr;
nextPutAll: 'END',cr;
nextPutAll: '// About dialog',cr;
nextPutAll: 'ID_DIALOG_ABOUT DIALOGEX 0, 0, 147, 67',cr;
nextPutAll: 'STYLE DS_SETFONT | DS_MODALFRAME | DS_FIXEDSYS | WS_POPUP | WS_CAPTION | WS_SYSMENU',cr;
nextPutAll: 'CAPTION "About"',cr;
nextPutAll: 'FONT 8, "MS Shell Dlg", 400, 0, 0x1',cr;
nextPutAll: 'BEGIN',cr;
nextPutAll: '  ICON             ID_LOGO,IDC_STATIC,7,7,20,20',cr;
nextPutAll: '  LTEXT            "application",IDC_STATIC,34,7,86,8',cr;
nextPutAll: '  LTEXT            "(c) author , license",IDC_STATIC,34,17,84,8',cr;
nextPutAll: '  DEFPUSHBUTTON    "OK",IDOK,90,46,50,14,WS_GROUP',cr;
nextPutAll: 'END',cr;
		
		close