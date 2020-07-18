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
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Common10Exceptions6SimpleD1Ev
	.weak_definition __ZN5Utils6Common10Exceptions6SimpleD1Ev
__ZN5Utils6Common10Exceptions6SimpleD1Ev:
LFB7810:
	movq	__ZTVN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	jmp	__ZNSt9exceptionD2Ev
LFE7810:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Common10Exceptions6SimpleD0Ev
	.weak_definition __ZN5Utils6Common10Exceptions6SimpleD0Ev
__ZN5Utils6Common10Exceptions6SimpleD0Ev:
LFB7811:
	movq	__ZTVN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rax
	pushq	%rbx
LCFI0:
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	call	__ZNSt9exceptionD2Ev
	movq	%rbx, %rdi
	movl	$8, %esi
	popq	%rbx
LCFI1:
	jmp	__ZdlPvm
LFE7811:
	.cstring
lC0:
	.ascii "%lu\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.55:
LFB7890:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	pushq	%r14
	pushq	%r13
	pushq	%r12
LCFI4:
	movq	%rdi, %r12
	pushq	%rbx
	subq	$208, %rsp
LCFI5:
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	L17
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, -144(%rbp)
	vmovaps	%xmm2, -128(%rbp)
	vmovaps	%xmm3, -112(%rbp)
	vmovaps	%xmm4, -96(%rbp)
	vmovaps	%xmm5, -80(%rbp)
	vmovaps	%xmm6, -64(%rbp)
	vmovaps	%xmm7, -48(%rbp)
L17:
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
	jg	L27
	cmpq	$1, %r14
	je	L28
	cmpl	$8, %ebx
	jb	L29
L10:
	movl	%ebx, %edx
	subl	$1, %ebx
	movq	-8(%r13,%rdx), %rcx
	movq	%rcx, -8(%rax,%rdx)
	cmpl	$8, %ebx
	jb	L11
	andl	$-8, %ebx
	xorl	%edx, %edx
L14:
	movl	%edx, %ecx
	addl	$8, %edx
	movq	0(%r13,%rcx), %rsi
	movq	%rsi, (%rax,%rcx)
	cmpl	%ebx, %edx
	jb	L14
	.align 4,0x90
L11:
	movq	(%r12), %rax
	jmp	L16
	.align 4,0x90
L29:
	testb	$4, %bl
	jne	L30
	testl	%ebx, %ebx
	je	L11
	movzbl	0(%r13), %edx
	movb	%dl, (%rax)
	testb	$2, %bl
	je	L11
	movl	%ebx, %ebx
	movzwl	-2(%r13,%rbx), %edx
	movw	%dx, -2(%rax,%rbx)
	jmp	L11
	.align 4,0x90
L28:
	movzbl	0(%r13), %edx
	movb	%dl, 16(%r12)
L16:
	movq	%r14, 8(%r12)
	movb	$0, (%rax,%r14)
	leaq	-32(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
LCFI6:
	ret
	.align 4,0x90
L27:
LCFI7:
	leaq	1(%r14), %rdi
	call	__Znwm
	movq	%r14, 16(%r12)
	movq	%rax, (%r12)
	cmpl	$8, %ebx
	jnb	L10
	jmp	L29
	.align 4,0x90
L30:
	movl	0(%r13), %edx
	movl	%ebx, %ebx
	movl	%edx, (%rax)
	movl	-4(%r13,%rbx), %edx
	movl	%edx, -4(%rax,%rbx)
	jmp	L11
LFE7890:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC2IOC2EPNS_5PottsE
__ZN8MosaicSC2IOC2EPNS_5PottsE:
LFB7880:
	movq	48(%rsi), %rax
	movq	%rsi, 16(%rdi)
	movq	%rax, (%rdi)
	leaq	56(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	96(%rsi), %rax
	movq	%rax, 24(%rdi)
	movq	104(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	__ZN8MosaicSC5Potts1LE@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rdi)
	leaq	216(%rsi), %rax
	movq	%rax, 48(%rdi)
	leaq	240(%rsi), %rax
	movq	%rax, 56(%rdi)
	leaq	504(%rsi), %rax
	movq	%rax, 64(%rdi)
	leaq	528(%rsi), %rax
	movq	%rax, 72(%rdi)
	leaq	552(%rsi), %rax
	addq	$576, %rsi
	movq	%rax, 80(%rdi)
	movq	%rsi, 88(%rdi)
	ret
LFE7880:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC2IOC1EPNS_5PottsE
__ZN8MosaicSC2IOC1EPNS_5PottsE:
LFB6515:
	movq	48(%rsi), %rax
	movq	%rsi, 16(%rdi)
	movq	%rax, (%rdi)
	leaq	56(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	96(%rsi), %rax
	movq	%rax, 24(%rdi)
	movq	104(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	__ZN8MosaicSC5Potts1LE@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rdi)
	leaq	216(%rsi), %rax
	movq	%rax, 48(%rdi)
	leaq	240(%rsi), %rax
	movq	%rax, 56(%rdi)
	leaq	504(%rsi), %rax
	movq	%rax, 64(%rdi)
	leaq	528(%rsi), %rax
	movq	%rax, 72(%rdi)
	leaq	552(%rsi), %rax
	addq	$576, %rsi
	movq	%rax, 80(%rdi)
	movq	%rsi, 88(%rdi)
	ret
LFE6515:
	.cstring
lC1:
	.ascii "\33[44m\0"
lC2:
	.ascii "\33[43m\0"
lC3:
	.ascii "\33[41m\0"
lC4:
	.ascii "\33[0m\0"
lC5:
	.ascii "\33[42m\0"
lC6:
	.ascii "\33[45m\0"
lC7:
	.ascii "\0"
lC8:
	.ascii "  \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO13print_latticeEmmmmmm
__ZNK8MosaicSC2IO13print_latticeEmmmmmm:
LFB6517:
	pushq	%r15
LCFI8:
	pushq	%r14
LCFI9:
	movq	%rdi, %r14
	pushq	%r13
LCFI10:
	pushq	%r12
LCFI11:
	pushq	%rbp
LCFI12:
	pushq	%rbx
LCFI13:
	subq	$88, %rsp
LCFI14:
	movq	144(%rsp), %rax
	movq	%rsi, 64(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	movq	%rcx, 40(%rsp)
	cmpq	$20, 744(%rax)
	movq	%r8, 48(%rsp)
	movq	%r9, 56(%rsp)
	je	L77
	movq	__ZSt4cout@GOTPCREL(%rip), %r12
L34:
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	L40
	cmpb	$0, 56(%rbx)
	je	L36
	movsbl	67(%rbx), %esi
L37:
	movq	%r12, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %r8
	cmpq	$0, (%r8)
	je	L38
	movq	56(%rsp), %rax
	xorl	%r15d, %r15d
	salq	$3, %rax
	movq	%rax, 72(%rsp)
	.align 4,0x90
L48:
	movq	8(%rsp), %rcx
	cmpq	%rcx, 56(%rsp)
	jnb	L51
	leaq	(%r15,%r15,2), %r13
	movq	72(%rsp), %rbp
	movq	56(%rsp), %rbx
	salq	$3, %r13
	cmpq	%r15, 64(%rsp)
	sete	31(%rsp)
	jmp	L52
	.align 4,0x90
L42:
	cmpq	%rbx, 16(%rsp)
	jne	L62
L81:
	cmpb	$0, 31(%rsp)
	je	L62
	movl	$5, %r10d
	leaq	lC6(%rip), %rsi
L43:
	movq	%r10, %rdx
	movq	%r12, %rdi
	addq	$1, %rbx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	64(%r14), %rax
	movq	%r12, %rdi
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movq	(%rax,%rbp), %rsi
	addq	$8, %rbp
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbx, 8(%rsp)
	je	L51
	movq	40(%r14), %r8
L52:
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	__ZN8MosaicSC1CILj1EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movl	$5, %r10d
	leaq	lC1(%rip), %rsi
	testb	%al, %al
	jne	L42
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	40(%r14), %r8
	movq	%r10, 32(%rsp)
	call	__ZN8MosaicSC1CILj2EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	leaq	lC2(%rip), %rsi
	movq	32(%rsp), %r10
	testb	%al, %al
	jne	L42
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	40(%r14), %r8
	call	__ZN8MosaicSC1CILj3EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	leaq	lC3(%rip), %rsi
	movq	32(%rsp), %r10
	testb	%al, %al
	jne	L42
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	40(%r14), %r8
	call	__ZN8MosaicSC1CILj4EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	leaq	lC4(%rip), %rsi
	cmpb	$1, %al
	sbbq	%r10, %r10
	addq	$5, %r10
	testb	%al, %al
	leaq	lC5(%rip), %rax
	cmovne	%rax, %rsi
	cmpq	%rbx, 16(%rsp)
	je	L81
	.align 4,0x90
L62:
	cmpq	%r15, 40(%rsp)
	jne	L43
	cmpq	%rbx, 48(%rsp)
	movl	$5, %eax
	cmove	%rax, %r10
	leaq	lC6(%rip), %rax
	cmove	%rax, %rsi
	jmp	L43
	.align 4,0x90
L51:
	movl	$4, %edx
	leaq	lC4(%rip), %rsi
	movq	%r12, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	L40
	cmpb	$0, 56(%rbx)
	je	L46
	movsbl	67(%rbx), %esi
L47:
	movq	%r12, %rdi
	addq	$1, %r15
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %r8
	cmpq	%r15, (%r8)
	ja	L48
L38:
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	L40
	cmpb	$0, 56(%rbx)
	je	L49
	movsbl	67(%rbx), %esi
L50:
	movq	%r12, %rdi
	call	__ZNSo3putEc
	addq	$88, %rsp
LCFI15:
	popq	%rbx
LCFI16:
	movq	%rax, %rdi
	popq	%rbp
LCFI17:
	popq	%r12
LCFI18:
	popq	%r13
LCFI19:
	popq	%r14
LCFI20:
	popq	%r15
LCFI21:
	jmp	__ZNSo5flushEv
	.align 4,0x90
L46:
LCFI22:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L47
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L47
	.align 4,0x90
L36:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L37
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L37
	.align 4,0x90
L49:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L50
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L50
L77:
	movq	__ZSt4cout@GOTPCREL(%rip), %r12
	xorl	%edx, %edx
	leaq	lC7(%rip), %rsi
	movq	%r12, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	L34
L40:
	call	__ZSt16__throw_bad_castv
LFE6517:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA6517:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO13print_latticeEmmmm
__ZNK8MosaicSC2IO13print_latticeEmmmm:
LFB6516:
	pushq	%r15
LCFI23:
	pushq	%r14
LCFI24:
	movq	%rsi, %r14
	pushq	%r13
LCFI25:
	movq	%rdx, %r13
	pushq	%r12
LCFI26:
	movq	%rcx, %r12
	pushq	%rbp
LCFI27:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI28:
	xorl	%ebx, %ebx
	subq	$24, %rsp
LCFI29:
	movq	40(%rdi), %rax
	movq	%r8, 8(%rsp)
	movq	8(%rax), %rax
	jmp	L83
	.align 4,0x90
L92:
	subq	$8, %rsp
LCFI30:
	leaq	70(%rbx), %r15
	movq	%r12, %rcx
	movq	%r13, %rdx
	pushq	%r15
LCFI31:
	movq	24(%rsp), %r8
	movq	%rbx, %r9
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	__ZNK8MosaicSC2IO13print_latticeEmmmmmm
	movq	40(%rbp), %rax
	popq	%rdx
LCFI32:
	popq	%rcx
LCFI33:
	movq	8(%rax), %rax
	cmpq	%r15, %rax
	jbe	L91
L86:
	movq	%r15, %rbx
L83:
	movq	%rax, %rdx
	subq	%rbx, %rdx
	cmpq	$69, %rdx
	ja	L92
	subq	$8, %rsp
LCFI34:
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%rbx, %r9
	pushq	%rax
LCFI35:
	movq	24(%rsp), %r8
	movq	%r14, %rsi
	movq	%rbp, %rdi
	leaq	70(%rbx), %r15
	call	__ZNK8MosaicSC2IO13print_latticeEmmmmmm
	movq	40(%rbp), %rax
	popq	%rdx
LCFI36:
	popq	%rcx
LCFI37:
	movq	8(%rax), %rax
	cmpq	%r15, %rax
	ja	L86
L91:
	addq	$24, %rsp
LCFI38:
	popq	%rbx
LCFI39:
	popq	%rbp
LCFI40:
	popq	%r12
LCFI41:
	popq	%r13
LCFI42:
	popq	%r14
LCFI43:
	popq	%r15
LCFI44:
	ret
LFE6516:
	.cstring
lC9:
	.ascii "+\0"
lC10:
	.ascii "-\0"
lC11:
	.ascii "o\0"
lC12:
	.ascii "0\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO12print_orientEmm
__ZNK8MosaicSC2IO12print_orientEmm:
LFB6519:
	pushq	%r15
LCFI45:
	pushq	%r14
LCFI46:
	pushq	%r13
LCFI47:
	pushq	%r12
LCFI48:
	pushq	%rbp
LCFI49:
	pushq	%rbx
LCFI50:
	subq	$40, %rsp
LCFI51:
	movq	__ZSt4cout@GOTPCREL(%rip), %r15
	movq	%rsi, 16(%rsp)
	movq	(%r15), %rax
	movq	%rdx, 8(%rsp)
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	L99
	cmpb	$0, 56(%rbx)
	movq	%rdi, %r14
	je	L95
	movsbl	67(%rbx), %esi
L96:
	movq	%r15, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %r8
	cmpq	$0, (%r8)
	je	L97
	movq	16(%rsp), %rax
	movq	$0, (%rsp)
	salq	$2, %rax
	movq	%rax, 24(%rsp)
	.align 4,0x90
L110:
	movq	8(%rsp), %rbx
	cmpq	%rbx, 16(%rsp)
	jnb	L113
	movq	(%rsp), %rax
	movq	24(%rsp), %rbp
	movq	16(%rsp), %rbx
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	jmp	L114
	.align 4,0x90
L135:
	movq	72(%r14), %rax
	movl	$5, %edx
	leaq	lC5(%rip), %rsi
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movl	(%rax,%rbp), %eax
	testl	%eax, %eax
	je	L103
L107:
	movl	$5, %edx
	leaq	lC2(%rip), %rsi
L103:
	movq	%r15, %rdi
	addq	$1, %rbx
	addq	$4, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$2, %edx
	leaq	lC8(%rip), %rsi
	movq	%r15, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbx, 8(%rsp)
	je	L113
	movq	40(%r14), %r8
L114:
	movq	72(%r14), %rcx
	leaq	lC10(%rip), %r12
	movq	(%rcx), %rax
	movq	(%rax,%r13), %rax
	movl	(%rax,%rbp), %eax
	cmpl	$-1, %eax
	je	L101
	leaq	lC9(%rip), %r12
	cmpl	$1, %eax
	je	L101
	testl	%eax, %eax
	leaq	lC12(%rip), %r12
	leaq	lC11(%rip), %rax
	cmovne	%rax, %r12
L101:
	movq	64(%r14), %rdx
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	call	__ZN8MosaicSC1CILj3EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	jne	L135
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	(%rsp), %rdi
	call	__ZN8MosaicSC1CILj1EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	je	L104
L106:
	movq	72(%r14), %rax
	movl	$5, %edx
	leaq	lC3(%rip), %rsi
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movl	(%rax,%rbp), %eax
	cmpl	$1, %eax
	je	L103
	cmpl	$-1, %eax
	jne	L107
	movl	$5, %edx
	leaq	lC1(%rip), %rsi
	jmp	L103
	.align 4,0x90
L113:
	movl	$4, %edx
	leaq	lC4(%rip), %rsi
	movq	%r15, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	L99
	cmpb	$0, 56(%rbx)
	je	L108
	movsbl	67(%rbx), %esi
L109:
	movq	%r15, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %r8
	addq	$1, (%rsp)
	movq	(%rsp), %rax
	cmpq	%rax, (%r8)
	ja	L110
L97:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	L99
	cmpb	$0, 56(%rbx)
	je	L111
	movsbl	67(%rbx), %esi
L112:
	movq	%r15, %rdi
	call	__ZNSo3putEc
	addq	$40, %rsp
LCFI52:
	popq	%rbx
LCFI53:
	movq	%rax, %rdi
	popq	%rbp
LCFI54:
	popq	%r12
LCFI55:
	popq	%r13
LCFI56:
	popq	%r14
LCFI57:
	popq	%r15
LCFI58:
	jmp	__ZNSo5flushEv
	.align 4,0x90
L104:
LCFI59:
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	(%rsp), %rdi
	call	__ZN8MosaicSC1CILj2EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	jne	L106
	movq	64(%r14), %rdx
	movq	72(%r14), %rcx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	(%rsp), %rdi
	call	__ZN8MosaicSC1CILj4EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	movl	$4, %edx
	leaq	lC4(%rip), %rsi
	testb	%al, %al
	je	L103
	jmp	L106
	.align 4,0x90
L108:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L109
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L109
	.align 4,0x90
L95:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L96
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L96
	.align 4,0x90
L111:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L112
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L112
L99:
	call	__ZSt16__throw_bad_castv
LFE6519:
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA6519:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO12print_orientEv
__ZNK8MosaicSC2IO12print_orientEv:
LFB6518:
	pushq	%r12
LCFI60:
	movq	%rdi, %r12
	pushq	%rbp
LCFI61:
	pushq	%rbx
LCFI62:
	movq	40(%rdi), %rax
	xorl	%ebx, %ebx
	movq	8(%rax), %rdx
	jmp	L137
	.align 4,0x90
L143:
	leaq	70(%rbx), %rbp
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	call	__ZNK8MosaicSC2IO12print_orientEmm
	movq	40(%r12), %rax
	movq	8(%rax), %rdx
	cmpq	%rbp, %rdx
	jbe	L141
L140:
	movq	%rbp, %rbx
L137:
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	$69, %rax
	ja	L143
	movq	%rbx, %rsi
	movq	%r12, %rdi
	leaq	70(%rbx), %rbp
	call	__ZNK8MosaicSC2IO12print_orientEmm
	movq	40(%r12), %rax
	movq	8(%rax), %rdx
	cmpq	%rbp, %rdx
	ja	L140
L141:
	popq	%rbx
LCFI63:
	popq	%rbp
LCFI64:
	popq	%r12
LCFI65:
	ret
LFE6518:
	.cstring
lC13:
	.ascii "\33[37m\0"
lC14:
	.ascii "\33[33m\0"
lC15:
	.ascii "\33[34m\0"
lC16:
	.ascii "\33[31m\0"
lC17:
	.ascii "\33[35m\0"
lC19:
	.ascii " \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO14print_gE_colorEmmmm
__ZNK8MosaicSC2IO14print_gE_colorEmmmm:
LFB6520:
	pushq	%r15
LCFI66:
	pushq	%r14
LCFI67:
	pushq	%r13
LCFI68:
	pushq	%r12
LCFI69:
	pushq	%rbp
LCFI70:
	pushq	%rbx
LCFI71:
	subq	$56, %rsp
LCFI72:
	movq	40(%rdi), %rax
	movq	%rsi, 40(%rsp)
	cmpq	$0, (%rax)
	movq	%rdx, 8(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	je	L187
	movq	$0, (%rsp)
	movq	__ZSt4cout@GOTPCREL(%rip), %rbp
	movq	%rdi, %r14
	leaq	lC13(%rip), %r12
	.align 4,0x90
L157:
	cmpq	$0, 8(%rax)
	je	L160
	movq	(%rsp), %rax
	movq	%r14, %r13
	leaq	(%rax,%rax,2), %rbx
	salq	$3, %rbx
	cmpq	%rax, 40(%rsp)
	sete	23(%rsp)
	xorl	%r15d, %r15d
	movq	%r15, %r14
	jmp	L161
	.align 4,0x90
L189:
	vxorps	%xmm2, %xmm2, %xmm2
	leaq	lC16(%rip), %rax
	vucomiss	%xmm2, %xmm0
	cmova	%rax, %rsi
	cmpq	%r14, 8(%rsp)
	jne	L169
L190:
	cmpb	$0, 23(%rsp)
	je	L169
	leaq	lC17(%rip), %rsi
L152:
	movl	$5, %edx
	movq	%rbp, %rdi
	addq	$1, %r14
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	88(%r13), %rax
	movq	%rbp, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rax), %rax
	movq	(%rax,%rbx), %rax
	vcvtss2sd	(%rax,%r15), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%r13), %rax
	cmpq	%r14, 8(%rax)
	jbe	L188
L161:
	movq	64(%r13), %rax
	leaq	lC14(%rip), %rsi
	vxorps	%xmm1, %xmm1, %xmm1
	leaq	0(,%r14,4), %r15
	movq	(%rax), %rax
	movq	(%rax,%rbx), %rax
	cmpq	$0, (%rax,%r14,8)
	movq	88(%r13), %rax
	cmove	%r12, %rsi
	movq	(%rax), %rax
	movq	(%rax,%rbx), %rax
	vmovss	(%rax,%r14,4), %xmm0
	vucomiss	%xmm0, %xmm1
	jbe	L189
	leaq	lC15(%rip), %rsi
	cmpq	%r14, 8(%rsp)
	je	L190
	.align 4,0x90
L169:
	movq	(%rsp), %rcx
	cmpq	%rcx, 24(%rsp)
	jne	L152
	cmpq	%r14, 32(%rsp)
	leaq	lC17(%rip), %rax
	cmove	%rax, %rsi
	jmp	L152
	.align 4,0x90
L188:
	movq	%r13, %r14
L160:
	movl	$5, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbp), %rbx
	testq	%rbx, %rbx
	je	L147
	cmpb	$0, 56(%rbx)
	je	L155
	movsbl	67(%rbx), %esi
L156:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %rax
	addq	$1, (%rsp)
	movq	(%rsp), %rcx
	cmpq	%rcx, (%rax)
	ja	L157
L145:
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbp), %rbx
	testq	%rbx, %rbx
	je	L147
	cmpb	$0, 56(%rbx)
	je	L158
	movsbl	67(%rbx), %esi
L159:
	movq	%rbp, %rdi
	call	__ZNSo3putEc
	addq	$56, %rsp
LCFI73:
	popq	%rbx
LCFI74:
	movq	%rax, %rdi
	popq	%rbp
LCFI75:
	popq	%r12
LCFI76:
	popq	%r13
LCFI77:
	popq	%r14
LCFI78:
	popq	%r15
LCFI79:
	jmp	__ZNSo5flushEv
	.align 4,0x90
L155:
LCFI80:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L156
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L156
	.align 4,0x90
L158:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L159
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L159
L187:
	movq	__ZSt4cout@GOTPCREL(%rip), %rbp
	jmp	L145
L147:
	call	__ZSt16__throw_bad_castv
LFE6520:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDA6520:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO11print_gE_bwEmmmm
__ZNK8MosaicSC2IO11print_gE_bwEmmmm:
LFB6521:
	pushq	%r15
LCFI81:
	pushq	%r14
LCFI82:
	pushq	%r13
LCFI83:
	pushq	%r12
LCFI84:
	pushq	%rbp
LCFI85:
	pushq	%rbx
LCFI86:
	subq	$8, %rsp
LCFI87:
	movq	40(%rdi), %rax
	cmpq	$0, (%rax)
	je	L212
	movq	__ZSt4cout@GOTPCREL(%rip), %r12
	movq	%rdi, %rbp
	xorl	%r15d, %r15d
	leaq	lC19(%rip), %r14
	.align 4,0x90
L198:
	cmpq	$0, 8(%rax)
	je	L193
	leaq	(%r15,%r15,2), %r13
	xorl	%ebx, %ebx
	salq	$3, %r13
	.align 4,0x90
L194:
	movq	88(%rbp), %rax
	movq	%r12, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	vcvtss2sd	(%rax,%rbx,4), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, %rdi
	addq	$1, %rbx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%rbp), %rax
	cmpq	%rbx, 8(%rax)
	ja	L194
