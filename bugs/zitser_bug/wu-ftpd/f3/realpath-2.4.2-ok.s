	.file	"realpath-2.4.2-ok.c"
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
.LC1:
	.string	"canary=[%s]\n"
.LC2:
	.string	"."
.LC3:
	.string	"./"
.LC4:
	.string	"../"
.LC5:
	.string	"/"
	.align 8
.LC6:
	.string	"BUFFER OVERFLOW ATTEMPTED...exiting"
	.align 8
.LC7:
	.string	"strlen(namebuf) >= sizeof(workpath)"
.LC8:
	.string	"strlen(namebuf) > MAXPATHLEN"
	.align 8
.LC9:
	.string	"strlen(chroot_path) > MAXPATHLEN"
	.align 8
.LC10:
	.string	"strlen(namebuf) + strlen(result) > MAXPATHLEN"
	.align 8
.LC11:
	.string	"strlen(namebuf) + strlen(result) > MAXPATHLEN + 1"
	.align 8
.LC12:
	.string	"strlen(workpath) > MAXPATHLEN!"
	.align 8
.LC13:
	.string	"strlen(chroot_path) >= MAXPATHLEN"
	.align 8
.LC14:
	.string	"strlen(workpath) + strlen(result) > MAXPATHLEN"
	.align 8
.LC15:
	.string	"strlen(workpath) + strlen(result) > MAXPATHLEN + 1"
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
	pushq	%rbx
	subq	$456, %rsp
	movq	%rdi, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$1146048327, -256(%rbp)
	movb	$0, -252(%rbp)
	cmpq	$0, -448(%rbp)
	jne	.L15
	.cfi_offset 3, -24
	movl	$0, %eax
	jmp	.L16
.L15:
	cmpq	$0, -440(%rbp)
	jne	.L17
	movq	-448(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L16
.L17:
	movl	$.LC0, %eax
	movq	-440(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-440(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-440(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L18
	leaq	-128(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	jne	.L81
	call	geteuid
	movl	%eax, -240(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	leaq	-128(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	jne	.L20
	movl	$.LC2, %ecx
	movq	-448(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	movl	$0, %eax
	jmp	.L16
.L20:
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	jmp	.L21
.L18:
	movb	$0, -128(%rbp)
	jmp	.L21
.L81:
	nop
.L21:
	leaq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L22
.L66:
	movq	-264(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	addq	$1, -264(%rbp)
	jmp	.L22
.L23:
	movq	-264(%rbp), %rax
	movl	$2, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L24
	addq	$2, -264(%rbp)
	jmp	.L22
.L24:
	movq	-264(%rbp), %rax
	movl	$3, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L25
	addq	$3, -264(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L26
.L28:
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L27
	movq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
.L27:
	addq	$1, -272(%rbp)
.L26:
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movq	-280(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L22
.L25:
	movq	-264(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.L29
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L30
.L29:
	movq	-272(%rbp), %rax
	movb	$0, (%rax)
.L30:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L31
	movl	$0, %eax
	jmp	.L16
.L31:
	leaq	-128(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-224(%rbp), %rax
	movq	%rax, -280(%rbp)
	jmp	.L32
.L33:
	addq	$1, -280(%rbp)
.L32:
	movq	-280(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L33
	leaq	-224(%rbp), %rax
	cmpq	%rax, -280(%rbp)
	je	.L34
	subq	$1, -280(%rbp)
	movq	-280(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L35
.L34:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	$45, %edx
	subq	%rax, %rdx
	movl	$.LC5, %ecx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L35:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	$45, %edx
	subq	%rax, %rdx
	movq	-264(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$45, %rax
	jbe	.L36
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L36:
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -264(%rbp)
	call	geteuid
	movl	%eax, -232(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	leaq	-224(%rbp), %rax
	leaq	-432(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -236(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
	cmpl	$-1, -236(%rbp)
	jne	.L37
	cmpq	$0, -456(%rbp)
	jne	.L38
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L39
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L39:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L40
.L38:
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L41
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L41:
	movq	-456(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-224(%rbp), %eax
	cmpb	$47, %al
	je	.L42
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L43
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L43:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L40
.L42:
	movzbl	-223(%rbp), %eax
	testb	%al, %al
	je	.L40
	movq	-448(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L44
.L45:
	addq	$1, -272(%rbp)
.L44:
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L45
	movq	-272(%rbp), %rax
	cmpq	-448(%rbp), %rax
	je	.L46
	subq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L47
.L46:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L48
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L48:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L40
.L47:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$47, %rax
	jbe	.L49
	movl	$.LC6, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L49:
	leaq	-224(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L40:
	movl	$0, %eax
	jmp	.L16
.L37:
	movl	-408(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L50
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L51
	movl	$.LC7, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L51:
	leaq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L22
.L50:
	movq	-264(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L52
	cmpq	$0, -456(%rbp)
	jne	.L53
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L54
	movl	$.LC8, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L54:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L55
.L53:
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L56
	movl	$.LC9, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L56:
	movq	-456(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movzbl	-224(%rbp), %eax
	cmpb	$47, %al
	je	.L57
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L58
	movl	$.LC10, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L58:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L55
.L57:
	movzbl	-223(%rbp), %eax
	testb	%al, %al
	je	.L55
	movq	-448(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L59
.L60:
	addq	$1, -272(%rbp)
.L59:
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L60
	movq	-272(%rbp), %rax
	cmpq	-448(%rbp), %rax
	je	.L61
	subq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L62
.L61:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L63
	movl	$.LC10, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L63:
	leaq	-224(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L55
.L62:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$47, %rax
	jbe	.L64
	movl	$.LC11, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L64:
	leaq	-224(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L55:
	movl	$0, %eax
	jmp	.L16
.L52:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L65
	movl	$.LC7, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L65:
	leaq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L22:
	movq	-264(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L66
	cmpq	$0, -456(%rbp)
	jne	.L67
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L68
	movl	$.LC12, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L68:
	leaq	-128(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L69
.L67:
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$45, %rax
	jbe	.L70
	movl	$.LC13, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L70:
	movq	-456(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-128(%rbp), %eax
	cmpb	$47, %al
	je	.L71
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L72
	movl	$.LC14, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L72:
	leaq	-128(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L69
.L71:
	movzbl	-127(%rbp), %eax
	testb	%al, %al
	je	.L69
	movq	-448(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L73
.L74:
	addq	$1, -272(%rbp)
.L73:
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L74
	movq	-272(%rbp), %rax
	cmpq	-448(%rbp), %rax
	je	.L75
	subq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L76
.L75:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$46, %rax
	jbe	.L77
	movl	$.LC14, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L77:
	leaq	-128(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L69
.L76:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$47, %rax
	jbe	.L78
	movl	$.LC15, %edi
	call	puts
	movl	$0, %eax
	jmp	.L16
.L78:
	leaq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movl	$.LC1, %eax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L69:
	movq	-448(%rbp), %rax
.L16:
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L80
	call	__stack_chk_fail
.L80:
	addq	$456, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	my_realpath, .-my_realpath
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
