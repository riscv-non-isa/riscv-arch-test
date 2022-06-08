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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP)
RVTEST_SIGBASE( x11,test_A_res)
	
	.option nopic
	.attribute unaligned_access, 0
	.attribute stack_align, 16

	
	
	.align	2
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	call	detect_granule
	call	init_pt
	li	a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	li	a0,4096
	call	exhaustive_test
	li	a4,8192
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a4,a5
	lw	a5,-20(s0)
	mv	a1,a5
	mv	a0,a4
	call	exhaustive_test
	li	a1,4096
	li	a0,4096
	call	test_range
	li	a5,4096
	addi	a1,a5,-2048
	li	a0,4096
	call	test_range
	li	a5,4096
	addi	a1,a5,-2048
	li	a5,8192
	addi	a0,a5,-2048
	call	test_range
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	j	exit
	.size	main, .-main
	
	.align	2
#if !defined(__riscv_mul) && __riscv_xlen == 32
	.text
	.align 2

	.globl __mulsi3
	.type  __mulsi3, @function
__mulsi3:
	mv     a2, a0
	mv     a0, zero
.L100:
	andi   a3, a1, 1
	beqz   a3, .L200
	add    a0, a0, a2
.L200:
	srli   a1, a1, 1
	slli   a2, a2, 1
	bnez   a1, .L100
	ret
#endif
	.type	insn_len, @function
insn_len:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	andi	a5,a5,3
	beq	a5,zero,.L2
	li	a5,4
	j	.L4
.L2:
	li	a5,2
.L4:
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	insn_len, .-insn_len
	
	.align	2
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
	bne	a4,a5,.L6
	li	a0,0
	call	exit
.L6:
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L7
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L8
.L7:
	li	a0,1
	call	exit
.L8:
	lui	a5,%hi(trap_expected)
	sw	zero,%lo(trap_expected)(a5)
	lw	a0,-24(s0)
	call	insn_len
	mv	a4,a0
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
# 46 "PMP2.c" 1
	csrw sptbr, a5
# 0 "" 2
 #NO_APP
	li	a5,-1
 #APP
# 48 "PMP2.c" 1
	csrw pmpaddr2, a5
# 0 "" 2
 #NO_APP
	li	a5,1638400
 #APP
# 49 "PMP2.c" 1
	csrw pmpcfg0, a5
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
	bltu	a4,a5,.L12
	lw	a4,-100(s0)
	li	a5,8192
	bltu	a4,a5,.L13
.L12:
	li	a0,3
	call	exit
.L13:
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
 #APP
# 134 "PMP2.c" 1
	csrr a5, pmpcfg0
