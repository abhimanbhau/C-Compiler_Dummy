	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	4621819117588971520     ## double 10
LCPI0_1:
	.quad	4607182418800017408     ## double 1
LCPI0_2:
	.quad	4636033603912859648     ## double 90
LCPI0_3:
	.quad	4614256655080292474     ## double 3.1415920000000002
LCPI0_4:
	.quad	4640537203540230144     ## double 180
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_yyparse
	.align	4, 0x90
_yyparse:                               ## @yyparse
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$2304, %rsp             ## imm = 0x900
	movq	_yychar@GOTPCREL(%rip), %rax
	movq	_yynerrs@GOTPCREL(%rip), %rcx
	leaq	-2016(%rbp), %rdx
	leaq	-416(%rbp), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	movl	$0, -2036(%rbp)
	movq	%rsi, -2048(%rbp)
	movq	%rdx, -2064(%rbp)
	movq	$200, -2080(%rbp)
	movl	$0, -2092(%rbp)
	movl	$0, -2020(%rbp)
	movl	$0, -2032(%rbp)
	movl	$0, (%rcx)
	movl	$-2, (%rax)
	movq	-2048(%rbp), %rax
	movq	%rax, -2056(%rbp)
	movq	-2064(%rbp), %rax
	movq	%rax, -2072(%rbp)
	jmp	LBB0_2
