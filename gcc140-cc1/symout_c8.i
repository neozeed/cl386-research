#line 1 "symout.c"



















#line 1 "c:\\msvc32s\\include\\stdio.h"
























#line 26 "c:\\msvc32s\\include\\stdio.h"
#line 27 "c:\\msvc32s\\include\\stdio.h"



typedef unsigned int size_t;

#line 33 "c:\\msvc32s\\include\\stdio.h"


typedef unsigned short wchar_t;

#line 38 "c:\\msvc32s\\include\\stdio.h"


typedef wchar_t wint_t;
typedef wchar_t wctype_t;

#line 44 "c:\\msvc32s\\include\\stdio.h"


typedef char *	va_list;

#line 49 "c:\\msvc32s\\include\\stdio.h"
















#line 66 "c:\\msvc32s\\include\\stdio.h"





struct _iobuf {
	char *_ptr;
	int   _cnt;
	char *_base;
	int   _flag;
	int   _file;
	int   _charbuf;
	int   _bufsiz;
	char *_tmpfname;
	};
typedef struct _iobuf FILE;

#line 84 "c:\\msvc32s\\include\\stdio.h"






#line 91 "c:\\msvc32s\\include\\stdio.h"































#line 123 "c:\\msvc32s\\include\\stdio.h"
#line 124 "c:\\msvc32s\\include\\stdio.h"





 extern FILE _iob[];
#line 131 "c:\\msvc32s\\include\\stdio.h"





typedef long fpos_t;

#line 139 "c:\\msvc32s\\include\\stdio.h"


























 int __cdecl _filbuf(FILE *);
 int __cdecl _flsbuf(int, FILE *);

 FILE * __cdecl _fsopen(const char *, const char *, int);

 void __cdecl clearerr(FILE *);
 int __cdecl fclose(FILE *);
 int __cdecl _fcloseall(void);
 FILE * __cdecl _fdopen(int, const char *);
 int __cdecl feof(FILE *);
 int __cdecl ferror(FILE *);
 int __cdecl fflush(FILE *);
 int __cdecl fgetc(FILE *);
 int __cdecl _fgetchar(void);
 int __cdecl fgetpos(FILE *, fpos_t *);
 char * __cdecl fgets(char *, int, FILE *);
 int __cdecl _fileno(FILE *);
 int __cdecl _flushall(void);
 FILE * __cdecl fopen(const char *, const char *);
 int __cdecl fprintf(FILE *, const char *, ...);
 int __cdecl fputc(int, FILE *);
 int __cdecl _fputchar(int);
 int __cdecl fputs(const char *, FILE *);
 size_t __cdecl fread(void *, size_t, size_t, FILE *);
 FILE * __cdecl freopen(const char *, const char *, FILE *);
 int __cdecl fscanf(FILE *, const char *, ...);
 int __cdecl fsetpos(FILE *, const fpos_t *);
 int __cdecl fseek(FILE *, long, int);
 long __cdecl ftell(FILE *);
 size_t __cdecl fwrite(const void *, size_t, size_t, FILE *);
 int __cdecl getc(FILE *);
 int __cdecl getchar(void);
 char * __cdecl gets(char *);
 int __cdecl _getw(FILE *);
 void __cdecl perror(const char *);
 int __cdecl _pclose(FILE *);
 FILE * __cdecl _popen(const char *, const char *);
 int __cdecl printf(const char *, ...);
 int __cdecl putc(int, FILE *);
 int __cdecl putchar(int);
 int __cdecl puts(const char *);
 int __cdecl _putw(int, FILE *);
 int __cdecl remove(const char *);
 int __cdecl rename(const char *, const char *);
 void __cdecl rewind(FILE *);
 int __cdecl _rmtmp(void);
 int __cdecl scanf(const char *, ...);
 void __cdecl setbuf(FILE *, char *);
 int __cdecl setvbuf(FILE *, char *, int, size_t);
 int __cdecl _snprintf(char *, size_t, const char *, ...);
 int __cdecl sprintf(char *, const char *, ...);
 int __cdecl sscanf(const char *, const char *, ...);
 char * __cdecl _tempnam(char *, char *);
 FILE * __cdecl tmpfile(void);
 char * __cdecl tmpnam(char *);
 int __cdecl ungetc(int, FILE *);
 int __cdecl _unlink(const char *);
 int __cdecl vfprintf(FILE *, const char *, va_list);
 int __cdecl vprintf(const char *, va_list);
 int __cdecl _vsnprintf(char *, size_t, const char *, va_list);
 int __cdecl vsprintf(char *, const char *, va_list);


































#line 261 "c:\\msvc32s\\include\\stdio.h"


#line 264 "c:\\msvc32s\\include\\stdio.h"







































#line 304 "c:\\msvc32s\\include\\stdio.h"






#line 311 "c:\\msvc32s\\include\\stdio.h"
#line 21 "symout.c"
#line 1 "config.h"






































#line 1 "tm.h"




















#line 1 "config\\tm-i386.h"
































extern int target_flags;







  











































































































































































































   

enum reg_class {
  NO_REGS, AREG, DREG, ADREG, CREG, BREG, Q_REGS, SIREG, DIREG,
  INDEX_REGS, GENERAL_REGS, FLOAT_REGS, ALL_REGS, LIM_REG_CLASSES };

























































































































































































































































































































































































  













#line 642 "config\\tm-i386.h"














































































































































































































#line 849 "config\\tm-i386.h"






































#line 888 "config\\tm-i386.h"









































































































































































































#line 22 "tm.h"













#line 1 "config\\tmbs386.h"





































#line 39 "config\\tmbs386.h"






































  

















































































































 











#line 36 "tm.h"
















#line 53 "tm.h"












































#line 98 "tm.h"









#line 108 "tm.h"














#line 40 "config.h"









#line 1 "-setjmp.h"




#line 6 "-setjmp.h"
#line 50 "config.h"





#line 22 "symout.c"
#line 1 "tree.h"
























enum tree_code {
#line 1 "tree.def"




















 



















ERROR_MARK,





IDENTIFIER_NODE,




OP_IDENTIFIER,






TREE_LIST,



























VOID_TYPE,	







INTEGER_TYPE,



REAL_TYPE,



COMPLEX_TYPE,











ENUMERAL_TYPE,



BOOLEAN_TYPE,



CHAR_TYPE,



POINTER_TYPE,





OFFSET_TYPE,



REFERENCE_TYPE,






METHOD_TYPE,


FILE_TYPE,










ARRAY_TYPE,



SET_TYPE,



STRING_TYPE,







RECORD_TYPE,





UNION_TYPE,	







FUNCTION_TYPE,





LANG_TYPE,







LABEL_STMT,


GOTO_STMT,






RETURN_STMT,


EXPR_STMT,





WITH_STMT,

















LET_STMT,





IF_STMT,




EXIT_STMT,










CASE_STMT,


LOOP_STMT,


COMPOUND_STMT,


ASM_STMT,










INTEGER_CST,


REAL_CST,




COMPLEX_CST,



STRING_CST,



















































FUNCTION_DECL,
LABEL_DECL,
CONST_DECL,
TYPE_DECL,
VAR_DECL,
PARM_DECL,
RESULT_DECL,
FIELD_DECL,






COMPONENT_REF,


INDIRECT_REF,





OFFSET_REF,


BUFFER_REF,




ARRAY_REF,







CONSTRUCTOR,








COMPOUND_EXPR,


MODIFY_EXPR,



INIT_EXPR,



NEW_EXPR,
DELETE_EXPR,




PUSH_EXPR,
POP_EXPR,





COND_EXPR,






CALL_EXPR,




METHOD_CALL_EXPR,









WITH_CLEANUP_EXPR,



PLUS_EXPR,
MINUS_EXPR,
MULT_EXPR,






TRUNC_DIV_EXPR,


CEIL_DIV_EXPR,


FLOOR_DIV_EXPR,


ROUND_DIV_EXPR,


TRUNC_MOD_EXPR,
CEIL_MOD_EXPR,
FLOOR_MOD_EXPR,
ROUND_MOD_EXPR,





RDIV_EXPR,



EXACT_DIV_EXPR,






FIX_TRUNC_EXPR,
FIX_CEIL_EXPR,
FIX_FLOOR_EXPR,
FIX_ROUND_EXPR,


FLOAT_EXPR,



EXPON_EXPR,


NEGATE_EXPR,

MIN_EXPR,
MAX_EXPR,
ABS_EXPR,
FFS_EXPR,







LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,


BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_ANDTC_EXPR,
BIT_NOT_EXPR,






TRUTH_ANDIF_EXPR,
TRUTH_ORIF_EXPR,
TRUTH_AND_EXPR,
TRUTH_OR_EXPR,
TRUTH_NOT_EXPR,







LT_EXPR,
LE_EXPR,
GT_EXPR,
GE_EXPR,
EQ_EXPR,
NE_EXPR,


IN_EXPR,
SET_LE_EXPR,
CARD_EXPR,
RANGE_EXPR,




CONVERT_EXPR,


NOP_EXPR,






SAVE_EXPR,





RTL_EXPR,



ADDR_EXPR,




REFERENCE_EXPR,





WRAPPER_EXPR,
ANTI_WRAPPER_EXPR,



ENTRY_VALUE_EXPR,



COMPLEX_EXPR,



CONJ_EXPR,



REALPART_EXPR,
IMAGPART_EXPR,




PREDECREMENT_EXPR,
PREINCREMENT_EXPR,
POSTDECREMENT_EXPR,
POSTINCREMENT_EXPR,







#line 27 "tree.h"

