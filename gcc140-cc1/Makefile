# Version 1.00.075      1989
# https://archive.org/details/msos2-200-sdk
# PLATFORM = c386

# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec

OBJS = c-tab.obj c-decl.obj c-typeck.obj c-conv.obj toplev.obj version.obj tree.obj \
pr-tree.obj stor-lay.obj fold-con.obj rtl.obj rtlanal.obj expr.obj stmt.obj expmed.obj \
explow.obj optabs.obj varasm.obj symout.obj dbxout.obj sdbout.obj emit-rtl.obj \
intgrate.obj jump.obj cse.obj loop.obj flow.obj stupid.obj combine.obj regclass.obj \
localall.obj glblallc.obj reload.obj reload1.obj callersv.obj final.obj recog.obj \
pragma.obj errno.obj insn-emt.obj insn-xrt.obj insn-out.obj insn-pep.obj insn-rcg.obj \
obstack.obj alloca.obj

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


default: cc1.exe

cc1.exe: $(OBJS)
        $(OS2LINK) @cc1.lnk
        mcopy -i %QEMUPATH%\dummy.vfd -D o cc1.exe ::

.asm.obj:
	ml /c $*.asm

clean:
	del $(OBJS)
	del cc1.exe

