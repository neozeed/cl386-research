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
OPT = /G3 /O
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


LIBS = 	libc.lib \
	kernel32.lib \
	oldnames.lib



OBJ = hello.obj


# must include ONLY ONE strategey.. 
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak

all:  hello.exe

crt0.obj: crt0.s
	ax386 -version crt0.s -o crt0.obj

os2:  hello.exe
	qemuos2

hello.obj:
	\xenixnt\bin\cc1 -quiet -version hello.c -o hello.s
#	\emx\bin\as.exe hello.s -o hello.o
	\aoutgcc\bin\a386.exe hello.s -o hello.o
#	\emx\bin\emxomf.exe -o hello.obj hello.o
	emxomf2.exe -o hello.obj hello.o
#	app -version hello.s -o hello.obj



hello.exe: $(OBJ)
	$(OS2LINK) @hello.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o hello.exe ::

clean:
	del $(OBJ)
	del  hello.exe
	del *.asm *.a1 *.a

