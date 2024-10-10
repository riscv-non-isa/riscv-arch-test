//
// This assembly file tests the lr.r and sc.w instruction of the RISC-V RV32A extension for the lr-sc-constrained-loop covergroup.
// This test first acquires access through load reserve and during the loop it performs more than 16 instructions and then it store reserve to the same reservation set.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IA_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*32.*);check ISA:=regex(.*I.*A.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True;",lr-sc-constrained-loop)

RVTEST_SIGBASE(x1,signature_x1_1)

LA (x31, rvtest_data)           # Load address of rvtest_data 
LI (x27, 0x4)                   # Load 4 in x27 for retries

inst_0:
beqz x27, stop_retry            # If 4 retries have reached zero stop retrying
lr.w.aq x30, (x31)              # Load reserve and acquire from rvtest_data

# More than 16 instructions for LR/SC loop to fail

li   x28, 0x0000FFFF
and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28

and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28

and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28

and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28
and  x30, x30, x28

li   x30, 0                     # Load zero to verify the changed value

sc.w.rl  x29, x30, (x31)        # Store conditional and release to same address 
addi x27, x27, -1               # Decrease counter for retries
bnez x29, inst_0                # Check if store conditional passed otherwise retry

stop_retry:

#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x1_0:
    .fill 0*((XLEN/8)/4),4,0xdeadbeef


signature_x1_1:
    .fill 50*((XLEN/8)/4),4,0xdeadbeef


signature_x8_0:
    .fill 88*((XLEN/8)/4),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;

mtrap_sigptr:
    .fill 64*XLEN/32,4,0xdeadbeef

tsig_end_canary:
CANARY;
#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif


sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
