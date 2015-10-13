	.file	"call_fb_realpath.c"
	.section	.rodata
.LC0:
	.string	"MAXPATHLEN=%d\n"
.LC1:
	.string	"call_fb_realpath.c"
.LC2:
	.string	"argc==2"
	.align 8
.LC3:
	.string	"Input path = %s, strlen(path) = %d\n"
.LC4:
	.string	"MAXPATHLEN = %d\n"
	.text
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %eax
	movl	$46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpl	$2, -196(%rbp)
	je	.L2
	movl	$__PRETTY_FUNCTION__.2711, %ecx
	movl	$92, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L2:
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC3, %eax
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC4, %eax
	movl	$46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-64(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fb_realpath
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2711, @object
	.size	__PRETTY_FUNCTION__.2711, 5
__PRETTY_FUNCTION__.2711:
	.string	"main"
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
