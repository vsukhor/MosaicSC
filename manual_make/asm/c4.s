	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EE8get_connEm
	.weak_definition __ZN8MosaicSC1CILj4EE8get_connEm
__ZN8MosaicSC1CILj4EE8get_connEm:
LFB6350:
	movl	40(%rdi,%rsi,4), %eax
	ret
LFE6350:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EED1Ev
	.weak_definition __ZN8MosaicSC1CILj4EED1Ev
__ZN8MosaicSC1CILj4EED1Ev:
LFB7289:
	ret
LFE7289:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm
__ZN8MosaicSC1CILj4EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm:
LFB6372:
	pushq	%r15
LCFI0:
	movq	%rdi, %r15
	pushq	%r14
LCFI1:
	leaq	40(%rdi), %r14
	pushq	%r13
LCFI2:
	pushq	%r12
LCFI3:
	movq	%rsi, %r12
	pushq	%rbp
LCFI4:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI5:
	leaq	64(%rdi), %rbx
	subq	$8, %rsp
LCFI6:
	movq	__ZN8MosaicSC1CILj4EE3itrE@GOTPCREL(%rip), %rax
	leaq	48(%rax), %r13
	.align 4,0x90
L6:
	movq	%r13, %rdx
	movl	16(%r15), %eax
	cmpl	%eax, -48(%r13)
	jne	L5
	leaq	-32(%r13), %rdx
L5:
	movq	32(%r15), %rsi
	movq	24(%r15), %rdi
	movq	%rbp, %rcx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	(%r12), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	-40(%r13), %rcx
	movq	(%rax), %rax
	cmpq	%rcx, (%rax,%rdx,8)
	sete	%al
	addq	$4, %r14
	addq	$64, %r13
	movzbl	%al, %eax
	movl	%eax, -4(%r14)
	cmpq	%rbx, %r14
	jne	L6
	addq	$8, %rsp
LCFI7:
	popq	%rbx
LCFI8:
	popq	%rbp
LCFI9:
	popq	%r12
LCFI10:
	popq	%r13
LCFI11:
	popq	%r14
LCFI12:
	popq	%r15
LCFI13:
	ret
LFE6372:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC1CILj4EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE
__ZNK8MosaicSC1CILj4EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE:
LFB6378:
	pushq	%r12
LCFI14:
	movl	$8, %edx
	movq	%rdi, %r12
	pushq	%rbp
LCFI15:
	movq	%rsi, %rbp
	leaq	8(%rdi), %rsi
	pushq	%rbx
LCFI16:
	movq	%rbp, %rdi
	subq	$16, %rsp
LCFI17:
	call	__ZNSo5writeEPKcl
	movq	__ZN8MosaicSC1CILj4EE4typeE@GOTPCREL(%rip), %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
	leaq	8(%rsp), %rbx
	call	__ZNSo5writeEPKcl
	leaq	16(%r12), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	call	__ZNSo5writeEPKcl
	movq	24(%r12), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movl	$8, %edx
	movq	%rax, 8(%rsp)
	call	__ZNSo5writeEPKcl
	movq	32(%r12), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movl	$8, %edx
	leaq	40(%r12), %rbx
	addq	$64, %r12
	movq	%rax, 8(%rsp)
	call	__ZNSo5writeEPKcl
	.align 4,0x90
L11:
	movq	%rbx, %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	__ZNSo5writeEPKcl
	cmpq	%r12, %rbx
	jne	L11
	addq	$16, %rsp
LCFI18:
	popq	%rbx
LCFI19:
	popq	%rbp
LCFI20:
	popq	%r12
LCFI21:
	ret
LFE6378:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EED0Ev
	.weak_definition __ZN8MosaicSC1CILj4EED0Ev
__ZN8MosaicSC1CILj4EED0Ev:
LFB7290:
	movl	$64, %esi
	jmp	__ZdlPvm
LFE7290:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EEC2EmiRKSt5arrayImLm2EE
__ZN8MosaicSC1CILj4EEC2EmiRKSt5arrayImLm2EE:
LFB7323:
	pushq	%rbx
LCFI22:
	movq	%rdi, %rbx
	call	__ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE
	leaq	16+__ZTVN8MosaicSC1CILj4EEE(%rip), %rax
	movq	%rax, (%rbx)
	popq	%rbx
