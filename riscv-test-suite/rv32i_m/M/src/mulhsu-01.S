
#This assembly file tests the mulhsu instruction of the RISC-V M extension for the mulhsu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulhsu)

RVTEST_SIGBASE( x17,signature_x17_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x9, rd==x14, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: mulhsu ; op1:x26; op2:x9; dest:x14; op1val:0x80000000;  op2val:0xfffffffa
TEST_RR_OP(mulhsu, x14, x26, x9, 0x00000000, 0x80000000, 0xfffffffa, x17, 0, x21)

# rs1 == rd != rs2, rs1==x27, rs2==x13, rd==x27, rs1_val == 0, rs2_val == -67108865
# opcode: mulhsu ; op1:x27; op2:x13; dest:x27; op1val:0x00000000;  op2val:0xfbffffff
TEST_RR_OP(mulhsu, x27, x27, x13, 0x00000000, 0x00000000, 0xfbffffff, x17, 4, x21)

# rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 2147483647, rs2_val == 2
# opcode: mulhsu ; op1:x19; op2:x19; dest:x19; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(mulhsu, x19, x19, x19, 0x00000000, 0x7fffffff, 0x00000002, x17, 8, x21)

# rs1 == rs2 != rd, rs1==x28, rs2==x28, rd==x7, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -33554433
# opcode: mulhsu ; op1:x28; op2:x28; dest:x7; op1val:0x00000001;  op2val:0xfdffffff
TEST_RR_OP(mulhsu, x7, x28, x28, 0x00000000, 0x00000001, 0xfdffffff, x17, 12, x21)

# rs2 == rd != rs1, rs1==x12, rs2==x29, rd==x29, rs2_val == (-2**(xlen-1)), rs1_val == -1073741825, rs2_val == -2147483648
# opcode: mulhsu ; op1:x12; op2:x29; dest:x29; op1val:0xbfffffff;  op2val:0x80000000
TEST_RR_OP(mulhsu, x29, x12, x29, 0x00000000, 0xbfffffff, 0x80000000, x17, 16, x21)

# rs1==x30, rs2==x22, rd==x15, rs2_val == 0, rs1_val == 8192
# opcode: mulhsu ; op1:x30; op2:x22; dest:x15; op1val:0x00002000;  op2val:0x00000000
TEST_RR_OP(mulhsu, x15, x30, x22, 0x00000000, 0x00002000, 0x00000000, x17, 20, x21)

# rs1==x10, rs2==x16, rd==x30, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: mulhsu ; op1:x10; op2:x16; dest:x30; op1val:0x00000007;  op2val:0x7fffffff
TEST_RR_OP(mulhsu, x30, x10, x16, 0x00000000, 0x00000007, 0x7fffffff, x17, 24, x21)

# rs1==x8, rs2==x27, rd==x4, rs2_val == 1, 
# opcode: mulhsu ; op1:x8; op2:x27; dest:x4; op1val:0x7fffffff;  op2val:0x00000001
TEST_RR_OP(mulhsu, x4, x8, x27, 0x00000000, 0x7fffffff, 0x00000001, x17, 28, x21)

# rs1==x20, rs2==x23, rd==x10, rs1_val < 0 and rs2_val > 0, rs2_val == 8388608, rs1_val == -5
# opcode: mulhsu ; op1:x20; op2:x23; dest:x10; op1val:0xfffffffb;  op2val:0x00800000
TEST_RR_OP(mulhsu, x10, x20, x23, 0x00000000, 0xfffffffb, 0x00800000, x17, 32, x21)

# rs1==x11, rs2==x3, rd==x24, rs1_val == rs2_val, 
# opcode: mulhsu ; op1:x11; op2:x3; dest:x24; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(mulhsu, x24, x11, x3, 0x00000000, 0x00000001, 0x00000001, x17, 36, x21)

# rs1==x22, rs2==x12, rd==x0, rs1_val == 2, rs2_val == 1431655765
# opcode: mulhsu ; op1:x22; op2:x12; dest:x0; op1val:0x00000002;  op2val:0x55555555
TEST_RR_OP(mulhsu, x0, x22, x12, 0x00000000, 0x00000002, 0x55555555, x17, 40, x21)

# rs1==x2, rs2==x14, rd==x1, rs1_val == 4, rs2_val == 67108864
# opcode: mulhsu ; op1:x2; op2:x14; dest:x1; op1val:0x00000004;  op2val:0x04000000
TEST_RR_OP(mulhsu, x1, x2, x14, 0x00000000, 0x00000004, 0x04000000, x17, 44, x21)

# rs1==x9, rs2==x11, rd==x22, rs1_val == 8, rs2_val == 134217728
# opcode: mulhsu ; op1:x9; op2:x11; dest:x22; op1val:0x00000008;  op2val:0x08000000
TEST_RR_OP(mulhsu, x22, x9, x11, 0x00000000, 0x00000008, 0x08000000, x17, 48, x21)

# rs1==x3, rs2==x30, rd==x5, rs1_val == 16, 
# opcode: mulhsu ; op1:x3; op2:x30; dest:x5; op1val:0x00000010;  op2val:0xfffffff8
TEST_RR_OP(mulhsu, x5, x3, x30, 0x00000000, 0x00000010, 0xfffffff8, x17, 52, x21)

# rs1==x13, rs2==x6, rd==x20, rs1_val == 32, rs2_val == 4
# opcode: mulhsu ; op1:x13; op2:x6; dest:x20; op1val:0x00000020;  op2val:0x00000004
TEST_RR_OP(mulhsu, x20, x13, x6, 0x00000000, 0x00000020, 0x00000004, x17, 56, x21)

# rs1==x18, rs2==x5, rd==x31, rs1_val == 64, 
# opcode: mulhsu ; op1:x18; op2:x5; dest:x31; op1val:0x00000040;  op2val:0x00000005
TEST_RR_OP(mulhsu, x31, x18, x5, 0x00000000, 0x00000040, 0x00000005, x17, 60, x21)
RVTEST_SIGBASE( x19,signature_x19_0)

# rs1==x0, rs2==x15, rd==x3, rs1_val == 128, rs2_val == 524288
# opcode: mulhsu ; op1:x0; op2:x15; dest:x3; op1val:0x00000080;  op2val:0x00080000
TEST_RR_OP(mulhsu, x3, x0, x15, 0x00000000, 0x00000080, 0x00080000, x19, 0, x22)

# rs1==x31, rs2==x10, rd==x26, rs1_val == 256, rs2_val == 4096
# opcode: mulhsu ; op1:x31; op2:x10; dest:x26; op1val:0x00000100;  op2val:0x00001000
TEST_RR_OP(mulhsu, x26, x31, x10, 0x00000000, 0x00000100, 0x00001000, x19, 4, x22)

# rs1==x21, rs2==x24, rd==x28, rs1_val == 512, rs2_val == -2049
# opcode: mulhsu ; op1:x21; op2:x24; dest:x28; op1val:0x00000200;  op2val:0xfffff7ff
TEST_RR_OP(mulhsu, x28, x21, x24, 0x00000000, 0x00000200, 0xfffff7ff, x19, 8, x22)

# rs1==x24, rs2==x2, rd==x21, rs1_val == 1024, rs2_val == -33
# opcode: mulhsu ; op1:x24; op2:x2; dest:x21; op1val:0x00000400;  op2val:0xffffffdf
TEST_RR_OP(mulhsu, x21, x24, x2, 0x00000000, 0x00000400, 0xffffffdf, x19, 12, x22)

# rs1==x7, rs2==x31, rd==x18, rs1_val == 2048, 
# opcode: mulhsu ; op1:x7; op2:x31; dest:x18; op1val:0x00000800;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x18, x7, x31, 0x00000000, 0x00000800, 0xfffffff9, x19, 16, x22)

# rs1==x15, rs2==x4, rd==x17, rs1_val == 4096, rs2_val == -1048577
# opcode: mulhsu ; op1:x15; op2:x4; dest:x17; op1val:0x00001000;  op2val:0xffefffff
TEST_RR_OP(mulhsu, x17, x15, x4, 0x00000000, 0x00001000, 0xffefffff, x19, 20, x22)

# rs1==x25, rs2==x26, rd==x13, rs1_val == 16384, 
# opcode: mulhsu ; op1:x25; op2:x26; dest:x13; op1val:0x00004000;  op2val:0xc0000000
TEST_RR_OP(mulhsu, x13, x25, x26, 0x00000000, 0x00004000, 0xc0000000, x19, 24, x22)

# rs1==x14, rs2==x1, rd==x9, rs1_val == 32768, rs2_val == -513
# opcode: mulhsu ; op1:x14; op2:x1; dest:x9; op1val:0x00008000;  op2val:0xfffffdff
TEST_RR_OP(mulhsu, x9, x14, x1, 0x00000000, 0x00008000, 0xfffffdff, x19, 28, x22)

# rs1==x1, rs2==x17, rd==x2, rs1_val == 65536, 
# opcode: mulhsu ; op1:x1; op2:x17; dest:x2; op1val:0x00010000;  op2val:0x00000006
TEST_RR_OP(mulhsu, x2, x1, x17, 0x00000000, 0x00010000, 0x00000006, x19, 32, x22)

# rs1==x6, rs2==x7, rd==x12, rs1_val == 131072, rs2_val == -4097
# opcode: mulhsu ; op1:x6; op2:x7; dest:x12; op1val:0x00020000;  op2val:0xffffefff
TEST_RR_OP(mulhsu, x12, x6, x7, 0x00000000, 0x00020000, 0xffffefff, x19, 36, x22)

# rs1==x16, rs2==x25, rd==x11, rs1_val == 262144, rs2_val == -65537
# opcode: mulhsu ; op1:x16; op2:x25; dest:x11; op1val:0x00040000;  op2val:0xfffeffff
TEST_RR_OP(mulhsu, x11, x16, x25, 0x00000000, 0x00040000, 0xfffeffff, x19, 40, x22)

# rs1==x29, rs2==x0, rd==x8, rs1_val == 524288, rs2_val == -268435457
# opcode: mulhsu ; op1:x29; op2:x0; dest:x8; op1val:0x00080000;  op2val:0xefffffff
TEST_RR_OP(mulhsu, x8, x29, x0, 0x00000000, 0x00080000, 0xefffffff, x19, 44, x22)

# rs1==x17, rs2==x8, rd==x25, rs1_val == 1048576, rs2_val == -1073741825
# opcode: mulhsu ; op1:x17; op2:x8; dest:x25; op1val:0x00100000;  op2val:0xbfffffff
TEST_RR_OP(mulhsu, x25, x17, x8, 0x00000000, 0x00100000, 0xbfffffff, x19, 48, x22)

# rs1==x23, rs2==x18, rd==x16, rs1_val == 2097152, rs2_val == -3
# opcode: mulhsu ; op1:x23; op2:x18; dest:x16; op1val:0x00200000;  op2val:0xfffffffd
TEST_RR_OP(mulhsu, x16, x23, x18, 0x00000000, 0x00200000, 0xfffffffd, x19, 52, x22)

# rs1==x4, rs2==x20, rd==x6, rs1_val == 4194304, rs2_val == 2097152
# opcode: mulhsu ; op1:x4; op2:x20; dest:x6; op1val:0x00400000;  op2val:0x00200000
TEST_RR_OP(mulhsu, x6, x4, x20, 0x00000000, 0x00400000, 0x00200000, x19, 56, x22)

# rs1==x5, rs2==x21, rd==x23, rs1_val == 8388608, rs2_val == -8193
# opcode: mulhsu ; op1:x5; op2:x21; dest:x23; op1val:0x00800000;  op2val:0xffffdfff
TEST_RR_OP(mulhsu, x23, x5, x21, 0x00000000, 0x00800000, 0xffffdfff, x19, 60, x22)

# rs1_val == 16777216, rs2_val == -262145
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffbffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x01000000, 0xfffbffff, x19, 64, x1)

