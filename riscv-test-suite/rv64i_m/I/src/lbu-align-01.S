
#This assembly file tests the lbu instruction of the RISC-V I extension for the lbu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lbu-align)

la x5,signature_x5_1

# opcode:lbu op1:x21; dest:x21; immval:1024; align:0
TEST_LOAD(x5,x11,0,x21,x21,1024,0,lbu,0)

# opcode:lbu op1:x6; dest:x16; immval:5; align:0
TEST_LOAD(x5,x11,0,x6,x16,5,8,lbu,0)

# opcode:lbu op1:x25; dest:x6; immval:6; align:0
TEST_LOAD(x5,x11,0,x25,x6,6,16,lbu,0)

# opcode:lbu op1:x13; dest:x29; immval:-65; align:0
TEST_LOAD(x5,x11,0,x13,x29,-65,24,lbu,0)

# opcode:lbu op1:x2; dest:x0; immval:-4; align:2
TEST_LOAD(x5,x11,0,x2,x0,-4,32,lbu,2)

# opcode:lbu op1:x18; dest:x9; immval:-3; align:2
TEST_LOAD(x5,x11,0,x18,x9,-3,40,lbu,2)

# opcode:lbu op1:x12; dest:x19; immval:-1366; align:2
TEST_LOAD(x5,x11,0,x12,x19,-1366,48,lbu,2)

# opcode:lbu op1:x24; dest:x1; immval:-257; align:2
TEST_LOAD(x5,x11,0,x24,x1,-257,56,lbu,2)

# opcode:lbu op1:x31; dest:x4; immval:128; align:1
TEST_LOAD(x5,x11,0,x31,x4,128,64,lbu,1)

# opcode:lbu op1:x10; dest:x31; immval:1; align:1
TEST_LOAD(x5,x11,0,x10,x31,1,72,lbu,1)

# opcode:lbu op1:x3; dest:x10; immval:0; align:0
TEST_LOAD(x5,x11,0,x3,x10,0,80,lbu,0)

# opcode:lbu op1:x15; dest:x26; immval:-6; align:1
TEST_LOAD(x5,x11,0,x15,x26,-6,88,lbu,1)

# opcode:lbu op1:x28; dest:x7; immval:-257; align:1
TEST_LOAD(x5,x11,0,x28,x7,-257,96,lbu,1)

# opcode:lbu op1:x27; dest:x18; immval:16; align:3
TEST_LOAD(x5,x11,0,x27,x18,16,104,lbu,3)

# opcode:lbu op1:x14; dest:x8; immval:-3; align:3
TEST_LOAD(x5,x11,0,x14,x8,-3,112,lbu,3)

# opcode:lbu op1:x23; dest:x20; immval:-1366; align:3
TEST_LOAD(x5,x11,0,x23,x20,-1366,120,lbu,3)

# opcode:lbu op1:x26; dest:x24; immval:1023; align:3
TEST_LOAD(x5,x11,0,x26,x24,1023,128,lbu,3)

# opcode:lbu op1:x29; dest:x12; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x29,x12,-2048,136,lbu,0)

# opcode:lbu op1:x22; dest:x15; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x22,x15,-2048,144,lbu,0)

# opcode:lbu op1:x17; dest:x30; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x17,x30,-2048,152,lbu,0)
la x6,signature_x6_0

# opcode:lbu op1:x4; dest:x17; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x4,x17,-2048,0,lbu,0)

# opcode:lbu op1:x5; dest:x25; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x5,x25,-2048,8,lbu,0)

# opcode:lbu op1:x19; dest:x23; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x19,x23,-2048,16,lbu,0)

# opcode:lbu op1:x20; dest:x5; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x20,x5,-2048,24,lbu,0)

# opcode:lbu op1:x9; dest:x11; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x9,x11,-2048,32,lbu,0)

# opcode:lbu op1:x11; dest:x28; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x11,x28,-2048,40,lbu,0)

# opcode:lbu op1:x8; dest:x2; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x8,x2,-2048,48,lbu,0)

# opcode:lbu op1:x30; dest:x14; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x30,x14,-2048,56,lbu,0)

# opcode:lbu op1:x1; dest:x22; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x1,x22,-2048,64,lbu,0)

# opcode:lbu op1:x7; dest:x13; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x7,x13,-2048,72,lbu,0)

# opcode:lbu op1:x16; dest:x3; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x16,x3,-2048,80,lbu,0)

# opcode:lbu op1:x28; dest:x27; immval:-2048; align:0
TEST_LOAD(x6,x12,0,x28,x27,-2048,88,lbu,0)

# opcode:lbu op1:x10; dest:x11; immval:1024; align:0
TEST_LOAD(x6,x12,0,x10,x11,1024,96,lbu,0)

# opcode:lbu op1:x10; dest:x11; immval:-4; align:2
TEST_LOAD(x6,x12,0,x10,x11,-4,104,lbu,2)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 14*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