LCFI23:
	ret
LFE7323:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EEC1EmiRKSt5arrayImLm2EE
__ZN8MosaicSC1CILj4EEC1EmiRKSt5arrayImLm2EE:
LFB6357:
	pushq	%rbx
LCFI24:
	movq	%rdi, %rbx
	call	__ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE
	leaq	16+__ZTVN8MosaicSC1CILj4EEE(%rip), %rax
	movq	%rax, (%rbx)
	popq	%rbx
LCFI25:
	ret
LFE6357:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm
__ZN8MosaicSC1CILj4EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm:
LFB6358:
	movq	__ZN8MosaicSC5BaseC3spsE@GOTPCREL(%rip), %r10
	movq	(%rdi), %r9
	pushq	%r14
LCFI26:
	pushq	%rbx
LCFI27:
	movq	8(%rdi), %rax
	movq	(%r10), %r10
	cmpq	$1, %r9
	sete	%r8b
	movq	136(%r10), %r10
	cmpq	$0, 24(%r10)
	je	L21
	movzbl	%r8b, %r8d
	movq	(%rsi), %rbx
	movq	(%rdx), %r11
	xorl	%edx, %edx
	leal	-1(%r8,%r8), %r8d
L22:
	cmpl	$1, %r8d
	jne	L23
L36:
	cmpq	%rax, %rcx
	jne	L23
	movq	8(%rdi), %rax
	movq	72(%rbx), %rsi
	addq	$1, %rdx
	movq	$4, (%rsi,%rax,8)
	movq	72(%r11), %rsi
	movl	$-1, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, 24(%r10)
	jbe	L35
	movl	$-1, %r8d
	movl	$3, %r9d
	cmpl	$1, %r8d
	je	L36
L23:
	leaq	(%r9,%r9,2), %rsi
	addq	$1, %rdx
	movq	(%rbx,%rsi,8), %r14
	movq	(%r11,%rsi,8), %rsi
	movq	$4, (%r14,%rax,8)
	movl	%r8d, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	24(%r10), %rdx
	jb	L22
L21:
	vmovd	%r9, %xmm1
	vpinsrq	$1, %rax, %xmm1, %xmm0
	vmovaps	%xmm0, -24(%rsp)
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %rdx
	popq	%rbx
LCFI28:
	popq	%r14
LCFI29:
	ret
	.align 4,0x90
L35:
LCFI30:
	movl	$3, %r9d
	jmp	L21
LFE6358:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
__ZN8MosaicSC1CILj4EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm:
LFB6361:
	pushq	%r15
LCFI31:
	pushq	%r14
LCFI32:
	movq	%r9, %r14
	pushq	%r13
LCFI33:
	movq	%r8, %r13
	pushq	%r12
LCFI34:
	movq	%rcx, %r12
	pushq	%rbp
LCFI35:
	movl	%edx, %ebp
	pushq	%rbx
LCFI36:
	subq	$40, %rsp
LCFI37:
	movq	__ZN8MosaicSC1CILj4EE3phbE@GOTPCREL(%rip), %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, %r15
L44:
	movl	(%r15), %eax
	cmpl	%ebp, %eax
	je	L69
L38:
	cmpl	$1, %eax
	je	L57
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L41:
	cmpl	%ebp, %eax
	je	L42
L47:
	addq	$64, %r15
	leaq	448(%rbx), %rax
	cmpq	%rax, %r15
	jne	L44
	movq	__ZN8MosaicSC1CILj4EE3itrE@GOTPCREL(%rip), %rbx
	movq	%r14, %rax
	movb	$0, 31(%rsp)
	movq	%r13, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r12, %r13
	movq	%rax, %r15
	movl	%ebp, %r12d
	movq	%rbx, %rbp
	jmp	L56
	.align 4,0x90
L53:
	addq	$64, %rbp
	leaq	384(%rbx), %rax
	cmpq	%rax, %rbp
	je	L70
L56:
	movl	0(%rbp), %eax
	cmpl	%r12d, %eax
	je	L71
L48:
	cmpl	$1, %eax
	je	L62
	cmpl	$-1, %eax
	movl	$1, %ecx
	cmove	%ecx, %eax