# rs1_val == 33554432, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x02000000, 0xffffffff, x19, 68, x1)

# rs1_val == 67108864, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x04000000, 0xfffffff9, x19, 72, x1)

# rs1_val == 134217728, rs2_val == 268435456
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x10000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x08000000, 0x10000000, x19, 76, x1)

# rs1_val == 268435456, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xefffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x10000000, 0xefffffff, x19, 80, x1)

# rs1_val == 536870912, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x20000000, 0x00080000, x19, 84, x1)

# rs1_val == 1073741824, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffbffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x40000000, 0xfffbffff, x19, 88, x1)

# rs1_val == -2, rs2_val == -131073
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffdffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffdffff, x19, 92, x1)

# rs1_val == -3, rs2_val == -536870913
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xdfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xdfffffff, x19, 96, x1)

# rs1_val == -9, rs2_val == -17
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffffef
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffff7, 0xffffffef, x19, 100, x1)

# rs1_val == -17, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffffa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffffffa, x19, 104, x1)

# rs1_val == -33, rs2_val == -16385
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffffbfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xffffbfff, x19, 108, x1)

# rs2_val == -524289, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfff7ffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000006, 0xfff7ffff, x19, 112, x1)

# rs2_val == -2097153, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xffdfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000004, 0xffdfffff, x19, 116, x1)

