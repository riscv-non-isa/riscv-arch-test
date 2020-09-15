
#This assembly file tests the lwu instruction of the RISC-V I extension for the lwu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",lwu-align)

la x11,signature_x11_1

# opcode:lwu op1:x3; dest:x3; immval:16; align:0
TEST_LOAD(x11,x7,0,x3,x3,16,0,lwu,0)

# opcode:lwu op1:x4; dest:x16; immval:1; align:0
TEST_LOAD(x11,x7,0,x4,x16,1,8,lwu,0)

# opcode:lwu op1:x28; dest:x13; immval:6; align:0
TEST_LOAD(x11,x7,0,x28,x13,6,16,lwu,0)

# opcode:lwu op1:x29; dest:x28; immval:1023; align:0
TEST_LOAD(x11,x7,0,x29,x28,1023,24,lwu,0)

# opcode:lwu op1:x5; dest:x24; immval:-1024; align:0
TEST_LOAD(x11,x7,0,x5,x24,-1024,32,lwu,0)

# opcode:lwu op1:x27; dest:x23; immval:0; align:0
TEST_LOAD(x11,x7,0,x27,x23,0,40,lwu,0)

# opcode:lwu op1:x2; dest:x26; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x2,x26,-2048,48,lwu,0)

# opcode:lwu op1:x15; dest:x9; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x15,x9,-2048,56,lwu,0)

# opcode:lwu op1:x13; dest:x20; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x13,x20,-2048,64,lwu,0)

# opcode:lwu op1:x6; dest:x1; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x6,x1,-2048,72,lwu,0)

# opcode:lwu op1:x30; dest:x19; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x30,x19,-2048,80,lwu,0)

# opcode:lwu op1:x9; dest:x8; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x9,x8,-2048,88,lwu,0)

# opcode:lwu op1:x10; dest:x25; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x10,x25,-2048,96,lwu,0)

# opcode:lwu op1:x26; dest:x2; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x26,x2,-2048,104,lwu,0)

# opcode:lwu op1:x22; dest:x14; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x22,x14,-2048,112,lwu,0)

# opcode:lwu op1:x25; dest:x4; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x25,x4,-2048,120,lwu,0)

# opcode:lwu op1:x16; dest:x10; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x16,x10,-2048,128,lwu,0)

# opcode:lwu op1:x20; dest:x17; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x20,x17,-2048,136,lwu,0)

# opcode:lwu op1:x14; dest:x12; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x14,x12,-2048,144,lwu,0)

# opcode:lwu op1:x19; dest:x31; immval:-2048; align:0
TEST_LOAD(x11,x7,0,x19,x31,-2048,152,lwu,0)

# opcode:lwu op1:x7; dest:x22; immval:-2048; align:0
TEST_LOAD(x11,x3,0,x7,x22,-2048,160,lwu,0)
la x2,signature_x2_0

# opcode:lwu op1:x17; dest:x29; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x17,x29,-2048,0,lwu,0)

# opcode:lwu op1:x23; dest:x5; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x23,x5,-2048,8,lwu,0)

# opcode:lwu op1:x31; dest:x18; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x31,x18,-2048,16,lwu,0)

# opcode:lwu op1:x8; dest:x15; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x8,x15,-2048,24,lwu,0)

# opcode:lwu op1:x1; dest:x7; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x1,x7,-2048,32,lwu,0)

# opcode:lwu op1:x12; dest:x30; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x12,x30,-2048,40,lwu,0)

# opcode:lwu op1:x11; dest:x27; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x11,x27,-2048,48,lwu,0)

# opcode:lwu op1:x24; dest:x0; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x24,x0,-2048,56,lwu,0)

# opcode:lwu op1:x18; dest:x11; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x18,x11,-2048,64,lwu,0)

# opcode:lwu op1:x21; dest:x6; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x21,x6,-2048,72,lwu,0)

# opcode:lwu op1:x8; dest:x21; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x8,x21,-2048,80,lwu,0)

# opcode:lwu op1:x10; dest:x11; immval:16; align:0
TEST_LOAD(x2,x3,0,x10,x11,16,88,lwu,0)

# opcode:lwu op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x2,x3,0,x10,x11,-2048,96,lwu,0)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x11_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 13*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
