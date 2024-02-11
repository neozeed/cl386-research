/* Compile driver for gcc on DOS-Extender (of Phar Lap)
		
		(c) Keisuke Yoshida,  1990  (April 8)
		
		Recomended Compiler: Turbo C (of Borland Co. LTD)

-- modification log. 
	-- add wild card expantion using findfirst() and findnext().
	-- create mapfile.
	-- may use xm.exe instead of run386.exe.
	-- (-v) show command line.
    -- (-n) do no execute (to create batch file).
*/		
#include <stdio.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <process.h>
#include <ctype.h>
//#include <dir.h>

/* Macro */
#define MAX_FILES	100
#define MAX_OPTIONS	25
#define MIN_OPTIONS 5
#define MAX_COM_STR	40

/* Compile Mode */
#define TO_ASM	0
#define TO_OBJ	1
#define TO_EXP	2

/* default path */
#define DEFAULT_EXP_DIR	"bin"
#define DEFAULT_GCC_DIR	"bin"
#define DEFAULT_LIB_DIR	"usr\\lib"

/* real mode program name */
#define DEFAULT_RUN386	"run386"
#define GENEXP	"genexp"

/* native mode program name */
#define CPP	"cpp"
#define CC1	"cc1"
#define AS	"gas"
#define LD	"ld"
#define NAME "nm"

/* C run time routine */
#define CRT0	"crt0.o"

/* global variables */
int	mode = 	TO_EXP;

/* native mode program with full path name */
char	cpp_spec[MAX_COM_STR];
char	cc1_spec[MAX_COM_STR];
char	gas_spec[MAX_COM_STR];
char	ld_spec[MAX_COM_STR];
char	name_spec[MAX_COM_STR];

/* C run time routine full path name */
char	crt0_spec[MAX_COM_STR];

/* child process parameter */
char	*cpp_options[MAX_OPTIONS];
char	*cc1_options[MAX_OPTIONS];
char	*gas_options[MAX_OPTIONS];
char	*ld_options[MAX_OPTIONS];
char	*name_options[MIN_OPTIONS];
char	*genexp_options[MAX_OPTIONS];

int	cpp_noptions = 0;
int	cc1_noptions = 0;
int	gas_noptions = 0;
int	ld_noptions  = 0;
int	name_noptions  = 0;

/* source file list */
char	*file_list[MAX_FILES];
int	nfiles = 0;

/* native mode program directories */
char	*exp_dir;
char	*gcc_dir;
char	*lib_dir;
char	*run_name;

/* default library and load module name */
char	*stdlib  = "-lc";
char	*outfile = "a_out";

/* copyright notice and usage 		*/
const char * copyright[] = {
		" Compile driver for GNU C compiler  (-? for help)",
		" 	 Copyright Keisuke Yoshida, 1990  ",
		" 	 created using Turbo C, Copyright Borland 1987,1988 "
		};
const char * usage[] = {
		" Usage: gcc [options]*  prog_name.[csoa] .. ",
		"  	  options may be stored in file 'gnucc.cfg' ",
		"	  '*' or '?' may be used in prog_name "
		"\nOptions: ",
		"  -c  :create .o	-S :create .s 	 -o output_name ",
		"  -I<headerfile directory>   -L<library directory> ",
		"  -O  :optimize              -msoft-float :do not use FPU ",
		"  -l<library abbreviation>   -y : create .map ",
		"  -e<entry point> 			"	
		"\nEnvironment variables ",
		"  EXPDIR = path to gas, ld, nm (default: bin\\)",
		"  GCCDIR = path to cpp, cc1    (default: bin\\)",
		"  LIBDIR = path to crt0.o      (default: usr\\lib)",
		"  RUN386 = name of extender    (default: run386)"
		};

struct  {
	unsigned make_map: 1;
	unsigned all_map:  1;
	unsigned show_cmd: 1;
	unsigned not_run: 1;
	}  my_option;
