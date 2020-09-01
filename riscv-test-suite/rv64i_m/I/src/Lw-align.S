
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lw-align)
la x1,signature_x1_1
TEST_LOAD(x1,x2,0,x31,x30,-4,0,lw,0)
TEST_LOAD(x1,x2,0,x30,x31,-3,8,lw,0)
TEST_LOAD(x1,x2,0,x29,x28,-6,16,lw,0)
TEST_LOAD(x1,x2,0,x28,x29,2047,24,lw,0)
TEST_LOAD(x1,x2,0,x27,x26,0,32,lw,0)
TEST_LOAD(x1,x2,0,x26,x27,-2048,40,lw,0)
TEST_LOAD(x1,x2,0,x25,x24,-2048,48,lw,0)
TEST_LOAD(x1,x2,0,x24,x25,-2048,56,lw,0)
TEST_LOAD(x1,x2,0,x23,x22,-2048,64,lw,0)
TEST_LOAD(x1,x2,0,x22,x23,-2048,72,lw,0)
TEST_LOAD(x1,x2,0,x21,x20,-2048,80,lw,0)
TEST_LOAD(x1,x2,0,x20,x21,-2048,88,lw,0)
TEST_LOAD(x1,x2,0,x19,x18,-2048,96,lw,0)
TEST_LOAD(x1,x2,0,x18,x19,-2048,104,lw,0)
TEST_LOAD(x1,x2,0,x17,x16,-2048,112,lw,0)
TEST_LOAD(x1,x2,0,x16,x17,-2048,120,lw,0)
TEST_LOAD(x1,x2,0,x15,x14,-2048,128,lw,0)
TEST_LOAD(x1,x2,0,x14,x15,-2048,136,lw,0)
TEST_LOAD(x1,x2,0,x13,x12,-2048,144,lw,0)
TEST_LOAD(x1,x2,0,x12,x13,-2048,152,lw,0)
TEST_LOAD(x1,x2,0,x11,x10,-2048,160,lw,0)
TEST_LOAD(x1,x2,0,x10,x11,-2048,168,lw,0)
TEST_LOAD(x1,x2,0,x9,x8,-2048,176,lw,0)
TEST_LOAD(x1,x2,0,x8,x9,-2048,184,lw,0)
TEST_LOAD(x1,x2,0,x7,x6,-2048,192,lw,0)
TEST_LOAD(x1,x2,0,x6,x7,-2048,200,lw,0)
TEST_LOAD(x1,x2,0,x5,x4,-2048,208,lw,0)
la x6,signature_x6_0
TEST_LOAD(x6,x7,0,x4,x5,-2048,0,lw,0)
TEST_LOAD(x6,x7,0,x3,x2,-2048,8,lw,0)
TEST_LOAD(x6,x7,0,x2,x3,-2048,16,lw,0)
TEST_LOAD(x6,x7,0,x1,x0,-2048,24,lw,0)
TEST_LOAD(x6,x7,0,x31,x1,-2048,32,lw,0)
TEST_LOAD(x6,x7,0,x31,x31,-2048,40,lw,0)
TEST_LOAD(x6,x7,0,x10,x11,-2048,48,lw,0)
TEST_LOAD(x6,x7,0,x10,x11,-2048,56,lw,0)
#endif


RVMODEL_HALT
RVTEST_CODE_END

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
    .fill 27*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 8*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
