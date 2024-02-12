# Nmake macros for building Windows 32-Bit apps

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec


INC = /w /I. /Iconfig
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
link = link

LIBS =  libc.lib \
        kernel32.lib \
        oldnames.lib

CC1OBJ = c-tab.obj c-decl.obj c-typeck.obj c-conv.obj toplev.obj version.obj \
	tree.obj pr-tree.obj stor-lay.obj fold-con.obj rtl.obj rtlanal.obj \
	expr.obj stmt.obj expmed.obj explow.obj optabs.obj varasm.obj symout.obj \
	dbxout.obj sdbout.obj emit-rtl.obj intgrate.obj jump.obj cse.obj \
	loop.obj flow.obj stupid.obj combine.obj regclass.obj localall.obj glblallc.obj \
	reload.obj reload1.obj callersv.obj final.obj recog.obj pragma.obj \
	errno.obj

CC1INSNOBJ = insn-emt.obj insn-xrt.obj insn-out.obj insn-pep.obj insn-rcg.obj \
	obstack.obj

CC1DEPS: insn-flg.h insn-cod.h insn-cnf.h insn-emt.c insn-pep.c insn-rcg.c \
	insn-xrt.c insn-out.c insn-out.obj

CCCPOBJ = cccp.obj cexp.obj version.obj obstack.obj alloca.obj

# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

include ..\-justcompile.mak
#include ..\-mangleassembly.mak
#include ..\-plainassembly.mak


default: cc1.exe

cc1: cc1.exe

cc1.exe: $(CC1DEPS) $(CC1OBJ) $(CC1INSNOBJ) insn-flg.h insn-cnf.h
#	cvtomf -g symout.obj
	$(link) $(conflags) -out:cc1.exe $(CC1OBJ) $(CC1INSNOBJ) alloca.obj $(conlibs) $(LIBS)
#	$(WATCOMLINK) @cc1.wlk
#	mcopy -i %QEMUPATH%\dummy.vfd -D o cc1.exe ::

ntcc1.exe: $(CC1DEPS) $(CC1OBJ) $(CC1INSNOBJ) insn-flg.h insn-cnf.h  ntsetjmp.obj
	$(link) $(conflags) -out:cc1.exe $(CC1OBJ) $(CC1INSNOBJ) alloca.obj ntsetjmp.obj $(conlibs) $(LIBS)

cccp.exe: $(CCCPOBJ)
#	cvtomf -g cccp.obj 
#	cvtomf -g cexp.obj 
#	cvtomf -g version.obj 
#	cvtomf -g obstack.obj 
#	cvtomf -g alloca.obj
	$(WATCOMLINK) @cpp.wlk
#	$(link) $(conflags) -out:cccp.exe $(CCCPOBJ) $(conlibs) $(LIBS)
	mcopy -i %QEMUPATH%\dummy.vfd -D o cpp.exe ::

xgcc.exe: gcc.obj obstack.obj version.obj mktemp.obj
	$(WATCOMLINK) @xgcc.wlk
	mcopy -i %QEMUPATH%\dummy.vfd -D o xgcc.exe ::

cc1x.exe: $(CC1DEPS) $(CC1OBJ) $(CC1INSNOBJ) insn-flg.h insn-cnf.h
	link /NODEFAULTLIB:libc.lib /NODEFAULTLIB:OLDNAMES.LIB  -out:cc1.exe $(CC1OBJ) $(CC1INSNOBJ) alloca.obj $(conlibs) $(LIBS)


genflags.exe: c-tab.obj c-decl.obj c-typeck.obj c-conv.obj toplev.obj \
	version.obj tree.obj pr-tree.obj stor-lay.obj fold-con.obj \
	rtl.obj rtlanal.obj genflags.obj obstack.obj \
	genflags.obj rtl.obj obstack.obj alloca.obj
#	cvtomf -g c-tab.obj
#	cvtomf -g c-decl.obj
#	cvtomf -g c-typeck.obj 
#	cvtomf -g c-conv.obj
#	cvtomf -g toplev.obj
#	cvtomf -g version.obj 
#	cvtomf -g tree.obj 
#	cvtomf -g pr-tree.obj 
#	cvtomf -g stor-lay.obj 
#	cvtomf -g fold-con.obj
#	cvtomf -g rtl.obj 
#	cvtomf -g rtlanal.obj 
#	cvtomf -g genflags.obj 
#	cvtomf -g obstack.obj
#	cvtomf -g genflags.obj 
#	cvtomf -g rtl.obj 
#	cvtomf -g obstack.obj 
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:genflags.exe genflags.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)


