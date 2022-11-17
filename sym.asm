%include "macros/setsym.inc"

setcglob 0x004A73D0, WinMain@16

; imports
setcglob 0x005D01C0, _imp__LoadLibraryA
setcglob 0x005D01BC, _imp__GetProcAddress

; IGDebug
setcglob 0x00401CB0, IGDebug_Printf

setcglob 0x005D0104, _imp__GetStdHandle
setcglob 0x005D0228, _imp__GetModuleFileNameA
setcglob 0x005B0DE9, vsprintf
setcglob 0x005BB820, _strcmp

; winapi
setcglob 0x005A891E, sendto
setcglob 0x005A8918, recvfrom
setcglob 0x005D0330, _imp__sendto
setcglob 0x005D0334, _imp__recvfrom
setcglob 0x005D035C, _imp__socket
setcglob 0x005A88A0, htonl
setcglob 0x005A88A6, htons
setcglob 0x005D00C4, GetCommandLineA
setcglob 0x005B0D00, strstr
setcglob 0x005D01C0, LoadLibraryA
setcglob 0x005D01BC, GetProcAddress
setcglob 0x005B0D97, sprintf
setcglob 0x005B2914, mbstowcs

; Memory
setcglob 0x005B0C81, new
setcglob 0x005B0EF0, memcpy

; Statistics
;setcglob 0x00A8F900, StatisticsPacketSent
;setcglob 0x00B779D4, WOLGameID
setcglob 0x00B7D098, OutOfSync

; Network
;setcglob 0x00841F30, ListenPort

; Network
;setcglob 0x007B2DB0, UDPInterfaceClass__UDPInterfaceClass
;setcglob 0x00887628, WinsockInterface_this
;setcglob 0x007B1DE0, WinsockInterfaceClass__Init
setcglob 0x0059BFD0, UDPInterfaceClass__Open_Socket
;setcglob 0x007B1BC0, WinsockInterfaceClass__Start_Listening
;setcglob 0x007B1CA0, WinsockInterfaceClass__Discard_In_Buffers
;setcglob 0x007B1D10, WinsockInterfaceClass__Discard_Out_Buffers
;setcglob 0x00A8E9C0, IPXManagerClass_this
;setcglob 0x00540C60, IPXManagerClass__Set_Timing
;setcglob 0x0053ECB0, IPXAddressClass__IPXAddressClass

;setcglob 0x00A8B550, MaxAhead
;setcglob 0x00A8B568, MaxMaxAhead
;setcglob 0x00A8B554, FrameSendRate
;setcglob 0x00A8DB9C, LatencyFudge
;setcglob 0x00A8B558, RequestedFPS
;setcglob 0x00A8B24C, ProtocolVersion
;setcglob 0x00A8ED84, Frame


