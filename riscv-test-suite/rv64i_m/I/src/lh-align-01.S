
#This assembly file tests the lh instruction of the RISC-V I extension for the lh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lh-align)

la x10,signature_x10_1

# opcode:lh op1:x23; dest:x23; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x23,x23,-2048,0,lh,0)

# opcode:lh op1:x8; dest:x0; immval:1; align:0
TEST_LOAD(x10,x12,0,x8,x0,1,8,lh,0)

# opcode:lh op1:x13; dest:x30; immval:2; align:0
TEST_LOAD(x10,x12,0,x13,x30,2,16,lh,0)

# opcode:lh op1:x6; dest:x13; immval:-65; align:0
TEST_LOAD(x10,x12,0,x6,x13,-65,24,lh,0)

# opcode:lh op1:x9; dest:x4; immval:-8; align:2
TEST_LOAD(x10,x12,0,x9,x4,-8,32,lh,2)

# opcode:lh op1:x30; dest:x2; immval:0; align:0
TEST_LOAD(x10,x12,0,x30,x2,0,40,lh,0)

# opcode:lh op1:x19; dest:x18; immval:5; align:2
TEST_LOAD(x10,x12,0,x19,x18,5,48,lh,2)

# opcode:lh op1:x1; dest:x29; immval:-6; align:2
TEST_LOAD(x10,x12,0,x1,x29,-6,56,lh,2)

# opcode:lh op1:x3; dest:x9; immval:-513; align:2
TEST_LOAD(x10,x12,0,x3,x9,-513,64,lh,2)

# opcode:lh op1:x22; dest:x14; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x22,x14,-2048,72,lh,0)

# opcode:lh op1:x25; dest:x31; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x25,x31,-2048,80,lh,0)

# opcode:lh op1:x14; dest:x6; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x14,x6,-2048,88,lh,0)

# opcode:lh op1:x24; dest:x17; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x24,x17,-2048,96,lh,0)

# opcode:lh op1:x20; dest:x27; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x20,x27,-2048,104,lh,0)

# opcode:lh op1:x29; dest:x5; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x29,x5,-2048,112,lh,0)

# opcode:lh op1:x16; dest:x7; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x16,x7,-2048,120,lh,0)

# opcode:lh op1:x27; dest:x16; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x27,x16,-2048,128,lh,0)

# opcode:lh op1:x5; dest:x3; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x5,x3,-2048,136,lh,0)

# opcode:lh op1:x4; dest:x1; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x4,x1,-2048,144,lh,0)

# opcode:lh op1:x26; dest:x24; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x26,x24,-2048,152,lh,0)

# opcode:lh op1:x21; dest:x11; immval:-2048; align:0
TEST_LOAD(x10,x12,0,x21,x11,-2048,160,lh,0)

# opcode:lh op1:x2; dest:x19; immval:-2048; align:0
TEST_LOAD(x10,x3,0,x2,x19,-2048,168,lh,0)

# opcode:lh op1:x15; dest:x21; immval:-2048; align:0
TEST_LOAD(x10,x3,0,x15,x21,-2048,176,lh,0)
la x1,signature_x1_0

# opcode:lh op1:x28; dest:x20; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x28,x20,-2048,0,lh,0)

# opcode:lh op1:x31; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x31,x22,-2048,8,lh,0)

# opcode:lh op1:x7; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x7,x26,-2048,16,lh,0)

# opcode:lh op1:x11; dest:x28; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x11,x28,-2048,24,lh,0)

# opcode:lh op1:x18; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x18,x10,-2048,32,lh,0)

# opcode:lh op1:x10; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x10,x15,-2048,40,lh,0)

# opcode:lh op1:x12; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x12,x8,-2048,48,lh,0)

# opcode:lh op1:x17; dest:x12; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x17,x12,-2048,56,lh,0)

# opcode:lh op1:x8; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x8,x25,-2048,64,lh,0)

# opcode:lh op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x10,x11,-2048,72,lh,0)

# opcode:lh op1:x10; dest:x11; immval:1; align:0
TEST_LOAD(x1,x3,0,x10,x11,1,80,lh,0)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 11*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
