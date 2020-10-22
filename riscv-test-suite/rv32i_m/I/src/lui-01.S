
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

RVTEST_SIGBASE( x12,signature_x12_1)

# rd==x14, imm_val == 0, 
# opcode: lui ; dest:x14; immval:0
TEST_CASE(x15, x14, 0x0, x12, 0, lui x14,0)

# rd==x3, imm_val > 0, 
# opcode: lui ; dest:x3; immval:3
TEST_CASE(x15, x3, 0x3000, x12, 4, lui x3,3)

# rd==x13, imm_val == ((2**20)-1), 
# opcode: lui ; dest:x13; immval:1048575
TEST_CASE(x15, x13, 0xfffff000, x12, 8, lui x13,1048575)

# rd==x4, 
# opcode: lui ; dest:x4; immval:0
TEST_CASE(x15, x4, 0x0, x12, 12, lui x4,0)

# rd==x23, 
# opcode: lui ; dest:x23; immval:0
TEST_CASE(x15, x23, 0x0, x12, 16, lui x23,0)

# rd==x21, 
# opcode: lui ; dest:x21; immval:0
TEST_CASE(x15, x21, 0x0, x12, 20, lui x21,0)

# rd==x9, 
# opcode: lui ; dest:x9; immval:0
TEST_CASE(x15, x9, 0x0, x12, 24, lui x9,0)

# rd==x2, 
# opcode: lui ; dest:x2; immval:0
TEST_CASE(x15, x2, 0x0, x12, 28, lui x2,0)

# rd==x17, 
# opcode: lui ; dest:x17; immval:0
TEST_CASE(x15, x17, 0x0, x12, 32, lui x17,0)

# rd==x29, 
# opcode: lui ; dest:x29; immval:0
TEST_CASE(x15, x29, 0x0, x12, 36, lui x29,0)

# rd==x8, 
# opcode: lui ; dest:x8; immval:0
TEST_CASE(x15, x8, 0x0, x12, 40, lui x8,0)

# rd==x25, 
# opcode: lui ; dest:x25; immval:0
TEST_CASE(x15, x25, 0x0, x12, 44, lui x25,0)

# rd==x30, 
# opcode: lui ; dest:x30; immval:0
TEST_CASE(x15, x30, 0x0, x12, 48, lui x30,0)

# rd==x1, 
# opcode: lui ; dest:x1; immval:0
TEST_CASE(x15, x1, 0x0, x12, 52, lui x1,0)

# rd==x24, 
# opcode: lui ; dest:x24; immval:0
TEST_CASE(x15, x24, 0x0, x12, 56, lui x24,0)

# rd==x31, 
# opcode: lui ; dest:x31; immval:0
TEST_CASE(x15, x31, 0x0, x12, 60, lui x31,0)

# rd==x20, 
# opcode: lui ; dest:x20; immval:0
TEST_CASE(x15, x20, 0x0, x12, 64, lui x20,0)

# rd==x7, 
# opcode: lui ; dest:x7; immval:0
TEST_CASE(x15, x7, 0x0, x12, 68, lui x7,0)

# rd==x5, 
# opcode: lui ; dest:x5; immval:0
TEST_CASE(x15, x5, 0x0, x12, 72, lui x5,0)

# rd==x22, 
# opcode: lui ; dest:x22; immval:0
TEST_CASE(x15, x22, 0x0, x12, 76, lui x22,0)

# rd==x19, 
# opcode: lui ; dest:x19; immval:0
TEST_CASE(x15, x19, 0x0, x12, 80, lui x19,0)

# rd==x0, 
# opcode: lui ; dest:x0; immval:0
TEST_CASE(x15, x0, 0x0, x12, 84, lui x0,0)

# rd==x6, 
# opcode: lui ; dest:x6; immval:0
TEST_CASE(x15, x6, 0x0, x12, 88, lui x6,0)

# rd==x16, 
# opcode: lui ; dest:x16; immval:0
TEST_CASE(x15, x16, 0x0, x12, 92, lui x16,0)

# rd==x11, 
# opcode: lui ; dest:x11; immval:0
TEST_CASE(x15, x11, 0x0, x12, 96, lui x11,0)

# rd==x28, 
# opcode: lui ; dest:x28; immval:0
TEST_CASE(x15, x28, 0x0, x12, 100, lui x28,0)

# rd==x10, 
# opcode: lui ; dest:x10; immval:0
TEST_CASE(x15, x10, 0x0, x12, 104, lui x10,0)

# rd==x26, 
# opcode: lui ; dest:x26; immval:0
TEST_CASE(x15, x26, 0x0, x12, 108, lui x26,0)

# rd==x27, 
# opcode: lui ; dest:x27; immval:0
TEST_CASE(x2, x27, 0x0, x12, 112, lui x27,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x12, 
# opcode: lui ; dest:x12; immval:0
TEST_CASE(x2, x12, 0x0, x1, 0, lui x12,0)

# rd==x18, 
# opcode: lui ; dest:x18; immval:0
TEST_CASE(x2, x18, 0x0, x1, 4, lui x18,0)

# rd==x15, 
# opcode: lui ; dest:x15; immval:0
TEST_CASE(x2, x15, 0x0, x1, 8, lui x15,0)

# 
# opcode: lui ; dest:x10; immval:0
TEST_CASE(x2, x10, 0x0, x1, 12, lui x10,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
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
