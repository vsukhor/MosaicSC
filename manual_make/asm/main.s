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
	.globl __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEE6_M_runEv
	.weak_definition __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEE6_M_runEv
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEE6_M_runEv:
LFB8298:
	movq	%rdi, %rax
	movq	24(%rdi), %rcx
	movq	32(%rdi), %rdx
	movq	40(%rdi), %rsi
	movq	56(%rax), %r10
	movq	48(%rdi), %rdi
	movq	8(%rax), %r9
	movq	16(%rax), %r8
	jmp	*%r10
LFE8298:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED1Ev
	.weak_definition __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED1Ev
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED1Ev:
LFB8268:
	movq	__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	jmp	__ZNSt6thread6_StateD2Ev
LFE8268:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED0Ev
	.weak_definition __ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED0Ev
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED0Ev:
LFB8269:
	movq	__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE@GOTPCREL(%rip), %rax
	pushq	%rbx
LCFI0:
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	call	__ZNSt6thread6_StateD2Ev
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
LCFI1:
	jmp	__ZdlPvm
LFE8269:
	.cstring
	.align 3
lC0:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.86:
LFB8416:
	pushq	%r13
LCFI2:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI3:
	pushq	%rbp
LCFI4:
	pushq	%rbx
LCFI5:
	subq	$8, %rsp
LCFI6:
	movq	%r13, (%rdi)
	testq	%rsi, %rsi
	je	L8
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	L19
	cmpq	$1, %rax
	je	L20
	testq	%rax, %rax
	jne	L11
L13:
	movq	(%rbx), %rax
	movq	%rbp, 8(%rbx)
	movb	$0, (%rax,%rbp)
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
	ret
L20:
LCFI12:
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
	jmp	L13
L19:
	leaq	1(%rax), %rdi
	call	__Znwm
	movq	%rbp, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %r13
L11:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memcpy
	jmp	L13
L8:
	leaq	lC0(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE8416:
	.cstring
lC1:
	.ascii "basic_string::_M_create\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.160:
LFB8476:
	pushq	%rbp
LCFI13:
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rsp, %rbp
LCFI14:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LCFI15:
	movq	%rdi, %rbx
	subq	$216, %rsp
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	L28
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, -144(%rbp)
	vmovaps	%xmm2, -128(%rbp)
	vmovaps	%xmm3, -112(%rbp)
	vmovaps	%xmm4, -96(%rbp)
	vmovaps	%xmm5, -80(%rbp)
	vmovaps	%xmm6, -64(%rbp)
	vmovaps	%xmm7, -48(%rbp)
L28:
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
	ja	L33
	cmpq	$1, %r12
	je	L34
	testq	%r12, %r12
	jne	L25
L27:
	movq	%r12, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdi,%r12)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI16:
	ret
	.align 4,0x90
L34:
LCFI17:
	movzbl	0(%r13), %eax
	movb	%al, 16(%rbx)
	jmp	L27
	.align 4,0x90
L33:
	testl	%eax, %eax
	js	L35
	leaq	1(%r12), %rdi
	call	__Znwm
	movq	%r12, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rdi
L25:
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	_memcpy
	movq	(%rbx), %rdi
	jmp	L27
L35:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE8476:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC10ParametersD1Ev
	.weak_definition __ZN8MosaicSC10ParametersD1Ev
__ZN8MosaicSC10ParametersD1Ev:
LFB6516:
	pushq	%rbx
LCFI18:
	movq	%rdi, %rbx
	movq	168(%rdi), %rdi
	testq	%rdi, %rdi
	je	L37
	call	__ZdlPv
L37:
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	L38
	call	__ZdlPv
L38:
	movq	32(%rbx), %rdi
	leaq	48(%rbx), %rax
	cmpq	%rax, %rdi
	je	L39
	call	__ZdlPv
L39:
	movq	(%rbx), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L47
	popq	%rbx
LCFI19:
	jmp	__ZdlPv
	.align 4,0x90
L47:
LCFI20:
	popq	%rbx
LCFI21:
	ret
LFE6516:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Common7ThreadsD1Ev
	.weak_definition __ZN5Utils6Common7ThreadsD1Ev
__ZN5Utils6Common7ThreadsD1Ev:
LFB6525:
	pushq	%rbx
LCFI22:
	movq	%rdi, %rbx
	movq	88(%rdi), %rdx
	movq	80(%rdi), %rdi
	cmpq	%rdi, %rdx
	je	L55
	cmpq	$0, (%rdi)
	jne	L53
	movq	%rdi, %rax
	jmp	L54
	.align 4,0x90
L67:
	cmpq	$0, (%rax)
	jne	L53
L54:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	L67
L55:
	testq	%rdi, %rdi
	je	L52
	call	__ZdlPv
L52:
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	L57
	call	__ZdlPv
L57:
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	L58
	call	__ZdlPv
L58:
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	L68
	popq	%rbx
LCFI23:
	jmp	__ZdlPv
	.align 4,0x90
L68:
LCFI24:
	popq	%rbx
LCFI25:
	ret
L53:
LCFI26:
	call	__ZSt9terminatev
LFE6525:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN8MosaicSC5PottsD1Ev
	.weak_definition __ZN8MosaicSC5PottsD1Ev
__ZN8MosaicSC5PottsD1Ev:
LFB6547:
	pushq	%r15
LCFI27:
	pushq	%r14
LCFI28:
	pushq	%r13
LCFI29:
	pushq	%r12
LCFI30:
	movq	%rdi, %r12
	pushq	%rbp
LCFI31:
	leaq	576(%rdi), %rbp
	pushq	%rbx
LCFI32:
	leaq	696(%rdi), %rbx
	subq	$24, %rsp
LCFI33:
	.align 4,0x90
L71:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L72
	call	__ZdlPv
	subq	$24, %rbx
	cmpq	%rbx, %rbp
	jne	L71
L73:
	movq	584(%r12), %rax
	movq	576(%r12), %rdi
	cmpq	%rdi, %rax
	je	L75
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L76
	.align 4,0x90
L164:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L78
L79:
	addq	$24, %rbx
L76:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L164
	movq	%rbx, %rdi
	cmpq	%rbp, %rbx
	jne	L79
L78:
	movq	576(%r12), %rdi
L75:
	testq	%rdi, %rdi
	je	L80
	call	__ZdlPv
L80:
	movq	552(%r12), %rdi
	testq	%rdi, %rdi
	je	L81
	call	__ZdlPv
L81:
	movq	536(%r12), %rax
	movq	528(%r12), %rdi
	cmpq	%rdi, %rax
	je	L82
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L83
	.align 4,0x90
L165:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L85
L86:
	addq	$24, %rbx
L83:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L165
	movq	%rbx, %rdi
	cmpq	%rbp, %rbx
	jne	L86
L85:
	movq	528(%r12), %rdi
L82:
	testq	%rdi, %rdi
	je	L87
	call	__ZdlPv
L87:
	movq	512(%r12), %rax
	movq	504(%r12), %rdi
	leaq	504(%r12), %r13
	cmpq	%rdi, %rax
	je	L88
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L89
	.align 4,0x90
L166:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L91
L92:
	addq	$24, %rbx
L89:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L166
	movq	%rbx, %rdi
	cmpq	%rbp, %rbx
	jne	L92
L91:
	movq	504(%r12), %rdi
L88:
	testq	%rdi, %rdi
	je	L93
	call	__ZdlPv
L93:
	leaq	480(%r12), %rbp
	subq	$48, %r13
	leaq	384(%r12), %rsi
	movabsq	$768614336404564651, %r15
	movq	%rbp, %rax
	movq	%rsi, 8(%rsp)
	movabsq	$2305843009213693951, %r14
	subq	%rsi, %rax
	movq	%r14, (%rsp)
	shrq	$3, %rax
	imulq	%r15, %rax
	andq	%r14, %rax
	leaq	(%rax,%rax,2), %rax
	salq	$3, %rax
	subq	%rax, %r13
	.align 4,0x90
L94:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rcx
	movq	%rdx, %rdi
	cmpq	%rdx, %rcx
	je	L95
	leaq	24(%rdx), %r14
	subq	%r14, %rcx
	shrq	$3, %rcx
	imulq	%r15, %rcx
	andq	(%rsp), %rcx
	leaq	3(%rcx,%rcx,2), %rcx
	leaq	(%rdx,%rcx,8), %rbx
	jmp	L96
	.align 4,0x90
L167:
	call	__ZdlPv
	movq	%r14, %rdx
	cmpq	%r14, %rbx
	je	L162
L98:
	addq	$24, %r14
L96:
	movq	(%rdx), %rdi
	testq	%rdi, %rdi
	jne	L167
	movq	%r14, %rdx
	cmpq	%rbx, %r14
	jne	L98
L162:
	movq	0(%rbp), %rdi
L95:
	testq	%rdi, %rdi
	je	L99
	call	__ZdlPv
	subq	$24, %rbp
	cmpq	%rbp, %r13
	jne	L94
L100:
	movq	8(%rsp), %r13
	leaq	360(%r12), %rbp
	movabsq	$768614336404564651, %r15
	subq	$144, %r13
	.align 4,0x90
L102:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rcx
	movq	%rdx, %rdi
	cmpq	%rdx, %rcx
	je	L103
	movabsq	$2305843009213693951, %rax
	leaq	24(%rdx), %r14
	subq	%r14, %rcx
	shrq	$3, %rcx
	imulq	%r15, %rcx
	andq	%rax, %rcx
	leaq	3(%rcx,%rcx,2), %rcx
	leaq	(%rdx,%rcx,8), %rbx
	jmp	L104
	.align 4,0x90
L168:
	call	__ZdlPv
	movq	%r14, %rdx
	cmpq	%r14, %rbx
	je	L163
L106:
	addq	$24, %r14
L104:
	movq	(%rdx), %rdi
	testq	%rdi, %rdi
	jne	L168
	movq	%r14, %rdx
	cmpq	%rbx, %r14
	jne	L106
L163:
	movq	0(%rbp), %rdi
L103:
	testq	%rdi, %rdi
	je	L107
	call	__ZdlPv
	subq	$24, %rbp
	cmpq	%rbp, %r13
	jne	L102
L108:
	movq	248(%r12), %rax
	movq	240(%r12), %rdi
	cmpq	%rdi, %rax
	je	L110
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L111
	.align 4,0x90
L169:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L113
L114:
	addq	$24, %rbx
L111:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L169
	movq	%rbx, %rdi
	cmpq	%rbp, %rbx
	jne	L114
L113:
	movq	240(%r12), %rdi
L110:
	testq	%rdi, %rdi
	je	L115
	call	__ZdlPv
L115:
	movq	224(%r12), %rax
	movq	216(%r12), %rdi
	cmpq	%rdi, %rax
	je	L116
	leaq	104(%rdi), %r13
	leaq	104(%rax), %r14
	.align 4,0x90
L121:
	leaq	-120(%r13), %rbp
	movq	%r13, %rbx
	.align 4,0x90
L117:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L118
	call	__ZdlPv
	subq	$24, %rbx
	cmpq	%rbx, %rbp
	jne	L117
	subq	$-128, %r13
	cmpq	%r14, %r13
	jne	L121
L172:
	movq	216(%r12), %rdi
L116:
	testq	%rdi, %rdi
	je	L122
	call	__ZdlPv
L122:
	movq	56(%r12), %rdi
	leaq	72(%r12), %rax
	cmpq	%rax, %rdi
	je	L123
	call	__ZdlPv
L123:
	movq	32(%r12), %rax
	movq	24(%r12), %rdi
	cmpq	%rdi, %rax
	je	L124
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L125
	.align 4,0x90
L170:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L127
L128:
	addq	$24, %rbx
L125:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L170
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	jne	L128
L127:
	movq	24(%r12), %rdi
L124:
	testq	%rdi, %rdi
	je	L129
	call	__ZdlPv
L129:
	movq	8(%r12), %rax
	movq	(%r12), %rdi
	cmpq	%rdi, %rax
	je	L130
	leaq	24(%rdi), %rbx
	subq	%rbx, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbp
	jmp	L131
	.align 4,0x90
L171:
	call	__ZdlPv
	movq	%rbx, %rdi
	cmpq	%rbx, %rbp
	je	L133
L134:
	addq	$24, %rbx
L131:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L171
	movq	%rbx, %rdi
	cmpq	%rbp, %rbx
	jne	L134
L133:
	movq	(%r12), %rdi
L130:
	testq	%rdi, %rdi
	je	L160
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
	jmp	__ZdlPv
	.align 4,0x90
L118:
LCFI41:
	subq	$24, %rbx
	cmpq	%rbx, %rbp
	jne	L117
	subq	$-128, %r13
	cmpq	%r14, %r13
	jne	L121
	jmp	L172
	.align 4,0x90
L72:
	subq	$24, %rbx
	cmpq	%rbp, %rbx
	jne	L71
	jmp	L73
	.align 4,0x90
L107:
	subq	$24, %rbp
	cmpq	%r13, %rbp
	jne	L102
	jmp	L108
	.align 4,0x90
L99:
	subq	$24, %rbp
	cmpq	%r13, %rbp
	jne	L94
	jmp	L100
	.align 4,0x90
L160:
	addq	$24, %rsp
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
	ret
LFE6547:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB7265:
	leaq	8(%rsp), %r10
LCFI49:
	andq	$-32, %rsp
	movq	2496(%rdi), %rax
	pushq	-8(%r10)
	pushq	%rbp
LCFI50:
	movq	%rsp, %rbp
	pushq	%r10
LCFI51:
	pushq	%rbx
LCFI52:
	cmpq	$623, %rax
	ja	L174
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L175:
	movq	%rdx, 2496(%rdi)
	movl	%eax, %edx
	popq	%rbx
	shrl	$11, %edx
	popq	%r10
LCFI53:
	popq	%rbp
	xorl	%eax, %edx
	leaq	-8(%r10), %rsp
LCFI54:
	movl	%edx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	ret
	.align 4,0x90
