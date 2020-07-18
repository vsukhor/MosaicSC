	.text
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseC5fun_hEf
	.weak_definition __ZN8MosaicSC5BaseC5fun_hEf
__ZN8MosaicSC5BaseC5fun_hEf:
LFB6348:
	vxorps	lC0(%rip), %xmm0, %xmm0
	ret
LFE6348:
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseC6fun_hsEf
	.weak_definition __ZN8MosaicSC5BaseC6fun_hsEf
__ZN8MosaicSC5BaseC6fun_hsEf:
LFB6347:
	subq	$8, %rsp
LCFI0:
	vmovss	__ZN8MosaicSC5BaseC3synE(%rip), %xmm1
	call	_powf
	vxorps	lC0(%rip), %xmm0, %xmm0
	addq	$8, %rsp
LCFI1:
	ret
LFE6347:
	.cstring
lC1:
	.ascii "%ld\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.37:
LFB7317:
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
	je	L16
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, -144(%rbp)
	vmovaps	%xmm2, -128(%rbp)
	vmovaps	%xmm3, -112(%rbp)
	vmovaps	%xmm4, -96(%rbp)
	vmovaps	%xmm5, -80(%rbp)
	vmovaps	%xmm6, -64(%rbp)
	vmovaps	%xmm7, -48(%rbp)
L16:
	subq	$64, %rsp
	leaq	16(%rbp), %rax
	leaq	-232(%rbp), %rcx
	movl	$32, %esi
	leaq	31(%rsp), %r13
	movq	%rax, -224(%rbp)
	leaq	lC1(%rip), %rdx
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
	jg	L26
	cmpq	$1, %r14
	je	L27
	cmpl	$8, %ebx
	jb	L28
L9:
	movl	%ebx, %edx
	subl	$1, %ebx
	movq	-8(%r13,%rdx), %rcx
	movq	%rcx, -8(%rax,%rdx)
	cmpl	$8, %ebx
	jb	L10
	andl	$-8, %ebx
	xorl	%edx, %edx
L13:
	movl	%edx, %ecx
	addl	$8, %edx
	movq	0(%r13,%rcx), %rsi
	movq	%rsi, (%rax,%rcx)
	cmpl	%ebx, %edx
	jb	L13
	.align 4,0x90
L10:
	movq	(%r12), %rax
	jmp	L15
	.align 4,0x90
L28:
	testb	$4, %bl
	jne	L29
	testl	%ebx, %ebx
	je	L10
	movzbl	0(%r13), %edx
	movb	%dl, (%rax)
	testb	$2, %bl
	je	L10
	movl	%ebx, %ebx
	movzwl	-2(%r13,%rbx), %edx
	movw	%dx, -2(%rax,%rbx)
	jmp	L10
	.align 4,0x90
L27:
	movzbl	0(%r13), %edx
	movb	%dl, 16(%r12)
L15:
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
L26:
LCFI7:
	leaq	1(%r14), %rdi
	call	__Znwm
	movq	%r14, 16(%r12)
	movq	%rax, (%r12)
	cmpl	$8, %ebx
	jnb	L9
	jmp	L28
	.align 4,0x90
L29:
	movl	0(%r13), %edx
	movl	%ebx, %ebx
	movl	%edx, (%rax)
	movl	-4(%r13,%rbx), %edx
	movl	%edx, -4(%rax,%rbx)
	jmp	L10
LFE7317:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE
__ZN8MosaicSC5BaseCC2EmiRKSt5arrayImLm2EE:
LFB7316:
	movq	__ZTVN8MosaicSC5BaseCE@GOTPCREL(%rip), %rax
	vmovdqu	(%rcx), %xmm0
	movq	%rsi, 8(%rdi)
	movl	%edx, 16(%rdi)
	addq	$16, %rax
	vmovups	%xmm0, 24(%rdi)
	movq	%rax, (%rdi)
	ret
LFE7316:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseCC1EmiRKSt5arrayImLm2EE
__ZN8MosaicSC5BaseCC1EmiRKSt5arrayImLm2EE:
LFB6351:
	movq	__ZTVN8MosaicSC5BaseCE@GOTPCREL(%rip), %rax
	vmovdqu	(%rcx), %xmm0
	movq	%rsi, 8(%rdi)
	movl	%edx, 16(%rdi)
	addq	$16, %rax
	vmovups	%xmm0, 24(%rdi)
	movq	%rax, (%rdi)
	ret
