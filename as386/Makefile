# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
# PLATFORM = c386

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec


OBJS = app.obj append.obj as.obj atof-generic.obj atof-ieee.obj bignum-copy.obj \
error.obj expr.obj flonum-const.obj flonum-copy.obj flonum-mult.obj frags.obj \
hash.obj hex-value.obj i386.obj input-file.obj input-scrub.obj messages.obj \
obstack.obj output-file.obj read.obj subsegs.obj symbols.obj \
version.obj write.obj xmalloc.obj xrealloc.obj

# OS/2 compat dos extender (pharlap286)
DOSX = run286
# ms-dos emulator
EMU = msdos286

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE
WATCOMLINK = $(CL386ROOT)\wlink.exe

INC = /u /w /I.
OPT = /G3 -DUSG -DWORKING_DOT_WORD -DM_XENIX -DXENIX
DEBUG = #/Zi
LDEBUG = #-debug:full

CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386


# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak


as386.exe: $(OBJS)
        $(WATCOMLINK) @as386.wlk
        mcopy -i %QEMUPATH%\dummy.vfd -D o as386.exe ::


clean:
	del $(OBJS)
	del as386.exe
