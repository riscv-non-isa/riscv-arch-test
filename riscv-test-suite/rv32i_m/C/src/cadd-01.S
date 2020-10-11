
#This assembly file tests the c.add instruction of the RISC-V C extension for the cadd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cadd)

la x1,signature_x1_1

# rs1 == rs2, rs1==x16, rs2==x16, rs2_val > 0, 
# opcode: c.add; op1:x16; op2:x16; op1val:0xfffffffa; op2val:0x00000003
TEST_CR_OP( c.add, x16, x16, 0x00000000, 0xfffffffa, 0x00000003, x1, 0, x3)

# rs1 != rs2, rs1==x20, rs2==x25, rs2_val < 0, rs2_val == -9
# opcode: c.add; op1:x20; op2:x25; op1val:0xfffffffa; op2val:0xfffffff7
TEST_CR_OP( c.add, x20, x25, 0x00000000, 0xfffffffa, 0xfffffff7, x1, 4, x3)

# rs1==x25, rs2==x21, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, rs2_val == -16777217
# opcode: c.add; op1:x25; op2:x21; op1val:0x80000000; op2val:0xfeffffff
TEST_CR_OP( c.add, x25, x21, 0x00000000, 0x80000000, 0xfeffffff, x1, 8, x3)

# rs1==x6, rs2==x29, rs1_val == 0, rs2_val == 8
# opcode: c.add; op1:x6; op2:x29; op1val:0x00000000; op2val:0x00000008
TEST_CR_OP( c.add, x6, x29, 0x00000000, 0x00000000, 0x00000008, x1, 12, x3)

# rs1==x29, rs2==x26, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: c.add; op1:x29; op2:x26; op1val:0x7fffffff; op2val:0xfffffffc
TEST_CR_OP( c.add, x29, x26, 0x00000000, 0x7fffffff, 0xfffffffc, x1, 16, x3)

# rs1==x24, rs2==x23, rs1_val == 1, rs2_val == 1024
# opcode: c.add; op1:x24; op2:x23; op1val:0x00000001; op2val:0x00000400
TEST_CR_OP( c.add, x24, x23, 0x00000000, 0x00000001, 0x00000400, x1, 20, x3)

# rs1==x13, rs2==x7, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: c.add; op1:x13; op2:x7; op1val:0xfffffff8; op2val:0x80000000
TEST_CR_OP( c.add, x13, x7, 0x00000000, 0xfffffff8, 0x80000000, x1, 24, x3)

# rs1==x4, rs2==x19, rs2_val == 0, 
# opcode: c.add; op1:x4; op2:x19; op1val:0xfffffffc; op2val:0x00000000
TEST_CR_OP( c.add, x4, x19, 0x00000000, 0xfffffffc, 0x00000000, x1, 28, x3)

# rs1==x18, rs2==x31, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, rs1_val == -524289
# opcode: c.add; op1:x18; op2:x31; op1val:0xfff7ffff; op2val:0x7fffffff
TEST_CR_OP( c.add, x18, x31, 0x00000000, 0xfff7ffff, 0x7fffffff, x1, 32, x3)

# rs1==x8, rs2==x15, rs2_val == 1, rs1_val == 8192
# opcode: c.add; op1:x8; op2:x15; op1val:0x00002000; op2val:0x00000001
TEST_CR_OP( c.add, x8, x15, 0x00000000, 0x00002000, 0x00000001, x1, 36, x3)

# rs1==x10, rs2==x11, rs1_val == 2, rs2_val == 2048
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000002; op2val:0x00000800
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000002, 0x00000800, x1, 40, x3)

# rs1==x30, rs2==x4, rs1_val == 4, rs2_val == 134217728
# opcode: c.add; op1:x30; op2:x4; op1val:0x00000004; op2val:0x08000000
TEST_CR_OP( c.add, x30, x4, 0x00000000, 0x00000004, 0x08000000, x1, 44, x3)

# rs1==x27, rs2==x18, rs1_val == 8, 
# opcode: c.add; op1:x27; op2:x18; op1val:0x00000008; op2val:0x00000008
TEST_CR_OP( c.add, x27, x18, 0x00000000, 0x00000008, 0x00000008, x1, 48, x3)

# rs1==x28, rs2==x14, rs1_val == 16, 
# opcode: c.add; op1:x28; op2:x14; op1val:0x00000010; op2val:0x00000800
TEST_CR_OP( c.add, x28, x14, 0x00000000, 0x00000010, 0x00000800, x1, 52, x3)

# rs1==x14, rs2==x10, rs1_val == 32, rs2_val == -536870913
# opcode: c.add; op1:x14; op2:x10; op1val:0x00000020; op2val:0xdfffffff
TEST_CR_OP( c.add, x14, x10, 0x00000000, 0x00000020, 0xdfffffff, x1, 56, x3)