L52:
	cmpl	%r12d, %eax
	jne	L53
	movl	4(%rbp), %esi
	leaq	48(%rbp), %r8
	cmpl	$1, %esi
	je	L64
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L54:
	vmovss	%xmm0, 24(%rsp)
	movq	8(%rbp), %rdi
	movq	%r13, %r9
	pushq	%r15
LCFI38:
	pushq	%r14
LCFI39:
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rdx
LCFI40:
	popq	%rcx
LCFI41:
	testb	%al, %al
	vmovss	24(%rsp), %xmm0
	je	L53
L55:
	movq	32(%rbp), %rax
	cmpq	__ZN8MosaicSC5BaseC6k_1_4aE@GOTPCREL(%rip), %rax
	je	L72
	cmpq	__ZN8MosaicSC5BaseC6k_1_4bE@GOTPCREL(%rip), %rax
	je	L73
L50:
	vaddss	(%rax), %xmm0, %xmm0
	addq	$64, %rbp
	leaq	384(%rbx), %rax
	cmpq	%rax, %rbp
	jne	L56
L70:
	movq	__ZN8MosaicSC5BaseC2phE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	addq	$40, %rsp
LCFI42:
	popq	%rbx
LCFI43:
	popq	%rbp
LCFI44:
	popq	%r12
LCFI45:
	popq	%r13
LCFI46:
	popq	%r14
LCFI47:
	popq	%r15
LCFI48:
	jmp	*%rax
	.align 4,0x90
L42:
LCFI49:
	movl	4(%r15), %esi
	leaq	48(%r15), %r8
	cmpl	$1, %esi
	je	L59
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L45:
	movq	8(%r15), %rdi
	pushq	%r14
LCFI50:
	movq	%r12, %r9
	pushq	%r13
LCFI51:
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r8
LCFI52:
	popq	%r9
LCFI53:
	testb	%al, %al
	je	L47
L40:
	vmovss	lC1(%rip), %xmm0
	addq	$40, %rsp
LCFI54:
	popq	%rbx
LCFI55:
	popq	%rbp
LCFI56:
	popq	%r12
LCFI57:
	popq	%r13
LCFI58:
	popq	%r14
LCFI59:
	popq	%r15
LCFI60:
	ret
	.align 4,0x90
L57:
LCFI61:
	movl	$-1, %eax
	jmp	L41
	.align 4,0x90
L62:
	movl	$-1, %eax
	jmp	L52
	.align 4,0x90
L69:
	movl	4(%r15), %esi
	movq	8(%r15), %rdi
	pushq	%r14
LCFI62:
	movq	%r12, %r9
	pushq	%r13
LCFI63:
	movq	32(%rsp), %rcx
	leaq	16(%r15), %r8
	movq	24(%rsp), %rdx
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r10
LCFI64:
	popq	%r11
LCFI65:
	testb	%al, %al
	jne	L40
	movl	(%r15), %eax
	jmp	L38
	.align 4,0x90
L71:
	vmovss	%xmm0, 24(%rsp)
	movl	4(%rbp), %esi
	movq	8(%rbp), %rdi
	movq	%r13, %r9
	pushq	%r15
LCFI66:
	leaq	16(%rbp), %r8
	pushq	%r14
LCFI67:
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rsi
LCFI68:
	popq	%rdi
LCFI69:
	testb	%al, %al
	vmovss	24(%rsp), %xmm0
	jne	L55
	movl	0(%rbp), %eax
	jmp	L48
	.align 4,0x90
L72:
	movb	$1, 31(%rsp)
	jmp	L50
	.align 4,0x90
L59:
	movl	$-1, %esi
	jmp	L45
	.align 4,0x90
L64:
	movl	$-1, %esi
	jmp	L54
	.align 4,0x90
L73:
	cmpb	$0, 31(%rsp)
	je	L50
	jmp	L40
LFE6361:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA6361:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj4EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
__ZN8MosaicSC1CILj4EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm:
LFB6373:
	movq	(%rdx), %r9
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%r9,%rax,8), %rax
	movq	(%rax), %rax
	cmpq	$4, (%rax,%rsi,8)
	je	L84
	pushq	%r15
LCFI70:
	movq	%rsi, %r15
	pushq	%r14
LCFI71:
	movq	%rdi, %r14
	pushq	%r13
LCFI72:
	pushq	%r12
LCFI73:
	movq	%r8, %r12
	pushq	%rbp
