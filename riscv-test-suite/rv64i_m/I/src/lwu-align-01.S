
#This assembly file tests the lwu instruction of the RISC-V I extension for the lwu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",lwu-align)

la x12,signature_x12_1

# opcode:lwu op1:x18; dest:x18; immval:16; align:0
TEST_LOAD(x12,x10,0,x18,x18,16,0,lwu,0)

# opcode:lwu op1:x16; dest:x5; immval:9; align:0
TEST_LOAD(x12,x10,0,x16,x5,9,8,lwu,0)

# opcode:lwu op1:x3; dest:x26; immval:6; align:0
TEST_LOAD(x12,x10,0,x3,x26,6,16,lwu,0)

# opcode:lwu op1:x2; dest:x23; immval:-65; align:0
TEST_LOAD(x12,x10,0,x2,x23,-65,24,lwu,0)

# opcode:lwu op1:x29; dest:x31; immval:0; align:0
TEST_LOAD(x12,x10,0,x29,x31,0,32,lwu,0)

# opcode:lwu op1:x6; dest:x2; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x6,x2,-2048,40,lwu,0)

# opcode:lwu op1:x5; dest:x3; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x5,x3,-2048,48,lwu,0)

# opcode:lwu op1:x24; dest:x9; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x24,x9,-2048,56,lwu,0)

# opcode:lwu op1:x17; dest:x27; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x17,x27,-2048,64,lwu,0)

# opcode:lwu op1:x14; dest:x15; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x14,x15,-2048,72,lwu,0)

# opcode:lwu op1:x8; dest:x16; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x8,x16,-2048,80,lwu,0)

# opcode:lwu op1:x7; dest:x1; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x7,x1,-2048,88,lwu,0)

# opcode:lwu op1:x28; dest:x19; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x28,x19,-2048,96,lwu,0)

# opcode:lwu op1:x31; dest:x11; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x31,x11,-2048,104,lwu,0)

# opcode:lwu op1:x11; dest:x13; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x11,x13,-2048,112,lwu,0)

# opcode:lwu op1:x25; dest:x29; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x25,x29,-2048,120,lwu,0)

# opcode:lwu op1:x21; dest:x6; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x21,x6,-2048,128,lwu,0)

# opcode:lwu op1:x19; dest:x24; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x19,x24,-2048,136,lwu,0)

# opcode:lwu op1:x4; dest:x8; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x4,x8,-2048,144,lwu,0)

# opcode:lwu op1:x1; dest:x21; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x1,x21,-2048,152,lwu,0)

# opcode:lwu op1:x26; dest:x14; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x26,x14,-2048,160,lwu,0)

# opcode:lwu op1:x20; dest:x4; immval:-2048; align:0
TEST_LOAD(x12,x10,0,x20,x4,-2048,168,lwu,0)

# opcode:lwu op1:x9; dest:x25; immval:-2048; align:0
TEST_LOAD(x12,x2,0,x9,x25,-2048,176,lwu,0)

# opcode:lwu op1:x10; dest:x30; immval:-2048; align:0
TEST_LOAD(x12,x2,0,x10,x30,-2048,184,lwu,0)
la x1,signature_x1_0

# opcode:lwu op1:x15; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x15,x10,-2048,0,lwu,0)

# opcode:lwu op1:x13; dest:x0; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x13,x0,-2048,8,lwu,0)

# opcode:lwu op1:x22; dest:x28; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x22,x28,-2048,16,lwu,0)

# opcode:lwu op1:x30; dest:x7; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x30,x7,-2048,24,lwu,0)

# opcode:lwu op1:x23; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x23,x22,-2048,32,lwu,0)

# opcode:lwu op1:x27; dest:x12; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x27,x12,-2048,40,lwu,0)

# opcode:lwu op1:x12; dest:x17; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x12,x17,-2048,48,lwu,0)

# opcode:lwu op1:x5; dest:x20; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x5,x20,-2048,56,lwu,0)

# opcode:lwu op1:x10; dest:x11; immval:16; align:0
TEST_LOAD(x1,x2,0,x10,x11,16,64,lwu,0)

# opcode:lwu op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x10,x11,-2048,72,lwu,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 10*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
