
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

RVTEST_SIGBASE( x20,signature_x20_1)

# rd==x10, rs1_val == (-2**(xlen-1)), rs1_val != imm_val, rs1_val == -2147483648, rs1_val < 0 and imm_val < 0
# opcode:c.addi; op1:x10; dest:x10 op1val:0x80000000; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0x80000000, -4, x20, 0, x17)

# rd==x4, rs1_val == 0, imm_val == 2
# opcode:c.addi; op1:x4; dest:x4 op1val:0x00000000; immval:2
TEST_CI_OP( c.addi, x4, 0x00000000, 0x00000000, 2, x20, 4, x17)

# rd==x12, rs1_val == (2**(xlen-1)-1), imm_val == -17, rs1_val > 0 and imm_val < 0, rs1_val == 2147483647
# opcode:c.addi; op1:x12; dest:x12 op1val:0x7fffffff; immval:-17
TEST_CI_OP( c.addi, x12, 0x00000000, 0x7fffffff, -17, x20, 8, x17)

# rd==x5, rs1_val == 1, rs1_val > 0 and imm_val > 0, imm_val == 21
# opcode:c.addi; op1:x5; dest:x5 op1val:0x00000001; immval:21
TEST_CI_OP( c.addi, x5, 0x00000000, 0x00000001, 21, x20, 12, x17)

# rd==x9, imm_val == (-2**(6-1)), imm_val == -32, rs1_val == 512
# opcode:c.addi; op1:x9; dest:x9 op1val:0x00000200; immval:-32
TEST_CI_OP( c.addi, x9, 0x00000000, 0x00000200, -32, x20, 16, x17)

# rd==x29, imm_val == 0, rs1_val == 64
# opcode:c.addi; op1:x29; dest:x29 op1val:0x00000040; immval:0
TEST_CI_OP( c.addi, x29, 0x00000000, 0x00000040, 0, x20, 20, x17)

# rd==x19, imm_val == (2**(6-1)-1), imm_val == 31, rs1_val == 8388608
# opcode:c.addi; op1:x19; dest:x19 op1val:0x00800000; immval:31
TEST_CI_OP( c.addi, x19, 0x00000000, 0x00800000, 31, x20, 24, x17)

# rd==x8, imm_val == 1, rs1_val == 268435456
# opcode:c.addi; op1:x8; dest:x8 op1val:0x10000000; immval:1
TEST_CI_OP( c.addi, x8, 0x00000000, 0x10000000, 1, x20, 28, x17)

# rd==x13, rs1_val == imm_val, rs1_val == -17
# opcode:c.addi; op1:x13; dest:x13 op1val:0xffffffef; immval:-17
TEST_CI_OP( c.addi, x13, 0x00000000, 0xffffffef, -17, x20, 32, x17)

# rd==x14, rs1_val < 0 and imm_val > 0, 
# opcode:c.addi; op1:x14; dest:x14 op1val:0xfffffffa; immval:21
TEST_CI_OP( c.addi, x14, 0x00000000, 0xfffffffa, 21, x20, 36, x17)

# rd==x18, rs1_val == 2, 
# opcode:c.addi; op1:x18; dest:x18 op1val:0x00000002; immval:-10
TEST_CI_OP( c.addi, x18, 0x00000000, 0x00000002, -10, x20, 40, x17)

# rd==x30, rs1_val == 4, 
# opcode:c.addi; op1:x30; dest:x30 op1val:0x00000004; immval:-7
TEST_CI_OP( c.addi, x30, 0x00000000, 0x00000004, -7, x20, 44, x17)

# rd==x22, rs1_val == 8, 
# opcode:c.addi; op1:x22; dest:x22 op1val:0x00000008; immval:-1
TEST_CI_OP( c.addi, x22, 0x00000000, 0x00000008, -1, x20, 48, x17)

# rd==x28, rs1_val == 16, 
# opcode:c.addi; op1:x28; dest:x28 op1val:0x00000010; immval:-7
TEST_CI_OP( c.addi, x28, 0x00000000, 0x00000010, -7, x20, 52, x17)

