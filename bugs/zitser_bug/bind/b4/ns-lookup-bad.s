	.file	"ns-lookup-bad.c"
.globl zones
	.bss
	.align 8
	.type	zones, @object
	.size	zones, 8
zones:
	.zero	8
	.section	.rodata
.LC0:
	.string	"NS '%s' %s\n"
.LC1:
	.string	"Calling sprintf!"
	.align 8
.LC2:
	.string	"sprintf args: %s: query(%s) %s (%s:%s)"
.LC3:
	.string	"<Not Available>"
	.align 8
.LC4:
	.string	"%s: query(%s) %s (%s:%s) learnt (A=%s:NS=%s)"
.LC5:
	.string	"%s: query(%s) %s (%s:%s)"
.LC6:
	.string	"strlen(buf) = %d\n"
	.text
	.type	nslookupComplain, @function
nslookupComplain:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1104, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	%rcx, -1072(%rbp)
	movq	%r8, -1080(%rbp)
	movq	%r9, -1088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %eax
	movq	-1064(%rbp), %rdx
	movq	-1072(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	printf
	cmpq	$0, -1048(%rbp)
	je	.L9
	cmpq	$0, -1056(%rbp)
	je	.L9
	movq	$0, -1040(%rbp)
	movq	-1040(%rbp), %rax
	movq	%rax, -1032(%rbp)
	cmpq	$0, -1032(%rbp)
	jne	.L3
	cmpq	$0, -1040(%rbp)
	je	.L4
.L3:
	movl	$.LC1, %edi
	call	puts
	movq	-1080(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rsi
	movl	$.LC2, %eax
	movq	-1072(%rbp), %rdi
	movq	-1064(%rbp), %rcx
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	cmpq	$0, -1040(%rbp)
	je	.L5
	movq	-1040(%rbp), %r12
	jmp	.L6
.L5:
	movl	$.LC3, %r12d
.L6:
	cmpq	$0, -1032(%rbp)
	je	.L7
	movq	-1032(%rbp), %rbx
	jmp	.L8
.L7:
	movl	$.LC3, %ebx
.L8:
	movq	-1080(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	inet_ntoa
	movl	$.LC4, %esi
	movq	-1072(%rbp), %r9
	movq	-1064(%rbp), %r8
	movq	-1056(%rbp), %rcx
	movq	-1048(%rbp), %rdx
	leaq	-1024(%rbp), %rdi
	movq	%r12, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, %eax
	call	sprintf
	jmp	.L9
.L4:
	movl	$.LC1, %edi
	call	puts
	movq	-1080(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rsi
	movl	$.LC2, %eax
	movq	-1072(%rbp), %rdi
	movq	-1064(%rbp), %rcx
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-1080(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	inet_ntoa
	movl	$.LC5, %esi
	movq	-1072(%rbp), %r8
	movq	-1064(%rbp), %rdi
	movq	-1056(%rbp), %rcx
	movq	-1048(%rbp), %rdx
	leaq	-1024(%rbp), %rbx
	movq	%rax, (%rsp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rbx, %rdi
	movl	$0, %eax
	call	sprintf
	leaq	-1024(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	syslog
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movl	$.LC6, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
.L9:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail
.L10:
	addq	$1104, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	nslookupComplain, .-nslookupComplain
	.section	.rodata
.LC7:
	.string	"syslogdname = %s\n"
.LC8:
	.string	"sysloginfo = %s\n"
.LC9:
	.string	"i=%d\n"
.LC10:
	.string	"Class = %d\n"
.LC11:
	.string	"C_IN = %d, class = %d\n"
.LC12:
	.string	"We're inside for loop!"
.LC13:
	.string	"T_A = %d, dp->d_type = %d\n"
.LC14:
	.string	"Calling nslookupComplain!"
	.text
.globl nslookup
	.type	nslookup, @function
nslookup:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -28(%rbp)
	movl	$.LC7, %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	printf
	movl	$.LC8, %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, -20(%rbp)
	jmp	.L12
.L23:
	movl	$.LC9, %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-56(%rbp), %rax
	movq	(%rax), %r12
	movzwl	16(%r12), %eax
	cwtl
	movl	%eax, -24(%rbp)
	movl	$.LC10, %eax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %eax
	movl	-24(%rbp), %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	32(%r12), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	nlookup
	movq	%rax, %rbx
	movq	8(%rbx), %rbx
	jmp	.L13
.L22:
	movl	$.LC12, %edi
	call	puts
	movzwl	18(%rbx), %eax
	movswl	%ax,%edx
	movl	$.LC13, %eax
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movzwl	18(%rbx), %eax
	cmpw	$5, %ax
	jne	.L14
	movzwl	16(%rbx), %eax
	cwtl
	cmpl	-24(%rbp), %eax
	je	.L25
.L14:
	movzwl	18(%rbx), %eax
	cmpw	$1, %ax
	jne	.L26
	movzwl	16(%rbx), %eax
	cwtl
	cmpl	-24(%rbp), %eax
	jne	.L27
.L17:
	leaq	32(%rbx), %rax
	movq	%rax, %rdi
	call	data_inaddr
	testl	%eax, %eax
	jne	.L19
	movl	$.LC14, %edi
	call	puts
	movq	complaint.3843(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	nslookupComplain
	jmp	.L18
.L19:
	leaq	32(%rbx), %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	ntohl
	cmpl	$2130706433, %eax
	jne	.L20
	movq	complaint.3844(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	nslookupComplain
	jmp	.L18
.L20:
	leaq	32(%rbx), %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, %edi
	call	ntohl
	cmpl	$-1, %eax
	jne	.L21
	movq	complaint.3845(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	nslookupComplain
	jmp	.L18
.L21:
	addl	$1, -28(%rbp)
	leaq	32(%rbx), %rax
	movq	%rax, %rdi
	call	data_inaddr
	movl	%eax, nsa.3840(%rip)
	jmp	.L18
.L26:
	nop
	jmp	.L18
.L27:
	nop
.L18:
	movq	(%rbx), %rbx
.L13:
	testq	%rbx, %rbx
	jne	.L22
	addq	$8, -56(%rbp)
	addl	$1, -20(%rbp)
.L12:
	cmpl	$1, -20(%rbp)
	jle	.L23
	jmp	.L15
.L25:
	nop
.L15:
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	nslookup, .-nslookup
.globl nlookup
	.type	nlookup, @function
nlookup:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %esi
	movl	$1, %edi
	call	calloc
	movq	%rax, -16(%rbp)
	movl	$1, %edi
	call	create_databuf_list
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$8, -8(%rbp)
	movq	-16(%rbp), %rax
	leave
	ret
	.cfi_endproc
.LFE2:
	.size	nlookup, .-nlookup
.globl data_inaddr
	.type	data_inaddr, @function
data_inaddr:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-20(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bcopy
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	leave
	ret
	.cfi_endproc
.LFE3:
	.size	data_inaddr, .-data_inaddr
	.section	.rodata
.LC15:
	.string	"r"
.LC16:
	.string	"address_file"
	.text
.globl create_databuf_list
	.type	create_databuf_list, @function
create_databuf_list:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$.LC15, %edx
	movl	$.LC16, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L33
.L34:
	movl	$40, %esi
	movl	$1, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movb	%al, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movb	%al, 33(%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movb	%al, 34(%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movb	%al, 35(%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movw	$1, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movw	$1, 18(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	addq	$8, -32(%rbp)
	addl	$1, -20(%rbp)
.L33:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L34
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-40(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
	.cfi_endproc
.LFE4:
	.size	create_databuf_list, .-create_databuf_list
	.section	.rodata
.LC17:
	.string	"ns-lookup-bad.c"
.LC18:
	.string	"argc == 2"
.LC19:
	.string	"f!=((void *)0)"
	.text
.globl main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$2048, %rsp
	movl	%edi, -2036(%rbp)
	movq	%rsi, -2048(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -2036(%rbp)
	je	.L37
	movl	$__PRETTY_FUNCTION__.3958, %ecx
	movl	$364, %edx
	movl	$.LC17, %esi
	movl	$.LC18, %edi
	call	__assert_fail
.L37:
	movl	$.LC15, %edx
	movq	-2048(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -2032(%rbp)
	cmpq	$0, -2032(%rbp)
	jne	.L38
	movl	$__PRETTY_FUNCTION__.3958, %ecx
	movl	$366, %edx
	movl	$.LC17, %esi
	movl	$.LC19, %edi
	call	__assert_fail
.L38:
	movq	-2032(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	fgets
	movq	-2032(%rbp), %rdx
	leaq	-2016(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	fgets
	movq	-2032(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$2, %edi
	call	create_databuf_list
	movq	%rax, -2024(%rbp)
	leaq	-2016(%rbp), %rdx
	leaq	-1008(%rbp), %rcx
	movq	-2024(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	nslookup
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L40
	call	__stack_chk_fail
.L40:
	leave
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3958, @object
	.size	__PRETTY_FUNCTION__.3958, 5
__PRETTY_FUNCTION__.3958:
	.string	"main"
.LC20:
	.string	"Bogus (0.0.0.0) A RR"
	.data
	.align 8
	.type	complaint.3843, @object
	.size	complaint.3843, 8
complaint.3843:
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"Bogus LOOPBACK A RR"
	.data
	.align 8
	.type	complaint.3844, @object
	.size	complaint.3844, 8
complaint.3844:
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"Bogus BROADCAST A RR"
	.data
	.align 8
	.type	complaint.3845, @object
	.size	complaint.3845, 8
complaint.3845:
	.quad	.LC22
	.local	nsa.3840
	.comm	nsa.3840,4,4
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
