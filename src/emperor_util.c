#include <stdbool.h>
#include "macros/patch.h"
#include <windows.h>
#include <string.h>
#include "MyLibs.h"

#ifdef IGDEBUG

LJMP(0x00401CB0, _hook_igdebug_printf);
SETDWORD(0x0040292A, 0x909090C3);

//There used to be two or more? print functions, one just printed a string one took the string and length, both got merged in one cause both were optimized to just return.
/*CLEAR(0x004A6E1A, 0x90, 0x004A6E1F);
CLEAR(0x004A6FBB, 0x90, 0x004a6FC0);
CLEAR(0x004A7030, 0x90, 0x004A7035);
CLEAR(0x004A706A, 0x90, 0x004A706F);
CLEAR(0x004A74CA, 0x90, 0x004A74CF);
CLEAR(0x004A760A, 0x90, 0x004A760F);

CLEAR(0x005305F0, 0x90, 0x005305F3);
CLEAR(0x00547180, 0x90, 0x00547185);
CLEAR(0x00559A90, 0x90, 0x00559A95);
CLEAR(0x0058DAAB, 0x90, 0x0058DAB0);
CLEAR(0x0058DE77, 0x90, 0x0058DE7C);
*/

int __cdecl vsprintf(char * restrict str, const char * restrict format, va_list ap);
size_t strnlen(const char *s, size_t maxlen);
char igdebug_buf[100];

size_t IGDebug_Printf(const char *, ...);

void __cdecl
hook_igdebug_printf(char const *fmt, ...)
{
  if (fmt < 0x401000)
      fmt = "%s";
  va_list ap;
  va_start(ap,fmt);
  static bool already_consoled = false;

  if (!already_consoled) {
    LoadLibs();
    MyAllocConsole();
    already_consoled = true;
    IGDebug_Printf("Allocated the console\n");
  }

  HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);

  size_t fmt_len = strnlen(fmt,99);

  if (fmt_len >= 99)
    return;
  vsprintf(igdebug_buf, fmt, ap);
  va_end(ap);

  size_t len = strnlen(igdebug_buf,99);
  if (len >= 99)
    return;
  LPDWORD ret;

  MyWriteConsoleA(h,igdebug_buf,len, 0, 0);
  if (len > 0)
      MyWriteConsoleA(h, "\n", 1, 0, 0);
  return;
}

size_t
strnlen(const char *s, size_t maxlen)
{
        size_t len;

        for (len = 0; len < maxlen; len++, s++) {
                if (!*s)
                        break;
        }
        return (len);
}

#endif // IGDEBUG
