
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

la x16,signature_x16_1

# opcode:lb op1:x30; dest:x30; immval:16; align:0
TEST_LOAD(x16,x5,0,x30,x30,16,0,lb,0)

# opcode:lb op1:x31; dest:x23; immval:1; align:0
TEST_LOAD(x16,x5,0,x31,x23,1,8,lb,0)

# opcode:lb op1:x25; dest:x15; immval:-10; align:0
TEST_LOAD(x16,x5,0,x25,x15,-10,16,lb,0)

# opcode:lb op1:x10; dest:x4; immval:-17; align:0
TEST_LOAD(x16,x5,0,x10,x4,-17,24,lb,0)

# opcode:lb op1:x12; dest:x29; immval:128; align:2
TEST_LOAD(x16,x5,0,x12,x29,128,32,lb,2)

# opcode:lb op1:x6; dest:x31; immval:-3; align:2
TEST_LOAD(x16,x5,0,x6,x31,-3,40,lb,2)

# opcode:lb op1:x28; dest:x27; immval:6; align:2
TEST_LOAD(x16,x5,0,x28,x27,6,48,lb,2)

# opcode:lb op1:x15; dest:x2; immval:3; align:2
TEST_LOAD(x16,x5,0,x15,x2,3,56,lb,2)

# opcode:lb op1:x14; dest:x25; immval:256; align:1
TEST_LOAD(x16,x5,0,x14,x25,256,64,lb,1)

# opcode:lb op1:x23; dest:x17; immval:-7; align:1
TEST_LOAD(x16,x5,0,x23,x17,-7,72,lb,1)

# opcode:lb op1:x9; dest:x19; immval:0; align:0
TEST_LOAD(x16,x5,0,x9,x19,0,80,lb,0)

# opcode:lb op1:x7; dest:x20; immval:2; align:1
TEST_LOAD(x16,x5,0,x7,x20,2,88,lb,1)

# opcode:lb op1:x27; dest:x0; immval:-33; align:1
TEST_LOAD(x16,x5,0,x27,x0,-33,96,lb,1)

# opcode:lb op1:x3; dest:x14; immval:16; align:3
TEST_LOAD(x16,x5,0,x3,x14,16,104,lb,3)

# opcode:lb op1:x17; dest:x8; immval:1365; align:3
TEST_LOAD(x16,x5,0,x17,x8,1365,112,lb,3)

# opcode:lb op1:x26; dest:x22; immval:-2; align:3
TEST_LOAD(x16,x5,0,x26,x22,-2,120,lb,3)

# opcode:lb op1:x22; dest:x10; immval:-1; align:3
TEST_LOAD(x16,x5,0,x22,x10,-1,128,lb,3)

# opcode:lb op1:x1; dest:x11; immval:-2048; align:0
TEST_LOAD(x16,x5,0,x1,x11,-2048,136,lb,0)

# opcode:lb op1:x13; dest:x6; immval:-2048; align:0
TEST_LOAD(x16,x5,0,x13,x6,-2048,144,lb,0)

# opcode:lb op1:x8; dest:x21; immval:-2048; align:0
TEST_LOAD(x16,x5,0,x8,x21,-2048,152,lb,0)

# opcode:lb op1:x11; dest:x12; immval:-2048; align:0
TEST_LOAD(x16,x8,0,x11,x12,-2048,160,lb,0)

# opcode:lb op1:x19; dest:x5; immval:-2048; align:0
TEST_LOAD(x16,x8,0,x19,x5,-2048,168,lb,0)
la x6,signature_x6_0

# opcode:lb op1:x24; dest:x1; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x24,x1,-2048,0,lb,0)

# opcode:lb op1:x18; dest:x24; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x18,x24,-2048,8,lb,0)

# opcode:lb op1:x16; dest:x13; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x16,x13,-2048,16,lb,0)

# opcode:lb op1:x2; dest:x28; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x2,x28,-2048,24,lb,0)

# opcode:lb op1:x20; dest:x26; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x20,x26,-2048,32,lb,0)

# opcode:lb op1:x29; dest:x18; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x29,x18,-2048,40,lb,0)

# opcode:lb op1:x5; dest:x7; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x5,x7,-2048,48,lb,0)

# opcode:lb op1:x4; dest:x3; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x4,x3,-2048,56,lb,0)

# opcode:lb op1:x21; dest:x9; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x21,x9,-2048,64,lb,0)

# opcode:lb op1:x3; dest:x16; immval:-2048; align:0
TEST_LOAD(x6,x8,0,x3,x16,-2048,72,lb,0)

# opcode:lb op1:x10; dest:x11; immval:16; align:0
TEST_LOAD(x6,x8,0,x10,x11,16,80,lb,0)

# opcode:lb op1:x10; dest:x11; immval:-33; align:1
TEST_LOAD(x6,x8,0,x10,x11,-33,88,lb,1)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x16_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 12*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