# rs1==x15, rs2==x27, rs1_val == 64, 
# opcode: c.add; op1:x15; op2:x27; op1val:0x00000040; op2val:0xfffffff6
TEST_CR_OP( c.add, x15, x27, 0x00000000, 0x00000040, 0xfffffff6, x1, 60, x3)

# rs1==x31, rs2==x2, rs1_val == 128, rs2_val == 32768
# opcode: c.add; op1:x31; op2:x2; op1val:0x00000080; op2val:0x00008000
TEST_CR_OP( c.add, x31, x2, 0x00000000, 0x00000080, 0x00008000, x1, 64, x3)

# rs1==x0, rs2==x28, rs1_val == 256, 
# opcode: c.add; op1:x0; op2:x28; op1val:0x00000100; op2val:0x00000000
TEST_CR_OP( c.add, x0, x28, 0x00000000, 0x00000100, 0x00000000, x1, 68, x3)

# rs1==x11, rs2==x20, rs1_val == 512, 
# opcode: c.add; op1:x11; op2:x20; op1val:0x00000200; op2val:0xfffffff9
TEST_CR_OP( c.add, x11, x20, 0x00000000, 0x00000200, 0xfffffff9, x1, 72, x3)

# rs1==x26, rs2==x9, rs1_val == 1024, rs2_val == 524288
# opcode: c.add; op1:x26; op2:x9; op1val:0x00000400; op2val:0x00080000
TEST_CR_OP( c.add, x26, x9, 0x00000000, 0x00000400, 0x00080000, x1, 76, x3)

# rs1==x9, rs2==x8, rs1_val == 2048, rs2_val == -65
# opcode: c.add; op1:x9; op2:x8; op1val:0x00000800; op2val:0xffffffbf
TEST_CR_OP( c.add, x9, x8, 0x00000000, 0x00000800, 0xffffffbf, x1, 80, x3)

# rs1==x2, rs2==x5, rs1_val == 4096, rs2_val == 33554432
# opcode: c.add; op1:x2; op2:x5; op1val:0x00001000; op2val:0x02000000
TEST_CR_OP( c.add, x2, x5, 0x00000000, 0x00001000, 0x02000000, x1, 84, x3)

# rs1==x17, rs2==x30, rs1_val == 16384, 
# opcode: c.add; op1:x17; op2:x30; op1val:0x00004000; op2val:0xfffffffc
TEST_CR_OP( c.add, x17, x30, 0x00000000, 0x00004000, 0xfffffffc, x1, 88, x3)

# rs1==x23, rs2==x22, rs1_val == 32768, rs2_val == -1025
# opcode: c.add; op1:x23; op2:x22; op1val:0x00008000; op2val:0xfffffbff
TEST_CR_OP( c.add, x23, x22, 0x00000000, 0x00008000, 0xfffffbff, x1, 92, x4)
la x2,signature_x2_0

# rs1==x22, rs2==x3, rs1_val == 65536, rs2_val == -67108865
# opcode: c.add; op1:x22; op2:x3; op1val:0x00010000; op2val:0xfbffffff
TEST_CR_OP( c.add, x22, x3, 0x00000000, 0x00010000, 0xfbffffff, x2, 0, x4)

# rs1==x19, rs2==x24, rs1_val == 131072, rs2_val == -4194305
# opcode: c.add; op1:x19; op2:x24; op1val:0x00020000; op2val:0xffbfffff
TEST_CR_OP( c.add, x19, x24, 0x00000000, 0x00020000, 0xffbfffff, x2, 4, x4)

# rs1==x5, rs2==x1, rs1_val == 262144, rs2_val == 1431655765
# opcode: c.add; op1:x5; op2:x1; op1val:0x00040000; op2val:0x55555555
TEST_CR_OP( c.add, x5, x1, 0x00000000, 0x00040000, 0x55555555, x2, 8, x4)

# rs1==x12, rs2==x17, rs1_val == 524288, rs2_val == 16777216
# opcode: c.add; op1:x12; op2:x17; op1val:0x00080000; op2val:0x01000000
TEST_CR_OP( c.add, x12, x17, 0x00000000, 0x00080000, 0x01000000, x2, 12, x4)

# rs1==x7, rs2==x13, rs1_val == 1048576, 
# opcode: c.add; op1:x7; op2:x13; op1val:0x00100000; op2val:0xfffffff9
TEST_CR_OP( c.add, x7, x13, 0x00000000, 0x00100000, 0xfffffff9, x2, 16, x4)

