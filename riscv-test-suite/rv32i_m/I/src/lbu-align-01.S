
#This assembly file tests the lbu instruction of the RISC-V I extension for the lbu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lbu-align)

la x6,signature_x6_1

# opcode:lbu op1:x8; dest:x0; immval:-8; align:0
TEST_LOAD(x6,x11,0,x8,x0,-8,0,lbu,0)

# opcode:lbu op1:x27; dest:x27; immval:9; align:0
TEST_LOAD(x6,x11,0,x27,x27,9,4,lbu,0)

# opcode:lbu op1:x28; dest:x24; immval:-1366; align:0
TEST_LOAD(x6,x11,0,x28,x24,-1366,8,lbu,0)

# opcode:lbu op1:x30; dest:x31; immval:-5; align:0
TEST_LOAD(x6,x11,0,x30,x31,-5,12,lbu,0)

# opcode:lbu op1:x17; dest:x22; immval:-8; align:2
TEST_LOAD(x6,x11,0,x17,x22,-8,16,lbu,2)

# opcode:lbu op1:x25; dest:x14; immval:-3; align:2
TEST_LOAD(x6,x11,0,x25,x14,-3,20,lbu,2)

# opcode:lbu op1:x18; dest:x16; immval:6; align:2
TEST_LOAD(x6,x11,0,x18,x16,6,24,lbu,2)

# opcode:lbu op1:x4; dest:x30; immval:7; align:2
TEST_LOAD(x6,x11,0,x4,x30,7,28,lbu,2)

# opcode:lbu op1:x2; dest:x28; immval:128; align:1
TEST_LOAD(x6,x11,0,x2,x28,128,32,lbu,1)

# opcode:lbu op1:x24; dest:x3; immval:9; align:1
TEST_LOAD(x6,x11,0,x24,x3,9,36,lbu,1)

# opcode:lbu op1:x3; dest:x5; immval:0; align:0
TEST_LOAD(x6,x11,0,x3,x5,0,40,lbu,0)

# opcode:lbu op1:x15; dest:x12; immval:6; align:1
TEST_LOAD(x6,x11,0,x15,x12,6,44,lbu,1)

# opcode:lbu op1:x9; dest:x7; immval:3; align:1
TEST_LOAD(x6,x11,0,x9,x7,3,48,lbu,1)

# opcode:lbu op1:x22; dest:x26; immval:64; align:3
TEST_LOAD(x6,x11,0,x22,x26,64,52,lbu,3)

# opcode:lbu op1:x13; dest:x10; immval:-7; align:3
TEST_LOAD(x6,x11,0,x13,x10,-7,56,lbu,3)

# opcode:lbu op1:x1; dest:x29; immval:-6; align:3
TEST_LOAD(x6,x11,0,x1,x29,-6,60,lbu,3)

# opcode:lbu op1:x19; dest:x20; immval:-17; align:3
TEST_LOAD(x6,x11,0,x19,x20,-17,64,lbu,3)

# opcode:lbu op1:x11; dest:x19; immval:-2048; align:0
TEST_LOAD(x6,x22,0,x11,x19,-2048,68,lbu,0)
la x3,signature_x3_0

# opcode:lbu op1:x10; dest:x21; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x10,x21,-2048,0,lbu,0)

# opcode:lbu op1:x5; dest:x13; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x5,x13,-2048,4,lbu,0)

# opcode:lbu op1:x16; dest:x18; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x16,x18,-2048,8,lbu,0)

# opcode:lbu op1:x7; dest:x25; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x7,x25,-2048,12,lbu,0)

# opcode:lbu op1:x26; dest:x1; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x26,x1,-2048,16,lbu,0)

# opcode:lbu op1:x31; dest:x15; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x31,x15,-2048,20,lbu,0)

# opcode:lbu op1:x23; dest:x9; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x23,x9,-2048,24,lbu,0)

# opcode:lbu op1:x29; dest:x8; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x29,x8,-2048,28,lbu,0)

# opcode:lbu op1:x14; dest:x4; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x14,x4,-2048,32,lbu,0)

# opcode:lbu op1:x12; dest:x2; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x12,x2,-2048,36,lbu,0)

# opcode:lbu op1:x21; dest:x6; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x21,x6,-2048,40,lbu,0)

# opcode:lbu op1:x20; dest:x23; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x20,x23,-2048,44,lbu,0)

# opcode:lbu op1:x6; dest:x17; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x6,x17,-2048,48,lbu,0)

# opcode:lbu op1:x2; dest:x11; immval:-2048; align:0
TEST_LOAD(x3,x22,0,x2,x11,-2048,52,lbu,0)

# opcode:lbu op1:x10; dest:x11; immval:-8; align:0
TEST_LOAD(x3,x22,0,x10,x11,-8,56,lbu,0)

# opcode:lbu op1:x10; dest:x11; immval:9; align:0
TEST_LOAD(x3,x22,0,x10,x11,9,60,lbu,0)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 16*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