; Address  Ordinal Name                        Library 
; -------  ------- ----                        ------- 
; 005D0000         RegOpenKeyExA               ADVAPI32
; 005D0004         RegCreateKeyExA             ADVAPI32
; 005D0008         RegQueryValueExA            ADVAPI32
; 005D000C         RegCloseKey                 ADVAPI32
; 005D0010         RegSetValueExA              ADVAPI32
; 005D0018         DirectDrawEnumerateA        DDRAW   
; 005D001C         DirectDrawCreateEx          DDRAW   
; 005D0024         DirectInputCreateEx         DINPUT  
; 005D002C 1       __imp_DirectSoundCreate     DSOUND  
; 005D0034         TextOutA                    GDI32   
; 005D0038         CreateSolidBrush            GDI32   
; 005D003C         Polygon                     GDI32   
; 005D0040         DeleteObject                GDI32   
; 005D0044         CreateFontIndirectA         GDI32   
; 005D0048         BitBlt                      GDI32   
; 005D004C         SetBkMode                   GDI32   
; 005D0050         GetBkMode                   GDI32   
; 005D0054         DeleteDC                    GDI32   
; 005D0058         SelectObject                GDI32   
; 005D005C         CreateCompatibleDC          GDI32   
; 005D0060         GetObjectA                  GDI32   
; 005D0064         SetTextColor                GDI32   
; 005D006C         ImmGetContext               IMM32   
; 005D0070         ImmReleaseContext           IMM32   
; 005D0074         ImmGetCompositionFontA      IMM32   
; 005D0078         ImmGetDescriptionA          IMM32   
; 005D007C         ImmGetProperty              IMM32   
; 005D0080         ImmNotifyIME                IMM32   
; 005D0084         ImmGetOpenStatus            IMM32   
; 005D0088         ImmSetCompositionStringA    IMM32   
; 005D008C         ImmSetCompositionWindow     IMM32   
; 005D0090         ImmGetCandidateListA        IMM32   
; 005D0094         ImmSetOpenStatus            IMM32   
; 005D0098         ImmGetCompositionStringA    IMM32   
; 005D009C         ImmCreateContext            IMM32   
; 005D00A0         ImmDestroyContext           IMM32   
; 005D00A4         ImmAssociateContext         IMM32   
; 005D00AC         GetTimeZoneInformation      KERNEL32
; 005D00B0         FileTimeToSystemTime        KERNEL32
; 005D00B4         RtlUnwind                   KERNEL32
; 005D00B8         GetFullPathNameA            KERNEL32
; 005D00BC         GetLocalTime                KERNEL32
; 005D00C0         HeapSize                    KERNEL32
; 005D00C4         GetCommandLineA             KERNEL32
; 005D00C8         TerminateProcess            KERNEL32
; 005D00CC         RaiseException              KERNEL32
; 005D00D0         GetStartupInfoA             KERNEL32
; 005D00D4         HeapReAlloc                 KERNEL32
; 005D00D8         GetVersion                  KERNEL32
; 005D00DC         ExitProcess                 KERNEL32
; 005D00E0         HeapAlloc                   KERNEL32
; 005D00E4         HeapFree                    KERNEL32
; 005D00E8         GetCurrentProcess           KERNEL32
; 005D00EC         CloseHandle                 KERNEL32
; 005D00F0         GlobalMemoryStatus          KERNEL32
; 005D00F4         FileTimeToLocalFileTime     KERNEL32
; 005D00F8         SetFilePointer              KERNEL32
; 005D00FC         OutputDebugStringA          KERNEL32
; 005D0100         CreateFileA                 KERNEL32
; 005D0104         GetStdHandle                KERNEL32
; 005D0108         GetEnvironmentVariableA     KERNEL32
; 005D010C         GetFileSize                 KERNEL32
; 005D0110         InitializeCriticalSection   KERNEL32
; 005D0114         DeleteFileA                 KERNEL32
; 005D0118         LCMapStringW                KERNEL32
; 005D011C         GetFileType                 KERNEL32
; 005D0120         SetStdHandle                KERNEL32
; 005D0124         IsBadReadPtr                KERNEL32
; 005D0128         IsBadCodePtr                KERNEL32
; 005D012C         SetHandleCount              KERNEL32
; 005D0130         GetVersionExA               KERNEL32
; 005D0134         FindClose                   KERNEL32
; 005D0138         FindNextFileA               KERNEL32
; 005D013C         FindFirstFileA              KERNEL32
; 005D0140         SetCurrentDirectoryA        KERNEL32
; 005D0144         CreateDirectoryA            KERNEL32
; 005D0148         GetCurrentDirectoryA        KERNEL32
; 005D014C         ReadFile                    KERNEL32
; 005D0150         FlushFileBuffers            KERNEL32
; 005D0154         FormatMessageA              KERNEL32
; 005D0158         GetLastError                KERNEL32
; 005D015C         SetThreadPriority           KERNEL32
; 005D0160         CreateThread                KERNEL32
; 005D0164         WaitForSingleObject         KERNEL32
; 005D0168         QueryPerformanceFrequency   KERNEL32
; 005D016C         QueryPerformanceCounter     KERNEL32
; 005D0170         GetTickCount                KERNEL32
; 005D0174         GetDriveTypeA               KERNEL32
; 005D0178         GetVolumeInformationA       KERNEL32
; 005D017C         CreateMutexA                KERNEL32
; 005D0180         MapViewOfFileEx             KERNEL32
; 005D0184         SetEvent                    KERNEL32
; 005D0188         OpenEventA                  KERNEL32
; 005D018C         UnmapViewOfFile             KERNEL32
; 005D0190         GetSystemTime               KERNEL32
; 005D0194         EnterCriticalSection        KERNEL32
; 005D0198         WideCharToMultiByte         KERNEL32
; 005D019C         IsDBCSLeadByte              KERNEL32
; 005D01A0         CreateProcessA              KERNEL32
; 005D01A4         GetTempFileNameA            KERNEL32
; 005D01A8         GetWindowsDirectoryA        KERNEL32
; 005D01AC         GetComputerNameA            KERNEL32
; 005D01B0         InterlockedIncrement        KERNEL32
; 005D01B4         InterlockedDecrement        KERNEL32
; 005D01B8         FreeLibrary                 KERNEL32
; 005D01BC         GetProcAddress              KERNEL32
; 005D01C0         LoadLibraryA                KERNEL32
; 005D01C4         HeapDestroy                 KERNEL32
; 005D01C8         GetModuleHandleA            KERNEL32
; 005D01CC         GetCPInfo                   KERNEL32
; 005D01D0         Sleep                       KERNEL32
; 005D01D4         HeapCreate                  KERNEL32
; 005D01D8         VirtualFree                 KERNEL32
; 005D01DC         VirtualAlloc                KERNEL32
; 005D01E0         IsBadWritePtr               KERNEL32
; 005D01E4         LCMapStringA                KERNEL32
; 005D01E8         GetACP                      KERNEL32
; 005D01EC         GetOEMCP                    KERNEL32
; 005D01F0         SetUnhandledExceptionFilter KERNEL32
; 005D01F4         UnhandledExceptionFilter    KERNEL32
; 005D01F8         FreeEnvironmentStringsA     KERNEL32
; 005D01FC         FreeEnvironmentStringsW     KERNEL32
; 005D0200         GetEnvironmentStrings       KERNEL32
; 005D0204         GetEnvironmentStringsW      KERNEL32
; 005D0208         GetStringTypeA              KERNEL32
; 005D020C         GetStringTypeW              KERNEL32
; 005D0210         SetEndOfFile                KERNEL32
; 005D0214         CompareStringA              KERNEL32
; 005D0218         CompareStringW              KERNEL32
; 005D021C         SetEnvironmentVariableA     KERNEL32
; 005D0220         DeleteCriticalSection       KERNEL32
; 005D0224         LeaveCriticalSection        KERNEL32
; 005D0228         GetModuleFileNameA          KERNEL32
; 005D022C         WriteFile                   KERNEL32
; 005D0230         MultiByteToWideChar         KERNEL32
; 005D0238         FindExecutableA             SHELL32 
; 005D0240         PostMessageA                USER32  
; 005D0244         PostQuitMessage             USER32  
; 005D0248         ValidateRect                USER32  
; 005D024C         GetWindowRect               USER32  
; 005D0250         BringWindowToTop            USER32  
; 005D0254         RegisterClassA              USER32  
; 005D0258         DispatchMessageA            USER32  
; 005D025C         TranslateMessage            USER32  
; 005D0260         GetMessageA                 USER32  
; 005D0264         MoveWindow                  USER32  
; 005D0268         AdjustWindowRectEx          USER32  
; 005D026C         GetMenu                     USER32  
; 005D0270         WaitMessage                 USER32  
; 005D0274         GetDoubleClickTime          USER32  
; 005D0278         DrawTextExA                 USER32  
; 005D027C         GetKeyboardLayoutList       USER32  
; 005D0280         GetKeyboardLayout           USER32  
; 005D0284         ScreenToClient              USER32  
; 005D0288         GetCursorPos                USER32  
; 005D028C         SetCursorPos                USER32  
; 005D0290         SetFocus                    USER32  
; 005D0294         LoadImageA                  USER32  
; 005D0298         GetKeyboardState            USER32  
; 005D029C         MessageBeep                 USER32  
; 005D02A0         GetDC                       USER32  
; 005D02A4         ReleaseDC                   USER32  
; 005D02A8         InvalidateRect              USER32  
; 005D02AC         SendMessageA                USER32  
; 005D02B0         DefWindowProcA              USER32  
; 005D02B4         GetDesktopWindow            USER32  
; 005D02B8         GetClientRect               USER32  
; 005D02BC         CreateWindowExA             USER32  
; 005D02C0         ShowWindow                  USER32  
; 005D02C4         UpdateWindow                USER32  
; 005D02C8         DestroyWindow               USER32  
; 005D02CC         LoadIconA                   USER32  
; 005D02D0         LoadCursorA                 USER32  
; 005D02D4         PeekMessageA                USER32  
; 005D02D8         ShowCursor                  USER32  
; 005D02DC         GetSystemMetrics            USER32  
; 005D02E0         SetRect                     USER32  
; 005D02E4         SetWindowLongA              USER32  
; 005D02E8         SetWindowPos                USER32  
; 005D02EC         MessageBoxA                 USER32  
; 005D02F0         wsprintfA                   USER32  
; 005D02F4         GetWindowLongA              USER32  
; 005D02F8         ClientToScreen              USER32  
; 005D0300         GetFileVersionInfoSizeA     VERSION 
; 005D0304         GetFileVersionInfoA         VERSION 
; 005D0308         VerQueryValueA              VERSION 
; 005D0310         timeGetTime                 WINMM   
; 005D0318 22      __imp_shutdown              WSOCK32 
; 005D031C 10      __imp_inet_addr             WSOCK32 
; 005D0320 4       __imp_connect               WSOCK32 
; 005D0324 12      __imp_ioctlsocket           WSOCK32 
; 005D0328 16      __imp_recv                  WSOCK32 
; 005D032C 19      __imp_send                  WSOCK32 
; 005D0330 20      __imp_sendto                WSOCK32 
; 005D0334 17      __imp_recvfrom              WSOCK32 
; 005D0338 7       __imp_getsockopt            WSOCK32 
; 005D033C 21      __imp_setsockopt            WSOCK32 
; 005D0340 101     __imp_WSAAsyncSelect        WSOCK32 
; 005D0344 108     __imp_WSACancelAsyncRequest WSOCK32 
; 005D0348 111     __imp_WSAGetLastError       WSOCK32 
; 005D034C 6       __imp_getsockname           WSOCK32 
; 005D0350 57      __imp_gethostname           WSOCK32 
; 005D0354 52      __imp_gethostbyname         WSOCK32 
; 005D0358 115     __imp_WSAStartup            WSOCK32 
; 005D035C 23      __imp_socket                WSOCK32 
; 005D0360 2       __imp_bind                  WSOCK32 
; 005D0364 3       __imp_closesocket           WSOCK32 
; 005D0368 116     __imp_WSACleanup            WSOCK32 
; 005D036C 11      __imp_inet_ntoa             WSOCK32 
; 005D0370 8       __imp_htonl                 WSOCK32 
; 005D0374 15      __imp_ntohs                 WSOCK32 
; 005D0378 14      __imp_ntohl                 WSOCK32 
; 005D037C 9       __imp_htons                 WSOCK32 
; 005D0384         _BinkClose@4                binkw32 
; 005D0388         _BinkDDSurfaceType@4        binkw32 
; 005D038C         _BinkGoto@12                binkw32 
; 005D0390         _BinkWait@4                 binkw32 
; 005D0394         _BinkCopyToBuffer@28        binkw32 
; 005D0398         _BinkNextFrame@4            binkw32 
; 005D039C         _BinkSetSoundSystem@8       binkw32 
; 005D03A0         _BinkOpen@8                 binkw32 
; 005D03A4         _BinkGetError@0             binkw32 
; 005D03A8         _BinkSetVolume@8            binkw32 
; 005D03AC         _BinkDoFrame@4              binkw32 
; 005D03B0         _BinkOpenDirectSound@4      binkw32 
; 005D03B8         D3DRMQuaternionSlerp        d3drm   
; 005D03BC         D3DRMMatrixFromQuaternion   d3drm   
; 005D03C4         CoCreateInstance            ole32   
; 005D03C8         OleInitialize               ole32   
; 005D03CC         OleUninitialize             ole32   
; 005D03D0         CoCreateGuid                ole32   