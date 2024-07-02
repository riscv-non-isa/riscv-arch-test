//
// This assembly file tests the lr.r and sc.d instruction of the RISC-V RV64A extension for the lr-sc-fail covergroup.
// This test first does the load reserve and before the store reserve to the reservation set it does another sc to a different address and then it store reserve to the same reservation set. 
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IA_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*64.*);check ISA:=regex(.*I.*A.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True;",lr-sc-fail)

RVTEST_SIGBASE(x1,signature_x1_1)

LA (x31, rvtest_data)   # Load address of rvtest_data in x31
LA (x28, rvtest_data)   # Load address of rvtest_data in x28
addi x28, x28, 16       # Add 16 to address of rvtest_data

inst_0:
lr.d x30, (x31)         # Load Reserve from rvtest_data
sc.d x29, x30, (x28)    # Store Condtional to rvtest_data + 16
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store Conditional to rvtest_data

inst_1:
addi x31, x31, 4        # Add 4 to rvtest_data in x31
addi x28, x28, 4        # Add 4 to rvtest_data in x28
lr.d x30, (x31)         # Load reserve from rvtest_data + 4
sc.d x29, x30, (x28)    # Store Conditional to rvtest_data + 20
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store Conditional to rvtest_data + 4

inst_2:
addi x31, x31, 4        # Add 4 to rvtest_data in x31
addi x28, x28, 4        # Add 4 to rvtest_data in x28
lr.d x30, (x31)         # Load reserve from rvtest_data + 8
sc.d x29, x30, (x28)    # Store Conditional to rvtest_data + 24
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store Conditional to rvtest_data + 8

inst_3:
addi x31, x31, 4        # Add 4 to rvtest_data in x31
addi x28, x28, 4        # Add 4 to rvtest_data in x28
lr.d x30, (x31)         # Load reserve from rvtest_data + 12
sc.d x29, x30, (x28)    # Store Conditional to rvtest_data + 28
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store Conditional to rvtest_data  + 12

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
.align 4

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
