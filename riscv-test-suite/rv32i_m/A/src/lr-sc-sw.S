//
// This assembly file tests the lr.r and sc.w instruction of the RISC-V RV32A extension for the lr-sc-fail covergroup.
// This test first acquires access through load reserve and before the store reserve to the reservation set it does another sw to the same address and then it store reserve to the same reservation set.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*32.*);check ISA:=regex(.*I.*A.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True;",lr-sc-sw)

RVTEST_SIGBASE(x8,signature_x8)

LA (x31, rvtest_data)   # Load address of rvtest_data in 31
addi x28, x31, 4        # Load address of rvtest_data + 4 in x28
LI (x5, 0)              # Initializing x5 with zero

inst_0:
lr.w.aq x30, (x31)      # Load reserve and acquire from rvtest_data
sw   x5, (x31)          # Store word to rvtest_data
li   x30, 0             # Load zero to verify the changed value
sc.w x29, x30, (x31)    # Store conditional to same address

inst_1:
lr.w.aq x30, (x31)      # Load reserve and acquire from rvtest_data
sw   x30, (x28)         # Store word to rvtest_data + 4
li   x5, 0              # Load zero to verify the changed value
sc.w x29, x30, (x31)    # Store conditional to same address


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



# signature_x1_0:
#     .fill 0*((XLEN/8)/4),4,0xdeadbeef


# signature_x1_1:
#     .fill 50*((XLEN/8)/4),4,0xdeadbeef

signature_x8:
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