  LAST_AND_UNUSED_TREE_CODE	

};











extern char *tree_code_type[];



extern int tree_code_length[];






enum machine_mode {
#line 1 "machmode.def"






































































VOIDmode,

QImode,		
HImode,



PSImode,
SImode,
PDImode,
DImode,
TImode,
QFmode,
HFmode,	
SFmode,
DFmode,
XFmode,  
TFmode,
CQImode,
CHImode,  
CSImode,
CDImode,
CTImode,
CQFmode,
CHFmode, 
CSFmode,
CDFmode,
CXFmode,
CTFmode,



BImode,	



BLKmode,


EPmode,










#line 55 "tree.h"
MAX_MACHINE_MODE };





#line 62 "tree.h"



#line 66 "tree.h"




enum built_in_function
{
  NOT_BUILT_IN,
  BUILT_IN_ALLOCA,
  BUILT_IN_ABS,
  BUILT_IN_FABS,
  BUILT_IN_LABS,
  BUILT_IN_FFS,
  BUILT_IN_DIV,
  BUILT_IN_LDIV,
  BUILT_IN_FFLOOR,
  BUILT_IN_FCEIL,
  BUILT_IN_FMOD,
  BUILT_IN_FREM,
  BUILT_IN_MEMCPY,
  BUILT_IN_MEMCMP,
  BUILT_IN_MEMSET,
  BUILT_IN_FSQRT,
  BUILT_IN_GETEXP,
  BUILT_IN_GETMAN,
  BUILT_IN_SAVEREGS,
  BUILT_IN_CLASSIFY_TYPE,
  BUILT_IN_NEXT_ARG,

  
  BUILT_IN_NEW,
  BUILT_IN_VEC_NEW,
  BUILT_IN_DELETE,
  BUILT_IN_VEC_DELETE
};



















typedef union tree_node *tree;








struct tree_common
{
  int uid;
  union tree_node *chain;
  union tree_node *type;
  unsigned char code : 8;

  unsigned external_attr : 1;
  unsigned public_attr : 1;
  unsigned static_attr : 1;
  unsigned volatile_attr : 1;
  unsigned packed_attr : 1;
  unsigned readonly_attr : 1;
  unsigned literal_attr : 1;
  unsigned nonlocal_attr : 1;
  unsigned permanent_attr : 1;
  unsigned addressable_attr : 1;
  unsigned regdecl_attr : 1;
  unsigned this_vol_attr : 1;
  unsigned unsigned_attr : 1;
  unsigned asm_written_attr: 1;
  unsigned inline_attr : 1;
  unsigned used_attr : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  
};




















































































































































struct tree_int_cst
{
  char common[sizeof (struct tree_common)];
  long int_cst_low;
  long int_cst_high;
};














#line 1 "real.h"





























#line 31 "real.h"




#line 36 "real.h"




#line 41 "real.h"




extern double ldexp ();
#line 47 "real.h"




extern double atof ();
#line 53 "real.h"




#line 58 "real.h"




#line 63 "real.h"




union real_extract 
{
  double d;
  int i[sizeof (double) / sizeof (int)];
};




















double real_value_from_int_cst ();

#line 95 "real.h"
#line 326 "tree.h"

struct tree_real_cst
{
  char common[sizeof (struct tree_common)];
  struct rtx_def *rtl;	

  double real_cst;
};





struct tree_string
{
  char common[sizeof (struct tree_common)];
  struct rtx_def *rtl;	

  int length;
  char *pointer;
};





struct tree_complex
{
  char common[sizeof (struct tree_common)];
  struct rtx_def *rtl;	

  union tree_node *real;
  union tree_node *imag;
};






struct tree_identifier
{
  char common[sizeof (struct tree_common)];
  int length;
  char *pointer;
};





struct tree_list
{
  char common[sizeof (struct tree_common)];
  union tree_node *purpose;
  union tree_node *value;
};




















struct tree_exp
{
  char common[sizeof (struct tree_common)];
  int complexity;
  union tree_node *operands[1];
};
































struct tree_type
{
  char common[sizeof (struct tree_common)];
  union tree_node *values;
  union tree_node *sep;
  union tree_node *size;

  enum machine_mode mode : 8;
  unsigned char size_unit;
  unsigned char align;
  unsigned char sep_unit;

  union tree_node *pointer_to;
  union tree_node *reference_to;
  int parse_info;
  int symtab_address;
  union tree_node *name;
  union tree_node *max;
  union tree_node *next_variant;
  union tree_node *main_variant;
  union tree_node *basetypes;
  union tree_node *noncopied_parts;
  
  struct lang_type *lang_specific;
};































struct tree_decl
{
  char common[sizeof (struct tree_common)];
  char *filename;
  int linenum;
  union tree_node *size;
  enum machine_mode mode : 8;
  unsigned char size_unit;
  unsigned char align;
  unsigned char voffset_unit;
  union tree_node *name;
  union tree_node *context;
  int offset;
  union tree_node *voffset;
  union tree_node *arguments;
  union tree_node *result;
  union tree_node *initial;
  char *print_name;
  char *assembler_name;
  struct rtx_def *rtl;	

  int frame_size;		
  struct rtx_def *saved_insns;	


  int block_symtab_address;
  
  struct lang_decl *lang_specific;
};













struct tree_stmt
{
  char common[sizeof (struct tree_common)];
  char *filename;
  int linenum;
  union tree_node *body;
};









struct tree_if_stmt
{
  char common[sizeof (struct tree_common)];
  char *filename;
  int linenum;
  union tree_node *cond, *thenpart, *elsepart;
};












struct tree_bind_stmt
{
  char common[sizeof (struct tree_common)];
  char *filename;
  int linenum;
  union tree_node *body, *vars, *supercontext, *bind_size, *type_tags;
  union tree_node *subblocks;
};






struct tree_case_stmt
{
  char common[sizeof (struct tree_common)];
  char *filename;
  int linenum;
  union tree_node *index, *case_list;
};





