	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_yylex
	.align	4, 0x90
_yylex:                                 ## @yylex
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
	subq	$80, %rsp
	cmpl	$0, _yy_init(%rip)
	jne	LBB0_12
## BB#1:
	movl	$1, _yy_init(%rip)
	cmpl	$0, _yy_start(%rip)
	jne	LBB0_3
## BB#2:
	movl	$1, _yy_start(%rip)
LBB0_3:
	cmpq	$0, _yyin(%rip)
	jne	LBB0_5
## BB#4:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
LBB0_5:
	cmpq	$0, _yyout(%rip)
	jne	LBB0_7
## BB#6:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _yyout(%rip)
LBB0_7:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB0_9
## BB#8:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB0_11
	jmp	LBB0_10
LBB0_9:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB0_11
	jmp	LBB0_10
LBB0_10:
	callq	_yyensure_buffer_stack
	movl	$16384, %esi            ## imm = 0x4000
	movq	_yyin(%rip), %rdi
	callq	_yy_create_buffer
	movq	_yy_buffer_stack_top(%rip), %rdi
	movq	_yy_buffer_stack(%rip), %rcx
	movq	%rax, (%rcx,%rdi,8)
LBB0_11:
	callq	_yy_load_buffer_state
LBB0_12:
	jmp	LBB0_13
LBB0_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_14 Depth 2
                                        ##       Child Loop BB0_15 Depth 3
                                        ##         Child Loop BB0_18 Depth 4
                                        ##       Child Loop BB0_25 Depth 3
                                        ##         Child Loop BB0_28 Depth 4
	movq	_yy_c_buf_p(%rip), %rax
	movq	%rax, -16(%rbp)
	movb	_yy_hold_char(%rip), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	_yy_start(%rip), %edx
	movl	%edx, -8(%rbp)
LBB0_14:                                ##   Parent Loop BB0_13 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_15 Depth 3
                                        ##         Child Loop BB0_18 Depth 4
                                        ##       Child Loop BB0_25 Depth 3
                                        ##         Child Loop BB0_28 Depth 4
	jmp	LBB0_15
LBB0_15:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_14 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_18 Depth 4
	leaq	_yy_accept(%rip), %rax
	leaq	_yy_ec(%rip), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %esi
	movl	%esi, %edx
	movl	(%rcx,%rdx,4), %esi
	movb	%sil, %dil
	movb	%dil, -29(%rbp)
	movslq	-8(%rbp), %rcx
	cmpw	$0, (%rax,%rcx,2)
	je	LBB0_17
## BB#16:                               ##   in Loop: Header=BB0_15 Depth=3
	movl	-8(%rbp), %eax
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	-16(%rbp), %rcx
	movq	%rcx, _yy_last_accepting_cpos(%rip)
LBB0_17:                                ##   in Loop: Header=BB0_15 Depth=3
	jmp	LBB0_18
LBB0_18:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_14 Depth=2
                                        ##       Parent Loop BB0_15 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	leaq	_yy_chk(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-8(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-29(%rbp), %edi
	addl	%edi, %esi
	movslq	%esi, %rcx
	movswl	(%rax,%rcx,2), %esi
	cmpl	-8(%rbp), %esi
	je	LBB0_22