# 0 "" 2
 #NO_APP
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	lw	a4,-96(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5
 #APP
# 135 "PMP2.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-288(s0)
 #APP
# 136 "PMP2.c" 1
	csrw pmpaddr0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-284(s0)
 #APP
# 137 "PMP2.c" 1
	csrw pmpaddr1, a5
# 0 "" 2
 #NO_APP
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
# 138 "PMP2.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
# 139 "PMP2.c" 1
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
	j	.L17
.L43:
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
	j	.L18
.L42:
	lw	a5,-36(s0)
	addi	a4,a5,-1
	lw	a5,-32(s0)
	and	a5,a4,a5
	bne	a5,zero,.L79
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
	bne	a5,zero,.L21
	li	a5,1
	j	.L22
.L21:
	lw	a5,-328(s0)
	andi	a4,a5,24
	li	a5,8
	beq	a4,a5,.L23
	li	a5,1
	sw	a5,-48(s0)
	lw	a5,-328(s0)
	andi	a4,a5,24
	li	a5,24
	bne	a4,a5,.L24
	lw	a5,-48(s0)
	slli	a5,a5,1
	sw	a5,-48(s0)
	li	a5,1
	sw	a5,-52(s0)
	j	.L25
.L27:
	lw	a4,-320(s0)
	lw	a5,-52(s0)
	and	a5,a4,a5
	beq	a5,zero,.L80
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
.L25:
	lw	a5,-52(s0)
	bne	a5,zero,.L27
	j	.L24
.L80:
	nop
.L24:
	lw	a5,-320(s0)
	sw	a5,-324(s0)
	lw	a4,-324(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-320(s0)
.L23:
	lui	a5,%hi(granule)
	lw	a4,%lo(granule)(a5)
	lw	a5,-324(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	sw	a5,-324(s0)
	lui	a5,%hi(granule)
	lw	a4,%lo(granule)(a5)
	lw	a5,-320(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	sw	a5,-320(s0)
	lw	a5,-40(s0)
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	li	a5,4096
	bltu	a4,a5,.L28
	lw	a4,-56(s0)
	li	a5,8192
	bltu	a4,a5,.L29
.L28:
	li	a0,3
	call	exit
.L29:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	sw	zero,-60(s0)
	sw	zero,-64(s0)
	j	.L31
.L33:
	lw	a4,-324(s0)
	lw	a3,-40(s0)
	lw	a5,-64(s0)
	add	a5,a3,a5
	bgtu	a4,a5,.L32
	lw	a4,-40(s0)
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-320(s0)
	bgeu	a4,a5,.L32
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-60(s0)
	add	a5,a5,a4
	sw	a5,-60(s0)
.L32:
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-64(s0)
.L31:
	lw	a4,-44(s0)
	lw	a5,-64(s0)
	bgtu	a4,a5,.L33
	lw	a5,-60(s0)
	beq	a5,zero,.L34
	lw	a4,-44(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L35
.L34:
	li	a5,1
	j	.L22
.L35:
	li	a5,0
.L22:
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
# 102 "PMP2.c" 1
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
	beq	a4,a5,.L37
	lw	a4,-72(s0)
	li	a5,4
	bgtu	a4,a5,.L38
	lw	a4,-72(s0)
	li	a5,1
	beq	a4,a5,.L39
	lw	a4,-72(s0)
	li	a5,2
	beq	a4,a5,.L40
	j	.L38
.L39:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 104 "PMP2.c" 1
	csrrw a5, mstatus, a5; lb x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L41
.L40:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 105 "PMP2.c" 1
	csrrw a5, mstatus, a5; lh x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L41
.L37:
	lw	a4,-68(s0)
	lw	a5,-80(s0)
 #APP
# 106 "PMP2.c" 1
	csrrw a5, mstatus, a5; lw x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-80(s0)
	j	.L41
.L38:
.L41:
	nop
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L20
	li	a0,2
	call	exit
.L79:
	nop
.L20:
	lw	a5,-36(s0)
	slli	a5,a5,1
	sw	a5,-36(s0)
.L18:
	lw	a4,-36(s0)
	li	a5,4
	bleu	a4,a5,.L42
	nop
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
.L17:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	bltu	a4,a5,.L43
	nop
	lw	a5,-344(s0)
	addi	a4,a5,-1
	lw	a5,-344(s0)
	and	a5,a4,a5
	bne	a5,zero,.L81
	lw	a5,-344(s0)
	addi	a4,a5,-1
	lw	a5,-340(s0)
	and	a5,a4,a5
	bne	a5,zero,.L81
	lw	a5,-340(s0)
	sw	a5,-184(s0)
	lw	a4,-184(s0)
	li	a5,4096
	bltu	a4,a5,.L45
	lw	a4,-184(s0)
	li	a5,8192
	bltu	a4,a5,.L46
.L45:
	li	a0,3
	call	exit
.L46:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-184(s0)
	add	a5,a4,a5
	sw	a5,-168(s0)
	lw	a5,-344(s0)
	sw	a5,-172(s0)
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-172(s0)
	bleu	a5,a4,.L48
	li	a5,25
	j	.L49
.L48:
	li	a5,17
.L49:
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
# 134 "PMP2.c" 1
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
# 135 "PMP2.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-228(s0)
 #APP
# 136 "PMP2.c" 1
	csrw pmpaddr0, a5
# 0 "" 2
 #NO_APP
	lw	a5,-224(s0)
 #APP
# 137 "PMP2.c" 1
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
# 138 "PMP2.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
# 139 "PMP2.c" 1
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
	j	.L52
.L78:
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
	j	.L53
.L77:
	lw	a5,-120(s0)
	addi	a4,a5,-1
	lw	a5,-116(s0)
	and	a5,a4,a5
	bne	a5,zero,.L82
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
	bne	a5,zero,.L56
	li	a5,1
	j	.L57
.L56:
	lw	a5,-268(s0)
	andi	a4,a5,24
	li	a5,8
	beq	a4,a5,.L58
	li	a5,1
	sw	a5,-132(s0)
	lw	a5,-268(s0)
	andi	a4,a5,24
	li	a5,24
	bne	a4,a5,.L59
	lw	a5,-132(s0)
	slli	a5,a5,1
	sw	a5,-132(s0)
	li	a5,1
	sw	a5,-136(s0)
	j	.L60
.L62:
	lw	a4,-260(s0)
	lw	a5,-136(s0)
	and	a5,a4,a5
	beq	a5,zero,.L83
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
.L60:
	lw	a5,-136(s0)
	bne	a5,zero,.L62
	j	.L59
.L83:
	nop
.L59:
	lw	a5,-260(s0)
	sw	a5,-264(s0)
	lw	a4,-264(s0)
	lw	a5,-132(s0)
	add	a5,a4,a5
	sw	a5,-260(s0)
.L58:
	lui	a5,%hi(granule)
	lw	a4,%lo(granule)(a5)
	lw	a5,-264(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	sw	a5,-264(s0)
	lui	a5,%hi(granule)
	lw	a4,%lo(granule)(a5)
	lw	a5,-260(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	sw	a5,-260(s0)
	lw	a5,-124(s0)
	sw	a5,-140(s0)
	lw	a4,-140(s0)
	li	a5,4096
	bltu	a4,a5,.L63
	lw	a4,-140(s0)
	li	a5,8192
	bltu	a4,a5,.L64
.L63:
	li	a0,3
	call	exit
.L64:
	lui	a5,%hi(scratch)
	addi	a4,a5,%lo(scratch)
	li	a5,-4096
	add	a4,a4,a5
	lw	a5,-140(s0)
	add	a5,a4,a5
	sw	a5,-124(s0)
	sw	zero,-144(s0)
	sw	zero,-148(s0)
	j	.L66
.L68:
	lw	a4,-264(s0)
	lw	a3,-124(s0)
	lw	a5,-148(s0)
	add	a5,a3,a5
	bgtu	a4,a5,.L67
	lw	a4,-124(s0)
	lw	a5,-148(s0)
	add	a4,a4,a5
	lw	a5,-260(s0)
	bgeu	a4,a5,.L67
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-144(s0)
	add	a5,a5,a4
	sw	a5,-144(s0)
.L67:
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-148(s0)
	add	a5,a5,a4
	sw	a5,-148(s0)
.L66:
	lw	a4,-128(s0)
	lw	a5,-148(s0)
	bgtu	a4,a5,.L68
	lw	a5,-144(s0)
	beq	a5,zero,.L69
	lw	a4,-128(s0)
	lw	a5,-144(s0)
	bgtu	a4,a5,.L70
.L69:
	li	a5,1
	j	.L57
.L70:
	li	a5,0
.L57:
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
# 102 "PMP2.c" 1
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
	beq	a4,a5,.L72
	lw	a4,-156(s0)
	li	a5,4
	bgtu	a4,a5,.L73
	lw	a4,-156(s0)
	li	a5,1
	beq	a4,a5,.L74
	lw	a4,-156(s0)
	li	a5,2
	beq	a4,a5,.L75
	j	.L73
.L74:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 104 "PMP2.c" 1
	csrrw a5, mstatus, a5; lb x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L76
.L75:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 105 "PMP2.c" 1
	csrrw a5, mstatus, a5; lh x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L76
.L72:
	lw	a4,-152(s0)
	lw	a5,-164(s0)
 #APP
# 106 "PMP2.c" 1
	csrrw a5, mstatus, a5; lw x0, (a4); csrw mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-164(s0)
	j	.L76
.L73:
.L76:
	nop
	lui	a5,%hi(trap_expected)
	lw	a5,%lo(trap_expected)(a5)
	beq	a5,zero,.L55
	li	a0,2
	call	exit
.L82:
	nop
.L55:
	lw	a5,-120(s0)
	slli	a5,a5,1
	sw	a5,-120(s0)
.L53:
	lw	a4,-120(s0)
	li	a5,4
	bleu	a4,a5,.L77
	nop
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-112(s0)
	add	a5,a5,a4
	sw	a5,-112(s0)
.L52:
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	lw	a4,-112(s0)
	bltu	a4,a5,.L78
	nop
.L81:
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
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	sw	a5,-20(s0)
	j	.L85
.L86:
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	test_range
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L85:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L86
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
	j	.L88
.L89:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-40(s0)
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-20(s0)
	call	test_ranges
	lui	a5,%hi(granule)
	lw	a5,%lo(granule)(a5)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L88:
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	bltu	a4,a5,.L89
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	exhaustive_test, .-exhaustive_test
	.align	2
	.type	detect_granule, @function
detect_granule:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
 #APP
# 186 "PMP2.c" 1
	csrw pmpcfg0, 0
# 0 "" 2
 #NO_APP
	li	a4,-1
	li	a5,-1
 #APP
# 187 "PMP2.c" 1
	csrw pmpaddr0, a4
# 0 "" 2
# 188 "PMP2.c" 1
	csrr a5, pmpaddr0
# 0 "" 2
 #NO_APP
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	li	a5,2
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	j	.L91
.L94:
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	bne	a5,zero,.L95
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
.L91:
	lw	a5,-24(s0)
	bne	a5,zero,.L94
	j	.L93
.L95:
	nop
.L93:
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	lui	a5,%hi(granule)
	sw	a4,%lo(granule)(a5)
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	detect_granule, .-detect_granule

	
	
exit:	
	
#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
        
        


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
granule:
	.zero	4
	.align	2

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