# rd==x2, rs1_val == 32, 
# opcode:c.addi; op1:x2; dest:x2 op1val:0x00000020; immval:-4
TEST_CI_OP( c.addi, x2, 0x00000000, 0x00000020, -4, x20, 56, x17)

# rd==x27, rs1_val == 128, 
# opcode:c.addi; op1:x27; dest:x27 op1val:0x00000080; immval:9
TEST_CI_OP( c.addi, x27, 0x00000000, 0x00000080, 9, x20, 60, x17)

# rd==x16, rs1_val == 256, 
# opcode:c.addi; op1:x16; dest:x16 op1val:0x00000100; immval:-32
TEST_CI_OP( c.addi, x16, 0x00000000, 0x00000100, -32, x20, 64, x17)

# rd==x1, rs1_val == 1024, 
# opcode:c.addi; op1:x1; dest:x1 op1val:0x00000400; immval:-1
TEST_CI_OP( c.addi, x1, 0x00000000, 0x00000400, -1, x20, 68, x17)

# rd==x23, rs1_val == 2048, imm_val == -9
# opcode:c.addi; op1:x23; dest:x23 op1val:0x00000800; immval:-9
TEST_CI_OP( c.addi, x23, 0x00000000, 0x00000800, -9, x20, 72, x17)

# rd==x7, rs1_val == 4096, imm_val == 4
# opcode:c.addi; op1:x7; dest:x7 op1val:0x00001000; immval:4
TEST_CI_OP( c.addi, x7, 0x00000000, 0x00001000, 4, x20, 76, x17)

# rd==x26, rs1_val == 8192, imm_val == 8
# opcode:c.addi; op1:x26; dest:x26 op1val:0x00002000; immval:8
TEST_CI_OP( c.addi, x26, 0x00000000, 0x00002000, 8, x20, 80, x17)

# rd==x15, rs1_val == 16384, 
# opcode:c.addi; op1:x15; dest:x15 op1val:0x00004000; immval:15
TEST_CI_OP( c.addi, x15, 0x00000000, 0x00004000, 15, x20, 84, x17)

# rd==x3, rs1_val == 32768, 
# opcode:c.addi; op1:x3; dest:x3 op1val:0x00008000; immval:3
TEST_CI_OP( c.addi, x3, 0x00000000, 0x00008000, 3, x20, 88, x17)

# rd==x25, rs1_val == 65536, 
# opcode:c.addi; op1:x25; dest:x25 op1val:0x00010000; immval:2
TEST_CI_OP( c.addi, x25, 0x00000000, 0x00010000, 2, x20, 92, x17)

# rd==x31, rs1_val == 131072, 
# opcode:c.addi; op1:x31; dest:x31 op1val:0x00020000; immval:-9
TEST_CI_OP( c.addi, x31, 0x00000000, 0x00020000, -9, x20, 96, x17)

# rd==x11, rs1_val == 262144, 
# opcode:c.addi; op1:x11; dest:x11 op1val:0x00040000; immval:15
TEST_CI_OP( c.addi, x11, 0x00000000, 0x00040000, 15, x20, 100, x17)

# rd==x6, rs1_val == 524288, 
# opcode:c.addi; op1:x6; dest:x6 op1val:0x00080000; immval:-10
TEST_CI_OP( c.addi, x6, 0x00000000, 0x00080000, -10, x20, 104, x17)

