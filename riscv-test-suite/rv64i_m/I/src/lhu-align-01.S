
#This assembly file tests the lhu instruction of the RISC-V I extension for the lhu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lhu-align)

la x24,signature_x24_1

# opcode:lhu op1:x3; dest:x3; immval:32; align:0
TEST_LOAD(x24,x25,0,x3,x3,32,0,lhu,0)

# opcode:lhu op1:x27; dest:x13; immval:-3; align:0
TEST_LOAD(x24,x25,0,x27,x13,-3,8,lhu,0)

# opcode:lhu op1:x19; dest:x4; immval:-2; align:0
TEST_LOAD(x24,x25,0,x19,x4,-2,16,lhu,0)

# opcode:lhu op1:x4; dest:x16; immval:-129; align:0
TEST_LOAD(x24,x25,0,x4,x16,-129,24,lhu,0)

# opcode:lhu op1:x10; dest:x0; immval:-2048; align:2
TEST_LOAD(x24,x25,0,x10,x0,-2048,32,lhu,2)

# opcode:lhu op1:x22; dest:x28; immval:0; align:0
TEST_LOAD(x24,x25,0,x22,x28,0,40,lhu,0)

# opcode:lhu op1:x1; dest:x8; immval:1365; align:2
TEST_LOAD(x24,x25,0,x1,x8,1365,48,lhu,2)

# opcode:lhu op1:x21; dest:x11; immval:-2; align:2
TEST_LOAD(x24,x25,0,x21,x11,-2,56,lhu,2)

# opcode:lhu op1:x13; dest:x14; immval:-9; align:2
TEST_LOAD(x24,x25,0,x13,x14,-9,64,lhu,2)

# opcode:lhu op1:x31; dest:x2; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x31,x2,-2048,72,lhu,0)

# opcode:lhu op1:x2; dest:x12; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x2,x12,-2048,80,lhu,0)

# opcode:lhu op1:x6; dest:x17; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x6,x17,-2048,88,lhu,0)

# opcode:lhu op1:x9; dest:x23; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x9,x23,-2048,96,lhu,0)

# opcode:lhu op1:x17; dest:x9; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x17,x9,-2048,104,lhu,0)

# opcode:lhu op1:x20; dest:x18; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x20,x18,-2048,112,lhu,0)

# opcode:lhu op1:x11; dest:x19; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x11,x19,-2048,120,lhu,0)

# opcode:lhu op1:x14; dest:x5; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x14,x5,-2048,128,lhu,0)

# opcode:lhu op1:x29; dest:x27; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x29,x27,-2048,136,lhu,0)

# opcode:lhu op1:x16; dest:x1; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x16,x1,-2048,144,lhu,0)

# opcode:lhu op1:x8; dest:x7; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x8,x7,-2048,152,lhu,0)

# opcode:lhu op1:x15; dest:x31; immval:-2048; align:0
TEST_LOAD(x24,x25,0,x15,x31,-2048,160,lhu,0)

# opcode:lhu op1:x30; dest:x20; immval:-2048; align:0
TEST_LOAD(x24,x2,0,x30,x20,-2048,168,lhu,0)
la x1,signature_x1_0

# opcode:lhu op1:x24; dest:x6; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x24,x6,-2048,0,lhu,0)

# opcode:lhu op1:x7; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x7,x10,-2048,8,lhu,0)

# opcode:lhu op1:x28; dest:x21; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x28,x21,-2048,16,lhu,0)

# opcode:lhu op1:x23; dest:x29; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x23,x29,-2048,24,lhu,0)

# opcode:lhu op1:x5; dest:x24; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x5,x24,-2048,32,lhu,0)

# opcode:lhu op1:x26; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x26,x25,-2048,40,lhu,0)

# opcode:lhu op1:x12; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x12,x15,-2048,48,lhu,0)

# opcode:lhu op1:x18; dest:x30; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x18,x30,-2048,56,lhu,0)

# opcode:lhu op1:x25; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x25,x26,-2048,64,lhu,0)

# opcode:lhu op1:x4; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x4,x22,-2048,72,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:32; align:0
TEST_LOAD(x1,x2,0,x10,x11,32,80,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:-2048; align:2
TEST_LOAD(x1,x2,0,x10,x11,-2048,88,lhu,2)
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

signature_x24_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x24_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 12*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
