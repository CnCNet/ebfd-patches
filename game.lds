/* GNU ld linker script for game.dat */

start = 0x5B3E87;

ENTRY(start);

SECTIONS
{
    .text             0x401000 : { game.dat(.text); }
    .rdata            0x5D0000 : { game.dat(.rdata); }
    .data             0x5EF000 : { game.dat(.data); . = ALIGN(0x1000); }
    .bss         ALIGN(0x1000) : { . = . + 0x5226C5; }

    /DISCARD/                  : { game.dat(.rsrc); }

    .idata       ALIGN(0x1000) : { *(.idata); }

    /DISCARD/                  : { *(.drectve); }

    .p_text      ALIGN(0x1000) : { *(.text); }
    .p_rdata     ALIGN(0x1000) : { *(.rdata); }
    .p_data      ALIGN(0x1000) : { *(.data); }
    .p_bss       ALIGN(0x1000) : { *(.bss) *(COMMON); }

    .rsrc      ALIGN(0x1000)   : { *(.rsrc) }

    .patch     ALIGN(0x1000)   : { *(.patch) }
    
    .eh_frame    ALIGN(0x1000) : { *(.eh_frame) }
}