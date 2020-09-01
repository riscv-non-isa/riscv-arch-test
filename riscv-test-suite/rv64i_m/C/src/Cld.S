
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cld)
la x1,signature_x1_1
TEST_LOAD(x1,x2,0,x14,x15,248,0,c.ld,0)
TEST_LOAD(x1,x2,0,x15,x14,0,8,c.ld,0)
TEST_LOAD(x1,x2,0,x12,x13,8,16,c.ld,0)
TEST_LOAD(x1,x2,0,x13,x12,16,24,c.ld,0)
TEST_LOAD(x1,x2,0,x10,x11,32,32,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,64,40,c.ld,0)
TEST_LOAD(x1,x2,0,x8,x9,128,48,c.ld,0)
TEST_LOAD(x1,x2,0,x9,x8,240,56,c.ld,0)
TEST_LOAD(x1,x2,0,x15,x15,232,64,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,216,72,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,184,80,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,120,88,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,168,96,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,80,104,c.ld,0)
TEST_LOAD(x1,x2,0,x11,x10,232,112,c.ld,0)
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
    .fill 15*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
