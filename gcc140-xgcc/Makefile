# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
# PLATFORM = c386

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec

OBJS = gcc.obj obstack.obj version.obj mktemp.obj

# OS/2 compat dos extender (pharlap286)
DOSX = run286
# ms-dos emulator
EMU = msdos286
OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE

INC = /u /w /Iconfig /I.
OPT = /G3 /D__STDC__
DEBUG = #/Zi
LDEBUG = #-debug:full

CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386

include ..\-justcompile.mak


default: xgcc.exe

xgcc.exe: $(OBJS)
        $(OS2LINK) @xgcc.lnk
        mcopy -i %QEMUPATH%\dummy.vfd -D o xgcc.exe ::

.asm.obj:
	ml /c $*.asm

clean:
	del $(OBJS)
	del xgcc.exe