# rs1==x1, rs2==x12, rs1_val == 2097152, 
# opcode: c.add; op1:x1; op2:x12; op1val:0x00200000; op2val:0xfffffffc
TEST_CR_OP( c.add, x1, x12, 0x00000000, 0x00200000, 0xfffffffc, x2, 20, x4)

# rs1==x3, rs2==x6, rs1_val == 4194304, 
# opcode: c.add; op1:x3; op2:x6; op1val:0x00400000; op2val:0x3fffffff
TEST_CR_OP( c.add, x3, x6, 0x00000000, 0x00400000, 0x3fffffff, x2, 24, x4)

# rs1==x21, rs1_val == 8388608, rs2_val == -16385
# opcode: c.add; op1:x21; op2:x9; op1val:0x00800000; op2val:0xffffbfff
TEST_CR_OP( c.add, x21, x9, 0x00000000, 0x00800000, 0xffffbfff, x2, 28, x4)

# rs1_val == 16777216, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x01000000; op2val:0x00000003
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x01000000, 0x00000003, x2, 32, x4)

# rs1_val == 33554432, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x02000000; op2val:0xc0000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x02000000, 0xc0000000, x2, 36, x4)

# rs1_val == 67108864, rs2_val == -1073741825
# opcode: c.add; op1:x10; op2:x11; op1val:0x04000000; op2val:0xbfffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x04000000, 0xbfffffff, x2, 40, x4)

# rs1_val == 134217728, rs2_val == -1431655766
# opcode: c.add; op1:x10; op2:x11; op1val:0x08000000; op2val:0xaaaaaaaa
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x08000000, 0xaaaaaaaa, x2, 44, x4)

# rs1_val == 268435456, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x10000000; op2val:0x00000008
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x10000000, 0x00000008, x2, 48, x4)

# rs1_val == 536870912, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x20000000; op2val:0xfffffffc
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x20000000, 0xfffffffc, x2, 52, x4)

# rs1_val == 1073741824, rs2_val == 1048576
# opcode: c.add; op1:x10; op2:x11; op1val:0x40000000; op2val:0x00100000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x40000000, 0x00100000, x2, 56, x4)

# rs1_val == -2, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xffbfffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffe, 0xffbfffff, x2, 60, x4)

# rs1_val == -3, rs2_val == -262145
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffbffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffd, 0xfffbffff, x2, 64, x4)

# rs1_val == -5, rs2_val == -5
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfffffffb
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffb, 0xfffffffb, x2, 68, x4)

# rs1_val == -9, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x01000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffff7, 0x01000000, x2, 72, x4)

# rs1_val == -17, rs2_val == 2097152
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00200000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffef, 0x00200000, x2, 76, x4)

# rs1_val == -33, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xbfffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffdf, 0xbfffffff, x2, 80, x4)

# rs1_val == -65, rs2_val == -134217729
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xf7ffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffbf, 0xf7ffffff, x2, 84, x4)

# rs1_val == -129, rs2_val == 131072
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00020000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffff7f, 0x00020000, x2, 88, x4)

# rs2_val == -8388609, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000003; op2val:0xff7fffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000003, 0xff7fffff, x2, 92, x4)

# rs2_val == -33554433, rs1_val == -4194305
# opcode: c.add; op1:x10; op2:x11; op1val:0xffbfffff; op2val:0xfdffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffbfffff, 0xfdffffff, x2, 96, x4)

# rs2_val == -268435457, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00200000; op2val:0xefffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00200000, 0xefffffff, x2, 100, x4)

# rs1_val == -257, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xfeffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffeff, 0xfeffffff, x2, 104, x4)

# rs1_val == -513, rs2_val == 64
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000040
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffdff, 0x00000040, x2, 108, x4)

# rs1_val == -1025, rs2_val == 16384
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00004000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffbff, 0x00004000, x2, 112, x4)

# rs1_val == -2049, rs2_val == 268435456
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x10000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffff7ff, 0x10000000, x2, 116, x4)

# rs1_val == -4097, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffefff; op2val:0x80000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffefff, 0x80000000, x2, 120, x4)

# rs1_val == -8193, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00000800
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffdfff, 0x00000800, x2, 124, x4)

# rs1_val == -16385, rs2_val == 8192
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00002000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffbfff, 0x00002000, x2, 128, x4)

# rs1_val == -32769, rs2_val == -129
# opcode: c.add; op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xffffff7f
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffff7fff, 0xffffff7f, x2, 132, x4)

# rs1_val == -65537, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000007
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffeffff, 0x00000007, x2, 136, x4)

# rs1_val == -131073, rs2_val == -524289
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xfff7ffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffdffff, 0xfff7ffff, x2, 140, x4)