L174:
LCFI55:
	movq	%rdi, %rax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	je	L217
	movl	4(%rdi), %edx
	movl	(%rdi), %esi
	movl	%edx, %ecx
	andl	$-2147483648, %esi
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	1588(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	cmovne	%r8d, %ecx
	movl	%ecx, (%rdi)
	cmpq	$1, %rax
	je	L218
	movl	8(%rdi), %ecx
	andl	$-2147483648, %edx
	movl	%ecx, %esi
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	1592(%rdi), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %esi
	movl	%esi, 4(%rdi)
	cmpq	$2, %rax
	je	L219
	movl	12(%rdi), %edx
	andl	$-2147483648, %ecx
	movl	%edx, %esi
	andl	$2147483647, %esi
	orl	%esi, %ecx
	movl	%ecx, %esi
	shrl	%esi
	xorl	1596(%rdi), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %ecx
	cmovne	%r8d, %esi
	movl	%esi, 8(%rdi)
	cmpq	$3, %rax
	je	L220
	movl	16(%rdi), %esi
	andl	$-2147483648, %edx
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	1600(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %ecx
	movl	%ecx, 12(%rdi)
	cmpq	$4, %rax
	je	L221
	movl	20(%rdi), %edx
	andl	$-2147483648, %esi
	movl	%edx, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	1604(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	cmovne	%r8d, %ecx
	movl	%ecx, 16(%rdi)
	cmpq	$5, %rax
	je	L222
	movl	24(%rdi), %esi
	andl	$-2147483648, %edx
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	1608(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %ecx
	movl	%ecx, 20(%rdi)
	cmpq	$6, %rax
	je	L223
	movl	28(%rdi), %ecx
	andl	$-2147483648, %esi
	movl	$220, %r11d
	movl	$7, %ebx
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	1612(%rdi), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 24(%rdi)
L176:
	movl	$227, %r10d
	vmovdqa	lC2(%rip), %ymm2
	vmovdqa	lC3(%rip), %ymm3
	xorl	%edx, %edx
	subq	%rax, %r10
	vmovdqa	lC4(%rip), %ymm4
	salq	$2, %rax
	vpxor	%xmm7, %xmm7, %xmm7
	movq	%r10, %r9
	leaq	(%rdi,%rax), %rcx
	vmovdqa	lC5(%rip), %ymm5
	leaq	4(%rdi,%rax), %r8
	leaq	1588(%rdi,%rax), %rsi
	shrq	$3, %r9
	xorl	%eax, %eax
	.align 4,0x90
L186:
	vpand	(%r8,%rax), %ymm3, %ymm1
	vpand	(%rcx,%rax), %ymm2, %ymm0
	addq	$1, %rdx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm4, %ymm0, %ymm0
	vpxor	(%rsi,%rax), %ymm1, %ymm1
	vpcmpeqd	%ymm7, %ymm0, %ymm0
	vpxor	%ymm5, %ymm1, %ymm6
	vpblendvb	%ymm0, %ymm1, %ymm6, %ymm0
	vmovdqa	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpq	%rdx, %r9
	ja	L186
	movq	%r10, %rdx
	andq	$-8, %rdx
	movq	%rdx, %r9
	leaq	(%rbx,%rdx), %rax
	notq	%r9
	cmpq	%rdx, %r10
	je	L187
	leaq	(%rdi,%rax,4), %r8
	leaq	1(%rax), %r10
	movl	4(%r8), %ecx
	movl	(%r8), %edx
	movl	%ecx, %esi
	andl	$-2147483648, %edx
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	1588(%r8), %esi
	movl	%esi, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %edx
	movq	%r11, %rdx
	cmovne	%ebx, %esi
	movl	%esi, (%r8)
	addq	%r9, %rdx
	je	L187
	leaq	(%rdi,%r10,4), %r9
	andl	$-2147483648, %ecx
	leaq	2(%rax), %r11
	movl	4(%r9), %esi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %ecx
	movl	%ecx, %r8d
	shrl	%r8d
	xorl	1588(%r9), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %ecx
	cmovne	%r10d, %r8d
	movl	%r8d, (%r9)
	cmpq	$1, %rdx
	je	L187
	leaq	(%rdi,%r11,4), %r9
	andl	$-2147483648, %esi
	leaq	3(%rax), %r10
	movl	4(%r9), %ecx
	movl	%ecx, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %esi
	movl	%esi, %r8d
	shrl	%r8d
	xorl	1588(%r9), %r8d
	movl	%r8d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %r8d
	movl	%r8d, (%r9)
	cmpq	$2, %rdx
	je	L187
	leaq	(%rdi,%r10,4), %r9
	andl	$-2147483648, %ecx
	leaq	4(%rax), %r11
	movl	4(%r9), %esi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %ecx
	movl	%ecx, %r8d
	shrl	%r8d
	xorl	1588(%r9), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %ecx
	cmovne	%r10d, %r8d
	movl	%r8d, (%r9)
	cmpq	$3, %rdx
	je	L187
	leaq	(%rdi,%r11,4), %r9
	andl	$-2147483648, %esi
	leaq	5(%rax), %r10
	movl	4(%r9), %ecx
	movl	%ecx, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %esi
	movl	%esi, %r8d
	shrl	%r8d
	xorl	1588(%r9), %r8d
	movl	%r8d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %r8d
	movl	%r8d, (%r9)
	cmpq	$4, %rdx
	je	L187
	leaq	(%rdi,%r10,4), %r9
	andl	$-2147483648, %ecx
	addq	$6, %rax
	movl	4(%r9), %r8d
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %ecx
	movl	%ecx, %esi
	shrl	%esi
	xorl	1588(%r9), %esi
	movl	%esi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %ecx
	cmovne	%r10d, %esi
	movl	%esi, (%r9)
	cmpq	$5, %rdx
	je	L187
	leaq	(%rdi,%rax,4), %rcx
	andl	$-2147483648, %r8d
	movl	4(%rcx), %edx
	andl	$2147483647, %edx
	orl	%r8d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	1588(%rcx), %eax
	movl	%eax, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edx
	cmovne	%esi, %eax
	movl	%eax, (%rcx)
L187:
	leaq	908(%rdi), %rax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	je	L224
	movl	912(%rdi), %edx
	movl	908(%rdi), %esi
	movl	%edx, %ecx
	andl	$-2147483648, %esi
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	cmovne	%r8d, %ecx
	movl	%ecx, 908(%rdi)
	cmpq	$1, %rax
	je	L225
	movl	916(%rdi), %ecx
	andl	$-2147483648, %edx
	movl	%ecx, %esi
	andl	$2147483647, %esi
	orl	%esi, %edx
	movl	%edx, %esi
	shrl	%esi
	xorl	4(%rdi), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %esi
	movl	%esi, 912(%rdi)
	cmpq	$2, %rax
	je	L226
	movl	920(%rdi), %edx
	andl	$-2147483648, %ecx
	movl	%edx, %esi
	andl	$2147483647, %esi
	orl	%esi, %ecx
	movl	%ecx, %esi
	shrl	%esi
	xorl	8(%rdi), %esi
	movl	%esi, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %ecx
	cmovne	%r8d, %esi
	movl	%esi, 916(%rdi)
	cmpq	$3, %rax
	je	L227
	movl	924(%rdi), %esi
	andl	$-2147483648, %edx
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	12(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %ecx
	movl	%ecx, 920(%rdi)
	cmpq	$4, %rax
	je	L228
	movl	928(%rdi), %edx
	andl	$-2147483648, %esi
	movl	%edx, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	16(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %esi
	cmovne	%r8d, %ecx
	movl	%ecx, 924(%rdi)
	cmpq	$5, %rax
	je	L229
	movl	932(%rdi), %esi
	andl	$-2147483648, %edx
	movl	%esi, %ecx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	20(%rdi), %ecx
	movl	%ecx, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %ecx
	movl	%ecx, 928(%rdi)
	cmpq	$6, %rax
	je	L230
	movl	936(%rdi), %ecx
	andl	$-2147483648, %esi
	movl	$389, %r11d
	movl	$234, %ebx
	andl	$2147483647, %ecx
	orl	%esi, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	24(%rdi), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 932(%rdi)
L196:
	movl	$396, %r10d
	leaq	908(,%rax,4), %rdx
	vpxor	%xmm7, %xmm7, %xmm7
	subq	%rax, %r10
	leaq	(%rdi,%rdx), %rcx
	leaq	4(%rdi,%rdx), %r8
	xorl	%eax, %eax
	movq	%r10, %r9
	leaq	-908(%rdi,%rdx), %rsi
	xorl	%edx, %edx
	shrq	$3, %r9
	.align 4,0x90
L206:
	vpand	(%r8,%rax), %ymm3, %ymm1
	vpand	(%rcx,%rax), %ymm2, %ymm0
	addq	$1, %rdx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm4, %ymm0, %ymm0
	vpxor	(%rsi,%rax), %ymm1, %ymm1
	vpcmpeqd	%ymm7, %ymm0, %ymm0
	vpxor	%ymm5, %ymm1, %ymm6
	vpblendvb	%ymm0, %ymm1, %ymm6, %ymm0
	vmovdqa	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpq	%r9, %rdx
	jb	L206
	movq	%r10, %rdx
	andq	$-8, %rdx
	movq	%rdx, %r8
	leaq	(%rbx,%rdx), %rax
	notq	%r8
	cmpq	%rdx, %r10
	je	L207
	leaq	(%rdi,%rax,4), %rdx
	leaq	1(%rax), %r10
	movl	4(%rdx), %r9d
	movl	(%rdx), %esi
	movl	%r9d, %ecx
	andl	$-2147483648, %esi
	andl	$2147483647, %ecx
	orl	%ecx, %esi
	movl	%esi, %ecx
	shrl	%ecx
	xorl	-908(%rdx), %ecx
	movl	%ecx, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %esi
	cmovne	%ebx, %ecx
	movl	%ecx, (%rdx)
	movq	%r11, %rdx
	addq	%r8, %rdx
	je	L207
	leaq	(%rdi,%r10,4), %r10
	andl	$-2147483648, %r9d
	leaq	2(%rax), %r11
	movl	4(%r10), %esi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%r9d, %r8d
	movl	%r8d, %ecx
	shrl	%ecx
	xorl	-908(%r10), %ecx
	movl	%ecx, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %ecx
	movl	%ecx, (%r10)
	cmpq	$1, %rdx
	je	L207
	leaq	(%rdi,%r11,4), %r9
	andl	$-2147483648, %esi
	leaq	3(%rax), %r10
	movl	4(%r9), %ecx
	movl	%ecx, %r8d
	andl	$2147483647, %r8d
	orl	%esi, %r8d
	movl	%r8d, %esi
	shrl	%esi
	xorl	-908(%r9), %esi
	movl	%esi, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %r8d
	cmovne	%r11d, %esi
	movl	%esi, (%r9)
	cmpq	$2, %rdx
	je	L207
	leaq	(%rdi,%r10,4), %r9
	andl	$-2147483648, %ecx
	leaq	4(%rax), %r11
	movl	4(%r9), %esi
	movl	%esi, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %ecx
	movl	%ecx, %r8d
	shrl	%r8d
	xorl	-908(%r9), %r8d
	movl	%r8d, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %ecx
	cmovne	%r10d, %r8d
	movl	%r8d, (%r9)
	cmpq	$3, %rdx
	je	L207
	leaq	(%rdi,%r11,4), %r9
	andl	$-2147483648, %esi
	leaq	5(%rax), %r10
	movl	4(%r9), %ecx
	movl	%ecx, %r8d
	andl	$2147483647, %r8d
	orl	%r8d, %esi
	movl	%esi, %r8d
	shrl	%r8d
	xorl	-908(%r9), %r8d
	movl	%r8d, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %r8d
	movl	%r8d, (%r9)
	cmpq	$4, %rdx
	je	L207
	leaq	(%rdi,%r10,4), %r9
	andl	$-2147483648, %ecx
	addq	$6, %rax
	movl	4(%r9), %r8d
	movl	%r8d, %esi
	andl	$2147483647, %esi
	orl	%esi, %ecx
	movl	%ecx, %esi
	shrl	%esi
	xorl	-908(%r9), %esi
	movl	%esi, %r10d
	xorl	$-1727483681, %r10d
	andl	$1, %ecx
	cmovne	%r10d, %esi
	movl	%esi, (%r9)
	cmpq	$5, %rdx
	je	L207
	leaq	(%rdi,%rax,4), %rcx
	andl	$-2147483648, %r8d
	movl	4(%rcx), %edx
	andl	$2147483647, %edx
	orl	%r8d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	-908(%rcx), %eax
	movl	%eax, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edx
	cmovne	%esi, %eax
	movl	%eax, (%rcx)
L207:
	movl	(%rdi), %eax
	movl	2492(%rdi), %ecx
	movl	%eax, %edx
	andl	$-2147483648, %ecx
	andl	$2147483647, %edx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	1584(%rdi), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 2492(%rdi)
	movl	$1, %edx
	vzeroupper
	jmp	L175
	.align 4,0x90
L225:
	movl	$395, %r11d
	movl	$228, %ebx
	jmp	L196
	.align 4,0x90
L224:
	movl	$396, %r11d
	movl	$227, %ebx
	jmp	L196
	.align 4,0x90
L218:
	movl	$226, %r11d
	movl	$1, %ebx
	jmp	L176
	.align 4,0x90
L217:
	movl	$227, %r11d
	xorl	%ebx, %ebx
	jmp	L176
L221:
	movl	$4, %ebx
	movl	$223, %r11d
	jmp	L176
L226:
	movl	$394, %r11d
	movl	$229, %ebx
	jmp	L196
L219:
	movl	$225, %r11d
	movl	$2, %ebx
	jmp	L176
L220:
	movl	$3, %ebx
	movl	$224, %r11d
	jmp	L176
L227:
	movl	$393, %r11d
	movl	$230, %ebx
	jmp	L196
L228:
	movl	$392, %r11d
	movl	$231, %ebx
	jmp	L196
L229:
	movl	$391, %r11d
	movl	$232, %ebx
	jmp	L196
L222:
	movl	$5, %ebx
	movl	$222, %r11d
	jmp	L176
L230:
	movl	$390, %r11d
	movl	$233, %ebx
	jmp	L196
L223:
	movl	$6, %ebx
	movl	$221, %r11d
	jmp	L176
LFE7265:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:
LFB7300:
	pushq	%r14
LCFI56:
	movl	$15, %eax
	pushq	%r13
LCFI57:
	pushq	%r12
LCFI58:
	leaq	16(%rdi), %r12
	pushq	%rbp
LCFI59:
	pushq	%rbx
LCFI60:
	movq	8(%rdi), %rdx
	movq	(%rdi), %r13
	cmpq	%rsi, %rdx
	cmovnb	%rdx, %rsi
	movq	%rsi, %rbp
	cmpq	%r13, %r12
	je	L321
	movq	16(%rdi), %rax
L321:
	cmpq	%rbp, %rax
	je	L343
	movq	%rdi, %rbx
	jb	L323
	cmpq	$15, %rbp
	jbe	L324
	testq	%rbp, %rbp
	js	L325
L346:
	leaq	1(%rbp), %rdi
L326:
	call	__Znwm
	movq	(%rbx), %r13
	movq	%rax, %r14
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	$1, %rdx
	je	L347
	testq	%rdx, %rdx
	jne	L348
L329:
	cmpq	%r13, %r12
	je	L330
	movq	%r13, %rdi
	call	__ZdlPv
L330:
	movq	%r14, (%rbx)
	movq	%rbp, 16(%rbx)
L343:
	popq	%rbx
LCFI61:
	popq	%rbp
LCFI62:
	popq	%r12
LCFI63:
	popq	%r13
LCFI64:
	popq	%r14
LCFI65:
	ret
	.align 4,0x90
L323:
LCFI66:
	testq	%rbp, %rbp
	js	L325
	addq	%rax, %rax
	cmpq	%rbp, %rax
	jbe	L346
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbp
	testq	%rax, %rax
	js	L326
	leaq	1(%rax), %rdi
	movq	%rax, %rbp
	jmp	L326
	.align 4,0x90
L324:
	cmpq	%r13, %r12
	je	L343
	addq	$1, %rdx
	cmpq	$1, %rdx
	je	L349
	testq	%rdx, %rdx
	jne	L350
L332:
	movq	%r13, %rdi
	call	__ZdlPv
	movq	%r12, (%rbx)
	popq	%rbx
LCFI67:
	popq	%rbp
LCFI68:
	popq	%r12
LCFI69:
	popq	%r13
LCFI70:
	popq	%r14
LCFI71:
	ret
	.align 4,0x90
L347:
LCFI72:
	movzbl	0(%r13), %eax
	movb	%al, (%r14)
	jmp	L329
	.align 4,0x90
L348:
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_memcpy
	jmp	L329
	.align 4,0x90
L349:
	movzbl	0(%r13), %eax
	movb	%al, 16(%rdi)
	jmp	L332
	.align 4,0x90
L350:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_memcpy
	jmp	L332
L325:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7300:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:
LFB7577:
	cmpq	%rsi, %rdi
	je	L368
	pushq	%r15
LCFI73:
	leaq	16(%rdi), %r15
	movl	$15, %eax
	pushq	%r14
LCFI74:
	pushq	%r13
LCFI75:
	pushq	%r12
LCFI76:
	pushq	%rbp
LCFI77:
	pushq	%rbx
LCFI78:
	subq	$8, %rsp
LCFI79:
	movq	(%rdi), %r13
	movq	8(%rsi), %rbp
	cmpq	%r13, %r15
	je	L353
	movq	16(%rdi), %rax
L353:
	movq	%rsi, %r12
	movq	%rdi, %rbx
	cmpq	%rbp, %rax
	jb	L371
	testq	%rbp, %rbp
	je	L359
L374:
	movq	(%r12), %rsi
	cmpq	$1, %rbp
	jne	L360
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r13
L359:
	movq	%rbp, 8(%rbx)
	movb	$0, 0(%r13,%rbp)
	addq	$8, %rsp
LCFI80:
	popq	%rbx
LCFI81:
	popq	%rbp
LCFI82:
	popq	%r12
LCFI83:
	popq	%r13
LCFI84:
	popq	%r14
LCFI85:
	popq	%r15
LCFI86:
	ret
	.align 4,0x90
L371:
LCFI87:
	testq	%rbp, %rbp
	js	L372
	leaq	(%rax,%rax), %r14
	cmpq	%r14, %rbp
	jnb	L373
	leaq	1(%r14), %rdi
	testq	%r14, %r14
	jns	L357
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r14
	jmp	L357
	.align 4,0x90
L368:
LCFI88:
	ret
	.align 4,0x90
L360:
LCFI89:
	movq	%r13, %rdi
	movq	%rbp, %rdx
	call	_memcpy
	movq	(%rbx), %r13
	jmp	L359
	.align 4,0x90
L373:
	leaq	1(%rbp), %rdi
	movq	%rbp, %r14
L357:
	call	__Znwm
	movq	(%rbx), %rdi
	movq	%rax, %r13
	cmpq	%rdi, %r15
	je	L358
	call	__ZdlPv
L358:
	movq	%r13, (%rbx)
	movq	%r14, 16(%rbx)
	testq	%rbp, %rbp
	je	L359
	jmp	L374
L372:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7577:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB7830:
	pushq	%r15
LCFI90:
	movq	%rdx, %r15
	pushq	%r14
LCFI91:
	leaq	16(%rdi), %r14
	pushq	%r13
LCFI92:
	pushq	%r12
LCFI93:
	movq	%rsi, %r12
	pushq	%rbp
LCFI94:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI95:
	movq	%r8, %rbx
	subq	%rdx, %rbx
	subq	$40, %rsp
LCFI96:
	movq	8(%rdi), %rax
	movq	%rax, %r13
	addq	%rax, %rbx
	movl	$15, %eax
	subq	%rsi, %r13
	subq	%rdx, %r13
	cmpq	(%rdi), %r14
	je	L376
	movq	16(%rdi), %rax
L376:
	testq	%rbx, %rbx
	js	L403
	cmpq	%rax, %rbx
	jbe	L402
	addq	%rax, %rax
	cmpq	%rax, %rbx
	jnb	L402
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbx
	testq	%rax, %rax
	js	L379
	leaq	1(%rax), %rdi
	movq	%rax, %rbx
	jmp	L379
	.align 4,0x90
L402:
	leaq	1(%rbx), %rdi
L379:
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	testq	%r12, %r12
	movq	0(%rbp), %r9
	movq	8(%rsp), %rcx
	movq	%rax, %r10
	movq	16(%rsp), %r8
	je	L382
	cmpq	$1, %r12
	jne	L383
	movzbl	(%r9), %eax
	movb	%al, (%r10)
L382:
	testq	%rcx, %rcx
	je	L384
	testq	%r8, %r8
	je	L384
	leaq	(%r10,%r12), %rdi
	cmpq	$1, %r8
	je	L404
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
L384:
	testq	%r13, %r13
	jne	L405
L386:
	cmpq	%r9, %r14
	je	L388
	movq	%r9, %rdi
	movq	%r10, 8(%rsp)
	call	__ZdlPv
	movq	8(%rsp), %r10
L388:
	movq	%r10, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$40, %rsp
LCFI97:
	popq	%rbx
LCFI98:
	popq	%rbp
LCFI99:
	popq	%r12
LCFI100:
	popq	%r13
LCFI101:
	popq	%r14
LCFI102:
	popq	%r15
LCFI103:
	ret
	.align 4,0x90
L405:
LCFI104:
	leaq	(%r12,%r15), %rsi
	leaq	(%r12,%r8), %rdi
	addq	%r9, %rsi
	addq	%r10, %rdi
	cmpq	$1, %r13
	jne	L387
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L386
	.align 4,0x90
L387:
	movq	%r13, %rdx
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	_memcpy
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	jmp	L386
	.align 4,0x90
L383:
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
	jmp	L382
	.align 4,0x90
L404:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r13, %r13
	je	L386
	jmp	L405
L403:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7830:
	.cstring
lC6:
	.ascii "basic_string::append\0"
	.text
	.align 4,0x90
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
LFB6778:
	pushq	%r14
LCFI105:
	pushq	%r13
LCFI106:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI107:
	movq	%rdx, %r12
	pushq	%rbp
LCFI108:
	pushq	%rbx
LCFI109:
	movq	%rdi, %rbx
	movq	%r13, (%rdi)
	movq	(%rsi), %r14
	movq	8(%rsi), %rbp
	movq	%r14, %rax
	addq	%rbp, %rax
	je	L407
	testq	%r14, %r14
	je	L435
L407:
	cmpq	$15, %rbp
	ja	L436
	cmpq	$1, %rbp
	je	L437
	movq	%r13, %rax
	testq	%rbp, %rbp
	jne	L410
L412:
	movq	%rbp, 8(%rbx)
	movq	%r12, %rdi
	movb	$0, (%rax,%rbp)
	call	_strlen
	movq	8(%rbx), %rsi
	movabsq	$9223372036854775807, %rdx
	subq	%rsi, %rdx
	cmpq	%rax, %rdx
	jb	L438
	movq	(%rbx), %rdi
	leaq	(%rsi,%rax), %rbp
	movl	$15, %edx
	cmpq	%rdi, %r13
	je	L414
	movq	16(%rbx), %rdx
L414:
	cmpq	%rdx, %rbp
	ja	L415
	testq	%rax, %rax
	je	L416
	addq	%rsi, %rdi
	cmpq	$1, %rax
	jne	L417
	movzbl	(%r12), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rdi
L416:
	movq	%rbp, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdi,%rbp)
	popq	%rbx
LCFI110:
	popq	%rbp
LCFI111:
	popq	%r12
LCFI112:
	popq	%r13
LCFI113:
	popq	%r14
LCFI114:
	ret
	.align 4,0x90
L437:
LCFI115:
	movzbl	(%r14), %eax
	movb	%al, 16(%rbx)
	movq	%r13, %rax
	jmp	L412
	.align 4,0x90
L436:
	testq	%rbp, %rbp
	js	L439
	leaq	1(%rbp), %rdi
LEHB0:
	call	__Znwm
LEHE0:
	movq	%rbp, 16(%rbx)
	movq	%rax, (%rbx)
L410:
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	(%rbx), %rax
	jmp	L412
	.align 4,0x90
L415:
	movq	%rax, %r8
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
LEHB1:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rbx), %rdi
	jmp	L416
	.align 4,0x90
L417:
	movq	%rax, %rdx
	movq	%r12, %rsi
	call	_memcpy
	movq	(%rbx), %rdi
	jmp	L416
L438:
	leaq	lC6(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE1:
L422:
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	cmpq	%rdi, %r13
	je	L433
	vzeroupper
	call	__ZdlPv
L419:
	movq	%rbp, %rdi
LEHB2:
	call	__Unwind_Resume
L435:
	leaq	lC0(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
L439:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE2:
L433:
	vzeroupper
	jmp	L419
LFE6778:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA6778:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x27
	.set L$set$0,LEHB0-LFB6778
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB6778
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L422-LFB6778
	.long L$set$4
	.byte	0
	.set L$set$5,LEHB2-LFB6778
	.long L$set$5
	.set L$set$6,LEHE2-LEHB2
	.long L$set$6
	.long	0
	.byte	0
	.text
	.align 4,0x90
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:
LFB7001:
	pushq	%r15
LCFI116:
	movq	%rsi, %r15
	pushq	%r14
LCFI117:
	movq	%rdx, %r14
	pushq	%r13
LCFI118:
	pushq	%r12
LCFI119:
	pushq	%rbp
LCFI120:
	pushq	%rbx
LCFI121:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	leaq	16(%rbx), %r12
	subq	$24, %rsp
LCFI122:
	call	_strlen
	movq	%r12, (%rbx)
	movq	%rax, %rbp
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	addq	8(%r14), %rax
	cmpq	$15, %rax
	ja	L472
	movq	%rbp, %r13
	movl	$15, %eax
	movq	%r12, %rcx
	xorl	%r9d, %r9d
	cmpq	%rax, %r13
	ja	L447
L477:
	testq	%rbp, %rbp
	je	L448
	leaq	(%rcx,%r9), %rdi
	cmpq	$1, %rbp
	jne	L449
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
	.align 4,0x90
L448:
	movq	%r13, 8(%rbx)
	movl	$15, %eax
	movb	$0, (%rcx,%r13)
	movq	8(%r14), %r8
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdi
	movq	(%r14), %rcx
	leaq	(%r8,%rsi), %rbp
	cmpq	%rdi, %r12
	je	L450
	movq	16(%rbx), %rax
L450:
	cmpq	%rax, %rbp
	ja	L451
	testq	%r8, %r8
	je	L452
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	L453
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rdi
L452:
	movq	%rbp, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdi,%rbp)
	addq	$24, %rsp
LCFI123:
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
L472:
LCFI130:
	testq	%rax, %rax
	js	L473
	cmpq	$30, %rax
	movl	$30, %edx
	cmovnb	%rax, %rdx
	leaq	1(%rdx), %rdi
	movq	%rdx, (%rsp)
LEHB3:
	call	__Znwm
	movq	8(%rbx), %r9
	movq	%rax, %rcx
	movq	(%rbx), %r13
	leaq	1(%r9), %rdx
	cmpq	$1, %rdx
	je	L474
	testq	%rdx, %rdx
	jne	L475
L444:
	cmpq	%r13, %r12
	je	L445
	movq	%r13, %rdi
	movq	%rcx, 8(%rsp)
	call	__ZdlPv
	movq	8(%rbx), %r9
	movq	8(%rsp), %rcx
L445:
	movq	(%rsp), %rax
	movq	%rcx, (%rbx)
	movq	%rax, 16(%rbx)
	movabsq	$9223372036854775807, %rax
	subq	%r9, %rax
	cmpq	%rbp, %rax
	jb	L476
	cmpq	%rcx, %r12
	movl	$15, %eax
	cmovne	(%rsp), %rax
	leaq	(%r9,%rbp), %r13
	cmpq	%rax, %r13
	jbe	L477
L447:
	movq	%rbp, %r8
	movq	%r15, %rcx
	xorl	%edx, %edx
	movq	%r9, %rsi
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rbx), %rcx
	jmp	L448
	.align 4,0x90
L451:
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rbx), %rdi
	jmp	L452
	.align 4,0x90
L453:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	(%rbx), %rdi
	jmp	L452
	.align 4,0x90
L449:
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	_memcpy
	movq	(%rbx), %rcx
	jmp	L448
	.align 4,0x90
L474:
	movzbl	0(%r13), %eax
	movb	%al, (%rcx)
	jmp	L444
	.align 4,0x90
L475:
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%r9, 8(%rsp)
	call	_memcpy
	movq	8(%rsp), %r9
	movq	%rax, %rcx
	jmp	L444
L476:
	leaq	lC6(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE3:
L459:
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	cmpq	%rdi, %r12
	je	L470
	vzeroupper
	call	__ZdlPv
L455:
	movq	%rbp, %rdi
LEHB4:
	call	__Unwind_Resume
LEHE4:
L473:
	leaq	lC1(%rip), %rdi
LEHB5:
	call	__ZSt20__throw_length_errorPKc
LEHE5:
L470:
	vzeroupper
	jmp	L455
LFE7001:
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA7001:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x27
	.set L$set$7,LEHB3-LFB7001
	.long L$set$7
	.set L$set$8,LEHE3-LEHB3
	.long L$set$8
	.set L$set$9,L459-LFB7001
	.long L$set$9
	.byte	0
	.set L$set$10,LEHB4-LFB7001
	.long L$set$10
	.set L$set$11,LEHE4-LEHB4
	.long L$set$11
	.long	0
	.byte	0
	.set L$set$12,LEHB5-LFB7001
	.long L$set$12
	.set L$set$13,LEHE5-LEHB5
	.long L$set$13
	.set L$set$14,L459-LFB7001
	.long L$set$14
	.byte	0
	.text
	.cstring
	.align 3
lC7:
	.ascii "No seed file found. Creating a new seed file \0"
lC8:
	.ascii " \0"
lC9:
	.ascii "Unable to create seed file \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Random4CoreIfE9make_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6Common4MsgrE
	.weak_definition __ZN5Utils6Random4CoreIfE9make_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6Common4MsgrE
__ZN5Utils6Random4CoreIfE9make_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6Common4MsgrE:
LFB7007:
	leaq	8(%rsp), %r10
LCFI131:
	andq	$-32, %rsp
	movq	%rdi, %rdx
	pushq	-8(%r10)
	pushq	%rbp
LCFI132:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
LCFI133:
	movq	%rsi, %r12
	leaq	lC7(%rip), %rsi
	pushq	%r10
LCFI134:
	pushq	%rbx
LCFI135:
	leaq	-2560(%rbp), %rbx
	subq	$3488, %rsp
	movq	%rdi, -3520(%rbp)
	movq	%rbx, %rdi
LEHB6:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE6:
	testq	%r12, %r12
	je	L479
	movq	8(%r12), %r14
	movq	-2560(%rbp), %rsi
	testq	%r14, %r14
	je	L480
	movq	-2552(%rbp), %rdx
	movq	%r14, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r13
	testq	%r13, %r13
	je	L535
	cmpb	$0, 56(%r13)
	je	L482
	movsbl	67(%r13), %esi
L483:
	movq	%r14, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-2560(%rbp), %rsi
L480:
	movq	(%r12), %r14
	testq	%r14, %r14
	je	L484
	movq	-2552(%rbp), %rdx
	movq	%r14, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r13
	testq	%r13, %r13
	je	L536
	cmpb	$0, 56(%r13)
	je	L486
	movsbl	67(%r13), %esi
L487:
	movq	%r14, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-2560(%rbp), %rsi
L484:
	leaq	16(%rbx), %rax
	cmpq	%rax, %rsi
	je	L491
	movq	%rsi, %rdi
	call	__ZdlPv
L491:
	movl	$5489, %ecx
	movl	$1, %edx
	.align 4,0x90
L492:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L492
	movq	$624, -64(%rbp)
	movl	$1234567890, %ecx
	movl	$1, %edx
	movl	$1234567890, -2560(%rbp)
	.align 4,0x90
L493:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L493
	leaq	-3472(%rbp), %r13
	leaq	632(%r13), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movb	$0, -2616(%rbp)
	addq	$16, %rax
	vmovdqa	%ymm0, -2608(%rbp)
	movq	%rax, -2840(%rbp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -2624(%rbp)
	movq	8(%rax), %r15
	movq	16(%rax), %rax
	movb	$0, -2615(%rbp)
	movq	-24(%r15), %rdi
	movq	%r15, -3472(%rbp)
	movq	%rax, -3512(%rbp)
	addq	%r13, %rdi
	movq	%rax, (%rdi)
	vzeroupper
LEHB7:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE7:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r13), %rdi
	addq	$24, %rax
	movq	%rax, -3472(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -2840(%rbp)
LEHB8:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE8:
	leaq	8(%r13), %rsi
	leaq	632(%r13), %rdi
LEHB9:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	-3520(%rbp), %rax
	leaq	8(%r13), %rdi
	movl	$20, %edx
	movq	(%rax), %rsi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-3472(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r13, %rdi
	testq	%rax, %rax
	je	L537
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE9:
L495:
	leaq	136(%r13), %rdi
	leaq	-3504(%rbp), %r14
	call	__ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	je	L538
L499:
	movl	$1000001, %r12d
	.align 4,0x90
L503:
	movq	%rbx, %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	cmpl	$-294967295, %eax
	ja	L503
	shrl	%eax
	movl	$4, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	addl	$100000000, %eax
	movl	%eax, -3504(%rbp)
LEHB10:
	call	__ZNSo5writeEPKcl
LEHE10:
	subq	$1, %r12
	jne	L503
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r13), %rdi
	addq	$64, %rax
	movq	%rax, -2840(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	vmovd	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	vmovaps	%xmm0, -3472(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%r13), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%r13), %rdi
	addq	$16, %rax
	movq	%rax, -3464(%rbp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r15), %rax
	movq	-3512(%rbp), %rsi
	movq	%r15, -3472(%rbp)
	leaq	632(%r13), %rdi
	movq	%rsi, -3472(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -2840(%rbp)
	call	__ZNSt8ios_baseD2Ev
	addq	$3488, %rsp
	popq	%rbx
	popq	%r10
LCFI136:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI137:
	ret
L538:
LCFI138:
	movq	-3520(%rbp), %rdx
	leaq	lC9(%rip), %rsi
	movq	%r14, %rdi
LEHB11:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE11:
	testq	%r12, %r12
	je	L500
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	__ZNK5Utils6Common4Msgr4exitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
L501:
	movq	-3504(%rbp), %rdi
	leaq	16(%r14), %rax
	cmpq	%rax, %rdi
	je	L499
	call	__ZdlPv
	jmp	L499
L479:
	movq	-2552(%rbp), %rdx
	movq	-2560(%rbp), %rsi
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
LEHB12:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r13
	testq	%r13, %r13
	je	L539
	cmpb	$0, 56(%r13)
	je	L489
	movsbl	67(%r13), %esi
L490:
	movq	%r14, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE12:
	movq	-2560(%rbp), %rsi
	jmp	L484
L537:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB13:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE13:
	jmp	L495
L482:
	movq	%r13, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L483
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L483
	.align 4,0x90
L486:
	movq	%r13, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L487
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L487
L489:
	movq	%r13, %rdi
LEHB14:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L490
	movq	%r13, %rdi
	call	*%rax
LEHE14:
	movsbl	%al, %esi
	jmp	L490
	.align 4,0x90
L500:
	xorl	%esi, %esi
	movq	%r14, %rdi
LEHB15:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE15:
	jmp	L501
L539:
LEHB16:
	call	__ZSt16__throw_bad_castv
LEHE16:
L516:
	movq	%rax, %rbx
	vzeroupper
L498:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%r13), %rdi
	addq	$16, %rax
	movq	%rax, -2840(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	%rbx, %rdi
LEHB17:
	call	__Unwind_Resume
L517:
	movq	%rax, %rbx
	vzeroupper
L497:
	movq	-24(%r15), %rdx
	movq	-3512(%rbp), %rax
	movq	%r15, -3472(%rbp)
	movq	%rax, -3472(%rbp,%rdx)
	jmp	L498
L518:
	movq	%rax, %rbx
	leaq	8(%r13), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	jmp	L497
L514:
	movq	%rax, %rbx
	vzeroupper
L509:
	movq	%r13, %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE17:
L535:
	call	__ZSt16__throw_bad_castv
L536:
	call	__ZSt16__throw_bad_castv
L513:
	movq	-2560(%rbp), %rdi
	addq	$16, %rbx
	movq	%rax, %r12
	cmpq	%rbx, %rdi
	je	L531
	vzeroupper
	call	__ZdlPv
L506:
	movq	%r12, %rdi
LEHB18:
	call	__Unwind_Resume
LEHE18:
L515:
	movq	-3504(%rbp), %rdi
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rdi
	je	L532
	vzeroupper
	call	__ZdlPv
	jmp	L509
L531:
	vzeroupper
	jmp	L506
L532:
	vzeroupper
	jmp	L509
LFE7007:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDA7007:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xa9,0x1
	.set L$set$15,LEHB6-LFB7007
	.long L$set$15
	.set L$set$16,LEHE6-LEHB6
	.long L$set$16
	.long	0
	.byte	0
	.set L$set$17,LEHB7-LFB7007
	.long L$set$17
	.set L$set$18,LEHE7-LEHB7
	.long L$set$18
	.set L$set$19,L516-LFB7007
	.long L$set$19
	.byte	0
	.set L$set$20,LEHB8-LFB7007
	.long L$set$20
	.set L$set$21,LEHE8-LEHB8
	.long L$set$21
	.set L$set$22,L517-LFB7007
	.long L$set$22
	.byte	0
	.set L$set$23,LEHB9-LFB7007
	.long L$set$23
	.set L$set$24,LEHE9-LEHB9
	.long L$set$24
	.set L$set$25,L518-LFB7007
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB10-LFB7007
	.long L$set$26
	.set L$set$27,LEHE10-LEHB10
	.long L$set$27
	.set L$set$28,L514-LFB7007
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB11-LFB7007
	.long L$set$29
	.set L$set$30,LEHE11-LEHB11
	.long L$set$30
	.set L$set$31,L514-LFB7007
	.long L$set$31
	.byte	0
	.set L$set$32,LEHB12-LFB7007
	.long L$set$32
	.set L$set$33,LEHE12-LEHB12
	.long L$set$33
	.set L$set$34,L513-LFB7007
	.long L$set$34
	.byte	0
	.set L$set$35,LEHB13-LFB7007
	.long L$set$35
	.set L$set$36,LEHE13-LEHB13
	.long L$set$36
	.set L$set$37,L518-LFB7007
	.long L$set$37
	.byte	0
	.set L$set$38,LEHB14-LFB7007
	.long L$set$38
	.set L$set$39,LEHE14-LEHB14
	.long L$set$39
	.set L$set$40,L513-LFB7007
	.long L$set$40
	.byte	0
	.set L$set$41,LEHB15-LFB7007
	.long L$set$41
	.set L$set$42,LEHE15-LEHB15
	.long L$set$42
	.set L$set$43,L515-LFB7007
	.long L$set$43
	.byte	0
	.set L$set$44,LEHB16-LFB7007
	.long L$set$44
	.set L$set$45,LEHE16-LEHB16
	.long L$set$45
	.set L$set$46,L513-LFB7007
	.long L$set$46
	.byte	0
	.set L$set$47,LEHB17-LFB7007
	.long L$set$47
	.set L$set$48,LEHE17-LEHB17
	.long L$set$48
	.long	0
	.byte	0
	.set L$set$49,LEHB18-LFB7007
	.long L$set$49
	.set L$set$50,LEHE18-LEHB18
	.long L$set$50
	.long	0
	.byte	0
	.text
	.cstring
	.align 3
lC10:
	.ascii "Error: The path to config file is missing.\0"
lC11:
	.ascii "config.txt\0"
	.align 3
lC12:
	.ascii "Config file not accessible in with path \0"
	.align 3
lC13:
	.ascii "No directory for input files is available\0"
	.align 3
lC14:
	.ascii "No directory for output files is available\0"
lC15:
	.ascii "seeds\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
LFB6513:
	pushq	%r15
LCFI139:
	pushq	%r14
LCFI140:
	pushq	%r13
LCFI141:
	pushq	%r12
LCFI142:
	pushq	%rbp
LCFI143:
	pushq	%rbx
LCFI144:
	subq	$552, %rsp
LCFI145:
	cmpl	$1, %edi
	jle	L627
	movq	8(%rsi), %rsi
	leaq	336(%rsp), %rbx
	movq	%rbx, %rdi
LEHB19:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.86
LEHE19:
	movq	__ZN5Utils6Common5SLASHB5cxx11E@GOTPCREL(%rip), %rax
	movq	344(%rsp), %rsi
	movq	336(%rsp), %rdi
	movq	8(%rax), %r8
	movq	(%rax), %rcx
	leaq	16(%rbx), %rax
	leaq	(%r8,%rsi), %rbp
	cmpq	%rax, %rdi
	je	L590
	movq	352(%rsp), %rax
L544:
	cmpq	%rax, %rbp
	ja	L545
	testq	%r8, %r8
	je	L547
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	L548
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	336(%rsp), %rdi
L547:
	leaq	64(%rsp), %r13
	movq	%rbp, 344(%rsp)
	leaq	16(%rbx), %rdx
	leaq	16(%r13), %rax
	movb	$0, (%rdi,%rbp)
	movq	%rax, 64(%rsp)
	movq	336(%rsp), %rax
	cmpq	%rdx, %rax
	je	L628
	movq	%rax, 64(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 80(%rsp)
L551:
	movq	344(%rsp), %rax
	leaq	96(%rsp), %r12
	leaq	lC11(%rip), %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%rax, 72(%rsp)
LEHB20:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
LEHE20:
	movq	%r12, %rdi
LEHB21:
	call	__ZN5Utils6Common11file_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	jne	L552
	movq	%r12, %rdx
	leaq	lC12(%rip), %rsi
	movq	%rbx, %rdi
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE21:
	xorl	%esi, %esi
	movq	%rbx, %rdi
LEHB22:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE22:
	movq	336(%rsp), %rdi
	addq	$16, %rbx
	movl	%eax, %ebp
	cmpq	%rbx, %rdi
	je	L554
	call	__ZdlPv
L554:
	movq	96(%rsp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L572
	call	__ZdlPv
L572:
	movq	64(%rsp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	L617
L621:
	call	__ZdlPv
L617:
	addq	$552, %rsp
LCFI146:
	movl	%ebp, %eax
	popq	%rbx
LCFI147:
	popq	%rbp
LCFI148:
	popq	%r12
LCFI149:
	popq	%r13
LCFI150:
	popq	%r14
LCFI151:
	popq	%r15
LCFI152:
	ret
L627:
LCFI153:
	leaq	336(%rsp), %rbx
	leaq	lC10(%rip), %rsi
	movq	%rbx, %rdi
LEHB23:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.86
LEHE23:
	xorl	%esi, %esi
	movq	%rbx, %rdi
LEHB24:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE24:
	movq	336(%rsp), %rdi
	addq	$16, %rbx
	movl	%eax, %ebp
	cmpq	%rbx, %rdi
	jne	L621
	jmp	L617
L552:
	movq	%r12, %rsi
	movq	%rbx, %rdi
LEHB25:
	call	__ZN8MosaicSC10ParametersC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE25:
	movq	%r13, %rsi
	movq	%rbx, %rdi
LEHB26:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movq	%rbx, %rdi
	call	__ZN5Utils6Common16directory_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	je	L629
	leaq	32(%rbx), %rdi
	movq	%r13, %rsi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leaq	32(%rbx), %rdi
	call	__ZN5Utils6Common16directory_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	jne	L558
	leaq	224(%rsp), %r15
	leaq	lC14(%rip), %rsi
	movq	%r15, %rdi
	movq	%r15, 40(%rsp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.86
LEHE26:
	xorl	%esi, %esi
	movq	%r15, %rdi
LEHB27:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE27:
	movl	%eax, %ebp
	movq	224(%rsp), %rdi
	movq	%r15, %rax
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	L619
	jmp	L557
L545:
	xorl	%edx, %edx
	movq	%rbx, %rdi
LEHB28:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE28:
	movq	336(%rsp), %rdi
	jmp	L547
L590:
	movl	$15, %eax
	jmp	L544
L629:
	leaq	224(%rsp), %r14
	leaq	lC13(%rip), %rsi
	movq	%r14, %rdi
	movq	%r14, 40(%rsp)
LEHB29:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.86
LEHE29:
	xorl	%esi, %esi
	movq	%r14, %rdi
LEHB30:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE30:
	movl	%eax, %ebp
	movq	224(%rsp), %rdi
	movq	%r14, %rax
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L557
L619:
	call	__ZdlPv
L557:
	movq	%rbx, %rdi
	call	__ZN8MosaicSC10ParametersD1Ev
	jmp	L554
L548:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	336(%rsp), %rdi
	jmp	L547
L628:
	vmovdqa	352(%rsp), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	jmp	L551
L558:
	leaq	128(%rsp), %rax
	leaq	lC15(%rip), %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, (%rsp)
LEHB31:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
LEHE31:
	movq	%r15, %rdi
LEHB32:
	call	__ZN5Utils6Common11file_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	je	L560
L562:
	movq	%rbx, %rdi
	call	__ZN8MosaicSC5BaseC11set_staticsEPKNS_10ParametersE
	xorl	%eax, %eax
	leaq	168(%rsp), %rdi
	movl	$14, %ecx
	rep; stosl
	movq	408(%rsp), %rax
	movq	400(%rsp), %rsi
	movl	$1, %r8d
	movq	416(%rsp), %r9
	movq	$850045863, 160(%rsp)
	leaq	1(%rax), %rdx
	leaq	224(%rsp), %rax
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	__ZN5Utils6Common7ThreadsC1EmmmNS1_7WeightsEm
LEHE32:
	movq	304(%rsp), %rax
	cmpq	%rax, 312(%rsp)
	je	L563
	leaq	160(%rsp), %rax
	xorl	%ebp, %ebp
	movq	%rax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 24(%rsp)
	.align 4
L570:
	leaq	0(,%rbp,8), %rax
	movl	$64, %edi
	movq	%rax, 32(%rsp)
	movq	256(%rsp), %rax
	movq	(%rax,%rbp,8), %r14
	movq	280(%rsp), %rax
	movq	(%rax,%rbp,8), %r15
	movq	$0, 48(%rsp)
LEHB33:
	call	__Znwm
LEHE33:
	movq	(%rsp), %rcx
	movq	__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE@GOTPCREL(%rip), %rdx
	movq	%rbx, 8(%rax)
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	%rbp, 32(%rax)
	movq	%rcx, 16(%rax)
	movq	8(%rsp), %rcx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	xorl	%edx, %edx
	movq	%rcx, 24(%rax)
	leaq	__Z9runThreadmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersE(%rip), %rcx
	movq	%r15, 40(%rax)
	movq	%r14, 48(%rax)
	movq	%rcx, 56(%rax)
	movq	%rax, 56(%rsp)
LEHB34:
	call	__ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
LEHE34:
	movq	56(%rsp), %rdi
	testq	%rdi, %rdi
	je	L564
	movq	(%rdi), %rax
	call	*8(%rax)
L564:
	movq	304(%rsp), %rdx
	leaq	0(,%rbp,8), %rax
	addq	%rdx, %rax
	cmpq	$0, (%rax)
	jne	L630
	movq	48(%rsp), %rcx
	addq	$1, %rbp
	movq	%rcx, (%rax)
	movq	312(%rsp), %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, %rbp
	jb	L570
L563:
	movq	40(%rsp), %r15
	movq	%r15, %rdi
LEHB35:
	call	__ZN5Utils6Common7Threads4joinEv
LEHE35:
	movq	%r15, %rdi
	call	__ZN5Utils6Common7ThreadsD1Ev
	movq	(%rsp), %rax
	movq	128(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L571
	call	__ZdlPv
L571:
	xorl	%ebp, %ebp
	jmp	L557
L560:
	movq	(%rsp), %rdi
	xorl	%esi, %esi
LEHB36:
	call	__ZN5Utils6Random4CoreIfE9make_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6Common4MsgrE
LEHE36:
	jmp	L562
L630:
	call	__ZSt9terminatev
L599:
	movq	%rax, %rbp
	vzeroupper
L585:
	movq	(%rsp), %rdx
	movq	128(%rsp), %rdi
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	je	L582
	call	__ZdlPv
L582:
	movq	%rbx, %rdi
	call	__ZN8MosaicSC10ParametersD1Ev
L579:
	movq	96(%rsp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	L588
	call	__ZdlPv
L588:
	movq	64(%rsp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	L589
	call	__ZdlPv
L589:
	movq	%rbp, %rdi
LEHB37:
	call	__Unwind_Resume
LEHE37:
L601:
	movq	56(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	L611
	movq	(%rdi), %rax
	vzeroupper
	call	*8(%rax)
L569:
	movq	40(%rsp), %rdi
	call	__ZN5Utils6Common7ThreadsD1Ev
	jmp	L585
L600:
	movq	%rax, %rbp
	vzeroupper
	jmp	L569
L611:
	vzeroupper
	jmp	L569
L598:
L623:
	movq	%rax, %rbp
	movq	40(%rsp), %rax
	movq	224(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L616
	vzeroupper
	call	__ZdlPv
	jmp	L582
L597:
	jmp	L623
L616:
	vzeroupper
	jmp	L582
L596:
	movq	%rax, %rbp
	vzeroupper
	jmp	L582
L591:
L626:
	movq	336(%rsp), %rdi
	addq	$16, %rbx
	movq	%rax, %rbp
	cmpq	%rbx, %rdi
	je	L613
	vzeroupper
	call	__ZdlPv
	jmp	L589
L592:
	jmp	L626
L594:
	movq	%rax, %rbp
	vzeroupper
	jmp	L579
L595:
	movq	336(%rsp), %rdi
	addq	$16, %rbx
	movq	%rax, %rbp
	cmpq	%rbx, %rdi
	je	L614
	vzeroupper
	call	__ZdlPv
	jmp	L579
L593:
	movq	%rax, %rbp
	vzeroupper
	jmp	L588
L613:
	vzeroupper
	jmp	L589
L614:
	vzeroupper
	jmp	L579
LFE6513:
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA6513:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xf7,0x1
	.set L$set$51,LEHB19-LFB6513
	.long L$set$51
	.set L$set$52,LEHE19-LEHB19
	.long L$set$52
	.long	0
	.byte	0
	.set L$set$53,LEHB20-LFB6513
	.long L$set$53
	.set L$set$54,LEHE20-LEHB20
	.long L$set$54
	.set L$set$55,L593-LFB6513
	.long L$set$55
	.byte	0
	.set L$set$56,LEHB21-LFB6513
	.long L$set$56
	.set L$set$57,LEHE21-LEHB21
	.long L$set$57
	.set L$set$58,L594-LFB6513
	.long L$set$58
	.byte	0
	.set L$set$59,LEHB22-LFB6513
	.long L$set$59
	.set L$set$60,LEHE22-LEHB22
	.long L$set$60
	.set L$set$61,L595-LFB6513
	.long L$set$61
	.byte	0
	.set L$set$62,LEHB23-LFB6513
	.long L$set$62
	.set L$set$63,LEHE23-LEHB23
	.long L$set$63
	.long	0
	.byte	0
	.set L$set$64,LEHB24-LFB6513
	.long L$set$64
	.set L$set$65,LEHE24-LEHB24
	.long L$set$65
	.set L$set$66,L591-LFB6513
	.long L$set$66
	.byte	0
	.set L$set$67,LEHB25-LFB6513
	.long L$set$67
	.set L$set$68,LEHE25-LEHB25
	.long L$set$68
	.set L$set$69,L594-LFB6513
	.long L$set$69
	.byte	0
	.set L$set$70,LEHB26-LFB6513
	.long L$set$70
	.set L$set$71,LEHE26-LEHB26
	.long L$set$71
	.set L$set$72,L596-LFB6513
	.long L$set$72
	.byte	0
	.set L$set$73,LEHB27-LFB6513
	.long L$set$73
	.set L$set$74,LEHE27-LEHB27
	.long L$set$74
	.set L$set$75,L598-LFB6513
	.long L$set$75
	.byte	0
	.set L$set$76,LEHB28-LFB6513
	.long L$set$76
	.set L$set$77,LEHE28-LEHB28
	.long L$set$77
	.set L$set$78,L592-LFB6513
	.long L$set$78
	.byte	0
	.set L$set$79,LEHB29-LFB6513
	.long L$set$79
	.set L$set$80,LEHE29-LEHB29
	.long L$set$80
	.set L$set$81,L596-LFB6513
	.long L$set$81
	.byte	0
	.set L$set$82,LEHB30-LFB6513
	.long L$set$82
	.set L$set$83,LEHE30-LEHB30
	.long L$set$83
	.set L$set$84,L597-LFB6513
	.long L$set$84
	.byte	0
	.set L$set$85,LEHB31-LFB6513
	.long L$set$85
	.set L$set$86,LEHE31-LEHB31
	.long L$set$86
	.set L$set$87,L596-LFB6513
	.long L$set$87
	.byte	0
	.set L$set$88,LEHB32-LFB6513
	.long L$set$88
	.set L$set$89,LEHE32-LEHB32
	.long L$set$89
	.set L$set$90,L599-LFB6513
	.long L$set$90
	.byte	0
	.set L$set$91,LEHB33-LFB6513
	.long L$set$91
	.set L$set$92,LEHE33-LEHB33
	.long L$set$92
	.set L$set$93,L600-LFB6513
	.long L$set$93
	.byte	0
	.set L$set$94,LEHB34-LFB6513
	.long L$set$94
	.set L$set$95,LEHE34-LEHB34
	.long L$set$95
	.set L$set$96,L601-LFB6513
	.long L$set$96
	.byte	0
	.set L$set$97,LEHB35-LFB6513
	.long L$set$97
	.set L$set$98,LEHE35-LEHB35
	.long L$set$98
	.set L$set$99,L600-LFB6513
	.long L$set$99
	.byte	0
	.set L$set$100,LEHB36-LFB6513
	.long L$set$100
	.set L$set$101,LEHE36-LEHB36
	.long L$set$101
	.set L$set$102,L599-LFB6513
	.long L$set$102
	.byte	0
	.set L$set$103,LEHB37-LFB6513
	.long L$set$103
	.set L$set$104,LEHE37-LEHB37
	.long L$set$104
	.long	0
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.cstring
lC16:
	.ascii "basic_string::_M_replace\0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
LFB7831:
	movabsq	$9223372036854775807, %rax
	pushq	%r15
LCFI154:
	pushq	%r14
LCFI155:
	pushq	%r13
LCFI156:
	pushq	%r12
LCFI157:
	movq	%rdx, %r12
	pushq	%rbp
LCFI158:
	addq	%r12, %rax
	pushq	%rbx
LCFI159:
	subq	$40, %rsp
LCFI160:
	movq	8(%rdi), %rdx
	subq	%rdx, %rax
	cmpq	%rax, %r8
	ja	L694
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
	je	L633
	movq	16(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	L634
L669:
	addq	%rax, %r13
	testq	%r9, %r9
	setne	%r10b
	cmpq	%rbp, %r12
	setne	%sil
	andl	%esi, %r10d
	cmpq	%rax, %rcx
	jnb	L695
L635:
	testb	%r10b, %r10b
	je	L639
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L696
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L639:
	testq	%rbp, %rbp
	je	L692
	cmpq	$1, %rbp
	jne	L643
L693:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L642
	.align 4,0x90
L695:
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	ja	L635
	testq	%rbp, %rbp
	je	L638
	cmpq	%rbp, %r12
	jb	L638
	cmpq	$1, %rbp
	je	L697
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
	je	L692
	.align 4,0x90
L645:
	leaq	0(%r13,%r12), %rsi
	leaq	0(%r13,%rbp), %rdi
	cmpq	$1, %r9
	je	L698
	movq	%r9, %rdx
	movq	%rcx, (%rsp)
	call	_memmove
	movq	(%rsp), %rcx
	.align 4,0x90
L648:
	cmpq	%rbp, %r12
	jnb	L692
	addq	%r13, %r12
	leaq	(%rcx,%rbp), %rax
	cmpq	%rax, %r12
	jnb	L699
	cmpq	%rcx, %r12
	ja	L652
	leaq	(%rcx,%r15), %rsi
	cmpq	$1, %rbp
	je	L700
	movq	%rbp, %rdx
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L642
	.align 4,0x90
L652:
	subq	%rcx, %r12
	cmpq	$1, %r12
	je	L701
	testq	%r12, %r12
	jne	L702
L655:
	movq	%rbp, %rdx
	leaq	0(%r13,%rbp), %rsi
	leaq	0(%r13,%r12), %rdi
	subq	%r12, %rdx
	cmpq	$1, %rdx
	je	L703
	testq	%rdx, %rdx
	je	L692
	call	_memcpy
	.align 4,0x90
L692:
	movq	(%rbx), %r11
L642:
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%r11,%r14)
	addq	$40, %rsp
LCFI161:
	popq	%rbx
LCFI162:
	popq	%rbp
LCFI163:
	popq	%r12
LCFI164:
	popq	%r13
LCFI165:
	popq	%r14
LCFI166:
	popq	%r15
LCFI167:
	ret
	.align 4,0x90
L633:
LCFI168:
	movl	$15, %esi
	cmpq	$15, %r14
	jbe	L669
L634:
	testq	%r14, %r14
	js	L704
	leaq	(%rsi,%rsi), %r15
	cmpq	%r15, %r14
	jnb	L705
	leaq	1(%r15), %rdi
	testq	%r15, %r15
	jns	L660
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %r15
	jmp	L660
	.align 4,0x90
L643:
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memcpy
	movq	(%rbx), %r11
	jmp	L642
	.align 4,0x90
L696:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L639
	.align 4,0x90
L705:
	leaq	1(%r14), %rdi
	movq	%r14, %r15
L660:
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
	je	L662
	cmpq	$1, %r13
	jne	L663
	movzbl	(%r8), %eax
	movb	%al, (%r11)
L662:
	testq	%rcx, %rcx
	je	L664
	testq	%rbp, %rbp
	je	L664
	leaq	(%r11,%r13), %rdi
	cmpq	$1, %rbp
	je	L706
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
L664:
	testq	%r9, %r9
	je	L666
	leaq	(%r12,%r13), %rsi
	addq	%r13, %rbp
	addq	%r8, %rsi
	leaq	(%r11,%rbp), %rdi
	cmpq	$1, %r9
	jne	L667
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
L666:
	cmpq	%r8, %r10
	je	L668
	movq	%r8, %rdi
	movq	%r11, (%rsp)
	call	__ZdlPv
	movq	(%rsp), %r11
L668:
	movq	%r11, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	L642
	.align 4,0x90
L697:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
L638:
	testb	%r10b, %r10b
	jne	L645
	jmp	L648
	.align 4,0x90
L667:
	movq	%r9, %rdx
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_memcpy
	movq	16(%rsp), %r8
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	jmp	L666
	.align 4,0x90
L663:
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
	jmp	L662
	.align 4,0x90
L706:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	L664
	.align 4,0x90
L699:
	cmpq	$1, %rbp
	je	L693
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	movq	(%rbx), %r11
	jmp	L642
	.align 4,0x90
L698:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	L648
L701:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	jmp	L655
L700:
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r11
	jmp	L642
L703:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %r11
	jmp	L642
L702:
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	_memmove
	jmp	L655
L694:
	leaq	lC16(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L704:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LFE7831:
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	.weak_definition __ZN5Utils6Common4Msgr5printILb1EEEvPKcz
__ZN5Utils6Common4Msgr5printILb1EEEvPKcz:
LFB7916:
	pushq	%r15
LCFI169:
	pushq	%r14
LCFI170:
	pushq	%r13
LCFI171:
	movq	%rdi, %r13
	pushq	%r12
LCFI172:
	pushq	%rbp
LCFI173:
	pushq	%rbx
LCFI174:
	subq	$280, %rsp
LCFI175:
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%r8, 128(%rsp)
	movq	%r9, 136(%rsp)
	testb	%al, %al
	je	L733
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	%xmm1, 160(%rsp)
	vmovaps	%xmm2, 176(%rsp)
	vmovaps	%xmm3, 192(%rsp)
	vmovaps	%xmm4, 208(%rsp)
	vmovaps	%xmm5, 224(%rsp)
	vmovaps	%xmm6, 240(%rsp)
	vmovaps	%xmm7, 256(%rsp)
L733:
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
	ja	L748
	cmpq	$1, %rax
	je	L749
	testq	%rax, %rax
	jne	L750
L712:
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
	je	L713
	testq	%r14, %r14
	je	L751
L713:
	cmpq	$15, %rbx
	ja	L752
	cmpq	$1, %rbx
	je	L753
	leaq	16(%rbp), %rax
	testq	%rbx, %rbx
	jne	L716
L718:
	movq	%rbx, 40(%rsp)
	addq	$16, %r12
	movb	$0, (%rax,%rbx)
	movq	64(%rsp), %rdi
	cmpq	%r12, %rdi
	je	L719
	call	__ZdlPv
L719:
	movq	8(%r13), %rbx
	movq	32(%rsp), %rsi
	testq	%rbx, %rbx
	je	L720
	movq	40(%rsp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L754
	cmpb	$0, 56(%r12)
	je	L722
	movsbl	67(%r12), %esi
L723:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	32(%rsp), %rsi
L720:
	movq	0(%r13), %rbx
	testq	%rbx, %rbx
	je	L724
	movq	40(%rsp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L755
	cmpb	$0, 56(%r12)
	je	L726
	movsbl	67(%r12), %esi
L727:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	32(%rsp), %rsi
L724:
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	je	L746
	movq	%rsi, %rdi
	call	__ZdlPv
L746:
	addq	$280, %rsp
LCFI176:
	popq	%rbx
LCFI177:
	popq	%rbp
LCFI178:
	popq	%r12
LCFI179:
	popq	%r13
LCFI180:
	popq	%r14
LCFI181:
	popq	%r15
LCFI182:
	ret
	.align 4,0x90
L749:
LCFI183:
	movzbl	16(%r13), %eax
	movb	%al, 80(%rsp)
	jmp	L712
	.align 4,0x90
L748:
	leaq	1(%rax), %rdi
	call	__Znwm
	movq	%rbp, 80(%rsp)
	movq	%rax, 64(%rsp)
L710:
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	64(%rsp), %r14
	jmp	L712
	.align 4,0x90
L752:
	testq	%rbx, %rbx
	js	L715
	leaq	1(%rbx), %rdi
	call	__Znwm
	movq	%rbx, 48(%rsp)
	movq	%rax, 32(%rsp)
L716:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	32(%rsp), %rax
	jmp	L718
	.align 4,0x90
L753:
	movzbl	(%r14), %eax
	movb	%al, 48(%rsp)
	leaq	16(%rbp), %rax
	jmp	L718
	.align 4,0x90
L722:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L723
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L723
	.align 4,0x90
L726:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L727
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L727
L754:
	call	__ZSt16__throw_bad_castv
L755:
	call	__ZSt16__throw_bad_castv
L715:
	leaq	lC1(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L750:
	movq	%r14, %rax
	jmp	L710
L751:
	leaq	lC0(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE7916:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDA7916:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.cstring
lC17:
	.ascii "Reading from file \0"
lC18:
	.ascii " seed no: %d\0"
lC19:
	.ascii "Unable to open file \0"
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN5Utils6Random4CoreIfE11readin_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_6Common4MsgrE
	.weak_definition __ZN5Utils6Random4CoreIfE11readin_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_6Common4MsgrE
__ZN5Utils6Random4CoreIfE11readin_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_6Common4MsgrE:
LFB7915:
	leaq	8(%rsp), %r10
LCFI184:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI185:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
LCFI186:
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
LCFI187:
	leaq	-1008(%rbp), %r12
	pushq	%r10
LCFI188:
	pushq	%rbx
	subq	$992, %rsp
LCFI189:
	movq	%rsi, -1032(%rbp)
	leaq	lC17(%rip), %rsi
	movq	%rdx, -1040(%rbp)
	movq	%rdi, %rdx
	movq	%r12, %rdi
LEHB38:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE38:
	movq	-1000(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$11, %rax
	jbe	L785
	movq	-1008(%rbp), %rax
	leaq	16(%r12), %rcx
	leaq	12(%rbx), %r13
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L758
	movq	-992(%rbp), %rdx
L758:
	cmpq	%rdx, %r13
	ja	L759
	movabsq	$8029390801218138912, %rcx
	addq	%rbx, %rax
	movq	%rcx, (%rax)
	movl	$1680154682, 8(%rax)
L760:
	movq	-1008(%rbp), %rax
	movq	%r13, -1000(%rbp)
	leaq	16(%r12), %rdx
	movb	$0, 12(%rax,%rbx)
	leaq	-976(%rbp), %rbx
	movq	-1008(%rbp), %rsi
	leaq	16(%rbx), %rax
	movq	%rax, -976(%rbp)
	cmpq	%rdx, %rsi
	je	L786
	movq	-992(%rbp), %rax
	movq	%rsi, -976(%rbp)
	movq	%rax, -960(%rbp)
L762:
	movq	-1000(%rbp), %rax
	movq	-1040(%rbp), %rdi
	movq	$0, -1000(%rbp)
	movq	-1032(%rbp), %rdx
	movb	$0, -992(%rbp)
	movq	%rax, -968(%rbp)
	leaq	16(%r12), %rax
	movq	%rax, -1008(%rbp)
	xorl	%eax, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movq	-976(%rbp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	L763
	call	__ZdlPv
L763:
	movq	-1008(%rbp), %rdi
	leaq	16(%r12), %rax
	cmpq	%rax, %rdi
	je	L764
	call	__ZdlPv
L764:
	leaq	640(%rbx), %rdi
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
	movq	8(%rax), %r13
	movq	16(%rax), %r15
	movq	-24(%r13), %rax
	movq	%r13, -976(%rbp)
	movq	%r15, -976(%rbp,%rax)
	movq	$0, -968(%rbp)
	movq	-24(%r13), %rdi
	addq	%rbx, %rdi
	vzeroupper
LEHB39:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE39:
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	16(%rbx), %rdi
	addq	$24, %rax
	movq	%rax, -976(%rbp)
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -336(%rbp)
LEHB40:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE40:
	leaq	16(%rbx), %rsi
	leaq	640(%rbx), %rdi
LEHB41:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	(%r14), %rsi
	leaq	16(%rbx), %rdi
	movl	$12, %edx
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	-976(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	L787
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE41:
L766:
	leaq	144(%rbx), %rdi
	call	__ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	jne	L770
	movq	%r14, %rdx
	leaq	lC19(%rip), %rsi
	movq	%r12, %rdi
LEHB42:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	-1040(%rbp), %rdi
	movq	%r12, %rsi
	addq	$16, %r12
	call	__ZNK5Utils6Common4Msgr4exitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movq	-1008(%rbp), %rdi
	cmpq	%r12, %rdi
	je	L770
	call	__ZdlPv
L770:
	movq	-1032(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	salq	$2, %rsi
	call	__ZNSi5seekgExSt12_Ios_Seekdir
	leaq	-1012(%rbp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	call	__ZNSi4readEPcl
LEHE42:
	movq	__ZTVSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	16(%rbx), %rdi
	movl	-1012(%rbp), %r12d
	addq	$24, %rax
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
	movq	-24(%r13), %rax
	movq	%r13, -976(%rbp)
	leaq	640(%rbx), %rdi
	movq	%r15, -976(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -968(%rbp)
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	addq	$992, %rsp
	movl	%r12d, %eax
	popq	%rbx
	popq	%r10
LCFI190:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI191:
	ret
	.align 4,0x90
L759:
LCFI192:
	movl	$12, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	leaq	lC18(%rip), %rcx
LEHB43:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE43:
	jmp	L760
	.align 4,0x90
L786:
	vmovdqa	-992(%rbp), %xmm0
	movq	%rax, %rsi
	vmovaps	%xmm0, -960(%rbp)
	jmp	L762
	.align 4,0x90
L787:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB44:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE44:
	jmp	L766
L785:
	leaq	lC6(%rip), %rdi
LEHB45:
	call	__ZSt20__throw_length_errorPKc
LEHE45:
L776:
	movq	-1008(%rbp), %rdi
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	L783
	vzeroupper
	call	__ZdlPv
L773:
	movq	%rbx, %rdi
LEHB46:
	call	__Unwind_Resume
L777:
	movq	%rax, %r12
	movq	%rbx, %rdi
	vzeroupper
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%r12, %rdi
	call	__Unwind_Resume
L783:
	vzeroupper
	jmp	L773
L778:
	movq	%rax, %r12
	vzeroupper
L769:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	640(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, -336(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	%r12, %rdi
	call	__Unwind_Resume
LEHE46:
L779:
	movq	%rax, %r12
	vzeroupper
L768:
	movq	-24(%r13), %rdx
	movq	%r13, -976(%rbp)
	movq	%r15, -976(%rbp,%rdx)
	movq	$0, -968(%rbp)
	jmp	L769
L780:
	movq	%rax, %r12
	leaq	16(%rbx), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	jmp	L768
LFE7915:
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA7915:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x75
	.set L$set$105,LEHB38-LFB7915
	.long L$set$105
	.set L$set$106,LEHE38-LEHB38
	.long L$set$106
	.long	0
	.byte	0
	.set L$set$107,LEHB39-LFB7915
	.long L$set$107
	.set L$set$108,LEHE39-LEHB39
	.long L$set$108
	.set L$set$109,L778-LFB7915
	.long L$set$109
	.byte	0
	.set L$set$110,LEHB40-LFB7915
	.long L$set$110
	.set L$set$111,LEHE40-LEHB40
	.long L$set$111
	.set L$set$112,L779-LFB7915
	.long L$set$112
	.byte	0
	.set L$set$113,LEHB41-LFB7915
	.long L$set$113
	.set L$set$114,LEHE41-LEHB41
	.long L$set$114
	.set L$set$115,L780-LFB7915
	.long L$set$115
	.byte	0
	.set L$set$116,LEHB42-LFB7915
	.long L$set$116
	.set L$set$117,LEHE42-LEHB42
	.long L$set$117
	.set L$set$118,L777-LFB7915
	.long L$set$118
	.byte	0
	.set L$set$119,LEHB43-LFB7915
	.long L$set$119
	.set L$set$120,LEHE43-LEHB43
	.long L$set$120
	.set L$set$121,L776-LFB7915
	.long L$set$121
	.byte	0
	.set L$set$122,LEHB44-LFB7915
	.long L$set$122
	.set L$set$123,LEHE44-LEHB44
	.long L$set$123
	.set L$set$124,L780-LFB7915
	.long L$set$124
	.byte	0
	.set L$set$125,LEHB45-LFB7915
	.long L$set$125
	.set L$set$126,LEHE45-LEHB45
	.long L$set$126
	.set L$set$127,L776-LFB7915
	.long L$set$127
	.byte	0
	.set L$set$128,LEHB46-LFB7915
	.long L$set$128
	.set L$set$129,LEHE46-LEHB46
	.long L$set$129
	.long	0
	.byte	0
	.text
	.cstring
lC20:
	.ascii "%lu\0"
lC21:
	.ascii "log_\0"
lC22:
	.ascii ".txt\0"
lC23:
	.ascii "Run \0"
lC24:
	.ascii " started: \0"
lC25:
	.ascii " on \0"
lC26:
	.ascii "RUN = %d\0"
lC27:
	.ascii "SEED = %d\0"
lC30:
	.ascii " finished: \0"
lC31:
	.ascii "on \0"
lC33:
	.ascii "%f\0"
lC34:
	.ascii "Wall time used; \0"
lC35:
	.ascii " sec\0"
lC36:
	.ascii "Cannot open file: \0"
	.text
	.align 4,0x90
	.globl __Z9runThreadmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersE
__Z9runThreadmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersE:
LFB6526:
	leaq	8(%rsp), %r10
LCFI193:
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
LCFI194:
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
LCFI195:
	pushq	%rbx
	subq	$7328, %rsp
LCFI196:
	movq	%rdi, -7320(%rbp)
	movq	%rsi, -7376(%rbp)
	movq	%rdx, -7368(%rbp)
	movq	%rcx, -7328(%rbp)
	movq	%r8, -7352(%rbp)
	movq	%r9, -7336(%rbp)
	cmpq	%rsi, %rdi
	jnb	L1297
	leaq	-6848(%rbp), %rax
	movq	%rax, -7264(%rbp)
	addq	$600, %rax
	movq	%rax, -7312(%rbp)
L790:
	movq	-7328(%rbp), %rdi
LEHB47:
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1312
L791:
	leaq	-7216(%rbp), %rax
	movq	-7320(%rbp), %r8
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC20(%rip), %rcx
	movq	%rax, -7344(%rbp)
	movq	%rax, %rdi
	movl	$32, %edx
	xorl	%eax, %eax
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.160
LEHE47:
	leaq	-5184(%rbp), %rax
	movq	%rax, -7248(%rbp)
	addq	$16, %rax
	movq	%rax, -5184(%rbp)
	movq	-7336(%rbp), %rax
	movq	32(%rax), %r12
	movq	40(%rax), %rbx
	movq	%r12, %rax
	addq	%rbx, %rax
	je	L792
	testq	%r12, %r12
	je	L1313
L792:
	cmpq	$15, %rbx
	ja	L1314
	cmpq	$1, %rbx
	je	L1315
	movq	-7248(%rbp), %rax
	addq	$16, %rax
	testq	%rbx, %rbx
	jne	L795
L797:
	movq	%rbx, -5176(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-5176(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L1316
	movq	-7248(%rbp), %rax
	movq	-5184(%rbp), %rdx
	leaq	4(%rbx), %r12
	leaq	16(%rax), %rcx
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L799
	movq	-5168(%rbp), %rax
L799:
	cmpq	%rax, %r12
	ja	L800
	movl	$1600614252, (%rdx,%rbx)
L801:
	movq	-5184(%rbp), %rax
	movq	-7248(%rbp), %rdi
	movl	$15, %edx
	movq	%r12, -5176(%rbp)
	movb	$0, 4(%rax,%rbx)
	movq	-7208(%rbp), %r8
	addq	$16, %rdi
	movq	-5176(%rbp), %rsi
	movq	-5184(%rbp), %rax
	movq	-7216(%rbp), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L802
	movq	-5168(%rbp), %rdx
L802:
	cmpq	%rdx, %rbx
	ja	L807
	testq	%r8, %r8
	je	L808
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L809
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-5184(%rbp), %rax
	.align 4,0x90
L808:
	movq	%rbx, -5176(%rbp)
	movb	$0, (%rax,%rbx)
	leaq	-4160(%rbp), %rax
	movq	-5184(%rbp), %rdx
	leaq	16(%rax), %rcx
	movq	%rax, -7272(%rbp)
	movq	-7248(%rbp), %rax
	movq	%rcx, -4160(%rbp)
	leaq	16(%rax), %rdi
	cmpq	%rdi, %rdx
	je	L1317
	movq	-5176(%rbp), %rsi
	movq	-5168(%rbp), %rax
	movq	%rdi, -5184(%rbp)
	movabsq	$9223372036854775807, %rdi
	movq	%rdx, -4160(%rbp)
	subq	%rsi, %rdi
	movq	%rax, -4144(%rbp)
	movq	%rsi, -4152(%rbp)
	movq	$0, -5176(%rbp)
	movb	$0, -5168(%rbp)
	cmpq	$3, %rdi
	jbe	L811
	cmpq	%rcx, %rdx
	movl	$15, %ecx
	leaq	4(%rsi), %rbx
	cmove	%rcx, %rax
L814:
	cmpq	%rbx, %rax
	jb	L815
	movl	$1954051118, (%rdx,%rsi)
L816:
	movq	-4160(%rbp), %rax
	movq	%rbx, -4152(%rbp)
	movq	-7272(%rbp), %rsi
	movb	$0, (%rax,%rbx)
	leaq	-7184(%rbp), %rax
	movq	%rax, -7360(%rbp)
	addq	$16, %rax
	leaq	16(%rsi), %rdx
	movq	%rax, -7184(%rbp)
	movq	-4160(%rbp), %rax
	cmpq	%rdx, %rax
	je	L1318
	movq	%rax, -7184(%rbp)
	movq	-4144(%rbp), %rax
	movq	%rax, -7168(%rbp)
L818:
	movq	-4152(%rbp), %rax
	movq	-5184(%rbp), %rdi
	movq	%rax, -7176(%rbp)
	movq	-7248(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L819
	call	__ZdlPv
L819:
	leaq	-6096(%rbp), %r15
	leaq	632(%r15), %rdi
	movq	%r15, -7296(%rbp)
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movb	$0, -5240(%rbp)
	addq	$16, %rax
	vmovdqa	%ymm0, -5232(%rbp)
	movq	%rax, -5464(%rbp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, -5248(%rbp)
	movq	8(%rax), %rbx
	movq	16(%rax), %r12
	movb	$0, -5239(%rbp)
	movq	-24(%rbx), %rdi
	movq	%rbx, -6096(%rbp)
	addq	%r15, %rdi
	movq	%r12, (%rdi)
	vzeroupper
LEHB48:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE48:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	8(%r15), %rdi
	addq	$24, %rax
	movq	%rax, -6096(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, -5464(%rbp)
LEHB49:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE49:
	leaq	8(%r15), %rsi
	leaq	632(%r15), %rdi
LEHB50:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE50:
	movq	-7336(%rbp), %rax
	movq	-7296(%rbp), %rbx
	movq	-7184(%rbp), %rsi
	movl	88(%rax), %r9d
	leaq	8(%rbx), %rdi
	testl	%r9d, %r9d
	je	L825
	movl	$17, %edx
LEHB51:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
L1310:
	movq	-6096(%rbp), %rdx
	addq	-24(%rdx), %rbx
	movq	%rbx, %rdi
	testq	%rax, %rax
	je	L1319
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE51:
L827:
	movq	__ZSt4cout@GOTPCREL(%rip), %rax
	movq	-7272(%rbp), %rbx
	movl	$6, %ecx
	movq	$6, -5456(%rbp)
	movq	-7296(%rbp), %rdx
	orl	$256, -5440(%rbp)
	orl	$256, 32(%rax)
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	$6, 16(%rax)
LEHB52:
	call	__ZN5Utils6Common4MsgrC1EPSoPSt14basic_ofstreamIcSt11char_traitsIcEEi
	movq	-7336(%rbp), %rdi
	movq	%rbx, %rsi
	call	__ZNK8MosaicSC10Parameters5printERN5Utils6Common4MsgrE
LEHE52:
	leaq	-6960(%rbp), %rbx
	movb	$0, -6928(%rbp)
	leaq	-7024(%rbp), %r15
	leaq	32(%rbx), %rax
	leaq	16(%r15), %r13
	movq	$0, -6960(%rbp)
	movq	%rax, -6944(%rbp)
	leaq	80(%rbx), %rax
	movq	%rbx, -7304(%rbp)
	movq	$0, -6936(%rbp)
	movq	$0, -6912(%rbp)
	movq	%rax, -6896(%rbp)
	movq	$0, -6888(%rbp)
	movb	$0, -6880(%rbp)
	call	__ZNSt6chrono3_V212system_clock3nowEv
	leaq	8(%rbx), %rdi
	movabsq	$1237940039285380275, %rdx
	movq	%rax, %rcx
	movq	%rax, -6960(%rbp)
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$26, %rdx
	subq	%rcx, %rdx
	movq	%rdx, -6952(%rbp)
	call	_ctime
	movq	%r13, -7024(%rbp)
	movq	%rax, %r12
	testq	%rax, %rax
	je	L830
	movq	%rax, %rdi
	call	_strlen
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	L1320
	cmpq	$1, %rax
	je	L1321
	testq	%rax, %rax
	jne	L1322
L835:
	movq	%rbx, -7016(%rbp)
	leaq	16(%r15), %rcx
	movb	$0, 0(%r13,%rbx)
	movq	-7024(%rbp), %rdx
	movq	-6944(%rbp), %rax
	cmpq	%rcx, %rdx
	je	L836
	movq	-7304(%rbp), %rbx
	movq	-7016(%rbp), %rdi
	movq	-7008(%rbp), %rsi
	leaq	32(%rbx), %rcx
	cmpq	%rcx, %rax
	je	L1323
	movq	-6928(%rbp), %rcx
	movq	%rdx, -6944(%rbp)
	movq	%rdi, -6936(%rbp)
	movq	%rsi, -6928(%rbp)
	testq	%rax, %rax
	je	L838
	movq	%rax, -7024(%rbp)
	movq	%rcx, -7008(%rbp)
L839:
	movq	$0, -7016(%rbp)
	movb	$0, (%rax)
	movq	-7024(%rbp), %rdi
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L840
	call	__ZdlPv
L840:
	movq	-7248(%rbp), %rbx
	movl	$1024, %esi
	movq	%rbx, %rdi
LEHB53:
	call	_gethostname
LEHE53:
	leaq	-6992(%rbp), %rax
	movq	%rax, -7240(%rbp)
	addq	$16, %rax
	movq	%rax, -6992(%rbp)
L841:
	movl	(%rbx), %edx
	addq	$4, %rbx
	leal	-16843009(%rdx), %eax
	andn	%eax, %edx, %eax
	andl	$-2139062144, %eax
	je	L841
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leaq	2(%rbx), %rdx
	cmove	%rdx, %rbx
	movl	%eax, %esi
	addb	%al, %sil
	sbbq	$3, %rbx
	subq	-7248(%rbp), %rbx
	cmpq	$15, %rbx
	ja	L1324
	cmpq	$1, %rbx
	je	L1325
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	testq	%rbx, %rbx
	jne	L844
L846:
	leaq	-7120(%rbp), %r14
	movq	%rbx, -6984(%rbp)
	movb	$0, (%rax,%rbx)
	leaq	16(%r14), %rax
	movq	%r14, %rdi
	movq	%rax, -7120(%rbp)
	movq	-7208(%rbp), %rax
	movq	$0, -7112(%rbp)
	leaq	4(%rax), %rsi
	movb	$0, -7104(%rbp)
LEHB54:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
LEHE54:
	movq	-7112(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L1326
	movq	-7120(%rbp), %rdx
	leaq	16(%r14), %rcx
	leaq	4(%rbx), %r12
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L848
	movq	-7104(%rbp), %rax
L848:
	cmpq	%rax, %r12
	ja	L849
	movl	$544109906, (%rdx,%rbx)
L850:
	movq	-7120(%rbp), %rax
	movq	%r12, -7112(%rbp)
	leaq	16(%r14), %rdi
	movl	$15, %edx
	movb	$0, 4(%rax,%rbx)
	movq	-7208(%rbp), %r8
	movq	-7112(%rbp), %rsi
	movq	-7120(%rbp), %rax
	movq	-7216(%rbp), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L851
	movq	-7104(%rbp), %rdx
L851:
	cmpq	%rdx, %rbx
	ja	L852
	testq	%r8, %r8
	je	L853
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L854
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7120(%rbp), %rax
	.align 4,0x90
L853:
	movq	%rbx, -7112(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-7112(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$9, %rax
	jbe	L1327
	movq	-7120(%rbp), %rax
	leaq	16(%r14), %rcx
	leaq	10(%rbx), %r12
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L860
	movq	-7104(%rbp), %rdx
L860:
	cmpq	%rdx, %r12
	ja	L861
	addq	%rbx, %rax
	movl	$8250, %r8d
	movabsq	$7234316411050685216, %rsi
	movq	%rsi, (%rax)
	movw	%r8w, 8(%rax)
L862:
	movq	-7120(%rbp), %rax
	movq	%r12, -7112(%rbp)
	leaq	16(%r14), %rcx
	movb	$0, 10(%rax,%rbx)
	leaq	-7088(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rax, -7280(%rbp)
	movq	-7120(%rbp), %rax
	movq	%rdx, -7088(%rbp)
	cmpq	%rcx, %rax
	je	L1328
	movq	-7112(%rbp), %rsi
	movq	-7104(%rbp), %rdi
	cmpq	%rdx, %rax
	movq	%rax, -7088(%rbp)
	movq	-6936(%rbp), %r8
	movl	$15, %edx
	movq	$0, -7112(%rbp)
	movq	%rsi, -7080(%rbp)
	movb	$0, -7104(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	%rdi, -7072(%rbp)
	cmove	%rdx, %rdi
	movq	%rcx, -7120(%rbp)
	movq	-6944(%rbp), %rcx
L864:
	cmpq	%rbx, %rdi
	jb	L865
	testq	%r8, %r8
	je	L866
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L867
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7088(%rbp), %rax
	.align 4,0x90
L866:
	movq	%rbx, -7080(%rbp)
	movb	$0, (%rax,%rbx)
	leaq	-7056(%rbp), %rax
	movq	-7088(%rbp), %rdx
	leaq	16(%rax), %rcx
	movq	%rax, -7256(%rbp)
	movq	-7280(%rbp), %rax
	movq	%rcx, -7056(%rbp)
	leaq	16(%rax), %rdi
	cmpq	%rdi, %rdx
	je	L1329
	movq	-7080(%rbp), %rsi
	movq	-7072(%rbp), %rax
	movq	%rdi, -7088(%rbp)
	movabsq	$9223372036854775807, %rdi
	movq	%rdx, -7056(%rbp)
	subq	%rsi, %rdi
	movq	%rax, -7040(%rbp)
	movq	%rsi, -7048(%rbp)
	movq	$0, -7080(%rbp)
	movb	$0, -7072(%rbp)
	cmpq	$3, %rdi
	jbe	L869
	cmpq	%rcx, %rdx
	movl	$15, %ecx
	leaq	4(%rsi), %rbx
	cmove	%rcx, %rax
L872:
	cmpq	%rbx, %rax
	jb	L873
	movl	$544108320, (%rdx,%rsi)
L874:
	movq	-7056(%rbp), %rax
	movq	-7256(%rbp), %rsi
	movq	%rbx, -7048(%rbp)
	leaq	16(%r15), %rdx
	movb	$0, (%rax,%rbx)
	movq	-7056(%rbp), %rax
	leaq	16(%rsi), %rdi
	movq	%rdx, -7024(%rbp)
	cmpq	%rdi, %rax
	je	L1330
	movq	-7040(%rbp), %rcx
	movq	-7048(%rbp), %rsi
	cmpq	%rdx, %rax
	movq	%rdi, -7056(%rbp)
	movq	-6984(%rbp), %r8
	movl	$15, %edi
	movq	%rax, -7024(%rbp)
	movq	%rcx, -7008(%rbp)
	cmovne	%rcx, %rdi
	movq	%rsi, -7016(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -7048(%rbp)
	movb	$0, -7040(%rbp)
L876:
	movq	-6992(%rbp), %rcx
	cmpq	%rbx, %rdi
	jnb	L877
	movq	-7240(%rbp), %rdi
	movl	$15, %edx
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	je	L878
	movq	-6976(%rbp), %rdx
L878:
	cmpq	%rbx, %rdx
	jnb	L1331
	xorl	%edx, %edx
	movq	%r15, %rdi
LEHB55:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE55:
L1302:
	movq	-7024(%rbp), %rax
L882:
	movq	%rbx, -7016(%rbp)
	movb	$0, (%rax,%rbx)
	movq	%r15, %rax
L880:
	movq	-7264(%rbp), %rsi
	leaq	16(%rsi), %rdx
	movq	%rdx, -6848(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L1332
	movq	%rcx, -6848(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -6832(%rbp)
L884:
	movq	8(%rax), %rcx
	movq	%rcx, -6840(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-4152(%rbp), %rbx
	testq	%rbx, %rbx
	je	L885
	movq	-6840(%rbp), %rdx
	movq	-6848(%rbp), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1333
	cmpb	$0, 56(%r12)
	je	L887
	movsbl	67(%r12), %esi
L888:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
L885:
	movq	-4160(%rbp), %rbx
	movq	-6848(%rbp), %rsi
	testq	%rbx, %rbx
	je	L889
	movq	-6840(%rbp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1334
	cmpb	$0, 56(%r12)
	je	L891
	movsbl	67(%r12), %esi
L892:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-6848(%rbp), %rsi
L889:
	movq	-7264(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rsi
	je	L893
	movq	%rsi, %rdi
	call	__ZdlPv
L893:
	movq	-7024(%rbp), %rdi
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L894
	call	__ZdlPv
L894:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L895
	call	__ZdlPv
L895:
	movq	-7280(%rbp), %rax
	movq	-7088(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L896
	call	__ZdlPv
L896:
	movq	-7120(%rbp), %rdi
	leaq	16(%r14), %rax
	cmpq	%rax, %rdi
	je	L897
	call	__ZdlPv
L897:
	movq	-7240(%rbp), %rax
	movq	-6992(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L898
	call	__ZdlPv
L898:
	movl	$4002536, %edi
LEHB56:
	call	__Znwm
LEHE56:
	movq	%rax, %rbx
	movq	-7272(%rbp), %rax
	movq	-7352(%rbp), %rdi
	movq	%rax, 8(%rbx)
LEHB57:
	call	__ZN5Utils6Common11file_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	je	L899
L901:
	movq	-7272(%rbp), %r13
	movq	-7320(%rbp), %r12
	movq	-7352(%rbp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	__ZN5Utils6Random4CoreIfE11readin_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_6Common4MsgrE
LEHE57:
	movl	%eax, (%rbx)
	movq	%r12, %rdx
	leaq	lC26(%rip), %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movl	(%rbx), %edx
	xorl	%eax, %eax
	leaq	lC27(%rip), %rsi
	movq	%r13, %rdi
	call	__ZN5Utils6Common4Msgr5printILb1EEEvPKcz
	movl	$1, %ecx
	movabsq	$4575657221408423936, %rax
	movl	$-1, 4000028(%rbx)
	movl	$5489, 4000032(%rbx)
	movq	%rax, 20(%rbx)
	movl	$5489, %eax
	movl	%eax, %edx
	.align 4,0x90
L902:
	movl	%edx, %eax
	shrl	$30, %eax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rcx), %edx
	movl	%edx, 4000032(%rbx,%rcx,4)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	L902
	movl	(%rbx), %eax
	movl	$1, %ecx
	movq	$624, 4002528(%rbx)
	movl	%eax, 4000032(%rbx)
	movl	%eax, %edx
	.align 4,0x90
L903:
	movl	%edx, %eax
	shrl	$30, %eax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rcx), %edx
	movl	%edx, 4000032(%rbx,%rcx,4)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	L903
	leaq	4000028(%rbx), %rax
	leaq	4000032(%rbx), %r12
	movq	%rax, -7288(%rbp)
	leaq	28(%rbx), %r13
	.align 4,0x90
L906:
	movq	%r12, %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	lC29(%rip), %xmm1
	movl	%eax, %eax
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	vmulss	lC28(%rip), %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	jbe	L906
	vmovss	%xmm0, 0(%r13)
	addq	$4, %r13
	cmpq	%r13, -7288(%rbp)
	jne	L906
	movq	-7328(%rbp), %rdi
	movq	%rbx, -7224(%rbp)
LEHB58:
	call	_pthread_mutex_unlock
LEHE58:
	subq	$8, %rsp
	movq	-7328(%rbp), %r13
	pushq	-7272(%rbp)
	leaq	-7224(%rbp), %r9
	movq	-7264(%rbp), %rbx
	movq	-7336(%rbp), %rsi
	movq	-7368(%rbp), %r8
	movq	%r13, %rdx
	movq	-7344(%rbp), %rcx
	movq	%rbx, %rdi
	call	__ZN8MosaicSC5PottsC1ERKNS_10ParametersERSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt10unique_ptrIN5Utils6Random5BoostIfEESt14default_deleteISI_EERNSF_6Common4MsgrE
	movq	%rbx, %rdi
	call	__ZN8MosaicSC5Potts3runEv
	popq	%rsi
	popq	%rdi
	movq	%r13, %rdi
LEHB59:
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1335
	movq	-6096(%rbp), %rax
	movq	-24(%rax), %rax
	movq	-5856(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	L1336
	cmpb	$0, 56(%rbx)
	je	L914
	movsbl	67(%rbx), %esi
L915:
	movq	-7296(%rbp), %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	__ZSt4cout@GOTPCREL(%rip), %rax
	movq	__ZSt4cout@GOTPCREL(%rip), %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rsi), %rbx
	testq	%rbx, %rbx
	je	L1337
	cmpb	$0, 56(%rbx)
	je	L917
	movsbl	67(%rbx), %esi
L918:
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
LEHE59:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$1237940039285380275, %rdx
	movq	%rax, %rcx
	movq	%rax, -6912(%rbp)
	imulq	%rdx
	movq	-7304(%rbp), %rax
	sarq	$63, %rcx
	leaq	56(%rax), %rdi
	sarq	$26, %rdx
	subq	%rcx, %rdx
	movq	%rdx, -6904(%rbp)
	call	_ctime
	movq	%rax, %r12
	movq	-7240(%rbp), %rax
	leaq	16(%rax), %r13
	movq	%r13, -6992(%rbp)
	testq	%r12, %r12
	je	L919
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	L1338
	cmpq	$1, %rax
	je	L1339
	testq	%rax, %rax
	jne	L1340
L924:
	movq	-7240(%rbp), %rsi
	movq	%rbx, -6984(%rbp)
	movb	$0, 0(%r13,%rbx)
	movq	-6992(%rbp), %rdx
	leaq	16(%rsi), %rcx
	movq	-6896(%rbp), %rax
	cmpq	%rcx, %rdx
	je	L925
	movq	-7304(%rbp), %rbx
	movq	-6984(%rbp), %rdi
	movq	-6976(%rbp), %rsi
	leaq	80(%rbx), %rcx
	cmpq	%rcx, %rax
	je	L1341
	movq	-6880(%rbp), %rcx
	movq	%rdx, -6896(%rbp)
	movq	%rdi, -6888(%rbp)
	movq	%rsi, -6880(%rbp)
	testq	%rax, %rax
	je	L927
	movq	%rax, -6992(%rbp)
	movq	%rcx, -6976(%rbp)
L928:
	movq	$0, -6984(%rbp)
	movb	$0, (%rax)
	movq	-7240(%rbp), %rax
	movq	-6992(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L929
	call	__ZdlPv
L929:
	movq	-7240(%rbp), %rax
	movq	-7248(%rbp), %rbx
	addq	$16, %rax
	movq	%rax, -6992(%rbp)
L1127:
	movl	(%rbx), %edx
	addq	$4, %rbx
	leal	-16843009(%rdx), %eax
	andn	%eax, %edx, %eax
	andl	$-2139062144, %eax
	je	L1127
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leaq	2(%rbx), %rdx
	cmove	%rdx, %rbx
	movl	%eax, %esi
	addb	%al, %sil
	sbbq	$3, %rbx
	subq	-7248(%rbp), %rbx
	cmpq	$15, %rbx
	ja	L1342
	cmpq	$1, %rbx
	je	L1343
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	testq	%rbx, %rbx
	jne	L930
L932:
	movq	%rbx, -6984(%rbp)
	movq	%r14, %rdi
	movb	$0, (%rax,%rbx)
	leaq	16(%r14), %rax
	movq	%rax, -7120(%rbp)
	movq	-7208(%rbp), %rax
	movq	$0, -7112(%rbp)
	leaq	4(%rax), %rsi
	movb	$0, -7104(%rbp)
LEHB60:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
LEHE60:
	movq	-7112(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L1344
	movq	-7120(%rbp), %rdx
	leaq	16(%r14), %rcx
	leaq	4(%rbx), %r12
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L934
	movq	-7104(%rbp), %rax
L934:
	cmpq	%rax, %r12
	ja	L935
	movl	$544109906, (%rdx,%rbx)
L936:
	movq	-7120(%rbp), %rax
	movq	%r12, -7112(%rbp)
	leaq	16(%r14), %rdi
	movl	$15, %edx
	movb	$0, 4(%rax,%rbx)
	movq	-7208(%rbp), %r8
	movq	-7112(%rbp), %rsi
	movq	-7120(%rbp), %rax
	movq	-7216(%rbp), %rcx
	leaq	(%r8,%rsi), %rbx
	cmpq	%rdi, %rax
	je	L937
	movq	-7104(%rbp), %rdx
L937:
	cmpq	%rdx, %rbx
	ja	L938
	testq	%r8, %r8
	je	L939
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L940
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7120(%rbp), %rax
	.align 4,0x90
L939:
	movq	%rbx, -7112(%rbp)
	movb	$0, (%rax,%rbx)
	movq	-7112(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$10, %rax
	jbe	L1345
	movq	-7120(%rbp), %rax
	leaq	16(%r14), %rcx
	leaq	11(%rbx), %r12
	movl	$15, %edx
	cmpq	%rcx, %rax
	je	L946
	movq	-7104(%rbp), %rdx
L946:
	cmpq	%rdx, %r12
	ja	L947
	addq	%rbx, %rax
	movl	$14948, %ecx
	movabsq	$7307217292069791264, %rsi
	movq	%rsi, (%rax)
	movw	%cx, 8(%rax)
	movb	$32, 10(%rax)
L948:
	movq	-7120(%rbp), %rax
	movq	%r12, -7112(%rbp)
	leaq	16(%r14), %rcx
	movb	$0, 11(%rax,%rbx)
	movq	-7280(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-7120(%rbp), %rax
	movq	%rdx, -7088(%rbp)
	cmpq	%rcx, %rax
	je	L1346
	movq	-7112(%rbp), %rsi
	movq	-7104(%rbp), %rdi
	cmpq	%rdx, %rax
	movq	%rax, -7088(%rbp)
	movq	-6888(%rbp), %r8
	movl	$15, %edx
	movq	$0, -7112(%rbp)
	movq	%rsi, -7080(%rbp)
	movb	$0, -7104(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	%rdi, -7072(%rbp)
	cmove	%rdx, %rdi
	movq	%rcx, -7120(%rbp)
	movq	-6896(%rbp), %rcx
L950:
	cmpq	%rbx, %rdi
	jb	L951
	testq	%r8, %r8
	je	L952
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L953
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7088(%rbp), %rax
	.align 4,0x90
L952:
	movq	%rbx, -7080(%rbp)
	movq	-7280(%rbp), %rsi
	movb	$0, (%rax,%rbx)
	movq	-7256(%rbp), %rax
	leaq	16(%rsi), %rdi
	leaq	16(%rax), %rcx
	movq	-7088(%rbp), %rax
	movq	%rcx, -7056(%rbp)
	cmpq	%rdi, %rax
	je	L1347
	movq	-7080(%rbp), %rsi
	movq	-7072(%rbp), %rdx
	movq	%rdi, -7088(%rbp)
	movabsq	$9223372036854775807, %rdi
	movq	%rax, -7056(%rbp)
	subq	%rsi, %rdi
	movq	%rdx, -7040(%rbp)
	movq	%rsi, -7048(%rbp)
	movq	$0, -7080(%rbp)
	movb	$0, -7072(%rbp)
	cmpq	$2, %rdi
	jbe	L955
	cmpq	%rcx, %rax
	movl	$15, %ecx
	leaq	3(%rsi), %rbx
	cmove	%rcx, %rdx
L958:
	cmpq	%rbx, %rdx
	jb	L959
	addq	%rsi, %rax
	movl	$28271, %edx
	movw	%dx, (%rax)
	movb	$32, 2(%rax)
L960:
	movq	-7056(%rbp), %rax
	movq	-7256(%rbp), %rsi
	movq	%rbx, -7048(%rbp)
	leaq	16(%r15), %rdx
	movb	$0, (%rax,%rbx)
	movq	-7056(%rbp), %rax
	leaq	16(%rsi), %rdi
	movq	%rdx, -7024(%rbp)
	cmpq	%rdi, %rax
	je	L1348
	movq	-7040(%rbp), %rcx
	movq	-7048(%rbp), %rsi
	cmpq	%rdx, %rax
	movq	%rdi, -7056(%rbp)
	movq	-6984(%rbp), %r8
	movl	$15, %edi
	movq	%rax, -7024(%rbp)
	movq	%rcx, -7008(%rbp)
	cmovne	%rcx, %rdi
	movq	%rsi, -7016(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -7048(%rbp)
	movb	$0, -7040(%rbp)
L962:
	movq	-6992(%rbp), %rcx
	cmpq	%rbx, %rdi
	jnb	L963
	movq	-7240(%rbp), %rdi
	movl	$15, %edx
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	je	L964
	movq	-6976(%rbp), %rdx
L964:
	cmpq	%rbx, %rdx
	jnb	L1349
	xorl	%edx, %edx
	movq	%r15, %rdi
LEHB61:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE61:
L1303:
	movq	-7024(%rbp), %rax
L968:
	movq	%rbx, -7016(%rbp)
	movb	$0, (%rax,%rbx)
	movq	%r15, %rax
L966:
	leaq	-7152(%rbp), %r13
	leaq	16(%r13), %rdx
	movq	%rdx, -7152(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L1350
	movq	%rcx, -7152(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -7136(%rbp)
L970:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, -7144(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	-7024(%rbp), %rdi
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L971
	call	__ZdlPv
L971:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L972
	call	__ZdlPv
L972:
	movq	-7280(%rbp), %rax
	movq	-7088(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L973
	call	__ZdlPv
L973:
	movq	-7120(%rbp), %rdi
	addq	$16, %r14
	cmpq	%r14, %rdi
	je	L974
	call	__ZdlPv
L974:
	movq	-7240(%rbp), %rax
	movq	-6992(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L975
	call	__ZdlPv
L975:
	movq	-4152(%rbp), %rbx
	testq	%rbx, %rbx
	je	L976
	movq	-7144(%rbp), %rdx
	movq	-7152(%rbp), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1351
	cmpb	$0, 56(%r12)
	je	L978
	movsbl	67(%r12), %esi
L979:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
L976:
	movq	-4160(%rbp), %rbx
	testq	%rbx, %rbx
	je	L980
	movq	-7144(%rbp), %rdx
	movq	-7152(%rbp), %rsi
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1352
	cmpb	$0, 56(%r12)
	je	L982
	movsbl	67(%r12), %esi
L983:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
L980:
	movq	-7256(%rbp), %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	-6912(%rbp), %rax
	leaq	lC33(%rip), %rcx
	subq	-6960(%rbp), %rax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	movl	$328, %edx
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	%rbx, %rdi
	movl	$1, %eax
	vdivsd	lC32(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -6864(%rbp)
LEHB62:
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.160
LEHE62:
	movl	$16, %r8d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	leaq	lC34(%rip), %rcx
LEHB63:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
LEHE63:
	leaq	16(%r15), %rdx
	movq	%rdx, -7024(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	L1353
	movq	%rcx, -7024(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -7008(%rbp)
L985:
	movq	8(%rax), %rcx
	movq	%rcx, -7016(%rbp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	-7016(%rbp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$3, %rax
	jbe	L1354
	movq	-7024(%rbp), %rdx
	leaq	16(%r15), %rcx
	leaq	4(%rbx), %r12
	movl	$15, %eax
	cmpq	%rcx, %rdx
	je	L987
	movq	-7008(%rbp), %rax
L987:
	cmpq	%rax, %r12
	ja	L988
	movl	$1667592992, (%rdx,%rbx)
L989:
	movq	-7024(%rbp), %rax
	movq	%r12, -7016(%rbp)
	leaq	16(%r15), %rdx
	movb	$0, 4(%rax,%rbx)
	movq	-7240(%rbp), %rax
	movq	-7024(%rbp), %rsi
	addq	$16, %rax
	movq	%rax, -6992(%rbp)
	cmpq	%rdx, %rsi
	je	L1355
	movq	-7008(%rbp), %rax
	movq	%rsi, -6992(%rbp)
	movq	%rax, -6976(%rbp)
L991:
	movq	-7016(%rbp), %rdx
	movq	-4152(%rbp), %rbx
	leaq	16(%r15), %rax
	movq	$0, -7016(%rbp)
	movq	%rax, -7024(%rbp)
	movq	%rdx, -6984(%rbp)
	movb	$0, -7008(%rbp)
	testq	%rbx, %rbx
	je	L992
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1356
	cmpb	$0, 56(%r12)
	je	L994
	movsbl	67(%r12), %esi
L995:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-6992(%rbp), %rsi
L992:
	movq	-4160(%rbp), %rbx
	testq	%rbx, %rbx
	je	L996
	movq	-6984(%rbp), %rdx
	movq	%rbx, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edx
	leaq	lC8(%rip), %rsi
	movq	%rax, %rdi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	L1357
	cmpb	$0, 56(%r12)
	je	L998
	movsbl	67(%r12), %esi
L999:
	movq	%rbx, %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-6992(%rbp), %rsi
L996:
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rsi
	je	L1000
	movq	%rsi, %rdi
	call	__ZdlPv
L1000:
	movq	-7024(%rbp), %rdi
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L1001
	call	__ZdlPv
L1001:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1002
	call	__ZdlPv
L1002:
	movq	-6096(%rbp), %rax
	movq	-24(%rax), %rax
	movq	-5856(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	L1358
	cmpb	$0, 56(%rbx)
	je	L1004
	movsbl	67(%rbx), %esi
L1005:
	movq	-7296(%rbp), %rdi
LEHB64:
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	__ZSt4cout@GOTPCREL(%rip), %rax
	movq	__ZSt4cout@GOTPCREL(%rip), %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rsi), %rbx
	testq	%rbx, %rbx
	je	L1359
	cmpb	$0, 56(%rbx)
	je	L1007
	movsbl	67(%rbx), %esi
L1008:
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	call	__ZNSo3putEc
	movq	%rax, %rdi
	call	__ZNSo5flushEv
	movq	-7328(%rbp), %rdi
	call	_pthread_mutex_unlock
LEHE64:
	movq	-7152(%rbp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	L1009
	call	__ZdlPv
L1009:
	movq	-7264(%rbp), %rax
	leaq	720(%rax), %rbx
	.align 4,0x90
L1010:
	subq	$24, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L1011
	call	__ZdlPv
	cmpq	-7312(%rbp), %rbx
	jne	L1010
L1012:
	movq	-6264(%rbp), %rax
	movq	-6272(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1014
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1015
	.align 4,0x90
L1360:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	je	L1017
L1018:
	addq	$24, %r12
L1015:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1360
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L1018
L1017:
	movq	-6272(%rbp), %rdi
L1014:
	testq	%rdi, %rdi
	je	L1019
	call	__ZdlPv
L1019:
	movq	-6296(%rbp), %rdi
	testq	%rdi, %rdi
	je	L1020
	call	__ZdlPv
L1020:
	movq	-6312(%rbp), %rax
	movq	-6320(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1021
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1022
	.align 4,0x90
L1361:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	je	L1024
L1025:
	addq	$24, %r12
L1022:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1361
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L1025
L1024:
	movq	-6320(%rbp), %rdi
L1021:
	testq	%rdi, %rdi
	je	L1026
	call	__ZdlPv
L1026:
	movq	-6336(%rbp), %rax
	movq	-6344(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1027
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1028
	.align 4,0x90
L1362:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	je	L1030
L1031:
	addq	$24, %r12
L1028:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1362
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L1031
L1030:
	movq	-6344(%rbp), %rdi
L1027:
	testq	%rdi, %rdi
	je	L1032
	call	__ZdlPv
L1032:
	movq	-7264(%rbp), %rax
	movabsq	$768614336404564651, %r15
	leaq	504(%rax), %r12
	leaq	384(%rax), %r13
	.align 4,0x90
L1033:
	subq	$24, %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movq	%rax, %rdi
	cmpq	%rax, %rdx
	je	L1034
	movabsq	$2305843009213693951, %rsi
	leaq	24(%rax), %rbx
	subq	%rbx, %rdx
	shrq	$3, %rdx
	imulq	%r15, %rdx
	andq	%rsi, %rdx
	leaq	3(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %r14
	jmp	L1035
	.align 4,0x90
L1363:
	call	__ZdlPv
	movq	%rbx, %rax
	cmpq	%r14, %rbx
	je	L1304
L1037:
	addq	$24, %rbx
L1035:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	L1363
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	L1037
L1304:
	movq	(%r12), %rdi
L1034:
	testq	%rdi, %rdi
	je	L1038
	call	__ZdlPv
	cmpq	%r13, %r12
	jne	L1033
L1039:
	movq	-7264(%rbp), %rax
	movabsq	$768614336404564651, %r15
	leaq	384(%rax), %r12
	leaq	264(%rax), %r13
	.align 4,0x90
L1041:
	subq	$24, %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movq	%rax, %rdi
	cmpq	%rax, %rdx
	je	L1042
	movabsq	$2305843009213693951, %rsi
	leaq	24(%rax), %rbx
	subq	%rbx, %rdx
	shrq	$3, %rdx
	imulq	%r15, %rdx
	andq	%rsi, %rdx
	leaq	3(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %r14
	jmp	L1043
	.align 4,0x90
L1364:
	call	__ZdlPv
	movq	%rbx, %rax
	cmpq	%r14, %rbx
	je	L1305
L1045:
	addq	$24, %rbx
L1043:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	L1364
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	L1045
L1305:
	movq	(%r12), %rdi
L1042:
	testq	%rdi, %rdi
	je	L1046
	call	__ZdlPv
	cmpq	%r13, %r12
	jne	L1041
L1047:
	movq	-6600(%rbp), %rax
	movq	-6608(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1049
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1050
	.align 4,0x90
L1365:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	je	L1052
L1053:
	addq	$24, %r12
L1050:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1365
	movq	%r12, %rdi
	cmpq	%r12, %rbx
	jne	L1053
L1052:
	movq	-6608(%rbp), %rdi
L1049:
	testq	%rdi, %rdi
	je	L1054
	call	__ZdlPv
L1054:
	movq	-6624(%rbp), %rax
	movq	-6632(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1055
	leaq	104(%rdi), %r12
	leaq	104(%rax), %r13
	.align 4,0x90
L1060:
	leaq	-120(%r12), %r14
	movq	%r12, %rbx
	.align 4,0x90
L1056:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L1057
	call	__ZdlPv
	subq	$24, %rbx
	cmpq	%rbx, %r14
	jne	L1056
	subq	$-128, %r12
	cmpq	%r12, %r13
	jne	L1060
L1368:
	movq	-6632(%rbp), %rdi
L1055:
	testq	%rdi, %rdi
	je	L1061
	call	__ZdlPv
L1061:
	movq	-7264(%rbp), %rax
	movq	-6792(%rbp), %rdi
	addq	$72, %rax
	cmpq	%rax, %rdi
	je	L1062
	call	__ZdlPv
L1062:
	movq	-6816(%rbp), %rax
	movq	-6824(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1063
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1064
	.align 4,0x90
L1366:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	je	L1066
L1067:
	addq	$24, %r12
L1064:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1366
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	jne	L1067
L1066:
	movq	-6824(%rbp), %rdi
L1063:
	testq	%rdi, %rdi
	je	L1068
	call	__ZdlPv
L1068:
	movq	-6840(%rbp), %rax
	movq	-6848(%rbp), %rdi
	cmpq	%rdi, %rax
	je	L1069
	leaq	24(%rdi), %r12
	subq	%r12, %rax
	shrq	$3, %rax
	leaq	24(%rdi,%rax,8), %rbx
	jmp	L1070
	.align 4,0x90
L1367:
	call	__ZdlPv
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	je	L1072
L1073:
	addq	$24, %r12
L1070:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L1367
	movq	%r12, %rdi
	cmpq	%rbx, %r12
	jne	L1073
L1072:
	movq	-6848(%rbp), %rdi
L1069:
	testq	%rdi, %rdi
	je	L1074
	call	__ZdlPv
L1074:
	movq	-7224(%rbp), %rdi
	testq	%rdi, %rdi
	je	L1075
	movl	$4002536, %esi
	call	__ZdlPvm
L1075:
	movq	-7304(%rbp), %rax
	movq	-6896(%rbp), %rdi
	addq	$80, %rax
	cmpq	%rax, %rdi
	je	L1076
	call	__ZdlPv
L1076:
	movq	-7304(%rbp), %rax
	movq	-6944(%rbp), %rdi
	addq	$32, %rax
	cmpq	%rax, %rdi
	je	L1077
	call	__ZdlPv
L1077:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	-7296(%rbp), %rbx
	addq	$64, %rax
	leaq	8(%rbx), %rdi
	movq	%rax, -5464(%rbp)
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$24, %rax
	vmovd	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	vmovaps	%xmm0, -6096(%rbp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%rbx), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, -6088(%rbp)
	call	__ZNSt6localeD1Ev
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rsi
	leaq	632(%rbx), %rdi
	movq	8(%rax), %rax
	movq	16(%rsi), %rdx
	movq	%rax, -6096(%rbp)
	movq	-24(%rax), %rax
	movq	%rdx, -6096(%rbp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -5464(%rbp)
	call	__ZNSt8ios_baseD2Ev
	movq	-7360(%rbp), %rax
	movq	-7184(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1078
	call	__ZdlPv
L1078:
	movq	-7344(%rbp), %rax
	movq	-7216(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1079
	call	__ZdlPv
	addq	$1, -7320(%rbp)
	movq	-7320(%rbp), %rax
	cmpq	%rax, -7376(%rbp)
	ja	L790
L1297:
	leaq	-48(%rbp), %rsp
	popq	%rbx
	popq	%r10
LCFI197:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI198:
	ret
	.align 4,0x90
L1057:
LCFI199:
	subq	$24, %rbx
	cmpq	%rbx, %r14
	jne	L1056
	subq	$-128, %r12
	cmpq	%r12, %r13
	jne	L1060
	jmp	L1368
	.align 4,0x90
L1011:
	cmpq	-7312(%rbp), %rbx
	jne	L1010
	jmp	L1012
	.align 4,0x90
L1046:
	cmpq	%r13, %r12
	jne	L1041
	jmp	L1047
	.align 4,0x90
L1038:
	cmpq	%r13, %r12
	jne	L1033
	jmp	L1039
L963:
	testq	%r8, %r8
	je	L968
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L967
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7024(%rbp), %rax
	jmp	L968
L877:
	testq	%r8, %r8
	je	L882
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r8
	jne	L881
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	-7024(%rbp), %rax
	jmp	L882
L825:
	movl	$48, %edx
LEHB65:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
LEHE65:
	jmp	L1310
L1079:
	addq	$1, -7320(%rbp)
	movq	-7320(%rbp), %rax
	cmpq	-7376(%rbp), %rax
	jnb	L1297
	movq	-7328(%rbp), %rdi
LEHB66:
	call	_pthread_mutex_lock
	testl	%eax, %eax
	je	L791
L1312:
	movl	%eax, %edi
	call	__ZSt20__throw_system_errori
LEHE66:
	.align 4,0x90
L917:
	movq	%rbx, %rdi
LEHB67:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L918
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L918
L914:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L915
	movq	%rbx, %rdi
	call	*%rax
LEHE67:
	movsbl	%al, %esi
	jmp	L915
L899:
	movq	-7272(%rbp), %rsi
	movq	-7352(%rbp), %rdi
LEHB68:
	call	__ZN5Utils6Random4CoreIfE9make_seedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6Common4MsgrE
LEHE68:
	jmp	L901
L1007:
	movq	%rbx, %rdi
LEHB69:
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L1008
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L1008
L1004:
	movq	%rbx, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L1005
	movq	%rbx, %rdi
	call	*%rax
LEHE69:
	movsbl	%al, %esi
	jmp	L1005
L959:
	movq	-7256(%rbp), %rdi
	movl	$3, %r8d
	leaq	lC31(%rip), %rcx
	xorl	%edx, %edx
LEHB70:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE70:
	jmp	L960
L951:
	movq	-7280(%rbp), %rdi
	xorl	%edx, %edx
LEHB71:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE71:
	movq	-7088(%rbp), %rax
	jmp	L952
L947:
	movl	$11, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	lC30(%rip), %rcx
LEHB72:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE72:
	jmp	L948
L935:
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	lC23(%rip), %rcx
LEHB73:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	jmp	L936
L938:
	xorl	%edx, %edx
	movq	%r14, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE73:
	movq	-7120(%rbp), %rax
	jmp	L939
L988:
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	leaq	lC35(%rip), %rcx
LEHB74:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE74:
	jmp	L989
L1342:
	leaq	1(%rbx), %rdi
LEHB75:
	call	__Znwm
	movq	%rax, -6992(%rbp)
	movq	%rbx, -6976(%rbp)
L930:
	movq	-7248(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-6992(%rbp), %rax
	jmp	L932
L1338:
	leaq	1(%rax), %rdi
	call	__Znwm
LEHE75:
	movq	%rax, -6992(%rbp)
	movq	%rbx, -6976(%rbp)
L922:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-6992(%rbp), %r13
	jmp	L924
L852:
	xorl	%edx, %edx
	movq	%r14, %rdi
LEHB76:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	-7120(%rbp), %rax
	jmp	L853
L849:
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	lC23(%rip), %rcx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE76:
	jmp	L850
L1324:
	leaq	1(%rbx), %rdi
LEHB77:
	call	__Znwm
LEHE77:
	movq	%rax, -6992(%rbp)
	movq	%rbx, -6976(%rbp)
L844:
	movq	-7248(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_memcpy
	movq	-6992(%rbp), %rax
	jmp	L846
L865:
	movq	-7280(%rbp), %rdi
	xorl	%edx, %edx
LEHB78:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE78:
	movq	-7088(%rbp), %rax
	jmp	L866
L861:
	movl	$10, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	leaq	lC24(%rip), %rcx
LEHB79:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE79:
	jmp	L862
L873:
	movq	-7256(%rbp), %rdi
	movl	$4, %r8d
	leaq	lC25(%rip), %rcx
	xorl	%edx, %edx
LEHB80:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE80:
	jmp	L874
L807:
	movq	-7248(%rbp), %rdi
	xorl	%edx, %edx
LEHB81:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE81:
	movq	-5184(%rbp), %rax
	jmp	L808
L1314:
	testq	%rbx, %rbx
	js	L1369
	leaq	1(%rbx), %rdi
LEHB82:
	call	__Znwm
LEHE82:
	movq	%rax, -5184(%rbp)
	movq	%rbx, -5168(%rbp)
L795:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-5184(%rbp), %rax
	jmp	L797
L800:
	movq	-7248(%rbp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rsi
	leaq	lC21(%rip), %rcx
LEHB83:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE83:
	jmp	L801
L1320:
	leaq	1(%rax), %rdi
LEHB84:
	call	__Znwm
LEHE84:
	movq	%rax, -7024(%rbp)
	movq	%rbx, -7008(%rbp)
L833:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	-7024(%rbp), %r13
	jmp	L835
L815:
	movq	-7272(%rbp), %rdi
	movl	$4, %r8d
	leaq	lC22(%rip), %rcx
	xorl	%edx, %edx
LEHB85:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE85:
	jmp	L816
L1321:
	movzbl	(%r12), %eax
	movb	%al, -7008(%rbp)
	jmp	L835
L1315:
	movzbl	(%r12), %eax
	movb	%al, -5168(%rbp)
	movq	-7248(%rbp), %rax
	addq	$16, %rax
	jmp	L797
L1325:
	movzbl	-5184(%rbp), %eax
	movb	%al, -6976(%rbp)
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	jmp	L846
L1343:
	movzbl	-5184(%rbp), %eax
	movb	%al, -6976(%rbp)
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	jmp	L932
L1339:
	movzbl	(%r12), %eax
	movb	%al, -6976(%rbp)
	jmp	L924
L1328:
	movq	-7112(%rbp), %rsi
	movq	%rdx, %rax
	movl	$15, %edi
	vmovdqa	-7104(%rbp), %xmm0
	movq	-6936(%rbp), %r8
	movb	$0, -7104(%rbp)
	vmovaps	%xmm0, -7072(%rbp)
	movq	-6944(%rbp), %rcx
	movq	%rsi, -7080(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -7112(%rbp)
	jmp	L864
L1330:
	movq	-7048(%rbp), %rsi
	vmovdqa	-7040(%rbp), %xmm0
	movq	%rdx, %rax
	movl	$15, %edi
	movq	-6984(%rbp), %r8
	movb	$0, -7040(%rbp)
	vmovaps	%xmm0, -7008(%rbp)
	movq	%rsi, -7016(%rbp)
	leaq	(%r8,%rsi), %rbx
	movq	$0, -7048(%rbp)
	jmp	L876
L1346:
	movq	-7112(%rbp), %rsi
	movq	%rdx, %rax
	movl	$15, %edi
	vmovdqa	-7104(%rbp), %xmm0
	movq	-6888(%rbp), %r8
	movb	$0, -7104(%rbp)
	vmovaps	%xmm0, -7072(%rbp)
	movq	-6896(%rbp), %rcx
	movq	%rsi, -7080(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -7112(%rbp)
	jmp	L950
L1329:
	movq	-7080(%rbp), %rsi
	vmovdqa	-7072(%rbp), %xmm0
	movabsq	$9223372036854775807, %rax
	movq	$0, -7080(%rbp)
	movb	$0, -7072(%rbp)
	subq	%rsi, %rax
	vmovaps	%xmm0, -7040(%rbp)
	movq	%rsi, -7048(%rbp)
	cmpq	$3, %rax
	jbe	L869
	leaq	4(%rsi), %rbx
	movq	%rcx, %rdx
	movl	$15, %eax
	jmp	L872
L1317:
	movq	-5176(%rbp), %rsi
	vmovdqa	-5168(%rbp), %xmm0
	movabsq	$9223372036854775807, %rax
	movq	$0, -5176(%rbp)
	movb	$0, -5168(%rbp)
	subq	%rsi, %rax
	vmovaps	%xmm0, -4144(%rbp)
	movq	%rsi, -4152(%rbp)
	cmpq	$3, %rax
	jbe	L811
	leaq	4(%rsi), %rbx
	movq	%rcx, %rdx
	movl	$15, %eax
	jmp	L814
L1318:
	vmovdqa	-4144(%rbp), %xmm0
	vmovaps	%xmm0, -7168(%rbp)
	jmp	L818
L1353:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -7008(%rbp)
	jmp	L985
L1350:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -7136(%rbp)
	jmp	L970
L1348:
	movq	-7048(%rbp), %rsi
	vmovdqa	-7040(%rbp), %xmm0
	movq	%rdx, %rax
	movl	$15, %edi
	movq	-6984(%rbp), %r8
	movb	$0, -7040(%rbp)
	vmovaps	%xmm0, -7008(%rbp)
	movq	%rsi, -7016(%rbp)
	leaq	(%rsi,%r8), %rbx
	movq	$0, -7048(%rbp)
	jmp	L962
L1347:
	movq	-7080(%rbp), %rsi
	vmovdqa	-7072(%rbp), %xmm0
	movabsq	$9223372036854775807, %rax
	movq	$0, -7080(%rbp)
	movb	$0, -7072(%rbp)
	subq	%rsi, %rax
	vmovaps	%xmm0, -7040(%rbp)
	movq	%rsi, -7048(%rbp)
	cmpq	$2, %rax
	jbe	L955
	leaq	3(%rsi), %rbx
	movq	%rcx, %rax
	movl	$15, %edx
	jmp	L958
L1355:
	vmovdqa	-7008(%rbp), %xmm0
	movq	%rax, %rsi
	vmovaps	%xmm0, -6976(%rbp)
	jmp	L991
L1332:
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, -6832(%rbp)
	jmp	L884
L1319:
	movl	32(%rbx), %esi
	orl	$4, %esi
LEHB86:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE86:
	jmp	L827
L1341:
	movq	%rdx, -6896(%rbp)
	movq	%rdi, -6888(%rbp)
	movq	%rsi, -6880(%rbp)
L927:
	movq	-7240(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -6992(%rbp)
	jmp	L928
L1323:
	movq	%rdx, -6944(%rbp)
	movq	%rdi, -6936(%rbp)
	movq	%rsi, -6928(%rbp)
L838:
	leaq	16(%r15), %rax
	movq	%rax, -7024(%rbp)
	jmp	L839
L1331:
	movq	-7240(%rbp), %rdi
	movq	%rsi, %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
LEHB87:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
LEHE87:
	jmp	L880
L1349:
	movq	-7240(%rbp), %rdi
	movq	%rsi, %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
LEHB88:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
LEHE88:
	jmp	L966
L998:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L999
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L999
L891:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L892
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L892
L982:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L983
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L983
L887:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L888
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L888
L994:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L995
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L995
L978:
	movq	%r12, %rdi
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	__ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	L979
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	L979
L809:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-5184(%rbp), %rax
	jmp	L808
L854:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-7120(%rbp), %rax
	jmp	L853
L953:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-7088(%rbp), %rax
	jmp	L952
L940:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-7120(%rbp), %rax
	jmp	L939
L867:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	-7088(%rbp), %rax
	jmp	L866
L836:
	movq	-7304(%rbp), %rax
	movq	%r15, %rsi
	leaq	16(%rax), %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movq	-7024(%rbp), %rax
	jmp	L839
L925:
	movq	-7304(%rbp), %rax
	leaq	64(%rax), %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movq	-6992(%rbp), %rax
	jmp	L928
L881:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	jmp	L1302
L967:
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	jmp	L1303
L1313:
	leaq	lC0(%rip), %rdi
LEHB89:
	call	__ZSt19__throw_logic_errorPKc
LEHE89:
L1316:
	leaq	lC6(%rip), %rdi
LEHB90:
	call	__ZSt20__throw_length_errorPKc
LEHE90:
L811:
	leaq	lC6(%rip), %rdi
LEHB91:
	call	__ZSt20__throw_length_errorPKc
LEHE91:
L1186:
	movq	%rax, %rbx
	vzeroupper
L823:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	-7296(%rbp), %rdi
	addq	$16, %rax
	addq	$632, %rdi
	movq	%rax, -5464(%rbp)
	call	__ZNSt8ios_baseD2Ev
L824:
	movq	-7360(%rbp), %rax
	movq	-7184(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L806
L1308:
	call	__ZdlPv
L806:
	movq	-7344(%rbp), %rax
	movq	-7216(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1123
	call	__ZdlPv
L1123:
	movq	%rbx, %rdi
LEHB92:
	call	__Unwind_Resume
LEHE92:
L1187:
	vzeroupper
L822:
	movq	-24(%rbx), %rdx
	movq	%rbx, -6096(%rbp)
	movq	%rax, %rbx
	movq	%r12, -6096(%rbp,%rdx)
	jmp	L823
L1188:
	movq	%rax, %r13
	movq	-7296(%rbp), %rax
	leaq	8(%rax), %rdi
	vzeroupper
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%r13, %rax
	jmp	L822
L1167:
	subq	$1, %rdx
	jne	L1307
	movq	%rax, %rdi
	vzeroupper
	call	___cxa_begin_catch
	movq	-7272(%rbp), %rbx
	movq	-7360(%rbp), %rdx
	leaq	lC36(%rip), %rsi
	movq	%rbx, %rdi
LEHB93:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
LEHE93:
	xorl	%esi, %esi
	movq	%rbx, %rdi
LEHB94:
	call	__ZN5Utils6Common10Exceptions6simpleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_4MsgrE
LEHE94:
	movq	%rbx, %rax
	movq	-4160(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1089
	call	__ZdlPv
L1089:
	call	___cxa_end_catch
	jmp	L827
L1170:
	movq	%rax, %rbx
	movq	-7272(%rbp), %rax
	movq	-4160(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1293
	vzeroupper
	call	__ZdlPv
L1092:
	call	___cxa_end_catch
L1088:
	movq	-7296(%rbp), %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	L824
L1169:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1092
L1293:
	vzeroupper
	jmp	L1092
L1168:
L1307:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1088
L1322:
	movq	%r13, %rax
	jmp	L833
L1171:
	movq	%rax, %rbx
	vzeroupper
L911:
	movq	-7304(%rbp), %rax
	movq	-6896(%rbp), %rdi
	addq	$80, %rax
	cmpq	%rax, %rdi
	je	L1120
	call	__ZdlPv
L1120:
	movq	-7304(%rbp), %rax
	movq	-6944(%rbp), %rdi
	addq	$32, %rax
	cmpq	%rax, %rdi
	je	L1088
	call	__ZdlPv
	jmp	L1088
L1189:
	movq	-7120(%rbp), %rdi
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rdi
	je	L1290
	vzeroupper
	call	__ZdlPv
L859:
	movq	-7240(%rbp), %rax
	movq	-6992(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L911
	call	__ZdlPv
	jmp	L911
L1326:
	leaq	lC6(%rip), %rdi
LEHB95:
	call	__ZSt20__throw_length_errorPKc
LEHE95:
L1290:
	vzeroupper
	jmp	L859
L1327:
	leaq	lC6(%rip), %rdi
LEHB96:
	call	__ZSt20__throw_length_errorPKc
LEHE96:
L869:
	leaq	lC6(%rip), %rdi
LEHB97:
	call	__ZSt20__throw_length_errorPKc
LEHE97:
L1175:
	movq	-7024(%rbp), %rdi
	movq	%rax, %rbx
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L1294
	vzeroupper
	call	__ZdlPv
L1095:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1097
	call	__ZdlPv
L1097:
	movq	-7280(%rbp), %rax
	movq	-7088(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1099
	call	__ZdlPv
L1099:
	movq	-7120(%rbp), %rdi
	addq	$16, %r14
	cmpq	%r14, %rdi
	je	L859
	call	__ZdlPv
	jmp	L859
L1294:
	vzeroupper
	jmp	L1095
L1333:
	call	__ZSt16__throw_bad_castv
L1334:
	call	__ZSt16__throw_bad_castv
L1190:
	movq	%rax, %r12
	movl	$4002536, %esi
	movq	%rbx, %rdi
	vzeroupper
	call	__ZdlPvm
	movq	%r12, %rbx
	jmp	L911
L1176:
	movq	%rax, %rbx
	vzeroupper
L1118:
	movq	-7224(%rbp), %rdi
	testq	%rdi, %rdi
	je	L911
	movl	$4002536, %esi
	call	__ZdlPvm
	jmp	L911
L1177:
	movq	%rax, %rbx
	vzeroupper
L1111:
	movq	-7264(%rbp), %rdi
	call	__ZN8MosaicSC5PottsD1Ev
	jmp	L1118
L1335:
	movl	%eax, %edi
LEHB98:
	call	__ZSt20__throw_system_errori
L1336:
	call	__ZSt16__throw_bad_castv
L1337:
	call	__ZSt16__throw_bad_castv
LEHE98:
L1340:
	movq	%r13, %rax
	jmp	L922
L1191:
	movq	-7120(%rbp), %rdi
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rdi
	je	L1291
	vzeroupper
	call	__ZdlPv
L945:
	movq	-7240(%rbp), %rax
	movq	-6992(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1111
L1306:
	call	__ZdlPv
	jmp	L1111
L1344:
	leaq	lC6(%rip), %rdi
LEHB99:
	call	__ZSt20__throw_length_errorPKc
LEHE99:
L1291:
	vzeroupper
	jmp	L945
L1345:
	leaq	lC6(%rip), %rdi
LEHB100:
	call	__ZSt20__throw_length_errorPKc
LEHE100:
L955:
	leaq	lC6(%rip), %rdi
LEHB101:
	call	__ZSt20__throw_length_errorPKc
LEHE101:
L1181:
	movq	-7024(%rbp), %rdi
	movq	%rax, %rbx
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L1295
	vzeroupper
	call	__ZdlPv
L1104:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1106
	call	__ZdlPv
L1106:
	movq	-7280(%rbp), %rax
	movq	-7088(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1108
	call	__ZdlPv
L1108:
	movq	-7120(%rbp), %rdi
	addq	$16, %r14
	cmpq	%r14, %rdi
	je	L945
	call	__ZdlPv
	jmp	L945
L1295:
	vzeroupper
	jmp	L1104
L1351:
	call	__ZSt16__throw_bad_castv
L1352:
	call	__ZSt16__throw_bad_castv
L1182:
	movq	%rax, %rbx
	vzeroupper
L1116:
	movq	-7152(%rbp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	jne	L1306
	jmp	L1111
L1183:
	movq	%rax, %rbx
	vzeroupper
L1114:
	movq	-7256(%rbp), %rax
	movq	-7056(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1116
	call	__ZdlPv
	jmp	L1116
L1354:
	leaq	lC6(%rip), %rdi
LEHB102:
	call	__ZSt20__throw_length_errorPKc
LEHE102:
L1356:
	call	__ZSt16__throw_bad_castv
L1357:
	call	__ZSt16__throw_bad_castv
L1358:
LEHB103:
	call	__ZSt16__throw_bad_castv
L1359:
	call	__ZSt16__throw_bad_castv
LEHE103:
L1180:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1104
L1179:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1106
L1178:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1108
L1184:
	movq	-7024(%rbp), %rdi
	movq	%rax, %rbx
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L1296
	vzeroupper
	call	__ZdlPv
	jmp	L1114
L1173:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1097
L1172:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1099
L1296:
	vzeroupper
	jmp	L1114
L1174:
	movq	%rax, %rbx
	vzeroupper
	jmp	L1095
L1165:
	movq	%rax, %rbx
	vzeroupper
L1083:
	movq	-7248(%rbp), %rax
	movq	-5184(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	L1308
	jmp	L806
L1369:
	leaq	lC1(%rip), %rdi
LEHB104:
	call	__ZSt20__throw_length_errorPKc
LEHE104:
L1164:
	movq	%rax, %rbx
	vzeroupper
	jmp	L806
L1185:
	movq	%rax, %rbx
	movq	-7248(%rbp), %rax
	movq	-5184(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1289
	vzeroupper
	call	__ZdlPv
	jmp	L806
L1166:
	movq	%rax, %rbx
	movq	-7272(%rbp), %rax
	movq	-4160(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L1292
	vzeroupper
	call	__ZdlPv
	jmp	L1083
L1289:
	vzeroupper
	jmp	L806
L1292:
	vzeroupper
	jmp	L1083
L919:
	leaq	lC0(%rip), %rdi
LEHB105:
	call	__ZSt19__throw_logic_errorPKc
LEHE105:
L830:
	leaq	lC0(%rip), %rdi
LEHB106:
	call	__ZSt19__throw_logic_errorPKc
LEHE106:
LFE6526:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
	.align 3
LLSDA6526:
	.byte	0xff
	.byte	0
	.byte	0x9c,0x6
	.byte	0x3
	.byte	0x8c,0x6
	.set L$set$130,LEHB47-LFB6526
	.long L$set$130
	.set L$set$131,LEHE47-LEHB47
	.long L$set$131
	.long	0
	.byte	0
	.set L$set$132,LEHB48-LFB6526
	.long L$set$132
	.set L$set$133,LEHE48-LEHB48
	.long L$set$133
	.set L$set$134,L1186-LFB6526
	.long L$set$134
	.byte	0
	.set L$set$135,LEHB49-LFB6526
	.long L$set$135
	.set L$set$136,LEHE49-LEHB49
	.long L$set$136
	.set L$set$137,L1187-LFB6526
	.long L$set$137
	.byte	0
	.set L$set$138,LEHB50-LFB6526
	.long L$set$138
	.set L$set$139,LEHE50-LEHB50
	.long L$set$139
	.set L$set$140,L1188-LFB6526
	.long L$set$140
	.byte	0
	.set L$set$141,LEHB51-LFB6526
	.long L$set$141
	.set L$set$142,LEHE51-LEHB51
	.long L$set$142
	.set L$set$143,L1167-LFB6526
	.long L$set$143
	.byte	0x3
	.set L$set$144,LEHB52-LFB6526
	.long L$set$144
	.set L$set$145,LEHE52-LEHB52
	.long L$set$145
	.set L$set$146,L1168-LFB6526
	.long L$set$146
	.byte	0
	.set L$set$147,LEHB53-LFB6526
	.long L$set$147
	.set L$set$148,LEHE53-LEHB53
	.long L$set$148
	.set L$set$149,L1171-LFB6526
	.long L$set$149
	.byte	0
	.set L$set$150,LEHB54-LFB6526
	.long L$set$150
	.set L$set$151,LEHE54-LEHB54
	.long L$set$151
	.set L$set$152,L1189-LFB6526
	.long L$set$152
	.byte	0
	.set L$set$153,LEHB55-LFB6526
	.long L$set$153
	.set L$set$154,LEHE55-LEHB55
	.long L$set$154
	.set L$set$155,L1175-LFB6526
	.long L$set$155
	.byte	0
	.set L$set$156,LEHB56-LFB6526
	.long L$set$156
	.set L$set$157,LEHE56-LEHB56
	.long L$set$157
	.set L$set$158,L1171-LFB6526
	.long L$set$158
	.byte	0
	.set L$set$159,LEHB57-LFB6526
	.long L$set$159
	.set L$set$160,LEHE57-LEHB57
	.long L$set$160
	.set L$set$161,L1190-LFB6526
	.long L$set$161
	.byte	0
	.set L$set$162,LEHB58-LFB6526
	.long L$set$162
	.set L$set$163,LEHE58-LEHB58
	.long L$set$163
	.set L$set$164,L1176-LFB6526
	.long L$set$164
	.byte	0
	.set L$set$165,LEHB59-LFB6526
	.long L$set$165
	.set L$set$166,LEHE59-LEHB59
	.long L$set$166
	.set L$set$167,L1177-LFB6526
	.long L$set$167
	.byte	0
	.set L$set$168,LEHB60-LFB6526
	.long L$set$168
	.set L$set$169,LEHE60-LEHB60
	.long L$set$169
	.set L$set$170,L1191-LFB6526
	.long L$set$170
	.byte	0
	.set L$set$171,LEHB61-LFB6526
	.long L$set$171
	.set L$set$172,LEHE61-LEHB61
	.long L$set$172
	.set L$set$173,L1181-LFB6526
	.long L$set$173
	.byte	0
	.set L$set$174,LEHB62-LFB6526
	.long L$set$174
	.set L$set$175,LEHE62-LEHB62
	.long L$set$175
	.set L$set$176,L1182-LFB6526
	.long L$set$176
	.byte	0
	.set L$set$177,LEHB63-LFB6526
	.long L$set$177
	.set L$set$178,LEHE63-LEHB63
	.long L$set$178
	.set L$set$179,L1183-LFB6526
	.long L$set$179
	.byte	0
	.set L$set$180,LEHB64-LFB6526
	.long L$set$180
	.set L$set$181,LEHE64-LEHB64
	.long L$set$181
	.set L$set$182,L1182-LFB6526
	.long L$set$182
	.byte	0
	.set L$set$183,LEHB65-LFB6526
	.long L$set$183
	.set L$set$184,LEHE65-LEHB65
	.long L$set$184
	.set L$set$185,L1167-LFB6526
	.long L$set$185
	.byte	0x3
	.set L$set$186,LEHB66-LFB6526
	.long L$set$186
	.set L$set$187,LEHE66-LEHB66
	.long L$set$187
	.long	0
	.byte	0
	.set L$set$188,LEHB67-LFB6526
	.long L$set$188
	.set L$set$189,LEHE67-LEHB67
	.long L$set$189
	.set L$set$190,L1177-LFB6526
	.long L$set$190
	.byte	0
	.set L$set$191,LEHB68-LFB6526
	.long L$set$191
	.set L$set$192,LEHE68-LEHB68
	.long L$set$192
	.set L$set$193,L1190-LFB6526
	.long L$set$193
	.byte	0
	.set L$set$194,LEHB69-LFB6526
	.long L$set$194
	.set L$set$195,LEHE69-LEHB69
	.long L$set$195
	.set L$set$196,L1182-LFB6526
	.long L$set$196
	.byte	0
	.set L$set$197,LEHB70-LFB6526
	.long L$set$197
	.set L$set$198,LEHE70-LEHB70
	.long L$set$198
	.set L$set$199,L1180-LFB6526
	.long L$set$199
	.byte	0
	.set L$set$200,LEHB71-LFB6526
	.long L$set$200
	.set L$set$201,LEHE71-LEHB71
	.long L$set$201
	.set L$set$202,L1179-LFB6526
	.long L$set$202
	.byte	0
	.set L$set$203,LEHB72-LFB6526
	.long L$set$203
	.set L$set$204,LEHE72-LEHB72
	.long L$set$204
	.set L$set$205,L1178-LFB6526
	.long L$set$205
	.byte	0
	.set L$set$206,LEHB73-LFB6526
	.long L$set$206
	.set L$set$207,LEHE73-LEHB73
	.long L$set$207
	.set L$set$208,L1191-LFB6526
	.long L$set$208
	.byte	0
	.set L$set$209,LEHB74-LFB6526
	.long L$set$209
	.set L$set$210,LEHE74-LEHB74
	.long L$set$210
	.set L$set$211,L1184-LFB6526
	.long L$set$211
	.byte	0
	.set L$set$212,LEHB75-LFB6526
	.long L$set$212
	.set L$set$213,LEHE75-LEHB75
	.long L$set$213
	.set L$set$214,L1177-LFB6526
	.long L$set$214
	.byte	0
	.set L$set$215,LEHB76-LFB6526
	.long L$set$215
	.set L$set$216,LEHE76-LEHB76
	.long L$set$216
	.set L$set$217,L1189-LFB6526
	.long L$set$217
	.byte	0
	.set L$set$218,LEHB77-LFB6526
	.long L$set$218
	.set L$set$219,LEHE77-LEHB77
	.long L$set$219
	.set L$set$220,L1171-LFB6526
	.long L$set$220
	.byte	0
	.set L$set$221,LEHB78-LFB6526
	.long L$set$221
	.set L$set$222,LEHE78-LEHB78
	.long L$set$222
	.set L$set$223,L1173-LFB6526
	.long L$set$223
	.byte	0
	.set L$set$224,LEHB79-LFB6526
	.long L$set$224
	.set L$set$225,LEHE79-LEHB79
	.long L$set$225
	.set L$set$226,L1172-LFB6526
	.long L$set$226
	.byte	0
	.set L$set$227,LEHB80-LFB6526
	.long L$set$227
	.set L$set$228,LEHE80-LEHB80
	.long L$set$228
	.set L$set$229,L1174-LFB6526
	.long L$set$229
	.byte	0
	.set L$set$230,LEHB81-LFB6526
	.long L$set$230
	.set L$set$231,LEHE81-LEHB81
	.long L$set$231
	.set L$set$232,L1165-LFB6526
	.long L$set$232
	.byte	0
	.set L$set$233,LEHB82-LFB6526
	.long L$set$233
	.set L$set$234,LEHE82-LEHB82
	.long L$set$234
	.set L$set$235,L1164-LFB6526
	.long L$set$235
	.byte	0
	.set L$set$236,LEHB83-LFB6526
	.long L$set$236
	.set L$set$237,LEHE83-LEHB83
	.long L$set$237
	.set L$set$238,L1185-LFB6526
	.long L$set$238
	.byte	0
	.set L$set$239,LEHB84-LFB6526
	.long L$set$239
	.set L$set$240,LEHE84-LEHB84
	.long L$set$240
	.set L$set$241,L1171-LFB6526
	.long L$set$241
	.byte	0
	.set L$set$242,LEHB85-LFB6526
	.long L$set$242
	.set L$set$243,LEHE85-LEHB85
	.long L$set$243
	.set L$set$244,L1166-LFB6526
	.long L$set$244
	.byte	0
	.set L$set$245,LEHB86-LFB6526
	.long L$set$245
	.set L$set$246,LEHE86-LEHB86
	.long L$set$246
	.set L$set$247,L1167-LFB6526
	.long L$set$247
	.byte	0x3
	.set L$set$248,LEHB87-LFB6526
	.long L$set$248
	.set L$set$249,LEHE87-LEHB87
	.long L$set$249
	.set L$set$250,L1175-LFB6526
	.long L$set$250
	.byte	0
	.set L$set$251,LEHB88-LFB6526
	.long L$set$251
	.set L$set$252,LEHE88-LEHB88
	.long L$set$252
	.set L$set$253,L1181-LFB6526
	.long L$set$253
	.byte	0
	.set L$set$254,LEHB89-LFB6526
	.long L$set$254
	.set L$set$255,LEHE89-LEHB89
	.long L$set$255
	.set L$set$256,L1164-LFB6526
	.long L$set$256
	.byte	0
	.set L$set$257,LEHB90-LFB6526
	.long L$set$257
	.set L$set$258,LEHE90-LEHB90
	.long L$set$258
	.set L$set$259,L1185-LFB6526
	.long L$set$259
	.byte	0
	.set L$set$260,LEHB91-LFB6526
	.long L$set$260
	.set L$set$261,LEHE91-LEHB91
	.long L$set$261
	.set L$set$262,L1166-LFB6526
	.long L$set$262
	.byte	0
	.set L$set$263,LEHB92-LFB6526
	.long L$set$263
	.set L$set$264,LEHE92-LEHB92
	.long L$set$264
	.long	0
	.byte	0
	.set L$set$265,LEHB93-LFB6526
	.long L$set$265
	.set L$set$266,LEHE93-LEHB93
	.long L$set$266
	.set L$set$267,L1169-LFB6526
	.long L$set$267
	.byte	0
	.set L$set$268,LEHB94-LFB6526
	.long L$set$268
	.set L$set$269,LEHE94-LEHB94
	.long L$set$269
	.set L$set$270,L1170-LFB6526
	.long L$set$270
	.byte	0
	.set L$set$271,LEHB95-LFB6526
	.long L$set$271
	.set L$set$272,LEHE95-LEHB95
	.long L$set$272
	.set L$set$273,L1189-LFB6526
	.long L$set$273
	.byte	0
	.set L$set$274,LEHB96-LFB6526
	.long L$set$274
	.set L$set$275,LEHE96-LEHB96
	.long L$set$275
	.set L$set$276,L1172-LFB6526
	.long L$set$276
	.byte	0
	.set L$set$277,LEHB97-LFB6526
	.long L$set$277
	.set L$set$278,LEHE97-LEHB97
	.long L$set$278
	.set L$set$279,L1174-LFB6526
	.long L$set$279
	.byte	0
	.set L$set$280,LEHB98-LFB6526
	.long L$set$280
	.set L$set$281,LEHE98-LEHB98
	.long L$set$281
	.set L$set$282,L1177-LFB6526
	.long L$set$282
	.byte	0
	.set L$set$283,LEHB99-LFB6526
	.long L$set$283
	.set L$set$284,LEHE99-LEHB99
	.long L$set$284
	.set L$set$285,L1191-LFB6526
	.long L$set$285
	.byte	0
	.set L$set$286,LEHB100-LFB6526
	.long L$set$286
	.set L$set$287,LEHE100-LEHB100
	.long L$set$287
	.set L$set$288,L1178-LFB6526
	.long L$set$288
	.byte	0
	.set L$set$289,LEHB101-LFB6526
	.long L$set$289
	.set L$set$290,LEHE101-LEHB101
	.long L$set$290
	.set L$set$291,L1180-LFB6526
	.long L$set$291
	.byte	0
	.set L$set$292,LEHB102-LFB6526
	.long L$set$292
	.set L$set$293,LEHE102-LEHB102
	.long L$set$293
	.set L$set$294,L1184-LFB6526
	.long L$set$294
	.byte	0
	.set L$set$295,LEHB103-LFB6526
	.long L$set$295
	.set L$set$296,LEHE103-LEHB103
	.long L$set$296
	.set L$set$297,L1182-LFB6526
	.long L$set$297
	.byte	0
	.set L$set$298,LEHB104-LFB6526
	.long L$set$298
	.set L$set$299,LEHE104-LEHB104
	.long L$set$299
	.set L$set$300,L1164-LFB6526
	.long L$set$300
	.byte	0
	.set L$set$301,LEHB105-LFB6526
	.long L$set$301
	.set L$set$302,LEHE105-LEHB105
	.long L$set$302
	.set L$set$303,L1177-LFB6526
	.long L$set$303
	.byte	0
	.set L$set$304,LEHB106-LFB6526
	.long L$set$304
	.set L$set$305,LEHE106-LEHB106
	.long L$set$305
	.set L$set$306,L1171-LFB6526
	.long L$set$306
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 3
	.quad	__ZTINSt8ios_base7failureB5cxx11E
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_main.cpp:
LFB8329:
	subq	$8, %rsp
LCFI200:
	leaq	__ZStL8__ioinit(%rip), %rdi
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI201:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE8329:
	.globl __ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.weak_definition __ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.const
	.align 5
__ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE:
	.ascii "NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE\0"
	.globl __ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.weak_definition __ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.const_data
	.align 3
__ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.quad	__ZTINSt6thread6_StateE
	.globl __ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.weak_definition __ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.align 3
__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE:
	.quad	0
	.quad	__ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEEE
	.quad	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED1Ev
	.quad	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEED0Ev
	.quad	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmmmRSt5mutexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8MosaicSC10ParametersEEmmmS4_SC_SG_EEEEE6_M_runEv
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
lC28:
	.long	796917760
	.align 2
lC29:
	.long	1065353216
	.literal8
	.align 3
lC32:
	.long	0
	.long	1104006501
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$307,LECIE1-LSCIE1
	.long L$set$307
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
	.set L$set$308,LEFDE1-LASFDE1
	.long L$set$308
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1607-.
	.set L$set$309,LFE1607-LFB1607
	.quad L$set$309
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$310,LEFDE3-LASFDE3
	.long L$set$310
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB8298-.
	.set L$set$311,LFE8298-LFB8298
	.quad L$set$311
	.byte	0x8
	.quad	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$312,LEFDE5-LASFDE5
	.long L$set$312
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB8268-.
	.set L$set$313,LFE8268-LFB8268
	.quad L$set$313
	.byte	0x8
	.quad	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$314,LEFDE7-LASFDE7
	.long L$set$314
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB8269-.
	.set L$set$315,LFE8269-LFB8269
	.quad L$set$315
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$316,LCFI0-LFB8269
	.long L$set$316
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$317,LCFI1-LCFI0
	.long L$set$317
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$318,LEFDE9-LASFDE9
	.long L$set$318
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB8416-.
	.set L$set$319,LFE8416-LFB8416
	.quad L$set$319
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$320,LCFI2-LFB8416
	.long L$set$320
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$321,LCFI3-LCFI2
	.long L$set$321
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$322,LCFI4-LCFI3
	.long L$set$322
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$323,LCFI5-LCFI4
	.long L$set$323
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$324,LCFI6-LCFI5
	.long L$set$324
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$325,LCFI7-LCFI6
	.long L$set$325
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$326,LCFI8-LCFI7
	.long L$set$326
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$327,LCFI9-LCFI8
	.long L$set$327
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$328,LCFI10-LCFI9
	.long L$set$328
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$329,LCFI11-LCFI10
	.long L$set$329
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$330,LCFI12-LCFI11
	.long L$set$330
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$331,LEFDE11-LASFDE11
	.long L$set$331
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB8476-.
	.set L$set$332,LFE8476-LFB8476
	.quad L$set$332
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$333,LCFI13-LFB8476
	.long L$set$333
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$334,LCFI14-LCFI13
	.long L$set$334
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$335,LCFI15-LCFI14
	.long L$set$335
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$336,LCFI16-LCFI15
	.long L$set$336
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$337,LCFI17-LCFI16
	.long L$set$337
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$338,LEFDE13-LASFDE13
	.long L$set$338
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6516-.
	.set L$set$339,LFE6516-LFB6516
	.quad L$set$339
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$340,LCFI18-LFB6516
	.long L$set$340
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$341,LCFI19-LCFI18
	.long L$set$341
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$342,LCFI20-LCFI19
	.long L$set$342
	.byte	0xb
	.byte	0x4
	.set L$set$343,LCFI21-LCFI20
	.long L$set$343
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$344,LEFDE15-LASFDE15
	.long L$set$344
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB6525-.
	.set L$set$345,LFE6525-LFB6525
	.quad L$set$345
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$346,LCFI22-LFB6525
	.long L$set$346
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$347,LCFI23-LCFI22
	.long L$set$347
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$348,LCFI24-LCFI23
	.long L$set$348
	.byte	0xb
	.byte	0x4
	.set L$set$349,LCFI25-LCFI24
	.long L$set$349
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$350,LCFI26-LCFI25
	.long L$set$350
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$351,LEFDE17-LASFDE17
	.long L$set$351
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB6547-.
	.set L$set$352,LFE6547-LFB6547
	.quad L$set$352
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$353,LCFI27-LFB6547
	.long L$set$353
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$354,LCFI28-LCFI27
	.long L$set$354
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$355,LCFI29-LCFI28
	.long L$set$355
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$356,LCFI30-LCFI29
	.long L$set$356
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$357,LCFI31-LCFI30
	.long L$set$357
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$358,LCFI32-LCFI31
	.long L$set$358
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$359,LCFI33-LCFI32
	.long L$set$359
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$360,LCFI34-LCFI33
	.long L$set$360
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$361,LCFI35-LCFI34
	.long L$set$361
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$362,LCFI36-LCFI35
	.long L$set$362
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$363,LCFI37-LCFI36
	.long L$set$363
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$364,LCFI38-LCFI37
	.long L$set$364
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$365,LCFI39-LCFI38
	.long L$set$365
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$366,LCFI40-LCFI39
	.long L$set$366
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$367,LCFI41-LCFI40
	.long L$set$367
	.byte	0xb
	.byte	0x4
	.set L$set$368,LCFI42-LCFI41
	.long L$set$368
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$369,LCFI43-LCFI42
	.long L$set$369
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$370,LCFI44-LCFI43
	.long L$set$370
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$371,LCFI45-LCFI44
	.long L$set$371
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$372,LCFI46-LCFI45
	.long L$set$372
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$373,LCFI47-LCFI46
	.long L$set$373
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$374,LCFI48-LCFI47
	.long L$set$374
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$375,LEFDE19-LASFDE19
	.long L$set$375
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB7265-.
	.set L$set$376,LFE7265-LFB7265
	.quad L$set$376
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$377,LCFI49-LFB7265
	.long L$set$377
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$378,LCFI50-LCFI49
	.long L$set$378
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$379,LCFI51-LCFI50
	.long L$set$379
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x78
	.byte	0x6
	.byte	0x4
	.set L$set$380,LCFI52-LCFI51
	.long L$set$380
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x4
	.set L$set$381,LCFI53-LCFI52
	.long L$set$381
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$382,LCFI54-LCFI53
	.long L$set$382
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$383,LCFI55-LCFI54
	.long L$set$383
	.byte	0xb
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$384,LEFDE21-LASFDE21
	.long L$set$384
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB7300-.
	.set L$set$385,LFE7300-LFB7300
	.quad L$set$385
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$386,LCFI56-LFB7300
	.long L$set$386
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$387,LCFI57-LCFI56
	.long L$set$387
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$388,LCFI58-LCFI57
	.long L$set$388
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$389,LCFI59-LCFI58
	.long L$set$389
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$390,LCFI60-LCFI59
	.long L$set$390
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$391,LCFI61-LCFI60
	.long L$set$391
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$392,LCFI62-LCFI61
	.long L$set$392
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$393,LCFI63-LCFI62
	.long L$set$393
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$394,LCFI64-LCFI63
	.long L$set$394
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$395,LCFI65-LCFI64
	.long L$set$395
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$396,LCFI66-LCFI65
	.long L$set$396
	.byte	0xb
	.byte	0x4
	.set L$set$397,LCFI67-LCFI66
	.long L$set$397
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$398,LCFI68-LCFI67
	.long L$set$398
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$399,LCFI69-LCFI68
	.long L$set$399
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$400,LCFI70-LCFI69
	.long L$set$400
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$401,LCFI71-LCFI70
	.long L$set$401
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$402,LCFI72-LCFI71
	.long L$set$402
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$403,LEFDE23-LASFDE23
	.long L$set$403
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB7577-.
	.set L$set$404,LFE7577-LFB7577
	.quad L$set$404
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$405,LCFI73-LFB7577
	.long L$set$405
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$406,LCFI74-LCFI73
	.long L$set$406
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$407,LCFI75-LCFI74
	.long L$set$407
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$408,LCFI76-LCFI75
	.long L$set$408
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$409,LCFI77-LCFI76
	.long L$set$409
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$410,LCFI78-LCFI77
	.long L$set$410
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$411,LCFI79-LCFI78
	.long L$set$411
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$412,LCFI80-LCFI79
	.long L$set$412
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$413,LCFI81-LCFI80
	.long L$set$413
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$414,LCFI82-LCFI81
	.long L$set$414
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$415,LCFI83-LCFI82
	.long L$set$415
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$416,LCFI84-LCFI83
	.long L$set$416
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$417,LCFI85-LCFI84
	.long L$set$417
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$418,LCFI86-LCFI85
	.long L$set$418
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$419,LCFI87-LCFI86
	.long L$set$419
	.byte	0xb
	.byte	0x4
	.set L$set$420,LCFI88-LCFI87
	.long L$set$420
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$421,LCFI89-LCFI88
	.long L$set$421
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
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$422,LEFDE25-LASFDE25
	.long L$set$422
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB7830-.
	.set L$set$423,LFE7830-LFB7830
	.quad L$set$423
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$424,LCFI90-LFB7830
	.long L$set$424
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$425,LCFI91-LCFI90
	.long L$set$425
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$426,LCFI92-LCFI91
	.long L$set$426
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$427,LCFI93-LCFI92
	.long L$set$427
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$428,LCFI94-LCFI93
	.long L$set$428
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$429,LCFI95-LCFI94
	.long L$set$429
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$430,LCFI96-LCFI95
	.long L$set$430
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$431,LCFI97-LCFI96
	.long L$set$431
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$432,LCFI98-LCFI97
	.long L$set$432
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$433,LCFI99-LCFI98
	.long L$set$433
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$434,LCFI100-LCFI99
	.long L$set$434
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$435,LCFI101-LCFI100
	.long L$set$435
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$436,LCFI102-LCFI101
	.long L$set$436
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$437,LCFI103-LCFI102
	.long L$set$437
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$438,LCFI104-LCFI103
	.long L$set$438
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$439,LEFDE27-LASFDE27
	.long L$set$439
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB6778-.
	.set L$set$440,LFE6778-LFB6778
	.quad L$set$440
	.byte	0x8
	.quad	LLSDA6778-.
	.byte	0x4
	.set L$set$441,LCFI105-LFB6778
	.long L$set$441
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$442,LCFI106-LCFI105
	.long L$set$442
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$443,LCFI107-LCFI106
	.long L$set$443
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$444,LCFI108-LCFI107
	.long L$set$444
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$445,LCFI109-LCFI108
	.long L$set$445
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$446,LCFI110-LCFI109
	.long L$set$446
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$447,LCFI111-LCFI110
	.long L$set$447
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$448,LCFI112-LCFI111
	.long L$set$448
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$449,LCFI113-LCFI112
	.long L$set$449
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$450,LCFI114-LCFI113
	.long L$set$450
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$451,LCFI115-LCFI114
	.long L$set$451
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$452,LEFDE29-LASFDE29
	.long L$set$452
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB7001-.
	.set L$set$453,LFE7001-LFB7001
	.quad L$set$453
	.byte	0x8
	.quad	LLSDA7001-.
	.byte	0x4
	.set L$set$454,LCFI116-LFB7001
	.long L$set$454
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$455,LCFI117-LCFI116
	.long L$set$455
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$456,LCFI118-LCFI117
	.long L$set$456
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$457,LCFI119-LCFI118
	.long L$set$457
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$458,LCFI120-LCFI119
	.long L$set$458
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$459,LCFI121-LCFI120
	.long L$set$459
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$460,LCFI122-LCFI121
	.long L$set$460
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$461,LCFI123-LCFI122
	.long L$set$461
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$462,LCFI124-LCFI123
	.long L$set$462
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$463,LCFI125-LCFI124
	.long L$set$463
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$464,LCFI126-LCFI125
	.long L$set$464
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$465,LCFI127-LCFI126
	.long L$set$465
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$466,LCFI128-LCFI127
	.long L$set$466
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$467,LCFI129-LCFI128
	.long L$set$467
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$468,LCFI130-LCFI129
	.long L$set$468
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$469,LEFDE31-LASFDE31
	.long L$set$469
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB7007-.
	.set L$set$470,LFE7007-LFB7007
	.quad L$set$470
	.byte	0x8
	.quad	LLSDA7007-.
	.byte	0x4
	.set L$set$471,LCFI131-LFB7007
	.long L$set$471
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$472,LCFI132-LCFI131
	.long L$set$472
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$473,LCFI133-LCFI132
	.long L$set$473
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
	.set L$set$474,LCFI134-LCFI133
	.long L$set$474
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$475,LCFI135-LCFI134
	.long L$set$475
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$476,LCFI136-LCFI135
	.long L$set$476
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$477,LCFI137-LCFI136
	.long L$set$477
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$478,LCFI138-LCFI137
	.long L$set$478
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$479,LEFDE33-LASFDE33
	.long L$set$479
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB6513-.
	.set L$set$480,LFE6513-LFB6513
	.quad L$set$480
	.byte	0x8
	.quad	LLSDA6513-.
	.byte	0x4
	.set L$set$481,LCFI139-LFB6513
	.long L$set$481
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$482,LCFI140-LCFI139
	.long L$set$482
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$483,LCFI141-LCFI140
	.long L$set$483
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$484,LCFI142-LCFI141
	.long L$set$484
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$485,LCFI143-LCFI142
	.long L$set$485
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$486,LCFI144-LCFI143
	.long L$set$486
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$487,LCFI145-LCFI144
	.long L$set$487
	.byte	0xe
	.byte	0xe0,0x4
	.byte	0x4
	.set L$set$488,LCFI146-LCFI145
	.long L$set$488
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$489,LCFI147-LCFI146
	.long L$set$489
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$490,LCFI148-LCFI147
	.long L$set$490
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$491,LCFI149-LCFI148
	.long L$set$491
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$492,LCFI150-LCFI149
	.long L$set$492
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$493,LCFI151-LCFI150
	.long L$set$493
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$494,LCFI152-LCFI151
	.long L$set$494
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$495,LCFI153-LCFI152
	.long L$set$495
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$496,LEFDE35-LASFDE35
	.long L$set$496
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB7831-.
	.set L$set$497,LFE7831-LFB7831
	.quad L$set$497
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$498,LCFI154-LFB7831
	.long L$set$498
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$499,LCFI155-LCFI154
	.long L$set$499
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$500,LCFI156-LCFI155
	.long L$set$500
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$501,LCFI157-LCFI156
	.long L$set$501
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$502,LCFI158-LCFI157
	.long L$set$502
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$503,LCFI159-LCFI158
	.long L$set$503
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$504,LCFI160-LCFI159
	.long L$set$504
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$505,LCFI161-LCFI160
	.long L$set$505
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$506,LCFI162-LCFI161
	.long L$set$506
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$507,LCFI163-LCFI162
	.long L$set$507
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$508,LCFI164-LCFI163
	.long L$set$508
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$509,LCFI165-LCFI164
	.long L$set$509
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$510,LCFI166-LCFI165
	.long L$set$510
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$511,LCFI167-LCFI166
	.long L$set$511
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$512,LCFI168-LCFI167
	.long L$set$512
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$513,LEFDE37-LASFDE37
	.long L$set$513
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB7916-.
	.set L$set$514,LFE7916-LFB7916
	.quad L$set$514
	.byte	0x8
	.quad	LLSDA7916-.
	.byte	0x4
	.set L$set$515,LCFI169-LFB7916
	.long L$set$515
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$516,LCFI170-LCFI169
	.long L$set$516
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$517,LCFI171-LCFI170
	.long L$set$517
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$518,LCFI172-LCFI171
	.long L$set$518
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$519,LCFI173-LCFI172
	.long L$set$519
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$520,LCFI174-LCFI173
	.long L$set$520
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$521,LCFI175-LCFI174
	.long L$set$521
	.byte	0xe
	.byte	0xd0,0x2
	.byte	0x4
	.set L$set$522,LCFI176-LCFI175
	.long L$set$522
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$523,LCFI177-LCFI176
	.long L$set$523
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$524,LCFI178-LCFI177
	.long L$set$524
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$525,LCFI179-LCFI178
	.long L$set$525
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$526,LCFI180-LCFI179
	.long L$set$526
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$527,LCFI181-LCFI180
	.long L$set$527
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$528,LCFI182-LCFI181
	.long L$set$528
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$529,LCFI183-LCFI182
	.long L$set$529
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$530,LEFDE39-LASFDE39
	.long L$set$530
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB7915-.
	.set L$set$531,LFE7915-LFB7915
	.quad L$set$531
	.byte	0x8
	.quad	LLSDA7915-.
	.byte	0x4
	.set L$set$532,LCFI184-LFB7915
	.long L$set$532
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$533,LCFI185-LCFI184
	.long L$set$533
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$534,LCFI186-LCFI185
	.long L$set$534
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
	.set L$set$535,LCFI187-LCFI186
	.long L$set$535
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
	.set L$set$536,LCFI188-LCFI187
	.long L$set$536
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.set L$set$537,LCFI189-LCFI188
	.long L$set$537
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$538,LCFI190-LCFI189
	.long L$set$538
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$539,LCFI191-LCFI190
	.long L$set$539
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$540,LCFI192-LCFI191
	.long L$set$540
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$541,LEFDE41-LASFDE41
	.long L$set$541
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB6526-.
	.set L$set$542,LFE6526-LFB6526
	.quad L$set$542
	.byte	0x8
	.quad	LLSDA6526-.
	.byte	0x4
	.set L$set$543,LCFI193-LFB6526
	.long L$set$543
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$544,LCFI194-LCFI193
	.long L$set$544
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$545,LCFI195-LCFI194
	.long L$set$545
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
	.set L$set$546,LCFI196-LCFI195
	.long L$set$546
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x50
	.byte	0x4
	.set L$set$547,LCFI197-LCFI196
	.long L$set$547
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$548,LCFI198-LCFI197
	.long L$set$548
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$549,LCFI199-LCFI198
	.long L$set$549
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$550,LEFDE43-LASFDE43
	.long L$set$550
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB8329-.
	.set L$set$551,LFE8329-LFB8329
	.quad L$set$551
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$552,LCFI200-LFB8329
	.long L$set$552
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$553,LCFI201-LCFI200
	.long L$set$553
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE43:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_main.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
