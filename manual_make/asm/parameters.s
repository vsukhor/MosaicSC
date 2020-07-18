	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNKSt5ctypeIcE8do_widenEc
	.weak_definition __ZNKSt5ctypeIcE8do_widenEc
__ZNKSt5ctypeIcE8do_widenEc:
LFB1983:
	movl	%esi, %eax
	ret
LFE1983:
	.cstring
lC0:
	.ascii "basic_string::_M_create\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.99:
LFB7597:
	pushq	%rbp
LCFI0:
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rsp, %rbp
LCFI1:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LCFI2:
	movq	%rdi, %rbx
	subq	$216, %rsp
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, -144(%rbp)
	vmovaps	%xmm2, -128(%rbp)
	vmovaps	%xmm3, -112(%rbp)
	vmovaps	%xmm4, -96(%rbp)
	vmovaps	%xmm5, -80(%rbp)
	vmovaps	%xmm6, -64(%rbp)
	vmovaps	%xmm7, -48(%rbp)
L10:
	leaq	46(%rsi), %rax
	leaq	-232(%rbp), %rcx
	movl	$32, -232(%rbp)
	movl	$48, -228(%rbp)
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	16(%rbp), %rax
	leaq	31(%rsp), %r13
	movq	%rax, -224(%rbp)
	leaq	-208(%rbp), %rax
	andq	$-32, %r13
	movq	%rax, -216(%rbp)
	movq	%r13, %rdi
	call	_vsnprintf
	leaq	16(%rbx), %rdi
	movslq	%eax, %r12
	movq	%rdi, (%rbx)
	cmpq	$15, %r12
	ja	L15
	cmpq	$1, %r12
	je	L16
	testq	%r12, %r12
	jne	L7
L9:
	movq	%r12, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdi,%r12)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI3:
	ret
	.align 4,0x90
L16:
LCFI4:
	movzbl	0(%r13), %eax
	movb	%al, 16(%rbx)
	jmp	L9
	.align 4,0x90
L15:
	testl	%eax, %eax
	js	L17
	leaq	1(%r12), %rdi
	call	__Znwm
	movq	%r12, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rdi
L7:
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	_memcpy
	movq	(%rbx), %rdi
	jmp	L9
L17:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7597:
	.cstring
lC1:
	.ascii "basic_string::erase\0"
	.align 3
lC2:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
lC3:
	.ascii "basic_string::substr\0"
	.align 3
lC4:
	.ascii "basic_string::_M_construct null not valid\0"
lC5:
	.ascii "=\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10Parameters15preprocess_lineERSt14basic_ifstreamIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS3_SaIcEEESA_
__ZN8MosaicSC10Parameters15preprocess_lineERSt14basic_ifstreamIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS3_SaIcEEESA_:
LFB6351:
	pushq	%r15
LCFI5:
	pushq	%r14
LCFI6:
	pushq	%r13
LCFI7:
	pushq	%r12
LCFI8:
	pushq	%rbp
LCFI9:
	pushq	%rbx
LCFI10:
	subq	$264, %rsp
