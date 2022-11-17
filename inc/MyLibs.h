void LoadLibs();
typedef BOOL (WINAPI *AllocConsole_func)(void);
typedef BOOL (WINAPI *WriteConsoleA_func)(HANDLE, VOID *, int, LPDWORD, LPVOID);

AllocConsole_func MyAllocConsole;
WriteConsoleA_func MyWriteConsoleA;