L193:
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	L199
	cmpb	$0, 56(%rbx)
	je	L196
	movsbl	67(%rbx), %esi
L197:
	movq	%r12, %rdi
	addq	$1, %r15
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%rbp), %rax
	cmpq	%r15, (%rax)
	ja	L198
L192:
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	L199
	cmpb	$0, 56(%rbx)
	je	L200
	movsbl	67(%rbx), %esi
L201:
	movq	%r12, %rdi
	call	__ZNSo3putEc
	addq	$8, %rsp
LCFI88:
	popq	%rbx
LCFI89:
	movq	%rax, %rdi
	popq	%rbp
LCFI90:
	popq	%r12
LCFI91:
	popq	%r13
LCFI92:
	popq	%r14
LCFI93:
	popq	%r15
LCFI94:
	jmp	__ZNSo5flushEv
	.align 4,0x90
L196:
LCFI95:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L197
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L197
	.align 4,0x90
L200:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L201
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L201
L212:
	movq	__ZSt4cout@GOTPCREL(%rip), %r12
	jmp	L192
L199:
	call	__ZSt16__throw_bad_castv
LFE6521:
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA6521:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.cstring
lC20:
	.ascii "\33[7m\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO11print_mskSCEmm
__ZNK8MosaicSC2IO11print_mskSCEmm:
LFB6523:
	pushq	%r15
LCFI96:
	pushq	%r14
LCFI97:
	pushq	%r13
LCFI98:
	pushq	%r12
LCFI99:
	pushq	%rbp
LCFI100:
	pushq	%rbx
LCFI101:
	subq	$56, %rsp
LCFI102:
	movq	40(%rdi), %r8
	movq	%rsi, 32(%rsp)
	cmpq	$0, (%r8)
	movq	%rdx, 24(%rsp)
	je	L246
	movq	%rsi, %rax
	movq	__ZSt4cout@GOTPCREL(%rip), %r15
	movq	%rdi, %r14
	movq	$0, 8(%rsp)
	salq	$3, %rax
	movq	%rax, 40(%rsp)
	.align 4,0x90
L223:
	movq	24(%rsp), %rcx
	cmpq	%rcx, 32(%rsp)
	jnb	L226
	movq	8(%rsp), %rax
	movq	40(%rsp), %rbp
	movq	32(%rsp), %rbx
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	jmp	L227
	.align 4,0x90
L219:
	leaq	lC20(%rip), %rsi
L220:
	movl	$4, %edx
	movq	%r15, %rdi
	addq	$1, %rbx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	56(%r14), %rax
	movq	%r15, %rdi
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movq	(%rax,%rbp), %rsi
	addq	$8, %rbp
	call	__ZNSo9_M_insertImEERSoT_
	movq	%r12, %rdi
	movq	%rax, 16(%rsp)
	call	_strlen
	movq	16(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbx, 24(%rsp)
	je	L226
	movq	40(%r14), %r8
L227:
	movq	56(%r14), %rax
	leaq	lC8(%rip), %r12
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movq	(%rax,%rbp), %rax
	cmpq	$9, %rax
	jbe	L218
	cmpq	$100, %rax
	leaq	lC7(%rip), %r12
	leaq	lC19(%rip), %rax
	cmovb	%rax, %r12
L218:
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	8(%rsp), %rdi
	call	__ZN8MosaicSC1CILj1EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	jne	L219
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	8(%rsp), %rdi
	call	__ZN8MosaicSC1CILj2EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	jne	L219
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	8(%rsp), %rdi
	call	__ZN8MosaicSC1CILj3EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	testb	%al, %al
	jne	L219
	movq	72(%r14), %rcx
	movq	64(%r14), %rdx
	movq	%rbx, %rsi
	movq	40(%r14), %r8
	movq	8(%rsp), %rdi
	call	__ZN8MosaicSC1CILj4EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
	leaq	lC4(%rip), %rsi
	testb	%al, %al
	je	L220
	jmp	L219
	.align 4,0x90
L226:
	movl	$4, %edx
	leaq	lC4(%rip), %rsi
	movq	%r15, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	L216
	cmpb	$0, 56(%rbx)
	je	L221
	movsbl	67(%rbx), %esi
L222:
	movq	%r15, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	40(%r14), %r8
	addq	$1, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	%rax, (%r8)
	ja	L223
L214:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	L216
	cmpb	$0, 56(%rbx)
	je	L224
	movsbl	67(%rbx), %esi
L225:
	movq	%r15, %rdi
	call	__ZNSo3putEc
	addq	$56, %rsp
LCFI103:
	popq	%rbx
LCFI104:
	movq	%rax, %rdi
	popq	%rbp
LCFI105:
	popq	%r12
LCFI106:
	popq	%r13
LCFI107:
	popq	%r14
LCFI108:
	popq	%r15
LCFI109:
	jmp	__ZNSo5flushEv
	.align 4,0x90
L221:
LCFI110:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L222
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L222
	.align 4,0x90
L224:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L225
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L225
L246:
	movq	__ZSt4cout@GOTPCREL(%rip), %r15
	jmp	L214
L216:
	call	__ZSt16__throw_bad_castv
LFE6523:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDA6523:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO11print_mskSCEv
__ZNK8MosaicSC2IO11print_mskSCEv:
LFB6522:
	pushq	%r12
LCFI111:
	movq	%rdi, %r12
	pushq	%rbp
LCFI112:
	pushq	%rbx
LCFI113:
	movq	40(%rdi), %rax
	xorl	%ebx, %ebx
	movq	8(%rax), %rdx
	jmp	L248
	.align 4,0x90
L254:
	leaq	70(%rbx), %rbp
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	call	__ZNK8MosaicSC2IO11print_mskSCEmm
	movq	40(%r12), %rax
	movq	8(%rax), %rdx
	cmpq	%rbp, %rdx
	jbe	L252
L251:
	movq	%rbp, %rbx
L248:
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	$69, %rax
	ja	L254
	movq	%rbx, %rsi
	movq	%r12, %rdi
	leaq	70(%rbx), %rbp
	call	__ZNK8MosaicSC2IO11print_mskSCEmm
	movq	40(%r12), %rax
	movq	8(%rax), %rdx
	cmpq	%rbp, %rdx
	ja	L251
L252:
	popq	%rbx
LCFI114:
	popq	%rbp
LCFI115:
	popq	%r12
LCFI116:
	ret
LFE6522:
	.cstring
lC21:
	.ascii "basic_string::_M_create\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB7514:
	pushq	%r15
LCFI117:
	movq	%rdx, %r15
	pushq	%r14
LCFI118:
	leaq	16(%rdi), %r14
	pushq	%r13
LCFI119:
	pushq	%r12
LCFI120:
	movq	%rsi, %r12
	pushq	%rbp
LCFI121:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI122:
	movq	%r8, %rbx
	subq	%rdx, %rbx
	subq	$40, %rsp
LCFI123:
	movq	8(%rdi), %rax
	movq	%rax, %r13
	addq	%rax, %rbx
	movl	$15, %eax
	subq	%rsi, %r13
	subq	%rdx, %r13
	cmpq	(%rdi), %r14
	je	L256
	movq	16(%rdi), %rax
L256:
	testq	%rbx, %rbx
	js	L283
	cmpq	%rax, %rbx
	jbe	L282
	addq	%rax, %rax
	cmpq	%rax, %rbx
	jnb	L282
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbx
	testq	%rax, %rax
	js	L259
	leaq	1(%rax), %rdi
	movq	%rax, %rbx
	jmp	L259
	.align 4,0x90
L282:
	leaq	1(%rbx), %rdi
L259:
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	testq	%r12, %r12
	movq	0(%rbp), %r9
	movq	8(%rsp), %rcx
	movq	%rax, %r10
	movq	16(%rsp), %r8
	je	L262
	cmpq	$1, %r12
	jne	L263
	movzbl	(%r9), %eax
	movb	%al, (%r10)
L262:
	testq	%rcx, %rcx
	je	L264
	testq	%r8, %r8
	je	L264
	leaq	(%r10,%r12), %rdi
	cmpq	$1, %r8
	je	L284
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
L264:
	testq	%r13, %r13
	jne	L285
L266:
	cmpq	%r9, %r14
	je	L268
	movq	%r9, %rdi
	movq	%r10, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %r10
L268:
	movq	%r10, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$40, %rsp
LCFI124:
	popq	%rbx
LCFI125:
	popq	%rbp
LCFI126:
	popq	%r12
LCFI127:
	popq	%r13
LCFI128:
	popq	%r14
LCFI129:
	popq	%r15
LCFI130:
	ret
	.align 4,0x90
L285:
LCFI131:
	leaq	(%r12,%r15), %rsi
	leaq	(%r12,%r8), %rdi
	addq	%r9, %rsi
	addq	%r10, %rdi
	cmpq	$1, %r13
	jne	L267
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L266
	.align 4,0x90
L267:
	movq	%r13, %rdx
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	_memcpy
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	jmp	L266
	.align 4,0x90
L263:
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
	jmp	L262
	.align 4,0x90
L284:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r13, %r13
	je	L266
	jmp	L285
L283:
	leaq	lC21(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7514:
	.cstring
lC22:
	.ascii "basic_string::append\0"
	.text
	.align 4,0x90
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:
LFB7026:
	pushq	%r15
LCFI132:
	movq	%rsi, %r15
	pushq	%r14
LCFI133:
	movq	%rdx, %r14
	pushq	%r13
LCFI134:
	pushq	%r12
LCFI135:
	pushq	%rbp
LCFI136:
	pushq	%rbx
LCFI137:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	leaq	16(%rbx), %r12
	subq	$24, %rsp
LCFI138:
	call	_strlen
	movq	%r12, (%rbx)
	movq	%rax, %rbp
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	addq	8(%r14), %rax
	cmpq	$15, %rax
	ja	L318
	movq	%rbp, %r13
	movl	$15, %eax
	movq	%r12, %rcx
	xorl	%r9d, %r9d
	cmpq	%rax, %r13
	ja	L293
L323:
	testq	%rbp, %rbp
	je	L294
	leaq	(%rcx,%r9), %rdi
	cmpq	$1, %rbp
	jne	L295
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
	.align 4,0x90
L294:
	movq	%r13, 8(%rbx)
	movl	$15, %eax
	movb	$0, (%rcx,%r13)
	movq	8(%r14), %r8
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdi
	movq	(%r14), %rcx
	leaq	(%r8,%rsi), %rbp
	cmpq	%rdi, %r12
	je	L296
	movq	16(%rbx), %rax
L296:
	cmpq	%rax, %rbp
	ja	L297
	testq	%r8, %r8
	je	L298
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	L299
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rdi
L298:
	movq	%rbp, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdi,%rbp)
	addq	$24, %rsp
LCFI139:
	popq	%rbx
LCFI140:
	popq	%rbp
LCFI141:
	popq	%r12
LCFI142:
	popq	%r13
LCFI143:
	popq	%r14
LCFI144:
	popq	%r15
LCFI145:
	ret
	.align 4,0x90
L318:
LCFI146:
	testq	%rax, %rax
	js	L319
	cmpq	$30, %rax
	movl	$30, %edx
	cmovnb	%rax, %rdx
	leaq	1(%rdx), %rdi
	movq	%rdx, (%rsp)
LEHB0:
	call	__Znwm
	movq	8(%rbx), %r9
	movq	%rax, %rcx
	movq	(%rbx), %r13
	leaq	1(%r9), %rdx
	cmpq	$1, %rdx
	je	L320
	testq	%rdx, %rdx
	jne	L321
L290:
	cmpq	%r13, %r12
	je	L291
	movq	%r13, %rdi
	movq	%rcx, 8(%rsp)
	call	__ZdlPv
	movq	8(%rbx), %r9
	movq	8(%rsp), %rcx
L291:
	movq	(%rsp), %rax
	movq	%rcx, (%rbx)
	movq	%rax, 16(%rbx)
	movabsq	$9223372036854775807, %rax
	subq	%r9, %rax
	cmpq	%rbp, %rax
	jb	L322
	cmpq	%rcx, %r12
	movl	$15, %eax
	cmovne	(%rsp), %rax
	leaq	(%r9,%rbp), %r13
	cmpq	%rax, %r13
	jbe	L323
L293:
	movq	%rbp, %r8
	movq	%r15, %rcx
	xorl	%edx, %edx
	movq	%r9, %rsi
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rbx), %rcx
	jmp	L294
	.align 4,0x90
