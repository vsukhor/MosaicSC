	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNKSt5ctypeIcE8do_widenEc
	.weak_definition __ZNKSt5ctypeIcE8do_widenEc
__ZNKSt5ctypeIcE8do_widenEc:
LFB1607:
	movl	%esi, %eax
	ret
LFE1607:
	.cstring
lC0:
	.ascii "%lu\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.409:
LFB9153:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%r14
	pushq	%r13
	pushq	%r12
LCFI2:
	movq	%rdi, %r12
	pushq	%rbx
	subq	$208, %rsp
LCFI3:
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	L14
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, -144(%rbp)
	vmovaps	%xmm2, -128(%rbp)
	vmovaps	%xmm3, -112(%rbp)
	vmovaps	%xmm4, -96(%rbp)
	vmovaps	%xmm5, -80(%rbp)
	vmovaps	%xmm6, -64(%rbp)
	vmovaps	%xmm7, -48(%rbp)
L14:
	subq	$64, %rsp
	leaq	16(%rbp), %rax
	leaq	-232(%rbp), %rcx
	movl	$32, %esi
	leaq	31(%rsp), %r13
	movq	%rax, -224(%rbp)
	leaq	lC0(%rip), %rdx
	andq	$-32, %r13
	leaq	-208(%rbp), %rax
	movl	$32, -232(%rbp)
	movq	%r13, %rdi
	movq	%rax, -216(%rbp)
	movl	$48, -228(%rbp)
	call	_vsnprintf
	movslq	%eax, %r14
	leaq	16(%r12), %rax
	movq	%r14, %rbx
	movq	%rax, (%r12)
	cmpl	$15, %r14d
	jg	L24
	cmpq	$1, %r14
	je	L25
	cmpl	$8, %ebx
	jb	L26
L7:
	movl	%ebx, %edx
	subl	$1, %ebx
	movq	-8(%r13,%rdx), %rcx
	movq	%rcx, -8(%rax,%rdx)
	cmpl	$8, %ebx
	jb	L8
	andl	$-8, %ebx
	xorl	%edx, %edx
L11:
	movl	%edx, %ecx
	addl	$8, %edx
	movq	0(%r13,%rcx), %rsi
	movq	%rsi, (%rax,%rcx)
	cmpl	%ebx, %edx
	jb	L11
	.align 4,0x90
L8:
	movq	(%r12), %rax
	jmp	L13
	.align 4,0x90
L26:
	testb	$4, %bl
	jne	L27
	testl	%ebx, %ebx
	je	L8
	movzbl	0(%r13), %edx
	movb	%dl, (%rax)
	testb	$2, %bl
	je	L8
	movl	%ebx, %ebx
	movzwl	-2(%r13,%rbx), %edx
	movw	%dx, -2(%rax,%rbx)
	jmp	L8
	.align 4,0x90
L25:
	movzbl	0(%r13), %edx
	movb	%dl, 16(%r12)
L13:
	movq	%r14, 8(%r12)
	movb	$0, (%rax,%r14)
	leaq	-32(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
LCFI4:
	ret
	.align 4,0x90
L24:
LCFI5:
	leaq	1(%r14), %rdi
	call	__Znwm
	movq	%r14, 16(%r12)
	movq	%rax, (%r12)
	cmpl	$8, %ebx
	jnb	L7
	jmp	L26
	.align 4,0x90
L27:
	movl	0(%r13), %edx
	movl	%ebx, %ebx
	movl	%edx, (%rax)
	movl	-4(%r13,%rbx), %edx
	movl	%edx, -4(%rax,%rbx)
	jmp	L8
LFE9153:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts19initialize_latticesEv
__ZN8MosaicSC5Potts19initialize_latticesEv:
LFB6543:
	pushq	%r14
LCFI6:
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r13
LCFI7:
	pushq	%r12
LCFI8:
	leaq	528(%rdi), %r12
	pushq	%rbp
LCFI9:
	leaq	504(%rdi), %rbp
	movq	%r12, %rdx
	pushq	%rbx
LCFI10:
	movq	%rbp, %rsi
	movq	%rdi, %rbx
	subq	$32, %rsp
LCFI11:
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rcx
	leaq	16(%rsp), %r13
	vmovaps	%xmm0, 16(%rsp)
	movq	%r13, %rdi
	call	__ZN8MosaicSC1CILj1EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rcx
	movq	%rsp, %rdi
	movq	%rbp, %rsi
	movq	%rdx, 8(%rsp)
	movq	%r12, %rdx
	movq	%rax, (%rsp)
	call	__ZN8MosaicSC1CILj2EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm
	movq	%r12, %rdx
	movq	%rbp, %rsi
	xorl	%edi, %edi
	call	__ZN8MosaicSC1CILj3EE10initializeEmRSt6vectorIS2_ImSaImEESaIS4_EERS2_IS2_IiSaIiEESaIS9_EE
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rcx
	movq	%rax, 24(%rsp)
	movq	$1, 16(%rsp)
	call	__ZN8MosaicSC1CILj4EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm
	movq	(%rbx), %rax
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %r9
	leaq	288(%rbx), %r11
	movl	$1, %r8d
	leaq	24(%rax), %r14
L35:
	movq	(%r14), %rbp
	movq	8(%r14), %r12
	subq	%rbp, %r12
	movq	%r12, %rax
	shrq	$2, %rax
	je	L29
	testq	%r9, %r9
	je	L29
	movq	504(%rbx), %r13
	addq	%rbp, %r12
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.align 4,0x90
L31:
	movl	0(%rbp), %eax
	xorl	%edx, %edx
	movq	%rax, %r10
	leaq	(%rax,%rax,2), %rax
	movq	0(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	jmp	L34
	.align 4,0x90
L47:
	testq	%rdx, %rdx
	jne	L33
	leaq	(%rsi,%rsi,2), %rdx
	addq	$1, %rsi
	salq	$3, %rdx
	addq	120(%r11), %rdx
	movq	(%rdx), %rdx
	movl	%r10d, (%rdx)
	movl	%eax, 4(%rdx)
L33:
	leal	1(%rax), %edx
	movq	%rdx, %rax
	cmpq	%rdx, %r9
	jbe	L46
L34:
	movq	(%rdi,%rdx,8), %rdx
	cmpq	%rdx, %r8
	jne	L47
	leaq	(%rcx,%rcx,2), %rdx
	addq	$1, %rcx
	salq	$3, %rdx
	addq	(%r11), %rdx
	movq	(%rdx), %rdx
	movl	%eax, 4(%rdx)
	movl	%r10d, (%rdx)
	leal	1(%rax), %edx
	movq	%rdx, %rax
	cmpq	%rdx, %r9
	ja	L34
L46:
	addq	$4, %rbp
	cmpq	%r12, %rbp
	jne	L31
L29:
	addq	$1, %r8
	addq	$24, %r14
	addq	$24, %r11
	cmpq	$5, %r8
	jne	L35
	addq	$32, %rsp
LCFI12:
	xorl	%eax, %eax
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
	ret
LFE6543:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts3runEv
__ZN8MosaicSC5Potts3runEv:
LFB6544:
	leaq	8(%rsp), %r10
LCFI18:
	andq	$-32, %rsp
	movq	%rdi, %rax
	pushq	-8(%r10)
	pushq	%rbp
LCFI19:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI20:
	pushq	%rbx
	subq	$608, %rsp
LCFI21:
	movq	48(%rdi), %rcx
	movq	%rdi, -120(%rbp)
	movl	88(%rcx), %edx
	testl	%edx, %edx
	je	L1544
L49:
	movq	744(%rax), %rax
	vmovdqa	lC2(%rip), %ymm8
	vmovdqa	lC3(%rip), %ymm7
	vmovdqa	lC4(%rip), %ymm6
	vmovdqa	lC5(%rip), %ymm5
L481:
	cmpq	%rax, 96(%rcx)
	jb	L1534
L1569:
	movq	-120(%rbp), %rax
	movq	112(%rax), %rax
	movq	(%rax), %rcx
	movq	__ZN8MosaicSC5Potts1VE(%rip), %rax
	movq	%rax, -496(%rbp)
	movl	%eax, -464(%rbp)
	movl	4000028(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 4000028(%rcx)
	cmpl	$1000000, %eax
	je	L1545
L52:
	movq	-496(%rbp), %rbx
	movslq	4000028(%rcx), %rax
	vxorps	%xmm13, %xmm13, %xmm13
	movl	%ebx, %edx
	vcvtsi2ssq	%rdx, %xmm13, %xmm13
	vmulss	28(%rcx,%rax,4), %xmm13, %xmm0
	vcvttss2siq	%xmm0, %rdx
	movl	%edx, %eax
	cmpl	%edx, %ebx
	ja	L103
	leaq	28(%rcx), %rax
	vmovdqa	lC2(%rip), %ymm9
	vmovdqa	lC3(%rip), %ymm4
	movq	%rax, -496(%rbp)
	leaq	4000028(%rcx), %rax
	vmovdqa	lC4(%rip), %ymm3
	movq	%rax, -432(%rbp)
	leaq	4000032(%rcx), %rax
	vmovdqa	lC5(%rip), %ymm2
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movl	$227, %eax
	andl	$7, %edx
	subq	%rdx, %rax
	movq	%rdx, -280(%rbp)
	movq	%rax, %rbx
	movq	%rax, -336(%rbp)
	shrq	$3, %rax
	movq	%rax, -368(%rbp)
	leaq	4000032(,%rdx,4), %rax
	andq	$-8, %rbx
	leaq	(%rcx,%rax), %rsi
	leaq	4(%rcx,%rax), %r15
	movq	%rbx, -136(%rbp)
	leaq	1588(%rcx,%rax), %r9
	leaq	4000940(%rcx), %rax
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movl	$396, %eax
	andl	$7, %edx
	subq	%rdx, %rax
	movq	%rdx, -208(%rbp)
	movq	%rax, %rbx
	movq	%rax, -240(%rbp)
	shrq	$3, %rax
	movq	%rax, -272(%rbp)
	leaq	4000940(,%rdx,4), %rax
	andq	$-8, %rbx
	leaq	-908(%rcx,%rax), %r10
	leaq	4(%rcx,%rax), %r11
	movq	%rbx, -128(%rbp)
	leaq	(%rcx,%rax), %rdx
	movq	%r10, %rax
	movq	%r11, %r10
	movq	%rax, %r11
	jmp	L153
	.align 4,0x90
L104:
	movslq	4000028(%rcx), %rax
	vmulss	28(%rcx,%rax,4), %xmm13, %xmm0
	vcvttss2siq	%xmm0, %rdi
	movl	%edi, %eax
	cmpl	%edi, -464(%rbp)
	ja	L103
L153:
	movl	4000028(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 4000028(%rcx)
	cmpl	$1000000, %eax
	jne	L104
	movq	-496(%rbp), %rax
	vpxor	%xmm10, %xmm10, %xmm10
	movq	%r10, %r14
	movq	4002528(%rcx), %rdi
	vmovss	lC6(%rip), %xmm12
	vmovss	lC7(%rip), %xmm11
	movq	%rax, -400(%rbp)
	.align 4,0x90
L152:
	movq	-136(%rbp), %rax
	movq	%rdx, -80(%rbp)
	notq	%rax
	movq	%rax, -176(%rbp)
	movq	-128(%rbp), %rax
	notq	%rax
	movq	%rax, -144(%rbp)
	jmp	L150
	.align 4,0x90
L1547:
	movl	4000032(%rcx,%rdi,4), %eax
	addq	$1, %rdi
L106:
	movl	%eax, %r8d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdi, 4002528(%rcx)
	shrl	$11, %r8d
	xorl	%r8d, %eax
	movl	%eax, %r8d
	sall	$7, %r8d
	andl	$-1658038656, %r8d
	xorl	%eax, %r8d
	movl	%r8d, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%r8d, %eax
	movl	%eax, %r8d
	shrl	$18, %r8d
	xorl	%r8d, %eax
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	vmulss	%xmm12, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm11
	ja	L1546
L150:
	cmpq	$623, %rdi
	jbe	L1547
	movq	-280(%rbp), %rbx
	testq	%rbx, %rbx
	je	L577
	movl	4000036(%rcx), %eax
	movl	4000032(%rcx), %r8d
	movl	%eax, %edi
	andl	$-2147483648, %r8d
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4001620(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r8d
	cmovne	%r10d, %edi
	movl	%edi, 4000032(%rcx)
	cmpq	$1, %rbx
	je	L578
	movl	4000040(%rcx), %edi
	andl	$-2147483648, %eax
	movl	%edi, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %eax
	movl	%eax, %r8d
	shrl	%r8d
	xorl	4001624(%rcx), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %r8d
	movl	%r8d, 4000036(%rcx)
	cmpq	$2, %rbx
	je	L579
	movl	4000044(%rcx), %eax
	andl	$-2147483648, %edi
	movl	%eax, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %edi
	movl	%edi, %r8d
	shrl	%r8d
	xorl	4001628(%rcx), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	cmovne	%r10d, %r8d
	movl	%r8d, 4000040(%rcx)
	cmpq	$3, %rbx
	je	L580
	movl	4000048(%rcx), %r8d
	andl	$-2147483648, %eax
	movl	%r8d, %edi
	andl	$2147483647, %edi
	orl	%edi, %eax
	movl	%eax, %edi
	shrl	%edi
	xorl	4001632(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %edi
	movl	%edi, 4000044(%rcx)
	cmpq	$4, %rbx
	je	L581
	movl	4000052(%rcx), %eax
	andl	$-2147483648, %r8d
	movl	%eax, %edi
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4001636(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r8d
	cmovne	%r10d, %edi
	movl	%edi, 4000048(%rcx)
	cmpq	$5, %rbx
	je	L582
	movl	4000056(%rcx), %r8d
	andl	$-2147483648, %eax
	movl	%r8d, %edi
	andl	$2147483647, %edi
	orl	%edi, %eax
	movl	%eax, %edi
	shrl	%edi
	xorl	4001640(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %edi
	movl	%edi, 4000052(%rcx)
	cmpq	$6, %rbx
	je	L583
	movl	4000060(%rcx), %eax
	andl	$-2147483648, %r8d
	movl	$220, %r13d
	andl	$2147483647, %eax
	orl	%eax, %r8d
	movl	%r8d, %eax
	shrl	%eax
	xorl	4001644(%rcx), %eax
	movl	%eax, %edi
	xorl	$-1727483681, %edi
	andl	$1, %r8d
	cmovne	%edi, %eax
	movl	%eax, 4000056(%rcx)
	movl	$7, %eax
L107:
	movq	-80(%rbp), %rdx
	movq	-368(%rbp), %r10
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	.align 4,0x90
L117:
	vpand	(%r15,%rdi), %ymm4, %ymm0
	vpand	(%rsi,%rdi), %ymm9, %ymm1
	addq	$1, %r8
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r9,%rdi), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rsi,%rdi)
	addq	$32, %rdi
	cmpq	%r10, %r8
	jb	L117
	movq	-136(%rbp), %rbx
	movq	%rdx, -80(%rbp)
	addq	%rbx, %rax
	cmpq	%rbx, -336(%rbp)
	je	L118
	leaq	(%rcx,%rax,4), %rbx
	leaq	1(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	4000032(%rbx), %r10d
	movl	%edi, %r8d
	andl	$-2147483648, %r10d
	andl	$2147483647, %r8d
	orl	%r8d, %r10d
	movl	%r10d, %r8d
	shrl	%r8d
	xorl	4001620(%rbx), %r8d
	movl	%r8d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r10d
	cmovne	%edx, %r8d
	addq	-176(%rbp), %r13
	movq	%r13, -112(%rbp)
	movl	%r8d, 4000032(%rbx)
	je	L118
	leaq	(%rcx,%r12,4), %r12
	andl	$-2147483648, %edi
	leaq	2(%rax), %rbx
	movl	4000036(%r12), %r8d
	movl	%r8d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	4001620(%r12), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %edi
	cmovne	%edx, %r10d
	cmpq	$1, -112(%rbp)
	movl	%r10d, 4000032(%r12)
	je	L118
	leaq	(%rcx,%rbx,4), %rbx
	andl	$-2147483648, %r8d
	leaq	3(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	xorl	4001620(%rbx), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r8d
	cmovne	%edx, %r10d
	cmpq	$2, -112(%rbp)
	movl	%r10d, 4000032(%rbx)
	je	L118
	leaq	(%rcx,%r12,4), %r12
	andl	$-2147483648, %edi
	leaq	4(%rax), %rbx
	movl	4000036(%r12), %r8d
	movl	%r8d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	4001620(%r12), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %edi
	cmovne	%edx, %r10d
	cmpq	$3, -112(%rbp)
	movl	%r10d, 4000032(%r12)
	je	L118
	leaq	(%rcx,%rbx,4), %rbx
	andl	$-2147483648, %r8d
	movq	-112(%rbp), %r13
	leaq	5(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	xorl	4001620(%rbx), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r8d
	cmovne	%edx, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$4, %r13
	je	L118
	leaq	(%rcx,%r12,4), %rbx
	andl	$-2147483648, %edi
	addq	$6, %rax
	movl	4000036(%rbx), %r10d
	movl	%r10d, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %edi
	movl	%edi, %r8d
	shrl	%r8d
	xorl	4001620(%rbx), %r8d
	movl	%r8d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r8d
	movl	%r8d, 4000032(%rbx)
	cmpq	$5, %r13
	je	L118
	leaq	(%rcx,%rax,4), %rdi
	andl	$-2147483648, %r10d
	movl	4000036(%rdi), %eax
	andl	$2147483647, %eax
	orl	%eax, %r10d
	movl	%r10d, %eax
	shrl	%eax
	xorl	4001620(%rdi), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %r10d
	cmovne	%r8d, %eax
	movl	%eax, 4000032(%rdi)
L118:
	movq	-208(%rbp), %rbx
	testq	%rbx, %rbx
	je	L584
	movl	4000944(%rcx), %eax
	movl	4000940(%rcx), %r8d
	movl	%eax, %edi
	andl	$-2147483648, %r8d
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4000032(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r8d
	cmovne	%r10d, %edi
	movl	%edi, 4000940(%rcx)
	cmpq	$1, %rbx
	je	L585
	movl	4000948(%rcx), %edi
	andl	$-2147483648, %eax
	movl	%edi, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %eax
	movl	%eax, %r8d
	shrl	%r8d
	xorl	4000036(%rcx), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %r8d
	movl	%r8d, 4000944(%rcx)
	cmpq	$2, %rbx
	je	L586
	movl	4000952(%rcx), %eax
	andl	$-2147483648, %edi
	movl	%eax, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %edi
	movl	%edi, %r8d
	shrl	%r8d
	xorl	4000040(%rcx), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	cmovne	%r10d, %r8d
	movl	%r8d, 4000948(%rcx)
	cmpq	$3, %rbx
	je	L587
	movl	4000956(%rcx), %r8d
	andl	$-2147483648, %eax
	movl	%r8d, %edi
	andl	$2147483647, %edi
	orl	%edi, %eax
	movl	%eax, %edi
	shrl	%edi
	xorl	4000044(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %edi
	movl	%edi, 4000952(%rcx)
	cmpq	$4, %rbx
	je	L588
	movl	4000960(%rcx), %eax
	andl	$-2147483648, %r8d
	movl	%eax, %edi
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4000048(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r8d
	cmovne	%r10d, %edi
	movl	%edi, 4000956(%rcx)
	cmpq	$5, %rbx
	je	L589
	movl	4000964(%rcx), %r8d
	andl	$-2147483648, %eax
	movl	%r8d, %edi
	andl	$2147483647, %edi
	orl	%edi, %eax
	movl	%eax, %edi
	shrl	%edi
	xorl	4000052(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	testb	$1, %al
	cmovne	%r10d, %edi
	movl	%edi, 4000960(%rcx)
	cmpq	$6, %rbx
	je	L590
	movl	4000968(%rcx), %eax
	andl	$-2147483648, %r8d
	movl	$389, %r13d
	andl	$2147483647, %eax
	orl	%eax, %r8d
	movl	%r8d, %eax
	shrl	%eax
	xorl	4000056(%rcx), %eax
	movl	%eax, %edi
	xorl	$-1727483681, %edi
	andl	$1, %r8d
	cmovne	%edi, %eax
	movl	%eax, 4000964(%rcx)
	movl	$234, %eax
L127:
	movq	-272(%rbp), %r10
	movq	-80(%rbp), %rdx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	.align 4,0x90
L137:
	vpand	(%r14,%rdi), %ymm4, %ymm0
	vpand	(%rdx,%rdi), %ymm9, %ymm1
	addq	$1, %r8
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r11,%rdi), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rdx,%rdi)
	addq	$32, %rdi
	cmpq	%r10, %r8
	jb	L137
	movq	-128(%rbp), %rbx
	movq	%rdx, -80(%rbp)
	addq	%rbx, %rax
	cmpq	%rbx, -240(%rbp)
	je	L138
	leaq	(%rcx,%rax,4), %rbx
	leaq	1(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	4000032(%rbx), %r10d
	movl	%edi, %r8d
	andl	$-2147483648, %r10d
	andl	$2147483647, %r8d
	orl	%r8d, %r10d
	movl	%r10d, %r8d
	shrl	%r8d
	xorl	3999124(%rbx), %r8d
	movl	%r8d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r10d
	cmovne	%edx, %r8d
	addq	-144(%rbp), %r13
	movq	%r13, -112(%rbp)
	movl	%r8d, 4000032(%rbx)
	je	L138
	leaq	(%rcx,%r12,4), %r12
	andl	$-2147483648, %edi
	leaq	2(%rax), %rbx
	movl	4000036(%r12), %r8d
	movl	%r8d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%r12), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %edi
	cmovne	%edx, %r10d
	cmpq	$1, -112(%rbp)
	movl	%r10d, 4000032(%r12)
	je	L138
	leaq	(%rcx,%rbx,4), %rbx
	andl	$-2147483648, %r8d
	leaq	3(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r8d
	cmovne	%edx, %r10d
	cmpq	$2, -112(%rbp)
	movl	%r10d, 4000032(%rbx)
	je	L138
	leaq	(%rcx,%r12,4), %r12
	andl	$-2147483648, %edi
	leaq	4(%rax), %rbx
	movl	4000036(%r12), %r8d
	movl	%r8d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%r12), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %edi
	cmovne	%edx, %r10d
	cmpq	$3, -112(%rbp)
	movl	%r10d, 4000032(%r12)
	je	L138
	leaq	(%rcx,%rbx,4), %rbx
	andl	$-2147483648, %r8d
	movq	-112(%rbp), %r13
	leaq	5(%rax), %r12
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %edx
	xorl	$-1727483681, %edx
	andl	$1, %r8d
	cmovne	%edx, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$4, %r13
	je	L138
	leaq	(%rcx,%r12,4), %rbx
	andl	$-2147483648, %edi
	addq	$6, %rax
	movl	4000036(%rbx), %r10d
	movl	%r10d, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %edi
	movl	%edi, %r8d
	shrl	%r8d
	xorl	3999124(%rbx), %r8d
	movl	%r8d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r8d
	movl	%r8d, 4000032(%rbx)
	cmpq	$5, %r13
	je	L138
	leaq	(%rcx,%rax,4), %rdi
	andl	$-2147483648, %r10d
	movl	4000036(%rdi), %eax
	andl	$2147483647, %eax
	orl	%eax, %r10d
	movl	%r10d, %eax
	shrl	%eax
	xorl	3999124(%rdi), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %r10d
	cmovne	%r8d, %eax
	movl	%eax, 4000032(%rdi)
L138:
	movl	4000032(%rcx), %eax
	movl	4002524(%rcx), %r8d
	movl	%eax, %edi
	andl	$-2147483648, %r8d
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4001616(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r8d
	cmovne	%r10d, %edi
	movl	%edi, 4002524(%rcx)
	movl	$1, %edi
	jmp	L106
	.align 4,0x90
L1546:
	movq	-400(%rbp), %rax
	movq	-80(%rbp), %rdx
	vmovss	%xmm0, (%rax)
	addq	$4, %rax
	movq	%rax, -400(%rbp)
	cmpq	%rax, -432(%rbp)
	jne	L152
	movl	$0, 4000028(%rcx)
	movq	%r14, %r10
	jmp	L104
	.align 4,0x90
L577:
	movl	$227, %r13d
	xorl	%eax, %eax
	jmp	L107
	.align 4,0x90
L578:
	movl	$226, %r13d
	movl	$1, %eax
	jmp	L107
	.align 4,0x90
L585:
	movl	$395, %r13d
	movl	$228, %eax
	jmp	L127
	.align 4,0x90
L584:
	movl	$396, %r13d
	movl	$227, %eax
	jmp	L127
L586:
	movl	$394, %r13d
	movl	$229, %eax
	jmp	L127
L579:
	movl	$225, %r13d
	movl	$2, %eax
	jmp	L107
L580:
	movl	$224, %r13d
	movl	$3, %eax
	jmp	L107
L587:
	movl	$393, %r13d
	movl	$230, %eax
	jmp	L127
L581:
	movl	$223, %r13d
	movl	$4, %eax
	jmp	L107
L588:
	movl	$392, %r13d
	movl	$231, %eax
	jmp	L127
L589:
	movl	$391, %r13d
	movl	$232, %eax
	jmp	L127
L582:
	movl	$222, %r13d
	movl	$5, %eax
	jmp	L107
L590:
	movl	$390, %r13d
	movl	$233, %eax
	jmp	L127
L583:
	movl	$221, %r13d
	movl	$6, %eax
	jmp	L107
L103:
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi
	divl	8+__ZN8MosaicSC5Potts1LE(%rip)
	movq	504(%rdi), %r15
	movq	%r15, -528(%rbp)
	movl	%eax, -624(%rbp)
	movl	%eax, %eax
	leaq	(%rax,%rax,2), %rsi
	movq	%rax, -144(%rbp)
	movl	%edx, %eax
	movq	%rax, -136(%rbp)
	salq	$3, %rax
	leaq	0(,%rsi,8), %rbx
	movq	%rax, -296(%rbp)
	addq	(%r15,%rsi,8), %rax
	movq	%rax, -560(%rbp)
	movq	(%rax), %rax
	movq	%rsi, -336(%rbp)
	testq	%rax, %rax
	jne	L1548
	addq	24(%rdi), %rbx
	movq	8(%rbx), %rax
	movq	%rax, %rdi
	subq	(%rbx), %rdi
	movq	%rdi, %rdx
	sarq	$2, %rdx
	je	L619
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	ja	L1549
	vmovdqa	%ymm5, -208(%rbp)
	vmovdqa	%ymm6, -176(%rbp)
	vmovdqa	%ymm7, -112(%rbp)
	vmovdqa	%ymm8, -80(%rbp)
	vzeroupper
	call	__Znwm
	vmovdqa	-80(%rbp), %ymm8
	vmovdqa	-112(%rbp), %ymm7
	movq	%rax, -128(%rbp)
	vmovdqa	-176(%rbp), %ymm6
	movq	8(%rbx), %rax
	vmovdqa	-208(%rbp), %ymm5
L262:
	movq	(%rbx), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
	cmpq	%rsi, %rax
	je	L264
	movq	-128(%rbp), %rdi
	movq	%rbx, %rdx
	vmovdqa	%ymm5, -208(%rbp)
	vmovdqa	%ymm6, -176(%rbp)
	vmovdqa	%ymm7, -112(%rbp)
	vmovdqa	%ymm8, -80(%rbp)
	vzeroupper
	call	_memmove
	vmovdqa	-112(%rbp), %ymm7
	vmovdqa	-80(%rbp), %ymm8
	vmovdqa	-208(%rbp), %ymm5
	vmovdqa	-176(%rbp), %ymm6
L264:
	movq	-120(%rbp), %rcx
	leaq	264(%rcx), %rsi
	movq	112(%rcx), %rax
	movq	-128(%rbp), %rcx
	movq	%rsi, -272(%rbp)
	movl	(%rcx), %edx
	movq	(%rax), %rax
	leaq	(%rdx,%rdx,2), %rcx
	movq	8(%rsi,%rcx,8), %rdx
	subq	(%rsi,%rcx,8), %rdx
	movabsq	$-6148914691236517205, %rcx
	sarq	$3, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, -176(%rbp)
	cmpq	$4, %rbx
	je	L1550
	movq	-128(%rbp), %rbx
	movl	4(%rbx), %edx
	movq	-272(%rbp), %rbx
	leaq	(%rdx,%rdx,2), %rsi
	movq	8(%rbx,%rsi,8), %rdx
	subq	(%rbx,%rsi,8), %rdx
	sarq	$3, %rdx
	imulq	%rcx, %rdx
	addq	-176(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movl	4000028(%rax), %edx
	addl	$1, %edx
	movl	%edx, 4000028(%rax)
	cmpl	$1000000, %edx
	je	L1551
L373:
	movq	-240(%rbp), %rbx
	movl	4000028(%rax), %ecx
	testq	%rbx, %rbx
	js	L422
	vxorps	%xmm11, %xmm11, %xmm11
	vcvtsi2ssq	%rbx, %xmm11, %xmm11
L423:
	movslq	%ecx, %rdx
	vmulss	28(%rax,%rdx,4), %xmm11, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jnb	L424
	vcvttss2siq	%xmm0, %rsi
L425:
	cmpq	%rsi, -240(%rbp)
	ja	L426
	leaq	4000032(%rax), %rdx
	leaq	28(%rax), %rcx
	vmovdqa	lC2(%rip), %ymm9
	vmovdqa	lC3(%rip), %ymm4
	shrq	$2, %rdx
	movq	%rcx, -304(%rbp)
	leaq	4000028(%rax), %rcx
	vmovdqa	lC4(%rip), %ymm3
	negq	%rdx
	movq	%rcx, -600(%rbp)
	vmovdqa	lC5(%rip), %ymm2
	andl	$7, %edx
	movq	%rdx, %rcx
	movq	%rdx, -464(%rbp)
	movl	$227, %edx
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	subq	%rcx, %rbx
	leaq	4000032(,%rdx,4), %rdx
	movq	%rbx, %rcx
	leaq	4(%rax,%rdx), %r15
	leaq	1588(%rax,%rdx), %r10
	movq	%rbx, -496(%rbp)
	shrq	$3, %rcx
	andq	$-8, %rbx
	movq	%rcx, -616(%rbp)
	leaq	(%rax,%rdx), %rcx
	leaq	4000940(%rax), %rdx
	shrq	$2, %rdx
	movq	%rbx, -368(%rbp)
	negq	%rdx
	movq	%rdx, %rsi
	movl	$396, %edx
	andl	$7, %esi
	subq	%rsi, %rdx
	movq	%rsi, -400(%rbp)
	leaq	4000940(,%rsi,4), %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rbx
	leaq	4(%rax,%rsi), %r11
	movq	%rdx, -432(%rbp)
	shrq	$3, %rbx
	andq	$-8, %rdi
	leaq	(%rax,%rsi), %rdx
	movq	%rbx, -608(%rbp)
	leaq	-908(%rax,%rsi), %rbx
	movq	%rdi, -280(%rbp)
	jmp	L478
L1553:
	vcvttss2siq	%xmm0, %rsi
	cmpq	%rsi, -240(%rbp)
	ja	L426
L478:
	movl	4000028(%rax), %esi
	addl	$1, %esi
	movl	%esi, 4000028(%rax)
	cmpl	$1000000, %esi
	je	L1552
L427:
	movslq	4000028(%rax), %rsi
	vmulss	28(%rax,%rsi,4), %xmm11, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jb	L1553
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rdi
	vcvttss2siq	%xmm0, %rsi
	xorq	%rdi, %rsi
	cmpq	%rsi, -240(%rbp)
	jbe	L478
L426:
	movq	-128(%rbp), %rax
	cmpq	-176(%rbp), %rsi
	jb	L1542
	movl	4(%rax), %eax
	subq	-176(%rbp), %rsi
	leaq	(%rax,%rax,2), %rdx
L1543:
	movq	-272(%rbp), %rcx
	leaq	(%rsi,%rsi,2), %rax
	movq	-128(%rbp), %rdi
	salq	$3, %rax
	addq	(%rcx,%rdx,8), %rax
	movq	(%rax), %rax
	movl	(%rax), %ebx
	movl	4(%rax), %r13d
	vmovdqa	%ymm5, -208(%rbp)
	vmovdqa	%ymm6, -176(%rbp)
	vmovdqa	%ymm7, -112(%rbp)
	vmovdqa	%ymm8, -80(%rbp)
	vzeroupper
	call	__ZdlPv
	movq	-120(%rbp), %rax
	vmovdqa	-80(%rbp), %ymm8
	movq	-336(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	504(%rax), %rax
	vmovdqa	-112(%rbp), %ymm7
	vmovdqa	-176(%rbp), %ymm6
	vmovdqa	-208(%rbp), %ymm5
	addq	(%rax,%rdx,8), %rcx
	movq	%rax, -528(%rbp)
	movq	%rcx, -560(%rbp)
	movq	%rcx, %rax
	jmp	L261
L1552:
	movq	-304(%rbp), %rsi
	vpxor	%xmm10, %xmm10, %xmm10
	movq	%r11, %r14
	movq	4002528(%rax), %rdi
	vmovss	lC6(%rip), %xmm13
	vmovss	lC7(%rip), %xmm12
	movq	%rsi, -592(%rbp)
	.align 4,0x90
L475:
	movq	-368(%rbp), %rsi
	movq	-616(%rbp), %r8
	notq	%rsi
	movq	%rsi, -528(%rbp)
	movq	-280(%rbp), %rsi
	notq	%rsi
	movq	%rsi, -560(%rbp)
	movq	-608(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	jmp	L473
	.align 4,0x90
L1555:
	movl	4000032(%rax,%rdi,4), %r9d
	addq	$1, %rdi
L429:
	movl	%r9d, %r11d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdi, 4002528(%rax)
	shrl	$11, %r11d
	xorl	%r11d, %r9d
	movl	%r9d, %r11d
	sall	$7, %r11d
	andl	$-1658038656, %r11d
	xorl	%r9d, %r11d
	movl	%r11d, %r9d
	sall	$15, %r9d
	andl	$-272236544, %r9d
	xorl	%r11d, %r9d
	movl	%r9d, %r11d
	shrl	$18, %r11d
	xorl	%r11d, %r9d
	vcvtsi2ssq	%r9, %xmm0, %xmm0
	vmulss	%xmm13, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm12
	ja	L1554
L473:
	cmpq	$623, %rdi
	jbe	L1555
	movq	-464(%rbp), %r13
	testq	%r13, %r13
	je	L662
	movl	4000036(%rax), %r12d
	movl	4000032(%rax), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000032(%rax)
	cmpq	$1, %r13
	je	L663
	movl	4000040(%rax), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001624(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000036(%rax)
	cmpq	$2, %r13
	je	L664
	movl	4000044(%rax), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4001628(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r11d
	cmovne	%r9d, %edi
	movl	%edi, 4000040(%rax)
	cmpq	$3, %r13
	je	L665
	movl	4000048(%rax), %r11d
	andl	$-2147483648, %r12d
	movq	%r13, %rsi
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001632(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000044(%rax)
	cmpq	$4, %r13
	je	L666
	movl	4000052(%rax), %r12d
	movl	%r11d, %edi
	andl	$-2147483648, %edi
	movl	%r12d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4001636(%rax), %r9d
	movl	%r9d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %edi
	cmovne	%r11d, %r9d
	movl	%r9d, 4000048(%rax)
	cmpq	$5, %r13
	je	L667
	movl	4000056(%rax), %r13d
	andl	$-2147483648, %r12d
	movl	%r12d, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4001640(%rax), %r9d
	movl	%r9d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %edi
	cmovne	%r11d, %r9d
	movl	%r9d, 4000052(%rax)
	cmpq	$6, %rsi
	je	L668
	movl	4000060(%rax), %r9d
	andl	$-2147483648, %r13d
	andl	$2147483647, %r9d
	orl	%r13d, %r9d
	movl	$220, %r13d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001644(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000056(%rax)
	movl	$7, %edi
L430:
	movq	-112(%rbp), %rsi
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	.align 4,0x90
L440:
	vpand	(%r15,%r9), %ymm4, %ymm0
	vpand	(%rcx,%r9), %ymm9, %ymm1
	addq	$1, %r11
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r10,%r9), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rcx,%r9)
	addq	$32, %r9
	cmpq	%r8, %r11
	jb	L440
	movq	-368(%rbp), %r11
	movq	%rsi, -112(%rbp)
	addq	%r11, %rdi
	cmpq	%r11, -496(%rbp)
	je	L441
	leaq	(%rax,%rdi,4), %r12
	movl	4000036(%r12), %r9d
	movl	4000032(%r12), %r11d
	movl	%r9d, -208(%rbp)
	andl	$-2147483648, %r11d
	andl	$2147483647, %r9d
	orl	%r9d, %r11d
	movl	%r11d, %r9d
	shrl	%r9d
	xorl	4001620(%r12), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r9d
	addq	-528(%rbp), %r13
	movq	%r13, -80(%rbp)
	movl	%r9d, 4000032(%r12)
	je	L441
	leaq	1(%rdi), %rsi
	movl	-208(%rbp), %r9d
	leaq	2(%rdi), %r13
	leaq	(%rax,%rsi,4), %r12
	movl	4000036(%r12), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, -208(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %r9d
	movl	4001620(%r12), %r11d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$1, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L441
	leaq	(%rax,%r13,4), %r12
	leaq	3(%rdi), %rsi
	movl	-208(%rbp), %r9d
	movl	4000036(%r12), %r13d
	movq	%rsi, -288(%rbp)
	andl	$-2147483648, %r9d
	movl	4001620(%r12), %r11d
	movl	%r13d, %esi
	andl	$2147483647, %esi
	orl	%esi, %r9d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$2, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L441
	leaq	3(%rdi), %rsi
	leaq	4(%rdi), %r9
	leaq	(%rax,%rsi,4), %r12
	movq	%r9, -208(%rbp)
	movl	4000036(%r12), %r9d
	movl	%r9d, %r11d
	movl	%r13d, %r9d
	movl	%r11d, %r13d
	andl	$-2147483648, %r9d
	movl	%r11d, -208(%rbp)
	movl	4001620(%r12), %r11d
	andl	$2147483647, %r13d
	orl	%r13d, %r9d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$3, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L441
	leaq	4(%rdi), %r9
	leaq	5(%rdi), %r13
	leaq	(%rax,%r9,4), %r12
	movl	4000036(%r12), %r9d
	movl	%r9d, %r11d
	movl	-208(%rbp), %r9d
	movl	%r11d, -208(%rbp)
	andl	$2147483647, %r11d
	andl	$-2147483648, %r9d
	orl	%r11d, %r9d
	movl	4001620(%r12), %r11d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$4, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L441
	leaq	(%rax,%r13,4), %r11
	leaq	6(%rdi), %r12
	movl	-208(%rbp), %edi
	movl	4000036(%r11), %r13d
	andl	$-2147483648, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4001620(%r11), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r9d
	cmpq	$5, -80(%rbp)
	movl	%r9d, 4000032(%r11)
	je	L441
	leaq	(%rax,%r12,4), %r9
	andl	$-2147483648, %r13d
	movl	4000036(%r9), %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	4001620(%r9), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r13d
	cmovne	%r11d, %edi
	movl	%edi, 4000032(%r9)
L441:
	movq	-400(%rbp), %r13
	testq	%r13, %r13
	je	L669
	movl	4000944(%rax), %r12d
	movl	4000940(%rax), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000032(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000940(%rax)
	cmpq	$1, %r13
	je	L670
	movl	4000948(%rax), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4000036(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000944(%rax)
	cmpq	$2, %r13
	je	L671
	movl	4000952(%rax), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4000040(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r11d
	cmovne	%r9d, %edi
	movl	%edi, 4000948(%rax)
	cmpq	$3, %r13
	je	L672
	movl	4000956(%rax), %r11d
	andl	$-2147483648, %r12d
	movq	%r13, %rsi
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4000044(%rax), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000952(%rax)
	cmpq	$4, %r13
	je	L673
	movl	4000960(%rax), %r12d
	movl	%r11d, %edi
	andl	$-2147483648, %edi
	movl	%r12d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4000048(%rax), %r9d
	movl	%r9d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %edi
	cmovne	%r11d, %r9d
	movl	%r9d, 4000956(%rax)
	cmpq	$5, %r13
	je	L674
	movl	4000964(%rax), %r13d
	andl	$-2147483648, %r12d
	movl	%r12d, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4000052(%rax), %r9d
	movl	%r9d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %edi
	cmovne	%r11d, %r9d
	movl	%r9d, 4000960(%rax)
	cmpq	$6, %rsi
	je	L675
	movl	4000968(%rax), %r9d
	andl	$-2147483648, %r13d
	andl	$2147483647, %r9d
	orl	%r13d, %r9d
	movl	$389, %r13d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000056(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000964(%rax)
	movl	$234, %edi
L450:
	movq	-112(%rbp), %rsi
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	.align 4,0x90
L460:
	vpand	(%r14,%r9), %ymm4, %ymm0
	vpand	(%rdx,%r9), %ymm9, %ymm1
	addq	$1, %r11
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%rbx,%r9), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rdx,%r9)
	addq	$32, %r9
	cmpq	%rsi, %r11
	jb	L460
	movq	%rsi, -112(%rbp)
	movq	-280(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rsi, -432(%rbp)
	je	L461
	leaq	(%rax,%rdi,4), %r12
	movl	4000036(%r12), %r9d
	movl	4000032(%r12), %r11d
	movl	%r9d, -208(%rbp)
	andl	$-2147483648, %r11d
	andl	$2147483647, %r9d
	orl	%r9d, %r11d
	movl	3999124(%r12), %r9d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r9d
	addq	-560(%rbp), %r13
	movq	%r13, -80(%rbp)
	movl	%r9d, 4000032(%r12)
	je	L461
	leaq	1(%rdi), %rsi
	movl	-208(%rbp), %r9d
	leaq	2(%rdi), %r13
	leaq	(%rax,%rsi,4), %r12
	movl	4000036(%r12), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, -208(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %r9d
	movl	3999124(%r12), %r11d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$1, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L461
	leaq	(%rax,%r13,4), %r12
	leaq	3(%rdi), %rsi
	movl	-208(%rbp), %r9d
	movl	4000036(%r12), %r13d
	movq	%rsi, -288(%rbp)
	andl	$-2147483648, %r9d
	movl	3999124(%r12), %r11d
	movl	%r13d, %esi
	andl	$2147483647, %esi
	orl	%esi, %r9d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$2, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L461
	leaq	3(%rdi), %rsi
	leaq	4(%rdi), %r9
	leaq	(%rax,%rsi,4), %r12
	movq	%r9, -208(%rbp)
	movl	4000036(%r12), %r9d
	movl	%r9d, %r11d
	movl	%r13d, %r9d
	movl	%r11d, %r13d
	andl	$-2147483648, %r9d
	movl	%r11d, -208(%rbp)
	movl	3999124(%r12), %r11d
	andl	$2147483647, %r13d
	orl	%r13d, %r9d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$3, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L461
	leaq	4(%rdi), %r9
	leaq	5(%rdi), %r13
	leaq	(%rax,%r9,4), %r12
	movl	4000036(%r12), %r9d
	movl	%r9d, %r11d
	movl	-208(%rbp), %r9d
	movl	%r11d, -208(%rbp)
	andl	$2147483647, %r11d
	andl	$-2147483648, %r9d
	orl	%r11d, %r9d
	movl	3999124(%r12), %r11d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r11d
	cmpq	$4, -80(%rbp)
	movl	%r11d, 4000032(%r12)
	je	L461
	leaq	(%rax,%r13,4), %r11
	leaq	6(%rdi), %r12
	movl	-208(%rbp), %edi
	movl	4000036(%r11), %r13d
	andl	$-2147483648, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	3999124(%r11), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r9d
	cmpq	$5, -80(%rbp)
	movl	%r9d, 4000032(%r11)
	je	L461
	leaq	(%rax,%r12,4), %r9
	andl	$-2147483648, %r13d
	movl	4000036(%r9), %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	3999124(%r9), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r13d
	cmovne	%r11d, %edi
	movl	%edi, 4000032(%r9)
L461:
	movl	4000032(%rax), %r9d
	movl	4002524(%rax), %r11d
	movl	%r9d, %edi
	andl	$-2147483648, %r11d
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4001616(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4002524(%rax)
	movl	$1, %edi
	jmp	L429
	.align 4,0x90
L1554:
	movq	-592(%rbp), %rsi
	vmovss	%xmm0, (%rsi)
	addq	$4, %rsi
	movq	%rsi, -592(%rbp)
	cmpq	-600(%rbp), %rsi
	jne	L475
	movl	$0, 4000028(%rax)
	movq	%r14, %r11
	jmp	L427
L670:
	movl	$395, %r13d
	movl	$228, %edi
	jmp	L450
L669:
	movl	$396, %r13d
	movl	$227, %edi
	jmp	L450
L663:
	movl	$226, %r13d
	movl	$1, %edi
	jmp	L430
L662:
	movl	$227, %r13d
	xorl	%edi, %edi
	jmp	L430
L671:
	movl	$394, %r13d
	movl	$229, %edi
	jmp	L450
L664:
	movl	$225, %r13d
	movl	$2, %edi
	jmp	L430
L665:
	movl	$224, %r13d
	movl	$3, %edi
	jmp	L430
L666:
	movl	$223, %r13d
	movl	$4, %edi
	jmp	L430
L673:
	movl	$392, %r13d
	movl	$231, %edi
	jmp	L450
L672:
	movl	$393, %r13d
	movl	$230, %edi
	jmp	L450
L1548:
	leaq	(%rax,%rax,2), %rax
	leaq	384(%rdi,%rax,8), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	subq	%rdx, %rax
	movq	%rdx, -288(%rbp)
	movabsq	$-6148914691236517205, %rdx
	sarq	$3, %rax
	imulq	%rdx, %rax
	movq	%rax, -432(%rbp)
	movl	4000028(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 4000028(%rcx)
	cmpl	$1000000, %eax
	je	L1556
L155:
	movq	-432(%rbp), %rax
	movl	4000028(%rcx), %edx
	testq	%rax, %rax
	js	L204
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ssq	%rax, %xmm13, %xmm13
L205:
	movslq	%edx, %rax
	vmulss	28(%rcx,%rax,4), %xmm13, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jnb	L206
	vcvttss2siq	%xmm0, %rsi
L207:
	cmpq	%rsi, -432(%rbp)
	ja	L208
	leaq	28(%rcx), %rax
	vmovdqa	lC2(%rip), %ymm9
	vmovdqa	lC3(%rip), %ymm4
	movq	%rax, -600(%rbp)
	leaq	4000028(%rcx), %rax
	vmovdqa	lC4(%rip), %ymm3
	movq	%rax, -608(%rbp)
	leaq	4000032(%rcx), %rax
	vmovdqa	lC5(%rip), %ymm2
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movl	$227, %eax
	andl	$7, %edx
	subq	%rdx, %rax
	movq	%rdx, -280(%rbp)
	movq	%rax, %rbx
	movq	%rax, -272(%rbp)
	shrq	$3, %rax
	movq	%rax, -240(%rbp)
	leaq	4000032(,%rdx,4), %rax
	andq	$-8, %rbx
	leaq	4(%rcx,%rax), %rsi
	leaq	(%rcx,%rax), %rdx
	movq	%rbx, -176(%rbp)
	leaq	1588(%rcx,%rax), %r10
	leaq	4000940(%rcx), %rax
	movq	%rsi, -296(%rbp)
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rbx
	movl	$396, %eax
	andl	$7, %ebx
	subq	%rbx, %rax
	leaq	4000940(,%rbx,4), %rsi
	movq	%rbx, -400(%rbp)
	movq	%rax, %rdi
	movq	%rax, -368(%rbp)
	shrq	$3, %rax
	leaq	4(%rcx,%rsi), %r11
	andq	$-8, %rdi
	movq	%rax, -304(%rbp)
	leaq	-908(%rcx,%rsi), %rbx
	leaq	(%rcx,%rsi), %rax
	movq	%rdi, -208(%rbp)
	jmp	L260
L1558:
	vcvttss2siq	%xmm0, %rsi
	cmpq	%rsi, -432(%rbp)
	ja	L208
L260:
	movl	4000028(%rcx), %esi
	addl	$1, %esi
	movl	%esi, 4000028(%rcx)
	cmpl	$1000000, %esi
	je	L1557
L209:
	movslq	4000028(%rcx), %rsi
	vmulss	28(%rcx,%rsi,4), %xmm13, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jb	L1558
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rdi
	vcvttss2siq	%xmm0, %rsi
	xorq	%rdi, %rsi
	cmpq	%rsi, -432(%rbp)
	jbe	L260
L208:
	movq	-288(%rbp), %rcx
	leaq	(%rsi,%rsi,2), %rax
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %ebx
	movl	4(%rax), %r13d
	movq	-560(%rbp), %rax
L261:
	movq	(%rax), %r15
	movq	-528(%rbp), %rcx
	movl	%ebx, %eax
	movq	%rax, -128(%rbp)
	leaq	(%rax,%rax,2), %rax
	movq	%rax, -368(%rbp)
	movq	(%rcx,%rax,8), %rax
	movq	(%rax,%r13,8), %r14
	movq	-120(%rbp), %rax
	cmpq	%r14, %r15
	je	L1559
	movq	528(%rax), %rax
	movq	-336(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-136(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	-368(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax,%r13,4), %ecx
	movl	%ecx, -112(%rbp)
	cmpl	%ebx, -624(%rbp)
	je	L676
	testq	%r14, %r14
	je	L677
	cmpq	$3, %r14
	je	L677
	movl	$-1, -208(%rbp)
	cmpl	$1, %ecx
	je	L483
	cmpl	$-1, %ecx
	movl	$1, %eax
	cmovne	%ecx, %eax
	movl	%eax, -208(%rbp)
L483:
	testq	%r15, %r15
	je	L1537
	cmpq	$3, %r15
	je	L1537
	movl	$-1, -176(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	$1, %ecx
	je	L482
	cmpl	$-1, %ecx
	movl	$1, %eax
	cmovne	%ecx, %eax
	movl	%eax, -176(%rbp)
L482:
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	%xmm4, -280(%rbp)
	testq	%r15, %r15
	je	L484
	movq	-120(%rbp), %rax
	vmovdqa	%ymm5, -432(%rbp)
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	movl	-80(%rbp), %edx
	vmovdqa	%ymm6, -400(%rbp)
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	leaq	528(%rax), %r8
	leaq	504(%rax), %rcx
	vmovdqa	%ymm7, -272(%rbp)
	vmovdqa	%ymm8, -240(%rbp)
	cmpq	$4, %r15
	je	L1560
	cmpq	$2, %r15
	je	L1561
	cmpq	$3, %r15
	je	L1562
	vzeroupper
	call	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	vmovdqa	-432(%rbp), %ymm5
	vmovdqa	-400(%rbp), %ymm6
	vmovdqa	-272(%rbp), %ymm7
	vmovdqa	-240(%rbp), %ymm8
	vmovss	%xmm0, -280(%rbp)
	vxorps	%xmm4, %xmm4, %xmm4
L484:
	vmovss	%xmm4, -272(%rbp)
	testq	%r14, %r14
	je	L488
	movq	-120(%rbp), %rax
	vmovdqa	%ymm5, -464(%rbp)
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	movl	-112(%rbp), %edx
	vmovdqa	%ymm6, -432(%rbp)
	movq	%r13, %rsi
	movq	-128(%rbp), %rdi
	leaq	528(%rax), %r8
	leaq	504(%rax), %rcx
	vmovdqa	%ymm7, -400(%rbp)
	vmovdqa	%ymm8, -240(%rbp)
	cmpq	$4, %r14
	je	L1563
	cmpq	$2, %r14
	je	L1564
	cmpq	$3, %r14
	je	L1565
	vzeroupper
	call	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	vmovdqa	-464(%rbp), %ymm5
	vmovdqa	-432(%rbp), %ymm6
	vmovdqa	-400(%rbp), %ymm7
	vmovdqa	-240(%rbp), %ymm8
	vmovss	%xmm0, -272(%rbp)
L488:
	movq	-120(%rbp), %rbx
	movq	-336(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movl	-208(%rbp), %edi
	movq	504(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rax
	movq	%r14, (%rax,%rsi,8)
	movq	528(%rbx), %rax
	movq	(%rax,%rcx,8), %rcx
	movl	%edi, (%rcx,%rsi,4)
	movq	-368(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rdx
	movq	(%rax,%rcx,8), %rax
	movl	-176(%rbp), %ecx
	movq	%r15, (%rdx,%r13,8)
	movl	%ecx, (%rax,%r13,4)
	testq	%r14, %r14
	je	L684
	leaq	528(%rbx), %r8
	leaq	504(%rbx), %rcx
	cmpq	$4, %r14
	je	L1566
	cmpq	$2, %r14
	je	L1567
	movl	%edi, %edx
	vmovdqa	%ymm5, -496(%rbp)
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	movq	-144(%rbp), %rdi
	vmovdqa	%ymm6, -464(%rbp)
	vmovdqa	%ymm7, -432(%rbp)
	vmovdqa	%ymm8, -400(%rbp)
	cmpq	$3, %r14
	je	L1568
	vzeroupper
	call	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	vmovdqa	-496(%rbp), %ymm5
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	-432(%rbp), %ymm7
	vmovdqa	-400(%rbp), %ymm8
	vmovss	%xmm0, -240(%rbp)
L494:
	vmovss	lC9(%rip), %xmm0
	vucomiss	-240(%rbp), %xmm0
	jnb	L492
L1531:
	movq	-120(%rbp), %rbx
L1536:
	movq	504(%rbx), %rdx
	movq	-336(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movl	-80(%rbp), %edi
	movq	(%rdx,%rcx,8), %rax
	movq	%r15, (%rax,%rsi,8)
	movq	528(%rbx), %rax
	movq	(%rax,%rcx,8), %rcx
	movl	%edi, (%rcx,%rsi,4)
	movq	-368(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rdx
	movq	(%rax,%rcx,8), %rax
	movl	-112(%rbp), %ecx
	movq	%r14, (%rdx,%r13,8)
	movl	%ecx, (%rax,%r13,4)
	movq	48(%rbx), %rcx
	movq	744(%rbx), %rax
	cmpq	%rax, 96(%rcx)
	jnb	L1569
L1534:
	vzeroupper
	leaq	-48(%rbp), %rsp
	popq	%rbx
	popq	%r10
LCFI22:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI23:
	ret
L1557:
LCFI24:
	movq	-600(%rbp), %rsi
	movq	4002528(%rcx), %rdi
	vpxor	%xmm10, %xmm10, %xmm10
	vmovss	lC6(%rip), %xmm12
	vmovss	lC7(%rip), %xmm11
	movq	%rsi, -592(%rbp)
	.align 4,0x90
L257:
	movq	-176(%rbp), %rsi
	movq	-304(%rbp), %r8
	notq	%rsi
	movq	%rsi, -464(%rbp)
	movq	-208(%rbp), %rsi
	notq	%rsi
	movq	%rsi, -496(%rbp)
	movq	-296(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	jmp	L255
	.align 4,0x90
L1571:
	movl	4000032(%rcx,%rdi,4), %r9d
	addq	$1, %rdi
L211:
	movl	%r9d, %r12d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdi, 4002528(%rcx)
	shrl	$11, %r12d
	xorl	%r12d, %r9d
	movl	%r9d, %r12d
	sall	$7, %r12d
	andl	$-1658038656, %r12d
	xorl	%r9d, %r12d
	movl	%r12d, %r9d
	sall	$15, %r9d
	andl	$-272236544, %r9d
	xorl	%r12d, %r9d
	movl	%r9d, %r12d
	shrl	$18, %r12d
	xorl	%r12d, %r9d
	vcvtsi2ssq	%r9, %xmm0, %xmm0
	vmulss	%xmm12, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm11
	ja	L1570
L255:
	cmpq	$623, %rdi
	jbe	L1571
	movq	-280(%rbp), %r15
	testq	%r15, %r15
	je	L605
	movl	4000036(%rcx), %r12d
	movl	4000032(%rcx), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%rcx), %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r9d
	cmovne	%r13d, %edi
	movl	%edi, 4000032(%rcx)
	cmpq	$1, %r15
	je	L606
	movl	4000040(%rcx), %r13d
	andl	$-2147483648, %r12d
	movl	%r13d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001624(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000036(%rcx)
	cmpq	$2, %r15
	je	L607
	movl	4000044(%rcx), %r12d
	andl	$-2147483648, %r13d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	4001628(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r13d
	cmovne	%r9d, %edi
	movl	%edi, 4000040(%rcx)
	cmpq	$3, %r15
	je	L608
	movl	4000048(%rcx), %r13d
	andl	$-2147483648, %r12d
	movl	%r13d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001632(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000044(%rcx)
	cmpq	$4, %r15
	je	L609
	movl	4000052(%rcx), %r12d
	andl	$-2147483648, %r13d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	4001636(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r13d
	cmovne	%r9d, %edi
	movl	%edi, 4000048(%rcx)
	cmpq	$5, %r15
	je	L610
	movl	4000056(%rcx), %r13d
	movl	%r12d, %edi
	andl	$-2147483648, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4001640(%rcx), %r9d
	movl	%r9d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r9d
	movl	%r9d, 4000052(%rcx)
	cmpq	$6, %r15
	je	L611
	movl	4000060(%rcx), %r9d
	andl	$-2147483648, %r13d
	movl	$220, %r14d
	andl	$2147483647, %r9d
	orl	%r13d, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001644(%rcx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	$7, %r12d
	movl	%edi, 4000056(%rcx)
L212:
	movq	-128(%rbp), %rsi
	movq	-240(%rbp), %r13
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	.align 4,0x90
L222:
	vpand	(%rdx,%rdi), %ymm9, %ymm0
	vpand	(%rsi,%rdi), %ymm4, %ymm1
	addq	$1, %r9
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r10,%rdi), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rdx,%rdi)
	addq	$32, %rdi
	cmpq	%r9, %r13
	ja	L222
	movq	-176(%rbp), %rdi
	movq	%rsi, -128(%rbp)
	leaq	(%rdi,%r12), %r15
	cmpq	-272(%rbp), %rdi
	je	L223
	leaq	(%rcx,%r15,4), %r13
	movl	4000036(%r13), %edi
	movl	4000032(%r13), %r12d
	movl	%edi, %r9d
	andl	$-2147483648, %r12d
	andl	$2147483647, %r9d
	orl	%r9d, %r12d
	movl	%r12d, %r9d
	shrl	%r9d
	xorl	4001620(%r13), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r12d
	cmovne	%esi, %r9d
	addq	-464(%rbp), %r14
	movq	%r14, -80(%rbp)
	movl	%r9d, 4000032(%r13)
	je	L223
	leaq	1(%r15), %rsi
	andl	$-2147483648, %edi
	leaq	2(%r15), %r13
	leaq	(%rcx,%rsi,4), %r14
	movl	4000036(%r14), %r9d
	movl	%r9d, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %edi
	movl	%edi, %r12d
	shrl	%r12d
	xorl	4001620(%r14), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r12d
	cmpq	$1, -80(%rbp)
	movl	%r12d, 4000032(%r14)
	je	L223
	leaq	(%rcx,%r13,4), %r13
	andl	$-2147483648, %r9d
	leaq	3(%r15), %r14
	movl	4000036(%r13), %edi
	movl	%edi, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r9d
	movl	%r9d, %r12d
	shrl	%r12d
	xorl	4001620(%r13), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r12d
	cmpq	$2, -80(%rbp)
	movl	%r12d, 4000032(%r13)
	je	L223
	leaq	(%rcx,%r14,4), %r14
	andl	$-2147483648, %edi
	leaq	4(%r15), %r13
	movl	4000036(%r14), %r9d
	movl	%r9d, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %edi
	movl	%edi, %r12d
	shrl	%r12d
	xorl	4001620(%r14), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r12d
	cmpq	$3, -80(%rbp)
	movl	%r12d, 4000032(%r14)
	je	L223
	leaq	(%rcx,%r13,4), %r13
	andl	$-2147483648, %r9d
	leaq	5(%r15), %r14
	movl	4000036(%r13), %edi
	movl	%edi, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r9d
	movl	%r9d, %r12d
	shrl	%r12d
	xorl	4001620(%r13), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r12d
	cmpq	$4, -80(%rbp)
	movl	%r12d, 4000032(%r13)
	je	L223
	leaq	(%rcx,%r14,4), %r13
	andl	$-2147483648, %edi
	addq	$6, %r15
	movl	4000036(%r13), %r12d
	movl	4001620(%r13), %r9d
	movl	%r12d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	%esi, %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r9d
	cmpq	$5, -80(%rbp)
	movl	%r9d, 4000032(%r13)
	je	L223
	leaq	(%rcx,%r15,4), %r9
	andl	$-2147483648, %r12d
	movl	4000036(%r9), %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001620(%r9), %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r12d
	cmovne	%r13d, %edi
	movl	%edi, 4000032(%r9)
L223:
	movq	-400(%rbp), %r14
	testq	%r14, %r14
	je	L612
	movl	4000944(%rcx), %r12d
	movl	4000940(%rcx), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000032(%rcx), %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r9d
	cmovne	%r13d, %edi
	movl	%edi, 4000940(%rcx)
	cmpq	$1, %r14
	je	L613
	movl	4000948(%rcx), %r13d
	andl	$-2147483648, %r12d
	movl	%r13d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4000036(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000944(%rcx)
	cmpq	$2, %r14
	je	L614
	movl	4000952(%rcx), %r12d
	andl	$-2147483648, %r13d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	4000040(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r13d
	cmovne	%r9d, %edi
	movl	%edi, 4000948(%rcx)
	cmpq	$3, %r14
	je	L615
	movl	4000956(%rcx), %r13d
	andl	$-2147483648, %r12d
	movl	%r13d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4000044(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r12d
	cmovne	%r9d, %edi
	movl	%edi, 4000952(%rcx)
	cmpq	$4, %r14
	je	L616
	movl	4000960(%rcx), %r12d
	andl	$-2147483648, %r13d
	movl	%r12d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r13d
	movl	%r13d, %edi
	shrl	%edi
	xorl	4000048(%rcx), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r13d
	cmovne	%r9d, %edi
	movl	%edi, 4000956(%rcx)
	cmpq	$5, %r14
	je	L617
	movl	4000964(%rcx), %r13d
	movl	%r12d, %edi
	andl	$-2147483648, %edi
	movl	%r13d, %r9d
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4000052(%rcx), %r9d
	movl	%r9d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r9d
	movl	%r9d, 4000960(%rcx)
	cmpq	$6, %r14
	je	L618
	movl	4000968(%rcx), %r9d
	andl	$-2147483648, %r13d
	movl	$389, %r15d
	andl	$2147483647, %r9d
	orl	%r13d, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000056(%rcx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	$234, %r12d
	movl	%edi, 4000964(%rcx)
L232:
	movq	-128(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	.align 4,0x90
L242:
	vpand	(%rax,%rdi), %ymm9, %ymm0
	vpand	(%r11,%rdi), %ymm4, %ymm1
	addq	$1, %r9
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%rbx,%rdi), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rax,%rdi)
	addq	$32, %rdi
	cmpq	%r9, %r8
	ja	L242
	movq	%rsi, -128(%rbp)
	movq	-208(%rbp), %rsi
	movq	%r12, %rdi
	addq	%rsi, %rdi
	cmpq	-368(%rbp), %rsi
	je	L243
	leaq	(%rcx,%rdi,4), %r12
	movq	%rdi, -80(%rbp)
	leaq	1(%rdi), %r14
	movl	4000036(%r12), %r13d
	movl	4000032(%r12), %r9d
	movl	3999124(%r12), %edi
	movl	%r13d, %esi
	andl	$-2147483648, %r9d
	andl	$2147483647, %esi
	orl	%esi, %r9d
	movl	%r9d, %esi
	shrl	%esi
	xorl	%esi, %edi
	movl	%edi, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %edi
	addq	-496(%rbp), %r15
	movq	%r15, -112(%rbp)
	movl	%edi, 4000032(%r12)
	je	L243
	leaq	(%rcx,%r14,4), %r14
	andl	$-2147483648, %r13d
	movq	-80(%rbp), %rdi
	movl	4000036(%r14), %r9d
	leaq	2(%rdi), %r15
	movl	3999124(%r14), %edi
	movl	%r9d, %r12d
	andl	$2147483647, %r12d
	orl	%r13d, %r12d
	movl	%r12d, %esi
	shrl	%esi
	xorl	%esi, %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r12d
	cmovne	%r13d, %edi
	cmpq	$1, -112(%rbp)
	movl	%edi, 4000032(%r14)
	je	L243
	movq	-80(%rbp), %rdi
	leaq	(%rcx,%r15,4), %r13
	andl	$-2147483648, %r9d
	leaq	3(%rdi), %r14
	movl	4000036(%r13), %edi
	movl	%edi, %r12d
	andl	$2147483647, %r12d
	orl	%r9d, %r12d
	movl	%r12d, %r9d
	shrl	%r9d
	xorl	3999124(%r13), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r12d
	cmovne	%esi, %r9d
	cmpq	$2, -112(%rbp)
	movl	%r9d, 4000032(%r13)
	je	L243
	leaq	(%rcx,%r14,4), %r14
	andl	$-2147483648, %edi
	movq	-80(%rbp), %r15
	movl	4000036(%r14), %r9d
	leaq	4(%r15), %r13
	movl	%r9d, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %edi
	movl	%edi, %r12d
	shrl	%r12d
	xorl	3999124(%r14), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r12d
	cmpq	$3, -112(%rbp)
	movl	%r12d, 4000032(%r14)
	je	L243
	movq	-80(%rbp), %rdi
	leaq	(%rcx,%r13,4), %r13
	andl	$-2147483648, %r9d
	leaq	5(%rdi), %r14
	movl	4000036(%r13), %edi
	movl	%edi, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r9d
	movl	%r9d, %r12d
	shrl	%r12d
	xorl	3999124(%r13), %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r9d
	cmovne	%esi, %r12d
	cmpq	$4, -112(%rbp)
	movl	%r12d, 4000032(%r13)
	je	L243
	leaq	(%rcx,%r14,4), %r13
	andl	$-2147483648, %edi
	movq	-80(%rbp), %r15
	movl	4000036(%r13), %r12d
	movl	3999124(%r13), %r9d
	addq	$6, %r15
	movl	%r12d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	%esi, %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r9d
	cmpq	$5, -112(%rbp)
	movl	%r9d, 4000032(%r13)
	je	L243
	leaq	(%rcx,%r15,4), %r9
	andl	$-2147483648, %r12d
	movl	4000036(%r9), %edi
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	3999124(%r9), %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r12d
	cmovne	%r13d, %edi
	movl	%edi, 4000032(%r9)
L243:
	movl	4000032(%rcx), %r9d
	movl	4002524(%rcx), %r12d
	movl	%r9d, %edi
	andl	$-2147483648, %r12d
	andl	$2147483647, %edi
	orl	%edi, %r12d
	movl	%r12d, %edi
	shrl	%edi
	xorl	4001616(%rcx), %edi
	movl	%edi, %r13d
	xorl	$-1727483681, %r13d
	andl	$1, %r12d
	cmovne	%r13d, %edi
	movl	%edi, 4002524(%rcx)
	movl	$1, %edi
	jmp	L211
	.align 4,0x90
L1570:
	movq	-592(%rbp), %rsi
	vmovss	%xmm0, (%rsi)
	addq	$4, %rsi
	movq	%rsi, -592(%rbp)
	cmpq	%rsi, -608(%rbp)
	jne	L257
	movl	$0, 4000028(%rcx)
	jmp	L209
L605:
	movl	$227, %r14d
	xorl	%r12d, %r12d
	jmp	L212
L606:
	movl	$226, %r14d
	movl	$1, %r12d
	jmp	L212
L613:
	movl	$395, %r15d
	movl	$228, %r12d
	jmp	L232
L612:
	movl	$396, %r15d
	movl	$227, %r12d
	jmp	L232
L607:
	movl	$225, %r14d
	movl	$2, %r12d
	jmp	L212
L614:
	movl	$394, %r15d
	movl	$229, %r12d
	jmp	L232
L609:
	movl	$223, %r14d
	movl	$4, %r12d
	jmp	L212
L608:
	movl	$224, %r14d
	movl	$3, %r12d
	jmp	L212
L615:
	movl	$393, %r15d
	movl	$230, %r12d
	jmp	L232
L616:
	movl	$392, %r15d
	movl	$231, %r12d
	jmp	L232
L618:
	movl	$390, %r15d
	movl	$233, %r12d
	jmp	L232
L617:
	movl	$391, %r15d
	movl	$232, %r12d
	jmp	L232
L676:
	movl	%ecx, -208(%rbp)
L1537:
	movl	-80(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	L482
L611:
	movl	$221, %r14d
	movl	$6, %r12d
	jmp	L212
L610:
	movl	$222, %r14d
	movl	$5, %r12d
	jmp	L212
L206:
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rax
	vcvttss2siq	%xmm0, %rsi
	xorq	%rax, %rsi
	jmp	L207
L677:
	movl	-112(%rbp), %eax
	movl	%eax, -208(%rbp)
	jmp	L483
L684:
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	%xmm4, -240(%rbp)
L492:
	testq	%r15, %r15
	je	L685
	movq	-120(%rbp), %rax
	vmovdqa	%ymm5, -496(%rbp)
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	movl	-176(%rbp), %edx
	vmovdqa	%ymm6, -464(%rbp)
	movq	%r13, %rsi
	movq	-128(%rbp), %rdi
	leaq	528(%rax), %r8
	leaq	504(%rax), %rcx
	vmovdqa	%ymm7, -432(%rbp)
	vmovdqa	%ymm8, -400(%rbp)
	cmpq	$4, %r15
	je	L1572
	cmpq	$2, %r15
	je	L1573
	cmpq	$3, %r15
	je	L1574
	vzeroupper
	call	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	vmovdqa	-496(%rbp), %ymm5
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	-432(%rbp), %ymm7
	vmovdqa	-400(%rbp), %ymm8
	vmovaps	%xmm0, %xmm3
L501:
	vmovss	lC9(%rip), %xmm0
	vucomiss	%xmm3, %xmm0
	jb	L1531
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	L499
	.align 4,0x90
L668:
	movl	$221, %r13d
	movl	$6, %edi
	jmp	L430
L675:
	movl	$390, %r13d
	movl	$233, %edi
	jmp	L450
L667:
	movl	$222, %r13d
	movl	$5, %edi
	jmp	L430
L674:
	movl	$391, %r13d
	movl	$232, %edi
	jmp	L450
L319:
	movq	-128(%rbp), %rax
L1542:
	movl	(%rax), %eax
	leaq	(%rax,%rax,2), %rdx
	jmp	L1543
L424:
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rdx
	vcvttss2siq	%xmm0, %rsi
	xorq	%rdx, %rsi
	jmp	L425
L422:
	movq	%rbx, %rdx
	andl	$1, %ebx
	vxorps	%xmm11, %xmm11, %xmm11
	shrq	%rdx
	orq	%rbx, %rdx
	vcvtsi2ssq	%rdx, %xmm11, %xmm11
	vaddss	%xmm11, %xmm11, %xmm11
	jmp	L423
L1568:
	vzeroupper
	call	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
L1540:
	vmovss	%xmm0, -240(%rbp)
	vmovdqa	-400(%rbp), %ymm8
	vmovdqa	-432(%rbp), %ymm7
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	-496(%rbp), %ymm5
	jmp	L494
L685:
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
L499:
	vaddss	-240(%rbp), %xmm3, %xmm4
	vsubss	-280(%rbp), %xmm4, %xmm4
	vsubss	-272(%rbp), %xmm4, %xmm4
	vucomiss	%xmm4, %xmm0
	ja	L559
	movq	-120(%rbp), %rax
	movq	112(%rax), %rax
	movq	(%rax), %rax
	movl	4000028(%rax), %edx
	addl	$1, %edx
	movl	%edx, 4000028(%rax)
	cmpl	$1000000, %edx
	je	L1575
L510:
	movslq	4000028(%rax), %rdx
	movq	-120(%rbp), %rbx
	vmovdqa	%ymm5, -592(%rbp)
	vmovdqa	%ymm6, -560(%rbp)
	vmovss	28(%rax,%rdx,4), %xmm5
	movq	48(%rbx), %rax
	vmovdqa	%ymm7, -528(%rbp)
	vmovdqa	%ymm8, -496(%rbp)
	vmovss	196(%rax), %xmm0
	vxorps	lC10(%rip), %xmm0, %xmm0
	vmovss	%xmm3, -464(%rbp)
	vmovss	%xmm5, -400(%rbp)
	vmulss	%xmm4, %xmm0, %xmm0
	vmovss	%xmm4, -432(%rbp)
	vzeroupper
	call	_expf
	vucomiss	-400(%rbp), %xmm0
	vmovss	-432(%rbp), %xmm4
	vmovss	-464(%rbp), %xmm3
	vmovdqa	-496(%rbp), %ymm8
	vmovdqa	-528(%rbp), %ymm7
	vmovdqa	-560(%rbp), %ymm6
	vmovdqa	-592(%rbp), %ymm5
	jbe	L1536
L559:
	movq	-120(%rbp), %rax
	xorl	%edx, %edx
	movq	744(%rax), %rsi
	movq	48(%rax), %rcx
	movq	%rsi, %rax
	divq	104(%rcx)
	testq	%rdx, %rdx
	je	L1576
L509:
	movq	-120(%rbp), %rbx
	leaq	1(%rsi), %rax
	movq	%rax, 744(%rbx)
	jmp	L481
L1565:
	vzeroupper
	call	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
L1539:
	vmovss	%xmm0, -272(%rbp)
	vmovdqa	-240(%rbp), %ymm8
	vmovdqa	-400(%rbp), %ymm7
	vmovdqa	-432(%rbp), %ymm6
	vmovdqa	-464(%rbp), %ymm5
	jmp	L488
L1562:
	vzeroupper
	call	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
L1538:
	vmovss	%xmm0, -280(%rbp)
	vmovdqa	-240(%rbp), %ymm8
	vmovdqa	-272(%rbp), %ymm7
	vxorps	%xmm4, %xmm4, %xmm4
	vmovdqa	-400(%rbp), %ymm6
	vmovdqa	-432(%rbp), %ymm5
	jmp	L484
L1545:
	leaq	28(%rcx), %rax
	movq	4002528(%rcx), %rdi
	vpxor	%xmm3, %xmm3, %xmm3
	vmovss	lC6(%rip), %xmm10
	movq	%rax, -112(%rbp)
	leaq	4000028(%rcx), %rax
	vmovss	lC7(%rip), %xmm9
	movq	%rax, -176(%rbp)
	leaq	4000032(%rcx), %rax
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movl	$227, %eax
	andl	$7, %edx
	subq	%rdx, %rax
	movq	%rdx, -272(%rbp)
	movq	%rax, %rbx
	movq	%rax, -280(%rbp)
	shrq	$3, %rax
	movq	%rax, -336(%rbp)
	leaq	4000032(,%rdx,4), %rax
	andq	$-8, %rbx
	leaq	(%rcx,%rax), %rdx
	leaq	4(%rcx,%rax), %r15
	movq	%rbx, -136(%rbp)
	leaq	1588(%rcx,%rax), %r14
	leaq	4000940(%rcx), %rax
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rsi
	movl	$396, %eax
	andl	$7, %esi
	subq	%rsi, %rax
	movq	%rsi, -144(%rbp)
	leaq	4000940(,%rsi,4), %rsi
	movq	%rax, %rbx
	movq	%rax, -208(%rbp)
	leaq	4(%rcx,%rsi), %r10
	shrq	$3, %rax
	andq	$-8, %rbx
	movq	%rax, -240(%rbp)
	movq	%r10, %r13
	leaq	(%rcx,%rsi), %rax
	movq	%rbx, -128(%rbp)
	leaq	-908(%rcx,%rsi), %r11
L100:
	movq	-136(%rbp), %rbx
	movq	-336(%rbp), %r8
	notq	%rbx
	movq	%rbx, -528(%rbp)
	movq	-128(%rbp), %rbx
	notq	%rbx
	movq	%rbx, -560(%rbp)
	movq	-240(%rbp), %rbx
	movq	%rbx, -80(%rbp)
	jmp	L98
	.align 4,0x90
L1578:
	movl	4000032(%rcx,%rdi,4), %r9d
	addq	$1, %rdi
L54:
	movl	%r9d, %r10d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdi, 4002528(%rcx)
	shrl	$11, %r10d
	xorl	%r10d, %r9d
	movl	%r9d, %r10d
	sall	$7, %r10d
	andl	$-1658038656, %r10d
	xorl	%r9d, %r10d
	movl	%r10d, %r9d
	sall	$15, %r9d
	andl	$-272236544, %r9d
	xorl	%r10d, %r9d
	movl	%r9d, %r10d
	shrl	$18, %r10d
	xorl	%r10d, %r9d
	vcvtsi2ssq	%r9, %xmm0, %xmm0
	vmulss	%xmm10, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm9
	ja	L1577
L98:
	cmpq	$623, %rdi
	jbe	L1578
	movq	-272(%rbp), %r12
	testq	%r12, %r12
	je	L563
	movl	4000036(%rcx), %ebx
	movl	4000032(%rcx), %r9d
	movl	%ebx, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r9d
	cmovne	%r10d, %edi
	movl	%edi, 4000032(%rcx)
	cmpq	$1, %r12
	je	L564
	movl	4000040(%rcx), %r10d
	andl	$-2147483648, %ebx
	movl	%ebx, %r9d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001624(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000036(%rcx)
	cmpq	$2, %r12
	je	L565
	movl	4000044(%rcx), %r9d
	andl	$-2147483648, %r10d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4001628(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %edi
	movl	%edi, 4000040(%rcx)
	cmpq	$3, %r12
	je	L566
	movl	4000048(%rcx), %r10d
	andl	$-2147483648, %r9d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001632(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000044(%rcx)
	cmpq	$4, %r12
	je	L567
	movl	4000052(%rcx), %r9d
	andl	$-2147483648, %r10d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4001636(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %edi
	movl	%edi, 4000048(%rcx)
	cmpq	$5, %r12
	je	L568
	movl	4000056(%rcx), %edi
	andl	$-2147483648, %r9d
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r9d, %r10d
	movl	%r10d, %r9d
	shrl	%r9d
	xorl	4001640(%rcx), %r9d
	movl	%r9d, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %r9d
	movl	%r9d, 4000052(%rcx)
	cmpq	$6, %r12
	je	L569
	movl	4000060(%rcx), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4001644(%rcx), %r9d
	movl	%r9d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	movl	$7, %edi
	cmovne	%r10d, %r9d
	movl	%r9d, 4000056(%rcx)
	movl	$220, %r9d
L55:
	movq	-80(%rbp), %rsi
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	.align 4,0x90
L65:
	vpand	(%r15,%r10), %ymm7, %ymm0
	vpand	(%rdx,%r10), %ymm8, %ymm1
	addq	$1, %rbx
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm6, %ymm1, %ymm1
	vpxor	(%r14,%r10), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm5, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%rdx,%r10)
	addq	$32, %r10
	cmpq	%r8, %rbx
	jb	L65
	movq	-136(%rbp), %rbx
	movq	%rsi, -80(%rbp)
	addq	%rbx, %rdi
	cmpq	%rbx, -280(%rbp)
	je	L66
	leaq	(%rcx,%rdi,4), %r12
	leaq	1(%rdi), %rbx
	movq	%rbx, -368(%rbp)
	movl	4000036(%r12), %r10d
	movl	4000032(%r12), %ebx
	movl	%r10d, -368(%rbp)
	andl	$2147483647, %r10d
	andl	$-2147483648, %ebx
	orl	%r10d, %ebx
	movl	%ebx, %r10d
	shrl	%r10d
	xorl	4001620(%r12), %r10d
	movl	%r10d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ebx
	cmovne	%esi, %r10d
	movl	%r10d, 4000032(%r12)
	addq	-528(%rbp), %r9
	je	L66
	leaq	1(%rdi), %rbx
	movl	-368(%rbp), %r10d
	leaq	2(%rdi), %rsi
	leaq	(%rcx,%rbx,4), %r12
	movq	%rsi, -400(%rbp)
	movl	4000036(%r12), %ebx
	andl	$-2147483648, %r10d
	movl	%ebx, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	4001620(%r12), %ebx
	movl	%r10d, %esi
	shrl	%esi
	xorl	%esi, %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$1, %r9
	je	L66
	leaq	2(%rdi), %rsi
	leaq	3(%rdi), %r10
	movl	-368(%rbp), %ebx
	leaq	(%rcx,%rsi,4), %r12
	movq	%r10, -400(%rbp)
	movl	4000036(%r12), %r10d
	andl	$-2147483648, %ebx
	movl	%r10d, %esi
	movl	%ebx, %r10d
	movl	%esi, %ebx
	movl	%esi, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	%r10d, %ebx
	shrl	%ebx
	xorl	4001620(%r12), %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$2, %r9
	je	L66
	leaq	4(%rdi), %r12
	leaq	3(%rdi), %rsi
	movl	-368(%rbp), %r10d
	movq	%r12, -400(%rbp)
	leaq	(%rcx,%rsi,4), %r12
	movl	4000036(%r12), %ebx
	andl	$-2147483648, %r10d
	movl	%ebx, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	4001620(%r12), %ebx
	movl	%r10d, %esi
	shrl	%esi
	xorl	%esi, %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$3, %r9
	je	L66
	leaq	4(%rdi), %r12
	movl	-368(%rbp), %ebx
	leaq	5(%rdi), %rsi
	leaq	(%rcx,%r12,4), %r12
	movq	%rsi, -400(%rbp)
	movl	4000036(%r12), %r10d
	andl	$-2147483648, %ebx
	movl	%r10d, %esi
	movl	%ebx, %r10d
	movl	%esi, %ebx
	movl	%esi, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	%r10d, %ebx
	shrl	%ebx
	xorl	4001620(%r12), %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$4, %r9
	je	L66
	movq	-400(%rbp), %rsi
	addq	$6, %rdi
	movq	%rdi, -432(%rbp)
	movl	-368(%rbp), %edi
	leaq	(%rcx,%rsi,4), %rbx
	movl	4000036(%rbx), %r12d
	andl	$-2147483648, %edi
	movl	%r12d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	4001620(%rbx), %r10d
	movl	%r10d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$5, %r9
	je	L66
	movq	-432(%rbp), %rdi
	leaq	(%rcx,%rdi,4), %r10
	movl	%r12d, %edi
	movl	4000036(%r10), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%r10), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000032(%r10)
L66:
	movq	-144(%rbp), %r12
	testq	%r12, %r12
	je	L570
	movl	4000944(%rcx), %ebx
	movl	4000940(%rcx), %r9d
	movl	%ebx, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000032(%rcx), %edi
	movl	%edi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %r9d
	cmovne	%r10d, %edi
	movl	%edi, 4000940(%rcx)
	cmpq	$1, %r12
	je	L571
	movl	4000948(%rcx), %r10d
	andl	$-2147483648, %ebx
	movl	%ebx, %r9d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000036(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000944(%rcx)
	cmpq	$2, %r12
	je	L572
	movl	4000952(%rcx), %r9d
	andl	$-2147483648, %r10d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4000040(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %edi
	movl	%edi, 4000948(%rcx)
	cmpq	$3, %r12
	je	L573
	movl	4000956(%rcx), %r10d
	andl	$-2147483648, %r9d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000044(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000952(%rcx)
	cmpq	$4, %r12
	je	L574
	movl	4000960(%rcx), %r9d
	andl	$-2147483648, %r10d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4000048(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %edi
	movl	%edi, 4000956(%rcx)
	cmpq	$5, %r12
	je	L575
	movl	4000964(%rcx), %edi
	andl	$-2147483648, %r9d
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r9d, %r10d
	movl	%r10d, %r9d
	shrl	%r9d
	xorl	4000052(%rcx), %r9d
	movl	%r9d, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %r9d
	movl	%r9d, 4000960(%rcx)
	cmpq	$6, %r12
	je	L576
	movl	4000968(%rcx), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%r9d, %edi
	movl	%edi, %r9d
	shrl	%r9d
	xorl	4000056(%rcx), %r9d
	movl	%r9d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	movl	$234, %edi
	cmovne	%r10d, %r9d
	movl	%r9d, 4000964(%rcx)
	movl	$389, %r9d
L75:
	movq	-80(%rbp), %rsi
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	.align 4,0x90
L85:
	vpand	0(%r13,%r10), %ymm7, %ymm0
	vpand	(%rax,%r10), %ymm8, %ymm1
	addq	$1, %rbx
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm6, %ymm1, %ymm1
	vpxor	(%r11,%r10), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm5, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%rax,%r10)
	addq	$32, %r10
	cmpq	%rsi, %rbx
	jb	L85
	movq	-128(%rbp), %rbx
	movq	%rsi, -80(%rbp)
	addq	%rbx, %rdi
	cmpq	%rbx, -208(%rbp)
	je	L86
	leaq	(%rcx,%rdi,4), %r12
	leaq	1(%rdi), %rbx
	movq	%rbx, -368(%rbp)
	movl	4000036(%r12), %r10d
	movl	4000032(%r12), %ebx
	movl	%r10d, -368(%rbp)
	andl	$2147483647, %r10d
	andl	$-2147483648, %ebx
	orl	%r10d, %ebx
	movl	3999124(%r12), %r10d
	movl	%ebx, %esi
	shrl	%esi
	xorl	%esi, %r10d
	movl	%r10d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ebx
	cmovne	%esi, %r10d
	movl	%r10d, 4000032(%r12)
	addq	-560(%rbp), %r9
	je	L86
	leaq	1(%rdi), %rbx
	movl	-368(%rbp), %r10d
	leaq	2(%rdi), %rsi
	leaq	(%rcx,%rbx,4), %r12
	movq	%rsi, -400(%rbp)
	movl	4000036(%r12), %ebx
	andl	$-2147483648, %r10d
	movl	%ebx, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	3999124(%r12), %ebx
	movl	%r10d, %esi
	shrl	%esi
	xorl	%esi, %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$1, %r9
	je	L86
	leaq	2(%rdi), %rsi
	leaq	3(%rdi), %r10
	movl	-368(%rbp), %ebx
	leaq	(%rcx,%rsi,4), %r12
	movq	%r10, -400(%rbp)
	movl	4000036(%r12), %r10d
	andl	$-2147483648, %ebx
	movl	%r10d, %esi
	movl	%ebx, %r10d
	movl	%esi, %ebx
	movl	%esi, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	%r10d, %ebx
	shrl	%ebx
	xorl	3999124(%r12), %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$2, %r9
	je	L86
	leaq	4(%rdi), %r12
	leaq	3(%rdi), %rsi
	movl	-368(%rbp), %r10d
	movq	%r12, -400(%rbp)
	leaq	(%rcx,%rsi,4), %r12
	movl	4000036(%r12), %ebx
	andl	$-2147483648, %r10d
	movl	%ebx, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	3999124(%r12), %ebx
	movl	%r10d, %esi
	shrl	%esi
	xorl	%esi, %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$3, %r9
	je	L86
	leaq	4(%rdi), %r12
	movl	-368(%rbp), %ebx
	leaq	5(%rdi), %rsi
	leaq	(%rcx,%r12,4), %r12
	movq	%rsi, -400(%rbp)
	movl	4000036(%r12), %r10d
	andl	$-2147483648, %ebx
	movl	%r10d, %esi
	movl	%ebx, %r10d
	movl	%esi, %ebx
	movl	%esi, -368(%rbp)
	andl	$2147483647, %ebx
	orl	%ebx, %r10d
	movl	%r10d, %ebx
	shrl	%ebx
	xorl	3999124(%r12), %ebx
	movl	%ebx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r10d
	cmovne	%esi, %ebx
	movl	%ebx, 4000032(%r12)
	cmpq	$4, %r9
	je	L86
	movq	-400(%rbp), %rsi
	addq	$6, %rdi
	movq	%rdi, -432(%rbp)
	movl	-368(%rbp), %edi
	leaq	(%rcx,%rsi,4), %rbx
	movl	4000036(%rbx), %r12d
	andl	$-2147483648, %edi
	movl	%r12d, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$5, %r9
	je	L86
	movq	-432(%rbp), %rdi
	leaq	(%rcx,%rdi,4), %r10
	movl	%r12d, %edi
	movl	4000036(%r10), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	3999124(%r10), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r9d
	cmovne	%ebx, %edi
	movl	%edi, 4000032(%r10)
L86:
	movl	4000032(%rcx), %r9d
	movl	4002524(%rcx), %r10d
	movl	%r9d, %edi
	andl	$-2147483648, %r10d
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4001616(%rcx), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %edi
	movl	%edi, 4002524(%rcx)
	movl	$1, %edi
	jmp	L54
L1577:
	movq	-112(%rbp), %rbx
	vmovss	%xmm0, (%rbx)
	addq	$4, %rbx
	movq	%rbx, -112(%rbp)
	cmpq	%rbx, -176(%rbp)
	jne	L100
	movl	$0, 4000028(%rcx)
	jmp	L52
L564:
	movl	$226, %r9d
	movl	$1, %edi
	jmp	L55
L563:
	movl	$227, %r9d
	xorl	%edi, %edi
	jmp	L55
L573:
	movl	$393, %r9d
	movl	$230, %edi
	jmp	L75
L572:
	movl	$394, %r9d
	movl	$229, %edi
	jmp	L75
L571:
	movl	$395, %r9d
	movl	$228, %edi
	jmp	L75
L570:
	movl	$396, %r9d
	movl	$227, %edi
	jmp	L75
L566:
	movl	$224, %r9d
	movl	$3, %edi
	jmp	L55
L565:
	movl	$225, %r9d
	movl	$2, %edi
	jmp	L55
L569:
	movl	$221, %r9d
	movl	$6, %edi
	jmp	L55
L568:
	movl	$222, %r9d
	movl	$5, %edi
	jmp	L55
L567:
	movl	$223, %r9d
	movl	$4, %edi
	jmp	L55
L574:
	movl	$392, %r9d
	movl	$231, %edi
	jmp	L75
L576:
	movl	$390, %r9d
	movl	$233, %edi
	jmp	L75
L575:
	movl	$391, %r9d
	movl	$232, %edi
	jmp	L75
L1550:
	movl	4000028(%rax), %edx
	addl	$1, %edx
	movl	%edx, 4000028(%rax)
	cmpl	$1000000, %edx
	je	L1579
L266:
	movq	-176(%rbp), %rbx
	movl	4000028(%rax), %ecx
	testq	%rbx, %rbx
	js	L315
	vxorps	%xmm11, %xmm11, %xmm11
	vcvtsi2ssq	%rbx, %xmm11, %xmm11
L316:
	movslq	%ecx, %rdx
	vmulss	28(%rax,%rdx,4), %xmm11, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jnb	L317
	vcvttss2siq	%xmm0, %rsi
L318:
	cmpq	-176(%rbp), %rsi
	jb	L319
	leaq	4000032(%rax), %rdx
	leaq	28(%rax), %rcx
	vmovdqa	lC2(%rip), %ymm9
	vmovdqa	lC3(%rip), %ymm4
	shrq	$2, %rdx
	movq	%rcx, -304(%rbp)
	leaq	4000028(%rax), %rcx
	vmovdqa	lC4(%rip), %ymm3
	negq	%rdx
	movq	%rcx, -288(%rbp)
	vmovdqa	lC5(%rip), %ymm2
	andl	$7, %edx
	movq	%rdx, %rcx
	movq	%rdx, -496(%rbp)
	movl	$227, %edx
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	subq	%rcx, %rbx
	leaq	4000032(,%rdx,4), %rdx
	movq	%rbx, %rcx
	leaq	4(%rax,%rdx), %r10
	leaq	1588(%rax,%rdx), %r15
	movq	%rbx, -464(%rbp)
	shrq	$3, %rcx
	andq	$-8, %rbx
	movq	%rcx, -432(%rbp)
	leaq	(%rax,%rdx), %rcx
	leaq	4000940(%rax), %rdx
	shrq	$2, %rdx
	movq	%rbx, -208(%rbp)
	negq	%rdx
	movq	%rdx, %rsi
	movl	$396, %edx
	andl	$7, %esi
	subq	%rsi, %rdx
	movq	%rsi, -400(%rbp)
	leaq	4000940(,%rsi,4), %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rbx
	movq	%rdx, -368(%rbp)
	leaq	-908(%rax,%rsi), %r11
	shrq	$3, %rbx
	andq	$-8, %rdi
	leaq	(%rax,%rsi), %rdx
	movq	%rbx, -280(%rbp)
	leaq	4(%rax,%rsi), %rbx
	movq	%rdi, -112(%rbp)
	jmp	L371
L1581:
	vcvttss2siq	%xmm0, %rsi
L370:
	cmpq	-176(%rbp), %rsi
	jb	L319
L371:
	movl	4000028(%rax), %esi
	addl	$1, %esi
	movl	%esi, 4000028(%rax)
	cmpl	$1000000, %esi
	je	L1580
L320:
	movslq	4000028(%rax), %rsi
	vmulss	28(%rax,%rsi,4), %xmm11, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jb	L1581
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rdi
	vcvttss2siq	%xmm0, %rsi
	xorq	%rdi, %rsi
	jmp	L370
L1580:
	movq	-304(%rbp), %rsi
	vpxor	%xmm10, %xmm10, %xmm10
	movq	%r11, %r14
	movq	4002528(%rax), %rdi
	vmovss	lC6(%rip), %xmm13
	vmovss	lC7(%rip), %xmm12
	movq	%rsi, -240(%rbp)
L368:
	movq	-208(%rbp), %rsi
	movq	-432(%rbp), %r8
	notq	%rsi
	movq	%rsi, -600(%rbp)
	movq	-112(%rbp), %rsi
	notq	%rsi
	movq	%rsi, -608(%rbp)
	movq	-280(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	jmp	L366
	.align 4,0x90
L1583:
	movl	4000032(%rax,%rdi,4), %r9d
	addq	$1, %rdi
L322:
	movl	%r9d, %r11d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdi, 4002528(%rax)
	shrl	$11, %r11d
	xorl	%r11d, %r9d
	movl	%r9d, %r11d
	sall	$7, %r11d
	andl	$-1658038656, %r11d
	xorl	%r11d, %r9d
	movl	%r9d, %r11d
	sall	$15, %r11d
	andl	$-272236544, %r11d
	xorl	%r9d, %r11d
	movl	%r11d, %r9d
	shrl	$18, %r9d
	xorl	%r11d, %r9d
	vcvtsi2ssq	%r9, %xmm0, %xmm0
	vmulss	%xmm13, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm12
	ja	L1582
L366:
	cmpq	$623, %rdi
	jbe	L1583
	movq	-496(%rbp), %r13
	testq	%r13, %r13
	je	L634
	movl	4000036(%rax), %r12d
	movl	4000032(%rax), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000032(%rax)
	cmpq	$1, %r13
	je	L635
	movl	4000040(%rax), %r11d
	movl	%r12d, %r9d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001624(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000036(%rax)
	cmpq	$2, %r13
	je	L636
	movl	4000044(%rax), %r9d
	andl	$-2147483648, %r11d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4001628(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4000040(%rax)
	cmpq	$3, %r13
	je	L637
	movl	4000048(%rax), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001632(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000044(%rax)
	cmpq	$4, %r13
	je	L638
	movl	4000052(%rax), %r9d
	andl	$-2147483648, %r11d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4001636(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4000048(%rax)
	cmpq	$5, %r13
	je	L639
	movl	4000056(%rax), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001640(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000052(%rax)
	cmpq	$6, %r13
	je	L640
	movl	4000060(%rax), %r9d
	andl	$-2147483648, %r11d
	andl	$2147483647, %r9d
	orl	%r11d, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001644(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	movl	$220, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000056(%rax)
	movl	$7, %edi
L323:
	movq	-80(%rbp), %rsi
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	.align 4,0x90
L333:
	vpand	(%rcx,%r11), %ymm9, %ymm0
	vpand	(%r10,%r11), %ymm4, %ymm1
	addq	$1, %r12
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r15,%r11), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rcx,%r11)
	addq	$32, %r11
	cmpq	%r12, %r8
	ja	L333
	movq	-208(%rbp), %r11
	movq	%rsi, -80(%rbp)
	addq	%r11, %rdi
	cmpq	-464(%rbp), %r11
	je	L334
	leaq	(%rax,%rdi,4), %r13
	leaq	1(%rdi), %rsi
	movl	4000036(%r13), %r11d
	movl	4000032(%r13), %r12d
	movq	%rsi, -528(%rbp)
	andl	$-2147483648, %r12d
	movl	%r11d, -528(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %r12d
	movl	%r12d, %r11d
	shrl	%r11d
	xorl	4001620(%r13), %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r12d
	cmovne	%esi, %r11d
	movl	%r11d, 4000032(%r13)
	addq	-600(%rbp), %r9
	je	L334
	leaq	2(%rdi), %r13
	leaq	1(%rdi), %rsi
	movl	-528(%rbp), %r11d
	movq	%r13, -560(%rbp)
	leaq	(%rax,%rsi,4), %r13
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	4001620(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$1, %r9
	je	L334
	leaq	2(%rdi), %r13
	movl	-528(%rbp), %r12d
	leaq	3(%rdi), %rsi
	leaq	(%rax,%r13,4), %r13
	movq	%rsi, -560(%rbp)
	movl	4000036(%r13), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %esi
	movl	%r12d, %r11d
	movl	%esi, %r12d
	movl	%esi, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	4001620(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$2, %r9
	je	L334
	leaq	4(%rdi), %r13
	leaq	3(%rdi), %rsi
	movl	-528(%rbp), %r11d
	movq	%r13, -560(%rbp)
	leaq	(%rax,%rsi,4), %r13
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	4001620(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$3, %r9
	je	L334
	leaq	4(%rdi), %r13
	movl	-528(%rbp), %r12d
	leaq	5(%rdi), %rsi
	leaq	(%rax,%r13,4), %r13
	movq	%rsi, -560(%rbp)
	movl	4000036(%r13), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %esi
	movl	%r12d, %r11d
	movl	%esi, %r12d
	movl	%esi, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	4001620(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$4, %r9
	je	L334
	movq	-560(%rbp), %rsi
	addq	$6, %rdi
	movq	%rdi, -592(%rbp)
	movl	-528(%rbp), %edi
	leaq	(%rax,%rsi,4), %r12
	movl	4000036(%r12), %r13d
	andl	$-2147483648, %edi
	movl	%r13d, %r11d
	andl	$2147483647, %r11d
	orl	%r11d, %edi
	movl	%edi, %r11d
	shrl	%r11d
	xorl	4001620(%r12), %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r11d
	movl	%r11d, 4000032(%r12)
	cmpq	$5, %r9
	je	L334
	movq	-592(%rbp), %rdi
	leaq	(%rax,%rdi,4), %r11
	movl	%r13d, %edi
	movl	4000036(%r11), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4001620(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
L334:
	movq	-400(%rbp), %r13
	testq	%r13, %r13
	je	L641
	movl	4000944(%rax), %r12d
	movl	4000940(%rax), %r9d
	movl	%r12d, %edi
	andl	$-2147483648, %r9d
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000032(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000940(%rax)
	cmpq	$1, %r13
	je	L642
	movl	4000948(%rax), %r11d
	movl	%r12d, %r9d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000036(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000944(%rax)
	cmpq	$2, %r13
	je	L643
	movl	4000952(%rax), %r9d
	andl	$-2147483648, %r11d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4000040(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4000948(%rax)
	cmpq	$3, %r13
	je	L644
	movl	4000956(%rax), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000044(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000952(%rax)
	cmpq	$4, %r13
	je	L645
	movl	4000960(%rax), %r9d
	andl	$-2147483648, %r11d
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4000048(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4000956(%rax)
	cmpq	$5, %r13
	je	L646
	movl	4000964(%rax), %r11d
	andl	$-2147483648, %r9d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000052(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000960(%rax)
	cmpq	$6, %r13
	je	L647
	movl	4000968(%rax), %r9d
	andl	$-2147483648, %r11d
	andl	$2147483647, %r9d
	orl	%r11d, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	4000056(%rax), %edi
	movl	%edi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r9d
	movl	$389, %r9d
	cmovne	%r11d, %edi
	movl	%edi, 4000964(%rax)
	movl	$234, %edi
L343:
	movq	-80(%rbp), %rsi
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	.align 4,0x90
L353:
	vpand	(%rdx,%r11), %ymm9, %ymm0
	vpand	(%rbx,%r11), %ymm4, %ymm1
	addq	$1, %r12
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm3, %ymm1, %ymm1
	vpxor	(%r14,%r11), %ymm0, %ymm0
	vpcmpeqd	%ymm10, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm14
	vpblendvb	%ymm1, %ymm0, %ymm14, %ymm0
	vmovdqa	%ymm0, (%rdx,%r11)
	addq	$32, %r11
	cmpq	%r12, %rsi
	ja	L353
	movq	%rsi, -80(%rbp)
	movq	-112(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	-368(%rbp), %rsi
	je	L354
	leaq	(%rax,%rdi,4), %r13
	leaq	1(%rdi), %rsi
	movl	4000036(%r13), %r11d
	movl	4000032(%r13), %r12d
	movq	%rsi, -528(%rbp)
	andl	$-2147483648, %r12d
	movl	%r11d, -528(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %r12d
	movl	3999124(%r13), %r11d
	movl	%r12d, %esi
	shrl	%esi
	xorl	%esi, %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r12d
	cmovne	%esi, %r11d
	movl	%r11d, 4000032(%r13)
	addq	-608(%rbp), %r9
	je	L354
	leaq	2(%rdi), %r13
	leaq	1(%rdi), %rsi
	movl	-528(%rbp), %r11d
	movq	%r13, -560(%rbp)
	leaq	(%rax,%rsi,4), %r13
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	3999124(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$1, %r9
	je	L354
	leaq	2(%rdi), %r13
	movl	-528(%rbp), %r12d
	leaq	3(%rdi), %rsi
	leaq	(%rax,%r13,4), %r13
	movq	%rsi, -560(%rbp)
	movl	4000036(%r13), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %esi
	movl	%r12d, %r11d
	movl	%esi, %r12d
	movl	%esi, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	3999124(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$2, %r9
	je	L354
	leaq	4(%rdi), %r13
	leaq	3(%rdi), %rsi
	movl	-528(%rbp), %r11d
	movq	%r13, -560(%rbp)
	leaq	(%rax,%rsi,4), %r13
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r11d
	movl	%r12d, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	3999124(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$3, %r9
	je	L354
	leaq	4(%rdi), %r13
	movl	-528(%rbp), %r12d
	leaq	5(%rdi), %rsi
	leaq	(%rax,%r13,4), %r13
	movq	%rsi, -560(%rbp)
	movl	4000036(%r13), %r11d
	andl	$-2147483648, %r12d
	movl	%r11d, %esi
	movl	%r12d, %r11d
	movl	%esi, %r12d
	movl	%esi, -528(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r11d
	movl	3999124(%r13), %r12d
	movl	%r11d, %esi
	shrl	%esi
	xorl	%esi, %r12d
	movl	%r12d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %r11d
	cmovne	%esi, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$4, %r9
	je	L354
	movq	-560(%rbp), %rsi
	addq	$6, %rdi
	movq	%rdi, -592(%rbp)
	movl	-528(%rbp), %edi
	leaq	(%rax,%rsi,4), %r12
	movl	4000036(%r12), %r13d
	andl	$-2147483648, %edi
	movl	%r13d, %r11d
	andl	$2147483647, %r11d
	orl	%r11d, %edi
	movl	%edi, %r11d
	shrl	%r11d
	xorl	3999124(%r12), %r11d
	movl	%r11d, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edi
	cmovne	%esi, %r11d
	movl	%r11d, 4000032(%r12)
	cmpq	$5, %r9
	je	L354
	movq	-592(%rbp), %rdi
	leaq	(%rax,%rdi,4), %r11
	movl	%r13d, %edi
	movl	4000036(%r11), %r9d
	andl	$-2147483648, %edi
	andl	$2147483647, %r9d
	orl	%edi, %r9d
	movl	%r9d, %edi
	shrl	%edi
	xorl	3999124(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r9d
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
L354:
	movl	4000032(%rax), %r9d
	movl	4002524(%rax), %r11d
	movl	%r9d, %edi
	andl	$-2147483648, %r11d
	andl	$2147483647, %edi
	orl	%edi, %r11d
	movl	%r11d, %edi
	shrl	%edi
	xorl	4001616(%rax), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r11d
	cmovne	%r12d, %edi
	movl	%edi, 4002524(%rax)
	movl	$1, %edi
	jmp	L322
L1582:
	movq	-240(%rbp), %rsi
	vmovss	%xmm0, (%rsi)
	addq	$4, %rsi
	movq	%rsi, -240(%rbp)
	cmpq	-288(%rbp), %rsi
	jne	L368
	movl	$0, 4000028(%rax)
	movq	%r14, %r11
	jmp	L320
L644:
	movl	$393, %r9d
	movl	$230, %edi
	jmp	L343
L643:
	movl	$394, %r9d
	movl	$229, %edi
	jmp	L343
L642:
	movl	$395, %r9d
	movl	$228, %edi
	jmp	L343
L641:
	movl	$396, %r9d
	movl	$227, %edi
	jmp	L343
L637:
	movl	$224, %r9d
	movl	$3, %edi
	jmp	L323
L636:
	movl	$225, %r9d
	movl	$2, %edi
	jmp	L323
L635:
	movl	$226, %r9d
	movl	$1, %edi
	jmp	L323
L634:
	movl	$227, %r9d
	xorl	%edi, %edi
	jmp	L323
L640:
	movl	$221, %r9d
	movl	$6, %edi
	jmp	L323
L645:
	movl	$392, %r9d
	movl	$231, %edi
	jmp	L343
L639:
	movl	$222, %r9d
	movl	$5, %edi
	jmp	L323
L638:
	movl	$223, %r9d
	movl	$4, %edi
	jmp	L323
L647:
	movl	$390, %r9d
	movl	$233, %edi
	jmp	L343
L646:
	movl	$391, %r9d
	movl	$232, %edi
	jmp	L343
L317:
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rdx
	vcvttss2siq	%xmm0, %rsi
	xorq	%rdx, %rsi
	jmp	L318
L204:
	movq	%rax, %rbx
	shrq	%rax
	vxorps	%xmm13, %xmm13, %xmm13
	andl	$1, %ebx
	orq	%rbx, %rax
	vcvtsi2ssq	%rax, %xmm13, %xmm13
	vaddss	%xmm13, %xmm13, %xmm13
	jmp	L205
L1556:
	leaq	28(%rcx), %rax
	movq	4002528(%rcx), %r8
	vmovss	lC6(%rip), %xmm10
	vpxor	%xmm3, %xmm3, %xmm3
	movq	%rax, -208(%rbp)
	leaq	4000028(%rcx), %rax
	vmovss	lC7(%rip), %xmm9
	movq	%rax, -592(%rbp)
	leaq	4000032(%rcx), %rax
	vmovdqa	lC2(%rip), %ymm13
	shrq	$2, %rax
	vmovdqa	lC3(%rip), %ymm12
	vmovdqa	lC4(%rip), %ymm11
	negq	%rax
	vmovdqa	lC5(%rip), %ymm4
	movq	%rax, %rdx
	movl	$227, %eax
	andl	$7, %edx
	subq	%rdx, %rax
	movq	%rdx, -368(%rbp)
	movq	%rax, %rbx
	movq	%rax, -280(%rbp)
	shrq	$3, %rax
	movq	%rax, -272(%rbp)
	leaq	4000032(,%rdx,4), %rax
	andq	$-8, %rbx
	leaq	(%rcx,%rax), %rdx
	leaq	4(%rcx,%rax), %r15
	movq	%rbx, -112(%rbp)
	leaq	1588(%rcx,%rax), %rax
	movq	%rax, -240(%rbp)
	leaq	4000940(%rcx), %rax
	shrq	$2, %rax
	negq	%rax
	movq	%rax, %rsi
	movl	$396, %eax
	andl	$7, %esi
	subq	%rsi, %rax
	movq	%rsi, -496(%rbp)
	leaq	4000940(,%rsi,4), %rsi
	movq	%rax, %rbx
	movq	%rax, -464(%rbp)
	shrq	$3, %rax
	leaq	4(%rcx,%rsi), %r11
	andq	$-8, %rbx
	movq	%rax, -400(%rbp)
	leaq	-908(%rcx,%rsi), %r10
	leaq	(%rcx,%rsi), %rax
	movq	%rbx, -128(%rbp)
L203:
	movq	-112(%rbp), %rbx
	notq	%rbx
	movq	%rbx, -296(%rbp)
	movq	-128(%rbp), %rbx
	notq	%rbx
	movq	%rbx, -304(%rbp)
	movq	-240(%rbp), %rbx
	movq	%rbx, -80(%rbp)
	movq	-400(%rbp), %rbx
	jmp	L201
	.align 4,0x90
L1585:
	movl	4000032(%rcx,%r8,4), %esi
	addq	$1, %r8
L157:
	movl	%esi, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r8, 4002528(%rcx)
	shrl	$11, %edi
	xorl	%edi, %esi
	movl	%esi, %edi
	sall	$7, %edi
	andl	$-1658038656, %edi
	xorl	%esi, %edi
	movl	%edi, %esi
	sall	$15, %esi
	andl	$-272236544, %esi
	xorl	%edi, %esi
	movl	%esi, %edi
	shrl	$18, %edi
	xorl	%edi, %esi
	vcvtsi2ssq	%rsi, %xmm0, %xmm0
	vmulss	%xmm10, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm9
	ja	L1584
L201:
	cmpq	$623, %r8
	jbe	L1585
	movq	-368(%rbp), %r14
	testq	%r14, %r14
	je	L591
	movl	4000036(%rcx), %r12d
	movl	4000032(%rcx), %edi
	movl	%r12d, %esi
	andl	$-2147483648, %edi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%rcx), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edi
	cmovne	%r8d, %esi
	movl	%esi, 4000032(%rcx)
	cmpq	$1, %r14
	je	L592
	movl	4000040(%rcx), %r8d
	movl	%r12d, %edi
	andl	$-2147483648, %edi
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001624(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000036(%rcx)
	cmpq	$2, %r14
	je	L593
	movl	4000044(%rcx), %edi
	andl	$-2147483648, %r8d
	movl	%edi, %esi
	andl	$2147483647, %esi
	orl	%esi, %r8d
	movl	%r8d, %esi
	shrl	%esi
	xorl	4001628(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %esi
	movl	%esi, 4000040(%rcx)
	cmpq	$3, %r14
	je	L594
	movl	4000048(%rcx), %r8d
	andl	$-2147483648, %edi
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001632(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000044(%rcx)
	cmpq	$4, %r14
	je	L595
	movl	4000052(%rcx), %edi
	andl	$-2147483648, %r8d
	movl	%edi, %esi
	andl	$2147483647, %esi
	orl	%esi, %r8d
	movl	%r8d, %esi
	shrl	%esi
	xorl	4001636(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %esi
	movl	%esi, 4000048(%rcx)
	cmpq	$5, %r14
	je	L596
	movl	4000056(%rcx), %esi
	andl	$-2147483648, %edi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4001640(%rcx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %edi
	movl	%edi, 4000052(%rcx)
	cmpq	$6, %r14
	je	L597
	movl	4000060(%rcx), %edi
	andl	$-2147483648, %esi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	4001644(%rcx), %edi
	movl	%edi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	movl	$7, %esi
	cmovne	%r8d, %edi
	movl	%edi, 4000056(%rcx)
	movl	$220, %edi
L158:
	movq	-80(%rbp), %r9
	movq	-272(%rbp), %r13
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	.align 4,0x90
L168:
	vpand	(%rdx,%r8), %ymm13, %ymm0
	vpand	(%r15,%r8), %ymm12, %ymm1
	addq	$1, %r12
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%r9,%r8), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%rdx,%r8)
	addq	$32, %r8
	cmpq	%r12, %r13
	ja	L168
	movq	-112(%rbp), %r14
	movq	%r9, -80(%rbp)
	addq	%r14, %rsi
	cmpq	-280(%rbp), %r14
	je	L169
	leaq	(%rcx,%rsi,4), %r13
	leaq	1(%rsi), %r9
	movl	4000036(%r13), %r14d
	movl	4000032(%r13), %r12d
	movl	%r14d, %r8d
	andl	$-2147483648, %r12d
	movl	%r14d, -176(%rbp)
	andl	$2147483647, %r8d
	orl	%r8d, %r12d
	movl	4001620(%r13), %r8d
	movl	%r12d, %r14d
	shrl	%r14d
	xorl	%r14d, %r8d
	movl	%r8d, %r14d
	xorl	$-1727483681, %r14d
	andl	$1, %r12d
	cmovne	%r14d, %r8d
	movl	%r8d, 4000032(%r13)
	addq	-296(%rbp), %rdi
	je	L169
	leaq	(%rcx,%r9,4), %r13
	movl	-176(%rbp), %r8d
	leaq	2(%rsi), %r14
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r8d
	movl	%r12d, -176(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	%r8d, %r12d
	shrl	%r12d
	xorl	4001620(%r13), %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$1, %rdi
	je	L169
	leaq	(%rcx,%r14,4), %r13
	movl	-176(%rbp), %r12d
	leaq	3(%rsi), %r9
	movl	4000036(%r13), %r14d
	movq	%r9, -600(%rbp)
	andl	$-2147483648, %r12d
	movl	%r12d, %r8d
	movl	%r14d, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	%r8d, %r12d
	shrl	%r12d
	xorl	4001620(%r13), %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$2, %rdi
	je	L169
	leaq	3(%rsi), %r9
	andl	$-2147483648, %r14d
	leaq	4(%rsi), %r8
	leaq	(%rcx,%r9,4), %r13
	movq	%r8, -176(%rbp)
	movl	%r14d, %r8d
	movl	4000036(%r13), %r12d
	movl	%r12d, %r9d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	4001620(%r13), %r12d
	movl	%r8d, %r14d
	shrl	%r14d
	xorl	%r14d, %r12d
	movl	%r12d, %r14d
	xorl	$-1727483681, %r14d
	andl	$1, %r8d
	cmovne	%r14d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$3, %rdi
	je	L169
	leaq	4(%rsi), %r8
	movl	%r9d, %r12d
	leaq	5(%rsi), %r14
	leaq	(%rcx,%r8,4), %r13
	andl	$-2147483648, %r12d
	movl	4000036(%r13), %r8d
	movl	%r8d, -176(%rbp)
	movl	%r12d, %r8d
	movl	-176(%rbp), %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	4001620(%r13), %r12d
	movl	%r8d, %r9d
	shrl	%r9d
	xorl	%r9d, %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$4, %rdi
	je	L169
	leaq	(%rcx,%r14,4), %r12
	leaq	6(%rsi), %r13
	movl	-176(%rbp), %esi
	movl	4000036(%r12), %r14d
	andl	$-2147483648, %esi
	movl	%r14d, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %esi
	movl	%esi, %r8d
	shrl	%r8d
	xorl	4001620(%r12), %r8d
	movl	%r8d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %esi
	cmovne	%r9d, %r8d
	movl	%r8d, 4000032(%r12)
	cmpq	$5, %rdi
	je	L169
	leaq	(%rcx,%r13,4), %r8
	andl	$-2147483648, %r14d
	movl	4000036(%r8), %edi
	andl	$2147483647, %edi
	orl	%r14d, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%r8), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000032(%r8)
L169:
	movq	-496(%rbp), %r14
	testq	%r14, %r14
	je	L598
	movl	4000944(%rcx), %r12d
	movl	4000940(%rcx), %edi
	movl	%r12d, %esi
	andl	$-2147483648, %edi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4000032(%rcx), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edi
	cmovne	%r8d, %esi
	movl	%esi, 4000940(%rcx)
	cmpq	$1, %r14
	je	L599
	movl	4000948(%rcx), %r8d
	movl	%r12d, %edi
	andl	$-2147483648, %edi
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4000036(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000944(%rcx)
	cmpq	$2, %r14
	je	L600
	movl	4000952(%rcx), %edi
	andl	$-2147483648, %r8d
	movl	%edi, %esi
	andl	$2147483647, %esi
	orl	%esi, %r8d
	movl	%r8d, %esi
	shrl	%esi
	xorl	4000040(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %esi
	movl	%esi, 4000948(%rcx)
	cmpq	$3, %r14
	je	L601
	movl	4000956(%rcx), %r8d
	andl	$-2147483648, %edi
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4000044(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000952(%rcx)
	cmpq	$4, %r14
	je	L602
	movl	4000960(%rcx), %edi
	andl	$-2147483648, %r8d
	movl	%edi, %esi
	andl	$2147483647, %esi
	orl	%esi, %r8d
	movl	%r8d, %esi
	shrl	%esi
	xorl	4000048(%rcx), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %esi
	movl	%esi, 4000956(%rcx)
	cmpq	$5, %r14
	je	L603
	movl	4000964(%rcx), %esi
	andl	$-2147483648, %edi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4000052(%rcx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	cmovne	%r12d, %edi
	movl	%edi, 4000960(%rcx)
	cmpq	$6, %r14
	je	L604
	movl	4000968(%rcx), %edi
	andl	$-2147483648, %esi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	4000056(%rcx), %edi
	movl	%edi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	movl	$234, %esi
	cmovne	%r8d, %edi
	movl	%edi, 4000964(%rcx)
	movl	$389, %edi
L178:
	movq	-80(%rbp), %r9
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	.align 4,0x90
L188:
	vpand	(%rax,%r8), %ymm13, %ymm0
	vpand	(%r11,%r8), %ymm12, %ymm1
	addq	$1, %r12
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%r10,%r8), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%rax,%r8)
	addq	$32, %r8
	cmpq	%r12, %rbx
	ja	L188
	movq	-128(%rbp), %r14
	movq	%r9, -80(%rbp)
	addq	%r14, %rsi
	cmpq	-464(%rbp), %r14
	je	L189
	leaq	(%rcx,%rsi,4), %r13
	leaq	1(%rsi), %r14
	movq	%r14, -176(%rbp)
	movl	4000036(%r13), %r14d
	movl	4000032(%r13), %r12d
	movl	%r14d, %r8d
	movl	%r14d, -176(%rbp)
	andl	$2147483647, %r8d
	andl	$-2147483648, %r12d
	orl	%r8d, %r12d
	movl	3999124(%r13), %r8d
	movl	%r12d, %r9d
	shrl	%r9d
	xorl	%r9d, %r8d
	movl	%r8d, %r14d
	xorl	$-1727483681, %r14d
	andl	$1, %r12d
	cmovne	%r14d, %r8d
	movl	%r8d, 4000032(%r13)
	addq	-304(%rbp), %rdi
	je	L189
	leaq	1(%rsi), %r9
	movl	-176(%rbp), %r8d
	leaq	2(%rsi), %r14
	leaq	(%rcx,%r9,4), %r13
	movl	4000036(%r13), %r12d
	andl	$-2147483648, %r8d
	movl	%r12d, -176(%rbp)
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	3999124(%r13), %r12d
	movl	%r8d, %r9d
	shrl	%r9d
	xorl	%r9d, %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$1, %rdi
	je	L189
	leaq	(%rcx,%r14,4), %r13
	movl	-176(%rbp), %r12d
	leaq	3(%rsi), %r9
	movl	4000036(%r13), %r14d
	movq	%r9, -600(%rbp)
	andl	$-2147483648, %r12d
	movl	%r12d, %r8d
	movl	%r14d, %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	%r8d, %r12d
	shrl	%r12d
	xorl	3999124(%r13), %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$2, %rdi
	je	L189
	leaq	3(%rsi), %r9
	andl	$-2147483648, %r14d
	leaq	4(%rsi), %r8
	leaq	(%rcx,%r9,4), %r13
	movq	%r8, -176(%rbp)
	movl	%r14d, %r8d
	movl	4000036(%r13), %r12d
	movl	%r12d, %r9d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	3999124(%r13), %r12d
	movl	%r8d, %r14d
	shrl	%r14d
	xorl	%r14d, %r12d
	movl	%r12d, %r14d
	xorl	$-1727483681, %r14d
	andl	$1, %r8d
	cmovne	%r14d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$3, %rdi
	je	L189
	leaq	4(%rsi), %r8
	movl	%r9d, %r12d
	leaq	5(%rsi), %r14
	leaq	(%rcx,%r8,4), %r13
	andl	$-2147483648, %r12d
	movl	4000036(%r13), %r8d
	movl	%r8d, -176(%rbp)
	movl	%r12d, %r8d
	movl	-176(%rbp), %r12d
	andl	$2147483647, %r12d
	orl	%r12d, %r8d
	movl	3999124(%r13), %r12d
	movl	%r8d, %r9d
	shrl	%r9d
	xorl	%r9d, %r12d
	movl	%r12d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %r12d
	movl	%r12d, 4000032(%r13)
	cmpq	$4, %rdi
	je	L189
	leaq	(%rcx,%r14,4), %r12
	leaq	6(%rsi), %r13
	movl	-176(%rbp), %esi
	movl	4000036(%r12), %r14d
	andl	$-2147483648, %esi
	movl	%r14d, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %esi
	movl	%esi, %r8d
	shrl	%r8d
	xorl	3999124(%r12), %r8d
	movl	%r8d, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %esi
	cmovne	%r9d, %r8d
	movl	%r8d, 4000032(%r12)
	cmpq	$5, %rdi
	je	L189
	leaq	(%rcx,%r13,4), %r8
	andl	$-2147483648, %r14d
	movl	4000036(%r8), %edi
	andl	$2147483647, %edi
	orl	%r14d, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	3999124(%r8), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000032(%r8)
L189:
	movl	4000032(%rcx), %esi
	movl	4002524(%rcx), %r8d
	movl	%esi, %edi
	andl	$-2147483648, %r8d
	andl	$2147483647, %edi
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	4001616(%rcx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r8d
	movl	$1, %r8d
	cmovne	%r12d, %edi
	movl	%edi, 4002524(%rcx)
	jmp	L157
L1584:
	movq	-208(%rbp), %rbx
	vmovss	%xmm0, (%rbx)
	addq	$4, %rbx
	movq	%rbx, -208(%rbp)
	cmpq	%rbx, -592(%rbp)
	jne	L203
	movl	$0, 4000028(%rcx)
	jmp	L155
L603:
	movl	$391, %edi
	movl	$232, %esi
	jmp	L178
L1559:
	movq	48(%rax), %rcx
	movq	744(%rax), %rax
	jmp	L481
L602:
	movl	$392, %edi
	movl	$231, %esi
	jmp	L178
L601:
	movl	$393, %edi
	movl	$230, %esi
	jmp	L178
L600:
	movl	$394, %edi
	movl	$229, %esi
	jmp	L178
L599:
	movl	$395, %edi
	movl	$228, %esi
	jmp	L178
L598:
	movl	$396, %edi
	movl	$227, %esi
	jmp	L178
L596:
	movl	$222, %edi
	movl	$5, %esi
	jmp	L158
L595:
	movl	$223, %edi
	movl	$4, %esi
	jmp	L158
L594:
	movl	$224, %edi
	movl	$3, %esi
	jmp	L158
L593:
	movl	$225, %edi
	movl	$2, %esi
	jmp	L158
L592:
	movl	$226, %edi
	movl	$1, %esi
	jmp	L158
L591:
	movl	$227, %edi
	xorl	%esi, %esi
	jmp	L158
L597:
	movl	$221, %edi
	movl	$6, %esi
	jmp	L158
L604:
	movl	$390, %edi
	movl	$233, %esi
	jmp	L178
L1561:
	vzeroupper
	call	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1538
L1560:
	vzeroupper
	call	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1538
L315:
	movq	-176(%rbp), %rbx
	vxorps	%xmm11, %xmm11, %xmm11
	movq	%rbx, %rdx
	andl	$1, %ebx
	shrq	%rdx
	orq	%rbx, %rdx
	vcvtsi2ssq	%rdx, %xmm11, %xmm11
	vaddss	%xmm11, %xmm11, %xmm11
	jmp	L316
L1576:
	movl	-176(%rbp), %eax
	subq	$8, %rsp
	movq	-120(%rbp), %rbx
	movq	%rsi, %rdx
	vmovss	-240(%rbp), %xmm2
	vmovss	-272(%rbp), %xmm1
	xorl	%esi, %esi
	vmovdqa	%ymm5, -432(%rbp)
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %r8
	pushq	%rax
	leaq	120(%rbx), %rdi
	movl	-208(%rbp), %eax
	movq	-144(%rbp), %rcx
	pushq	%r15
	vmovss	-280(%rbp), %xmm0
	vmovdqa	%ymm6, -400(%rbp)
	pushq	%rax
	movl	-112(%rbp), %eax
	pushq	%r14
	pushq	%rax
	movl	-80(%rbp), %eax
	pushq	%r14
	pushq	%rax
	pushq	%r15
	pushq	%r13
	vmovdqa	%ymm7, -368(%rbp)
	vmovdqa	%ymm8, -336(%rbp)
	vzeroupper
	call	__ZNK8MosaicSC2IO6outputEbmmmmmmimimimifffff
	movq	48(%rbx), %rcx
	movq	744(%rbx), %rsi
	addq	$80, %rsp
	vmovdqa	-432(%rbp), %ymm5
	vmovdqa	-400(%rbp), %ymm6
	vmovdqa	-368(%rbp), %ymm7
	vmovdqa	-336(%rbp), %ymm8
	jmp	L509
L1564:
	vzeroupper
	call	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1539
L1563:
	vzeroupper
	call	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1539
L1579:
	leaq	4000032(%rax), %r15
	movl	$227, %edx
	leaq	28(%rax), %rcx
	movq	4002528(%rax), %rsi
	shrq	$2, %r15
	movq	%rdx, %rbx
	movq	%rcx, -208(%rbp)
	leaq	4000028(%rax), %rcx
	negq	%r15
	movq	%rcx, -400(%rbp)
	vmovss	lC6(%rip), %xmm10
	vpxor	%xmm3, %xmm3, %xmm3
	andl	$7, %r15d
	vmovss	lC7(%rip), %xmm9
	vmovdqa	lC2(%rip), %ymm13
	subq	%r15, %rbx
	leaq	4000032(,%r15,4), %rdx
	vmovdqa	lC3(%rip), %ymm12
	vmovdqa	lC4(%rip), %ymm11
	movq	%rbx, %rcx
	leaq	(%rax,%rdx), %r13
	movq	%rbx, -432(%rbp)
	andq	$-8, %rbx
	shrq	$3, %rcx
	movq	%rbx, -112(%rbp)
	vmovdqa	lC5(%rip), %ymm4
	movq	%rcx, -464(%rbp)
	leaq	4(%rax,%rdx), %rcx
	movq	%rcx, -496(%rbp)
	leaq	1588(%rax,%rdx), %rcx
	leaq	4000940(%rax), %rdx
	shrq	$2, %rdx
	movq	%rcx, -528(%rbp)
	negq	%rdx
	andl	$7, %edx
	movq	%rdx, %r8
	movl	$396, %edx
	movq	%rdx, %rbx
	leaq	4000940(,%r8,4), %rdx
	subq	%r8, %rbx
	leaq	(%rax,%rdx), %r14
	leaq	4(%rax,%rdx), %r9
	movq	%rbx, %rcx
	movq	%rbx, -280(%rbp)
	andq	$-8, %rbx
	shrq	$3, %rcx
	movq	%rbx, -80(%rbp)
	movq	%rcx, -240(%rbp)
	leaq	-908(%rax,%rdx), %rcx
	movq	%rcx, -368(%rbp)
L314:
	movq	-112(%rbp), %rcx
	notq	%rcx
	movq	%rcx, -560(%rbp)
	movq	-80(%rbp), %rcx
	notq	%rcx
	movq	%rcx, -592(%rbp)
	jmp	L312
L1587:
	movl	4000032(%rax,%rsi,4), %edi
	addq	$1, %rsi
L268:
	movl	%edi, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rsi, 4002528(%rax)
	shrl	$11, %edx
	xorl	%edi, %edx
	movl	%edx, %ecx
	sall	$7, %ecx
	andl	$-1658038656, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$18, %ecx
	xorl	%ecx, %edx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vmulss	%xmm10, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm9
	ja	L1586
L312:
	cmpq	$623, %rsi
	jbe	L1587
	testq	%r15, %r15
	je	L620
	movl	4000036(%rax), %edi
	movl	4000032(%rax), %ecx
	movl	%edi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000032(%rax)
	cmpq	$1, %r15
	je	L621
	movl	4000040(%rax), %esi
	movl	%edi, %ecx
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001624(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000036(%rax)
	cmpq	$2, %r15
	je	L622
	movl	4000044(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001628(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %edx
	movl	%edx, 4000040(%rax)
	cmpq	$3, %r15
	je	L623
	movl	4000048(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001632(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000044(%rax)
	cmpq	$4, %r15
	je	L624
	movl	4000052(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001636(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %edx
	movl	%edx, 4000048(%rax)
	cmpq	$5, %r15
	je	L625
	movl	4000056(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001640(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000052(%rax)
	cmpq	$6, %r15
	je	L626
	movl	4000060(%rax), %edx
	andl	$-2147483648, %esi
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001644(%rax), %edx
	movl	%edx, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %esi
	cmovne	%ecx, %edx
	movl	$220, %ecx
	movl	%edx, 4000056(%rax)
	movl	$7, %edx
L269:
	movq	-464(%rbp), %r10
	movq	-496(%rbp), %r11
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	-528(%rbp), %rbx
	.align 4,0x90
L279:
	vpand	(%r11,%rsi), %ymm12, %ymm0
	vpand	0(%r13,%rsi), %ymm13, %ymm1
	addq	$1, %rdi
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%rbx,%rsi), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rsi)
	addq	$32, %rsi
	cmpq	%rdi, %r10
	ja	L279
	movq	-112(%rbp), %rbx
	addq	%rbx, %rdx
	cmpq	%rbx, -432(%rbp)
	je	L280
	leaq	(%rax,%rdx,4), %r11
	leaq	1(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	4000032(%r11), %r10d
	movl	%esi, %edi
	andl	$-2147483648, %r10d
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	4001620(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r10d
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
	addq	-560(%rbp), %rcx
	je	L280
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %esi
	leaq	2(%rdx), %r11
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %esi
	movl	%esi, %r10d
	shrl	%r10d
	xorl	4001620(%rbx), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L280
	leaq	(%rax,%r11,4), %r11
	andl	$-2147483648, %edi
	leaq	3(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	%esi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	4001620(%r11), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%r11)
	cmpq	$2, %rcx
	je	L280
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %esi
	leaq	4(%rdx), %r11
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %esi
	movl	%esi, %r10d
	shrl	%r10d
	xorl	4001620(%rbx), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L280
	leaq	(%rax,%r11,4), %r11
	andl	$-2147483648, %edi
	leaq	5(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	%esi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	4001620(%r11), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%r11)
	cmpq	$4, %rcx
	je	L280
	leaq	(%rax,%rbx,4), %r11
	andl	$-2147483648, %esi
	addq	$6, %rdx
	movl	4000036(%r11), %r10d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	4001620(%r11), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %esi
	cmovne	%ebx, %edi
	movl	%edi, 4000032(%r11)
	cmpq	$5, %rcx
	je	L280
	leaq	(%rax,%rdx,4), %rsi
	andl	$-2147483648, %r10d
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%r10d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rsi), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000032(%rsi)
L280:
	testq	%r8, %r8
	je	L627
	movl	4000944(%rax), %edi
	movl	4000940(%rax), %ecx
	movl	%edi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000032(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000940(%rax)
	cmpq	$1, %r8
	je	L628
	movl	4000948(%rax), %esi
	movl	%edi, %ecx
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000036(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000944(%rax)
	cmpq	$2, %r8
	je	L629
	movl	4000952(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000040(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %edx
	movl	%edx, 4000948(%rax)
	cmpq	$3, %r8
	je	L630
	movl	4000956(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000044(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000952(%rax)
	cmpq	$4, %r8
	je	L631
	movl	4000960(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000048(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %edx
	movl	%edx, 4000956(%rax)
	cmpq	$5, %r8
	je	L632
	movl	4000964(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000052(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000960(%rax)
	cmpq	$6, %r8
	je	L633
	movl	4000968(%rax), %edx
	andl	$-2147483648, %esi
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000056(%rax), %edx
	movl	%edx, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %esi
	cmovne	%ecx, %edx
	movl	$389, %ecx
	movl	%edx, 4000964(%rax)
	movl	$234, %edx
L289:
	movq	-240(%rbp), %r10
	movq	-368(%rbp), %r11
	xorl	%esi, %esi
	xorl	%edi, %edi
	.align 4,0x90
L299:
	vpand	(%r14,%rsi), %ymm13, %ymm0
	vpand	(%r9,%rsi), %ymm12, %ymm1
	addq	$1, %rdi
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%r11,%rsi), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
	cmpq	%rdi, %r10
	ja	L299
	movq	-80(%rbp), %rbx
	addq	%rbx, %rdx
	cmpq	-280(%rbp), %rbx
	je	L300
	leaq	(%rax,%rdx,4), %r11
	leaq	1(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	4000032(%r11), %r10d
	movl	%esi, %edi
	andl	$-2147483648, %r10d
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	3999124(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r10d
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
	addq	-592(%rbp), %rcx
	je	L300
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %esi
	leaq	2(%rdx), %r11
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %esi
	movl	%esi, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L300
	leaq	(%rax,%r11,4), %r11
	andl	$-2147483648, %edi
	leaq	3(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	%esi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%r11), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%r11)
	cmpq	$2, %rcx
	je	L300
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %esi
	leaq	4(%rdx), %r11
	movl	4000036(%rbx), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %esi
	movl	%esi, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L300
	leaq	(%rax,%r11,4), %r11
	andl	$-2147483648, %edi
	leaq	5(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	%esi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%r11), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%r11)
	cmpq	$4, %rcx
	je	L300
	leaq	(%rax,%rbx,4), %r11
	andl	$-2147483648, %esi
	addq	$6, %rdx
	movl	4000036(%r11), %r10d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	3999124(%r11), %edi
	movl	%edi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %esi
	cmovne	%ebx, %edi
	movl	%edi, 4000032(%r11)
	cmpq	$5, %rcx
	je	L300
	leaq	(%rax,%rdx,4), %rsi
	andl	$-2147483648, %r10d
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%r10d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	3999124(%rsi), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000032(%rsi)
L300:
	movl	4000032(%rax), %edi
	movl	4002524(%rax), %ecx
	movl	%edi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001616(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	$1, %esi
	movl	%edx, 4002524(%rax)
	jmp	L268
L1586:
	movq	-208(%rbp), %rcx
	vmovss	%xmm0, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -208(%rbp)
	cmpq	%rcx, -400(%rbp)
	jne	L314
	movl	$0, 4000028(%rax)
	jmp	L266
L1551:
	leaq	4000032(%rax), %r15
	movl	$227, %edx
	leaq	28(%rax), %rcx
	movq	4002528(%rax), %rsi
	shrq	$2, %r15
	movq	%rdx, %rbx
	movq	%rcx, -112(%rbp)
	vpxor	%xmm3, %xmm3, %xmm3
	negq	%r15
	leaq	4000028(%rax), %rcx
	vmovss	lC6(%rip), %xmm10
	vmovss	lC7(%rip), %xmm9
	andl	$7, %r15d
	movq	%rcx, -368(%rbp)
	vmovdqa	lC2(%rip), %ymm13
	subq	%r15, %rbx
	leaq	4000032(,%r15,4), %rdx
	vmovdqa	lC3(%rip), %ymm12
	vmovdqa	lC4(%rip), %ymm11
	movq	%rbx, %rcx
	leaq	(%rax,%rdx), %r13
	movq	%rbx, -496(%rbp)
	andq	$-8, %rbx
	shrq	$3, %rcx
	movq	%rbx, -280(%rbp)
	vmovdqa	lC5(%rip), %ymm4
	movq	%rcx, -528(%rbp)
	leaq	4(%rax,%rdx), %rcx
	movq	%rcx, -560(%rbp)
	leaq	1588(%rax,%rdx), %rcx
	leaq	4000940(%rax), %rdx
	shrq	$2, %rdx
	movq	%rcx, -592(%rbp)
	negq	%rdx
	andl	$7, %edx
	movq	%rdx, %rcx
	movq	%rdx, -400(%rbp)
	movl	$396, %edx
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	subq	%rcx, %rbx
	leaq	4000940(,%rdx,4), %rdx
	movq	%rbx, %rcx
	movq	%rbx, -432(%rbp)
	andq	$-8, %rbx
	leaq	(%rax,%rdx), %r14
	shrq	$3, %rcx
	movq	%rbx, -208(%rbp)
	leaq	4(%rax,%rdx), %r9
	leaq	-908(%rax,%rdx), %r8
	movq	%rcx, -464(%rbp)
L421:
	movq	-280(%rbp), %rcx
	movq	-592(%rbp), %r10
	notq	%rcx
	movq	%rcx, -600(%rbp)
	movq	-208(%rbp), %rcx
	notq	%rcx
	movq	%rcx, -608(%rbp)
	movq	-560(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	jmp	L419
L1589:
	movl	4000032(%rax,%rsi,4), %r11d
	addq	$1, %rsi
L375:
	movl	%r11d, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rsi, 4002528(%rax)
	shrl	$11, %edx
	xorl	%r11d, %edx
	movl	%edx, %ecx
	sall	$7, %ecx
	andl	$-1658038656, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$18, %ecx
	xorl	%ecx, %edx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vmulss	%xmm10, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm9
	ja	L1588
L419:
	cmpq	$623, %rsi
	jbe	L1589
	testq	%r15, %r15
	je	L648
	movl	4000036(%rax), %r11d
	movl	4000032(%rax), %ecx
	movl	%r11d, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000032(%rax)
	cmpq	$1, %r15
	je	L649
	movl	4000040(%rax), %esi
	movl	%r11d, %ecx
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001624(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000036(%rax)
	cmpq	$2, %r15
	je	L650
	movl	4000044(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001628(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %edx
	movl	%edx, 4000040(%rax)
	cmpq	$3, %r15
	je	L651
	movl	4000048(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001632(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000044(%rax)
	cmpq	$4, %r15
	je	L652
	movl	4000052(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001636(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %edx
	movl	%edx, 4000048(%rax)
	cmpq	$5, %r15
	je	L653
	movl	4000056(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001640(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000052(%rax)
	cmpq	$6, %r15
	je	L654
	movl	4000060(%rax), %edx
	andl	$-2147483648, %esi
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4001644(%rax), %edx
	movl	%edx, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %esi
	cmovne	%ecx, %edx
	movl	$220, %ecx
	movl	%edx, 4000056(%rax)
	movl	$7, %edx
L376:
	movq	-528(%rbp), %rbx
	movq	-80(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	.align 4,0x90
L386:
	vpand	(%rdi,%rsi), %ymm12, %ymm0
	vpand	0(%r13,%rsi), %ymm13, %ymm1
	addq	$1, %r11
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%r10,%rsi), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rsi)
	addq	$32, %rsi
	cmpq	%rbx, %r11
	jb	L386
	movq	-280(%rbp), %rbx
	movq	%rdi, -80(%rbp)
	addq	%rbx, %rdx
	cmpq	%rbx, -496(%rbp)
	je	L387
	leaq	(%rax,%rdx,4), %rbx
	leaq	1(%rdx), %rsi
	movl	4000036(%rbx), %r12d
	movl	4000032(%rbx), %r11d
	movq	%rsi, -288(%rbp)
	movl	%r12d, %esi
	andl	$-2147483648, %r11d
	andl	$2147483647, %esi
	orl	%esi, %r11d
	movl	%r11d, %esi
	shrl	%esi
	xorl	4001620(%rbx), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %r11d
	cmovne	%edi, %esi
	movl	%esi, 4000032(%rbx)
	addq	-600(%rbp), %rcx
	je	L387
	leaq	2(%rdx), %rbx
	leaq	1(%rdx), %rsi
	movq	%rbx, -288(%rbp)
	leaq	(%rax,%rsi,4), %rbx
	movl	%r12d, %esi
	movl	4000036(%rbx), %r11d
	andl	$-2147483648, %esi
	movl	%r11d, -288(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	4001620(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L387
	leaq	2(%rdx), %rbx
	movl	-288(%rbp), %r11d
	leaq	3(%rdx), %r12
	leaq	(%rax,%rbx,4), %rbx
	movl	4000036(%rbx), %esi
	andl	$-2147483648, %r11d
	movl	%esi, %edi
	movl	%r11d, %esi
	movl	%edi, %r11d
	movl	%edi, -288(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	4001620(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$2, %rcx
	je	L387
	leaq	4(%rdx), %rbx
	movl	-288(%rbp), %esi
	movq	%rbx, -304(%rbp)
	leaq	(%rax,%r12,4), %rbx
	movl	4000036(%rbx), %r12d
	andl	$-2147483648, %esi
	movl	%r12d, %r11d
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	%esi, %r11d
	shrl	%r11d
	xorl	4001620(%rbx), %r11d
	movl	%r11d, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L387
	leaq	4(%rdx), %rbx
	leaq	5(%rdx), %rsi
	leaq	(%rax,%rbx,4), %rbx
	movq	%rsi, -288(%rbp)
	movl	%r12d, %esi
	movl	4000036(%rbx), %r11d
	andl	$-2147483648, %esi
	movl	%r11d, -304(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	4001620(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$4, %rcx
	je	L387
	movq	-288(%rbp), %rsi
	leaq	6(%rdx), %r12
	movl	-304(%rbp), %edx
	leaq	(%rax,%rsi,4), %rbx
	andl	$-2147483648, %edx
	movl	4000036(%rbx), %r11d
	movl	%r11d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	4001620(%rbx), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %edx
	cmovne	%edi, %esi
	movl	%esi, 4000032(%rbx)
	cmpq	$5, %rcx
	je	L387
	leaq	(%rax,%r12,4), %rsi
	andl	$-2147483648, %r11d
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%r11d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rsi), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000032(%rsi)
L387:
	movq	-400(%rbp), %rbx
	testq	%rbx, %rbx
	je	L655
	movl	4000944(%rax), %r11d
	movl	4000940(%rax), %ecx
	movl	%r11d, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000032(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000940(%rax)
	cmpq	$1, %rbx
	je	L656
	movl	4000948(%rax), %esi
	movl	%r11d, %ecx
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000036(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000944(%rax)
	cmpq	$2, %rbx
	je	L657
	movl	4000952(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000040(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %edx
	movl	%edx, 4000948(%rax)
	cmpq	$3, %rbx
	je	L658
	movl	4000956(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000044(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000952(%rax)
	cmpq	$4, %rbx
	je	L659
	movl	4000960(%rax), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000048(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %edx
	movl	%edx, 4000956(%rax)
	cmpq	$5, %rbx
	je	L660
	movl	4000964(%rax), %esi
	andl	$-2147483648, %ecx
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000052(%rax), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000960(%rax)
	cmpq	$6, %rbx
	je	L661
	movl	4000968(%rax), %edx
	andl	$-2147483648, %esi
	andl	$2147483647, %edx
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	4000056(%rax), %edx
	movl	%edx, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %esi
	cmovne	%ecx, %edx
	movl	$389, %ecx
	movl	%edx, 4000964(%rax)
	movl	$234, %edx
L396:
	movq	-464(%rbp), %rbx
	movq	-80(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	.align 4,0x90
L406:
	vpand	(%r9,%rsi), %ymm12, %ymm0
	vpand	(%r14,%rsi), %ymm13, %ymm1
	addq	$1, %r11
	vpor	%ymm0, %ymm1, %ymm1
	vpsrld	$1, %ymm1, %ymm0
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	(%r8,%rsi), %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpxor	%ymm4, %ymm0, %ymm2
	vpblendvb	%ymm1, %ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
	cmpq	%rbx, %r11
	jb	L406
	movq	-208(%rbp), %rbx
	movq	%rdi, -80(%rbp)
	addq	%rbx, %rdx
	cmpq	%rbx, -432(%rbp)
	je	L407
	leaq	(%rax,%rdx,4), %rbx
	leaq	1(%rdx), %rsi
	movl	4000036(%rbx), %r12d
	movl	4000032(%rbx), %r11d
	movq	%rsi, -288(%rbp)
	movl	%r12d, %esi
	andl	$-2147483648, %r11d
	andl	$2147483647, %esi
	orl	%esi, %r11d
	movl	%r11d, %esi
	shrl	%esi
	xorl	3999124(%rbx), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %r11d
	cmovne	%edi, %esi
	movl	%esi, 4000032(%rbx)
	addq	-608(%rbp), %rcx
	je	L407
	leaq	2(%rdx), %rbx
	leaq	1(%rdx), %rsi
	movq	%rbx, -288(%rbp)
	leaq	(%rax,%rsi,4), %rbx
	movl	%r12d, %esi
	movl	4000036(%rbx), %r11d
	andl	$-2147483648, %esi
	movl	%r11d, -288(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	3999124(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L407
	leaq	2(%rdx), %rbx
	movl	-288(%rbp), %r11d
	leaq	3(%rdx), %r12
	leaq	(%rax,%rbx,4), %rbx
	movl	4000036(%rbx), %esi
	andl	$-2147483648, %r11d
	movl	%esi, %edi
	movl	%r11d, %esi
	movl	%edi, %r11d
	movl	%edi, -288(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	3999124(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$2, %rcx
	je	L407
	leaq	4(%rdx), %rbx
	movl	-288(%rbp), %esi
	movq	%rbx, -304(%rbp)
	leaq	(%rax,%r12,4), %rbx
	movl	4000036(%rbx), %r12d
	andl	$-2147483648, %esi
	movl	%r12d, %r11d
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	%esi, %r11d
	shrl	%r11d
	xorl	3999124(%rbx), %r11d
	movl	%r11d, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L407
	leaq	4(%rdx), %rbx
	leaq	5(%rdx), %rsi
	leaq	(%rax,%rbx,4), %rbx
	movq	%rsi, -288(%rbp)
	movl	%r12d, %esi
	movl	4000036(%rbx), %r11d
	andl	$-2147483648, %esi
	movl	%r11d, -304(%rbp)
	andl	$2147483647, %r11d
	orl	%r11d, %esi
	movl	3999124(%rbx), %r11d
	movl	%esi, %edi
	shrl	%edi
	xorl	%edi, %r11d
	movl	%r11d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %r11d
	movl	%r11d, 4000032(%rbx)
	cmpq	$4, %rcx
	je	L407
	movq	-288(%rbp), %rsi
	leaq	6(%rdx), %r12
	movl	-304(%rbp), %edx
	leaq	(%rax,%rsi,4), %rbx
	andl	$-2147483648, %edx
	movl	4000036(%rbx), %r11d
	movl	%r11d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	3999124(%rbx), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %edx
	cmovne	%edi, %esi
	movl	%esi, 4000032(%rbx)
	cmpq	$5, %rcx
	je	L407
	leaq	(%rax,%r12,4), %rsi
	andl	$-2147483648, %r11d
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%r11d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	3999124(%rsi), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %ecx
	cmovne	%r11d, %edx
	movl	%edx, 4000032(%rsi)
L407:
	movl	4000032(%rax), %r11d
	movl	4002524(%rax), %ecx
	movl	%r11d, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001616(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	$1, %esi
	movl	%edx, 4002524(%rax)
	jmp	L375
L1588:
	movq	-112(%rbp), %rcx
	vmovss	%xmm0, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -112(%rbp)
	cmpq	%rcx, -368(%rbp)
	jne	L421
	movl	$0, 4000028(%rax)
	jmp	L373
	.align 4,0x90
L649:
	movl	$226, %ecx
	movl	$1, %edx
	jmp	L376
L648:
	movl	$227, %ecx
	xorl	%edx, %edx
	jmp	L376
L651:
	movl	$224, %ecx
	movl	$3, %edx
	jmp	L376
L650:
	movl	$225, %ecx
	movl	$2, %edx
	jmp	L376
L658:
	movl	$393, %ecx
	movl	$230, %edx
	jmp	L396
L657:
	movl	$394, %ecx
	movl	$229, %edx
	jmp	L396
L656:
	movl	$395, %ecx
	movl	$228, %edx
	jmp	L396
L655:
	movl	$396, %ecx
	movl	$227, %edx
	jmp	L396
L659:
	movl	$392, %ecx
	movl	$231, %edx
	jmp	L396
L654:
	movl	$221, %ecx
	movl	$6, %edx
	jmp	L376
L661:
	movl	$390, %ecx
	movl	$233, %edx
	jmp	L396
L660:
	movl	$391, %ecx
	movl	$232, %edx
	jmp	L396
L653:
	movl	$222, %ecx
	movl	$5, %edx
	jmp	L376
L652:
	movl	$223, %ecx
	movl	$4, %edx
	jmp	L376
L631:
	movl	$392, %ecx
	movl	$231, %edx
	jmp	L289
L630:
	movl	$393, %ecx
	movl	$230, %edx
	jmp	L289
L629:
	movl	$394, %ecx
	movl	$229, %edx
	jmp	L289
L628:
	movl	$395, %ecx
	movl	$228, %edx
	jmp	L289
L627:
	movl	$396, %ecx
	movl	$227, %edx
	jmp	L289
L626:
	movl	$221, %ecx
	movl	$6, %edx
	jmp	L269
L625:
	movl	$222, %ecx
	movl	$5, %edx
	jmp	L269
L624:
	movl	$223, %ecx
	movl	$4, %edx
	jmp	L269
L633:
	movl	$390, %ecx
	movl	$233, %edx
	jmp	L289
L632:
	movl	$391, %ecx
	movl	$232, %edx
	jmp	L289
L1549:
	vzeroupper
	call	__ZSt17__throw_bad_allocv
L619:
	movq	$0, -128(%rbp)
	jmp	L262
L623:
	movl	$224, %ecx
	movl	$3, %edx
	jmp	L269
L622:
	movl	$225, %ecx
	movl	$2, %edx
	jmp	L269
L621:
	movl	$226, %ecx
	movl	$1, %edx
	jmp	L269
L620:
	movl	$227, %ecx
	xorl	%edx, %edx
	jmp	L269
L1567:
	movl	-208(%rbp), %edx
	movq	-136(%rbp), %rsi
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	vmovdqa	%ymm5, -496(%rbp)
	movq	-144(%rbp), %rdi
	vmovdqa	%ymm6, -464(%rbp)
	vmovdqa	%ymm7, -432(%rbp)
	vmovdqa	%ymm8, -400(%rbp)
	vzeroupper
	call	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1540
L1572:
	vzeroupper
	call	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
L1541:
	vmovaps	%xmm0, %xmm3
	vmovdqa	-400(%rbp), %ymm8
	vmovdqa	-432(%rbp), %ymm7
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	-496(%rbp), %ymm5
	jmp	L501
L1574:
	vzeroupper
	call	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1541
L1573:
	vzeroupper
	call	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1541
L1575:
	leaq	4000032(%rax), %rdx
	leaq	28(%rax), %rbx
	movq	4002528(%rax), %rcx
	vmovss	lC6(%rip), %xmm10
	shrq	$2, %rdx
	movq	%rbx, -432(%rbp)
	leaq	4000028(%rax), %rbx
	vmovss	lC7(%rip), %xmm9
	negq	%rdx
	movq	%rbx, -624(%rbp)
	vmovdqa	lC2(%rip), %ymm14
	vpxor	%xmm2, %xmm2, %xmm2
	andl	$7, %edx
	vmovdqa	lC3(%rip), %ymm13
	vmovdqa	lC4(%rip), %ymm12
	movq	%rdx, %r9
	movl	$227, %edx
	vmovdqa	lC5(%rip), %ymm11
	movq	%rdx, %rbx
	subq	%r9, %rbx
	movq	%rbx, %rdx
	movq	%rbx, -288(%rbp)
	andq	$-8, %rbx
	shrq	$3, %rdx
	movq	%rbx, -400(%rbp)
	movq	%rdx, -592(%rbp)
	leaq	4000032(,%r9,4), %rdx
	leaq	(%rax,%rdx), %rsi
	movq	%rsi, -560(%rbp)
	leaq	4(%rax,%rdx), %rsi
	leaq	1588(%rax,%rdx), %rdx
	movq	%rdx, -496(%rbp)
	leaq	4000940(%rax), %rdx
	shrq	$2, %rdx
	movq	%rsi, -528(%rbp)
	negq	%rdx
	andl	$7, %edx
	movq	%rdx, %r8
	movl	$396, %edx
	movq	%rdx, %rbx
	subq	%r8, %rbx
	movq	%rbx, %rdx
	movq	%rbx, -616(%rbp)
	andq	$-8, %rbx
	shrq	$3, %rdx
	movq	%rbx, -464(%rbp)
	movq	%rdx, -608(%rbp)
	leaq	4000940(,%r8,4), %rdx
	leaq	(%rax,%rdx), %rsi
	movq	%rsi, -600(%rbp)
	leaq	4(%rax,%rdx), %rsi
	leaq	-908(%rax,%rdx), %rdx
	movq	%rsi, -304(%rbp)
	movq	%rdx, -296(%rbp)
L558:
	movq	-400(%rbp), %rbx
	notq	%rbx
	movq	%rbx, -632(%rbp)
	movq	-464(%rbp), %rbx
	notq	%rbx
	movq	%rbx, -640(%rbp)
L556:
	cmpq	$623, %rcx
	ja	L511
	movl	4000032(%rax,%rcx,4), %esi
	addq	$1, %rcx
L512:
	movl	%esi, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rcx, 4002528(%rax)
	shrl	$11, %edx
	xorl	%esi, %edx
	movl	%edx, %esi
	sall	$7, %esi
	andl	$-1658038656, %esi
	xorl	%esi, %edx
	movl	%edx, %esi
	sall	$15, %esi
	andl	$-272236544, %esi
	xorl	%esi, %edx
	movl	%edx, %esi
	shrl	$18, %esi
	xorl	%esi, %edx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vmulss	%xmm10, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm9
	jbe	L556
	movq	-432(%rbp), %rbx
	vmovss	%xmm0, (%rbx)
	addq	$4, %rbx
	movq	%rbx, -432(%rbp)
	cmpq	-624(%rbp), %rbx
	jne	L558
	movl	$0, 4000028(%rax)
	jmp	L510
	.align 4,0x90
L511:
	testq	%r9, %r9
	je	L686
	movl	4000036(%rax), %esi
	movl	4000032(%rax), %ecx
	movl	%esi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000032(%rax)
	cmpq	$1, %r9
	je	L687
	movl	4000040(%rax), %r10d
	andl	$-2147483648, %esi
	movl	%r10d, %ecx
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001624(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000036(%rax)
	cmpq	$2, %r9
	je	L688
	movl	4000044(%rax), %edi
	andl	$-2147483648, %r10d
	movl	%edi, %ecx
	andl	$2147483647, %ecx
	orl	%r10d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001628(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000040(%rax)
	cmpq	$3, %r9
	je	L689
	movl	4000048(%rax), %esi
	andl	$-2147483648, %edi
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%edi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001632(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000044(%rax)
	cmpq	$4, %r9
	je	L690
	movl	4000052(%rax), %edi
	andl	$-2147483648, %esi
	movl	%edi, %ecx
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001636(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000048(%rax)
	cmpq	$5, %r9
	je	L691
	movl	4000056(%rax), %esi
	andl	$-2147483648, %edi
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%edi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001640(%rax), %edx
	andb	$1, %cl
	je	L520
	xorl	$-1727483681, %edx
L520:
	movl	%edx, 4000052(%rax)
	cmpq	$6, %r9
	je	L692
	movl	4000060(%rax), %ecx
	andl	$-2147483648, %esi
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001644(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	movl	$220, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000056(%rax)
	movl	$7, %edx
L513:
	movq	-560(%rbp), %r10
	xorl	%esi, %esi
	xorl	%edi, %edi
	.align 4,0x90
L523:
	movq	-528(%rbp), %rbx
	vpand	(%r10,%rsi), %ymm14, %ymm1
	addq	$1, %rdi
	vpand	(%rbx,%rsi), %ymm13, %ymm0
	movq	-496(%rbp), %rbx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm12, %ymm0, %ymm0
	vpxor	(%rbx,%rsi), %ymm1, %ymm1
	vpcmpeqd	%ymm2, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm15
	vpblendvb	%ymm0, %ymm1, %ymm15, %ymm0
	vmovdqa	%ymm0, (%r10,%rsi)
	addq	$32, %rsi
	cmpq	-592(%rbp), %rdi
	jb	L523
	movq	-400(%rbp), %rbx
	addq	%rbx, %rdx
	cmpq	-288(%rbp), %rbx
	je	L524
	leaq	(%rax,%rdx,4), %r11
	leaq	1(%rdx), %rbx
	movl	4000036(%r11), %r10d
	movl	4000032(%r11), %edi
	movl	%r10d, %esi
	andl	$-2147483648, %edi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%r11), %esi
	movl	%esi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %esi
	movl	%esi, 4000032(%r11)
	addq	-632(%rbp), %rcx
	je	L524
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %r10d
	leaq	2(%rdx), %r12
	movl	4000036(%rbx), %r11d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%r10d, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%rbx), %esi
	movl	%esi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	cmovne	%r10d, %esi
	movl	%esi, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L524
	leaq	(%rax,%r12,4), %r12
	andl	$-2147483648, %r11d
	leaq	3(%rdx), %rbx
	movl	4000036(%r12), %r10d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%r11d, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%r12), %esi
	movl	%esi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %edi
	cmovne	%r11d, %esi
	movl	%esi, 4000032(%r12)
	cmpq	$2, %rcx
	je	L524
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %r10d
	leaq	4(%rdx), %r12
	movl	4000036(%rbx), %r11d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%r10d, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%rbx), %esi
	movl	%esi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %edi
	cmovne	%r10d, %esi
	movl	%esi, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L524
	leaq	(%rax,%r12,4), %r12
	andl	$-2147483648, %r11d
	leaq	5(%rdx), %rbx
	movl	4000036(%r12), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r11d, %r10d
	movl	%r10d, %esi
	shrl	%esi
	xorl	4001620(%r12), %esi
	movl	%esi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r10d
	cmovne	%r11d, %esi
	movl	%esi, 4000032(%r12)
	cmpq	$4, %rcx
	je	L524
	leaq	(%rax,%rbx,4), %r11
	andl	$-2147483648, %edi
	addq	$6, %rdx
	movl	4000036(%r11), %r10d
	movl	%r10d, %esi
	andl	$2147483647, %esi
	orl	%esi, %edi
	movl	%edi, %esi
	shrl	%esi
	xorl	4001620(%r11), %esi
	movl	%esi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %edi
	cmovne	%ebx, %esi
	movl	%esi, 4000032(%r11)
	cmpq	$5, %rcx
	je	L524
	leaq	(%rax,%rdx,4), %rsi
	andl	$-2147483648, %r10d
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%r10d, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001620(%rsi), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000032(%rsi)
L524:
	testq	%r8, %r8
	je	L693
	movl	4000944(%rax), %esi
	movl	4000940(%rax), %ecx
	movl	%esi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000032(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000940(%rax)
	cmpq	$1, %r8
	je	L694
	movl	4000948(%rax), %edx
	andl	$-2147483648, %esi
	movl	%edx, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	4000036(%rax), %ecx
	movl	%ecx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %esi
	cmovne	%edi, %ecx
	movl	%ecx, 4000944(%rax)
	cmpq	$2, %r8
	je	L695
	movl	4000952(%rax), %ecx
	andl	$-2147483648, %edx
	movl	%ecx, %esi
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	4000040(%rax), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %edx
	cmovne	%edi, %esi
	movl	%esi, 4000948(%rax)
	cmpq	$3, %r8
	je	L696
	movl	4000956(%rax), %edx
	andl	$-2147483648, %ecx
	movl	%edx, %esi
	andl	$2147483647, %esi
	orl	%esi, %ecx
	movl	%ecx, %esi
	shrl	%esi
	xorl	4000044(%rax), %esi
	movl	%esi, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %esi
	movl	%esi, 4000952(%rax)
	cmpq	$4, %r8
	je	L697
	movl	4000960(%rax), %esi
	andl	$-2147483648, %edx
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	4000048(%rax), %ecx
	movl	%ecx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %edx
	cmovne	%edi, %ecx
	movl	%ecx, 4000956(%rax)
	cmpq	$5, %r8
	je	L698
	movl	4000964(%rax), %edi
	andl	$-2147483648, %esi
	movl	%edi, %ecx
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000052(%rax), %edx
	andb	$1, %cl
	je	L540
	xorl	$-1727483681, %edx
L540:
	movl	%edx, 4000960(%rax)
	cmpq	$6, %r8
	je	L699
	movl	4000968(%rax), %ecx
	andl	$-2147483648, %edi
	andl	$2147483647, %ecx
	orl	%edi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4000056(%rax), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	movl	$389, %ecx
	cmovne	%esi, %edx
	movl	%edx, 4000964(%rax)
	movl	$234, %edx
L533:
	movq	-600(%rbp), %r10
	xorl	%esi, %esi
	xorl	%edi, %edi
	.align 4,0x90
L543:
	movq	-304(%rbp), %rbx
	vpand	(%r10,%rsi), %ymm14, %ymm1
	addq	$1, %rdi
	vpand	(%rbx,%rsi), %ymm13, %ymm0
	movq	-296(%rbp), %rbx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm12, %ymm0, %ymm0
	vpxor	(%rbx,%rsi), %ymm1, %ymm1
	vpcmpeqd	%ymm2, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm15
	vpblendvb	%ymm0, %ymm1, %ymm15, %ymm0
	vmovdqa	%ymm0, (%r10,%rsi)
	addq	$32, %rsi
	cmpq	%rdi, -608(%rbp)
	ja	L543
	movq	-464(%rbp), %rbx
	addq	%rbx, %rdx
	cmpq	-616(%rbp), %rbx
	je	L544
	leaq	(%rax,%rdx,4), %r11
	leaq	1(%rdx), %rbx
	movl	4000036(%r11), %esi
	movl	4000032(%r11), %r10d
	movl	%esi, %edi
	andl	$-2147483648, %r10d
	andl	$2147483647, %edi
	orl	%edi, %r10d
	movl	%r10d, %edi
	shrl	%edi
	xorl	3999124(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %r10d
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
	addq	-640(%rbp), %rcx
	je	L544
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %esi
	leaq	2(%rdx), %r10
	movl	4000036(%rbx), %r11d
	movl	%r11d, %edi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	3999124(%rbx), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%rbx)
	cmpq	$1, %rcx
	je	L544
	leaq	(%rax,%r10,4), %r12
	andl	$-2147483648, %r11d
	leaq	3(%rdx), %rbx
	movl	4000036(%r12), %edi
	movl	%edi, %r10d
	andl	$2147483647, %r10d
	orl	%r11d, %r10d
	movl	%r10d, %esi
	shrl	%esi
	xorl	3999124(%r12), %esi
	movl	%esi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r10d
	cmovne	%r11d, %esi
	movl	%esi, 4000032(%r12)
	cmpq	$2, %rcx
	je	L544
	leaq	(%rax,%rbx,4), %rbx
	andl	$-2147483648, %edi
	leaq	4(%rdx), %r11
	movl	4000036(%rbx), %esi
	movl	%esi, %r10d
	andl	$2147483647, %r10d
	orl	%r10d, %edi
	movl	%edi, %r10d
	shrl	%r10d
	xorl	3999124(%rbx), %r10d
	movl	%r10d, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %edi
	cmovne	%r12d, %r10d
	movl	%r10d, 4000032(%rbx)
	cmpq	$3, %rcx
	je	L544
	leaq	(%rax,%r11,4), %r11
	andl	$-2147483648, %esi
	leaq	5(%rdx), %rbx
	movl	4000036(%r11), %r10d
	movl	%r10d, %edi
	andl	$2147483647, %edi
	orl	%edi, %esi
	movl	%esi, %edi
	shrl	%edi
	xorl	3999124(%r11), %edi
	movl	%edi, %r12d
	xorl	$-1727483681, %r12d
	andl	$1, %esi
	cmovne	%r12d, %edi
	movl	%edi, 4000032(%r11)
	cmpq	$4, %rcx
	je	L544
	leaq	(%rax,%rbx,4), %r11
	andl	$-2147483648, %r10d
	addq	$6, %rdx
	movl	4000036(%r11), %edi
	movl	%edi, %esi
	andl	$2147483647, %esi
	orl	%esi, %r10d
	movl	%r10d, %esi
	shrl	%esi
	xorl	3999124(%r11), %esi
	movl	%esi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %r10d
	cmovne	%ebx, %esi
	movl	%esi, 4000032(%r11)
	cmpq	$5, %rcx
	je	L544
	leaq	(%rax,%rdx,4), %rsi
	andl	$-2147483648, %edi
	movl	4000036(%rsi), %ecx
	andl	$2147483647, %ecx
	orl	%edi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	3999124(%rsi), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4000032(%rsi)
L544:
	movl	4000032(%rax), %esi
	movl	4002524(%rax), %ecx
	movl	%esi, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	4001616(%rax), %edx
	movl	%edx, %edi
	xorl	$-1727483681, %edi
	andl	$1, %ecx
	movl	$1, %ecx
	cmovne	%edi, %edx
	movl	%edx, 4002524(%rax)
	jmp	L512
L699:
	movl	$390, %ecx
	movl	$233, %edx
	jmp	L533
L698:
	movl	$391, %ecx
	movl	$232, %edx
	jmp	L533
L697:
	movl	$392, %ecx
	movl	$231, %edx
	jmp	L533
L696:
	movl	$393, %ecx
	movl	$230, %edx
	jmp	L533
L695:
	movl	$394, %ecx
	movl	$229, %edx
	jmp	L533
L694:
	movl	$395, %ecx
	movl	$228, %edx
	jmp	L533
L693:
	movl	$396, %ecx
	movl	$227, %edx
	jmp	L533
L692:
	movl	$221, %ecx
	movl	$6, %edx
	jmp	L513
L691:
	movl	$222, %ecx
	movl	$5, %edx
	jmp	L513
L690:
	movl	$223, %ecx
	movl	$4, %edx
	jmp	L513
L689:
	movl	$224, %ecx
	movl	$3, %edx
	jmp	L513
L688:
	movl	$225, %ecx
	movl	$2, %edx
	jmp	L513
L687:
	movl	$226, %ecx
	movl	$1, %edx
	jmp	L513
L686:
	movl	$227, %ecx
	xorl	%edx, %edx
	jmp	L513
L1566:
	movl	%edi, %edx
	movq	-144(%rbp), %rdi
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	vmovdqa	%ymm5, -496(%rbp)
	vmovdqa	%ymm6, -464(%rbp)
	vmovdqa	%ymm7, -432(%rbp)
	vmovdqa	%ymm8, -400(%rbp)
	vzeroupper
	call	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	jmp	L1540
L1544:
	subq	$8, %rsp
	movq	%rdi, %rbx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	pushq	$0
	leaq	120(%rdi), %rdi
	vxorps	%xmm4, %xmm4, %xmm4
	vxorps	%xmm3, %xmm3, %xmm3
	pushq	$0
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	pushq	$0
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %esi
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	call	__ZNK8MosaicSC2IO6outputEbmmmmmmimimimifffff
	movq	48(%rbx), %rcx
	addq	$80, %rsp
	movq	-120(%rbp), %rax
	jmp	L49
LFE6544:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA6544:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC5Potts12hamming_distEmimm
__ZNK8MosaicSC5Potts12hamming_distEmimm:
LFB6546:
	movq	%rsi, %rax
	movq	%rcx, %r10
	movq	%r8, %rsi
	testq	%rax, %rax
	je	L1591
	leaq	528(%rdi), %r8
	leaq	504(%rdi), %rcx
	movq	%r10, %rdi
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	cmpq	$4, %rax
	je	L1595
	cmpq	$2, %rax
	je	L1596
	cmpq	$3, %rax
	je	L1597
	jmp	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	.align 4,0x90
L1591:
	vxorps	%xmm0, %xmm0, %xmm0
	ret
	.align 4,0x90
L1595:
	jmp	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	.align 4,0x90
L1597:
	jmp	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	.align 4,0x90
L1596:
	jmp	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
LFE6546:
	.cstring
lC11:
	.ascii "vector::_M_default_append\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts9massvarSCEv
__ZN8MosaicSC5Potts9massvarSCEv:
LFB6547:
	leaq	8(%rsp), %r10
LCFI25:
	andq	$-32, %rsp
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	-8(%r10)
	pushq	%rbp
LCFI26:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	leaq	-176(%rbp), %r9
	pushq	%r13
	pushq	%r12
LCFI27:
	movq	%r9, %r12
	pushq	%r10
LCFI28:
	leaq	120(%r9), %r10
	pushq	%rbx
	movq	%r10, %r15
	subq	$192, %rsp
LCFI29:
	movq	216(%rsi), %rbx
	movq	224(%rsi), %r11
	vmovdqa	%ymm0, -176(%rbp)
	vmovdqa	%ymm0, -144(%rbp)
	vmovdqa	%ymm0, -112(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, -184(%rbp)
	movq	%rsi, -208(%rbp)
	vmovaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	%r9, -192(%rbp)
	vzeroupper
L1610:
	movq	8(%r12), %rcx
	movq	(%r12), %r14
	movq	%r11, %r13
	subq	%rbx, %r13
	movq	%rcx, %r8
	sarq	$7, %r13
	subq	%r14, %r8
	movq	%r8, %rax
	sarq	$2, %rax
	cmpq	%rax, %r13
	ja	L1658
	jnb	L1600
	leaq	(%r14,%r13,4), %rax
	movq	%rax, 8(%r12)
L1600:
	addq	$24, %r12
	cmpq	%r12, %r15
	jne	L1610
	movq	-192(%rbp), %r9
	movq	-176(%rbp), %rax
	testq	%r13, %r13
	je	L1611
	movq	-128(%rbp), %rdi
	movq	-104(%rbp), %rsi
	addq	$32, %rbx
	xorl	%ecx, %ecx
	movq	-152(%rbp), %r8
	movq	-80(%rbp), %r10
	jmp	L1620
	.align 4,0x90
L1659:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
L1613:
	movq	32(%rbx), %rdx
	subq	24(%rbx), %rdx
	vmovss	%xmm0, (%r8,%rcx,4)
	sarq	$3, %rdx
	js	L1614
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
L1615:
	movq	56(%rbx), %rdx
	subq	48(%rbx), %rdx
	vmovss	%xmm0, (%rdi,%rcx,4)
	sarq	$3, %rdx
	js	L1616
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
L1617:
	movq	80(%rbx), %rdx
	subq	72(%rbx), %rdx
	vmovss	%xmm0, (%rsi,%rcx,4)
	sarq	$3, %rdx
	js	L1618
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
L1619:
	vmovss	%xmm0, (%r10,%rcx,4)
	vmovss	(%r8,%rcx,4), %xmm1
	subq	$-128, %rbx
	vaddss	(%rdi,%rcx,4), %xmm1, %xmm1
	vaddss	(%rsi,%rcx,4), %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, (%rax,%rcx,4)
	addq	$1, %rcx
	cmpq	%r13, %rcx
	je	L1611
L1620:
	movq	8(%rbx), %rdx
	subq	(%rbx), %rdx
	sarq	$3, %rdx
	jns	L1659
	movq	%rdx, %r11
	andl	$1, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%r11
	orq	%rdx, %r11
	vcvtsi2ssq	%r11, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	L1613
	.align 4,0x90
L1618:
	movq	%rdx, %r11
	andl	$1, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%r11
	orq	%rdx, %r11
	vcvtsi2ssq	%r11, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	L1619
	.align 4,0x90
L1616:
	movq	%rdx, %r11
	andl	$1, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%r11
	orq	%rdx, %r11
	vcvtsi2ssq	%r11, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	L1617
	.align 4,0x90
L1614:
	movq	%rdx, %r11
	andl	$1, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%r11
	orq	%rdx, %r11
	vcvtsi2ssq	%r11, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	L1615
	.align 4,0x90
L1658:
	movq	%r13, %r9
	subq	%rax, %r9
	je	L1600
	movq	16(%r12), %rdx
	movq	%r11, -200(%rbp)
	subq	%rcx, %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %r9
	ja	L1601
	leaq	0(,%r9,4), %r14
	movq	%rcx, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	_memset
	movq	-200(%rbp), %r11
	movq	%rax, %rcx
	addq	%r14, %rcx
	movq	%rcx, 8(%r12)
	jmp	L1600
	.align 4,0x90
L1611:
	movq	%r9, %rsi
	movq	-184(%rbp), %rdi
	vxorps	%xmm4, %xmm4, %xmm4
	movq	8(%rsi), %r8
	movq	%r8, %rdx
	subq	%rax, %rdx
	sarq	$2, %rdx
	js	L1621
L1660:
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ssq	%rdx, %xmm2, %xmm2
	cmpq	%rax, %r8
	je	L1623
L1661:
	movq	%rax, %rcx
	movq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	.align 4,0x90
L1624:
	vaddss	(%rdx), %xmm0, %xmm0
	addq	$4, %rdx
	cmpq	%rdx, %r8
	jne	L1624
	vdivss	%xmm2, %xmm0, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vmovss	%xmm0, (%rdi)
	.align 4,0x90
L1626:
	vaddss	(%rax), %xmm3, %xmm3
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L1626
	vdivss	%xmm2, %xmm3, %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	.align 4,0x90
L1628:
	vmovss	(%rcx), %xmm0
	addq	$4, %rcx
	vsubss	%xmm3, %xmm0, %xmm0
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	cmpq	%rax, %rcx
	jne	L1628
	vdivss	%xmm2, %xmm1, %xmm2
L1635:
	addq	$24, %rsi
	vmovss	%xmm2, 20(%rdi)
	addq	$4, %rdi
	cmpq	%rsi, %r12
	je	L1629
	movq	8(%rsi), %r8
	movq	(%rsi), %rax
	movq	%r8, %rdx
	subq	%rax, %rdx
	sarq	$2, %rdx
	jns	L1660
L1621:
	movq	%rdx, %rcx
	andl	$1, %edx
	vxorps	%xmm2, %xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	vcvtsi2ssq	%rcx, %xmm2, %xmm2
	vaddss	%xmm2, %xmm2, %xmm2
	cmpq	%rax, %r8
	jne	L1661
L1623:
	vdivss	%xmm2, %xmm4, %xmm2
	vmovss	%xmm2, (%rdi)
	jmp	L1635
	.align 4,0x90
L1629:
	leaq	96(%r9), %rbx
	leaq	-24(%r9), %r12
L1631:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L1632
	call	__ZdlPv
	subq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L1631
L1656:
	movq	-184(%rbp), %rax
	addq	$192, %rsp
	popq	%rbx
	popq	%r10
LCFI30:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI31:
	ret
	.align 4,0x90
L1632:
LCFI32:
	subq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L1631
	jmp	L1656
L1601:
	movabsq	$4611686018427387903, %rdx
	subq	%rax, %rdx
	cmpq	%rdx, %r9
	ja	L1662
	cmpq	%r9, %rax
	movq	%r9, %rdx
	cmovnb	%rax, %rdx
	addq	%rdx, %rax
	jc	L1637
	movabsq	$4611686018427387903, %rsi
	cmpq	%rsi, %rax
	ja	L1637
	testq	%rax, %rax
	je	L1638
	leaq	0(,%rax,4), %rbx
L1605:
	movq	%rbx, %rdi
	movq	%r9, -224(%rbp)
	movq	%r8, -216(%rbp)
	movq	%rcx, -200(%rbp)
	call	__Znwm
	movq	-200(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-224(%rbp), %r9
	movq	%rax, %r13
	addq	%rax, %rbx
L1606:
	cmpq	%r14, %rcx
	je	L1607
	movq	%r8, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r9, -216(%rbp)
	movq	%r8, -200(%rbp)
	call	_memmove
	movq	-200(%rbp), %r8
	movq	-216(%rbp), %r9
	xorl	%esi, %esi
	salq	$2, %r9
	addq	%r13, %r8
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r9, -200(%rbp)
	call	_memset
	movq	-200(%rbp), %r9
	movq	%rax, %r8
	addq	%r9, %r8
L1608:
	movq	%r14, %rdi
	movq	%r8, -200(%rbp)
	call	__ZdlPv
	movq	-200(%rbp), %r8
L1609:
	movq	-208(%rbp), %rax
	movq	%rbx, 16(%r12)
	movq	%r13, (%r12)
	movq	224(%rax), %r11
	movq	216(%rax), %rbx
	movq	%r8, 8(%r12)
	movq	%r11, %r13
	subq	%rbx, %r13
	sarq	$7, %r13
	jmp	L1600
L1637:
	movq	$-4, %rbx
	jmp	L1605
L1607:
	salq	$2, %r9
	addq	%r13, %r8
	xorl	%esi, %esi
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r9, -200(%rbp)
	call	_memset
	movq	-200(%rbp), %r9
	movq	%rax, %r8
	addq	%r9, %r8
	testq	%r14, %r14
	je	L1609
	jmp	L1608
L1638:
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	L1606
L1662:
	leaq	lC11(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE6547:
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA6547:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts6set_gEEv
__ZN8MosaicSC5Potts6set_gEEv:
LFB6555:
	pushq	%r14
LCFI33:
	pushq	%r13
LCFI34:
	pushq	%r12
LCFI35:
	pushq	%rbp
LCFI36:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI37:
	movq	576(%rdi), %rbx
	movq	584(%rdi), %r12
	cmpq	%rbx, %r12
	je	L1669
	leaq	24(%rbx), %rax
	subq	%rax, %r12
	andq	$-8, %r12
	addq	%rax, %r12
	.align 4,0x90
L1668:
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	cmpq	%rdi, %rax
	je	L1667
	leaq	4(%rdi), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %rdx
	call	_memset
L1667:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L1668
L1669:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rax
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	L1687
	.align 4,0x90
L1677:
	testq	%rdx, %rdx
	je	L1689
	leaq	(%r14,%r14,2), %r12
	xorl	%ebx, %ebx
	salq	$3, %r12
	.align 4,0x90
L1676:
	movq	504(%rbp), %rax
	leaq	0(,%rbx,4), %r13
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rax,%r12), %rax
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	L1672
	movq	528(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	528(%rbp), %r8
	leaq	504(%rbp), %rcx
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r9
	movq	(%rdx,%r12), %rdx
	movl	(%rdx,%rbx,4), %edx
	cmpq	$4, %rax
	je	L1690
	cmpq	$2, %rax
	je	L1691
	cmpq	$3, %rax
	je	L1692
	call	__ZN8MosaicSC1CILj1EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
L1672:
	movq	576(%rbp), %rax
	addq	$1, %rbx
	movq	(%rax,%r12), %rax
	vmovss	%xmm0, (%rax,%r13)
	cmpq	%rdx, %rbx
	jb	L1676
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rax
L1671:
	addq	$1, %r14
	cmpq	%rax, %r14
	jb	L1677
L1687:
	popq	%rbx
LCFI38:
	popq	%rbp
LCFI39:
	popq	%r12
LCFI40:
	popq	%r13
LCFI41:
	popq	%r14
LCFI42:
	ret
	.align 4,0x90
L1692:
LCFI43:
	call	__ZN8MosaicSC1CILj3EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	jmp	L1672
	.align 4,0x90
L1690:
	call	__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	jmp	L1672
	.align 4,0x90
L1691:
	call	__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	jmp	L1672
L1689:
	addq	$1, %r14
	cmpq	%rax, %r14
	jb	L1671
	popq	%rbx
LCFI44:
	popq	%rbp
LCFI45:
	popq	%r12
LCFI46:
	popq	%r13
LCFI47:
	popq	%r14
LCFI48:
	ret
LFE6555:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts4eTotEv
__ZN8MosaicSC5Potts4eTotEv:
LFB6554:
	pushq	%rbp
LCFI49:
	pushq	%rbx
LCFI50:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI51:
	call	__ZN8MosaicSC5Potts6set_gEEv
	movq	560(%rbx), %rax
	movq	552(%rbx), %r8
	cmpq	%rax, %r8
	je	L1697
	leaq	4(%r8), %rdx
	movq	%r8, %rdi
	xorl	%esi, %esi
	subq	%rdx, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %rdx
	call	_memset
	movq	%rax, %r8
L1697:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %r11
	testq	%r11, %r11
	je	L1709
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdi
	testq	%rdi, %rdi
	je	L1709
	movq	576(%rbx), %rbp
	movq	504(%rbx), %rbx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	vmovss	lC12(%rip), %xmm1
	.align 4,0x90
L1699:
	movq	0(%rbp,%r9), %rsi
	movq	(%rbx,%r9), %rcx
	xorl	%eax, %eax
	.align 4,0x90
L1698:
	movq	(%rcx,%rax,8), %rdx
	vmovss	(%rsi,%rax,4), %xmm0
	addq	$1, %rax
	leaq	(%r8,%rdx,4), %rdx
	vfmadd213ss	(%rdx), %xmm1, %xmm0
	vmovss	%xmm0, (%rdx)
	cmpq	%rdi, %rax
	jne	L1698
	addq	$1, %r10
	addq	$24, %r9
	cmpq	%r11, %r10
	jne	L1699
L1709:
	addq	$8, %rsp
LCFI52:
	popq	%rbx
LCFI53:
	popq	%rbp
LCFI54:
	ret
LFE6554:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts16set_connectivityEv
__ZN8MosaicSC5Potts16set_connectivityEv:
LFB6588:
	pushq	%r15
LCFI55:
	pushq	%r14
LCFI56:
	pushq	%r13
LCFI57:
	pushq	%r12
LCFI58:
	pushq	%rbp
LCFI59:
	pushq	%rbx
LCFI60:
	subq	$72, %rsp
LCFI61:
	movq	216(%rdi), %rax
	movq	224(%rdi), %rbx
	movq	%rdi, 8(%rsp)
	cmpq	%rbx, %rax
	je	L1737
	leaq	128(%rbx), %r15
	leaq	128(%rax), %r14
	movq	%r15, 16(%rsp)
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %r12
L1716:
	leaq	-96(%r14), %r13
L1715:
	movq	0(%r13), %rax
	movq	8(%r13), %rbx
	cmpq	%rbx, %rax
	je	L1713
	movq	8(%rsp), %rdx
	movq	%rax, %r15
	leaq	504(%rdx), %rbp
	.align 4,0x90
L1714:
	movq	(%r15), %rdi
	addq	$8, %r15
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	(%rdi), %rcx
	call	*16(%rcx)
	cmpq	%rbx, %r15
	jne	L1714
L1713:
	addq	$24, %r13
	cmpq	%r14, %r13
	jne	L1715
	leaq	128(%r13), %r14
	cmpq	16(%rsp), %r14
	jne	L1716
	movq	8(%rsp), %rax
	movq	224(%rax), %rbx
	movq	216(%rax), %r13
L1712:
	movq	$32, 40(%rsp)
	addq	$624, %rax
	movq	%rax, 24(%rsp)
	movq	%rax, %rdx
	movq	$1, 56(%rsp)
L1734:
	movq	8(%rdx), %rax
	movq	(%rdx), %rcx
	cmpq	%rax, %rcx
	je	L1717
	leaq	4(%rcx), %rdx
	movq	%rcx, %rdi
	xorl	%esi, %esi
	subq	%rdx, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %rdx
	call	_memset
	movq	%rax, %rcx
L1717:
	movq	8(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	48(%rax), %rax
	movq	136(%rax), %rax
	movq	-8(%rax,%rdx,8), %rax
	movq	%rax, 16(%rsp)
	cmpq	$1, %rdx
	je	L1738
	cmpq	$2, %rdx
	je	L1739
	xorl	%eax, %eax
	cmpq	$3, %rdx
	sete	%al
	leaq	6(,%rax,4), %rax
	movq	%rax, 32(%rsp)
L1718:
	movq	40(%rsp), %rax
	xorl	%r12d, %r12d
	subq	$-128, %rax
	movq	%rax, 48(%rsp)
	cmpq	%r13, %rbx
	je	L1741
	.align 4,0x90
L1752:
	movq	48(%rsp), %rax
	addq	40(%rsp), %r13
	leaq	-128(%rbx,%rax), %r14
	xorl	%ebx, %ebx
	.align 4,0x90
L1722:
	movq	0(%r13), %rbp
	movq	8(%r13), %r15
	cmpq	%r15, %rbp
	je	L1720
	.align 4,0x90
L1721:
	movq	0(%rbp), %rdi
	movq	%r12, %rsi
	addq	$8, %rbp
	movq	(%rdi), %rax
	call	*24(%rax)
	addl	%eax, %ebx
	cmpq	%rbp, %r15
	jne	L1721
L1720:
	subq	$-128, %r13
	cmpq	%r13, %r14
	jne	L1722
	movq	24(%rsp), %rax
	movq	(%rax), %rcx
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	L1723
L1753:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%ebx, %xmm0, %xmm0
	js	L1724
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
L1725:
	vdivss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%r12,4)
	addq	$1, %r12
	cmpq	%r12, 32(%rsp)
	je	L1751
L1727:
	movq	8(%rsp), %rax
	movq	224(%rax), %rbx
	movq	216(%rax), %r13
	cmpq	%r13, %rbx
	jne	L1752
L1741:
	movq	16(%rsp), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jne	L1753
	.align 4,0x90
L1723:
	movl	$0x00000000, (%rcx,%r12,4)
	addq	$1, %r12
	cmpq	%r12, 32(%rsp)
	jne	L1727
	vxorps	%xmm0, %xmm0, %xmm0
L1728:
	movq	56(%rsp), %rax
	movq	8(%rsp), %rdx
	addq	$24, 24(%rsp)
	vmovss	%xmm0, 720(%rdx,%rax,4)
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	addq	$24, 40(%rsp)
	cmpq	$5, %rax
	je	L1749
	movq	224(%rdx), %rbx
	movq	216(%rdx), %r13
	movq	24(%rsp), %rdx
	jmp	L1734
L1724:
	movq	%rax, %rdx
	shrq	%rax
	vxorps	%xmm1, %xmm1, %xmm1
	andl	$1, %edx
	orq	%rdx, %rax
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vaddss	%xmm1, %xmm1, %xmm1
	jmp	L1725
L1751:
	movq	24(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rax), %rdx
	cmpq	%rcx, %rdx
	je	L1736
	movq	%rcx, %rax
	movq	%rdx, %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	.align 4,0x90
L1730:
	vaddss	(%rax), %xmm0, %xmm0
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	L1730
L1736:
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	js	L1731
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
L1732:
	vdivss	%xmm1, %xmm0, %xmm0
	jmp	L1728
L1749:
	addq	$72, %rsp
LCFI62:
	popq	%rbx
LCFI63:
	popq	%rbp
LCFI64:
	popq	%r12
LCFI65:
	popq	%r13
LCFI66:
	popq	%r14
LCFI67:
	popq	%r15
LCFI68:
	ret
L1731:
LCFI69:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm1, %xmm1
	vaddss	%xmm1, %xmm1, %xmm1
	jmp	L1732
L1737:
	movq	%rbx, %r13
	movq	%rdi, %rax
	jmp	L1712
L1739:
	movq	$2, 32(%rsp)
	jmp	L1718
L1738:
	movq	$4, 32(%rsp)
	jmp	L1718
LFE6588:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev
	.weak_definition __ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev
__ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev:
LFB7040:
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	cmpq	%rax, %rdx
	je	L1763
	pushq	%r12
LCFI70:
	movq	%rdi, %r12
	pushq	%rbp
LCFI71:
	pushq	%rbx
LCFI72:
	leaq	24(%rax), %rbx
	subq	%rbx, %rdx
	shrq	$3, %rdx
	leaq	24(%rax,%rdx,8), %rbp
	jmp	L1756
	.align 4,0x90
L1768:
	call	__ZdlPv
	movq	%rbx, %rax
	cmpq	%rbx, %rbp
	je	L1758
L1759:
	addq	$24, %rbx
L1756:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	L1768
	movq	%rbx, %rax
	cmpq	%rbp, %rbx
	jne	L1759
L1758:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	L1761
	popq	%rbx
LCFI73:
	movq	%rax, %rdi
	popq	%rbp
LCFI74:
	popq	%r12
LCFI75:
	jmp	__ZdlPv
	.align 4,0x90
L1761:
LCFI76:
	popq	%rbx
LCFI77:
	popq	%rbp
LCFI78:
	popq	%r12
LCFI79:
	ret
	.align 4,0x90
L1763:
LCFI80:
	testq	%rax, %rax
	je	L1765
	movq	%rax, %rdi
	jmp	__ZdlPv
	.align 4,0x90
L1765:
	ret
LFE7040:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIS_ImSaImEESaIS1_EED1Ev
	.weak_definition __ZNSt6vectorIS_ImSaImEESaIS1_EED1Ev
__ZNSt6vectorIS_ImSaImEESaIS1_EED1Ev:
LFB7055:
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	cmpq	%rax, %rdx
	je	L1778
	pushq	%r12
LCFI81:
	movq	%rdi, %r12
	pushq	%rbp
LCFI82:
	pushq	%rbx
LCFI83:
	leaq	24(%rax), %rbx
	subq	%rbx, %rdx
	shrq	$3, %rdx
	leaq	24(%rax,%rdx,8), %rbp
	jmp	L1771
	.align 4,0x90
L1783:
	call	__ZdlPv
	movq	%rbx, %rax
	cmpq	%rbx, %rbp
	je	L1773
L1774:
	addq	$24, %rbx
L1771:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	L1783
	movq	%rbx, %rax
	cmpq	%rbp, %rbx
	jne	L1774
L1773:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	L1776
	popq	%rbx
LCFI84:
	movq	%rax, %rdi
	popq	%rbp
LCFI85:
	popq	%r12
LCFI86:
	jmp	__ZdlPv
	.align 4,0x90
L1776:
LCFI87:
	popq	%rbx
LCFI88:
	popq	%rbp
LCFI89:
	popq	%r12
LCFI90:
	ret
	.align 4,0x90
L1778:
LCFI91:
	testq	%rax, %rax
	je	L1780
	movq	%rax, %rdi
	jmp	__ZdlPv
	.align 4,0x90
L1780:
	ret
LFE7055:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIfSaIfEE17_M_default_appendEm
	.weak_definition __ZNSt6vectorIfSaIfEE17_M_default_appendEm
__ZNSt6vectorIfSaIfEE17_M_default_appendEm:
LFB7495:
	testq	%rsi, %rsi
	je	L1807
	pushq	%r15
LCFI92:
	pushq	%r14
LCFI93:
	pushq	%r13
LCFI94:
	pushq	%r12
LCFI95:
	movq	%rdi, %r12
	pushq	%rbp
LCFI96:
	pushq	%rbx
LCFI97:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI98:
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	%rsi, %rax
	jb	L1786
	salq	$2, %rbx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	_memset
	addq	%rax, %rbx
	movq	%rbx, 8(%r12)
	addq	$8, %rsp
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
L1807:
LCFI106:
	ret
	.align 4,0x90
L1786:
LCFI107:
	movabsq	$4611686018427387903, %rdx
	movq	(%rdi), %r15
	movq	%rcx, %r14
	movq	%rdx, %rsi
	subq	%r15, %r14
	movq	%r14, %rax
	sarq	$2, %rax
	subq	%rax, %rsi
	cmpq	%rsi, %rbx
	ja	L1810
	cmpq	%rax, %rbx
	movq	%rax, %rsi
	cmovnb	%rbx, %rsi
	addq	%rsi, %rax
	jc	L1796
	cmpq	%rdx, %rax
	ja	L1796
	testq	%rax, %rax
	je	L1797
	leaq	0(,%rax,4), %rbp
L1790:
	movq	%rbp, %rdi
	call	__Znwm
	movq	8(%r12), %rcx
	movq	(%r12), %r15
	movq	%rax, %r13
	addq	%rax, %rbp
	movq	%rcx, %r14
	subq	%r15, %r14
L1791:
	cmpq	%rcx, %r15
	je	L1792
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
L1793:
	movq	%r15, %rdi
	call	__ZdlPv
L1794:
	movq	%r13, (%r12)
	movq	%rbx, 8(%r12)
	movq	%rbp, 16(%r12)
	addq	$8, %rsp
LCFI108:
	popq	%rbx
LCFI109:
	popq	%rbp
LCFI110:
	popq	%r12
LCFI111:
	popq	%r13
LCFI112:
	popq	%r14
LCFI113:
	popq	%r15
LCFI114:
	ret
	.align 4,0x90
L1792:
LCFI115:
	addq	%r13, %r14
	salq	$2, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %rdi
	addq	%r14, %rbx
	call	_memset
	testq	%r15, %r15
	je	L1794
	jmp	L1793
	.align 4,0x90
L1796:
	movq	$-4, %rbp
	jmp	L1790
	.align 4,0x90
L1797:
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	L1791
L1810:
	leaq	lC11(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7495:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	.weak_definition __ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
__ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_:
LFB7614:
	pushq	%r15
LCFI116:
	pushq	%r14
LCFI117:
	pushq	%r13
LCFI118:
	pushq	%r12
LCFI119:
	pushq	%rbp
LCFI120:
	pushq	%rbx
LCFI121:
	subq	$8, %rsp
LCFI122:
	movq	8(%rdi), %rbx
	cmpq	16(%rdi), %rbx
	je	L1812
	movq	(%rsi), %rax
	addq	$8, %rbx
	movq	%rax, -8(%rbx)
	movq	%rbx, 8(%rdi)
L1813:
	addq	$8, %rsp
LCFI123:
	leaq	-8(%rbx), %rax
	popq	%rbx
LCFI124:
	popq	%rbp
LCFI125:
	popq	%r12
LCFI126:
	popq	%r13
LCFI127:
	popq	%r14
LCFI128:
	popq	%r15
LCFI129:
	ret
	.align 4,0x90
L1812:
LCFI130:
	movq	%rbx, %r15
	subq	(%rdi), %r15
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	%r15, %rax
	sarq	$3, %rax
	je	L1819
	leaq	(%rax,%rax), %rdx
	movq	$-8, %r14
	cmpq	%rdx, %rax
	jbe	L1828
L1814:
	movq	%r14, %rdi
	call	__Znwm
	movq	%rax, %r13
L1815:
	movq	(%r12), %rax
	movq	0(%rbp), %r12
	movq	%rax, 0(%r13,%r15)
	movq	%rbx, %r15
	subq	%r12, %r15
	cmpq	%rbx, %r12
	je	L1816
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memmove
L1816:
	movq	8(%rbp), %rax
	leaq	8(%r13,%r15), %rcx
	movq	%rax, %r15
	subq	%rbx, %r15
	cmpq	%rbx, %rax
	je	L1817
	movq	%rcx, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rsi
	call	_memmove
	movq	%rax, %rcx
L1817:
	leaq	(%rcx,%r15), %rbx
	testq	%r12, %r12
	je	L1818
	movq	%r12, %rdi
	call	__ZdlPv
L1818:
	movq	%r13, 0(%rbp)
	addq	%r14, %r13
	movq	%rbx, 8(%rbp)
	movq	%r13, 16(%rbp)
	jmp	L1813
	.align 4,0x90
L1819:
	movl	$8, %r14d
	jmp	L1814
	.align 4,0x90
L1828:
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rdx
	ja	L1814
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	testq	%rdx, %rdx
	je	L1815
	salq	$4, %rax
	movq	%rax, %r14
	jmp	L1814
LFE7614:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE:
LFB6564:
	pushq	%r15
LCFI131:
	pushq	%r14
LCFI132:
	pushq	%r13
LCFI133:
	pushq	%r12
LCFI134:
	pushq	%rbp
LCFI135:
	pushq	%rbx
LCFI136:
	leaq	(%rsi,%rsi,2), %rbx
	salq	$3, %rbx
	subq	$72, %rsp
LCFI137:
	movq	240(%rdi), %rax
	movq	(%rax,%rbx), %rax
	leaq	(%rax,%rdx,8), %rax
	cmpq	$0, (%rax)
	jne	L1862
	movq	504(%rdi), %r8
	movq	(%r8,%rbx), %r8
	movq	(%r8,%rdx,8), %r9
	testq	%r9, %r9
	jne	L1864
L1862:
	addq	$72, %rsp
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
	.align 4,0x90
L1864:
LCFI145:
	movq	%rdi, %r15
	movq	(%rcx), %rdi
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%rsi, %rbp
	leaq	1(%rdi), %rdx
	movq	%rdx, (%rax)
	cmpq	$1, %r9
	je	L1865
	cmpq	$2, %r9
	je	L1866
	cmpq	$3, %r9
	je	L1867
	cmpq	$4, %r9
	jne	L1862
	vmovd	%rsi, %xmm4
	movq	112(%rcx), %r14
	movl	$64, %edi
	leaq	0(,%r12,4), %rax
	movq	%rax, 16(%rsp)
	vpinsrq	$1, %r12, %xmm4, %xmm0
	movq	528(%r15), %rax
	subq	104(%rcx), %r14
	movq	(%rax,%rbx), %rax
	sarq	$3, %r14
	movl	(%rax,%r12,4), %edx
	vmovaps	%xmm0, 48(%rsp)
	movl	%edx, (%rsp)
	call	__Znwm
	movl	(%rsp), %edx
	movq	%r14, %rsi
	leaq	48(%rsp), %rcx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	__ZN8MosaicSC1CILj4EEC1EmiRKSt5arrayImLm2EE
	movq	(%rsp), %rax
	leaq	40(%rsp), %rsi
	leaq	104(%r13), %rdi
	movq	%rax, 40(%rsp)
	call	__ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	movq	__ZN8MosaicSC1CILj4EE3itrE@GOTPCREL(%rip), %r14
	jmp	L1851
	.align 4,0x90
L1849:
	movq	__ZN8MosaicSC1CILj4EE3itrE@GOTPCREL(%rip), %rax
	addq	$64, %r14
	addq	$384, %rax
	cmpq	%rax, %r14
	je	L1862
L1851:
	movq	528(%r15), %rax
	movl	(%r14), %r11d
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	16(%rsp), %rcx
	leaq	48(%r14), %rdx
	movq	(%rax,%rbx), %rax
	movl	%r11d, (%rsp)
	movl	(%rax,%rcx), %r10d
	leaq	16(%r14), %rax
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %rcx
	cmpl	%r10d, %r11d
	movl	%r10d, 12(%rsp)
	cmove	%rax, %rdx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	504(%r15), %rsi
	movq	8(%r14), %rdi
	leaq	(%rax,%rax,2), %rcx
	movl	(%rsp), %r11d
	movl	12(%rsp), %r10d
	movq	(%rsi,%rcx,8), %rsi
	cmpq	%rdi, (%rsi,%rdx,8)
	jne	L1849
	movq	528(%r15), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movl	(%rcx,%rdx,4), %esi
	movl	4(%r14), %ecx
	cmpl	%r10d, %r11d
	je	L1850
	cmpl	$1, %ecx
	je	L1857
	cmpl	$-1, %ecx
	movl	$1, %edi
	cmove	%edi, %ecx
L1850:
	cmpl	%ecx, %esi
	jne	L1849
	movq	%r13, %rcx
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
	jmp	L1849
	.align 4,0x90
L1865:
	vmovd	%rsi, %xmm1
	movq	40(%rcx), %r14
	movl	$56, %edi
	leaq	0(,%r12,4), %rax
	movq	%rax, 16(%rsp)
	vpinsrq	$1, %r12, %xmm1, %xmm0
	movq	528(%r15), %rax
	subq	32(%rcx), %r14
	movq	(%rax,%rbx), %rax
	sarq	$3, %r14
	movl	(%rax,%r12,4), %edx
	vmovaps	%xmm0, 48(%rsp)
	movl	%edx, (%rsp)
	call	__Znwm
	movl	(%rsp), %edx
	movq	%r14, %rsi
	leaq	48(%rsp), %rcx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	__ZN8MosaicSC1CILj1EEC1EmiRKSt5arrayImLm2EE
	movq	(%rsp), %rax
	leaq	40(%rsp), %rsi
	leaq	32(%r13), %rdi
	movq	%rax, 40(%rsp)
	call	__ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	movq	__ZN8MosaicSC1CILj1EE3itrE@GOTPCREL(%rip), %rax
	leaq	48(%rax), %r14
	addq	$304, %rax
	movq	%rax, 24(%rsp)
	jmp	L1835
	.align 4,0x90
L1833:
	addq	$64, %r14
	cmpq	24(%rsp), %r14
	je	L1862
L1835:
	movq	16(%rsp), %rdi
	movl	-48(%r14), %r11d
	leaq	-32(%r14), %rdx
	movq	%r12, %rsi
	movq	528(%r15), %rax
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %rcx
	movl	%r11d, (%rsp)
	movq	(%rax,%rbx), %rax
	movl	(%rax,%rdi), %r10d
	movq	%rbp, %rdi
	cmpl	%r10d, %r11d
	movl	%r10d, 12(%rsp)
	cmovne	%r14, %rdx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	504(%r15), %rsi
	movq	-40(%r14), %rdi
	leaq	(%rax,%rax,2), %rcx
	movl	(%rsp), %r11d
	movl	12(%rsp), %r10d
	movq	(%rsi,%rcx,8), %rsi
	cmpq	%rdi, (%rsi,%rdx,8)
	jne	L1833
	movq	528(%r15), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movl	(%rcx,%rdx,4), %esi
	movl	-44(%r14), %ecx
	cmpl	%r10d, %r11d
	je	L1834
	cmpl	$1, %ecx
	je	L1853
	cmpl	$-1, %ecx
	movl	$1, %edi
	cmove	%edi, %ecx
L1834:
	cmpl	%ecx, %esi
	jne	L1833
	movq	%r13, %rcx
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
	jmp	L1833
	.align 4,0x90
L1853:
	movl	$-1, %ecx
	jmp	L1834
	.align 4,0x90
L1866:
	vmovd	%rsi, %xmm2
	movq	64(%rcx), %r14
	movl	$48, %edi
	leaq	0(,%r12,4), %rax
	movq	%rax, 16(%rsp)
	vpinsrq	$1, %r12, %xmm2, %xmm0
	movq	528(%r15), %rax
	subq	56(%rcx), %r14
	movq	(%rax,%rbx), %rax
	sarq	$3, %r14
	movl	(%rax,%r12,4), %edx
	vmovaps	%xmm0, 48(%rsp)
	movl	%edx, (%rsp)
	call	__Znwm
	movl	(%rsp), %edx
	movq	%r14, %rsi
	leaq	48(%rsp), %rcx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	__ZN8MosaicSC1CILj2EEC1EmiRKSt5arrayImLm2EE
	movq	(%rsp), %rax
	leaq	40(%rsp), %rsi
	leaq	56(%r13), %rdi
	movq	%rax, 40(%rsp)
	call	__ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	movq	__ZN8MosaicSC1CILj2EE3itrE@GOTPCREL(%rip), %r14
	jmp	L1841
	.align 4,0x90
L1839:
	movq	__ZN8MosaicSC1CILj2EE3itrE@GOTPCREL(%rip), %rax
	addq	$64, %r14
	subq	$-128, %rax
	cmpq	%rax, %r14
	je	L1862
L1841:
	movq	16(%rsp), %rdi
	movl	(%r14), %r11d
	leaq	48(%r14), %rdx
	movq	%r12, %rsi
	movq	528(%r15), %rax
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %rcx
	movl	%r11d, (%rsp)
	movq	(%rax,%rbx), %rax
	movl	(%rax,%rdi), %r10d
	leaq	16(%r14), %rax
	movq	%rbp, %rdi
	cmpl	%r10d, %r11d
	movl	%r10d, 12(%rsp)
	cmove	%rax, %rdx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	504(%r15), %rsi
	movq	8(%r14), %rdi
	leaq	(%rax,%rax,2), %rcx
	movl	(%rsp), %r11d
	movl	12(%rsp), %r10d
	movq	(%rsi,%rcx,8), %rsi
	cmpq	%rdi, (%rsi,%rdx,8)
	jne	L1839
	movq	528(%r15), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movl	(%rcx,%rdx,4), %esi
	movl	4(%r14), %ecx
	cmpl	%r10d, %r11d
	je	L1840
	cmpl	$1, %ecx
	je	L1854
	cmpl	$-1, %ecx
	movl	$1, %edi
	cmove	%edi, %ecx
L1840:
	cmpl	%ecx, %esi
	jne	L1839
	movq	%r13, %rcx
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
	jmp	L1839
	.align 4,0x90
L1867:
	vmovd	%rsi, %xmm3
	movq	88(%rcx), %r14
	movl	$80, %edi
	leaq	0(,%r12,4), %rax
	movq	%rax, 24(%rsp)
	vpinsrq	$1, %r12, %xmm3, %xmm0
	movq	528(%r15), %rax
	subq	80(%rcx), %r14
	movq	(%rax,%rbx), %rax
	sarq	$3, %r14
	movl	(%rax,%r12,4), %edx
	vmovaps	%xmm0, 48(%rsp)
	movl	%edx, (%rsp)
	call	__Znwm
	movl	(%rsp), %edx
	movq	%r14, %rsi
	leaq	48(%rsp), %rcx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	__ZN8MosaicSC1CILj3EEC1EmiRKSt5arrayImLm2EE
	movq	(%rsp), %rax
	leaq	40(%rsp), %rsi
	leaq	80(%r13), %rdi
	movq	%rax, 40(%rsp)
	call	__ZNSt6vectorIPN8MosaicSC5BaseCESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	movq	__ZN8MosaicSC1CILj3EE3itrE@GOTPCREL(%rip), %rax
	leaq	48(%rax), %r14
	addq	$688, %rax
	movq	%rax, 16(%rsp)
	jmp	L1846
	.align 4,0x90
L1844:
	addq	$64, %r14
	cmpq	%r14, 16(%rsp)
	je	L1862
L1846:
	movq	24(%rsp), %rcx
	movl	-48(%r14), %r11d
	leaq	-32(%r14), %rdx
	movq	%r12, %rsi
	movq	528(%r15), %rax
	movq	%rbp, %rdi
	movl	%r11d, (%rsp)
	movq	(%rax,%rbx), %rax
	movl	(%rax,%rcx), %r10d
	leaq	__ZN8MosaicSC5Potts1LE(%rip), %rcx
	cmpl	%r10d, %r11d
	movl	%r10d, 12(%rsp)
	cmovne	%r14, %rdx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	504(%r15), %rsi
	movq	-40(%r14), %rdi
	leaq	(%rax,%rax,2), %rcx
	movl	(%rsp), %r11d
	movl	12(%rsp), %r10d
	movq	(%rsi,%rcx,8), %rsi
	cmpq	%rdi, (%rsi,%rdx,8)
	jne	L1844
	movq	528(%r15), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movl	(%rcx,%rdx,4), %esi
	movl	-44(%r14), %ecx
	cmpl	%r10d, %r11d
	je	L1845
	cmpl	$1, %ecx
	je	L1856
	cmpl	$-1, %ecx
	movl	$1, %edi
	cmove	%edi, %ecx
L1845:
	cmpl	%ecx, %esi
	jne	L1844
	movq	%r13, %rcx
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
	jmp	L1844
	.align 4,0x90
L1854:
	movl	$-1, %ecx
	jmp	L1840
	.align 4,0x90
L1856:
	movl	$-1, %ecx
	jmp	L1845
	.align 4,0x90
L1857:
	movl	$-1, %ecx
	jmp	L1850
LFE6564:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDA6564:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.cstring
lC13:
	.ascii "vector::_M_fill_insert\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj
	.weak_definition __ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj
__ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:
LFB7820:
	testq	%rdx, %rdx
	je	L2093
	leaq	8(%rsp), %r10
LCFI146:
	andq	$-32, %rsp
	movq	%rsi, %r8
	pushq	-8(%r10)
	pushq	%rbp
LCFI147:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
LCFI148:
	movq	%rdi, %r13
	pushq	%r12
LCFI149:
	movq	%rsi, %r12
	pushq	%r10
LCFI150:
	pushq	%rbx
LCFI151:
	movq	%rdx, %rbx
	subq	$32, %rsp
	movq	8(%rdi), %r14
	movq	16(%rdi), %rax
	subq	%r14, %rax
	movq	%r14, %r15
	sarq	$2, %rax
	cmpq	%rdx, %rax
	jb	L1871
	movq	%r14, %r9
	movl	(%rcx), %r15d
	subq	%rsi, %r9
	movq	%r9, %rax
	sarq	$2, %rax
	cmpq	%rax, %rdx
	jnb	L1872
	salq	$2, %rbx
	movq	%r14, %rcx
	movq	%r14, %rax
	subq	%rbx, %rcx
	cmpq	%rcx, %r14
	je	L1873
	movq	%rsi, -64(%rbp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%rcx, -56(%rbp)
	call	_memmove
	movq	8(%r13), %rax
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
L1873:
	addq	%rbx, %rax
	movq	%rax, 8(%r13)
	cmpq	%rcx, %r12
	je	L1874
	subq	%r12, %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r8, -56(%rbp)
	movq	%rcx, %rdx
	subq	%rcx, %rdi
	call	_memmove
	movq	-56(%rbp), %r8
L1874:
	leaq	(%r12,%rbx), %rcx
	cmpq	%rcx, %r12
	je	L2091
	movq	%r12, %rax
	subq	$4, %rbx
	movl	$9, %edi
	shrq	$2, %rax
	shrq	$2, %rbx
	leaq	4(%r12), %rsi
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rdi, %rdx
	cmpq	%rbx, %rdx
	ja	L1876
	testq	%rax, %rax
	je	L1909
	movl	%r15d, (%r12)
	cmpq	$1, %rax
	je	L1877
	movl	%r15d, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L1877
	movl	%r15d, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L1877
	movl	%r15d, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L1877
	movl	%r15d, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L1877
	movl	%r15d, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L1877
	movl	%r15d, 24(%r12)
	leaq	28(%r12), %rsi
L1877:
	subq	%rax, %rbx
	vmovd	%r15d, %xmm0
	leaq	(%r12,%rax,4), %rdx
	xorl	%eax, %eax
	leaq	1(%rbx), %r9
	vpbroadcastd	%xmm0, %ymm0
	movq	%r9, %rdi
	shrq	$3, %rdi
	.align 4,0x90
L1880:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rdi
	ja	L1880
	movq	%r9, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r8
	cmpq	%r9, %rax
	je	L2089
	vzeroupper
L1876:
	leaq	4(%r8), %rax
	movl	%r15d, (%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	8(%r8), %rax
	movl	%r15d, 4(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	12(%r8), %rax
	movl	%r15d, 8(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	16(%r8), %rax
	movl	%r15d, 12(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	20(%r8), %rax
	movl	%r15d, 16(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	24(%r8), %rax
	movl	%r15d, 20(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	28(%r8), %rax
	movl	%r15d, 24(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	32(%r8), %rax
	movl	%r15d, 28(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	36(%r8), %rax
	movl	%r15d, 32(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	40(%r8), %rax
	movl	%r15d, 36(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	44(%r8), %rax
	movl	%r15d, 40(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	48(%r8), %rax
	movl	%r15d, 44(%r8)
	cmpq	%rax, %rcx
	je	L2091
	leaq	52(%r8), %rax
	movl	%r15d, 48(%r8)
	cmpq	%rax, %rcx
	je	L2091
	movl	%r15d, 52(%r8)
	jmp	L2091
	.align 4,0x90
L2093:
LCFI152:
	ret
	.align 4,0x90
L1872:
LCFI153:
	subq	%rax, %rbx
	je	L1910
	movq	%r14, %rax
	movl	$9, %ecx
	leaq	-1(%rbx), %rsi
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rcx, %rdx
	cmpq	%rdx, %rsi
	jb	L1911
	testq	%rax, %rax
	je	L1912
	movl	%r15d, (%r14)
	leaq	4(%r14), %rdx
	cmpq	$1, %rax
	je	L1884
	movl	%r15d, 4(%r14)
	leaq	-2(%rbx), %rsi
	leaq	8(%r14), %rdx
	cmpq	$2, %rax
	je	L1884
	movl	%r15d, 8(%r14)
	leaq	-3(%rbx), %rsi
	leaq	12(%r14), %rdx
	cmpq	$3, %rax
	je	L1884
	movl	%r15d, 12(%r14)
	leaq	-4(%rbx), %rsi
	leaq	16(%r14), %rdx
	cmpq	$4, %rax
	je	L1884
	movl	%r15d, 16(%r14)
	leaq	-5(%rbx), %rsi
	leaq	20(%r14), %rdx
	cmpq	$5, %rax
	je	L1884
	movl	%r15d, 20(%r14)
	leaq	-6(%rbx), %rsi
	leaq	24(%r14), %rdx
	cmpq	$6, %rax
	je	L1884
	movl	%r15d, 24(%r14)
	leaq	-7(%rbx), %rsi
	leaq	28(%r14), %rdx
L1884:
	movq	%rbx, %rdi
	vmovd	%r15d, %xmm0
	leaq	(%r14,%rax,4), %rcx
	subq	%rax, %rdi
	vpbroadcastd	%xmm0, %ymm0
	xorl	%eax, %eax
	movq	%rdi, %r10
	shrq	$3, %r10
	.align 4,0x90
L1886:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpq	%rax, %r10
	ja	L1886
	movq	%rdi, %rcx
	movq	%rsi, %rax
	andq	$-8, %rcx
	subq	%rcx, %rax
	leaq	(%rdx,%rcx,4), %rdx
	cmpq	%rcx, %rdi
	je	L1887
L1883:
	movl	%r15d, (%rdx)
	cmpq	$1, %rax
	je	L1887
	movl	%r15d, 4(%rdx)
	cmpq	$2, %rax
	je	L1887
	movl	%r15d, 8(%rdx)
	cmpq	$3, %rax
	je	L1887
	movl	%r15d, 12(%rdx)
	cmpq	$4, %rax
	je	L1887
	movl	%r15d, 16(%rdx)
	cmpq	$5, %rax
	je	L1887
	movl	%r15d, 20(%rdx)
	cmpq	$6, %rax
	je	L1887
	movl	%r15d, 24(%rdx)
	cmpq	$7, %rax
	je	L1887
	movl	%r15d, 28(%rdx)
	cmpq	$8, %rax
	je	L1887
	movl	%r15d, 32(%rdx)
	cmpq	$9, %rax
	je	L1887
	movl	%r15d, 36(%rdx)
	cmpq	$10, %rax
	je	L1887
	movl	%r15d, 40(%rdx)
	cmpq	$11, %rax
	je	L1887
	movl	%r15d, 44(%rdx)
	cmpq	$12, %rax
	je	L1887
	movl	%r15d, 48(%rdx)
	cmpq	$13, %rax
	je	L1887
	movl	%r15d, 52(%rdx)
	.align 4,0x90
L1887:
	leaq	(%r14,%rbx,4), %rdi
L1882:
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L1888
	movq	%r9, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	movq	%r9, -56(%rbp)
	vzeroupper
	call	_memmove
	movq	8(%r13), %rdi
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %r9
L1888:
	addq	%r9, %rdi
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L2089
	movq	%r12, %rax
	leaq	4(%r12), %rsi
	movq	%r14, %rdx
	movl	$9, %edi
	shrq	$2, %rax
	subq	%rsi, %rdx
	negq	%rax
	shrq	$2, %rdx
	andl	$7, %eax
	leaq	7(%rax), %rcx
	cmpq	$9, %rcx
	cmovb	%rdi, %rcx
	cmpq	%rcx, %rdx
	jb	L1889
	testq	%rax, %rax
	je	L1913
	movl	%r15d, (%r12)
	cmpq	$1, %rax
	je	L1890
	movl	%r15d, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L1890
	movl	%r15d, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L1890
	movl	%r15d, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L1890
	movl	%r15d, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L1890
	movl	%r15d, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L1890
	movl	%r15d, 24(%r12)
	leaq	28(%r12), %rsi
L1890:
	subq	%rax, %rdx
	vmovd	%r15d, %xmm0
	leaq	1(%rdx), %rdi
	vpbroadcastd	%xmm0, %ymm0
	leaq	(%r12,%rax,4), %rdx
	xorl	%eax, %eax
	movq	%rdi, %rcx
	shrq	$3, %rcx
	.align 4,0x90
L1893:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rcx
	ja	L1893
	movq	%rdi, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r8
	cmpq	%rax, %rdi
	je	L2089
L1889:
	leaq	4(%r8), %rax
	movl	%r15d, (%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	8(%r8), %rax
	movl	%r15d, 4(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	12(%r8), %rax
	movl	%r15d, 8(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	16(%r8), %rax
	movl	%r15d, 12(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	20(%r8), %rax
	movl	%r15d, 16(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	24(%r8), %rax
	movl	%r15d, 20(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	28(%r8), %rax
	movl	%r15d, 24(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	32(%r8), %rax
	movl	%r15d, 28(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	36(%r8), %rax
	movl	%r15d, 32(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	40(%r8), %rax
	movl	%r15d, 36(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	44(%r8), %rax
	movl	%r15d, 40(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	48(%r8), %rax
	movl	%r15d, 44(%r8)
	cmpq	%rax, %r14
	je	L2089
	leaq	52(%r8), %rax
	movl	%r15d, 48(%r8)
	cmpq	%rax, %r14
	je	L2089
	movl	%r15d, 52(%r8)
	vzeroupper
	jmp	L2091
	.align 4,0x90
L1871:
	movabsq	$4611686018427387903, %rsi
	movq	(%rdi), %r14
	movq	%r15, %rax
	movq	%rsi, %rdx
	subq	%r14, %rax
	sarq	$2, %rax
	subq	%rax, %rdx
	cmpq	%rdx, %rbx
	ja	L2096
	cmpq	%rax, %rbx
	movq	%rax, %rdx
	movq	%r12, %r10
	cmovnb	%rbx, %rdx
	addq	%rdx, %rax
	setc	%dl
	subq	%r14, %r10
	movzbl	%dl, %edx
	testq	%rdx, %rdx
	jne	L1915
	cmpq	%rsi, %rax
	ja	L1915
	testq	%rax, %rax
	je	L1916
	leaq	0(,%rax,4), %r15
L1898:
	movq	%r15, %rdi
	movq	%rcx, -72(%rbp)
	movq	%r10, -64(%rbp)
	call	__Znwm
	movq	0(%r13), %r14
	movq	%r12, %r9
	movq	-64(%rbp), %r10
	movq	%rax, %r8
	leaq	(%rax,%r15), %rax
	movq	-72(%rbp), %rcx
	movq	8(%r13), %r15
	movq	%rax, -56(%rbp)
	subq	%r14, %r9
L1899:
	leaq	(%r8,%r10), %rax
	movl	$9, %r11d
	movl	(%rcx), %esi
	leaq	-1(%rbx), %rcx
	movq	%rax, %rdx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	leaq	7(%rdx), %rdi
	cmpq	$9, %rdi
	cmovb	%r11, %rdi
	cmpq	%rdi, %rcx
	jb	L1917
	testq	%rdx, %rdx
	je	L1918
	movl	%esi, (%rax)
	leaq	4(%rax), %rdi
	cmpq	$1, %rdx
	je	L1901
	movl	%esi, 4(%rax)
	leaq	-2(%rbx), %rcx
	leaq	8(%rax), %rdi
	cmpq	$2, %rdx
	je	L1901
	movl	%esi, 8(%rax)
	leaq	-3(%rbx), %rcx
	leaq	12(%rax), %rdi
	cmpq	$3, %rdx
	je	L1901
	movl	%esi, 12(%rax)
	leaq	-4(%rbx), %rcx
	leaq	16(%rax), %rdi
	cmpq	$4, %rdx
	je	L1901
	movl	%esi, 16(%rax)
	leaq	-5(%rbx), %rcx
	leaq	20(%rax), %rdi
	cmpq	$5, %rdx
	je	L1901
	movl	%esi, 20(%rax)
	leaq	-6(%rbx), %rcx
	leaq	24(%rax), %rdi
	cmpq	$6, %rdx
	je	L1901
	movl	%esi, 24(%rax)
	leaq	-7(%rbx), %rcx
	leaq	28(%rax), %rdi
L1901:
	movq	%rbx, %r11
	vmovd	%esi, %xmm0
	subq	%rdx, %r11
	leaq	(%r10,%rdx,4), %rdx
	vpbroadcastd	%xmm0, %ymm0
	xorl	%r10d, %r10d
	leaq	-8(%r11), %rax
	addq	%r8, %rdx
	shrq	$3, %rax
	addq	$1, %rax
	.align 4,0x90
L1903:
	addq	$1, %r10
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%r10, %rax
	ja	L1903
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	subq	%rdx, %rcx
	addq	%rdi, %rax
	cmpq	%rdx, %r11
	je	L2097
	vzeroupper
L1900:
	movl	%esi, (%rax)
	cmpq	$1, %rcx
	je	L1904
	movl	%esi, 4(%rax)
	cmpq	$2, %rcx
	je	L1904
	movl	%esi, 8(%rax)
	cmpq	$3, %rcx
	je	L1904
	movl	%esi, 12(%rax)
	cmpq	$4, %rcx
	je	L1904
	movl	%esi, 16(%rax)
	cmpq	$5, %rcx
	je	L1904
	movl	%esi, 20(%rax)
	cmpq	$6, %rcx
	je	L1904
	movl	%esi, 24(%rax)
	cmpq	$7, %rcx
	je	L1904
	movl	%esi, 28(%rax)
	cmpq	$8, %rcx
	je	L1904
	movl	%esi, 32(%rax)
	cmpq	$9, %rcx
	je	L1904
	movl	%esi, 36(%rax)
	cmpq	$10, %rcx
	je	L1904
	movl	%esi, 40(%rax)
	cmpq	$11, %rcx
	je	L1904
	movl	%esi, 44(%rax)
	cmpq	$12, %rcx
	je	L1904
	movl	%esi, 48(%rax)
	cmpq	$13, %rcx
	je	L1904
	movl	%esi, 52(%rax)
	.align 4,0x90
L1904:
	cmpq	%r14, %r12
	je	L1905
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r14, %rsi
	movq	%r9, -64(%rbp)
	call	_memmove
	movq	-64(%rbp), %r9
	movq	%rax, %r8
L1905:
	leaq	(%r9,%rbx,4), %rcx
	movq	%r15, %rbx
	addq	%r8, %rcx
	subq	%r12, %rbx
	cmpq	%r15, %r12
	je	L1906
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	call	_memcpy
	movq	-64(%rbp), %r8
	movq	%rax, %rcx
L1906:
	addq	%rcx, %rbx
	testq	%r14, %r14
	je	L1907
	movq	%r14, %rdi
	movq	%r8, -64(%rbp)
	call	__ZdlPv
	movq	-64(%rbp), %r8
L1907:
	movq	-56(%rbp), %rax
	movq	%r8, 0(%r13)
	movq	%rbx, 8(%r13)
	movq	%rax, 16(%r13)
L2091:
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
LCFI154:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI155:
	ret
	.align 4,0x90
L2089:
LCFI156:
	vzeroupper
	jmp	L2091
	.align 4,0x90
L1915:
	movq	$-4, %r15
	jmp	L1898
	.align 4,0x90
L1910:
	movq	%r14, %rdi
	jmp	L1882
	.align 4,0x90
L1918:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	jmp	L1901
	.align 4,0x90
L2097:
	vzeroupper
	jmp	L1904
	.align 4,0x90
L1917:
	movq	%rbx, %rcx
	jmp	L1900
	.align 4,0x90
L1909:
	movq	%r12, %rsi
	jmp	L1877
	.align 4,0x90
L1913:
	movq	%r12, %rsi
	jmp	L1890
	.align 4,0x90
L1912:
	movq	%r14, %rdx
	movq	%rbx, %rsi
	jmp	L1884
	.align 4,0x90
L1911:
	movq	%r14, %rdx
	movq	%rbx, %rax
	jmp	L1883
	.align 4,0x90
L1916:
	movq	%r10, %r9
	movq	$0, -56(%rbp)
	xorl	%r8d, %r8d
	jmp	L1899
L2096:
	leaq	lC13(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7820:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm
	.weak_definition __ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm
__ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:
LFB7846:
	testq	%rdx, %rdx
	je	L2219
	leaq	8(%rsp), %r10
LCFI157:
	andq	$-32, %rsp
	movq	%rsi, %r8
	pushq	-8(%r10)
	pushq	%rbp
LCFI158:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
LCFI159:
	movq	%rdi, %r13
	pushq	%r12
LCFI160:
	movq	%rsi, %r12
	pushq	%r10
LCFI161:
	pushq	%rbx
LCFI162:
	movq	%rdx, %rbx
	subq	$32, %rsp
	movq	8(%rdi), %r14
	movq	16(%rdi), %rax
	subq	%r14, %rax
	movq	%r14, %r15
	sarq	$3, %rax
	cmpq	%rdx, %rax
	jb	L2101
	movq	%r14, %r9
	movq	(%rcx), %r15
	subq	%rsi, %r9
	movq	%r9, %rax
	sarq	$3, %rax
	cmpq	%rax, %rdx
	jnb	L2102
	salq	$3, %rbx
	movq	%r14, %rcx
	movq	%r14, %rax
	subq	%rbx, %rcx
	cmpq	%rcx, %r14
	je	L2103
	movq	%rsi, -64(%rbp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%rcx, -56(%rbp)
	call	_memmove
	movq	8(%r13), %rax
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
L2103:
	addq	%rbx, %rax
	movq	%rax, 8(%r13)
	cmpq	%rcx, %r12
	je	L2104
	subq	%r12, %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r8, -56(%rbp)
	movq	%rcx, %rdx
	subq	%rcx, %rdi
	call	_memmove
	movq	-56(%rbp), %r8
L2104:
	leaq	(%r12,%rbx), %rcx
	cmpq	%rcx, %r12
	je	L2217
	movq	%r12, %rax
	subq	$8, %rbx
	movl	$5, %edi
	shrq	$3, %rax
	shrq	$3, %rbx
	leaq	8(%r12), %rsi
	negq	%rax
	andl	$3, %eax
	leaq	3(%rax), %rdx
	cmpq	$5, %rdx
	cmovb	%rdi, %rdx
	cmpq	%rbx, %rdx
	ja	L2106
	testq	%rax, %rax
	je	L2139
	movq	%r15, (%r12)
	cmpq	$1, %rax
	je	L2107
	movq	%r15, 8(%r12)
	leaq	16(%r12), %rsi
	cmpq	$2, %rax
	je	L2107
	movq	%r15, 16(%r12)
	leaq	24(%r12), %rsi
L2107:
	subq	%rax, %rbx
	vmovd	%r15, %xmm2
	leaq	(%r12,%rax,8), %rdx
	xorl	%eax, %eax
	leaq	1(%rbx), %r9
	vpbroadcastq	%xmm2, %ymm0
	movq	%r9, %rdi
	shrq	$2, %rdi
	.align 4,0x90
L2110:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rdi
	ja	L2110
	movq	%r9, %rax
	andq	$-4, %rax
	leaq	(%rsi,%rax,8), %r8
	cmpq	%r9, %rax
	je	L2215
	vzeroupper
L2106:
	leaq	8(%r8), %rax
	movq	%r15, (%r8)
	cmpq	%rax, %rcx
	je	L2217
	leaq	16(%r8), %rax
	movq	%r15, 8(%r8)
	cmpq	%rax, %rcx
	je	L2217
	leaq	24(%r8), %rax
	movq	%r15, 16(%r8)
	cmpq	%rax, %rcx
	je	L2217
	leaq	32(%r8), %rax
	movq	%r15, 24(%r8)
	cmpq	%rax, %rcx
	je	L2217
	leaq	40(%r8), %rax
	movq	%r15, 32(%r8)
	cmpq	%rax, %rcx
	je	L2217
	movq	%r15, 40(%r8)
	jmp	L2217
	.align 4,0x90
L2219:
LCFI163:
	ret
	.align 4,0x90
L2102:
LCFI164:
	subq	%rax, %rbx
	je	L2140
	movq	%r14, %rax
	movl	$5, %ecx
	leaq	-1(%rbx), %rsi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leaq	3(%rax), %rdx
	cmpq	$5, %rdx
	cmovb	%rcx, %rdx
	cmpq	%rdx, %rsi
	jb	L2141
	testq	%rax, %rax
	je	L2142
	movq	%r15, (%r14)
	leaq	8(%r14), %rdi
	cmpq	$1, %rax
	je	L2114
	movq	%r15, 8(%r14)
	leaq	-2(%rbx), %rsi
	leaq	16(%r14), %rdi
	cmpq	$2, %rax
	je	L2114
	movq	%r15, 16(%r14)
	leaq	-3(%rbx), %rsi
	leaq	24(%r14), %rdi
L2114:
	movq	%rbx, %rdx
	vmovd	%r15, %xmm3
	leaq	(%r14,%rax,8), %rcx
	subq	%rax, %rdx
	vpbroadcastq	%xmm3, %ymm0
	xorl	%eax, %eax
	movq	%rdx, %r10
	shrq	$2, %r10
	.align 4,0x90
L2116:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpq	%rax, %r10
	ja	L2116
	movq	%rdx, %rcx
	andq	$-4, %rcx
	subq	%rcx, %rsi
	leaq	(%rdi,%rcx,8), %rax
	cmpq	%rcx, %rdx
	je	L2117
L2113:
	movq	%r15, (%rax)
	cmpq	$1, %rsi
	je	L2117
	movq	%r15, 8(%rax)
	cmpq	$2, %rsi
	je	L2117
	movq	%r15, 16(%rax)
	cmpq	$3, %rsi
	je	L2117
	movq	%r15, 24(%rax)
	cmpq	$4, %rsi
	je	L2117
	movq	%r15, 32(%rax)
	cmpq	$5, %rsi
	je	L2117
	movq	%r15, 40(%rax)
L2117:
	leaq	(%r14,%rbx,8), %rdi
L2112:
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L2118
	movq	%r9, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	movq	%r9, -56(%rbp)
	vzeroupper
	call	_memmove
	movq	8(%r13), %rdi
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %r9
L2118:
	addq	%r9, %rdi
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L2215
	movq	%r12, %rax
	leaq	8(%r12), %rsi
	movq	%r14, %rdx
	movl	$5, %edi
	shrq	$3, %rax
	subq	%rsi, %rdx
	negq	%rax
	shrq	$3, %rdx
	andl	$3, %eax
	leaq	3(%rax), %rcx
	cmpq	$5, %rcx
	cmovb	%rdi, %rcx
	cmpq	%rcx, %rdx
	jb	L2119
	testq	%rax, %rax
	je	L2143
	movq	%r15, (%r12)
	cmpq	$1, %rax
	je	L2120
	movq	%r15, 8(%r12)
	leaq	16(%r12), %rsi
	cmpq	$2, %rax
	je	L2120
	movq	%r15, 16(%r12)
	leaq	24(%r12), %rsi
L2120:
	subq	%rax, %rdx
	vmovd	%r15, %xmm4
	leaq	1(%rdx), %rdi
	vpbroadcastq	%xmm4, %ymm0
	leaq	(%r12,%rax,8), %rdx
	xorl	%eax, %eax
	movq	%rdi, %rcx
	shrq	$2, %rcx
	.align 4,0x90
L2123:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rcx
	ja	L2123
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	(%rsi,%rax,8), %r8
	cmpq	%rax, %rdi
	je	L2215
L2119:
	leaq	8(%r8), %rax
	movq	%r15, (%r8)
	cmpq	%rax, %r14
	je	L2215
	leaq	16(%r8), %rax
	movq	%r15, 8(%r8)
	cmpq	%rax, %r14
	je	L2215
	leaq	24(%r8), %rax
	movq	%r15, 16(%r8)
	cmpq	%rax, %r14
	je	L2215
	leaq	32(%r8), %rax
	movq	%r15, 24(%r8)
	cmpq	%rax, %r14
	je	L2215
	leaq	40(%r8), %rax
	movq	%r15, 32(%r8)
	cmpq	%rax, %r14
	je	L2215
	movq	%r15, 40(%r8)
	vzeroupper
	jmp	L2217
	.align 4,0x90
L2101:
	movabsq	$2305843009213693951, %rsi
	movq	(%rdi), %r14
	movq	%r15, %rax
	movq	%rsi, %rdx
	subq	%r14, %rax
	sarq	$3, %rax
	subq	%rax, %rdx
	cmpq	%rdx, %rbx
	ja	L2222
	cmpq	%rax, %rbx
	movq	%rax, %rdx
	movq	%r12, %r10
	cmovnb	%rbx, %rdx
	addq	%rdx, %rax
	setc	%dl
	subq	%r14, %r10
	movzbl	%dl, %edx
	testq	%rdx, %rdx
	jne	L2145
	cmpq	%rsi, %rax
	ja	L2145
	testq	%rax, %rax
	je	L2146
	leaq	0(,%rax,8), %r15
L2128:
	movq	%r15, %rdi
	movq	%rcx, -72(%rbp)
	movq	%r10, -64(%rbp)
	call	__Znwm
	movq	0(%r13), %r14
	movq	%r12, %r9
	movq	-64(%rbp), %r10
	movq	%rax, %r8
	leaq	(%rax,%r15), %rax
	movq	-72(%rbp), %rcx
	movq	8(%r13), %r15
	movq	%rax, -56(%rbp)
	subq	%r14, %r9
L2129:
	leaq	(%r8,%r10), %rdx
	movl	$5, %r11d
	movq	(%rcx), %rsi
	leaq	-1(%rbx), %rcx
	movq	%rdx, %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leaq	3(%rax), %rdi
	cmpq	$5, %rdi
	cmovb	%r11, %rdi
	cmpq	%rdi, %rcx
	jb	L2147
	testq	%rax, %rax
	je	L2148
	movq	%rsi, (%rdx)
	leaq	8(%rdx), %r11
	cmpq	$1, %rax
	je	L2131
	movq	%rsi, 8(%rdx)
	leaq	-2(%rbx), %rcx
	leaq	16(%rdx), %r11
	cmpq	$2, %rax
	je	L2131
	movq	%rsi, 16(%rdx)
	leaq	-3(%rbx), %rcx
	leaq	24(%rdx), %r11
L2131:
	movq	%rbx, %rdi
	vmovd	%rsi, %xmm1
	subq	%rax, %rdi
	leaq	(%r10,%rax,8), %rax
	vpbroadcastq	%xmm1, %ymm0
	xorl	%r10d, %r10d
	leaq	-4(%rdi), %rdx
	addq	%r8, %rax
	shrq	$2, %rdx
	addq	$1, %rdx
	.align 4,0x90
L2133:
	addq	$1, %r10
	vmovdqa	%ymm0, (%rax)
	addq	$32, %rax
	cmpq	%r10, %rdx
	ja	L2133
	leaq	0(,%rdx,4), %rax
	salq	$5, %rdx
	subq	%rax, %rcx
	addq	%r11, %rdx
	cmpq	%rax, %rdi
	je	L2223
	vzeroupper
L2130:
	movq	%rsi, (%rdx)
	cmpq	$1, %rcx
	je	L2134
	movq	%rsi, 8(%rdx)
	cmpq	$2, %rcx
	je	L2134
	movq	%rsi, 16(%rdx)
	cmpq	$3, %rcx
	je	L2134
	movq	%rsi, 24(%rdx)
	cmpq	$4, %rcx
	je	L2134
	movq	%rsi, 32(%rdx)
	cmpq	$5, %rcx
	je	L2134
	movq	%rsi, 40(%rdx)
L2134:
	cmpq	%r14, %r12
	je	L2135
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r14, %rsi
	movq	%r9, -64(%rbp)
	call	_memmove
	movq	-64(%rbp), %r9
	movq	%rax, %r8
L2135:
	leaq	(%r9,%rbx,8), %rcx
	movq	%r15, %rbx
	addq	%r8, %rcx
	subq	%r12, %rbx
	cmpq	%r15, %r12
	je	L2136
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	call	_memcpy
	movq	-64(%rbp), %r8
	movq	%rax, %rcx
L2136:
	addq	%rcx, %rbx
	testq	%r14, %r14
	je	L2137
	movq	%r14, %rdi
	movq	%r8, -64(%rbp)
	call	__ZdlPv
	movq	-64(%rbp), %r8
L2137:
	movq	-56(%rbp), %rax
	movq	%r8, 0(%r13)
	movq	%rbx, 8(%r13)
	movq	%rax, 16(%r13)
L2217:
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
LCFI165:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI166:
	ret
	.align 4,0x90
L2215:
LCFI167:
	vzeroupper
	jmp	L2217
	.align 4,0x90
L2145:
	movq	$-8, %r15
	jmp	L2128
	.align 4,0x90
L2223:
	vzeroupper
	jmp	L2134
	.align 4,0x90
L2148:
	movq	%rdx, %r11
	movq	%rbx, %rcx
	jmp	L2131
	.align 4,0x90
L2143:
	movq	%r12, %rsi
	jmp	L2120
	.align 4,0x90
L2139:
	movq	%r12, %rsi
	jmp	L2107
	.align 4,0x90
L2142:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	L2114
	.align 4,0x90
L2140:
	movq	%r14, %rdi
	jmp	L2112
	.align 4,0x90
L2147:
	movq	%rbx, %rcx
	jmp	L2130
	.align 4,0x90
L2141:
	movq	%r14, %rax
	movq	%rbx, %rsi
	jmp	L2113
	.align 4,0x90
L2146:
	movq	%r10, %r9
	movq	$0, -56(%rbp)
	xorl	%r8d, %r8d
	jmp	L2129
L2222:
	leaq	lC13(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7846:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.weak_definition __ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
__ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:
LFB7871:
	testq	%rdx, %rdx
	je	L2449
	leaq	8(%rsp), %r10
LCFI168:
	andq	$-32, %rsp
	movq	%rsi, %r8
	pushq	-8(%r10)
	pushq	%rbp
LCFI169:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
LCFI170:
	movq	%rdi, %r13
	pushq	%r12
LCFI171:
	movq	%rsi, %r12
	pushq	%r10
LCFI172:
	pushq	%rbx
LCFI173:
	movq	%rdx, %rbx
	subq	$32, %rsp
	movq	8(%rdi), %r14
	movq	16(%rdi), %rax
	subq	%r14, %rax
	movq	%r14, %r15
	sarq	$2, %rax
	cmpq	%rdx, %rax
	jb	L2227
	movq	%r14, %r9
	movl	(%rcx), %r15d
	subq	%rsi, %r9
	movq	%r9, %rax
	sarq	$2, %rax
	cmpq	%rax, %rdx
	jnb	L2228
	salq	$2, %rbx
	movq	%r14, %rcx
	movq	%r14, %rax
	subq	%rbx, %rcx
	cmpq	%rcx, %r14
	je	L2229
	movq	%rsi, -64(%rbp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%rcx, -56(%rbp)
	call	_memmove
	movq	8(%r13), %rax
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
L2229:
	addq	%rbx, %rax
	movq	%rax, 8(%r13)
	cmpq	%rcx, %r12
	je	L2230
	subq	%r12, %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r8, -56(%rbp)
	movq	%rcx, %rdx
	subq	%rcx, %rdi
	call	_memmove
	movq	-56(%rbp), %r8
L2230:
	leaq	(%r12,%rbx), %rcx
	cmpq	%rcx, %r12
	je	L2447
	movq	%r12, %rax
	subq	$4, %rbx
	movl	$9, %edi
	shrq	$2, %rax
	shrq	$2, %rbx
	leaq	4(%r12), %rsi
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rdi, %rdx
	cmpq	%rbx, %rdx
	ja	L2232
	testq	%rax, %rax
	je	L2265
	movl	%r15d, (%r12)
	cmpq	$1, %rax
	je	L2233
	movl	%r15d, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L2233
	movl	%r15d, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L2233
	movl	%r15d, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L2233
	movl	%r15d, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L2233
	movl	%r15d, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L2233
	movl	%r15d, 24(%r12)
	leaq	28(%r12), %rsi
L2233:
	subq	%rax, %rbx
	vmovd	%r15d, %xmm0
	leaq	(%r12,%rax,4), %rdx
	xorl	%eax, %eax
	leaq	1(%rbx), %r9
	vpbroadcastd	%xmm0, %ymm0
	movq	%r9, %rdi
	shrq	$3, %rdi
	.align 4,0x90
L2236:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rdi
	ja	L2236
	movq	%r9, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r8
	cmpq	%r9, %rax
	je	L2445
	vzeroupper
L2232:
	leaq	4(%r8), %rax
	movl	%r15d, (%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	8(%r8), %rax
	movl	%r15d, 4(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	12(%r8), %rax
	movl	%r15d, 8(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	16(%r8), %rax
	movl	%r15d, 12(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	20(%r8), %rax
	movl	%r15d, 16(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	24(%r8), %rax
	movl	%r15d, 20(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	28(%r8), %rax
	movl	%r15d, 24(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	32(%r8), %rax
	movl	%r15d, 28(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	36(%r8), %rax
	movl	%r15d, 32(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	40(%r8), %rax
	movl	%r15d, 36(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	44(%r8), %rax
	movl	%r15d, 40(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	48(%r8), %rax
	movl	%r15d, 44(%r8)
	cmpq	%rax, %rcx
	je	L2447
	leaq	52(%r8), %rax
	movl	%r15d, 48(%r8)
	cmpq	%rax, %rcx
	je	L2447
	movl	%r15d, 52(%r8)
	jmp	L2447
	.align 4,0x90
L2449:
LCFI174:
	ret
	.align 4,0x90
L2228:
LCFI175:
	subq	%rax, %rbx
	je	L2266
	movq	%r14, %rax
	movl	$9, %ecx
	leaq	-1(%rbx), %rsi
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rcx, %rdx
	cmpq	%rdx, %rsi
	jb	L2267
	testq	%rax, %rax
	je	L2268
	movl	%r15d, (%r14)
	leaq	4(%r14), %rdx
	cmpq	$1, %rax
	je	L2240
	movl	%r15d, 4(%r14)
	leaq	-2(%rbx), %rsi
	leaq	8(%r14), %rdx
	cmpq	$2, %rax
	je	L2240
	movl	%r15d, 8(%r14)
	leaq	-3(%rbx), %rsi
	leaq	12(%r14), %rdx
	cmpq	$3, %rax
	je	L2240
	movl	%r15d, 12(%r14)
	leaq	-4(%rbx), %rsi
	leaq	16(%r14), %rdx
	cmpq	$4, %rax
	je	L2240
	movl	%r15d, 16(%r14)
	leaq	-5(%rbx), %rsi
	leaq	20(%r14), %rdx
	cmpq	$5, %rax
	je	L2240
	movl	%r15d, 20(%r14)
	leaq	-6(%rbx), %rsi
	leaq	24(%r14), %rdx
	cmpq	$6, %rax
	je	L2240
	movl	%r15d, 24(%r14)
	leaq	-7(%rbx), %rsi
	leaq	28(%r14), %rdx
L2240:
	movq	%rbx, %rdi
	vmovd	%r15d, %xmm0
	leaq	(%r14,%rax,4), %rcx
	subq	%rax, %rdi
	vpbroadcastd	%xmm0, %ymm0
	xorl	%eax, %eax
	movq	%rdi, %r10
	shrq	$3, %r10
	.align 4,0x90
L2242:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpq	%rax, %r10
	ja	L2242
	movq	%rdi, %rcx
	movq	%rsi, %rax
	andq	$-8, %rcx
	subq	%rcx, %rax
	leaq	(%rdx,%rcx,4), %rdx
	cmpq	%rcx, %rdi
	je	L2243
L2239:
	movl	%r15d, (%rdx)
	cmpq	$1, %rax
	je	L2243
	movl	%r15d, 4(%rdx)
	cmpq	$2, %rax
	je	L2243
	movl	%r15d, 8(%rdx)
	cmpq	$3, %rax
	je	L2243
	movl	%r15d, 12(%rdx)
	cmpq	$4, %rax
	je	L2243
	movl	%r15d, 16(%rdx)
	cmpq	$5, %rax
	je	L2243
	movl	%r15d, 20(%rdx)
	cmpq	$6, %rax
	je	L2243
	movl	%r15d, 24(%rdx)
	cmpq	$7, %rax
	je	L2243
	movl	%r15d, 28(%rdx)
	cmpq	$8, %rax
	je	L2243
	movl	%r15d, 32(%rdx)
	cmpq	$9, %rax
	je	L2243
	movl	%r15d, 36(%rdx)
	cmpq	$10, %rax
	je	L2243
	movl	%r15d, 40(%rdx)
	cmpq	$11, %rax
	je	L2243
	movl	%r15d, 44(%rdx)
	cmpq	$12, %rax
	je	L2243
	movl	%r15d, 48(%rdx)
	cmpq	$13, %rax
	je	L2243
	movl	%r15d, 52(%rdx)
	.align 4,0x90
L2243:
	leaq	(%r14,%rbx,4), %rdi
L2238:
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L2244
	movq	%r9, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	movq	%r9, -56(%rbp)
	vzeroupper
	call	_memmove
	movq	8(%r13), %rdi
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %r9
L2244:
	addq	%r9, %rdi
	movq	%rdi, 8(%r13)
	cmpq	%r12, %r14
	je	L2445
	movq	%r12, %rax
	leaq	4(%r12), %rsi
	movq	%r14, %rdx
	movl	$9, %edi
	shrq	$2, %rax
	subq	%rsi, %rdx
	negq	%rax
	shrq	$2, %rdx
	andl	$7, %eax
	leaq	7(%rax), %rcx
	cmpq	$9, %rcx
	cmovb	%rdi, %rcx
	cmpq	%rcx, %rdx
	jb	L2245
	testq	%rax, %rax
	je	L2269
	movl	%r15d, (%r12)
	cmpq	$1, %rax
	je	L2246
	movl	%r15d, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L2246
	movl	%r15d, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L2246
	movl	%r15d, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L2246
	movl	%r15d, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L2246
	movl	%r15d, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L2246
	movl	%r15d, 24(%r12)
	leaq	28(%r12), %rsi
L2246:
	subq	%rax, %rdx
	vmovd	%r15d, %xmm0
	leaq	1(%rdx), %rdi
	vpbroadcastd	%xmm0, %ymm0
	leaq	(%r12,%rax,4), %rdx
	xorl	%eax, %eax
	movq	%rdi, %rcx
	shrq	$3, %rcx
	.align 4,0x90
L2249:
	addq	$1, %rax
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rcx
	ja	L2249
	movq	%rdi, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r8
	cmpq	%rax, %rdi
	je	L2445
L2245:
	leaq	4(%r8), %rax
	movl	%r15d, (%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	8(%r8), %rax
	movl	%r15d, 4(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	12(%r8), %rax
	movl	%r15d, 8(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	16(%r8), %rax
	movl	%r15d, 12(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	20(%r8), %rax
	movl	%r15d, 16(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	24(%r8), %rax
	movl	%r15d, 20(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	28(%r8), %rax
	movl	%r15d, 24(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	32(%r8), %rax
	movl	%r15d, 28(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	36(%r8), %rax
	movl	%r15d, 32(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	40(%r8), %rax
	movl	%r15d, 36(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	44(%r8), %rax
	movl	%r15d, 40(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	48(%r8), %rax
	movl	%r15d, 44(%r8)
	cmpq	%rax, %r14
	je	L2445
	leaq	52(%r8), %rax
	movl	%r15d, 48(%r8)
	cmpq	%rax, %r14
	je	L2445
	movl	%r15d, 52(%r8)
	vzeroupper
	jmp	L2447
	.align 4,0x90
L2227:
	movabsq	$4611686018427387903, %rsi
	movq	(%rdi), %r14
	movq	%r15, %rax
	movq	%rsi, %rdx
	subq	%r14, %rax
	sarq	$2, %rax
	subq	%rax, %rdx
	cmpq	%rdx, %rbx
	ja	L2452
	cmpq	%rax, %rbx
	movq	%rax, %rdx
	movq	%r12, %r10
	cmovnb	%rbx, %rdx
	addq	%rdx, %rax
	setc	%dl
	subq	%r14, %r10
	movzbl	%dl, %edx
	testq	%rdx, %rdx
	jne	L2271
	cmpq	%rsi, %rax
	ja	L2271
	testq	%rax, %rax
	je	L2272
	leaq	0(,%rax,4), %r15
L2254:
	movq	%r15, %rdi
	movq	%rcx, -72(%rbp)
	movq	%r10, -64(%rbp)
	call	__Znwm
	movq	0(%r13), %r14
	movq	%r12, %r9
	movq	-64(%rbp), %r10
	movq	%rax, %r8
	leaq	(%rax,%r15), %rax
	movq	-72(%rbp), %rcx
	movq	8(%r13), %r15
	movq	%rax, -56(%rbp)
	subq	%r14, %r9
L2255:
	leaq	(%r8,%r10), %rax
	movl	$9, %r11d
	movl	(%rcx), %esi
	leaq	-1(%rbx), %rcx
	movq	%rax, %rdx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	leaq	7(%rdx), %rdi
	cmpq	$9, %rdi
	cmovb	%r11, %rdi
	cmpq	%rdi, %rcx
	jb	L2273
	testq	%rdx, %rdx
	je	L2274
	movl	%esi, (%rax)
	leaq	4(%rax), %rdi
	cmpq	$1, %rdx
	je	L2257
	movl	%esi, 4(%rax)
	leaq	-2(%rbx), %rcx
	leaq	8(%rax), %rdi
	cmpq	$2, %rdx
	je	L2257
	movl	%esi, 8(%rax)
	leaq	-3(%rbx), %rcx
	leaq	12(%rax), %rdi
	cmpq	$3, %rdx
	je	L2257
	movl	%esi, 12(%rax)
	leaq	-4(%rbx), %rcx
	leaq	16(%rax), %rdi
	cmpq	$4, %rdx
	je	L2257
	movl	%esi, 16(%rax)
	leaq	-5(%rbx), %rcx
	leaq	20(%rax), %rdi
	cmpq	$5, %rdx
	je	L2257
	movl	%esi, 20(%rax)
	leaq	-6(%rbx), %rcx
	leaq	24(%rax), %rdi
	cmpq	$6, %rdx
	je	L2257
	movl	%esi, 24(%rax)
	leaq	-7(%rbx), %rcx
	leaq	28(%rax), %rdi
L2257:
	movq	%rbx, %r11
	vmovd	%esi, %xmm0
	subq	%rdx, %r11
	leaq	(%r10,%rdx,4), %rdx
	vpbroadcastd	%xmm0, %ymm0
	xorl	%r10d, %r10d
	leaq	-8(%r11), %rax
	addq	%r8, %rdx
	shrq	$3, %rax
	addq	$1, %rax
	.align 4,0x90
L2259:
	addq	$1, %r10
	vmovdqa	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpq	%r10, %rax
	ja	L2259
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	subq	%rdx, %rcx
	addq	%rdi, %rax
	cmpq	%rdx, %r11
	je	L2453
	vzeroupper
L2256:
	movl	%esi, (%rax)
	cmpq	$1, %rcx
	je	L2260
	movl	%esi, 4(%rax)
	cmpq	$2, %rcx
	je	L2260
	movl	%esi, 8(%rax)
	cmpq	$3, %rcx
	je	L2260
	movl	%esi, 12(%rax)
	cmpq	$4, %rcx
	je	L2260
	movl	%esi, 16(%rax)
	cmpq	$5, %rcx
	je	L2260
	movl	%esi, 20(%rax)
	cmpq	$6, %rcx
	je	L2260
	movl	%esi, 24(%rax)
	cmpq	$7, %rcx
	je	L2260
	movl	%esi, 28(%rax)
	cmpq	$8, %rcx
	je	L2260
	movl	%esi, 32(%rax)
	cmpq	$9, %rcx
	je	L2260
	movl	%esi, 36(%rax)
	cmpq	$10, %rcx
	je	L2260
	movl	%esi, 40(%rax)
	cmpq	$11, %rcx
	je	L2260
	movl	%esi, 44(%rax)
	cmpq	$12, %rcx
	je	L2260
	movl	%esi, 48(%rax)
	cmpq	$13, %rcx
	je	L2260
	movl	%esi, 52(%rax)
	.align 4,0x90
L2260:
	cmpq	%r14, %r12
	je	L2261
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r14, %rsi
	movq	%r9, -64(%rbp)
	call	_memmove
	movq	-64(%rbp), %r9
	movq	%rax, %r8
L2261:
	leaq	(%r9,%rbx,4), %rcx
	movq	%r15, %rbx
	addq	%r8, %rcx
	subq	%r12, %rbx
	cmpq	%r15, %r12
	je	L2262
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r8, -64(%rbp)
	call	_memcpy
	movq	-64(%rbp), %r8
	movq	%rax, %rcx
L2262:
	addq	%rcx, %rbx
	testq	%r14, %r14
	je	L2263
	movq	%r14, %rdi
	movq	%r8, -64(%rbp)
	call	__ZdlPv
	movq	-64(%rbp), %r8
L2263:
	movq	-56(%rbp), %rax
	movq	%r8, 0(%r13)
	movq	%rbx, 8(%r13)
	movq	%rax, 16(%r13)
L2447:
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
LCFI176:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI177:
	ret
	.align 4,0x90
L2445:
LCFI178:
	vzeroupper
	jmp	L2447
	.align 4,0x90
L2271:
	movq	$-4, %r15
	jmp	L2254
	.align 4,0x90
L2266:
	movq	%r14, %rdi
	jmp	L2238
	.align 4,0x90
L2274:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	jmp	L2257
	.align 4,0x90
L2453:
	vzeroupper
	jmp	L2260
	.align 4,0x90
L2273:
	movq	%rbx, %rcx
	jmp	L2256
	.align 4,0x90
L2265:
	movq	%r12, %rsi
	jmp	L2233
	.align 4,0x90
L2269:
	movq	%r12, %rsi
	jmp	L2246
	.align 4,0x90
L2268:
	movq	%r14, %rdx
	movq	%rbx, %rsi
	jmp	L2240
	.align 4,0x90
L2267:
	movq	%r14, %rdx
	movq	%rbx, %rax
	jmp	L2239
	.align 4,0x90
L2272:
	movq	%r10, %r9
	movq	$0, -56(%rbp)
	xorl	%r8d, %r8d
	jmp	L2255
L2452:
	leaq	lC13(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7871:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf
	.weak_definition __ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf
__ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf:
LFB7897:
	testq	%rdx, %rdx
	je	L2679
	leaq	8(%rsp), %r10
LCFI179:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI180:
	movq	%rsp, %rbp
	pushq	%r15
LCFI181:
	movq	%rsi, %r15
	pushq	%r14
LCFI182:
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
LCFI183:
	movq	%rsi, %r12
	pushq	%r10
LCFI184:
	pushq	%rbx
LCFI185:
	movq	%rdx, %rbx
	subq	$32, %rsp
	movq	8(%rdi), %r13
	movq	16(%rdi), %rax
	subq	%r13, %rax
	movq	%r13, %r8
	sarq	$2, %rax
	cmpq	%rdx, %rax
	jb	L2457
	subq	%rsi, %r8
	vmovss	(%rcx), %xmm0
	movq	%r8, %rax
	sarq	$2, %rax
	cmpq	%rax, %rdx
	jnb	L2458
	salq	$2, %rbx
	movq	%r13, %rcx
	movq	%r13, %rax
	subq	%rbx, %rcx
	cmpq	%rcx, %r13
	je	L2459
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rdi
	vmovss	%xmm0, -64(%rbp)
	movq	%rcx, -56(%rbp)
	call	_memmove
	movq	8(%r14), %rax
	vmovss	-64(%rbp), %xmm0
	movq	-56(%rbp), %rcx
L2459:
	addq	%rbx, %rax
	movq	%rax, 8(%r14)
	cmpq	%rcx, %r12
	je	L2460
	subq	%r12, %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	vmovss	%xmm0, -56(%rbp)
	movq	%rcx, %rdx
	subq	%rcx, %rdi
	call	_memmove
	vmovss	-56(%rbp), %xmm0
L2460:
	leaq	(%r12,%rbx), %rcx
	cmpq	%rcx, %r12
	je	L2677
	movq	%r12, %rax
	subq	$4, %rbx
	movl	$9, %edi
	shrq	$2, %rax
	shrq	$2, %rbx
	leaq	4(%r12), %rsi
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rdi, %rdx
	cmpq	%rbx, %rdx
	ja	L2462
	testq	%rax, %rax
	je	L2495
	vmovss	%xmm0, (%r12)
	cmpq	$1, %rax
	je	L2463
	vmovss	%xmm0, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L2463
	vmovss	%xmm0, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L2463
	vmovss	%xmm0, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L2463
	vmovss	%xmm0, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L2463
	vmovss	%xmm0, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L2463
	vmovss	%xmm0, 24(%r12)
	leaq	28(%r12), %rsi
L2463:
	subq	%rax, %rbx
	leaq	(%r12,%rax,4), %rdx
	vbroadcastss	%xmm0, %ymm1
	xorl	%eax, %eax
	leaq	1(%rbx), %r8
	movq	%r8, %rdi
	shrq	$3, %rdi
	.align 4,0x90
L2466:
	addq	$1, %rax
	vmovaps	%ymm1, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rdi
	ja	L2466
	movq	%r8, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r15
	cmpq	%r8, %rax
	je	L2675
	vzeroupper
L2462:
	leaq	4(%r15), %rax
	vmovss	%xmm0, (%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	8(%r15), %rax
	vmovss	%xmm0, 4(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	12(%r15), %rax
	vmovss	%xmm0, 8(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	16(%r15), %rax
	vmovss	%xmm0, 12(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	20(%r15), %rax
	vmovss	%xmm0, 16(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	24(%r15), %rax
	vmovss	%xmm0, 20(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	28(%r15), %rax
	vmovss	%xmm0, 24(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	32(%r15), %rax
	vmovss	%xmm0, 28(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	36(%r15), %rax
	vmovss	%xmm0, 32(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	40(%r15), %rax
	vmovss	%xmm0, 36(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	44(%r15), %rax
	vmovss	%xmm0, 40(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	48(%r15), %rax
	vmovss	%xmm0, 44(%r15)
	cmpq	%rax, %rcx
	je	L2677
	leaq	52(%r15), %rax
	vmovss	%xmm0, 48(%r15)
	cmpq	%rax, %rcx
	je	L2677
	vmovss	%xmm0, 52(%r15)
	jmp	L2677
	.align 4,0x90
L2679:
LCFI186:
	ret
	.align 4,0x90
L2458:
LCFI187:
	subq	%rax, %rbx
	je	L2496
	movq	%r13, %rax
	movl	$9, %ecx
	leaq	-1(%rbx), %rsi
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	leaq	7(%rax), %rdx
	cmpq	$9, %rdx
	cmovb	%rcx, %rdx
	cmpq	%rdx, %rsi
	jb	L2497
	testq	%rax, %rax
	je	L2498
	vmovss	%xmm0, 0(%r13)
	leaq	4(%r13), %rdx
	cmpq	$1, %rax
	je	L2470
	vmovss	%xmm0, 4(%r13)
	leaq	-2(%rbx), %rsi
	leaq	8(%r13), %rdx
	cmpq	$2, %rax
	je	L2470
	vmovss	%xmm0, 8(%r13)
	leaq	-3(%rbx), %rsi
	leaq	12(%r13), %rdx
	cmpq	$3, %rax
	je	L2470
	vmovss	%xmm0, 12(%r13)
	leaq	-4(%rbx), %rsi
	leaq	16(%r13), %rdx
	cmpq	$4, %rax
	je	L2470
	vmovss	%xmm0, 16(%r13)
	leaq	-5(%rbx), %rsi
	leaq	20(%r13), %rdx
	cmpq	$5, %rax
	je	L2470
	vmovss	%xmm0, 20(%r13)
	leaq	-6(%rbx), %rsi
	leaq	24(%r13), %rdx
	cmpq	$6, %rax
	je	L2470
	vmovss	%xmm0, 24(%r13)
	leaq	-7(%rbx), %rsi
	leaq	28(%r13), %rdx
L2470:
	movq	%rbx, %rdi
	leaq	0(%r13,%rax,4), %rcx
	vbroadcastss	%xmm0, %ymm1
	subq	%rax, %rdi
	xorl	%eax, %eax
	movq	%rdi, %r9
	shrq	$3, %r9
	.align 4,0x90
L2472:
	addq	$1, %rax
	vmovaps	%ymm1, (%rcx)
	addq	$32, %rcx
	cmpq	%rax, %r9
	ja	L2472
	movq	%rdi, %rcx
	movq	%rsi, %rax
	andq	$-8, %rcx
	subq	%rcx, %rax
	leaq	(%rdx,%rcx,4), %rdx
	cmpq	%rcx, %rdi
	je	L2473
L2469:
	vmovss	%xmm0, (%rdx)
	cmpq	$1, %rax
	je	L2473
	vmovss	%xmm0, 4(%rdx)
	cmpq	$2, %rax
	je	L2473
	vmovss	%xmm0, 8(%rdx)
	cmpq	$3, %rax
	je	L2473
	vmovss	%xmm0, 12(%rdx)
	cmpq	$4, %rax
	je	L2473
	vmovss	%xmm0, 16(%rdx)
	cmpq	$5, %rax
	je	L2473
	vmovss	%xmm0, 20(%rdx)
	cmpq	$6, %rax
	je	L2473
	vmovss	%xmm0, 24(%rdx)
	cmpq	$7, %rax
	je	L2473
	vmovss	%xmm0, 28(%rdx)
	cmpq	$8, %rax
	je	L2473
	vmovss	%xmm0, 32(%rdx)
	cmpq	$9, %rax
	je	L2473
	vmovss	%xmm0, 36(%rdx)
	cmpq	$10, %rax
	je	L2473
	vmovss	%xmm0, 40(%rdx)
	cmpq	$11, %rax
	je	L2473
	vmovss	%xmm0, 44(%rdx)
	cmpq	$12, %rax
	je	L2473
	vmovss	%xmm0, 48(%rdx)
	cmpq	$13, %rax
	je	L2473
	vmovss	%xmm0, 52(%rdx)
	.align 4,0x90
L2473:
	leaq	0(%r13,%rbx,4), %rdi
L2468:
	movq	%rdi, 8(%r14)
	cmpq	%r12, %r13
	je	L2474
	movq	%r8, %rdx
	movq	%r12, %rsi
	vmovss	%xmm0, -64(%rbp)
	movq	%r8, -56(%rbp)
	vzeroupper
	call	_memmove
	movq	8(%r14), %rdi
	vmovss	-64(%rbp), %xmm0
	movq	-56(%rbp), %r8
L2474:
	addq	%r8, %rdi
	movq	%rdi, 8(%r14)
	cmpq	%r12, %r13
	je	L2675
	movq	%r12, %rax
	leaq	4(%r12), %rsi
	movq	%r13, %rdx
	movl	$9, %edi
	shrq	$2, %rax
	subq	%rsi, %rdx
	negq	%rax
	shrq	$2, %rdx
	andl	$7, %eax
	leaq	7(%rax), %rcx
	cmpq	$9, %rcx
	cmovb	%rdi, %rcx
	cmpq	%rcx, %rdx
	jb	L2475
	testq	%rax, %rax
	je	L2499
	vmovss	%xmm0, (%r12)
	cmpq	$1, %rax
	je	L2476
	vmovss	%xmm0, 4(%r12)
	leaq	8(%r12), %rsi
	cmpq	$2, %rax
	je	L2476
	vmovss	%xmm0, 8(%r12)
	leaq	12(%r12), %rsi
	cmpq	$3, %rax
	je	L2476
	vmovss	%xmm0, 12(%r12)
	leaq	16(%r12), %rsi
	cmpq	$4, %rax
	je	L2476
	vmovss	%xmm0, 16(%r12)
	leaq	20(%r12), %rsi
	cmpq	$5, %rax
	je	L2476
	vmovss	%xmm0, 20(%r12)
	leaq	24(%r12), %rsi
	cmpq	$6, %rax
	je	L2476
	vmovss	%xmm0, 24(%r12)
	leaq	28(%r12), %rsi
L2476:
	subq	%rax, %rdx
	vbroadcastss	%xmm0, %ymm1
	leaq	1(%rdx), %rdi
	leaq	(%r12,%rax,4), %rdx
	xorl	%eax, %eax
	movq	%rdi, %rcx
	shrq	$3, %rcx
	.align 4,0x90
L2479:
	addq	$1, %rax
	vmovaps	%ymm1, (%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rcx
	ja	L2479
	movq	%rdi, %rax
	andq	$-8, %rax
	leaq	(%rsi,%rax,4), %r15
	cmpq	%rax, %rdi
	je	L2675
L2475:
	leaq	4(%r15), %rax
	vmovss	%xmm0, (%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	8(%r15), %rax
	vmovss	%xmm0, 4(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	12(%r15), %rax
	vmovss	%xmm0, 8(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	16(%r15), %rax
	vmovss	%xmm0, 12(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	20(%r15), %rax
	vmovss	%xmm0, 16(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	24(%r15), %rax
	vmovss	%xmm0, 20(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	28(%r15), %rax
	vmovss	%xmm0, 24(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	32(%r15), %rax
	vmovss	%xmm0, 28(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	36(%r15), %rax
	vmovss	%xmm0, 32(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	40(%r15), %rax
	vmovss	%xmm0, 36(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	44(%r15), %rax
	vmovss	%xmm0, 40(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	48(%r15), %rax
	vmovss	%xmm0, 44(%r15)
	cmpq	%rax, %r13
	je	L2675
	leaq	52(%r15), %rax
	vmovss	%xmm0, 48(%r15)
	cmpq	%rax, %r13
	je	L2675
	vmovss	%xmm0, 52(%r15)
	vzeroupper
	jmp	L2677
	.align 4,0x90
L2457:
	movabsq	$4611686018427387903, %rdx
	movq	(%rdi), %r15
	movq	%rdx, %rax
	subq	%r15, %r13
	sarq	$2, %r13
	subq	%r13, %rax
	cmpq	%rax, %rbx
	ja	L2682
	cmpq	%r13, %rbx
	movq	%r13, %rax
	cmovnb	%rbx, %rax
	addq	%rax, %r13
	setc	%al
	subq	%r15, %rsi
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	L2501
	cmpq	%rdx, %r13
	ja	L2501
	testq	%r13, %r13
	je	L2502
	salq	$2, %r13
L2484:
	movq	%r13, %rdi
	movq	%rcx, -64(%rbp)
	movq	%rsi, -56(%rbp)
	call	__Znwm
	movq	(%r14), %r15
	movq	%r12, %r10
	movq	8(%r14), %r8
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %r9
	addq	%rax, %r13
	subq	%r15, %r10
L2485:
	leaq	(%r9,%rsi), %rax
	movl	$9, %r11d
	vmovss	(%rcx), %xmm0
	leaq	-1(%rbx), %rcx
	movq	%rax, %rdx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	leaq	7(%rdx), %rdi
	cmpq	$9, %rdi
	cmovb	%r11, %rdi
	cmpq	%rdi, %rcx
	jb	L2503
	testq	%rdx, %rdx
	je	L2504
	vmovss	%xmm0, (%rax)
	leaq	4(%rax), %rdi
	cmpq	$1, %rdx
	je	L2487
	vmovss	%xmm0, 4(%rax)
	leaq	-2(%rbx), %rcx
	leaq	8(%rax), %rdi
	cmpq	$2, %rdx
	je	L2487
	vmovss	%xmm0, 8(%rax)
	leaq	-3(%rbx), %rcx
	leaq	12(%rax), %rdi
	cmpq	$3, %rdx
	je	L2487
	vmovss	%xmm0, 12(%rax)
	leaq	-4(%rbx), %rcx
	leaq	16(%rax), %rdi
	cmpq	$4, %rdx
	je	L2487
	vmovss	%xmm0, 16(%rax)
	leaq	-5(%rbx), %rcx
	leaq	20(%rax), %rdi
	cmpq	$5, %rdx
	je	L2487
	vmovss	%xmm0, 20(%rax)
	leaq	-6(%rbx), %rcx
	leaq	24(%rax), %rdi
	cmpq	$6, %rdx
	je	L2487
	vmovss	%xmm0, 24(%rax)
	leaq	-7(%rbx), %rcx
	leaq	28(%rax), %rdi
L2487:
	movq	%rbx, %r11
	vbroadcastss	%xmm0, %ymm1
	subq	%rdx, %r11
	leaq	(%rsi,%rdx,4), %rdx
	xorl	%esi, %esi
	leaq	-8(%r11), %rax
	addq	%r9, %rdx
	shrq	$3, %rax
	addq	$1, %rax
	.align 4,0x90
L2489:
	addq	$1, %rsi
	vmovaps	%ymm1, (%rdx)
	addq	$32, %rdx
	cmpq	%rsi, %rax
	ja	L2489
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	subq	%rdx, %rcx
	addq	%rdi, %rax
	cmpq	%rdx, %r11
	je	L2683
	vzeroupper
L2486:
	vmovss	%xmm0, (%rax)
	cmpq	$1, %rcx
	je	L2490
	vmovss	%xmm0, 4(%rax)
	cmpq	$2, %rcx
	je	L2490
	vmovss	%xmm0, 8(%rax)
	cmpq	$3, %rcx
	je	L2490
	vmovss	%xmm0, 12(%rax)
	cmpq	$4, %rcx
	je	L2490
	vmovss	%xmm0, 16(%rax)
	cmpq	$5, %rcx
	je	L2490
	vmovss	%xmm0, 20(%rax)
	cmpq	$6, %rcx
	je	L2490
	vmovss	%xmm0, 24(%rax)
	cmpq	$7, %rcx
	je	L2490
	vmovss	%xmm0, 28(%rax)
	cmpq	$8, %rcx
	je	L2490
	vmovss	%xmm0, 32(%rax)
	cmpq	$9, %rcx
	je	L2490
	vmovss	%xmm0, 36(%rax)
	cmpq	$10, %rcx
	je	L2490
	vmovss	%xmm0, 40(%rax)
	cmpq	$11, %rcx
	je	L2490
	vmovss	%xmm0, 44(%rax)
	cmpq	$12, %rcx
	je	L2490
	vmovss	%xmm0, 48(%rax)
	cmpq	$13, %rcx
	je	L2490
	vmovss	%xmm0, 52(%rax)
	.align 4,0x90
L2490:
	cmpq	%r15, %r12
	je	L2491
	movq	%r10, %rdx
	movq	%r9, %rdi
	movq	%r15, %rsi
	movq	%r8, -64(%rbp)
	movq	%r10, -56(%rbp)
	call	_memmove
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	%rax, %r9
L2491:
	leaq	(%r10,%rbx,4), %rcx
	movq	%r8, %rbx
	addq	%r9, %rcx
	subq	%r12, %rbx
	cmpq	%r8, %r12
	je	L2492
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r9, -56(%rbp)
	call	_memcpy
	movq	-56(%rbp), %r9
	movq	%rax, %rcx
L2492:
	addq	%rcx, %rbx
	testq	%r15, %r15
	je	L2493
	movq	%r15, %rdi
	movq	%r9, -56(%rbp)
	call	__ZdlPv
	movq	-56(%rbp), %r9
L2493:
	movq	%r9, (%r14)
	movq	%rbx, 8(%r14)
	movq	%r13, 16(%r14)
L2677:
	addq	$32, %rsp
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
L2675:
LCFI190:
	vzeroupper
	jmp	L2677
	.align 4,0x90
L2501:
	movq	$-4, %r13
	jmp	L2484
	.align 4,0x90
L2496:
	movq	%r13, %rdi
	jmp	L2468
	.align 4,0x90
L2504:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	jmp	L2487
	.align 4,0x90
L2683:
	vzeroupper
	jmp	L2490
	.align 4,0x90
L2503:
	movq	%rbx, %rcx
	jmp	L2486
	.align 4,0x90
L2495:
	movq	%r12, %rsi
	jmp	L2463
	.align 4,0x90
L2499:
	movq	%r12, %rsi
	jmp	L2476
	.align 4,0x90
L2498:
	movq	%r13, %rdx
	movq	%rbx, %rsi
	jmp	L2470
	.align 4,0x90
L2497:
	movq	%r13, %rdx
	movq	%rbx, %rax
	jmp	L2469
	.align 4,0x90
L2502:
	movq	%rsi, %r10
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	jmp	L2485
L2682:
	leaq	lC13(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7897:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorIN8MosaicSC2SCINS0_5BaseCEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.weak_definition __ZNSt6vectorIN8MosaicSC2SCINS0_5BaseCEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
__ZNSt6vectorIN8MosaicSC2SCINS0_5BaseCEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
LFB7925:
	leaq	8(%rsp), %r10
LCFI191:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI192:
	movq	%rsp, %rbp
	pushq	%r15
LCFI193:
	movq	%rsi, %r15
	pushq	%r14
LCFI194:
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
LCFI195:
	movq	%rdx, %r12
	pushq	%r10
LCFI196:
	pushq	%rbx
LCFI197:
	movq	%rsi, %rbx
	subq	$32, %rsp
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdi
	movq	%rdi, %rax
	subq	%rcx, %r15
	subq	%rcx, %rax
	sarq	$7, %rax
	je	L2700
	leaq	(%rax,%rax), %rsi
	movq	$-128, %rdx
	cmpq	%rsi, %rax
	jbe	L2714
L2686:
	movq	%rdx, %rdi
	movq	%rdx, -56(%rbp)
	call	__Znwm
	movq	-56(%rbp), %rdx
	movq	(%r14), %rcx
	movq	%rax, %r13
	movq	8(%r14), %rdi
	leaq	(%rax,%rdx), %rax
	movq	%rax, -72(%rbp)
	leaq	128(%r13), %rax
	movq	%rax, -64(%rbp)
L2687:
	movq	(%r12), %rdx
	leaq	0(%r13,%r15), %rax
	vmovdqu	72(%r12), %ymm0
	vmovdqu	40(%r12), %ymm1
	vmovdqu	8(%r12), %ymm2
	movq	%rdx, (%rax)
	movq	104(%r12), %rdx
	vmovdqu	%ymm0, 72(%rax)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdx, 104(%rax)
	movq	112(%r12), %rdx
	vmovdqu	%ymm2, 8(%rax)
	movq	%rdx, 112(%rax)
	movq	120(%r12), %rdx
	vmovdqu	%ymm1, 40(%rax)
	vmovdqu	%ymm0, 8(%r12)
	vmovdqu	%ymm0, 40(%r12)
	vmovdqu	%ymm0, 72(%r12)
	movq	$0, 104(%r12)
	movq	$0, 112(%r12)
	movq	%rdx, 120(%rax)
	movq	$0, 120(%r12)
	cmpq	%rcx, %rbx
	je	L2688
	leaq	128(%rcx), %r9
	movq	%rbx, %r10
	movq	%rcx, %rdx
	movq	%r13, %rax
	subq	%r9, %r10
	movq	%r10, %r11
	addq	%r9, %r10
	shrq	$7, %r11
	.align 4,0x90
L2689:
	movq	(%rdx), %rsi
	movq	$0, 16(%rax)
	subq	$-128, %rdx
	subq	$-128, %rax
	movq	$0, -104(%rax)
	movq	$0, -120(%rax)
	movq	%rsi, -128(%rax)
	movq	-120(%rdx), %rsi
	movq	%rsi, -120(%rax)
	movq	-112(%rdx), %r8
	movq	$0, -120(%rdx)
	movq	-112(%rax), %rsi
	movq	%r8, -112(%rax)
	movq	-104(%rdx), %r8
	movq	%rsi, -112(%rdx)
	movq	-104(%rax), %rsi
	movq	%r8, -104(%rax)
	movq	%rsi, -104(%rdx)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -96(%rax)
	movq	-96(%rdx), %rsi
	movq	%rsi, -96(%rax)
	movq	-88(%rdx), %r8
	movq	$0, -96(%rdx)
	movq	-88(%rax), %rsi
	movq	%r8, -88(%rax)
	movq	-80(%rdx), %r8
	movq	%rsi, -88(%rdx)
	movq	-80(%rax), %rsi
	movq	%r8, -80(%rax)
	movq	%rsi, -80(%rdx)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	-72(%rdx), %rsi
	movq	%rsi, -72(%rax)
	movq	-64(%rdx), %r8
	movq	$0, -72(%rdx)
	movq	-64(%rax), %rsi
	movq	%r8, -64(%rax)
	movq	-56(%rdx), %r8
	movq	%rsi, -64(%rdx)
	movq	-56(%rax), %rsi
	movq	%r8, -56(%rax)
	movq	%rsi, -56(%rdx)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -48(%rax)
	movq	-48(%rdx), %rsi
	movq	%rsi, -48(%rax)
	movq	-40(%rdx), %r8
	movq	$0, -48(%rdx)
	movq	-40(%rax), %rsi
	movq	%r8, -40(%rax)
	movq	-32(%rdx), %r8
	movq	%rsi, -40(%rdx)
	movq	-32(%rax), %rsi
	movq	%r8, -32(%rax)
	movq	%rsi, -32(%rdx)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	$0, -8(%rax)
	movq	-24(%rdx), %rsi
	movq	%rsi, -24(%rax)
	movq	$0, -24(%rdx)
	movq	-16(%rax), %rsi
	movq	-16(%rdx), %r8
	movq	%r8, -16(%rax)
	movq	-8(%rdx), %r8
	movq	%rsi, -16(%rdx)
	movq	-8(%rax), %rsi
	movq	%r8, -8(%rax)
	movq	%rsi, -8(%rdx)
	cmpq	%r10, %rdx
	jne	L2689
	salq	$7, %r11
	leaq	256(%r13,%r11), %rax
	movq	%rax, -64(%rbp)
	cmpq	%rdi, %rbx
	je	L2690
L2699:
	leaq	128(%rbx), %r8
	movq	%rdi, %rax
	movq	%rbx, %rsi
	subq	%r8, %rax
	movq	%rax, %r9
	addq	%rax, %r8
	movq	-64(%rbp), %rax
	shrq	$7, %r9
	.align 4,0x90
L2691:
	movq	(%rsi), %rdx
	subq	$-128, %rsi
	subq	$-128, %rax
	movq	%rdx, -128(%rax)
	movq	-120(%rsi), %rdx
	movq	$0, -120(%rsi)
	movq	%rdx, -120(%rax)
	movq	-112(%rsi), %rdx
	movq	$0, -112(%rsi)
	movq	%rdx, -112(%rax)
	movq	-104(%rsi), %rdx
	movq	$0, -104(%rsi)
	movq	%rdx, -104(%rax)
	movq	-96(%rsi), %rdx
	movq	$0, -96(%rsi)
	movq	%rdx, -96(%rax)
	movq	-88(%rsi), %rdx
	movq	$0, -88(%rsi)
	movq	%rdx, -88(%rax)
	movq	-80(%rsi), %rdx
	movq	$0, -80(%rsi)
	movq	%rdx, -80(%rax)
	movq	-72(%rsi), %rdx
	movq	$0, -72(%rsi)
	movq	%rdx, -72(%rax)
	movq	-64(%rsi), %rdx
	movq	$0, -64(%rsi)
	movq	%rdx, -64(%rax)
	movq	-56(%rsi), %rdx
	movq	$0, -56(%rsi)
	movq	%rdx, -56(%rax)
	movq	-48(%rsi), %rdx
	movq	$0, -48(%rsi)
	movq	%rdx, -48(%rax)
	movq	-40(%rsi), %rdx
	movq	$0, -40(%rsi)
	movq	%rdx, -40(%rax)
	movq	-32(%rsi), %rdx
	movq	$0, -32(%rsi)
	movq	%rdx, -32(%rax)
	movq	-24(%rsi), %rdx
	movq	$0, -24(%rsi)
	movq	%rdx, -24(%rax)
	movq	-16(%rsi), %rdx
	movq	$0, -16(%rsi)
	movq	%rdx, -16(%rax)
	movq	-8(%rsi), %rdx
	movq	$0, -8(%rsi)
	movq	%rdx, -8(%rax)
	cmpq	%r8, %rsi
	jne	L2691
	addq	$1, %r9
	salq	$7, %r9
	addq	%r9, -64(%rbp)
	cmpq	%rdi, %rcx
	je	L2711
	leaq	128(%rcx), %r9
L2690:
	subq	%r9, %rdi
	leaq	104(%rcx), %r12
	leaq	232(%rcx,%rdi), %rax
	movq	%rax, -56(%rbp)
	vzeroupper
	.align 4,0x90
L2697:
	leaq	-120(%r12), %rbx
	movq	%r12, %r15
	.align 4,0x90
L2693:
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	L2694
	call	__ZdlPv
	subq	$24, %r15
	cmpq	%rbx, %r15
	jne	L2693
	subq	$-128, %r12
	cmpq	-56(%rbp), %r12
	jne	L2697
L2715:
	movq	(%r14), %rdi
L2692:
	testq	%rdi, %rdi
	je	L2698
	call	__ZdlPv
L2698:
	movq	-64(%rbp), %rax
	movq	%r13, (%r14)
	movq	%rax, 8(%r14)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%r14)
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
LCFI198:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI199:
	ret
	.align 4,0x90
L2694:
LCFI200:
	subq	$24, %r15
	cmpq	%rbx, %r15
	jne	L2693
	subq	$-128, %r12
	cmpq	-56(%rbp), %r12
	jne	L2697
	jmp	L2715
	.align 4,0x90
L2688:
	cmpq	%rdi, %rbx
	jne	L2699
L2711:
	vzeroupper
	jmp	L2692
	.align 4,0x90
L2700:
	movl	$1, %esi
L2685:
	salq	$7, %rsi
	movq	%rsi, %rdx
	jmp	L2686
L2714:
	movabsq	$144115188075855871, %rax
	cmpq	%rax, %rsi
	ja	L2686
	testq	%rsi, %rsi
	jne	L2685
	movq	$128, -64(%rbp)
	xorl	%r13d, %r13d
	movq	$0, -72(%rbp)
	jmp	L2687
LFE7925:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5Potts6setSCsEv
__ZN8MosaicSC5Potts6setSCsEv:
LFB6556:
	pushq	%r15
LCFI201:
	leaq	216(%rdi), %rax
	movq	%rdi, %r15
	pushq	%r14
LCFI202:
	pushq	%r13
LCFI203:
	pushq	%r12
LCFI204:
	pushq	%rbp
LCFI205:
	pushq	%rbx
LCFI206:
	subq	$168, %rsp
LCFI207:
	movq	216(%rdi), %r14
	movq	%rax, 24(%rsp)
	movq	224(%rdi), %rax
	cmpq	%rax, %r14
	je	L2717
	leaq	104(%r14), %r12
	leaq	104(%rax), %r13
	.align 4,0x90
L2722:
	leaq	-120(%r12), %rbp
	movq	%r12, %rbx
	.align 4,0x90
L2718:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L2719
	call	__ZdlPv
	subq	$24, %rbx
	cmpq	%rbp, %rbx
	jne	L2718
	subq	$-128, %r12
	cmpq	%r12, %r13
	jne	L2722
L2717:
	movq	240(%r15), %rbp
	movq	248(%r15), %rbx
	movq	%r14, 224(%r15)
	cmpq	%rbp, %rbx
	je	L2728
	leaq	24(%rbp), %rax
	subq	%rax, %rbx
	andq	$-8, %rbx
	addq	%rax, %rbx
	.align 4,0x90
L2727:
	movq	0(%rbp), %rdi
	movq	8(%rbp), %rax
	cmpq	%rdi, %rax
	je	L2726
	leaq	8(%rdi), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rax
	shrq	$3, %rax
	leaq	8(,%rax,8), %rdx
	call	_memset
L2726:
	addq	$24, %rbp
	cmpq	%rbp, %rbx
	jne	L2727
L2728:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rax
	testq	%rax, %rax
	je	L2724
	leaq	32(%rsp), %rcx
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	leaq	16(%rsp), %r12
	xorl	%ebp, %ebp
	movq	%rcx, 8(%rsp)
	leaq	136(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	.align 4,0x90
L2739:
	testq	%rdx, %rdx
	je	L2749
	leaq	0(%rbp,%rbp,2), %r9
	xorl	%ebx, %ebx
	leaq	0(,%r9,8), %r14
	jmp	L2738
	.align 4,0x90
L2731:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	L2750
L2738:
	movq	240(%r15), %rax
	movq	(%rax,%r14), %rax
	cmpq	$0, (%rax,%rbx,8)
	jne	L2731
	movq	504(%r15), %rax
	movq	(%rax,%r14), %rax
	cmpq	$0, (%rax,%rbx,8)
	je	L2731
	movq	224(%r15), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rdi
	subq	216(%r15), %rax
	movq	8(%rsp), %rcx
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	sarq	$7, %rax
	movq	%rax, 32(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	call	__ZN8MosaicSC5Potts5parceEmmRNS_2SCINS_5BaseCEEE
	movq	224(%r15), %rsi
	cmpq	232(%r15), %rsi
	je	L2732
	movq	32(%rsp), %rax
	movq	$0, 8(%rsi)
	subq	$-128, %rsi
	movq	$0, -112(%rsi)
	movq	%rax, -128(%rsi)
	movq	40(%rsp), %rax
	movq	$0, -104(%rsi)
	movq	%rax, -120(%rsi)
	movq	48(%rsp), %rax
	movq	$0, -96(%rsi)
	movq	%rax, -112(%rsi)
	movq	56(%rsp), %rax
	movq	$0, -88(%rsi)
	movq	%rax, -104(%rsi)
	movq	64(%rsp), %rax
	movq	$0, -80(%rsi)
	movq	%rax, -96(%rsi)
	movq	72(%rsp), %rax
	movq	$0, -72(%rsi)
	movq	%rax, -88(%rsi)
	movq	80(%rsp), %rax
	movq	$0, -64(%rsi)
	movq	%rax, -80(%rsi)
	movq	88(%rsp), %rax
	movq	$0, -56(%rsi)
	movq	%rax, -72(%rsi)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	96(%rsp), %rax
	movq	$0, -48(%rsi)
	movq	%rax, -64(%rsi)
	movq	104(%rsp), %rax
	movq	$0, -40(%rsi)
	movq	%rax, -56(%rsi)
	movq	112(%rsp), %rax
	movq	$0, -32(%rsi)
	movq	%rax, -48(%rsi)
	movq	120(%rsp), %rax
	movq	$0, -24(%rsi)
	movq	%rax, -40(%rsi)
	movq	128(%rsp), %rax
	movq	$0, -16(%rsi)
	movq	%rax, -32(%rsi)
	movq	136(%rsp), %rax
	movq	$0, -8(%rsi)
	movq	%rax, -24(%rsi)
	movq	144(%rsp), %rax
	movq	$0, 96(%rsp)
	movq	%rax, -16(%rsi)
	movq	152(%rsp), %rax
	movq	$0, 104(%rsp)
	movq	%rax, -8(%rsi)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	%rsi, 224(%r15)
L2734:
	movq	16(%rsp), %r13
L2733:
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	L2735
	call	__ZdlPv
	subq	$24, %r13
	cmpq	%r12, %r13
	jne	L2733
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
L2751:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	L2738
	.align 4,0x90
L2750:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rax
L2730:
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	L2739
L2724:
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts16set_connectivityEv
	addq	$168, %rsp
LCFI208:
	popq	%rbx
LCFI209:
	popq	%rbp
LCFI210:
	popq	%r12
LCFI211:
	popq	%r13
LCFI212:
	popq	%r14
LCFI213:
	popq	%r15
LCFI214:
	ret
	.align 4,0x90
L2719:
LCFI215:
	subq	$24, %rbx
	cmpq	%rbx, %rbp
	jne	L2718
	subq	$-128, %r12
	cmpq	%r12, %r13
	jne	L2722
	jmp	L2717
	.align 4,0x90
L2735:
	subq	$24, %r13
	cmpq	%r12, %r13
	jne	L2733
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	jmp	L2751
	.align 4,0x90
L2732:
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rdi
	call	__ZNSt6vectorIN8MosaicSC2SCINS0_5BaseCEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	jmp	L2734
L2749:
	addq	$1, %rbp
	cmpq	%rbp, %rax
	ja	L2730
	jmp	L2724
LFE6556:
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA6556:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.cstring
lC14:
	.ascii "basic_string::_M_create\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB7970:
	pushq	%r15
LCFI216:
	movq	%rdx, %r15
	pushq	%r14
LCFI217:
	leaq	16(%rdi), %r14
	pushq	%r13
LCFI218:
	pushq	%r12
LCFI219:
	movq	%rsi, %r12
	pushq	%rbp
LCFI220:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI221:
	movq	%r8, %rbx
	subq	%rdx, %rbx
	subq	$40, %rsp
LCFI222:
	movq	8(%rdi), %rax
	movq	%rax, %r13
	addq	%rax, %rbx
	movl	$15, %eax
	subq	%rsi, %r13
	subq	%rdx, %r13
	cmpq	(%rdi), %r14
	je	L2753
	movq	16(%rdi), %rax
L2753:
	testq	%rbx, %rbx
	js	L2780
	cmpq	%rax, %rbx
	jbe	L2779
	addq	%rax, %rax
	cmpq	%rax, %rbx
	jnb	L2779
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbx
	testq	%rax, %rax
	js	L2756
	leaq	1(%rax), %rdi
	movq	%rax, %rbx
	jmp	L2756
	.align 4,0x90
L2779:
	leaq	1(%rbx), %rdi
L2756:
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	testq	%r12, %r12
	movq	0(%rbp), %r9
	movq	8(%rsp), %rcx
	movq	%rax, %r10
	movq	16(%rsp), %r8
	je	L2759
	cmpq	$1, %r12
	jne	L2760
	movzbl	(%r9), %eax
	movb	%al, (%r10)
L2759:
	testq	%rcx, %rcx
	je	L2761
	testq	%r8, %r8
	je	L2761
	leaq	(%r10,%r12), %rdi
	cmpq	$1, %r8
	je	L2781
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r9, 24(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	_memcpy
	movq	24(%rsp), %r9
	movq	16(%rsp), %r10
	movq	8(%rsp), %r8
	.align 4,0x90
L2761:
	testq	%r13, %r13
	jne	L2782
L2763:
	cmpq	%r9, %r14
	je	L2765
	movq	%r9, %rdi
	movq	%r10, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %r10
L2765:
	movq	%r10, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$40, %rsp
LCFI223:
	popq	%rbx
LCFI224:
	popq	%rbp
LCFI225:
	popq	%r12
LCFI226:
	popq	%r13
LCFI227:
	popq	%r14
LCFI228:
	popq	%r15
LCFI229:
	ret
	.align 4,0x90
L2782:
LCFI230:
	leaq	(%r12,%r15), %rsi
	leaq	(%r12,%r8), %rdi
	addq	%r9, %rsi
	addq	%r10, %rdi
	cmpq	$1, %r13
	jne	L2764
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L2763
	.align 4,0x90
L2764:
	movq	%r13, %rdx
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	_memcpy
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	jmp	L2763
	.align 4,0x90
L2760:
	movq	%r9, %rsi
	movq	%r12, %rdx
	movq	%rax, %rdi
	movq	%r8, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	_memcpy
	movq	24(%rsp), %r8
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r9
	movq	%rax, %r10
	jmp	L2759
	.align 4,0x90
L2781:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r13, %r13
	je	L2763
	jmp	L2782
L2780:
	leaq	lC14(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7970:
	.cstring
lC15:
	.ascii "basic_string::_M_replace\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
LFB7971:
	movabsq	$9223372036854775807, %rax
	pushq	%r15
LCFI231:
	pushq	%r14
LCFI232:
	pushq	%r13
LCFI233:
	pushq	%r12
LCFI234:
	movq	%rdx, %r12
	pushq	%rbp
LCFI235:
	addq	%r12, %rax
	pushq	%rbx
LCFI236:
	subq	$40, %rsp
LCFI237:
	movq	8(%rdi), %rdx
	subq	%rdx, %rax
	cmpq	%rax, %r8
	ja	L2846
	movq	%r8, %r15
	movq	%rdx, %r9
	movq	(%rdi), %rax
	leaq	16(%rdi), %r10
	subq	%r12, %r15
	subq	%rsi, %r9
	movq	%rdi, %rbx
	movq	%rsi, %r13
	movq	%r8, %rbp
	leaq	(%rdx,%r15), %r14
	subq	%r12, %r9
	cmpq	%rax, %r10
	je	L2785
	movq	16(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	L2786
L2821:
	addq	%rax, %r13
	testq	%r9, %r9
	setne	%r10b
	cmpq	%rbp, %r12
	setne	%sil
	andl	%esi, %r10d
	cmpq	%rax, %rcx
	jnb	L2847
L2787:
	testb	%r10b, %r10b
	je	L2791
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L2848
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L2791:
	testq	%rbp, %rbp
	je	L2844
	cmpq	$1, %rbp
	jne	L2795
L2845:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L2794
	.align 4,0x90
L2847:
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	ja	L2787
	testq	%rbp, %rbp
	je	L2790
	cmpq	%rbp, %r12
	jb	L2790
	cmpq	$1, %rbp
	je	L2849
	movq	%rcx, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rdi
	movq	%r9, 16(%rsp)
	movb	%r10b, 8(%rsp)
	movq	%rcx, (%rsp)
	call	_memmove
	movzbl	8(%rsp), %r10d
	movq	(%rsp), %rcx
	movq	16(%rsp), %r9
	testb	%r10b, %r10b
	je	L2844
	.align 4,0x90
L2797:
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L2850
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L2800:
	cmpq	%rbp, %r12
	jnb	L2844
	addq	%r13, %r12
	leaq	(%rcx,%rbp), %rax
	cmpq	%rax, %r12
	jnb	L2851
	cmpq	%rcx, %r12
	ja	L2804
	leaq	(%rcx,%r15), %rsi
	cmpq	$1, %rbp
	je	L2852
	movq	%rbp, %rdx
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L2794
	.align 4,0x90
L2804:
	subq	%rcx, %r12
	cmpq	$1, %r12
	je	L2853
	testq	%r12, %r12
	jne	L2854
L2807:
	movq	%rbp, %rdx
	leaq	0(%r13,%rbp), %rsi
	leaq	0(%r13,%r12), %rdi
	subq	%r12, %rdx
	cmpq	$1, %rdx
	je	L2855
	testq	%rdx, %rdx
	je	L2844
	call	_memcpy
	.align 4,0x90
L2844:
	movq	(%rbx), %r11
L2794:
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%r11,%r14)
	addq	$40, %rsp
LCFI238:
	popq	%rbx
LCFI239:
	popq	%rbp
LCFI240:
	popq	%r12
LCFI241:
	popq	%r13
LCFI242:
	popq	%r14
LCFI243:
	popq	%r15
LCFI244:
	ret
	.align 4,0x90
L2785:
LCFI245:
	movl	$15, %esi
	cmpq	$15, %r14
	jbe	L2821
L2786:
	testq	%r14, %r14
	js	L2856
	leaq	(%rsi,%rsi), %r15
	cmpq	%r15, %r14
	jnb	L2857
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L2812
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
	jmp	L2812
	.align 4,0x90
L2795:
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L2794
	.align 4,0x90
L2848:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L2791
	.align 4,0x90
L2857:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
L2812:
	movq	%rcx, 16(%rsp)
	movq	%r9, 8(%rsp)
	movq	%r10, (%rsp)
	call	__Znwm
	testq	%r13, %r13
	movq	(%rbx), %r8
	movq	(%rsp), %r10
	movq	%rax, %r11
	movq	8(%rsp), %r9
	movq	16(%rsp), %rcx
	je	L2814
	cmpq	$1, %r13
	jne	L2815
	movzbl	(%r8), %eax
	movb	%al, (%r11)
L2814:
	testq	%rcx, %rcx
	je	L2816
	testq	%rbp, %rbp
	je	L2816
	leaq	(%r11,%r13), %rdi
	cmpq	$1, %rbp
	je	L2858
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r9, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_memcpy
	movq	24(%rsp), %r9
	movq	16(%rsp), %r8
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	.align 4,0x90
L2816:
	testq	%r9, %r9
	je	L2818
	leaq	(%r12,%r13), %rsi
	addq	%r13, %rbp
	addq	%r8, %rsi
	leaq	(%r11,%rbp), %rdi
	cmpq	$1, %r9
	jne	L2819
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
L2818:
	cmpq	%r8, %r10
	je	L2820
	movq	%r8, %rdi
	movq	%r11, (%rsp)
	call	__ZdlPv
	movq	(%rsp), %r11
L2820:
	movq	%r11, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	L2794
	.align 4,0x90
L2849:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
L2790:
	testb	%r10b, %r10b
	jne	L2797
	jmp	L2800
	.align 4,0x90
L2819:
	movq	%r9, %rdx
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_memcpy
	movq	16(%rsp), %r8
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	jmp	L2818
	.align 4,0x90
L2815:
	movq	%r8, %rsi
	movq	%r13, %rdx
	movq	%rax, %rdi
	movq	%rcx, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%r8, (%rsp)
	call	_memcpy
	movq	24(%rsp), %rcx
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	movq	(%rsp), %r8
	movq	%rax, %r11
	jmp	L2814
	.align 4,0x90
L2858:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	L2816
	.align 4,0x90
L2851:
	cmpq	$1, %rbp
	je	L2845
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	movq	(%rbx), %r11
	jmp	L2794
	.align 4,0x90
L2850:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L2800
L2853:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	jmp	L2807
L2852:
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L2794
L2855:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %r11
	jmp	L2794
L2854:
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	jmp	L2807
L2846:
	leaq	lC15(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L2856:
	leaq	lC14(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7971:
	.cstring
	.align 3
lC16:
	.ascii "basic_string::_M_construct null not valid\0"
lC17:
	.ascii "Lattice dimensions \0"
lC18:
	.ascii "basic_string::append\0"
lC19:
	.ascii " \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5PottsC1ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE
__ZN8MosaicSC5PottsC1ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE:
LFB6542:
	leaq	8(%rsp), %r10
LCFI246:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI247:
	movq	%rsp, %rbp
	pushq	%r15
LCFI248:
	movq	%rdi, %r15
	movl	$8, %edi
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI249:
	pushq	%rbx
	subq	$512, %rsp
LCFI250:
	movq	(%r10), %rax
	movq	%rsi, -488(%rbp)
	movq	%r8, -520(%rbp)
	movq	%r9, -528(%rbp)
	movq	%rdx, -512(%rbp)
	movq	%rcx, -544(%rbp)
	movq	%rax, -504(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	call	__Znwm
	movq	_._79(%rip), %rcx
	movl	$8, %edi
	leaq	8(%rax), %rdx
	movq	%rax, -280(%rbp)
	movq	%rcx, (%rax)
	movq	%rdx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	call	__Znwm
	movq	_._80(%rip), %rcx
	movl	$4, %edi
	leaq	8(%rax), %rdx
	movq	%rax, -256(%rbp)
	movq	%rcx, (%rax)
	movq	%rdx, -240(%rbp)
	movq	%rdx, -248(%rbp)
	call	__Znwm
	movl	$8, %edi
	movl	$2, (%rax)
	leaq	4(%rax), %rdx
	movq	%rdx, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rax, -232(%rbp)
	call	__Znwm
	movq	_._82(%rip), %rcx
	movq	$0, (%r15)
	movl	$120, %edi
	movq	$0, 8(%r15)
	leaq	8(%rax), %rdx
	movq	%rcx, (%rax)
	movq	$0, 16(%r15)
	movq	%rax, -208(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rdx, -200(%rbp)
LEHB0:
	call	__Znwm
LEHE0:
	movq	%rax, %rcx
	movq	%rax, -536(%rbp)
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	movq	%rax, (%r15)
	leaq	120(%rax), %rax
	movq	%rcx, %rbx
	movq	%rax, 16(%r15)
	leaq	-304(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	%rax, %r13
	xorl	%eax, %eax
	movq	$0, -480(%rbp)
	movq	-480(%rbp), %rdi
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, -472(%rbp)
	jmp	L2860
	.align 4,0x90
L2864:
	movq	8(%r13), %rax
	movq	0(%r13), %r14
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	%rax, %r12
	movq	%rax, -472(%rbp)
	subq	%r14, %r12
	movq	%r14, -480(%rbp)
	movq	%r12, %rax
	movq	$0, 16(%rbx)
	sarq	$2, %rax
	je	L3068
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	L3238
	movq	%r12, %rdi
LEHB1:
	call	__Znwm
LEHE1:
	movq	-480(%rbp), %rdi
L2860:
	leaq	(%rax,%r12), %rcx
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rcx, 16(%rbx)
	cmpq	%rdi, -472(%rbp)
	je	L2863
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rcx, -472(%rbp)
	call	_memcpy
	movq	-472(%rbp), %rcx
L2863:
	movq	-496(%rbp), %rax
	addq	$24, %r13
	movq	%rcx, 8(%rbx)
	addq	$24, %rbx
	addq	$120, %rax
	cmpq	%rax, %r13
	jne	L2864
	movq	-496(%rbp), %rax
	movq	%rbx, 8(%r15)
	leaq	-328(%rbp), %rbx
	leaq	96(%rax), %r12
L2865:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2873
	call	__ZdlPv
	subq	$24, %r12
	cmpq	%r12, %rbx
	jne	L2865
L2874:
	movl	$8, %edi
	call	__Znwm
	movq	_._83(%rip), %rcx
	movl	$4, %edi
	leaq	8(%rax), %rdx
	movq	%rax, -176(%rbp)
	movq	%rcx, (%rax)
	movq	%rdx, -160(%rbp)
	movq	%rdx, -168(%rbp)
	call	__Znwm
	movl	$4, %edi
	movl	$4, (%rax)
	leaq	4(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rax, -152(%rbp)
	call	__Znwm
	movl	$4, %edi
	movl	$3, (%rax)
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rax, -128(%rbp)
	call	__Znwm
	movl	$8, %edi
	movl	$4, (%rax)
	leaq	4(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rax, -104(%rbp)
	call	__Znwm
	movq	_._87(%rip), %rcx
	movq	$0, 24(%r15)
	movl	$120, %edi
	movq	$0, 32(%r15)
	leaq	8(%rax), %rdx
	movq	%rcx, (%rax)
	movq	$0, 40(%r15)
	movq	%rax, -80(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rdx, -72(%rbp)
LEHB2:
	call	__Znwm
LEHE2:
	movq	%rax, %rbx
	movq	%rax, -552(%rbp)
	movq	%rax, 24(%r15)
	leaq	120(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	%rax, 40(%r15)
	leaq	-176(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	%rax, %r13
	.align 4,0x90
L2876:
	movq	8(%r13), %rax
	movq	0(%r13), %r14
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	%rax, %r12
	movq	%rax, -472(%rbp)
	subq	%r14, %r12
	movq	$0, 16(%rbx)
	movq	%r12, %rax
	sarq	$2, %rax
	je	L3239
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	L3240
	movq	%r12, %rdi
LEHB3:
	call	__Znwm
LEHE3:
L2878:
	leaq	(%rax,%r12), %rcx
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rcx, 16(%rbx)
	cmpq	%r14, -472(%rbp)
	je	L2880
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rcx, -472(%rbp)
	call	_memcpy
	movq	-472(%rbp), %rcx
L2880:
	movq	%rcx, 8(%rbx)
	addq	$24, %r13
	addq	$24, %rbx
	cmpq	%rbx, -480(%rbp)
	jne	L2876
	movq	-536(%rbp), %rax
	movq	%rbx, 32(%r15)
	leaq	-200(%rbp), %rbx
	leaq	96(%rax), %r12
L2883:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2892
	call	__ZdlPv
	subq	$24, %r12
	cmpq	%r12, %rbx
	jne	L2883
L2893:
	movq	-488(%rbp), %rax
	movq	-544(%rbp), %rcx
	movq	%rax, 48(%r15)
	leaq	72(%r15), %rax
	movq	%rax, 56(%r15)
	movq	(%rcx), %r12
	movq	8(%rcx), %rbx
	movq	%r12, %rcx
	addq	%rbx, %rcx
	je	L2895
	testq	%r12, %r12
	je	L3241
L2895:
	cmpq	$15, %rbx
	ja	L3242
	cmpq	$1, %rbx
	je	L3243
	testq	%rbx, %rbx
	jne	L2898
L2900:
	movq	%rbx, 64(%r15)
	movq	%r15, %rsi
	movb	$0, (%rax,%rbx)
	movq	-520(%rbp), %rax
	movq	-512(%rbp), %rbx
	movq	%rax, 88(%r15)
	movq	-504(%rbp), %rax
	movq	%rbx, 104(%r15)
	movq	%rax, 96(%r15)
	movq	-528(%rbp), %rax
	movq	%rax, 112(%r15)
	leaq	120(%r15), %rax
	movq	%rax, %rdi
	movq	%rax, -520(%rbp)
	call	__ZN8MosaicSC2IOC1EPNS_5PottsE
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	movq	$0, 216(%r15)
	movq	$0, 224(%r15)
	movq	$0, 232(%r15)
	movq	$0, 240(%r15)
	movq	$0, 248(%r15)
	movq	$0, 256(%r15)
	vmovdqu	%ymm0, 264(%r15)
	vmovdqu	%ymm0, 296(%r15)
	vmovdqu	%ymm0, 328(%r15)
	movq	$0, 360(%r15)
	movq	$0, 368(%r15)
	movq	$0, 376(%r15)
	vmovdqu	%ymm0, 384(%r15)
	vmovdqu	%ymm0, 416(%r15)
	vmovdqu	%ymm0, 448(%r15)
	movq	$0, 480(%r15)
	movq	$0, 488(%r15)
	movq	$0, 496(%r15)
	movq	$0, 504(%r15)
	movq	$0, 512(%r15)
	movq	$0, 520(%r15)
	movq	$0, 528(%r15)
	movq	$0, 536(%r15)
	movq	$0, 544(%r15)
	movq	$0, 552(%r15)
	movq	$0, 560(%r15)
	movq	$0, 568(%r15)
	movq	$0, 576(%r15)
	movq	$0, 584(%r15)
	movq	$0, 592(%r15)
	vmovdqu	%ymm0, 600(%r15)
	vmovdqu	%ymm0, 632(%r15)
	vmovdqu	%ymm0, 664(%r15)
	movq	$0, 696(%r15)
	movq	$0, 704(%r15)
	movq	$0, 712(%r15)
	vzeroupper
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L3244
	movq	-488(%rbp), %rax
	movl	$1, %ecx
	movq	136(%rax), %rdx
	movq	(%rdx), %rax
	shrx	%rcx, 24(%rdx), %rcx
	leaq	(%rax,%rax,2), %rax
	addq	8(%rdx), %rax
	movq	16(%rdx), %rdx
	movq	$5, __ZN8MosaicSC5Potts1LE(%rip)
	shrq	%rax
	addq	$1, %rax
	leaq	1(%rcx,%rdx), %rdx
	cmpq	%rdx, %rax
	cmovb	%rdx, %rax
	testq	%rax, %rax
	js	L2902
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rax, %xmm0, %xmm0
L2903:
	movq	-488(%rbp), %rax
	vmulss	160(%rax), %xmm0, %xmm0
	vucomiss	lC8(%rip), %xmm0
	jnb	L2904
	vcvttss2siq	%xmm0, %r8
L2905:
	movq	_vsnprintf@GOTPCREL(%rip), %rbx
	movq	-536(%rbp), %rdi
	leaq	lC0(%rip), %rcx
	xorl	%eax, %eax
	movl	$32, %edx
	movq	%r8, 8+__ZN8MosaicSC5Potts1LE(%rip)
	movq	%rbx, %rsi
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.409
	movq	%rbx, %rsi
	movl	$32, %edx
	xorl	%eax, %eax
	movq	-496(%rbp), %rbx
	movq	__ZN8MosaicSC5Potts1LE(%rip), %r8
	leaq	lC0(%rip), %rcx
	movq	%rbx, %rdi
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.409
	leaq	lC17(%rip), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$19, %r8d
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	leaq	-336(%rbp), %rcx
	leaq	16(%rcx), %rdx
	movq	%rcx, -528(%rbp)
	movq	%rdx, -336(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L3245
	movq	%rcx, -336(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -320(%rbp)
L2907:
	movq	8(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-328(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rbx
	je	L3246
	movq	-528(%rbp), %rax
	movq	-336(%rbp), %rdx
	leaq	1(%rbx), %r12
	leaq	16(%rax), %rcx
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L2909
	movq	-320(%rbp), %rax
L2909:
	cmpq	%rax, %r12
	ja	L2910
	movb	$32, (%rdx,%rbx)
L2911:
	movq	-336(%rbp), %rax
	movq	%r12, -328(%rbp)
	movq	-528(%rbp), %rcx
	movb	$0, 1(%rax,%rbx)
	leaq	-368(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rax, -544(%rbp)
	leaq	16(%rcx), %rdi
	movq	-336(%rbp), %rax
	movq	%rdx, -368(%rbp)
	cmpq	%rdi, %rax
	je	L3247
	movq	-320(%rbp), %rcx
	movq	-328(%rbp), %rsi
	cmpq	%rdx, %rax
	movq	%rdi, -336(%rbp)
	movq	-168(%rbp), %r8
	movl	$15, %edi
	movq	%rax, -368(%rbp)
	movq	%rcx, -352(%rbp)
	cmovne	%rcx, %rdi
	movq	%rsi, -360(%rbp)
	leaq	(%r8,%rsi), %rbx
	movq	$0, -328(%rbp)
	movb	$0, -320(%rbp)
L2913:
	movq	-176(%rbp), %rcx
	cmpq	%rbx, %rdi
	jnb	L2914
	movq	-536(%rbp), %rdi
	movl	$15, %edx
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	je	L2915
	movq	-160(%rbp), %rdx
L2915:
	cmpq	%rbx, %rdx
	jnb	L3248
	movq	-544(%rbp), %rdi
	xorl	%edx, %edx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	-368(%rbp), %rax
L2919:
	movq	%rbx, -360(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-544(%rbp), %rax
L2917:
	leaq	-400(%rbp), %rcx
	leaq	16(%rcx), %rdx
	movq	%rcx, -552(%rbp)
	movq	%rdx, -400(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L3249
	movq	%rcx, -400(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -384(%rbp)
L2921:
	movq	8(%rax), %rcx
	movq	%rcx, -392(%rbp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movb	$0, 16(%rax)
	movq	-504(%rbp), %rax
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	L2922
	movq	-392(%rbp), %rdx
	movq	-400(%rbp), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L3250
	cmpb	$0, 56(%r12)
	je	L2924
	movsbl	67(%r12), %esi
L2925:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-504(%rbp), %rax
L2922:
	movq	(%rax), %rbx
	movq	-400(%rbp), %rsi
	testq	%rbx, %rbx
	je	L2926
	movq	-392(%rbp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L3251
	cmpb	$0, 56(%r12)
	je	L2928
	movsbl	67(%r12), %esi
L2929:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-400(%rbp), %rsi
L2926:
	movq	-552(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rsi
	je	L2930
	movq	%rsi, %rdi
	call	__ZdlPv
L2930:
	movq	-544(%rbp), %rax
	movq	-368(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L2931
	call	__ZdlPv
L2931:
	movq	-528(%rbp), %rax
	movq	-336(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L2932
	call	__ZdlPv
L2932:
	movq	-496(%rbp), %rax
	movq	-304(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L2933
	call	__ZdlPv
L2933:
	movq	-536(%rbp), %rax
	movq	-176(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L2934
	call	__ZdlPv
L2934:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rdx
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rax
	imulq	%rdx, %rax
	movq	%rax, __ZN8MosaicSC5Potts1VE(%rip)
	testq	%rdx, %rdx
	je	L3074
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	ja	L2945
	leaq	0(,%rdx,4), %rbx
	movq	%rbx, %rdi
	call	__Znwm
	movq	%rbx, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	leaq	(%rax,%rbx), %r12
	call	_memset
	movq	%rax, %rcx
L2935:
	movq	552(%r15), %rdi
	movq	%r12, 560(%r15)
	movq	%rcx, 552(%r15)
	movq	%r12, 568(%r15)
	testq	%rdi, %rdi
	je	L2937
	call	__ZdlPv
L2937:
	leaq	624(%r15), %r12
	movl	$1, %ebx
	movl	$4, %esi
	jmp	L2938
	.align 4,0x90
L2942:
	cmpq	$2, %rbx
	je	L3075
	xorl	%esi, %esi
	cmpq	$3, %rbx
	sete	%sil
	leaq	6(,%rsi,4), %rsi
L2939:
	addq	$24, %r12
L2938:
	movq	(%r12), %rdx
	movq	8(%r12), %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jbe	L2940
	subq	%rax, %rsi
	movq	%r12, %rdi
	call	__ZNSt6vectorIfSaIfEE17_M_default_appendEm
L2941:
	addq	$1, %rbx
	cmpq	$5, %rbx
	jne	L2942
	movq	-488(%rbp), %rax
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %rdx
	movl	$32, %edi
	movq	136(%rax), %rcx
	leaq	(%rdx,%rdx), %rsi
	vmovd	%rdx, %xmm2
	movq	%rsi, %rax
	vpinsrq	$1, %rsi, %xmm2, %xmm1
	subq	(%rcx), %rax
	vmovd	%rax, %xmm3
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	vinserti128	$0x1, %xmm1, %ymm0, %ymm0
	vpermq	$229, (%rcx), %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -176(%rbp)
	vzeroupper
	leaq	288(%r15), %r13
	call	__Znwm
	vmovdqa	-176(%rbp), %xmm0
	movq	$0, -472(%rbp)
	movq	%rax, -504(%rbp)
	vmovups	%xmm0, (%rax)
	vmovdqa	-160(%rbp), %xmm0
	vmovups	%xmm0, 16(%rax)
	leaq	408(%r15), %rax
	movq	%rax, -480(%rbp)
	leaq	-460(%rbp), %rax
	movq	%rax, -496(%rbp)
L2943:
	movq	-488(%rbp), %rax
	movq	-472(%rbp), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	136(%rax), %rax
	movq	(%rax,%rcx), %r14
	vmovaps	%xmm0, -432(%rbp)
	movl	$0, -460(%rbp)
	movq	$0, -416(%rbp)
	testq	%r14, %r14
	je	L3077
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r14
	ja	L2945
	leaq	(%r14,%r14,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	leaq	-1(%r14), %rdx
	addq	%rax, %r12
	movq	%rax, -432(%rbp)
	movq	%r12, -416(%rbp)
	cmpq	$2, %rdx
	jbe	L3078
	movq	%r14, %rsi
	movq	%rax, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	shrq	$2, %rsi
	.align 4,0x90
L2947:
	addq	$1, %rcx
	vmovdqu	%ymm0, (%rdx)
	addq	$96, %rdx
	vmovdqu	%ymm0, -64(%rdx)
	vmovdqu	%ymm0, -32(%rdx)
	cmpq	%rsi, %rcx
	jb	L2947
	movq	%r14, %rcx
	movq	%r14, %rsi
	andq	$-4, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	subq	%rcx, %rsi
	leaq	(%rax,%rdx,8), %rdx
	cmpq	%rcx, %r14
	je	L3252
	vzeroupper
L2946:
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	cmpq	$1, %rsi
	je	L2948
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	cmpq	$2, %rsi
	je	L2948
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
L2948:
	movq	%r12, -424(%rbp)
	cmpq	%rax, %r12
	je	L3079
L3267:
	movq	%rax, %rbx
	jmp	L2952
	.align 4,0x90
L2949:
	cmpq	$2, %rax
	je	L2950
	addq	$8, %rdx
	movq	%rdx, 8(%rbx)
L2950:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3253
L2952:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	ja	L2949
	movl	$2, %edx
	movq	-496(%rbp), %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB4:
	call	__ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj
LEHE4:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L2952
L3253:
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	-416(%rbp), %r12
L2944:
	movq	0(%r13), %r14
	movq	8(%r13), %rdx
	movq	%rax, 0(%r13)
	movq	$0, -432(%rbp)
	movq	%rcx, 8(%r13)
	movq	$0, -424(%rbp)
	movq	%r12, 16(%r13)
	movq	$0, -416(%rbp)
	cmpq	%rdx, %r14
	je	L2954
	leaq	24(%r14), %rax
	movq	%r14, %r12
	subq	%rax, %rdx
	movabsq	$768614336404564651, %rax
	shrq	$3, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	24(%r14,%rax,8), %rbx
	.align 4,0x90
L2955:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2956
	call	__ZdlPv
	addq	$24, %r12
	cmpq	%r12, %rbx
	jne	L2955
L2954:
	testq	%r14, %r14
	je	L2958
	movq	%r14, %rdi
	call	__ZdlPv
L2958:
	movq	-424(%rbp), %rax
	movq	-432(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L2959
	movabsq	$768614336404564651, %rcx
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	imulq	%rcx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L2960
	.align 4,0x90
L3254:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	je	L2962
L2963:
	addq	$24, %r12
L2960:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L3254
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L2963
L2962:
	movq	-432(%rbp), %rdi
L2959:
	testq	%rdi, %rdi
	je	L2964
	call	__ZdlPv
L2964:
	movq	-504(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	-472(%rbp), %rcx
	movl	$0, -464(%rbp)
	vmovaps	%xmm0, -400(%rbp)
	movq	$0, -384(%rbp)
	movq	(%rax,%rcx), %r14
	testq	%r14, %r14
	je	L3080
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r14
	ja	L2945
	leaq	(%r14,%r14,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	leaq	-1(%r14), %rdx
	addq	%rax, %r12
	movq	%rax, -400(%rbp)
	movq	%r12, -384(%rbp)
	cmpq	$2, %rdx
	jbe	L3081
	movq	%r14, %rsi
	movq	%rax, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	shrq	$2, %rsi
	.align 4,0x90
L2967:
	addq	$1, %rcx
	vmovdqu	%ymm0, (%rdx)
	addq	$96, %rdx
	vmovdqu	%ymm0, -64(%rdx)
	vmovdqu	%ymm0, -32(%rdx)
	cmpq	%rsi, %rcx
	jb	L2967
	movq	%r14, %rcx
	movq	%r14, %rsi
	andq	$-4, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	subq	%rcx, %rsi
	leaq	(%rax,%rdx,8), %rdx
	cmpq	%rcx, %r14
	je	L3255
	vzeroupper
L2966:
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	cmpq	$1, %rsi
	je	L2968
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	cmpq	$2, %rsi
	je	L2968
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
L2968:
	movq	%r12, -392(%rbp)
	cmpq	%r12, %rax
	je	L3082
L3266:
	movq	%rax, %rbx
	leaq	-464(%rbp), %r14
	jmp	L2972
	.align 4,0x90
L2969:
	cmpq	$2, %rax
	je	L2970
	addq	$8, %rdx
	movq	%rdx, 8(%rbx)
L2970:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3256
L2972:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	ja	L2969
	movl	$2, %edx
	movq	%r14, %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB5:
	call	__ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj
LEHE5:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L2972
L3256:
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	-384(%rbp), %r12
L2965:
	movq	-480(%rbp), %rsi
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	(%rsi), %r14
	movq	8(%rsi), %rdx
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	$0, -384(%rbp)
	cmpq	%rdx, %r14
	je	L2974
	leaq	24(%r14), %rax
	movq	%r14, %r12
	subq	%rax, %rdx
	movabsq	$768614336404564651, %rax
	shrq	$3, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	24(%r14,%rax,8), %rbx
	.align 4,0x90
L2975:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2976
	call	__ZdlPv
	addq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2975
L2974:
	testq	%r14, %r14
	je	L2978
	movq	%r14, %rdi
	call	__ZdlPv
L2978:
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L2979
	movabsq	$768614336404564651, %rcx
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	imulq	%rcx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L2980
	.align 4,0x90
L3257:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	je	L2982
L2983:
	addq	$24, %r12
L2980:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L3257
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L2983
L2982:
	movq	-400(%rbp), %rdi
L2979:
	testq	%rdi, %rdi
	je	L2984
	call	__ZdlPv
L2984:
	addq	$8, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$24, %r13
	addq	$24, -480(%rbp)
	cmpq	$32, %rax
	jne	L2943
	movq	__ZN8MosaicSC5Potts1LE(%rip), %r14
	vpxor	%xmm0, %xmm0, %xmm0
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %r13
	movq	$0, -440(%rbp)
	vmovaps	%xmm0, -368(%rbp)
	movq	$0, -352(%rbp)
	testq	%r14, %r14
	je	L3083
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r14
	ja	L2945
	leaq	(%r14,%r14,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	leaq	-1(%r14), %rdx
	addq	%rax, %r12
	movq	%rax, -368(%rbp)
	movq	%r12, -352(%rbp)
	cmpq	$2, %rdx
	jbe	L3084
	movq	%r14, %rsi
	movq	%rax, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	shrq	$2, %rsi
	.align 4,0x90
L2989:
	addq	$1, %rcx
	vmovdqu	%ymm0, (%rdx)
	addq	$96, %rdx
	vmovdqu	%ymm0, -64(%rdx)
	vmovdqu	%ymm0, -32(%rdx)
	cmpq	%rsi, %rcx
	jb	L2989
	movq	%r14, %rcx
	movq	%r14, %rsi
	andq	$-4, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	subq	%rcx, %rsi
	leaq	(%rax,%rdx,8), %rdx
	cmpq	%rcx, %r14
	je	L3258
	vzeroupper
L2988:
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	cmpq	$1, %rsi
	je	L2990
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	cmpq	$2, %rsi
	je	L2990
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
L2990:
	movq	%r12, -360(%rbp)
	cmpq	%rax, %r12
	je	L3085
	movq	%rax, %rbx
	leaq	-440(%rbp), %rax
	leaq	0(,%r13,8), %r14
	movq	%rax, -472(%rbp)
	jmp	L2994
	.align 4,0x90
L2991:
	jnb	L2992
	addq	%r14, %rdx
	movq	%rdx, 8(%rbx)
L2992:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3259
L2994:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, %r13
	jbe	L2991
	movq	%r13, %rdx
	movq	-472(%rbp), %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB6:
	call	__ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm
LEHE6:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L2994
L3259:
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	-352(%rbp), %r12
L2987:
	movq	504(%r15), %r13
	movq	512(%r15), %rdx
	movq	%rax, 504(%r15)
	movq	$0, -368(%rbp)
	movq	%rcx, 512(%r15)
	movq	$0, -360(%rbp)
	movq	%r12, 520(%r15)
	movq	$0, -352(%rbp)
	cmpq	%rdx, %r13
	je	L2996
	leaq	24(%r13), %rax
	movq	%r13, %r12
	subq	%rax, %rdx
	shrq	$3, %rdx
	leaq	24(%r13,%rdx,8), %rbx
	.align 4,0x90
L2997:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2998
	call	__ZdlPv
	addq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2997
L2996:
	testq	%r13, %r13
	je	L3000
	movq	%r13, %rdi
	call	__ZdlPv
L3000:
	movq	-360(%rbp), %rax
	movq	-368(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L3001
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L3002
	.align 4,0x90
L3260:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	je	L3004
L3005:
	addq	$24, %r12
L3002:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L3260
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L3005
L3004:
	movq	-368(%rbp), %rdi
L3001:
	testq	%rdi, %rdi
	je	L3006
	call	__ZdlPv
L3006:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rbx
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %r13
	movl	$2147483647, -452(%rbp)
	testq	%rbx, %rbx
	je	L3086
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %rbx
	ja	L2945
	leaq	(%rbx,%rbx,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	movq	%rax, %r14
	addq	%rax, %r12
	leaq	-1(%rbx), %rax
	cmpq	$2, %rax
	jbe	L3087
	movq	%rbx, %rcx
	movq	%r14, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	shrq	$2, %rcx
	.align 4,0x90
L3009:
	addq	$1, %rdx
	vmovdqu	%ymm0, (%rax)
	addq	$96, %rax
	vmovdqu	%ymm0, -64(%rax)
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rcx, %rdx
	jb	L3009
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	andq	$-4, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rdx, %rcx
	leaq	(%r14,%rax,8), %rax
	cmpq	%rdx, %rbx
	je	L3261
	vzeroupper
L3008:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	cmpq	$1, %rcx
	je	L3011
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	cmpq	$2, %rcx
	je	L3011
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
L3011:
	leaq	0(,%r13,4), %rax
	movq	%r14, %rbx
	movq	%rax, -472(%rbp)
	leaq	-452(%rbp), %rax
	movq	%rax, -480(%rbp)
	cmpq	%r12, %r14
	jne	L3016
	jmp	L3007
	.align 4,0x90
L3013:
	jnb	L3014
	addq	-472(%rbp), %rdx
	movq	%rdx, 8(%rbx)
L3014:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3007
L3016:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %r13
	jbe	L3013
	movq	%r13, %rdx
	movq	-480(%rbp), %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB7:
	call	__ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
LEHE7:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L3016
L3007:
	movq	528(%r15), %rbx
	movq	536(%r15), %rax
	movq	%r14, 528(%r15)
	movq	%r12, 536(%r15)
	movq	%r12, 544(%r15)
	cmpq	%rax, %rbx
	je	L3021
	leaq	24(%rbx), %rdx
	movq	%rbx, %r13
	subq	%rdx, %rax
	shrq	$3, %rax
	leaq	24(%rbx,%rax,8), %r12
	.align 4,0x90
L3022:
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	L3023
	call	__ZdlPv
	addq	$24, %r13
	cmpq	%r13, %r12
	jne	L3022
L3021:
	testq	%rbx, %rbx
	je	L3025
	movq	%rbx, %rdi
	call	__ZdlPv
L3025:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %rbx
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %r13
	movl	$0x00000000, -456(%rbp)
	testq	%rbx, %rbx
	je	L3088
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %rbx
	ja	L2945
	leaq	(%rbx,%rbx,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	movq	%rax, %r14
	addq	%rax, %r12
	leaq	-1(%rbx), %rax
	cmpq	$2, %rax
	jbe	L3089
	movq	%rbx, %rcx
	movq	%r14, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	shrq	$2, %rcx
	.align 4,0x90
L3028:
	addq	$1, %rdx
	vmovdqu	%ymm0, (%rax)
	addq	$96, %rax
	vmovdqu	%ymm0, -64(%rax)
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rcx, %rdx
	jb	L3028
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	andq	$-4, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rdx, %rcx
	leaq	(%r14,%rax,8), %rax
	cmpq	%rdx, %rbx
	je	L3262
	vzeroupper
L3027:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	cmpq	$1, %rcx
	je	L3030
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	cmpq	$2, %rcx
	je	L3030
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
L3030:
	leaq	0(,%r13,4), %rax
	movq	%r14, %rbx
	movq	%rax, -472(%rbp)
	leaq	-456(%rbp), %rax
	movq	%rax, -480(%rbp)
	cmpq	%r14, %r12
	jne	L3035
	jmp	L3026
	.align 4,0x90
L3032:
	jnb	L3033
	addq	-472(%rbp), %rdx
	movq	%rdx, 8(%rbx)
L3033:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3026
L3035:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %r13
	jbe	L3032
	movq	%r13, %rdx
	movq	-480(%rbp), %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB8:
	call	__ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf
LEHE8:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L3035
L3026:
	movq	576(%r15), %rbx
	movq	584(%r15), %rax
	movq	%r14, 576(%r15)
	movq	%r12, 584(%r15)
	movq	%r12, 592(%r15)
	cmpq	%rax, %rbx
	je	L3040
	leaq	24(%rbx), %rdx
	movq	%rbx, %r13
	subq	%rdx, %rax
	shrq	$3, %rax
	leaq	24(%rbx,%rax,8), %r12
	.align 4,0x90
L3041:
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	L3042
	call	__ZdlPv
	addq	$24, %r13
	cmpq	%r13, %r12
	jne	L3041
L3040:
	testq	%rbx, %rbx
	je	L3044
	movq	%rbx, %rdi
	call	__ZdlPv
L3044:
	movq	__ZN8MosaicSC5Potts1LE(%rip), %r14
	vpxor	%xmm0, %xmm0, %xmm0
	movq	8+__ZN8MosaicSC5Potts1LE(%rip), %r13
	movq	$0, -448(%rbp)
	vmovaps	%xmm0, -336(%rbp)
	movq	$0, -320(%rbp)
	testq	%r14, %r14
	je	L3090
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r14
	ja	L2945
	leaq	(%r14,%r14,2), %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	__Znwm
	leaq	-1(%r14), %rdx
	addq	%rax, %r12
	movq	%rax, -336(%rbp)
	movq	%r12, -320(%rbp)
	cmpq	$2, %rdx
	jbe	L3091
	movq	%r14, %rsi
	movq	%rax, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	shrq	$2, %rsi
	.align 4,0x90
L3047:
	addq	$1, %rcx
	vmovdqu	%ymm0, (%rdx)
	addq	$96, %rdx
	vmovdqu	%ymm0, -64(%rdx)
	vmovdqu	%ymm0, -32(%rdx)
	cmpq	%rsi, %rcx
	jb	L3047
	movq	%r14, %rcx
	movq	%r14, %rsi
	andq	$-4, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	subq	%rcx, %rsi
	leaq	(%rax,%rdx,8), %rdx
	cmpq	%rcx, %r14
	je	L3263
	vzeroupper
L3046:
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	cmpq	$1, %rsi
	je	L3048
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	cmpq	$2, %rsi
	je	L3048
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
L3048:
	movq	%r12, -328(%rbp)
	cmpq	%r12, %rax
	je	L3092
	movq	%rax, %rbx
	leaq	-448(%rbp), %rax
	leaq	0(,%r13,8), %r14
	movq	%rax, -472(%rbp)
	jmp	L3052
	.align 4,0x90
L3049:
	jnb	L3050
	addq	%r14, %rdx
	movq	%rdx, 8(%rbx)
L3050:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	je	L3264
L3052:
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, %r13
	jbe	L3049
	movq	%r13, %rdx
	movq	-472(%rbp), %rcx
	movq	%rbx, %rdi
	subq	%rax, %rdx
LEHB9:
	call	__ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm
LEHE9:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L3052
L3264:
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	-320(%rbp), %r12
L3045:
	movq	240(%r15), %r13
	movq	248(%r15), %rdx
	movq	%rax, 240(%r15)
	movq	$0, -336(%rbp)
	movq	%rcx, 248(%r15)
	movq	$0, -328(%rbp)
	movq	%r12, 256(%r15)
	movq	$0, -320(%rbp)
	cmpq	%rdx, %r13
	je	L3054
	leaq	24(%r13), %rax
	movq	%r13, %r12
	subq	%rax, %rdx
	shrq	$3, %rdx
	leaq	24(%r13,%rdx,8), %rbx
	.align 4,0x90
L3055:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L3056
	call	__ZdlPv
	addq	$24, %r12
	cmpq	%r12, %rbx
	jne	L3055
L3054:
	testq	%r13, %r13
	je	L3058
	movq	%r13, %rdi
	call	__ZdlPv
L3058:
	movq	-328(%rbp), %rax
	movq	-336(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L3059
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L3060
	.align 4,0x90
L3265:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	je	L3062
L3063:
	addq	$24, %r12
L3060:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L3265
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L3063
L3062:
	movq	-336(%rbp), %rdi
L3059:
	testq	%rdi, %rdi
	je	L3064
	call	__ZdlPv
L3064:
	movq	-488(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	L3065
	movq	-520(%rbp), %rdi
	call	__ZN8MosaicSC2IO14readin_latticeEv
L3066:
	movq	%rax, 744(%r15)
	movq	-512(%rbp), %rdi
	call	_pthread_mutex_unlock
	movq	-504(%rbp), %rdi
	call	__ZdlPv
	addq	$512, %rsp
	popq	%rbx
	popq	%r10
LCFI251:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI252:
	ret
	.align 4,0x90
L2873:
LCFI253:
	subq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2865
	jmp	L2874
	.align 4,0x90
L2892:
	subq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2883
	jmp	L2893
	.align 4,0x90
L3239:
	xorl	%eax, %eax
	jmp	L2878
	.align 4,0x90
L3243:
	movzbl	(%r12), %edx
	movb	%dl, 72(%r15)
	jmp	L2900
	.align 4,0x90
L2956:
	addq	$24, %r12
	cmpq	%r12, %rbx
	jne	L2955
	jmp	L2954
	.align 4,0x90
L2976:
	addq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2975
	jmp	L2974
	.align 4,0x90
L2940:
	jnb	L2941
	leaq	(%rdx,%rsi,4), %rax
	movq	%rax, 8(%r12)
	jmp	L2941
	.align 4,0x90
L2998:
	addq	$24, %r12
	cmpq	%rbx, %r12
	jne	L2997
	jmp	L2996
	.align 4,0x90
L3023:
	addq	$24, %r13
	cmpq	%r13, %r12
	jne	L3022
	jmp	L3021
	.align 4,0x90
L3042:
	addq	$24, %r13
	cmpq	%r13, %r12
	jne	L3041
	jmp	L3040
	.align 4,0x90
L3056:
	addq	$24, %r12
	cmpq	%rbx, %r12
	jne	L3055
	jmp	L3054
	.align 4,0x90
L3255:
	vzeroupper
	movq	%r12, -392(%rbp)
	cmpq	%r12, %rax
	jne	L3266
L3082:
	movq	%rax, %rcx
	jmp	L2965
	.align 4,0x90
L3252:
	vzeroupper
	movq	%r12, -424(%rbp)
	cmpq	%rax, %r12
	jne	L3267
L3079:
	movq	%r12, %rcx
	jmp	L2944
	.align 4,0x90
L2914:
	testq	%r8, %r8
	je	L2919
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L2918
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-368(%rbp), %rax
	jmp	L2919
	.align 4,0x90
L2904:
	vsubss	lC8(%rip), %xmm0, %xmm0
	movabsq	$-9223372036854775808, %rax
	vcvttss2siq	%xmm0, %r8
	xorq	%rax, %r8
	jmp	L2905
	.align 4,0x90
L3065:
	movq	%r15, %rdi
	call	__ZN8MosaicSC5Potts19initialize_latticesEv
	jmp	L3066
	.align 4,0x90
L3078:
	movq	%rax, %rdx
	movq	%r14, %rsi
	jmp	L2946
	.align 4,0x90
L2902:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	L2903
	.align 4,0x90
L3081:
	movq	%rax, %rdx
	movq	%r14, %rsi
	jmp	L2966
	.align 4,0x90
L3080:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L2965
	.align 4,0x90
L3077:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L2944
	.align 4,0x90
L3242:
	testq	%rbx, %rbx
	js	L3268
	leaq	1(%rbx), %rdi
	call	__Znwm
	movq	%rbx, 72(%r15)
	movq	%rax, 56(%r15)
L2898:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	56(%r15), %rax
	jmp	L2900
	.align 4,0x90
L2910:
	movq	-528(%rbp), %rdi
	movl	$1, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	leaq	lC19(%rip), %rcx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	jmp	L2911
	.align 4,0x90
L3245:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -320(%rbp)
	jmp	L2907
	.align 4,0x90
L3247:
	movq	-328(%rbp), %rsi
	vmovdqa	-320(%rbp), %xmm0
	movq	%rdx, %rax
	movl	$15, %edi
	movq	-168(%rbp), %r8
	movb	$0, -320(%rbp)
	vmovaps	%xmm0, -352(%rbp)
	movq	%rsi, -360(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -328(%rbp)
	jmp	L2913
	.align 4,0x90
L3249:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -384(%rbp)
	jmp	L2921
L3248:
	movq	-536(%rbp), %rdi
	movq	%rsi, %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	jmp	L2917
L2928:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L2929
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L2929
L3262:
	vzeroupper
	jmp	L3030
L3263:
	vzeroupper
	jmp	L3048
L3258:
	vzeroupper
	jmp	L2990
L3261:
	vzeroupper
	jmp	L3011
L2918:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-368(%rbp), %rax
	jmp	L2919
L2924:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L2925
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L2925
L3091:
	movq	%rax, %rdx
	movq	%r14, %rsi
	jmp	L3046
L3090:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L3045
L3089:
	movq	%r14, %rax
	movq	%rbx, %rcx
	jmp	L3027
L3088:
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	L3026
L3087:
	movq	%r14, %rax
	movq	%rbx, %rcx
	jmp	L3008
L3086:
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	L3007
L3084:
	movq	%rax, %rdx
	movq	%r14, %rsi
	jmp	L2988
L3083:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L2987
L3074:
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	jmp	L2935
L3085:
	movq	%r12, %rcx
	jmp	L2987
L3092:
	movq	%rax, %rcx
	jmp	L3045
L3075:
	movl	$2, %esi
	jmp	L2939
L2945:
	call	__ZSt17__throw_bad_allocv
L3238:
LEHB10:
	call	__ZSt17__throw_bad_allocv
LEHE10:
L3095:
	movq	%rax, %rdi
	vzeroupper
	call	___cxa_begin_catch
	movq	-536(%rbp), %r12
L2869:
	cmpq	%r12, %rbx
	je	L2867
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2868
	call	__ZdlPv
L2868:
	addq	$24, %r12
	jmp	L2869
	.align 4,0x90
L3240:
LEHB11:
	call	__ZSt17__throw_bad_allocv
LEHE11:
L3098:
	movq	%rax, %rdi
	vzeroupper
	call	___cxa_begin_catch
	movq	-552(%rbp), %r12
L2887:
	cmpq	%rbx, %r12
	je	L2885
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L2886
	call	__ZdlPv
L2886:
	addq	$24, %r12
	jmp	L2887
L2885:
LEHB12:
	call	___cxa_rethrow
LEHE12:
L3268:
	leaq	lC14(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L3101:
	movq	-528(%rbp), %rdi
	vzeroupper
	call	__ZNSt6vectorIS_ImSaImEESaIS1_EED1Ev
L2891:
	call	__ZSt9terminatev
L3097:
	vzeroupper
	call	___cxa_end_catch
L2889:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	L2891
L3234:
	call	__ZdlPv
	jmp	L2891
L2867:
LEHB13:
	call	___cxa_rethrow
LEHE13:
L3251:
	call	__ZSt16__throw_bad_castv
L3094:
	vzeroupper
	call	___cxa_end_catch
L2871:
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	jne	L3234
	jmp	L2891
L3104:
	movq	-544(%rbp), %rdi
	vzeroupper
	call	__ZNSt6vectorIS_ImSaImEESaIS1_EED1Ev
	jmp	L2891
L3103:
	movq	%r14, %rbx
	vzeroupper
L3018:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3019
	call	__ZdlPv
L3019:
	addq	$24, %rbx
	cmpq	%r12, %rbx
	jne	L3018
L3235:
	movq	%r14, %rdi
	call	__ZdlPv
	jmp	L2891
L3100:
	leaq	-432(%rbp), %rdi
	vzeroupper
	call	__ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev
	jmp	L2891
L3093:
	vzeroupper
	jmp	L2871
L3102:
	movq	%r14, %rbx
	vzeroupper
L3037:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3038
	call	__ZdlPv
L3038:
	addq	$24, %rbx
	cmpq	%rbx, %r12
	jne	L3037
	jmp	L3235
L3068:
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	L2860
L3096:
	vzeroupper
	jmp	L2889
L3099:
	movq	-552(%rbp), %rdi
	vzeroupper
	call	__ZNSt6vectorIS_IjSaIjEESaIS1_EED1Ev
	jmp	L2891
L3241:
	leaq	lC16(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
L3244:
	movl	%eax, %edi
	call	__ZSt20__throw_system_errori
L3246:
	leaq	lC18(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L3250:
	call	__ZSt16__throw_bad_castv
LFE6542:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
	.align 3
LLSDA6542:
	.byte	0xff
	.byte	0
	.byte	0xc4,0x1
	.byte	0x3
	.byte	0xb6,0x1
	.set L$set$0,LEHB0-LFB6542
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.set L$set$2,L3093-LFB6542
	.long L$set$2
	.byte	0
	.set L$set$3,LEHB1-LFB6542
	.long L$set$3
	.set L$set$4,LEHE1-LEHB1
	.long L$set$4
	.set L$set$5,L3095-LFB6542
	.long L$set$5
	.byte	0x1
	.set L$set$6,LEHB2-LFB6542
	.long L$set$6
	.set L$set$7,LEHE2-LEHB2
	.long L$set$7
	.set L$set$8,L3096-LFB6542
	.long L$set$8
	.byte	0
	.set L$set$9,LEHB3-LFB6542
	.long L$set$9
	.set L$set$10,LEHE3-LEHB3
	.long L$set$10
	.set L$set$11,L3098-LFB6542
	.long L$set$11
	.byte	0x1
	.set L$set$12,LEHB4-LFB6542
	.long L$set$12
	.set L$set$13,LEHE4-LEHB4
	.long L$set$13
	.set L$set$14,L3100-LFB6542
	.long L$set$14
	.byte	0
	.set L$set$15,LEHB5-LFB6542
	.long L$set$15
	.set L$set$16,LEHE5-LEHB5
	.long L$set$16
	.set L$set$17,L3099-LFB6542
	.long L$set$17
	.byte	0
	.set L$set$18,LEHB6-LFB6542
	.long L$set$18
	.set L$set$19,LEHE6-LEHB6
	.long L$set$19
	.set L$set$20,L3104-LFB6542
	.long L$set$20
	.byte	0
	.set L$set$21,LEHB7-LFB6542
	.long L$set$21
	.set L$set$22,LEHE7-LEHB7
	.long L$set$22
	.set L$set$23,L3103-LFB6542
	.long L$set$23
	.byte	0
	.set L$set$24,LEHB8-LFB6542
	.long L$set$24
	.set L$set$25,LEHE8-LEHB8
	.long L$set$25
	.set L$set$26,L3102-LFB6542
	.long L$set$26
	.byte	0
	.set L$set$27,LEHB9-LFB6542
	.long L$set$27
	.set L$set$28,LEHE9-LEHB9
	.long L$set$28
	.set L$set$29,L3101-LFB6542
	.long L$set$29
	.byte	0
	.set L$set$30,LEHB10-LFB6542
	.long L$set$30
	.set L$set$31,LEHE10-LEHB10
	.long L$set$31
	.set L$set$32,L3095-LFB6542
	.long L$set$32
	.byte	0x1
	.set L$set$33,LEHB11-LFB6542
	.long L$set$33
	.set L$set$34,LEHE11-LEHB11
	.long L$set$34
	.set L$set$35,L3098-LFB6542
	.long L$set$35
	.byte	0x1
	.set L$set$36,LEHB12-LFB6542
	.long L$set$36
	.set L$set$37,LEHE12-LEHB12
	.long L$set$37
	.set L$set$38,L3097-LFB6542
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB13-LFB6542
	.long L$set$39
	.set L$set$40,LEHE13-LEHB13
	.long L$set$40
	.set L$set$41,L3094-LFB6542
	.long L$set$41
	.byte	0
	.byte	0x1
	.byte	0
	.align 3
	.quad	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5PottsC2ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE
__ZN8MosaicSC5PottsC2ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE:
LFB9149:
	jmp	__ZN8MosaicSC5PottsC1ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE
LFE9149:
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_potts.cpp:
LFB8743:
	subq	$8, %rsp
LCFI254:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI255:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE8743:
	.const
	.align 3
_._87:
	.long	1
	.long	2
	.align 3
_._83:
	.long	1
	.long	2
	.align 3
_._82:
	.long	1
	.long	3
	.align 3
_._80:
	.long	0
	.long	4
	.align 3
_._79:
	.long	0
	.long	4
	.globl __ZN8MosaicSC5Potts1VE
	.zerofill __DATA,__pu_bss3,__ZN8MosaicSC5Potts1VE,8,3
	.globl __ZN8MosaicSC5Potts1LE
	.zerofill __DATA,__pu_bss4,__ZN8MosaicSC5Potts1LE,16,4
	.globl __ZN8MosaicSC1CILj4EE3itrE
	.weak_definition __ZN8MosaicSC1CILj4EE3itrE
	.const_data
	.align 5
__ZN8MosaicSC1CILj4EE3itrE:
	.long	1
	.long	1
	.quad	1
	.quad	-1
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_1_4aE
	.ascii "01 04 a\0"
	.quad	1
	.quad	-1
	.long	1
	.long	1
	.quad	2
	.quad	-1
	.quad	1
	.quad	__ZN8MosaicSC5BaseC5k_2_4E
	.ascii "02 04  \0"
	.quad	1
	.quad	-1
	.long	1
	.long	0
	.quad	3
	.quad	1
	.quad	-1
	.quad	__ZN8MosaicSC5BaseC6k_3_4bE
	.ascii "03 04 b\0"
	.quad	-1
	.quad	1
	.long	1
	.long	0
	.quad	3
	.quad	1
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_3_4aE
	.ascii "03 04 a\0"
	.quad	-1
	.quad	-1
	.long	1
	.long	-1
	.quad	4
	.quad	2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC5k_4_4E
	.ascii "04 04  \0"
	.quad	-2
	.quad	0
	.long	1
	.long	-1
	.quad	1
	.quad	3
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_1_4bE
	.ascii "01 04bb\0"
	.quad	-3
	.quad	-1
	.globl __ZN8MosaicSC1CILj3EE3itrE
	.weak_definition __ZN8MosaicSC1CILj3EE3itrE
	.align 5
__ZN8MosaicSC1CILj3EE3itrE:
	.long	0
	.long	1
	.quad	1
	.quad	-2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC6k_1_3aE
	.ascii "01 03+a\0"
	.quad	2
	.quad	0
	.long	0
	.long	1
	.quad	1
	.quad	-2
	.quad	-2
	.quad	__ZN8MosaicSC5BaseC6k_1_3bE
	.ascii "01 03+b\0"
	.quad	2
	.quad	2
	.long	0
	.long	1
	.quad	2
	.quad	-2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC5k_2_3E
	.ascii "02 03+ \0"
	.quad	2
	.quad	0
	.long	0
	.long	1
	.quad	4
	.quad	-1
	.quad	-1
	.quad	__ZN8MosaicSC5BaseC6k_3_4aE
	.ascii "03 04+a\0"
	.quad	1
	.quad	1
	.long	0
	.long	1
	.quad	4
	.quad	-1
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_3_4bE
	.ascii "03 04+b\0"
	.quad	1
	.quad	-1
	.long	0
	.long	-1
	.quad	4
	.quad	1
	.quad	-1
	.quad	__ZN8MosaicSC5BaseC6k_3_4bE
	.ascii "03 04-b\0"
	.quad	-1
	.quad	1
	.long	0
	.long	-1
	.quad	4
	.quad	1
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_3_4aE
	.ascii "03 04-a\0"
	.quad	-1
	.quad	-1
	.long	0
	.long	-1
	.quad	2
	.quad	2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC5k_2_3E
	.ascii "02 03- \0"
	.quad	-2
	.quad	0
	.long	0
	.long	-1
	.quad	1
	.quad	2
	.quad	2
	.quad	__ZN8MosaicSC5BaseC6k_1_3bE
	.ascii "01 03-b\0"
	.quad	-2
	.quad	-2
	.long	0
	.long	-1
	.quad	1
	.quad	2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC6k_1_3aE
	.ascii "01 03-a\0"
	.quad	-2
	.quad	0
	.globl __ZN8MosaicSC1CILj2EE3itrE
	.weak_definition __ZN8MosaicSC1CILj2EE3itrE
	.align 5
__ZN8MosaicSC1CILj2EE3itrE:
	.long	1
	.long	0
	.quad	3
	.quad	2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC5k_2_3E
	.ascii "02 03  \0"
	.quad	-2
	.quad	0
	.long	1
	.long	1
	.quad	4
	.quad	1
	.quad	-1
	.quad	__ZN8MosaicSC5BaseC5k_2_4E
	.ascii "02 04  \0"
	.quad	-1
	.quad	1
	.globl __ZN8MosaicSC1CILj1EE3itrE
	.weak_definition __ZN8MosaicSC1CILj1EE3itrE
	.align 5
__ZN8MosaicSC1CILj1EE3itrE:
	.long	1
	.long	1
	.quad	4
	.quad	1
	.quad	-1
	.quad	__ZN8MosaicSC5BaseC6k_1_4aE
	.ascii "01 04 a\0"
	.quad	-1
	.quad	1
	.long	1
	.long	0
	.quad	3
	.quad	2
	.quad	0
	.quad	__ZN8MosaicSC5BaseC6k_1_3aE
	.ascii "01 03 a\0"
	.quad	-2
	.quad	0
	.long	1
	.long	0
	.quad	3
	.quad	2
	.quad	2
	.quad	__ZN8MosaicSC5BaseC6k_1_3bE
	.ascii "01 03 b\0"
	.quad	-2
	.quad	-2
	.long	1
	.long	-1
	.quad	4
	.quad	3
	.quad	1
	.quad	__ZN8MosaicSC5BaseC6k_1_4bE
	.ascii "01 04 b\0"
	.quad	-3
	.quad	-1
	.static_data
__ZStL8__ioinit:
	.space	1
	.const
	.align 5
lC2:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 5
lC3:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 5
lC4:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.align 5
lC5:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.literal4
	.align 2
lC6:
	.long	796917760
	.align 2
lC7:
	.long	1065353216
	.align 2
lC8:
	.long	1593835520
	.align 2
lC9:
	.long	2139095039
	.literal16
	.align 4
lC10:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.literal4
	.align 2
lC12:
	.long	1056964608
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$42,LECIE1-LSCIE1
	.long L$set$42
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
	.set L$set$43,LEFDE1-LASFDE1
	.long L$set$43
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1607-.
	.set L$set$44,LFE1607-LFB1607
	.quad L$set$44
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$45,LEFDE3-LASFDE3
	.long L$set$45
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB9153-.
	.set L$set$46,LFE9153-LFB9153
	.quad L$set$46
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$47,LCFI0-LFB9153
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$48,LCFI1-LCFI0
	.long L$set$48
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$49,LCFI2-LCFI1
	.long L$set$49
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$50,LCFI3-LCFI2
	.long L$set$50
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$51,LCFI4-LCFI3
	.long L$set$51
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$52,LCFI5-LCFI4
	.long L$set$52
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$53,LEFDE5-LASFDE5
	.long L$set$53
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB6543-.
	.set L$set$54,LFE6543-LFB6543
	.quad L$set$54
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$55,LCFI6-LFB6543
	.long L$set$55
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$56,LCFI7-LCFI6
	.long L$set$56
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$57,LCFI8-LCFI7
	.long L$set$57
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$58,LCFI9-LCFI8
	.long L$set$58
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$59,LCFI10-LCFI9
	.long L$set$59
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$60,LCFI11-LCFI10
	.long L$set$60
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$61,LCFI12-LCFI11
	.long L$set$61
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$62,LCFI13-LCFI12
	.long L$set$62
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$63,LCFI14-LCFI13
	.long L$set$63
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$64,LCFI15-LCFI14
	.long L$set$64
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$65,LCFI16-LCFI15
	.long L$set$65
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$66,LCFI17-LCFI16
	.long L$set$66
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$67,LEFDE7-LASFDE7
	.long L$set$67
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6544-.
	.set L$set$68,LFE6544-LFB6544
	.quad L$set$68
	.byte	0x8
	.quad	LLSDA6544-.
	.byte	0x4
	.set L$set$69,LCFI18-LFB6544
	.long L$set$69
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$70,LCFI19-LCFI18
	.long L$set$70
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$71,LCFI20-LCFI19
	.long L$set$71
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
	.set L$set$72,LCFI21-LCFI20
	.long L$set$72
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$73,LCFI22-LCFI21
	.long L$set$73
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$74,LCFI23-LCFI22
	.long L$set$74
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$75,LCFI24-LCFI23
	.long L$set$75
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$76,LEFDE9-LASFDE9
	.long L$set$76
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB6546-.
	.set L$set$77,LFE6546-LFB6546
	.quad L$set$77
	.byte	0x8
	.quad	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$78,LEFDE11-LASFDE11
	.long L$set$78
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB6547-.
	.set L$set$79,LFE6547-LFB6547
	.quad L$set$79
	.byte	0x8
	.quad	LLSDA6547-.
	.byte	0x4
	.set L$set$80,LCFI25-LFB6547
	.long L$set$80
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$81,LCFI26-LCFI25
	.long L$set$81
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$82,LCFI27-LCFI26
	.long L$set$82
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
	.set L$set$83,LCFI28-LCFI27
	.long L$set$83
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$84,LCFI29-LCFI28
	.long L$set$84
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$85,LCFI30-LCFI29
	.long L$set$85
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$86,LCFI31-LCFI30
	.long L$set$86
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$87,LCFI32-LCFI31
	.long L$set$87
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$88,LEFDE13-LASFDE13
	.long L$set$88
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6555-.
	.set L$set$89,LFE6555-LFB6555
	.quad L$set$89
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$90,LCFI33-LFB6555
	.long L$set$90
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$91,LCFI34-LCFI33
	.long L$set$91
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$92,LCFI35-LCFI34
	.long L$set$92
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$93,LCFI36-LCFI35
	.long L$set$93
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$94,LCFI37-LCFI36
	.long L$set$94
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$95,LCFI38-LCFI37
	.long L$set$95
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$96,LCFI39-LCFI38
	.long L$set$96
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$97,LCFI40-LCFI39
	.long L$set$97
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$98,LCFI41-LCFI40
	.long L$set$98
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$99,LCFI42-LCFI41
	.long L$set$99
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$100,LCFI43-LCFI42
	.long L$set$100
	.byte	0xb
	.byte	0x4
	.set L$set$101,LCFI44-LCFI43
	.long L$set$101
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$102,LCFI45-LCFI44
	.long L$set$102
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$103,LCFI46-LCFI45
	.long L$set$103
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$104,LCFI47-LCFI46
	.long L$set$104
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$105,LCFI48-LCFI47
	.long L$set$105
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$106,LEFDE15-LASFDE15
	.long L$set$106
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6554-.
	.set L$set$107,LFE6554-LFB6554
	.quad L$set$107
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$108,LCFI49-LFB6554
	.long L$set$108
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$109,LCFI50-LCFI49
	.long L$set$109
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$110,LCFI51-LCFI50
	.long L$set$110
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$111,LCFI52-LCFI51
	.long L$set$111
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$112,LCFI53-LCFI52
	.long L$set$112
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$113,LCFI54-LCFI53
	.long L$set$113
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$114,LEFDE17-LASFDE17
	.long L$set$114
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB6588-.
	.set L$set$115,LFE6588-LFB6588
	.quad L$set$115
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$116,LCFI55-LFB6588
	.long L$set$116
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$117,LCFI56-LCFI55
	.long L$set$117
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$118,LCFI57-LCFI56
	.long L$set$118
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$119,LCFI58-LCFI57
	.long L$set$119
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$120,LCFI59-LCFI58
	.long L$set$120
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$121,LCFI60-LCFI59
	.long L$set$121
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$122,LCFI61-LCFI60
	.long L$set$122
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.set L$set$123,LCFI62-LCFI61
	.long L$set$123
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$124,LCFI63-LCFI62
	.long L$set$124
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$125,LCFI64-LCFI63
	.long L$set$125
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$126,LCFI65-LCFI64
	.long L$set$126
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$127,LCFI66-LCFI65
	.long L$set$127
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$128,LCFI67-LCFI66
	.long L$set$128
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$129,LCFI68-LCFI67
	.long L$set$129
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$130,LCFI69-LCFI68
	.long L$set$130
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$131,LEFDE19-LASFDE19
	.long L$set$131
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB7040-.
	.set L$set$132,LFE7040-LFB7040
	.quad L$set$132
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$133,LCFI70-LFB7040
	.long L$set$133
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$134,LCFI71-LCFI70
	.long L$set$134
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$135,LCFI72-LCFI71
	.long L$set$135
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$136,LCFI73-LCFI72
	.long L$set$136
	.byte	0xa
	.byte	0xc3
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$137,LCFI74-LCFI73
	.long L$set$137
	.byte	0xc6
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$138,LCFI75-LCFI74
	.long L$set$138
	.byte	0xcc
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$139,LCFI76-LCFI75
	.long L$set$139
	.byte	0xb
	.byte	0x4
	.set L$set$140,LCFI77-LCFI76
	.long L$set$140
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$141,LCFI78-LCFI77
	.long L$set$141
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$142,LCFI79-LCFI78
	.long L$set$142
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$143,LCFI80-LCFI79
	.long L$set$143
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$144,LEFDE21-LASFDE21
	.long L$set$144
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7055-.
	.set L$set$145,LFE7055-LFB7055
	.quad L$set$145
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$146,LCFI81-LFB7055
	.long L$set$146
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$147,LCFI82-LCFI81
	.long L$set$147
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$148,LCFI83-LCFI82
	.long L$set$148
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$149,LCFI84-LCFI83
	.long L$set$149
	.byte	0xa
	.byte	0xc3
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$150,LCFI85-LCFI84
	.long L$set$150
	.byte	0xc6
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$151,LCFI86-LCFI85
	.long L$set$151
	.byte	0xcc
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$152,LCFI87-LCFI86
	.long L$set$152
	.byte	0xb
	.byte	0x4
	.set L$set$153,LCFI88-LCFI87
	.long L$set$153
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$154,LCFI89-LCFI88
	.long L$set$154
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$155,LCFI90-LCFI89
	.long L$set$155
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$156,LCFI91-LCFI90
	.long L$set$156
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$157,LEFDE23-LASFDE23
	.long L$set$157
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB7495-.
	.set L$set$158,LFE7495-LFB7495
	.quad L$set$158
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$159,LCFI92-LFB7495
	.long L$set$159
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$160,LCFI93-LCFI92
	.long L$set$160
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$161,LCFI94-LCFI93
	.long L$set$161
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$162,LCFI95-LCFI94
	.long L$set$162
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$163,LCFI96-LCFI95
	.long L$set$163
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$164,LCFI97-LCFI96
	.long L$set$164
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$165,LCFI98-LCFI97
	.long L$set$165
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$166,LCFI99-LCFI98
	.long L$set$166
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$167,LCFI100-LCFI99
	.long L$set$167
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$168,LCFI101-LCFI100
	.long L$set$168
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$169,LCFI102-LCFI101
	.long L$set$169
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$170,LCFI103-LCFI102
	.long L$set$170
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$171,LCFI104-LCFI103
	.long L$set$171
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$172,LCFI105-LCFI104
	.long L$set$172
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$173,LCFI106-LCFI105
	.long L$set$173
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$174,LCFI107-LCFI106
	.long L$set$174
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
	.set L$set$175,LCFI108-LCFI107
	.long L$set$175
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$176,LCFI109-LCFI108
	.long L$set$176
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$177,LCFI110-LCFI109
	.long L$set$177
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$178,LCFI111-LCFI110
	.long L$set$178
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$179,LCFI112-LCFI111
	.long L$set$179
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$180,LCFI113-LCFI112
	.long L$set$180
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$181,LCFI114-LCFI113
	.long L$set$181
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$182,LCFI115-LCFI114
	.long L$set$182
	.byte	0xb
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$183,LEFDE25-LASFDE25
	.long L$set$183
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB7614-.
	.set L$set$184,LFE7614-LFB7614
	.quad L$set$184
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$185,LCFI116-LFB7614
	.long L$set$185
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$186,LCFI117-LCFI116
	.long L$set$186
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$187,LCFI118-LCFI117
	.long L$set$187
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$188,LCFI119-LCFI118
	.long L$set$188
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$189,LCFI120-LCFI119
	.long L$set$189
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$190,LCFI121-LCFI120
	.long L$set$190
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$191,LCFI122-LCFI121
	.long L$set$191
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$192,LCFI123-LCFI122
	.long L$set$192
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$193,LCFI124-LCFI123
	.long L$set$193
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$194,LCFI125-LCFI124
	.long L$set$194
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$195,LCFI126-LCFI125
	.long L$set$195
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$196,LCFI127-LCFI126
	.long L$set$196
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$197,LCFI128-LCFI127
	.long L$set$197
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$198,LCFI129-LCFI128
	.long L$set$198
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$199,LCFI130-LCFI129
	.long L$set$199
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$200,LEFDE27-LASFDE27
	.long L$set$200
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB6564-.
	.set L$set$201,LFE6564-LFB6564
	.quad L$set$201
	.byte	0x8
	.quad	LLSDA6564-.
	.byte	0x4
	.set L$set$202,LCFI131-LFB6564
	.long L$set$202
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$203,LCFI132-LCFI131
	.long L$set$203
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$204,LCFI133-LCFI132
	.long L$set$204
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$205,LCFI134-LCFI133
	.long L$set$205
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$206,LCFI135-LCFI134
	.long L$set$206
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$207,LCFI136-LCFI135
	.long L$set$207
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$208,LCFI137-LCFI136
	.long L$set$208
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.set L$set$209,LCFI138-LCFI137
	.long L$set$209
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$210,LCFI139-LCFI138
	.long L$set$210
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$211,LCFI140-LCFI139
	.long L$set$211
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$212,LCFI141-LCFI140
	.long L$set$212
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$213,LCFI142-LCFI141
	.long L$set$213
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$214,LCFI143-LCFI142
	.long L$set$214
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$215,LCFI144-LCFI143
	.long L$set$215
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$216,LCFI145-LCFI144
	.long L$set$216
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$217,LEFDE29-LASFDE29
	.long L$set$217
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB7820-.
	.set L$set$218,LFE7820-LFB7820
	.quad L$set$218
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$219,LCFI146-LFB7820
	.long L$set$219
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$220,LCFI147-LCFI146
	.long L$set$220
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$221,LCFI148-LCFI147
	.long L$set$221
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
	.byte	0x4
	.set L$set$222,LCFI149-LCFI148
	.long L$set$222
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$223,LCFI150-LCFI149
	.long L$set$223
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$224,LCFI151-LCFI150
	.long L$set$224
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$225,LCFI152-LCFI151
	.long L$set$225
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$226,LCFI153-LCFI152
	.long L$set$226
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$227,LCFI154-LCFI153
	.long L$set$227
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$228,LCFI155-LCFI154
	.long L$set$228
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$229,LCFI156-LCFI155
	.long L$set$229
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$230,LEFDE31-LASFDE31
	.long L$set$230
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7846-.
	.set L$set$231,LFE7846-LFB7846
	.quad L$set$231
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$232,LCFI157-LFB7846
	.long L$set$232
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$233,LCFI158-LCFI157
	.long L$set$233
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$234,LCFI159-LCFI158
	.long L$set$234
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
	.byte	0x4
	.set L$set$235,LCFI160-LCFI159
	.long L$set$235
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$236,LCFI161-LCFI160
	.long L$set$236
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$237,LCFI162-LCFI161
	.long L$set$237
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$238,LCFI163-LCFI162
	.long L$set$238
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$239,LCFI164-LCFI163
	.long L$set$239
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$240,LCFI165-LCFI164
	.long L$set$240
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$241,LCFI166-LCFI165
	.long L$set$241
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$242,LCFI167-LCFI166
	.long L$set$242
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$243,LEFDE33-LASFDE33
	.long L$set$243
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB7871-.
	.set L$set$244,LFE7871-LFB7871
	.quad L$set$244
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$245,LCFI168-LFB7871
	.long L$set$245
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$246,LCFI169-LCFI168
	.long L$set$246
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$247,LCFI170-LCFI169
	.long L$set$247
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
	.byte	0x4
	.set L$set$248,LCFI171-LCFI170
	.long L$set$248
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x4
	.set L$set$249,LCFI172-LCFI171
	.long L$set$249
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$250,LCFI173-LCFI172
	.long L$set$250
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$251,LCFI174-LCFI173
	.long L$set$251
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$252,LCFI175-LCFI174
	.long L$set$252
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$253,LCFI176-LCFI175
	.long L$set$253
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$254,LCFI177-LCFI176
	.long L$set$254
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$255,LCFI178-LCFI177
	.long L$set$255
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$256,LEFDE35-LASFDE35
	.long L$set$256
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB7897-.
	.set L$set$257,LFE7897-LFB7897
	.quad L$set$257
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$258,LCFI179-LFB7897
	.long L$set$258
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$259,LCFI180-LCFI179
	.long L$set$259
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$260,LCFI181-LCFI180
	.long L$set$260
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$261,LCFI182-LCFI181
	.long L$set$261
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x4
	.set L$set$262,LCFI183-LCFI182
	.long L$set$262
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
	.set L$set$263,LCFI184-LCFI183
	.long L$set$263
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$264,LCFI185-LCFI184
	.long L$set$264
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$265,LCFI186-LCFI185
	.long L$set$265
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$266,LCFI187-LCFI186
	.long L$set$266
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x60
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$267,LCFI188-LCFI187
	.long L$set$267
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$268,LCFI189-LCFI188
	.long L$set$268
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$269,LCFI190-LCFI189
	.long L$set$269
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$270,LEFDE37-LASFDE37
	.long L$set$270
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB7925-.
	.set L$set$271,LFE7925-LFB7925
	.quad L$set$271
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$272,LCFI191-LFB7925
	.long L$set$272
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$273,LCFI192-LCFI191
	.long L$set$273
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$274,LCFI193-LCFI192
	.long L$set$274
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$275,LCFI194-LCFI193
	.long L$set$275
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x4
	.set L$set$276,LCFI195-LCFI194
	.long L$set$276
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
	.set L$set$277,LCFI196-LCFI195
	.long L$set$277
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$278,LCFI197-LCFI196
	.long L$set$278
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$279,LCFI198-LCFI197
	.long L$set$279
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$280,LCFI199-LCFI198
	.long L$set$280
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$281,LCFI200-LCFI199
	.long L$set$281
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$282,LEFDE39-LASFDE39
	.long L$set$282
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB6556-.
	.set L$set$283,LFE6556-LFB6556
	.quad L$set$283
	.byte	0x8
	.quad	LLSDA6556-.
	.byte	0x4
	.set L$set$284,LCFI201-LFB6556
	.long L$set$284
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$285,LCFI202-LCFI201
	.long L$set$285
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$286,LCFI203-LCFI202
	.long L$set$286
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$287,LCFI204-LCFI203
	.long L$set$287
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$288,LCFI205-LCFI204
	.long L$set$288
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$289,LCFI206-LCFI205
	.long L$set$289
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$290,LCFI207-LCFI206
	.long L$set$290
	.byte	0xe
	.byte	0xe0,0x1
	.byte	0x4
	.set L$set$291,LCFI208-LCFI207
	.long L$set$291
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$292,LCFI209-LCFI208
	.long L$set$292
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$293,LCFI210-LCFI209
	.long L$set$293
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$294,LCFI211-LCFI210
	.long L$set$294
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$295,LCFI212-LCFI211
	.long L$set$295
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$296,LCFI213-LCFI212
	.long L$set$296
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$297,LCFI214-LCFI213
	.long L$set$297
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$298,LCFI215-LCFI214
	.long L$set$298
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$299,LEFDE41-LASFDE41
	.long L$set$299
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB7970-.
	.set L$set$300,LFE7970-LFB7970
	.quad L$set$300
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$301,LCFI216-LFB7970
	.long L$set$301
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$302,LCFI217-LCFI216
	.long L$set$302
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$303,LCFI218-LCFI217
	.long L$set$303
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$304,LCFI219-LCFI218
	.long L$set$304
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$305,LCFI220-LCFI219
	.long L$set$305
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$306,LCFI221-LCFI220
	.long L$set$306
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$307,LCFI222-LCFI221
	.long L$set$307
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$308,LCFI223-LCFI222
	.long L$set$308
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$309,LCFI224-LCFI223
	.long L$set$309
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$310,LCFI225-LCFI224
	.long L$set$310
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$311,LCFI226-LCFI225
	.long L$set$311
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$312,LCFI227-LCFI226
	.long L$set$312
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$313,LCFI228-LCFI227
	.long L$set$313
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$314,LCFI229-LCFI228
	.long L$set$314
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$315,LCFI230-LCFI229
	.long L$set$315
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$316,LEFDE43-LASFDE43
	.long L$set$316
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB7971-.
	.set L$set$317,LFE7971-LFB7971
	.quad L$set$317
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$318,LCFI231-LFB7971
	.long L$set$318
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$319,LCFI232-LCFI231
	.long L$set$319
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$320,LCFI233-LCFI232
	.long L$set$320
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$321,LCFI234-LCFI233
	.long L$set$321
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$322,LCFI235-LCFI234
	.long L$set$322
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$323,LCFI236-LCFI235
	.long L$set$323
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$324,LCFI237-LCFI236
	.long L$set$324
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$325,LCFI238-LCFI237
	.long L$set$325
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$326,LCFI239-LCFI238
	.long L$set$326
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$327,LCFI240-LCFI239
	.long L$set$327
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$328,LCFI241-LCFI240
	.long L$set$328
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$329,LCFI242-LCFI241
	.long L$set$329
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$330,LCFI243-LCFI242
	.long L$set$330
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$331,LCFI244-LCFI243
	.long L$set$331
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$332,LCFI245-LCFI244
	.long L$set$332
	.byte	0xb
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$333,LEFDE45-LASFDE45
	.long L$set$333
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB6542-.
	.set L$set$334,LFE6542-LFB6542
	.quad L$set$334
	.byte	0x8
	.quad	LLSDA6542-.
	.byte	0x4
	.set L$set$335,LCFI246-LFB6542
	.long L$set$335
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$336,LCFI247-LCFI246
	.long L$set$336
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$337,LCFI248-LCFI247
	.long L$set$337
	.byte	0x10
	.byte	0xf
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x4
	.set L$set$338,LCFI249-LCFI248
	.long L$set$338
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
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
	.set L$set$339,LCFI250-LCFI249
	.long L$set$339
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$340,LCFI251-LCFI250
	.long L$set$340
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$341,LCFI252-LCFI251
	.long L$set$341
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$342,LCFI253-LCFI252
	.long L$set$342
	.byte	0xb
	.align 3
LEFDE45:
LSFDE47:
	.set L$set$343,LEFDE47-LASFDE47
	.long L$set$343
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB9149-.
	.set L$set$344,LFE9149-LFB9149
	.quad L$set$344
	.byte	0x8
	.quad	0
	.align 3
LEFDE47:
LSFDE49:
	.set L$set$345,LEFDE49-LASFDE49
	.long L$set$345
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB8743-.
	.set L$set$346,LFE8743-LFB8743
	.quad L$set$346
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$347,LCFI254-LFB8743
	.long L$set$347
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$348,LCFI255-LCFI254
	.long L$set$348
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE49:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_potts.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
