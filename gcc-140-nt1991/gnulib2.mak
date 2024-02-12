# Version 6.00.081      1991
# https://archive.org/details/Windows_NT_and_Win32_Dev_Kit_1991
PLATFORM = nt-dec
PLATFORM = msvc32s

INC = /w /I. /Iconfig
#OPT = /G3
DEBUG = #/Zi
LDEBUG = #-debug:full

# OS/2 compat dos extender (pharlap286)
DOSX = run286

# ms-dos emulator
EMU = msdos286

# dos exteded cross
# CL386 =  $(EMU) $(DOSX) $(CL386ROOT)\$(PLATFORM)\cl386
# native CC
CL386 =  $(CL386ROOT)\$(PLATFORM)\cl386
LIB =  $(EMU) $(DOSX) $(CL386ROOT)\c386\lib

OS2LINK = $(EMU) $(DOSX) $(CL386ROOT)\ddk12\LINK386.EXE
WATCOMLINK = $(CL386ROOT)\wlink.exe

CFLAGS = $(INC) $(OPT) $(DEBUG) $(LDEBUG)




OBJS = _adddi3.obj _subdi3.obj _muldi3.obj _divdi3.obj _moddi3.obj _udivdi3.obj _umoddi3.obj _negdi2.obj \
    _anddi3.obj _iordi3.obj _xordi3.obj _lshrdi3.obj _lshldi3.obj _ashldi3.obj _ashrdi3.obj _one_cmpldi2.obj  \
    _bdiv.obj _cmpdi2.obj _ucmpdi2.obj _fixunsdfdi.obj _fixdfdi.obj _floatdidf.obj _varargs.obj


CPP = cpp -D_cdecl=


CPPFLAGS = -Iconfig

gnulib2.lib: $(OBJS)
	move _*.obj gnulib2
	del gnulib2.bak
	del _*.i _*.s


_adddi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_subdi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_muldi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_divdi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_moddi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_udivdi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_umoddi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_negdi2.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_anddi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_iordi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_xordi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_lshrdi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_lshldi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_ashldi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_ashrdi3.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_one_cmpldi2.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_bdiv.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_cmpdi2.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_ucmpdi2.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_fixunsdfdi.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_fixdfdi.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_floatdidf.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;

_varargs.obj:
	$(CPP) -I/cl386-research/h -D__GNUC__ -Di386 -DL$* $(CPPFLAGS) gnulib2.c > $*.i
	cc1 -version -quiet -o $*.s $*.i
	ax386 -version -o gnulib2\$*.obj $*.s
	$(LIB) gnulib2.lib +gnulib2\$*.obj;



