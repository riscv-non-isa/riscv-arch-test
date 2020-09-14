
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

la x13,signature_x13_1

# opcode:lb op1:x9; dest:x0; immval:-8; align:0
TEST_LOAD(x13,x3,0,x9,x0,-8,0,lb,0)

# opcode:lb op1:x27; dest:x27; immval:1; align:0
TEST_LOAD(x13,x3,0,x27,x27,1,4,lb,0)

# opcode:lb op1:x10; dest:x4; immval:-2; align:0
TEST_LOAD(x13,x3,0,x10,x4,-2,8,lb,0)

# opcode:lb op1:x17; dest:x14; immval:2047; align:0
TEST_LOAD(x13,x3,0,x17,x14,2047,12,lb,0)

# opcode:lb op1:x19; dest:x2; immval:1024; align:2
TEST_LOAD(x13,x3,0,x19,x2,1024,16,lb,2)

# opcode:lb op1:x29; dest:x11; immval:1; align:2
TEST_LOAD(x13,x3,0,x29,x11,1,20,lb,2)

# opcode:lb op1:x8; dest:x31; immval:2; align:2
TEST_LOAD(x13,x3,0,x8,x31,2,24,lb,2)

# opcode:lb op1:x31; dest:x18; immval:1023; align:2
TEST_LOAD(x13,x3,0,x31,x18,1023,28,lb,2)

# opcode:lb op1:x4; dest:x28; immval:64; align:1
TEST_LOAD(x13,x3,0,x4,x28,64,32,lb,1)

# opcode:lb op1:x11; dest:x12; immval:9; align:1
TEST_LOAD(x13,x3,0,x11,x12,9,36,lb,1)

# opcode:lb op1:x26; dest:x10; immval:0; align:0
TEST_LOAD(x13,x3,0,x26,x10,0,40,lb,0)

# opcode:lb op1:x21; dest:x1; immval:-1366; align:1
TEST_LOAD(x13,x3,0,x21,x1,-1366,44,lb,1)

# opcode:lb op1:x15; dest:x30; immval:-257; align:1
TEST_LOAD(x13,x3,0,x15,x30,-257,48,lb,1)

# opcode:lb op1:x16; dest:x6; immval:16; align:3
TEST_LOAD(x13,x3,0,x16,x6,16,52,lb,3)

# opcode:lb op1:x18; dest:x29; immval:-3; align:3
TEST_LOAD(x13,x3,0,x18,x29,-3,56,lb,3)

# opcode:lb op1:x25; dest:x20; immval:-10; align:3
TEST_LOAD(x13,x3,0,x25,x20,-10,60,lb,3)

# opcode:lb op1:x5; dest:x7; immval:-1025; align:3
TEST_LOAD(x13,x3,0,x5,x7,-1025,64,lb,3)

# opcode:lb op1:x23; dest:x5; immval:-2048; align:0
TEST_LOAD(x13,x3,0,x23,x5,-2048,68,lb,0)

# opcode:lb op1:x12; dest:x17; immval:-2048; align:0
TEST_LOAD(x13,x5,0,x12,x17,-2048,72,lb,0)

# opcode:lb op1:x7; dest:x3; immval:-2048; align:0
TEST_LOAD(x13,x5,0,x7,x3,-2048,76,lb,0)
la x4,signature_x4_0

# opcode:lb op1:x6; dest:x24; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x6,x24,-2048,0,lb,0)

# opcode:lb op1:x22; dest:x9; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x22,x9,-2048,4,lb,0)

# opcode:lb op1:x13; dest:x21; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x13,x21,-2048,8,lb,0)

# opcode:lb op1:x3; dest:x25; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x3,x25,-2048,12,lb,0)

# opcode:lb op1:x28; dest:x8; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x28,x8,-2048,16,lb,0)

# opcode:lb op1:x24; dest:x23; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x24,x23,-2048,20,lb,0)

# opcode:lb op1:x30; dest:x15; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x30,x15,-2048,24,lb,0)

# opcode:lb op1:x14; dest:x22; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x14,x22,-2048,28,lb,0)

# opcode:lb op1:x20; dest:x16; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x20,x16,-2048,32,lb,0)

# opcode:lb op1:x1; dest:x26; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x1,x26,-2048,36,lb,0)

# opcode:lb op1:x2; dest:x13; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x2,x13,-2048,40,lb,0)

# opcode:lb op1:x11; dest:x19; immval:-2048; align:0
TEST_LOAD(x4,x5,0,x11,x19,-2048,44,lb,0)

# opcode:lb op1:x10; dest:x11; immval:-8; align:0
TEST_LOAD(x4,x5,0,x10,x11,-8,48,lb,0)

# opcode:lb op1:x10; dest:x11; immval:1; align:0
TEST_LOAD(x4,x5,0,x10,x11,1,52,lb,0)
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
    .fill 20*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 14*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
