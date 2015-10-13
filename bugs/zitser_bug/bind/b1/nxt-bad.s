	.file	"nxt-bad.c"
.globl transport_strings
	.section	.rodata
.LC0:
	.string	"primary"
.LC1:
	.string	"secondary"
.LC2:
	.string	"response"
	.data
	.align 32
	.type	transport_strings, @object
	.size	transport_strings, 32
transport_strings:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	0
	.text
.globl __res_dnok
	.type	__res_dnok, @function
__res_dnok:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	jmp	.L2
.L5:
	cmpl	$32, -4(%rbp)
	jle	.L3
	cmpl	$126, -4(%rbp)
	jle	.L2
.L3:
	movl	$0, %eax
	jmp	.L4
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	addq	$1, -24(%rbp)
	testb	%al, %al
	jne	.L5
	movl	$1, %eax
.L4:
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	__res_dnok, .-__res_dnok
.globl __res_hnok
	.type	__res_hnok, @function
__res_hnok:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$46, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	movl	%eax, -12(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L8
.L26:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	movl	%eax, -16(%rbp)
	addq	$1, -24(%rbp)
	cmpl	$46, -12(%rbp)
	je	.L10
.L9:
	cmpl	$46, -8(%rbp)
	jne	.L11
	cmpl	$64, -12(%rbp)
	jle	.L12
	cmpl	$90, -12(%rbp)
	jle	.L28
.L12:
	cmpl	$96, -12(%rbp)
	jle	.L14
	cmpl	$122, -12(%rbp)
	jle	.L29
.L14:
	cmpl	$47, -12(%rbp)
	jle	.L15
	cmpl	$57, -12(%rbp)
	jle	.L30
.L15:
	movl	$0, %eax
	jmp	.L16
.L11:
	cmpl	$46, -16(%rbp)
	je	.L17
	cmpl	$0, -16(%rbp)
	jne	.L18
.L17:
	cmpl	$64, -12(%rbp)
	jle	.L19
	cmpl	$90, -12(%rbp)
	jle	.L31
.L19:
	cmpl	$96, -12(%rbp)
	jle	.L21
	cmpl	$122, -12(%rbp)
	jle	.L32
.L21:
	cmpl	$47, -12(%rbp)
	jle	.L22
	cmpl	$57, -12(%rbp)
	jle	.L33
.L22:
	movl	$0, %eax
	jmp	.L16
.L18:
	cmpl	$64, -12(%rbp)
	jle	.L23
	cmpl	$90, -12(%rbp)
	jle	.L10
.L23:
	cmpl	$96, -12(%rbp)
	jle	.L24
	cmpl	$122, -12(%rbp)
	jle	.L10
.L24:
	cmpl	$47, -12(%rbp)
	jle	.L25
	cmpl	$57, -12(%rbp)
	jle	.L10
.L25:
	cmpl	$45, -12(%rbp)
	je	.L10
	movl	$0, %eax
	jmp	.L16
.L28:
	nop
	jmp	.L10
.L29:
	nop
	jmp	.L10
.L30:
	nop
	jmp	.L10
.L31:
	nop
	jmp	.L10
.L32:
	nop
	jmp	.L10
.L33:
	nop
.L10:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
.L8:
	cmpl	$0, -12(%rbp)
	jne	.L26
	movl	$1, %eax
.L16:
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	__res_hnok, .-__res_hnok
	.section	.rodata
	.align 8
.LC3:
	.string	"impossible condition in ns_ownercontext()"
	.text
.globl ns_ownercontext
	.type	ns_ownercontext, @function
ns_ownercontext:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$15, -36(%rbp)
	ja	.L35
	.cfi_offset 3, -24
	movl	-36(%rbp), %eax
	cltq
	movl	$1, %edx
	movq	%rdx, %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	andl	$34818, %edx
	testq	%rdx, %rdx
	jne	.L36
	andl	$384, %eax
	testq	%rax, %rax
	jne	.L37
	jmp	.L35
.L36:
	movl	-40(%rbp), %eax
	cmpl	$2, %eax
	je	.L40
	cmpl	$2, %eax
	jb	.L39
	cmpl	$3, %eax
	jne	.L43
.L39:
	movl	$1, -20(%rbp)
	jmp	.L41
.L40:
	movl	$3, -20(%rbp)
	jmp	.L41
.L43:
	movl	$.LC3, %eax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L35
.L41:
	jmp	.L35
.L37:
	movl	$2, -20(%rbp)
.L35:
	movl	-20(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE2:
	.size	ns_ownercontext, .-ns_ownercontext
	.section	.rodata
.LC4:
	.string	"nxt-bad.c"
.LC5:
	.string	"len <= 65536"
.LC6:
	.string	"savestr: malloc failed (%s)"
	.text
.globl newstr
	.type	newstr, @function
newstr:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$65536, -40(%rbp)
	jbe	.L45
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	movl	$__PRETTY_FUNCTION__.4035, %ecx
	movl	$206, %edx
	movl	$.LC4, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L45:
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	cmpl	$0, -44(%rbp)
	je	.L47
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movl	$.LC6, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	jmp	.L46
.L47:
	movl	$0, %eax
	jmp	.L48
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %r12d
	movq	-32(%rbp), %rbx
	movl	%r12d, %eax
	shrw	$8, %ax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$2, -32(%rbp)
	movq	-32(%rbp), %rax
.L48:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	newstr, .-newstr
	.section	.rodata
	.align 8
.LC7:
	.string	"unexpected context %d in ns_nameok"
	.text
.globl ns_nameok
	.type	ns_nameok, @function
ns_nameok:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$3, -4(%rbp)
	movl	$1, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L51
	movq	-40(%rbp), %rax
	movl	164(%rax), %eax
	movl	%eax, -4(%rbp)
.L51:
	cmpl	$0, -4(%rbp)
	jne	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L55
	cmpl	$3, %eax
	je	.L56
	jmp	.L62
.L55:
	cmpl	$1, -28(%rbp)
	jne	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	__res_dnok
	testl	%eax, %eax
	je	.L58
.L57:
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	movl	%eax, -8(%rbp)
	jmp	.L60
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	__res_hnok
	movl	%eax, -8(%rbp)
	jmp	.L60
.L62:
	movl	-48(%rbp), %edx
	movl	$.LC7, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	jmp	.L53
.L60:
	movl	-8(%rbp), %eax
.L53:
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	ns_nameok, .-ns_nameok
	.section	.rodata
.LC8:
	.string	"Trying to do dn_expand.."
	.align 8
.LC9:
	.string	"msg = %s, msglen = %d, rrp = %s, namelen = %d\n"
.LC10:
	.string	"dn_expand returned %d\n"
	.align 8
.LC11:
	.string	"First dn_expand returned n = %d\n"
.LC12:
	.string	"type = %d\n"
.LC13:
	.string	"bad class in rrextract"
.LC14:
	.string	"ttl = %d\n"
.LC15:
	.string	"%s: converted TTL > %u to 0"
	.align 8
.LC16:
	.string	"msglen - len - 12 = %d, dlen = %d\n"
.LC17:
	.string	"bounds check succeeded"
	.align 8
.LC18:
	.string	"rrextract: dname %s type %d class %d ttl %d\n"
.LC19:
	.string	"NOT HANDLING T_NAPTR RECORDS"
.LC20:
	.string	"NOT HANDLING T_SRV RECORDS"
.LC21:
	.string	"NOT HANDLING T_PX RECORDS"
.LC22:
	.string	"n = %d\n"
.LC23:
	.string	"n < 0"
.LC24:
	.string	"Name not ok!"
	.align 8
.LC25:
	.string	"Trying to copy dlen-n = %u bytes from cp to cp1!\n"
.LC26:
	.string	"unknown type %d"
	.align 8
.LC27:
	.string	"encoded rdata length is %u, but actual length was %u"
	.align 8
.LC28:
	.string	"update type %d: %d bytes is too much data"
	.text
	.type	rrextract, @function
rrextract:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4272, %rsp
	movq	%rdi, -4248(%rbp)
	movl	%esi, -4252(%rbp)
	movq	%rdx, -4264(%rbp)
	movq	%rcx, -4272(%rbp)
	movl	%r8d, -4276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -4196(%rbp)
	movq	-4248(%rbp), %rax
	movq	%rax, -4240(%rbp)
	movq	-4264(%rbp), %rax
	movq	%rax, -4216(%rbp)
	movl	-4252(%rbp), %eax
	cltq
	addq	-4248(%rbp), %rax
	movq	%rax, -4208(%rbp)
	movl	$.LC8, %edi
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	puts
	movq	-4264(%rbp), %rcx
	movq	-4248(%rbp), %rbx
	movl	$.LC9, %eax
	movl	-4276(%rbp), %esi
	movl	-4252(%rbp), %edx
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4272(%rbp), %rcx
	movl	-4276(%rbp), %esi
	movq	-4216(%rbp), %rdx
	movq	-4208(%rbp), %rbx
	movq	-4248(%rbp), %rax
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	__dn_expand
	movl	%eax, -4192(%rbp)
	cmpl	$0, -4192(%rbp)
	jns	.L64
	movl	$.LC10, %eax
	movl	-4192(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L64:
	movq	-4272(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -4192(%rbp)
	movl	$.LC11, %eax
	movl	-4192(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	airac_print
	movl	-4192(%rbp), %eax
	cltq
	addq	%rax, -4216(%rbp)
	movl	-4192(%rbp), %eax
	addl	%eax, -4196(%rbp)
	movl	-4196(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -4196(%rbp)
	movl	-4192(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	airac_print
	movq	-4216(%rbp), %rax
	addq	$10, %rax
	cmpq	-4208(%rbp), %rax
	jbe	.L66
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L66:
	movq	-4216(%rbp), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4184(%rbp)
	addq	$2, -4216(%rbp)
	addq	$2, -4216(%rbp)
	addl	$2, -4196(%rbp)
	movl	$.LC12, %eax
	movl	-4184(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4216(%rbp), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4180(%rbp)
	addq	$2, -4216(%rbp)
	addq	$2, -4216(%rbp)
	addl	$2, -4196(%rbp)
	cmpl	$255, -4180(%rbp)
	jbe	.L67
	movl	$.LC13, %eax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L67:
	movq	-4216(%rbp), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$24, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4200(%rbp)
	addq	$4, -4216(%rbp)
	movl	$.LC14, %eax
	movl	-4200(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addq	$4, -4216(%rbp)
	addl	$4, -4196(%rbp)
	movl	-4200(%rbp), %eax
	testl	%eax, %eax
	jns	.L68
	movl	$.LC15, %eax
	movq	-4272(%rbp), %rcx
	movl	$2147483647, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, -4200(%rbp)
.L68:
	movq	-4216(%rbp), %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$8, %edx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4188(%rbp)
	addq	$2, -4216(%rbp)
	addq	$2, -4216(%rbp)
	addl	$2, -4196(%rbp)
	movl	-4196(%rbp), %eax
	movl	-4252(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	-12(%rax), %ecx
	movl	$.LC16, %eax
	movl	-4188(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	mov	-4188(%rbp), %eax
	addq	-4216(%rbp), %rax
	cmpq	-4208(%rbp), %rax
	jbe	.L69
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L69:
	movl	$.LC17, %edi
	call	puts
	movq	-4216(%rbp), %rax
	movq	%rax, -4232(%rbp)
	movq	-4272(%rbp), %r12
	movl	-4184(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ns_ownercontext
	movl	%eax, %edx
	movl	-4180(%rbp), %ebx
	movq	-4272(%rbp), %rax
	movq	%r12, %r9
	movl	%edx, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	ns_nameok
	testl	%eax, %eax
	jne	.L70
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$5, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L70:
	movl	$.LC18, %eax
	movl	-4200(%rbp), %esi
	movl	-4180(%rbp), %ecx
	movl	-4184(%rbp), %edx
	movq	-4272(%rbp), %rbx
	movl	%esi, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpl	$35, -4184(%rbp)
	ja	.L71
	mov	-4184(%rbp), %eax
	movq	.L77(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L77:
	.quad	.L71
	.quad	.L72
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L73
	.quad	.L71
	.quad	.L71
	.quad	.L73
	.quad	.L71
	.quad	.L71
	.quad	.L73
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L74
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L71
	.quad	.L73
	.quad	.L71
	.quad	.L76
	.text
.L72:
	cmpl	$4, -4188(%rbp)
	je	.L87
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L76:
	movl	$.LC19, %edi
	call	puts
	jmp	.L79
.L73:
	movl	$.LC20, %edi
	call	puts
	jmp	.L79
.L74:
	movl	$.LC21, %edi
	call	puts
	jmp	.L79
.L75:
	leaq	-4176(%rbp), %rcx
	movq	-4216(%rbp), %rdx
	movq	-4208(%rbp), %rbx
	movq	-4248(%rbp), %rax
	movl	$4140, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	__dn_expand
	movl	%eax, -4192(%rbp)
	leaq	-4176(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -4192(%rbp)
	movl	$.LC22, %eax
	movl	-4192(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpl	$0, -4192(%rbp)
	jns	.L80
	movl	$.LC23, %edi
	call	puts
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L80:
	movq	-4272(%rbp), %rdx
	movl	-4180(%rbp), %ebx
	leaq	-4176(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	ns_nameok
	testl	%eax, %eax
	jne	.L81
	movl	$.LC24, %edi
	call	puts
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L81:
	movq	-4216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	airac_print
	movl	-4192(%rbp), %eax
	cltq
	addq	%rax, -4216(%rbp)
	movq	-4216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	airac_print
	leaq	-4176(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	leaq	-4176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4224(%rbp)
	movl	-4192(%rbp), %eax
	movl	-4188(%rbp), %edx
	subl	%eax, %edx
	movl	$.LC25, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	airac_print
	movq	-4224(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	airac_print
	movl	-4192(%rbp), %eax
	movl	-4188(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mov	%eax, %edx
	movq	-4216(%rbp), %rcx
	movq	-4224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-4192(%rbp), %eax
	movl	-4188(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mov	%eax, %eax
	addq	%rax, -4216(%rbp)
	movl	-4192(%rbp), %eax
	movl	-4188(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mov	%eax, %eax
	addq	%rax, -4224(%rbp)
	movq	-4224(%rbp), %rax
	movl	%eax, %edx
	leaq	-4176(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4192(%rbp)
	leaq	-4176(%rbp), %rax
	movq	%rax, -4224(%rbp)
	jmp	.L79
.L71:
	movl	$.LC26, %eax
	movl	-4184(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4216(%rbp), %rax
	movl	%eax, %edx
	movq	-4264(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	-4188(%rbp), %eax
	jmp	.L65
.L87:
	nop
.L79:
	movq	-4216(%rbp), %rax
	cmpq	-4208(%rbp), %rax
	jbe	.L82
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L82:
	movq	-4216(%rbp), %rax
	movl	%eax, %edx
	movq	-4232(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-4188(%rbp), %eax
	je	.L83
	movq	-4216(%rbp), %rax
	movl	%eax, %edx
	movq	-4232(%rbp), %rax
	subl	%eax, %edx
	movl	$.LC27, %eax
	movl	-4188(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L83:
	cmpl	$2070, -4192(%rbp)
	jle	.L84
	movl	$.LC28, %eax
	movl	-4192(%rbp), %edx
	movl	-4184(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-4240(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 3(%rax)
	movl	$-1, %eax
	jmp	.L65
.L84:
	movq	-4216(%rbp), %rax
	movl	%eax, %edx
	movq	-4264(%rbp), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
.L65:
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L86
	call	__stack_chk_fail
.L86:
	addq	$4272, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.cfi_endproc
.LFE5:
	.size	rrextract, .-rrextract
	.section	.rodata
.LC29:
	.string	"HEADER JUNK:"
.LC30:
	.string	"lcs.mit.edu"
.LC31:
	.string	"Calling dn_comp.."
.LC32:
	.string	"uncomp_size = %d\n"
.LC33:
	.string	"comp_size = %d\n"
.LC34:
	.string	"exp_dn = %s, comp_dn = %s\n"
.LC35:
	.string	"sls.lcs.mit.edu"
.LC36:
	.string	"exp_dn2 = %s, comp_dn2 = %s\n"
	.text
.globl create_msg
	.type	create_msg, @function
create_msg:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$528, %rsp
	movq	%rdi, -536(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -440(%rbp)
	movl	$16, %edi
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	malloc
	movq	%rax, -496(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -512(%rbp)
	movl	$200, %edi
	call	malloc
	movq	%rax, -480(%rbp)
	movl	$200, %edi
	call	malloc
	movq	%rax, -488(%rbp)
	movl	$400, %edi
	call	malloc
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -456(%rbp)
	movl	$.LC29, %ecx
	movq	-464(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edx
	movl	-440(%rbp), %eax
	leal	(%rdx,%rax), %eax
	movl	%eax, -440(%rbp)
	jmp	.L89
.L90:
	movq	-464(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-456(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -456(%rbp)
	addq	$1, -464(%rbp)
.L89:
	movq	-464(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L90
	movl	$.LC30, %ecx
	leaq	-224(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-224(%rbp), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	$0, (%rax)
	subq	$8, -496(%rbp)
	movq	$0, -504(%rbp)
	movl	$.LC31, %edi
	call	puts
	movl	$200, -444(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC32, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC33, %eax
	movl	-444(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-480(%rbp), %rdx
	movl	$.LC34, %eax
	leaq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, -436(%rbp)
	jmp	.L91
.L92:
	movq	-480(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-456(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -456(%rbp)
	addq	$1, -480(%rbp)
	addl	$1, -436(%rbp)
.L91:
	movl	-436(%rbp), %eax
	cmpl	-444(%rbp), %eax
	jl	.L92
	movl	-444(%rbp), %eax
	addl	%eax, -440(%rbp)
	movl	$30, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrw	$8, %ax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$2, -456(%rbp)
	addq	$2, -456(%rbp)
	movl	$255, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrw	$8, %ax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$2, -456(%rbp)
	addq	$2, -456(%rbp)
	movl	$255, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrl	$24, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$4, -456(%rbp)
	addq	$4, -456(%rbp)
	movl	$16, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrw	$8, %ax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$2, -456(%rbp)
	addq	$2, -456(%rbp)
	addl	$10, -440(%rbp)
	movl	$.LC35, %ecx
	leaq	-432(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-432(%rbp), %rdx
	movq	-512(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	$0, (%rax)
	subq	$8, -512(%rbp)
	movq	$0, -504(%rbp)
	movl	$.LC31, %edi
	call	puts
	movl	$200, -444(%rbp)
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC32, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC33, %eax
	movl	-444(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-488(%rbp), %rdx
	movl	$.LC36, %eax
	leaq	-432(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-444(%rbp), %eax
	addl	%eax, -440(%rbp)
	movl	$0, -436(%rbp)
	jmp	.L93
.L94:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-456(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -456(%rbp)
	addq	$1, -488(%rbp)
	addl	$1, -436(%rbp)
.L93:
	movl	-436(%rbp), %eax
	cmpl	-444(%rbp), %eax
	jl	.L94
	movl	$16777216, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrl	$24, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$4, -456(%rbp)
	addq	$4, -456(%rbp)
	movl	$0, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrl	$24, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$4, -456(%rbp)
	addq	$4, -456(%rbp)
	movl	$0, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrl	$24, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$4, -456(%rbp)
	addq	$4, -456(%rbp)
	movl	$0, %r12d
	movq	-456(%rbp), %rbx
	movl	%r12d, %eax
	shrl	$24, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	%r12d, %eax
	movb	%al, (%rbx)
	addq	$4, -456(%rbp)
	addq	$4, -456(%rbp)
	addl	$16, -440(%rbp)
	movl	-440(%rbp), %eax
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L96
	call	__stack_chk_fail
.L96:
	addq	$528, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.cfi_endproc
.LFE6:
	.size	create_msg, .-create_msg
	.section	.rodata
.LC37:
	.string	"Calling create_msg:"
.LC38:
	.string	"msglen = %d\n"
.LC39:
	.string	"Calling rrextract!"
.LC40:
	.string	"rrextract returned %d\n"
	.text
.globl main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movl	$100, %edi
	.cfi_offset 3, -24
	call	malloc
	movq	%rax, -40(%rbp)
	movl	$1000, %edi
	call	malloc
	movq	%rax, -48(%rbp)
	movl	$.LC37, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	create_msg
	movl	%eax, -20(%rbp)
	movl	$.LC38, %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -32(%rbp)
	movl	$.LC39, %edi
	call	puts
	call	__res_init
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ebx
	movq	-48(%rbp), %rax
	movl	$100, %r8d
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	rrextract
	movl	%eax, -24(%rbp)
	movl	$.LC40, %eax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.4035, @object
	.size	__PRETTY_FUNCTION__.4035, 7
__PRETTY_FUNCTION__.4035:
	.string	"newstr"
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
