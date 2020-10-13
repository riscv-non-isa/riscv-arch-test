
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

RVTEST_SIGBASE( x3,signature_x3_1)

# rd==x31, imm_val < 0, 
# opcode: jal; dest:x31; immval:2; align:0
TEST_JAL_OP(x6, x31, 2, 1b, x3, 0,0)

# rd==x26, imm_val > 0, 
# opcode: jal; dest:x26; immval:8; align:0
TEST_JAL_OP(x6, x26, 8, 3f, x3, 4,0)

# rd==x30, imm_val == (-(2**(18))), 
# opcode: jal; dest:x30; immval:262144; align:0
TEST_JAL_OP(x6, x30, 262144, 1b, x3, 8,0)

# rd==x12, imm_val == ((2**(18))), 
# opcode: jal; dest:x12; immval:262144; align:0
TEST_JAL_OP(x6, x12, 262144, 3f, x3, 12,0)

# rd==x17, 
# opcode: jal; dest:x17; immval:0; align:0
TEST_JAL_OP(x6, x17, 0, 3f, x3, 16,0)

# rd==x8, 
# opcode: jal; dest:x8; immval:0; align:0
TEST_JAL_OP(x6, x8, 0, 3f, x3, 20,0)

# rd==x2, 
# opcode: jal; dest:x2; immval:0; align:0
TEST_JAL_OP(x6, x2, 0, 3f, x3, 24,0)

# rd==x11, 
# opcode: jal; dest:x11; immval:0; align:0
TEST_JAL_OP(x6, x11, 0, 3f, x3, 28,0)

# rd==x13, 
# opcode: jal; dest:x13; immval:0; align:0
TEST_JAL_OP(x6, x13, 0, 3f, x3, 32,0)

# rd==x1, 
# opcode: jal; dest:x1; immval:0; align:0
TEST_JAL_OP(x6, x1, 0, 3f, x3, 36,0)

# rd==x24, 
# opcode: jal; dest:x24; immval:0; align:0
TEST_JAL_OP(x6, x24, 0, 3f, x3, 40,0)

# rd==x16, 
# opcode: jal; dest:x16; immval:0; align:0
TEST_JAL_OP(x6, x16, 0, 3f, x3, 44,0)

# rd==x15, 
# opcode: jal; dest:x15; immval:0; align:0
TEST_JAL_OP(x6, x15, 0, 3f, x3, 48,0)

# rd==x0, 
# opcode: jal; dest:x0; immval:0; align:0
TEST_JAL_OP(x6, x0, 0, 3f, x3, 52,0)

# rd==x18, 
# opcode: jal; dest:x18; immval:0; align:0
TEST_JAL_OP(x6, x18, 0, 3f, x3, 56,0)

# rd==x5, 
# opcode: jal; dest:x5; immval:0; align:0
TEST_JAL_OP(x6, x5, 0, 3f, x3, 60,0)

# rd==x28, 
# opcode: jal; dest:x28; immval:0; align:0
TEST_JAL_OP(x6, x28, 0, 3f, x3, 64,0)

# rd==x4, 
# opcode: jal; dest:x4; immval:0; align:0
TEST_JAL_OP(x6, x4, 0, 3f, x3, 68,0)

# rd==x9, 
# opcode: jal; dest:x9; immval:0; align:0
TEST_JAL_OP(x6, x9, 0, 3f, x3, 72,0)

# rd==x23, 
# opcode: jal; dest:x23; immval:0; align:0
TEST_JAL_OP(x6, x23, 0, 3f, x3, 76,0)

# rd==x27, 
# opcode: jal; dest:x27; immval:0; align:0
TEST_JAL_OP(x6, x27, 0, 3f, x3, 80,0)

# rd==x25, 
# opcode: jal; dest:x25; immval:0; align:0
TEST_JAL_OP(x6, x25, 0, 3f, x3, 84,0)

# rd==x22, 
# opcode: jal; dest:x22; immval:0; align:0
TEST_JAL_OP(x6, x22, 0, 3f, x3, 88,0)

# rd==x20, 
# opcode: jal; dest:x20; immval:0; align:0
TEST_JAL_OP(x6, x20, 0, 3f, x3, 92,0)

# rd==x19, 
# opcode: jal; dest:x19; immval:0; align:0
TEST_JAL_OP(x6, x19, 0, 3f, x3, 96,0)

# rd==x29, 
# opcode: jal; dest:x29; immval:0; align:0
TEST_JAL_OP(x6, x29, 0, 3f, x3, 100,0)

# rd==x7, 
# opcode: jal; dest:x7; immval:0; align:0
TEST_JAL_OP(x6, x7, 0, 3f, x3, 104,0)

# rd==x14, 
# opcode: jal; dest:x14; immval:0; align:0
TEST_JAL_OP(x6, x14, 0, 3f, x3, 108,0)

# rd==x10, 
# opcode: jal; dest:x10; immval:0; align:0
TEST_JAL_OP(x2, x10, 0, 3f, x3, 112,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x3, 
# opcode: jal; dest:x3; immval:0; align:0
TEST_JAL_OP(x2, x3, 0, 3f, x1, 0,0)

# rd==x6, 
# opcode: jal; dest:x6; immval:0; align:0
TEST_JAL_OP(x2, x6, 0, 3f, x1, 4,0)

# rd==x21, 
# opcode: jal; dest:x21; immval:0; align:0
TEST_JAL_OP(x2, x21, 0, 3f, x1, 8,0)

# 
# opcode: jal; dest:x10; immval:0; align:0
TEST_JAL_OP(x2, x10, 0, 3f, x1, 12,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 4*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
