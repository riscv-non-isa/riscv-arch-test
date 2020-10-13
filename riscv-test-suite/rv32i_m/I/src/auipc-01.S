
#This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

RVTEST_SIGBASE( x5,signature_x5_1)

# rd==x2, imm_val == 0, 
# opcode: auipc ; dest:x2; immval:0
TEST_AUIPC(auipc, x2, 0x0, 0, x5, 0, x10)

# rd==x17, imm_val > 0, 
# opcode: auipc ; dest:x17; immval:19
TEST_AUIPC(auipc, x17, 0x13000, 19, x5, 4, x10)

# rd==x30, imm_val == ((2**20)-1), 
# opcode: auipc ; dest:x30; immval:1048575
TEST_AUIPC(auipc, x30, 0xfffff000, 1048575, x5, 8, x10)

# rd==x1, 
# opcode: auipc ; dest:x1; immval:0
TEST_AUIPC(auipc, x1, 0x0, 0, x5, 12, x10)

# rd==x15, 
# opcode: auipc ; dest:x15; immval:0
TEST_AUIPC(auipc, x15, 0x0, 0, x5, 16, x10)

# rd==x23, 
# opcode: auipc ; dest:x23; immval:0
TEST_AUIPC(auipc, x23, 0x0, 0, x5, 20, x10)

# rd==x9, 
# opcode: auipc ; dest:x9; immval:0
TEST_AUIPC(auipc, x9, 0x0, 0, x5, 24, x10)

# rd==x24, 
# opcode: auipc ; dest:x24; immval:0
TEST_AUIPC(auipc, x24, 0x0, 0, x5, 28, x10)

# rd==x26, 
# opcode: auipc ; dest:x26; immval:0
TEST_AUIPC(auipc, x26, 0x0, 0, x5, 32, x10)

# rd==x25, 
# opcode: auipc ; dest:x25; immval:0
TEST_AUIPC(auipc, x25, 0x0, 0, x5, 36, x10)

# rd==x6, 
# opcode: auipc ; dest:x6; immval:0
TEST_AUIPC(auipc, x6, 0x0, 0, x5, 40, x10)

# rd==x28, 
# opcode: auipc ; dest:x28; immval:0
TEST_AUIPC(auipc, x28, 0x0, 0, x5, 44, x10)

# rd==x22, 
# opcode: auipc ; dest:x22; immval:0
TEST_AUIPC(auipc, x22, 0x0, 0, x5, 48, x10)

# rd==x0, 
# opcode: auipc ; dest:x0; immval:0
TEST_AUIPC(auipc, x0, 0x0, 0, x5, 52, x10)

# rd==x7, 
# opcode: auipc ; dest:x7; immval:0
TEST_AUIPC(auipc, x7, 0x0, 0, x5, 56, x10)

# rd==x16, 
# opcode: auipc ; dest:x16; immval:0
TEST_AUIPC(auipc, x16, 0x0, 0, x5, 60, x10)

# rd==x12, 
# opcode: auipc ; dest:x12; immval:0
TEST_AUIPC(auipc, x12, 0x0, 0, x5, 64, x10)

# rd==x8, 
# opcode: auipc ; dest:x8; immval:0
TEST_AUIPC(auipc, x8, 0x0, 0, x5, 68, x10)

# rd==x11, 
# opcode: auipc ; dest:x11; immval:0
TEST_AUIPC(auipc, x11, 0x0, 0, x5, 72, x10)

# rd==x19, 
# opcode: auipc ; dest:x19; immval:0
TEST_AUIPC(auipc, x19, 0x0, 0, x5, 76, x10)

# rd==x14, 
# opcode: auipc ; dest:x14; immval:0
TEST_AUIPC(auipc, x14, 0x0, 0, x5, 80, x10)

# rd==x29, 
# opcode: auipc ; dest:x29; immval:0
TEST_AUIPC(auipc, x29, 0x0, 0, x5, 84, x10)

# rd==x13, 
# opcode: auipc ; dest:x13; immval:0
TEST_AUIPC(auipc, x13, 0x0, 0, x5, 88, x10)

# rd==x4, 
# opcode: auipc ; dest:x4; immval:0
TEST_AUIPC(auipc, x4, 0x0, 0, x5, 92, x10)

# rd==x31, 
# opcode: auipc ; dest:x31; immval:0
TEST_AUIPC(auipc, x31, 0x0, 0, x5, 96, x10)

# rd==x18, 
# opcode: auipc ; dest:x18; immval:0
TEST_AUIPC(auipc, x18, 0x0, 0, x5, 100, x10)

# rd==x3, 
# opcode: auipc ; dest:x3; immval:0
TEST_AUIPC(auipc, x3, 0x0, 0, x5, 104, x10)

# rd==x21, 
# opcode: auipc ; dest:x21; immval:0
TEST_AUIPC(auipc, x21, 0x0, 0, x5, 108, x10)

# rd==x20, 
# opcode: auipc ; dest:x20; immval:0
TEST_AUIPC(auipc, x20, 0x0, 0, x5, 112, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x5, 
# opcode: auipc ; dest:x5; immval:0
TEST_AUIPC(auipc, x5, 0x0, 0, x1, 0, x2)

# rd==x27, 
# opcode: auipc ; dest:x27; immval:0
TEST_AUIPC(auipc, x27, 0x0, 0, x1, 4, x2)

# rd==x10, 
# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x1, 8, x2)

# 
# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x1, 12, x2)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 4*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