LBB0_1:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	-2056(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -2056(%rbp)
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_97 Depth 2
                                        ##     Child Loop BB0_70 Depth 2
	movl	-2020(%rbp), %eax
	movw	%ax, %cx
	movq	-2056(%rbp), %rdx
	movw	%cx, (%rdx)
	movq	-2048(%rbp), %rdx
	movq	-2080(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	addq	$-2, %rdx
	cmpq	-2056(%rbp), %rdx
	ja	LBB0_18
## BB#3:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$10000, %eax            ## imm = 0x2710
	movl	%eax, %ecx
	movq	-2056(%rbp), %rdx
	movq	-2048(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$1, %rdx
	addq	$1, %rdx
	movq	%rdx, -2104(%rbp)
	cmpq	-2080(%rbp), %rcx
	ja	LBB0_5
## BB#4:
	jmp	LBB0_113
LBB0_5:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$10000, %eax            ## imm = 0x2710
	movl	%eax, %ecx
	movq	-2080(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rdx, -2080(%rbp)
	cmpq	-2080(%rbp), %rcx
	jae	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	$10000, -2080(%rbp)     ## imm = 0x2710
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	%rax, -2112(%rbp)
	imulq	$10, -2080(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -2120(%rbp)
	cmpq	$0, -2120(%rbp)
	jne	LBB0_9
## BB#8:
	jmp	LBB0_113
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2120(%rbp), %rax
	movq	-2048(%rbp), %rcx
	movq	-2104(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcpy
	movq	-2120(%rbp), %rax
	movq	%rax, -2048(%rbp)
	movq	-2080(%rbp), %rax
	shlq	$1, %rax
	addq	$7, %rax
	movq	%rax, -2128(%rbp)
	movq	-2128(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2120(%rbp), %rax
	movq	%rax, -2120(%rbp)
## BB#11:                               ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2120(%rbp), %rax
	movq	-2064(%rbp), %rcx
	movq	-2104(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcpy
	movq	-2120(%rbp), %rax
	movq	%rax, -2064(%rbp)
	movq	-2080(%rbp), %rax
	shlq	$3, %rax
	addq	$7, %rax
	movq	%rax, -2136(%rbp)
	movq	-2136(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2120(%rbp), %rax
	movq	%rax, -2120(%rbp)
## BB#13:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	-416(%rbp), %rax
	movq	-2112(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB0_15
## BB#14:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	-2112(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB0_15:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	-2104(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	movq	%rax, -2056(%rbp)
	movq	-2064(%rbp), %rax
	movq	-2104(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -2072(%rbp)
	movq	-2048(%rbp), %rax
	movq	-2080(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	cmpq	-2056(%rbp), %rax
	ja	LBB0_17
## BB#16:
	jmp	LBB0_112
LBB0_17:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_18
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yypact(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -2024(%rbp)
	cmpl	$-20, -2024(%rbp)
	jne	LBB0_21
## BB#20:                               ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_45
LBB0_21:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$-2, (%rax)
	jne	LBB0_23
## BB#22:                               ##   in Loop: Header=BB0_2 Depth=1
	movb	$0, %al
	callq	_yylex
	movq	_yychar@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
LBB0_23:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jg	LBB0_25
## BB#24:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	movl	$0, -2036(%rbp)
	movl	$0, (%rax)
	jmp	LBB0_29
LBB0_25:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$271, (%rax)            ## imm = 0x10F
	ja	LBB0_27
## BB#26:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yytranslate(%rip), %rax
	movq	_yychar@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2140(%rbp)       ## 4-byte Spill
	jmp	LBB0_28
LBB0_27:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2140(%rbp)       ## 4-byte Spill
	jmp	LBB0_28
LBB0_28:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	-2140(%rbp), %eax       ## 4-byte Reload
	movl	%eax, -2036(%rbp)
LBB0_29:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	-2036(%rbp), %eax
	addl	-2024(%rbp), %eax
	movl	%eax, -2024(%rbp)
	cmpl	$0, -2024(%rbp)
	jl	LBB0_32
## BB#30:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	$177, %eax
	cmpl	-2024(%rbp), %eax
	jl	LBB0_32
## BB#31:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yycheck(%rip), %rax
	movslq	-2024(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	-2036(%rbp), %edx
	je	LBB0_33
LBB0_32:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_45
LBB0_33:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yytable(%rip), %rax
	movslq	-2024(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2024(%rbp)
	cmpl	$0, -2024(%rbp)
	jg	LBB0_38
## BB#34:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -2024(%rbp)
	je	LBB0_36
## BB#35:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, -2024(%rbp)
	jne	LBB0_37
LBB0_36:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_86
LBB0_37:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	subl	-2024(%rbp), %eax
	movl	%eax, -2024(%rbp)
	jmp	LBB0_48
LBB0_38:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$33, -2024(%rbp)
	jne	LBB0_40
## BB#39:
	jmp	LBB0_111
LBB0_40:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -2032(%rbp)
	je	LBB0_42
## BB#41:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	-2032(%rbp), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -2032(%rbp)
LBB0_42:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB0_44
## BB#43:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	movl	$-2, (%rax)
LBB0_44:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_yylval@GOTPCREL(%rip), %rax
	movl	-2024(%rbp), %ecx
	movl	%ecx, -2020(%rbp)
	movq	-2072(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$8, %rsi
	movq	%rsi, -2072(%rbp)
	movq	(%rax), %rax
	movq	%rax, 8(%rdx)
	jmp	LBB0_1
LBB0_45:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yydefact(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2024(%rbp)
	cmpl	$0, -2024(%rbp)
	jne	LBB0_47
## BB#46:                               ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_86
LBB0_47:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_48
LBB0_48:                                ##   in Loop: Header=BB0_2 Depth=1
	movslq	-2024(%rbp), %rax
	leaq	_yyr2(%rip), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2092(%rbp)
	movl	$1, %esi
	subl	%edx, %esi
	movslq	%esi, %rax
	movq	-2072(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -2088(%rbp)
	movl	-2024(%rbp), %edx
	addl	$-4, %edx
	movl	%edx, %eax
	subl	$19, %edx
	movq	%rax, -2152(%rbp)       ## 8-byte Spill
	movl	%edx, -2156(%rbp)       ## 4-byte Spill
	ja	LBB0_79
## BB#125:                              ##   in Loop: Header=BB0_2 Depth=1
	leaq	LJTI0_0(%rip), %rax
	movq	-2152(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_49:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	movl	%eax, -2160(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_50:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str1(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-16(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2164(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_51:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str2(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-16(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2168(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_52:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str3(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-16(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2172(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_53:                                ##   in Loop: Header=BB0_2 Depth=1
	xorps	%xmm0, %xmm0
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	LBB0_55
	jp	LBB0_55
## BB#54:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -2176(%rbp)       ## 4-byte Spill
	jmp	LBB0_56
LBB0_55:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2072(%rbp), %rax
	movsd	-16(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
LBB0_56:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -2180(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_57:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str6(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-16(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movq	%rdi, -2192(%rbp)       ## 8-byte Spill
	callq	_pow
	movsd	%xmm0, -2088(%rbp)
	movq	-2192(%rbp), %rdi       ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movl	%eax, -2196(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_58:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str7(%rip), %rdi
	movsd	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI0_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm2         ## xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	%rdi, -2208(%rbp)       ## 8-byte Spill
	callq	_sin
	movsd	%xmm0, -2088(%rbp)
	movq	-2208(%rbp), %rdi       ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movl	%eax, -2212(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_59:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str8(%rip), %rdi
	movsd	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI0_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm2         ## xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	%rdi, -2224(%rbp)       ## 8-byte Spill
	callq	_cos
	movsd	%xmm0, -2088(%rbp)
	movq	-2224(%rbp), %rdi       ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movl	%eax, -2228(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_60:                                ##   in Loop: Header=BB0_2 Depth=1
	movsd	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	LBB0_62
	jp	LBB0_62
## BB#61:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -2232(%rbp)       ## 4-byte Spill
	jmp	LBB0_63
LBB0_62:                                ##   in Loop: Header=BB0_2 Depth=1
	movsd	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI0_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm2         ## xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	_tan
	movsd	%xmm0, -2088(%rbp)
LBB0_63:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -2236(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_64:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str11(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm0         ## xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2240(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_65:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str12(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm0         ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	mulsd	-8(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2244(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_66:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm0         ## xmm0 = mem[0],zero
	callq	_exp
	leaq	L_.str13(%rip), %rdi
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2248(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_67:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str14(%rip), %rdi
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	divsd	-8(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2252(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_68:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str15(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm0         ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	mulsd	-8(%rax), %xmm0
	movq	-2072(%rbp), %rax
	mulsd	-8(%rax), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2256(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_69:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	_j@GOTPCREL(%rip), %rax
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -2088(%rbp)
	movl	$1, (%rax)
LBB0_70:                                ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_j@GOTPCREL(%rip), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	LBB0_73
## BB#71:                               ##   in Loop: Header=BB0_70 Depth=2
	movq	_j@GOTPCREL(%rip), %rax
	movsd	-2088(%rbp), %xmm0      ## xmm0 = mem[0],zero
	cvtsi2sdl	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -2088(%rbp)
## BB#72:                               ##   in Loop: Header=BB0_70 Depth=2
	movq	_j@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB0_70
LBB0_73:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -2260(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_74:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str17(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2264(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_75:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str18(%rip), %rdi
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2268(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_76:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	callq	_log
	movsd	LCPI0_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	%xmm0, -2280(%rbp)      ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_log
	leaq	L_.str19(%rip), %rdi
	movsd	-2280(%rbp), %xmm1      ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2284(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_77:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2072(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	callq	_log
	leaq	L_.str20(%rip), %rdi
	movsd	%xmm0, -2088(%rbp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -2288(%rbp)       ## 4-byte Spill
	jmp	LBB0_80
LBB0_78:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-2072(%rbp), %rax
	movsd	-24(%rax), %xmm0        ## xmm0 = mem[0],zero
	movq	-2072(%rbp), %rax
	movsd	-8(%rax), %xmm1         ## xmm1 = mem[0],zero
	callq	_fmod
	movsd	%xmm0, -2088(%rbp)
	jmp	LBB0_80
LBB0_79:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_80
LBB0_80:                                ##   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	leaq	_yypgoto(%rip), %rcx
	leaq	_yyr1(%rip), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	-2092(%rbp), %esi
	movq	-2072(%rbp), %r8
	movslq	%esi, %r9
	movq	%rdi, %r10
	subq	%r9, %r10
	shlq	$3, %r10
	addq	%r10, %r8
	movq	%r8, -2072(%rbp)
	movl	-2092(%rbp), %esi
	movq	-2056(%rbp), %r8
	movslq	%esi, %r9
	subq	%r9, %rdi
	shlq	$1, %rdi
	addq	%rdi, %r8
	movq	%r8, -2056(%rbp)
	movl	$0, -2092(%rbp)
	movq	-2072(%rbp), %rdi
	movq	%rdi, %r8
	addq	$8, %r8
	movq	%r8, -2072(%rbp)
	movq	-2088(%rbp), %r8
	movq	%r8, 8(%rdi)
	movslq	-2024(%rbp), %rdi
	movzbl	(%rdx,%rdi), %esi
	movl	%esi, -2024(%rbp)
	movl	-2024(%rbp), %esi
	subl	$26, %esi
	movslq	%esi, %rdx
	movsbl	(%rcx,%rdx), %esi
	movq	-2056(%rbp), %rcx
	movswl	(%rcx), %r11d
	addl	%r11d, %esi
	movl	%esi, -2020(%rbp)
	cmpl	-2020(%rbp), %eax
	jg	LBB0_84
## BB#81:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$177, -2020(%rbp)
	jg	LBB0_84
## BB#82:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yycheck(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-2056(%rbp), %rax
	movswl	(%rax), %esi
	cmpl	%esi, %edx
	jne	LBB0_84
## BB#83:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yytable(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2020(%rbp)
	jmp	LBB0_85
LBB0_84:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	_yydefgoto(%rip), %rax
	movl	-2024(%rbp), %ecx
	subl	$26, %ecx
	movslq	%ecx, %rdx
	movsbl	(%rax,%rdx), %ecx
	movl	%ecx, -2020(%rbp)
LBB0_85:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_1
LBB0_86:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -2032(%rbp)
	jne	LBB0_88
## BB#87:                               ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str21(%rip), %rdi
	movq	_yynerrs@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_yyerror
LBB0_88:                                ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -2032(%rbp)
	jne	LBB0_95
## BB#89:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jg	LBB0_93
## BB#90:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jne	LBB0_92
## BB#91:
	jmp	LBB0_112
LBB0_92:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_94
LBB0_93:                                ##   in Loop: Header=BB0_2 Depth=1
	leaq	L_.str22(%rip), %rdi
	movq	_yylval@GOTPCREL(%rip), %rdx
	movl	-2036(%rbp), %esi
	callq	_yydestruct
	movq	_yychar@GOTPCREL(%rip), %rdx
	movl	$-2, (%rdx)
LBB0_94:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_95
LBB0_95:                                ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_96
LBB0_96:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$3, -2032(%rbp)
LBB0_97:                                ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	_yypact(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -2024(%rbp)
	cmpl	$-20, -2024(%rbp)
	je	LBB0_105
## BB#98:                               ##   in Loop: Header=BB0_97 Depth=2
	xorl	%eax, %eax
	movl	-2024(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -2024(%rbp)
	cmpl	-2024(%rbp), %eax
	jg	LBB0_104
## BB#99:                               ##   in Loop: Header=BB0_97 Depth=2
	cmpl	$177, -2024(%rbp)
	jg	LBB0_104
## BB#100:                              ##   in Loop: Header=BB0_97 Depth=2
	leaq	_yycheck(%rip), %rax
	movslq	-2024(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$1, %edx
	jne	LBB0_104
## BB#101:                              ##   in Loop: Header=BB0_97 Depth=2
	xorl	%eax, %eax
	leaq	_yytable(%rip), %rcx
	movslq	-2024(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	movl	%esi, -2024(%rbp)
	cmpl	-2024(%rbp), %eax
	jge	LBB0_103
## BB#102:                              ##   in Loop: Header=BB0_2 Depth=1
	jmp	LBB0_108
LBB0_103:                               ##   in Loop: Header=BB0_97 Depth=2
	jmp	LBB0_104
LBB0_104:                               ##   in Loop: Header=BB0_97 Depth=2
	jmp	LBB0_105
LBB0_105:                               ##   in Loop: Header=BB0_97 Depth=2
	movq	-2056(%rbp), %rax
	cmpq	-2048(%rbp), %rax
	jne	LBB0_107
## BB#106:
	jmp	LBB0_112
LBB0_107:                               ##   in Loop: Header=BB0_97 Depth=2
	leaq	L_.str23(%rip), %rdi
	leaq	_yystos(%rip), %rax
	movslq	-2020(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	movq	-2072(%rbp), %rdx
	callq	_yydestruct
	movq	-2072(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2072(%rbp)
	movq	-2056(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -2056(%rbp)
	movq	-2056(%rbp), %rax
	movswl	(%rax), %esi
	movl	%esi, -2020(%rbp)
	jmp	LBB0_97
LBB0_108:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$33, -2024(%rbp)
	jne	LBB0_110
## BB#109:
	jmp	LBB0_111
LBB0_110:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	_yylval@GOTPCREL(%rip), %rax
	movq	-2072(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2072(%rbp)
	movq	(%rax), %rax
	movq	%rax, 8(%rcx)
	movl	-2024(%rbp), %esi
	movl	%esi, -2020(%rbp)
	jmp	LBB0_1
LBB0_111:
	movl	$0, -2028(%rbp)
	jmp	LBB0_114
LBB0_112:
	movl	$1, -2028(%rbp)
	jmp	LBB0_114
LBB0_113:
	leaq	L_.str24(%rip), %rdi
	callq	_yyerror
	movl	$2, -2028(%rbp)
LBB0_114:
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB0_117
## BB#115:
	movq	_yychar@GOTPCREL(%rip), %rax
	cmpl	$-2, (%rax)
	je	LBB0_117
## BB#116:
	leaq	L_.str25(%rip), %rdi
	movq	_yylval@GOTPCREL(%rip), %rdx
	movl	-2036(%rbp), %esi
	callq	_yydestruct
LBB0_117:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-2092(%rbp), %eax
	movq	-2072(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -2072(%rbp)
	movl	-2092(%rbp), %eax
	movq	-2056(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -2056(%rbp)
LBB0_118:                               ## =>This Inner Loop Header: Depth=1
	movq	-2056(%rbp), %rax
	cmpq	-2048(%rbp), %rax
	je	LBB0_120
## BB#119:                              ##   in Loop: Header=BB0_118 Depth=1
	leaq	L_.str26(%rip), %rdi
	leaq	_yystos(%rip), %rax
	movq	-2056(%rbp), %rcx
	movswq	(%rcx), %rcx
	movzbl	(%rax,%rcx), %esi
	movq	-2072(%rbp), %rdx
	callq	_yydestruct
	movq	-2072(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2072(%rbp)
	movq	-2056(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -2056(%rbp)
	jmp	LBB0_118
LBB0_120:
	leaq	-416(%rbp), %rax
	movq	-2048(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB0_122
## BB#121:
	movq	-2048(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB0_122:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movl	-2028(%rbp), %ecx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%ecx, -2292(%rbp)       ## 4-byte Spill
	jne	LBB0_124
## BB#123:                              ## %SP_return
	movl	-2292(%rbp), %eax       ## 4-byte Reload
	addq	$2304, %rsp             ## imm = 0x900
	popq	%rbp
	retq
LBB0_124:                               ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L0_0_set_49 = LBB0_49-LJTI0_0
L0_0_set_50 = LBB0_50-LJTI0_0
L0_0_set_51 = LBB0_51-LJTI0_0
L0_0_set_52 = LBB0_52-LJTI0_0
L0_0_set_53 = LBB0_53-LJTI0_0
L0_0_set_57 = LBB0_57-LJTI0_0
L0_0_set_58 = LBB0_58-LJTI0_0
L0_0_set_59 = LBB0_59-LJTI0_0
L0_0_set_60 = LBB0_60-LJTI0_0
L0_0_set_64 = LBB0_64-LJTI0_0
L0_0_set_65 = LBB0_65-LJTI0_0
L0_0_set_66 = LBB0_66-LJTI0_0
L0_0_set_67 = LBB0_67-LJTI0_0
L0_0_set_68 = LBB0_68-LJTI0_0
L0_0_set_69 = LBB0_69-LJTI0_0
L0_0_set_74 = LBB0_74-LJTI0_0
L0_0_set_75 = LBB0_75-LJTI0_0
L0_0_set_76 = LBB0_76-LJTI0_0
L0_0_set_77 = LBB0_77-LJTI0_0
L0_0_set_78 = LBB0_78-LJTI0_0
LJTI0_0:
	.long	L0_0_set_49
	.long	L0_0_set_50
	.long	L0_0_set_51
	.long	L0_0_set_52
	.long	L0_0_set_53
	.long	L0_0_set_57
	.long	L0_0_set_58
	.long	L0_0_set_59
	.long	L0_0_set_60
	.long	L0_0_set_64
	.long	L0_0_set_65
	.long	L0_0_set_66
	.long	L0_0_set_67
	.long	L0_0_set_68
	.long	L0_0_set_69
	.long	L0_0_set_74
	.long	L0_0_set_75
	.long	L0_0_set_76
	.long	L0_0_set_77
	.long	L0_0_set_78

	.globl	_yyerror
	.align	4, 0x90
_yyerror:                               ## @yyerror
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str27(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	(%rax), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yydestruct:                            ## @yydestruct
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB2_2
## BB#1:
	leaq	L_.str28(%rip), %rax
	movq	%rax, -8(%rbp)
LBB2_2:
## BB#3:
	jmp	LBB2_4
LBB2_4:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_yyparse
	xorl	%ecx, %ecx
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_yynerrs,4,2            ## @yynerrs
	.comm	_yychar,4,2             ## @yychar
	.section	__TEXT,__const
	.align	4                       ## @yypact
_yypact:
	.short	51                      ## 0x33
	.short	65516                   ## 0xffec
	.short	65517                   ## 0xffed
	.short	65518                   ## 0xffee
	.short	65519                   ## 0xffef
	.short	65535                   ## 0xffff
	.short	0                       ## 0x0
	.short	7                       ## 0x7
	.short	8                       ## 0x8
	.short	22                      ## 0x16
	.short	24                      ## 0x18
	.short	25                      ## 0x19
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	29                      ## 0x1d
	.short	27                      ## 0x1b
	.short	1                       ## 0x1
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	65516                   ## 0xffec
	.short	63                      ## 0x3f
	.short	65516                   ## 0xffec
	.short	28                      ## 0x1c
	.short	65516                   ## 0xffec
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	51                      ## 0x33
	.short	72                      ## 0x48
	.short	81                      ## 0x51
	.short	90                      ## 0x5a
	.short	99                      ## 0x63
	.short	108                     ## 0x6c
	.short	117                     ## 0x75
	.short	126                     ## 0x7e
	.short	53                      ## 0x35
	.short	135                     ## 0x87
	.short	144                     ## 0x90
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	31                      ## 0x1f
	.short	31                      ## 0x1f
	.short	31                      ## 0x1f
	.short	31                      ## 0x1f
	.short	31                      ## 0x1f
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	51                      ## 0x33
	.short	65516                   ## 0xffec
	.short	65516                   ## 0xffec
	.short	153                     ## 0x99
	.short	65516                   ## 0xffec

	.align	4                       ## @yytranslate
_yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\026\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\027\030\022\020\031\021\002\023\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\024\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\025"

	.align	4                       ## @yycheck
_yycheck:
	.ascii	"\f\r\016\017\027\027\027\023\024\025\026\027\030\031\032\033\034\020\021\022\023\024\027\027$%&'(\000\027\027\003\004\005\006\007\b\t\n\013\f\r\016\017\027\021\027\027\026\026\024\027A\003\004\005\006\007\b\t\n\013\f\r\016\017\377\021\020\021\022\023\024\027\020\377\377\031\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030\020\021\022\023\024\377\377\377\030"

	.align	4                       ## @yytable
_yytable:
	.ascii	"\035\036\037 \023\024\025)*+,-./012$%&'(\026\02756789!\030\031\001\002\003\004\005\006\007\b\t\n\013\f\r\032\016\033\034#4(\017D\001\002\003\004\005\006\007\b\t\n\013\f\r\000\016$%&'(\017\"\000\000A$%&'(\000\000\0003$%&'(\000\000\000:$%&'(\000\000\000;$%&'(\000\000\000<$%&'(\000\000\000=$%&'(\000\000\000>$%&'(\000\000\000?$%&'(\000\000\000@$%&'(\000\000\000B$%&'(\000\000\000C$%&'(\000\000\000E"

	.comm	_yylval,8,3             ## @yylval
	.align	4                       ## @yydefact
_yydefact:
	.ascii	"\000\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\025\026\024\000\001\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\003\005\006\007\b\t\n\013\f\r\016\020\017\000\021\022\000\027"

	.align	4                       ## @yyr2
_yyr2:
	.ascii	"\000\002\002\003\001\003\003\003\003\003\004\004\004\004\004\004\004\004\004\003\002\002\002\006\001"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"=%g\n"

L_.str1:                                ## @.str1
	.asciz	"Addition  is"

L_.str2:                                ## @.str2
	.asciz	"substraction is"

L_.str3:                                ## @.str3
	.asciz	"Multiplication is"

L_.str4:                                ## @.str4
	.asciz	"Error! Divide by zero!!"

L_.str5:                                ## @.str5
	.asciz	"Division is"

L_.str6:                                ## @.str6
	.asciz	"Power is="

L_.str7:                                ## @.str7
	.asciz	"SIN is="

L_.str8:                                ## @.str8
	.asciz	"COS is"

L_.str9:                                ## @.str9
	.asciz	"Undefined (Infinity)"

L_.str10:                               ## @.str10
	.asciz	"TAN is"

L_.str11:                               ## @.str11
	.asciz	"Square Root is"

L_.str12:                               ## @.str12
	.asciz	"square is="

L_.str13:                               ## @.str13
	.asciz	"EXPONENTIAL is"

L_.str14:                               ## @.str14
	.asciz	"Reciprocal is"

L_.str15:                               ## @.str15
	.asciz	"Cube is"

	.comm	_j,4,2                  ## @j
L_.str16:                               ## @.str16
	.asciz	"Factorial is"

L_.str17:                               ## @.str17
	.asciz	"The simple number is"

L_.str18:                               ## @.str18
	.asciz	"The number with Negative sign is "

L_.str19:                               ## @.str19
	.asciz	"LOG of base 10 is"

L_.str20:                               ## @.str20
	.asciz	"LOG with base 2 is"

	.section	__TEXT,__const
	.align	4                       ## @yyr1
_yyr1:
	.ascii	"\000\032\033\033\034\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035"

_yypgoto:                               ## @yypgoto
	.ascii	"\354\354;\364"

_yydefgoto:                             ## @yydefgoto
	.ascii	"\377\020\021\022"

	.section	__TEXT,__cstring,cstring_literals
L_.str21:                               ## @.str21
	.asciz	"syntax error"

L_.str22:                               ## @.str22
	.asciz	"Error: discarding"

L_.str23:                               ## @.str23
	.asciz	"Error: popping"

	.section	__TEXT,__const
	.align	4                       ## @yystos
_yystos:
	.ascii	"\000\003\004\005\006\007\b\t\n\013\f\r\016\017\021\027\033\034\035\027\027\027\027\027\027\027\027\027\027\035\035\035\035\000\034\026\020\021\022\023\024\035\035\035\035\035\035\035\035\035\035\030\026\035\035\035\035\035\030\030\030\030\030\030\030\031\030\030\035\030"

	.section	__TEXT,__cstring,cstring_literals
L_.str24:                               ## @.str24
	.asciz	"memory exhausted"

L_.str25:                               ## @.str25
	.asciz	"Cleanup: discarding lookahead"

L_.str26:                               ## @.str26
	.asciz	"Cleanup: popping"

L_.str27:                               ## @.str27
	.asciz	"parse error!!!"

	.comm	_i,4,2                  ## @i
L_.str28:                               ## @.str28
	.asciz	"Deleting"


.subsections_via_symbols