LFE6351:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseC11set_staticsEPKNS_10ParametersE
__ZN8MosaicSC5BaseC11set_staticsEPKNS_10ParametersE:
LFB6352:
	movq	168(%rdi), %rax
	movq	%rdi, __ZN8MosaicSC5BaseC3spsE(%rip)
	vmovss	(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_1_3aE(%rip)
	vmovss	4(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_1_3bE(%rip)
	vmovss	8(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_1_4aE(%rip)
	vmovss	12(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_1_4bE(%rip)
	vmovss	16(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC5k_2_3E(%rip)
	vmovss	20(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC5k_2_4E(%rip)
	vmovss	24(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_3_4aE(%rip)
	vmovss	28(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC6k_3_4bE(%rip)
	vmovss	32(%rax), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC5k_4_4E(%rip)
	vmovss	192(%rdi), %xmm0
	vucomiss	lC2(%rip), %xmm0
	vmovss	%xmm0, __ZN8MosaicSC5BaseC3synE(%rip)
	jp	L34
	jne	L34
	movq	__ZN8MosaicSC5BaseC5fun_hEf@GOTPCREL(%rip), %rax
	movq	%rax, __ZN8MosaicSC5BaseC2phE(%rip)
	ret
	.align 4,0x90
L34:
	movq	__ZN8MosaicSC5BaseC6fun_hsEf@GOTPCREL(%rip), %rax
	movq	%rax, __ZN8MosaicSC5BaseC2phE(%rip)
	ret
LFE6352:
	.cstring
lC3:
	.ascii "basic_string::_M_create\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB7108:
	pushq	%r15
LCFI8:
	movq	%rdx, %r15
	pushq	%r14
LCFI9:
	leaq	16(%rdi), %r14
	pushq	%r13
LCFI10:
	pushq	%r12
LCFI11:
	movq	%rsi, %r12
	pushq	%rbp
LCFI12:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI13:
	movq	%r8, %rbx
	subq	%rdx, %rbx
	subq	$40, %rsp
LCFI14:
	movq	8(%rdi), %rax
	movq	%rax, %r13
	addq	%rax, %rbx
	movl	$15, %eax
	subq	%rsi, %r13
	subq	%rdx, %r13
	cmpq	(%rdi), %r14
	je	L36
	movq	16(%rdi), %rax
L36:
	testq	%rbx, %rbx
	js	L63
	cmpq	%rax, %rbx
	jbe	L62
	addq	%rax, %rax
	cmpq	%rax, %rbx
	jnb	L62
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbx
	testq	%rax, %rax
	js	L39
	leaq	1(%rax), %rdi
	movq	%rax, %rbx
	jmp	L39
	.align 4,0x90
L62:
	leaq	1(%rbx), %rdi
L39:
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	testq	%r12, %r12
	movq	0(%rbp), %r9
	movq	8(%rsp), %rcx
	movq	%rax, %r10
	movq	16(%rsp), %r8
	je	L42
	cmpq	$1, %r12
	jne	L43
	movzbl	(%r9), %eax
	movb	%al, (%r10)
L42:
	testq	%rcx, %rcx
	je	L44
	testq	%r8, %r8
	je	L44
	leaq	(%r10,%r12), %rdi
	cmpq	$1, %r8
	je	L64
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
L44:
	testq	%r13, %r13
	jne	L65
L46:
	cmpq	%r9, %r14
	je	L48
	movq	%r9, %rdi
	movq	%r10, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %r10
L48:
	movq	%r10, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$40, %rsp
LCFI15:
	popq	%rbx
LCFI16:
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
	ret
	.align 4,0x90
L65:
LCFI22:
	leaq	(%r12,%r15), %rsi
	leaq	(%r12,%r8), %rdi
	addq	%r9, %rsi
	addq	%r10, %rdi
	cmpq	$1, %r13
	jne	L47
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L46
	.align 4,0x90
L47:
	movq	%r13, %rdx
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	_memcpy
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	jmp	L46
	.align 4,0x90
L43:
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
	jmp	L42
	.align 4,0x90
L64:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r13, %r13
	je	L46
	jmp	L65
L63:
	leaq	lC3(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7108:
	.cstring
lC4:
	.ascii "basic_string::_M_replace\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
LFB7109:
	movabsq	$9223372036854775807, %rax
	pushq	%r15
LCFI23:
	pushq	%r14
LCFI24:
	pushq	%r13
LCFI25:
	pushq	%r12
LCFI26:
	movq	%rdx, %r12
	pushq	%rbp
LCFI27:
	addq	%r12, %rax
	pushq	%rbx
LCFI28:
	subq	$40, %rsp
LCFI29:
	movq	8(%rdi), %rdx
	subq	%rdx, %rax
	cmpq	%rax, %r8
	ja	L129
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
	je	L68
	movq	16(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	L69
L104:
	addq	%rax, %r13
	testq	%r9, %r9
	setne	%r10b
	cmpq	%rbp, %r12
	setne	%sil
	andl	%esi, %r10d
	cmpq	%rax, %rcx
	jnb	L130
L70:
	testb	%r10b, %r10b
	je	L74
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L131
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L74:
	testq	%rbp, %rbp
	je	L127
	cmpq	$1, %rbp
	jne	L78
L128:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L77
	.align 4,0x90
L130:
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	ja	L70
	testq	%rbp, %rbp
	je	L73
	cmpq	%rbp, %r12
	jb	L73
	cmpq	$1, %rbp
	je	L132
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
	je	L127
	.align 4,0x90
L80:
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L133
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L83:
	cmpq	%rbp, %r12
	jnb	L127
	addq	%r13, %r12
	leaq	(%rcx,%rbp), %rax
	cmpq	%rax, %r12
	jnb	L134
	cmpq	%rcx, %r12
	ja	L87
	leaq	(%rcx,%r15), %rsi
	cmpq	$1, %rbp
	je	L135
	movq	%rbp, %rdx
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L77
	.align 4,0x90
L87:
	subq	%rcx, %r12
	cmpq	$1, %r12
	je	L136
	testq	%r12, %r12
	jne	L137
L90:
	movq	%rbp, %rdx
	leaq	0(%r13,%rbp), %rsi
	leaq	0(%r13,%r12), %rdi
	subq	%r12, %rdx
	cmpq	$1, %rdx
	je	L138
	testq	%rdx, %rdx
	je	L127
	call	_memcpy
	.align 4,0x90
L127:
	movq	(%rbx), %r11
L77:
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%r11,%r14)
	addq	$40, %rsp
LCFI30:
	popq	%rbx
LCFI31:
	popq	%rbp
LCFI32:
	popq	%r12
LCFI33:
	popq	%r13
LCFI34:
	popq	%r14
LCFI35:
	popq	%r15
LCFI36:
	ret
	.align 4,0x90
L68:
LCFI37:
	movl	$15, %esi
	cmpq	$15, %r14
	jbe	L104
L69:
	testq	%r14, %r14
	js	L139
	leaq	(%rsi,%rsi), %r15
	cmpq	%r15, %r14
	jnb	L140
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L95
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
	jmp	L95
	.align 4,0x90
L78:
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L77
	.align 4,0x90
L131:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L74
	.align 4,0x90
L140:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
L95:
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
	je	L97
	cmpq	$1, %r13
	jne	L98
	movzbl	(%r8), %eax
	movb	%al, (%r11)
L97:
	testq	%rcx, %rcx
	je	L99
	testq	%rbp, %rbp
	je	L99
	leaq	(%r11,%r13), %rdi
	cmpq	$1, %rbp
	je	L141
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
L99:
	testq	%r9, %r9
	je	L101
	leaq	(%r12,%r13), %rsi
	addq	%r13, %rbp
	addq	%r8, %rsi
	leaq	(%r11,%rbp), %rdi
	cmpq	$1, %r9
	jne	L102
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
L101:
	cmpq	%r8, %r10
	je	L103
	movq	%r8, %rdi
	movq	%r11, (%rsp)
	call	__ZdlPv
	movq	(%rsp), %r11
L103:
	movq	%r11, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	L77
	.align 4,0x90
L132:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
L73:
	testb	%r10b, %r10b
	jne	L80
	jmp	L83
	.align 4,0x90
L102:
	movq	%r9, %rdx
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_memcpy
	movq	16(%rsp), %r8
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	jmp	L101
	.align 4,0x90
L98:
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
	jmp	L97
	.align 4,0x90
L141:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	L99
	.align 4,0x90
L134:
	cmpq	$1, %rbp
	je	L128
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	movq	(%rbx), %r11
	jmp	L77
	.align 4,0x90
L133:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L83
L136:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	jmp	L90
L135:
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L77
L138:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %r11
	jmp	L77
L137:
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	jmp	L90
L129:
	leaq	lC4(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L139:
	leaq	lC3(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7109:
	.cstring
	.align 3
lC5:
	.ascii "Error: in position(): shift not found for shi \0"
lC6:
	.ascii "basic_string::append\0"
lC7:
	.ascii ", shj \0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36:
LFB7314:
	pushq	%r15
LCFI38:
	movq	%rsi, %r8
	leaq	lC1(%rip), %rcx
	xorl	%eax, %eax
	pushq	%r14
LCFI39:
	movl	$32, %edx
	pushq	%r13
LCFI40:
	pushq	%r12
LCFI41:
	movq	%rdi, %r12
	pushq	%rbp
LCFI42:
	pushq	%rbx
LCFI43:
	subq	$184, %rsp
LCFI44:
	movq	_vsnprintf@GOTPCREL(%rip), %rbp
	leaq	144(%rsp), %r13
	leaq	48(%rsp), %rbx
	movq	%rbp, %rsi
	movq	%r13, %rdi
LEHB0:
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.37
LEHE0:
	movq	%r12, %r8
	movl	$32, %edx
	movq	%rbp, %rsi
	leaq	lC1(%rip), %rcx
	movq	%rbx, %rdi
	xorl	%eax, %eax
LEHB1:
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.37
LEHE1:
	movabsq	$9223372036854775807, %rax
	movq	56(%rsp), %rbp
	subq	%rbp, %rax
	cmpq	$45, %rax
	jbe	L213
	movq	48(%rsp), %r12
	leaq	16(%rbx), %rax
	leaq	46(%rbp), %r14
	cmpq	%rax, %r12
	je	L144
	movq	64(%rsp), %rax
	cmpq	%rax, %r14
	ja	L145
L190:
	leaq	lC5(%rip), %rax
	cmpq	%rax, %r12
	jbe	L214
L146:
	testq	%rbp, %rbp
	jne	L215
L211:
	vmovdqa	lC8(%rip), %xmm0
	movl	$8297, %esi
	movabsq	$8027139001556496230, %rax
	movl	$1752375410, 40(%r12)
	movq	%rax, 32(%r12)
	vmovups	%xmm0, (%r12)
	vmovdqa	lC9(%rip), %xmm0
	movw	%si, 44(%r12)
	vmovups	%xmm0, 16(%r12)
	movq	48(%rsp), %r12
L151:
	movq	%r14, 56(%rsp)
	leaq	16(%rbx), %rdi
	movb	$0, 46(%r12,%rbp)
	leaq	80(%rsp), %rbp
	movq	48(%rsp), %rax
	leaq	16(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	cmpq	%rdi, %rax
	je	L216
	movq	56(%rsp), %rsi
	movq	64(%rsp), %rdx
	movq	%rdi, 48(%rsp)
	movabsq	$9223372036854775807, %rdi
	movq	%rax, 80(%rsp)
	subq	%rsi, %rdi
	movq	%rdx, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	cmpq	$5, %rdi
	jbe	L161
	cmpq	%rcx, %rax
	movl	$15, %ecx
	leaq	6(%rsi), %r12
	cmove	%rcx, %rdx
L164:
	cmpq	%rdx, %r12
	ja	L165
	addq	%rsi, %rax
	movl	$8298, %edx
	movl	$1752375340, (%rax)
	movw	%dx, 4(%rax)
L166:
	movq	80(%rsp), %rax
	movq	%r12, 88(%rsp)
	leaq	16(%rbp), %rcx
	movb	$0, (%rax,%r12)
	leaq	112(%rsp), %r12
	movq	80(%rsp), %rdi
	leaq	16(%r12), %rdx
	movq	%rdx, 112(%rsp)
	cmpq	%rcx, %rdi
	je	L217
	movq	88(%rsp), %rsi
	movq	96(%rsp), %rax
	cmpq	%rdx, %rdi
	movq	%rdi, 112(%rsp)
	movq	152(%rsp), %r8
	movl	$15, %edx
	movq	%rcx, 80(%rsp)
	movq	%rsi, 120(%rsp)
	movq	$0, 88(%rsp)
	leaq	(%rsi,%r8), %r14
	movb	$0, 96(%rsp)
	movq	%rax, 128(%rsp)
	cmove	%rdx, %rax
L168:
	movq	144(%rsp), %rcx
	cmpq	%rax, %r14
	jbe	L169
	leaq	16(%r13), %rdx
	movl	$15, %eax
	cmpq	%rdx, %rcx
	je	L170
	movq	160(%rsp), %rax
L170:
	cmpq	%rax, %r14
	jbe	L218
	xorl	%edx, %edx
	movq	%r12, %rdi
LEHB2:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE2:
L212:
	movq	112(%rsp), %rdi
L174:
	movq	%r14, 120(%rsp)
	movq	%r12, %rax
	movb	$0, (%rdi,%r14)
L172:
	leaq	16(%rsp), %r14
	leaq	16(%r14), %rdx
	movq	%rdx, 16(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L219
	movq	%rcx, 16(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)
L176:
	movq	8(%rax), %rcx
	addq	$16, %r12
	movb	$0, 16(%rax)
	movq	%rcx, 24(%rsp)
	movq	%rdx, (%rax)
	movq	112(%rsp), %rdi
	movq	$0, 8(%rax)
	cmpq	%r12, %rdi
	je	L177
	call	__ZdlPv
L177:
	movq	80(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L178
	call	__ZdlPv
L178:
	movq	48(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L179
	call	__ZdlPv
L179:
	movq	144(%rsp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	L180
	call	__ZdlPv
L180:
	movq	16(%rsp), %rdi
	addq	$16, %r14
	cmpq	%r14, %rdi
	je	L209
	call	__ZdlPv
L209:
	addq	$184, %rsp
LCFI45:
	xorl	%eax, %eax
	xorl	%edx, %edx
	popq	%rbx
LCFI46:
	popq	%rbp
LCFI47:
	popq	%r12
LCFI48:
	popq	%r13
LCFI49:
	popq	%r14
LCFI50:
	popq	%r15
LCFI51:
	ret
	.align 4,0x90
L214:
LCFI52:
	leaq	(%r12,%rbp), %rdx
	cmpq	%rax, %rdx
	jb	L146
	testq	%rbp, %rbp
	je	L148
	cmpq	$1, %rbp
	je	L220
	leaq	46(%r12), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	_memmove
L148:
	leaq	46+lC5(%rip), %rax
	cmpq	%rax, %r12
	jnb	L211
	movq	78+lC5(%rip), %rax
	vmovdqu	46+lC5(%rip), %xmm0
	movq	%rax, 32(%r12)
	movl	86+lC5(%rip), %eax
	vmovups	%xmm0, (%r12)
	vmovdqu	62+lC5(%rip), %xmm0
	movl	%eax, 40(%r12)
	movzwl	90+lC5(%rip), %eax
	vmovups	%xmm0, 16(%r12)
	movw	%ax, 44(%r12)
	movq	48(%rsp), %r12
	jmp	L151
	.align 4,0x90
L215:
	cmpq	$1, %rbp
	je	L221
	leaq	46(%r12), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	_memmove
	jmp	L211
	.align 4,0x90
L144:
	movl	$15, %eax
	cmpq	$15, %r14
	jbe	L190
L145:
	testq	%r14, %r14
	js	L222
	leaq	(%rax,%rax), %r15
	cmpq	%r15, %r14
	jnb	L223
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L156
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
	jmp	L156
	.align 4,0x90
L169:
	testq	%r8, %r8
	je	L174
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	L173
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	112(%rsp), %rdi
	jmp	L174
	.align 4,0x90
L165:
	movl	$6, %r8d
	leaq	lC7(%rip), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rdi
LEHB3:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE3:
	jmp	L166
	.align 4,0x90
L219:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	jmp	L176
	.align 4,0x90
L216:
	movq	56(%rsp), %rsi
	vmovdqa	64(%rsp), %xmm0
	movabsq	$9223372036854775807, %rax
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	subq	%rsi, %rax
	vmovaps	%xmm0, 96(%rsp)
	movq	%rsi, 88(%rsp)
	cmpq	$5, %rax
	jbe	L161
	leaq	6(%rsi), %r12
	movq	%rcx, %rax
	movl	$15, %edx
	jmp	L164
	.align 4,0x90
L217:
	movq	88(%rsp), %rsi
	vmovdqa	96(%rsp), %xmm0
	movq	%rdx, %rdi
	movb	$0, 96(%rsp)
	movq	152(%rsp), %r8
	movl	$15, %eax
	movq	$0, 88(%rsp)
	vmovaps	%xmm0, 128(%rsp)
	movq	%rsi, 120(%rsp)
	leaq	(%r8,%rsi), %r14
	jmp	L168
	.align 4,0x90
L218:
	movq	%rsi, %r8
	movq	%rdi, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
LEHB4:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
LEHE4:
	jmp	L172
	.align 4,0x90
L173:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	jmp	L212
	.align 4,0x90
L221:
	movzbl	(%r12), %eax
	movb	%al, 46(%r12)
	jmp	L211
	.align 4,0x90
L223:
	leaq	47(%rbp), %rdi
	movq	%r14, %r15
L156:
LEHB5:
	call	__Znwm
	vmovdqa	lC8(%rip), %xmm0
	movq	%rax, %r12
	movl	$8297, %ecx
	vmovups	%xmm0, (%rax)
	vmovdqa	lC9(%rip), %xmm0
	vmovups	%xmm0, 16(%rax)
	movabsq	$8027139001556496230, %rax
	movw	%cx, 44(%r12)
	movq	48(%rsp), %rcx
	movq	%rax, 32(%r12)
	movl	$1752375410, 40(%r12)
	testq	%rbp, %rbp
	je	L157
	cmpq	$1, %rbp
	jne	L158
	movzbl	(%rcx), %eax
	movb	%al, 46(%r12)
L157:
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	L159
	movq	%rcx, %rdi
	call	__ZdlPv
L159:
	movq	%r12, 48(%rsp)
	movq	%r15, 64(%rsp)
	jmp	L151
	.align 4,0x90
L158:
	movq	%rcx, %rsi
	leaq	46(%r12), %rdi
	movq	%rbp, %rdx
	movq	%rcx, 8(%rsp)
	call	_memcpy
	movq	8(%rsp), %rcx
	jmp	L157
	.align 4,0x90
L220:
	movzbl	(%r12), %eax
	movb	%al, 46(%r12)
	jmp	L148
L213:
	leaq	lC4(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE5:
L197:
	movq	%rax, %rbp
	vzeroupper
L186:
	movq	48(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L188
	call	__ZdlPv
L188:
	movq	144(%rsp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	L189
	call	__ZdlPv
L189:
	movq	%rbp, %rdi
LEHB6:
	call	__Unwind_Resume
LEHE6:
L161:
	leaq	lC6(%rip), %rdi
LEHB7:
	call	__ZSt20__throw_length_errorPKc
LEHE7:
L198:
	movq	%rax, %r14
	vzeroupper
L184:
	movq	80(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L185
	call	__ZdlPv
L185:
	movq	%r14, %rbp
	jmp	L186
L196:
	movq	%rax, %rbp
	vzeroupper
	jmp	L188
L222:
	leaq	lC3(%rip), %rdi
LEHB8:
	call	__ZSt20__throw_length_errorPKc
LEHE8:
L199:
	movq	112(%rsp), %rdi
	addq	$16, %r12
	movq	%rax, %r14
	cmpq	%r12, %rdi
	je	L208
	vzeroupper
	call	__ZdlPv
	jmp	L184
L208:
	vzeroupper
	jmp	L184
LFE7314:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA7314:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x75
	.set L$set$0,LEHB0-LFB7314
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB7314
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L196-LFB7314
	.long L$set$4
	.byte	0
	.set L$set$5,LEHB2-LFB7314
	.long L$set$5
	.set L$set$6,LEHE2-LEHB2
	.long L$set$6
	.set L$set$7,L199-LFB7314
	.long L$set$7
	.byte	0
	.set L$set$8,LEHB3-LFB7314
	.long L$set$8
	.set L$set$9,LEHE3-LEHB3
	.long L$set$9
	.set L$set$10,L198-LFB7314
	.long L$set$10
	.byte	0
	.set L$set$11,LEHB4-LFB7314
	.long L$set$11
	.set L$set$12,LEHE4-LEHB4
	.long L$set$12
	.set L$set$13,L199-LFB7314
	.long L$set$13
	.byte	0
	.set L$set$14,LEHB5-LFB7314
	.long L$set$14
	.set L$set$15,LEHE5-LEHB5
	.long L$set$15
	.set L$set$16,L197-LFB7314
	.long L$set$16
	.byte	0
	.set L$set$17,LEHB6-LFB7314
	.long L$set$17
	.set L$set$18,LEHE6-LEHB6
	.long L$set$18
	.long	0
	.byte	0
	.set L$set$19,LEHB7-LFB7314
	.long L$set$19
	.set L$set$20,LEHE7-LEHB7
	.long L$set$20
	.set L$set$21,L198-LFB7314
	.long L$set$21
	.byte	0
	.set L$set$22,LEHB8-LFB7314
	.long L$set$22
	.set L$set$23,LEHE8-LEHB8
	.long L$set$23
	.set L$set$24,L197-LFB7314
	.long L$set$24
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseC8positionEmmPKlPKm
__ZN8MosaicSC5BaseC8positionEmmPKlPKm:
LFB6356:
	subq	$8, %rsp
LCFI53:
	movq	(%rdx), %r8
	movq	8(%rdx), %rdx
	cmpq	$-3, %r8
	je	L351
	cmpq	$-2, %r8
	je	L352
	cmpq	$-1, %r8
	je	L353
	testq	%r8, %r8
	jne	L283
	cmpq	$-2, %rdx
	je	L354
	cmpq	$-1, %rdx
	je	L355
	testq	%rdx, %rdx
	je	L356
	cmpq	$1, %rdx
	je	L357
	cmpq	$2, %rdx
	jne	L292
	movq	8(%rcx), %rax
	subq	$2, %rax
	cmpq	%rsi, %rax
	ja	L358
	je	L291
	movq	%rdi, %rax
	movl	$1, %edx
	jmp	L347
	.align 4,0x90
L352:
	cmpq	$-2, %rdx
	je	L359
	cmpq	$-1, %rdx
	je	L360
	testq	%rdx, %rdx
	je	L361
	cmpq	$1, %rdx
	jne	L254
	movq	8(%rcx), %rax
	leaq	-1(%rax), %rdx
	cmpq	$1, %rdi
	jbe	L255
	leaq	-2(%rdi), %rax
	cmpq	%rdx, %rsi
	je	L256
	leaq	1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L351:
	cmpq	$-1, %rdx
	jne	L226
	cmpq	$2, %rdi
	jbe	L227
	subq	$3, %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L226:
	movq	%rdx, %rsi
	movq	%r8, %rdi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
L347:
	addq	$8, %rsp
LCFI54:
	ret
	.align 4,0x90
L283:
LCFI55:
	cmpq	$1, %r8
	je	L362
	cmpq	$2, %r8
	je	L363
	cmpq	$3, %r8
	jne	L338
	cmpq	$1, %rdx
	jne	L339
	movq	(%rcx), %r8
	movq	8(%rcx), %rax
	leaq	-3(%r8), %r9
	leaq	-1(%rax), %rdx
	cmpq	%rdi, %r9
	jbe	L340
	addq	$3, %rdi
	movq	%rdi, %rax
	cmpq	%rdx, %rsi
	jnb	L341
	leaq	1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L359:
	cmpq	$1, %rdi
	jbe	L237
	subq	$2, %rdi
	cmpq	$1, %rsi
	jbe	L238
	movq	%rdi, %rax
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L353:
	cmpq	$-2, %rdx
	je	L364
	cmpq	$-1, %rdx
	je	L365
	testq	%rdx, %rdx
	je	L366
	cmpq	$1, %rdx
	je	L367
	cmpq	$2, %rdx
	jne	L277
	movq	8(%rcx), %rax
	leaq	-2(%rax), %rdx
	testq	%rdi, %rdi
	je	L278
	leaq	-1(%rdi), %rax
	cmpq	%rdx, %rsi
	jb	L368
	setne	%dl
	movzbl	%dl, %edx
	jmp	L347
	.align 4,0x90
L227:
	movq	(%rcx), %rax
	je	L369
	cmpq	$1, %rdi
	je	L370
	leaq	-3(%rax), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L360:
	cmpq	$1, %rdi
	jbe	L246
	subq	$2, %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L364:
	testq	%rdi, %rdi
	je	L262
	leaq	-1(%rdi), %rax
	leaq	-2(%rsi), %rdx
	cmpq	$1, %rsi
	ja	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L361:
	cmpq	$1, %rdi
	jbe	L252
	leaq	-2(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L366:
	testq	%rdi, %rdi
	je	L272
	leaq	-1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L338:
	movq	%rdx, %rsi
	movq	%r8, %rdi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
	.align 4,0x90
L356:
	movq	%rdi, %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L237:
	movq	(%rcx), %rax
	je	L371
	leaq	-2(%rax), %rdi
	cmpq	$1, %rsi
	jbe	L243
	movq	%rdi, %rax
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L262:
	movq	(%rcx), %rax
	leaq	-1(%rax), %rdi
	cmpq	$1, %rsi
	jbe	L265
	movq	%rdi, %rax
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L370:
	leaq	-2(%rax), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L246:
	movq	(%rcx), %rax
	je	L372
	leaq	-2(%rax), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L354:
	cmpq	$1, %rsi
	jbe	L285
	movq	%rdi, %rax
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L362:
	cmpq	$-2, %rdx
	je	L373
	cmpq	$-1, %rdx
	je	L374
	testq	%rdx, %rdx
	jne	L305
	movq	(%rcx), %rax
	subq	$1, %rax
	cmpq	%rdi, %rax
	je	L306
	leaq	1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L365:
	testq	%rsi, %rsi
	je	L268
	subq	$1, %rsi
	testq	%rdi, %rdi
	je	L269
	leaq	-1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L355:
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L363:
	cmpq	$-1, %rdx
	je	L375
	testq	%rdx, %rdx
	jne	L323
	movq	(%rcx), %rax
	subq	$2, %rax
	cmpq	%rdi, %rax
	ja	L376
	je	L306
	movl	$1, %eax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L369:
	leaq	-1(%rax), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L254:
	movq	%rdx, %rsi
	movq	%r8, %rdi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
	.align 4,0x90
L252:
	movq	(%rcx), %rdi
	je	L377
	leaq	-2(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L285:
	movq	8(%rcx), %rsi
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L238:
	movq	8(%rcx), %rsi
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L268:
	movq	8(%rcx), %rax
	leaq	-1(%rax), %rsi
	testq	%rdi, %rdi
	je	L270
	leaq	-1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L373:
	movq	(%rcx), %rax
	subq	$1, %rax
	cmpq	%rdi, %rax
	jbe	L296
	leaq	1(%rdi), %rax
	leaq	-2(%rsi), %rdx
	cmpq	$1, %rsi
	ja	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L272:
	movq	(%rcx), %rdi
	movq	%rsi, %rdx
	leaq	-1(%rdi), %rax
	jmp	L347
	.align 4,0x90
L339:
	movq	%rdx, %rsi
	movl	$3, %edi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
	.align 4,0x90
L357:
	movq	8(%rcx), %rax
	subq	$1, %rax
	cmpq	%rsi, %rax
	je	L291
	movq	%rdi, %rax
	leaq	1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L367:
	movq	8(%rcx), %rax
	subq	$1, %rax
	cmpq	%rsi, %rax
	je	L274
	addq	$1, %rsi
	testq	%rdi, %rdi
	je	L275
	leaq	-1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L375:
	movq	(%rcx), %rax
	subq	$2, %rax
	cmpq	%rdi, %rax
	jbe	L318
	leaq	2(%rdi), %rax
	leaq	-1(%rsi), %rdx
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
	.align 4,0x90
L374:
	movq	(%rcx), %rax
	subq	$1, %rax
	testq	%rsi, %rsi
	je	L302
	subq	$1, %rsi
	cmpq	%rax, %rdi
	je	L303
	leaq	1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
	.align 4,0x90
L323:
	cmpq	$1, %rdx
	je	L378
	cmpq	$2, %rdx
	jne	L330
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	subq	$2, %rax
	subq	$2, %rdx
	cmpq	%rdi, %rax
	jbe	L331
	leaq	2(%rdi), %rax
	cmpq	%rdx, %rsi
	jb	L379
	setne	%dl
	movzbl	%dl, %edx
	jmp	L347
	.align 4,0x90
L305:
	cmpq	$1, %rdx
	je	L380
	cmpq	$2, %rdx
	jne	L311
	movq	8(%rcx), %rax
	leaq	-2(%rax), %rdx
	movq	(%rcx), %rax
	subq	$1, %rax
	cmpq	%rdi, %rax
	jbe	L312
	leaq	1(%rdi), %rax
	cmpq	%rdx, %rsi
	jb	L381
	setne	%dl
	movzbl	%dl, %edx
	jmp	L347
L292:
	movq	%rdx, %rsi
	xorl	%edi, %edi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
L265:
	movq	8(%rcx), %rsi
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
L255:
	movq	(%rcx), %rax
	je	L382
	leaq	-2(%rax), %rdi
	movq	%rdi, %rax
	cmpq	%rdx, %rsi
	je	L259
	leaq	-1(%rsi), %rdx
	jmp	L347
L277:
	movq	%rdx, %rsi
	movq	%r8, %rdi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
L371:
	leaq	-1(%rax), %rdi
	cmpq	$1, %rsi
	jbe	L241
	movq	%rdi, %rax
	leaq	-2(%rsi), %rdx
	jmp	L347
L340:
	je	L350
	subq	$2, %r8
	cmpq	%rdi, %r8
	je	L328
	movl	$2, %eax
	cmpq	%rdx, %rsi
	jnb	L346
	leaq	1(%rsi), %rdx
	jmp	L347
L296:
	cmpq	$1, %rsi
	jbe	L299
	xorl	%eax, %eax
	leaq	-2(%rsi), %rdx
	jmp	L347
L270:
	movq	(%rcx), %rax
	movq	%rsi, %rdx
	subq	$1, %rax
	jmp	L347
L269:
	movq	(%rcx), %rax
	movq	%rsi, %rdx
	subq	$1, %rax
	jmp	L347
L243:
	movq	8(%rcx), %rsi
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
L377:
	leaq	-1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
L291:
	movq	%rdi, %rax
	xorl	%edx, %edx
	jmp	L347
L372:
	leaq	-1(%rax), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
L278:
	movq	(%rcx), %rax
	leaq	-1(%rax), %rdi
	movq	%rdi, %rax
	cmpq	%rdx, %rsi
	jb	L383
	setne	%dl
	movzbl	%dl, %edx
	jmp	L347
L256:
	xorl	%edx, %edx
	jmp	L347
L358:
	movq	%rdi, %rax
	leaq	2(%rsi), %rdx
	jmp	L347
L306:
	xorl	%eax, %eax
	movq	%rsi, %rdx
	jmp	L347
L302:
	movq	8(%rcx), %rsi
	subq	$1, %rsi
	cmpq	%rax, %rdi
	je	L304
	leaq	1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
L318:
	je	L384
	movl	$1, %eax
	leaq	-1(%rsi), %rdx
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
L376:
	leaq	2(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
L341:
	xorl	%edx, %edx
	jmp	L347
L241:
	movq	8(%rcx), %rsi
	movq	%rdi, %rax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
L274:
	testq	%rdi, %rdi
	je	L276
	leaq	-1(%rdi), %rax
	xorl	%edx, %edx
	jmp	L347
L275:
	movq	(%rcx), %rax
	movq	%rsi, %rdx
	subq	$1, %rax
	jmp	L347
L380:
	movq	8(%rcx), %rdx
	movq	(%rcx), %rax
	subq	$1, %rdx
	subq	$1, %rax
	cmpq	%rsi, %rdx
	je	L308
	addq	$1, %rsi
	cmpq	%rax, %rdi
	je	L309
	leaq	1(%rdi), %rax
	movq	%rsi, %rdx
	jmp	L347
L378:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	subq	$2, %rax
	subq	$1, %rdx
	cmpq	%rdi, %rax
	jbe	L326
	leaq	2(%rdi), %rax
	cmpq	%rdx, %rsi
	jnb	L327
	leaq	1(%rsi), %rdx
	jmp	L347
L326:
	jne	L328
L350:
	cmpq	%rdx, %rsi
	jnb	L310
	xorl	%eax, %eax
	leaq	1(%rsi), %rdx
	jmp	L347
L382:
	leaq	-1(%rax), %rdi
	movq	%rdi, %rax
	cmpq	%rdx, %rsi
	je	L258
	leaq	-1(%rsi), %rdx
	jmp	L347
L299:
	movq	8(%rcx), %rsi
	movl	$0, %eax
	leaq	-1(%rsi), %rdx
	je	L347
	leaq	-2(%rsi), %rdx
	jmp	L347
L328:
	cmpq	%rdx, %rsi
	jnb	L329
	movl	$1, %eax
	leaq	1(%rsi), %rdx
	jmp	L347
L311:
	movq	%rdx, %rsi
	movl	$1, %edi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
L330:
	movq	%rdx, %rsi
	movl	$2, %edi
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	jmp	L347
L368:
	leaq	2(%rsi), %rdx
	jmp	L347
L310:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L347
L383:
	leaq	2(%rsi), %rdx
	jmp	L347
L312:
	cmpq	%rdx, %rsi
	jb	L385
	je	L310
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	L347
L259:
	xorl	%edx, %edx
	jmp	L347
L384:
	xorl	%eax, %eax
	leaq	-1(%rsi), %rdx
	testq	%rsi, %rsi
	jne	L347
	movq	8(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	jmp	L347
L331:
	je	L312
	cmpq	%rdx, %rsi
	jb	L386
	je	L329
	movl	$1, %eax
	movl	$1, %edx
	jmp	L347
L303:
	xorl	%eax, %eax
	movq	%rsi, %rdx
	jmp	L347
L304:
	xorl	%eax, %eax
	movq	%rsi, %rdx
	jmp	L347
L276:
	movq	(%rcx), %rax
	xorl	%edx, %edx
	subq	$1, %rax
	jmp	L347
L346:
	xorl	%edx, %edx
	jmp	L347
L329:
	movl	$1, %eax
	xorl	%edx, %edx
	jmp	L347
L308:
	cmpq	%rax, %rdi
	je	L310
	leaq	1(%rdi), %rax
	xorl	%edx, %edx
	jmp	L347
L385:
	xorl	%eax, %eax
	leaq	2(%rsi), %rdx
	jmp	L347
L258:
	xorl	%edx, %edx
	jmp	L347
L379:
	leaq	2(%rsi), %rdx
	jmp	L347
L327:
	xorl	%edx, %edx
	jmp	L347
L381:
	leaq	2(%rsi), %rdx
	jmp	L347
L309:
	xorl	%eax, %eax
	movq	%rsi, %rdx
	jmp	L347
L386:
	movl	$1, %eax
	leaq	2(%rsi), %rdx
	jmp	L347
LFE6356:
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA6356:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm
__ZN8MosaicSC5BaseC11is_occupiedEmimmPKlRKSt6vectorIS3_ImSaImEESaIS5_EERKS3_IS3_IiSaIiEESaISB_EEPKm:
LFB6353:
	pushq	%rbp
LCFI56:
	movl	%esi, %ebp
	pushq	%rbx
LCFI57:
	movq	%rdi, %rbx
	subq	$24, %rsp
LCFI58:
	movq	(%r8), %rdi
	movq	8(%r8), %rsi
	cmpq	$-3, %rdi
	je	L514
	cmpq	$-2, %rdi
	je	L515
	cmpq	$-1, %rdi
	je	L516
	testq	%rdi, %rdi
	jne	L441
	cmpq	$-2, %rsi
	je	L517
	cmpq	$-1, %rsi
	je	L518
	testq	%rsi, %rsi
	je	L519
	cmpq	$1, %rsi
	je	L520
	cmpq	$2, %rsi
	jne	L449
	movq	56(%rsp), %rax
	leaq	(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	movq	8(%rax), %rax
	subq	$2, %rax
	cmpq	%rax, %rcx
	jb	L521
	setne	%cl
	movzbl	%cl, %ecx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L515:
	cmpq	$-2, %rsi
	je	L522
	cmpq	$-1, %rsi
	je	L523
	testq	%rsi, %rsi
	je	L524
	cmpq	$1, %rsi
	jne	L417
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$1, %rax
	cmpq	$1, %rdx
	jbe	L418
	leaq	-6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	je	L491
	addq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L514:
	cmpq	$-1, %rsi
	jne	L389
	cmpq	$2, %rdx
	jbe	L390
	leaq	-9(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L391
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L389:
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	.align 4,0x90
L392:
	movq	(%r9), %rax
	movq	(%rax,%rsi), %rdx
	xorl	%eax, %eax
	cmpq	%rbx, (%rdx,%rdi)
	jne	L512
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax,%rsi), %rax
	cmpl	%ebp, (%rax,%rcx,4)
	sete	%al
L512:
	addq	$24, %rsp
LCFI59:
	popq	%rbx
LCFI60:
	popq	%rbp
LCFI61:
	ret
	.align 4,0x90
L441:
LCFI62:
	cmpq	$1, %rdi
	je	L525
	cmpq	$2, %rdi
	je	L526
	cmpq	$3, %rdi
	jne	L485
	cmpq	$1, %rsi
	jne	L486
	movq	56(%rsp), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rax
	leaq	-3(%rsi), %rdi
	subq	$1, %rax
	cmpq	%rdi, %rdx
	jnb	L487
	leaq	9(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	jnb	L507
	addq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L522:
	cmpq	$1, %rdx
	jbe	L400
	leaq	-6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L401
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L516:
	cmpq	$-2, %rsi
	je	L527
	cmpq	$-1, %rsi
	je	L528
	testq	%rsi, %rsi
	je	L529
	cmpq	$1, %rsi
	je	L530
	cmpq	$2, %rsi
	jne	L437
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$2, %rax
	testq	%rdx, %rdx
	je	L438
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	jb	L531
	movl	$0, %eax
	movl	$8, %edi
	movl	$1, %ecx
	cmove	%rax, %rdi
	cmove	%rax, %rcx
	jmp	L392
	.align 4,0x90
L390:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	je	L532
	cmpq	$1, %rdx
	je	L533
	leaq	-9(%rax,%rax,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L397
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L523:
	cmpq	$1, %rdx
	jbe	L409
	leaq	-6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L410
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L527:
	testq	%rdx, %rdx
	je	L422
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L423
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L524:
	leaq	0(,%rcx,8), %rdi
	cmpq	$1, %rdx
	jbe	L415
	leaq	-6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L391:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L529:
	leaq	0(,%rcx,8), %rdi
	testq	%rdx, %rdx
	je	L432
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L485:
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L519:
	leaq	(%rdx,%rdx,2), %rsi
	leaq	0(,%rcx,8), %rdi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L400:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	je	L534
	leaq	-6(%rax,%rax,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L406
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L422:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L425
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L533:
	leaq	-6(%rax,%rax,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L396
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L409:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	je	L535
	leaq	-6(%rax,%rax,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L413
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L525:
	cmpq	$-2, %rsi
	je	L536
	cmpq	$-1, %rsi
	je	L537
	testq	%rsi, %rsi
	jne	L460
	movq	56(%rsp), %rax
	leaq	0(,%rcx,8), %rdi
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	je	L392
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L517:
	leaq	(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L443
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L528:
	testq	%rcx, %rcx
	je	L428
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	testq	%rdx, %rdx
	je	L429
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L518:
	leaq	(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L446
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L526:
	cmpq	$-1, %rsi
	je	L538
	testq	%rsi, %rsi
	jne	L474
	movq	56(%rsp), %rax
	leaq	0(,%rcx,8), %rdi
	movq	(%rax), %rax
	subq	$2, %rax
	cmpq	%rax, %rdx
	jb	L539
	setne	%al
	movzbl	%al, %eax
	leaq	(%rax,%rax), %rsi
	addq	%rax, %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L532:
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L394
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L417:
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L397:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L415:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	je	L540
	leaq	-6(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L443:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L541
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L401:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L542
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L536:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$1, %rax
	cmpq	%rax, %rdx
	jnb	L453
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L454
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L428:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	%rax, 8(%rsp)
	leaq	0(,%rcx,8), %rdi
	testq	%rdx, %rdx
	je	L430
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L446:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L432:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L410:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L394:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L486:
	movl	$3, %edi
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L520:
	movq	56(%rsp), %rax
	leaq	(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	movq	8(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rcx
	je	L496
	addq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L537:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$1, %rax
	testq	%rcx, %rcx
	je	L459
	subq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	cmpq	%rax, %rdx
	je	L392
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L530:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$1, %rax
	cmpq	%rax, %rcx
	je	L434
	addq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	testq	%rdx, %rdx
	je	L435
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
	.align 4,0x90
L538:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	subq	$2, %rax
	cmpq	%rax, %rdx
	jnb	L469
	leaq	6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L470
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
	.align 4,0x90
L474:
	cmpq	$1, %rsi
	je	L543
	cmpq	$2, %rsi
	jne	L479
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	-2(%rax), %rsi
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	subq	$2, %rax
	cmpq	%rsi, %rdx
	jnb	L480
	leaq	6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	jb	L544
	movl	$0, %eax
	movl	$8, %edi
	movl	$1, %ecx
	cmove	%rax, %rdi
	cmove	%rax, %rcx
	jmp	L392
	.align 4,0x90
L460:
	cmpq	$1, %rsi
	je	L545
	cmpq	$2, %rsi
	jne	L463
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	-2(%rax), %rdi
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jnb	L464
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rdi, %rcx
	jb	L546
	movl	$0, %eax
	movl	$8, %edi
	movl	$1, %ecx
	cmove	%rax, %rdi
	cmove	%rax, %rcx
	jmp	L392
	.align 4,0x90
L396:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L423:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L547
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L425:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L548
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L449:
	xorl	%edi, %edi
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
L418:
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	je	L549
	leaq	-6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	je	L493
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L437:
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
L534:
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	cmpq	$1, %rcx
	jbe	L404
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L487:
	je	L550
	subq	$2, %rsi
	cmpq	%rsi, %rdx
	je	L551
	cmpq	%rax, %rcx
	jnb	L510
	addq	$1, %rcx
	movl	$48, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L429:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
L430:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
L453:
	cmpq	$1, %rcx
	jbe	L456
	subq	$2, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L406:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L552
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L542:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L540:
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
L541:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L535:
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	testq	%rcx, %rcx
	je	L412
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L413:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L438:
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	jb	L553
	movl	$0, %eax
	movl	$8, %edi
	movl	$1, %ecx
	cmove	%rax, %rdi
	cmove	%rax, %rcx
	jmp	L392
L491:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L521:
	addq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L469:
	je	L554
	testq	%rcx, %rcx
	je	L473
	subq	$1, %rcx
	movl	$24, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L459:
	movq	56(%rsp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	cmpq	%rax, %rdx
	je	L392
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
L539:
	leaq	6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
L507:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L496:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L404:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L555
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L434:
	testq	%rdx, %rdx
	je	L436
	leaq	-3(%rdx,%rdx,2), %rsi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	salq	$3, %rsi
	jmp	L392
L435:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
L545:
	movq	56(%rsp), %rdi
	movq	56(%rsp), %rax
	movq	8(%rdi), %rsi
	movq	(%rax), %rax
	subq	$1, %rsi
	movq	%rax, 8(%rsp)
	subq	$1, %rax
	cmpq	%rsi, %rcx
	je	L462
	addq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	cmpq	%rax, %rdx
	je	L392
	leaq	3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	jmp	L392
L543:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	-2(%rax), %rsi
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	cmpq	%rsi, %rdx
	jnb	L477
	leaq	6(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	jnb	L503
	addq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L547:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L548:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L456:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L556
	subq	$2, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L454:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	je	L557
	subq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L549:
	leaq	-3(%rdx,%rdx,2), %rsi
	salq	$3, %rsi
	cmpq	%rax, %rcx
	je	L492
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L463:
	movl	$1, %edi
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
L479:
	movl	$2, %edi
	movq	%r9, 8(%rsp)
	call	__ZZN8MosaicSC5BaseC8positionEmmPKlPKmENKUlllE_clEll.isra.36
	movq	8(%rsp), %r9
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %rcx
	leaq	0(,%rdx,8), %rdi
	salq	$3, %rsi
	jmp	L392
L412:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L550:
	cmpq	%rax, %rcx
	jnb	L508
	addq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L531:
	addq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L553:
	addq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L470:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L552:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L493:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L551:
	cmpq	%rax, %rcx
	jnb	L509
	addq	$1, %rcx
	movl	$24, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L436:
	movq	56(%rsp), %rax
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movq	(%rax), %rax
	leaq	-3(%rax,%rax,2), %rsi
	salq	$3, %rsi
	jmp	L392
L480:
	je	L558
	cmpq	%rax, %rcx
	jb	L559
	setne	%cl
	movl	$24, %esi
	movzbl	%cl, %ecx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L510:
	xorl	%edi, %edi
	movl	$48, %esi
	xorl	%ecx, %ecx
	jmp	L392
L464:
	cmpq	%rdi, %rcx
	jb	L560
	setne	%cl
	xorl	%esi, %esi
	movzbl	%cl, %ecx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L554:
	testq	%rcx, %rcx
	je	L472
	subq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L477:
	je	L561
	cmpq	%rax, %rcx
	jnb	L505
	addq	$1, %rcx
	movl	$24, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L473:
	movq	56(%rsp), %rax
	movl	$24, %esi
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L508:
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	L392
L555:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L462:
	cmpq	%rax, %rdx
	je	L501
	addq	$1, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	imulq	$24, %rdx, %rsi
	jmp	L392
L557:
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L492:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L556:
	subq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L509:
	xorl	%edi, %edi
	movl	$24, %esi
	xorl	%ecx, %ecx
	jmp	L392
L544:
	addq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L546:
	addq	$2, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L560:
	addq	$2, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L503:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L392
L472:
	movq	56(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L558:
	cmpq	%rax, %rcx
	jb	L562
	setne	%cl
	xorl	%esi, %esi
	movzbl	%cl, %ecx
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L559:
	addq	$2, %rcx
	movl	$24, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L505:
	xorl	%edi, %edi
	movl	$24, %esi
	xorl	%ecx, %ecx
	jmp	L392
L561:
	cmpq	%rax, %rcx
	jnb	L504
	addq	$1, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L501:
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	L392
L562:
	addq	$2, %rcx
	xorl	%esi, %esi
	leaq	0(,%rcx,8), %rdi
	jmp	L392
L504:
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	L392
LFE6353:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDA6353:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_base_component.cpp:
LFB7277:
	subq	$8, %rsp
LCFI63:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI64:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE7277:
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
	.globl __ZTVN8MosaicSC5BaseCE
	.weak_definition __ZTVN8MosaicSC5BaseCE
	.align 3
__ZTVN8MosaicSC5BaseCE:
	.quad	0
	.quad	__ZTIN8MosaicSC5BaseCE
	.quad	0
	.quad	0
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.globl __ZN8MosaicSC5BaseC2phE
	.zerofill __DATA,__pu_bss3,__ZN8MosaicSC5BaseC2phE,8,3
	.globl __ZN8MosaicSC5BaseC3synE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC3synE,4,2
	.globl __ZN8MosaicSC5BaseC5k_4_4E
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC5k_4_4E,4,2
	.globl __ZN8MosaicSC5BaseC6k_3_4bE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_3_4bE,4,2
	.globl __ZN8MosaicSC5BaseC6k_3_4aE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_3_4aE,4,2
	.globl __ZN8MosaicSC5BaseC5k_2_4E
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC5k_2_4E,4,2
	.globl __ZN8MosaicSC5BaseC5k_2_3E
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC5k_2_3E,4,2
	.globl __ZN8MosaicSC5BaseC6k_1_4bE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_1_4bE,4,2
	.globl __ZN8MosaicSC5BaseC6k_1_4aE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_1_4aE,4,2
	.globl __ZN8MosaicSC5BaseC6k_1_3bE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_1_3bE,4,2
	.globl __ZN8MosaicSC5BaseC6k_1_3aE
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC6k_1_3aE,4,2
	.globl __ZN8MosaicSC5BaseC5k_1_1E
	.zerofill __DATA,__pu_bss2,__ZN8MosaicSC5BaseC5k_1_1E,4,2
	.globl __ZN8MosaicSC5BaseC3spsE
	.zerofill __DATA,__pu_bss3,__ZN8MosaicSC5BaseC3spsE,8,3
	.static_data
__ZStL8__ioinit:
	.space	1
	.literal16
	.align 4
lC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.literal4
	.align 2
lC2:
	.long	1065353216
	.literal16
	.align 4
lC8:
	.quad	7575118836407628357
	.quad	7598814415792644206
	.align 4
lC9:
	.quad	7526394836436938351
	.quad	2338616625293715049
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$25,LECIE1-LSCIE1
	.long L$set$25
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
	.set L$set$26,LEFDE1-LASFDE1
	.long L$set$26
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB6348-.
	.set L$set$27,LFE6348-LFB6348
	.quad L$set$27
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$28,LEFDE3-LASFDE3
	.long L$set$28
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB6347-.
	.set L$set$29,LFE6347-LFB6347
	.quad L$set$29
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$30,LCFI0-LFB6347
	.long L$set$30
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$31,LCFI1-LCFI0
	.long L$set$31
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$32,LEFDE5-LASFDE5
	.long L$set$32
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB7317-.
	.set L$set$33,LFE7317-LFB7317
	.quad L$set$33
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$34,LCFI2-LFB7317
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$35,LCFI3-LCFI2
	.long L$set$35
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$36,LCFI4-LCFI3
	.long L$set$36
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$37,LCFI5-LCFI4
	.long L$set$37
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$38,LCFI6-LCFI5
	.long L$set$38
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$39,LCFI7-LCFI6
	.long L$set$39
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$40,LEFDE7-LASFDE7
	.long L$set$40
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB7316-.
	.set L$set$41,LFE7316-LFB7316
	.quad L$set$41
	.byte	0x8
	.quad	0
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$42,LEFDE9-LASFDE9
	.long L$set$42
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB6351-.
	.set L$set$43,LFE6351-LFB6351
	.quad L$set$43
	.byte	0x8
	.quad	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$44,LEFDE11-LASFDE11
	.long L$set$44
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB6352-.
	.set L$set$45,LFE6352-LFB6352
	.quad L$set$45
	.byte	0x8
	.quad	0
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$46,LEFDE13-LASFDE13
	.long L$set$46
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB7108-.
	.set L$set$47,LFE7108-LFB7108
	.quad L$set$47
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$48,LCFI8-LFB7108
	.long L$set$48
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$49,LCFI9-LCFI8
	.long L$set$49
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$50,LCFI10-LCFI9
	.long L$set$50
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$51,LCFI11-LCFI10
	.long L$set$51
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$52,LCFI12-LCFI11
	.long L$set$52
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$53,LCFI13-LCFI12
	.long L$set$53
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$54,LCFI14-LCFI13
	.long L$set$54
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$55,LCFI15-LCFI14
	.long L$set$55
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$56,LCFI16-LCFI15
	.long L$set$56
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$57,LCFI17-LCFI16
	.long L$set$57
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$58,LCFI18-LCFI17
	.long L$set$58
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$59,LCFI19-LCFI18
	.long L$set$59
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$60,LCFI20-LCFI19
	.long L$set$60
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$61,LCFI21-LCFI20
	.long L$set$61
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$62,LCFI22-LCFI21
	.long L$set$62
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$63,LEFDE15-LASFDE15
	.long L$set$63
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB7109-.
	.set L$set$64,LFE7109-LFB7109
	.quad L$set$64
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$65,LCFI23-LFB7109
	.long L$set$65
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$66,LCFI24-LCFI23
	.long L$set$66
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$67,LCFI25-LCFI24
	.long L$set$67
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$68,LCFI26-LCFI25
	.long L$set$68
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$69,LCFI27-LCFI26
	.long L$set$69
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$70,LCFI28-LCFI27
	.long L$set$70
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$71,LCFI29-LCFI28
	.long L$set$71
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$72,LCFI30-LCFI29
	.long L$set$72
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$73,LCFI31-LCFI30
	.long L$set$73
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$74,LCFI32-LCFI31
	.long L$set$74
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$75,LCFI33-LCFI32
	.long L$set$75
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$76,LCFI34-LCFI33
	.long L$set$76
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$77,LCFI35-LCFI34
	.long L$set$77
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$78,LCFI36-LCFI35
	.long L$set$78
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$79,LCFI37-LCFI36
	.long L$set$79
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$80,LEFDE17-LASFDE17
	.long L$set$80
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB7314-.
	.set L$set$81,LFE7314-LFB7314
	.quad L$set$81
	.byte	0x8
	.quad	LLSDA7314-.
	.byte	0x4
	.set L$set$82,LCFI38-LFB7314
	.long L$set$82
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$83,LCFI39-LCFI38
	.long L$set$83
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$84,LCFI40-LCFI39
	.long L$set$84
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$85,LCFI41-LCFI40
	.long L$set$85
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$86,LCFI42-LCFI41
	.long L$set$86
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$87,LCFI43-LCFI42
	.long L$set$87
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$88,LCFI44-LCFI43
	.long L$set$88
	.byte	0xe
	.byte	0xf0,0x1
	.byte	0x4
	.set L$set$89,LCFI45-LCFI44
	.long L$set$89
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$90,LCFI46-LCFI45
	.long L$set$90
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$91,LCFI47-LCFI46
	.long L$set$91
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$92,LCFI48-LCFI47
	.long L$set$92
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$93,LCFI49-LCFI48
	.long L$set$93
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$94,LCFI50-LCFI49
	.long L$set$94
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$95,LCFI51-LCFI50
	.long L$set$95
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$96,LCFI52-LCFI51
	.long L$set$96
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$97,LEFDE19-LASFDE19
	.long L$set$97
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB6356-.
	.set L$set$98,LFE6356-LFB6356
	.quad L$set$98
	.byte	0x8
	.quad	LLSDA6356-.
	.byte	0x4
	.set L$set$99,LCFI53-LFB6356
	.long L$set$99
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$100,LCFI54-LCFI53
	.long L$set$100
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$101,LCFI55-LCFI54
	.long L$set$101
	.byte	0xb
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$102,LEFDE21-LASFDE21
	.long L$set$102
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB6353-.
	.set L$set$103,LFE6353-LFB6353
	.quad L$set$103
	.byte	0x8
	.quad	LLSDA6353-.
	.byte	0x4
	.set L$set$104,LCFI56-LFB6353
	.long L$set$104
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$105,LCFI57-LCFI56
	.long L$set$105
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$106,LCFI58-LCFI57
	.long L$set$106
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$107,LCFI59-LCFI58
	.long L$set$107
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$108,LCFI60-LCFI59
	.long L$set$108
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$109,LCFI61-LCFI60
	.long L$set$109
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$110,LCFI62-LCFI61
	.long L$set$110
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$111,LEFDE23-LASFDE23
	.long L$set$111
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB7277-.
	.set L$set$112,LFE7277-LFB7277
	.quad L$set$112
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$113,LCFI63-LFB7277
	.long L$set$113
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$114,LCFI64-LCFI63
	.long L$set$114
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE23:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_base_component.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