# rs1_val == -262145, rs2_val == 4
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00000004
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffbffff, 0x00000004, x2, 144, x4)

# rs1_val == -1048577, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00004000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffefffff, 0x00004000, x2, 148, x4)

# rs1_val == -2097153, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000003
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffdfffff, 0x00000003, x2, 152, x4)

# rs1_val == -8388609, rs2_val == -17
# opcode: c.add; op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffffef
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xff7fffff, 0xffffffef, x2, 156, x4)

# rs1_val == -16777217, rs2_val == 32
# opcode: c.add; op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00000020
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfeffffff, 0x00000020, x2, 160, x4)

# rs1_val == -33554433, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00000001
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfdffffff, 0x00000001, x2, 164, x4)

# rs1_val == -67108865, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffffffa
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfbffffff, 0xfffffffa, x2, 168, x4)

# rs1_val == -134217729, rs2_val == 262144
# opcode: c.add; op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00040000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xf7ffffff, 0x00040000, x2, 172, x4)

# rs1_val == -268435457, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xefffffff; op2val:0x55555555
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xefffffff, 0x55555555, x2, 176, x4)

# rs1_val == -536870913, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x10000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xdfffffff, 0x10000000, x2, 180, x4)

# rs1_val == -1073741825, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfffbffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xbfffffff, 0xfffbffff, x2, 184, x4)

# rs1_val == 1431655765, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x55555555; op2val:0xffffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x55555555, 0xffffffff, x2, 188, x4)

# rs1_val == -1431655766, rs2_val == 16
# opcode: c.add; op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x00000010
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xaaaaaaaa, 0x00000010, x2, 192, x4)

# rs2_val == 2, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00000002
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xefffffff, 0x00000002, x2, 196, x4)

# rs2_val == 128, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000080
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x08000000, 0x00000080, x2, 200, x4)

# rs2_val == 256, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000040; op2val:0x00000100
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000040, 0x00000100, x2, 204, x4)

# rs2_val == 512, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000200
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffdffff, 0x00000200, x2, 208, x4)

# rs2_val == 4096, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00001000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffe, 0x00001000, x2, 212, x4)

# rs2_val == 65536, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00010000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffbfff, 0x00010000, x2, 216, x4)

# rs2_val == 4194304, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00400000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x7fffffff, 0x00400000, x2, 220, x4)

# rs2_val == 8388608, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00100000; op2val:0x00800000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00100000, 0x00800000, x2, 224, x4)

# rs2_val == 67108864, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x04000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffd, 0x04000000, x2, 228, x4)

# rs2_val == 536870912, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x20000000; op2val:0x20000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x20000000, 0x20000000, x2, 232, x4)

# rs2_val == 1073741824, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x02000000; op2val:0x40000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x02000000, 0x40000000, x2, 236, x4)

# rs2_val == -2, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffffe
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffefff, 0xfffffffe, x2, 240, x4)

# rs2_val == -3, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffffd
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffefff, 0xfffffffd, x2, 244, x4)

# rs2_val == -33, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xffffffdf
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffdf, 0xffffffdf, x2, 248, x4)

# rs2_val == -257, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x10000000; op2val:0xfffffeff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x10000000, 0xfffffeff, x2, 252, x4)

# rs2_val == -513, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfffffdff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffefffff, 0xfffffdff, x2, 256, x4)

# rs2_val == -2049, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000010; op2val:0xfffff7ff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000010, 0xfffff7ff, x2, 260, x4)

# rs2_val == -4097, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00800000; op2val:0xffffefff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00800000, 0xffffefff, x2, 264, x4)

# rs2_val == -8193, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00400000; op2val:0xffffdfff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00400000, 0xffffdfff, x2, 268, x4)

# rs2_val == -32769, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000009; op2val:0xffff7fff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000009, 0xffff7fff, x2, 272, x4)

# rs2_val == -65537, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x10000000; op2val:0xfffeffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x10000000, 0xfffeffff, x2, 276, x4)

# rs2_val == -131073, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000400; op2val:0xfffdffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000400, 0xfffdffff, x2, 280, x4)

# rs2_val == -1048577, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00001000; op2val:0xffefffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00001000, 0xffefffff, x2, 284, x4)

# rs2_val == -2097153, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x08000000; op2val:0xffdfffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x08000000, 0xffdfffff, x2, 288, x4)

# rs2_val > 0, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffa; op2val:0x00000003
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffa, 0x00000003, x2, 292, x4)

# rs1_val == 256, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x00000100; op2val:0x00000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000100, 0x00000000, x2, 296, x4)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 75*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
