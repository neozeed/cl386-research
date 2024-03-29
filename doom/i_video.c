/* Emacs style mode select   -*- C++ -*- */
/*----------------------------------------------------------------------------- */
/* */
/* $Id:$ */
/* */
/* Copyright (C) 1993-1996 by id Software, Inc. */
/* */
/* This program is free software; you can redistribute it and/or */
/* modify it under the terms of the GNU General Public License */
/* as published by the Free Software Foundation; either version 2 */
/* of the License, or (at your option) any later version. */
/* */
/* This program is distributed in the hope that it will be useful, */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the */
/* GNU General Public License for more details. */
/* */
/* $Log:$ */
/* */
/* DESCRIPTION: */
/*	DOOM graphics stuff for X11, UNIX. */
/* */
/*----------------------------------------------------------------------------- */

/*static const char
        rcsid[] = "$Id: i_x.c,v 1.6 1997/02/03 22:45:10 b1 Exp $";
*/

#include <stdlib.h>
#include <stdarg.h>

//#include <sys/types.h>

#include <signal.h>

#include "doomstat.h"
#include "i_system.h"
#include "v_video.h"
#include "m_argv.h"
#include "d_main.h"

#include "doomdef.h"

/*dosstuff -newly added */
byte* dascreen;
volatile char keydown[128];
volatile char extendedkeydown[128];
volatile char nextkeyextended;
void initkeyhandler();
void killkeyhandler();
void keyhandler();
char oldkeystate[128];
char oldextendedkeystate[128];

void initkeyhandler()
{
	int i;

	for (i=0; i<128; i++) keydown[i]=0;
	for (i=0; i<128; i++) extendedkeydown[i]=0;
	for (i=0; i<128; i++) oldkeystate[i]=0;
	for (i=0; i<128; i++) oldextendedkeystate[i]=0;
	nextkeyextended=0;

}

void killkeyhandler()
{
}

void keyhandler()
{
	unsigned char keyhandlercurrkey;

	keyhandlercurrkey=0x0;	/*inportb(0x60);*/

	if (nextkeyextended)
	{
		if ((keyhandlercurrkey&0x80)==0)
			extendedkeydown[keyhandlercurrkey&0x7f]=1;
		else
			extendedkeydown[keyhandlercurrkey&0x7f]=0;
		nextkeyextended=0;
	}
	else
	{
		if ((keyhandlercurrkey&0x80)==0)
			keydown[keyhandlercurrkey&0x7f]=1;
		else
			keydown[keyhandlercurrkey&0x7f]=0;
	}

	if (keyhandlercurrkey==0xe0)
		nextkeyextended=1;

	if ((keydown[0x1d])&&(keyhandlercurrkey==0x2e))
	{
	}

/*reset keyoard */
}

byte ASCIINames[] =             /* Unshifted ASCII for scan codes */
{
/*	 0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F */
	0,27,'1','2','3','4','5','6','7','8','9','0','-','=',8,9,               /* 0 */
	'q','w','e','r','t','y','u','i','o','p','[',']',13,0,'a','s',           /* 1 */
	'd','f','g','h','j','k','l',';',39,'`',0,92,'z','x','c','v',            /* 2 */
	'b','n','m',',','.','/',0,'*',0,' ',0,0,0,0,0,0,                        /* 3 */
	0,0,0,0,0,0,0,'7','8','9','-','4','5','6','+','1',                      /* 4 */
	'2','3','0',127,0,0,0,0,0,0,0,0,0,0,0,0,                                /* 5 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,                                        /* 6 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0                                         /* 7 */
};

/*end of newly added stuff */


void I_ShutdownGraphics(void)
{
}



/* */
/* I_StartFrame */
/* */
void I_StartFrame (void)
{
	/* er? */

}


