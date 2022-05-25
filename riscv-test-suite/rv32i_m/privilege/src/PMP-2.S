// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the ejal instruction of the RISC-V I extension.
// 

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I")
        
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN


#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP2)
RVTEST_SIGBASE( x11,test_A_res)
	

	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.align	2
	.type	main, @function

main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	jal	init_pt
	li	a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	li	a0,4096
	jal	exhaustive_test
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	j	exit
	.size	main, .-main
	.align	2
	
	.type	insn_len, @function
insn_len:

	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	andi	a5,a5,3
	beq	a5,zero,.L200
	li	a5,4
	j	.L400
.L200:
	li	a5,2
.L400:
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	insn_len, .-insn_len



	.type	handle_trap, @function
handle_trap:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L2
	li	a0,0
	j	exit
.L2:
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L3
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L4
.L3:
	li	a0,1
	j	exit
.L4:
	lui	a5,%hi(trap_expected)
	sw	zero,%lo(trap_expected)(a5)
	lw	a0,-24(s0)
	jal	insn_len
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	handle_trap, .-handle_trap
	.align	2
	.type	init_pt, @function
init_pt:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	lui	a5,%hi(l2pt)
	addi	a5,a5,%lo(l2pt)
	srli	a5,a5,12
	slli	a5,a5,10
	ori	a4,a5,1
	lui	a5,%hi(l1pt)
	sw	a4,%lo(l1pt)(a5)
	lui	a5,%hi(scratch)
	addi	a5,a5,%lo(scratch)
	srli	a5,a5,12
	slli	a5,a5,10
	ori	a4,a5,199
	lui	a5,%hi(l2pt)
	addi	a5,a5,%lo(l2pt)
	sw	a4,4(a5)
	li	a5,1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,31
	mv	a4,a5
	lui	a5,%hi(l1pt)
	addi	a5,a5,%lo(l1pt)
	srli	a5,a5,12
	or	a5,a4,a5
 #APP
# 45 "PMP.c" 1
	csrw sptbr, a5
# 0 "" 2
 #NO_APP
	li	a5,1638400
 #APP
# 47 "PMP.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	li	a5,-1
 #APP
# 48 "PMP.c" 1
	csrw pmpaddr2, a5
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	init_pt, .-init_pt
	.align	2
	.type	test_range, @function
test_range:
	addi	sp,sp,-352
	sw	ra,348(sp)
	sw	s0,344(sp)
	addi	s0,sp,352
	sw	a0,-340(s0)
	sw	a1,-344(s0)
	lw	a5,-340(s0)
	sw	a5,-100(s0)
	lw	a4,-100(s0)
	li	a5,4096
	bltu	a4,a5,.L8
	lw	a4,-100(s0)
	li	a5,8192
	bltu	a4,a5,.L9
.L8:
	li	a0,3
	jal	exit
