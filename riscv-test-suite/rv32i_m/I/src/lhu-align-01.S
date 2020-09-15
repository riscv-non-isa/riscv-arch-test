
#This assembly file tests the lhu instruction of the RISC-V I extension for the lhu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lhu-align)

la x4,signature_x4_1

# opcode:lhu op1:x5; dest:x20; immval:128; align:0
TEST_LOAD(x4,x10,0,x5,x20,128,0,lhu,0)

# opcode:lhu op1:x24; dest:x24; immval:-3; align:0
TEST_LOAD(x4,x10,0,x24,x24,-3,4,lhu,0)

# opcode:lhu op1:x19; dest:x8; immval:6; align:0
TEST_LOAD(x4,x10,0,x19,x8,6,8,lhu,0)

# opcode:lhu op1:x1; dest:x25; immval:-1; align:0
TEST_LOAD(x4,x10,0,x1,x25,-1,12,lhu,0)

# opcode:lhu op1:x16; dest:x26; immval:32; align:2
TEST_LOAD(x4,x10,0,x16,x26,32,16,lhu,2)

# opcode:lhu op1:x14; dest:x30; immval:0; align:0
TEST_LOAD(x4,x10,0,x14,x30,0,20,lhu,0)

# opcode:lhu op1:x21; dest:x5; immval:-3; align:2
TEST_LOAD(x4,x10,0,x21,x5,-3,24,lhu,2)

# opcode:lhu op1:x9; dest:x2; immval:6; align:2
TEST_LOAD(x4,x10,0,x9,x2,6,28,lhu,2)

# opcode:lhu op1:x15; dest:x14; immval:3; align:2
TEST_LOAD(x4,x10,0,x15,x14,3,32,lhu,2)

# opcode:lhu op1:x11; dest:x18; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x11,x18,-2048,36,lhu,0)

# opcode:lhu op1:x17; dest:x16; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x17,x16,-2048,40,lhu,0)

# opcode:lhu op1:x12; dest:x0; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x12,x0,-2048,44,lhu,0)

# opcode:lhu op1:x26; dest:x6; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x26,x6,-2048,48,lhu,0)

# opcode:lhu op1:x7; dest:x27; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x7,x27,-2048,52,lhu,0)

# opcode:lhu op1:x28; dest:x17; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x28,x17,-2048,56,lhu,0)

# opcode:lhu op1:x2; dest:x22; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x2,x22,-2048,60,lhu,0)

# opcode:lhu op1:x29; dest:x31; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x29,x31,-2048,64,lhu,0)

# opcode:lhu op1:x3; dest:x11; immval:-2048; align:0
TEST_LOAD(x4,x10,0,x3,x11,-2048,68,lhu,0)

# opcode:lhu op1:x18; dest:x7; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x18,x7,-2048,72,lhu,0)

# opcode:lhu op1:x27; dest:x23; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x27,x23,-2048,76,lhu,0)
la x2,signature_x2_0

# opcode:lhu op1:x22; dest:x21; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x22,x21,-2048,0,lhu,0)

# opcode:lhu op1:x30; dest:x9; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x30,x9,-2048,4,lhu,0)

# opcode:lhu op1:x4; dest:x28; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x4,x28,-2048,8,lhu,0)

# opcode:lhu op1:x10; dest:x19; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x10,x19,-2048,12,lhu,0)

# opcode:lhu op1:x31; dest:x3; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x31,x3,-2048,16,lhu,0)

# opcode:lhu op1:x13; dest:x12; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x13,x12,-2048,20,lhu,0)

# opcode:lhu op1:x25; dest:x10; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x25,x10,-2048,24,lhu,0)

# opcode:lhu op1:x6; dest:x13; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x6,x13,-2048,28,lhu,0)

# opcode:lhu op1:x20; dest:x15; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x20,x15,-2048,32,lhu,0)

# opcode:lhu op1:x8; dest:x29; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x8,x29,-2048,36,lhu,0)

# opcode:lhu op1:x23; dest:x1; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x23,x1,-2048,40,lhu,0)

# opcode:lhu op1:x15; dest:x4; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x15,x4,-2048,44,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:-3; align:0
TEST_LOAD(x2,x5,0,x10,x11,-3,48,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x10,x11,-2048,52,lhu,0)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 14*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
