
#This assembly file tests the lh instruction of the RISC-V I extension for the lh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lh-align)

la x13,signature_x13_1

# opcode:lh op1:x15; dest:x9; immval:16; align:0
TEST_LOAD(x13,x17,0,x15,x9,16,0,lh,0)

# opcode:lh op1:x30; dest:x30; immval:5; align:0
TEST_LOAD(x13,x17,0,x30,x30,5,4,lh,0)

# opcode:lh op1:x8; dest:x11; immval:6; align:0
TEST_LOAD(x13,x17,0,x8,x11,6,8,lh,0)

# opcode:lh op1:x11; dest:x1; immval:2047; align:0
TEST_LOAD(x13,x17,0,x11,x1,2047,12,lh,0)

# opcode:lh op1:x26; dest:x22; immval:1024; align:2
TEST_LOAD(x13,x17,0,x26,x22,1024,16,lh,2)

# opcode:lh op1:x16; dest:x18; immval:9; align:2
TEST_LOAD(x13,x17,0,x16,x18,9,20,lh,2)

# opcode:lh op1:x20; dest:x6; immval:-257; align:0
TEST_LOAD(x13,x17,0,x20,x6,-257,24,lh,0)

# opcode:lh op1:x18; dest:x15; immval:0; align:0
TEST_LOAD(x13,x17,0,x18,x15,0,28,lh,0)

# opcode:lh op1:x14; dest:x20; immval:-10; align:2
TEST_LOAD(x13,x17,0,x14,x20,-10,32,lh,2)

# opcode:lh op1:x2; dest:x12; immval:-513; align:2
TEST_LOAD(x13,x17,0,x2,x12,-513,36,lh,2)

# opcode:lh op1:x24; dest:x8; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x24,x8,-2048,40,lh,0)

# opcode:lh op1:x5; dest:x3; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x5,x3,-2048,44,lh,0)

# opcode:lh op1:x7; dest:x23; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x7,x23,-2048,48,lh,0)

# opcode:lh op1:x3; dest:x28; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x3,x28,-2048,52,lh,0)

# opcode:lh op1:x9; dest:x10; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x9,x10,-2048,56,lh,0)

# opcode:lh op1:x21; dest:x25; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x21,x25,-2048,60,lh,0)

# opcode:lh op1:x4; dest:x19; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x4,x19,-2048,64,lh,0)

# opcode:lh op1:x29; dest:x31; immval:-2048; align:0
TEST_LOAD(x13,x17,0,x29,x31,-2048,68,lh,0)
la x3,signature_x3_0

# opcode:lh op1:x1; dest:x2; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x1,x2,-2048,0,lh,0)

# opcode:lh op1:x17; dest:x21; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x17,x21,-2048,4,lh,0)

# opcode:lh op1:x28; dest:x24; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x28,x24,-2048,8,lh,0)

# opcode:lh op1:x31; dest:x13; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x31,x13,-2048,12,lh,0)

# opcode:lh op1:x25; dest:x4; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x25,x4,-2048,16,lh,0)

# opcode:lh op1:x19; dest:x7; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x19,x7,-2048,20,lh,0)

# opcode:lh op1:x13; dest:x27; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x13,x27,-2048,24,lh,0)

# opcode:lh op1:x23; dest:x17; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x23,x17,-2048,28,lh,0)

# opcode:lh op1:x10; dest:x26; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x10,x26,-2048,32,lh,0)

# opcode:lh op1:x6; dest:x16; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x6,x16,-2048,36,lh,0)

# opcode:lh op1:x12; dest:x0; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x12,x0,-2048,40,lh,0)

# opcode:lh op1:x27; dest:x14; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x27,x14,-2048,44,lh,0)

# opcode:lh op1:x22; dest:x5; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x22,x5,-2048,48,lh,0)

# opcode:lh op1:x30; dest:x29; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x30,x29,-2048,52,lh,0)

# opcode:lh op1:x10; dest:x11; immval:5; align:0
TEST_LOAD(x3,x8,0,x10,x11,5,56,lh,0)

# opcode:lh op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x10,x11,-2048,60,lh,0)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 16*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