void I_GetEvent()
{
	event_t event;
	char tempkey[128];
	char tempextendedkey[128];
	int i;
	int xmickeys,ymickeys,buttons;
	static int lastbuttons=0;

	/*key presses */
	for (i=0; i<128; i++)
	{
		tempkey[i]=keydown[i];
		tempextendedkey[i]=extendedkeydown[i];
	}

	for (i=0; i<128; i++)
	{
		if ((tempkey[i]==1)&&(oldkeystate[i]==0))
		{
			event.type=ev_keydown;
			if (ASCIINames[i]!=0)
				event.data1=ASCIINames[i];
			else
				event.data1=i+0x80;
			D_PostEvent(&event);
		}
		if ((tempkey[i]==0)&&(oldkeystate[i]==1))
		{
			event.type=ev_keyup;
			if (ASCIINames[i]!=0)
				event.data1=ASCIINames[i];
			else
				event.data1=i+0x80;
			D_PostEvent(&event);
		}
		if ((tempextendedkey[i]==1)&&(oldextendedkeystate[i]==0))
		{
			event.type=ev_keydown;
			switch (i)
			{
			case 0x48: event.data1=KEY_UPARROW; D_PostEvent(&event); break;
			case 0x4d: event.data1=KEY_RIGHTARROW; D_PostEvent(&event); break;
			case 0x50: event.data1=KEY_DOWNARROW; D_PostEvent(&event); break;
			case 0x4b: event.data1=KEY_LEFTARROW; D_PostEvent(&event); break;
			}
		}
		if ((tempextendedkey[i]==0)&&(oldextendedkeystate[i]==1))
		{
			event.type=ev_keyup;
			switch (i)
			{
			case 0x48: event.data1=KEY_UPARROW; D_PostEvent(&event); break;
			case 0x4d: event.data1=KEY_RIGHTARROW; D_PostEvent(&event); break;
			case 0x50: event.data1=KEY_DOWNARROW; D_PostEvent(&event); break;
			case 0x4b: event.data1=KEY_LEFTARROW; D_PostEvent(&event); break;
			}
		}
	}
	memcpy(oldkeystate,tempkey,128);
	memcpy(oldextendedkeystate,tempextendedkey,128);

	/*mouse movement */

}


/* */
/* I_StartTic */
/* */
void I_StartTic()
{
	I_GetEvent();
	/*i dont think i have to do anything else here */

}



/* */
/* I_UpdateNoBlit */
/* */
void I_UpdateNoBlit (void)
{
	/* what is this? */
}

void I_FinishUpdate(void)
{
	static int lasttic;
	int tics;
	int i;
	/* UNUSED static unsigned char *bigscreen=0; */

	/* draws little dots on the bottom of the screen */
	if (devparm)
	{

		i = I_GetTime();
		tics = i - lasttic;
		lasttic = i;
		if (tics > 20) tics = 20;

		for (i=0; i<tics*2; i+=2)
			screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
		for (; i<20*2; i+=2)
			screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;

	}

	/*blast it to the screen */
	memcpy(dascreen,screens[0],SCREENWIDTH*SCREENHEIGHT);
}

/* */
/* I_ReadScreen */
/* */
void I_ReadScreen (byte* scr)
{
	memcpy (scr, screens[0], SCREENWIDTH*SCREENHEIGHT);
}


void I_SetPalette (byte* palette)
{
	int c,i;

	for (i=0; i<256; i++)
	{
		c=gammatable[usegamma][*palette++];
		c=gammatable[usegamma][*palette++];
		c=gammatable[usegamma][*palette++];
	}
}


void I_InitGraphics(void)
{
	static int firsttime=1;

	if (!firsttime)
		return;
	firsttime=0;

	/*enter graphics mode */
	dascreen=(byte *)malloc(SCREENWIDTH*SCREENHEIGHT);   /*(byte *)(__djgpp_conventional_base+0xa0000);*/
	screens[0]=(byte *)malloc(SCREENWIDTH*SCREENHEIGHT);

	/*init the mouse */

	/*init keyboard */
	initkeyhandler();
}



int inited;