LCFI11:
	leaq	96(%rsp), %rax
	movq	%rdx, 40(%rsp)
	movl	$9, %edx
	movq	%rax, 24(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 96(%rsp)
	movl	$32, %eax
	movw	%ax, 112(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	(%rsi), %rax
	movq	$1, 104(%rsp)
	movq	$1, 136(%rsp)
	movw	%dx, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 176(%rsp)
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	L256
	cmpb	$0, 56(%rbx)
	movq	%rsi, %r12
	movq	%rcx, %rbp
	je	L20
	movsbl	67(%rbx), %edx
L21:
	movq	16(%rsp), %rsi
	movq	%r12, %rdi
LEHB0:
	call	__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
LEHE0:
	movq	160(%rsp), %r14
	movq	168(%rsp), %r12
	movq	%r14, 8(%rsp)
	testq	%r12, %r12
	je	L143
	movq	%r12, %rdx
	movl	$35, %esi
	movq	%r14, %rdi
	call	_memchr
	movq	8(%rsp), %r8
	testq	%rax, %rax
	je	L23
	movq	%rax, %rdx
	subq	%r14, %rdx
	cmpq	$-1, %rdx
	je	L23
	cmpq	%rdx, %r12
	jb	L257
	movq	%rdx, 168(%rsp)
	movb	$0, (%rax)
	movq	168(%rsp), %r12
	testq	%r12, %r12
	je	L240
	movq	160(%rsp), %r8
L23:
	leaq	192(%rsp), %rbx
	leaq	16(%rbx), %rax
	movq	%rax, 192(%rsp)
	leaq	-1(%r8,%r12), %rax
	addq	%r12, %r8
	setne	%cl
	testq	%rax, %rax
	sete	%dl
	testb	%dl, %cl
	jne	L140
	leaq	224(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	.align 4,0x90
L215:
	movzbl	(%rax), %eax
	movq	$1, 200(%rsp)
	movb	%al, 208(%rsp)
	movq	192(%rsp), %rax
	movb	$0, 1(%rax)
	movq	200(%rsp), %r12
	movq	104(%rsp), %r15
	movq	192(%rsp), %r14
	cmpq	%r15, %r12
	movq	%r15, %rdx
	cmovbe	%r12, %rdx
	testq	%rdx, %rdx
	je	L28
	movq	96(%rsp), %rsi
	movq	%r14, %rdi
	call	_memcmp
	testl	%eax, %eax
	jne	L29
L28:
	subq	%r15, %r12
	cmpq	$2147483647, %r12
	jg	L29
	cmpq	$-2147483648, %r12
	jl	L29
	testl	%r12d, %r12d
	jne	L29
	leaq	16(%rbx), %rax
	cmpq	%rax, %r14
	je	L252
	movq	%r14, %rdi
	call	__ZdlPv
L252:
	movq	168(%rsp), %r12
L131:
	leaq	-1(%r12), %rax
	cmpq	%r12, %rax
	ja	L243
	movq	160(%rsp), %r8
L44:
	movq	%rax, 168(%rsp)
	movb	$0, (%r8,%rax)
	movq	168(%rsp), %rdx
	leaq	-1(%rdx), %rax
	cmpq	%rdx, %rax
	ja	L258
	leaq	16(%rbx), %rcx
	movq	%rcx, 192(%rsp)
	movq	160(%rsp), %rcx
	addq	%rcx, %rax
	addq	%rdx, %rcx
	je	L215
	testq	%rax, %rax
	jne	L215
L140:
	leaq	lC4(%rip), %rdi
LEHB1:
	call	__ZSt19__throw_logic_errorPKc
LEHE1:
	.align 4,0x90
L29:
	movq	168(%rsp), %r12
	leaq	-1(%r12), %rax
	cmpq	%r12, %rax
	ja	L259
	movq	8(%rsp), %rsi
	movq	160(%rsp), %r8
	leaq	16(%rsi), %rdx
	movq	%r8, %rsi
	movq	%r8, %rcx
	addq	%r12, %rsi
	movq	%rdx, 224(%rsp)
	setne	%r13b
	addq	%rax, %rcx
	sete	%dl
	andb	%dl, %r13b
	jne	L260
	movzbl	(%rcx), %edx
	movq	136(%rsp), %rsi
	movq	$1, 232(%rsp)
	movb	$0, 241(%rsp)
	movb	%dl, 240(%rsp)
	testq	%rsi, %rsi
	je	L144
	movq	128(%rsp), %rcx
	movq	8(%rsp), %rdi
	movzbl	(%rcx), %edx
	cmpb	%dl, 16(%rdi)
	je	L261
L255:
	leaq	16(%rbx), %rax
	cmpq	%rax, %r14
	je	L262
	xorl	%r9d, %r9d
	.align 4,0x90
L38:
	movq	%r14, %rdi
	movb	%r9b, 48(%rsp)
	call	__ZdlPv
	movzbl	48(%rsp), %r9d
	movq	168(%rsp), %r12
	testb	%r9b, %r9b
	jne	L131
	jmp	L42
	.align 4,0x90
L20:
	movq	%rbx, %rdi
LEHB2:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L21
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	L21
	.align 4,0x90
L143:
	xorl	%r13d, %r13d
L22:
	movq	16(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %r14
	je	L119
	movq	%r14, %rdi
	call	__ZdlPv
L119:
	movq	32(%rsp), %rax
	movq	128(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L120
	call	__ZdlPv
L120:
	movq	24(%rsp), %rax
	movq	96(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L250
	call	__ZdlPv
L250:
	addq	$264, %rsp
LCFI12:
	movl	%r13d, %eax
	popq	%rbx
LCFI13:
	popq	%rbp
LCFI14:
	popq	%r12
LCFI15:
	popq	%r13
LCFI16:
	popq	%r14
LCFI17:
	popq	%r15
LCFI18:
	ret
	.align 4,0x90
L144:
LCFI19:
	movl	$1, %edx
L34:
	testl	%edx, %edx
	leaq	16(%rbx), %rcx
	sete	%r9b
	cmpq	%rcx, %r14
	jne	L38
	testl	%edx, %edx
	je	L44
	movq	128(%rsp), %rax
	movq	%rsi, 48(%rsp)
	movq	%rax, 56(%rsp)
L39:
	movq	%r8, %r14
L141:
	movq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
	testq	%r15, %r15
	je	L47
	xorl	%r13d, %r13d
	movq	%rbx, 64(%rsp)
	movq	%r13, %rbx
	movq	%rax, %r13
	.align 4,0x90
L49:
	movsbl	(%r14,%rbx), %esi
	movq	%r15, %rdx
	movq	%r13, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L48
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	L49
	movq	64(%rsp), %rbx
L47:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	L52
	xorl	%r13d, %r13d
	movq	56(%rsp), %r15
	movq	%rbp, 48(%rsp)
	movq	%r13, %rbp
	movq	%rbx, %r13
	movq	%rax, %rbx
	.align 4,0x90
L54:
	movsbl	(%r14,%rbp), %esi
	movq	%rbx, %rdx
	movq	%r15, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L53
	addq	$1, %rbp
	cmpq	%r12, %rbp
	jne	L54
	movq	48(%rsp), %rbp
	movq	%r13, %rbx
	.align 4,0x90
L52:
	movq	%r14, %rsi
	leaq	16(%rbx), %rax
	addq	%r12, %rsi
	movq	%rax, 192(%rsp)
	setne	%cl
	testq	%r14, %r14
	sete	%dl
	testb	%dl, %cl
	jne	L263
	cmpq	$15, %r12
	ja	L264
	cmpq	$1, %r12
	je	L265
	testq	%r12, %r12
	jne	L63
L65:
	movq	%r12, 200(%rsp)
	leaq	16(%rbx), %rdx
	movb	$0, (%rax,%r12)
	movq	40(%rsp), %rax
	movq	(%rax), %r12
	leaq	16(%rax), %r13
	movq	192(%rsp), %rax
	cmpq	%rdx, %rax
	je	L66
	movq	200(%rsp), %rcx
	movq	208(%rsp), %rdx
	cmpq	%r13, %r12
	je	L266
	movq	40(%rsp), %rdi
	movq	16(%rdi), %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	testq	%r12, %r12
	je	L68
	movq	%r12, 192(%rsp)
	movq	%rsi, 208(%rsp)
L69:
	movq	$0, 200(%rsp)
	leaq	16(%rbx), %rax
	movb	$0, (%r12)
	movq	192(%rsp), %rdi
	cmpq	%rax, %rdi
	je	L78
	call	__ZdlPv
L78:
	movq	168(%rsp), %r14
	movq	160(%rsp), %r12
	testq	%r14, %r14
	je	L79
	leaq	-1(%r14), %r15
	leaq	lC5(%rip), %r13
	.align 4,0x90
L81:
	movsbl	(%r12,%r15), %esi
	movl	$1, %edx
	movq	%r13, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L80
	subq	$1, %r15
	cmpq	$-1, %r15
	jne	L81
	movq	8(%rsp), %rax
	movq	%r12, %r15
	movq	%r14, %r13
	xorl	%edx, %edx
	addq	$16, %rax
	movq	%rax, 224(%rsp)
L86:
	cmpq	$15, %r13
	jbe	L87
	cmpq	%rdx, %r14
	js	L267
	leaq	1(%r13), %rdi
	call	__Znwm
LEHE2:
	movq	%rax, 224(%rsp)
	movq	%r13, 240(%rsp)
L89:
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	224(%rsp), %rax
L91:
	movq	8(%rsp), %rsi
	movq	%r13, 232(%rsp)
	movb	$0, (%rax,%r13)
	leaq	16(%rbp), %r13
	movq	0(%rbp), %r12
	movq	224(%rsp), %rax
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rax
	je	L92
	movq	240(%rsp), %rdx
	movq	232(%rsp), %rcx
	cmpq	%r13, %r12
	je	L268
	movq	16(%rbp), %rsi
	movq	%rax, 0(%rbp)
	movq	%rcx, 8(%rbp)
	movq	%rdx, 16(%rbp)
	testq	%r12, %r12
	je	L94
	movq	%r12, 224(%rsp)
	movq	8(%rsp), %rax
	movq	%rsi, 240(%rsp)
L95:
	movq	$0, 232(%rsp)
	addq	$16, %rax
	movb	$0, (%r12)
	movq	224(%rsp), %rdi
	cmpq	%rax, %rdi
	je	L104
	call	__ZdlPv
L104:
	movq	8(%rbp), %rax
	leaq	16(%rbx), %rdx
	movq	0(%rbp), %rcx
	movq	%rdx, 192(%rsp)
	movl	$1, %edx
	testq	%rax, %rax
	movq	%rcx, %rsi
	cmovne	%rdx, %rax
	addq	%rax, %rsi
	je	L105
	testq	%rcx, %rcx
	je	L117
L105:
	leaq	16(%rbx), %r13
	.align 4,0x90
L216:
	movq	%r13, %rdx
	cmpq	$1, %rax
	jne	L134
	movzbl	(%rcx), %edx
	movb	%dl, 208(%rsp)
	movq	192(%rsp), %rdx
L134:
	movq	%rax, 200(%rsp)
	movb	$0, (%rdx,%rax)
	movq	200(%rsp), %r12
	movq	104(%rsp), %r14
	movq	192(%rsp), %r15
	cmpq	%r14, %r12
	movq	%r14, %rdx
	cmovbe	%r12, %rdx
	testq	%rdx, %rdx
	je	L106
	movq	96(%rsp), %rsi
	movq	%r15, %rdi
	call	_memcmp
	testl	%eax, %eax
	jne	L107
L106:
	subq	%r14, %r12
	cmpq	$2147483647, %r12
	jg	L107
	cmpq	$-2147483648, %r12
	jl	L107
	testl	%r12d, %r12d
	jne	L107
	cmpq	%r13, %r15
	je	L114
	movq	%r15, %rdi
	call	__ZdlPv
L114:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rdi
	subq	$1, %rdx
	je	L115
	cmpq	$1, %rdx
	je	L269
	leaq	1(%rdi), %rsi
	call	_memmove
	movq	8(%rbp), %rax
	movq	0(%rbp), %rdi
	leaq	-1(%rax), %rdx
	.align 4,0x90
L115:
	movq	%rdx, 8(%rbp)
	movb	$0, (%rdi,%rdx)
	movq	8(%rbp), %rax
	movl	$1, %edx
	movq	0(%rbp), %rcx
	movq	%r13, 192(%rsp)
	testq	%rax, %rax
	cmovne	%rdx, %rax
	movq	%rcx, %rdi
	addq	%rax, %rdi
	je	L216
	testq	%rcx, %rcx
	jne	L216
L117:
	leaq	lC4(%rip), %rdi
LEHB3:
	call	__ZSt19__throw_logic_errorPKc
LEHE3:
	.align 4,0x90
L261:
	movl	$1, %edx
	subq	%rsi, %rdx
	cmpq	$2147483647, %rdx
	jle	L270
	leaq	16(%rbx), %rax
	movq	%rcx, 56(%rsp)
	movq	%rsi, 48(%rsp)
	cmpq	%rax, %r14
	je	L39
	movq	%r14, %rdi
	call	__ZdlPv
	movq	168(%rsp), %r12
L42:
	movq	160(%rsp), %r14
	testq	%r12, %r12
	je	L22
	movq	136(%rsp), %rax
	movq	104(%rsp), %r15
	movq	%rax, 48(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	L141
	.align 4,0x90
L107:
	movq	8(%rsp), %rax
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rcx
	addq	$16, %rax
	testq	%rdx, %rdx
	movq	%rax, 224(%rsp)
	movl	$1, %eax
	movq	%rcx, %rsi
	cmove	%rdx, %rax
	addq	%rax, %rsi
	setne	%r12b
	testq	%rcx, %rcx
	sete	%sil
	andb	%sil, %r12b
	jne	L271
	testq	%rdx, %rdx
	je	L136
	movzbl	(%rcx), %edx
	movb	%dl, 240(%rsp)
L136:
	movq	%rax, 232(%rsp)
	movq	136(%rsp), %r8
	movb	$0, 240(%rsp,%rax)
	movq	232(%rsp), %r14
	movq	%r8, %rdx
	movq	224(%rsp), %rcx
	cmpq	%r8, %r14
	cmovbe	%r14, %rdx
	testq	%rdx, %rdx
	je	L110
	movq	128(%rsp), %rsi
	movq	%rcx, %rdi
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	call	_memcmp
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	testl	%eax, %eax
	jne	L111
L110:
	subq	%r8, %r14
	cmpq	$2147483647, %r14
	jg	L111
	cmpq	$-2147483648, %r14
	jl	L111
	testl	%r14d, %r14d
	sete	%r12b
L111:
	movq	8(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	L112
	movq	%rcx, %rdi
	call	__ZdlPv
	movq	192(%rsp), %r15
L112:
	cmpq	%r13, %r15
	je	L113
	movq	%r15, %rdi
	call	__ZdlPv
L113:
	testb	%r12b, %r12b
	jne	L114
	movq	160(%rsp), %r14
	movl	$1, %r13d
	jmp	L22
	.align 4,0x90
L240:
	movq	160(%rsp), %r14
	xorl	%r13d, %r13d
	jmp	L22
	.align 4,0x90
L262:
	movq	%rcx, 56(%rsp)
	movq	%rsi, 48(%rsp)
	jmp	L39
	.align 4,0x90
L269:
	movzbl	1(%rdi), %eax
	movb	%al, (%rdi)
	movq	8(%rbp), %rax
	movq	0(%rbp), %rdi
	leaq	-1(%rax), %rdx
	jmp	L115
	.align 4,0x90
L270:
	cmpq	$-2147483648, %rdx
	jge	L34
	jmp	L255
L48:
	xorl	%r9d, %r9d
	cmpq	$0, 48(%rsp)
	movq	%rbx, %r13
	movq	64(%rsp), %rbx
	je	L51
	movq	%r13, 80(%rsp)
	movq	56(%rsp), %r13
	movq	%r15, 88(%rsp)
	movq	48(%rsp), %r15
	movq	%rbx, 64(%rsp)
	movq	%r9, %rbx
	.align 4,0x90
L50:
	movsbl	(%r14,%rbx), %esi
	movq	%r15, %rdx
	movq	%r13, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L148
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	L50
	movq	80(%rsp), %r13
	movq	64(%rsp), %rbx
L51:
	movslq	%r13d, %r8
	cmpq	%r8, %r12
	cmova	%r8, %r12
	jmp	L52
	.align 4,0x90
L87:
	cmpq	$1, %r13
	jne	L90
	movzbl	(%r15), %eax
	movb	%al, 240(%rsp)
	movq	8(%rsp), %rax
	addq	$16, %rax
	jmp	L91
	.align 4,0x90
L80:
	leaq	1(%r15), %rdx
	cmpq	%r14, %rdx
	ja	L83
	movq	8(%rsp), %rax
	movq	%r14, %r13
	leaq	(%r12,%rdx), %r15
	subq	%rdx, %r13
	addq	$16, %rax
	addq	%r14, %r12
	movq	%rax, 224(%rsp)
	je	L86
	testq	%r15, %r15
	jne	L86
L84:
	leaq	lC4(%rip), %rdi
LEHB4:
	call	__ZSt19__throw_logic_errorPKc
	.align 4,0x90
L264:
	testq	%r12, %r12
	js	L272
	leaq	1(%r12), %rdi
	call	__Znwm
LEHE4:
	movq	%rax, 192(%rsp)
	movq	%r12, 208(%rsp)
L63:
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	192(%rsp), %rax
	jmp	L65
	.align 4,0x90
L79:
	movq	8(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 224(%rsp)
	testq	%r12, %r12
	jne	L163
	jne	L84
L163:
	movq	8(%rsp), %rax
	xorl	%r13d, %r13d
	addq	$16, %rax
	jmp	L91
	.align 4,0x90
L265:
	movzbl	(%r14), %edx
	movb	%dl, 208(%rsp)
	jmp	L65
	.align 4,0x90
L268:
	movq	%rax, 0(%rbp)
	movq	%rcx, 8(%rbp)
	movq	%rdx, 16(%rbp)
L94:
	movq	8(%rsp), %rax
	leaq	16(%rax), %r12
	movq	%r12, 224(%rsp)
	jmp	L95
	.align 4,0x90
L266:
	movq	40(%rsp), %rsi
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rdx, 16(%rsi)
L68:
	leaq	16(%rbx), %r12
	movq	%r12, 192(%rsp)
	jmp	L69
L66:
	movq	200(%rsp), %r14
	movl	$15, %r15d
	cmpq	%r13, %r12
	je	L70
	movq	40(%rsp), %rax
	movq	16(%rax), %r15
L70:
	cmpq	%r15, %r14
	ja	L273
L71:
	testq	%r14, %r14
	je	L76
	movq	192(%rsp), %rsi
	cmpq	$1, %r14
	jne	L77
	movzbl	(%rsi), %eax
	movb	%al, (%r12)
	movq	40(%rsp), %rax
	movq	(%rax), %r12
L76:
	movq	40(%rsp), %rax
	movq	%r14, 8(%rax)
	movb	$0, (%r12,%r14)
	movq	192(%rsp), %r12
	jmp	L69
L92:
	movq	232(%rsp), %r14
	movl	$15, %r15d
	cmpq	%r13, %r12
	je	L96
	movq	16(%rbp), %r15
L96:
	cmpq	%r15, %r14
	ja	L274
L97:
	testq	%r14, %r14
	je	L102
	movq	224(%rsp), %rsi
	cmpq	$1, %r14
	jne	L103
	movzbl	(%rsi), %eax
	movb	%al, (%r12)
	movq	0(%rbp), %r12
L102:
	movq	%r14, 8(%rbp)
	movq	8(%rsp), %rax
	movb	$0, (%r12,%r14)
	movq	224(%rsp), %r12
	jmp	L95
L53:
	movq	%r13, %rbx
	movq	%rbp, %r13
	movq	48(%rsp), %rbp
	movslq	%r13d, %r13
	cmpq	%r13, %r12
	cmova	%r13, %r12
	jmp	L52
L273:
	testq	%r14, %r14
	js	L275
	addq	%r15, %r15
	cmpq	%r15, %r14
	jnb	L276
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L74
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
L74:
	call	__Znwm
	movq	%rax, %r12
	movq	40(%rsp), %rax
	movq	(%rax), %rdi
	cmpq	%rdi, %r13
	je	L75
	call	__ZdlPv
	movq	40(%rsp), %rax
L75:
	movq	%r12, (%rax)
	movq	%r15, 16(%rax)
	jmp	L71
L274:
	testq	%r14, %r14
	js	L277
	addq	%r15, %r15
	cmpq	%r15, %r14
	jnb	L278
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L100
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
L100:
	call	__Znwm
	movq	0(%rbp), %rdi
	movq	%rax, %r12
	cmpq	%rdi, %r13
	je	L101
	call	__ZdlPv
L101:
	movq	%r12, 0(%rbp)
	movq	%r15, 16(%rbp)
	jmp	L97
L90:
	movq	8(%rsp), %rax
	addq	$16, %rax
	testq	%r13, %r13
	je	L91
	jmp	L89
	.align 4,0x90
L103:
	movq	%r12, %rdi
	movq	%r14, %rdx
	call	_memcpy
	movq	0(%rbp), %r12
	jmp	L102
L77:
	movq	%r12, %rdi
	movq	%r14, %rdx
	call	_memcpy
	movq	40(%rsp), %rax
	movq	(%rax), %r12
	jmp	L76
L148:
	movq	64(%rsp), %rbx
	movq	88(%rsp), %r15
	xorl	%r8d, %r8d
	movq	56(%rsp), %r13
	movq	%r15, 64(%rsp)
	movq	48(%rsp), %r15
	movq	%rbx, 48(%rsp)
	movq	%r8, %rbx
	.align 4,0x90
L55:
	movsbl	(%r14,%rbx), %esi
	movq	%r15, %rdx
	movq	%r13, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L56
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	L55
	movq	48(%rsp), %rbx
	jmp	L52
L56:
	movq	%rbx, %r8
	movq	48(%rsp), %rbx
	movq	64(%rsp), %r15
	movq	%rbp, 48(%rsp)
	movl	%r8d, %r13d
	xorl	%r8d, %r8d
	movq	%rbx, 56(%rsp)
	movq	72(%rsp), %rbx
	movq	%r8, %rbp
	.align 4,0x90
L58:
	movsbl	(%r14,%rbp), %esi
	movq	%r15, %rdx
	movq	%rbx, %rdi
	call	_memchr
	testq	%rax, %rax
	jne	L57
	addq	$1, %rbp
	cmpq	%rbp, %r12
	ja	L58
	movq	48(%rsp), %rbp
	movq	56(%rsp), %rbx
	movl	$-1, %r8d
L59:
	cmpl	%r8d, %r13d
	cmovle	%r13d, %r8d
	movslq	%r8d, %rax
	cmpq	%rax, %r12
	cmova	%rax, %r12
	jmp	L52
L57:
	movq	%rbp, %r8
	movq	56(%rsp), %rbx
	movq	48(%rsp), %rbp
	jmp	L59
L278:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
	jmp	L100
L276:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
	jmp	L74
L243:
	xorl	%ecx, %ecx
	movq	$-1, %rdx
	leaq	lC1(%rip), %rsi
	xorl	%eax, %eax
	leaq	lC2(%rip), %rdi
LEHB5:
	call	__ZSt24__throw_out_of_range_fmtPKcz
LEHE5:
L155:
	movq	%rax, %rbx
	vzeroupper
L124:
	movq	16(%rsp), %rax
	movq	160(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L128
	call	__ZdlPv
L128:
	movq	32(%rsp), %rax
	movq	128(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L129
	call	__ZdlPv
L129:
	movq	24(%rsp), %rax
	movq	96(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L130
	call	__ZdlPv
L130:
	movq	%rbx, %rdi
LEHB6:
	call	__Unwind_Resume
LEHE6:
	.align 4,0x90
L258:
	xorl	%ecx, %ecx
	movq	$-1, %rdx
	leaq	lC3(%rip), %rsi
	xorl	%eax, %eax
	leaq	lC2(%rip), %rdi
LEHB7:
	call	__ZSt24__throw_out_of_range_fmtPKcz
LEHE7:
L156:
L248:
	vzeroupper
L123:
	movq	%rax, %rbx
	jmp	L124
L83:
	movq	%r14, %rcx
	leaq	lC3(%rip), %rsi
	leaq	lC2(%rip), %rdi
	xorl	%eax, %eax
LEHB8:
	call	__ZSt24__throw_out_of_range_fmtPKcz
L256:
	call	__ZSt16__throw_bad_castv
L272:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE8:
L260:
	leaq	lC4(%rip), %rdi
LEHB9:
	call	__ZSt19__throw_logic_errorPKc
LEHE9:
L259:
	xorl	%ecx, %ecx
	orq	$-1, %rdx
	leaq	lC3(%rip), %rsi
	xorl	%eax, %eax
	leaq	lC2(%rip), %rdi
LEHB10:
	call	__ZSt24__throw_out_of_range_fmtPKcz
LEHE10:
L160:
L241:
	movq	192(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L248
	movq	%rax, 8(%rsp)
	vzeroupper
	call	__ZdlPv
	movq	8(%rsp), %rax
	jmp	L123
L158:
	jmp	L241
L257:
	movq	%r12, %rcx
	leaq	lC1(%rip), %rsi
	leaq	lC2(%rip), %rdi
	xorl	%eax, %eax
LEHB11:
	call	__ZSt24__throw_out_of_range_fmtPKcz
LEHE11:
L275:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L263:
	leaq	lC4(%rip), %rdi
LEHB12:
	call	__ZSt19__throw_logic_errorPKc
LEHE12:
L271:
	leaq	lC4(%rip), %rdi
LEHB13:
	call	__ZSt19__throw_logic_errorPKc
LEHE13:
L277:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L159:
	jmp	L248
L161:
	movq	%rax, %rbp
	vzeroupper
L127:
	movq	%rbp, %rbx
	jmp	L124
L267:
	leaq	lC0(%rip), %rdi
LEHB14:
	call	__ZSt20__throw_length_errorPKc
LEHE14:
L157:
	movq	192(%rsp), %rdi
	addq	$16, %rbx
	movq	%rax, %rbp
	cmpq	%rbx, %rdi
	je	L249
	vzeroupper
	call	__ZdlPv
	jmp	L127
L249:
	vzeroupper
	jmp	L127
LFE6351:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA6351:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xc3,0x1
	.set L$set$0,LEHB0-LFB6351
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.set L$set$2,L155-LFB6351
	.long L$set$2
	.byte	0
	.set L$set$3,LEHB1-LFB6351
	.long L$set$3
	.set L$set$4,LEHE1-LEHB1
	.long L$set$4
	.set L$set$5,L159-LFB6351
	.long L$set$5
	.byte	0
	.set L$set$6,LEHB2-LFB6351
	.long L$set$6
	.set L$set$7,LEHE2-LEHB2
	.long L$set$7
	.set L$set$8,L155-LFB6351
	.long L$set$8
	.byte	0
	.set L$set$9,LEHB3-LFB6351
	.long L$set$9
	.set L$set$10,LEHE3-LEHB3
	.long L$set$10
	.set L$set$11,L161-LFB6351
	.long L$set$11
	.byte	0
	.set L$set$12,LEHB4-LFB6351
	.long L$set$12
	.set L$set$13,LEHE4-LEHB4
	.long L$set$13
	.set L$set$14,L155-LFB6351
	.long L$set$14
	.byte	0
	.set L$set$15,LEHB5-LFB6351
	.long L$set$15
	.set L$set$16,LEHE5-LEHB5
	.long L$set$16
	.set L$set$17,L155-LFB6351
	.long L$set$17
	.byte	0
	.set L$set$18,LEHB6-LFB6351
	.long L$set$18
	.set L$set$19,LEHE6-LEHB6
	.long L$set$19
	.long	0
	.byte	0
	.set L$set$20,LEHB7-LFB6351
	.long L$set$20
	.set L$set$21,LEHE7-LEHB7
	.long L$set$21
	.set L$set$22,L156-LFB6351
	.long L$set$22
	.byte	0
	.set L$set$23,LEHB8-LFB6351
	.long L$set$23
	.set L$set$24,LEHE8-LEHB8
	.long L$set$24
	.set L$set$25,L155-LFB6351
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB9-LFB6351
	.long L$set$26
	.set L$set$27,LEHE9-LEHB9
	.long L$set$27
	.set L$set$28,L160-LFB6351
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB10-LFB6351
	.long L$set$29
	.set L$set$30,LEHE10-LEHB10
	.long L$set$30
	.set L$set$31,L158-LFB6351
	.long L$set$31
	.byte	0
	.set L$set$32,LEHB11-LFB6351
	.long L$set$32
	.set L$set$33,LEHE11-LEHB11
	.long L$set$33
	.set L$set$34,L155-LFB6351
	.long L$set$34
	.byte	0
	.set L$set$35,LEHB12-LFB6351
	.long L$set$35
	.set L$set$36,LEHE12-LEHB12
	.long L$set$36
	.set L$set$37,L155-LFB6351
	.long L$set$37
	.byte	0
	.set L$set$38,LEHB13-LFB6351
	.long L$set$38
	.set L$set$39,LEHE13-LEHB13
	.long L$set$39
	.set L$set$40,L157-LFB6351
	.long L$set$40
	.byte	0
	.set L$set$41,LEHB14-LFB6351
	.long L$set$41
	.set L$set$42,LEHE14-LEHB14
	.long L$set$42
	.set L$set$43,L155-LFB6351
	.long L$set$43
	.byte	0
	.text
	.cstring
lC6:
	.ascii "basic_string::append\0"
	.text
	.align 4,0x90
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:
LFB6766:
	pushq	%r15
LCFI20:
	movq	%rdx, %r15
	pushq	%r14
LCFI21:
	pushq	%r13
LCFI22:
	pushq	%r12
LCFI23:
	pushq	%rbp
LCFI24:
	pushq	%rbx
LCFI25:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	leaq	16(%rbx), %r12
	subq	$40, %rsp
LCFI26:
	movq	%rsi, 8(%rsp)
	call	_strlen
	movq	%r12, (%rbx)
	movq	%rax, %rbp
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	addq	8(%r15), %rax
	cmpq	$15, %rax
	ja	L344
	movq	%rbp, %r13
	movq	%r12, %rcx
	xorl	%r14d, %r14d
L280:
	movl	$15, %eax
	cmpq	$15, %r13
	ja	L286
L311:
	testq	%rbp, %rbp
	je	L287
	leaq	(%rcx,%r14), %rdi
	cmpq	$1, %rbp
	jne	L288
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
	.align 4,0x90
L287:
	movq	%r13, 8(%rbx)
	movb	$0, (%rcx,%r13)
	movq	8(%r15), %r13
	movq	8(%rbx), %r14
	movq	(%rbx), %rcx
	movq	(%r15), %r15
	leaq	0(%r13,%r14), %rbp
	cmpq	%rcx, %r12
	je	L297
	movq	16(%rbx), %rax
	cmpq	%rax, %rbp
	ja	L298
L312:
	testq	%r13, %r13
	je	L299
	leaq	(%rcx,%r14), %rdi
	cmpq	$1, %r13
	jne	L300
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
L299:
	movq	%rbp, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rcx,%rbp)
	addq	$40, %rsp
LCFI27:
	popq	%rbx
LCFI28:
	popq	%rbp
LCFI29:
	popq	%r12
LCFI30:
	popq	%r13
LCFI31:
	popq	%r14
LCFI32:
	popq	%r15
LCFI33:
	ret
	.align 4,0x90
L297:
LCFI34:
	movl	$15, %eax
	cmpq	$15, %rbp
	jbe	L312
L298:
	testq	%rbp, %rbp
	js	L345
	addq	%rax, %rax
	movq	%rax, (%rsp)
	cmpq	%rax, %rbp
	jnb	L346
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	jns	L303
	movabsq	$9223372036854775807, %rax
	movabsq	$-9223372036854775808, %rdi
	movq	%rax, (%rsp)
	jmp	L303
	.align 4,0x90
L344:
	testq	%rax, %rax
	js	L347
	cmpq	$30, %rax
	movl	$30, %edx
	cmovnb	%rax, %rdx
	leaq	1(%rdx), %rdi
	movq	%rdx, (%rsp)
LEHB15:
	call	__Znwm
	movq	8(%rbx), %r14
	movq	%rax, %rcx
	movq	(%rbx), %r13
	leaq	1(%r14), %rdx
	cmpq	$1, %rdx
	je	L348
	testq	%rdx, %rdx
	jne	L349
L283:
	cmpq	%r13, %r12
	je	L284
	movq	%r13, %rdi
	movq	%rcx, 16(%rsp)
	call	__ZdlPv
	movq	8(%rbx), %r14
	movq	16(%rsp), %rcx
L284:
	movq	(%rsp), %rax
	movq	%rcx, (%rbx)
	movq	%rax, 16(%rbx)
	movabsq	$9223372036854775807, %rax
	subq	%r14, %rax
	cmpq	%rbp, %rax
	jb	L350
	leaq	0(%rbp,%r14), %r13
	cmpq	%rcx, %r12
	je	L280
	movq	(%rsp), %rax
	cmpq	%rax, %r13
	jbe	L311
L286:
	testq	%r13, %r13
	js	L351
	addq	%rax, %rax
	movq	%rax, (%rsp)
	cmpq	%rax, %r13
	jnb	L352
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	jns	L291
	movabsq	$9223372036854775807, %rax
	movabsq	$-9223372036854775808, %rdi
	movq	%rax, (%rsp)
	jmp	L291
	.align 4,0x90
L300:
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	_memcpy
	movq	(%rbx), %rcx
	jmp	L299
	.align 4,0x90
L288:
	movq	8(%rsp), %rsi
	movq	%rbp, %rdx
	call	_memcpy
	movq	(%rbx), %rcx
	jmp	L287
	.align 4,0x90
L346:
	movq	%rbp, (%rsp)
	leaq	1(%rbp), %rdi
L303:
	call	__Znwm
	movq	%rax, %rcx
	movq	(%rbx), %r8
	testq	%r14, %r14
	je	L304
	cmpq	$1, %r14
	jne	L305
	movzbl	(%r8), %eax
	movb	%al, (%rcx)
L304:
	testq	%r15, %r15
	je	L306
	testq	%r13, %r13
	je	L306
	leaq	(%rcx,%r14), %rdi
	cmpq	$1, %r13
	je	L353
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	_memcpy
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
	.align 4,0x90
L306:
	cmpq	%r8, %r12
	je	L308
	movq	%r8, %rdi
	movq	%rcx, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %rcx
L308:
	movq	(%rsp), %rax
	movq	%rcx, (%rbx)
	movq	%rax, 16(%rbx)
	jmp	L299
	.align 4,0x90
L352:
	movq	%r13, (%rsp)
	leaq	1(%r13), %rdi
L291:
	call	__Znwm
	movq	%rax, %rcx
	movq	(%rbx), %r8
	testq	%r14, %r14
	je	L292
	cmpq	$1, %r14
	jne	L293
	movzbl	(%r8), %eax
	movb	%al, (%rcx)
L292:
	testq	%rbp, %rbp
	je	L294
	leaq	(%rcx,%r14), %rdi
	cmpq	$1, %rbp
	je	L354
	movq	8(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r8, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memcpy
	movq	24(%rsp), %r8
	movq	16(%rsp), %rcx
	.align 4,0x90
L294:
	cmpq	%r8, %r12
	je	L296
	movq	%r8, %rdi
	movq	%rcx, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %rcx
L296:
	movq	(%rsp), %rax
	movq	%rcx, (%rbx)
	movq	%rax, 16(%rbx)
	jmp	L287
	.align 4,0x90
L348:
	movzbl	0(%r13), %eax
	movb	%al, (%rcx)
	jmp	L283
	.align 4,0x90
L349:
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	%rax, %rcx
	jmp	L283
	.align 4,0x90
L293:
	movq	%r8, %rsi
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%r8, 16(%rsp)
	call	_memcpy
	movq	16(%rsp), %r8
	movq	%rax, %rcx
	jmp	L292
	.align 4,0x90
L305:
	movq	%r8, %rsi
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%r8, 8(%rsp)
	call	_memcpy
	movq	8(%rsp), %r8
	movq	%rax, %rcx
	jmp	L304
	.align 4,0x90
L354:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdi)
	jmp	L294
	.align 4,0x90
L353:
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
	jmp	L306
L350:
	leaq	lC6(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE15:
L316:
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	cmpq	%rdi, %r12
	je	L342
	vzeroupper
	call	__ZdlPv
L310:
	movq	%rbp, %rdi
LEHB16:
	call	__Unwind_Resume
LEHE16:
L345:
	leaq	lC0(%rip), %rdi
LEHB17:
	call	__ZSt20__throw_length_errorPKc
L351:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L347:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE17:
L342:
	vzeroupper
	jmp	L310
LFE6766:
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA6766:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x27
	.set L$set$44,LEHB15-LFB6766
	.long L$set$44
	.set L$set$45,LEHE15-LEHB15
	.long L$set$45
	.set L$set$46,L316-LFB6766
	.long L$set$46
	.byte	0
	.set L$set$47,LEHB16-LFB6766
	.long L$set$47
	.set L$set$48,LEHE16-LEHB16
	.long L$set$48
	.long	0
	.byte	0
	.set L$set$49,LEHB17-LFB6766
	.long L$set$49
	.set L$set$50,LEHE17-LEHB17
	.long L$set$50
	.set L$set$51,L316-LFB6766
	.long L$set$51
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	.weak_definition __ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev:
LFB6773:
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	pushq	%rbx
LCFI35:
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	72(%rdi), %rdi
	leaq	88(%rbx), %rax
	cmpq	%rax, %rdi
	je	L356
	call	__ZdlPv
L356:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	56(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, (%rbx)
	popq	%rbx
LCFI36:
	jmp	__ZNSt6localeD1Ev
LFE6773:
	.cstring
lC7:
	.ascii " \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	.weak_definition __ZN5Utils6Common4Msgr5printILb1EEEvPKcz
__ZN5Utils6Common4Msgr5printILb1EEEvPKcz:
LFB6795:
	pushq	%r15
LCFI37:
	pushq	%r14
LCFI38:
	pushq	%r13
LCFI39:
	movq	%rdi, %r13
	pushq	%r12
LCFI40:
	pushq	%rbp
LCFI41:
	pushq	%rbx
LCFI42:
	subq	$280, %rsp
LCFI43:
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%r8, 128(%rsp)
	movq	%r9, 136(%rsp)
	testb	%al, %al
	je	L384
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	%xmm1, 160(%rsp)
	vmovaps	%xmm2, 176(%rsp)
	vmovaps	%xmm3, 192(%rsp)
	vmovaps	%xmm4, 208(%rsp)
	vmovaps	%xmm5, 224(%rsp)
	vmovaps	%xmm6, 240(%rsp)
	vmovaps	%xmm7, 256(%rsp)
L384:
	leaq	336(%rsp), %rax
	leaq	16(%r13), %r15
	movl	$16, 8(%rsp)
	movq	%rax, 16(%rsp)
	leaq	8(%rsp), %rdx
	leaq	96(%rsp), %rax
	movq	%r15, %rdi
	leaq	64(%rsp), %r12
	movl	$48, 12(%rsp)
	movq	%rax, 24(%rsp)
	leaq	16(%r12), %r14
	call	_vsprintf
	movq	%r15, %rdi
	movq	%r14, 64(%rsp)
	movl	%eax, %ebx
	call	_strlen
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	L399
	cmpq	$1, %rax
	je	L400
	testq	%rax, %rax
	jne	L401
L363:
	movq	%rbp, 72(%rsp)
	movb	$0, (%r14,%rbp)
	leaq	32(%rsp), %rbp
	movq	72(%rsp), %rdx
	leaq	16(%rbp), %rax
	movq	64(%rsp), %r14
	movq	%rax, 32(%rsp)
	movslq	%ebx, %rax
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	movq	%r14, %rax
	addq	%rdx, %rax
	movq	%rdx, %rbx
	je	L364
	testq	%r14, %r14
	je	L402
L364:
	cmpq	$15, %rbx
	ja	L403
	cmpq	$1, %rbx
	je	L404
	leaq	16(%rbp), %rax
	testq	%rbx, %rbx
	jne	L367
L369:
	movq	%rbx, 40(%rsp)
	addq	$16, %r12
	movb	$0, (%rax,%rbx)
	movq	64(%rsp), %rdi
	cmpq	%r12, %rdi
	je	L370
	call	__ZdlPv
L370:
	movq	8(%r13), %rbx
	movq	32(%rsp), %rsi
	testq	%rbx, %rbx
	je	L371
	movq	40(%rsp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L405
	cmpb	$0, 56(%r12)
	je	L373
	movsbl	67(%r12), %esi
L374:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	32(%rsp), %rsi
L371:
	movq	0(%r13), %rbx
	testq	%rbx, %rbx
	je	L375
	movq	40(%rsp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L406
	cmpb	$0, 56(%r12)
	je	L377
	movsbl	67(%r12), %esi
L378:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	32(%rsp), %rsi
L375:
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	je	L397
	movq	%rsi, %rdi
	call	__ZdlPv
L397:
	addq	$280, %rsp
LCFI44:
	popq	%rbx
LCFI45:
	popq	%rbp
LCFI46:
	popq	%r12
LCFI47:
	popq	%r13
LCFI48:
	popq	%r14
LCFI49:
	popq	%r15
LCFI50:
	ret
	.align 4,0x90
L400:
LCFI51:
	movzbl	16(%r13), %eax
	movb	%al, 80(%rsp)
	jmp	L363
	.align 4,0x90
L399:
	leaq	1(%rax), %rdi
	call	__Znwm
	movq	%rbp, 80(%rsp)
	movq	%rax, 64(%rsp)
L361:
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	64(%rsp), %r14
	jmp	L363
	.align 4,0x90
L403:
	testq	%rbx, %rbx
	js	L366
	leaq	1(%rbx), %rdi
	call	__Znwm
	movq	%rbx, 48(%rsp)
	movq	%rax, 32(%rsp)
L367:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	32(%rsp), %rax
	jmp	L369
	.align 4,0x90
L404:
	movzbl	(%r14), %eax
	movb	%al, 48(%rsp)
	leaq	16(%rbp), %rax
	jmp	L369
	.align 4,0x90
L373:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L374
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L374
	.align 4,0x90
L377:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L378
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L378
L405:
	call	__ZSt16__throw_bad_castv
L406:
	call	__ZSt16__throw_bad_castv
L366:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L401:
	movq	%r14, %rax
	jmp	L361
L402:
	leaq	lC4(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE6795:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDA6795:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.cstring
lC8:
	.ascii "vector::_M_default_append\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorImSaImEE17_M_default_appendEm
	.weak_definition __ZNSt6vectorImSaImEE17_M_default_appendEm
__ZNSt6vectorImSaImEE17_M_default_appendEm:
LFB6981:
	testq	%rsi, %rsi
	je	L430
	pushq	%r15
LCFI52:
	pushq	%r14
LCFI53:
	pushq	%r13
LCFI54:
	pushq	%r12
LCFI55:
	movq	%rdi, %r12
	pushq	%rbp
LCFI56:
	pushq	%rbx
LCFI57:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI58:
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	cmpq	%rsi, %rax
	jb	L409
	salq	$3, %rbx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	_memset
	addq	%rax, %rbx
	movq	%rbx, 8(%r12)
	addq	$8, %rsp
LCFI59:
	popq	%rbx
LCFI60:
	popq	%rbp
LCFI61:
	popq	%r12
LCFI62:
	popq	%r13
LCFI63:
	popq	%r14
LCFI64:
	popq	%r15
LCFI65:
	ret
	.align 4,0x90
L430:
LCFI66:
	ret
	.align 4,0x90
L409:
LCFI67:
	movabsq	$2305843009213693951, %rdx
	movq	(%rdi), %r15
	movq	%rcx, %r14
	movq	%rdx, %rsi
	subq	%r15, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	subq	%rax, %rsi
	cmpq	%rsi, %rbx
	ja	L433
	cmpq	%rax, %rbx
	movq	%rax, %rsi
	cmovnb	%rbx, %rsi
	addq	%rsi, %rax
	jc	L419
	cmpq	%rdx, %rax
	ja	L419
	testq	%rax, %rax
	je	L420
	leaq	0(,%rax,8), %rbp
L413:
	movq	%rbp, %rdi
	call	__Znwm
	movq	8(%r12), %rcx
	movq	(%r12), %r15
	movq	%rax, %r13
	addq	%rax, %rbp
	movq	%rcx, %r14
	subq	%r15, %r14
L414:
	cmpq	%rcx, %r15
	je	L415
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%r13, %rdi
	addq	%r13, %r14
	call	_memmove
	salq	$3, %rbx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	%r14, %rbx
	call	_memset
L416:
	movq	%r15, %rdi
	call	__ZdlPv
L417:
	movq	%r13, (%r12)
	movq	%rbx, 8(%r12)
	movq	%rbp, 16(%r12)
	addq	$8, %rsp
LCFI68:
	popq	%rbx
LCFI69:
	popq	%rbp
LCFI70:
	popq	%r12
LCFI71:
	popq	%r13
LCFI72:
	popq	%r14
LCFI73:
	popq	%r15
LCFI74:
	ret
	.align 4,0x90
L415:
LCFI75:
	addq	%r13, %r14
	salq	$3, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %rdi
	addq	%r14, %rbx
	call	_memset
	testq	%r15, %r15
	je	L417
	jmp	L416
	.align 4,0x90
L419:
	movq	$-8, %rbp
	jmp	L413
	.align 4,0x90
L420:
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	L414
L433:
	leaq	lC8(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE6981:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc:
LFB7036:
	pushq	%r13
LCFI76:
	movq	%rsi, %r13
	pushq	%r12
LCFI77:
	movq	%rdi, %r12
	pushq	%rbp
LCFI78:
	pushq	%rbx
LCFI79:
	subq	$8, %rsp
LCFI80:
	movq	8(%rdi), %rbx
	movq	%rsi, %rdi
	call	_strlen
	cmpq	%rax, %rbx
	movq	%rax, %rdx
	movq	%rax, %rbp
	cmovbe	%rbx, %rdx
	testq	%rdx, %rdx
	je	L435
	movq	(%r12), %rdi
	movq	%r13, %rsi
	call	_memcmp
	testl	%eax, %eax
	je	L435
L442:
	addq	$8, %rsp
LCFI81:
	popq	%rbx
LCFI82:
	popq	%rbp
LCFI83:
	popq	%r12
LCFI84:
	popq	%r13
LCFI85:
	ret
	.align 4,0x90
L435:
LCFI86:
	subq	%rbp, %rbx
	movl	$2147483647, %eax
	cmpq	$2147483647, %rbx
	jg	L442
	cmpq	$-2147483648, %rbx
	leal	1(%rax), %eax
	cmovge	%ebx, %eax
	addq	$8, %rsp
LCFI87:
	popq	%rbx
LCFI88:
	popq	%rbp
LCFI89:
	popq	%r12
LCFI90:
	popq	%r13
LCFI91:
	ret
LFE7036:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm:
LFB7129:
	pushq	%r15
LCFI92:
	leaq	16(%rdi), %r15
	movq	%rsi, %r9
	pushq	%r14
LCFI93:
	movq	%rdx, %r14
	pushq	%r13
LCFI94:
	pushq	%r12
LCFI95:
	pushq	%rbp
LCFI96:
	pushq	%rbx
LCFI97:
	movq	%rdi, %rbx
	subq	$40, %rsp
LCFI98:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	leaq	(%rdx,%rcx), %r13
	cmpq	%r15, %rbp
	je	L445
	movq	16(%rdi), %rax
	cmpq	%rax, %r13
	ja	L446
L458:
	testq	%r14, %r14
	je	L447
	leaq	0(%rbp,%rcx), %rdi
	cmpq	$1, %r14
	jne	L448
	movzbl	(%r9), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rbp
L447:
	movq	%r13, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, 0(%rbp,%r13)
	addq	$40, %rsp
LCFI99:
	popq	%rbx
LCFI100:
	popq	%rbp
LCFI101:
	popq	%r12
LCFI102:
	popq	%r13
LCFI103:
	popq	%r14
LCFI104:
	popq	%r15
LCFI105:
	ret
	.align 4,0x90
L445:
LCFI106:
	movl	$15, %eax
	cmpq	$15, %r13
	jbe	L458
L446:
	testq	%r13, %r13
	js	L471
	addq	%rax, %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r13
	jnb	L472
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	jns	L451
	movabsq	$9223372036854775807, %rax
	movabsq	$-9223372036854775808, %rdi
	movq	%rax, 8(%rsp)
	jmp	L451
	.align 4,0x90
L448:
	movq	%r14, %rdx
	movq	%r9, %rsi
	call	_memcpy
	movq	(%rbx), %rbp
	jmp	L447
	.align 4,0x90
L472:
	movq	%r13, 8(%rsp)
	leaq	1(%r13), %rdi
L451:
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	__Znwm
	movq	16(%rsp), %rcx
	movq	(%rbx), %r12
	movq	%rax, %rbp
	movq	24(%rsp), %r9
	testq	%rcx, %rcx
	je	L453
	cmpq	$1, %rcx
	jne	L454
	movzbl	(%r12), %eax
	movb	%al, 0(%rbp)
L453:
	testq	%r9, %r9
	je	L455
	testq	%r14, %r14
	je	L455
	leaq	0(%rbp,%rcx), %rdi
	cmpq	$1, %r14
	je	L473
	movq	%r14, %rdx
	movq	%r9, %rsi
	call	_memcpy
	.align 4,0x90
L455:
	cmpq	%r12, %r15
	je	L457
	movq	%r12, %rdi
	call	__ZdlPv
L457:
	movq	8(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%rax, 16(%rbx)
	jmp	L447
	.align 4,0x90
L454:
	movq	%rcx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memcpy
	movq	24(%rsp), %r9
	movq	16(%rsp), %rcx
	jmp	L453
	.align 4,0x90
L473:
	movzbl	(%r9), %eax
	movb	%al, (%rdi)
	jmp	L455
L471:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7129:
	.cstring
lC9:
	.ascii "Parameters: \0"
lC10:
	.ascii "workingDir_in: \0"
lC11:
	.ascii "workingDir_out: \0"
lC12:
	.ascii "RUN_ini = %d\0"
lC13:
	.ascii "RUN_end = %d\0"
lC14:
	.ascii "nthreads = %d\0"
lC15:
	.ascii "resume = %d\0"
lC16:
	.ascii "Niter = %d\0"
lC17:
	.ascii "logfreq = %d\0"
lC18:
	.ascii "detailedfreq = %d\0"
lC19:
	.ascii "finaldetailed = %d\0"
lC20:
	.ascii "savefreq = %d\0"
lC21:
	.ascii "[]:  \0"
lC22:
	.ascii "%lu\0"
lC23:
	.ascii "\0"
lC24:
	.ascii "dilution = %f\0"
lC25:
	.ascii "inum = %d\0"
lC26:
	.ascii "%f\0"
lC27:
	.ascii "syn = %f\0"
lC28:
	.ascii "beta = %d\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC10Parameters5printERN5Utils6Common4MsgrE
__ZNK8MosaicSC10Parameters5printERN5Utils6Common4MsgrE:
LFB6349:
	pushq	%r15
LCFI107:
	movl	$1, %edx
	xorl	%eax, %eax
	pushq	%r14
LCFI108:
	pushq	%r13
LCFI109:
	movq	%rdi, %r13
	pushq	%r12
LCFI110:
	pushq	%rbp
LCFI111:
	pushq	%rbx
LCFI112:
	movq	%rsi, %rbx
	leaq	lC9(%rip), %rsi
	movq	%rbx, %rdi
	subq	$88, %rsp
LCFI113:
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	leaq	48(%rsp), %r12
	movq	%r13, %rdx
	leaq	lC10(%rip), %rsi
	movq	%r12, %rdi
LEHB18:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE18:
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	je	L475
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r14
	testq	%r14, %r14
	je	L565
	cmpb	$0, 56(%r14)
	je	L477
	movsbl	67(%r14), %esi
L478:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
L475:
	movq	(%rbx), %rbp
	movq	48(%rsp), %rsi
	testq	%rbp, %rbp
	je	L479
	movq	56(%rsp), %rdx
	movq	%rbp, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r14
	testq	%r14, %r14
	je	L566
	cmpb	$0, 56(%r14)
	je	L481
	movsbl	67(%r14), %esi
L482:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	48(%rsp), %rsi
L479:
	leaq	16(%r12), %rax
	cmpq	%rax, %rsi
	je	L483
	movq	%rsi, %rdi
	call	__ZdlPv
L483:
	leaq	32(%r13), %rdx
	leaq	lC11(%rip), %rsi
	movq	%r12, %rdi
LEHB19:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE19:
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	je	L484
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r14
	testq	%r14, %r14
	je	L567
	cmpb	$0, 56(%r14)
	je	L486
	movsbl	67(%r14), %esi
L487:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
L484:
	movq	(%rbx), %rbp
	movq	48(%rsp), %rsi
	testq	%rbp, %rbp
	je	L488
	movq	56(%rsp), %rdx
	movq	%rbp, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r14
	testq	%r14, %r14
	je	L568
	cmpb	$0, 56(%r14)
	je	L490
	movsbl	67(%r14), %esi
L491:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	48(%rsp), %rsi
L488:
	leaq	16(%r12), %rax
	cmpq	%rax, %rsi
	je	L492
	movq	%rsi, %rdi
	call	__ZdlPv
L492:
	movq	64(%r13), %rdx
	leaq	lC12(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	72(%r13), %rdx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC13(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	80(%r13), %rdx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC14(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movl	88(%r13), %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC15(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	96(%r13), %rdx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC16(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	104(%r13), %rdx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC17(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	112(%r13), %rdx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC18(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movl	120(%r13), %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	lC19(%rip), %rsi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	128(%r13), %rdx
	leaq	lC20(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	leaq	16(%rsp), %rax
	movl	$5, %edx
	movq	%r12, %rdi
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	leaq	lC21(%rip), %rsi
	movq	%rax, 16(%rsp)
	movl	$1953461326, 32(%rsp)
	movb	$32, 4(%rax)
	leaq	16(%r12), %rax
	movq	%rax, 48(%rsp)
	movl	$1953461326, 64(%rsp)
	movb	$32, 20(%r12)
	movq	$5, 24(%rsp)
	movb	$0, 37(%rsp)
	movq	$5, 56(%rsp)
	movb	$0, 69(%rsp)
LEHB20:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE20:
	movq	8(%rbx), %rdi
	movq	48(%rsp), %rsi
	testq	%rdi, %rdi
	je	L498
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L498:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L499
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L499:
	leaq	16(%r12), %rax
	cmpq	%rax, %rsi
	je	L500
	movq	%rsi, %rdi
	call	__ZdlPv
L500:
	movq	136(%r13), %rbp
	movq	144(%r13), %rax
	cmpq	%rax, %rbp
	je	L501
	movq	%rax, (%rsp)
	movq	_vsnprintf@GOTPCREL(%rip), %r14
	leaq	16(%r12), %r15
	.align 4,0x90
L502:
	movq	0(%rbp), %r8
	movq	%r12, %rdi
	leaq	lC22(%rip), %rcx
	xorl	%eax, %eax
	movl	$32, %edx
	movq	%r14, %rsi
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.99
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	L503
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
L503:
	movq	(%rbx), %rdi
	movq	48(%rsp), %rsi
	testq	%rdi, %rdi
	je	L504
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L504:
	cmpq	%r15, %rsi
	je	L505
	movq	%rsi, %rdi
	addq	$8, %rbp
	call	__ZdlPv
	cmpq	(%rsp), %rbp
	jne	L502
L501:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L507
	call	__ZdlPv
L507:
	leaq	lC23(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	leaq	lC24(%rip), %rsi
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	160(%r13), %xmm0, %xmm0
	movl	$1, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movl	164(%r13), %edx
	leaq	lC25(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	8(%rsp), %rax
	leaq	16(%r12), %rdx
	movq	%r12, %rdi
	movq	%rdx, 48(%rsp)
	leaq	lC21(%rip), %rsi
	movl	$5, %edx
	addq	$16, %rax
	movb	$0, 40(%rsp)
	movq	%rax, 16(%rsp)
	movabsq	$2334658406066184562, %rax
	movq	%rax, 32(%rsp)
	movq	$8, 24(%rsp)
	movq	%rax, 64(%rsp)
	movq	$8, 56(%rsp)
	movb	$0, 72(%rsp)
LEHB21:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE21:
	movq	8(%rbx), %rdi
	movq	48(%rsp), %rsi
	testq	%rdi, %rdi
	je	L513
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L513:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L514
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L514:
	leaq	16(%r12), %rax
	cmpq	%rax, %rsi
	je	L515
	movq	%rsi, %rdi
	call	__ZdlPv
L515:
	movq	168(%r13), %rbp
	movq	176(%r13), %rax
	cmpq	%rax, %rbp
	je	L516
	movq	%rax, (%rsp)
	movq	_vsnprintf@GOTPCREL(%rip), %r14
	leaq	16(%r12), %r15
	.align 4,0x90
L517:
	movq	%r12, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$58, %edx
	movq	%r14, %rsi
	leaq	lC26(%rip), %rcx
	movl	$1, %eax
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.99
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	L518
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC7(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
L518:
	movq	(%rbx), %rdi
	movq	48(%rsp), %rsi
	testq	%rdi, %rdi
	je	L519
	movq	56(%rsp), %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC7(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rsi
L519:
	cmpq	%r15, %rsi
	je	L520
	movq	%rsi, %rdi
	addq	$4, %rbp
	call	__ZdlPv
	cmpq	(%rsp), %rbp
	jne	L517
L516:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L522
	call	__ZdlPv
L522:
	movq	%rbx, %rdi
	leaq	lC23(%rip), %rsi
	xorl	%eax, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	%rbx, %rdi
	leaq	lC27(%rip), %rsi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	192(%r13), %xmm0, %xmm0
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	lC28(%rip), %rsi
	movl	$1, %eax
	vcvtss2sd	196(%r13), %xmm0, %xmm0
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	addq	$88, %rsp
LCFI114:
	popq	%rbx
LCFI115:
	popq	%rbp
LCFI116:
	popq	%r12
LCFI117:
	popq	%r13
LCFI118:
	popq	%r14
LCFI119:
	popq	%r15
LCFI120:
	ret
	.align 4,0x90
L520:
LCFI121:
	addq	$4, %rbp
	cmpq	(%rsp), %rbp
	jne	L517
	jmp	L516
	.align 4,0x90
L505:
	addq	$8, %rbp
	cmpq	(%rsp), %rbp
	jne	L502
	jmp	L501
	.align 4,0x90
L481:
	movq	%r14, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L482
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L482
	.align 4,0x90
L490:
	movq	%r14, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L491
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L491
	.align 4,0x90
L486:
	movq	%r14, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L487
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L487
	.align 4,0x90
L477:
	movq	%r14, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L478
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L478
L568:
	call	__ZSt16__throw_bad_castv
L566:
	call	__ZSt16__throw_bad_castv
L567:
	call	__ZSt16__throw_bad_castv
L527:
L564:
	movq	48(%rsp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L569
	vzeroupper
	call	__ZdlPv
L511:
	call	__ZSt9terminatev
L565:
	call	__ZSt16__throw_bad_castv
L528:
	jmp	L564
L569:
	vzeroupper
	jmp	L511
LFE6349:
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA6349:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$52,LEHB18-LFB6349
	.long L$set$52
	.set L$set$53,LEHE18-LEHB18
	.long L$set$53
	.long	0
	.byte	0
	.set L$set$54,LEHB19-LFB6349
	.long L$set$54
	.set L$set$55,LEHE19-LEHB19
	.long L$set$55
	.long	0
	.byte	0
	.set L$set$56,LEHB20-LFB6349
	.long L$set$56
	.set L$set$57,LEHE20-LEHB20
	.long L$set$57
	.set L$set$58,L527-LFB6349
	.long L$set$58
	.byte	0
	.set L$set$59,LEHB21-LFB6349
	.long L$set$59
	.set L$set$60,LEHE21-LEHB21
	.long L$set$60
	.set L$set$61,L528-LFB6349
	.long L$set$61
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm:
LFB7230:
	movq	8(%rdi), %r8
	testq	%rcx, %rcx
	jne	L571
	cmpq	%rdx, %r8
	movq	$-1, %rax
	cmovnb	%rdx, %rax
	ret
	.align 4,0x90
L571:
	movq	$-1, %rax
	cmpq	%rdx, %r8
	jbe	L583
	pushq	%r15
LCFI122:
	pushq	%r14
LCFI123:
	pushq	%r13
LCFI124:
	pushq	%r12
LCFI125:
	pushq	%rbp
LCFI126:
	pushq	%rbx
LCFI127:
	subq	$24, %rsp
LCFI128:
	movq	(%rdi), %rbx
	movsbl	(%rsi), %r13d
	leaq	(%rbx,%r8), %r14
	subq	%rdx, %r8
	leaq	(%rbx,%rdx), %rdi
	movq	%rbx, 8(%rsp)
	movq	%r8, %rdx
	cmpq	%r8, %rcx
	ja	L581
	movl	$1, %ebp
	movq	%rcx, %rbx
	movq	%rsi, %r12
	subq	%rcx, %rbp
	jmp	L574
	.align 4,0x90
L587:
	movl	%r13d, %esi
	call	_memchr
	movq	%rax, %r15
	testq	%rax, %rax
	je	L579
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcmp
	testl	%eax, %eax
	je	L586
	leaq	1(%r15), %rdi
	movq	%r14, %rdx
	subq	%rdi, %rdx
	cmpq	%rdx, %rbx
	ja	L579
L574:
	addq	%rbp, %rdx
	jne	L587
L579:
	movq	$-1, %rax
L581:
	addq	$24, %rsp
LCFI129:
	popq	%rbx
LCFI130:
	popq	%rbp
LCFI131:
	popq	%r12
LCFI132:
	popq	%r13
LCFI133:
	popq	%r14
LCFI134:
	popq	%r15
LCFI135:
	ret
	.align 4,0x90
L583:
LCFI136:
	ret
	.align 4,0x90
L586:
LCFI137:
	movq	%r15, %rax
	subq	8(%rsp), %rax
	addq	$24, %rsp
LCFI138:
	popq	%rbx
LCFI139:
	popq	%rbp
LCFI140:
	popq	%r12
LCFI141:
	popq	%r13
LCFI142:
	popq	%r14
LCFI143:
	popq	%r15
LCFI144:
	ret
LFE7230:
	.cstring
lC29:
	.ascii "Error in config file: \0"
lC30:
	.ascii " should be initialized before\0"
	.align 3
lC31:
	.ascii "Error in config file: Number of elelments in \0"
lC32:
	.ascii " is smaller than \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10Parameters21initialize_arrayparamImEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
	.weak_definition __ZN8MosaicSC10Parameters21initialize_arrayparamImEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
__ZN8MosaicSC10Parameters21initialize_arrayparamImEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE:
LFB6788:
	leaq	8(%rsp), %r10
LCFI145:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI146:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI147:
	pushq	%rbx
	subq	$672, %rsp
LCFI148:
	movq	%rsi, -664(%rbp)
	movq	%rcx, -688(%rbp)
	movq	%r8, -672(%rbp)
	testq	%rsi, %rsi
	jne	L589
	leaq	-496(%rbp), %rbx
	movq	%rcx, %rdx
	leaq	lC29(%rip), %rsi
	movq	%rbx, %rdi
LEHB22:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE22:
	movabsq	$9223372036854775807, %rax
	subq	-488(%rbp), %rax
	cmpq	$28, %rax
	jbe	L751
	movl	$29, %edx
	leaq	lC30(%rip), %rsi
	movq	%rbx, %rdi
LEHB23:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE23:
	leaq	-464(%rbp), %r12
	leaq	16(%r12), %rdx
	movq	%rdx, -464(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L752
	movq	%rcx, -464(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -448(%rbp)
L592:
	movq	8(%rax), %rcx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%rcx, -456(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
LEHB24:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r14
	testq	%r14, %r14
	je	L753
	cmpb	$0, 56(%r14)
	je	L594
	movsbl	67(%r14), %esi
L595:
	movq	%r13, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE24:
L750:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L615
	call	__ZdlPv
L615:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L616
	call	__ZdlPv
L616:
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L589:
	movq	%rdx, %rbx
	movq	8(%r8), %rax
	movq	(%r8), %rdx
	subq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -664(%rbp)
	ja	L754
	jnb	L599
	movq	-664(%rbp), %rax
	movq	-672(%rbp), %rcx
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 8(%rcx)
L599:
	leaq	-592(%rbp), %rax
	movl	$9, %edx
	movq	$1, -584(%rbp)
	movl	$1, %ecx
	leaq	16(%rax), %rsi
	movq	%rax, -696(%rbp)
	movl	$32, %eax
	leaq	-464(%rbp), %r12
	movw	%ax, -576(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -704(%rbp)
	addq	$16, %rax
	movq	%rax, -560(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -712(%rbp)
	addq	$16, %rax
	movq	%rax, -616(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rsi, -592(%rbp)
	leaq	16(%rax), %r13
	movq	$1, -552(%rbp)
	movw	%dx, -544(%rbp)
	movq	$0, -608(%rbp)
	movq	%rax, -720(%rbp)
	.align 4,0x90
L656:
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	movq	8(%rbx), %r14
	movq	%rax, -600(%rbp)
	cmpq	$-1, %rax
	je	L600
L742:
	cmpq	%rax, %r14
	cmova	%rax, %r14
L601:
	movq	-616(%rbp), %rax
	movq	(%rbx), %r15
	movq	%rax, -528(%rbp)
	movq	%r15, %rax
	addq	%r14, %rax
	je	L602
	testq	%r15, %r15
	je	L755
L602:
	cmpq	$15, %r14
	ja	L756
	cmpq	$1, %r14
	je	L757
	movq	-616(%rbp), %rax
	testq	%r14, %r14
	jne	L605
L607:
	movq	%r14, -520(%rbp)
	movb	$0, (%rax,%r14)
	cmpq	$0, -520(%rbp)
	je	L758
	leaq	128(%r12), %rdi
	call	__ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -112(%rbp)
	xorl	%esi, %esi
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovdqu	%ymm0, -104(%rbp)
	movq	$0, -120(%rbp)
	addq	$16, %rax
	movb	$0, -111(%rbp)
	movq	%rax, -336(%rbp)
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	16(%rax), %r15
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	%rax, -624(%rbp)
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	movq	-24(%r15), %rdi
	addq	%r12, %rdi
	vzeroupper
LEHB25:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE25:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	xorl	%esi, %esi
	movq	32(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	%rax, -632(%rbp)
	movq	-24(%rax), %rax
	leaq	16(%r12,%rax), %rdi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdi)
	movq	%rax, -640(%rbp)
LEHB26:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE26:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r12), %rdi
	movq	8(%rax), %rax
	movq	48(%rcx), %rcx
	movq	%rax, -648(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -656(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -432(%rbp)
	addq	$24, %rax
	vmovaps	%xmm0, -416(%rbp)
	movq	%rax, -464(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -400(%rbp)
	addq	$104, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -448(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeC1Ev
	movq	-528(%rbp), %rsi
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movl	$0, -376(%rbp)
	movq	-520(%rbp), %r14
	movq	%rsi, %rcx
	addq	$16, %rax
	movq	%rsi, -680(%rbp)
	addq	%r14, %rcx
	movq	%rax, -440(%rbp)
	leaq	112(%r12), %rax
	setne	%cl
	testq	%rsi, %rsi
	movq	%rax, -368(%rbp)
	sete	%dl
	testb	%dl, %cl
	jne	L759
	cmpq	$15, %r14
	ja	L760
	cmpq	$1, %r14
	je	L761
	testq	%r14, %r14
	jne	L623
L625:
	movq	%r14, -360(%rbp)
	leaq	24(%r12), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%r14)
	movq	-368(%rbp), %rsi
	movl	$24, -376(%rbp)
LEHB27:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE27:
	leaq	24(%r12), %rsi
	leaq	128(%r12), %rdi
LEHB28:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE28:
	movq	-672(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%r12, %rdi
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rsi
LEHB29:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE29:
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rsi
	movq	-368(%rbp), %rdi
	addq	$24, %rax
	leaq	64(%rsi), %rcx
	movq	%rax, -464(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovd	%rcx, %xmm0
	addq	$104, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r12), %rax
	vmovaps	%xmm0, -448(%rbp)
	cmpq	%rax, %rdi
	je	L634
	call	__ZdlPv
L634:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	80(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-648(%rbp), %rax
	movq	-656(%rbp), %rsi
	leaq	128(%r12), %rdi
	movq	-640(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rsi, -464(%rbp,%rax)
	movq	-632(%rbp), %rax
	movq	-624(%rbp), %rsi
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -448(%rbp,%rax)
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rsi, -464(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -456(%rbp)
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	cmpq	$-1, -600(%rbp)
	je	L762
	movq	-600(%rbp), %rsi
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	testq	%rsi, %rsi
	je	L636
	xorl	%edx, %edx
	cmpq	%rax, %rsi
	jnb	L637
	subq	%rsi, %rax
	addq	%rdi, %rsi
	cmpq	$1, %rax
	je	L763
	movq	%rax, %rdx
	call	_memmove
	movq	(%rbx), %rdi
	movq	8(%rbx), %rdx
	subq	-600(%rbp), %rdx
	.align 4,0x90
L637:
	movq	%rdx, 8(%rbx)
	movb	$0, (%rdi,%rdx)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
L636:
	testq	%rax, %rax
	movl	$1, %edx
	movq	%rdi, %rcx
	movq	%r13, -496(%rbp)
	cmovne	%rdx, %rax
	addq	%rax, %rcx
	jne	L744
	jmp	L720
	.align 4,0x90
L640:
	subq	%r15, %r14
	cmpq	$2147483647, %r14
	jg	L641
	cmpq	$-2147483648, %r14
	jl	L641
	testl	%r14d, %r14d
	jne	L641
	cmpq	%r13, %rcx
	je	L679
	movq	%rcx, %rdi
	call	__ZdlPv
L679:
	movq	8(%rbx), %rdx
	movq	(%rbx), %rdi
	subq	$1, %rdx
	je	L649
	cmpq	$1, %rdx
	je	L764
	leaq	1(%rdi), %rsi
	call	_memmove
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	leaq	-1(%rax), %rdx
	.align 4,0x90
L649:
	movq	%rdx, 8(%rbx)
	movb	$0, (%rdi,%rdx)
	movq	8(%rbx), %rax
	movl	$1, %edx
	movq	(%rbx), %rdi
	movq	%r13, -496(%rbp)
	testq	%rax, %rax
	cmovne	%rdx, %rax
	movq	%rdi, %rsi
	addq	%rax, %rsi
	je	L720
L744:
	testq	%rdi, %rdi
	je	L765
L720:
	movq	%r13, %rdx
	cmpq	$1, %rax
	jne	L676
	movzbl	(%rdi), %edx
	movb	%dl, -480(%rbp)
	movq	-496(%rbp), %rdx
L676:
	movq	%rax, -488(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-488(%rbp), %r14
	movq	-584(%rbp), %r15
	movq	-496(%rbp), %rcx
	cmpq	%r15, %r14
	movq	%r15, %rdx
	cmovbe	%r14, %rdx
	testq	%rdx, %rdx
	je	L640
	movq	-592(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -600(%rbp)
	call	_memcmp
	movq	-600(%rbp), %rcx
	testl	%eax, %eax
	je	L640
L641:
	movq	8(%rbx), %rdx
	leaq	16(%r12), %rax
	movq	(%rbx), %rsi
	movq	%rax, -464(%rbp)
	movl	$1, %eax
	testq	%rdx, %rdx
	movq	%rsi, %rdi
	cmove	%rdx, %rax
	addq	%rax, %rdi
	setne	%r14b
	testq	%rsi, %rsi
	sete	%dil
	andb	%dil, %r14b
	jne	L766
	testq	%rdx, %rdx
	je	L678
	movzbl	(%rsi), %edx
	movb	%dl, -448(%rbp)
L678:
	movq	%rax, -456(%rbp)
	movq	-552(%rbp), %r9
	movb	$0, -448(%rbp,%rax)
	movq	-456(%rbp), %r15
	movq	%r9, %rdx
	movq	-464(%rbp), %r8
	cmpq	%r9, %r15
	cmovbe	%r15, %rdx
	testq	%rdx, %rdx
	je	L644
	movq	-560(%rbp), %rsi
	movq	%r8, %rdi
	movq	%r9, -632(%rbp)
	movq	%rcx, -624(%rbp)
	movq	%r8, -600(%rbp)
	call	_memcmp
	movq	-600(%rbp), %r8
	movq	-624(%rbp), %rcx
	testl	%eax, %eax
	movq	-632(%rbp), %r9
	jne	L645
L644:
	subq	%r9, %r15
	cmpq	$2147483647, %r15
	jg	L645
	cmpq	$-2147483648, %r15
	jl	L645
	testl	%r15d, %r15d
	sete	%r14b
L645:
	leaq	16(%r12), %rax
	cmpq	%rax, %r8
	je	L646
	movq	%r8, %rdi
	call	__ZdlPv
	movq	-496(%rbp), %rcx
L646:
	cmpq	%r13, %rcx
	je	L647
	movq	%rcx, %rdi
	call	__ZdlPv
L647:
	testb	%r14b, %r14b
	jne	L679
	movq	-528(%rbp), %rdi
	cmpq	-616(%rbp), %rdi
	je	L653
	call	__ZdlPv
	addq	$1, -608(%rbp)
	movq	-608(%rbp), %rax
	cmpq	%rax, -664(%rbp)
	je	L654
L655:
	movq	-592(%rbp), %rsi
	movq	-584(%rbp), %rcx
	jmp	L656
	.align 4,0x90
L764:
	movzbl	1(%rdi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	leaq	-1(%rax), %rdx
	jmp	L649
	.align 4,0x90
L653:
	addq	$1, -608(%rbp)
	movq	-608(%rbp), %rax
	cmpq	%rax, -664(%rbp)
	jne	L655
L654:
	movq	-704(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L657
	call	__ZdlPv
L657:
	movq	-696(%rbp), %rax
	movq	-592(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L740
	call	__ZdlPv
L740:
	addq	$672, %rsp
	popq	%rbx
	popq	%r10
LCFI149:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI150:
	ret
	.align 4,0x90
L756:
LCFI151:
	testq	%r14, %r14
	js	L767
	leaq	1(%r14), %rdi
LEHB30:
	call	__Znwm
LEHE30:
	movq	%rax, -528(%rbp)
	movq	%r14, -512(%rbp)
L605:
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-528(%rbp), %rax
	jmp	L607
	.align 4,0x90
L760:
	testq	%r14, %r14
	js	L768
	leaq	1(%r14), %rdi
LEHB31:
	call	__Znwm
LEHE31:
	movq	%rax, -368(%rbp)
	movq	-680(%rbp), %rsi
	movq	%r14, -352(%rbp)
L623:
	movq	%r14, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-368(%rbp), %rax
	jmp	L625
	.align 4,0x90
L757:
	movzbl	(%r15), %eax
	movb	%al, -512(%rbp)
	movq	-616(%rbp), %rax
	jmp	L607
	.align 4,0x90
L761:
	movzbl	(%rsi), %edx
	movb	%dl, -352(%rbp)
	jmp	L625
	.align 4,0x90
L762:
	movq	(%rbx), %rax
	movq	$0, 8(%rbx)
	movb	$0, (%rax)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	jmp	L636
	.align 4,0x90
L600:
	movq	-552(%rbp), %rcx
	movq	-560(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	movq	%rax, -600(%rbp)
	cmpq	$-1, %rax
	jne	L742
	movq	%r14, -600(%rbp)
	jmp	L601
	.align 4,0x90
L758:
	leaq	-496(%rbp), %rbx
	movq	-688(%rbp), %rdx
	leaq	lC31(%rip), %rsi
	movq	%rbx, %rdi
LEHB32:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE32:
	movabsq	$9223372036854775807, %rax
	subq	-488(%rbp), %rax
	cmpq	$16, %rax
	jbe	L769
	movl	$17, %edx
	leaq	lC32(%rip), %rsi
	movq	%rbx, %rdi
LEHB33:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE33:
	leaq	-464(%rbp), %r12
	leaq	16(%r12), %rdx
	movq	%rdx, -464(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L770
	movq	%rcx, -464(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -448(%rbp)
L611:
	movq	8(%rax), %rcx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%rcx, -456(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
LEHB34:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	-664(%rbp), %rsi
	movq	%rax, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r13
	testq	%r13, %r13
	je	L771
	cmpb	$0, 56(%r13)
	je	L613
	movsbl	67(%r13), %esi
L614:
	movq	%r14, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE34:
	jmp	L750
L754:
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	subq	%rax, %rsi
LEHB35:
	call	__ZNSt6vectorImSaImEE17_M_default_appendEm
LEHE35:
	jmp	L599
L752:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -448(%rbp)
	jmp	L592
L770:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -448(%rbp)
	jmp	L611
L594:
	movq	%r14, %rdi
LEHB36:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L595
	movq	%r14, %rdi
	call	*%rax
LEHE36:
	movsbl	%al, %esi
	jmp	L595
L763:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rdx
	movq	(%rbx), %rdi
	subq	-600(%rbp), %rdx
	jmp	L637
L613:
	movq	%r13, %rdi
LEHB37:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L614
	movq	%r13, %rdi
	call	*%rax
LEHE37:
	movsbl	%al, %esi
	jmp	L614
L692:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rdi
	je	L738
	vzeroupper
	call	__ZdlPv
L665:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L666
	call	__ZdlPv
L666:
	movq	%r13, %rbx
L633:
	movq	-712(%rbp), %rax
	movq	-528(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L672
	call	__ZdlPv
L672:
	movq	-704(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L673
	call	__ZdlPv
L673:
	movq	-696(%rbp), %rax
	movq	-592(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L674
	call	__ZdlPv
L674:
	movq	%rbx, %rdi
LEHB38:
	call	__Unwind_Resume
LEHE38:
L738:
	vzeroupper
	jmp	L665
L768:
	leaq	lC0(%rip), %rdi
LEHB39:
	call	__ZSt20__throw_length_errorPKc
LEHE39:
L698:
	movq	%rax, %rbx
	vzeroupper
L629:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	80(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeD1Ev
L630:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	movq	8(%rax), %rax
	movq	48(%rcx), %rdx
	movq	-24(%rax), %rax
	movq	%rdx, -464(%rbp,%rax)
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -448(%rbp,%rax)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -464(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
L620:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	128(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L633
L690:
L745:
	movq	%rax, %rbx
	vzeroupper
	jmp	L633
L769:
	leaq	lC6(%rip), %rdi
LEHB40:
	call	__ZSt20__throw_length_errorPKc
LEHE40:
L751:
	leaq	lC6(%rip), %rdi
LEHB41:
	call	__ZSt20__throw_length_errorPKc
LEHE41:
L771:
LEHB42:
	call	__ZSt16__throw_bad_castv
LEHE42:
L693:
	movq	%rax, %rbx
	movq	%r12, %rdi
	vzeroupper
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	L633
L689:
	movq	%rax, %rbx
	vzeroupper
	jmp	L672
L687:
	movq	%rax, %r13
	vzeroupper
L661:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L662
	call	__ZdlPv
L662:
	movq	%r13, %rdi
LEHB43:
	call	__Unwind_Resume
LEHE43:
L696:
	movq	%rax, %rbx
	leaq	24(%r12), %rdi
	vzeroupper
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	jmp	L630
L765:
	leaq	lC4(%rip), %rdi
LEHB44:
	call	__ZSt19__throw_logic_errorPKc
LEHE44:
L766:
	leaq	lC4(%rip), %rdi
LEHB45:
	call	__ZSt19__throw_logic_errorPKc
LEHE45:
L767:
	leaq	lC0(%rip), %rdi
LEHB46:
	call	__ZSt20__throw_length_errorPKc
L700:
	jmp	L745
L694:
	movq	%rax, %rbx
	movq	-720(%rbp), %rax
	movq	-496(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L739
	vzeroupper
	call	__ZdlPv
	jmp	L633
L688:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rdi
	je	L737
	vzeroupper
	call	__ZdlPv
	jmp	L661
L695:
	movq	%rax, %rbx
	vzeroupper
	jmp	L620
L691:
	movq	%rax, %r13
	vzeroupper
	jmp	L665
L755:
	leaq	lC4(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE46:
L753:
LEHB47:
	call	__ZSt16__throw_bad_castv
LEHE47:
L739:
	vzeroupper
	jmp	L633
L759:
	leaq	lC4(%rip), %rdi
LEHB48:
	call	__ZSt19__throw_logic_errorPKc
LEHE48:
L699:
	movq	-368(%rbp), %rdi
	movq	%rax, %rbx
	leaq	112(%r12), %rax
	cmpq	%rax, %rdi
	je	L736
	vzeroupper
	call	__ZdlPv
	jmp	L629
L697:
	movq	%rax, %rbx
	movq	-624(%rbp), %rcx
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	vzeroupper
	jmp	L620
L737:
	vzeroupper
	jmp	L661
L736:
	vzeroupper
	jmp	L629
LFE6788:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDA6788:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xdf,0x2
	.set L$set$62,LEHB22-LFB6788
	.long L$set$62
	.set L$set$63,LEHE22-LEHB22
	.long L$set$63
	.long	0
	.byte	0
	.set L$set$64,LEHB23-LFB6788
	.long L$set$64
	.set L$set$65,LEHE23-LEHB23
	.long L$set$65
	.set L$set$66,L687-LFB6788
	.long L$set$66
	.byte	0
	.set L$set$67,LEHB24-LFB6788
	.long L$set$67
	.set L$set$68,LEHE24-LEHB24
	.long L$set$68
	.set L$set$69,L688-LFB6788
	.long L$set$69
	.byte	0
	.set L$set$70,LEHB25-LFB6788
	.long L$set$70
	.set L$set$71,LEHE25-LEHB25
	.long L$set$71
	.set L$set$72,L695-LFB6788
	.long L$set$72
	.byte	0
	.set L$set$73,LEHB26-LFB6788
	.long L$set$73
	.set L$set$74,LEHE26-LEHB26
	.long L$set$74
	.set L$set$75,L697-LFB6788
	.long L$set$75
	.byte	0
	.set L$set$76,LEHB27-LFB6788
	.long L$set$76
	.set L$set$77,LEHE27-LEHB27
	.long L$set$77
	.set L$set$78,L699-LFB6788
	.long L$set$78
	.byte	0
	.set L$set$79,LEHB28-LFB6788
	.long L$set$79
	.set L$set$80,LEHE28-LEHB28
	.long L$set$80
	.set L$set$81,L696-LFB6788
	.long L$set$81
	.byte	0
	.set L$set$82,LEHB29-LFB6788
	.long L$set$82
	.set L$set$83,LEHE29-LEHB29
	.long L$set$83
	.set L$set$84,L693-LFB6788
	.long L$set$84
	.byte	0
	.set L$set$85,LEHB30-LFB6788
	.long L$set$85
	.set L$set$86,LEHE30-LEHB30
	.long L$set$86
	.set L$set$87,L689-LFB6788
	.long L$set$87
	.byte	0
	.set L$set$88,LEHB31-LFB6788
	.long L$set$88
	.set L$set$89,LEHE31-LEHB31
	.long L$set$89
	.set L$set$90,L698-LFB6788
	.long L$set$90
	.byte	0
	.set L$set$91,LEHB32-LFB6788
	.long L$set$91
	.set L$set$92,LEHE32-LEHB32
	.long L$set$92
	.set L$set$93,L690-LFB6788
	.long L$set$93
	.byte	0
	.set L$set$94,LEHB33-LFB6788
	.long L$set$94
	.set L$set$95,LEHE33-LEHB33
	.long L$set$95
	.set L$set$96,L691-LFB6788
	.long L$set$96
	.byte	0
	.set L$set$97,LEHB34-LFB6788
	.long L$set$97
	.set L$set$98,LEHE34-LEHB34
	.long L$set$98
	.set L$set$99,L692-LFB6788
	.long L$set$99
	.byte	0
	.set L$set$100,LEHB35-LFB6788
	.long L$set$100
	.set L$set$101,LEHE35-LEHB35
	.long L$set$101
	.long	0
	.byte	0
	.set L$set$102,LEHB36-LFB6788
	.long L$set$102
	.set L$set$103,LEHE36-LEHB36
	.long L$set$103
	.set L$set$104,L688-LFB6788
	.long L$set$104
	.byte	0
	.set L$set$105,LEHB37-LFB6788
	.long L$set$105
	.set L$set$106,LEHE37-LEHB37
	.long L$set$106
	.set L$set$107,L692-LFB6788
	.long L$set$107
	.byte	0
	.set L$set$108,LEHB38-LFB6788
	.long L$set$108
	.set L$set$109,LEHE38-LEHB38
	.long L$set$109
	.long	0
	.byte	0
	.set L$set$110,LEHB39-LFB6788
	.long L$set$110
	.set L$set$111,LEHE39-LEHB39
	.long L$set$111
	.set L$set$112,L698-LFB6788
	.long L$set$112
	.byte	0
	.set L$set$113,LEHB40-LFB6788
	.long L$set$113
	.set L$set$114,LEHE40-LEHB40
	.long L$set$114
	.set L$set$115,L691-LFB6788
	.long L$set$115
	.byte	0
	.set L$set$116,LEHB41-LFB6788
	.long L$set$116
	.set L$set$117,LEHE41-LEHB41
	.long L$set$117
	.set L$set$118,L687-LFB6788
	.long L$set$118
	.byte	0
	.set L$set$119,LEHB42-LFB6788
	.long L$set$119
	.set L$set$120,LEHE42-LEHB42
	.long L$set$120
	.set L$set$121,L692-LFB6788
	.long L$set$121
	.byte	0
	.set L$set$122,LEHB43-LFB6788
	.long L$set$122
	.set L$set$123,LEHE43-LEHB43
	.long L$set$123
	.long	0
	.byte	0
	.set L$set$124,LEHB44-LFB6788
	.long L$set$124
	.set L$set$125,LEHE44-LEHB44
	.long L$set$125
	.set L$set$126,L700-LFB6788
	.long L$set$126
	.byte	0
	.set L$set$127,LEHB45-LFB6788
	.long L$set$127
	.set L$set$128,LEHE45-LEHB45
	.long L$set$128
	.set L$set$129,L694-LFB6788
	.long L$set$129
	.byte	0
	.set L$set$130,LEHB46-LFB6788
	.long L$set$130
	.set L$set$131,LEHE46-LEHB46
	.long L$set$131
	.set L$set$132,L689-LFB6788
	.long L$set$132
	.byte	0
	.set L$set$133,LEHB47-LFB6788
	.long L$set$133
	.set L$set$134,LEHE47-LEHB47
	.long L$set$134
	.set L$set$135,L688-LFB6788
	.long L$set$135
	.byte	0
	.set L$set$136,LEHB48-LFB6788
	.long L$set$136
	.set L$set$137,LEHE48-LEHB48
	.long L$set$137
	.set L$set$138,L698-LFB6788
	.long L$set$138
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIfSaIfEE17_M_default_appendEm
	.weak_definition __ZNSt6vectorIfSaIfEE17_M_default_appendEm
__ZNSt6vectorIfSaIfEE17_M_default_appendEm:
LFB7232:
	testq	%rsi, %rsi
	je	L795
	pushq	%r15
LCFI152:
	pushq	%r14
LCFI153:
	pushq	%r13
LCFI154:
	pushq	%r12
LCFI155:
	movq	%rdi, %r12
	pushq	%rbp
LCFI156:
	pushq	%rbx
LCFI157:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI158:
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	%rsi, %rax
	jb	L774
	salq	$2, %rbx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	_memset
	addq	%rax, %rbx
	movq	%rbx, 8(%r12)
	addq	$8, %rsp
LCFI159:
	popq	%rbx
LCFI160:
	popq	%rbp
LCFI161:
	popq	%r12
LCFI162:
	popq	%r13
LCFI163:
	popq	%r14
LCFI164:
	popq	%r15
LCFI165:
	ret
	.align 4,0x90
L795:
LCFI166:
	ret
	.align 4,0x90
L774:
LCFI167:
	movabsq	$4611686018427387903, %rdx
	movq	(%rdi), %r15
	movq	%rcx, %r14
	movq	%rdx, %rsi
	subq	%r15, %r14
	movq	%r14, %rax
	sarq	$2, %rax
	subq	%rax, %rsi
	cmpq	%rsi, %rbx
	ja	L798
	cmpq	%rax, %rbx
	movq	%rax, %rsi
	cmovnb	%rbx, %rsi
	addq	%rsi, %rax
	jc	L784
	cmpq	%rdx, %rax
	ja	L784
	testq	%rax, %rax
	je	L785
	leaq	0(,%rax,4), %rbp
L778:
	movq	%rbp, %rdi
	call	__Znwm
	movq	8(%r12), %rcx
	movq	(%r12), %r15
	movq	%rax, %r13
	addq	%rax, %rbp
	movq	%rcx, %r14
	subq	%r15, %r14
L779:
	cmpq	%rcx, %r15
	je	L780
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%r13, %rdi
	addq	%r13, %r14
	call	_memmove
	salq	$2, %rbx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	%r14, %rbx
	call	_memset
L781:
	movq	%r15, %rdi
	call	__ZdlPv
L782:
	movq	%r13, (%r12)
	movq	%rbx, 8(%r12)
	movq	%rbp, 16(%r12)
	addq	$8, %rsp
LCFI168:
	popq	%rbx
LCFI169:
	popq	%rbp
LCFI170:
	popq	%r12
LCFI171:
	popq	%r13
LCFI172:
	popq	%r14
LCFI173:
	popq	%r15
LCFI174:
	ret
	.align 4,0x90
L780:
LCFI175:
	addq	%r13, %r14
	salq	$2, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %rdi
	addq	%r14, %rbx
	call	_memset
	testq	%r15, %r15
	je	L782
	jmp	L781
	.align 4,0x90
L784:
	movq	$-4, %rbp
	jmp	L778
	.align 4,0x90
L785:
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	L779
L798:
	leaq	lC8(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7232:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10Parameters21initialize_arrayparamIfEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
	.weak_definition __ZN8MosaicSC10Parameters21initialize_arrayparamIfEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
__ZN8MosaicSC10Parameters21initialize_arrayparamIfEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE:
LFB6793:
	leaq	8(%rsp), %r10
LCFI176:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI177:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI178:
	pushq	%rbx
	subq	$672, %rsp
LCFI179:
	movq	%rsi, -664(%rbp)
	movq	%rcx, -688(%rbp)
	movq	%r8, -672(%rbp)
	testq	%rsi, %rsi
	jne	L800
	leaq	-496(%rbp), %rbx
	movq	%rcx, %rdx
	leaq	lC29(%rip), %rsi
	movq	%rbx, %rdi
LEHB49:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE49:
	movabsq	$9223372036854775807, %rax
	subq	-488(%rbp), %rax
	cmpq	$28, %rax
	jbe	L962
	movl	$29, %edx
	leaq	lC30(%rip), %rsi
	movq	%rbx, %rdi
LEHB50:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE50:
	leaq	-464(%rbp), %r12
	leaq	16(%r12), %rdx
	movq	%rdx, -464(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L963
	movq	%rcx, -464(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -448(%rbp)
L803:
	movq	8(%rax), %rcx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%rcx, -456(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
LEHB51:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r14
	testq	%r14, %r14
	je	L964
	cmpb	$0, 56(%r14)
	je	L805
	movsbl	67(%r14), %esi
L806:
	movq	%r13, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE51:
L961:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L826
	call	__ZdlPv
L826:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L827
	call	__ZdlPv
L827:
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L800:
	movq	%rdx, %rbx
	movq	8(%r8), %rax
	movq	(%r8), %rdx
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, -664(%rbp)
	ja	L965
	jnb	L810
	movq	-664(%rbp), %rax
	movq	-672(%rbp), %rcx
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 8(%rcx)
L810:
	leaq	-592(%rbp), %rax
	movl	$9, %edx
	movq	$1, -584(%rbp)
	movl	$1, %ecx
	leaq	16(%rax), %rsi
	movq	%rax, -696(%rbp)
	movl	$32, %eax
	leaq	-464(%rbp), %r12
	movw	%ax, -576(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -704(%rbp)
	addq	$16, %rax
	movq	%rax, -560(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -712(%rbp)
	addq	$16, %rax
	movq	%rax, -616(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rsi, -592(%rbp)
	leaq	16(%rax), %r13
	movq	$1, -552(%rbp)
	movw	%dx, -544(%rbp)
	movq	$0, -608(%rbp)
	movq	%rax, -720(%rbp)
	.align 4,0x90
L867:
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	movq	8(%rbx), %r14
	movq	%rax, -600(%rbp)
	cmpq	$-1, %rax
	je	L811
L953:
	cmpq	%rax, %r14
	cmova	%rax, %r14
L812:
	movq	-616(%rbp), %rax
	movq	(%rbx), %r15
	movq	%rax, -528(%rbp)
	movq	%r15, %rax
	addq	%r14, %rax
	je	L813
	testq	%r15, %r15
	je	L966
L813:
	cmpq	$15, %r14
	ja	L967
	cmpq	$1, %r14
	je	L968
	movq	-616(%rbp), %rax
	testq	%r14, %r14
	jne	L816
L818:
	movq	%r14, -520(%rbp)
	movb	$0, (%rax,%r14)
	cmpq	$0, -520(%rbp)
	je	L969
	leaq	128(%r12), %rdi
	call	__ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -112(%rbp)
	xorl	%esi, %esi
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovdqu	%ymm0, -104(%rbp)
	movq	$0, -120(%rbp)
	addq	$16, %rax
	movb	$0, -111(%rbp)
	movq	%rax, -336(%rbp)
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	16(%rax), %r15
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	%rax, -624(%rbp)
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	movq	-24(%r15), %rdi
	addq	%r12, %rdi
	vzeroupper
LEHB52:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE52:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	xorl	%esi, %esi
	movq	32(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	%rax, -632(%rbp)
	movq	-24(%rax), %rax
	leaq	16(%r12,%rax), %rdi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdi)
	movq	%rax, -640(%rbp)
LEHB53:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE53:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r12), %rdi
	movq	8(%rax), %rax
	movq	48(%rcx), %rcx
	movq	%rax, -648(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -656(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -432(%rbp)
	addq	$24, %rax
	vmovaps	%xmm0, -416(%rbp)
	movq	%rax, -464(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -400(%rbp)
	addq	$104, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -448(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeC1Ev
	movq	-528(%rbp), %rsi
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movl	$0, -376(%rbp)
	movq	-520(%rbp), %r14
	movq	%rsi, %rcx
	addq	$16, %rax
	movq	%rsi, -680(%rbp)
	addq	%r14, %rcx
	movq	%rax, -440(%rbp)
	leaq	112(%r12), %rax
	setne	%cl
	testq	%rsi, %rsi
	movq	%rax, -368(%rbp)
	sete	%dl
	testb	%dl, %cl
	jne	L970
	cmpq	$15, %r14
	ja	L971
	cmpq	$1, %r14
	je	L972
	testq	%r14, %r14
	jne	L834
L836:
	movq	%r14, -360(%rbp)
	leaq	24(%r12), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%r14)
	movq	-368(%rbp), %rsi
	movl	$24, -376(%rbp)
LEHB54:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE54:
	leaq	24(%r12), %rsi
	leaq	128(%r12), %rdi
LEHB55:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE55:
	movq	-672(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%r12, %rdi
	movq	(%rax), %rax
	leaq	(%rax,%rcx,4), %rsi
LEHB56:
	call	__ZNSi10_M_extractIfEERSiRT_
LEHE56:
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rsi
	movq	-368(%rbp), %rdi
	addq	$24, %rax
	leaq	64(%rsi), %rcx
	movq	%rax, -464(%rbp)
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	vmovd	%rcx, %xmm0
	addq	$104, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r12), %rax
	vmovaps	%xmm0, -448(%rbp)
	cmpq	%rax, %rdi
	je	L845
	call	__ZdlPv
L845:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	80(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-648(%rbp), %rax
	movq	-656(%rbp), %rsi
	leaq	128(%r12), %rdi
	movq	-640(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rsi, -464(%rbp,%rax)
	movq	-632(%rbp), %rax
	movq	-624(%rbp), %rsi
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -448(%rbp,%rax)
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rsi, -464(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -456(%rbp)
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	cmpq	$-1, -600(%rbp)
	je	L973
	movq	-600(%rbp), %rsi
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	testq	%rsi, %rsi
	je	L847
	xorl	%edx, %edx
	cmpq	%rax, %rsi
	jnb	L848
	subq	%rsi, %rax
	addq	%rdi, %rsi
	cmpq	$1, %rax
	je	L974
	movq	%rax, %rdx
	call	_memmove
	movq	(%rbx), %rdi
	movq	8(%rbx), %rdx
	subq	-600(%rbp), %rdx
	.align 4,0x90
L848:
	movq	%rdx, 8(%rbx)
	movb	$0, (%rdi,%rdx)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
L847:
	testq	%rax, %rax
	movl	$1, %edx
	movq	%rdi, %rcx
	movq	%r13, -496(%rbp)
	cmovne	%rdx, %rax
	addq	%rax, %rcx
	jne	L955
	jmp	L931
	.align 4,0x90
L851:
	subq	%r15, %r14
	cmpq	$2147483647, %r14
	jg	L852
	cmpq	$-2147483648, %r14
	jl	L852
	testl	%r14d, %r14d
	jne	L852
	cmpq	%r13, %rcx
	je	L890
	movq	%rcx, %rdi
	call	__ZdlPv
L890:
	movq	8(%rbx), %rdx
	movq	(%rbx), %rdi
	subq	$1, %rdx
	je	L860
	cmpq	$1, %rdx
	je	L975
	leaq	1(%rdi), %rsi
	call	_memmove
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	leaq	-1(%rax), %rdx
	.align 4,0x90
L860:
	movq	%rdx, 8(%rbx)
	movb	$0, (%rdi,%rdx)
	movq	8(%rbx), %rax
	movl	$1, %edx
	movq	(%rbx), %rdi
	movq	%r13, -496(%rbp)
	testq	%rax, %rax
	cmovne	%rdx, %rax
	movq	%rdi, %rsi
	addq	%rax, %rsi
	je	L931
L955:
	testq	%rdi, %rdi
	je	L976
L931:
	movq	%r13, %rdx
	cmpq	$1, %rax
	jne	L887
	movzbl	(%rdi), %edx
	movb	%dl, -480(%rbp)
	movq	-496(%rbp), %rdx
L887:
	movq	%rax, -488(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-488(%rbp), %r14
	movq	-584(%rbp), %r15
	movq	-496(%rbp), %rcx
	cmpq	%r15, %r14
	movq	%r15, %rdx
	cmovbe	%r14, %rdx
	testq	%rdx, %rdx
	je	L851
	movq	-592(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -600(%rbp)
	call	_memcmp
	movq	-600(%rbp), %rcx
	testl	%eax, %eax
	je	L851
L852:
	movq	8(%rbx), %rdx
	leaq	16(%r12), %rax
	movq	(%rbx), %rsi
	movq	%rax, -464(%rbp)
	movl	$1, %eax
	testq	%rdx, %rdx
	movq	%rsi, %rdi
	cmove	%rdx, %rax
	addq	%rax, %rdi
	setne	%r14b
	testq	%rsi, %rsi
	sete	%dil
	andb	%dil, %r14b
	jne	L977
	testq	%rdx, %rdx
	je	L889
	movzbl	(%rsi), %edx
	movb	%dl, -448(%rbp)
L889:
	movq	%rax, -456(%rbp)
	movq	-552(%rbp), %r9
	movb	$0, -448(%rbp,%rax)
	movq	-456(%rbp), %r15
	movq	%r9, %rdx
	movq	-464(%rbp), %r8
	cmpq	%r9, %r15
	cmovbe	%r15, %rdx
	testq	%rdx, %rdx
	je	L855
	movq	-560(%rbp), %rsi
	movq	%r8, %rdi
	movq	%r9, -632(%rbp)
	movq	%rcx, -624(%rbp)
	movq	%r8, -600(%rbp)
	call	_memcmp
	movq	-600(%rbp), %r8
	movq	-624(%rbp), %rcx
	testl	%eax, %eax
	movq	-632(%rbp), %r9
	jne	L856
L855:
	subq	%r9, %r15
	cmpq	$2147483647, %r15
	jg	L856
	cmpq	$-2147483648, %r15
	jl	L856
	testl	%r15d, %r15d
	sete	%r14b
L856:
	leaq	16(%r12), %rax
	cmpq	%rax, %r8
	je	L857
	movq	%r8, %rdi
	call	__ZdlPv
	movq	-496(%rbp), %rcx
L857:
	cmpq	%r13, %rcx
	je	L858
	movq	%rcx, %rdi
	call	__ZdlPv
L858:
	testb	%r14b, %r14b
	jne	L890
	movq	-528(%rbp), %rdi
	cmpq	-616(%rbp), %rdi
	je	L864
	call	__ZdlPv
	addq	$1, -608(%rbp)
	movq	-608(%rbp), %rax
	cmpq	%rax, -664(%rbp)
	je	L865
L866:
	movq	-592(%rbp), %rsi
	movq	-584(%rbp), %rcx
	jmp	L867
	.align 4,0x90
L975:
	movzbl	1(%rdi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	leaq	-1(%rax), %rdx
	jmp	L860
	.align 4,0x90
L864:
	addq	$1, -608(%rbp)
	movq	-608(%rbp), %rax
	cmpq	%rax, -664(%rbp)
	jne	L866
L865:
	movq	-704(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L868
	call	__ZdlPv
L868:
	movq	-696(%rbp), %rax
	movq	-592(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L951
	call	__ZdlPv
L951:
	addq	$672, %rsp
	popq	%rbx
	popq	%r10
LCFI180:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI181:
	ret
	.align 4,0x90
L967:
LCFI182:
	testq	%r14, %r14
	js	L978
	leaq	1(%r14), %rdi
LEHB57:
	call	__Znwm
LEHE57:
	movq	%rax, -528(%rbp)
	movq	%r14, -512(%rbp)
L816:
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-528(%rbp), %rax
	jmp	L818
	.align 4,0x90
L971:
	testq	%r14, %r14
	js	L979
	leaq	1(%r14), %rdi
LEHB58:
	call	__Znwm
LEHE58:
	movq	%rax, -368(%rbp)
	movq	-680(%rbp), %rsi
	movq	%r14, -352(%rbp)
L834:
	movq	%r14, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-368(%rbp), %rax
	jmp	L836
	.align 4,0x90
L968:
	movzbl	(%r15), %eax
	movb	%al, -512(%rbp)
	movq	-616(%rbp), %rax
	jmp	L818
	.align 4,0x90
L972:
	movzbl	(%rsi), %edx
	movb	%dl, -352(%rbp)
	jmp	L836
	.align 4,0x90
L973:
	movq	(%rbx), %rax
	movq	$0, 8(%rbx)
	movb	$0, (%rax)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	jmp	L847
	.align 4,0x90
L811:
	movq	-552(%rbp), %rcx
	movq	-560(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	movq	%rax, -600(%rbp)
	cmpq	$-1, %rax
	jne	L953
	movq	%r14, -600(%rbp)
	jmp	L812
	.align 4,0x90
L969:
	leaq	-496(%rbp), %rbx
	movq	-688(%rbp), %rdx
	leaq	lC31(%rip), %rsi
	movq	%rbx, %rdi
LEHB59:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE59:
	movabsq	$9223372036854775807, %rax
	subq	-488(%rbp), %rax
	cmpq	$16, %rax
	jbe	L980
	movl	$17, %edx
	leaq	lC32(%rip), %rsi
	movq	%rbx, %rdi
LEHB60:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE60:
	leaq	-464(%rbp), %r12
	leaq	16(%r12), %rdx
	movq	%rdx, -464(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L981
	movq	%rcx, -464(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -448(%rbp)
L822:
	movq	8(%rax), %rcx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%rcx, -456(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
LEHB61:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	-664(%rbp), %rsi
	movq	%rax, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r13
	testq	%r13, %r13
	je	L982
	cmpb	$0, 56(%r13)
	je	L824
	movsbl	67(%r13), %esi
L825:
	movq	%r14, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE61:
	jmp	L961
L965:
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	subq	%rax, %rsi
LEHB62:
	call	__ZNSt6vectorIfSaIfEE17_M_default_appendEm
LEHE62:
	jmp	L810
L963:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -448(%rbp)
	jmp	L803
L981:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -448(%rbp)
	jmp	L822
L805:
	movq	%r14, %rdi
LEHB63:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L806
	movq	%r14, %rdi
	call	*%rax
LEHE63:
	movsbl	%al, %esi
	jmp	L806
L974:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rdx
	movq	(%rbx), %rdi
	subq	-600(%rbp), %rdx
	jmp	L848
L824:
	movq	%r13, %rdi
LEHB64:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L825
	movq	%r13, %rdi
	call	*%rax
LEHE64:
	movsbl	%al, %esi
	jmp	L825
L903:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rdi
	je	L949
	vzeroupper
	call	__ZdlPv
L876:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L877
	call	__ZdlPv
L877:
	movq	%r13, %rbx
L844:
	movq	-712(%rbp), %rax
	movq	-528(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L883
	call	__ZdlPv
L883:
	movq	-704(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L884
	call	__ZdlPv
L884:
	movq	-696(%rbp), %rax
	movq	-592(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L885
	call	__ZdlPv
L885:
	movq	%rbx, %rdi
LEHB65:
	call	__Unwind_Resume
LEHE65:
L949:
	vzeroupper
	jmp	L876
L979:
	leaq	lC0(%rip), %rdi
LEHB66:
	call	__ZSt20__throw_length_errorPKc
LEHE66:
L909:
	movq	%rax, %rbx
	vzeroupper
L840:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	80(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -440(%rbp)
	call	__ZNSt6localeD1Ev
L841:
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	movq	8(%rax), %rax
	movq	48(%rcx), %rdx
	movq	-24(%rax), %rax
	movq	%rdx, -464(%rbp,%rax)
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -448(%rbp,%rax)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -464(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
L831:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	128(%r12), %rdi
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L844
L901:
L956:
	movq	%rax, %rbx
	vzeroupper
	jmp	L844
L980:
	leaq	lC6(%rip), %rdi
LEHB67:
	call	__ZSt20__throw_length_errorPKc
LEHE67:
L962:
	leaq	lC6(%rip), %rdi
LEHB68:
	call	__ZSt20__throw_length_errorPKc
LEHE68:
L982:
LEHB69:
	call	__ZSt16__throw_bad_castv
LEHE69:
L904:
	movq	%rax, %rbx
	movq	%r12, %rdi
	vzeroupper
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	L844
L900:
	movq	%rax, %rbx
	vzeroupper
	jmp	L883
L898:
	movq	%rax, %r13
	vzeroupper
L872:
	movq	-496(%rbp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L873
	call	__ZdlPv
L873:
	movq	%r13, %rdi
LEHB70:
	call	__Unwind_Resume
LEHE70:
L907:
	movq	%rax, %rbx
	leaq	24(%r12), %rdi
	vzeroupper
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	jmp	L841
L976:
	leaq	lC4(%rip), %rdi
LEHB71:
	call	__ZSt19__throw_logic_errorPKc
LEHE71:
L977:
	leaq	lC4(%rip), %rdi
LEHB72:
	call	__ZSt19__throw_logic_errorPKc
LEHE72:
L978:
	leaq	lC0(%rip), %rdi
LEHB73:
	call	__ZSt20__throw_length_errorPKc
L911:
	jmp	L956
L905:
	movq	%rax, %rbx
	movq	-720(%rbp), %rax
	movq	-496(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L950
	vzeroupper
	call	__ZdlPv
	jmp	L844
L899:
	movq	-464(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rdi
	je	L948
	vzeroupper
	call	__ZdlPv
	jmp	L872
L906:
	movq	%rax, %rbx
	vzeroupper
	jmp	L831
L902:
	movq	%rax, %r13
	vzeroupper
	jmp	L876
L966:
	leaq	lC4(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE73:
L964:
LEHB74:
	call	__ZSt16__throw_bad_castv
LEHE74:
L950:
	vzeroupper
	jmp	L844
L970:
	leaq	lC4(%rip), %rdi
LEHB75:
	call	__ZSt19__throw_logic_errorPKc
LEHE75:
L910:
	movq	-368(%rbp), %rdi
	movq	%rax, %rbx
	leaq	112(%r12), %rax
	cmpq	%rax, %rdi
	je	L947
	vzeroupper
	call	__ZdlPv
	jmp	L840
L908:
	movq	%rax, %rbx
	movq	-624(%rbp), %rcx
	movq	-24(%r15), %rax
	movq	%r15, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	vzeroupper
	jmp	L831
L948:
	vzeroupper
	jmp	L872
L947:
	vzeroupper
	jmp	L840
LFE6793:
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA6793:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xdf,0x2
	.set L$set$139,LEHB49-LFB6793
	.long L$set$139
	.set L$set$140,LEHE49-LEHB49
	.long L$set$140
	.long	0
	.byte	0
	.set L$set$141,LEHB50-LFB6793
	.long L$set$141
	.set L$set$142,LEHE50-LEHB50
	.long L$set$142
	.set L$set$143,L898-LFB6793
	.long L$set$143
	.byte	0
	.set L$set$144,LEHB51-LFB6793
	.long L$set$144
	.set L$set$145,LEHE51-LEHB51
	.long L$set$145
	.set L$set$146,L899-LFB6793
	.long L$set$146
	.byte	0
	.set L$set$147,LEHB52-LFB6793
	.long L$set$147
	.set L$set$148,LEHE52-LEHB52
	.long L$set$148
	.set L$set$149,L906-LFB6793
	.long L$set$149
	.byte	0
	.set L$set$150,LEHB53-LFB6793
	.long L$set$150
	.set L$set$151,LEHE53-LEHB53
	.long L$set$151
	.set L$set$152,L908-LFB6793
	.long L$set$152
	.byte	0
	.set L$set$153,LEHB54-LFB6793
	.long L$set$153
	.set L$set$154,LEHE54-LEHB54
	.long L$set$154
	.set L$set$155,L910-LFB6793
	.long L$set$155
	.byte	0
	.set L$set$156,LEHB55-LFB6793
	.long L$set$156
	.set L$set$157,LEHE55-LEHB55
	.long L$set$157
	.set L$set$158,L907-LFB6793
	.long L$set$158
	.byte	0
	.set L$set$159,LEHB56-LFB6793
	.long L$set$159
	.set L$set$160,LEHE56-LEHB56
	.long L$set$160
	.set L$set$161,L904-LFB6793
	.long L$set$161
	.byte	0
	.set L$set$162,LEHB57-LFB6793
	.long L$set$162
	.set L$set$163,LEHE57-LEHB57
	.long L$set$163
	.set L$set$164,L900-LFB6793
	.long L$set$164
	.byte	0
	.set L$set$165,LEHB58-LFB6793
	.long L$set$165
	.set L$set$166,LEHE58-LEHB58
	.long L$set$166
	.set L$set$167,L909-LFB6793
	.long L$set$167
	.byte	0
	.set L$set$168,LEHB59-LFB6793
	.long L$set$168
	.set L$set$169,LEHE59-LEHB59
	.long L$set$169
	.set L$set$170,L901-LFB6793
	.long L$set$170
	.byte	0
	.set L$set$171,LEHB60-LFB6793
	.long L$set$171
	.set L$set$172,LEHE60-LEHB60
	.long L$set$172
	.set L$set$173,L902-LFB6793
	.long L$set$173
	.byte	0
	.set L$set$174,LEHB61-LFB6793
	.long L$set$174
	.set L$set$175,LEHE61-LEHB61
	.long L$set$175
	.set L$set$176,L903-LFB6793
	.long L$set$176
	.byte	0
	.set L$set$177,LEHB62-LFB6793
	.long L$set$177
	.set L$set$178,LEHE62-LEHB62
	.long L$set$178
	.long	0
	.byte	0
	.set L$set$179,LEHB63-LFB6793
	.long L$set$179
	.set L$set$180,LEHE63-LEHB63
	.long L$set$180
	.set L$set$181,L899-LFB6793
	.long L$set$181
	.byte	0
	.set L$set$182,LEHB64-LFB6793
	.long L$set$182
	.set L$set$183,LEHE64-LEHB64
	.long L$set$183
	.set L$set$184,L903-LFB6793
	.long L$set$184
	.byte	0
	.set L$set$185,LEHB65-LFB6793
	.long L$set$185
	.set L$set$186,LEHE65-LEHB65
	.long L$set$186
	.long	0
	.byte	0
	.set L$set$187,LEHB66-LFB6793
	.long L$set$187
	.set L$set$188,LEHE66-LEHB66
	.long L$set$188
	.set L$set$189,L909-LFB6793
	.long L$set$189
	.byte	0
	.set L$set$190,LEHB67-LFB6793
	.long L$set$190
	.set L$set$191,LEHE67-LEHB67
	.long L$set$191
	.set L$set$192,L902-LFB6793
	.long L$set$192
	.byte	0
	.set L$set$193,LEHB68-LFB6793
	.long L$set$193
	.set L$set$194,LEHE68-LEHB68
	.long L$set$194
	.set L$set$195,L898-LFB6793
	.long L$set$195
	.byte	0
	.set L$set$196,LEHB69-LFB6793
	.long L$set$196
	.set L$set$197,LEHE69-LEHB69
	.long L$set$197
	.set L$set$198,L903-LFB6793
	.long L$set$198
	.byte	0
	.set L$set$199,LEHB70-LFB6793
	.long L$set$199
	.set L$set$200,LEHE70-LEHB70
	.long L$set$200
	.long	0
	.byte	0
	.set L$set$201,LEHB71-LFB6793
	.long L$set$201
	.set L$set$202,LEHE71-LEHB71
	.long L$set$202
	.set L$set$203,L911-LFB6793
	.long L$set$203
	.byte	0
	.set L$set$204,LEHB72-LFB6793
	.long L$set$204
	.set L$set$205,LEHE72-LEHB72
	.long L$set$205
	.set L$set$206,L905-LFB6793
	.long L$set$206
	.byte	0
	.set L$set$207,LEHB73-LFB6793
	.long L$set$207
	.set L$set$208,LEHE73-LEHB73
	.long L$set$208
	.set L$set$209,L900-LFB6793
	.long L$set$209
	.byte	0
	.set L$set$210,LEHB74-LFB6793
	.long L$set$210
	.set L$set$211,LEHE74-LEHB74
	.long L$set$211
	.set L$set$212,L899-LFB6793
	.long L$set$212
	.byte	0
	.set L$set$213,LEHB75-LFB6793
	.long L$set$213
	.set L$set$214,LEHE75-LEHB75
	.long L$set$214
	.set L$set$215,L909-LFB6793
	.long L$set$215
	.byte	0
	.text
	.cstring
lC33:
	.ascii "Cannot open file: \0"
lC34:
	.ascii "RUN_ini\0"
lC35:
	.ascii "RUN_end\0"
lC36:
	.ascii "nthreads\0"
lC37:
	.ascii "resume\0"
lC38:
	.ascii "Niter\0"
lC39:
	.ascii "logfreq\0"
lC40:
	.ascii "detailedfreq\0"
lC41:
	.ascii "finaldetailed\0"
lC42:
	.ascii "savefreq\0"
lC43:
	.ascii "Ntot\0"
lC44:
	.ascii "dilution\0"
lC45:
	.ascii "inum\0"
lC46:
	.ascii "rates_f\0"
lC47:
	.ascii "syn\0"
lC48:
	.ascii "beta\0"
	.align 3
lC49:
	.ascii "Error in config file: unknown parameter name: \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10Parameters11load_configERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
__ZN8MosaicSC10Parameters11load_configERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
LFB6348:
	leaq	8(%rsp), %r10
LCFI183:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI184:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	leaq	-1488(%rbp), %rax
LCFI185:
	leaq	-976(%rbp), %r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI186:
	pushq	%rbx
LCFI187:
	movq	%rsi, %rbx
	subq	$1568, %rsp
	movq	%rax, -1496(%rbp)
	addq	$16, %rax
	movq	%rax, -1488(%rbp)
	leaq	-1456(%rbp), %rax
	movq	%rdi, -1504(%rbp)
	leaq	640(%r14), %rdi
	movq	%rax, -1520(%rbp)
	addq	$16, %rax
	movq	%rax, -1456(%rbp)
	movq	$0, -1480(%rbp)
	movb	$0, -1472(%rbp)
	movq	$0, -1448(%rbp)
	movb	$0, -1440(%rbp)
	movq	%r14, -1512(%rbp)
	call	__ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -112(%rbp)
	xorl	%esi, %esi
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovdqu	%ymm0, -104(%rbp)
	movq	$0, -120(%rbp)
	addq	$16, %rax
	movb	$0, -111(%rbp)
	movq	%rax, -336(%rbp)
	movq	__ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	16(%rax), %rcx
	movq	-24(%rdx), %rax
	movq	%rdx, -976(%rbp)
	movq	%rdx, -1600(%rbp)
	movq	%rcx, -976(%rbp,%rax)
	movq	$0, -968(%rbp)
	movq	-24(%rdx), %rdi
	movq	%rcx, -1608(%rbp)
	addq	%r14, %rdi
	vzeroupper
LEHB76:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE76:
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	16(%r14), %rdi
	addq	$24, %rax
	movq	%rax, -976(%rbp)
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -336(%rbp)
LEHB77:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE77:
	leaq	16(%r14), %rsi
	leaq	640(%r14), %rdi
LEHB78:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	(%rbx), %rsi
	leaq	16(%r14), %rdi
	movl	$8, %edx
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-976(%rbp), %rdx
	addq	-24(%rdx), %r14
	movq	%r14, %rdi
	testq	%rax, %rax
	je	L1416
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE78:
L985:
	movq	-1512(%rbp), %rax
	leaq	144(%rax), %rdi
	call	__ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	jne	L990
	leaq	-1392(%rbp), %r12
	movq	%rbx, %rdx
	leaq	lC33(%rip), %rsi
	movq	%r12, %rdi
LEHB79:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE79:
	movq	-1384(%rbp), %rdx
	movq	-1392(%rbp), %rsi
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
LEHB80:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
LEHE80:
L1400:
	movq	-1392(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L1189
	call	__ZdlPv
L1189:
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L990:
	movq	-1512(%rbp), %rbx
	xorl	%esi, %esi
	leaq	640(%rbx), %rdi
LEHB81:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	__ZNSi5seekgExSt12_Ios_Seekdir
	leaq	-1392(%rbp), %r15
	leaq	16(%r15), %rax
	movq	%rax, -1544(%rbp)
	leaq	-1424(%rbp), %rax
	movq	%rax, -1616(%rbp)
	.align 4,0x90
L992:
	movl	-304(%rbp), %eax
	testl	%eax, %eax
	jne	L993
L1420:
	movq	-1496(%rbp), %rbx
	movq	-1520(%rbp), %rcx
	movq	-1512(%rbp), %rsi
	movq	-1504(%rbp), %rdi
	movq	%rbx, %rdx
	call	__ZN8MosaicSC10Parameters15preprocess_lineERSt14basic_ifstreamIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIcS3_SaIcEEESA_
LEHE81:
	testb	%al, %al
	je	L992
	leaq	lC34(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L995
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rcx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB82:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE82:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB83:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE83:
	movq	8(%r13), %rax
	movq	48(%r13), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1584(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rcx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rcx
	je	L998
	testq	%rax, %rax
	je	L1417
L998:
	cmpq	$15, %rbx
	ja	L1418
	cmpq	$1, %rbx
	je	L1419
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1003
L1005:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB84:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE84:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB85:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE85:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	64(%rax), %rsi
LEHB86:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE86:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rdx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rdx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1014
	call	__ZdlPv
L1014:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rdx
	movq	-1568(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rdx, -1392(%rbp,%rax)
	movq	-1560(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1376(%rbp,%rax)
L1380:
	movq	-24(%r12), %rax
	movq	-1552(%rbp), %rdx
	movq	%r12, -1392(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
L1381:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	128(%r15), %rdi
	movq	$0, -1384(%rbp)
	addq	$16, %rax
	movq	%rax, -1264(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movl	-304(%rbp), %eax
	testl	%eax, %eax
	je	L1420
L993:
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	-1512(%rbp), %rbx
	addq	$24, %rax
	leaq	16(%rbx), %rdi
	movq	%rax, -976(%rbp)
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -960(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	144(%rbx), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	72(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, -960(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1600(%rbp), %rax
	movq	-1608(%rbp), %rsi
	leaq	640(%rbx), %rdi
	movq	%rax, -976(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -976(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -968(%rbp)
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	-1520(%rbp), %rax
	movq	-1456(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1190
	call	__ZdlPv
L1190:
	movq	-1496(%rbp), %rax
	movq	-1488(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1377
	call	__ZdlPv
L1377:
	addq	$1568, %rsp
	popq	%rbx
	popq	%r10
LCFI188:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI189:
	ret
	.align 4,0x90
L995:
LCFI190:
	movq	-1496(%rbp), %rdi
	leaq	lC35(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1015
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rdx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB87:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE87:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB88:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE88:
	movq	8(%r13), %rax
	movq	48(%r13), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1584(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rdx, %rax
	addq	%rbx, %rdx
	je	L1018
	testq	%rax, %rax
	je	L1421
L1018:
	cmpq	$15, %rbx
	ja	L1422
	cmpq	$1, %rbx
	je	L1423
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1023
L1025:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB89:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE89:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB90:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE90:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	72(%rax), %rsi
LEHB91:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE91:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rdx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rdx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1033
	call	__ZdlPv
L1033:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rbx
	movq	-24(%rax), %rax
	movq	%rbx, -1392(%rbp,%rax)
L1383:
	movq	-1560(%rbp), %rax
	movq	-1568(%rbp), %rsi
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -1376(%rbp,%rax)
	jmp	L1380
	.align 4,0x90
L1015:
	movq	-1496(%rbp), %rdi
	leaq	lC36(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1034
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rcx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB92:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE92:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB93:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE93:
	movq	8(%r13), %rax
	movq	48(%r13), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -1584(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rsi
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rsi, %rax
	addq	%rbx, %rsi
	je	L1037
	testq	%rax, %rax
	je	L1424
L1037:
	cmpq	$15, %rbx
	ja	L1425
	cmpq	$1, %rbx
	je	L1426
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1042
L1044:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB94:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE94:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB95:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE95:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	80(%rax), %rsi
LEHB96:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE96:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rbx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rbx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1052
	call	__ZdlPv
L1052:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rcx
	movq	-1568(%rbp), %rbx
	movq	-24(%rax), %rax
	movq	%rcx, -1392(%rbp,%rax)
	movq	-1560(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
L1384:
	movq	%rbx, -1376(%rbp,%rax)
	movq	-1552(%rbp), %rcx
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	jmp	L1381
	.align 4,0x90
L1418:
	testq	%rbx, %rbx
	js	L1427
	leaq	1(%rbx), %rdi
LEHB97:
	call	__Znwm
LEHE97:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1003:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1005
	.align 4,0x90
L1034:
	movq	-1496(%rbp), %rdi
	leaq	lC37(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1053
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rbx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB98:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE98:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB99:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE99:
	movq	8(%r13), %rax
	movq	48(%r13), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1584(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rdx, %rax
	addq	%rbx, %rdx
	je	L1056
	testq	%rax, %rax
	je	L1428
L1056:
	cmpq	$15, %rbx
	ja	L1429
	cmpq	$1, %rbx
	je	L1430
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1061
L1063:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB100:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE100:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB101:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE101:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	88(%rax), %rsi
LEHB102:
	call	__ZNSirsERi
LEHE102:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rsi
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rsi, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1071
	call	__ZdlPv
L1071:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rsi
	movq	-1568(%rbp), %rdx
	movq	-24(%rax), %rax
	movq	%rsi, -1392(%rbp,%rax)
	movq	-1560(%rbp), %rax
	movq	-1552(%rbp), %rsi
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -1376(%rbp,%rax)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rsi, -1392(%rbp,%rax)
	jmp	L1381
	.align 4,0x90
L1423:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1025
	.align 4,0x90
L1419:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1005
	.align 4,0x90
L1416:
	movl	32(%r14), %esi
	orl	$4, %esi
LEHB103:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE103:
	jmp	L985
	.align 4,0x90
L1422:
	testq	%rbx, %rbx
	js	L1431
	leaq	1(%rbx), %rdi
LEHB104:
	call	__Znwm
LEHE104:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1023:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1025
	.align 4,0x90
L1053:
	movq	-1496(%rbp), %rdi
	leaq	lC38(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1072
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rbx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB105:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE105:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB106:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE106:
	movq	8(%r13), %rax
	movq	48(%r13), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -1584(%rbp)
	movq	%rsi, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rdx, %rax
	addq	%rbx, %rdx
	je	L1075
	testq	%rax, %rax
	jne	L1075
	leaq	lC4(%rip), %rdi
LEHB107:
	call	__ZSt19__throw_logic_errorPKc
LEHE107:
	.align 4,0x90
L1426:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1044
	.align 4,0x90
L1075:
	cmpq	$15, %rbx
	ja	L1432
	cmpq	$1, %rbx
	je	L1433
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1080
L1082:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB108:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE108:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB109:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE109:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	96(%rax), %rsi
LEHB110:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE110:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rcx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1090
	call	__ZdlPv
L1090:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rbx
	movq	-1568(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rbx, -1392(%rbp,%rax)
	movq	-1560(%rbp), %rax
	movq	-1552(%rbp), %rbx
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1376(%rbp,%rax)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	jmp	L1381
	.align 4,0x90
L1425:
	testq	%rbx, %rbx
	js	L1434
	leaq	1(%rbx), %rdi
LEHB111:
	call	__Znwm
LEHE111:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1042:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1044
	.align 4,0x90
L1072:
	movq	-1496(%rbp), %rdi
	leaq	lC39(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	je	L1435
	movq	-1496(%rbp), %rdi
	leaq	lC40(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1110
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	movq	16(%r13), %rbx
	vmovdqu	%ymm0, -1032(%rbp)
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movq	$0, -1048(%rbp)
	movq	%rax, %rsi
	movq	%rax, -1552(%rbp)
	movq	-24(%rbx), %rax
	movb	$0, -1039(%rbp)
	movq	%rbx, -1392(%rbp)
	movq	%rsi, -1392(%rbp,%rax)
	xorl	%esi, %esi
	movq	$0, -1384(%rbp)
	movq	-24(%rbx), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB112:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE112:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB113:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE113:
	movq	8(%r13), %rax
	movq	48(%r13), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -1584(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %r12
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rcx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rcx, %rax
	addq	%r12, %rax
	je	L1113
	testq	%rcx, %rcx
	je	L1436
L1113:
	cmpq	$15, %r12
	ja	L1437
	cmpq	$1, %r12
	je	L1438
	leaq	112(%r15), %rax
	testq	%r12, %r12
	jne	L1118
L1120:
	movq	%r12, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%r12)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB114:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE114:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB115:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE115:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	112(%rax), %rsi
LEHB116:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE116:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rcx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1128
	call	__ZdlPv
L1128:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rcx
	movq	-1568(%rbp), %rsi
	movq	-24(%rax), %rax
	movq	%rcx, -1392(%rbp,%rax)
	movq	-1560(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -1376(%rbp,%rax)
	movq	-24(%rbx), %rax
	movq	%rbx, -1392(%rbp)
	movq	-1552(%rbp), %rbx
	movq	%rbx, -1392(%rbp,%rax)
	jmp	L1381
	.align 4,0x90
L1429:
	testq	%rbx, %rbx
	js	L1439
	leaq	1(%rbx), %rdi
LEHB117:
	call	__Znwm
LEHE117:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1061:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1063
L1430:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1063
L1435:
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rcx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB118:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE118:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1560(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1568(%rbp)
LEHB119:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE119:
	movq	8(%r13), %rax
	movq	48(%r13), %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1576(%rbp)
	movq	-24(%rax), %rax
	movq	%rbx, -1584(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, -1592(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rdx, %rax
	addq	%rbx, %rdx
	je	L1094
	testq	%rax, %rax
	je	L1440
L1094:
	cmpq	$15, %rbx
	ja	L1441
	cmpq	$1, %rbx
	je	L1442
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1099
L1101:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB120:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE120:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB121:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE121:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	104(%rax), %rsi
LEHB122:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE122:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rsi
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rsi, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1109
	call	__ZdlPv
L1109:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1576(%rbp), %rax
	movq	-1584(%rbp), %rdx
	movq	-24(%rax), %rax
	movq	%rdx, -1392(%rbp,%rax)
	jmp	L1383
L1433:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1082
L1432:
	testq	%rbx, %rbx
	js	L1443
	leaq	1(%rbx), %rdi
LEHB123:
	call	__Znwm
LEHE123:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1080:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1082
L1110:
	movq	-1496(%rbp), %rdi
	leaq	lC41(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1129
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rbx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB124:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE124:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1568(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1576(%rbp)
LEHB125:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE125:
	movq	8(%r13), %rax
	movq	48(%r13), %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1584(%rbp)
	movq	-24(%rax), %rax
	movq	%rbx, -1592(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rcx
	movq	%rax, -1560(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	je	L1132
	testq	%rcx, %rcx
	je	L1444
L1132:
	cmpq	$15, %rbx
	ja	L1445
	cmpq	$1, %rbx
	je	L1446
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1137
L1139:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB126:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE126:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB127:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE127:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	120(%rax), %rsi
LEHB128:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE128:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rcx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1147
	call	__ZdlPv
L1147:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1584(%rbp), %rax
	movq	-1592(%rbp), %rdx
	movq	-1576(%rbp), %rsi
	movq	-1552(%rbp), %rbx
	movq	-24(%rax), %rax
	movq	%rdx, -1392(%rbp,%rax)
	movq	-1568(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -1376(%rbp,%rax)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rbx, -1392(%rbp,%rax)
	jmp	L1381
L1441:
	testq	%rbx, %rbx
	js	L1447
	leaq	1(%rbx), %rdi
LEHB129:
	call	__Znwm
LEHE129:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1099:
	movq	-1592(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1101
L1442:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1101
L1129:
	movq	-1496(%rbp), %rdi
	leaq	lC42(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1148
	leaq	128(%r15), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r13
	movb	$0, -1040(%rbp)
	addq	$16, %rax
	vmovdqu	%ymm0, -1032(%rbp)
	movq	16(%r13), %r12
	movq	%rax, -1264(%rbp)
	movq	24(%r13), %rax
	movb	$0, -1039(%rbp)
	movq	$0, -1048(%rbp)
	movq	%rax, %rdx
	movq	%rax, -1552(%rbp)
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	movq	-24(%r12), %rdi
	addq	%r15, %rdi
	vzeroupper
LEHB130:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE130:
	movq	32(%r13), %rax
	movq	-1544(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -1376(%rbp)
	addq	-24(%rax), %rdi
	movq	%rax, -1568(%rbp)
	movq	40(%r13), %rax
	movq	%rax, (%rdi)
	movq	%rax, -1576(%rbp)
LEHB131:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE131:
	movq	8(%r13), %rax
	movq	48(%r13), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%r15), %rdi
	movq	__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %r14
	movq	%rax, -1584(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -1592(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	leaq	24(%r14), %rax
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	movq	%rax, -1264(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -1376(%rbp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vmovaps	%xmm0, -1360(%rbp)
	movq	%rax, -1528(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	vmovaps	%xmm0, -1344(%rbp)
	vmovaps	%xmm0, -1328(%rbp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	-1448(%rbp), %rbx
	movl	$0, -1304(%rbp)
	movq	%rax, -1536(%rbp)
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, %rsi
	movq	%rax, -1560(%rbp)
	leaq	112(%r15), %rax
	movq	%rax, -1296(%rbp)
	movq	%rsi, %rax
	addq	%rbx, %rax
	je	L1151
	testq	%rsi, %rsi
	je	L1448
L1151:
	cmpq	$15, %rbx
	ja	L1449
	cmpq	$1, %rbx
	je	L1450
	leaq	112(%r15), %rax
	testq	%rbx, %rbx
	jne	L1156
L1158:
	movq	%rbx, -1288(%rbp)
	leaq	24(%r15), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%rbx)
	movq	-1296(%rbp), %rsi
	movl	$24, -1304(%rbp)
LEHB132:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE132:
	leaq	24(%r15), %rsi
	leaq	128(%r15), %rdi
LEHB133:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE133:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	128(%rax), %rsi
LEHB134:
	call	__ZNSi10_M_extractImEERSiRT_
LEHE134:
	leaq	24(%r14), %rax
	leaq	64(%r14), %rdx
	movq	-1296(%rbp), %rdi
	movq	%rax, -1392(%rbp)
	leaq	104(%r14), %rax
	vmovd	%rdx, %xmm0
	movq	%rax, -1264(%rbp)
	movq	-1536(%rbp), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	leaq	112(%r15), %rax
	vmovaps	%xmm0, -1376(%rbp)
	cmpq	%rax, %rdi
	je	L1166
	call	__ZdlPv
L1166:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1584(%rbp), %rax
	movq	-1592(%rbp), %rsi
	movq	-1576(%rbp), %rbx
	movq	-24(%rax), %rax
	movq	%rsi, -1392(%rbp,%rax)
	movq	-1568(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	jmp	L1384
L1437:
	testq	%r12, %r12
	js	L1451
	leaq	1(%r12), %rdi
LEHB135:
	call	__Znwm
LEHE135:
	movq	%rax, -1296(%rbp)
	movq	%r12, -1280(%rbp)
L1118:
	movq	-1592(%rbp), %rsi
	movq	%r12, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1120
L1438:
	movq	-1592(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1120
L1148:
	movq	-1496(%rbp), %rdi
	leaq	lC43(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1167
	movq	-1504(%rbp), %rax
	movq	-1456(%rbp), %r12
	movabsq	$7163383543872976238, %rdx
	movq	-1448(%rbp), %rbx
	leaq	136(%rax), %r13
	movq	-1544(%rbp), %rax
	movq	%rax, -1392(%rbp)
	movq	%rdx, (%rax)
	movl	$1701869908, 8(%rax)
	movb	$115, 12(%rax)
	movq	-1616(%rbp), %rax
	movq	$13, -1384(%rbp)
	addq	$16, %rax
	movb	$0, -1363(%rbp)
	movq	%rax, -1424(%rbp)
	movq	%r12, %rax
	addq	%rbx, %rax
	je	L1168
	testq	%r12, %r12
	je	L1452
L1168:
	cmpq	$15, %rbx
	ja	L1453
	cmpq	$1, %rbx
	je	L1454
	movq	-1616(%rbp), %rax
	addq	$16, %rax
	testq	%rbx, %rbx
	jne	L1171
L1173:
	movq	%rbx, -1416(%rbp)
	movq	-1504(%rbp), %rdi
	movq	%r13, %r8
	movq	%r15, %rcx
	movb	$0, (%rax,%rbx)
	movq	-1616(%rbp), %rbx
	movl	$4, %esi
	movq	%rbx, %rdx
LEHB136:
	call	__ZN8MosaicSC10Parameters21initialize_arrayparamImEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
LEHE136:
	movq	%rbx, %rax
	movq	-1424(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1185
L1393:
	call	__ZdlPv
L1185:
	movq	-1392(%rbp), %rdi
	cmpq	-1544(%rbp), %rdi
	je	L992
	call	__ZdlPv
	jmp	L992
L1446:
	movq	-1560(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1139
L1445:
	testq	%rbx, %rbx
	js	L1455
	leaq	1(%rbx), %rdi
LEHB137:
	call	__Znwm
LEHE137:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1137:
	movq	-1560(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1139
L1167:
	movq	-1496(%rbp), %rdi
	leaq	lC44(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1176
	movq	-1520(%rbp), %rsi
	movl	$24, %edx
	movq	%r15, %rdi
LEHB138:
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode
LEHE138:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	160(%rax), %rsi
LEHB139:
	call	__ZNSi10_M_extractIfEERSiRT_
LEHE139:
L1379:
	movq	%r15, %rdi
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	L992
L1450:
	movq	-1560(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1280(%rbp)
	leaq	112(%r15), %rax
	jmp	L1158
L1449:
	testq	%rbx, %rbx
	js	L1456
	leaq	1(%rbx), %rdi
LEHB140:
	call	__Znwm
LEHE140:
	movq	%rax, -1296(%rbp)
	movq	%rbx, -1280(%rbp)
L1156:
	movq	-1560(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-1296(%rbp), %rax
	jmp	L1158
L1176:
	movq	-1496(%rbp), %rdi
	leaq	lC45(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1177
	movq	-1520(%rbp), %rsi
	movl	$24, %edx
	movq	%r15, %rdi
LEHB141:
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode
LEHE141:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	164(%rax), %rsi
LEHB142:
	call	__ZNSi10_M_extractIjEERSiRT_
LEHE142:
	jmp	L1379
L1453:
	testq	%rbx, %rbx
	js	L1457
	leaq	1(%rbx), %rdi
LEHB143:
	call	__Znwm
LEHE143:
	movq	%rax, -1424(%rbp)
	movq	%rbx, -1408(%rbp)
L1171:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-1424(%rbp), %rax
	jmp	L1173
L1454:
	movzbl	(%r12), %eax
	movb	%al, -1408(%rbp)
	movq	-1616(%rbp), %rax
	addq	$16, %rax
	jmp	L1173
L1177:
	movq	-1496(%rbp), %rdi
	leaq	lC46(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1178
	movq	-1504(%rbp), %rax
	movq	-1456(%rbp), %r12
	movq	-1448(%rbp), %rbx
	leaq	168(%rax), %r13
	movq	-1544(%rbp), %rax
	movq	%rax, -1392(%rbp)
	movl	$1836412521, (%rax)
	movq	-1616(%rbp), %rax
	movq	$4, -1384(%rbp)
	addq	$16, %rax
	movb	$0, -1372(%rbp)
	movq	%rax, -1424(%rbp)
	movq	%r12, %rax
	addq	%rbx, %rax
	je	L1179
	testq	%r12, %r12
	je	L1458
L1179:
	cmpq	$15, %rbx
	ja	L1459
	cmpq	$1, %rbx
	je	L1460
	testq	%rbx, %rbx
	jne	L1461
L1184:
	movq	-1424(%rbp), %rax
	movq	-1504(%rbp), %rdi
	movq	%r13, %r8
	movq	%r15, %rcx
	movq	%rbx, -1416(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-1616(%rbp), %rbx
	movl	164(%rdi), %esi
	movq	%rbx, %rdx
LEHB144:
	call	__ZN8MosaicSC10Parameters21initialize_arrayparamIfEEvmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorIT_SaISB_EE
LEHE144:
	movq	-1424(%rbp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	jne	L1393
	jmp	L1185
L1178:
	movq	-1496(%rbp), %rdi
	leaq	lC47(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1187
	movq	-1520(%rbp), %rsi
	movl	$24, %edx
	movq	%r15, %rdi
LEHB145:
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode
LEHE145:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	192(%rax), %rsi
LEHB146:
	call	__ZNSi10_M_extractIfEERSiRT_
LEHE146:
	jmp	L1379
L1458:
	leaq	lC4(%rip), %rdi
LEHB147:
	call	__ZSt19__throw_logic_errorPKc
LEHE147:
L1246:
L1386:
	movq	%rax, %rbx
	movq	%r15, %rdi
	vzeroupper
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
L1013:
	movq	-1512(%rbp), %rdi
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
L989:
	movq	-1520(%rbp), %rax
	movq	-1456(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1217
	call	__ZdlPv
L1217:
	movq	-1496(%rbp), %rax
	movq	-1488(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1218
	call	__ZdlPv
L1218:
	movq	%rbx, %rdi
LEHB148:
	call	__Unwind_Resume
LEHE148:
L1245:
L1406:
	movq	%rax, %rbx
	movq	-1616(%rbp), %rax
	movq	-1424(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1375
	vzeroupper
	call	__ZdlPv
L1211:
	movq	-1392(%rbp), %rdi
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L1013
L1387:
	call	__ZdlPv
	jmp	L1013
L1461:
	movq	-1616(%rbp), %rax
	addq	$16, %rax
L1182:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	jmp	L1184
L1375:
	vzeroupper
	jmp	L1211
L1460:
	movzbl	(%r12), %eax
	movb	%al, -1408(%rbp)
	jmp	L1184
L1459:
	testq	%rbx, %rbx
	js	L1462
	leaq	1(%rbx), %rdi
LEHB149:
	call	__Znwm
LEHE149:
	movq	%rax, -1424(%rbp)
	movq	%rbx, -1408(%rbp)
	jmp	L1182
L1241:
	jmp	L1406
L1187:
	movq	-1496(%rbp), %rdi
	leaq	lC48(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	L1188
	movq	-1520(%rbp), %rsi
	movl	$24, %edx
	movq	%r15, %rdi
LEHB150:
	call	__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode
LEHE150:
	movq	-1504(%rbp), %rax
	movq	%r15, %rdi
	leaq	196(%rax), %rsi
LEHB151:
	call	__ZNSi10_M_extractIfEERSiRT_
LEHE151:
	jmp	L1379
L1244:
L1401:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1211
L1247:
	jmp	L1386
L1188:
	movq	-1496(%rbp), %rdi
	leaq	lC23(%rip), %rsi
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	je	L992
	leaq	-1392(%rbp), %r12
	movq	-1496(%rbp), %rdx
	leaq	lC49(%rip), %rsi
	movq	%r12, %rdi
LEHB152:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE152:
	movq	-1384(%rbp), %rdx
	movq	-1392(%rbp), %rsi
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
LEHB153:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
LEHE153:
	jmp	L1400
L1243:
	jmp	L1386
L1462:
	leaq	lC0(%rip), %rdi
LEHB154:
	call	__ZSt20__throw_length_errorPKc
LEHE154:
L1248:
L1396:
	movq	-1392(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	L1376
	vzeroupper
	jmp	L1387
L1291:
L1408:
	movq	-1296(%rbp), %rdi
	movq	%rax, %rbx
	leaq	112(%r15), %rax
	cmpq	%rax, %rdi
	je	L1372
	vzeroupper
	call	__ZdlPv
L1162:
	movq	-1528(%rbp), %rax
	leaq	80(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1368(%rbp)
	call	__ZNSt6localeD1Ev
L1163:
	movq	8(%r13), %rax
	movq	48(%r13), %rdx
	movq	-24(%rax), %rax
	movq	%rdx, -1392(%rbp,%rax)
	movq	32(%r13), %rax
	movq	40(%r13), %rdx
	movq	%rax, -1376(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -1376(%rbp,%rax)
	movq	16(%r13), %rax
	movq	24(%r13), %rdx
	movq	%rax, -1392(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
L1153:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	128(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -1264(%rbp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L1013
L1238:
	jmp	L1386
L1279:
L1390:
	movq	%rax, %rbx
	movq	-1552(%rbp), %rcx
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rcx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	vzeroupper
	jmp	L1153
L1277:
L1389:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1153
L1265:
L1403:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1162
L1440:
	leaq	lC4(%rip), %rdi
LEHB155:
	call	__ZSt19__throw_logic_errorPKc
LEHE155:
L1285:
	jmp	L1403
L1451:
	leaq	lC0(%rip), %rdi
LEHB156:
	call	__ZSt20__throw_length_errorPKc
LEHE156:
L1452:
	leaq	lC4(%rip), %rdi
LEHB157:
	call	__ZSt19__throw_logic_errorPKc
L1376:
	vzeroupper
	jmp	L1013
L1289:
L1391:
	movq	%rax, %rbx
	movq	-1552(%rbp), %rdx
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rdx, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	vzeroupper
	jmp	L1153
L1287:
	jmp	L1389
L1240:
	jmp	L1401
L1457:
	leaq	lC0(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE157:
L1290:
	jmp	L1403
L1455:
	leaq	lC0(%rip), %rdi
LEHB158:
	call	__ZSt20__throw_length_errorPKc
LEHE158:
L1288:
L1398:
	movq	%rax, %rbx
	leaq	24(%r15), %rdi
	vzeroupper
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	jmp	L1163
L1372:
	vzeroupper
	jmp	L1162
L1296:
	jmp	L1408
L1242:
	jmp	L1386
L1294:
	jmp	L1390
L1292:
	jmp	L1389
L1239:
	jmp	L1386
L1293:
	jmp	L1398
L1295:
	jmp	L1403
L1456:
	leaq	lC0(%rip), %rdi
LEHB159:
	call	__ZSt20__throw_length_errorPKc
L1286:
	jmp	L1408
L1448:
	leaq	lC4(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE159:
L1280:
	jmp	L1403
L1447:
	leaq	lC0(%rip), %rdi
LEHB160:
	call	__ZSt20__throw_length_errorPKc
LEHE160:
L1273:
	jmp	L1398
L1276:
	jmp	L1408
L1434:
	leaq	lC0(%rip), %rdi
LEHB161:
	call	__ZSt20__throw_length_errorPKc
LEHE161:
L1443:
	leaq	lC0(%rip), %rdi
LEHB162:
	call	__ZSt20__throw_length_errorPKc
LEHE162:
L1235:
	jmp	L1386
L1436:
	leaq	lC4(%rip), %rdi
LEHB163:
	call	__ZSt19__throw_logic_errorPKc
LEHE163:
L1284:
	movq	-24(%rbx), %rdx
	movq	-1552(%rbp), %rsi
	movq	%rbx, -1392(%rbp)
	movq	%rax, %rbx
	movq	%rsi, -1392(%rbp,%rdx)
	movq	$0, -1384(%rbp)
	vzeroupper
	jmp	L1153
L1282:
	jmp	L1389
L1428:
	leaq	lC4(%rip), %rdi
LEHB164:
	call	__ZSt19__throw_logic_errorPKc
LEHE164:
L1269:
	jmp	L1391
L1274:
L1392:
	movq	%rax, %rbx
	movq	-1552(%rbp), %rsi
	movq	-24(%r12), %rax
	movq	%r12, -1392(%rbp)
	movq	%rsi, -1392(%rbp,%rax)
	movq	$0, -1384(%rbp)
	vzeroupper
	jmp	L1153
L1272:
	jmp	L1389
L1267:
	jmp	L1389
L1230:
	jmp	L1396
L1252:
	jmp	L1389
L1259:
	jmp	L1391
L1257:
	jmp	L1389
L1250:
	movq	%rax, %rbx
	vzeroupper
L987:
	movq	-1600(%rbp), %rax
	movq	-1608(%rbp), %rdx
	movq	%rax, -976(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -976(%rbp,%rax)
	movq	$0, -968(%rbp)
L988:
	movq	-1512(%rbp), %rdi
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$640, %rdi
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L989
L1249:
	movq	%rax, %rbx
	vzeroupper
	jmp	L988
L1255:
	jmp	L1403
L1281:
	jmp	L1408
L1444:
	leaq	lC4(%rip), %rdi
LEHB165:
	call	__ZSt19__throw_logic_errorPKc
LEHE165:
L1233:
	jmp	L1386
L1263:
	jmp	L1398
L1266:
	jmp	L1408
L1234:
	jmp	L1386
L1268:
	jmp	L1398
L1271:
	jmp	L1408
L1236:
	jmp	L1386
L1278:
	jmp	L1398
L1237:
	jmp	L1386
L1283:
	jmp	L1398
L1424:
	leaq	lC4(%rip), %rdi
LEHB166:
	call	__ZSt19__throw_logic_errorPKc
LEHE166:
L1270:
	jmp	L1403
L1439:
	leaq	lC0(%rip), %rdi
LEHB167:
	call	__ZSt20__throw_length_errorPKc
LEHE167:
L1275:
	jmp	L1403
L1421:
	leaq	lC4(%rip), %rdi
LEHB168:
	call	__ZSt19__throw_logic_errorPKc
LEHE168:
L1231:
	jmp	L1386
L1253:
	jmp	L1398
L1256:
	jmp	L1408
L1427:
	leaq	lC0(%rip), %rdi
LEHB169:
	call	__ZSt20__throw_length_errorPKc
L1229:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1013
L1417:
	leaq	lC4(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE169:
L1254:
	jmp	L1392
L1251:
	movq	%rax, %rbx
	movq	-1512(%rbp), %rax
	leaq	16(%rax), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	jmp	L987
L1262:
	jmp	L1389
L1264:
	jmp	L1392
L1261:
	jmp	L1408
L1258:
	jmp	L1398
L1431:
	leaq	lC0(%rip), %rdi
LEHB170:
	call	__ZSt20__throw_length_errorPKc
LEHE170:
L1260:
	jmp	L1403
L1232:
	jmp	L1386
LFE6348:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDA6348:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd3,0x9
	.set L$set$216,LEHB76-LFB6348
	.long L$set$216
	.set L$set$217,LEHE76-LEHB76
	.long L$set$217
	.set L$set$218,L1249-LFB6348
	.long L$set$218
	.byte	0
	.set L$set$219,LEHB77-LFB6348
	.long L$set$219
	.set L$set$220,LEHE77-LEHB77
	.long L$set$220
	.set L$set$221,L1250-LFB6348
	.long L$set$221
	.byte	0
	.set L$set$222,LEHB78-LFB6348
	.long L$set$222
	.set L$set$223,LEHE78-LEHB78
	.long L$set$223
	.set L$set$224,L1251-LFB6348
	.long L$set$224
	.byte	0
	.set L$set$225,LEHB79-LFB6348
	.long L$set$225
	.set L$set$226,LEHE79-LEHB79
	.long L$set$226
	.set L$set$227,L1229-LFB6348
	.long L$set$227
	.byte	0
	.set L$set$228,LEHB80-LFB6348
	.long L$set$228
	.set L$set$229,LEHE80-LEHB80
	.long L$set$229
	.set L$set$230,L1230-LFB6348
	.long L$set$230
	.byte	0
	.set L$set$231,LEHB81-LFB6348
	.long L$set$231
	.set L$set$232,LEHE81-LEHB81
	.long L$set$232
	.set L$set$233,L1229-LFB6348
	.long L$set$233
	.byte	0
	.set L$set$234,LEHB82-LFB6348
	.long L$set$234
	.set L$set$235,LEHE82-LEHB82
	.long L$set$235
	.set L$set$236,L1252-LFB6348
	.long L$set$236
	.byte	0
	.set L$set$237,LEHB83-LFB6348
	.long L$set$237
	.set L$set$238,LEHE83-LEHB83
	.long L$set$238
	.set L$set$239,L1254-LFB6348
	.long L$set$239
	.byte	0
	.set L$set$240,LEHB84-LFB6348
	.long L$set$240
	.set L$set$241,LEHE84-LEHB84
	.long L$set$241
	.set L$set$242,L1256-LFB6348
	.long L$set$242
	.byte	0
	.set L$set$243,LEHB85-LFB6348
	.long L$set$243
	.set L$set$244,LEHE85-LEHB85
	.long L$set$244
	.set L$set$245,L1253-LFB6348
	.long L$set$245
	.byte	0
	.set L$set$246,LEHB86-LFB6348
	.long L$set$246
	.set L$set$247,LEHE86-LEHB86
	.long L$set$247
	.set L$set$248,L1231-LFB6348
	.long L$set$248
	.byte	0
	.set L$set$249,LEHB87-LFB6348
	.long L$set$249
	.set L$set$250,LEHE87-LEHB87
	.long L$set$250
	.set L$set$251,L1257-LFB6348
	.long L$set$251
	.byte	0
	.set L$set$252,LEHB88-LFB6348
	.long L$set$252
	.set L$set$253,LEHE88-LEHB88
	.long L$set$253
	.set L$set$254,L1259-LFB6348
	.long L$set$254
	.byte	0
	.set L$set$255,LEHB89-LFB6348
	.long L$set$255
	.set L$set$256,LEHE89-LEHB89
	.long L$set$256
	.set L$set$257,L1261-LFB6348
	.long L$set$257
	.byte	0
	.set L$set$258,LEHB90-LFB6348
	.long L$set$258
	.set L$set$259,LEHE90-LEHB90
	.long L$set$259
	.set L$set$260,L1258-LFB6348
	.long L$set$260
	.byte	0
	.set L$set$261,LEHB91-LFB6348
	.long L$set$261
	.set L$set$262,LEHE91-LEHB91
	.long L$set$262
	.set L$set$263,L1232-LFB6348
	.long L$set$263
	.byte	0
	.set L$set$264,LEHB92-LFB6348
	.long L$set$264
	.set L$set$265,LEHE92-LEHB92
	.long L$set$265
	.set L$set$266,L1262-LFB6348
	.long L$set$266
	.byte	0
	.set L$set$267,LEHB93-LFB6348
	.long L$set$267
	.set L$set$268,LEHE93-LEHB93
	.long L$set$268
	.set L$set$269,L1264-LFB6348
	.long L$set$269
	.byte	0
	.set L$set$270,LEHB94-LFB6348
	.long L$set$270
	.set L$set$271,LEHE94-LEHB94
	.long L$set$271
	.set L$set$272,L1266-LFB6348
	.long L$set$272
	.byte	0
	.set L$set$273,LEHB95-LFB6348
	.long L$set$273
	.set L$set$274,LEHE95-LEHB95
	.long L$set$274
	.set L$set$275,L1263-LFB6348
	.long L$set$275
	.byte	0
	.set L$set$276,LEHB96-LFB6348
	.long L$set$276
	.set L$set$277,LEHE96-LEHB96
	.long L$set$277
	.set L$set$278,L1233-LFB6348
	.long L$set$278
	.byte	0
	.set L$set$279,LEHB97-LFB6348
	.long L$set$279
	.set L$set$280,LEHE97-LEHB97
	.long L$set$280
	.set L$set$281,L1255-LFB6348
	.long L$set$281
	.byte	0
	.set L$set$282,LEHB98-LFB6348
	.long L$set$282
	.set L$set$283,LEHE98-LEHB98
	.long L$set$283
	.set L$set$284,L1267-LFB6348
	.long L$set$284
	.byte	0
	.set L$set$285,LEHB99-LFB6348
	.long L$set$285
	.set L$set$286,LEHE99-LEHB99
	.long L$set$286
	.set L$set$287,L1269-LFB6348
	.long L$set$287
	.byte	0
	.set L$set$288,LEHB100-LFB6348
	.long L$set$288
	.set L$set$289,LEHE100-LEHB100
	.long L$set$289
	.set L$set$290,L1271-LFB6348
	.long L$set$290
	.byte	0
	.set L$set$291,LEHB101-LFB6348
	.long L$set$291
	.set L$set$292,LEHE101-LEHB101
	.long L$set$292
	.set L$set$293,L1268-LFB6348
	.long L$set$293
	.byte	0
	.set L$set$294,LEHB102-LFB6348
	.long L$set$294
	.set L$set$295,LEHE102-LEHB102
	.long L$set$295
	.set L$set$296,L1234-LFB6348
	.long L$set$296
	.byte	0
	.set L$set$297,LEHB103-LFB6348
	.long L$set$297
	.set L$set$298,LEHE103-LEHB103
	.long L$set$298
	.set L$set$299,L1251-LFB6348
	.long L$set$299
	.byte	0
	.set L$set$300,LEHB104-LFB6348
	.long L$set$300
	.set L$set$301,LEHE104-LEHB104
	.long L$set$301
	.set L$set$302,L1260-LFB6348
	.long L$set$302
	.byte	0
	.set L$set$303,LEHB105-LFB6348
	.long L$set$303
	.set L$set$304,LEHE105-LEHB105
	.long L$set$304
	.set L$set$305,L1272-LFB6348
	.long L$set$305
	.byte	0
	.set L$set$306,LEHB106-LFB6348
	.long L$set$306
	.set L$set$307,LEHE106-LEHB106
	.long L$set$307
	.set L$set$308,L1274-LFB6348
	.long L$set$308
	.byte	0
	.set L$set$309,LEHB107-LFB6348
	.long L$set$309
	.set L$set$310,LEHE107-LEHB107
	.long L$set$310
	.set L$set$311,L1275-LFB6348
	.long L$set$311
	.byte	0
	.set L$set$312,LEHB108-LFB6348
	.long L$set$312
	.set L$set$313,LEHE108-LEHB108
	.long L$set$313
	.set L$set$314,L1276-LFB6348
	.long L$set$314
	.byte	0
	.set L$set$315,LEHB109-LFB6348
	.long L$set$315
	.set L$set$316,LEHE109-LEHB109
	.long L$set$316
	.set L$set$317,L1273-LFB6348
	.long L$set$317
	.byte	0
	.set L$set$318,LEHB110-LFB6348
	.long L$set$318
	.set L$set$319,LEHE110-LEHB110
	.long L$set$319
	.set L$set$320,L1235-LFB6348
	.long L$set$320
	.byte	0
	.set L$set$321,LEHB111-LFB6348
	.long L$set$321
	.set L$set$322,LEHE111-LEHB111
	.long L$set$322
	.set L$set$323,L1265-LFB6348
	.long L$set$323
	.byte	0
	.set L$set$324,LEHB112-LFB6348
	.long L$set$324
	.set L$set$325,LEHE112-LEHB112
	.long L$set$325
	.set L$set$326,L1282-LFB6348
	.long L$set$326
	.byte	0
	.set L$set$327,LEHB113-LFB6348
	.long L$set$327
	.set L$set$328,LEHE113-LEHB113
	.long L$set$328
	.set L$set$329,L1284-LFB6348
	.long L$set$329
	.byte	0
	.set L$set$330,LEHB114-LFB6348
	.long L$set$330
	.set L$set$331,LEHE114-LEHB114
	.long L$set$331
	.set L$set$332,L1286-LFB6348
	.long L$set$332
	.byte	0
	.set L$set$333,LEHB115-LFB6348
	.long L$set$333
	.set L$set$334,LEHE115-LEHB115
	.long L$set$334
	.set L$set$335,L1283-LFB6348
	.long L$set$335
	.byte	0
	.set L$set$336,LEHB116-LFB6348
	.long L$set$336
	.set L$set$337,LEHE116-LEHB116
	.long L$set$337
	.set L$set$338,L1237-LFB6348
	.long L$set$338
	.byte	0
	.set L$set$339,LEHB117-LFB6348
	.long L$set$339
	.set L$set$340,LEHE117-LEHB117
	.long L$set$340
	.set L$set$341,L1270-LFB6348
	.long L$set$341
	.byte	0
	.set L$set$342,LEHB118-LFB6348
	.long L$set$342
	.set L$set$343,LEHE118-LEHB118
	.long L$set$343
	.set L$set$344,L1277-LFB6348
	.long L$set$344
	.byte	0
	.set L$set$345,LEHB119-LFB6348
	.long L$set$345
	.set L$set$346,LEHE119-LEHB119
	.long L$set$346
	.set L$set$347,L1279-LFB6348
	.long L$set$347
	.byte	0
	.set L$set$348,LEHB120-LFB6348
	.long L$set$348
	.set L$set$349,LEHE120-LEHB120
	.long L$set$349
	.set L$set$350,L1281-LFB6348
	.long L$set$350
	.byte	0
	.set L$set$351,LEHB121-LFB6348
	.long L$set$351
	.set L$set$352,LEHE121-LEHB121
	.long L$set$352
	.set L$set$353,L1278-LFB6348
	.long L$set$353
	.byte	0
	.set L$set$354,LEHB122-LFB6348
	.long L$set$354
	.set L$set$355,LEHE122-LEHB122
	.long L$set$355
	.set L$set$356,L1236-LFB6348
	.long L$set$356
	.byte	0
	.set L$set$357,LEHB123-LFB6348
	.long L$set$357
	.set L$set$358,LEHE123-LEHB123
	.long L$set$358
	.set L$set$359,L1275-LFB6348
	.long L$set$359
	.byte	0
	.set L$set$360,LEHB124-LFB6348
	.long L$set$360
	.set L$set$361,LEHE124-LEHB124
	.long L$set$361
	.set L$set$362,L1287-LFB6348
	.long L$set$362
	.byte	0
	.set L$set$363,LEHB125-LFB6348
	.long L$set$363
	.set L$set$364,LEHE125-LEHB125
	.long L$set$364
	.set L$set$365,L1289-LFB6348
	.long L$set$365
	.byte	0
	.set L$set$366,LEHB126-LFB6348
	.long L$set$366
	.set L$set$367,LEHE126-LEHB126
	.long L$set$367
	.set L$set$368,L1291-LFB6348
	.long L$set$368
	.byte	0
	.set L$set$369,LEHB127-LFB6348
	.long L$set$369
	.set L$set$370,LEHE127-LEHB127
	.long L$set$370
	.set L$set$371,L1288-LFB6348
	.long L$set$371
	.byte	0
	.set L$set$372,LEHB128-LFB6348
	.long L$set$372
	.set L$set$373,LEHE128-LEHB128
	.long L$set$373
	.set L$set$374,L1238-LFB6348
	.long L$set$374
	.byte	0
	.set L$set$375,LEHB129-LFB6348
	.long L$set$375
	.set L$set$376,LEHE129-LEHB129
	.long L$set$376
	.set L$set$377,L1280-LFB6348
	.long L$set$377
	.byte	0
	.set L$set$378,LEHB130-LFB6348
	.long L$set$378
	.set L$set$379,LEHE130-LEHB130
	.long L$set$379
	.set L$set$380,L1292-LFB6348
	.long L$set$380
	.byte	0
	.set L$set$381,LEHB131-LFB6348
	.long L$set$381
	.set L$set$382,LEHE131-LEHB131
	.long L$set$382
	.set L$set$383,L1294-LFB6348
	.long L$set$383
	.byte	0
	.set L$set$384,LEHB132-LFB6348
	.long L$set$384
	.set L$set$385,LEHE132-LEHB132
	.long L$set$385
	.set L$set$386,L1296-LFB6348
	.long L$set$386
	.byte	0
	.set L$set$387,LEHB133-LFB6348
	.long L$set$387
	.set L$set$388,LEHE133-LEHB133
	.long L$set$388
	.set L$set$389,L1293-LFB6348
	.long L$set$389
	.byte	0
	.set L$set$390,LEHB134-LFB6348
	.long L$set$390
	.set L$set$391,LEHE134-LEHB134
	.long L$set$391
	.set L$set$392,L1239-LFB6348
	.long L$set$392
	.byte	0
	.set L$set$393,LEHB135-LFB6348
	.long L$set$393
	.set L$set$394,LEHE135-LEHB135
	.long L$set$394
	.set L$set$395,L1285-LFB6348
	.long L$set$395
	.byte	0
	.set L$set$396,LEHB136-LFB6348
	.long L$set$396
	.set L$set$397,LEHE136-LEHB136
	.long L$set$397
	.set L$set$398,L1241-LFB6348
	.long L$set$398
	.byte	0
	.set L$set$399,LEHB137-LFB6348
	.long L$set$399
	.set L$set$400,LEHE137-LEHB137
	.long L$set$400
	.set L$set$401,L1290-LFB6348
	.long L$set$401
	.byte	0
	.set L$set$402,LEHB138-LFB6348
	.long L$set$402
	.set L$set$403,LEHE138-LEHB138
	.long L$set$403
	.set L$set$404,L1229-LFB6348
	.long L$set$404
	.byte	0
	.set L$set$405,LEHB139-LFB6348
	.long L$set$405
	.set L$set$406,LEHE139-LEHB139
	.long L$set$406
	.set L$set$407,L1242-LFB6348
	.long L$set$407
	.byte	0
	.set L$set$408,LEHB140-LFB6348
	.long L$set$408
	.set L$set$409,LEHE140-LEHB140
	.long L$set$409
	.set L$set$410,L1295-LFB6348
	.long L$set$410
	.byte	0
	.set L$set$411,LEHB141-LFB6348
	.long L$set$411
	.set L$set$412,LEHE141-LEHB141
	.long L$set$412
	.set L$set$413,L1229-LFB6348
	.long L$set$413
	.byte	0
	.set L$set$414,LEHB142-LFB6348
	.long L$set$414
	.set L$set$415,LEHE142-LEHB142
	.long L$set$415
	.set L$set$416,L1243-LFB6348
	.long L$set$416
	.byte	0
	.set L$set$417,LEHB143-LFB6348
	.long L$set$417
	.set L$set$418,LEHE143-LEHB143
	.long L$set$418
	.set L$set$419,L1240-LFB6348
	.long L$set$419
	.byte	0
	.set L$set$420,LEHB144-LFB6348
	.long L$set$420
	.set L$set$421,LEHE144-LEHB144
	.long L$set$421
	.set L$set$422,L1245-LFB6348
	.long L$set$422
	.byte	0
	.set L$set$423,LEHB145-LFB6348
	.long L$set$423
	.set L$set$424,LEHE145-LEHB145
	.long L$set$424
	.set L$set$425,L1229-LFB6348
	.long L$set$425
	.byte	0
	.set L$set$426,LEHB146-LFB6348
	.long L$set$426
	.set L$set$427,LEHE146-LEHB146
	.long L$set$427
	.set L$set$428,L1246-LFB6348
	.long L$set$428
	.byte	0
	.set L$set$429,LEHB147-LFB6348
	.long L$set$429
	.set L$set$430,LEHE147-LEHB147
	.long L$set$430
	.set L$set$431,L1244-LFB6348
	.long L$set$431
	.byte	0
	.set L$set$432,LEHB148-LFB6348
	.long L$set$432
	.set L$set$433,LEHE148-LEHB148
	.long L$set$433
	.long	0
	.byte	0
	.set L$set$434,LEHB149-LFB6348
	.long L$set$434
	.set L$set$435,LEHE149-LEHB149
	.long L$set$435
	.set L$set$436,L1244-LFB6348
	.long L$set$436
	.byte	0
	.set L$set$437,LEHB150-LFB6348
	.long L$set$437
	.set L$set$438,LEHE150-LEHB150
	.long L$set$438
	.set L$set$439,L1229-LFB6348
	.long L$set$439
	.byte	0
	.set L$set$440,LEHB151-LFB6348
	.long L$set$440
	.set L$set$441,LEHE151-LEHB151
	.long L$set$441
	.set L$set$442,L1247-LFB6348
	.long L$set$442
	.byte	0
	.set L$set$443,LEHB152-LFB6348
	.long L$set$443
	.set L$set$444,LEHE152-LEHB152
	.long L$set$444
	.set L$set$445,L1229-LFB6348
	.long L$set$445
	.byte	0
	.set L$set$446,LEHB153-LFB6348
	.long L$set$446
	.set L$set$447,LEHE153-LEHB153
	.long L$set$447
	.set L$set$448,L1248-LFB6348
	.long L$set$448
	.byte	0
	.set L$set$449,LEHB154-LFB6348
	.long L$set$449
	.set L$set$450,LEHE154-LEHB154
	.long L$set$450
	.set L$set$451,L1244-LFB6348
	.long L$set$451
	.byte	0
	.set L$set$452,LEHB155-LFB6348
	.long L$set$452
	.set L$set$453,LEHE155-LEHB155
	.long L$set$453
	.set L$set$454,L1280-LFB6348
	.long L$set$454
	.byte	0
	.set L$set$455,LEHB156-LFB6348
	.long L$set$455
	.set L$set$456,LEHE156-LEHB156
	.long L$set$456
	.set L$set$457,L1285-LFB6348
	.long L$set$457
	.byte	0
	.set L$set$458,LEHB157-LFB6348
	.long L$set$458
	.set L$set$459,LEHE157-LEHB157
	.long L$set$459
	.set L$set$460,L1240-LFB6348
	.long L$set$460
	.byte	0
	.set L$set$461,LEHB158-LFB6348
	.long L$set$461
	.set L$set$462,LEHE158-LEHB158
	.long L$set$462
	.set L$set$463,L1290-LFB6348
	.long L$set$463
	.byte	0
	.set L$set$464,LEHB159-LFB6348
	.long L$set$464
	.set L$set$465,LEHE159-LEHB159
	.long L$set$465
	.set L$set$466,L1295-LFB6348
	.long L$set$466
	.byte	0
	.set L$set$467,LEHB160-LFB6348
	.long L$set$467
	.set L$set$468,LEHE160-LEHB160
	.long L$set$468
	.set L$set$469,L1280-LFB6348
	.long L$set$469
	.byte	0
	.set L$set$470,LEHB161-LFB6348
	.long L$set$470
	.set L$set$471,LEHE161-LEHB161
	.long L$set$471
	.set L$set$472,L1265-LFB6348
	.long L$set$472
	.byte	0
	.set L$set$473,LEHB162-LFB6348
	.long L$set$473
	.set L$set$474,LEHE162-LEHB162
	.long L$set$474
	.set L$set$475,L1275-LFB6348
	.long L$set$475
	.byte	0
	.set L$set$476,LEHB163-LFB6348
	.long L$set$476
	.set L$set$477,LEHE163-LEHB163
	.long L$set$477
	.set L$set$478,L1285-LFB6348
	.long L$set$478
	.byte	0
	.set L$set$479,LEHB164-LFB6348
	.long L$set$479
	.set L$set$480,LEHE164-LEHB164
	.long L$set$480
	.set L$set$481,L1270-LFB6348
	.long L$set$481
	.byte	0
	.set L$set$482,LEHB165-LFB6348
	.long L$set$482
	.set L$set$483,LEHE165-LEHB165
	.long L$set$483
	.set L$set$484,L1290-LFB6348
	.long L$set$484
	.byte	0
	.set L$set$485,LEHB166-LFB6348
	.long L$set$485
	.set L$set$486,LEHE166-LEHB166
	.long L$set$486
	.set L$set$487,L1265-LFB6348
	.long L$set$487
	.byte	0
	.set L$set$488,LEHB167-LFB6348
	.long L$set$488
	.set L$set$489,LEHE167-LEHB167
	.long L$set$489
	.set L$set$490,L1270-LFB6348
	.long L$set$490
	.byte	0
	.set L$set$491,LEHB168-LFB6348
	.long L$set$491
	.set L$set$492,LEHE168-LEHB168
	.long L$set$492
	.set L$set$493,L1260-LFB6348
	.long L$set$493
	.byte	0
	.set L$set$494,LEHB169-LFB6348
	.long L$set$494
	.set L$set$495,LEHE169-LEHB169
	.long L$set$495
	.set L$set$496,L1255-LFB6348
	.long L$set$496
	.byte	0
	.set L$set$497,LEHB170-LFB6348
	.long L$set$497
	.set L$set$498,LEHE170-LEHB170
	.long L$set$498
	.set L$set$499,L1260-LFB6348
	.long L$set$499
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10ParametersC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
__ZN8MosaicSC10ParametersC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
LFB6347:
	pushq	%r13
LCFI191:
	pushq	%r12
LCFI192:
	leaq	48(%rdi), %r12
	pushq	%rbp
LCFI193:
	leaq	16(%rdi), %rbp
	pushq	%rbx
LCFI194:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI195:
	movq	%rbp, (%rdi)
	movq	$0, 8(%rdi)
	movb	$0, 16(%rdi)
	movq	%r12, 32(%rdi)
	movq	$0, 40(%rdi)
	movb	$0, 48(%rdi)
	movq	$0, 136(%rdi)
	movq	$0, 144(%rdi)
	movq	$0, 152(%rdi)
	movq	$0, 168(%rdi)
	movq	$0, 176(%rdi)
	movq	$0, 184(%rdi)
LEHB171:
	call	__ZN8MosaicSC10Parameters11load_configERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE171:
	addq	$8, %rsp
LCFI196:
	popq	%rbx
LCFI197:
	popq	%rbp
LCFI198:
	popq	%r12
LCFI199:
	popq	%r13
LCFI200:
	ret
L1469:
LCFI201:
	movq	168(%rbx), %rdi
	movq	%rax, %r13
	testq	%rdi, %rdi
	je	L1477
	vzeroupper
	call	__ZdlPv
L1465:
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	L1466
	call	__ZdlPv
L1466:
	movq	32(%rbx), %rdi
	cmpq	%rdi, %r12
	je	L1467
	call	__ZdlPv
L1467:
	movq	(%rbx), %rdi
	cmpq	%rdi, %rbp
	je	L1468
	call	__ZdlPv
L1468:
	movq	%r13, %rdi
LEHB172:
	call	__Unwind_Resume
LEHE172:
L1477:
	vzeroupper
	jmp	L1465
LFE6347:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA6347:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$500,LEHB171-LFB6347
	.long L$set$500
	.set L$set$501,LEHE171-LEHB171
	.long L$set$501
	.set L$set$502,L1469-LFB6347
	.long L$set$502
	.byte	0
	.set L$set$503,LEHB172-LFB6347
	.long L$set$503
	.set L$set$504,LEHE172-LEHB172
	.long L$set$504
	.long	0
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10ParametersC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
__ZN8MosaicSC10ParametersC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
LFB7589:
	pushq	%r13
LCFI202:
	pushq	%r12
LCFI203:
	leaq	48(%rdi), %r12
	pushq	%rbp
LCFI204:
	leaq	16(%rdi), %rbp
	pushq	%rbx
LCFI205:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI206:
	movq	%rbp, (%rdi)
	movq	$0, 8(%rdi)
	movb	$0, 16(%rdi)
	movq	%r12, 32(%rdi)
	movq	$0, 40(%rdi)
	movb	$0, 48(%rdi)
	movq	$0, 136(%rdi)
	movq	$0, 144(%rdi)
	movq	$0, 152(%rdi)
	movq	$0, 168(%rdi)
	movq	$0, 176(%rdi)
	movq	$0, 184(%rdi)
LEHB173:
	call	__ZN8MosaicSC10Parameters11load_configERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE173:
	addq	$8, %rsp
LCFI207:
	popq	%rbx
LCFI208:
	popq	%rbp
LCFI209:
	popq	%r12
LCFI210:
	popq	%r13
LCFI211:
	ret
L1487:
LCFI212:
	movq	168(%rbx), %rdi
	movq	%rax, %r13
	testq	%rdi, %rdi
	je	L1495
	vzeroupper
	call	__ZdlPv
L1483:
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	L1484
	call	__ZdlPv
L1484:
	movq	32(%rbx), %rdi
	cmpq	%rdi, %r12
	je	L1485
	call	__ZdlPv
L1485:
	movq	(%rbx), %rdi
	cmpq	%rdi, %rbp
	je	L1486
	call	__ZdlPv
L1486:
	movq	%r13, %rdi
LEHB174:
	call	__Unwind_Resume
LEHE174:
L1495:
	vzeroupper
	jmp	L1483
LFE7589:
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDA7589:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$505,LEHB173-LFB7589
	.long L$set$505
	.set L$set$506,LEHE173-LEHB173
	.long L$set$506
	.set L$set$507,L1487-LFB7589
	.long L$set$507
	.byte	0
	.set L$set$508,LEHB174-LFB7589
	.long L$set$508
	.set L$set$509,LEHE174-LEHB174
	.long L$set$509
	.long	0
	.byte	0
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_parameters.cpp:
LFB7488:
	subq	$8, %rsp
LCFI213:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI214:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE7488:
	.static_data
__ZStL8__ioinit:
	.space	1
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$510,LECIE1-LSCIE1
	.long L$set$510
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zPLR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x7
	.byte	0x9b
	.long	___gxx_personality_v0+4@GOTPCREL
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$511,LEFDE1-LASFDE1
	.long L$set$511
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1983-.
	.set L$set$512,LFE1983-LFB1983
	.quad L$set$512
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$513,LEFDE3-LASFDE3
	.long L$set$513
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB7597-.
	.set L$set$514,LFE7597-LFB7597
	.quad L$set$514
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$515,LCFI0-LFB7597
	.long L$set$515
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$516,LCFI1-LCFI0
	.long L$set$516
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$517,LCFI2-LCFI1
	.long L$set$517
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$518,LCFI3-LCFI2
	.long L$set$518
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$519,LCFI4-LCFI3
	.long L$set$519
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$520,LEFDE5-LASFDE5
	.long L$set$520
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB6351-.
	.set L$set$521,LFE6351-LFB6351
	.quad L$set$521
	.byte	0x8
	.quad	LLSDA6351-.
	.byte	0x4
	.set L$set$522,LCFI5-LFB6351
	.long L$set$522
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$523,LCFI6-LCFI5
	.long L$set$523
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$524,LCFI7-LCFI6
	.long L$set$524
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$525,LCFI8-LCFI7
	.long L$set$525
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$526,LCFI9-LCFI8
	.long L$set$526
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$527,LCFI10-LCFI9
	.long L$set$527
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$528,LCFI11-LCFI10
	.long L$set$528
	.byte	0xe
	.byte	0xc0,0x2
	.byte	0x4
	.set L$set$529,LCFI12-LCFI11
	.long L$set$529
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$530,LCFI13-LCFI12
	.long L$set$530
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$531,LCFI14-LCFI13
	.long L$set$531
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$532,LCFI15-LCFI14
	.long L$set$532
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$533,LCFI16-LCFI15
	.long L$set$533
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$534,LCFI17-LCFI16
	.long L$set$534
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$535,LCFI18-LCFI17
	.long L$set$535
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$536,LCFI19-LCFI18
	.long L$set$536
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$537,LEFDE7-LASFDE7
	.long L$set$537
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6766-.
	.set L$set$538,LFE6766-LFB6766
	.quad L$set$538
	.byte	0x8
	.quad	LLSDA6766-.
	.byte	0x4
	.set L$set$539,LCFI20-LFB6766
	.long L$set$539
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$540,LCFI21-LCFI20
	.long L$set$540
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$541,LCFI22-LCFI21
	.long L$set$541
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$542,LCFI23-LCFI22
	.long L$set$542
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$543,LCFI24-LCFI23
	.long L$set$543
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$544,LCFI25-LCFI24
	.long L$set$544
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$545,LCFI26-LCFI25
	.long L$set$545
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$546,LCFI27-LCFI26
	.long L$set$546
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$547,LCFI28-LCFI27
	.long L$set$547
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$548,LCFI29-LCFI28
	.long L$set$548
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$549,LCFI30-LCFI29
	.long L$set$549
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$550,LCFI31-LCFI30
	.long L$set$550
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$551,LCFI32-LCFI31
	.long L$set$551
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$552,LCFI33-LCFI32
	.long L$set$552
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$553,LCFI34-LCFI33
	.long L$set$553
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$554,LEFDE9-LASFDE9
	.long L$set$554
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB6773-.
	.set L$set$555,LFE6773-LFB6773
	.quad L$set$555
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$556,LCFI35-LFB6773
	.long L$set$556
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$557,LCFI36-LCFI35
	.long L$set$557
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$558,LEFDE11-LASFDE11
	.long L$set$558
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB6795-.
	.set L$set$559,LFE6795-LFB6795
	.quad L$set$559
	.byte	0x8
	.quad	LLSDA6795-.
	.byte	0x4
	.set L$set$560,LCFI37-LFB6795
	.long L$set$560
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$561,LCFI38-LCFI37
	.long L$set$561
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$562,LCFI39-LCFI38
	.long L$set$562
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$563,LCFI40-LCFI39
	.long L$set$563
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$564,LCFI41-LCFI40
	.long L$set$564
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$565,LCFI42-LCFI41
	.long L$set$565
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$566,LCFI43-LCFI42
	.long L$set$566
	.byte	0xe
	.byte	0xd0,0x2
	.byte	0x4
	.set L$set$567,LCFI44-LCFI43
	.long L$set$567
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$568,LCFI45-LCFI44
	.long L$set$568
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$569,LCFI46-LCFI45
	.long L$set$569
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$570,LCFI47-LCFI46
	.long L$set$570
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$571,LCFI48-LCFI47
	.long L$set$571
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$572,LCFI49-LCFI48
	.long L$set$572
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$573,LCFI50-LCFI49
	.long L$set$573
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$574,LCFI51-LCFI50
	.long L$set$574
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$575,LEFDE13-LASFDE13
	.long L$set$575
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6981-.
	.set L$set$576,LFE6981-LFB6981
	.quad L$set$576
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$577,LCFI52-LFB6981
	.long L$set$577
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$578,LCFI53-LCFI52
	.long L$set$578
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$579,LCFI54-LCFI53
	.long L$set$579
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$580,LCFI55-LCFI54
	.long L$set$580
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$581,LCFI56-LCFI55
	.long L$set$581
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$582,LCFI57-LCFI56
	.long L$set$582
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$583,LCFI58-LCFI57
	.long L$set$583
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$584,LCFI59-LCFI58
	.long L$set$584
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$585,LCFI60-LCFI59
	.long L$set$585
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$586,LCFI61-LCFI60
	.long L$set$586
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$587,LCFI62-LCFI61
	.long L$set$587
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$588,LCFI63-LCFI62
	.long L$set$588
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$589,LCFI64-LCFI63
	.long L$set$589
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$590,LCFI65-LCFI64
	.long L$set$590
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$591,LCFI66-LCFI65
	.long L$set$591
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$592,LCFI67-LCFI66
	.long L$set$592
	.byte	0xe
	.byte	0x40
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$593,LCFI68-LCFI67
	.long L$set$593
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$594,LCFI69-LCFI68
	.long L$set$594
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$595,LCFI70-LCFI69
	.long L$set$595
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$596,LCFI71-LCFI70
	.long L$set$596
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$597,LCFI72-LCFI71
	.long L$set$597
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$598,LCFI73-LCFI72
	.long L$set$598
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$599,LCFI74-LCFI73
	.long L$set$599
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$600,LCFI75-LCFI74
	.long L$set$600
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$601,LEFDE15-LASFDE15
	.long L$set$601
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB7036-.
	.set L$set$602,LFE7036-LFB7036
	.quad L$set$602
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$603,LCFI76-LFB7036
	.long L$set$603
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$604,LCFI77-LCFI76
	.long L$set$604
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$605,LCFI78-LCFI77
	.long L$set$605
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$606,LCFI79-LCFI78
	.long L$set$606
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$607,LCFI80-LCFI79
	.long L$set$607
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$608,LCFI81-LCFI80
	.long L$set$608
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$609,LCFI82-LCFI81
	.long L$set$609
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$610,LCFI83-LCFI82
	.long L$set$610
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$611,LCFI84-LCFI83
	.long L$set$611
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$612,LCFI85-LCFI84
	.long L$set$612
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$613,LCFI86-LCFI85
	.long L$set$613
	.byte	0xb
	.byte	0x4
	.set L$set$614,LCFI87-LCFI86
	.long L$set$614
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$615,LCFI88-LCFI87
	.long L$set$615
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$616,LCFI89-LCFI88
	.long L$set$616
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$617,LCFI90-LCFI89
	.long L$set$617
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$618,LCFI91-LCFI90
	.long L$set$618
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$619,LEFDE17-LASFDE17
	.long L$set$619
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB7129-.
	.set L$set$620,LFE7129-LFB7129
	.quad L$set$620
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$621,LCFI92-LFB7129
	.long L$set$621
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$622,LCFI93-LCFI92
	.long L$set$622
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$623,LCFI94-LCFI93
	.long L$set$623
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$624,LCFI95-LCFI94
	.long L$set$624
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$625,LCFI96-LCFI95
	.long L$set$625
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$626,LCFI97-LCFI96
	.long L$set$626
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$627,LCFI98-LCFI97
	.long L$set$627
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$628,LCFI99-LCFI98
	.long L$set$628
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$629,LCFI100-LCFI99
	.long L$set$629
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$630,LCFI101-LCFI100
	.long L$set$630
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$631,LCFI102-LCFI101
	.long L$set$631
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$632,LCFI103-LCFI102
	.long L$set$632
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$633,LCFI104-LCFI103
	.long L$set$633
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$634,LCFI105-LCFI104
	.long L$set$634
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$635,LCFI106-LCFI105
	.long L$set$635
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$636,LEFDE19-LASFDE19
	.long L$set$636
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6349-.
	.set L$set$637,LFE6349-LFB6349
	.quad L$set$637
	.byte	0x8
	.quad	LLSDA6349-.
	.byte	0x4
	.set L$set$638,LCFI107-LFB6349
	.long L$set$638
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$639,LCFI108-LCFI107
	.long L$set$639
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$640,LCFI109-LCFI108
	.long L$set$640
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$641,LCFI110-LCFI109
	.long L$set$641
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$642,LCFI111-LCFI110
	.long L$set$642
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$643,LCFI112-LCFI111
	.long L$set$643
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$644,LCFI113-LCFI112
	.long L$set$644
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x4
	.set L$set$645,LCFI114-LCFI113
	.long L$set$645
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$646,LCFI115-LCFI114
	.long L$set$646
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$647,LCFI116-LCFI115
	.long L$set$647
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$648,LCFI117-LCFI116
	.long L$set$648
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$649,LCFI118-LCFI117
	.long L$set$649
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$650,LCFI119-LCFI118
	.long L$set$650
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$651,LCFI120-LCFI119
	.long L$set$651
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$652,LCFI121-LCFI120
	.long L$set$652
	.byte	0xb
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$653,LEFDE21-LASFDE21
	.long L$set$653
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7230-.
	.set L$set$654,LFE7230-LFB7230
	.quad L$set$654
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$655,LCFI122-LFB7230
	.long L$set$655
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$656,LCFI123-LCFI122
	.long L$set$656
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$657,LCFI124-LCFI123
	.long L$set$657
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$658,LCFI125-LCFI124
	.long L$set$658
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$659,LCFI126-LCFI125
	.long L$set$659
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$660,LCFI127-LCFI126
	.long L$set$660
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$661,LCFI128-LCFI127
	.long L$set$661
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$662,LCFI129-LCFI128
	.long L$set$662
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$663,LCFI130-LCFI129
	.long L$set$663
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$664,LCFI131-LCFI130
	.long L$set$664
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$665,LCFI132-LCFI131
	.long L$set$665
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$666,LCFI133-LCFI132
	.long L$set$666
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$667,LCFI134-LCFI133
	.long L$set$667
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$668,LCFI135-LCFI134
	.long L$set$668
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$669,LCFI136-LCFI135
	.long L$set$669
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$670,LCFI137-LCFI136
	.long L$set$670
	.byte	0xe
	.byte	0x50
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$671,LCFI138-LCFI137
	.long L$set$671
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$672,LCFI139-LCFI138
	.long L$set$672
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$673,LCFI140-LCFI139
	.long L$set$673
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$674,LCFI141-LCFI140
	.long L$set$674
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$675,LCFI142-LCFI141
	.long L$set$675
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$676,LCFI143-LCFI142
	.long L$set$676
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$677,LCFI144-LCFI143
	.long L$set$677
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$678,LEFDE23-LASFDE23
	.long L$set$678
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB6788-.
	.set L$set$679,LFE6788-LFB6788
	.quad L$set$679
	.byte	0x8
	.quad	LLSDA6788-.
	.byte	0x4
	.set L$set$680,LCFI145-LFB6788
	.long L$set$680
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$681,LCFI146-LCFI145
	.long L$set$681
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$682,LCFI147-LCFI146
	.long L$set$682
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$683,LCFI148-LCFI147
	.long L$set$683
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$684,LCFI149-LCFI148
	.long L$set$684
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$685,LCFI150-LCFI149
	.long L$set$685
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$686,LCFI151-LCFI150
	.long L$set$686
	.byte	0xb
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$687,LEFDE25-LASFDE25
	.long L$set$687
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB7232-.
	.set L$set$688,LFE7232-LFB7232
	.quad L$set$688
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$689,LCFI152-LFB7232
	.long L$set$689
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$690,LCFI153-LCFI152
	.long L$set$690
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$691,LCFI154-LCFI153
	.long L$set$691
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$692,LCFI155-LCFI154
	.long L$set$692
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$693,LCFI156-LCFI155
	.long L$set$693
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$694,LCFI157-LCFI156
	.long L$set$694
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$695,LCFI158-LCFI157
	.long L$set$695
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$696,LCFI159-LCFI158
	.long L$set$696
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$697,LCFI160-LCFI159
	.long L$set$697
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$698,LCFI161-LCFI160
	.long L$set$698
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$699,LCFI162-LCFI161
	.long L$set$699
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$700,LCFI163-LCFI162
	.long L$set$700
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$701,LCFI164-LCFI163
	.long L$set$701
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$702,LCFI165-LCFI164
	.long L$set$702
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$703,LCFI166-LCFI165
	.long L$set$703
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$704,LCFI167-LCFI166
	.long L$set$704
	.byte	0xe
	.byte	0x40
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$705,LCFI168-LCFI167
	.long L$set$705
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$706,LCFI169-LCFI168
	.long L$set$706
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$707,LCFI170-LCFI169
	.long L$set$707
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$708,LCFI171-LCFI170
	.long L$set$708
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$709,LCFI172-LCFI171
	.long L$set$709
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$710,LCFI173-LCFI172
	.long L$set$710
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$711,LCFI174-LCFI173
	.long L$set$711
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$712,LCFI175-LCFI174
	.long L$set$712
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$713,LEFDE27-LASFDE27
	.long L$set$713
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB6793-.
	.set L$set$714,LFE6793-LFB6793
	.quad L$set$714
	.byte	0x8
	.quad	LLSDA6793-.
	.byte	0x4
	.set L$set$715,LCFI176-LFB6793
	.long L$set$715
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$716,LCFI177-LCFI176
	.long L$set$716
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$717,LCFI178-LCFI177
	.long L$set$717
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$718,LCFI179-LCFI178
	.long L$set$718
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$719,LCFI180-LCFI179
	.long L$set$719
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$720,LCFI181-LCFI180
	.long L$set$720
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$721,LCFI182-LCFI181
	.long L$set$721
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$722,LEFDE29-LASFDE29
	.long L$set$722
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB6348-.
	.set L$set$723,LFE6348-LFB6348
	.quad L$set$723
	.byte	0x8
	.quad	LLSDA6348-.
	.byte	0x4
	.set L$set$724,LCFI183-LFB6348
	.long L$set$724
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$725,LCFI184-LCFI183
	.long L$set$725
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$726,LCFI185-LCFI184
	.long L$set$726
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x4
	.set L$set$727,LCFI186-LCFI185
	.long L$set$727
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$728,LCFI187-LCFI186
	.long L$set$728
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$729,LCFI188-LCFI187
	.long L$set$729
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$730,LCFI189-LCFI188
	.long L$set$730
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$731,LCFI190-LCFI189
	.long L$set$731
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$732,LEFDE31-LASFDE31
	.long L$set$732
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB6347-.
	.set L$set$733,LFE6347-LFB6347
	.quad L$set$733
	.byte	0x8
	.quad	LLSDA6347-.
	.byte	0x4
	.set L$set$734,LCFI191-LFB6347
	.long L$set$734
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$735,LCFI192-LCFI191
	.long L$set$735
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$736,LCFI193-LCFI192
	.long L$set$736
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$737,LCFI194-LCFI193
	.long L$set$737
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$738,LCFI195-LCFI194
	.long L$set$738
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$739,LCFI196-LCFI195
	.long L$set$739
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$740,LCFI197-LCFI196
	.long L$set$740
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$741,LCFI198-LCFI197
	.long L$set$741
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$742,LCFI199-LCFI198
	.long L$set$742
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$743,LCFI200-LCFI199
	.long L$set$743
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$744,LCFI201-LCFI200
	.long L$set$744
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$745,LEFDE33-LASFDE33
	.long L$set$745
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB7589-.
	.set L$set$746,LFE7589-LFB7589
	.quad L$set$746
	.byte	0x8
	.quad	LLSDA7589-.
	.byte	0x4
	.set L$set$747,LCFI202-LFB7589
	.long L$set$747
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$748,LCFI203-LCFI202
	.long L$set$748
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$749,LCFI204-LCFI203
	.long L$set$749
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$750,LCFI205-LCFI204
	.long L$set$750
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$751,LCFI206-LCFI205
	.long L$set$751
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$752,LCFI207-LCFI206
	.long L$set$752
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$753,LCFI208-LCFI207
	.long L$set$753
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$754,LCFI209-LCFI208
	.long L$set$754
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$755,LCFI210-LCFI209
	.long L$set$755
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$756,LCFI211-LCFI210
	.long L$set$756
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$757,LCFI212-LCFI211
	.long L$set$757
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$758,LEFDE35-LASFDE35
	.long L$set$758
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB7488-.
	.set L$set$759,LFE7488-LFB7488
	.quad L$set$759
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$760,LCFI213-LFB7488
	.long L$set$760
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$761,LCFI214-LCFI213
	.long L$set$761
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE35:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_parameters.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
