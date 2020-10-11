
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

la x14,signature_x14_1

# rd==x4, rs1_val == (-2**(xlen-1)), rs1_val != imm_val, rs1_val == -2147483648, imm_val == 0
# opcode:c.addi; op1:x4; dest:x4 op1val:0x80000000; immval:0
TEST_CI_OP( c.addi, x4, 0x00000000, 0x80000000, 0, x14, 0, x18)

# rd==x27, rs1_val == 0, imm_val == -9
# opcode:c.addi; op1:x27; dest:x27 op1val:0x00000000; immval:-9
TEST_CI_OP( c.addi, x27, 0x00000000, 0x00000000, -9, x14, 4, x18)

# rd==x31, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and imm_val < 0, rs1_val == 2147483647
# opcode:c.addi; op1:x31; dest:x31 op1val:0x7fffffff; immval:-10
TEST_CI_OP( c.addi, x31, 0x00000000, 0x7fffffff, -10, x14, 8, x18)

# rd==x28, rs1_val == 1, rs1_val > 0 and imm_val > 0
# opcode:c.addi; op1:x28; dest:x28 op1val:0x00000001; immval:9
TEST_CI_OP( c.addi, x28, 0x00000000, 0x00000001, 9, x14, 12, x18)

# rd==x26, imm_val == (-2**(6-1)), imm_val == -32, rs1_val == -65, rs1_val < 0 and imm_val < 0
# opcode:c.addi; op1:x26; dest:x26 op1val:0xffffffbf; immval:-32
TEST_CI_OP( c.addi, x26, 0x00000000, 0xffffffbf, -32, x14, 16, x18)

# rd==x20, imm_val == (2**(6-1)-1), rs1_val == -134217729, imm_val == 31, rs1_val < 0 and imm_val > 0
# opcode:c.addi; op1:x20; dest:x20 op1val:0xf7ffffff; immval:31
TEST_CI_OP( c.addi, x20, 0x00000000, 0xf7ffffff, 31, x14, 20, x18)

# rd==x7, imm_val == 1, rs1_val == -1025
# opcode:c.addi; op1:x7; dest:x7 op1val:0xfffffbff; immval:1
TEST_CI_OP( c.addi, x7, 0x00000000, 0xfffffbff, 1, x14, 24, x18)

# rd==x17, rs1_val == imm_val, 
# opcode:c.addi; op1:x17; dest:x17 op1val:0xfffffffc; immval:-4
TEST_CI_OP( c.addi, x17, 0x00000000, 0xfffffffc, -4, x14, 28, x18)

# rd==x10, rs1_val == 2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x00000002; immval:31
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00000002, 31, x14, 32, x18)

# rd==x12, rs1_val == 4, imm_val == -3
# opcode:c.addi; op1:x12; dest:x12 op1val:0x00000004; immval:-3
TEST_CI_OP( c.addi, x12, 0x00000000, 0x00000004, -3, x14, 36, x18)

# rd==x8, rs1_val == 8, imm_val == 16
# opcode:c.addi; op1:x8; dest:x8 op1val:0x00000008; immval:16
TEST_CI_OP( c.addi, x8, 0x00000000, 0x00000008, 16, x14, 40, x18)

# rd==x15, rs1_val == 16, 
# opcode:c.addi; op1:x15; dest:x15 op1val:0x00000010; immval:7
TEST_CI_OP( c.addi, x15, 0x00000000, 0x00000010, 7, x14, 44, x18)

# rd==x11, rs1_val == 32, imm_val == -2
# opcode:c.addi; op1:x11; dest:x11 op1val:0x00000020; immval:-2
TEST_CI_OP( c.addi, x11, 0x00000000, 0x00000020, -2, x14, 48, x18)

# rd==x23, rs1_val == 64, 
# opcode:c.addi; op1:x23; dest:x23 op1val:0x00000040; immval:7
TEST_CI_OP( c.addi, x23, 0x00000000, 0x00000040, 7, x14, 52, x18)