# rs2_val == -4194305, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xffbfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000040, 0xffbfffff, x19, 120, x1)

# rs2_val == -8388609, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xff7fffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00008000, 0xff7fffff, x19, 124, x1)

# rs2_val == -16777217, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfeffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfeffffff, x19, 128, x1)

# rs2_val == -134217729, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xf7ffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000400, 0xf7ffffff, x19, 132, x1)

# rs2_val == -1431655766, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xaaaaaaaa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00400000, 0xaaaaaaaa, x19, 136, x1)

# rs1_val == -65, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xbfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffbf, 0xbfffffff, x19, 140, x1)

# rs1_val == -129, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000006
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00000006, x19, 144, x1)

# rs1_val == -257, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffffd
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffffffd, x19, 148, x1)

# rs1_val == -513, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000004
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00000004, x19, 152, x1)

# rs1_val == -1025, rs2_val == 512
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000200
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00000200, x19, 156, x1)

# rs1_val == -2049, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffff6
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfffffff6, x19, 160, x1)

# rs1_val == -4097, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xaaaaaaaa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffefff, 0xaaaaaaaa, x19, 164, x1)

# rs1_val == -8193, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffdff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffffdff, x19, 168, x1)

# rs1_val == -16385, rs2_val == 16777216
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x01000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffbfff, 0x01000000, x19, 172, x1)

