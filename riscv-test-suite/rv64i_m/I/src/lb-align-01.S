
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

la x15,signature_x15_1

# opcode:lb op1:x3; dest:x3; immval:-1024; align:0
TEST_LOAD(x15,x18,0,x3,x3,-1024,0,lb,0)

# opcode:lb op1:x4; dest:x27; immval:-7; align:0
TEST_LOAD(x15,x18,0,x4,x27,-7,8,lb,0)

# opcode:lb op1:x19; dest:x0; immval:-1366; align:0
TEST_LOAD(x15,x18,0,x19,x0,-1366,16,lb,0)

# opcode:lb op1:x21; dest:x12; immval:-129; align:0
TEST_LOAD(x15,x18,0,x21,x12,-129,24,lb,0)

# opcode:lb op1:x17; dest:x7; immval:4; align:2
TEST_LOAD(x15,x18,0,x17,x7,4,32,lb,2)

# opcode:lb op1:x2; dest:x10; immval:1365; align:2
TEST_LOAD(x15,x18,0,x2,x10,1365,40,lb,2)

# opcode:lb op1:x30; dest:x24; immval:6; align:2
TEST_LOAD(x15,x18,0,x30,x24,6,48,lb,2)

# opcode:lb op1:x14; dest:x6; immval:-65; align:2
TEST_LOAD(x15,x18,0,x14,x6,-65,56,lb,2)

# opcode:lb op1:x8; dest:x20; immval:4; align:1
TEST_LOAD(x15,x18,0,x8,x20,4,64,lb,1)

# opcode:lb op1:x16; dest:x31; immval:1365; align:1
TEST_LOAD(x15,x18,0,x16,x31,1365,72,lb,1)

# opcode:lb op1:x26; dest:x1; immval:0; align:0
TEST_LOAD(x15,x18,0,x26,x1,0,80,lb,0)

# opcode:lb op1:x1; dest:x5; immval:-6; align:1
TEST_LOAD(x15,x18,0,x1,x5,-6,88,lb,1)

# opcode:lb op1:x12; dest:x23; immval:1023; align:1
TEST_LOAD(x15,x18,0,x12,x23,1023,96,lb,1)

# opcode:lb op1:x9; dest:x4; immval:16; align:3
TEST_LOAD(x15,x18,0,x9,x4,16,104,lb,3)

# opcode:lb op1:x20; dest:x30; immval:1365; align:3
TEST_LOAD(x15,x18,0,x20,x30,1365,112,lb,3)

# opcode:lb op1:x31; dest:x21; immval:2; align:3
TEST_LOAD(x15,x18,0,x31,x21,2,120,lb,3)

# opcode:lb op1:x24; dest:x19; immval:-129; align:3
TEST_LOAD(x15,x18,0,x24,x19,-129,128,lb,3)

# opcode:lb op1:x13; dest:x28; immval:-2048; align:0
TEST_LOAD(x15,x18,0,x13,x28,-2048,136,lb,0)

# opcode:lb op1:x7; dest:x9; immval:-2048; align:0
TEST_LOAD(x15,x18,0,x7,x9,-2048,144,lb,0)

# opcode:lb op1:x6; dest:x11; immval:-2048; align:0
TEST_LOAD(x15,x18,0,x6,x11,-2048,152,lb,0)

# opcode:lb op1:x28; dest:x13; immval:-2048; align:0
TEST_LOAD(x15,x18,0,x28,x13,-2048,160,lb,0)

# opcode:lb op1:x25; dest:x14; immval:-2048; align:0
TEST_LOAD(x15,x18,0,x25,x14,-2048,168,lb,0)

# opcode:lb op1:x27; dest:x8; immval:-2048; align:0
TEST_LOAD(x15,x3,0,x27,x8,-2048,176,lb,0)

# opcode:lb op1:x23; dest:x22; immval:-2048; align:0
TEST_LOAD(x15,x3,0,x23,x22,-2048,184,lb,0)
la x1,signature_x1_0

# opcode:lb op1:x10; dest:x18; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x10,x18,-2048,0,lb,0)

# opcode:lb op1:x22; dest:x2; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x22,x2,-2048,8,lb,0)

# opcode:lb op1:x11; dest:x29; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x11,x29,-2048,16,lb,0)

# opcode:lb op1:x18; dest:x16; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x18,x16,-2048,24,lb,0)

# opcode:lb op1:x29; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x29,x15,-2048,32,lb,0)

# opcode:lb op1:x5; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x5,x26,-2048,40,lb,0)

# opcode:lb op1:x15; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x15,x25,-2048,48,lb,0)

# opcode:lb op1:x8; dest:x17; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x8,x17,-2048,56,lb,0)

# opcode:lb op1:x10; dest:x11; immval:-1024; align:0
TEST_LOAD(x1,x3,0,x10,x11,-1024,64,lb,0)

# opcode:lb op1:x10; dest:x11; immval:-1366; align:0
TEST_LOAD(x1,x3,0,x10,x11,-1366,72,lb,0)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x15_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 10*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
