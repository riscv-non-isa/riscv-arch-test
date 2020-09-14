
#This assembly file tests the lhu instruction of the RISC-V I extension for the lhu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lhu-align)

la x6,signature_x6_1

# opcode:lhu op1:x29; dest:x21; immval:1024; align:0
TEST_LOAD(x6,x3,0,x29,x21,1024,0,lhu,0)

# opcode:lhu op1:x22; dest:x22; immval:5; align:0
TEST_LOAD(x6,x3,0,x22,x22,5,4,lhu,0)

# opcode:lhu op1:x7; dest:x12; immval:2; align:0
TEST_LOAD(x6,x3,0,x7,x12,2,8,lhu,0)

# opcode:lhu op1:x1; dest:x30; immval:-1; align:0
TEST_LOAD(x6,x3,0,x1,x30,-1,12,lhu,0)

# opcode:lhu op1:x17; dest:x4; immval:512; align:2
TEST_LOAD(x6,x3,0,x17,x4,512,16,lhu,2)

# opcode:lhu op1:x13; dest:x23; immval:0; align:0
TEST_LOAD(x6,x3,0,x13,x23,0,20,lhu,0)

# opcode:lhu op1:x27; dest:x28; immval:9; align:2
TEST_LOAD(x6,x3,0,x27,x28,9,24,lhu,2)

# opcode:lhu op1:x8; dest:x15; immval:-2; align:2
TEST_LOAD(x6,x3,0,x8,x15,-2,28,lhu,2)

# opcode:lhu op1:x23; dest:x17; immval:-129; align:2
TEST_LOAD(x6,x3,0,x23,x17,-129,32,lhu,2)

# opcode:lhu op1:x20; dest:x24; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x20,x24,-2048,36,lhu,0)

# opcode:lhu op1:x9; dest:x27; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x9,x27,-2048,40,lhu,0)

# opcode:lhu op1:x4; dest:x1; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x4,x1,-2048,44,lhu,0)

# opcode:lhu op1:x2; dest:x29; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x2,x29,-2048,48,lhu,0)

# opcode:lhu op1:x15; dest:x7; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x15,x7,-2048,52,lhu,0)

# opcode:lhu op1:x5; dest:x16; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x5,x16,-2048,56,lhu,0)

# opcode:lhu op1:x31; dest:x14; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x31,x14,-2048,60,lhu,0)

# opcode:lhu op1:x11; dest:x19; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x11,x19,-2048,64,lhu,0)

# opcode:lhu op1:x30; dest:x0; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x30,x0,-2048,68,lhu,0)

# opcode:lhu op1:x25; dest:x20; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x25,x20,-2048,72,lhu,0)

# opcode:lhu op1:x12; dest:x10; immval:-2048; align:0
TEST_LOAD(x6,x3,0,x12,x10,-2048,76,lhu,0)

# opcode:lhu op1:x3; dest:x9; immval:-2048; align:0
TEST_LOAD(x6,x4,0,x3,x9,-2048,80,lhu,0)
la x1,signature_x1_0

# opcode:lhu op1:x28; dest:x3; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x28,x3,-2048,0,lhu,0)

# opcode:lhu op1:x26; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x26,x5,-2048,4,lhu,0)

# opcode:lhu op1:x10; dest:x18; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x10,x18,-2048,8,lhu,0)

# opcode:lhu op1:x19; dest:x2; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x19,x2,-2048,12,lhu,0)

# opcode:lhu op1:x6; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x6,x25,-2048,16,lhu,0)

# opcode:lhu op1:x21; dest:x6; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x21,x6,-2048,20,lhu,0)

# opcode:lhu op1:x16; dest:x31; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x16,x31,-2048,24,lhu,0)

# opcode:lhu op1:x18; dest:x13; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x18,x13,-2048,28,lhu,0)

# opcode:lhu op1:x14; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x14,x11,-2048,32,lhu,0)

# opcode:lhu op1:x24; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x24,x8,-2048,36,lhu,0)

# opcode:lhu op1:x29; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x29,x26,-2048,40,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:5; align:0
TEST_LOAD(x1,x4,0,x10,x11,5,44,lhu,0)

# opcode:lhu op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x10,x11,-2048,48,lhu,0)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 13*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
