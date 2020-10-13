
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

RVTEST_SIGBASE( x7,signature_x7_1)

# rd==x31, rs1_val == (-2**(xlen-1)), rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -2147483648
# opcode:c.addi; op1:x31; dest:x31 op1val:0x80000000; immval:5
TEST_CI_OP( c.addi, x31, 0x00000000, 0x80000000, 5, x7, 0, x5)

# rd==x30, rs1_val == 0, imm_val == -9
# opcode:c.addi; op1:x30; dest:x30 op1val:0x00000000; immval:-9
TEST_CI_OP( c.addi, x30, 0x00000000, 0x00000000, -9, x7, 4, x5)

# rd==x22, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and imm_val > 0, rs1_val == 2147483647
# opcode:c.addi; op1:x22; dest:x22 op1val:0x7fffffff; immval:6
TEST_CI_OP( c.addi, x22, 0x00000000, 0x7fffffff, 6, x7, 8, x5)

# rd==x21, rs1_val == 1, rs1_val > 0 and imm_val < 0
# opcode:c.addi; op1:x21; dest:x21 op1val:0x00000001; immval:-16
TEST_CI_OP( c.addi, x21, 0x00000000, 0x00000001, -16, x7, 12, x5)

# rd==x10, imm_val == (-2**(6-1)), rs1_val == 8192, imm_val == -32
# opcode:c.addi; op1:x10; dest:x10 op1val:0x00002000; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00002000, -32, x7, 16, x5)

# rd==x28, imm_val == 0, 
# opcode:c.addi; op1:x28; dest:x28 op1val:0x00000006; immval:0
TEST_CI_OP( c.addi, x28, 0x00000000, 0x00000006, 0, x7, 20, x5)

# rd==x15, imm_val == (2**(6-1)-1), imm_val == 31, rs1_val == 128
# opcode:c.addi; op1:x15; dest:x15 op1val:0x00000080; immval:31
TEST_CI_OP( c.addi, x15, 0x00000000, 0x00000080, 31, x7, 24, x5)

# rd==x12, imm_val == 1, rs1_val == 16777216
# opcode:c.addi; op1:x12; dest:x12 op1val:0x01000000; immval:1
TEST_CI_OP( c.addi, x12, 0x00000000, 0x01000000, 1, x7, 28, x5)

# rd==x18, rs1_val == imm_val, rs1_val == 2, imm_val == 2
# opcode:c.addi; op1:x18; dest:x18 op1val:0x00000002; immval:2
TEST_CI_OP( c.addi, x18, 0x00000000, 0x00000002, 2, x7, 32, x5)

# rd==x24, rs1_val < 0 and imm_val < 0, 
# opcode:c.addi; op1:x24; dest:x24 op1val:0xfffffff6; immval:-8
TEST_CI_OP( c.addi, x24, 0x00000000, 0xfffffff6, -8, x7, 36, x5)

# rd==x4, rs1_val == 4, imm_val == 8
# opcode:c.addi; op1:x4; dest:x4 op1val:0x00000004; immval:8
TEST_CI_OP( c.addi, x4, 0x00000000, 0x00000004, 8, x7, 40, x5)

# rd==x2, rs1_val == 8, 
# opcode:c.addi; op1:x2; dest:x2 op1val:0x00000008; immval:-10
TEST_CI_OP( c.addi, x2, 0x00000000, 0x00000008, -10, x7, 44, x5)

# rd==x25, rs1_val == 16, 
# opcode:c.addi; op1:x25; dest:x25 op1val:0x00000010; immval:-9
TEST_CI_OP( c.addi, x25, 0x00000000, 0x00000010, -9, x7, 48, x5)

# rd==x6, rs1_val == 32, 
# opcode:c.addi; op1:x6; dest:x6 op1val:0x00000020; immval:-9
TEST_CI_OP( c.addi, x6, 0x00000000, 0x00000020, -9, x7, 52, x5)

# rd==x14, rs1_val == 64, 
# opcode:c.addi; op1:x14; dest:x14 op1val:0x00000040; immval:0
TEST_CI_OP( c.addi, x14, 0x00000000, 0x00000040, 0, x7, 56, x5)

