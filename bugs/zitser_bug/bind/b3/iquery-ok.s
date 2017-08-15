	.file	"iquery-ok.c"
	.comm	something,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"FORMERR IQuery packet name problem"
	.align 8
.LC1:
	.string	"FORMERR IQuery message length off"
.LC2:
	.string	"req: IQuery class %d type %d\n"
.LC3:
	.string	"BUFFER OVERFLOW DETECTED!"
	.align 8
.LC4:
	.string	"Copying %d bytes from fname to anbuf which can store %d bytes\n"
	.text
	.type	req_iquery, @function
req_iquery:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	__dn_skipname
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L2
	movl	$.LC0, %edi
	call	puts
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.L4
	movl	$.LC1, %edi
	call	puts
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$0, %eax
	jmp	.L3
.L4:
	movl	-48(%rbp), %eax
	cmpl	$1, %eax
	jne	.L11
.L6:
	movl	something(%rip), %eax
	testl	%eax, %eax
	jne	.L7
	movl	$1, %eax
	jmp	.L3
.L7:
	movl	$.LC2, %eax
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-120(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	$2, %eax
	ja	.L8
	jmp	.L12
.L11:
	movl	$1, %eax
	jmp	.L3
.L8:
	movl	$.LC3, %edi
	call	puts
	movl	$1, %eax
	jmp	.L3
.L12:
	movl	$.LC4, %eax
	movl	-40(%rbp), %ecx
	movl	$2, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-40(%rbp), %eax
	movslq	%eax,%rdx
	movq	-72(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-40(%rbp), %eax
	movslq	%eax,%rdx
	movl	-36(%rbp), %eax
	cltq
	subq	%rax, %rdx
	leaq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	leal	-12(%rax), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -56(%rbp)
	movl	$0, %eax
.L3:
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	req_iquery, .-req_iquery
	.section	.rodata
.LC5:
	.string	"r"
.LC6:
	.string	"iquery-file"
.LC7:
	.string	"iquery-file not found!"
	.text
.globl create_msg
	.type	create_msg, @function
create_msg:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	movl	$.LC5, %edx
	movl	$.LC6, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	movl	$.LC7, %edi
	call	puts
	movl	$-1, %eax
	jmp	.L15
.L18:
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L16
.L20:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L17
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L18
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	-4(%rbp), %eax
.L15:
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	create_msg, .-create_msg
	.section	.rodata
.LC8:
	.string	"iquery-ok.c"
.LC9:
	.string	"argc==2"
.LC10:
	.string	"f!=((void *)0)"
.LC11:
	.string	"%d"
	.align 8
.LC12:
	.string	"(fscanf(f, \"%d\", &something)) != 0"
.LC13:
	.string	"opcode = %d\n"
	.align 8
.LC14:
	.string	"We only support inverse queries!"
	.text
.globl main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	cmpl	$2, -68(%rbp)
	je	.L22
	.cfi_offset 3, -24
	movl	$__PRETTY_FUNCTION__.3791, %ecx
	movl	$185, %edx
	movl	$.LC8, %esi
	movl	$.LC9, %edi
	call	__assert_fail
.L22:
	movl	$.LC5, %edx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L23
	movl	$__PRETTY_FUNCTION__.3791, %ecx
	movl	$187, %edx
	movl	$.LC8, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L23:
	movl	$.LC11, %ecx
	movq	-64(%rbp), %rax
	movl	$something, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf
	testl	%eax, %eax
	jne	.L24
	movl	$__PRETTY_FUNCTION__.3791, %ecx
	movl	$188, %edx
	movl	$.LC8, %esi
	movl	$.LC12, %edi
	call	__assert_fail
.L24:
	movl	$10000, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	create_msg
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$3, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movl	$.LC13, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$3, %al
	andl	$15, %eax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.L29
.L26:
	movq	-40(%rbp), %rsi
	leaq	-20(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	req_iquery
	jmp	.L27
.L29:
	movl	$.LC14, %edi
	call	puts
.L27:
	movl	$0, %eax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3791, @object
	.size	__PRETTY_FUNCTION__.3791, 5
__PRETTY_FUNCTION__.3791:
	.string	"main"
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits