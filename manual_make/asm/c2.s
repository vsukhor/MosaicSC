	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EE8get_connEm
	.weak_definition __ZN8MosaicSC1CILj2EE8get_connEm
__ZN8MosaicSC1CILj2EE8get_connEm:
LFB6350:
	movl	40(%rdi,%rsi,4), %eax
	ret
LFE6350:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EED1Ev
	.weak_definition __ZN8MosaicSC1CILj2EED1Ev
__ZN8MosaicSC1CILj2EED1Ev:
LFB7283:
	ret
LFE7283:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNK8MosaicSC1CILj2EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE
__ZNK8MosaicSC1CILj2EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE:
LFB6374:
	pushq	%r12
LCFI0:
	movl	$8, %edx
	movq	%rdi, %r12
	pushq	%rbp
LCFI1:
	movq	%rsi, %rbp
	leaq	8(%rdi), %rsi
	pushq	%rbx
LCFI2:
	movq	%rbp, %rdi
	subq	$16, %rsp
LCFI3:
	call	__ZNSo5writeEPKcl
	movq	__ZN8MosaicSC1CILj2EE4typeE@GOTPCREL(%rip), %rsi
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
	addq	$48, %r12
	movq	%rax, 8(%rsp)
	call	__ZNSo5writeEPKcl
	.align 4,0x90
L5:
	movq	%rbx, %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	__ZNSo5writeEPKcl
	cmpq	%r12, %rbx
	jne	L5
	addq	$16, %rsp
LCFI4:
	popq	%rbx
LCFI5:
	popq	%rbp
LCFI6:
	popq	%r12
LCFI7:
	ret
LFE6374:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm
	.weak_definition __ZN8MosaicSC1CILj2EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm
__ZN8MosaicSC1CILj2EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm:
LFB6372:
	pushq	%r13
LCFI8:
	movq	%rdx, %r13
	pushq	%r12
LCFI9:
	movq	%rsi, %r12
	pushq	%rbp
LCFI10:
	pushq	%rbx
LCFI11:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI12:
	movq	__ZN8MosaicSC1CILj2EE3itrE@GOTPCREL(%rip), %rbp
	movl	16(%rdi), %eax
	leaq	48(%rbp), %rdx
	cmpl	%eax, 0(%rbp)
	jne	L9
	leaq	16(%rbp), %rdx
L9:
	movq	32(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%r13, %rcx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	(%r12), %rsi
	movq	8(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rsi,%rax,8), %rax
	movq	(%rax), %rax
	cmpq	%rcx, (%rax,%rdx,8)
	leaq	112(%rbp), %rdx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 40(%rbx)
	movl	16(%rbx), %eax
	cmpl	%eax, 64(%rbp)
	jne	L10
	leaq	80(%rbp), %rdx
L10:
	movq	32(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%r13, %rcx
	call	__ZN8MosaicSC5BaseC8positionEmmPKlPKm
	movq	(%r12), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	72(%rbp), %rcx
	movq	(%rax), %rax
	cmpq	%rcx, (%rax,%rdx,8)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 44(%rbx)
	addq	$8, %rsp
LCFI13:
	popq	%rbx
LCFI14:
	popq	%rbp
LCFI15:
	popq	%r12
LCFI16:
	popq	%r13
LCFI17:
	ret
LFE6372:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EED0Ev
	.weak_definition __ZN8MosaicSC1CILj2EED0Ev
__ZN8MosaicSC1CILj2EED0Ev:
LFB7284:
	movl	$48, %esi
	jmp	__ZdlPvm
LFE7284:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EEC2EmiRKSt5arrayImLm2EE
__ZN8MosaicSC1CILj2EEC2EmiRKSt5arrayImLm2EE:
LFB7315:
	pushq	%rbx
LCFI18:
	movq	%rdi, %rbx
	call	__ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE
	movq	__ZTVN8MosaicSC1CILj2EEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	popq	%rbx
LCFI19:
	ret
LFE7315:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EEC1EmiRKSt5arrayImLm2EE
__ZN8MosaicSC1CILj2EEC1EmiRKSt5arrayImLm2EE:
LFB6357:
	pushq	%rbx
LCFI20:
	movq	%rdi, %rbx
	call	__ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE
	movq	__ZTVN8MosaicSC1CILj2EEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	popq	%rbx
LCFI21:
	ret
LFE6357:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm
__ZN8MosaicSC1CILj2EE10initializeERKSt5arrayImLm2EERSt6vectorIS6_ImSaImEESaIS8_EERS6_IS6_IiSaIiEESaISD_EEm:
LFB6358:
	movq	__ZN8MosaicSC5BaseC3spsE@GOTPCREL(%rip), %r9
	pushq	%r14
LCFI22:
	pushq	%rbx
LCFI23:
	movq	(%rdi), %r8
	movq	(%r9), %r9
	movq	8(%rdi), %rax
	cmpq	$1, %r8
	sbbl	%edi, %edi
	movq	136(%r9), %r10
	andl	$2, %edi
	subl	$1, %edi
	cmpq	$0, 8(%r10)
	je	L28
	movq	(%rdx), %r11
	movq	(%rsi), %rbx
	xorl	%edx, %edx
	jmp	L23
	.align 4,0x90
L36:
	cmpq	%rax, %rcx
	jne	L30
	movq	96(%rbx), %rax
	addq	$1, %rdx
	movq	$2, (%rax)
	movq	96(%r11), %rax
	movl	$-1, (%rax)
	cmpq	8(%r10), %rdx
	jnb	L35
	movl	$-1, %edi
	movl	$1, %esi
	movl	$4, %r8d
L26:
	movq	%rsi, %rax
L23:
	cmpl	$1, %edi
	je	L36
L30:
	leaq	(%r8,%r8,2), %r9
	leaq	1(%rax), %rsi
	addq	$1, %rdx
	movq	(%rbx,%r9,8), %r14
	movq	(%r11,%r9,8), %r9
	movq	$2, (%r14,%rax,8)
	movl	%edi, (%r9,%rax,4)
	cmpq	8(%r10), %rdx
	jb	L26
L22:
	vmovd	%r8, %xmm1
	vpinsrq	$1, %rsi, %xmm1, %xmm0
	vmovaps	%xmm0, -24(%rsp)
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %rdx
	popq	%rbx
LCFI24:
	popq	%r14
LCFI25:
	ret
	.align 4,0x90
L35:
LCFI26:
	movl	$1, %esi
	movl	$4, %r8d
	jmp	L22
	.align 4,0x90
L28:
	movq	%rax, %rsi
	jmp	L22
LFE6358:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
__ZN8MosaicSC1CILj2EE12hamming_distEmmiRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm:
LFB6361:
	pushq	%r15
LCFI27:
	movq	%r9, %r15
	pushq	%r14
LCFI28:
	movq	%r8, %r14
	pushq	%r13
LCFI29:
	movq	%rcx, %r13
	pushq	%r12
LCFI30:
	movq	%rsi, %r12
	pushq	%rbp
LCFI31:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI32:
	movl	%edx, %ebx
	subq	$24, %rsp
LCFI33:
	movq	__ZN8MosaicSC1CILj2EE3phbE@GOTPCREL(%rip), %r10
	movl	(%r10), %eax
	cmpl	%edx, %eax
	je	L94
L38:
	cmpl	$1, %eax
	je	L76
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L40:
	cmpl	%ebx, %eax
	je	L95
L41:
	movl	64(%r10), %eax
	cmpl	%ebx, %eax
	je	L96
L44:
	cmpl	$1, %eax
	je	L79
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
	cmpl	%ebx, %eax
	je	L97
L46:
	movl	128(%r10), %eax
	cmpl	%eax, %ebx
	je	L98
L49:
	cmpl	$1, %eax
	je	L82
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L50:
	cmpl	%eax, %ebx
	je	L99
L51:
	movl	192(%r10), %eax
	cmpl	%eax, %ebx
	je	L100
L54:
	cmpl	$1, %eax
	je	L85
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L55:
	cmpl	%eax, %ebx
	je	L101
L56:
	movq	__ZN8MosaicSC1CILj2EE3itrE@GOTPCREL(%rip), %r10
	movl	(%r10), %eax
	cmpl	%ebx, %eax
	je	L59
L60:
	cmpl	$1, %eax
	je	L102
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L67:
	vxorps	%xmm0, %xmm0, %xmm0
	cmpl	%ebx, %eax
	je	L103
L63:
	movl	64(%r10), %eax
	cmpl	%ebx, %eax
	je	L68
L75:
	cmpl	$1, %eax
	je	L104
	cmpl	$-1, %eax
	movl	$1, %edx
	cmove	%edx, %eax
L74:
	cmpl	%ebx, %eax
	je	L105
L70:
	movq	__ZN8MosaicSC5BaseC2phE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	addq	$24, %rsp
LCFI34:
	popq	%rbx
LCFI35:
	popq	%rbp
LCFI36:
	popq	%r12
LCFI37:
	popq	%r13
LCFI38:
	popq	%r14
LCFI39:
	popq	%r15
LCFI40:
	jmp	*%rax
	.align 4,0x90
L79:
LCFI41:
	movl	$-1, %eax
	cmpl	%ebx, %eax
	jne	L46
L97:
	movl	68(%r10), %esi
	cmpl	$1, %esi
	je	L106
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L48:
	movq	72(%r10), %rdi
	pushq	%r15
LCFI42:
	leaq	112(%r10), %r8
	movq	%r12, %rcx
	pushq	%r14
LCFI43:
	movq	%rbp, %rdx
	movq	%r13, %r9
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rdx
LCFI44:
	popq	%rcx
LCFI45:
	movq	(%rsp), %r10
	testb	%al, %al
	je	L46
L61:
	vmovss	lC1(%rip), %xmm0
	addq	$24, %rsp
LCFI46:
	popq	%rbx
LCFI47:
	popq	%rbp
LCFI48:
	popq	%r12
LCFI49:
	popq	%r13
LCFI50:
	popq	%r14
LCFI51:
	popq	%r15
LCFI52:
	ret
	.align 4,0x90
L95:
LCFI53:
	movl	4(%r10), %esi
	cmpl	$1, %esi
	je	L107
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L43:
	movq	8(%r10), %rdi
	pushq	%r15
LCFI54:
	leaq	48(%r10), %r8
	movq	%r13, %r9
	pushq	%r14
LCFI55:
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r8
LCFI56:
	popq	%r9
LCFI57:
	movq	(%rsp), %r10
	testb	%al, %al
	jne	L61
	jmp	L41
	.align 4,0x90
L76:
	movl	$-1, %eax
	jmp	L40
	.align 4,0x90
L94:
	movl	4(%r10), %esi
	movq	8(%r10), %rdi
	pushq	%r9
LCFI58:
	movq	%rbp, %rdx
	pushq	%r8
LCFI59:
	movq	%rcx, %r9
	leaq	16(%r10), %r8
	movq	%r12, %rcx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r10
LCFI60:
	popq	%r11
LCFI61:
	testb	%al, %al
	jne	L61
	movq	(%rsp), %r10
	movl	(%r10), %eax
	jmp	L38
	.align 4,0x90
L85:
	movl	$-1, %eax
	jmp	L55
	.align 4,0x90
L106:
	movl	$-1, %esi
	jmp	L48
	.align 4,0x90
L103:
	movl	4(%r10), %esi
	cmpl	$1, %esi
	je	L108
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L66:
	movq	8(%r10), %rdi
	pushq	%r15
LCFI62:
	leaq	48(%r10), %r8
	movq	%r13, %r9
	pushq	%r14
LCFI63:
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r10
LCFI64:
	vxorps	%xmm0, %xmm0, %xmm0
	popq	%r11
LCFI65:
	testb	%al, %al
	movq	(%rsp), %r10
	je	L63
L65:
	movq	32(%r10), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vaddss	(%rax), %xmm0, %xmm0
	movl	64(%r10), %eax
	cmpl	%ebx, %eax
	jne	L75
L68:
	vmovss	%xmm0, 12(%rsp)
	movl	68(%r10), %esi
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	72(%r10), %rdi
	pushq	%r15
LCFI66:
	leaq	80(%r10), %r8
	movq	%r13, %r9
	pushq	%r14
LCFI67:
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rdx
LCFI68:
	popq	%rcx
LCFI69:
	testb	%al, %al
	movq	(%rsp), %r10
	vmovss	12(%rsp), %xmm0
	jne	L72
	movl	64(%r10), %eax
	jmp	L75
	.align 4,0x90
L102:
	movl	$-1, %eax
	jmp	L67
	.align 4,0x90
L99:
	movl	132(%r10), %esi
	cmpl	$1, %esi
	je	L109
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L53:
	movq	136(%r10), %rdi
	pushq	%r15
LCFI70:
	movq	%r13, %r9
	movq	%r12, %rcx
	pushq	%r14
LCFI71:
	leaq	176(%r10), %r8
	movq	%rbp, %rdx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r8
LCFI72:
	popq	%r9
LCFI73:
	movq	(%rsp), %r10
	testb	%al, %al
	jne	L61
	jmp	L51
	.align 4,0x90
L59:
	movl	4(%r10), %esi
	movq	8(%r10), %rdi
	pushq	%r15
LCFI74:
	leaq	16(%r10), %r8
	pushq	%r14
LCFI75:
	movq	%r13, %r9
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r8
LCFI76:
	popq	%r9
LCFI77:
	testb	%al, %al
	movq	(%rsp), %r10
	jne	L65
	movl	(%r10), %eax
	jmp	L60
	.align 4,0x90
L82:
	movl	$-1, %eax
	jmp	L50
	.align 4,0x90
L96:
	movl	68(%r10), %esi
	movq	72(%r10), %rdi
	pushq	%r15
LCFI78:
	movq	%r13, %r9
	pushq	%r14
LCFI79:
	leaq	80(%r10), %r8
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rsi
LCFI80:
	popq	%rdi
LCFI81:
	testb	%al, %al
	jne	L61
	movq	(%rsp), %r10
	movl	64(%r10), %eax
	jmp	L44
	.align 4,0x90
L105:
	movl	68(%r10), %esi
	cmpl	$1, %esi
	je	L110
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L73:
	vmovss	%xmm0, 12(%rsp)
	movq	72(%r10), %rdi
	movq	%r13, %r9
	movq	%r12, %rcx
	pushq	%r15
LCFI82:
	leaq	112(%r10), %r8
	movq	%rbp, %rdx
	pushq	%r14
LCFI83:
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rsi
LCFI84:
	popq	%rdi
LCFI85:
	testb	%al, %al
	movq	(%rsp), %r10
	vmovss	12(%rsp), %xmm0
	je	L70
L72:
	movq	96(%r10), %rax
	vaddss	(%rax), %xmm0, %xmm0
	jmp	L70
	.align 4,0x90
L104:
	movl	$-1, %eax
	jmp	L74
	.align 4,0x90
L107:
	movl	$-1, %esi
	jmp	L43
	.align 4,0x90
L101:
	movl	196(%r10), %esi
	cmpl	$1, %esi
	je	L111
	cmpl	$-1, %esi
	movl	$1, %eax
	cmove	%eax, %esi
L58:
	movq	200(%r10), %rdi
	pushq	%r15
LCFI86:
	movq	%r12, %rcx
	movq	%rbp, %rdx
	pushq	%r14
LCFI87:
	movq	%r13, %r9
	leaq	240(%r10), %r8
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rdx
LCFI88:
	popq	%rcx
LCFI89:
	testb	%al, %al
	jne	L61
	jmp	L56
	.align 4,0x90
L98:
	movl	132(%r10), %esi
	movq	%r13, %r9
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	136(%r10), %rdi
	pushq	%r15
LCFI90:
	leaq	144(%r10), %r8
	pushq	%r14
LCFI91:
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%r10
LCFI92:
	popq	%r11
LCFI93:
	testb	%al, %al
	jne	L61
	movq	(%rsp), %r10
	movl	128(%r10), %eax
	jmp	L49
	.align 4,0x90
L108:
	movl	$-1, %esi
	jmp	L66
	.align 4,0x90
L100:
	movl	196(%r10), %esi
	movq	%r13, %r9
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	200(%r10), %rdi
	pushq	%r15
LCFI94:
	leaq	208(%r10), %r8
	pushq	%r14
LCFI95:
	movq	%r10, 16(%rsp)
	call	__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
	popq	%rsi
LCFI96:
	popq	%rdi
LCFI97:
	testb	%al, %al
	jne	L61
	movq	(%rsp), %r10
	movl	192(%r10), %eax
	jmp	L54
	.align 4,0x90
L109:
	movl	$-1, %esi
	jmp	L53
	.align 4,0x90
L110:
	movl	$-1, %esi
	jmp	L73
	.align 4,0x90
L111:
	movl	$-1, %esi
	jmp	L58
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
	.globl __ZN8MosaicSC1CILj2EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm
__ZN8MosaicSC1CILj2EE16node_is_occupiedEmmRKSt6vectorIS2_ImSaImEESaIS4_EERKS2_IS2_IiSaIiEESaISA_EEPKm:
LFB6373:
	movq	(%rdx), %rcx
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	cmpq	$2, (%rax,%rsi,8)
	sete	%al
	ret
LFE6373:
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_c2.cpp:
LFB7306:
	subq	$8, %rsp
LCFI98:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI99:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE7306:
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
	.globl __ZTSN8MosaicSC1CILj2EEE
	.weak_definition __ZTSN8MosaicSC1CILj2EEE
	.const
	.align 4
__ZTSN8MosaicSC1CILj2EEE:
	.ascii "N8MosaicSC1CILj2EEE\0"
	.globl __ZTIN8MosaicSC1CILj2EEE
	.weak_definition __ZTIN8MosaicSC1CILj2EEE
	.const_data
	.align 3
__ZTIN8MosaicSC1CILj2EEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSN8MosaicSC1CILj2EEE
	.quad	__ZTIN8MosaicSC5BaseCE
	.globl __ZTVN8MosaicSC1CILj2EEE
	.weak_definition __ZTVN8MosaicSC1CILj2EEE
	.align 3
__ZTVN8MosaicSC1CILj2EEE:
	.quad	0
	.quad	__ZTIN8MosaicSC1CILj2EEE
	.quad	__ZN8MosaicSC1CILj2EED1Ev
	.quad	__ZN8MosaicSC1CILj2EED0Ev
	.quad	__ZN8MosaicSC1CILj2EE8set_connERKSt6vectorIS2_ImSaImEESaIS4_EEPKm
	.quad	__ZN8MosaicSC1CILj2EE8get_connEm
	.quad	__ZNK8MosaicSC1CILj2EE5writeERSt14basic_ofstreamIcSt11char_traitsIcEE
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
	.globl __ZN8MosaicSC1CILj2EE3phbE
	.weak_definition __ZN8MosaicSC1CILj2EE3phbE
	.align 5
__ZN8MosaicSC1CILj2EE3phbE:
	.long	1
	.long	1
	.quad	1
	.quad	0
	.quad	-2
	.quad	0
	.ascii "02 01+a\0"
	.quad	0
	.quad	2
	.long	1
	.long	1
	.quad	1
	.quad	0
	.quad	-1
	.quad	0
	.ascii "02 01+b\0"
	.quad	0
	.quad	1
	.long	1
	.long	0
	.quad	3
	.quad	2
	.quad	-1
	.quad	0
	.ascii "02 03  \0"
	.quad	-2
	.quad	1
	.long	1
	.long	1
	.quad	4
	.quad	1
	.quad	0
	.quad	0
	.ascii "02 04  \0"
	.quad	-1
	.quad	0
	.globl __ZN8MosaicSC1CILj2EE4typeE
	.weak_definition __ZN8MosaicSC1CILj2EE4typeE
	.const
	.align 3
__ZN8MosaicSC1CILj2EE4typeE:
	.quad	2
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
	.quad	LFB7283-.
	.set L$set$4,LFE7283-LFB7283
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
	.quad	LFB6374-.
	.set L$set$6,LFE6374-LFB6374
	.quad L$set$6
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$7,LCFI0-LFB6374
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI1-LCFI0
	.long L$set$8
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$9,LCFI2-LCFI1
	.long L$set$9
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$10,LCFI3-LCFI2
	.long L$set$10
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$15,LEFDE7-LASFDE7
	.long L$set$15
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6372-.
	.set L$set$16,LFE6372-LFB6372
	.quad L$set$16
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$17,LCFI8-LFB6372
	.long L$set$17
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$18,LCFI9-LCFI8
	.long L$set$18
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$19,LCFI10-LCFI9
	.long L$set$19
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$20,LCFI11-LCFI10
	.long L$set$20
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$21,LCFI12-LCFI11
	.long L$set$21
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$22,LCFI13-LCFI12
	.long L$set$22
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$23,LCFI14-LCFI13
	.long L$set$23
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$24,LCFI15-LCFI14
	.long L$set$24
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$25,LCFI16-LCFI15
	.long L$set$25
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$26,LCFI17-LCFI16
	.long L$set$26
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$27,LEFDE9-LASFDE9
	.long L$set$27
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB7284-.
	.set L$set$28,LFE7284-LFB7284
	.quad L$set$28
	.byte	0x8
	.quad	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$29,LEFDE11-LASFDE11
	.long L$set$29
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB7315-.
	.set L$set$30,LFE7315-LFB7315
	.quad L$set$30
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$31,LCFI18-LFB7315
	.long L$set$31
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$33,LEFDE13-LASFDE13
	.long L$set$33
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6357-.
	.set L$set$34,LFE6357-LFB6357
	.quad L$set$34
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$35,LCFI20-LFB6357
	.long L$set$35
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI21-LCFI20
	.long L$set$36
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$37,LEFDE15-LASFDE15
	.long L$set$37
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6358-.
	.set L$set$38,LFE6358-LFB6358
	.quad L$set$38
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$39,LCFI22-LFB6358
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI23-LCFI22
	.long L$set$40
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$41,LCFI24-LCFI23
	.long L$set$41
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$42,LCFI25-LCFI24
	.long L$set$42
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$43,LCFI26-LCFI25
	.long L$set$43
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$44,LEFDE17-LASFDE17
	.long L$set$44
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB6361-.
	.set L$set$45,LFE6361-LFB6361
	.quad L$set$45
	.byte	0x8
	.quad	LLSDA6361-.
	.byte	0x4
	.set L$set$46,LCFI27-LFB6361
	.long L$set$46
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$47,LCFI28-LCFI27
	.long L$set$47
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$48,LCFI29-LCFI28
	.long L$set$48
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$49,LCFI30-LCFI29
	.long L$set$49
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$50,LCFI31-LCFI30
	.long L$set$50
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$57,LCFI38-LCFI37
	.long L$set$57
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$58,LCFI39-LCFI38
	.long L$set$58
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$59,LCFI40-LCFI39
	.long L$set$59
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$60,LCFI41-LCFI40
	.long L$set$60
	.byte	0xb
	.byte	0x4
	.set L$set$61,LCFI42-LCFI41
	.long L$set$61
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$62,LCFI43-LCFI42
	.long L$set$62
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$63,LCFI44-LCFI43
	.long L$set$63
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$64,LCFI45-LCFI44
	.long L$set$64
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$65,LCFI46-LCFI45
	.long L$set$65
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$66,LCFI47-LCFI46
	.long L$set$66
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$67,LCFI48-LCFI47
	.long L$set$67
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$68,LCFI49-LCFI48
	.long L$set$68
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$69,LCFI50-LCFI49
	.long L$set$69
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$70,LCFI51-LCFI50
	.long L$set$70
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$71,LCFI52-LCFI51
	.long L$set$71
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$72,LCFI53-LCFI52
	.long L$set$72
	.byte	0xb
	.byte	0x4
	.set L$set$73,LCFI54-LCFI53
	.long L$set$73
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$74,LCFI55-LCFI54
	.long L$set$74
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$75,LCFI56-LCFI55
	.long L$set$75
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$76,LCFI57-LCFI56
	.long L$set$76
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$77,LCFI58-LCFI57
	.long L$set$77
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$78,LCFI59-LCFI58
	.long L$set$78
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$79,LCFI60-LCFI59
	.long L$set$79
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$80,LCFI61-LCFI60
	.long L$set$80
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$81,LCFI62-LCFI61
	.long L$set$81
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$82,LCFI63-LCFI62
	.long L$set$82
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$83,LCFI64-LCFI63
	.long L$set$83
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$84,LCFI65-LCFI64
	.long L$set$84
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$85,LCFI66-LCFI65
	.long L$set$85
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$86,LCFI67-LCFI66
	.long L$set$86
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$87,LCFI68-LCFI67
	.long L$set$87
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$88,LCFI69-LCFI68
	.long L$set$88
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$89,LCFI70-LCFI69
	.long L$set$89
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$90,LCFI71-LCFI70
	.long L$set$90
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$91,LCFI72-LCFI71
	.long L$set$91
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$92,LCFI73-LCFI72
	.long L$set$92
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$93,LCFI74-LCFI73
	.long L$set$93
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$94,LCFI75-LCFI74
	.long L$set$94
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$95,LCFI76-LCFI75
	.long L$set$95
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$96,LCFI77-LCFI76
	.long L$set$96
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$97,LCFI78-LCFI77
	.long L$set$97
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$98,LCFI79-LCFI78
	.long L$set$98
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$99,LCFI80-LCFI79
	.long L$set$99
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$100,LCFI81-LCFI80
	.long L$set$100
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$101,LCFI82-LCFI81
	.long L$set$101
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$102,LCFI83-LCFI82
	.long L$set$102
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$103,LCFI84-LCFI83
	.long L$set$103
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$104,LCFI85-LCFI84
	.long L$set$104
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$105,LCFI86-LCFI85
	.long L$set$105
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$106,LCFI87-LCFI86
	.long L$set$106
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$107,LCFI88-LCFI87
	.long L$set$107
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$108,LCFI89-LCFI88
	.long L$set$108
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$109,LCFI90-LCFI89
	.long L$set$109
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$110,LCFI91-LCFI90
	.long L$set$110
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$111,LCFI92-LCFI91
	.long L$set$111
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$112,LCFI93-LCFI92
	.long L$set$112
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$113,LCFI94-LCFI93
	.long L$set$113
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$114,LCFI95-LCFI94
	.long L$set$114
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$115,LCFI96-LCFI95
	.long L$set$115
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$116,LCFI97-LCFI96
	.long L$set$116
	.byte	0xe
	.byte	0x50
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$117,LEFDE19-LASFDE19
	.long L$set$117
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6373-.
	.set L$set$118,LFE6373-LFB6373
	.quad L$set$118
	.byte	0x8
	.quad	0
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$119,LEFDE21-LASFDE21
	.long L$set$119
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7306-.
	.set L$set$120,LFE7306-LFB7306
	.quad L$set$120
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$121,LCFI98-LFB7306
	.long L$set$121
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$122,LCFI99-LCFI98
	.long L$set$122
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE21:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_c2.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
