
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 == rs2 != rd, rs1==x6, rs2==x6, rd==x21, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -1073741825, rs2_val == 16
# opcode: srl ; op1:x6; op2:x6; dest:x21; op1val:0xbfffffff;  op2val:0x00000010
TEST_RR_OP(srl, x21, x6, x6, 0xbfff, 0xbfffffff, 0x00000010, x10, 0, x14)

# rs2 == rd != rs1, rs1==x18, rs2==x15, rd==x15, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 33554432
# opcode: srl ; op1:x18; op2:x15; dest:x15; op1val:0x02000000;  op2val:0x00000012
TEST_RR_OP(srl, x15, x18, x15, 0x80, 0x02000000, 0x00000012, x10, 4, x14)

# rs1 == rd != rs2, rs1==x25, rs2==x12, rd==x25, rs1_val < 0 and rs2_val == 0, 
# opcode: srl ; op1:x25; op2:x12; dest:x25; op1val:0xc0000000;  op2val:0x00000000
TEST_RR_OP(srl, x25, x25, x12, 0xc0000000, 0xc0000000, 0x00000000, x10, 8, x14)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x31, rs2==x20, rd==x22, rs1_val > 0 and rs2_val == 0, rs1_val == 2147483647, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen
# opcode: srl ; op1:x31; op2:x20; dest:x22; op1val:0x7fffffff;  op2val:0x00000000
TEST_RR_OP(srl, x22, x31, x20, 0x7fffffff, 0x7fffffff, 0x00000000, x10, 12, x14)

# rs1 == rs2 == rd, rs1==x2, rs2==x2, rd==x2, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: srl ; op1:x2; op2:x2; dest:x2; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(srl, x2, x2, x2, 0x0, 0x00000001, 0x00000001, x10, 16, x14)

# rs1==x0, rs2==x24, rd==x8, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 10, rs1_val == -2147483648
# opcode: srl ; op1:x0; op2:x24; dest:x8; op1val:0x80000000;  op2val:0x0000000a
TEST_RR_OP(srl, x8, x0, x24, 0x200000, 0x80000000, 0x0000000a, x10, 20, x14)

# rs1==x27, rs2==x7, rd==x28, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: srl ; op1:x27; op2:x7; dest:x28; op1val:0x00000000;  op2val:0x00000001
TEST_RR_OP(srl, x28, x27, x7, 0x0, 0x00000000, 0x00000001, x10, 24, x14)

# rs1==x26, rs2==x19, rd==x9, rs2_val == 2, rs1_val == -268435457
# opcode: srl ; op1:x26; op2:x19; dest:x9; op1val:0xefffffff;  op2val:0x00000002
TEST_RR_OP(srl, x9, x26, x19, 0x3bffffff, 0xefffffff, 0x00000002, x10, 28, x14)

# rs1==x11, rs2==x29, rd==x24, rs2_val == 4, rs1_val == 32768
# opcode: srl ; op1:x11; op2:x29; dest:x24; op1val:0x00008000;  op2val:0x00000004
TEST_RR_OP(srl, x24, x11, x29, 0x800, 0x00008000, 0x00000004, x10, 32, x14)

# rs1==x24, rs2==x28, rd==x4, rs2_val == 8, 
# opcode: srl ; op1:x24; op2:x28; dest:x4; op1val:0x00008000;  op2val:0x00000008
TEST_RR_OP(srl, x4, x24, x28, 0x80, 0x00008000, 0x00000008, x10, 36, x14)

# rs1==x3, rs2==x31, rd==x20, rs2_val == 30, rs1_val == 131072
# opcode: srl ; op1:x3; op2:x31; dest:x20; op1val:0x00020000;  op2val:0x0000001e
TEST_RR_OP(srl, x20, x3, x31, 0x0, 0x00020000, 0x0000001e, x10, 40, x14)

