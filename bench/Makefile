# Version 6.00.054      1989
# https://archive.org/details/os2ddk1.2
PLATFORM = ddk12

# Version 6.00.054      1989
# https://archive.org/details/os2ddk2.0
#PLATFORM = ddk20

# Version 6.00.054      1989
# https://archive.org/details/os-2-cd-rom_202401
PLATFORM = ddksrc

# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
#PLATFORM = c386

# Version 6.00.077      1991
# https://archive.org/details/windows-nt-3.1-build-196
#PLATFORM = nt-sep

# Version 6.00.080      1991
# https://archive.org/details/windows-nt-3.1-october-1991-build
#PLATFORM = nt-oct

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
#PLATFORM = nt-dec

# Version 8.00.3200     1993
# Windows 95 73g SDk
# PLATFORM = 73g

INC = /w
OPT = /Od
DEBUG = #/Zi
LDEBUG = #-debug:full 

# OS/2 compat dos extender (pharlap286)
DOSX = run286

# ms-dos emulator
EMU = msdos286

# dos exteded cross
CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native CC
# CC =  $(CL386ROOT)\$(PLATFORM)\cl386

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE

LIBS = 	libc.lib \
	kernel32.lib

WHETOBJ = whet.obj

LINOBJ = linpack.obj

DHRYOBJ2 = dhry21a.obj dhry21b.obj timers.obj

DHRYOBJ = dhry.obj

# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak


#all: whet-$(PLATFORM).exe lin-$(PLATFORM).exe dhry-$(PLATFORM).exe dhry2-$(PLATFORM).exe
all: whet-$(PLATFORM).exe
#all: dhry-$(PLATFORM).exe
#all: dhry2-$(PLATFORM).exe
#all: lin-$(PLATFORM).exe

os2: whet2.exe linpack2.exe dhry2.exe
	mcopy -i %QEMUPATH%\dummy.vfd -D o dhry2.exe ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o linpack2.exe ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o whet2.exe ::
	qemuos2

whet-$(PLATFORM).exe: $(WHETOBJ)
	link $(LDEBUG) -out:whet-$(PLATFORM).exe $(WHETOBJ) $(LIBS)

whet2.exe: $(WHETOBJ)
	$(OS2LINK) @whet.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o whet2.exe ::

lin-$(PLATFORM).exe: $(LINOBJ)
	link $(LDEBUG) -out:lin-$(PLATFORM).exe $(LINOBJ) $(LIBS)

linpack2.exe: $(LINOBJ)
	$(OS2LINK) @linpack.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o linpack2.exe ::

dhry-$(PLATFORM).exe: $(DHRYOBJ)
	link $(LDEBUG) -out:dhry-$(PLATFORM).exe $(DHRYOBJ) $(LIBS)

dhry2.exe: $(DHRYOBJ)
	$(OS2LINK) @dhry.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o dhry2.exe ::

dhry2-$(PLATFORM).exe: $(DHRYOBJ2)
	link $(LDEBUG) -out:dhry2-$(PLATFORM).exe $(DHRYOBJ2) $(LIBS)
#	$(OS2LINK) @dhry2.lnk

clean:
	del $(WHETOBJ) $(LINOBJ) $(DHRYOBJ) $(DHRYOBJ2)
	del whet-$(PLATFORM).exe lin-$(PLATFORM).exe dhry-$(PLATFORM).exe dhry2-$(PLATFORM).exe
	del dhry2.exe      linpack2.exe   whet2.exe
	del *.asm *.a1 *.a