union tree_node
{
  struct tree_common common;
  struct tree_int_cst int_cst;
  struct tree_real_cst real_cst;
  struct tree_string string;
  struct tree_complex complex;
  struct tree_identifier identifier;
  struct tree_decl decl;
  struct tree_type type;
  struct tree_list list;
  struct tree_exp exp;
  struct tree_stmt stmt;
  struct tree_if_stmt if_stmt;
  struct tree_bind_stmt bind_stmt;
  struct tree_case_stmt case_stmt;
};

extern char *oballoc ();
extern char *permalloc ();





extern tree make_node ();





extern tree copy_node ();



extern tree copy_list ();




extern tree get_identifier ();



extern tree build_int_2 ();
extern tree build_real ();
extern tree build_real_from_string ();
extern tree build_real_from_int_cst ();
extern tree build_complex ();
extern tree build_string ();
extern tree build ();
extern tree build_nt ();
extern tree build_tree_list ();
extern tree build_op_identifier ();
extern tree build_decl ();
extern tree build_let ();



extern tree make_signed_type ();
extern tree make_unsigned_type ();
extern void fixup_unsigned_type ();
extern tree build_pointer_type ();
extern tree build_reference_type ();
extern tree build_index_type ();
extern tree build_array_type ();
extern tree build_function_type ();
extern tree build_method_type ();
extern tree build_offset_type ();
extern tree array_type_nelts ();



extern tree build_binary_op ();
extern tree build_indirect_ref ();
extern tree build_unary_op ();








extern tree build_type_variant ();






extern void layout_type ();






extern tree type_hash_canon ();









extern void layout_decl ();







extern tree fold ();





extern tree combine ();

extern tree convert ();
extern tree convert_units ();
extern tree size_in_bytes ();
extern tree genop ();
extern tree build_int ();
extern tree get_pending_sizes ();



extern tree sizetype;





extern tree chainon ();



extern tree tree_cons (), perm_tree_cons (), temp_tree_cons ();
extern tree saveable_tree_cons ();



extern tree tree_last ();



extern tree nreverse ();




extern int list_length ();



extern int integer_zerop ();



extern int integer_onep ();




extern int integer_all_onesp ();






extern int type_unsigned_p ();




extern int staticp ();




extern int lvalue_or_else ();





extern tree save_expr ();





extern tree stabilize_reference ();






extern tree get_unwidened ();






extern tree get_narrower ();






extern tree type_for_size ();






extern tree unsigned_type ();






extern tree signed_type ();



extern tree get_floating_type ();






extern char *function_cannot_inline_p ();




extern tree integer_zero_node;


extern tree integer_one_node;


extern tree size_zero_node;


extern tree size_one_node;


extern tree null_pointer_node;


extern tree error_mark_node;


extern tree void_type_node;


extern tree integer_type_node;


extern tree unsigned_type_node;


extern tree char_type_node;



extern char *input_filename;


extern int lineno;



extern int pedantic;




extern int immediate_size_expand;



extern tree current_function_decl;



extern int current_function_calls_setjmp;



extern int all_types_permanent;



extern tree expand_start_stmt_expr ();
extern tree expand_end_stmt_expr ();
extern void expand_expr_stmt (), clear_last_expr ();
extern void expand_label (), expand_goto (), expand_asm ();
extern void expand_start_cond (), expand_end_cond ();
extern void expand_start_else (), expand_end_else ();
extern void expand_start_loop (), expand_start_loop_cnt_elsewhere ();
extern void expand_loop_continue_here ();
extern void expand_end_loop ();
extern int expand_continue_loop ();
extern int expand_exit_loop (), expand_exit_loop_if_false ();
extern int expand_exit_something ();

extern void expand_start_delayed_expr ();
extern tree expand_end_delayed_expr ();
extern void expand_emit_delayed_expr ();

extern void expand_null_return (), expand_return ();
extern void expand_start_bindings (), expand_end_bindings ();
extern void expand_start_case (), expand_end_case ();
extern int pushcase (), pushcase_range ();
extern void expand_start_function (), expand_end_function ();
#line 23 "symout.c"
#line 1 "symseg.h"




































































enum language {language_c};

struct symbol_root
{
  int format;			
  int length;			
  int ldsymoff;			
  int textrel;			
  int datarel;			
  int bssrel;			
  char *filename;		
  char *filedir;		
  struct blockvector *blockvector; 
  struct typevector *typevector; 
  enum language language;	
  char *version;		
  char *compilation;		
  int databeg;			
  int bssbeg;			
  struct sourcevector *sourcevector; 
};






struct typevector
{
  int length;			
  struct type *type[1];
};



enum type_code
{
  TYPE_CODE_UNDEF,		
  TYPE_CODE_PTR,		
  TYPE_CODE_ARRAY,		
  TYPE_CODE_STRUCT,		
  TYPE_CODE_UNION,		
  TYPE_CODE_ENUM,		
  TYPE_CODE_FUNC,		
  TYPE_CODE_INT,		
  TYPE_CODE_FLT,		
  TYPE_CODE_VOID,		
  TYPE_CODE_SET,		
  TYPE_CODE_RANGE,		
  TYPE_CODE_PASCAL_ARRAY,	
};






struct type
{
  
  enum type_code code;
  


  char *name;
  
  int length;
  



  struct type *target_type;
  


 
  struct type *pointer_type;
  



  struct type *function_type;
  
  short flags;
  
  short nfields;
  












  struct field
    {
      



      int bitpos;
      


      int bitsize;
      


      struct type *type;
      

      char *name;
    } *fields;
};



























struct blockvector
{
  
  int nblocks;
  
  struct block *block[1];
};

struct block
{
  



  int startaddr, endaddr;
  








  struct symbol *function;
  
  




  struct block *superblock;
  
  int nsyms;
  
  struct symbol *sym[1];
};























enum namespace
{
  UNDEF_NAMESPACE, VAR_NAMESPACE, STRUCT_NAMESPACE, LABEL_NAMESPACE,
};



enum address_class
{
  LOC_UNDEF,		
  LOC_CONST,		
  LOC_STATIC,		
  LOC_REGISTER,		
  LOC_ARG,		
  LOC_LOCAL,		
  LOC_TYPEDEF,		


  LOC_LABEL,		
  LOC_BLOCK,		

  LOC_EXTERNAL,		




  LOC_CONST_BYTES	
};

struct symbol
{
  
  char *name;
  
  enum namespace namespace;
  
  enum address_class class;
  
  struct type *type;
  

  union
    {
      long value;
      struct block *block;      
      char *bytes;		
    }
  value;
};





struct sourcevector
{
  int length;			
  struct source *source[1];	
};


 
struct line
{
  int linenum;
  int address;
};



struct source
{
  char *name;			
  int nlines;			
  struct line lines[1];	
};
#line 24 "symout.c"
#line 1 "rtl.h"

























