	.file	"hello.c"
gcc_compiled.:
.text
LC0:
	.ascii "gcc_main\12\0"
	.align 2
.globl _main
_main:
	pushl %ebp
	movl %esp,%ebp
	pushl $LC0
	call _printf
L1:
	leave
	ret