LCFI74:
	movq	%rcx, %rbp
	movq	%r8, %rcx
	pushq	%rbx
LCFI75:
	movq	%rdx, %rbx
	subq	$8, %rsp
LCFI76:
	movq	__ZN8MosaicSC1CILj4EE3occE@GOTPCREL(%rip), %r13
	leaq	24(%r13), %rdx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	0(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	salq	$3, %rax
	movq	(%rcx,%rax), %rcx
	cmpl	$1, (%rcx,%rdx,4)
	jne	L77
	movq	(%rbx), %rcx
	movq	(%rcx,%rax), %rax
	cmpq	$4, (%rax,%rdx,8)
	je	L78
L77:
	movq	%r12, %rcx
	movq	%r15, %rsi
	leaq	8(%r13), %rdx
	movq	%r14, %rdi
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	leaq	(%rax,%rax,2), %rsi
	movq	0(%rbp), %rax
	salq	$3, %rsi
	movq	(%rax,%rsi), %rcx
	xorl	%eax, %eax
	cmpl	$-1, (%rcx,%rdx,4)
	je	L85
L80:
	addq	$8, %rsp
LCFI77:
	popq	%rbx
LCFI78:
	popq	%rbp
LCFI79:
	popq	%r12
LCFI80:
	popq	%r13
LCFI81:
	popq	%r14
LCFI82:
	popq	%r15
LCFI83:
	ret
	.align 4,0x90
L85:
LCFI84:
	movq	(%rbx), %rcx
	movq	(%rcx,%rsi), %rcx
	cmpq	$4, (%rcx,%rdx,8)
	jne	L80
L78:
	addq	$8, %rsp
LCFI85:
	movl	$1, %eax
	popq	%rbx
LCFI86:
	popq	%rbp
LCFI87:
	popq	%r12
LCFI88:
	popq	%r13
LCFI89:
	popq	%r14
LCFI90:
	popq	%r15
LCFI91:
	ret
	.align 4,0x90
L84:
LCFI92:
	movl	$1, %eax
	ret
LFE6373:
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_c4.cpp:
LFB7312:
	subq	$8, %rsp
LCFI93:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI94:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE7312:
	.globl __ZTSN8MosaicSC5BaseCE
	.weak_definition __ZTSN8MosaicSC5BaseCE
	.const
	.align 4
__ZTSN8MosaicSC5BaseCE:
	.ascii "N8MosaicSC5BaseCE\0"
	.globl __ZTIN8MosaicSC5BaseCE
	.weak_definition __ZTIN8MosaicSC5BaseCE
	.const_data
	.align 3
__ZTIN8MosaicSC5BaseCE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSN8MosaicSC5BaseCE
	.globl __ZTSN8MosaicSC1CILj4EEE
	.const
	.align 4
__ZTSN8MosaicSC1CILj4EEE:
	.ascii "N8MosaicSC1CILj4EEE\0"
	.globl __ZTIN8MosaicSC1CILj4EEE
	.const_data
	.align 3
__ZTIN8MosaicSC1CILj4EEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSN8MosaicSC1CILj4EEE
	.quad	__ZTIN8MosaicSC5BaseCE
	.globl __ZTVN8MosaicSC1CILj4EEE
	.align 3
__ZTVN8MosaicSC1CILj4EEE:
	.quad	0
	.quad	__ZTIN8MosaicSC1CILj4EEE
	.quad	__ZN8MosaicSC1CILj4EED1Ev
	.quad	__ZN8MosaicSC1CILj4EED0Ev
	.quad	__ZN8MosaicSC1CILj4EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm
	.quad	__ZN8MosaicSC1CILj4EE8get_connEm
	.quad	__ZNK8MosaicSC1CILj4EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE
	.globl __ZN8MosaicSC1CILj4EE3itrE
	.weak_definition __ZN8MosaicSC1CILj4EE3itrE
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
	.globl __ZN8MosaicSC1CILj4EE3phbE
	.weak_definition __ZN8MosaicSC1CILj4EE3phbE
	.align 5
__ZN8MosaicSC1CILj4EE3phbE:
	.long	1
	.long	1
	.quad	1
	.quad	-1
	.quad	-2
	.quad	0
	.ascii "04 01 a\0"
	.quad	1
	.quad	2
	.long	1
	.long	1
	.quad	1
	.quad	-1
	.quad	-1
	.quad	0
	.ascii "04 01 b\0"
	.quad	1
	.quad	1
	.long	1
	.long	1
	.quad	1
	.quad	-1
	.quad	0
	.quad	0
	.ascii "04 01 c\0"
	.quad	1
	.quad	0
	.long	1
	.long	1
	.quad	2
	.quad	-1
	.quad	0
	.quad	0
	.ascii "04 02  \0"
	.quad	1
	.quad	0
	.long	1
	.long	1
	.quad	4
	.quad	0
	.quad	-1
	.quad	0
	.ascii "04 04 a\0"
	.quad	0
	.quad	1
	.long	1
	.long	1
	.quad	4
	.quad	0
	.quad	1
	.quad	0
	.ascii "04 04 b\0"
	.quad	0
	.quad	-1
	.long	1
	.long	0
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.ascii "04 03  \0"
	.quad	-1
	.quad	0
	.globl __ZN8MosaicSC1CILj4EE3occE
	.weak_definition __ZN8MosaicSC1CILj4EE3occE
	.align 5
__ZN8MosaicSC1CILj4EE3occE:
	.long	1
	.space 4
	.quad	1
	.quad	0
	.quad	-1
	.quad	0
	.globl __ZN8MosaicSC1CILj4EE4typeE
	.weak_definition __ZN8MosaicSC1CILj4EE4typeE
	.const
	.align 3
__ZN8MosaicSC1CILj4EE4typeE:
	.quad	4
	.static_data
__ZStL8__ioinit:
	.space	1
	.literal4
	.align 2
lC1:
	.long	2139095040
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
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
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB6350-.
	.set L$set$2,LFE6350-LFB6350
	.quad L$set$2
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB7289-.
	.set L$set$4,LFE7289-LFB7289
	.quad L$set$4
	.byte	0x8
	.quad	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB6372-.
	.set L$set$6,LFE6372-LFB6372
	.quad L$set$6
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$7,LCFI0-LFB6372
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI1-LCFI0
	.long L$set$8
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$9,LCFI2-LCFI1
	.long L$set$9
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$10,LCFI3-LCFI2
	.long L$set$10
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$18,LCFI11-LCFI10
	.long L$set$18
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$19,LCFI12-LCFI11
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$20,LCFI13-LCFI12
	.long L$set$20
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$21,LEFDE7-LASFDE7
	.long L$set$21
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6378-.
	.set L$set$22,LFE6378-LFB6378
	.quad L$set$22
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$23,LCFI14-LFB6378
	.long L$set$23
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$24,LCFI15-LCFI14
	.long L$set$24
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$25,LCFI16-LCFI15
	.long L$set$25
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$26,LCFI17-LCFI16
	.long L$set$26
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$27,LCFI18-LCFI17
	.long L$set$27
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$28,LCFI19-LCFI18
	.long L$set$28
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$29,LCFI20-LCFI19
	.long L$set$29
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$30,LCFI21-LCFI20
	.long L$set$30
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$31,LEFDE9-LASFDE9
	.long L$set$31
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB7290-.
	.set L$set$32,LFE7290-LFB7290
	.quad L$set$32
	.byte	0x8
	.quad	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$33,LEFDE11-LASFDE11
	.long L$set$33
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB7323-.
	.set L$set$34,LFE7323-LFB7323
	.quad L$set$34
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$35,LCFI22-LFB7323
	.long L$set$35
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI23-LCFI22
	.long L$set$36
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$37,LEFDE13-LASFDE13
	.long L$set$37
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6357-.
	.set L$set$38,LFE6357-LFB6357
	.quad L$set$38
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$39,LCFI24-LFB6357
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$41,LEFDE15-LASFDE15
	.long L$set$41
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6358-.
	.set L$set$42,LFE6358-LFB6358
	.quad L$set$42
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$43,LCFI26-LFB6358
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI27-LCFI26
	.long L$set$44
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$45,LCFI28-LCFI27
	.long L$set$45
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$46,LCFI29-LCFI28
	.long L$set$46
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$47,LCFI30-LCFI29
	.long L$set$47
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$48,LEFDE17-LASFDE17
	.long L$set$48
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB6361-.
	.set L$set$49,LFE6361-LFB6361
	.quad L$set$49
	.byte	0x8
	.quad	LLSDA6361-.
	.byte	0x4
	.set L$set$50,LCFI31-LFB6361
	.long L$set$50
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$57,LCFI38-LCFI37
	.long L$set$57
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$58,LCFI39-LCFI38
	.long L$set$58
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$59,LCFI40-LCFI39
	.long L$set$59
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$60,LCFI41-LCFI40
	.long L$set$60
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$61,LCFI42-LCFI41
	.long L$set$61
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$62,LCFI43-LCFI42
	.long L$set$62
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$63,LCFI44-LCFI43
	.long L$set$63
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$64,LCFI45-LCFI44
	.long L$set$64
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$65,LCFI46-LCFI45
	.long L$set$65
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$66,LCFI47-LCFI46
	.long L$set$66
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$67,LCFI48-LCFI47
	.long L$set$67
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$68,LCFI49-LCFI48
	.long L$set$68
	.byte	0xb
	.byte	0x4
	.set L$set$69,LCFI50-LCFI49
	.long L$set$69
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$70,LCFI51-LCFI50
	.long L$set$70
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$71,LCFI52-LCFI51
	.long L$set$71
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$72,LCFI53-LCFI52
	.long L$set$72
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$73,LCFI54-LCFI53
	.long L$set$73
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$74,LCFI55-LCFI54
	.long L$set$74
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$75,LCFI56-LCFI55
	.long L$set$75
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$76,LCFI57-LCFI56
	.long L$set$76
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$77,LCFI58-LCFI57
	.long L$set$77
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$78,LCFI59-LCFI58
	.long L$set$78
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$79,LCFI60-LCFI59
	.long L$set$79
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$80,LCFI61-LCFI60
	.long L$set$80
	.byte	0xb
	.byte	0x4
	.set L$set$81,LCFI62-LCFI61
	.long L$set$81
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$82,LCFI63-LCFI62
	.long L$set$82
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$83,LCFI64-LCFI63
	.long L$set$83
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$84,LCFI65-LCFI64
	.long L$set$84
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$85,LCFI66-LCFI65
	.long L$set$85
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$86,LCFI67-LCFI66
	.long L$set$86
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$87,LCFI68-LCFI67
	.long L$set$87
	.byte	0xe
	.byte	0x68
	.byte	0x4
	.set L$set$88,LCFI69-LCFI68
	.long L$set$88
	.byte	0xe
	.byte	0x60
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$89,LEFDE19-LASFDE19
	.long L$set$89
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6373-.
	.set L$set$90,LFE6373-LFB6373
	.quad L$set$90
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$91,LCFI70-LFB6373
	.long L$set$91
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$92,LCFI71-LCFI70
	.long L$set$92
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$93,LCFI72-LCFI71
	.long L$set$93
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$94,LCFI73-LCFI72
	.long L$set$94
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$95,LCFI74-LCFI73
	.long L$set$95
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$96,LCFI75-LCFI74
	.long L$set$96
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$97,LCFI76-LCFI75
	.long L$set$97
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$98,LCFI77-LCFI76
	.long L$set$98
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$99,LCFI78-LCFI77
	.long L$set$99
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$100,LCFI79-LCFI78
	.long L$set$100
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$101,LCFI80-LCFI79
	.long L$set$101
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$102,LCFI81-LCFI80
	.long L$set$102
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$103,LCFI82-LCFI81
	.long L$set$103
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$104,LCFI83-LCFI82
	.long L$set$104
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$105,LCFI84-LCFI83
	.long L$set$105
	.byte	0xb
	.byte	0x4
	.set L$set$106,LCFI85-LCFI84
	.long L$set$106
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$107,LCFI86-LCFI85
	.long L$set$107
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$108,LCFI87-LCFI86
	.long L$set$108
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$109,LCFI88-LCFI87
	.long L$set$109
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$110,LCFI89-LCFI88
	.long L$set$110
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$111,LCFI90-LCFI89
	.long L$set$111
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$112,LCFI91-LCFI90
	.long L$set$112
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$113,LCFI92-LCFI91
	.long L$set$113
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$114,LEFDE21-LASFDE21
	.long L$set$114
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7312-.
	.set L$set$115,LFE7312-LFB7312
	.quad L$set$115
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$116,LCFI93-LFB7312
	.long L$set$116
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$117,LCFI94-LCFI93
	.long L$set$117
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE21:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_c4.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