enum rtx_code  {


#line 1 "rtl.def"



















































UNKNOWN ,



NIL ,






EXPR_LIST ,



INSN_LIST ,






































MATCH_OPERAND ,




MATCH_DUP ,






MATCH_OPERATOR ,


















DEFINE_INSN ,






DEFINE_PEEPHOLE ,



DEFINE_COMBINE ,











DEFINE_EXPAND ,
   




SEQUENCE ,





ADDRESS ,












INSN ,





JUMP_INSN ,





CALL_INSN ,


BARRIER ,






CODE_LABEL ,
     








NOTE ,





INLINE_HEADER ,




   

PARALLEL ,







ASM_INPUT ,













ASM_OPERANDS ,



ADDR_VEC ,





ADDR_DIFF_VEC ,











SET ,




USE ,




CLOBBER ,





CALL ,



RETURN ,






CONST_INT ,








CONST_DOUBLE ,





CONST ,



PC ,




REG ,









SUBREG ,












STRICT_LOW_PART ,



MEM ,





LABEL_REF ,





SYMBOL_REF ,






CC0 ,

















QUEUED ,











IF_THEN_ELSE ,


COMPARE ,


PLUS ,


MINUS ,


NEG ,

MULT ,


DIV ,

MOD ,



UMULT ,
UDIV ,
UMOD ,


AND ,

IOR ,

XOR ,

NOT ,






LSHIFT ,
ASHIFT ,
ROTATE ,




ASHIFTRT ,
LSHIFTRT ,
ROTATERT ,








PRE_DEC ,
PRE_INC ,
POST_DEC ,
POST_INC ,



NE ,
EQ ,
GE ,
GT ,
LE ,
LT ,
GEU ,
GTU ,
LEU ,
LTU ,




SIGN_EXTEND ,


ZERO_EXTEND ,


TRUNCATE ,


FLOAT_EXTEND ,
FLOAT_TRUNCATE ,


FLOAT ,







FIX ,


UNSIGNED_FLOAT ,




UNSIGNED_FIX ,


ABS ,


SQRT ,




FFS ,










SIGN_EXTRACT ,


ZERO_EXTRACT ,







#line 30 "rtl.h"


  LAST_AND_UNUSED_RTX_CODE};	




				

extern int rtx_length[];


extern char *rtx_name[];


extern char *rtx_format[];

























extern char *mode_name[];


enum mode_class { MODE_RANDOM, MODE_INT, MODE_FLOAT,
		  MODE_COMPLEX_INT, MODE_COMPLEX_FLOAT, MODE_FUNCTION };




extern enum mode_class mode_class[];




extern int mode_size[];




extern int mode_unit_size[];















extern enum machine_mode mode_wider_mode[];




typedef union rtunion_def
{
  int rtint;
  char *rtstr;
  struct rtx_def *rtx;
  struct rtvec_def *rtvec;
  enum machine_mode rttype;
} rtunion;



typedef struct rtx_def
{



  
  enum rtx_code code : 16;
#line 130 "rtl.h"
  
  enum machine_mode mode : 8;
  

  unsigned int jump : 1;
  
  unsigned int call : 1;
  




  unsigned int unchanging : 1;
  
  

  

  unsigned int volatil : 1;
  


  unsigned int in_struct : 1;
  


  unsigned int used : 1;
  


  unsigned integrated : 1;
  


  rtunion fld[1];
} *rtx;











#line 178 "rtl.h"











typedef struct rtvec_def{
  unsigned num_elem;		
  rtunion elem[1];
} *rtvec;




























































































enum reg_note { REG_DEAD = 1, REG_INC = 2, REG_EQUIV = 3, REG_WAS_0 = 4,
		REG_EQUAL = 5, REG_RETVAL = 6, REG_LIBCALL = 7,
		REG_NONNEG = 8, REG_UNSET = 9 };






extern char *reg_note_name[];




















































extern char *note_insn_name[];









































































































extern rtx rtx_alloc ();
extern rtvec rtvec_alloc ();
extern rtx find_reg_note ();
extern rtx gen_rtx ();
extern rtx copy_rtx ();
extern rtvec gen_rtvec ();
extern rtvec gen_rtvec_v ();
extern rtx gen_reg_rtx ();
extern rtx gen_label_rtx ();
extern rtx gen_inline_header_rtx ();
extern rtx gen_lowpart ();
extern rtx gen_highpart ();
extern int subreg_lowpart_p ();
extern rtx make_safe_from ();
extern rtx memory_address ();
extern rtx get_insns ();
extern rtx get_last_insn ();
extern rtx start_sequence ();
extern rtx gen_sequence ();
extern rtx expand_expr ();
extern rtx output_constant_def ();
extern rtx immed_real_const ();
extern rtx immed_real_const_1 ();
extern rtx immed_double_const ();
extern rtx force_const_double_mem ();
extern rtx force_const_mem ();
extern rtx get_parm_real_loc ();
extern rtx assign_stack_local ();
extern rtx protect_from_queue ();
extern void emit_queue ();
extern rtx emit_move_insn ();
extern rtx emit_insn ();
extern rtx emit_jump_insn ();
extern rtx emit_call_insn ();
extern rtx emit_call_insn_before ();
extern rtx emit_insn_before ();
extern rtx emit_insn_after ();
extern rtx emit_label ();
extern rtx emit_barrier ();
extern rtx emit_barrier_after ();
extern rtx emit_note ();
extern rtx emit_line_note ();
extern rtx emit_line_note_force ();
extern rtx prev_real_insn ();
extern rtx next_real_insn ();
extern rtx next_nondeleted_insn ();
extern rtx plus_constant ();
extern rtx find_equiv_reg ();
extern rtx delete_insn ();
extern rtx adj_offsettable_operand ();





extern int max_parallel;

extern int asm_noperands ();
extern char *decode_asm_operands ();



extern enum reg_class reg_preferred_class ();
#line 517 "rtl.h"

extern rtx get_first_nonparm_insn ();


extern rtx pc_rtx;
extern rtx cc0_rtx;
extern rtx const0_rtx;
extern rtx const1_rtx;
extern rtx fconst0_rtx;
extern rtx dconst0_rtx;












extern rtx stack_pointer_rtx;
extern rtx frame_pointer_rtx;
extern rtx arg_pointer_rtx;
extern rtx struct_value_rtx;
extern rtx struct_value_incoming_rtx;
extern rtx static_chain_rtx;
extern rtx static_chain_incoming_rtx;
#line 25 "symout.c"
#line 1 "gdbfiles.h"




struct gdbfile
{
  struct gdbfile *next;
  char *name;			
  int filenum;			
  int nlines;			
};



extern struct gdbfile *gdbfiles;
#line 26 "symout.c"





#line 1 "c:\\msvc32s\\include\\stddef.h"



































#line 37 "c:\\msvc32s\\include\\stddef.h"
#line 38 "c:\\msvc32s\\include\\stddef.h"











extern int errno;
#line 51 "c:\\msvc32s\\include\\stddef.h"





typedef int ptrdiff_t;

#line 59 "c:\\msvc32s\\include\\stddef.h"























#line 83 "c:\\msvc32s\\include\\stddef.h"
#line 32 "symout.c"




#line 1 "gstab.h"








enum __stab_debug_code
{
#line 1 "stab.def"



















N_GSYM=0x20,



N_FNAME=0x22,




N_FUN=0x24,


N_STSYM=0x26,


N_LCSYM=0x28,



N_MAIN=0x2a,


N_RSYM=0x40,


N_SSYM=0x60,



N_PSYM=0xa0,



N_LSYM=0x80,


N_ENTRY=0xa4,



N_SO=0x64,



N_SOL=0x84,



N_SLINE=0x44,

N_DSLINE=0x46,

N_BSLINE=0x48,




N_BINCL=0x82,




N_EINCL=0xa2,


N_EXCL=0xc2,





N_LBRAC=0xc0,


N_RBRAC=0xe0,


N_BCOMM=0xe2,


N_ECOMM=0xe4,


N_ECOML=0xe8,


N_LENG=0xfe,



N_PC=0x30,


N_M2C=0x42,

N_SCOPE=0xc4,
#line 12 "gstab.h"
};



#line 17 "gstab.h"
#line 37 "symout.c"


#line 40 "symout.c"
#line 41 "symout.c"




#line 46 "symout.c"









static FILE *symfile;


static char *symfile_name;


static FILE *asmfile;





static int next_address;




struct typevec_elt
{
  int address;
  struct typevec_elt *next;
};

static struct typevec_elt *typevec;



static int total_types;




static tree temporary_fwd_refs;
static tree permanent_fwd_refs;




struct blockvec_elt
{
  int address;
  struct blockvec_elt *next;
};

