#include <stdio.h>
#include <stddef.h>

extern void *memset(void *, int, size_t);

void
bzero (void *to, size_t count)
{
  memset (to, 0, count);
}


_doprnt(Format, a, f)
char *Format;
FILE *f;
char **a;
{
	int Nargs = ((int *)a)[-2];	/* This understands as_fatal() */

	switch(Nargs) {
		default: fprintf(f,"_doprnt error on \"%s\"!!",Format); break;
		case 1:  fprintf(f,Format); break;
		case 2:  fprintf(f,Format,a[0]); break;
		case 3:  fprintf(f,Format,a[0],a[1]); break;
		case 4:  fprintf(f,Format,a[0],a[1],a[2]); break;
		case 5:  fprintf(f,Format,a[0],a[1],a[2],a[3]); break;
		case 6:  fprintf(f,Format,a[0],a[1],a[2],a[3],a[4]); break;
		case 7:  fprintf(f,Format,a[0],a[1],a[2],a[3],a[4],a[5]); break;
		case 8:  fprintf(f,Format,a[0],a[1],a[2],a[3],a[4],a[5],a[6]); break;
		case 9:  fprintf(f,Format,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]); break;
		case 10: fprintf(f,Format,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]); break;
	}
}