	.file	"realpath-2.4.2-bad.c"
	.local	saved_sigmask
	.comm	saved_sigmask,128,32
	.local	block_sigmask
	.comm	block_sigmask,128,32
	.local	delaying
	.comm	delaying,4,4
	.local	init_done
	.comm	init_done,4,4
	.text
	.type	init_mask, @function
init_mask:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, init_done(%rip)
	movl	$block_sigmask, %edi
	call	sigemptyset
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$block_sigmask, %edi
	call	sigaddset
	addl	$1, -4(%rbp)
.L2:
	cmpl	$64, -4(%rbp)
	jle	.L3
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	init_mask, .-init_mask
.globl enable_signaling
	.type	enable_signaling, @function
enable_signaling:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	delaying(%rip), %eax
	testl	%eax, %eax
	je	.L6
	movl	$0, delaying(%rip)
	movl	$saved_sigmask, %eax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask
	testl	%eax, %eax
	jns	.L6
	movl	$-1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	enable_signaling, .-enable_signaling
.globl delay_signaling
	.type	delay_signaling, @function
delay_signaling:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	init_done(%rip), %eax
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	call	init_mask
.L10:
	movl	delaying(%rip), %eax
	testl	%eax, %eax
	jne	.L11
	movl	$1, delaying(%rip)
	movl	$block_sigmask, %eax
	movl	$saved_sigmask, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	sigprocmask
	testl	%eax, %eax
	jns	.L11
	movl	$-1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	leave
	ret
	.cfi_endproc
.LFE2:
	.size	delay_signaling, .-delay_signaling
	.section	.rodata
	.align 8
.LC0:
	.string	"MY_REALPATH: pathname passed in = %s\n"
	.align 8
.LC1:
	.string	"strcpy(curpath, pathname):Copying %d bytes into an array of size %d\n"
.LC2:
	.string	"canary=[%s]\n"
.LC3:
	.string	"."
.LC4:
	.string	"./"
.LC5:
	.string	"../"
.LC6:
	.string	"/"
	.text
.globl my_realpath
	.type	my_realpath, @function
my_realpath:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1146048327, -240(%rbp)
	movb	$0, -236(%rbp)
	cmpq	$0, -432(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	cmpq	$0, -424(%rbp)
	jne	.L17
	movq	-432(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L16
.L17:
	movl	$.LC0, %eax
	movq	-424(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rcx
	movl	$.LC1, %eax
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-424(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-424(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L18
	leaq	-112(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	jne	.L62
	call	geteuid
	movl	%eax, -224(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	leaq	-112(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	jne	.L20
	movl	$.LC3, %ecx
	movq	-432(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-224(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	movl	$0, %eax
	jmp	.L16
.L20:
	movl	-224(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	jmp	.L21
.L18:
	movb	$0, -112(%rbp)
	jmp	.L21
.L62:
	nop
.L21:
	leaq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.L22
.L52:
	movq	-248(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	addq	$1, -248(%rbp)
	jmp	.L22
.L23:
	movq	-248(%rbp), %rax
	movl	$2, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L24
	addq	$2, -248(%rbp)
	jmp	.L22
.L24:
	movq	-248(%rbp), %rax
	movl	$3, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L25
	addq	$3, -248(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L26
.L28:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L27
	movq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
.L27:
	addq	$1, -256(%rbp)
.L26:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movq	-264(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L22
.L25:
	movq	-248(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.L29
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	-248(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L30
.L29:
	movq	-256(%rbp), %rax
	movb	$0, (%rax)
.L30:
	leaq	-112(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L31
.L32:
	addq	$1, -264(%rbp)
.L31:
	movq	-264(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
	leaq	-208(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	je	.L33
	subq	$1, -264(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L34
.L33:
	movl	$.LC6, %edx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L34:
	movq	-248(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addq	$1, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	call	geteuid
	movl	%eax, -216(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	leaq	-208(%rbp), %rax
	leaq	-416(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -220(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	cmpl	$-1, -220(%rbp)
	jne	.L35
	cmpq	$0, -440(%rbp)
	jne	.L36
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L37
.L36:
	movq	-440(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-208(%rbp), %eax
	cmpb	$47, %al
	je	.L38
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L37
.L38:
	movzbl	-207(%rbp), %eax
	testb	%al, %al
	je	.L37
	movq	-432(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L39
.L40:
	addq	$1, -256(%rbp)
.L39:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	movq	-256(%rbp), %rax
	cmpq	-432(%rbp), %rax
	je	.L41
	subq	$1, -256(%rbp)
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L42
.L41:
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L37
.L42:
	leaq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L37:
	movl	$0, %eax
	jmp	.L16
.L35:
	movl	-392(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L43
	leaq	-208(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L22
.L43:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
	cmpq	$0, -440(%rbp)
	jne	.L45
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L46
.L45:
	movq	-440(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movzbl	-208(%rbp), %eax
	cmpb	$47, %al
	je	.L47
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L46
.L47:
	movzbl	-207(%rbp), %eax
	testb	%al, %al
	je	.L46
	movq	-432(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L48
.L49:
	addq	$1, -256(%rbp)
.L48:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L49
	movq	-256(%rbp), %rax
	cmpq	-432(%rbp), %rax
	je	.L50
	subq	$1, -256(%rbp)
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L51
.L50:
	leaq	-208(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L46
.L51:
	leaq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L46:
	movl	$0, %eax
	jmp	.L16
.L44:
	leaq	-208(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L22:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L52
	cmpq	$0, -440(%rbp)
	jne	.L53
	leaq	-112(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L54
.L53:
	movq	-440(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-112(%rbp), %eax
	cmpb	$47, %al
	je	.L55
	leaq	-112(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L54
.L55:
	movzbl	-111(%rbp), %eax
	testb	%al, %al
	je	.L54
	movq	-432(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L56
.L57:
	addq	$1, -256(%rbp)
.L56:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L57
	movq	-256(%rbp), %rax
	cmpq	-432(%rbp), %rax
	je	.L58
	subq	$1, -256(%rbp)
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L59
.L58:
	leaq	-112(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L54
.L59:
	leaq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC2, %eax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L54:
	movq	-432(%rbp), %rax
.L16:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L61
	call	__stack_chk_fail
.L61:
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	my_realpath, .-my_realpath
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
