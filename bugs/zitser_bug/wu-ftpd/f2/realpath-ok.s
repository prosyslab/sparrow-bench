	.file	"realpath-ok.c"
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
.LC0:
	.string	"strlen(q) = %d\n"
.LC1:
	.string	"q[MAXPATHLEN - 1] = %c\n"
	.text
.globl wu_realpath
	.type	wu_realpath, @function
wu_realpath:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	fb_realpath
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC0, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-35(%rbp), %eax
	movsbl	%al,%edx
	movl	$.LC1, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpq	$0, -120(%rbp)
	jne	.L15
	leaq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	jmp	.L16
.L15:
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movzbl	-80(%rbp), %eax
	cmpb	$47, %al
	je	.L17
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$45, %rax
	ja	.L18
	leaq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	jmp	.L16
.L18:
	movl	$0, %eax
	jmp	.L19
.L17:
	movzbl	-79(%rbp), %eax
	testb	%al, %al
	je	.L16
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L20
.L21:
	addq	$1, -88(%rbp)
.L20:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L21
	movq	-88(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L22
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L23
.L22:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	cmpq	$45, %rax
	ja	.L24
	leaq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	jmp	.L16
.L24:
	movl	$0, %eax
	jmp	.L19
.L23:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rax
	subq	$1, %rax
	cmpq	$45, %rax
	ja	.L25
	leaq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	jmp	.L16
.L25:
	movl	$0, %eax
	jmp	.L19
.L16:
	movq	-112(%rbp), %rax
.L19:
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail
.L27:
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	wu_realpath, .-wu_realpath
	.section	.rodata
.LC2:
	.string	"."
.LC3:
	.string	"Before loop resolved = %s\n"
.LC4:
	.string	"/"
.LC5:
	.string	"now resolved = %s\n"
.LC6:
	.string	"result of chdir(%s) = %d\n"
.LC7:
	.string	"Going to err1.."
.LC8:
	.string	"Dealing with p = %s\n"
.LC9:
	.string	"lstat(%s, &sb) = %d\n"
.LC10:
	.string	"changed dir to %s\n"
.LC11:
	.string	"resultcode = %d\n"
	.align 8
.LC12:
	.string	"had an access error while chdir'ing to %s\n"
.LC13:
	.string	"resultcode = %d in S_ISDIR\n"
.LC14:
	.string	""
.LC15:
	.string	"wbuf = %s\n"
.LC16:
	.string	"getcwd yields resolved = %s\n"
.LC17:
	.string	"getcwd gives resultcode = %d\n"
	.align 8
.LC18:
	.string	"resultcode was 0, going to err1"
.LC19:
	.string	"rootd = 1"
.LC20:
	.string	"rootd = 0"
	.align 8
.LC21:
	.string	"strlen(resolved) + strlen(wbuf) + rootd + 1 = %d\n"
.LC22:
	.string	"resolved path too long!"
	.align 8
.LC23:
	.string	"after strcat, resolved = %s, strlen(resolved) = %d\n"
.LC24:
	.string	"fchdir(fd) completed"
	.text
.globl fb_realpath
	.type	fb_realpath, @function
fb_realpath:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.cfi_offset 3, -24
	call	__errno_location
	movl	$0, (%rax)
	movl	$0, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	open
	movl	%eax, -84(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L29
	call	geteuid
	movl	%eax, -100(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	movl	$0, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	open
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L29:
	cmpl	$0, -84(%rbp)
	jns	.L30
	movl	$.LC2, %ecx
	movq	-304(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-296(%rbp), %rcx
	movq	-304(%rbp), %rax
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-304(%rbp), %rax
	addq	$45, %rax
	movb	$0, (%rax)
	movl	$.LC3, %eax
	movq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L32:
	movq	-304(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L33
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jne	.L34
	movq	$.LC4, -144(%rbp)
	jmp	.L35
.L34:
	subq	$1, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jbe	.L36
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L34
.L36:
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
.L35:
	movl	$.LC5, %eax
	movq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
	movl	$.LC6, %eax
	movl	-96(%rbp), %edx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L37
	call	geteuid
	movl	%eax, -104(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L37:
	cmpl	$0, -96(%rbp)
	jns	.L57
	movl	$.LC7, %edi
	call	puts
	jmp	.L39
.L33:
	movq	-304(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.L40
.L57:
	nop
.L40:
	movl	$.LC8, %eax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L41
	call	__errno_location
	movl	$0, (%rax)
	movq	-136(%rbp), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -96(%rbp)
	movl	$.LC9, %eax
	movl	-96(%rbp), %edx
	movq	-136(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L42
	call	geteuid
	movl	%eax, -108(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-136(%rbp), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -96(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L42:
	cmpl	$0, -96(%rbp)
	jne	.L41
	movl	-264(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L41
	call	__errno_location
	movl	$0, (%rax)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
	movl	$.LC10, %eax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L43
	call	geteuid
	movl	%eax, -112(%rbp)
	movl	$.LC12, %eax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L43:
	cmpl	$0, -96(%rbp)
	jns	.L44
	movl	$.LC13, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L39
.L44:
	movq	$.LC14, -136(%rbp)
.L41:
	movq	-136(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC15, %eax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	$0, (%rax)
	movq	-304(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -96(%rbp)
	movl	$.LC16, %eax
	movq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L45
	call	geteuid
	movl	%eax, -116(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-304(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -96(%rbp)
	movl	$.LC17, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L45:
	cmpl	$0, -96(%rbp)
	jne	.L46
	movl	$.LC18, %edi
	call	puts
	jmp	.L39
.L46:
	movq	-304(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L47
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L47
	movl	$.LC19, %edi
	call	puts
	movl	$1, -88(%rbp)
	jmp	.L48
.L47:
	movl	$.LC20, %edi
	call	puts
	movl	$0, -88(%rbp)
.L48:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rax
	leaq	1(%rax), %rdx
	movl	$.LC21, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-80(%rbp), %eax
	testb	%al, %al
	je	.L49
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rax
	addq	$1, %rax
	cmpq	$45, %rax
	jbe	.L50
	call	__errno_location
	movl	$36, (%rax)
	movl	$.LC22, %edi
	call	puts
	jmp	.L39
.L50:
	cmpl	$0, -88(%rbp)
	jne	.L51
	movl	$.LC4, %edx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L51:
	leaq	-80(%rbp), %rdx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC23, %eax
	movq	-304(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L49:
	call	__errno_location
	movl	$0, (%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	%eax, -96(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L52
	call	geteuid
	movl	%eax, -120(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	%eax, -96(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L52:
	cmpl	$0, -96(%rbp)
	jns	.L53
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	jmp	.L54
.L53:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-304(%rbp), %rax
	jmp	.L31
.L39:
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	$.LC24, %edi
	call	puts
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L54
	call	geteuid
	movl	%eax, -124(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L54:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	close
	call	__errno_location
	movl	-92(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
.L31:
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L56
	call	__stack_chk_fail
.L56:
	addq	$296, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	fb_realpath, .-fb_realpath
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