static struct blockvec_elt *blockvec;



static int total_blocks;

static void symout_range_bounds ();
static void symout_array_domain ();
static void symout_record_fields ();
static void symout_enum_values ();
static void symout_record_field_names ();
static void symout_enum_value_names ();
static int subrange_p ();
static void symout_strings_skip ();
static void symout_strings_print ();





void
symout_init (filename, asm_file, sourcename)
     char *filename;
     FILE *asm_file;
     char *sourcename;
{
  struct symbol_root buffer;





  asmfile = asm_file;
  fprintf (asmfile, ".text 0\n.gdbbeg 0\n.gdbbeg 1\n");
  fprintf (asmfile,
	   "Ltext:\t.stabs \"%s\",%d,0,0,Ltext\n",
	   sourcename, 0x64);
  fprintf (asmfile, ".data 0\nLdata:\n");
  ( fputs (".lcomm ", (asmfile)), assemble_name ((asmfile), ("Lbss")), fprintf ((asmfile), ",%u\n", (0)));
  fprintf (asmfile, ".gdbsym Ldata,%d\n",
	   (char *) &buffer.databeg - (char *) &buffer);
  fprintf (asmfile, ".gdbsym Lbss,%d\n",
	   (char *) &buffer.bssbeg - (char *) &buffer);

  symfile = fopen (filename, "w");
  if (symfile == 0)
    pfatal_with_name (filename);
  symfile_name = (char *) malloc (strlen (filename) + 1);
  strcpy (symfile_name, filename);

  typevec = 0;
  blockvec = 0;
  total_types = 0;
  total_blocks = 0;

  permanent_fwd_refs = 0;
  temporary_fwd_refs = 0;

  memset (&buffer,0,sizeof buffer);
  fwrite (&buffer, sizeof buffer, 1, symfile);

  next_address = sizeof buffer;
}









static void
symout_strings (p1, s1, p2, s2)
     char *p1;
     int s1;
     char *p2;
     int s2;
{
  symout_strings_print (p1, s1, p2, s2);
  symout_strings_skip (p1, s1, p2, s2);
}



static void
symout_strings_print (p1, s1, p2, s2)
     char *p1;
     int s1;
     char *p2;
     int s2;
{
  register int total;

  if (p1 && s1 == 0)
    s1 = strlen (p1);
  if (p2 && s2 == 0)
    s2 = strlen (p2);

  if (p1)
    fwrite (p1, s1, 1, symfile);
  if (p2)
    fwrite (p2, s2, 1, symfile);
  (--(symfile)->_cnt >= 0 ? 0xff & (*(symfile)->_ptr++ = (char)(0)) : _flsbuf((0),(symfile)));

  total = s1 + s2 + 1;
  while (total % sizeof (int))
    {
      (--(symfile)->_cnt >= 0 ? 0xff & (*(symfile)->_ptr++ = (char)(0)) : _flsbuf((0),(symfile)));
      total++;
    }
}



static void
symout_strings_skip (p1, s1, p2, s2)
     char *p1;
     int s1;
     char *p2;
     int s2;
{
  register int total;

  if (p1 && s1 == 0)
    s1 = strlen (p1);
  if (p2 && s2 == 0)
    s2 = strlen (p2);

  total = s1 + s2 + 1;
  while (total % sizeof (int))
    total++;

  next_address += total;
}














void
symout_types (types)
     tree types;
{
  struct typerec
  {
    int number;
    int address;
    int nfields;
    int fields_address;
    int name_address;
    char *name;
    char *name_prefix;
  };

  register int n_types, i;
  register struct typerec *records;
  register tree next;
  struct type buffer;
  int this_run_address = next_address;

  

  for (next = types, n_types = 0;
       next;
       next = ((next)->common.chain), n_types++);

  records = (struct typerec *) alloca (n_types * sizeof (struct typerec));

  


  for (next = types, i = 0;
       next;
       next = ((next)->common.chain), i++)
    {
      register struct typevec_elt *velt
	= (struct typevec_elt *) xmalloc (sizeof (struct typevec_elt));
      velt->next = typevec;
      typevec = velt;

      total_types++;

      if (((next)->type.name))
	{
	  records[i].name_address = next_address;

	  if (((enum tree_code) (((next)->type.name))->common.code) == IDENTIFIER_NODE)
	    {
	      records[i].name = ((((next)->type.name))->identifier.pointer);
	      switch (((enum tree_code) (next)->common.code))
		{
		case RECORD_TYPE:
		  records[i].name_prefix = "struct ";
		  break;

		case UNION_TYPE:
		  records[i].name_prefix = "union ";
		  break;

		case ENUMERAL_TYPE:
		  records[i].name_prefix = "enum ";
		  break;
		}
	    }
	  else
	    {
	      records[i].name = ((((((next)->type.name))->decl.name))->identifier.pointer);
	      records[i].name_prefix = 0;
	    }
	  symout_strings_skip (records[i].name_prefix, 0,
			       records[i].name, 0);

	}
      else
	{
	  records[i].name = 0;
	  records[i].name_address = 0;
	  records[i].name_prefix = 0;
	}

      

      if (((next)->type.pointer_to) != 0
	  && ((((next)->type.pointer_to))->type.symtab_address) != 0
	  && ((((next)->type.pointer_to))->type.symtab_address) < this_run_address)
	{
	  int pos = ftell (symfile);
	  int myaddr = next_address;
	  int wheretogo;
	  fflush (symfile);





#line 345 "symout.c"
	
	
	wheretogo=((((next)->type.pointer_to))->type.symtab_address);
	wheretogo=wheretogo+(size_t)&(((struct type *)0)->target_type);
	fseek (symfile,wheretogo,0);

	  fseek (symfile,
		 (((((next)->type.pointer_to))->type.symtab_address)
		  + (size_t)&(((struct type *)0)->target_type)),
		 0);

	
#line 358 "symout.c"
	  fwrite (&myaddr, sizeof (int), 1, symfile);
	  fflush (symfile);
	  fseek (symfile, pos, 0);
	}

      records[i].address = next_address;
      ((next)->type.symtab_address) = next_address;
      velt->address = next_address;
      next_address += sizeof (struct type);
      records[i].nfields = 0;
      records[i].fields_address = 0;
      switch (((enum tree_code) (next)->common.code))
	{
	case ARRAY_TYPE:
	  records[i].nfields
	    = (((next)->type.values)
	       ? ! integer_zerop (((((next)->type.values))->type.sep))
	       : 0 );
	  break;

	case INTEGER_TYPE:
	  if (subrange_p (next))
	    buffer.nfields = 2;
	  break;

	case RECORD_TYPE:
	case UNION_TYPE:
	case ENUMERAL_TYPE:
	  records[i].nfields = list_length (((next)->type.values));
	}
      if (records[i].nfields)
	records[i].fields_address = next_address;
      next_address += records[i].nfields * sizeof (struct field);
    }

  


  for (next = types, i = 0;
       next;
       next = ((next)->common.chain), i++)
    {
      if (records[i].name)
	symout_strings_print (records[i].name_prefix, 0,
			      records[i].name, 0);

      if (((next)->common.type) != 0 && ((((((next)->common.type))->type.main_variant))->type.symtab_address) == 0)
	{
	  

	  if (((next)->common.permanent_attr))
	    permanent_fwd_refs
	      = perm_tree_cons (((next)->common.type), 0, permanent_fwd_refs);
	  else
	    temporary_fwd_refs
	      = tree_cons (((next)->common.type), 0, temporary_fwd_refs);
	}

      if (((next)->type.size) == 0)
	buffer.length = 0;
      else
	buffer.length
	  = (((((next)->type.size))->int_cst.int_cst_low)
	     * ((next)->type.size_unit) / 8);

      buffer.name = (char *) records[i].name_address;
      buffer.target_type = (struct type *) (((next)->common.type) ? ((((((next)->common.type))->type.main_variant))->type.symtab_address) : 0);

      buffer.pointer_type = 0;
      buffer.function_type = 0;
      buffer.flags
	= ((((enum tree_code) (next)->common.code) == INTEGER_TYPE || ((enum tree_code) (next)->common.code) == ENUMERAL_TYPE)
	   && ((next)->common.unsigned_attr))
	  ? 1 : 0;
      buffer.nfields = records[i].nfields;
      buffer.fields = (struct field *) records[i].fields_address;

      switch (((enum tree_code) (next)->common.code))
	{
	case INTEGER_TYPE:
	  buffer.code = TYPE_CODE_INT;
	  if (buffer.nfields)
	    buffer.code = TYPE_CODE_RANGE;
	  break;

	case REAL_TYPE:
	  buffer.code = TYPE_CODE_FLT;
	  break;

	case VOID_TYPE:
	  buffer.code = TYPE_CODE_VOID;
	  break;

	case POINTER_TYPE:
	  buffer.code = TYPE_CODE_PTR;
	  break;

	case ARRAY_TYPE:
	  if (buffer.nfields == 0)
	    buffer.code = TYPE_CODE_ARRAY;
	  else
	    buffer.code = TYPE_CODE_PASCAL_ARRAY;
	  break;

	case RECORD_TYPE:
	  buffer.code = TYPE_CODE_STRUCT;
	  break;

	case UNION_TYPE:
	  buffer.code = TYPE_CODE_UNION;
	  break;

	case FUNCTION_TYPE:
	  buffer.code = TYPE_CODE_FUNC;
	  break;

	case ENUMERAL_TYPE:
	  buffer.code = TYPE_CODE_ENUM;
	  break;

	default:
	  abort ();
	}

      fwrite (&buffer, sizeof buffer, 1, symfile);

      



      switch (((enum tree_code) (next)->common.code))
	{
	case ARRAY_TYPE:
	  if (buffer.nfields)
	    symout_array_domain (next);
	  break;

	case RECORD_TYPE:
	case UNION_TYPE:
	  symout_record_fields (next);
	  break;

	case ENUMERAL_TYPE:
	  symout_enum_values (next);
	  break;

	case INTEGER_TYPE:
	  if (buffer.nfields)
	    symout_range_bounds (next);
	}
    }

  


  for (next = types, i = 0;
       next;
       next = ((next)->common.chain), i++)
    {
      switch (((enum tree_code) (next)->common.code))
	{
	case RECORD_TYPE:
	case UNION_TYPE:
	  symout_record_field_names (next);
	  break;

	case ENUMERAL_TYPE:
	  symout_enum_value_names (next);
	  break;
	}
    }
}