# rs1==x29, rs2==x23, rd==x3, rs2_val == 29, rs1_val == 262144
# opcode: srl ; op1:x29; op2:x23; dest:x3; op1val:0x00040000;  op2val:0x0000001d
TEST_RR_OP(srl, x3, x29, x23, 0x0, 0x00040000, 0x0000001d, x10, 44, x14)

# rs1==x8, rs2==x13, rd==x29, rs2_val == 27, rs1_val == -65
# opcode: srl ; op1:x8; op2:x13; dest:x29; op1val:0xffffffbf;  op2val:0x0000001b
TEST_RR_OP(srl, x29, x8, x13, 0x1f, 0xffffffbf, 0x0000001b, x10, 48, x14)

# rs1==x21, rs2==x17, rd==x11, rs2_val == 23, 
# opcode: srl ; op1:x21; op2:x17; dest:x11; op1val:0xc0000000;  op2val:0x00000017
TEST_RR_OP(srl, x11, x21, x17, 0x180, 0xc0000000, 0x00000017, x10, 52, x14)

# rs1==x28, rs2==x26, rd==x27, rs2_val == 15, rs1_val == 8192
# opcode: srl ; op1:x28; op2:x26; dest:x27; op1val:0x00002000;  op2val:0x0000000f
TEST_RR_OP(srl, x27, x28, x26, 0x0, 0x00002000, 0x0000000f, x10, 56, x14)

# rs1==x5, rs2==x8, rd==x12, rs2_val == 21, rs1_val == 1431655765
# opcode: srl ; op1:x5; op2:x8; dest:x12; op1val:0x55555555;  op2val:0x00000015
TEST_RR_OP(srl, x12, x5, x8, 0x2aa, 0x55555555, 0x00000015, x10, 60, x14)

# rs1==x1, rs2==x16, rd==x18, rs1_val == 2, 
# opcode: srl ; op1:x1; op2:x16; dest:x18; op1val:0x00000002;  op2val:0x00000005
TEST_RR_OP(srl, x18, x1, x16, 0x0, 0x00000002, 0x00000005, x10, 64, x14)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x13, rs2==x11, rd==x17, rs1_val == 4, 
# opcode: srl ; op1:x13; op2:x11; dest:x17; op1val:0x00000004;  op2val:0x0000000f
TEST_RR_OP(srl, x17, x13, x11, 0x0, 0x00000004, 0x0000000f, x2, 0, x8)

# rs1==x30, rs2==x27, rd==x0, rs1_val == 8, 
# opcode: srl ; op1:x30; op2:x27; dest:x0; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(srl, x0, x30, x27, 0x0, 0x00000008, 0x00000008, x2, 4, x8)

# rs1==x4, rs2==x5, rd==x10, rs1_val == 16, 
# opcode: srl ; op1:x4; op2:x5; dest:x10; op1val:0x00000010;  op2val:0x00000006
TEST_RR_OP(srl, x10, x4, x5, 0x0, 0x00000010, 0x00000006, x2, 8, x8)

# rs1==x12, rs2==x3, rd==x6, rs1_val == 32, 
# opcode: srl ; op1:x12; op2:x3; dest:x6; op1val:0x00000020;  op2val:0x00000010
TEST_RR_OP(srl, x6, x12, x3, 0x0, 0x00000020, 0x00000010, x2, 12, x8)

# rs1==x19, rs2==x10, rd==x1, rs1_val == 64, 
# opcode: srl ; op1:x19; op2:x10; dest:x1; op1val:0x00000040;  op2val:0x00000003
TEST_RR_OP(srl, x1, x19, x10, 0x8, 0x00000040, 0x00000003, x2, 16, x8)

# rs1==x22, rs2==x4, rd==x13, rs1_val == 128, 
# opcode: srl ; op1:x22; op2:x4; dest:x13; op1val:0x00000080;  op2val:0x00000003
TEST_RR_OP(srl, x13, x22, x4, 0x10, 0x00000080, 0x00000003, x2, 20, x8)