# rs1_val == -32769, rs2_val == 16
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000010
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffff7fff, 0x00000010, x19, 176, x1)

# rs1_val == -65537, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xff7fffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffeffff, 0xff7fffff, x19, 180, x1)

# rs1_val == -131073, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffffefff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffdffff, 0xffffefff, x19, 184, x1)

# rs1_val == -262145, rs2_val == 16384
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00004000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00004000, x19, 188, x1)

# rs1_val == -524289, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000009
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000009, x19, 192, x1)

# rs1_val == -1048577, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffbfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffefffff, 0xffffbfff, x19, 196, x1)

# rs1_val == -2097153, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000010
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffdfffff, 0x00000010, x19, 200, x1)

# rs1_val == -4194305, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x55555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x55555555, x19, 204, x1)

# rs1_val == -8388609, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffffff9, x19, 208, x1)

# rs1_val == -16777217, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00000000, x19, 212, x1)

# rs1_val == -33554433, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x3fffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfdffffff, 0x3fffffff, x19, 216, x1)

# rs1_val == -67108865, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x7fffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfbffffff, 0x7fffffff, x19, 220, x1)

# rs1_val == -134217729, rs2_val == -2
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffffffe
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xfffffffe, x19, 224, x1)

# rs1_val == -268435457, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00200000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xefffffff, 0x00200000, x19, 228, x1)