static tree
filter_undefined_types (types)
     tree types;
{
  tree new = 0;
  tree next;

  for (next = types; next; next = ((next)->common.chain))
    if (((((next)->list.purpose))->type.symtab_address) == 0)
      {
	((((next)->list.purpose))->common.chain) = new;
	new = ((next)->list.purpose);
      }

  return new;
}





static int
subrange_p (type)
     tree type;
{
  int uns = ((type)->common.unsigned_attr);

  if (((type)->type.sep_unit) >= 32)
    {
      if (uns)
	return integer_zerop (((type)->type.sep))
	  && ((((type)->type.max))->int_cst.int_cst_low) == 0
	    && (((((type)->type.max))->int_cst.int_cst_high)
		== (1 << (((type)->type.sep_unit) - 32)) - 1);
      return ((((type)->type.sep))->int_cst.int_cst_low) == 0
	&& ((((type)->type.max))->int_cst.int_cst_low) == 0
	  && (((((type)->type.sep))->int_cst.int_cst_high)
	      == (-1) << (((type)->type.sep_unit) - 1 - 32))
	    && (((((type)->type.max))->int_cst.int_cst_high)
		== (1 << (((type)->type.sep_unit) - 1 - 32)) - 1);
    }

  if (uns)
    {
      int mask;

      if (((type)->type.sep_unit) == 32)
	
	mask = -1;
      else
	mask = (1 << ((type)->type.sep_unit)) - 1;

      return (integer_zerop (((type)->type.sep))
	      && (((((type)->type.max))->int_cst.int_cst_low) == mask));
    }
  else
    return ((((((type)->type.sep))->int_cst.int_cst_low)
	     == (-1) << (((type)->type.sep_unit) - 1))
	    && (((((type)->type.max))->int_cst.int_cst_low)
		== (1 << (((type)->type.sep_unit) - 1)) - 1));
}







static void
symout_array_domain (type)
     tree type;
{
  struct field buffer;

  buffer.bitpos = 0;
  buffer.bitsize = 0;
  buffer.type = (struct type *) ((((((type)->type.values))->type.main_variant))->type.symtab_address);
  buffer.name = 0;
  fwrite (&buffer, sizeof (struct field), 1, symfile);
}

static void
symout_range_bounds (type)
     tree type;
{
  struct field buffer;

  buffer.bitpos = ((((type)->type.sep))->int_cst.int_cst_low);
  buffer.bitsize = 0;
  buffer.type = (struct type *) ((((type)->type.main_variant))->type.symtab_address);
  buffer.name = 0;
  fwrite (&buffer, sizeof (struct field), 1, symfile);

  buffer.bitpos = ((((type)->type.max))->int_cst.int_cst_low);
  buffer.bitsize = 0;
  buffer.type = (struct type *) ((((type)->type.main_variant))->type.symtab_address);
  buffer.name = 0;
  fwrite (&buffer, sizeof (struct field), 1, symfile);
}

static void
symout_record_fields (type)
     tree type;
{
  struct field buffer;
  register tree field;

  for (field = ((type)->type.values); field; field = ((field)->common.chain))
    {
      buffer.bitpos = ((field)->decl.offset);
      buffer.bitsize
	= (((field)->common.packed_attr)
	   ? ((((field)->decl.size))->int_cst.int_cst_low) * ((field)->decl.size_unit)
	   : 0);
      buffer.type = (struct type *) ((((((field)->common.type))->type.main_variant))->type.symtab_address);
      if (((field)->decl.name))
	{
	  buffer.name = (char *) next_address;
	  symout_strings_skip (0, ((((field)->decl.name))->identifier.length), 0, 0);
	}
      else
	buffer.name = 0;
      fwrite (&buffer, sizeof (struct field), 1, symfile);
    }
}

static void
symout_enum_values (type)
     tree type;
{
  struct field buffer;
  register tree link, value;

  for (link = ((type)->type.values); link; link = ((link)->common.chain))
    {
      value = ((link)->list.value);
      buffer.bitpos = ((value)->int_cst.int_cst_low);
      buffer.bitsize = 0;
      buffer.type = (struct type *) ((((type)->type.main_variant))->type.symtab_address);
      buffer.name = (char *) next_address;
      symout_strings_skip (0, ((((link)->list.purpose))->identifier.length), 0, 0);
      fwrite (&buffer, sizeof buffer, 1, symfile);
    }
}







static void
symout_record_field_names (type)
     tree type;
{
  register tree field;

  for (field = ((type)->type.values); field; field = ((field)->common.chain))
    if (((field)->decl.name))
      symout_strings_print (((((field)->decl.name))->identifier.pointer),
			    ((((field)->decl.name))->identifier.length),
			    0, 0);
}

static void
symout_enum_value_names (type)
     tree type;
{
  register tree value;

  for (value = ((type)->type.values); value; value = ((value)->common.chain))
    symout_strings_print (((((value)->list.purpose))->identifier.pointer),
			  ((((value)->list.purpose))->identifier.length),
			  0, 0);
}