# rs1==x9, rs2==x30, rd==x16, rs1_val == 256, 
# opcode: srl ; op1:x9; op2:x30; dest:x16; op1val:0x00000100;  op2val:0x0000001b
TEST_RR_OP(srl, x16, x9, x30, 0x0, 0x00000100, 0x0000001b, x2, 24, x8)

# rs1==x17, rs2==x18, rd==x30, rs1_val == 512, 
# opcode: srl ; op1:x17; op2:x18; dest:x30; op1val:0x00000200;  op2val:0x00000008
TEST_RR_OP(srl, x30, x17, x18, 0x2, 0x00000200, 0x00000008, x2, 28, x8)

# rs1==x15, rs2==x21, rd==x14, rs1_val == 1024, 
# opcode: srl ; op1:x15; op2:x21; dest:x14; op1val:0x00000400;  op2val:0x00000010
TEST_RR_OP(srl, x14, x15, x21, 0x0, 0x00000400, 0x00000010, x2, 32, x8)

# rs1==x10, rs2==x14, rd==x7, rs1_val == 2048, 
# opcode: srl ; op1:x10; op2:x14; dest:x7; op1val:0x00000800;  op2val:0x0000001e
TEST_RR_OP(srl, x7, x10, x14, 0x0, 0x00000800, 0x0000001e, x2, 36, x8)

# rs1==x16, rs2==x9, rd==x5, rs1_val == 4096, 
# opcode: srl ; op1:x16; op2:x9; dest:x5; op1val:0x00001000;  op2val:0x00000005
TEST_RR_OP(srl, x5, x16, x9, 0x80, 0x00001000, 0x00000005, x2, 40, x8)

# rs1==x14, rs2==x0, rd==x26, rs1_val == 16384, 
# opcode: srl ; op1:x14; op2:x0; dest:x26; op1val:0x00004000;  op2val:0x00000017
TEST_RR_OP(srl, x26, x14, x0, 0x0, 0x00004000, 0x00000017, x2, 44, x8)

# rs1==x23, rs2==x25, rd==x31, rs1_val == 65536, 
# opcode: srl ; op1:x23; op2:x25; dest:x31; op1val:0x00010000;  op2val:0x0000001e
TEST_RR_OP(srl, x31, x23, x25, 0x0, 0x00010000, 0x0000001e, x2, 48, x8)

# rs1==x7, rs2==x1, rd==x19, rs1_val == 524288, 
# opcode: srl ; op1:x7; op2:x1; dest:x19; op1val:0x00080000;  op2val:0x0000000d
TEST_RR_OP(srl, x19, x7, x1, 0x40, 0x00080000, 0x0000000d, x2, 52, x8)

# rs1==x20, rs2==x22, rd==x23, rs1_val == 1048576, 
# opcode: srl ; op1:x20; op2:x22; dest:x23; op1val:0x00100000;  op2val:0x00000010
TEST_RR_OP(srl, x23, x20, x22, 0x10, 0x00100000, 0x00000010, x2, 56, x8)

# rs1_val == 2097152, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0x200, 0x00200000, 0x0000000c, x2, 60, x8)

# rs1_val == 4194304, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x0000001e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00400000, 0x0000001e, x2, 64, x8)

# rs1_val == 8388608, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x4, 0x00800000, 0x00000015, x2, 68, x8)

# rs1_val == 16777216, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x8, 0x01000000, 0x00000015, x2, 72, x8)

# rs1_val == 67108864, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x200, 0x04000000, 0x00000011, x2, 76, x8)

# rs1_val == 134217728, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x08000000, 0x0000000e, x2, 80, x8)

# rs1_val == 268435456, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0x10000, 0x10000000, 0x0000000c, x2, 84, x8)

# rs1_val == -2049, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x7ffffbf, 0xfffff7ff, 0x00000005, x2, 88, x8)