# rs1_val == -536870913, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xdfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xdfffffff, 0xdfffffff, x19, 232, x1)

# rs1_val == 1431655765, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffffffef
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x55555555, 0xffffffef, x19, 236, x1)

# rs1_val == -1431655766, rs2_val == -9
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffff7
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffff7, x19, 240, x1)

# rs2_val == 8, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000008
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00010000, 0x00000008, x19, 244, x1)

# rs2_val == 32, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00000020
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000020, 0x00000020, x19, 248, x1)

# rs2_val == 64, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000040
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000040, x19, 252, x1)

# rs2_val == 128, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00000080
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000004, 0x00000080, x19, 256, x1)

# rs2_val == 256, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00000100
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000040, 0x00000100, x19, 260, x1)

# rs2_val == 1024, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000400
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000005, 0x00000400, x19, 264, x1)

# rs2_val == 2048, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0x00000800
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffa, 0x00000800, x19, 268, x1)

# rs2_val == 8192, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00002000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfbffffff, 0x00002000, x19, 272, x1)

# rs2_val == 262144, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00040000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x40000000, 0x00040000, x19, 276, x1)

# rs2_val == 1048576, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00100000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000002, 0x00100000, x19, 280, x1)

# rs2_val == 4194304, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00400000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00040000, 0x00400000, x19, 284, x1)

# rs2_val == 33554432, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x02000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00400000, 0x02000000, x19, 288, x1)

# rs2_val == 536870912, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x20000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000100, 0x20000000, x19, 292, x1)

# rs2_val == 1073741824, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x40000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x40000000, 0x40000000, x19, 296, x1)

# rs2_val == -5, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffffb
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00008000, 0xfffffffb, x19, 300, x1)

# rs2_val == -65, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffffbf
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xffffffbf, x19, 304, x1)

# rs2_val == -129, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffff7f
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffbfffff, 0xffffff7f, x19, 308, x1)

# rs2_val == 32768, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00008000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00008000, x19, 312, x1)

# rs2_val == -257, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffeff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffdfffff, 0xfffffeff, x19, 316, x1)

# rs2_val == -1025, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffbff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffbff, x19, 320, x1)

# rs2_val == -32769, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xffff7fff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00008000, 0xffff7fff, x19, 324, x1)

# rs2_val == 65536, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00010000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x04000000, 0x00010000, x19, 328, x1)

# rs2_val == 131072, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00020000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xc0000000, 0x00020000, x19, 332, x1)

# rs1_val == 0, rs2_val == -67108865
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfbffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000000, 0xfbffffff, x19, 336, x1)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 2147483647, rs2_val == 2
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00000002, x19, 340, x1)

# rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -33554433
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfdffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000001, 0xfdffffff, x19, 344, x1)

# rs2_val == (-2**(xlen-1)), rs1_val == -1073741825, rs2_val == -2147483648
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x80000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x80000000, x19, 348, x1)

# rs1_val == 2, rs2_val == 1431655765
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x55555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000002, 0x55555555, x19, 352, x1)

# rs1_val == 128, rs2_val == 524288
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000080, 0x00080000, x19, 356, x1)

# rs1_val == 524288, rs2_val == -268435457
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xefffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00080000, 0xefffffff, x19, 360, x1)
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

signature_x17_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x17_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x19_0:
    .fill 91*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
