//
// This assembly file tests the sw, sh and sb instruction of the RISC-V I extension for misaligned stores.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

RVTEST_SIGBASE( x1,signature_x1_1)

#   Test SW
inst_0:
    LA      (t2, rvtest_data)   // Load rvtest_data address
    LI      (t1, 0xDEADBEEF)    // Initialize register for store
    sw      t1, 2(t2)           // misaligned SW    (should raise exception)

#   Test SH
inst_1:
    LA      (t2, rvtest_data)   // Load rvtest_data address
    LI      (t1, 0xBEEF)        // Initialize register for store
    sw      t1, 3(t2)           // misaligned SH    (should raise exception)

#   Test SB
inst_2:
    LA      (t2, rvtest_data)   // Load rvtest_data address
    LI      (t1, 0xEF)          // Initialize register for store
    sw      t1, 1(t2)           // misaligned SB    (should not raise exception)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 3*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
