-include config.mk

INPUT       = game.dat
OUTPUT      = game.exe
LDS         = game.lds
IMPORTS     = 0x1ECEB0 320
LD_CFLAGS   = -Wl,--section-alignment=0x1000 -Wl,--subsystem=windows -Wl,--enable-stdcall-fixup
LDFLAGS     = --file-alignment=0x1000 --section-alignment=0x1000 --subsystem=windows --enable-stdcall-fixup
NFLAGS      = -f elf -Iinc/
CFLAGS      = -std=c99 -Iinc/
CLIBS       = -L./ -lpsapi

REV         = $(shell git rev-parse --short @{0})
VERSION     = SOFT_VERSION-CnCNet-patch-$(REV)
WINDRES_FLAGS = --preprocessor-arg -DVERSION="$(VERSION)"

PETOOL     ?= petool
STRIP      ?= strip
WINDRES    ?= windres



OBJS = \
		src/window_name.o \
		src/copy-protection_bullshit.o \
		src/copy-protection.o \
        src/LoadLibs.o

SPAWNER_OBJS = \
        # src/spawner/nethack.o

ifdef SPAWNER
	OBJS += $(SPAWNER_OBJS)
endif


ifdef WIN8
	OBJS += src/win8_compat-func.o \
		src/win8_compat.o
endif

ifdef IGDEBUG
	NFLAGS += -D IGDEBUG
	CFLAGS += -D IGDEBUG
	OBJS += src/emperor_util.o
endif

OBJS += res/res.o \
        sym.o


PETOOL     ?= petool
STRIP      ?= strip
NASM       ?= nasm


PETOOL     ?= petool
STRIP      ?= strip
NASM       ?= nasm

.PHONY: default
default: $(OUTPUT)

.PHONY: all
all: $(OUTPUT)

%.o: %.asm
	$(NASM) $(NFLAGS) -o $@ $<

%.o: %.rc
	$(WINDRES) $(WINDRES_FLAGS) $< $@


$(OUTPUT): $(LDS) $(INPUT) $(OBJS)
	$(LD) $(LDFLAGS) -T $(LDS) -o $@ $(OBJS)
	$(PETOOL) setdd $@ 1 $(IMPORTS) || ($(RM) $@ && exit 1)
	$(PETOOL) patch $@ || ($(RM) $@ && exit 1)
	$(STRIP) -R .patch $@ || ($(RM) $@ && exit 1)
	$(PETOOL) dump $@

clean:
	$(RM) $(OUTPUT) $(ARES_OBJS) $(DLL_OBJS) $(OBJS)
