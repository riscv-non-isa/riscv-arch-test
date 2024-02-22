//
// This assembly file tests the lr.r and sc.d instruction of the RISC-V RV64A extension for the lr-sc-misaligned covergroup.
//This test first does the load reserve and then it store reserve to the same reservation set, the address of the reservation set is misaligned by 1, 2 and 3 bytes.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*64.*);check ISA:=regex(.*I.*A.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True;",lr-sc-misaligned)

RVTEST_SIGBASE(x1,signature_x1_1)

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_0:
addi x31, x31, 1        # Add 1 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 1
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 1    

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_1:
addi x31, x31, 2        # Add 2 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 2
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 2

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_2:
addi x31, x31, 3        # Add 3 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 3
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 3

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_3:
addi x31, x31, 4        # Add 4 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 4
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 4

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_4:
addi x31, x31, 5        # Add 5 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 5
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 5

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_5:
addi x31, x31, 6        # Add 6 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 6
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 6

LA (x31, rvtest_data)   # Load address of rvtest_data

inst_6:
addi x31, x31, 7        # Add 7 to rvtest_data
lr.d x30, (x31)         # Load reserve rvtest_data by misaligned 7
li   x30, 0             # Load zero to verify the changed value
sc.d x29, x30, (x31)    # Store conditional to rvtest_data by misaligned 7


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
