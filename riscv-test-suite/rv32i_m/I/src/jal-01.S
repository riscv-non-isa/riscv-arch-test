
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

RVTEST_SIGBASE( x2,signature_x2_1)

# rd==x18, imm_val < 0, 
# opcode: jal; dest:x18; immval:8; align:0
TEST_JAL_OP(x5, x18, 8, 1b, x2, 0,0)

# rd==x15, imm_val > 0, 
# opcode: jal; dest:x15; immval:4; align:0
TEST_JAL_OP(x5, x15, 4, 3f, x2, 4,0)

# rd==x14, imm_val == (-(2**(18))), 
# opcode: jal; dest:x14; immval:262144; align:0
TEST_JAL_OP(x5, x14, 262144, 1b, x2, 8,0)

# rd==x1, imm_val == ((2**(18))), 
# opcode: jal; dest:x1; immval:262144; align:0
TEST_JAL_OP(x5, x1, 262144, 3f, x2, 12,0)

# rd==x26, 
# opcode: jal; dest:x26; immval:0; align:0
TEST_JAL_OP(x5, x26, 0, 3f, x2, 16,0)

# rd==x13, 
# opcode: jal; dest:x13; immval:0; align:0
TEST_JAL_OP(x5, x13, 0, 3f, x2, 20,0)

# rd==x21, 
# opcode: jal; dest:x21; immval:0; align:0
TEST_JAL_OP(x5, x21, 0, 3f, x2, 24,0)

# rd==x22, 
# opcode: jal; dest:x22; immval:0; align:0
TEST_JAL_OP(x5, x22, 0, 3f, x2, 28,0)

# rd==x4, 
# opcode: jal; dest:x4; immval:0; align:0
TEST_JAL_OP(x5, x4, 0, 3f, x2, 32,0)

# rd==x6, 
# opcode: jal; dest:x6; immval:0; align:0
TEST_JAL_OP(x5, x6, 0, 3f, x2, 36,0)

# rd==x28, 
# opcode: jal; dest:x28; immval:0; align:0
TEST_JAL_OP(x5, x28, 0, 3f, x2, 40,0)

# rd==x3, 
# opcode: jal; dest:x3; immval:0; align:0
TEST_JAL_OP(x5, x3, 0, 3f, x2, 44,0)

# rd==x0, 
# opcode: jal; dest:x0; immval:0; align:0
TEST_JAL_OP(x5, x0, 0, 3f, x2, 48,0)

# rd==x19, 
# opcode: jal; dest:x19; immval:0; align:0
TEST_JAL_OP(x5, x19, 0, 3f, x2, 52,0)

# rd==x11, 
# opcode: jal; dest:x11; immval:0; align:0
TEST_JAL_OP(x5, x11, 0, 3f, x2, 56,0)

# rd==x10, 
# opcode: jal; dest:x10; immval:0; align:0
TEST_JAL_OP(x5, x10, 0, 3f, x2, 60,0)

# rd==x30, 
# opcode: jal; dest:x30; immval:0; align:0
TEST_JAL_OP(x5, x30, 0, 3f, x2, 64,0)

# rd==x25, 
# opcode: jal; dest:x25; immval:0; align:0
TEST_JAL_OP(x5, x25, 0, 3f, x2, 68,0)

# rd==x27, 
# opcode: jal; dest:x27; immval:0; align:0
TEST_JAL_OP(x5, x27, 0, 3f, x2, 72,0)

# rd==x31, 
# opcode: jal; dest:x31; immval:0; align:0
TEST_JAL_OP(x5, x31, 0, 3f, x2, 76,0)

# rd==x29, 
# opcode: jal; dest:x29; immval:0; align:0
TEST_JAL_OP(x5, x29, 0, 3f, x2, 80,0)

# rd==x9, 
# opcode: jal; dest:x9; immval:0; align:0
TEST_JAL_OP(x5, x9, 0, 3f, x2, 84,0)

# rd==x24, 
# opcode: jal; dest:x24; immval:0; align:0
TEST_JAL_OP(x5, x24, 0, 3f, x2, 88,0)

# rd==x16, 
# opcode: jal; dest:x16; immval:0; align:0
TEST_JAL_OP(x5, x16, 0, 3f, x2, 92,0)

# rd==x12, 
# opcode: jal; dest:x12; immval:0; align:0
TEST_JAL_OP(x5, x12, 0, 3f, x2, 96,0)

# rd==x20, 
# opcode: jal; dest:x20; immval:0; align:0
TEST_JAL_OP(x5, x20, 0, 3f, x2, 100,0)

# rd==x17, 
# opcode: jal; dest:x17; immval:0; align:0
TEST_JAL_OP(x5, x17, 0, 3f, x2, 104,0)

# rd==x8, 
# opcode: jal; dest:x8; immval:0; align:0
TEST_JAL_OP(x5, x8, 0, 3f, x2, 108,0)

# rd==x5, 
# opcode: jal; dest:x5; immval:0; align:0
TEST_JAL_OP(x3, x5, 0, 3f, x2, 112,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x23, 
# opcode: jal; dest:x23; immval:0; align:0
TEST_JAL_OP(x3, x23, 0, 3f, x1, 0,0)

# rd==x7, 
# opcode: jal; dest:x7; immval:0; align:0
TEST_JAL_OP(x3, x7, 0, 3f, x1, 4,0)

# rd==x2, 
# opcode: jal; dest:x2; immval:0; align:0
TEST_JAL_OP(x3, x2, 0, 3f, x1, 8,0)

# 
# opcode: jal; dest:x10; immval:0; align:0
TEST_JAL_OP(x3, x10, 0, 3f, x1, 12,0)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
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