L297:
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rbx), %rdi
	jmp	L298
	.align 4,0x90
L299:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	(%rbx), %rdi
	jmp	L298
	.align 4,0x90
L295:
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	_memcpy
	movq	(%rbx), %rcx
	jmp	L294
	.align 4,0x90
L320:
	movzbl	0(%r13), %eax
	movb	%al, (%rcx)
	jmp	L290
	.align 4,0x90
L321:
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%r9, 8(%rsp)
	call	_memcpy
	movq	8(%rsp), %r9
	movq	%rax, %rcx
	jmp	L290
L322:
	leaq	lC22(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE0:
L305:
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	cmpq	%rdi, %r12
	je	L316
	vzeroupper
	call	__ZdlPv
L301:
	movq	%rbp, %rdi
LEHB1:
	call	__Unwind_Resume
LEHE1:
L319:
	leaq	lC21(%rip), %rdi
LEHB2:
	call	__ZSt20__throw_length_errorPKc
LEHE2:
L316:
	vzeroupper
	jmp	L301
LFE7026:
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA7026:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x27
	.set L$set$0,LEHB0-LFB7026
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.set L$set$2,L305-LFB7026
	.long L$set$2
	.byte	0
	.set L$set$3,LEHB1-LFB7026
	.long L$set$3
	.set L$set$4,LEHE1-LEHB1
	.long L$set$4
	.long	0
	.byte	0
	.set L$set$5,LEHB2-LFB7026
	.long L$set$5
	.set L$set$6,LEHE2-LEHB2
	.long L$set$6
	.set L$set$7,L305-LFB7026
	.long L$set$7
	.byte	0
	.text
	.cstring
	.align 3
lC23:
	.ascii "basic_string::_M_construct null not valid\0"
lC24:
	.ascii "lat_last_\0"
	.align 3
lC25:
	.ascii "Error in read_lattice: Cannot open file: \0"
	.align 3
lC26:
	.ascii "Error in read_lattice: Lattice dimensions do not agree: \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC2IO14readin_latticeEv
__ZN8MosaicSC2IO14readin_latticeEv:
LFB6531:
	leaq	8(%rsp), %r10
LCFI147:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI148:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
LCFI149:
	leaq	-976(%rbp), %r15
	pushq	%r13
	leaq	16(%r15), %rdx
	pushq	%r12
LCFI150:
	movq	%rdi, %r12
	pushq	%r10
LCFI151:
	pushq	%rbx
	subq	$1056, %rsp
LCFI152:
	movq	(%rdi), %rax
	movq	8(%rdi), %r13
	movq	%rdx, -976(%rbp)
	movq	32(%rax), %r14
	movq	40(%rax), %rbx
	movq	%r14, %rax
	addq	%rbx, %rax
	je	L325
	testq	%r14, %r14
	je	L412
L325:
	cmpq	$15, %rbx
	ja	L413
	cmpq	$1, %rbx
	je	L414
	leaq	16(%r15), %rax
	testq	%rbx, %rbx
	jne	L328
L330:
	movq	%rbx, -968(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-968(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$8, %rax
	jbe	L415
	movq	-976(%rbp), %rax
	leaq	16(%r15), %rcx
	leaq	9(%rbx), %r14
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L332
	movq	-960(%rbp), %rdx
L332:
	cmpq	%rdx, %r14
	ja	L333
	movabsq	$8391157648807190892, %rcx
	addq	%rbx, %rax
	movq	%rcx, (%rax)
	movb	$95, 8(%rax)
L334:
	movq	-976(%rbp), %rax
	movq	%r14, -968(%rbp)
	leaq	16(%r15), %rdi
	movl	$15, %edx
	movb	$0, 9(%rax,%rbx)
	movq	8(%r13), %r8
	movq	-968(%rbp), %rsi
	movq	-976(%rbp), %rax
	movq	0(%r13), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L335
	movq	-960(%rbp), %rdx
L335:
	cmpq	%rdx, %rbx
	ja	L339
	testq	%r8, %r8
	je	L340
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L341
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-976(%rbp), %rax
	.align 4,0x90
L340:
	movq	%rbx, -968(%rbp)
	leaq	16(%r15), %rdx
	movb	$0, (%rax,%rbx)
	leaq	-1040(%rbp), %rax
	movq	%rax, -1088(%rbp)
	addq	$16, %rax
	movq	%rax, -1040(%rbp)
	movq	-976(%rbp), %rax
	cmpq	%rdx, %rax
	je	L416
	movq	%rax, -1040(%rbp)
	movq	-960(%rbp), %rax
	movq	%rax, -1024(%rbp)
L343:
	movq	-968(%rbp), %rax
	leaq	640(%r15), %rdi
	movq	%rax, -1032(%rbp)
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -112(%rbp)
	vmovdqu	%ymm0, -104(%rbp)
	addq	$16, %rax
	movq	$0, -120(%rbp)
	movq	%rax, -336(%rbp)
	movq	__ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movb	$0, -111(%rbp)
	movq	8(%rax), %rcx
	movq	16(%rax), %rsi
	movq	-24(%rcx), %rax
	movq	%rcx, -976(%rbp)
	movq	%rsi, -1104(%rbp)
	movq	%rsi, -976(%rbp,%rax)
	xorl	%esi, %esi
	movq	$0, -968(%rbp)
	movq	-24(%rcx), %rdi
	movq	%rcx, -1096(%rbp)
	addq	%r15, %rdi
	vzeroupper
LEHB3:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE3:
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	16(%r15), %rdi
	addq	$24, %rax
	movq	%rax, -976(%rbp)
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -336(%rbp)
LEHB4:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE4:
	leaq	16(%r15), %rsi
	leaq	640(%r15), %rdi
LEHB5:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	-1040(%rbp), %rsi
	leaq	16(%r15), %rdi
	movl	$12, %edx
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-976(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r15, %rdi
	testq	%rax, %rax
	je	L417
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE5:
L345:
	testb	$5, -304(%rbp)
	jne	L418
	leaq	-1056(%rbp), %rsi
	movl	$8, %edx
	movq	%r15, %rdi
LEHB6:
	call	__ZNSi4readEPcl
	leaq	-1048(%rbp), %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	call	__ZNSi4readEPcl
	movq	40(%r12), %rax
	movq	-1056(%rbp), %rcx
	cmpq	%rcx, (%rax)
	jne	L352
	movq	-1048(%rbp), %rcx
	cmpq	%rcx, 8(%rax)
	jne	L352
	leaq	-1008(%rbp), %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	call	__ZNSi4readEPcl
	movq	40(%r12), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L355
	leaq	-1057(%rbp), %rcx
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	movq	%rcx, -1080(%rbp)
	.align 4,0x90
L359:
	testq	%rax, %rax
	je	L419
	leaq	(%r14,%r14,2), %r13
	xorl	%ebx, %ebx
	salq	$3, %r13
	.align 4,0x90
L358:
	movq	-1080(%rbp), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	call	__ZNSi4readEPcl
LEHE6:
	movq	64(%r12), %rax
	movzbl	-1057(%rbp), %edx
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movq	%rdx, (%rax,%rbx,8)
	movq	72(%r12), %rax
	xorl	%edx, %edx
	cmpq	$2, %r14
	seta	%dl
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movl	%edx, (%rax,%rbx,4)
	movq	40(%r12), %rdx
	addq	$1, %rbx
	movq	8(%rdx), %rax
	cmpq	%rbx, %rax
	ja	L358
	movq	(%rdx), %rdx
L357:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	L359
L355:
	movq	16(%r12), %rax
	leaq	16(%r15), %rdi
	movq	744(%rax), %rbx
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	addq	$1, %rbx
	movq	%rax, -976(%rbp)
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -336(%rbp)
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -960(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	144(%r15), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	72(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -960(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1096(%rbp), %rax
	movq	-1104(%rbp), %rcx
	leaq	640(%r15), %rdi
	movq	%rax, -976(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -976(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -968(%rbp)
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	-1088(%rbp), %rax
	movq	-1040(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L403
	call	__ZdlPv
L403:
	addq	$1056, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%r10
LCFI153:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI154:
	ret
L414:
LCFI155:
	movzbl	(%r14), %eax
	movb	%al, -960(%rbp)
	leaq	16(%r15), %rax
	jmp	L330
L419:
	addq	$1, %r14
	cmpq	%r14, %rdx
	ja	L357
	jmp	L355
	.align 4,0x90
L413:
	testq	%rbx, %rbx
	js	L420
	leaq	1(%rbx), %rdi
LEHB7:
	call	__Znwm
LEHE7:
	movq	%rbx, -960(%rbp)
	movq	%rax, -976(%rbp)
L328:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-976(%rbp), %rax
	jmp	L330
	.align 4,0x90
L333:
	movl	$9, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	leaq	lC24(%rip), %rcx
LEHB8:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE8:
	jmp	L334
	.align 4,0x90
L339:
	xorl	%edx, %edx
	movq	%r15, %rdi
LEHB9:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE9:
	movq	-976(%rbp), %rax
	jmp	L340
L416:
	vmovdqa	-960(%rbp), %xmm0
	vmovaps	%xmm0, -1024(%rbp)
	jmp	L343
L417:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB10:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE10:
	jmp	L345
L341:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-976(%rbp), %rax
	jmp	L340
L381:
	movq	%rax, %rbx
	vzeroupper
L348:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	640(%r15), %rdi
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
L349:
	movq	-1088(%rbp), %rax
	movq	-1040(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L370
	call	__ZdlPv
L370:
	movq	%rbx, %rdi
LEHB11:
	call	__Unwind_Resume
LEHE11:
L418:
	movl	$8, %edi
	call	___cxa_allocate_exception
	movq	24(%r12), %rbx
	movq	-1088(%rbp), %rdx
	leaq	-1008(%rbp), %r12
	leaq	lC25(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, %r13
LEHB12:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE12:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
LEHB13:
	call	__ZN5Utils6Common10Exceptions6SimpleC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE13:
	movq	-1008(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L351
	call	__ZdlPv
L351:
	movq	__ZN5Utils6Common10Exceptions6SimpleD1Ev@GOTPCREL(%rip), %rdx
	movq	__ZTIN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
LEHB14:
	call	___cxa_throw
LEHE14:
L377:
L411:
	movq	-1008(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	L402
	vzeroupper
	call	__ZdlPv
L369:
	movq	%r13, %rdi
	call	___cxa_free_exception
L366:
	movq	%r15, %rdi
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	L349
L376:
L405:
	movq	%rax, %rbx
	vzeroupper
	jmp	L369
L375:
	movq	%rax, %rbx
	vzeroupper
	jmp	L366
L402:
	vzeroupper
	jmp	L369
L352:
	movl	$8, %edi
	call	___cxa_allocate_exception
	movq	24(%r12), %rbx
	movq	-1088(%rbp), %rdx
	leaq	-1008(%rbp), %r12
	leaq	lC26(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, %r13
LEHB15:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE15:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
LEHB16:
	call	__ZN5Utils6Common10Exceptions6SimpleC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE16:
	movq	-1008(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L354
	call	__ZdlPv
L354:
	movq	__ZN5Utils6Common10Exceptions6SimpleD1Ev@GOTPCREL(%rip), %rdx
	movq	__ZTIN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
LEHB17:
	call	___cxa_throw
LEHE17:
L379:
	jmp	L411
L378:
	jmp	L405
L420:
	leaq	lC21(%rip), %rdi
LEHB18:
	call	__ZSt20__throw_length_errorPKc
L380:
L409:
	movq	-976(%rbp), %rdi
	addq	$16, %r15
	movq	%rax, %rbx
	cmpq	%r15, %rdi
	je	L400
	vzeroupper
	call	__ZdlPv
	jmp	L370
L374:
	jmp	L409
L400:
	vzeroupper
	jmp	L370
L412:
	leaq	lC23(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE18:
L415:
	leaq	lC22(%rip), %rdi
LEHB19:
	call	__ZSt20__throw_length_errorPKc
LEHE19:
L382:
	movq	%rax, %rbx
	vzeroupper
L347:
	movq	-1096(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movq	%rax, -976(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -976(%rbp,%rax)
	movq	$0, -968(%rbp)
	jmp	L348
L383:
	movq	%rax, %rbx
	leaq	16(%r15), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	jmp	L347
LFE6531:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDA6531:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xdd,0x1
	.set L$set$8,LEHB3-LFB6531
	.long L$set$8
	.set L$set$9,LEHE3-LEHB3
	.long L$set$9
	.set L$set$10,L381-LFB6531
	.long L$set$10
	.byte	0
	.set L$set$11,LEHB4-LFB6531
	.long L$set$11
	.set L$set$12,LEHE4-LEHB4
	.long L$set$12
	.set L$set$13,L382-LFB6531
	.long L$set$13
	.byte	0
	.set L$set$14,LEHB5-LFB6531
	.long L$set$14
	.set L$set$15,LEHE5-LEHB5
	.long L$set$15
	.set L$set$16,L383-LFB6531
	.long L$set$16
	.byte	0
	.set L$set$17,LEHB6-LFB6531
	.long L$set$17
	.set L$set$18,LEHE6-LEHB6
	.long L$set$18
	.set L$set$19,L375-LFB6531
	.long L$set$19
	.byte	0
	.set L$set$20,LEHB7-LFB6531
	.long L$set$20
	.set L$set$21,LEHE7-LEHB7
	.long L$set$21
	.long	0
	.byte	0
	.set L$set$22,LEHB8-LFB6531
	.long L$set$22
	.set L$set$23,LEHE8-LEHB8
	.long L$set$23
	.set L$set$24,L380-LFB6531
	.long L$set$24
	.byte	0
	.set L$set$25,LEHB9-LFB6531
	.long L$set$25
	.set L$set$26,LEHE9-LEHB9
	.long L$set$26
	.set L$set$27,L374-LFB6531
	.long L$set$27
	.byte	0
	.set L$set$28,LEHB10-LFB6531
	.long L$set$28
	.set L$set$29,LEHE10-LEHB10
	.long L$set$29
	.set L$set$30,L383-LFB6531
	.long L$set$30
	.byte	0
	.set L$set$31,LEHB11-LFB6531
	.long L$set$31
	.set L$set$32,LEHE11-LEHB11
	.long L$set$32
	.long	0
	.byte	0
	.set L$set$33,LEHB12-LFB6531
	.long L$set$33
	.set L$set$34,LEHE12-LEHB12
	.long L$set$34
	.set L$set$35,L376-LFB6531
	.long L$set$35
	.byte	0
	.set L$set$36,LEHB13-LFB6531
	.long L$set$36
	.set L$set$37,LEHE13-LEHB13
	.long L$set$37
	.set L$set$38,L377-LFB6531
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB14-LFB6531
	.long L$set$39
	.set L$set$40,LEHE14-LEHB14
	.long L$set$40
	.set L$set$41,L375-LFB6531
	.long L$set$41
	.byte	0
	.set L$set$42,LEHB15-LFB6531
	.long L$set$42
	.set L$set$43,LEHE15-LEHB15
	.long L$set$43
	.set L$set$44,L378-LFB6531
	.long L$set$44
	.byte	0
	.set L$set$45,LEHB16-LFB6531
	.long L$set$45
	.set L$set$46,LEHE16-LEHB16
	.long L$set$46
	.set L$set$47,L379-LFB6531
	.long L$set$47
	.byte	0
	.set L$set$48,LEHB17-LFB6531
	.long L$set$48
	.set L$set$49,LEHE17-LEHB17
	.long L$set$49
	.set L$set$50,L375-LFB6531
	.long L$set$50
	.byte	0
	.set L$set$51,LEHB18-LFB6531
	.long L$set$51
	.set L$set$52,LEHE18-LEHB18
	.long L$set$52
	.long	0
	.byte	0
	.set L$set$53,LEHB19-LFB6531
	.long L$set$53
	.set L$set$54,LEHE19-LEHB19
	.long L$set$54
	.set L$set$55,L380-LFB6531
	.long L$set$55
	.byte	0
	.text
	.cstring
lC27:
	.ascii "lat_\0"
	.align 3
lC28:
	.ascii "Error in write_lattice: Cannot open file: \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO13write_latticeEbbm
__ZNK8MosaicSC2IO13write_latticeEbbm:
LFB6530:
	leaq	8(%rsp), %r10
LCFI156:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI157:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
LCFI158:
	movq	%rdi, %r12
	pushq	%r10
LCFI159:
	pushq	%rbx
	subq	$1024, %rsp
LCFI160:
	movq	(%rdi), %rax
	movq	8(%rdi), %r15
	movq	%rcx, -1016(%rbp)
	movl	%esi, -1024(%rbp)
	movq	32(%rax), %r14
	movq	40(%rax), %rbx
	movq	%r14, %rax
	addq	%rbx, %rax
	setne	%al
	testq	%r14, %r14
	sete	%cl
	andl	%ecx, %eax
	testb	%dl, %dl
	je	L422
	leaq	-976(%rbp), %rcx
	leaq	16(%rcx), %rdx
	movq	%rcx, -1032(%rbp)
	movq	%rdx, -976(%rbp)
	testb	%al, %al
	jne	L543
	cmpq	$15, %rbx
	ja	L544
	cmpq	$1, %rbx
	je	L545
	testq	%rbx, %rbx
	jne	L546
L430:
	movq	%rbx, -968(%rbp)
	movabsq	$9223372036854775807, %rax
	movb	$0, (%rdx,%rbx)
	movq	-968(%rbp), %rbx
	subq	%rbx, %rax
	cmpq	$8, %rax
	jbe	L547
	movq	-1032(%rbp), %rsi
	movq	-976(%rbp), %rax
	leaq	9(%rbx), %r13
	movl	$15, %edx
	leaq	16(%rsi), %rcx
	cmpq	%rcx, %rax
	je	L432
	movq	-960(%rbp), %rdx
L432:
	cmpq	%rdx, %r13
	ja	L433
	movabsq	$8391157648807190892, %rsi
	addq	%rbx, %rax
	movq	%rsi, (%rax)
	movb	$95, 8(%rax)
L434:
	movq	-976(%rbp), %rax
	movq	-1032(%rbp), %rdi
	movl	$15, %edx
	movq	%r13, -968(%rbp)
	movb	$0, 9(%rax,%rbx)
	movq	8(%r15), %r8
	addq	$16, %rdi
	movq	-968(%rbp), %rsi
	movq	-976(%rbp), %rax
	movq	(%r15), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L435
	movq	-960(%rbp), %rdx
L435:
	cmpq	%rdx, %rbx
	ja	L439
	testq	%r8, %r8
	je	L440
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L441
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-976(%rbp), %rax
	.align 4,0x90
L440:
	movq	%rbx, -968(%rbp)
	movq	-1032(%rbp), %rdx
	movb	$0, (%rax,%rbx)
	leaq	-1008(%rbp), %rax
	movq	%rax, -1040(%rbp)
	addq	$16, %rax
	addq	$16, %rdx
	movq	%rax, -1008(%rbp)
	movq	-976(%rbp), %rax
	cmpq	%rdx, %rax
	je	L548
	movq	%rax, -1008(%rbp)
	movq	-960(%rbp), %rax
	movq	%rax, -992(%rbp)
L445:
	movq	-968(%rbp), %rax
	leaq	-944(%rbp), %r13
	movq	%rax, -1000(%rbp)
L446:
	cmpb	$1, -1024(%rbp)
	leaq	632(%r13), %rdi
	sbbl	%ebx, %ebx
	call	__ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -88(%rbp)
	andl	$-31, %ebx
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addl	$52, %ebx
	xorl	%esi, %esi
	movb	$0, -87(%rbp)
	vmovdqa	%ymm0, -80(%rbp)
	addq	$16, %rax
	movq	$0, -96(%rbp)
	movq	%rax, -312(%rbp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rax
	movq	-24(%rcx), %rdi
	movq	%rcx, -944(%rbp)
	movq	%rcx, -1032(%rbp)
	addq	%r13, %rdi
	movq	%rax, -1048(%rbp)
	movq	%rax, (%rdi)
	vzeroupper
LEHB20:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE20:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r13), %rdi
	addq	$24, %rax
	movq	%rax, -944(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -312(%rbp)
LEHB21:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE21:
	leaq	8(%r13), %rsi
	leaq	632(%r13), %rdi
LEHB22:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	-1008(%rbp), %rsi
	leaq	8(%r13), %rdi
	movl	%ebx, %edx
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-944(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r13, %rdi
	testq	%rax, %rax
	je	L549
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE22:
L469:
	testb	$5, -280(%rbp)
	jne	L550
	cmpb	$0, -1024(%rbp)
	je	L478
	movq	40(%r12), %rsi
	movl	$8, %edx
	movq	%r13, %rdi
LEHB23:
	call	__ZNSo5writeEPKcl
	movq	40(%r12), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	leaq	8(%rax), %rsi
	call	__ZNSo5writeEPKcl
L478:
	leaq	-1016(%rbp), %rsi
	movl	$8, %edx
	movq	%r13, %rdi
	call	__ZNSo5writeEPKcl
	movq	40(%r12), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L479
	movq	$0, -1024(%rbp)
	movq	8(%rax), %rax
	leaq	-976(%rbp), %r15
	.align 4,0x90
L483:
	testq	%rax, %rax
	je	L551
	movq	-1024(%rbp), %rax
	xorl	%ebx, %ebx
	leaq	(%rax,%rax,2), %r14
	salq	$3, %r14
	.align 4,0x90
L482:
	movq	64(%r12), %rax
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	(%rax), %rax
	movq	(%rax,%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movb	%al, -976(%rbp)
	call	__ZNSo5writeEPKcl
LEHE23:
	movq	40(%r12), %rdx
	addq	$1, %rbx
	movq	8(%rdx), %rax
	cmpq	%rbx, %rax
	ja	L482
	movq	(%rdx), %rdx
L481:
	addq	$1, -1024(%rbp)
	movq	-1024(%rbp), %rcx
	cmpq	%rdx, %rcx
	jb	L483
L479:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r13), %rdi
	addq	$64, %rax
	movq	%rax, -312(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	vmovd	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	vmovaps	%xmm0, -944(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%r13), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%r13), %rdi
	addq	$16, %rax
	movq	%rax, -936(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1032(%rbp), %rax
	movq	-1048(%rbp), %rsi
	leaq	632(%r13), %rdi
	movq	%rax, -944(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -944(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -312(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	-1040(%rbp), %rax
	movq	-1008(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L536
	call	__ZdlPv
L536:
	addq	$1024, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
LCFI161:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI162:
	ret
	.align 4,0x90
L422:
LCFI163:
	leaq	-944(%rbp), %r13
	leaq	16(%r13), %rdx
	movq	%rdx, -944(%rbp)
	testb	%al, %al
	jne	L552
	cmpq	$15, %rbx
	ja	L553
	cmpq	$1, %rbx
	je	L554
	testq	%rbx, %rbx
	jne	L555
L453:
	movq	%rbx, -936(%rbp)
	movabsq	$9223372036854775807, %rax
	movb	$0, (%rdx,%rbx)
	movq	-936(%rbp), %rbx
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L556
	movq	-944(%rbp), %rdx
	leaq	16(%r13), %rcx
	leaq	4(%rbx), %r14
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L455
	movq	-928(%rbp), %rax
L455:
	cmpq	%rax, %r14
	ja	L456
	movl	$1601462636, (%rdx,%rbx)
L457:
	movq	-944(%rbp), %rax
	movq	%r14, -936(%rbp)
	leaq	16(%r13), %rdi
	movl	$15, %edx
	movb	$0, 4(%rax,%rbx)
	movq	8(%r15), %r8
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rax
	movq	(%r15), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L458
	movq	-928(%rbp), %rdx
L458:
	cmpq	%rdx, %rbx
	ja	L462
	testq	%r8, %r8
	je	L463
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L464
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-944(%rbp), %rax
	.align 4,0x90
L463:
	movq	%rbx, -936(%rbp)
	leaq	16(%r13), %rdx
	movb	$0, (%rax,%rbx)
	leaq	-1008(%rbp), %rax
	movq	%rax, -1040(%rbp)
	addq	$16, %rax
	movq	%rax, -1008(%rbp)
	movq	-944(%rbp), %rax
	cmpq	%rdx, %rax
	je	L557
	movq	%rax, -1008(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -992(%rbp)
L466:
	movq	-936(%rbp), %rax
	movq	%rax, -1000(%rbp)
	jmp	L446
L544:
	testq	%rbx, %rbx
	js	L558
	leaq	1(%rbx), %rdi
LEHB24:
	call	__Znwm
	movq	%rax, -976(%rbp)
	movq	%rbx, -960(%rbp)
L428:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-976(%rbp), %rdx
	jmp	L430
L553:
	testq	%rbx, %rbx
	js	L559
	leaq	1(%rbx), %rdi
	call	__Znwm
LEHE24:
	movq	%rax, -944(%rbp)
	movq	%rbx, -928(%rbp)
L451:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-944(%rbp), %rdx
	jmp	L453
L554:
	movzbl	(%r14), %eax
	movb	%al, -928(%rbp)
	jmp	L453
L545:
	movzbl	(%r14), %eax
	movb	%al, -960(%rbp)
	jmp	L430
L551:
	addq	$1, -1024(%rbp)
	movq	-1024(%rbp), %rsi
	cmpq	%rsi, %rdx
	ja	L481
	jmp	L479
L549:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB25:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE25:
	jmp	L469
L456:
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	leaq	lC27(%rip), %rcx
LEHB26:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE26:
	jmp	L457
L433:
	movq	-1032(%rbp), %rdi
	movl	$9, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	leaq	lC24(%rip), %rcx
LEHB27:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE27:
	jmp	L434
L439:
	movq	-1032(%rbp), %rdi
	xorl	%edx, %edx
LEHB28:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE28:
	movq	-976(%rbp), %rax
	jmp	L440
L462:
	xorl	%edx, %edx
	movq	%r13, %rdi
LEHB29:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE29:
	movq	-944(%rbp), %rax
	jmp	L463
L548:
	vmovdqa	-960(%rbp), %xmm0
	vmovaps	%xmm0, -992(%rbp)
	jmp	L445
L557:
	vmovdqa	-928(%rbp), %xmm0
	vmovaps	%xmm0, -992(%rbp)
	jmp	L466
L464:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-944(%rbp), %rax
	jmp	L463
L441:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-976(%rbp), %rax
	jmp	L440
L546:
	movq	%rdx, %rax
	jmp	L428
L552:
	leaq	lC23(%rip), %rdi
LEHB30:
	call	__ZSt19__throw_logic_errorPKc
LEHE30:
L543:
	leaq	lC23(%rip), %rdi
LEHB31:
	call	__ZSt19__throw_logic_errorPKc
LEHE31:
L556:
	leaq	lC22(%rip), %rdi
LEHB32:
	call	__ZSt20__throw_length_errorPKc
LEHE32:
L506:
L541:
	movq	-944(%rbp), %rdi
	addq	$16, %r13
	movq	%rax, %rbx
	cmpq	%r13, %rdi
	je	L542
L529:
	vzeroupper
	call	__ZdlPv
L492:
	movq	%rbx, %rdi
LEHB33:
	call	__Unwind_Resume
LEHE33:
L559:
	leaq	lC21(%rip), %rdi
LEHB34:
	call	__ZSt20__throw_length_errorPKc
L500:
L539:
	movq	%rax, %rbx
L542:
	vzeroupper
	jmp	L492
L558:
	leaq	lC21(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE34:
L510:
	movq	-976(%rbp), %rdi
	movq	%rax, %rbx
	leaq	-960(%rbp), %rax
	cmpq	%rax, %rdi
	jne	L529
	jmp	L542
L505:
	movq	%rax, %rbx
	movq	-1032(%rbp), %rax
	movq	-976(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	L529
	jmp	L542
L504:
	jmp	L541
L512:
	jmp	L539
L509:
	movq	%rax, %rbx
	leaq	8(%r13), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
L471:
	movq	-1032(%rbp), %rax
	movq	-1048(%rbp), %rsi
	movq	%rax, -944(%rbp)
	movq	-24(%rax), %rax
	movq	%rsi, -944(%rbp,%rax)
L472:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%r13), %rdi
	addq	$16, %rax
	movq	%rax, -312(%rbp)
	call	__ZNSt8ios_baseD2Ev
L473:
	movq	-1040(%rbp), %rax
	movq	-1008(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L492
	call	__ZdlPv
	jmp	L492
L508:
	movq	%rax, %rbx
	vzeroupper
	jmp	L471
L507:
	movq	%rax, %rbx
	vzeroupper
	jmp	L472
L547:
	leaq	lC22(%rip), %rdi
LEHB35:
	call	__ZSt20__throw_length_errorPKc
LEHE35:
L501:
	movq	%rax, %rbx
	vzeroupper
L491:
	movq	%r13, %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	L473
L550:
	movl	$8, %edi
	leaq	-976(%rbp), %r15
	call	___cxa_allocate_exception
	movq	-1040(%rbp), %rdx
	movq	%r15, %rdi
	leaq	lC28(%rip), %rsi
	movq	%rax, %rbx
	movq	24(%r12), %r12
	movq	%r15, -1032(%rbp)
LEHB36:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE36:
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%rbx, %rdi
LEHB37:
	call	__ZN5Utils6Common10Exceptions6SimpleC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE37:
	movq	%r15, %rax
	movq	-976(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L475
	call	__ZdlPv
L475:
	movq	__ZN5Utils6Common10Exceptions6SimpleD1Ev@GOTPCREL(%rip), %rdx
	movq	__ZTIN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
LEHB38:
	call	___cxa_throw
LEHE38:
L503:
	movq	-1032(%rbp), %rdx
	movq	-976(%rbp), %rdi
	movq	%rax, %r12
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	je	L535
	vzeroupper
	call	__ZdlPv
L490:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	___cxa_free_exception
	jmp	L491
L502:
	movq	%rax, %r12
	vzeroupper
	jmp	L490
L535:
	vzeroupper
	jmp	L490
L555:
	movq	%rdx, %rax
	jmp	L451
L511:
	jmp	L539
LFE6530:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA6530:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xf7,0x1
	.set L$set$56,LEHB20-LFB6530
	.long L$set$56
	.set L$set$57,LEHE20-LEHB20
	.long L$set$57
	.set L$set$58,L507-LFB6530
	.long L$set$58
	.byte	0
	.set L$set$59,LEHB21-LFB6530
	.long L$set$59
	.set L$set$60,LEHE21-LEHB21
	.long L$set$60
	.set L$set$61,L508-LFB6530
	.long L$set$61
	.byte	0
	.set L$set$62,LEHB22-LFB6530
	.long L$set$62
	.set L$set$63,LEHE22-LEHB22
	.long L$set$63
	.set L$set$64,L509-LFB6530
	.long L$set$64
	.byte	0
	.set L$set$65,LEHB23-LFB6530
	.long L$set$65
	.set L$set$66,LEHE23-LEHB23
	.long L$set$66
	.set L$set$67,L501-LFB6530
	.long L$set$67
	.byte	0
	.set L$set$68,LEHB24-LFB6530
	.long L$set$68
	.set L$set$69,LEHE24-LEHB24
	.long L$set$69
	.set L$set$70,L500-LFB6530
	.long L$set$70
	.byte	0
	.set L$set$71,LEHB25-LFB6530
	.long L$set$71
	.set L$set$72,LEHE25-LEHB25
	.long L$set$72
	.set L$set$73,L509-LFB6530
	.long L$set$73
	.byte	0
	.set L$set$74,LEHB26-LFB6530
	.long L$set$74
	.set L$set$75,LEHE26-LEHB26
	.long L$set$75
	.set L$set$76,L506-LFB6530
	.long L$set$76
	.byte	0
	.set L$set$77,LEHB27-LFB6530
	.long L$set$77
	.set L$set$78,LEHE27-LEHB27
	.long L$set$78
	.set L$set$79,L505-LFB6530
	.long L$set$79
	.byte	0
	.set L$set$80,LEHB28-LFB6530
	.long L$set$80
	.set L$set$81,LEHE28-LEHB28
	.long L$set$81
	.set L$set$82,L510-LFB6530
	.long L$set$82
	.byte	0
	.set L$set$83,LEHB29-LFB6530
	.long L$set$83
	.set L$set$84,LEHE29-LEHB29
	.long L$set$84
	.set L$set$85,L504-LFB6530
	.long L$set$85
	.byte	0
	.set L$set$86,LEHB30-LFB6530
	.long L$set$86
	.set L$set$87,LEHE30-LEHB30
	.long L$set$87
	.set L$set$88,L512-LFB6530
	.long L$set$88
	.byte	0
	.set L$set$89,LEHB31-LFB6530
	.long L$set$89
	.set L$set$90,LEHE31-LEHB31
	.long L$set$90
	.set L$set$91,L511-LFB6530
	.long L$set$91
	.byte	0
	.set L$set$92,LEHB32-LFB6530
	.long L$set$92
	.set L$set$93,LEHE32-LEHB32
	.long L$set$93
	.set L$set$94,L506-LFB6530
	.long L$set$94
	.byte	0
	.set L$set$95,LEHB33-LFB6530
	.long L$set$95
	.set L$set$96,LEHE33-LEHB33
	.long L$set$96
	.long	0
	.byte	0
	.set L$set$97,LEHB34-LFB6530
	.long L$set$97
	.set L$set$98,LEHE34-LEHB34
	.long L$set$98
	.set L$set$99,L500-LFB6530
	.long L$set$99
	.byte	0
	.set L$set$100,LEHB35-LFB6530
	.long L$set$100
	.set L$set$101,LEHE35-LEHB35
	.long L$set$101
	.set L$set$102,L505-LFB6530
	.long L$set$102
	.byte	0
	.set L$set$103,LEHB36-LFB6530
	.long L$set$103
	.set L$set$104,LEHE36-LEHB36
	.long L$set$104
	.set L$set$105,L502-LFB6530
	.long L$set$105
	.byte	0
	.set L$set$106,LEHB37-LFB6530
	.long L$set$106
	.set L$set$107,LEHE37-LEHB37
	.long L$set$107
	.set L$set$108,L503-LFB6530
	.long L$set$108
	.byte	0
	.set L$set$109,LEHB38-LFB6530
	.long L$set$109
	.set L$set$110,LEHE38-LEHB38
	.long L$set$110
	.set L$set$111,L501-LFB6530
	.long L$set$111
	.byte	0
	.text
	.cstring
lC29:
	.ascii "scs_last_\0"
lC30:
	.ascii "scs_\0"
	.align 3
lC31:
	.ascii "Error in write: Cannot open file: \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO5writeEbbm
__ZNK8MosaicSC2IO5writeEbbm:
LFB6529:
	leaq	8(%rsp), %r10
LCFI164:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI165:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI166:
	pushq	%rbx
	subq	$1056, %rsp
LCFI167:
	movq	(%rdi), %rax
	movl	%esi, -1040(%rbp)
	movl	%edx, %esi
	movl	%edx, -1084(%rbp)
	movq	8(%rdi), %r15
	movq	32(%rax), %r13
	movq	40(%rax), %rbx
	movq	%rdi, -1056(%rbp)
	movq	%rcx, -1032(%rbp)
	movq	%r13, %rax
	addq	%rbx, %rax
	setne	%dl
	testq	%r13, %r13
	sete	%al
	andl	%eax, %edx
	testb	%sil, %sil
	je	L561
	leaq	-976(%rbp), %r12
	leaq	16(%r12), %rax
	movq	%rax, -976(%rbp)
	testb	%dl, %dl
	jne	L682
	cmpq	$15, %rbx
	ja	L683
	cmpq	$1, %rbx
	je	L684
	testq	%rbx, %rbx
	jne	L567
L569:
	movq	%rbx, -968(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-968(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$8, %rax
	jbe	L685
	movq	-976(%rbp), %rax
	leaq	16(%r12), %rcx
	leaq	9(%rbx), %r13
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L571
	movq	-960(%rbp), %rdx
L571:
	cmpq	%rdx, %r13
	ja	L572
	movabsq	$8391157648807125875, %rcx
	addq	%rbx, %rax
	movq	%rcx, (%rax)
	movb	$95, 8(%rax)
L573:
	movq	-976(%rbp), %rax
	leaq	16(%r12), %rsi
	movl	$15, %edx
	movq	%r13, -968(%rbp)
	movb	$0, 9(%rax,%rbx)
	movq	8(%r15), %r8
	movq	-968(%rbp), %rdi
	movq	-976(%rbp), %rax
	movq	(%r15), %rcx
	leaq	(%r8,%rdi), %rbx
	cmpq	%rsi, %rax
	je	L574
	movq	-960(%rbp), %rdx
L574:
	cmpq	%rdx, %rbx
	ja	L578
	testq	%r8, %r8
	je	L579
	addq	%rax, %rdi
	cmpq	$1, %r8
	jne	L580
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-976(%rbp), %rax
L579:
	movq	%rbx, -968(%rbp)
	addq	$16, %r12
	movb	$0, (%rax,%rbx)
	leaq	-1008(%rbp), %rax
	movq	%rax, -1064(%rbp)
	addq	$16, %rax
	movq	%rax, -1008(%rbp)
	movq	-976(%rbp), %rax
	cmpq	%r12, %rax
	je	L686
	movq	%rax, -1008(%rbp)
	movq	-960(%rbp), %rax
	movq	%rax, -992(%rbp)
L584:
	movq	-968(%rbp), %rax
	leaq	-944(%rbp), %r14
	movq	%rax, -1000(%rbp)
L585:
	cmpb	$1, -1040(%rbp)
	leaq	632(%r14), %rdi
	sbbl	%ebx, %ebx
	call	__ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -88(%rbp)
	andl	$-31, %ebx
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addl	$52, %ebx
	xorl	%esi, %esi
	movb	$0, -87(%rbp)
	vmovdqa	%ymm0, -80(%rbp)
	addq	$16, %rax
	movq	$0, -96(%rbp)
	movq	%rax, -312(%rbp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rax
	movq	-24(%rcx), %rdi
	movq	%rcx, -944(%rbp)
	movq	%rcx, -1072(%rbp)
	addq	%r14, %rdi
	movq	%rax, -1080(%rbp)
	movq	%rax, (%rdi)
	vzeroupper
LEHB39:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE39:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r14), %rdi
	addq	$24, %rax
	movq	%rax, -944(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -312(%rbp)
LEHB40:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE40:
	leaq	8(%r14), %rsi
	leaq	632(%r14), %rdi
LEHB41:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	-1008(%rbp), %rsi
	leaq	8(%r14), %rdi
	movl	%ebx, %edx
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-944(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r14, %rdi
	testq	%rax, %rax
	je	L687
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE41:
L608:
	testb	$5, -280(%rbp)
	jne	L688
	cmpb	$0, -1040(%rbp)
	je	L617
	movq	-1056(%rbp), %rbx
	movl	$8, %edx
	movq	%r14, %rdi
	movq	40(%rbx), %rsi
LEHB42:
	call	__ZNSo5writeEPKcl
	movq	40(%rbx), %rax
	movl	$8, %edx
	movq	%r14, %rdi
	leaq	8(%rax), %rsi
	movq	%rax, -1040(%rbp)
	call	__ZNSo5writeEPKcl
L617:
	leaq	-1032(%rbp), %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	call	__ZNSo5writeEPKcl
	movq	-1056(%rbp), %rbx
	leaq	-1024(%rbp), %rsi
	movq	%r14, %rdi
	movq	16(%rbx), %rdx
	movq	224(%rdx), %rax
	subq	216(%rdx), %rax
	movl	$8, %edx
	sarq	$7, %rax
	movq	%rax, -1024(%rbp)
	call	__ZNSo5writeEPKcl
	movq	16(%rbx), %rdx
	movq	216(%rdx), %r12
	cmpq	%r12, 224(%rdx)
	je	L618
	leaq	-976(%rbp), %rax
	movq	$0, -1048(%rbp)
	movq	%rax, -1040(%rbp)
	.align 4,0x90
L622:
	movq	-1048(%rbp), %rax
	movl	$8, %edx
	movq	%r14, %rdi
	salq	$7, %rax
	addq	%rax, %r12
	movq	%r12, %rsi
	call	__ZNSo5writeEPKcl
	leaq	128(%r12), %r15
	addq	$8, %r12
	.align 4,0x90
L621:
	movq	8(%r12), %rax
	subq	(%r12), %rax
	movl	$8, %edx
	movq	%r14, %rdi
	movq	-1040(%rbp), %rsi
	sarq	$3, %rax
	movq	%rax, -976(%rbp)
	call	__ZNSo5writeEPKcl
	movq	(%r12), %rbx
	movq	8(%r12), %r13
	cmpq	%r13, %rbx
	je	L619
	.align 4,0x90
L620:
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movq	(%rdi), %rax
	call	*32(%rax)
	addq	$8, %rbx
	cmpq	%rbx, %r13
	jne	L620
L619:
	addq	$24, %r12
	cmpq	%r12, %r15
	jne	L621
	movq	-1056(%rbp), %rax
	addq	$1, -1048(%rbp)
	movq	-1048(%rbp), %rcx
	movq	16(%rax), %rdx
	movq	216(%rdx), %r12
	movq	224(%rdx), %rax
	subq	%r12, %rax
	sarq	$7, %rax
	cmpq	%rax, %rcx
	jb	L622
L618:
	xorl	%eax, %eax
	cmpb	$0, -1084(%rbp)
	jne	L623
	movq	-1056(%rbp), %rax
	movq	(%rax), %rcx
	movq	744(%rdx), %rax
	xorl	%edx, %edx
	divq	128(%rcx)
L623:
	movq	%rax, -1016(%rbp)
	leaq	-1016(%rbp), %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	call	__ZNSo5writeEPKcl
LEHE42:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r14), %rdi
	addq	$64, %rax
	movq	%rax, -312(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	vmovd	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	vmovaps	%xmm0, -944(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%r14), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%r14), %rdi
	addq	$16, %rax
	movq	%rax, -936(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-1072(%rbp), %rax
	movq	-1080(%rbp), %rcx
	leaq	632(%r14), %rdi
	movq	%rax, -944(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -944(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -312(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	-1064(%rbp), %rax
	movq	-1008(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L675
	call	__ZdlPv
L675:
	addq	$1056, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
LCFI168:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI169:
	ret
L561:
LCFI170:
	leaq	-944(%rbp), %r14
	leaq	16(%r14), %rax
	movq	%rax, -944(%rbp)
	testb	%dl, %dl
	jne	L689
	cmpq	$15, %rbx
	ja	L690
	cmpq	$1, %rbx
	je	L691
	testq	%rbx, %rbx
	jne	L590
L592:
	movq	%rbx, -936(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-936(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L692
	movq	-944(%rbp), %rax
	leaq	16(%r14), %rcx
	leaq	4(%rbx), %r12
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L594
	movq	-928(%rbp), %rdx
L594:
	cmpq	%rdx, %r12
	ja	L595
	movl	$1601397619, (%rax,%rbx)
L596:
	movq	-944(%rbp), %rax
	movq	%r12, -936(%rbp)
	leaq	16(%r14), %rsi
	movl	$15, %edx
	movb	$0, 4(%rax,%rbx)
	movq	8(%r15), %r8
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rax
	movq	(%r15), %rcx
	leaq	(%r8,%rdi), %rbx
	cmpq	%rsi, %rax
	je	L597
	movq	-928(%rbp), %rdx
L597:
	cmpq	%rdx, %rbx
	ja	L601
	testq	%r8, %r8
	je	L602
	addq	%rax, %rdi
	cmpq	$1, %r8
	jne	L603
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-944(%rbp), %rax
L602:
	movq	%rbx, -936(%rbp)
	leaq	16(%r14), %rdx
	movb	$0, (%rax,%rbx)
	leaq	-1008(%rbp), %rax
	movq	%rax, -1064(%rbp)
	addq	$16, %rax
	movq	%rax, -1008(%rbp)
	movq	-944(%rbp), %rax
	cmpq	%rdx, %rax
	je	L693
	movq	%rax, -1008(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -992(%rbp)
L605:
	movq	-936(%rbp), %rax
	movq	%rax, -1000(%rbp)
	jmp	L585
L683:
	testq	%rbx, %rbx
	js	L694
	leaq	1(%rbx), %rdi
LEHB43:
	call	__Znwm
	movq	%rax, -976(%rbp)
	movq	%rbx, -960(%rbp)
L567:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-976(%rbp), %rax
	jmp	L569
L690:
	testq	%rbx, %rbx
	js	L695
	leaq	1(%rbx), %rdi
	call	__Znwm
LEHE43:
	movq	%rax, -944(%rbp)
	movq	%rbx, -928(%rbp)
L590:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-944(%rbp), %rax
	jmp	L592
L691:
	movzbl	0(%r13), %edx
	movb	%dl, -928(%rbp)
	jmp	L592
L684:
	movzbl	0(%r13), %edx
	movb	%dl, -960(%rbp)
	jmp	L569
L687:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB44:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE44:
	jmp	L608
L601:
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
LEHB45:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE45:
	movq	-944(%rbp), %rax
	jmp	L602
L595:
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	lC30(%rip), %rcx
LEHB46:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE46:
	jmp	L596
L578:
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
LEHB47:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE47:
	movq	-976(%rbp), %rax
	jmp	L579
L572:
	movl	$9, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	leaq	lC29(%rip), %rcx
LEHB48:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	jmp	L573
L686:
	vmovdqa	-960(%rbp), %xmm0
	vmovaps	%xmm0, -992(%rbp)
	jmp	L584
L693:
	vmovdqa	-928(%rbp), %xmm0
	vmovaps	%xmm0, -992(%rbp)
	jmp	L605
L580:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-976(%rbp), %rax
	jmp	L579
L603:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-944(%rbp), %rax
	jmp	L602
L685:
	leaq	lC22(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE48:
L689:
	leaq	lC23(%rip), %rdi
LEHB49:
	call	__ZSt19__throw_logic_errorPKc
LEHE49:
L682:
	leaq	lC23(%rip), %rdi
LEHB50:
	call	__ZSt19__throw_logic_errorPKc
LEHE50:
L646:
	movq	-976(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	L681
L668:
	vzeroupper
	call	__ZdlPv
L632:
	movq	%rbx, %rdi
LEHB51:
	call	__Unwind_Resume
LEHE51:
L653:
L678:
	movq	%rax, %rbx
L681:
	vzeroupper
	jmp	L632
L652:
	jmp	L678
L651:
	movq	-976(%rbp), %rdi
	movq	%rax, %rbx
	leaq	-960(%rbp), %rax
	cmpq	%rax, %rdi
	jne	L668
	jmp	L681
L647:
L680:
	movq	-944(%rbp), %rdi
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rdi
	jne	L668
	jmp	L681
L645:
	jmp	L680
L695:
	leaq	lC21(%rip), %rdi
LEHB52:
	call	__ZSt20__throw_length_errorPKc
L641:
	jmp	L678
L694:
	leaq	lC21(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE52:
L692:
	leaq	lC22(%rip), %rdi
LEHB53:
	call	__ZSt20__throw_length_errorPKc
LEHE53:
L642:
	movq	%rax, %rbx
	vzeroupper
L631:
	movq	%r14, %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
L612:
	movq	-1064(%rbp), %rax
	movq	-1008(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L632
	call	__ZdlPv
	jmp	L632
L688:
	movl	$8, %edi
	leaq	-976(%rbp), %r12
	call	___cxa_allocate_exception
	movq	-1064(%rbp), %rdx
	leaq	lC31(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, %rbx
	movq	-1056(%rbp), %rax
	movq	24(%rax), %r13
LEHB54:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE54:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
LEHB55:
	call	__ZN5Utils6Common10Exceptions6SimpleC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE55:
	movq	-976(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L614
	call	__ZdlPv
L614:
	movq	__ZN5Utils6Common10Exceptions6SimpleD1Ev@GOTPCREL(%rip), %rdx
	movq	__ZTIN5Utils6Common10Exceptions6SimpleE@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
LEHB56:
	call	___cxa_throw
LEHE56:
L644:
	movq	-976(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rdi
	je	L674
	vzeroupper
	call	__ZdlPv
L630:
	movq	%rbx, %rdi
	movq	%r13, %rbx
	call	___cxa_free_exception
	jmp	L631
L643:
	movq	%rax, %r13
	vzeroupper
	jmp	L630
L649:
	movq	%rax, %rbx
	vzeroupper
L610:
	movq	-1072(%rbp), %rax
	movq	-1080(%rbp), %rcx
	movq	%rax, -944(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -944(%rbp,%rax)
L611:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%r14), %rdi
	addq	$16, %rax
	movq	%rax, -312(%rbp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L612
L648:
	movq	%rax, %rbx
	vzeroupper
	jmp	L611
L650:
	movq	%rax, %rbx
	leaq	8(%r14), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	jmp	L610
L674:
	vzeroupper
	jmp	L630
LFE6529:
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDA6529:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xea,0x1
	.set L$set$112,LEHB39-LFB6529
	.long L$set$112
	.set L$set$113,LEHE39-LEHB39
	.long L$set$113
	.set L$set$114,L648-LFB6529
	.long L$set$114
	.byte	0
	.set L$set$115,LEHB40-LFB6529
	.long L$set$115
	.set L$set$116,LEHE40-LEHB40
	.long L$set$116
	.set L$set$117,L649-LFB6529
	.long L$set$117
	.byte	0
	.set L$set$118,LEHB41-LFB6529
	.long L$set$118
	.set L$set$119,LEHE41-LEHB41
	.long L$set$119
	.set L$set$120,L650-LFB6529
	.long L$set$120
	.byte	0
	.set L$set$121,LEHB42-LFB6529
	.long L$set$121
	.set L$set$122,LEHE42-LEHB42
	.long L$set$122
	.set L$set$123,L642-LFB6529
	.long L$set$123
	.byte	0
	.set L$set$124,LEHB43-LFB6529
	.long L$set$124
	.set L$set$125,LEHE43-LEHB43
	.long L$set$125
	.set L$set$126,L641-LFB6529
	.long L$set$126
	.byte	0
	.set L$set$127,LEHB44-LFB6529
	.long L$set$127
	.set L$set$128,LEHE44-LEHB44
	.long L$set$128
	.set L$set$129,L650-LFB6529
	.long L$set$129
	.byte	0
	.set L$set$130,LEHB45-LFB6529
	.long L$set$130
	.set L$set$131,LEHE45-LEHB45
	.long L$set$131
	.set L$set$132,L645-LFB6529
	.long L$set$132
	.byte	0
	.set L$set$133,LEHB46-LFB6529
	.long L$set$133
	.set L$set$134,LEHE46-LEHB46
	.long L$set$134
	.set L$set$135,L647-LFB6529
	.long L$set$135
	.byte	0
	.set L$set$136,LEHB47-LFB6529
	.long L$set$136
	.set L$set$137,LEHE47-LEHB47
	.long L$set$137
	.set L$set$138,L651-LFB6529
	.long L$set$138
	.byte	0
	.set L$set$139,LEHB48-LFB6529
	.long L$set$139
	.set L$set$140,LEHE48-LEHB48
	.long L$set$140
	.set L$set$141,L646-LFB6529
	.long L$set$141
	.byte	0
	.set L$set$142,LEHB49-LFB6529
	.long L$set$142
	.set L$set$143,LEHE49-LEHB49
	.long L$set$143
	.set L$set$144,L653-LFB6529
	.long L$set$144
	.byte	0
	.set L$set$145,LEHB50-LFB6529
	.long L$set$145
	.set L$set$146,LEHE50-LEHB50
	.long L$set$146
	.set L$set$147,L652-LFB6529
	.long L$set$147
	.byte	0
	.set L$set$148,LEHB51-LFB6529
	.long L$set$148
	.set L$set$149,LEHE51-LEHB51
	.long L$set$149
	.long	0
	.byte	0
	.set L$set$150,LEHB52-LFB6529
	.long L$set$150
	.set L$set$151,LEHE52-LEHB52
	.long L$set$151
	.set L$set$152,L641-LFB6529
	.long L$set$152
	.byte	0
	.set L$set$153,LEHB53-LFB6529
	.long L$set$153
	.set L$set$154,LEHE53-LEHB53
	.long L$set$154
	.set L$set$155,L647-LFB6529
	.long L$set$155
	.byte	0
	.set L$set$156,LEHB54-LFB6529
	.long L$set$156
	.set L$set$157,LEHE54-LEHB54
	.long L$set$157
	.set L$set$158,L643-LFB6529
	.long L$set$158
	.byte	0
	.set L$set$159,LEHB55-LFB6529
	.long L$set$159
	.set L$set$160,LEHE55-LEHB55
	.long L$set$160
	.set L$set$161,L644-LFB6529
	.long L$set$161
	.byte	0
	.set L$set$162,LEHB56-LFB6529
	.long L$set$162
	.set L$set$163,LEHE56-LEHB56
	.long L$set$163
	.set L$set$164,L642-LFB6529
	.long L$set$164
	.byte	0
	.text
	.cstring
lC32:
	.ascii "basic_string::_M_replace\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
LFB7515:
	movabsq	$9223372036854775807, %rax
	pushq	%r15
LCFI171:
	pushq	%r14
LCFI172:
	pushq	%r13
LCFI173:
	pushq	%r12
LCFI174:
	movq	%rdx, %r12
	pushq	%rbp
LCFI175:
	addq	%r12, %rax
	pushq	%rbx
LCFI176:
	subq	$40, %rsp
LCFI177:
	movq	8(%rdi), %rdx
	subq	%rdx, %rax
	cmpq	%rax, %r8
	ja	L759
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
	je	L698
	movq	16(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	L699
L734:
	addq	%rax, %r13
	testq	%r9, %r9
	setne	%r10b
	cmpq	%rbp, %r12
	setne	%sil
	andl	%esi, %r10d
	cmpq	%rax, %rcx
	jnb	L760
L700:
	testb	%r10b, %r10b
	je	L704
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L761
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L704:
	testq	%rbp, %rbp
	je	L757
	cmpq	$1, %rbp
	jne	L708
L758:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L707
	.align 4,0x90
L760:
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	ja	L700
	testq	%rbp, %rbp
	je	L703
	cmpq	%rbp, %r12
	jb	L703
	cmpq	$1, %rbp
	je	L762
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
	je	L757
	.align 4,0x90
L710:
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L763
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L713:
	cmpq	%rbp, %r12
	jnb	L757
	addq	%r13, %r12
	leaq	(%rcx,%rbp), %rax
	cmpq	%rax, %r12
	jnb	L764
	cmpq	%rcx, %r12
	ja	L717
	leaq	(%rcx,%r15), %rsi
	cmpq	$1, %rbp
	je	L765
	movq	%rbp, %rdx
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L707
	.align 4,0x90
L717:
	subq	%rcx, %r12
	cmpq	$1, %r12
	je	L766
	testq	%r12, %r12
	jne	L767
L720:
	movq	%rbp, %rdx
	leaq	0(%r13,%rbp), %rsi
	leaq	0(%r13,%r12), %rdi
	subq	%r12, %rdx
	cmpq	$1, %rdx
	je	L768
	testq	%rdx, %rdx
	je	L757
	call	_memcpy
	.align 4,0x90
L757:
	movq	(%rbx), %r11
L707:
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%r11,%r14)
	addq	$40, %rsp
LCFI178:
	popq	%rbx
LCFI179:
	popq	%rbp
LCFI180:
	popq	%r12
LCFI181:
	popq	%r13
LCFI182:
	popq	%r14
LCFI183:
	popq	%r15
LCFI184:
	ret
	.align 4,0x90
L698:
LCFI185:
	movl	$15, %esi
	cmpq	$15, %r14
	jbe	L734
L699:
	testq	%r14, %r14
	js	L769
	leaq	(%rsi,%rsi), %r15
	cmpq	%r15, %r14
	jnb	L770
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L725
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
	jmp	L725
	.align 4,0x90
L708:
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L707
	.align 4,0x90
L761:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L704
	.align 4,0x90
L770:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
L725:
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
	je	L727
	cmpq	$1, %r13
	jne	L728
	movzbl	(%r8), %eax
	movb	%al, (%r11)
L727:
	testq	%rcx, %rcx
	je	L729
	testq	%rbp, %rbp
	je	L729
	leaq	(%r11,%r13), %rdi
	cmpq	$1, %rbp
	je	L771
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
L729:
	testq	%r9, %r9
	je	L731
	leaq	(%r12,%r13), %rsi
	addq	%r13, %rbp
	addq	%r8, %rsi
	leaq	(%r11,%rbp), %rdi
	cmpq	$1, %r9
	jne	L732
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
L731:
	cmpq	%r8, %r10
	je	L733
	movq	%r8, %rdi
	movq	%r11, (%rsp)
	call	__ZdlPv
	movq	(%rsp), %r11
L733:
	movq	%r11, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	L707
	.align 4,0x90
L762:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
L703:
	testb	%r10b, %r10b
	jne	L710
	jmp	L713
	.align 4,0x90
L732:
	movq	%r9, %rdx
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_memcpy
	movq	16(%rsp), %r8
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	jmp	L731
	.align 4,0x90
L728:
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
	jmp	L727
	.align 4,0x90
L771:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	L729
	.align 4,0x90
L764:
	cmpq	$1, %rbp
	je	L758
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	movq	(%rbx), %r11
	jmp	L707
	.align 4,0x90
L763:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L713
L766:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	jmp	L720
L765:
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L707
L768:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %r11
	jmp	L707
L767:
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	jmp	L720
L759:
	leaq	lC32(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L769:
	leaq	lC21(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7515:
	.cstring
lC33:
	.ascii " : \0"
lC34:
	.ascii "runname \0"
lC35:
	.ascii " L \0"
lC36:
	.ascii " (\0"
lC37:
	.ascii ", \0"
lC38:
	.ascii ") at \0"
lC39:
	.ascii " and (\0"
lC40:
	.ascii " to (\0"
lC41:
	.ascii ") and (\0"
lC42:
	.ascii ")\0"
lC43:
	.ascii " eOld: \0"
lC44:
	.ascii " eNew: \0"
lC45:
	.ascii " dE \0"
lC46:
	.ascii " cE \0"
lC47:
	.ascii "Etot \0"
lC48:
	.ascii " nSC \0"
lC49:
	.ascii " scMasM \0"
lC50:
	.ascii "scMasV \0"
lC51:
	.ascii " conCT \0"
lC52:
	.ascii ") \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO7loglineERSommmmmmimimimifffff
__ZNK8MosaicSC2IO7loglineERSommmmmmimimimifffff:
LFB6524:
	pushq	%r15
LCFI186:
	movq	%rdi, %r15
	pushq	%r14
LCFI187:
	movq	%rcx, %r14
	pushq	%r13
LCFI188:
	movq	%r8, %r13
	pushq	%r12
LCFI189:
	movq	%r9, %r12
	pushq	%rbp
LCFI190:
	pushq	%rbx
LCFI191:
	movq	%rsi, %rbx
	movq	%rdx, %rsi
	movq	%rbx, %rdi
	subq	$184, %rsp
LCFI192:
	vmovss	%xmm0, (%rsp)
	vmovss	%xmm1, 8(%rsp)
	vmovss	%xmm2, 20(%rsp)
	vmovss	%xmm3, 24(%rsp)
	vmovss	%xmm4, 28(%rsp)
	call	__ZNSo9_M_insertImEERSoT_
	movl	$3, %edx
	leaq	lC33(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	movl	$8, %edx
	leaq	lC34(%rip), %rsi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	8(%r15), %rax
	movq	%rbp, %rdi
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$3, %edx
	leaq	lC35(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%r15), %rax
	movq	%rbp, %rdi
	movq	(%rax), %rsi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%r15), %rax
	movq	%rbp, %rdi
	movq	8(%rax), %rsi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC36(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	248(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	256(%rsp), %esi
	movq	%rbp, %rdi
	call	__ZNSolsEi
	movl	$5, %edx
	leaq	lC38(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	movq	%r14, %rsi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	movq	%r13, %rsi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$6, %edx
	leaq	lC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	264(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	272(%rsp), %esi
	movq	%rbp, %rdi
	call	__ZNSolsEi
	movl	$5, %edx
	leaq	lC38(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	240(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$5, %edx
	leaq	lC40(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	280(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	288(%rsp), %esi
	movq	%rbp, %rdi
	call	__ZNSolsEi
	movl	$7, %edx
	leaq	lC41(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	296(%rsp), %rsi
	movq	%rbp, %rdi
	call	__ZNSo9_M_insertImEERSoT_
	movl	$2, %edx
	leaq	lC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	304(%rsp), %esi
	movq	%rbp, %rdi
	call	__ZNSolsEi
	movl	$1, %edx
	leaq	lC42(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	L784
	cmpb	$0, 56(%r12)
	je	L774
	movsbl	67(%r12), %esi
L775:
	movq	%rbp, %rdi
	leaq	lC19(%rip), %r12
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movl	$7, %edx
	leaq	lC43(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	(%rsp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	8(%rsp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$7, %edx
	leaq	lC44(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	20(%rsp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	24(%rsp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	leaq	lC45(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	28(%rsp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	leaq	lC46(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	80(%r15), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rdx, %rbp
	movq	%rax, %r13
	cmpq	%rax, %rdx
	je	L780
	.align 4,0x90
L779:
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %rbp
	vcvtss2sd	-4(%rbp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%r13, %rbp
	jne	L779
L780:
	movl	$5, %edx
	leaq	lC47(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	80(%r15), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	cmpq	%rsi, %rdx
	je	L778
	movq	%rsi, %rax
	movq	%rdx, %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	.align 4,0x90
L781:
	vaddss	(%rax), %xmm0, %xmm0
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	L781
L778:
	subq	%rsi, %rdx
	sarq	$2, %rdx
	js	L782
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rdx, %xmm1, %xmm1
L783:
	vdivss	%xmm1, %xmm0, %xmm0
	movq	%rbx, %rdi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	L784
	cmpb	$0, 56(%rbp)
	je	L785
	movsbl	67(%rbp), %esi
L786:
	movq	%r12, %rdi
	leaq	128(%rsp), %rbp
	leaq	lC19(%rip), %r14
	call	__ZNSo3putEc
	leaq	20(%rbp), %r13
	movq	%rbp, %r12
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movl	$5, %edx
	leaq	lC48(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%r15), %rax
	movq	%rbx, %rdi
	movq	8(%rax), %rsi
	subq	(%rax), %rsi
	sarq	$7, %rsi
	call	__ZNSo9_M_insertImEERSoT_
	movq	16(%r15), %rsi
	movq	%rbp, %rdi
	call	__ZN8MosaicSC5Potts9massvarSCEv
	movl	$8, %edx
	leaq	lC49(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
L787:
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %r12
	vcvtss2sd	-4(%r12), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movq	%r14, %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%r13, %r12
	jne	L787
	movl	$7, %edx
	leaq	lC50(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	lC19(%rip), %r12
L788:
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %rbp
	vcvtss2sd	16(%rbp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbp, %r13
	jne	L788
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	L784
	cmpb	$0, 56(%rbp)
	je	L789
	movsbl	67(%rbp), %esi
L790:
	movq	%rbx, %rdi
	leaq	lC19(%rip), %r12
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movl	$7, %edx
	leaq	lC51(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	16(%r15), %rax
	leaq	720(%rax), %rbp
	leaq	740(%rax), %r13
	.align 4,0x90
L791:
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %rbp
	vcvtss2sd	-4(%rbp), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbp, %r13
	jne	L791
	leaq	112(%rsp), %rax
	movq	%r15, 8(%rsp)
	movl	$1, %r12d
	leaq	32(%rsp), %r13
	movq	%rax, (%rsp)
	leaq	64(%rsp), %r14
L805:
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	movq	%r12, %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	leaq	lC0(%rip), %rcx
	movl	$32, %edx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.55
	leaq	lC36(%rip), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$2, %r8d
	movq	%r13, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	leaq	16(%r14), %rdx
	movq	%rdx, 64(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L831
	movq	%rcx, 64(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 80(%rsp)
L793:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 72(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	72(%rsp), %rbp
	movabsq	$9223372036854775807, %rax
	subq	%rbp, %rax
	cmpq	$1, %rax
	jbe	L832
	movq	64(%rsp), %rcx
	leaq	16(%r14), %rsi
	leaq	2(%rbp), %r15
	movl	$15, %edx
	cmpq	%rsi, %rcx
	je	L795
	movq	80(%rsp), %rdx
L795:
	cmpq	%rdx, %r15
	ja	L796
	movl	$8233, %eax
	movw	%ax, (%rcx,%rbp)
L797:
	movq	64(%rsp), %rax
	movq	%r15, 72(%rsp)
	movb	$0, 2(%rax,%rbp)
	movq	(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rax, 96(%rsp)
	leaq	16(%r14), %rax
	cmpq	%rax, %rsi
	je	L833
	movq	80(%rsp), %rax
	movq	%rsi, 96(%rsp)
	movq	%rax, 112(%rsp)
L799:
	movq	72(%rsp), %rdx
	leaq	16(%r14), %rax
	movq	%rbx, %rdi
	movq	$0, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rdx, 104(%rsp)
	movb	$0, 80(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	96(%rsp), %rdi
	cmpq	(%rsp), %rdi
	je	L800
	call	__ZdlPv
L800:
	movq	64(%rsp), %rdi
	leaq	16(%r14), %rax
	cmpq	%rax, %rdi
	je	L801
	call	__ZdlPv
L801:
	movq	32(%rsp), %rdi
	leaq	16(%r13), %rax
	cmpq	%rax, %rdi
	je	L802
	call	__ZdlPv
L802:
	movq	8(%rsp), %rax
	leaq	(%r12,%r12,2), %rdx
	movq	16(%rax), %rax
	leaq	600(%rax,%rdx,8), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbp
	cmpq	%rcx, %rbp
	je	L803
	movq	%rcx, %r15
	.align 4,0x90
L804:
	movq	%rbx, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %r15
	vcvtss2sd	-4(%r15), %xmm0, %xmm0
	call	__ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	leaq	lC19(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	%rbp, %r15
	jne	L804
L803:
	addq	$1, %r12
	cmpq	$5, %r12
	jne	L805
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	L784
	cmpb	$0, 56(%rbp)
	je	L806
	movsbl	67(%rbp), %esi
L807:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	addq	$184, %rsp
LCFI193:
	popq	%rbx
LCFI194:
	popq	%rbp
LCFI195:
	popq	%r12
LCFI196:
	popq	%r13
LCFI197:
	popq	%r14
LCFI198:
	popq	%r15
LCFI199:
	ret
	.align 4,0x90
L796:
LCFI200:
	movl	$2, %r8d
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	leaq	lC52(%rip), %rcx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	jmp	L797
	.align 4,0x90
L833:
	vmovdqa	80(%rsp), %xmm0
	movq	(%rsp), %rsi
	vmovaps	%xmm0, 112(%rsp)
	jmp	L799
	.align 4,0x90
L831:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	jmp	L793
	.align 4,0x90
L774:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L775
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L775
	.align 4,0x90
L806:
	movq	%rbp, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L807
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L807
	.align 4,0x90
L789:
	movq	%rbp, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L790
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L790
	.align 4,0x90
L785:
	movq	%rbp, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L786
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L786
	.align 4,0x90
L782:
	movq	%rdx, %rax
	andl	$1, %edx
	vxorps	%xmm1, %xmm1, %xmm1
	shrq	%rax
	orq	%rdx, %rax
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vaddss	%xmm1, %xmm1, %xmm1
	jmp	L783
L832:
	leaq	lC22(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L784:
	call	__ZSt16__throw_bad_castv
LFE6524:
	.section __DATA,__gcc_except_tab
GCC_except_table9:
LLSDA6524:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC2IO6outputEbmmmmmmimimimifffff
__ZNK8MosaicSC2IO6outputEbmmmmmmimimimifffff:
LFB6528:
	pushq	%r15
LCFI201:
	pushq	%r14
LCFI202:
	movq	%rdi, %r14
	pushq	%r13
LCFI203:
	movq	%rcx, %r13
	pushq	%r12
LCFI204:
	pushq	%rbp
LCFI205:
	movq	%r9, %rbp
	pushq	%rbx
LCFI206:
	movq	%r8, %rbx
	subq	$104, %rsp
LCFI207:
	movq	16(%rdi), %rdi
	movq	168(%rsp), %rax
	movl	%esi, 84(%rsp)
	movq	%rdx, 8(%rsp)
	movq	160(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	176(%rsp), %eax
	vmovss	%xmm0, 56(%rsp)
	movq	216(%rsp), %r15
	movl	%eax, 32(%rsp)
	movq	184(%rsp), %rax
	vmovss	%xmm1, 60(%rsp)
	movq	%rax, 24(%rsp)
	movl	192(%rsp), %eax
	vmovss	%xmm2, 64(%rsp)
	movl	%eax, 36(%rsp)
	movq	200(%rsp), %rax
	vmovss	%xmm3, 68(%rsp)
	movq	%rax, 40(%rsp)
	movl	208(%rsp), %eax
	vmovss	%xmm4, 80(%rsp)
	movl	%eax, 48(%rsp)
	movl	224(%rsp), %eax
	movl	%eax, 52(%rsp)
	call	__ZN8MosaicSC5Potts4eTotEv
	movq	16(%r14), %rdi
	call	__ZN8MosaicSC5Potts6setSCsEv
	movq	(%r14), %rsi
	movq	112(%rsi), %rcx
	testq	%rcx, %rcx
	je	L835
	movq	16(%r14), %rax
	xorl	%edx, %edx
	movq	744(%rax), %rdi
	movq	%rdi, %rax
	divq	%rcx
	testq	%rdx, %rdx
	je	L836
	movq	96(%rsi), %rax
	subq	120(%rsi), %rax
	cmpq	%rax, %rdi
	jbe	L835
L836:
	movq	32(%r14), %rdi
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L862
	movq	40(%r14), %rax
	movq	%r15, 88(%rsp)
	movq	%r14, %r15
	movq	%r12, %r14
	movq	%rbp, %r12
	movq	%rbx, %rbp
	movq	8(%rax), %rdx
	xorl	%eax, %eax
	movq	%rax, %rbx
	jmp	L838
	.align 4,0x90
L863:
	subq	$8, %rsp
LCFI208:
	leaq	70(%rbx), %rax
	movq	%r14, %r8
	movq	%rbp, %rdx
	pushq	%rax
LCFI209:
	movq	%r15, %rdi
	movq	%rbx, %r9
	movq	%r12, %rcx
	movq	%r13, %rsi
	movq	%rax, 88(%rsp)
	call	__ZNK8MosaicSC2IO13print_latticeEmmmmmm
	movq	40(%r15), %rdx
	popq	%rdi
LCFI210:
	popq	%r8
LCFI211:
	movq	72(%rsp), %rax
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jbe	L859
L841:
	movq	%rax, %rbx
L838:
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	$69, %rax
	ja	L863
	subq	$8, %rsp
LCFI212:
	movq	%r12, %rcx
	movq	%r13, %rsi
	movq	%rbx, %r9
	pushq	%rdx
LCFI213:
	movq	%r14, %r8
	movq	%rbp, %rdx
	movq	%r15, %rdi
	call	__ZNK8MosaicSC2IO13print_latticeEmmmmmm
	movq	40(%r15), %rdx
	leaq	70(%rbx), %rax
	popq	%rcx
LCFI214:
	popq	%rsi
LCFI215:
	movq	8(%rdx), %rdx
	cmpq	%rdx, %rax
	jb	L841
L859:
	movq	%rbp, %rbx
	xorl	%eax, %eax
	movq	%r12, %rbp
	movq	%r14, %r12
	movq	%r15, %r14
	movq	%rbx, 72(%rsp)
	movq	88(%rsp), %r15
	movq	%rax, %rbx
	movq	%rbp, 88(%rsp)
	movq	%r14, %rbp
	movq	%r12, %r14
	jmp	L842
	.align 4,0x90
L864:
	leaq	70(%rbx), %r12
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	call	__ZNK8MosaicSC2IO12print_orientEmm
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%r12, %rdx
	jbe	L860
L845:
	movq	%r12, %rbx
L842:
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	$69, %rax
	ja	L864
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	leaq	70(%rbx), %r12
	call	__ZNK8MosaicSC2IO12print_orientEmm
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rdx, %r12
	jb	L845
L860:
	movq	72(%rsp), %rbx
	movq	%r14, %r12
	movq	%rbp, %r14
	movq	88(%rsp), %rbp
	xorl	%eax, %eax
	movq	%rbx, 72(%rsp)
	movq	%rax, %rbx
	movq	%rbp, 88(%rsp)
	movq	%r14, %rbp
	movq	%r12, %r14
	jmp	L846
	.align 4,0x90
L865:
	leaq	70(%rbx), %r12
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	call	__ZNK8MosaicSC2IO11print_mskSCEmm
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%r12, %rdx
	jbe	L861
L849:
	movq	%r12, %rbx
L846:
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	$69, %rax
	ja	L865
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	leaq	70(%rbx), %r12
	call	__ZNK8MosaicSC2IO11print_mskSCEmm
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rdx, %r12
	jb	L849
L861:
	movq	%r14, %r12
	movq	%rbp, %r14
	movq	72(%rsp), %rbx
	movq	88(%rsp), %rbp
	movq	32(%r14), %rdi
	call	_pthread_mutex_unlock
L835:
	movq	32(%r14), %rdi
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L862
	subq	$8, %rsp
LCFI216:
	movq	24(%r14), %rax
	movq	%rbp, %r9
	movq	%rbx, %r8
	movl	60(%rsp), %ecx
	pushq	%rcx
LCFI217:
	movq	%r13, %rcx
	pushq	%r15
LCFI218:
	movl	72(%rsp), %esi
	pushq	%rsi
LCFI219:
	pushq	72(%rsp)
LCFI220:
	movl	76(%rsp), %edi
	pushq	%rdi
LCFI221:
	movq	%r14, %rdi
	pushq	72(%rsp)
LCFI222:
	movl	88(%rsp), %edx
	pushq	%rdx
LCFI223:
	pushq	80(%rsp)
LCFI224:
	pushq	%r12
LCFI225:
	vmovss	160(%rsp), %xmm4
	movq	88(%rsp), %rdx
	vmovss	148(%rsp), %xmm3
	movq	(%rax), %rsi
	vmovss	144(%rsp), %xmm2
	vmovss	140(%rsp), %xmm1
	vmovss	136(%rsp), %xmm0
	call	__ZNK8MosaicSC2IO7loglineERSommmmmmimimimifffff
	addq	$72, %rsp
LCFI226:
	movq	24(%r14), %rax
	movq	%rbp, %r9
	movl	60(%rsp), %ecx
	movq	%rbx, %r8
	movq	8(%rax), %rsi
	pushq	%rcx
LCFI227:
	movq	%r13, %rcx
	pushq	%r15
LCFI228:
	movl	72(%rsp), %eax
	pushq	%rax
LCFI229:
	pushq	72(%rsp)
LCFI230:
	movl	76(%rsp), %edi
	pushq	%rdi
LCFI231:
	movq	%r14, %rdi
	pushq	72(%rsp)
LCFI232:
	movl	88(%rsp), %eax
	pushq	%rax
LCFI233:
	pushq	80(%rsp)
LCFI234:
	pushq	%r12
LCFI235:
	vmovss	160(%rsp), %xmm4
	movq	88(%rsp), %rdx
	vmovss	148(%rsp), %xmm3
	vmovss	144(%rsp), %xmm2
	vmovss	140(%rsp), %xmm1
	vmovss	136(%rsp), %xmm0
	call	__ZNK8MosaicSC2IO7loglineERSommmmmmimimimifffff
	movq	16(%r14), %rax
	movq	(%r14), %rsi
	xorl	%edx, %edx
	addq	$80, %rsp
LCFI236:
	movq	744(%rax), %rcx
	movq	%rcx, %rax
	divq	128(%rsi)
	testq	%rdx, %rdx
	jne	L851
	movzbl	84(%rsp), %esi
	movq	%r14, %rdi
	call	__ZNK8MosaicSC2IO5writeEbbm
	movq	16(%r14), %rax
	movl	$1, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	movq	744(%rax), %rcx
	call	__ZNK8MosaicSC2IO13write_latticeEbbm
L851:
	movq	32(%r14), %rdi
	addq	$104, %rsp
LCFI237:
	popq	%rbx
LCFI238:
	popq	%rbp
LCFI239:
	popq	%r12
LCFI240:
	popq	%r13
LCFI241:
	popq	%r14
LCFI242:
	popq	%r15
LCFI243:
	jmp	_pthread_mutex_unlock
L862:
LCFI244:
	movl	%eax, %edi
	call	__ZSt20__throw_system_errori
LFE6528:
	.section __DATA,__gcc_except_tab
GCC_except_table10:
LLSDA6528:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_io.cpp:
LFB7823:
	subq	$8, %rsp
LCFI245:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI246:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE7823:
	.globl __ZTSN5Utils6Common10Exceptions6SimpleE
	.weak_definition __ZTSN5Utils6Common10Exceptions6SimpleE
	.const
	.align 5
__ZTSN5Utils6Common10Exceptions6SimpleE:
	.ascii "N5Utils6Common10Exceptions6SimpleE\0"
	.globl __ZTIN5Utils6Common10Exceptions6SimpleE
	.weak_definition __ZTIN5Utils6Common10Exceptions6SimpleE
	.const_data
	.align 3
__ZTIN5Utils6Common10Exceptions6SimpleE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSN5Utils6Common10Exceptions6SimpleE
	.quad	__ZTISt9exception
	.globl __ZTVN5Utils6Common10Exceptions6SimpleE
	.weak_definition __ZTVN5Utils6Common10Exceptions6SimpleE
	.align 3
__ZTVN5Utils6Common10Exceptions6SimpleE:
	.quad	0
	.quad	__ZTIN5Utils6Common10Exceptions6SimpleE
	.quad	__ZN5Utils6Common10Exceptions6SimpleD1Ev
	.quad	__ZN5Utils6Common10Exceptions6SimpleD0Ev
	.quad	__ZNKSt9exception4whatEv
	.static_data
__ZStL8__ioinit:
	.space	1
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$165,LECIE1-LSCIE1
	.long L$set$165
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
	.set L$set$166,LEFDE1-LASFDE1
	.long L$set$166
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1607-.
	.set L$set$167,LFE1607-LFB1607
	.quad L$set$167
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$168,LEFDE3-LASFDE3
	.long L$set$168
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB7810-.
	.set L$set$169,LFE7810-LFB7810
	.quad L$set$169
	.byte	0x8
	.quad	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$170,LEFDE5-LASFDE5
	.long L$set$170
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB7811-.
	.set L$set$171,LFE7811-LFB7811
	.quad L$set$171
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$172,LCFI0-LFB7811
	.long L$set$172
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$173,LCFI1-LCFI0
	.long L$set$173
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$174,LEFDE7-LASFDE7
	.long L$set$174
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB7890-.
	.set L$set$175,LFE7890-LFB7890
	.quad L$set$175
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$176,LCFI2-LFB7890
	.long L$set$176
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$177,LCFI3-LCFI2
	.long L$set$177
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$178,LCFI4-LCFI3
	.long L$set$178
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$179,LCFI5-LCFI4
	.long L$set$179
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$180,LCFI6-LCFI5
	.long L$set$180
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$181,LCFI7-LCFI6
	.long L$set$181
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$182,LEFDE9-LASFDE9
	.long L$set$182
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB7880-.
	.set L$set$183,LFE7880-LFB7880
	.quad L$set$183
	.byte	0x8
	.quad	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$184,LEFDE11-LASFDE11
	.long L$set$184
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB6515-.
	.set L$set$185,LFE6515-LFB6515
	.quad L$set$185
	.byte	0x8
	.quad	0
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$186,LEFDE13-LASFDE13
	.long L$set$186
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6517-.
	.set L$set$187,LFE6517-LFB6517
	.quad L$set$187
	.byte	0x8
	.quad	LLSDA6517-.
	.byte	0x4
	.set L$set$188,LCFI8-LFB6517
	.long L$set$188
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$189,LCFI9-LCFI8
	.long L$set$189
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$190,LCFI10-LCFI9
	.long L$set$190
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$191,LCFI11-LCFI10
	.long L$set$191
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$192,LCFI12-LCFI11
	.long L$set$192
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$193,LCFI13-LCFI12
	.long L$set$193
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$194,LCFI14-LCFI13
	.long L$set$194
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x4
	.set L$set$195,LCFI15-LCFI14
	.long L$set$195
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$196,LCFI16-LCFI15
	.long L$set$196
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$197,LCFI17-LCFI16
	.long L$set$197
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$198,LCFI18-LCFI17
	.long L$set$198
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$199,LCFI19-LCFI18
	.long L$set$199
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$200,LCFI20-LCFI19
	.long L$set$200
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$201,LCFI21-LCFI20
	.long L$set$201
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$202,LCFI22-LCFI21
	.long L$set$202
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$203,LEFDE15-LASFDE15
	.long L$set$203
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6516-.
	.set L$set$204,LFE6516-LFB6516
	.quad L$set$204
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$205,LCFI23-LFB6516
	.long L$set$205
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$206,LCFI24-LCFI23
	.long L$set$206
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$207,LCFI25-LCFI24
	.long L$set$207
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$208,LCFI26-LCFI25
	.long L$set$208
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$209,LCFI27-LCFI26
	.long L$set$209
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$210,LCFI28-LCFI27
	.long L$set$210
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$211,LCFI29-LCFI28
	.long L$set$211
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$212,LCFI30-LCFI29
	.long L$set$212
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$213,LCFI31-LCFI30
	.long L$set$213
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$214,LCFI32-LCFI31
	.long L$set$214
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$215,LCFI33-LCFI32
	.long L$set$215
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$216,LCFI34-LCFI33
	.long L$set$216
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$217,LCFI35-LCFI34
	.long L$set$217
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$218,LCFI36-LCFI35
	.long L$set$218
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$219,LCFI37-LCFI36
	.long L$set$219
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$220,LCFI38-LCFI37
	.long L$set$220
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$221,LCFI39-LCFI38
	.long L$set$221
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$222,LCFI40-LCFI39
	.long L$set$222
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$223,LCFI41-LCFI40
	.long L$set$223
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$224,LCFI42-LCFI41
	.long L$set$224
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$225,LCFI43-LCFI42
	.long L$set$225
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$226,LCFI44-LCFI43
	.long L$set$226
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$227,LEFDE17-LASFDE17
	.long L$set$227
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB6519-.
	.set L$set$228,LFE6519-LFB6519
	.quad L$set$228
	.byte	0x8
	.quad	LLSDA6519-.
	.byte	0x4
	.set L$set$229,LCFI45-LFB6519
	.long L$set$229
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$230,LCFI46-LCFI45
	.long L$set$230
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$231,LCFI47-LCFI46
	.long L$set$231
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$232,LCFI48-LCFI47
	.long L$set$232
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$233,LCFI49-LCFI48
	.long L$set$233
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$234,LCFI50-LCFI49
	.long L$set$234
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$235,LCFI51-LCFI50
	.long L$set$235
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$236,LCFI52-LCFI51
	.long L$set$236
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$237,LCFI53-LCFI52
	.long L$set$237
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$238,LCFI54-LCFI53
	.long L$set$238
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$239,LCFI55-LCFI54
	.long L$set$239
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$240,LCFI56-LCFI55
	.long L$set$240
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$241,LCFI57-LCFI56
	.long L$set$241
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$242,LCFI58-LCFI57
	.long L$set$242
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$243,LCFI59-LCFI58
	.long L$set$243
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$244,LEFDE19-LASFDE19
	.long L$set$244
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6518-.
	.set L$set$245,LFE6518-LFB6518
	.quad L$set$245
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$246,LCFI60-LFB6518
	.long L$set$246
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$247,LCFI61-LCFI60
	.long L$set$247
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$248,LCFI62-LCFI61
	.long L$set$248
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$249,LCFI63-LCFI62
	.long L$set$249
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$250,LCFI64-LCFI63
	.long L$set$250
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$251,LCFI65-LCFI64
	.long L$set$251
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$252,LEFDE21-LASFDE21
	.long L$set$252
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB6520-.
	.set L$set$253,LFE6520-LFB6520
	.quad L$set$253
	.byte	0x8
	.quad	LLSDA6520-.
	.byte	0x4
	.set L$set$254,LCFI66-LFB6520
	.long L$set$254
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$255,LCFI67-LCFI66
	.long L$set$255
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$256,LCFI68-LCFI67
	.long L$set$256
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$257,LCFI69-LCFI68
	.long L$set$257
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$258,LCFI70-LCFI69
	.long L$set$258
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$259,LCFI71-LCFI70
	.long L$set$259
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$260,LCFI72-LCFI71
	.long L$set$260
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$261,LCFI73-LCFI72
	.long L$set$261
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$262,LCFI74-LCFI73
	.long L$set$262
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$263,LCFI75-LCFI74
	.long L$set$263
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$264,LCFI76-LCFI75
	.long L$set$264
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$265,LCFI77-LCFI76
	.long L$set$265
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$266,LCFI78-LCFI77
	.long L$set$266
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$267,LCFI79-LCFI78
	.long L$set$267
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$268,LCFI80-LCFI79
	.long L$set$268
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$269,LEFDE23-LASFDE23
	.long L$set$269
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB6521-.
	.set L$set$270,LFE6521-LFB6521
	.quad L$set$270
	.byte	0x8
	.quad	LLSDA6521-.
	.byte	0x4
	.set L$set$271,LCFI81-LFB6521
	.long L$set$271
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$272,LCFI82-LCFI81
	.long L$set$272
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$273,LCFI83-LCFI82
	.long L$set$273
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$274,LCFI84-LCFI83
	.long L$set$274
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$275,LCFI85-LCFI84
	.long L$set$275
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$276,LCFI86-LCFI85
	.long L$set$276
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$277,LCFI87-LCFI86
	.long L$set$277
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$278,LCFI88-LCFI87
	.long L$set$278
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$279,LCFI89-LCFI88
	.long L$set$279
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$280,LCFI90-LCFI89
	.long L$set$280
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$281,LCFI91-LCFI90
	.long L$set$281
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$282,LCFI92-LCFI91
	.long L$set$282
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$283,LCFI93-LCFI92
	.long L$set$283
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$284,LCFI94-LCFI93
	.long L$set$284
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$285,LCFI95-LCFI94
	.long L$set$285
	.byte	0xb
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$286,LEFDE25-LASFDE25
	.long L$set$286
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB6523-.
	.set L$set$287,LFE6523-LFB6523
	.quad L$set$287
	.byte	0x8
	.quad	LLSDA6523-.
	.byte	0x4
	.set L$set$288,LCFI96-LFB6523
	.long L$set$288
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$289,LCFI97-LCFI96
	.long L$set$289
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$290,LCFI98-LCFI97
	.long L$set$290
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$291,LCFI99-LCFI98
	.long L$set$291
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$292,LCFI100-LCFI99
	.long L$set$292
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$293,LCFI101-LCFI100
	.long L$set$293
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$294,LCFI102-LCFI101
	.long L$set$294
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$295,LCFI103-LCFI102
	.long L$set$295
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$296,LCFI104-LCFI103
	.long L$set$296
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$297,LCFI105-LCFI104
	.long L$set$297
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$298,LCFI106-LCFI105
	.long L$set$298
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$299,LCFI107-LCFI106
	.long L$set$299
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$300,LCFI108-LCFI107
	.long L$set$300
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$301,LCFI109-LCFI108
	.long L$set$301
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$302,LCFI110-LCFI109
	.long L$set$302
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$303,LEFDE27-LASFDE27
	.long L$set$303
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB6522-.
	.set L$set$304,LFE6522-LFB6522
	.quad L$set$304
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$305,LCFI111-LFB6522
	.long L$set$305
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$306,LCFI112-LCFI111
	.long L$set$306
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$307,LCFI113-LCFI112
	.long L$set$307
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$308,LCFI114-LCFI113
	.long L$set$308
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$309,LCFI115-LCFI114
	.long L$set$309
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$310,LCFI116-LCFI115
	.long L$set$310
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$311,LEFDE29-LASFDE29
	.long L$set$311
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB7514-.
	.set L$set$312,LFE7514-LFB7514
	.quad L$set$312
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$313,LCFI117-LFB7514
	.long L$set$313
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$314,LCFI118-LCFI117
	.long L$set$314
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$315,LCFI119-LCFI118
	.long L$set$315
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$316,LCFI120-LCFI119
	.long L$set$316
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$317,LCFI121-LCFI120
	.long L$set$317
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$318,LCFI122-LCFI121
	.long L$set$318
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$319,LCFI123-LCFI122
	.long L$set$319
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$320,LCFI124-LCFI123
	.long L$set$320
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$321,LCFI125-LCFI124
	.long L$set$321
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$322,LCFI126-LCFI125
	.long L$set$322
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$323,LCFI127-LCFI126
	.long L$set$323
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$324,LCFI128-LCFI127
	.long L$set$324
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$325,LCFI129-LCFI128
	.long L$set$325
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$326,LCFI130-LCFI129
	.long L$set$326
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$327,LCFI131-LCFI130
	.long L$set$327
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$328,LEFDE31-LASFDE31
	.long L$set$328
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7026-.
	.set L$set$329,LFE7026-LFB7026
	.quad L$set$329
	.byte	0x8
	.quad	LLSDA7026-.
	.byte	0x4
	.set L$set$330,LCFI132-LFB7026
	.long L$set$330
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$331,LCFI133-LCFI132
	.long L$set$331
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$332,LCFI134-LCFI133
	.long L$set$332
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$333,LCFI135-LCFI134
	.long L$set$333
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$334,LCFI136-LCFI135
	.long L$set$334
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$335,LCFI137-LCFI136
	.long L$set$335
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$336,LCFI138-LCFI137
	.long L$set$336
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$337,LCFI139-LCFI138
	.long L$set$337
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$338,LCFI140-LCFI139
	.long L$set$338
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$339,LCFI141-LCFI140
	.long L$set$339
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$340,LCFI142-LCFI141
	.long L$set$340
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$341,LCFI143-LCFI142
	.long L$set$341
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$342,LCFI144-LCFI143
	.long L$set$342
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$343,LCFI145-LCFI144
	.long L$set$343
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$344,LCFI146-LCFI145
	.long L$set$344
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$345,LEFDE33-LASFDE33
	.long L$set$345
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB6531-.
	.set L$set$346,LFE6531-LFB6531
	.quad L$set$346
	.byte	0x8
	.quad	LLSDA6531-.
	.byte	0x4
	.set L$set$347,LCFI147-LFB6531
	.long L$set$347
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$348,LCFI148-LCFI147
	.long L$set$348
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$349,LCFI149-LCFI148
	.long L$set$349
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
	.set L$set$350,LCFI150-LCFI149
	.long L$set$350
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
	.set L$set$351,LCFI151-LCFI150
	.long L$set$351
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$352,LCFI152-LCFI151
	.long L$set$352
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$353,LCFI153-LCFI152
	.long L$set$353
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$354,LCFI154-LCFI153
	.long L$set$354
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$355,LCFI155-LCFI154
	.long L$set$355
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$356,LEFDE35-LASFDE35
	.long L$set$356
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB6530-.
	.set L$set$357,LFE6530-LFB6530
	.quad L$set$357
	.byte	0x8
	.quad	LLSDA6530-.
	.byte	0x4
	.set L$set$358,LCFI156-LFB6530
	.long L$set$358
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$359,LCFI157-LCFI156
	.long L$set$359
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$360,LCFI158-LCFI157
	.long L$set$360
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
	.set L$set$361,LCFI159-LCFI158
	.long L$set$361
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$362,LCFI160-LCFI159
	.long L$set$362
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$363,LCFI161-LCFI160
	.long L$set$363
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$364,LCFI162-LCFI161
	.long L$set$364
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$365,LCFI163-LCFI162
	.long L$set$365
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$366,LEFDE37-LASFDE37
	.long L$set$366
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB6529-.
	.set L$set$367,LFE6529-LFB6529
	.quad L$set$367
	.byte	0x8
	.quad	LLSDA6529-.
	.byte	0x4
	.set L$set$368,LCFI164-LFB6529
	.long L$set$368
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$369,LCFI165-LCFI164
	.long L$set$369
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$370,LCFI166-LCFI165
	.long L$set$370
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
	.set L$set$371,LCFI167-LCFI166
	.long L$set$371
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$372,LCFI168-LCFI167
	.long L$set$372
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$373,LCFI169-LCFI168
	.long L$set$373
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$374,LCFI170-LCFI169
	.long L$set$374
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$375,LEFDE39-LASFDE39
	.long L$set$375
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB7515-.
	.set L$set$376,LFE7515-LFB7515
	.quad L$set$376
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$377,LCFI171-LFB7515
	.long L$set$377
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$378,LCFI172-LCFI171
	.long L$set$378
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$379,LCFI173-LCFI172
	.long L$set$379
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$380,LCFI174-LCFI173
	.long L$set$380
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$381,LCFI175-LCFI174
	.long L$set$381
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$382,LCFI176-LCFI175
	.long L$set$382
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$383,LCFI177-LCFI176
	.long L$set$383
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$384,LCFI178-LCFI177
	.long L$set$384
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$385,LCFI179-LCFI178
	.long L$set$385
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$386,LCFI180-LCFI179
	.long L$set$386
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$387,LCFI181-LCFI180
	.long L$set$387
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$388,LCFI182-LCFI181
	.long L$set$388
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$389,LCFI183-LCFI182
	.long L$set$389
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$390,LCFI184-LCFI183
	.long L$set$390
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$391,LCFI185-LCFI184
	.long L$set$391
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$392,LEFDE41-LASFDE41
	.long L$set$392
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB6524-.
	.set L$set$393,LFE6524-LFB6524
	.quad L$set$393
	.byte	0x8
	.quad	LLSDA6524-.
	.byte	0x4
	.set L$set$394,LCFI186-LFB6524
	.long L$set$394
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$395,LCFI187-LCFI186
	.long L$set$395
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$396,LCFI188-LCFI187
	.long L$set$396
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$397,LCFI189-LCFI188
	.long L$set$397
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$398,LCFI190-LCFI189
	.long L$set$398
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$399,LCFI191-LCFI190
	.long L$set$399
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$400,LCFI192-LCFI191
	.long L$set$400
	.byte	0xe
	.byte	0xf0,0x1
	.byte	0x4
	.set L$set$401,LCFI193-LCFI192
	.long L$set$401
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$402,LCFI194-LCFI193
	.long L$set$402
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$403,LCFI195-LCFI194
	.long L$set$403
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$404,LCFI196-LCFI195
	.long L$set$404
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$405,LCFI197-LCFI196
	.long L$set$405
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$406,LCFI198-LCFI197
	.long L$set$406
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$407,LCFI199-LCFI198
	.long L$set$407
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$408,LCFI200-LCFI199
	.long L$set$408
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$409,LEFDE43-LASFDE43
	.long L$set$409
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB6528-.
	.set L$set$410,LFE6528-LFB6528
	.quad L$set$410
	.byte	0x8
	.quad	LLSDA6528-.
	.byte	0x4
	.set L$set$411,LCFI201-LFB6528
	.long L$set$411
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$412,LCFI202-LCFI201
	.long L$set$412
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$413,LCFI203-LCFI202
	.long L$set$413
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$414,LCFI204-LCFI203
	.long L$set$414
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$415,LCFI205-LCFI204
	.long L$set$415
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$416,LCFI206-LCFI205
	.long L$set$416
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$417,LCFI207-LCFI206
	.long L$set$417
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$418,LCFI208-LCFI207
	.long L$set$418
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$419,LCFI209-LCFI208
	.long L$set$419
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$420,LCFI210-LCFI209
	.long L$set$420
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$421,LCFI211-LCFI210
	.long L$set$421
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$422,LCFI212-LCFI211
	.long L$set$422
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$423,LCFI213-LCFI212
	.long L$set$423
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$424,LCFI214-LCFI213
	.long L$set$424
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$425,LCFI215-LCFI214
	.long L$set$425
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$426,LCFI216-LCFI215
	.long L$set$426
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$427,LCFI217-LCFI216
	.long L$set$427
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$428,LCFI218-LCFI217
	.long L$set$428
	.byte	0xe
	.byte	0xb8,0x1
	.byte	0x4
	.set L$set$429,LCFI219-LCFI218
	.long L$set$429
	.byte	0xe
	.byte	0xc0,0x1
	.byte	0x4
	.set L$set$430,LCFI220-LCFI219
	.long L$set$430
	.byte	0xe
	.byte	0xc8,0x1
	.byte	0x4
	.set L$set$431,LCFI221-LCFI220
	.long L$set$431
	.byte	0xe
	.byte	0xd0,0x1
	.byte	0x4
	.set L$set$432,LCFI222-LCFI221
	.long L$set$432
	.byte	0xe
	.byte	0xd8,0x1
	.byte	0x4
	.set L$set$433,LCFI223-LCFI222
	.long L$set$433
	.byte	0xe
	.byte	0xe0,0x1
	.byte	0x4
	.set L$set$434,LCFI224-LCFI223
	.long L$set$434
	.byte	0xe
	.byte	0xe8,0x1
	.byte	0x4
	.set L$set$435,LCFI225-LCFI224
	.long L$set$435
	.byte	0xe
	.byte	0xf0,0x1
	.byte	0x4
	.set L$set$436,LCFI226-LCFI225
	.long L$set$436
	.byte	0xe
	.byte	0xa8,0x1
	.byte	0x4
	.set L$set$437,LCFI227-LCFI226
	.long L$set$437
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$438,LCFI228-LCFI227
	.long L$set$438
	.byte	0xe
	.byte	0xb8,0x1
	.byte	0x4
	.set L$set$439,LCFI229-LCFI228
	.long L$set$439
	.byte	0xe
	.byte	0xc0,0x1
	.byte	0x4
	.set L$set$440,LCFI230-LCFI229
	.long L$set$440
	.byte	0xe
	.byte	0xc8,0x1
	.byte	0x4
	.set L$set$441,LCFI231-LCFI230
	.long L$set$441
	.byte	0xe
	.byte	0xd0,0x1
	.byte	0x4
	.set L$set$442,LCFI232-LCFI231
	.long L$set$442
	.byte	0xe
	.byte	0xd8,0x1
	.byte	0x4
	.set L$set$443,LCFI233-LCFI232
	.long L$set$443
	.byte	0xe
	.byte	0xe0,0x1
	.byte	0x4
	.set L$set$444,LCFI234-LCFI233
	.long L$set$444
	.byte	0xe
	.byte	0xe8,0x1
	.byte	0x4
	.set L$set$445,LCFI235-LCFI234
	.long L$set$445
	.byte	0xe
	.byte	0xf0,0x1
	.byte	0x4
	.set L$set$446,LCFI236-LCFI235
	.long L$set$446
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$447,LCFI237-LCFI236
	.long L$set$447
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$448,LCFI238-LCFI237
	.long L$set$448
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$449,LCFI239-LCFI238
	.long L$set$449
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$450,LCFI240-LCFI239
	.long L$set$450
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$451,LCFI241-LCFI240
	.long L$set$451
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$452,LCFI242-LCFI241
	.long L$set$452
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$453,LCFI243-LCFI242
	.long L$set$453
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$454,LCFI244-LCFI243
	.long L$set$454
	.byte	0xb
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$455,LEFDE45-LASFDE45
	.long L$set$455
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB7823-.
	.set L$set$456,LFE7823-LFB7823
	.quad L$set$456
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$457,LCFI245-LFB7823
	.long L$set$457
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$458,LCFI246-LCFI245
	.long L$set$458
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE45:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_io.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