# rd==x5, rs1_val == 128, 
# opcode:c.addi; op1:x5; dest:x5 op1val:0x00000080; immval:7
TEST_CI_OP( c.addi, x5, 0x00000000, 0x00000080, 7, x14, 56, x18)

# rd==x25, rs1_val == 256, imm_val == 21
# opcode:c.addi; op1:x25; dest:x25 op1val:0x00000100; immval:21
TEST_CI_OP( c.addi, x25, 0x00000000, 0x00000100, 21, x14, 60, x18)

# rd==x13, rs1_val == 512, imm_val == -17
# opcode:c.addi; op1:x13; dest:x13 op1val:0x00000200; immval:-17
TEST_CI_OP( c.addi, x13, 0x00000000, 0x00000200, -17, x14, 64, x18)

# rd==x3, rs1_val == 1024, 
# opcode:c.addi; op1:x3; dest:x3 op1val:0x00000400; immval:21
TEST_CI_OP( c.addi, x3, 0x00000000, 0x00000400, 21, x14, 68, x18)

# rd==x6, rs1_val == 2048, 
# opcode:c.addi; op1:x6; dest:x6 op1val:0x00000800; immval:-10
TEST_CI_OP( c.addi, x6, 0x00000000, 0x00000800, -10, x14, 72, x18)

# rd==x22, rs1_val == 4096, 
# opcode:c.addi; op1:x22; dest:x22 op1val:0x00001000; immval:6
TEST_CI_OP( c.addi, x22, 0x00000000, 0x00001000, 6, x14, 76, x18)

# rd==x2, rs1_val == 8192, 
# opcode:c.addi; op1:x2; dest:x2 op1val:0x00002000; immval:-3
TEST_CI_OP( c.addi, x2, 0x00000000, 0x00002000, -3, x14, 80, x18)

# rd==x9, rs1_val == 16384, 
# opcode:c.addi; op1:x9; dest:x9 op1val:0x00004000; immval:5
TEST_CI_OP( c.addi, x9, 0x00000000, 0x00004000, 5, x14, 84, x18)

# rd==x16, rs1_val == 32768, 
# opcode:c.addi; op1:x16; dest:x16 op1val:0x00008000; immval:9
TEST_CI_OP( c.addi, x16, 0x00000000, 0x00008000, 9, x14, 88, x18)

# rd==x1, rs1_val == 65536, 
# opcode:c.addi; op1:x1; dest:x1 op1val:0x00010000; immval:-16
TEST_CI_OP( c.addi, x1, 0x00000000, 0x00010000, -16, x14, 92, x18)

# rd==x24, rs1_val == 131072, 
# opcode:c.addi; op1:x24; dest:x24 op1val:0x00020000; immval:9
TEST_CI_OP( c.addi, x24, 0x00000000, 0x00020000, 9, x14, 96, x18)

# rd==x19, rs1_val == 262144, 
# opcode:c.addi; op1:x19; dest:x19 op1val:0x00040000; immval:-4
TEST_CI_OP( c.addi, x19, 0x00000000, 0x00040000, -4, x14, 100, x18)

# rd==x21, rs1_val == 524288, 
# opcode:c.addi; op1:x21; dest:x21 op1val:0x00080000; immval:7
TEST_CI_OP( c.addi, x21, 0x00000000, 0x00080000, 7, x14, 104, x18)

# rd==x30, rs1_val == 1048576, 
# opcode:c.addi; op1:x30; dest:x30 op1val:0x00100000; immval:0
TEST_CI_OP( c.addi, x30, 0x00000000, 0x00100000, 0, x14, 108, x2)
la x1,signature_x1_0

# rd==x18, rs1_val == 2097152, 
# opcode:c.addi; op1:x18; dest:x18 op1val:0x00200000; immval:31
TEST_CI_OP( c.addi, x18, 0x00000000, 0x00200000, 31, x1, 0, x2)

# rd==x14, rs1_val == 4194304, 
# opcode:c.addi; op1:x14; dest:x14 op1val:0x00400000; immval:-17
TEST_CI_OP( c.addi, x14, 0x00000000, 0x00400000, -17, x1, 4, x2)

