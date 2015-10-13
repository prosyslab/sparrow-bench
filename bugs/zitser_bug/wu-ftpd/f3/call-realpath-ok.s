	.file	"call-realpath-ok.c"
	.comm	chroot_path,46,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Before my-realpath(): uid = %d, gid = %d\n"
.LC1:
	.string	"Resolved path = %s\n"
	.align 8
.LC2:
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
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$chroot_path, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	my_realpath
	cltq
	testq	%rax, %rax
	je	.L2
	movl	$.LC1, %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L2:
	movl	$.LC2, %eax
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	call_realpath, .-call_realpath
	.section	.rodata
	.align 8
.LC3:
	.string	"usage:prog pathname chroot_path"
.LC4:
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
	cmpl	$1, -20(%rbp)
	jg	.L6
	movl	$.LC3, %edi
	call	puts
	jmp	.L7
.L6:
	cmpl	$2, -20(%rbp)
	jne	.L8
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$.LC4, -16(%rbp)
	jmp	.L7
.L8:
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
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