.L9:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-100(s0)
	add	a5,a4,a5
	sw	a5,-84(s0)
	lw	a5,-344(s0)
	sw	a5,-88(s0)
	li	a5,9
	sw	a5,-280(s0)
	lw	a5,-84(s0)
	srli	a5,a5,2
	sw	a5,-276(s0)
	lw	a4,-84(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	srli	a5,a5,2
	sw	a5,-272(s0)
	lw	a5,-280(s0)
	sw	a5,-292(s0)
	lw	a5,-276(s0)
	sw	a5,-288(s0)
	lw	a5,-272(s0)
	sw	a5,-284(s0)

	csrr a5, pmpcfg0

	sw	a5,-92(s0)
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	lw	a4,-96(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5

	csrw pmpcfg0, a5

	lw	a5,-288(s0)

	csrw pmpaddr0, a5

	lw	a5,-284(s0)

	csrw pmpaddr1, a5

	lw	a5,-292(s0)
	slli	a4,a5,8
	li	a5,65536
	addi	a5,a5,-1
	and	a4,a4,a5
	lw	a3,-96(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a3,a5
	or	a5,a4,a5
 #APP
# 139 "PMP.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
# 140 "PMP.c" 1
	sfence.vma
# 0 "" 2
 #NO_APP
	lw	a5,-292(s0)
	sw	a5,-196(s0)
	lw	a5,-288(s0)
	sw	a5,-192(s0)
	lw	a5,-284(s0)
	sw	a5,-188(s0)
	nop
	lw	a5,-196(s0)
	sw	a5,-304(s0)
	lw	a5,-192(s0)
	sw	a5,-300(s0)
	lw	a5,-188(s0)
	sw	a5,-296(s0)
	lw	a5,-340(s0)
	sw	a5,-20(s0)
	lw	a5,-344(s0)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	j	.L13
.L39:
	lw	a5,-304(s0)
	sw	a5,-316(s0)
	lw	a5,-300(s0)
	sw	a5,-312(s0)
	lw	a5,-296(s0)
	sw	a5,-308(s0)
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L14
.L38:
	lw	a5,-36(s0)
	addi	a4,a5,-1
	lw	a5,-32(s0)
	and	a5,a4,a5
	bne	a5,zero,.L75
	lw	a5,-316(s0)
	sw	a5,-328(s0)
	lw	a5,-312(s0)
	sw	a5,-324(s0)
	lw	a5,-308(s0)
	sw	a5,-320(s0)
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	lw	a5,-328(s0)
	andi	a5,a5,24
	bne	a5,zero,.L17
	li	a5,1
	j	.L18
.L17:
	lw	a5,-328(s0)
	andi	a4,a5,24
	li	a5,8
	beq	a4,a5,.L19
	li	a5,1
	sw	a5,-48(s0)
	lw	a5,-328(s0)
	andi	a4,a5,24
	li	a5,24
	bne	a4,a5,.L20
	lw	a5,-48(s0)
	slli	a5,a5,1
	sw	a5,-48(s0)
	li	a5,1
	sw	a5,-52(s0)
	j	.L21
.L23:
	lw	a4,-320(s0)
	lw	a5,-52(s0)
	and	a5,a4,a5
	beq	a5,zero,.L76
	lw	a4,-320(s0)
	lw	a5,-52(s0)
	not	a5,a5
	and	a5,a4,a5
	sw	a5,-320(s0)
	lw	a5,-48(s0)
	slli	a5,a5,1
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	slli	a5,a5,1
	sw	a5,-52(s0)
.L21:
	lw	a5,-52(s0)
	bne	a5,zero,.L23
	j	.L20
.L76:
	nop
.L20:
	lw	a5,-320(s0)
	sw	a5,-324(s0)
	lw	a4,-324(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-320(s0)
.L19:
	lw	a5,-324(s0)
	slli	a5,a5,2
	sw	a5,-324(s0)
	lw	a5,-320(s0)
	slli	a5,a5,2
	sw	a5,-320(s0)
	lw	a5,-40(s0)
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	li	a5,4096
	bltu	a4,a5,.L24
	lw	a4,-56(s0)
	li	a5,8192
	bltu	a4,a5,.L25
.L24:
	li	a0,3
	jal	exit
.L25:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	sw	zero,-60(s0)
	sw	zero,-64(s0)
	j	.L27
.L29:
	lw	a4,-324(s0)
	lw	a3,-40(s0)
	lw	a5,-64(s0)
	add	a5,a3,a5
	bgtu	a4,a5,.L28
	lw	a4,-40(s0)
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-320(s0)
	bgeu	a4,a5,.L28
	lw	a5,-60(s0)
	addi	a5,a5,4
	sw	a5,-60(s0)
.L28:
	lw	a5,-64(s0)
	addi	a5,a5,4
	sw	a5,-64(s0)
.L27:
	lw	a4,-44(s0)
	lw	a5,-64(s0)
	bgtu	a4,a5,.L29
	lw	a5,-60(s0)
	beq	a5,zero,.L30
	lw	a4,-44(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L31
.L30:
	li	a5,1
	j	.L18
.L31:
	li	a5,0
.L18:
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lui	a5,%hi(trap_expected)
	sw	a4,%lo(trap_expected)(a5)
	lw	a5,-32(s0)
	sw	a5,-68(s0)
	lw	a5,-36(s0)
	sw	a5,-72(s0)
 #APP
# 103 "PMP.c" 1
	csrr a5, mstatus
# 0 "" 2
 #NO_APP
	sw	a5,-76(s0)
	lw	a4,-76(s0)
	li	a5,-139264
	addi	a5,a5,2047
	and	a4,a4,a5
	li	a5,135168
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-80(s0)
	lw	a4,-72(s0)
	li	a5,4
	beq	a4,a5,.L33
	lw	a4,-72(s0)
	li	a5,4
	bgtu	a4,a5,.L34
	lw	a4,-72(s0)
	li	a5,1
	beq	a4,a5,.L35
	lw	a4,-72(s0)
	li	a5,2
	beq	a4,a5,.L36
	j	.L34
.L35:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 105 "PMP.c" 1
	csrrw a5, mstatus, a5; lb x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L37
.L36:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 106 "PMP.c" 1
	csrrw a5, mstatus, a5; lh x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L37
.L33:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 107 "PMP.c" 1
	csrrw a5, mstatus, a5; lw x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L37
.L34:
.L37:
	nop
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L16
	li	a0,2
	jal	exit
.L75:
	nop
.L16:
	lw	a5,-36(s0)
	slli	a5,a5,1
	sw	a5,-36(s0)
.L14:
	lw	a4,-36(s0)
	li	a5,4
	bleu	a4,a5,.L38
	nop
	lw	a5,-28(s0)
	addi	a5,a5,4
	sw	a5,-28(s0)
.L13:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	bltu	a4,a5,.L39
	nop
	lw	a5,-344(s0)
	addi	a4,a5,-1
	lw	a5,-344(s0)
	and	a5,a4,a5
	bne	a5,zero,.L77
	lw	a5,-344(s0)
	addi	a4,a5,-1
	lw	a5,-340(s0)
	and	a5,a4,a5
	bne	a5,zero,.L77
	lw	a5,-340(s0)
	sw	a5,-184(s0)
	lw	a4,-184(s0)
	li	a5,4096
	bltu	a4,a5,.L41
	lw	a4,-184(s0)
	li	a5,8192
	bltu	a4,a5,.L42
.L41:
	li	a0,3
	jal	exit
.L42:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-184(s0)
	add	a5,a4,a5
	sw	a5,-168(s0)
	lw	a5,-344(s0)
	sw	a5,-172(s0)
	lw	a4,-172(s0)
	li	a5,4
	bleu	a4,a5,.L44
	li	a5,25
	j	.L45
.L44:
	li	a5,17
.L45:
	sw	a5,-220(s0)
	sw	zero,-216(s0)
	lw	a5,-172(s0)
	srli	a4,a5,1
	lw	a5,-168(s0)
	add	a5,a4,a5
	addi	a5,a5,-1
	srli	a5,a5,2
	sw	a5,-212(s0)
	lw	a5,-220(s0)
	sw	a5,-232(s0)
	lw	a5,-216(s0)
	sw	a5,-228(s0)
	lw	a5,-212(s0)
	sw	a5,-224(s0)
 #APP
# 135 "PMP.c" 1
	csrr a5, pmpcfg0
# 0 "" 2
 #NO_APP
	sw	a5,-176(s0)
	lw	a5,-176(s0)
	sw	a5,-180(s0)
	lw	a4,-180(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5
 #APP
# 136 "PMP.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-228(s0)
 #APP
# 137 "PMP.c" 1
	csrw pmpaddr0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-224(s0)
 #APP
# 138 "PMP.c" 1
	csrw pmpaddr1, a5
# 0 "" 2
 #NO_APP
	lw	a5,-232(s0)
	slli	a4,a5,8
	li	a5,65536
	addi	a5,a5,-1
	and	a4,a4,a5
	lw	a3,-180(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a3,a5
	or	a5,a4,a5
 #APP
# 139 "PMP.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
# 140 "PMP.c" 1
	sfence.vma
# 0 "" 2
 #NO_APP
	lw	a5,-232(s0)
	sw	a5,-208(s0)
	lw	a5,-228(s0)
	sw	a5,-204(s0)
	lw	a5,-224(s0)
	sw	a5,-200(s0)
	nop
	lw	a5,-208(s0)
	sw	a5,-196(s0)
	lw	a5,-204(s0)
	sw	a5,-192(s0)
	lw	a5,-200(s0)
	sw	a5,-188(s0)
	lw	a5,-196(s0)
	sw	a5,-244(s0)
	lw	a5,-192(s0)
	sw	a5,-240(s0)
	lw	a5,-188(s0)
	sw	a5,-236(s0)
	lw	a5,-340(s0)
	sw	a5,-104(s0)
	lw	a5,-344(s0)
	sw	a5,-108(s0)
	lw	a5,-104(s0)
	sw	a5,-112(s0)
	j	.L48
.L74:
	lw	a5,-244(s0)
	sw	a5,-256(s0)
	lw	a5,-240(s0)
	sw	a5,-252(s0)
	lw	a5,-236(s0)
	sw	a5,-248(s0)
	lw	a5,-112(s0)
	sw	a5,-116(s0)
	li	a5,1
	sw	a5,-120(s0)
	j	.L49
.L73:
	lw	a5,-120(s0)
	addi	a4,a5,-1
	lw	a5,-116(s0)
	and	a5,a4,a5
	bne	a5,zero,.L78
	lw	a5,-256(s0)
	sw	a5,-268(s0)
	lw	a5,-252(s0)
	sw	a5,-264(s0)
	lw	a5,-248(s0)
	sw	a5,-260(s0)
	lw	a5,-116(s0)
	sw	a5,-124(s0)
	lw	a5,-120(s0)
	sw	a5,-128(s0)
	lw	a5,-268(s0)
	andi	a5,a5,24
	bne	a5,zero,.L52
	li	a5,1
	j	.L53
.L52:
	lw	a5,-268(s0)
	andi	a4,a5,24
	li	a5,8
	beq	a4,a5,.L54
	li	a5,1
	sw	a5,-132(s0)
	lw	a5,-268(s0)
	andi	a4,a5,24
	li	a5,24
	bne	a4,a5,.L55
	lw	a5,-132(s0)
	slli	a5,a5,1
	sw	a5,-132(s0)
	li	a5,1
	sw	a5,-136(s0)
	j	.L56
.L58:
	lw	a4,-260(s0)
	lw	a5,-136(s0)
	and	a5,a4,a5
	beq	a5,zero,.L79
	lw	a4,-260(s0)
	lw	a5,-136(s0)
	not	a5,a5
	and	a5,a4,a5
	sw	a5,-260(s0)
	lw	a5,-132(s0)
	slli	a5,a5,1
	sw	a5,-132(s0)
	lw	a5,-136(s0)
	slli	a5,a5,1
	sw	a5,-136(s0)
.L56:
	lw	a5,-136(s0)
	bne	a5,zero,.L58
	j	.L55
.L79:
	nop
.L55:
	lw	a5,-260(s0)
	sw	a5,-264(s0)
	lw	a4,-264(s0)
	lw	a5,-132(s0)
	add	a5,a4,a5
	sw	a5,-260(s0)
.L54:
	lw	a5,-264(s0)
	slli	a5,a5,2
	sw	a5,-264(s0)
	lw	a5,-260(s0)
	slli	a5,a5,2
	sw	a5,-260(s0)
	lw	a5,-124(s0)
	sw	a5,-140(s0)
	lw	a4,-140(s0)
	li	a5,4096
	bltu	a4,a5,.L59
	lw	a4,-140(s0)
	li	a5,8192
	bltu	a4,a5,.L60
.L59:
	li	a0,3
	jal	exit
.L60:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-140(s0)
	add	a5,a4,a5
	sw	a5,-124(s0)
	sw	zero,-144(s0)
	sw	zero,-148(s0)
	j	.L62
.L64:
	lw	a4,-264(s0)
	lw	a3,-124(s0)
	lw	a5,-148(s0)
	add	a5,a3,a5
	bgtu	a4,a5,.L63
	lw	a4,-124(s0)
	lw	a5,-148(s0)
	add	a4,a4,a5
	lw	a5,-260(s0)
	bgeu	a4,a5,.L63
	lw	a5,-144(s0)
	addi	a5,a5,4
	sw	a5,-144(s0)
.L63:
	lw	a5,-148(s0)
	addi	a5,a5,4
	sw	a5,-148(s0)
.L62:
	lw	a4,-128(s0)
	lw	a5,-148(s0)
	bgtu	a4,a5,.L64
	lw	a5,-144(s0)
	beq	a5,zero,.L65
	lw	a4,-128(s0)
	lw	a5,-144(s0)
	bgtu	a4,a5,.L66
.L65:
	li	a5,1
	j	.L53
.L66:
	li	a5,0
.L53:
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lui	a5,%hi(trap_expected)
	sw	a4,%lo(trap_expected)(a5)
	lw	a5,-116(s0)
	sw	a5,-152(s0)
	lw	a5,-120(s0)
	sw	a5,-156(s0)
 #APP
# 103 "PMP.c" 1
	csrr a5, mstatus
# 0 "" 2
 #NO_APP
	sw	a5,-160(s0)
	lw	a4,-160(s0)
	li	a5,-139264
	addi	a5,a5,2047
	and	a4,a4,a5
	li	a5,135168
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-164(s0)
	lw	a4,-156(s0)
	li	a5,4
	beq	a4,a5,.L68
	lw	a4,-156(s0)
	li	a5,4
	bgtu	a4,a5,.L69
	lw	a4,-156(s0)
	li	a5,1
	beq	a4,a5,.L70
	lw	a4,-156(s0)
	li	a5,2
	beq	a4,a5,.L71
	j	.L69
.L70:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 105 "PMP.c" 1
	csrrw a5, mstatus, a5; lb x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L72
.L71:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 106 "PMP.c" 1
	csrrw a5, mstatus, a5; lh x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L72
.L68:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 107 "PMP.c" 1
	csrrw a5, mstatus, a5; lw x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L72
.L69:
.L72:
	nop
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L51
	li	a0,2
	jal	exit
.L78:
	nop
.L51:
	lw	a5,-120(s0)
	slli	a5,a5,1
	sw	a5,-120(s0)
.L49:
	lw	a4,-120(s0)
	li	a5,4
	bleu	a4,a5,.L73
	nop
	lw	a5,-112(s0)
	addi	a5,a5,4
	sw	a5,-112(s0)
.L48:
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	lw	a4,-112(s0)
	bltu	a4,a5,.L74
	nop
.L77:
	nop
	lw	ra,348(sp)
	lw	s0,344(sp)
	addi	sp,sp,352
	jr	ra
	.size	test_range, .-test_range
	.align	2
	.type	test_ranges, @function
test_ranges:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	li	a5,4
	sw	a5,-20(s0)
	j	.L81
.L82:
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	jal	test_range
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L81:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L82
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	test_ranges, .-test_ranges
	.align	2
	.type	exhaustive_test, @function
exhaustive_test:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L84
.L85:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-40(s0)
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-20(s0)
	jal	test_ranges
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L84:
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	bltu	a4,a5,.L85
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	exhaustive_test, .-exhaustive_test
	.align	2
	
	
	
	
	
exit:	
	
#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
        
        


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
trap_expected:
	.zero	4
	.align	12
scratch:
	.zero	4096
l1pt:
	.zero	4096
l2pt:
	.zero	4096

    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN

test_A_res:
    .fill 2, 4, 0xdeadbeef

mtrap_sigptr:
  .fill 4, 4, 0xdeadbeef


RVMODEL_DATA_END