void
init_options()
{
	if ((exp_dir = getenv("EXPDIR")) == NULL)
		exp_dir = DEFAULT_EXP_DIR;

	if ((gcc_dir = getenv("GCCDIR")) == NULL)
		gcc_dir = DEFAULT_GCC_DIR;

	if ((lib_dir = getenv("LIBDIR")) == NULL)
		lib_dir = DEFAULT_LIB_DIR;

	if ((run_name = getenv("RUN386")) == NULL)
		run_name = DEFAULT_RUN386;

	sprintf(cpp_spec, "%s\\%s", gcc_dir, CPP);
	sprintf(cc1_spec, "%s\\%s", gcc_dir, CC1);
	sprintf(gas_spec, "%s\\%s", exp_dir, AS);
	sprintf(ld_spec,  "%s\\%s", exp_dir, LD);
	sprintf(name_spec,  "%s\\%s", exp_dir, NAME);
	sprintf(crt0_spec,"%s\\%s", lib_dir, CRT0);

	cpp_options[cpp_noptions++] = run_name;
	cpp_options[cpp_noptions++] = cpp_spec;
	cpp_options[cpp_noptions++] = "-D__GNUC__";
	cpp_options[cpp_noptions++] = "-DTOWNS";

	cc1_options[cc1_noptions++] = run_name;
	cc1_options[cc1_noptions++] = cc1_spec;
	cc1_options[cc1_noptions++] = "-quiet";

	gas_options[gas_noptions++] = run_name;
	gas_options[gas_noptions++] = gas_spec;

	ld_options[ld_noptions++] = run_name;
	ld_options[ld_noptions++] = ld_spec;
	ld_options[ld_noptions++] = "-N";

	name_options[name_noptions++] = run_name;
	name_options[name_noptions++] = name_spec;
	name_options[name_noptions++] = "-g";


}

char *
tmp()
{
	static count = 0;
	char   *name = malloc(8 + 1 + 3 + 1);

	count++;
	sprintf(name, "tmp%04d.$$$", count);

	return name;
}

char *
suffix(char *file, char *suffixs)
{
	char *p; 
	char *q, *r;

	p = malloc(strlen(file) + strlen(suffixs) + 1);
	strcpy(p, file);

	if (q = strrchr (p, '.')) {
		if ((r = strrchr (p, '/')) || (r = strrchr (p, '\\'))) {
			if (r > q) {
				q = &p[strlen(p)];
			}
		}
	} else {
		q = &p[strlen(p)];
		*q = '.';
	}

	strcpy(++q, suffixs);

	return p;
}

char *
asm_file(char *file)
{
	return suffix(file, "s");
}

char *
obj_file(char *file)
{
	return suffix(file, "o");
}

char *
exp_file(char *file)
{
	return suffix(file, "exp");
}
void parse_options(int argc, char **argv) 
{
	int i;
	for (i = 1; i < argc; i++)
	    if (argv[i][0] == '-') {
		switch (argv[i][1]) {
		  case 'S':
		  	mode = TO_ASM;
			break;

		  case 'c':
		  	mode = TO_OBJ;
			break;

		  case 'o':
		    if (argv[i][2] == 0)
				outfile = argv[++i];
			else 
				outfile = argv[i] + 2;
			break;

		  case 't':
			cpp_options[cpp_noptions++] = argv[i];
			cc1_options[cc1_noptions++] = argv[i];
			break;

		  case 'D':
		  case 'U':
		  case 'I':
			cpp_options[cpp_noptions++] = argv[i];
			break;

		  case 'm':
			if (!strcmp(argv[i], "-msoft-float")) stdlib = "-lce";
		  case 'O':
		  case 'f':
		  case 'W':
			cc1_options[cc1_noptions++] = argv[i];
			break;

		  case 'l':
		  case 'L':
		  case 'e':
			ld_options[ld_noptions++] = argv[i];
		  	break;
		  case 'Y':
		  	my_option.all_map = 1;
		  case 'y':
		  	my_option.make_map = 1;
		  	break;
		  case 'n':
		  	my_option.not_run = 1;
		  case 'v':
		  	my_option.show_cmd = 1;
		  default:	
			break;
		}	}
	    else {
#if 0
	    	//struct ffblk ffblk;
	    	int j,done;
	    	char *s;
	    	char path[_MAX_PATH],drive[_MAX_DRIVE],dir[_MAX_DIR],name[FILENAME_MAX],ext[_MAX_EXT];
	    	
	    	done = findfirst(argv[i],&ffblk,0);
	    	if (!done) {
	    		fnsplit(argv[i],drive,dir,name,ext);
	    		for (j=0; j < strlen(dir); j++)
	    			if (dir[j] == '/') dir[j] = '\\';
	    		}
	    	else {
	    		printf(" path <%s> is not found \n",argv[i]);
	    		}
	    	while (!done) {
	    		fnmerge(path,drive,dir,ffblk.ff_name,"");
				if (nfiles < MAX_FILES) {
	    			s = file_list[nfiles] = 
	    		 		strcpy(malloc(strlen(path)+1),path);
					while (*s) *s = tolower(*s), s++; 
					nfiles++;
					}
				else {	
					printf("File %s is excepted due to table overflow\n",path);
					}
				done = findnext(&ffblk);
				}
#endif
	    }
}

