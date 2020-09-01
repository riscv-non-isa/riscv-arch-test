
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clwsp)
la x1,signature_x1_1
TEST_LOAD(x1,x3,0,x2,x31,252,0,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x30,0,4,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x29,4,8,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x28,8,12,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x27,16,16,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x26,32,20,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x25,64,24,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x24,128,28,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x23,248,32,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x22,244,36,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x21,236,40,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x20,220,44,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x19,188,48,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x18,124,52,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x17,84,56,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x16,168,60,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x15,0,64,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x14,0,68,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x13,0,72,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x12,0,76,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x11,0,80,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x10,0,84,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x9,0,88,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x8,0,92,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x7,0,96,c.lwsp,0)
TEST_LOAD(x1,x3,0,x2,x6,0,100,c.lwsp,0)
TEST_LOAD(x1,x6,0,x2,x5,0,104,c.lwsp,0)
la x5,signature_x5_0
TEST_LOAD(x5,x6,0,x2,x4,0,0,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x3,0,4,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x2,0,8,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x1,0,12,c.lwsp,0)
TEST_LOAD(x5,x6,0,x2,x10,0,16,c.lwsp,0)
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
