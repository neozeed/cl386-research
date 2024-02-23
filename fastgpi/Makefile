# Version 6.00.054	1989
# https://archive.org/details/os2ddk1.2
# PLATFORM = ddk12

# Version 6.00.054	1989
# https://archive.org/details/os2ddk2.0
# PLATFORM = ddk20

# Version 6.00.054	1989
# https://archive.org/details/os-2-cd-rom_202401
# PLATFORM = ddksrc

# Version 1.00.075	1989
# https://archive.org/details/msos2-200-sdk
PLATFORM = c386

# Version 6.00.077	1991
# https://archive.org/details/windows-nt-3.1-build-196
#PLATFORM = nt-sep

# Version 6.00.080	1991
# https://archive.org/details/windows-nt-3.1-october-1991-build
#PLATFORM = nt-oct

# Version 6.00.081	1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
#PLATFORM = nt-dec

# Version 8.00          1993
#PLATFORM = msvc32s

# Version 8.00.3200	1993
# Windows 95 73g SDk
# PLATFORM = 73g

# Version  13.10.4035	2002
# PLATFORM = v13
# PLATFORM = 13.10.6030

INC = /u /w
OPT = /G3 /O -D__32BIT__ -DM_I386 -D_MSC_VER=6
DEBUG = #/Zi
LDEBUG = #-debug:full

# OS/2 compat dos extender (pharlap286)
DOSX = run286

# ms-dos emulator
EMU = msdos486

# dos exteded cross
CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native CC
# CC =  $(CL386ROOT)\$(PLATFORM)\cl386

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE /STACK:1000000


OBJ = fastgpi.obj a-float.obj


# must include ONLY ONE strategey.. 
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak

all:  fastgpi.exe



fastgpi.exe: $(OBJ)
	$(OS2LINK) @fastgpi.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o fastgpi.exe ::
	qemuos2

clean:
	del $(OBJ)
	del  fastgpi.exe
	del *.asm *.a1 *.a

