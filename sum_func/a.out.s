	.text
	.file	"new_hello.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$context, %edi
	callq	_ZN4llvm11LLVMContextC1Ev
	movl	$_ZN4llvm11LLVMContextD1Ev, %edi
	movl	$context, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movl	$0, -20(%rbp)
	movl	$704, %edi              # imm = 0x2C0
	callq	_Znwm
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdi
	movabsq	$.L.str, %rsi
	callq	_ZN4llvm9StringRefC2EPKc
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movabsq	$context, %rcx
	callq	_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE
	movq	%rbx, -16(%rbp)
	movq	-16(%rbp), %rbx
	callq	_ZN4llvm4errsEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4llvm9StringRefC2EPKc,"axG",@progbits,_ZN4llvm9StringRefC2EPKc,comdat
	.weak	_ZN4llvm9StringRefC2EPKc # -- Begin function _ZN4llvm9StringRefC2EPKc
	.p2align	4, 0x90
	.type	_ZN4llvm9StringRefC2EPKc,@function
_ZN4llvm9StringRefC2EPKc:               # @_ZN4llvm9StringRefC2EPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %rax
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	strlen
	jmp	.LBB2_3
.LBB2_2:
	xorl	%eax, %eax
	jmp	.LBB2_3
.LBB2_3:
	movq	%rax, (%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN4llvm9StringRefC2EPKc, .Lfunc_end2-_ZN4llvm9StringRefC2EPKc
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_new_hello.cpp
	.type	_GLOBAL__sub_I_new_hello.cpp,@function
_GLOBAL__sub_I_new_hello.cpp:           # @_GLOBAL__sub_I_new_hello.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_GLOBAL__sub_I_new_hello.cpp, .Lfunc_end3-_GLOBAL__sub_I_new_hello.cpp
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN4llvm30VerifyDisableABIBreakingChecksE # @_ZN4llvm30VerifyDisableABIBreakingChecksE
	.type	_ZN4llvm30VerifyDisableABIBreakingChecksE,@object
	.data
	.weak	_ZN4llvm30VerifyDisableABIBreakingChecksE
	.p2align	3
_ZN4llvm30VerifyDisableABIBreakingChecksE:
	.quad	_ZN4llvm24DisableABIBreakingChecksE
	.size	_ZN4llvm30VerifyDisableABIBreakingChecksE, 8

	.type	context,@object         # @context
	.bss
	.globl	context
	.p2align	3
context:
	.zero	8
	.size	context, 8

	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"llvm-module"
	.size	.L.str, 12

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_new_hello.cpp

	.ident	"clang version 9.0.0-2 (tags/RELEASE_900/final)"
	.section	".note.GNU-stack","",@progbits
