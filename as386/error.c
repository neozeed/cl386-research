#include <stdio.h>
#include <stdlib.h>

void error(char *p){
fprintf(stdout,"%s",p);
exit (-1);
}