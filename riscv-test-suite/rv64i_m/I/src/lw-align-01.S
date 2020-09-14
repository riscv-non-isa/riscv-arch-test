
#This assembly file tests the lw instruction of the RISC-V I extension for the lw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lw-align)

la x1,signature_x1_1

# opcode:lw op1:x20; dest:x20; immval:-8; align:0
TEST_LOAD(x1,x3,0,x20,x20,-8,0,lw,0)

# opcode:lw op1:x6; dest:x29; immval:9; align:0
TEST_LOAD(x1,x3,0,x6,x29,9,8,lw,0)

# opcode:lw op1:x31; dest:x17; immval:6; align:0
TEST_LOAD(x1,x3,0,x31,x17,6,16,lw,0)

# opcode:lw op1:x10; dest:x4; immval:7; align:0
TEST_LOAD(x1,x3,0,x10,x4,7,24,lw,0)

# opcode:lw op1:x16; dest:x14; immval:0; align:0
TEST_LOAD(x1,x3,0,x16,x14,0,32,lw,0)

# opcode:lw op1:x24; dest:x0; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x24,x0,-2048,40,lw,0)

# opcode:lw op1:x27; dest:x31; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x27,x31,-2048,48,lw,0)

# opcode:lw op1:x15; dest:x9; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x15,x9,-2048,56,lw,0)

# opcode:lw op1:x5; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x5,x22,-2048,64,lw,0)

# opcode:lw op1:x8; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x8,x15,-2048,72,lw,0)

# opcode:lw op1:x28; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x28,x23,-2048,80,lw,0)

# opcode:lw op1:x23; dest:x18; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x23,x18,-2048,88,lw,0)

# opcode:lw op1:x19; dest:x21; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x19,x21,-2048,96,lw,0)

# opcode:lw op1:x2; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x2,x11,-2048,104,lw,0)

# opcode:lw op1:x12; dest:x30; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x12,x30,-2048,112,lw,0)

# opcode:lw op1:x17; dest:x24; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x17,x24,-2048,120,lw,0)

# opcode:lw op1:x9; dest:x19; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x9,x19,-2048,128,lw,0)

# opcode:lw op1:x21; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x21,x5,-2048,136,lw,0)

# opcode:lw op1:x26; dest:x16; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x26,x16,-2048,144,lw,0)

# opcode:lw op1:x13; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x13,x25,-2048,152,lw,0)
la x5,signature_x5_0

# opcode:lw op1:x29; dest:x3; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x29,x3,-2048,0,lw,0)

# opcode:lw op1:x25; dest:x10; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x25,x10,-2048,8,lw,0)

# opcode:lw op1:x3; dest:x12; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x3,x12,-2048,16,lw,0)

# opcode:lw op1:x30; dest:x2; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x30,x2,-2048,24,lw,0)

# opcode:lw op1:x18; dest:x26; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x18,x26,-2048,32,lw,0)

# opcode:lw op1:x7; dest:x28; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x7,x28,-2048,40,lw,0)

# opcode:lw op1:x14; dest:x13; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x14,x13,-2048,48,lw,0)

# opcode:lw op1:x22; dest:x7; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x22,x7,-2048,56,lw,0)

# opcode:lw op1:x11; dest:x1; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x11,x1,-2048,64,lw,0)

# opcode:lw op1:x4; dest:x27; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x4,x27,-2048,72,lw,0)

# opcode:lw op1:x1; dest:x8; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x1,x8,-2048,80,lw,0)

# opcode:lw op1:x19; dest:x6; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x19,x6,-2048,88,lw,0)

# opcode:lw op1:x10; dest:x11; immval:-8; align:0
TEST_LOAD(x5,x9,0,x10,x11,-8,96,lw,0)

# opcode:lw op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x5,x9,0,x10,x11,-2048,104,lw,0)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 14*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
