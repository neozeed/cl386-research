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
LIB =  $(EMU) $(DOSX) $(CL386ROOT)\c386\lib
# native CC
# CC =  $(CL386ROOT)\$(PLATFORM)\cl386

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE
WATCOMLINK = $(CL386ROOT)\wlink.exe

CFLAGS = $(INC) $(OPT) $(DEBUG) $(LDEBUG)



OBJS = _eprintf.obj _builtin_new.obj _builtin_New2.obj _builtin_del.obj\
	_umulsi3.obj _mulsi3.obj _udivsi3.obj _divsi3.obj _umodsi3.obj _modsi3.obj\
	_lshrsi3.obj _lshlsi3.obj _ashrsi3.obj _ashlsi3.obj\
	_divdf3.obj _muldf3.obj _negdf2.obj _adddf3.obj _subdf3.obj _cmpdf2.obj\
	_fixunsdfsi.obj _fixdfsi.obj _floatsidf.obj _truncdfsf2.obj _extendsfdf2.obj\
	_addsf3.obj _negsf2.obj _subsf3.obj _cmpsf2.obj _mulsf3.obj _divsf3.obj





gnulib.lib: $(OBJS)
	move _*.obj gnulib
	del gnulib.bak
	del _*.i _*.s


_eprintf.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_builtin_new.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_builtin_New2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_builtin_del.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_umulsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_mulsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_udivsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_divsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_umodsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_modsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_lshrsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_lshlsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_ashrsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_ashlsi3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_divdf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_muldf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_negdf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_adddf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_subdf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_cmpdf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_fixunsdfsi.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_fixdfsi.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_floatsidf.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_truncdfsf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_extendsfdf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_addsf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_negsf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_subsf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_cmpsf2.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_mulsf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;
_divsf3.obj:
	$(CC) $(CFLAGS) /DL$* /c gnulib.c /Fognulib\$*.obj
	$(LIB) gnulib.lib +gnulib\$*.obj;





