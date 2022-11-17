%include "macros/patch.inc"
%include "macros/string.inc"

StringZ mProtectedData, "UIDATA,3DDATA,MAPS"

@LJMP 0x0049D83A, _mProtectedData_String_PTR

_mProtectedData_String_PTR:
    mov     edx, str_mProtectedData
	jmp 0x0049D840