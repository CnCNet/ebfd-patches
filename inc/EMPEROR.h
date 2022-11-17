#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#ifndef IGDEBUG
#define IGDebug_Printf(format, ...)
#else
void IGDebug_Printf(char *fmt, ...);
#endif
