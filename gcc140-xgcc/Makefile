# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
# PLATFORM = c386

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec

# Version 8.00.3200     1993
# Windows 95 73g SDk
# PLATFORM = 73g

OBJS = gcc.obj obstack.obj version.obj mktemp.obj

# OS/2 compat dos extender (pharlap286)
DOSX = run286
# ms-dos emulator
EMU = msdos286
OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE

INC = /w /I.
OPT = /G3 /D__STDC__
DEBUG = #/Zi
LDEBUG = #-debug:full

# dos exteded cross
CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native CC
# CC =  $(CL386ROOT)\$(PLATFORM)\cl386

# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

#include ..\-justcompile.mak
include ..\-mangleassembly.mak
#include ..\-plainassembly.mak

default: xgcc.exe

xgcc.exe: $(OBJS)
        $(OS2LINK) /STACK:250000 @xgcc.lnk
        mcopy -i %QEMUPATH%\dummy.vfd -D o xgcc.exe ::

.asm.obj:
	ml /c $*.asm

clean:
	del $(OBJS)
	del xgcc.exe