# rd==x19, rs1_val == 256, 
# opcode:c.addi; op1:x19; dest:x19 op1val:0x00000100; immval:-10
TEST_CI_OP( c.addi, x19, 0x00000000, 0x00000100, -10, x7, 60, x5)

# rd==x3, rs1_val == 512, 
# opcode:c.addi; op1:x3; dest:x3 op1val:0x00000200; immval:0
TEST_CI_OP( c.addi, x3, 0x00000000, 0x00000200, 0, x7, 64, x5)

# rd==x9, rs1_val == 1024, imm_val == -3
# opcode:c.addi; op1:x9; dest:x9 op1val:0x00000400; immval:-3
TEST_CI_OP( c.addi, x9, 0x00000000, 0x00000400, -3, x7, 68, x5)

# rd==x11, rs1_val == 2048, 
# opcode:c.addi; op1:x11; dest:x11 op1val:0x00000800; immval:6
TEST_CI_OP( c.addi, x11, 0x00000000, 0x00000800, 6, x7, 72, x5)

# rd==x26, rs1_val == 4096, 
# opcode:c.addi; op1:x26; dest:x26 op1val:0x00001000; immval:-1
TEST_CI_OP( c.addi, x26, 0x00000000, 0x00001000, -1, x7, 76, x5)

# rd==x27, rs1_val == 16384, 
# opcode:c.addi; op1:x27; dest:x27 op1val:0x00004000; immval:-9
TEST_CI_OP( c.addi, x27, 0x00000000, 0x00004000, -9, x7, 80, x5)

# rd==x29, rs1_val == 32768, 
# opcode:c.addi; op1:x29; dest:x29 op1val:0x00008000; immval:5
TEST_CI_OP( c.addi, x29, 0x00000000, 0x00008000, 5, x7, 84, x5)

# rd==x16, rs1_val == 65536, 
# opcode:c.addi; op1:x16; dest:x16 op1val:0x00010000; immval:31
TEST_CI_OP( c.addi, x16, 0x00000000, 0x00010000, 31, x7, 88, x5)

# rd==x13, rs1_val == 131072, 
# opcode:c.addi; op1:x13; dest:x13 op1val:0x00020000; immval:-7
TEST_CI_OP( c.addi, x13, 0x00000000, 0x00020000, -7, x7, 92, x5)

# rd==x1, rs1_val == 262144, 
# opcode:c.addi; op1:x1; dest:x1 op1val:0x00040000; immval:2
TEST_CI_OP( c.addi, x1, 0x00000000, 0x00040000, 2, x7, 96, x5)

# rd==x17, rs1_val == 524288, 
# opcode:c.addi; op1:x17; dest:x17 op1val:0x00080000; immval:8
TEST_CI_OP( c.addi, x17, 0x00000000, 0x00080000, 8, x7, 100, x5)

# rd==x8, rs1_val == 1048576, 
# opcode:c.addi; op1:x8; dest:x8 op1val:0x00100000; immval:-9
TEST_CI_OP( c.addi, x8, 0x00000000, 0x00100000, -9, x7, 104, x5)

# rd==x5, rs1_val == 2097152, 
# opcode:c.addi; op1:x5; dest:x5 op1val:0x00200000; immval:15
TEST_CI_OP( c.addi, x5, 0x00000000, 0x00200000, 15, x7, 108, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x20, rs1_val == 4194304, 
# opcode:c.addi; op1:x20; dest:x20 op1val:0x00400000; immval:6
TEST_CI_OP( c.addi, x20, 0x00000000, 0x00400000, 6, x1, 0, x2)

# rd==x23, rs1_val == 8388608, 
# opcode:c.addi; op1:x23; dest:x23 op1val:0x00800000; immval:6
TEST_CI_OP( c.addi, x23, 0x00000000, 0x00800000, 6, x1, 4, x2)

# rd==x7, rs1_val == 33554432, 
# opcode:c.addi; op1:x7; dest:x7 op1val:0x02000000; immval:-3
TEST_CI_OP( c.addi, x7, 0x00000000, 0x02000000, -3, x1, 8, x2)

# rs1_val == 67108864, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x04000000; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0x04000000, 15, x1, 12, x2)

# rs1_val == 134217728, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x08000000; immval:1
TEST_CI_OP( c.addi, x10, 0x00000000, 0x08000000, 1, x1, 16, x2)

# rs1_val == 268435456, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x10000000; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0x10000000, -9, x1, 20, x2)

# rs1_val == 536870912, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x20000000; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0x20000000, 0, x1, 24, x2)

# rs1_val == 1073741824, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x40000000; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0x40000000, 15, x1, 28, x2)

# rs1_val == -2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffe; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffe, 8, x1, 32, x2)

# rs1_val == -3, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffd; immval:-1
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffd, -1, x1, 36, x2)