int 
c_exec(int mode, char *name, char **options)
{
	int i,rc;
	char *s;
	for (i=2; options[i] != NULL; i++) {
		s = options[i];
		for (; *s; s++)
			if (*s == '\\') *s = '/';
		}
	if (my_option.show_cmd) {
		printf("%s  ",name);
		for (i=1; options[i] != NULL; i++)
			printf("%s ", options[i]);
		putchar('\n');
		}
	if (my_option.not_run) 
		rc =  0;
	else	
		rc = spawnvp(mode, name, options);
	if (rc > 0) {
		for (i=1; options[i] != NULL; i++)
			printf("%s ", options[i]);
		putchar('\n');
	}
	return rc;
}
enum {from_cpp, from_cc1, from_gas, from_ld } smode;

main (int argcount, char *argvect[])
{
	int i,j,k;
	FILE *config;
	char buf[512];
	char **parm;
	int  parmc;

	if (argcount == 1) {
		for (i= 0; i<sizeof(copyright)/sizeof(copyright[0]); i++)
			puts(copyright[i]);
		exit(4);
		}
	else if (argcount == 2 && 
				(!strcmp(argvect[1],"?") || !strcmp(argvect[1],"-?"))) {
		for (i= 0; i<sizeof(usage)/sizeof(usage[0]); i++)
			puts(usage[i]);
		exit(4);
		}
	init_options();
	
	my_option.make_map = 0;
	my_option.all_map = 0;
	config = fopen("gnucc.cfg","r");
	if (config) {
		k = fread(buf,1,sizeof(buf)-1,config);
		buf[k] = 0;
		if (k >= sizeof(buf) -1)
		printf(" config file may be too large: buffer size %d \n",sizeof(buf));
		for (parmc=1,j=0; j<k; j++) {
			while (isspace(buf[j]) && j<k) j++;
			if (buf[j] == 0) break;
			parmc++;
			while (buf[j] && !isspace(buf[j]) && j<k) j++;
			buf[j] = 0;
			}
		parm = (char **)malloc((parmc+1) * sizeof(char *));	
		for (i=j=0; j<k && i < parmc; j++) {
			while (isspace(buf[j]) && j<k) j++;
			parm[++i] = &buf[j];
			while (buf[j] != 0 && j<k) j++;
			}
		parm[++i] = NULL;
		parse_options(parmc,parm);
		fclose(config);
		}
	parse_options(argcount,argvect);
	{ char *cpos;
		for (i = 0; i < nfiles; i++) {
			char *tmp_file[4];

			cpos = strrchr(file_list[i], '.');
			cpos[1] = tolower(cpos[1]);	
			if (!strcmp(cpos, ".c")) {
				smode = from_cpp;
				printf("<%s>\n",file_list[i]);
				tmp_file[0] = file_list[i];
				tmp_file[1] = tmp();
				tmp_file[2] = (mode == TO_ASM)?
						asm_file(file_list[i]): tmp();
				tmp_file[3] = (mode != TO_ASM)?
						obj_file(file_list[i]): NULL;
			} else if (!strcmp(cpos, ".s")) {
				smode = from_gas;
				printf("<%s>\n",file_list[i]);
				tmp_file[0] = NULL;
				tmp_file[1] = NULL;
				tmp_file[2] = file_list[i];
				tmp_file[3] = (mode != TO_ASM)?
						obj_file(file_list[i]): NULL;
			} else if (!strcmp(cpos, ".o")) {
				continue;
			} else if (!strcmp(cpos,  ".a")) {
				continue;
			} else {
				fprintf(stderr , "%s: ?????.\n", file_list[i]);
				continue;
			}

			if (!compile_file(tmp_file)) {
				exit(1);
			}
			
			file_list[i] = obj_file(file_list[i]);
		}
	}

	if ((mode == TO_EXP) && (nfiles > 0)) {
		int  i;
		int  status;

		ld_options[ld_noptions++] = "-o";
		ld_options[ld_noptions++] = outfile;

		ld_options[ld_noptions++] = crt0_spec;

		for (i = 0; i < nfiles; i++)
			ld_options[ld_noptions++] = file_list[i];

		ld_options[ld_noptions++] = stdlib;
		ld_options[ld_noptions++] = NULL;
		status = c_exec(P_WAIT, run_name, ld_options);

		if (status) {
			fprintf(stderr, "*** %s failed (%d)***\n", ld_options[1], status);
			exit(status);
		}

		genexp_options[0] = GENEXP;
		genexp_options[1] = outfile;
		genexp_options[2] = exp_file(outfile);
		genexp_options[3] = NULL;
		status = c_exec(P_WAIT, GENEXP, genexp_options);

		if (status) {
			fprintf(stderr, "*** %s failed (%d) ***\n", ld_options[1],status);
			exit(status);
		}
		if (my_option.make_map || my_option.all_map) {
			char name_file[80];
			FILE *nm;
			sprintf(name_file,"%s.map",outfile);
			nm = fopen(name_file,"w");
			if (nm ) {
				dup2(fileno(nm), 1);
				if (my_option.all_map) {
					name_options[2] = outfile;
					name_options[3] = NULL;
					}
				else {
					name_options[2] = "-g";
					name_options[3] = outfile;
					name_options[4] = NULL;
					}
				if (! c_exec(P_WAIT, run_name, name_options) )
					remove(outfile);
				close(1);
			}
		}
	}

	exit(0);
}


