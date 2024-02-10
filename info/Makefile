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
# PLATFORM = c386

# Version 6.00.077	1991
# https://archive.org/details/windows-nt-3.1-build-196
# PLATFORM = nt-sep

# Version 6.00.080	1991
# https://archive.org/details/windows-nt-3.1-october-1991-build
# PLATFORM = nt-oct

# Version 6.00.081	1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
# PLATFORM = nt-dec

# Version 8.00		1993
# PLATFORM = msvc32s

# Version 8.00.3200     1993
# Windows 95 73g SDk
# PLATFORM = 73g

# Version  13.10.4035	2002
PLATFORM = v13


INC = /w
OPT = /O
DEBUG = #/Zi
LDEBUG = #-debug:full

# OS/2 compat dos extender (pharlap286)
DOSX = run286

# ms-dos emulator
EMU = msdos286

# emulated
# CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native
CC = $(CL386ROOT)\$(PLATFORM)\cl386

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE

LIBS = 	libc.lib \
	kernel32.lib


OBJ = funcs.obj infocom.obj init.obj input.obj interp.obj io.obj \
        jump.obj object.obj options.obj page.obj print.obj property.obj \
        support.obj term.obj variable.obj

# win32 compilers get confused

NATOBJ = filenat.obj
FILEOBJ = file.obj

# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

#include ..\-justcompile.mak
include ..\-mangleassembly.mak
#include ..\-plainassembly.mak


all: info-$(PLATFORM).exe

filenat.obj: file.c
	$(CL386ROOT)\$(PLATFORM)\cl386 $(INC) $(OPT) $(DEBUG) /Fofilenat.obj /c file.c
 

info-$(PLATFORM).exe: $(OBJ) $(NATOBJ)
	link $(LDEBUG) -out:info-$(PLATFORM).exe $(NATOBJ) $(OBJ) $(LIBS)

os2: info2.exe
	qemuos2

info2.exe: $(OBJ) $(FILEOBJ)
	$(OS2LINK) @info.lnk
#	mdel -i %QEMUPATH%\dummy.vfd info2.exe
	mcopy -i %QEMUPATH%\dummy.vfd -D o info2.exe ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o planetfa ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o planet.sav ::

info-tnt.exe: info-$(PLATFORM).exe
	$(EMU) rebind info-$(PLATFORM).exe

clean:
	del $(OBJ) $(NATOBJ) $(FILEOBJ)
	del info-$(PLATFORM).exe
	del info2.exe
	del *.asm *.a