gencodes.exe: gencodes.obj rtl.obj obstack.obj alloca.obj
#	cvtomf -g gencodes.obj
#	cvtomf -g rtl.obj
#	cvtomf -g obstack.obj
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:gencodes.exe gencodes.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

genconf.exe: genconf.obj rtl.obj obstack.obj alloca.obj
#	cvtomf -g genconf.obj
#	cvtomf -g rtl.obj
#	cvtomf -g obstack.obj
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:genconf.exe genconf.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)


genemit.exe: expr.obj stmt.obj expmed.obj explow.obj optabs.obj varasm.obj \
	symout.obj dbxout.obj sdbout.obj emit-rtl.obj genemit.obj \
	insn-cnf.h insn-flg.h
#	cvtomf -g expr.obj
#	cvtomf -g stmt.obj
#	cvtomf -g expmed.obj
#	cvtomf -g explow.obj
#	cvtomf -g optabs.obj
#	cvtomf -g varasm.obj
#	cvtomf -g symout.obj
#	cvtomf -g dbxout.obj
#	cvtomf -g sdbout.obj
#	cvtomf -g emit-rtl.obj
#	cvtomf -g genemit.obj
	$(link) $(conflags) -out:genemit.exe genemit.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

genpep.exe: insn-emt.obj intgrate.obj jump.obj cse.obj loop.obj \
	flow.obj stupid.obj combine.obj regclass.obj localall.obj \
	glblallc.obj reload.obj reload1.obj callersv.obj genpep.obj \
	rtl.obj obstack.obj alloca.obj
#	cvtomf -g insn-emt.obj
#	cvtomf -g intgrate.obj 
#	cvtomf -g jump.obj 
#	cvtomf -g cse.obj 
#	cvtomf -g loop.obj 
#	cvtomf -g flow.obj 
#	cvtomf -g stupid.obj 
#	cvtomf -g combine.obj 
#	cvtomf -g regclass.obj 
#	cvtomf -g localall.obj
#	cvtomf -g glblallc.obj 
#	cvtomf -g reload.obj 
#	cvtomf -g reload1.obj 
#	cvtomf -g callersv.obj 
#	cvtomf -g genpep.obj
#	cvtomf -g rtl.obj 
#	cvtomf -g obstack.obj 
#	cvtomf -g alloca.obj
#	cvtomf -g genpep.obj
	$(link) $(conflags) -out:genpep.exe genpep.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

genrecog.exe: insn-pep.obj final.obj recog.obj genrecog.obj alloca.obj
#	cvtomf -g insn-pep.obj
#	cvtomf -g final.obj
#	cvtomf -g recog.obj 
#	cvtomf -g genrecog.obj 
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:genrecog.exe genrecog.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

genxtrt.exe: insn-rcg.obj genxtrt.obj alloca.obj
#	cvtomf -g insn-rcg.obj 
#	cvtomf -g genxtrt.obj 
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:genxtrt.exe genxtrt.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

genoutpt.exe: insn-xrt.obj genoutpt.obj genoutpt.obj rtl.obj obstack.obj alloca.obj
#	cvtomf -g insn-xrt.obj 
#	cvtomf -g genoutpt.obj 
#	cvtomf -g genoutpt.obj 
#	cvtomf -g rtl.obj 
#	cvtomf -g obstack.obj 
#	cvtomf -g alloca.obj
	$(link) $(conflags) -out:genoutpt.exe genoutpt.obj rtl.obj obstack.obj alloca.obj $(conlibs) $(LIBS)

expr.obj: insn-flg.h insn-cnf.h insn-cod.h

insn-out.c: genoutpt.exe
	genoutpt.exe md > insn-out.c

insn-xrt.c: genxtrt.exe
	genxtrt md > insn-xrt.c

insn-rcg.c: genrecog.exe
	genrecog md > insn-rcg.c

insn-flg.h: genflags.exe
	genflags md > insn-flg.h

insn-cod.h: gencodes.exe
	gencodes md > insn-cod.h

insn-cnf.h: genconf.exe
	genconf md > insn-cnf.h

insn-emt.c: genemit.exe
	genemit md > insn-emt.c

insn-pep.c: genpep.exe
	genpep md > insn-pep.c


insn-out.obj: insn-out.c
	msdos286 run286 C:\cl386-research\bin\nt-dec\cl386 /w /I. /Iconfig /D__STDC__ /c insn-out.c

c-tab.c: c-parse.y
	copy /Y c-tab.k c-tab.c
#	..\bin\bison -v ./c-parse.y -o c-tab.c

clean:
	del /F *.obj
	del /F *.exe
	del /F insn-*
	del /F stamp-*
	del /F c-parse.output c-tab.c
