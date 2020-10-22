
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

RVTEST_SIGBASE( x25,signature_x25_1)

# rd==x31, imm_val == 0, 
# opcode: lui ; dest:x31; immval:0
TEST_CASE(x9, x31, 0x0, x25, 0, lui x31,0)

# rd==x1, imm_val > 0, 
# opcode: lui ; dest:x1; immval:6
TEST_CASE(x9, x1, 0x600000000000, x25, 8, lui x1,6)

# rd==x10, imm_val == ((2**20)-1), 
# opcode: lui ; dest:x10; immval:1048575
TEST_CASE(x9, x10, 0xfffff00000000000, x25, 16, lui x10,1048575)

# rd==x8, 
# opcode: lui ; dest:x8; immval:0
TEST_CASE(x9, x8, 0x0, x25, 24, lui x8,0)

# rd==x15, 
# opcode: lui ; dest:x15; immval:0
TEST_CASE(x9, x15, 0x0, x25, 32, lui x15,0)

# rd==x12, 
# opcode: lui ; dest:x12; immval:0
TEST_CASE(x9, x12, 0x0, x25, 40, lui x12,0)

# rd==x11, 
# opcode: lui ; dest:x11; immval:0
TEST_CASE(x9, x11, 0x0, x25, 48, lui x11,0)

# rd==x21, 
# opcode: lui ; dest:x21; immval:0
TEST_CASE(x9, x21, 0x0, x25, 56, lui x21,0)

# rd==x0, 
# opcode: lui ; dest:x0; immval:0
TEST_CASE(x9, x0, 0x0, x25, 64, lui x0,0)

# rd==x4, 
# opcode: lui ; dest:x4; immval:0
TEST_CASE(x9, x4, 0x0, x25, 72, lui x4,0)

# rd==x27, 
# opcode: lui ; dest:x27; immval:0
TEST_CASE(x9, x27, 0x0, x25, 80, lui x27,0)

# rd==x6, 
# opcode: lui ; dest:x6; immval:0
TEST_CASE(x9, x6, 0x0, x25, 88, lui x6,0)

# rd==x28, 
# opcode: lui ; dest:x28; immval:0
TEST_CASE(x9, x28, 0x0, x25, 96, lui x28,0)

# rd==x23, 
# opcode: lui ; dest:x23; immval:0
TEST_CASE(x9, x23, 0x0, x25, 104, lui x23,0)

# rd==x2, 
# opcode: lui ; dest:x2; immval:0
TEST_CASE(x9, x2, 0x0, x25, 112, lui x2,0)

# rd==x14, 
# opcode: lui ; dest:x14; immval:0
TEST_CASE(x9, x14, 0x0, x25, 120, lui x14,0)

# rd==x20, 
# opcode: lui ; dest:x20; immval:0
TEST_CASE(x9, x20, 0x0, x25, 128, lui x20,0)

# rd==x19, 
# opcode: lui ; dest:x19; immval:0
TEST_CASE(x9, x19, 0x0, x25, 136, lui x19,0)

# rd==x18, 
# opcode: lui ; dest:x18; immval:0
TEST_CASE(x9, x18, 0x0, x25, 144, lui x18,0)

# rd==x17, 
# opcode: lui ; dest:x17; immval:0
TEST_CASE(x9, x17, 0x0, x25, 152, lui x17,0)

# rd==x3, 
# opcode: lui ; dest:x3; immval:0
TEST_CASE(x9, x3, 0x0, x25, 160, lui x3,0)

# rd==x13, 
# opcode: lui ; dest:x13; immval:0
TEST_CASE(x9, x13, 0x0, x25, 168, lui x13,0)

# rd==x5, 
# opcode: lui ; dest:x5; immval:0
TEST_CASE(x9, x5, 0x0, x25, 176, lui x5,0)

# rd==x29, 
# opcode: lui ; dest:x29; immval:0
TEST_CASE(x9, x29, 0x0, x25, 184, lui x29,0)

# rd==x16, 
# opcode: lui ; dest:x16; immval:0
TEST_CASE(x9, x16, 0x0, x25, 192, lui x16,0)

# rd==x24, 
# opcode: lui ; dest:x24; immval:0
TEST_CASE(x9, x24, 0x0, x25, 200, lui x24,0)

# rd==x7, 
# opcode: lui ; dest:x7; immval:0
TEST_CASE(x9, x7, 0x0, x25, 208, lui x7,0)

# rd==x22, 
# opcode: lui ; dest:x22; immval:0
TEST_CASE(x9, x22, 0x0, x25, 216, lui x22,0)

# rd==x9, 
# opcode: lui ; dest:x9; immval:0
TEST_CASE(x2, x9, 0x0, x25, 224, lui x9,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x25, 
# opcode: lui ; dest:x25; immval:0
TEST_CASE(x2, x25, 0x0, x1, 0, lui x25,0)

# rd==x30, 
# opcode: lui ; dest:x30; immval:0
TEST_CASE(x2, x30, 0x0, x1, 8, lui x30,0)

# rd==x26, 
# opcode: lui ; dest:x26; immval:0
TEST_CASE(x2, x26, 0x0, x1, 16, lui x26,0)

# 
# opcode: lui ; dest:x10; immval:0
TEST_CASE(x2, x10, 0x0, x1, 24, lui x10,0)
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

signature_x25_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x25_1:
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