static void
symout_block_symbols (decls, addr_buffer, filter)
     tree decls;
     int *addr_buffer;
     int filter;
{
  register tree decl;
  struct symbol buffer;
  register int i;

  for (decl = decls, i = 0; decl; decl = ((decl)->common.chain))
    {
      register int name_address = next_address;

      if (filter == (((decl)->common.public_attr) ? 1 : 2))
	continue;

      



      if (((decl)->common.external_attr)
	  && (filter || ((enum tree_code) (((decl)->common.type))->common.code) == FUNCTION_TYPE))
	continue;

      if (((decl)->common.type) == error_mark_node)
	continue;

      symout_strings (((((decl)->decl.name))->identifier.pointer),
		      ((((decl)->decl.name))->identifier.length),
		      0, 0);
      addr_buffer[i] = next_address;
      buffer.name = (char *) name_address;
      buffer.namespace = VAR_NAMESPACE;
      buffer.type = (struct type *) ((((((decl)->common.type))->type.main_variant))->type.symtab_address);
      switch (((enum tree_code) (decl)->common.code))
	{
	case PARM_DECL:
	  buffer.class = LOC_ARG;
	  buffer.value.value = ((decl)->decl.offset) / 8;
	  break;

	case VAR_DECL:
	case RESULT_DECL:
	  if (((decl)->common.static_attr) || ((decl)->common.external_attr))
	    {
	      if (! ((decl)->common.public_attr) || ((decl)->decl.initial))
		{
		  char *str = ((((((decl)->decl.rtl))->fld[0].rtx))->fld[0].rtstr);
		  fprintf (asmfile, "\t.gdbsym ");
		  fprintf (asmfile, "_%s", str);
		  fprintf (asmfile, ",%d\n",
			   next_address + (char *)&buffer.value - (char *)&buffer);
		  buffer.class = LOC_STATIC;
		}
	      else
		


		buffer.class = LOC_EXTERNAL;
	    }
	  else
	    {
	      if (((((decl)->decl.rtl))->code) == REG)
		{
		  buffer.class = LOC_REGISTER;
		  buffer.value.value = ((((decl)->decl.rtl))->fld[0].rtint);
		  
		  if (buffer.value.value == -1)
		    buffer.class = LOC_CONST;
		}
	      else if (((((decl)->decl.rtl))->code) == MEM
		       && (((((((decl)->decl.rtl))->fld[0].rtx))->code) == MEM
			   || (((((((decl)->decl.rtl))->fld[0].rtx))->code) == REG
			       && ((((((decl)->decl.rtl))->fld[0].rtx))->fld[0].rtint) != 6)))
		







		{
		  tree ptype = ((((((decl)->common.type))->common.type))->type.pointer_to);
		  if (ptype == 0
		      || ((((ptype)->type.main_variant))->type.symtab_address) == 0)
		    continue;

		  buffer.type = (struct type *) ((((ptype)->type.main_variant))->type.symtab_address);


		  if (((((((decl)->decl.rtl))->fld[0].rtx))->code) == REG)
		    {
		      buffer.class = LOC_REGISTER;
		      buffer.value.value = ((((decl)->decl.rtl))->fld[0].rtint);
		      
		      if (buffer.value.value == -1)
			buffer.class = LOC_CONST;
		    }
		  else
		    {
		      register rtx addr = ((((decl)->decl.rtl))->fld[0].rtx);
		      if (((addr)->code) != PLUS && ((addr)->code) != MINUS)
			abort ();
		      if (((((addr)->fld[1].rtx))->code) != CONST_INT)
			abort ();
		      buffer.class = LOC_LOCAL;
		      buffer.value.value = ((((addr)->fld[1].rtx))->fld[0].rtint);
		      if (((addr)->code) == MINUS)
			buffer.value.value = - buffer.value.value;
		    }
		}
	      


	      else if (((((decl)->decl.rtl))->code) == MEM)
		{
		  register rtx addr = ((((decl)->decl.rtl))->fld[0].rtx);
		  if (((addr)->code) != PLUS && ((addr)->code) != MINUS)
		    abort ();
		  if (((((addr)->fld[1].rtx))->code) != CONST_INT)
		    abort ();
		  buffer.class = LOC_LOCAL;
		  buffer.value.value = ((((addr)->fld[1].rtx))->fld[0].rtint);
		  if (((addr)->code) == MINUS)
		    buffer.value.value = - buffer.value.value;
		}
	      else
		abort ();
	    }
	  break;

	case TYPE_DECL:
	  buffer.class = LOC_TYPEDEF;
	  buffer.value.value = 0;
	  break;

	case CONST_DECL:
	  buffer.class = LOC_CONST;
	  buffer.value.value = ((((decl)->decl.initial))->int_cst.int_cst_low);
	  break;

	case FUNCTION_DECL:
	  if (((decl)->decl.initial))
	    {
	      buffer.class = LOC_BLOCK;
	      buffer.value.value = ((decl)->decl.block_symtab_address);
	    }
	  else
	    buffer.class = LOC_EXTERNAL;
	}

      fwrite (&buffer, sizeof buffer, 1, symfile);
      next_address += sizeof buffer;
      i++;
    }
}





static void
symout_block_tags (tags, addr_buffer)
     tree tags;
     int *addr_buffer;
{
  register tree tag;
  struct symbol buffer;
  register int i;

  for (tag = tags, i = 0; tag; tag = ((tag)->common.chain), i++)
    {
      buffer.name = (char *) next_address;

      symout_strings (((((tag)->list.purpose))->identifier.pointer),
		      ((((tag)->list.purpose))->identifier.length),
		      0, 0);
      addr_buffer[i] = next_address;
      buffer.namespace = STRUCT_NAMESPACE;
      buffer.type = (struct type *) ((((((tag)->list.value))->type.main_variant))->type.symtab_address);
      buffer.class = LOC_TYPEDEF;
      buffer.value.value = 0;

      fwrite (&buffer, sizeof buffer, 1, symfile);
      next_address += sizeof buffer;
    }
}








int
symout_block (decls, tags, args, superblock_address)
     tree decls;
     tree tags;
     tree args;
     int superblock_address;
{
  register tree decl;
  register int i;
  register int *addr_buffer;
  struct block buffer;
  int n_decls, n_tags, n_args, total;
  register struct blockvec_elt *velt;
  int block_address;

  for (decl = decls, i = 0; decl; decl = ((decl)->common.chain))
    if (! ((decl)->common.external_attr)
	|| ((enum tree_code) (((decl)->common.type))->common.code) != FUNCTION_TYPE)
      i++;

  n_decls = i;

  for (decl = args, i = 0; decl; decl = ((decl)->common.chain), i++);
  n_args = i;

  for (decl = tags, i = 0; decl; decl = ((decl)->common.chain), i++);
  n_tags = i;

  total = n_decls + n_args + n_tags;

  addr_buffer = (int *) alloca (total * sizeof (int));

  symout_block_symbols (args, addr_buffer, 0);
  symout_block_symbols (decls, addr_buffer + n_args, 0);
  symout_block_tags (tags, addr_buffer + n_decls + n_args);

  velt = (struct blockvec_elt *) xmalloc (sizeof (struct blockvec_elt));
  velt->next = blockvec;
  velt->address = next_address;
  blockvec = velt;

  buffer.startaddr = 0;
  buffer.endaddr = 0;
  buffer.superblock = (struct block *) superblock_address;
  buffer.function = 0;
  buffer.nsyms = total;

  block_address = next_address;
  fwrite (&buffer, sizeof buffer - sizeof buffer.sym, 1, symfile);
  next_address += sizeof buffer - sizeof buffer.sym;

  fwrite (addr_buffer, sizeof (int), total, symfile);
  next_address += total * sizeof (int);

  fprintf (asmfile, "\t.gdbblock %d,%d\n", total_blocks + 2, block_address);
  total_blocks++;

  return block_address;
}