# rs1_val == -4097, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000007
TEST_RR_OP(srl, x12, x10, x11, 0x1ffffdf, 0xffffefff, 0x00000007, x2, 92, x8)

# rs1_val == -8193, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xffffdfff, 0x0000000f, x2, 96, x8)

# rs1_val == -16385, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7fffd, 0xffffbfff, 0x0000000d, x2, 100, x8)

# rs1_val == -32769, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x0000001d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xffff7fff, 0x0000001d, x2, 104, x8)

# rs1_val == -65537, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xfffeffff, 0x00000013, x2, 108, x8)

# rs1_val == -131073, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fff7fff, 0xfffdffff, 0x00000002, x2, 112, x8)

# rs1_val == -262145, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xfffbffff, 0x0000001b, x2, 116, x8)

# rs1_val == -524289, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffdfff, 0xfff7ffff, 0x00000006, x2, 120, x8)

# rs1_val == -1048577, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000017
TEST_RR_OP(srl, x12, x10, x11, 0x1ff, 0xffefffff, 0x00000017, x2, 124, x8)

# rs1_val == -2097153, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fefffff, 0xffdfffff, 0x00000001, x2, 128, x8)

# rs1_val == -4194305, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fdfffff, 0xffbfffff, 0x00000001, x2, 132, x8)

# rs1_val == -8388609, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xff7ff, 0xff7fffff, 0x0000000c, x2, 136, x8)

# rs1_val == -16777217, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x7f7ffff, 0xfeffffff, 0x00000005, x2, 140, x8)

# rs1_val == -33554433, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0xfdffff, 0xfdffffff, 0x00000008, x2, 144, x8)

# rs1_val == -67108865, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x7df, 0xfbffffff, 0x00000015, x2, 148, x8)

# rs1_val == -33, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffdf, 0xffffffdf, 0x00000000, x2, 152, x8)

# rs1_val == -134217729, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1efff, 0xf7ffffff, 0x0000000f, x2, 156, x8)

# rs1_val == -536870913, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x0000000d
TEST_RR_OP(srl, x12, x10, x11, 0x6ffff, 0xdfffffff, 0x0000000d, x2, 160, x8)

# rs1_val == 536870912, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x8000, 0x20000000, 0x0000000e, x2, 164, x8)

# rs1_val == 1073741824, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0x400000, 0x40000000, 0x00000008, x2, 168, x8)

# rs1_val == -2, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x7fff, 0xfffffffe, 0x00000011, x2, 172, x8)

# rs1_val == -5, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ffff, 0xfffffffb, 0x0000000e, x2, 176, x8)

# rs1_val == -1431655766, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000009
TEST_RR_OP(srl, x12, x10, x11, 0x555555, 0xaaaaaaaa, 0x00000009, x2, 180, x8)

# rs1_val == -3, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffff, 0xfffffffd, 0x00000006, x2, 184, x8)

# rs1_val == -9, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xfffffff7, 0x00000013, x2, 188, x8)

# rs1_val == -17, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0xffffff, 0xffffffef, 0x00000008, x2, 192, x8)

# rs1_val == -129, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffdf, 0xffffff7f, 0x00000002, x2, 196, x8)

# rs1_val == -257, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffff7f, 0xfffffeff, 0x00000001, x2, 200, x8)

# rs1_val == -513, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xfffffdff, 0x0000000f, x2, 204, x8)

# rs1_val == -1025, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7ffffdff, 0xfffffbff, 0x00000001, x2, 208, x8)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -1073741825, rs2_val == 16
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xbfff, 0xbfffffff, 0x00000010, x2, 212, x8)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000001, 0x00000001, x2, 216, x8)

# rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 10, rs1_val == -2147483648
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x200000, 0x80000000, 0x0000000a, x2, 220, x8)

# rs1_val == 8, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000008, 0x00000008, x2, 224, x8)

# rs1_val == 16384, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000017
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00004000, 0x00000017, x2, 228, x8)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 58*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
