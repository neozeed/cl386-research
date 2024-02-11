# Version 6.00.054	1989
# https://archive.org/details/os2ddk1.2
# PLATFORM = ddk12

# Version 6.00.054	1989
# https://archive.org/details/os2ddk2.0
# PLATFORM = ddk20

# Version 6.00.054	1989
# https://archive.org/details/os-2-cd-rom_202401
PLATFORM = ddksrc

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
PLATFORM = nt-dec

# Version 8.00		1993
# PLATFORM = msvc32s

# Version 8.00.3200     1993
# Windows 95 73g SDk
# PLATFORM = 73g

# Version  13.10.4035	2002
# PLATFORM = v13


INC = /u /w
OPT = /O
#DEBUG = /Zi
#LDEBUG = -debug:full

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


PORTOBJ = am_map.obj   doomdef.obj doomstat.obj dstrings.obj \
d_items.obj d_main.obj d_net.obj fixdfsi.obj f_finale.obj f_wipe.obj g_game.obj \
hu_lib.obj hu_stuff.obj info.obj i_main.obj i_net.obj \
m_argv.obj m_bbox.obj m_cheat.obj m_fixed.obj m_menu.obj m_misc.obj m_random.obj \
m_swap.obj p_ceilng.obj p_doors.obj p_enemy.obj p_floor.obj p_inter.obj \
p_lights.obj p_map.obj p_maputl.obj p_mobj.obj p_plats.obj p_pspr.obj p_saveg.obj \
p_setup.obj p_sight.obj p_spec.obj p_switch.obj p_telept.obj p_tick.obj p_user.obj \
r_bsp.obj r_data.obj r_draw.obj r_main.obj r_plane.obj r_segs.obj r_sky.obj \
r_things.obj sounds.obj st_lib.obj st_stuff.obj \
tables.obj  v_video.obj wi_stuff.obj w_wad.obj z_zone.obj s_sound.obj

PLATOBJ = i_sound.obj i_video.obj i_system.obj

OBJ = $(PLATOBJ) $(PORTOBJ)


# must include ONLY ONE strategey..
# for OS/2 it must have been assembled my MASM 6.11

#include ..\-justcompile.mak
include ..\-mangleassembly.mak
#include ..\-plainassembly.mak


all: doom-$(PLATFORM).exe

os2: doom2.exe
	qemuos2

floppy: doom2.exe
	mcopy -i %QEMUPATH%\dummy.vfd -D o doom2.exe ::

doom-$(PLATFORM).exe: $(OBJ)
	link $(LDEBUG) -out:doom-$(PLATFORM).exe $(OBJ) $(LIBS)

doom2.exe: $(OBJ)
#	$(OS2LINK) /STACK:512000 @doom.lnk
	$(WATCOMLINK) @doom.wlk
	mcopy -i %QEMUPATH%\dummy.vfd -D o doom2.exe ::

m_fixed.obj:
	ax386.exe m_fixed_i386.s -o m_fixed.obj


clean:
	del $(OBJ)
	del doom-$(PLATFORM).exe doom2.exe
	del *.asm *.a1 *.a