int
symout_function (stmt, args, superblock_address)
     register tree stmt;
     tree args;
     int superblock_address;
{
  int address = superblock_address;

  while (stmt)
    {
      switch (((enum tree_code) (stmt)->common.code))
	{
	case COMPOUND_STMT:
	case LOOP_STMT:
	  symout_function (((stmt)->stmt.body), 0, address);
	  break;

	case IF_STMT:
	  symout_function (((stmt)->if_stmt.thenpart), 0, address);
	  symout_function (((stmt)->if_stmt.elsepart), 0, address);
	  break;

	case LET_STMT:
	  
	  if (! ((stmt)->common.used_attr))
	    break;
	  address =
	    symout_block (((stmt)->bind_stmt.vars), ((stmt)->bind_stmt.type_tags), args,
			  superblock_address);

	  symout_function (((stmt)->bind_stmt.subblocks), 0, address);
	}
      stmt = ((stmt)->common.chain);
    }
  return address;
}

symout_function_end ()
{
  
  symout_types (filter_undefined_types (temporary_fwd_refs));
  temporary_fwd_refs = 0;
}








void
symout_top_blocks (decls, tags)
     tree decls;
     tree tags;
{
  register tree decl;
  register int i;
  register int *addr_buffer;
  struct block buffer;
  int n_decls, n_tags;
  register struct blockvec_elt *velt;
  int top_block_addr;

  

  for (decl = decls, i = 0; decl; decl = ((decl)->common.chain))
    if (((decl)->common.public_attr) && ! ((decl)->common.external_attr))
      i++;
  n_decls = i;

  addr_buffer = (int *) alloca (n_decls * sizeof (int));

  symout_block_symbols (decls, addr_buffer, 2);

  fprintf (asmfile, ".text 0\n\t.gdbend 0\n");
  fprintf (asmfile, "\t.gdbblock 0,%d\n", next_address);

  total_blocks++;
  velt = (struct blockvec_elt *) xmalloc (sizeof (struct blockvec_elt));
  velt->next = blockvec;
  velt->address = next_address;
  blockvec = velt;

  top_block_addr = next_address;

  buffer.startaddr = 0;
  buffer.endaddr = 0;
  buffer.superblock = 0;
  buffer.function = 0;
  buffer.nsyms = n_decls;;

  fwrite (&buffer, sizeof buffer - sizeof buffer.sym, 1, symfile);
  next_address += sizeof buffer - sizeof buffer.sym;

  fwrite (addr_buffer, sizeof (int), n_decls, symfile);
  next_address += n_decls * sizeof (int);

  

  for (decl = decls, i = 0; decl; decl = ((decl)->common.chain))
    if (! ((decl)->common.public_attr) && ! ((decl)->common.external_attr))
      i++;
  n_decls = i;

  for (decl = tags, i = 0; decl; decl = ((decl)->common.chain), i++);
  n_tags = i;

  addr_buffer = (int *) alloca ((n_decls + n_tags) * sizeof (int));

  symout_block_symbols (decls, addr_buffer, 1);
  symout_block_tags (tags, addr_buffer + n_decls);

  fprintf (asmfile, "\t.gdbend 1\n");
  fprintf (asmfile, "\t.gdbblock 1,%d\n", next_address);

  total_blocks++;
  velt = (struct blockvec_elt *) xmalloc (sizeof (struct blockvec_elt));
  velt->next = blockvec;
  velt->address = next_address;
  blockvec = velt;

  buffer.startaddr = 0;
  buffer.endaddr = 0;
  buffer.superblock = (struct block *) top_block_addr;
  buffer.function = 0;
  buffer.nsyms = n_decls + n_tags;;

  fwrite (&buffer, sizeof buffer - sizeof buffer.sym, 1, symfile);
  next_address += sizeof buffer - sizeof buffer.sym;

  fwrite (addr_buffer, sizeof (int), n_decls + n_tags, symfile);
  next_address += (n_decls + n_tags) * sizeof (int);
}






static int
symout_source_file (f)
     struct gdbfile *f;
{
  

  int size = sizeof (struct source) + (f->nlines - 1) * sizeof (struct line);
  struct source *buffer
    = (struct source *) alloca (size);
  int addr;

  
  memset (buffer,0,size);

  
  buffer->name = (char *) next_address;
  symout_strings (f->name, 0, 0, 0);
  buffer->nlines = f->nlines;

  
  addr = next_address;
  fwrite (buffer, 1, size, symfile);
  next_address += size;

  
  fprintf (asmfile, "\t.gdblinetab %d,%d\n",
	   f->filenum, addr + sizeof (int));

  return addr;
}




static int
symout_sources ()
{
  register struct gdbfile *f;
  int nfiles = 0;
  struct sourcevector *s;
  int i;
  int size;
  int addr;

  
  for (f = gdbfiles; f; f = f->next)
    ++nfiles;

  
  size = sizeof (int) + nfiles * sizeof (struct source *);
  s = (struct sourcevector *) alloca (size);
  s->length = nfiles;

  
  for (f = gdbfiles, i = 0; f; f = f->next, i++)
    s->source[i] = (struct source *) symout_source_file (f);

  
  addr = next_address;
  fwrite (s, 1, size, symfile);
  next_address += size;
  return addr;
}






void
symout_finish (filename, filetime)
     char *filename;
     int filetime;
{
  int *blockvector = (int *) alloca ((total_blocks + 1) * sizeof (int));
  int *typevector;
  int now = time (0);
  register int i;
  struct symbol_root buffer;
  char dir[1024];

  
  symout_types (filter_undefined_types (permanent_fwd_refs));

  typevector = (int *) alloca ((total_types + 1) * sizeof (int));

  buffer.language = language_c;
  buffer.blockvector = (struct blockvector *) next_address;

  


  blockvector[2] = blockvec->address;
  blockvec = blockvec->next;
  blockvector[1] = blockvec->address;
  blockvec = blockvec->next;

  
  for (i = total_blocks; i > 2; i--)
    {
      blockvector[i] = blockvec->address;
      blockvec = blockvec->next;
    }
  blockvector[0] = total_blocks;

  fwrite (blockvector, sizeof (int), total_blocks + 1, symfile);
  next_address += sizeof (int) * (total_blocks + 1);

  buffer.typevector = (struct typevector *) next_address;

  for (i = total_types; i > 0; i--)
    {
      typevector[i] = typevec->address;
      typevec = typevec->next;
    }
  typevector[0] = total_types;

  fwrite (typevector, sizeof (int), total_types + 1, symfile);
  next_address += sizeof (int) * (total_types + 1);

  buffer.sourcevector = (struct sourcevector *) symout_sources ();

  buffer.format = 1;
  buffer.textrel = 0;		
  buffer.datarel = 0;		
  buffer.bssrel = 0;		
  buffer.ldsymoff = 0;

  buffer.version = (char *) next_address;
  symout_strings (ctime (&filetime), 0, 0, 0);

  buffer.compilation = (char *) next_address;
  symout_strings (ctime (&now), 0, 0, 0);

  buffer.filename = (char *) next_address;
  symout_strings (filename, 0, 0, 0);

  buffer.filedir = (char *) next_address;

  strcpy (dir, getcwd (dir, 1024));






#line 1270 "symout.c"
  symout_strings (dir, 0, 0, 0);

  fflush (symfile);

  if (((symfile)->_flag & 0x0020) != 0)
    fatal_io_error (symfile_name);

  buffer.length = next_address;

  if (lseek (fileno (symfile), 0, 0) < 0)
    pfatal_with_name (symfile_name);
  if (write (fileno (symfile), &buffer, sizeof buffer) < 0)
    pfatal_with_name (symfile_name);
  close (fileno (symfile));
}
