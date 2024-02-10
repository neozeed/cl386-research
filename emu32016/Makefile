# this relies on long long
# so only v13+

# Version  13.10.4035	2002
PLATFORM = v13
# PLATFORM = 13.10.6030

INC = /u /w /I.
OPT = /G3 /O
DEBUG = #/Zi
LDEBUG = #-debug:full

# OS/2 compat dos extender (pharlap286)
DOSX = run286

# ms-dos emulator
EMU = msdos286

# dos exteded cross
#CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native CC
CC =  $(CL386ROOT)\$(PLATFORM)\cl386

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE


LIBS = 	libc.lib \
	kernel32.lib \
	oldnames.lib


MATH = allshr.obj alldiv.obj allrem.obj allshl.obj allmul.obj

OBJ = 32016.obj decode.obj emul32k.obj mem32016.obj $(MATH)
	

# must include ONLY ONE strategey.. 
# for OS/2 it must have been assembled my MASM 6.11

#include ..\-justcompile.mak
include ..\-mangleassembly.mak
#include ..\-plainassembly.mak

all: emul2.exe

os2: emul2.exe
	qemuos2

allshr.obj: allshr.s
	ax386 allshr.s -o allshr.obj

alldiv.obj: alldiv.s
	ax386 alldiv.s -o alldiv.obj

allrem.obj: allrem.s
	ax386 allrem.s -o allrem.obj

allshl.obj: allshl.s
	ax386 allshl.s -o allshl.obj

allmul.obj: allmul.s
	ax386 allmul.s -o allmul.obj

math: $(MATH)


floppy: emul2.exe
	mcopy -i %QEMUPATH%\dummy.vfd -D o emul2.exe ::

emul-$(PLATFORM).exe: $(OBJ)
	link $(LDEBUG) -out:emul-$(PLATFORM).exe $(OBJ) $(LIBS)

emul2.exe: $(OBJ)
	$(OS2LINK) /STACK:1000000 @emul.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o emul2.exe ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o infocom.bin ::
	mcopy -i %QEMUPATH%\dummy.vfd -D o prim.32K ::

clean:
	del $(OBJ)
	del emul-$(PLATFORM).exe emul2.exe
	del *.asm *.a1 *.a