# rs1_val == -5, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffb; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffb, 5, x1, 40, x2)

# rs1_val == -9, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7; immval:-8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffff7, -8, x1, 44, x2)

# rs1_val == -17, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffef; immval:-16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffef, -16, x1, 48, x2)

# rs1_val == -33, imm_val == -17
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdf; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffdf, -17, x1, 52, x2)

# rs1_val == -65, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffbf; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffbf, -7, x1, 56, x2)

# rs1_val == -129, imm_val == -2
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffff7f; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffff7f, -2, x1, 60, x2)

# rs1_val == -524289, imm_val == -5
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfff7ffff, -5, x1, 64, x2)

# rs1_val == -1048577, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffff; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffefffff, 5, x1, 68, x2)

# rs1_val == -2097153, imm_val == -22
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffdfffff, -22, x1, 72, x2)

# rs1_val == -4194305, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffff; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffbfffff, 7, x1, 76, x2)

# rs1_val == -8388609, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffff; immval:2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xff7fffff, 2, x1, 80, x2)

# rs1_val == -16777217, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffff; immval:-1
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfeffffff, -1, x1, 84, x2)

# rs1_val == -33554433, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfdffffff; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfdffffff, 7, x1, 88, x2)

# rs1_val == -67108865, imm_val == 16
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffff; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfbffffff, 16, x1, 92, x2)

# rs1_val == -134217729, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xf7ffffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xf7ffffff, -9, x1, 96, x2)

# rs1_val == -268435457, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffff; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xefffffff, -7, x1, 100, x2)

# rs1_val == -536870913, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffff; immval:-16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xdfffffff, -16, x1, 104, x2)

# rs1_val == -1073741825, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xbfffffff, 6, x1, 108, x2)

# rs1_val == -8193, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfff; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffdfff, -2, x1, 112, x2)

# rs1_val == 1431655765, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x55555555; immval:-8
TEST_CI_OP( c.addi, x10, 0x00000000, 0x55555555, -8, x1, 116, x2)

# rs1_val == -1431655766, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xaaaaaaaa, -4, x1, 120, x2)

# imm_val == 4, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xdfffffff, 4, x1, 124, x2)

# rs1_val == -257, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeff; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffeff, 15, x1, 128, x2)

# rs1_val == -513, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffdff; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffdff, 16, x1, 132, x2)

# rs1_val == -1025, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffbff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffbff, 0, x1, 136, x2)

# rs1_val == -2049, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ff; immval:9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffff7ff, 9, x1, 140, x2)

# rs1_val == -4097, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefff; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffefff, -7, x1, 144, x2)

# imm_val == 21, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x00000005; immval:21
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00000005, 21, x1, 148, x2)

# rs1_val == -16385, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfff; immval:3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffbfff, 3, x1, 152, x2)

# rs1_val == -32769, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fff; immval:-3
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffff7fff, -3, x1, 156, x2)

# rs1_val == -65537, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffff; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffeffff, -32, x1, 160, x2)

# rs1_val == -131073, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffff; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffdffff, 4, x1, 164, x2)

# rs1_val == -262145, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffbffff; immval:-4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffbffff, -4, x1, 168, x2)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
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
