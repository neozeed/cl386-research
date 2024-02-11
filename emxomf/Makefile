# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
# PLATFORM = c386

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec



OBJS = cplus-dem.obj emxomf-32.obj grow.obj getopt.obj getopt1.obj stabshll-32.obj
#fake.obj
#stabshll-32.obj


# OS/2 compat dos extender (pharlap286)
DOSX = run286
# ms-dos emulator
EMU = msdos286
OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE
WATCOMLINK = $(CL386ROOT)\wlink.exe

INC = /u /w /I.
OPT = /G3 #-DUSG -DWORKING_DOT_WORD -DM_XENIX -DXENIX
DEBUG = #/Zi
LDEBUG = #-debug:full

CC =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386

include ..\-justcompile.mak



emxomf.exe: $(OBJS)
	$(WATCOMLINK) @emxomf.wlk
#        $(OS2LINK) /STACK:100000 @emxomf.lnk
	mcopy -i %QEMUPATH%\dummy.vfd -D o emxomf.exe ::

clean:
	del $(OBJS)
	del emxomf.exe