# rd==x17, rs1_val == 1048576, 
# opcode:c.addi; op1:x17; dest:x17 op1val:0x00100000; immval:-7
TEST_CI_OP( c.addi, x17, 0x00000000, 0x00100000, -7, x20, 108, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x24, rs1_val == 2097152, 
# opcode:c.addi; op1:x24; dest:x24 op1val:0x00200000; immval:3
TEST_CI_OP( c.addi, x24, 0x00000000, 0x00200000, 3, x1, 0, x2)

# rd==x20, rs1_val == 4194304, 
# opcode:c.addi; op1:x20; dest:x20 op1val:0x00400000; immval:0
TEST_CI_OP( c.addi, x20, 0x00000000, 0x00400000, 0, x1, 4, x2)

# rd==x21, rs1_val == 16777216, 
# opcode:c.addi; op1:x21; dest:x21 op1val:0x01000000; immval:-4
TEST_CI_OP( c.addi, x21, 0x00000000, 0x01000000, -4, x1, 8, x2)

# rs1_val == 33554432, imm_val == -2
# opcode:c.addi; op1:x10; dest:x10 op1val:0x02000000; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0x02000000, -2, x1, 12, x2)

# rs1_val == 67108864, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x04000000; immval:2
TEST_CI_OP( c.addi, x10, 0x00000000, 0x04000000, 2, x1, 16, x2)

# rs1_val == 134217728, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x08000000; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0x08000000, 7, x1, 20, x2)

# rs1_val == 536870912, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x20000000; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0x20000000, -4, x1, 24, x2)

# rs1_val == 1073741824, imm_val == -5
# opcode:c.addi; op1:x10; dest:x10 op1val:0x40000000; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0x40000000, -5, x1, 28, x2)

# rs1_val == -2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffe; immval:-16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffe, -16, x1, 32, x2)

# rs1_val == -3, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffd; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffd, -17, x1, 36, x2)

# rs1_val == -5, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffb; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffb, -17, x1, 40, x2)

# rs1_val == -9, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffff7, -4, x1, 44, x2)

# rs1_val == -524289, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffff; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfff7ffff, -32, x1, 48, x2)

# rs1_val == -1048577, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffff; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffefffff, -4, x1, 52, x2)

# rs1_val == -2097153, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffff; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffdfffff, -32, x1, 56, x2)

# rs1_val == -4194305, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffbfffff, -2, x1, 60, x2)

# rs1_val == -8388609, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffff; immval:9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xff7fffff, 9, x1, 64, x2)

# rs1_val == -16777217, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfeffffff, -9, x1, 68, x2)

# rs1_val == -33554433, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfdffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfdffffff, 21, x1, 72, x2)

# rs1_val == -67108865, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfbffffff, 6, x1, 76, x2)

# rs1_val == -134217729, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xf7ffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xf7ffffff, 4, x1, 80, x2)

# rs1_val == -268435457, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xefffffff, 0, x1, 84, x2)

# rs1_val == -536870913, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xdfffffff, -8, x1, 88, x2)

# rs1_val == -1073741825, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffff; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xbfffffff, -4, x1, 92, x2)

# rs1_val == 1431655765, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x55555555; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0x55555555, -4, x1, 96, x2)

# rs1_val == -1431655766, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xaaaaaaaa, 7, x1, 100, x2)

# imm_val == 16, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x00000005; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00000005, 16, x1, 104, x2)

# imm_val == -3, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffd; immval:-3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffd, -3, x1, 108, x2)

# rs1_val == -16385, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffbfff, 0, x1, 112, x2)

# rs1_val == -33, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdf; immval:2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffdf, 2, x1, 116, x2)

# rs1_val == -65, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffbf; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffbf, -32, x1, 120, x2)

# rs1_val == -129, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffff7f; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffff7f, 5, x1, 124, x2)

# rs1_val == -257, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeff; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffeff, -32, x1, 128, x2)

# rs1_val == -513, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffdff; immval:-3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffdff, -3, x1, 132, x2)

# rs1_val == -1025, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffbff; immval:-8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffbff, -8, x1, 136, x2)

# rs1_val == -2049, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ff; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffff7ff, -17, x1, 140, x2)

# rs1_val == -4097, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefff; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffefff, 16, x1, 144, x2)

# rs1_val == -8193, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfff; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffdfff, -32, x1, 148, x2)

# imm_val == -22, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffbfffff, -22, x1, 152, x2)

# rs1_val == -32769, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fff; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffff7fff, 8, x1, 156, x2)

# rs1_val == -65537, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffff; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffeffff, 7, x1, 160, x2)

# rs1_val == -131073, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffff; immval:3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffdffff, 3, x1, 164, x2)

# rs1_val == -262145, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffbffff; immval:2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffbffff, 2, x1, 168, x2)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x20_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x20_1:
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
