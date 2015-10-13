	.file	"realpath-bad.c"
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
	.string	"q inside LOOP = %s\n"
.LC4:
	.string	"/"
.LC5:
	.string	"trying to chdir(%s)\n"
	.align 8
.LC6:
	.string	"error occurred while trying to chdir(%s)\n"
.LC7:
	.string	"trying to lstat %s\n"
.LC8:
	.string	"Resultcode = %d\n"
.LC9:
	.string	"errno=%d\n"
.LC10:
	.string	"sb.st_mode=%d\n"
.LC11:
	.string	"isreg"
.LC12:
	.string	"isdir"
.LC13:
	.string	"ischr"
.LC14:
	.string	"isblk"
.LC15:
	.string	"isfifo"
.LC16:
	.string	"islnk"
.LC17:
	.string	"issock"
.LC18:
	.string	"S_ISDIR.."
.LC19:
	.string	"chdir(%s) = resultcode = %d\n"
.LC20:
	.string	""
.LC21:
	.string	"wbuf now contains %s\n"
.LC22:
	.string	"getcwd: resultcode = %d\n"
	.align 8
.LC23:
	.string	"going to err1.. resultcode = %d\n"
.LC24:
	.string	"resolved(%d) = %s\n"
.LC25:
	.string	"wbuf(%d) = %s \n"
.LC26:
	.string	"rootd=%d\n"
	.align 8
.LC27:
	.string	"strlen(resolved) + strlen(wbuf) + rootd + 1 = %d\n"
.LC28:
	.string	"resolved path too long!"
.LC29:
	.string	"resolved=%s  len=%d \n"
.LC30:
	.string	"wbuf=%s  len=%d \n"
	.align 8
.LC31:
	.string	"after strcat, resolved = %s, strlen(resolved) = %d\n"
	.align 8
.LC32:
	.string	"strlen(resolve) > MAXPATHLEN -- buffer overflow"
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
	subq	$328, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
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
	movq	-336(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-328(%rbp), %rcx
	movq	-336(%rbp), %rax
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-336(%rbp), %rax
	addq	$45, %rax
	movb	$0, (%rax)
.L32:
	movq	-336(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -152(%rbp)
	movl	$.LC3, %eax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpq	$0, -152(%rbp)
	je	.L33
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jne	.L34
	movq	$.LC4, -152(%rbp)
	jmp	.L35
.L34:
	subq	$1, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jbe	.L36
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L34
.L36:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-336(%rbp), %rax
	movq	%rax, -152(%rbp)
.L35:
	call	__errno_location
	movl	$0, (%rax)
	movl	$.LC5, %eax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
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
	movq	-152(%rbp), %rax
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
	jns	.L69
	movl	$.LC6, %eax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L39
.L33:
	movq	-336(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.L40
.L69:
	nop
.L40:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L41
	call	__errno_location
	movl	$0, (%rax)
	movl	$.LC7, %eax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-144(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat
	movl	%eax, -96(%rbp)
	movl	$.LC8, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %edx
	movl	$.LC9, %eax
	movl	%edx, %esi
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
	movq	-144(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat
	movl	%eax, -96(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L42:
	cmpl	$0, -96(%rbp)
	jne	.L41
	movl	$0, -112(%rbp)
	movl	-296(%rbp), %edx
	movl	$.LC10, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L43
	movl	$.LC11, %edi
	call	puts
.L43:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L44
	movl	$.LC12, %edi
	call	puts
.L44:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$8192, %eax
	jne	.L45
	movl	$.LC13, %edi
	call	puts
.L45:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$24576, %eax
	jne	.L46
	movl	$.LC14, %edi
	call	puts
.L46:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$4096, %eax
	jne	.L47
	movl	$.LC15, %edi
	call	puts
.L47:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$40960, %eax
	jne	.L48
	movl	$.LC16, %edi
	call	puts
.L48:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$49152, %eax
	jne	.L49
	movl	$.LC17, %edi
	call	puts
.L49:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$40960, %eax
	jne	.L50
	addl	$1, -112(%rbp)
	cmpl	$5, -112(%rbp)
	jle	.L51
	call	__errno_location
	movl	$40, (%rax)
	jmp	.L39
.L51:
	call	__errno_location
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L52
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	jmp	.L39
.L52:
	movq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-168(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-336(%rbp), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlink
	movl	%eax, -116(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L53
	call	geteuid
	movl	%eax, -120(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	-336(%rbp), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlink
	movl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L53:
	cmpl	$0, -116(%rbp)
	jns	.L54
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free
	jmp	.L39
.L54:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	-116(%rbp), %eax
	cltq
	addq	-336(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L32
.L50:
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L41
	movl	$.LC18, %edi
	call	puts
	call	__errno_location
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -96(%rbp)
	movl	$.LC19, %eax
	movl	-96(%rbp), %edx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L55
	call	geteuid
	movl	%eax, -124(%rbp)
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
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L55:
	cmpl	$0, -96(%rbp)
	js	.L70
.L56:
	movq	$.LC20, -144(%rbp)
.L41:
	movq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$.LC21, %eax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	$0, (%rax)
	movq	-336(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -96(%rbp)
	movl	$.LC22, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L57
	call	geteuid
	movl	%eax, -128(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	call	__errno_location
	movl	$0, (%rax)
	movq	-336(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	getcwd
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -96(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L57:
	cmpl	$0, -96(%rbp)
	jne	.L58
	movl	$.LC23, %eax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L39
.L58:
	movq	-336(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L59
	movq	-336(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L59
	movl	$1, -88(%rbp)
	jmp	.L60
.L59:
	movl	$0, -88(%rbp)
.L60:
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rcx
	movl	$.LC24, %eax
	movq	-336(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rcx
	movl	$.LC25, %eax
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC26, %eax
	movl	-88(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-336(%rbp), %rax
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
	movl	$.LC27, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzbl	-80(%rbp), %eax
	testb	%al, %al
	je	.L61
	movq	-336(%rbp), %rax
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
	cmpq	$46, %rax
	jbe	.L62
	call	__errno_location
	movl	$36, (%rax)
	movl	$.LC28, %edi
	call	puts
	jmp	.L39
.L62:
	cmpl	$0, -88(%rbp)
	jne	.L63
	movl	$.LC4, %edx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L63:
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC29, %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC30, %eax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-80(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC31, %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	cmpq	$46, %rax
	jbe	.L61
	movl	$.LC32, %edi
	call	puts
.L61:
	call	__errno_location
	movl	$0, (%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	%eax, -96(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L64
	call	geteuid
	movl	%eax, -132(%rbp)
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
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L64:
	cmpl	$0, -96(%rbp)
	jns	.L65
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	jmp	.L66
.L65:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-336(%rbp), %rax
	jmp	.L31
.L70:
	nop
.L39:
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L66
	call	geteuid
	movl	%eax, -136(%rbp)
	movl	$0, %eax
	call	delay_signaling
	movl	$0, %edi
	call	seteuid
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	fchdir
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	seteuid
	movl	$0, %eax
	call	enable_signaling
.L66:
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
	je	.L68
	call	__stack_chk_fail
.L68:
	addq	$328, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	fb_realpath, .-fb_realpath
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
