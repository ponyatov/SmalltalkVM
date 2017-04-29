#include "hpp.hpp"

LRESULT CALLBACK MainWndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
//  static HINSTANCE hInstance;
	switch (msg) {
		case WM_CLOSE: DestroyWindow(hWnd); break;
        case WM_DESTROY: PostQuitMessage(0); break;
	}
	return DefWindowProc(hWnd, msg, wParam, lParam);
}
		  	/*
    case WM_COMMAND:
    {
      switch (LOWORD(wParam))
      {
        case ID_HELP_ABOUT: DialogBox(hInstance, MAKEINTRESOURCE(IDD_ABOUTDIALOG), hWnd, &AboutDialogProc);
        case ID_FILE_EXIT:  DestroyWindow(hWnd);
		}*/

// Our application entry point.
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	cout << "\n\nWinMain\n\n";

	// register window class
	HACCEL hAccelerators;
	HMENU hSysMenu;
	HWND hWnd;
	MSG msg;

	// Class for our main window.
	WNDCLASSEX wc;
	LPCTSTR MainWndClass	= TEXT(APP " application window class");
	wc.cbSize				= sizeof(wc);
	wc.style				= 0;
	wc.lpfnWndProc			= MainWndProc;
	wc.cbClsExtra			= 0;
	wc.cbWndExtra			= 0;
	wc.hInstance			= hInstance;
	wc.hIcon				= LoadIcon(NULL, IDI_APPLICATION);
	wc.hCursor				= LoadCursor(NULL, IDC_ARROW);
	wc.hbrBackground		= (HBRUSH)(COLOR_SCROLLBAR+1);
	wc.lpszMenuName			= NULL;
	wc.lpszClassName		= MainWndClass;
	wc.hIconSm				= LoadIcon(NULL, IDI_APPLICATION);

	// Register our window classes, or error.
	if (!(RegisterClassEx(&wc)))
   	return EXIT_FAILURE;

	// Create instance of main window.
	if (!(hWnd = CreateWindowEx(
		0, MainWndClass /* class name */ , APP /* title */ ,
		WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT,
		640, 480, /* W x H */
		NULL, NULL, hInstance, NULL)))
	return EXIT_FAILURE;

	// Show window and force a paint.
	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);

	// Main message loop.
	while(GetMessage(&msg, NULL, 0, 0) > 0) {
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
//    if (! TranslateAccelerator(msg.hwnd, hAccelerators, &msg))

	return msg.wParam;
}
