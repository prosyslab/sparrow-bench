	.file	"call-realpath-bad.c"
	.comm	chroot_path,46,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Before my-realpath(): uid = %d, gid = %d\n"
.LC1:
	.string	"strlen(name) =%d\n"
.LC2:
	.string	"Resolved path = %s\n"
	.align 8
.LC3:
	.string	"After my-realpath(): uid = %d, gid = %d\n"
	.text
.globl call_realpath
	.type	call_realpath, @function
call_realpath:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -68(%rbp)
	movl	$100, -72(%rbp)
	movl	$.LC0, %eax
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC1, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$chroot_path, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	my_realpath
	movl	$.LC2, %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC3, %eax
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	call_realpath, .-call_realpath
	.section	.rodata
.LC4:
	.string	"call-realpath-bad.c"
.LC5:
	.string	"argc==2 || argc==3"
.LC6:
	.string	"/"
	.text
.globl main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L5
	cmpl	$3, -20(%rbp)
	je	.L5
	movl	$__PRETTY_FUNCTION__.2246, %ecx
	movl	$109, %edx
	movl	$.LC4, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L5:
	cmpl	$2, -20(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$.LC6, -16(%rbp)
	jmp	.L7
.L6:
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L7:
	movq	-16(%rbp), %rax
	movl	$46, %edx
	movq	%rax, %rsi
	movl	$chroot_path, %edi
	call	strncpy
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	call_realpath
	movl	$0, %eax
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2246, @object
	.size	__PRETTY_FUNCTION__.2246, 5
__PRETTY_FUNCTION__.2246:
	.string	"main"
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
