
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clwsp)
la x1,signature_x1_1
TEST_LOAD(x1,x3,0,x2,x31,252,0,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x30,0,8,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x29,4,16,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x28,8,24,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x27,16,32,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x26,32,40,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x25,64,48,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x24,128,56,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x23,248,64,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x22,244,72,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x21,236,80,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x20,220,88,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x19,188,96,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x18,124,104,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x17,84,112,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x16,168,120,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x15,0,128,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x14,0,136,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x13,0,144,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x12,0,152,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x11,0,160,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x10,0,168,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x9,0,176,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x8,0,184,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x7,0,192,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x6,0,200,c.lwsp,0)
TEST_LOAD(x1,x6,0,x2,x5,0,208,c.lwsp,0)
la x5,signature_x5_0
TEST_LOAD(x5,x6,0,x2,x4,0,0,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x3,0,8,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x2,0,16,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x1,0,24,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x10,0,32,c.lwsp,0)
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
