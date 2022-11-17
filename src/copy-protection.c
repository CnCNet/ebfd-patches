#include <stdbool.h>
#include <windows.h>
#include "macros/patch.h"

CALL(0x004A7400, _CopyProtect_isLauncherRunning);
CALL(0x004A6EDF, _CopyProtect_notifyLauncher);
CALL(0x004A7A79, _CopyProtect_shutdown);


bool CopyProtect_isLauncherRunning(void)
{
    return true;
}

bool CopyProtect_notifyLauncher(void)
{
    return true;
}

void CopyProtect_checkForMessage(unsigned int msg, int handle)
{

}

bool CopyProtect_validate(void)
{
    return true;
}

void *CopyProtect_shutdown(void)
{
    return NULL;
}