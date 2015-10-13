	.file	"mapped-path-ok.c"
.globl mapped_path
	.data
	.type	mapped_path, @object
	.size	mapped_path, 10
mapped_path:
	.string	"/"
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"Copying at most %d chars into buffer path[] whose size = %d\n"
	.text
.globl mapping_getcwd
	.type	mapping_getcwd, @function
mapping_getcwd:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$.LC0, %eax
	movq	-16(%rbp), %rcx
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$mapped_path, %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-16(%rbp), %rax
	subq	$1, %rax
	addq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	mapping_getcwd, .-mapping_getcwd
	.comm	pathspace,10,1
	.comm	old_mapped_path,10,1
	.section	.rodata
.LC1:
	.string	"/"
	.text
.globl do_elem
	.type	do_elem, @function
do_elem:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L4
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
.L4:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L6
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L6
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	$47, %esi
	movl	$mapped_path, %edi
	call	strrchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	cmpq	$mapped_path, -8(%rbp)
	jne	.L8
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L11
.L6:
	movzbl	mapped_path(%rip), %eax
	cmpb	$47, %al
	jne	.L9
	movzbl	mapped_path+1(%rip), %eax
	testb	%al, %al
	je	.L10
.L9:
	movl	$mapped_path, %edi
	call	strlen
	cmpq	$8, %rax
	ja	.L10
	movl	$.LC1, %eax
	movq	%rax, %rsi
	movl	$mapped_path, %edi
	call	strcat
.L10:
	movl	$mapped_path, %edi
	call	strlen
	movl	$10, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	$1, %rax
	jbe	.L11
	movl	$mapped_path, %edi
	call	strlen
	movl	$9, %edx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$mapped_path, %edi
	call	strncat
	jmp	.L11
.L12:
	nop
	jmp	.L11
.L13:
	nop
.L11:
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	do_elem, .-do_elem
	.section	.rodata
.LC2:
	.string	"strlen(path) = %d \t path=%s\n"
	.align 8
.LC3:
	.string	"strlen(orig_path) = %d \t orig_path=%s\n"
.LC4:
	.string	"path = %s.. calling do_elem\n"
.LC5:
	.string	"mapped_path = %s\n"
	.align 8
.LC6:
	.string	"ALERT: mapped_path[MAXPATHLEN] has been overflowed!"
.LC7:
	.string	"couldn't chdir to %s !\n"
.LC8:
	.string	"mapped_path changed to %s\n"
	.text
.globl mapping_chdir
	.type	mapping_chdir, @function
mapping_chdir:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$mapped_path, %eax
	movq	%rax, %rsi
	movl	$old_mapped_path, %edi
	call	strcpy
	movq	$pathspace, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rcx
	movl	$.LC2, %eax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rcx
	movl	$.LC3, %eax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L17
	movb	$47, mapped_path(%rip)
	movb	$0, mapped_path+1(%rip)
	addq	$1, -24(%rbp)
	jmp	.L17
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L18
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	do_elem
.L18:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L25
.L17:
	movq	-24(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	jmp	.L19
.L25:
	nop
.L19:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L21
	movl	$.LC4, %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	do_elem
.L21:
	movl	$.LC5, %eax
	movl	$mapped_path, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$mapped_path, %edi
	call	strlen
	cmpq	$9, %rax
	jbe	.L22
	movl	$.LC6, %edi
	call	puts
.L22:
	movl	$mapped_path, %edi
	call	chdir
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L23
	movl	$.LC7, %eax
	movl	$mapped_path, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$old_mapped_path, %eax
	movq	%rax, %rsi
	movl	$mapped_path, %edi
	call	strcpy
	movl	$.LC8, %eax
	movl	$mapped_path, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L23:
	movl	-4(%rbp), %eax
	leave
	ret
	.cfi_endproc
.LFE2:
	.size	mapping_chdir, .-mapping_chdir
	.section	.rodata
	.align 8
.LC9:
	.string	"wu-ftpd: Illegal path supplied!"
.LC10:
	.string	"path = %s\n"
.LC11:
	.string	"Current directory = %s\n"
	.align 8
.LC12:
	.string	"max len of path is %d, strlen(path) = %d\n"
	.align 8
.LC13:
	.string	"Canary should be 7.  Canary = %d\n"
	.align 8
.LC14:
	.string	"ALERT: path[MAXPATHLEN + 1] has been overflowed!"
	.text
.globl pwd
	.type	pwd, @function
pwd:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$7, -36(%rbp)
	leaq	-32(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	mapping_getcwd
	testq	%rax, %rax
	jne	.L27
	movl	$.LC9, %edi
	call	puts
.L27:
	movl	$.LC10, %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC12, %eax
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC13, %eax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpl	$7, -36(%rbp)
	je	.L29
	movl	$.LC14, %edi
	call	puts
.L29:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail
.L30:
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	pwd, .-pwd
	.section	.rodata
.LC15:
	.string	"r"
.LC16:
	.string	"pathfile"
.LC17:
	.string	"orig_path = %s\n"
	.text
.globl main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC15, %edx
	movl	$.LC16, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	fgets
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$.LC17, %eax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mapping_chdir
	call	pwd
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L33
	call	__stack_chk_fail
.L33:
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
