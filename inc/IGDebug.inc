%include "macros/extern.inc"

cextern IGDebug_Printf

%macro call_IGDebug_Printf 1-*
    %rep %0
        %rotate -1
        push %1
    %endrep
    call IGDebug_Printf
;    add esp, (%0 * 4)
%endmacro
