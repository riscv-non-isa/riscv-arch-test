
#This assembly file tests the ld instruction of the RISC-V I extension for the ld-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",ld-align)

la x2,signature_x2_1

# opcode:ld op1:x27; dest:x27; immval:128; align:0
TEST_LOAD(x2,x13,0,x27,x27,128,0,ld,0)

# opcode:ld op1:x16; dest:x8; immval:1; align:0
TEST_LOAD(x2,x13,0,x16,x8,1,8,ld,0)

# opcode:ld op1:x6; dest:x26; immval:2; align:0
TEST_LOAD(x2,x13,0,x6,x26,2,16,ld,0)

# opcode:ld op1:x11; dest:x7; immval:-5; align:0
TEST_LOAD(x2,x13,0,x11,x7,-5,24,ld,0)

# opcode:ld op1:x20; dest:x23; immval:4; align:0
TEST_LOAD(x2,x13,0,x20,x23,4,32,ld,0)

# opcode:ld op1:x15; dest:x16; immval:0; align:0
TEST_LOAD(x2,x13,0,x15,x16,0,40,ld,0)

# opcode:ld op1:x3; dest:x10; immval:1365; align:0
TEST_LOAD(x2,x13,0,x3,x10,1365,48,ld,0)

# opcode:ld op1:x21; dest:x22; immval:-10; align:0
TEST_LOAD(x2,x13,0,x21,x22,-10,56,ld,0)

# opcode:ld op1:x9; dest:x25; immval:-257; align:0
TEST_LOAD(x2,x13,0,x9,x25,-257,64,ld,0)

# opcode:ld op1:x28; dest:x30; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x28,x30,-2048,72,ld,0)

# opcode:ld op1:x24; dest:x9; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x24,x9,-2048,80,ld,0)

# opcode:ld op1:x5; dest:x0; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x5,x0,-2048,88,ld,0)

# opcode:ld op1:x31; dest:x20; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x31,x20,-2048,96,ld,0)

# opcode:ld op1:x1; dest:x18; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x1,x18,-2048,104,ld,0)

# opcode:ld op1:x25; dest:x5; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x25,x5,-2048,112,ld,0)

# opcode:ld op1:x18; dest:x29; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x18,x29,-2048,120,ld,0)

# opcode:ld op1:x4; dest:x17; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x4,x17,-2048,128,ld,0)

# opcode:ld op1:x26; dest:x15; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x26,x15,-2048,136,ld,0)

# opcode:ld op1:x30; dest:x12; immval:-2048; align:0
TEST_LOAD(x2,x13,0,x30,x12,-2048,144,ld,0)

# opcode:ld op1:x7; dest:x31; immval:-2048; align:0
TEST_LOAD(x2,x9,0,x7,x31,-2048,152,ld,0)

# opcode:ld op1:x13; dest:x14; immval:-2048; align:0
TEST_LOAD(x2,x9,0,x13,x14,-2048,160,ld,0)
la x7,signature_x7_0

# opcode:ld op1:x12; dest:x4; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x12,x4,-2048,0,ld,0)

# opcode:ld op1:x8; dest:x24; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x8,x24,-2048,8,ld,0)

# opcode:ld op1:x23; dest:x2; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x23,x2,-2048,16,ld,0)

# opcode:ld op1:x29; dest:x19; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x29,x19,-2048,24,ld,0)

# opcode:ld op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x10,x11,-2048,32,ld,0)

# opcode:ld op1:x14; dest:x21; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x14,x21,-2048,40,ld,0)

# opcode:ld op1:x22; dest:x6; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x22,x6,-2048,48,ld,0)

# opcode:ld op1:x17; dest:x1; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x17,x1,-2048,56,ld,0)

# opcode:ld op1:x19; dest:x13; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x19,x13,-2048,64,ld,0)

# opcode:ld op1:x2; dest:x28; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x2,x28,-2048,72,ld,0)

# opcode:ld op1:x5; dest:x3; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x5,x3,-2048,80,ld,0)

# opcode:ld op1:x10; dest:x11; immval:128; align:0
TEST_LOAD(x7,x9,0,x10,x11,128,88,ld,0)

# opcode:ld op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x7,x9,0,x10,x11,-2048,96,ld,0)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x7_0:
    .fill 13*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