## BB#19:                               ##   in Loop: Header=BB0_18 Depth=4
	leaq	_yy_def(%rip), %rax
	movslq	-8(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -8(%rbp)
	cmpl	$74, -8(%rbp)
	jl	LBB0_21
## BB#20:                               ##   in Loop: Header=BB0_18 Depth=4
	leaq	_yy_meta(%rip), %rax
	movzbl	-29(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	(%rax,%rdx,4), %ecx
	movb	%cl, %sil
	movb	%sil, -29(%rbp)
LBB0_21:                                ##   in Loop: Header=BB0_18 Depth=4
	jmp	LBB0_18
LBB0_22:                                ##   in Loop: Header=BB0_15 Depth=3
	leaq	_yy_nxt(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-8(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-29(%rbp), %edi
	addl	%edi, %esi
	movl	%esi, %esi
	movl	%esi, %ecx
	movswl	(%rax,%rcx,2), %esi
	movl	%esi, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
## BB#23:                               ##   in Loop: Header=BB0_15 Depth=3
	leaq	_yy_base(%rip), %rax
	movslq	-8(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	cmpl	$109, %edx
	jne	LBB0_15
## BB#24:                               ##   in Loop: Header=BB0_14 Depth=2
	jmp	LBB0_25
LBB0_25:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_14 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_28 Depth 4
	leaq	_yy_accept(%rip), %rax
	movslq	-8(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	LBB0_27
## BB#26:                               ##   in Loop: Header=BB0_25 Depth=3
	leaq	_yy_accept(%rip), %rax
	movq	_yy_last_accepting_cpos(%rip), %rcx
	movq	%rcx, -16(%rbp)
	movl	_yy_last_accepting_state(%rip), %edx
	movl	%edx, -8(%rbp)
	movslq	-8(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -28(%rbp)
LBB0_27:                                ##   in Loop: Header=BB0_25 Depth=3
	movq	_yyleng@GOTPCREL(%rip), %rax
	movq	_yytext@GOTPCREL(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, _yy_hold_char(%rip)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, _yy_c_buf_p(%rip)
LBB0_28:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_14 Depth=2
                                        ##       Parent Loop BB0_25 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$18, %rdx
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	ja	LBB0_64
## BB#67:                               ##   in Loop: Header=BB0_28 Depth=4
	leaq	LJTI0_0(%rip), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_29:                                ##   in Loop: Header=BB0_25 Depth=3
	movb	_yy_hold_char(%rip), %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	_yy_last_accepting_cpos(%rip), %rcx
	movq	%rcx, -16(%rbp)
	movl	_yy_last_accepting_state(%rip), %edx
	movl	%edx, -8(%rbp)
	jmp	LBB0_25
LBB0_30:
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_atof
	movq	_yylval@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	movl	$258, -4(%rbp)          ## imm = 0x102
	jmp	LBB0_66
LBB0_31:
	movl	$259, -4(%rbp)          ## imm = 0x103
	jmp	LBB0_66
LBB0_32:
	movl	$260, -4(%rbp)          ## imm = 0x104
	jmp	LBB0_66
LBB0_33:
	movl	$261, -4(%rbp)          ## imm = 0x105
	jmp	LBB0_66
LBB0_34:
	movl	$262, -4(%rbp)          ## imm = 0x106
	jmp	LBB0_66
LBB0_35:
	movl	$263, -4(%rbp)          ## imm = 0x107
	jmp	LBB0_66
LBB0_36:
	movl	$265, -4(%rbp)          ## imm = 0x109
	jmp	LBB0_66
LBB0_37:
	movl	$264, -4(%rbp)          ## imm = 0x108
	jmp	LBB0_66
LBB0_38:
	movl	$267, -4(%rbp)          ## imm = 0x10B
	jmp	LBB0_66
LBB0_39:
	movl	$268, -4(%rbp)          ## imm = 0x10C
	jmp	LBB0_66
LBB0_40:
	movl	$269, -4(%rbp)          ## imm = 0x10D
	jmp	LBB0_66
LBB0_41:
	movl	$270, -4(%rbp)          ## imm = 0x10E
	jmp	LBB0_66
LBB0_42:
	movl	$266, -4(%rbp)          ## imm = 0x10A
	jmp	LBB0_66
LBB0_43:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_65
LBB0_44:
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	LBB0_66
LBB0_45:                                ##   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	_yyleng@GOTPCREL(%rip), %rcx
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movq	(%rcx), %rsi
	movq	_yyout(%rip), %rcx
	callq	_fwrite
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	jmp	LBB0_65
LBB0_46:
	movl	$0, -4(%rbp)
	jmp	LBB0_66
LBB0_47:                                ##   in Loop: Header=BB0_28 Depth=4
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	(%rax), %rax
	subq	%rax, %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%edx, -36(%rbp)
	movb	_yy_hold_char(%rip), %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 64(%rax)
	jne	LBB0_49
## BB#48:                               ##   in Loop: Header=BB0_28 Depth=4
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	32(%rax), %rax
	movq	%rax, _yy_n_chars(%rip)
	movq	_yyin(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 64(%rax)
LBB0_49:                                ##   in Loop: Header=BB0_28 Depth=4
	movq	_yy_c_buf_p(%rip), %rax
	movq	_yy_n_chars(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	LBB0_53
## BB#50:                               ##   in Loop: Header=BB0_25 Depth=3
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, _yy_c_buf_p(%rip)
	callq	_yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	_yy_try_NUL_trans
	movq	_yytext@GOTPCREL(%rip), %rcx
	movl	%eax, -40(%rbp)
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -40(%rbp)
	je	LBB0_52
## BB#51:                               ##   in Loop: Header=BB0_14 Depth=2
	movq	_yy_c_buf_p(%rip), %rax
	addq	$1, %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	LBB0_14
LBB0_52:                                ##   in Loop: Header=BB0_25 Depth=3
	movq	_yy_c_buf_p(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_25
LBB0_53:                                ##   in Loop: Header=BB0_28 Depth=4
	callq	_yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -68(%rbp)         ## 4-byte Spill
	je	LBB0_60
	jmp	LBB0_68
LBB0_68:                                ##   in Loop: Header=BB0_28 Depth=4
	movl	-68(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	je	LBB0_61
	jmp	LBB0_69
LBB0_69:                                ##   in Loop: Header=BB0_28 Depth=4
	movl	-68(%rbp), %eax         ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	jne	LBB0_62
	jmp	LBB0_54
LBB0_54:                                ##   in Loop: Header=BB0_28 Depth=4
	movl	$0, _yy_did_buffer_switch_on_eof(%rip)
	callq	_yywrap
	cmpl	$0, %eax
	je	LBB0_56
## BB#55:                               ##   in Loop: Header=BB0_28 Depth=4
	movl	$2, %eax
	movq	_yytext@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, _yy_c_buf_p(%rip)
	movl	_yy_start(%rip), %edx
	subl	$1, %edx
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-80(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	addl	$17, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_28
LBB0_56:                                ##   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, _yy_did_buffer_switch_on_eof(%rip)
	jne	LBB0_58
## BB#57:                               ##   in Loop: Header=BB0_13 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
LBB0_58:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_59
LBB0_59:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_62
LBB0_60:                                ##   in Loop: Header=BB0_14 Depth=2
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, _yy_c_buf_p(%rip)
	callq	_yy_get_previous_state
	movq	_yytext@GOTPCREL(%rip), %rcx
	movl	%eax, -8(%rbp)
	movq	_yy_c_buf_p(%rip), %rdx
	movq	%rdx, -16(%rbp)
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	jmp	LBB0_14
LBB0_61:                                ##   in Loop: Header=BB0_25 Depth=3
	movq	_yy_n_chars(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	8(%rcx), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	callq	_yy_get_previous_state
	movq	_yytext@GOTPCREL(%rip), %rcx
	movl	%eax, -8(%rbp)
	movq	_yy_c_buf_p(%rip), %rdx
	movq	%rdx, -16(%rbp)
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	jmp	LBB0_25
LBB0_62:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_63
LBB0_63:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_65
LBB0_64:                                ##   in Loop: Header=BB0_13 Depth=1
	leaq	L_.str(%rip), %rdi
	callq	_yy_fatal_error
LBB0_65:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_13
LBB0_66:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L0_0_set_29 = LBB0_29-LJTI0_0
L0_0_set_30 = LBB0_30-LJTI0_0
L0_0_set_31 = LBB0_31-LJTI0_0
L0_0_set_32 = LBB0_32-LJTI0_0
L0_0_set_33 = LBB0_33-LJTI0_0
L0_0_set_34 = LBB0_34-LJTI0_0
L0_0_set_35 = LBB0_35-LJTI0_0
L0_0_set_36 = LBB0_36-LJTI0_0
L0_0_set_37 = LBB0_37-LJTI0_0
L0_0_set_38 = LBB0_38-LJTI0_0
L0_0_set_39 = LBB0_39-LJTI0_0
L0_0_set_40 = LBB0_40-LJTI0_0
L0_0_set_41 = LBB0_41-LJTI0_0
L0_0_set_42 = LBB0_42-LJTI0_0
L0_0_set_43 = LBB0_43-LJTI0_0
L0_0_set_44 = LBB0_44-LJTI0_0
L0_0_set_45 = LBB0_45-LJTI0_0
L0_0_set_47 = LBB0_47-LJTI0_0
L0_0_set_46 = LBB0_46-LJTI0_0
LJTI0_0:
	.long	L0_0_set_29
	.long	L0_0_set_30
	.long	L0_0_set_31
	.long	L0_0_set_32
	.long	L0_0_set_33
	.long	L0_0_set_34
	.long	L0_0_set_35
	.long	L0_0_set_36
	.long	L0_0_set_37
	.long	L0_0_set_38
	.long	L0_0_set_39
	.long	L0_0_set_40
	.long	L0_0_set_41
	.long	L0_0_set_42
	.long	L0_0_set_43
	.long	L0_0_set_44
	.long	L0_0_set_45
	.long	L0_0_set_47
	.long	L0_0_set_46

	.align	4, 0x90
_yyensure_buffer_stack:                 ## @yyensure_buffer_stack
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
	subq	$32, %rsp
	cmpq	$0, _yy_buffer_stack(%rip)
	jne	LBB1_4
## BB#1:
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_yyalloc
	movq	%rax, _yy_buffer_stack(%rip)
	cmpq	$0, _yy_buffer_stack(%rip)
	jne	LBB1_3
## BB#2:
	leaq	L_.str9(%rip), %rdi
	callq	_yy_fatal_error
LBB1_3:
	xorl	%esi, %esi
	movq	$-1, %rcx
	movq	_yy_buffer_stack(%rip), %rax
	movq	-8(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-8(%rbp), %rcx
	movq	%rcx, _yy_buffer_stack_max(%rip)
	movq	$0, _yy_buffer_stack_top(%rip)
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB1_8
LBB1_4:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack_max(%rip), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jb	LBB1_8
## BB#5:
	movl	$8, -12(%rbp)
	movq	_yy_buffer_stack_max(%rip), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	_yy_buffer_stack(%rip), %rax
	movq	-8(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_yyrealloc
	movq	%rax, _yy_buffer_stack(%rip)
	cmpq	$0, _yy_buffer_stack(%rip)
	jne	LBB1_7
## BB#6:
	leaq	L_.str9(%rip), %rdi
	callq	_yy_fatal_error
LBB1_7:
	xorl	%esi, %esi
	movq	$-1, %rcx
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_max(%rip), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	___memset_chk
	movq	-8(%rbp), %rcx
	movq	%rcx, _yy_buffer_stack_max(%rip)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB1_8:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_create_buffer
	.align	4, 0x90
_yy_create_buffer:                      ## @yy_create_buffer
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
	subq	$32, %rsp
	movl	$72, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rcx, %rdi
	callq	_yyalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB2_2
## BB#1:
	leaq	L_.str1(%rip), %rdi
	callq	_yy_fatal_error
LBB2_2:
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	_yyalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB2_4
## BB#3:
	leaq	L_.str1(%rip), %rdi
	callq	_yy_fatal_error
LBB2_4:
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_yy_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_load_buffer_state:                  ## @yy_load_buffer_state
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
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, _yy_n_chars(%rip)
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, _yy_c_buf_p(%rip)
	movq	%rcx, (%rax)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movq	_yy_c_buf_p(%rip), %rax
	movb	(%rax), %sil
	movb	%sil, _yy_hold_char(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_get_previous_state:                 ## @yy_get_previous_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	_yytext@GOTPCREL(%rip), %rax
	movl	_yy_start(%rip), %ecx
	movl	%ecx, -4(%rbp)
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_8 Depth 2
	movq	-16(%rbp), %rax
	cmpq	_yy_c_buf_p(%rip), %rax
	jae	LBB4_14
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB4_4
## BB#3:                                ##   in Loop: Header=BB4_1 Depth=1
	leaq	_yy_ec(%rip), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -24(%rbp)         ## 4-byte Spill
	jmp	LBB4_5
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	$1, %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB4_5
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbp), %eax         ## 4-byte Reload
	leaq	_yy_accept(%rip), %rcx
	movb	%al, %dl
	movb	%dl, -17(%rbp)
	movslq	-4(%rbp), %rsi
	cmpw	$0, (%rcx,%rsi,2)
	je	LBB4_7
## BB#6:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	-16(%rbp), %rcx
	movq	%rcx, _yy_last_accepting_cpos(%rip)
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_8
LBB4_8:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	_yy_chk(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-4(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-17(%rbp), %edi
	addl	%edi, %esi
	movslq	%esi, %rcx
	movswl	(%rax,%rcx,2), %esi
	cmpl	-4(%rbp), %esi
	je	LBB4_12
## BB#9:                                ##   in Loop: Header=BB4_8 Depth=2
	leaq	_yy_def(%rip), %rax
	movslq	-4(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -4(%rbp)
	cmpl	$74, -4(%rbp)
	jl	LBB4_11
## BB#10:                               ##   in Loop: Header=BB4_8 Depth=2
	leaq	_yy_meta(%rip), %rax
	movzbl	-17(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	(%rax,%rdx,4), %ecx
	movb	%cl, %sil
	movb	%sil, -17(%rbp)
LBB4_11:                                ##   in Loop: Header=BB4_8 Depth=2
	jmp	LBB4_8
LBB4_12:                                ##   in Loop: Header=BB4_1 Depth=1
	leaq	_yy_nxt(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-4(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-17(%rbp), %edi
	addl	%edi, %esi
	movl	%esi, %esi
	movl	%esi, %ecx
	movswl	(%rax,%rcx,2), %esi
	movl	%esi, -4(%rbp)
## BB#13:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB4_1
LBB4_14:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_try_NUL_trans:                      ## @yy_try_NUL_trans
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	leaq	_yy_accept(%rip), %rax
	movl	%edi, -4(%rbp)
	movq	_yy_c_buf_p(%rip), %rcx
	movq	%rcx, -16(%rbp)
	movb	$1, -17(%rbp)
	movslq	-4(%rbp), %rcx
	cmpw	$0, (%rax,%rcx,2)
	je	LBB5_2
## BB#1:
	movl	-4(%rbp), %eax
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	-16(%rbp), %rcx
	movq	%rcx, _yy_last_accepting_cpos(%rip)
LBB5_2:
	jmp	LBB5_3
LBB5_3:                                 ## =>This Inner Loop Header: Depth=1
	leaq	_yy_chk(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-4(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-17(%rbp), %edi
	addl	%edi, %esi
	movslq	%esi, %rcx
	movswl	(%rax,%rcx,2), %esi
	cmpl	-4(%rbp), %esi
	je	LBB5_7
## BB#4:                                ##   in Loop: Header=BB5_3 Depth=1
	leaq	_yy_def(%rip), %rax
	movslq	-4(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movl	%edx, -4(%rbp)
	cmpl	$74, -4(%rbp)
	jl	LBB5_6
## BB#5:                                ##   in Loop: Header=BB5_3 Depth=1
	leaq	_yy_meta(%rip), %rax
	movzbl	-17(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	(%rax,%rdx,4), %ecx
	movb	%cl, %sil
	movb	%sil, -17(%rbp)
LBB5_6:                                 ##   in Loop: Header=BB5_3 Depth=1
	jmp	LBB5_3
LBB5_7:
	leaq	_yy_nxt(%rip), %rax
	leaq	_yy_base(%rip), %rcx
	movslq	-4(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %esi
	movzbl	-17(%rbp), %edi
	addl	%edi, %esi
	movl	%esi, %esi
	movl	%esi, %ecx
	movswl	(%rax,%rcx,2), %esi
	movl	%esi, -4(%rbp)
	cmpl	$73, -4(%rbp)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	LBB5_9
## BB#8:
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB5_10
LBB5_9:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB5_10:
	movl	-24(%rbp), %eax         ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_get_next_buffer:                    ## @yy_get_next_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	_yy_c_buf_p(%rip), %rax
	movq	_yy_n_chars(%rip), %rcx
	addq	$1, %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	jbe	LBB6_2
## BB#1:
	leaq	L_.str5(%rip), %rdi
	callq	_yy_fatal_error
LBB6_2:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 60(%rax)
	jne	LBB6_6
## BB#3:
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	_yy_c_buf_p(%rip), %rcx
	movq	(%rax), %rax
	subq	%rax, %rcx
	subq	$0, %rcx
	cmpq	$1, %rcx
	jne	LBB6_5
## BB#4:
	movl	$1, -4(%rbp)
	jmp	LBB6_62
LBB6_5:
	movl	$2, -4(%rbp)
	jmp	LBB6_62
LBB6_6:
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	_yy_c_buf_p(%rip), %rcx
	movq	(%rax), %rax
	subq	%rax, %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB6_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_10
## BB#8:                                ##   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
## BB#9:                                ##   in Loop: Header=BB6_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB6_7
LBB6_10:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 64(%rax)
	jne	LBB6_12
## BB#11:
	movq	$0, _yy_n_chars(%rip)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	$0, 32(%rax)
	jmp	LBB6_51
LBB6_12:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	24(%rax), %rax
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
LBB6_13:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	ja	LBB6_26
## BB#14:                               ##   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB6_16
## BB#15:                               ##   in Loop: Header=BB6_13 Depth=1
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jmp	LBB6_17
LBB6_16:                                ##   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	jmp	LBB6_17
LBB6_17:                                ##   in Loop: Header=BB6_13 Depth=1
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	_yy_c_buf_p(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -60(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	LBB6_22
## BB#18:                               ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	shlq	$1, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	ja	LBB6_20
## BB#19:                               ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	shrq	$3, %rax
	movq	-56(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	jmp	LBB6_21
LBB6_20:                                ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 24(%rax)
LBB6_21:                                ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	_yyrealloc
	movq	-56(%rbp), %rsi
	movq	%rax, 8(%rsi)
	jmp	LBB6_23
LBB6_22:                                ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
LBB6_23:                                ##   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB6_25
## BB#24:                               ##   in Loop: Header=BB6_13 Depth=1
	leaq	L_.str6(%rip), %rdi
	callq	_yy_fatal_error
LBB6_25:                                ##   in Loop: Header=BB6_13 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	24(%rax), %rax
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_13
LBB6_26:
	cmpq	$8192, -48(%rbp)        ## imm = 0x2000
	jbe	LBB6_28
## BB#27:
	movq	$8192, -48(%rbp)        ## imm = 0x2000
LBB6_28:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 44(%rax)
	je	LBB6_42
## BB#29:
	movl	$42, -76(%rbp)
	movq	$0, -88(%rbp)
LBB6_30:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -105(%rbp)         ## 1-byte Spill
	jae	LBB6_33
## BB#31:                               ##   in Loop: Header=BB6_30 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -76(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -105(%rbp)         ## 1-byte Spill
	je	LBB6_33
## BB#32:                               ##   in Loop: Header=BB6_30 Depth=1
	cmpl	$10, -76(%rbp)
	setne	%al
	movb	%al, -105(%rbp)         ## 1-byte Spill
LBB6_33:                                ##   in Loop: Header=BB6_30 Depth=1
	movb	-105(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB6_34
	jmp	LBB6_36
LBB6_34:                                ##   in Loop: Header=BB6_30 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	_yy_buffer_stack_top(%rip), %rdi
	movq	_yy_buffer_stack(%rip), %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
## BB#35:                               ##   in Loop: Header=BB6_30 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	LBB6_30
LBB6_36:
	cmpl	$10, -76(%rbp)
	jne	LBB6_38
## BB#37:
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)
	movslq	-28(%rbp), %rsi
	movq	_yy_buffer_stack_top(%rip), %rdi
	movq	_yy_buffer_stack(%rip), %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
LBB6_38:
	cmpl	$-1, -76(%rbp)
	jne	LBB6_41
## BB#39:
	movq	_yyin(%rip), %rdi
	callq	_ferror
	cmpl	$0, %eax
	je	LBB6_41
## BB#40:
	leaq	L_.str7(%rip), %rdi
	callq	_yy_fatal_error
LBB6_41:
	movq	-88(%rbp), %rax
	movq	%rax, _yy_n_chars(%rip)
	jmp	LBB6_50
LBB6_42:
	callq	___error
	movl	$0, (%rax)
LBB6_43:                                ## =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movq	_yyin(%rip), %rdi
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	callq	_fread
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movq	%rax, _yy_n_chars(%rip)
	cmpq	$0, %rax
	movb	%r9b, -121(%rbp)        ## 1-byte Spill
	jne	LBB6_45
## BB#44:                               ##   in Loop: Header=BB6_43 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -121(%rbp)         ## 1-byte Spill
LBB6_45:                                ##   in Loop: Header=BB6_43 Depth=1
	movb	-121(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB6_46
	jmp	LBB6_49
LBB6_46:                                ##   in Loop: Header=BB6_43 Depth=1
	callq	___error
	cmpl	$4, (%rax)
	je	LBB6_48
## BB#47:
	leaq	L_.str7(%rip), %rdi
	callq	_yy_fatal_error
	jmp	LBB6_49
LBB6_48:                                ##   in Loop: Header=BB6_43 Depth=1
	callq	___error
	movl	$0, (%rax)
	movq	_yyin(%rip), %rdi
	callq	_clearerr
	jmp	LBB6_43
LBB6_49:
	jmp	LBB6_50
LBB6_50:
	movq	_yy_n_chars(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, 32(%rcx)
LBB6_51:
	cmpq	$0, _yy_n_chars(%rip)
	jne	LBB6_56
## BB#52:
	cmpl	$0, -28(%rbp)
	jne	LBB6_54
## BB#53:
	movl	$1, -36(%rbp)
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
	jmp	LBB6_55
LBB6_54:
	movl	$2, -36(%rbp)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 64(%rax)
LBB6_55:
	jmp	LBB6_57
LBB6_56:
	movl	$0, -36(%rbp)
LBB6_57:
	movq	_yy_n_chars(%rip), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	24(%rcx), %rax
	jbe	LBB6_61
## BB#58:
	movq	_yy_n_chars(%rip), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	_yy_n_chars(%rip), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	_yyrealloc
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, 8(%rax)
	jne	LBB6_60
## BB#59:
	leaq	L_.str8(%rip), %rdi
	callq	_yy_fatal_error
LBB6_60:
	jmp	LBB6_61
LBB6_61:
	movq	_yytext@GOTPCREL(%rip), %rax
	movslq	-28(%rbp), %rcx
	addq	_yy_n_chars(%rip), %rcx
	movq	%rcx, _yy_n_chars(%rip)
	movq	_yy_n_chars(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	8(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movq	_yy_n_chars(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	8(%rdx), %rdx
	movb	$0, 1(%rdx,%rcx)
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movl	-36(%rbp), %edi
	movl	%edi, -4(%rbp)
LBB6_62:
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyrestart
	.align	4, 0x90
_yyrestart:                             ## @yyrestart
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB7_2
## BB#1:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB7_4
	jmp	LBB7_3
LBB7_2:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB7_4
	jmp	LBB7_3
LBB7_3:
	callq	_yyensure_buffer_stack
	movl	$16384, %esi            ## imm = 0x4000
	movq	_yyin(%rip), %rdi
	callq	_yy_create_buffer
	movq	_yy_buffer_stack_top(%rip), %rdi
	movq	_yy_buffer_stack(%rip), %rcx
	movq	%rax, (%rcx,%rdi,8)
LBB7_4:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB7_6
## BB#5:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	jmp	LBB7_7
LBB7_6:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         ## 8-byte Spill
	jmp	LBB7_7
LBB7_7:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_yy_init_buffer
	callq	_yy_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_fatal_error:                        ## @yy_fatal_error
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str10(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	(%rax), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	_fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_exit
	.cfi_endproc

	.align	4, 0x90
_yy_init_buffer:                        ## @yy_init_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	___error
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	_yy_flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 60(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, _yy_buffer_stack(%rip)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	je	LBB9_2
## BB#1:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB9_3
LBB9_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         ## 8-byte Spill
	jmp	LBB9_3
LBB9_3:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	je	LBB9_5
## BB#4:
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
LBB9_5:
	cmpq	$0, -16(%rbp)
	je	LBB9_7
## BB#6:
	movq	-16(%rbp), %rdi
	callq	_fileno
	movl	%eax, %edi
	callq	_isatty
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB9_8
LBB9_7:
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB9_8
LBB9_8:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	___error
	movl	-48(%rbp), %edx         ## 4-byte Reload
	movl	%edx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_switch_to_buffer
	.align	4, 0x90
_yy_switch_to_buffer:                   ## @yy_switch_to_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_yyensure_buffer_stack
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB10_2
## BB#1:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	jmp	LBB10_3
LBB10_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         ## 8-byte Spill
	jmp	LBB10_3
LBB10_3:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	LBB10_5
## BB#4:
	jmp	LBB10_10
LBB10_5:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB10_7
## BB#6:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB10_8
	jmp	LBB10_9
LBB10_7:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB10_8
	jmp	LBB10_9
LBB10_8:
	movb	_yy_hold_char(%rip), %al
	movq	_yy_c_buf_p(%rip), %rcx
	movb	%al, (%rcx)
	movq	_yy_c_buf_p(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movq	_yy_n_chars(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 32(%rdx)
LBB10_9:
	movq	-8(%rbp), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	_yy_load_buffer_state
	movl	$1, _yy_did_buffer_switch_on_eof(%rip)
LBB10_10:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyalloc
	.align	4, 0x90
_yyalloc:                               ## @yyalloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_malloc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_delete_buffer
	.align	4, 0x90
_yy_delete_buffer:                      ## @yy_delete_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB12_2
## BB#1:
	jmp	LBB12_10
LBB12_2:
	movq	-8(%rbp), %rax
	cmpq	$0, _yy_buffer_stack(%rip)
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	je	LBB12_4
## BB#3:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB12_5
LBB12_4:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	jmp	LBB12_5
LBB12_5:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	-16(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB12_7
## BB#6:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
LBB12_7:
	movq	-8(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	LBB12_9
## BB#8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_yyfree
LBB12_9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_yyfree
LBB12_10:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyfree
	.align	4, 0x90
_yyfree:                                ## @yyfree
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_flush_buffer
	.align	4, 0x90
_yy_flush_buffer:                       ## @yy_flush_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB14_2
## BB#1:
	jmp	LBB14_7
LBB14_2:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, _yy_buffer_stack(%rip)
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	je	LBB14_4
## BB#3:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB14_5
LBB14_4:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	jmp	LBB14_5
LBB14_5:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	-16(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB14_7
## BB#6:
	callq	_yy_load_buffer_state
LBB14_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yypush_buffer_state
	.align	4, 0x90
_yypush_buffer_state:                   ## @yypush_buffer_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB15_2
## BB#1:
	jmp	LBB15_11
LBB15_2:
	callq	_yyensure_buffer_stack
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB15_4
## BB#3:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB15_5
	jmp	LBB15_6
LBB15_4:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB15_5
	jmp	LBB15_6
LBB15_5:
	movb	_yy_hold_char(%rip), %al
	movq	_yy_c_buf_p(%rip), %rcx
	movb	%al, (%rcx)
	movq	_yy_c_buf_p(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movq	_yy_n_chars(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	_yy_buffer_stack(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 32(%rdx)
LBB15_6:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB15_8
## BB#7:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB15_9
	jmp	LBB15_10
LBB15_8:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB15_9
	jmp	LBB15_10
LBB15_9:
	movq	_yy_buffer_stack_top(%rip), %rax
	addq	$1, %rax
	movq	%rax, _yy_buffer_stack_top(%rip)
LBB15_10:
	movq	-8(%rbp), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	_yy_buffer_stack(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	_yy_load_buffer_state
	movl	$1, _yy_did_buffer_switch_on_eof(%rip)
LBB15_11:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yypop_buffer_state
	.align	4, 0x90
_yypop_buffer_state:                    ## @yypop_buffer_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB16_2
## BB#1:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB16_4
	jmp	LBB16_3
LBB16_2:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB16_4
	jmp	LBB16_3
LBB16_3:
	jmp	LBB16_13
LBB16_4:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB16_6
## BB#5:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	jmp	LBB16_7
LBB16_6:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          ## 8-byte Spill
	jmp	LBB16_7
LBB16_7:
	movq	-8(%rbp), %rax          ## 8-byte Reload
	movq	%rax, %rdi
	callq	_yy_delete_buffer
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rdi
	movq	$0, (%rdi,%rax,8)
	cmpq	$0, _yy_buffer_stack_top(%rip)
	jbe	LBB16_9
## BB#8:
	movq	_yy_buffer_stack_top(%rip), %rax
	addq	$-1, %rax
	movq	%rax, _yy_buffer_stack_top(%rip)
LBB16_9:
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB16_11
## BB#10:
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	LBB16_12
	jmp	LBB16_13
LBB16_11:
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	LBB16_12
	jmp	LBB16_13
LBB16_12:
	callq	_yy_load_buffer_state
	movl	$1, _yy_did_buffer_switch_on_eof(%rip)
LBB16_13:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_scan_buffer
	.align	4, 0x90
_yy_scan_buffer:                        ## @yy_scan_buffer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$2, -24(%rbp)
	jb	LBB17_3
## BB#1:
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	LBB17_3
## BB#2:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	LBB17_4
LBB17_3:
	movq	$0, -8(%rbp)
	jmp	LBB17_7
LBB17_4:
	movl	$72, %eax
	movl	%eax, %edi
	callq	_yyalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB17_6
## BB#5:
	leaq	L_.str2(%rip), %rdi
	callq	_yy_fatal_error
LBB17_6:
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-32(%rbp), %rdi
	callq	_yy_switch_to_buffer
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB17_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_scan_string
	.align	4, 0x90
_yy_scan_string:                        ## @yy_scan_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp54:
	.cfi_def_cfa_offset 16
Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_yy_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yy_scan_bytes
	.align	4, 0x90
_yy_scan_bytes:                         ## @yy_scan_bytes
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$2, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_yyalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB19_2
## BB#1:
	leaq	L_.str3(%rip), %rdi
	callq	_yy_fatal_error
LBB19_2:
	movq	$0, -48(%rbp)
LBB19_3:                                ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	LBB19_6
## BB#4:                                ##   in Loop: Header=BB19_3 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
## BB#5:                                ##   in Loop: Header=BB19_3 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB19_3
LBB19_6:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, 1(%rcx,%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_yy_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB19_8
## BB#7:
	leaq	L_.str4(%rip), %rdi
	callq	_yy_fatal_error
LBB19_8:
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_lineno
	.align	4, 0x90
_yyget_lineno:                          ## @yyget_lineno
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp60:
	.cfi_def_cfa_offset 16
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp62:
	.cfi_def_cfa_register %rbp
	movl	_yylineno(%rip), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_in
	.align	4, 0x90
_yyget_in:                              ## @yyget_in
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp63:
	.cfi_def_cfa_offset 16
Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp65:
	.cfi_def_cfa_register %rbp
	movq	_yyin(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_out
	.align	4, 0x90
_yyget_out:                             ## @yyget_out
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp66:
	.cfi_def_cfa_offset 16
Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	_yyout(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_leng
	.align	4, 0x90
_yyget_leng:                            ## @yyget_leng
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp69:
	.cfi_def_cfa_offset 16
Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	_yyleng@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_text
	.align	4, 0x90
_yyget_text:                            ## @yyget_text
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp72:
	.cfi_def_cfa_offset 16
Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyset_lineno
	.align	4, 0x90
_yyset_lineno:                          ## @yyset_lineno
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp75:
	.cfi_def_cfa_offset 16
Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp77:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, _yylineno(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyset_in
	.align	4, 0x90
_yyset_in:                              ## @yyset_in
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp78:
	.cfi_def_cfa_offset 16
Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, _yyin(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyset_out
	.align	4, 0x90
_yyset_out:                             ## @yyset_out
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp81:
	.cfi_def_cfa_offset 16
Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp83:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, _yyout(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyget_debug
	.align	4, 0x90
_yyget_debug:                           ## @yyget_debug
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp84:
	.cfi_def_cfa_offset 16
Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp86:
	.cfi_def_cfa_register %rbp
	movl	_yy_flex_debug(%rip), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyset_debug
	.align	4, 0x90
_yyset_debug:                           ## @yyset_debug
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp87:
	.cfi_def_cfa_offset 16
Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp89:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, _yy_flex_debug(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yylex_destroy
	.align	4, 0x90
_yylex_destroy:                         ## @yylex_destroy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp90:
	.cfi_def_cfa_offset 16
Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	jmp	LBB30_1
LBB30_1:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB30_3
## BB#2:                                ##   in Loop: Header=BB30_1 Depth=1
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	jmp	LBB30_4
LBB30_3:                                ##   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          ## 8-byte Spill
	jmp	LBB30_4
LBB30_4:                                ##   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax          ## 8-byte Reload
	cmpq	$0, %rax
	je	LBB30_9
## BB#5:                                ##   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, _yy_buffer_stack(%rip)
	je	LBB30_7
## BB#6:                                ##   in Loop: Header=BB30_1 Depth=1
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	jmp	LBB30_8
LBB30_7:                                ##   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         ## 8-byte Spill
	jmp	LBB30_8
LBB30_8:                                ##   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	_yy_delete_buffer
	movq	_yy_buffer_stack_top(%rip), %rax
	movq	_yy_buffer_stack(%rip), %rdi
	movq	$0, (%rdi,%rax,8)
	callq	_yypop_buffer_state
	jmp	LBB30_1
LBB30_9:
	movq	_yy_buffer_stack(%rip), %rax
	movq	%rax, %rdi
	callq	_yyfree
	movq	$0, _yy_buffer_stack(%rip)
	callq	_yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_yy_init_globals:                       ## @yy_init_globals
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp93:
	.cfi_def_cfa_offset 16
Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp95:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	$0, _yy_buffer_stack(%rip)
	movq	$0, _yy_buffer_stack_top(%rip)
	movq	$0, _yy_buffer_stack_max(%rip)
	movq	$0, _yy_c_buf_p(%rip)
	movl	$0, _yy_init(%rip)
	movl	$0, _yy_start(%rip)
	movq	$0, _yyin(%rip)
	movq	$0, _yyout(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyrealloc
	.align	4, 0x90
_yyrealloc:                             ## @yyrealloc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp96:
	.cfi_def_cfa_offset 16
Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_realloc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_yyin                   ## @yyin
.zerofill __DATA,__common,_yyin,8,3
	.globl	_yyout                  ## @yyout
.zerofill __DATA,__common,_yyout,8,3
	.section	__DATA,__data
	.globl	_yylineno               ## @yylineno
	.align	2
_yylineno:
	.long	1                       ## 0x1

	.globl	_yy_flex_debug          ## @yy_flex_debug
.zerofill __DATA,__common,_yy_flex_debug,4,2
.zerofill __DATA,__bss,_yy_init,4,2     ## @yy_init
.zerofill __DATA,__bss,_yy_start,4,2    ## @yy_start
.zerofill __DATA,__bss,_yy_buffer_stack,8,3 ## @yy_buffer_stack
.zerofill __DATA,__bss,_yy_buffer_stack_top,8,3 ## @yy_buffer_stack_top
.zerofill __DATA,__bss,_yy_c_buf_p,8,3  ## @yy_c_buf_p
.zerofill __DATA,__bss,_yy_hold_char,1,0 ## @yy_hold_char
	.section	__TEXT,__const
	.align	4                       ## @yy_ec
_yy_ec:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	5                       ## 0x5
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa
	.long	11                      ## 0xb
	.long	12                      ## 0xc
	.long	1                       ## 0x1
	.long	13                      ## 0xd
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	14                      ## 0xe
	.long	15                      ## 0xf
	.long	16                      ## 0x10
	.long	17                      ## 0x11
	.long	18                      ## 0x12
	.long	19                      ## 0x13
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	22                      ## 0x16
	.long	23                      ## 0x17
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	24                      ## 0x18
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	25                      ## 0x19
	.long	26                      ## 0x1a
	.long	27                      ## 0x1b
	.long	28                      ## 0x1c
	.long	29                      ## 0x1d
	.long	30                      ## 0x1e
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	31                      ## 0x1f
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	32                      ## 0x20
	.long	33                      ## 0x21
	.long	34                      ## 0x22
	.long	35                      ## 0x23
	.long	36                      ## 0x24
	.long	37                      ## 0x25
	.long	38                      ## 0x26
	.long	39                      ## 0x27
	.long	40                      ## 0x28
	.long	41                      ## 0x29
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	42                      ## 0x2a
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1

	.align	4                       ## @yy_accept
_yy_accept:
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	17                      ## 0x11
	.short	15                      ## 0xf
	.short	14                      ## 0xe
	.short	15                      ## 0xf
	.short	1                       ## 0x1
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	15                      ## 0xf
	.short	14                      ## 0xe
	.short	1                       ## 0x1
	.short	0                       ## 0x0
	.short	1                       ## 0x1
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	12                      ## 0xc
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	3                       ## 0x3
	.short	0                       ## 0x0
	.short	7                       ## 0x7
	.short	0                       ## 0x0
	.short	11                      ## 0xb
	.short	13                      ## 0xd
	.short	0                       ## 0x0
	.short	2                       ## 0x2
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	4                       ## 0x4
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	9                       ## 0x9
	.short	10                      ## 0xa
	.short	8                       ## 0x8
	.short	5                       ## 0x5
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	6                       ## 0x6
	.short	0                       ## 0x0

.zerofill __DATA,__bss,_yy_last_accepting_state,4,2 ## @yy_last_accepting_state
.zerofill __DATA,__bss,_yy_last_accepting_cpos,8,3 ## @yy_last_accepting_cpos
	.align	4                       ## @yy_base
_yy_base:
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	108                     ## 0x6c
	.short	109                     ## 0x6d
	.short	105                     ## 0x69
	.short	101                     ## 0x65
	.short	39                      ## 0x27
	.short	28                      ## 0x1c
	.short	81                      ## 0x51
	.short	98                      ## 0x62
	.short	30                      ## 0x1e
	.short	86                      ## 0x56
	.short	92                      ## 0x5c
	.short	35                      ## 0x23
	.short	95                      ## 0x5f
	.short	14                      ## 0xe
	.short	58                      ## 0x3a
	.short	74                      ## 0x4a
	.short	64                      ## 0x40
	.short	62                      ## 0x3e
	.short	67                      ## 0x43
	.short	19                      ## 0x13
	.short	70                      ## 0x46
	.short	92                      ## 0x5c
	.short	88                      ## 0x58
	.short	87                      ## 0x57
	.short	48                      ## 0x30
	.short	70                      ## 0x46
	.short	83                      ## 0x53
	.short	71                      ## 0x47
	.short	80                      ## 0x50
	.short	109                     ## 0x6d
	.short	75                      ## 0x4b
	.short	77                      ## 0x4d
	.short	77                      ## 0x4d
	.short	68                      ## 0x44
	.short	37                      ## 0x25
	.short	67                      ## 0x43
	.short	43                      ## 0x2b
	.short	55                      ## 0x37
	.short	44                      ## 0x2c
	.short	52                      ## 0x34
	.short	50                      ## 0x32
	.short	50                      ## 0x32
	.short	42                      ## 0x2a
	.short	20                      ## 0x14
	.short	41                      ## 0x29
	.short	109                     ## 0x6d
	.short	64                      ## 0x40
	.short	109                     ## 0x6d
	.short	51                      ## 0x33
	.short	109                     ## 0x6d
	.short	109                     ## 0x6d
	.short	59                      ## 0x3b
	.short	109                     ## 0x6d
	.short	49                      ## 0x31
	.short	64                      ## 0x40
	.short	109                     ## 0x6d
	.short	40                      ## 0x28
	.short	28                      ## 0x1c
	.short	36                      ## 0x24
	.short	26                      ## 0x1a
	.short	40                      ## 0x28
	.short	109                     ## 0x6d
	.short	109                     ## 0x6d
	.short	109                     ## 0x6d
	.short	109                     ## 0x6d
	.short	44                      ## 0x2c
	.short	25                      ## 0x19
	.short	52                      ## 0x34
	.short	30                      ## 0x1e
	.short	109                     ## 0x6d
	.short	109                     ## 0x6d

	.align	4                       ## @yy_chk
_yy_chk:
	.short	0                       ## 0x0
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	1                       ## 0x1
	.short	7                       ## 0x7
	.short	7                       ## 0x7
	.short	8                       ## 0x8
	.short	11                      ## 0xb
	.short	11                      ## 0xb
	.short	14                      ## 0xe
	.short	16                      ## 0x10
	.short	22                      ## 0x16
	.short	8                       ## 0x8
	.short	27                      ## 0x1b
	.short	27                      ## 0x1b
	.short	14                      ## 0xe
	.short	16                      ## 0x10
	.short	22                      ## 0x16
	.short	37                      ## 0x25
	.short	46                      ## 0x2e
	.short	71                      ## 0x47
	.short	37                      ## 0x25
	.short	46                      ## 0x2e
	.short	70                      ## 0x46
	.short	69                      ## 0x45
	.short	68                      ## 0x44
	.short	63                      ## 0x3f
	.short	62                      ## 0x3e
	.short	61                      ## 0x3d
	.short	60                      ## 0x3c
	.short	59                      ## 0x3b
	.short	57                      ## 0x39
	.short	56                      ## 0x38
	.short	54                      ## 0x36
	.short	51                      ## 0x33
	.short	49                      ## 0x31
	.short	47                      ## 0x2f
	.short	45                      ## 0x2d
	.short	44                      ## 0x2c
	.short	43                      ## 0x2b
	.short	42                      ## 0x2a
	.short	41                      ## 0x29
	.short	40                      ## 0x28
	.short	39                      ## 0x27
	.short	38                      ## 0x26
	.short	36                      ## 0x24
	.short	35                      ## 0x23
	.short	34                      ## 0x22
	.short	33                      ## 0x21
	.short	31                      ## 0x1f
	.short	30                      ## 0x1e
	.short	29                      ## 0x1d
	.short	28                      ## 0x1c
	.short	26                      ## 0x1a
	.short	25                      ## 0x19
	.short	24                      ## 0x18
	.short	23                      ## 0x17
	.short	21                      ## 0x15
	.short	20                      ## 0x14
	.short	19                      ## 0x13
	.short	18                      ## 0x12
	.short	17                      ## 0x11
	.short	15                      ## 0xf
	.short	13                      ## 0xd
	.short	12                      ## 0xc
	.short	10                      ## 0xa
	.short	9                       ## 0x9
	.short	6                       ## 0x6
	.short	5                       ## 0x5
	.short	3                       ## 0x3
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49

	.align	4                       ## @yy_def
_yy_def:
	.short	0                       ## 0x0
	.short	73                      ## 0x49
	.short	1                       ## 0x1
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	0                       ## 0x0

	.align	4                       ## @yy_meta
_yy_meta:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1

	.align	4                       ## @yy_nxt
_yy_nxt:
	.short	0                       ## 0x0
	.short	4                       ## 0x4
	.short	5                       ## 0x5
	.short	4                       ## 0x4
	.short	6                       ## 0x6
	.short	7                       ## 0x7
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	8                       ## 0x8
	.short	4                       ## 0x4
	.short	9                       ## 0x9
	.short	10                      ## 0xa
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	11                      ## 0xb
	.short	12                      ## 0xc
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	13                      ## 0xd
	.short	14                      ## 0xe
	.short	15                      ## 0xf
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	16                      ## 0x10
	.short	4                       ## 0x4
	.short	17                      ## 0x11
	.short	18                      ## 0x12
	.short	4                       ## 0x4
	.short	19                      ## 0x13
	.short	20                      ## 0x14
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	21                      ## 0x15
	.short	22                      ## 0x16
	.short	23                      ## 0x17
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	26                      ## 0x1a
	.short	27                      ## 0x1b
	.short	28                      ## 0x1c
	.short	32                      ## 0x20
	.short	33                      ## 0x21
	.short	36                      ## 0x24
	.short	39                      ## 0x27
	.short	45                      ## 0x2d
	.short	29                      ## 0x1d
	.short	26                      ## 0x1a
	.short	27                      ## 0x1b
	.short	37                      ## 0x25
	.short	40                      ## 0x28
	.short	46                      ## 0x2e
	.short	56                      ## 0x38
	.short	62                      ## 0x3e
	.short	72                      ## 0x48
	.short	57                      ## 0x39
	.short	63                      ## 0x3f
	.short	72                      ## 0x48
	.short	71                      ## 0x47
	.short	70                      ## 0x46
	.short	69                      ## 0x45
	.short	67                      ## 0x43
	.short	66                      ## 0x42
	.short	65                      ## 0x41
	.short	64                      ## 0x40
	.short	68                      ## 0x44
	.short	67                      ## 0x43
	.short	66                      ## 0x42
	.short	65                      ## 0x41
	.short	64                      ## 0x40
	.short	58                      ## 0x3a
	.short	55                      ## 0x37
	.short	61                      ## 0x3d
	.short	53                      ## 0x35
	.short	60                      ## 0x3c
	.short	50                      ## 0x32
	.short	59                      ## 0x3b
	.short	48                      ## 0x30
	.short	58                      ## 0x3a
	.short	55                      ## 0x37
	.short	54                      ## 0x36
	.short	53                      ## 0x35
	.short	52                      ## 0x34
	.short	51                      ## 0x33
	.short	50                      ## 0x32
	.short	49                      ## 0x31
	.short	48                      ## 0x30
	.short	25                      ## 0x19
	.short	25                      ## 0x19
	.short	24                      ## 0x18
	.short	47                      ## 0x2f
	.short	44                      ## 0x2c
	.short	43                      ## 0x2b
	.short	32                      ## 0x20
	.short	42                      ## 0x2a
	.short	41                      ## 0x29
	.short	38                      ## 0x26
	.short	35                      ## 0x23
	.short	34                      ## 0x22
	.short	31                      ## 0x1f
	.short	30                      ## 0x1e
	.short	25                      ## 0x19
	.short	24                      ## 0x18
	.short	73                      ## 0x49
	.short	3                       ## 0x3
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49
	.short	73                      ## 0x49

	.comm	_yytext,8,3             ## @yytext
	.comm	_yyleng,8,3             ## @yyleng
.zerofill __DATA,__bss,_yy_n_chars,8,3  ## @yy_n_chars
.zerofill __DATA,__bss,_yy_did_buffer_switch_on_eof,4,2 ## @yy_did_buffer_switch_on_eof
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"fatal flex scanner internal error--no action found"

L_.str1:                                ## @.str1
	.asciz	"out of dynamic memory in yy_create_buffer()"

L_.str2:                                ## @.str2
	.asciz	"out of dynamic memory in yy_scan_buffer()"

L_.str3:                                ## @.str3
	.asciz	"out of dynamic memory in yy_scan_bytes()"

L_.str4:                                ## @.str4
	.asciz	"bad buffer in yy_scan_bytes()"

L_.str5:                                ## @.str5
	.asciz	"fatal flex scanner internal error--end of buffer missed"

L_.str6:                                ## @.str6
	.asciz	"fatal error - scanner input buffer overflow"

L_.str7:                                ## @.str7
	.asciz	"input in flex scanner failed"

L_.str8:                                ## @.str8
	.asciz	"out of dynamic memory in yy_get_next_buffer()"

L_.str9:                                ## @.str9
	.asciz	"out of dynamic memory in yyensure_buffer_stack()"

.zerofill __DATA,__bss,_yy_buffer_stack_max,8,3 ## @yy_buffer_stack_max
L_.str10:                               ## @.str10
	.asciz	"%s\n"


.subsections_via_symbols
