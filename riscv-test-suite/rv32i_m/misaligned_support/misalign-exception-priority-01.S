#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-lw)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-lw)

RVTEST_SIGBASE( x1,signature_x1_1)
    j main
.align 4
pmp0_data_check:                                        // (0x80000210 - 0x8000120F)   (Region 1
    .fill 1024*(XLEN/32), 4 , 0xdeadbeef
pmp1_data_check:                                        // (0x80001210 - 0x8000220F)    Region 1 - (Region 2
    .fill 1024*(XLEN/32), 4 , 0xbeefcafe
pmp2_data_check:                                        // (0x80002210 - 0x8000320F)    Region 1 -  Region 2)
    .fill 1024*(XLEN/32), 4 , 0xabcdefab
pmp3_data_check:                                        // (0x80003210 - 0x8000420F)    Region 1)
    .fill 1024*(XLEN/32), 4 , 0xfedcbafe

main:
    LA      (t2, pmp1_data_check)						// Load starting address of PMP region                
    srli    t2, t2, PMP_SHIFT							// Right shift the Address by PMP_Shift(2) 
	ori     t2, t2, 0x3FF								// Selects the range of 8 kB
	csrw    pmpaddr0, t2								// Region # 1 for the pmp permissions

    LA      (t2, pmp0_data_check)						// Load starting address of PMP region                
    srli    t2, t2, PMP_SHIFT							// Right shift the Address by PMP_Shift(2) 
	ori     t2, t2, 0x7FF								// Selects the range of 16 kB 
	csrw    pmpaddr1, t2								// Region # 2 for the pmp permissions

	li      t2, 0x9F98  								// Region # 2: +(RWX), 1: -(RWX)
	csrw    pmpcfg0, t2 								// Write PMP Regions Configration   

#   pmp1_data_check - pmp3_data_check spans the area for the shared PMP region with pmp_rule0= -(RWX) and pmp_rule1 = +(RWX)
#   As the first rule takes priority than second rule. Load and Store should give access fault exception without hi-pri-misalign. 
#   Testing misaligned access at pmp2_data_check will be the ideal condition to check for shared region as it is at the center of 
#   both pmp regions and shared as well.

#   Test SW
STORE_CHECK:
#   ERRH, ERRL
    LI      (t1, 0xBEEFCAFE)                            // Initializing the register for store
    LA      (t2, pmp2_data_check)                       // Loading address in between both PMP regions
    sw      t1, 2(t2)                                   // Attempting misaligned store at that address

#  Test LW
LOAD_CHECK:
#   ERRH, ERRL
    LA      (t2, pmp2_data_check)                       // Loading address in between both PMP regions
    lw      t1, 2(t2)                                   // Attempting misaligned store at that address
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
    .fill 0*(XLEN/32), 4 , 0xdeadbeef


signature_x1_1:
    .fill 3*(XLEN/32), 4 , 0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32), 4 , 0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32), 4 , 0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END


