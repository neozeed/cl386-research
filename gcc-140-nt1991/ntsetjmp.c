#include <setjmp.h>

//#define setjmp _setjmp
int setjmp(void *jmp_buf){
return (_setjmp(jmp_buf));
}