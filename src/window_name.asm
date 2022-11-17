%include "macros/patch.inc"
%include "macros/string.inc"

;Prettier window name since im sure people are more likely to run it in windowed mode
StringZ WindowName, "Emperor: Battle for Dune"

@SET 0x004A6EA6, push str_WindowName