.text
.align 4
.globl __allmul
__allmul:
	pushl	%ebx
	movl  16(%esp),		%eax	// b.lo
	movl  12(%esp),		%ecx	// a.hi
	imull	%eax,		%ecx	// b.lo * a.hi

	movl   8(%esp),		%edx	// a.lo
	movl  20(%esp),		%ebx	// b.hi
	imull	%edx,		%ebx	// a.lo * b.hi

	mull	%edx				// EDX:EAX = a.lo * b.lo
	addl	%ecx,		%ebx	// EBX = (a.lo*b.hi + a.hi*b.lo)
	addl	%ebx,		%edx

	popl	%ebx
	ret     $0x10