int
compile_file (char *tmp_file[4])
{
	int  status;
	char cmd_line[256];
	char *p;
	if (tmp_file[0])  smode = from_cpp;
	else if (tmp_file[1]) smode = from_cc1;
	else if (tmp_file[2]) smode = from_gas;
	else smode = from_ld;
	
	if (tmp_file[0] && tmp_file[1] && tmp_file[2]) {
		cpp_options[cpp_noptions + 0] = tmp_file[0];
		cpp_options[cpp_noptions + 1] = tmp_file[1];
		cpp_options[cpp_noptions + 2] = NULL;
		status = c_exec(P_WAIT, run_name, cpp_options);

		if (status) {
			remove(tmp_file[1]);
			fprintf(stderr, "*** %s failed (%d) ***\n", cpp_options[1],status);
			return 0;
		}

		cc1_options[cc1_noptions + 0] = tmp_file[1];
		cc1_options[cc1_noptions + 1] = "-o";
		cc1_options[cc1_noptions + 2] = tmp_file[2];
		cc1_options[cc1_noptions + 3] = NULL;
		status = c_exec(P_WAIT, run_name, cc1_options);

		if (smode == from_cpp)
			remove(tmp_file[1]);

		if (status) {
			fprintf(stderr, "*** %s failed (%d)***\n", cc1_options[1],status);
			return 0;
		}
	}

	if (tmp_file[2] && tmp_file[3]) {
		gas_options[gas_noptions + 0] = tmp_file[2];
		gas_options[gas_noptions + 1] = "-o";
		gas_options[gas_noptions + 2] = tmp_file[3];
		gas_options[gas_noptions + 3] = NULL;
		status = c_exec(P_WAIT, run_name, gas_options);

		if (mode != TO_ASM && (smode == from_cpp || smode == from_cc1))
			remove(tmp_file[2]);

		if (status) {
			fprintf(stderr, "*** %s failed (%d)***\n", gas_options[1],status);
			return 0;
		}
	}

	return 1;
}