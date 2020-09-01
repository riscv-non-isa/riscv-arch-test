
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cldsp)
la x1,signature_x1_1
TEST_LOAD(x1,x3,0,x2,x31,504,0,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x30,0,8,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x29,8,16,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x28,16,24,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x27,32,32,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x26,64,40,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x25,128,48,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x24,256,56,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x23,496,64,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x22,488,72,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x21,472,80,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x20,440,88,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x19,376,96,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x18,248,104,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x17,168,112,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x16,336,120,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x15,0,128,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x14,0,136,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x13,0,144,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x12,0,152,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x11,0,160,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x10,0,168,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x9,0,176,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x8,0,184,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x7,0,192,c.ldsp,0)
TEST_LOAD(x1,x3,0,x2,x6,0,200,c.ldsp,0)
TEST_LOAD(x1,x6,0,x2,x5,0,208,c.ldsp,0)
la x5,signature_x5_0
TEST_LOAD(x5,x6,0,x2,x4,0,0,c.ldsp,0)
TEST_LOAD(x5,x6,0,x2,x3,0,8,c.ldsp,0)
TEST_LOAD(x5,x6,0,x2,x2,0,16,c.ldsp,0)
TEST_LOAD(x5,x6,0,x2,x1,0,24,c.ldsp,0)
TEST_LOAD(x5,x6,0,x2,x10,0,32,c.ldsp,0)
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


signature_x5_0:
    .fill 5*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
