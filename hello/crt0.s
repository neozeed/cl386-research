   .text
.globl __acrtused

.globl __astart
__acrtused:
__astart:
   movl  %esp,%ebp
   movl  16(%ebp), %esi
   pushl %esi
   call  _main

