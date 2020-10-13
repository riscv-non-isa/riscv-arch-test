
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

RVTEST_SIGBASE( x5,signature_x5_1)

# rd==x14, imm_val < 0, 
# opcode: jal; dest:x14; immval:6; align:0
TEST_JAL_OP(x12, x14, 6, 1b, x5, 0,0)

# rd==x8, imm_val > 0, 
# opcode: jal; dest:x8; immval:16384; align:0
TEST_JAL_OP(x12, x8, 16384, 3f, x5, 8,0)

# rd==x0, imm_val == (-(2**(18))), 
# opcode: jal; dest:x0; immval:262144; align:0
TEST_JAL_OP(x12, x0, 262144, 1b, x5, 16,0)

# rd==x1, imm_val == ((2**(18))), 
# opcode: jal; dest:x1; immval:262144; align:0
TEST_JAL_OP(x12, x1, 262144, 3f, x5, 24,0)

# rd==x7, 
# opcode: jal; dest:x7; immval:0; align:0
TEST_JAL_OP(x12, x7, 0, 3f, x5, 32,0)

# rd==x27, 
# opcode: jal; dest:x27; immval:0; align:0
TEST_JAL_OP(x12, x27, 0, 3f, x5, 40,0)

# rd==x2, 
# opcode: jal; dest:x2; immval:0; align:0
TEST_JAL_OP(x12, x2, 0, 3f, x5, 48,0)

# rd==x4, 
# opcode: jal; dest:x4; immval:0; align:0
TEST_JAL_OP(x12, x4, 0, 3f, x5, 56,0)

# rd==x18, 
# opcode: jal; dest:x18; immval:0; align:0
TEST_JAL_OP(x12, x18, 0, 3f, x5, 64,0)

# rd==x29, 
# opcode: jal; dest:x29; immval:0; align:0
TEST_JAL_OP(x12, x29, 0, 3f, x5, 72,0)

# rd==x10, 
# opcode: jal; dest:x10; immval:0; align:0
TEST_JAL_OP(x12, x10, 0, 3f, x5, 80,0)

# rd==x3, 
# opcode: jal; dest:x3; immval:0; align:0
TEST_JAL_OP(x12, x3, 0, 3f, x5, 88,0)

# rd==x6, 
# opcode: jal; dest:x6; immval:0; align:0
TEST_JAL_OP(x12, x6, 0, 3f, x5, 96,0)

# rd==x24, 
# opcode: jal; dest:x24; immval:0; align:0
TEST_JAL_OP(x12, x24, 0, 3f, x5, 104,0)

# rd==x17, 
# opcode: jal; dest:x17; immval:0; align:0
TEST_JAL_OP(x12, x17, 0, 3f, x5, 112,0)

# rd==x23, 
# opcode: jal; dest:x23; immval:0; align:0
TEST_JAL_OP(x12, x23, 0, 3f, x5, 120,0)

# rd==x19, 
# opcode: jal; dest:x19; immval:0; align:0
TEST_JAL_OP(x12, x19, 0, 3f, x5, 128,0)

# rd==x13, 
# opcode: jal; dest:x13; immval:0; align:0
TEST_JAL_OP(x12, x13, 0, 3f, x5, 136,0)

# rd==x28, 
# opcode: jal; dest:x28; immval:0; align:0
TEST_JAL_OP(x12, x28, 0, 3f, x5, 144,0)

# rd==x25, 
# opcode: jal; dest:x25; immval:0; align:0
TEST_JAL_OP(x12, x25, 0, 3f, x5, 152,0)

# rd==x26, 
# opcode: jal; dest:x26; immval:0; align:0
TEST_JAL_OP(x12, x26, 0, 3f, x5, 160,0)

# rd==x16, 
# opcode: jal; dest:x16; immval:0; align:0
TEST_JAL_OP(x12, x16, 0, 3f, x5, 168,0)

# rd==x9, 
# opcode: jal; dest:x9; immval:0; align:0
TEST_JAL_OP(x12, x9, 0, 3f, x5, 176,0)

# rd==x15, 
# opcode: jal; dest:x15; immval:0; align:0
TEST_JAL_OP(x12, x15, 0, 3f, x5, 184,0)

# rd==x21, 
# opcode: jal; dest:x21; immval:0; align:0
TEST_JAL_OP(x12, x21, 0, 3f, x5, 192,0)

# rd==x30, 
# opcode: jal; dest:x30; immval:0; align:0
TEST_JAL_OP(x12, x30, 0, 3f, x5, 200,0)

# rd==x11, 
# opcode: jal; dest:x11; immval:0; align:0
TEST_JAL_OP(x12, x11, 0, 3f, x5, 208,0)

# rd==x31, 
# opcode: jal; dest:x31; immval:0; align:0
TEST_JAL_OP(x12, x31, 0, 3f, x5, 216,0)

# rd==x12, 
# opcode: jal; dest:x12; immval:0; align:0
TEST_JAL_OP(x2, x12, 0, 3f, x5, 224,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x22, 
# opcode: jal; dest:x22; immval:0; align:0
TEST_JAL_OP(x2, x22, 0, 3f, x1, 0,0)

# rd==x20, 
# opcode: jal; dest:x20; immval:0; align:0
TEST_JAL_OP(x2, x20, 0, 3f, x1, 8,0)

# rd==x5, 
# opcode: jal; dest:x5; immval:0; align:0
TEST_JAL_OP(x2, x5, 0, 3f, x1, 16,0)

# imm_val == (-(2**(18))), 
# opcode: jal; dest:x10; immval:262144; align:0
TEST_JAL_OP(x2, x10, 262144, 1b, x1, 24,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
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
