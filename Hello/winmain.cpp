#include "hpp.hpp"
#include "resource.hpp"

// about dialog callback

INT_PTR CALLBACK AboutDialogProc(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
  switch (uMsg)
  {
    case WM_COMMAND:
    {
      switch (LOWORD(wParam))
      {
        case IDOK:
        case IDCANCEL:
        {
          EndDialog(hwndDlg, (INT_PTR) LOWORD(wParam));
          return (INT_PTR) TRUE;
        }
      }
      break;
    }

    case WM_INITDIALOG:
      return (INT_PTR) TRUE;
  }

  return (INT_PTR) FALSE;
}

// main window callback

LRESULT CALLBACK MainWndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
	static HINSTANCE hInstance;
	switch (msg) {
		case WM_CLOSE: DestroyWindow(hWnd); break;
        case WM_DESTROY: PostQuitMessage(0); break;
		case WM_COMMAND:
		case WM_SYSCOMMAND:
			switch (LOWORD(wParam)) {
				case ID_HELP_ABOUT:
					DialogBox(hInstance, MAKEINTRESOURCE(ID_DIALOG_ABOUT), hWnd, AboutDialogProc);
		}
	}
	return DefWindowProc(hWnd, msg, wParam, lParam);
}
		  	/*
    
    {
      
      {
        case ID_HELP_ABOUT: DialogBox(hInstance, MAKEINTRESOURCE(IDD_ABOUTDIALOG), hWnd, &AboutDialogProc);
        case ID_FILE_EXIT:  DestroyWindow(hWnd);
		}*/

// application entry point.

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	cout << "\n\nWinMain\n\n";

	// register window class
	HACCEL hAccelerators;
	HMENU hSysMenu;
	HWND hWnd;
	MSG msg;

	// Class for our main window.
	WNDCLASSEX wc; ZeroMemory(&wc, sizeof(wc));
	LPCTSTR MainWndClass	= TEXT(APP "AppClass");
	
	wc.cbSize				= sizeof(wc);
	wc.hInstance			= hInstance;
	wc.lpszClassName		= MainWndClass;					// class
	wc.lpfnWndProc			= MainWndProc;					// callback fn
	wc.lpszMenuName			= MAKEINTRESOURCE(ID_MAINMENU);	// menu
	// style
	wc.style				= 0;//CS_HREDRAW | CS_VREDRAW;//0;
	wc.hCursor				= LoadCursor(NULL, IDC_ARROW);
	wc.hbrBackground		= (HBRUSH)(COLOR_SCROLLBAR+1);
	// icons
	wc.hIcon				= (HICON) LoadImage(hInstance, MAKEINTRESOURCE(ID_LOGO), IMAGE_ICON, 0, 0,
                                       LR_DEFAULTSIZE | LR_DEFAULTCOLOR | LR_SHARED);
	wc.hIconSm				= (HICON) LoadImage(hInstance, MAKEINTRESOURCE(ID_LOGO), IMAGE_ICON,
                                       GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON),
                                       LR_DEFAULTCOLOR | LR_SHARED);
		//LoadIcon(NULL, IDI_APPLICATION);
	wc.cbClsExtra			= 0;
	wc.cbWndExtra			= 0;

	// Register our window classes, or error.
	if (!(RegisterClassEx(&wc)))
   	return EXIT_FAILURE;

	// Create instance of main window.
	if (!(hWnd = CreateWindowEx(
		0, MainWndClass /* class name */ , APP /* title */ ,
		WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT,
		640, 480, /* W x H */ // CW_USEDEFAULT, 0,
		NULL, NULL, hInstance, NULL)))
	return EXIT_FAILURE;

	// add main menu
	if ((hSysMenu = GetSystemMenu(hWnd, FALSE)) == INVALID_HANDLE_VALUE)
	return EXIT_FAILURE;
//	InsertMenu(hSysMenu, 5, MF_BYPOSITION | MF_SEPARATOR, 0, NULL);
	AppendMenu(hSysMenu, MF_SEPARATOR, 0, NULL);
//	InsertMenu(hSysMenu, 6, MF_BYPOSITION, ID_HELP_ABOUT, TEXT("About"));
	AppendMenu(hSysMenu, MF_STRING, ID_HELP_ABOUT, TEXT("About"));

	// Show window and force a paint.
	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);

	// Main message loop.
	while(GetMessage(&msg, NULL, 0, 0) > 0) {
//		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
//    if (! TranslateAccelerator(msg.hwnd, hAccelerators, &msg))

	return msg.wParam;
}