# rd==x29, rs1_val == 8388608, 
# opcode:c.addi; op1:x29; dest:x29 op1val:0x00800000; immval:31
TEST_CI_OP( c.addi, x29, 0x00000000, 0x00800000, 31, x1, 8, x2)

# rs1_val == 16777216, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x01000000; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0x01000000, -32, x1, 12, x2)

# rs1_val == 33554432, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x02000000; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0x02000000, 5, x1, 16, x2)

# rs1_val == 67108864, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x04000000; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0x04000000, -4, x1, 20, x2)

# rs1_val == 134217728, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x08000000; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0x08000000, -9, x1, 24, x2)

# rs1_val == 268435456, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x10000000; immval:21
TEST_CI_OP( c.addi, x10, 0x00000000, 0x10000000, 21, x1, 28, x2)

# rs1_val == 536870912, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x20000000; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0x20000000, 0, x1, 32, x2)

# rs1_val == 1073741824, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x40000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0x40000000, -7, x1, 36, x2)

# rs1_val == -2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffe; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffe, -10, x1, 40, x2)

# rs1_val == -3, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffd; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffd, -4, x1, 44, x2)

# rs1_val == -5, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffb; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffb, -2, x1, 48, x2)

# rs1_val == -9, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7; immval:-1
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffff7, -1, x1, 52, x2)

# rs1_val == -524289, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfff7ffff, 0, x1, 56, x2)

# rs1_val == -1048577, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffefffff, -10, x1, 60, x2)

# rs1_val == -2097153, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffdfffff, 0, x1, 64, x2)

# rs1_val == -4194305, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffff; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffbfffff, 5, x1, 68, x2)

# rs1_val == -8388609, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffff; immval:-6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xff7fffff, -6, x1, 72, x2)

# rs1_val == -16777217, imm_val == -5
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfeffffff, -5, x1, 76, x2)

# rs1_val == -33554433, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfdffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfdffffff, -10, x1, 80, x2)

# rs1_val == -67108865, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfbffffff, -10, x1, 84, x2)

# rs1_val == -268435457, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xefffffff, 3, x1, 88, x2)

# rs1_val == -536870913, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffff; immval:-6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xdfffffff, -6, x1, 92, x2)

# rs1_val == -1073741825, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffff; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xbfffffff, 5, x1, 96, x2)

# rs1_val == 1431655765, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x55555555; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0x55555555, -2, x1, 100, x2)

# rs1_val == -1431655766, imm_val == -22
# opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xaaaaaaaa, -22, x1, 104, x2)

# imm_val == 2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffff; immval:2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfeffffff, 2, x1, 108, x2)

# imm_val == 4, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x10000000; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0x10000000, 4, x1, 112, x2)

# imm_val == 8, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x00000010; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00000010, 8, x1, 116, x2)

# rs1_val == -17, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffef; immval:1
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffef, 1, x1, 120, x2)

# rs1_val == -33, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdf; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffdf, -4, x1, 124, x2)

# rs1_val == -129, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffff7f; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffff7f, 7, x1, 128, x2)

# rs1_val == -257, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeff; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffeff, -9, x1, 132, x2)

# rs1_val == -513, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffdff; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffdff, -10, x1, 136, x2)

# rs1_val == -2049, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ff; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffff7ff, -4, x1, 140, x2)

# rs1_val == -4097, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffefff, 0, x1, 144, x2)

# rs1_val == -8193, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfff; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffdfff, -5, x1, 148, x2)

# rs1_val == -16385, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfff; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffbfff, -22, x1, 152, x2)

# rs1_val == -32769, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fff; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffff7fff, 15, x1, 156, x2)

# rs1_val == -65537, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffeffff, -10, x1, 160, x2)

# rs1_val == -131073, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffdffff, -22, x1, 164, x2)

# rs1_val == -262145, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffbffff; immval:3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffbffff, 3, x1, 168, x2)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x14_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 43*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
