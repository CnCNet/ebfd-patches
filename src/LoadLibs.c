#include <stdbool.h>
#include "macros/patch.h"
#include <windows.h>
#include <string.h>
#include "MyLibs.h"


void
LoadLibs()
{
    HMODULE k32 = LoadLibraryA("Kernel32.dll");
    MyAllocConsole = (AllocConsole_func)GetProcAddress(k32, "AllocConsole");
    MyWriteConsoleA = (WriteConsoleA_func)GetProcAddress(k32, "WriteConsoleA");
}
