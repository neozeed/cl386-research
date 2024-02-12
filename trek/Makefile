# Version 6.00.054	1989
# https://archive.org/details/os2ddk1.2
# PLATFORM = ddk12

# Version 6.00.054	1989
# https://archive.org/details/os2ddk2.0
# PLATFORM = ddk20

# Version 6.00.054	1989
# https://archive.org/details/os-2-cd-rom_202401
#PLATFORM = ddksrc

# Version 1.00.075	1989
# https://archive.org/details/msos2-200-sdk
PLATFORM = c386

# Version 6.00.077	1991
# https://archive.org/details/windows-nt-3.1-build-196
#PLATFORM = nt-sep

# Version 6.00.080	1991
# https://archive.org/details/windows-nt-3.1-october-1991-build
# PLATFORM = nt-oct

# Version 6.00.081	1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
# PLATFORM = nt-dec

# Version 8.00          1993
# PLATFORM = msvc32s

# Version 8.00.3200	1993
# Windows 95 73g SDk
# PLATFORM = 73g

# Version  13.10.4035	2002
# PLATFORM = v13

# Version 13.10.6030
# PLATFORM = 13.10.6030

INC = /w
#OPT = /G3 
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
WATCOMLINK = $(CL386ROOT)\wlink.exe


LIBS = 	libc.lib \
	kernel32.lib \
	oldnames.lib


OBJS=   abandon.obj attack.obj autover.obj capture.obj check_out.obj checkcond.obj \
        compkl.obj computer.obj damage.obj damaged.obj dcrept.obj destruct.obj \
        dock.obj dumpgame.obj dumpme.obj dumpssradio.obj events.obj externs.obj \
        getcodi.obj getpar.obj help.obj impulse.obj initquad.obj kill.obj klmove.obj \
        lose.obj lrscan.obj move.obj nova.obj out.obj phaser.obj play.obj ram.obj \
        ranf.obj rest.obj schedule.obj score.obj setup.obj setwarp.obj \
        shield.obj snova.obj srscan.obj systemname.obj torped.obj utility.obj \
        visual.obj warp.obj win.obj cgetc.obj nullsleep.obj


# must include ONLY ONE strategey.. 
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak
#include ..\-ftol.mak

all: trek-$(PLATFORM).exe

os2: trek2.exe
	qemuos2

floppy: trek2.exe
	mcopy -i %QEMUPATH%\dummy.vfd -D o trek2.exe ::

ntmain.obj: main.c
	$(CL386ROOT)\msvc32s\cl386 /D_WIN32 /Fontmain.obj /c main.c


trek-$(PLATFORM).exe: ntmain.obj $(OBJS)
	link $(LDEBUG) -out:trek-$(PLATFORM).exe ntmain.obj $(OBJS) $(LIBS)

trek2.exe: $(OBJS)
	$(EMU) $(DOSX) $(CL386ROOT)\ddk12\cl386 /c main.c
	$(WATCOMLINK) @trek.wlk
#	$(OS2LINK) @trek.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o trek2.exe ::

clean:
	del $(OBJS) main.obj ntmain.obj
	del trek-$(PLATFORM).exe trek2.exe
	del *.asm *.a1 *.a

