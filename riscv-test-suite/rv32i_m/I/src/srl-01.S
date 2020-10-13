
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x10, rs2==x15, rd==x2, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -1073741825
# opcode: srl ; op1:x10; op2:x15; dest:x2; op1val:0xbfffffff;  op2val:0x0000000b
TEST_RR_OP(srl, x2, x10, x15, 0x17ffff, 0xbfffffff, 0x0000000b, x7, 0, x22)

# rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x14, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 4096
# opcode: srl ; op1:x12; op2:x12; dest:x14; op1val:0x00001000;  op2val:0x00000011
TEST_RR_OP(srl, x14, x12, x12, 0x0, 0x00001000, 0x00000011, x7, 4, x22)

# rs1 == rd != rs2, rs1==x25, rs2==x26, rd==x25, rs1_val < 0 and rs2_val == 0, 
# opcode: srl ; op1:x25; op2:x26; dest:x25; op1val:0xfffffffc;  op2val:0x00000000
TEST_RR_OP(srl, x25, x25, x26, 0xfffffffc, 0xfffffffc, 0x00000000, x7, 8, x22)

# rs2 == rd != rs1, rs1==x13, rs2==x17, rd==x17, rs1_val > 0 and rs2_val == 0, rs1_val == 2
# opcode: srl ; op1:x13; op2:x17; dest:x17; op1val:0x00000002;  op2val:0x00000000
TEST_RR_OP(srl, x17, x13, x17, 0x2, 0x00000002, 0x00000000, x7, 12, x22)

# rs1 == rs2 == rd, rs1==x9, rs2==x9, rd==x9, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: srl ; op1:x9; op2:x9; dest:x9; op1val:0x00000005;  op2val:0x00000005
TEST_RR_OP(srl, x9, x9, x9, 0x0, 0x00000005, 0x00000005, x7, 16, x22)

# rs1==x24, rs2==x20, rd==x26, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 8, rs1_val == -2147483648
# opcode: srl ; op1:x24; op2:x20; dest:x26; op1val:0x80000000;  op2val:0x00000008
TEST_RR_OP(srl, x26, x24, x20, 0x800000, 0x80000000, 0x00000008, x7, 20, x22)

# rs1==x19, rs2==x27, rd==x1, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1
# opcode: srl ; op1:x19; op2:x27; dest:x1; op1val:0x00000000;  op2val:0x00000001
TEST_RR_OP(srl, x1, x19, x27, 0x0, 0x00000000, 0x00000001, x7, 24, x22)

# rs1==x26, rs2==x3, rd==x21, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
# opcode: srl ; op1:x26; op2:x3; dest:x21; op1val:0x7fffffff;  op2val:0x00000006
TEST_RR_OP(srl, x21, x26, x3, 0x1ffffff, 0x7fffffff, 0x00000006, x7, 28, x22)

# rs1==x20, rs2==x11, rd==x30, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 15, rs1_val == 1
# opcode: srl ; op1:x20; op2:x11; dest:x30; op1val:0x00000001;  op2val:0x0000000f
TEST_RR_OP(srl, x30, x20, x11, 0x0, 0x00000001, 0x0000000f, x7, 32, x22)

# rs1==x5, rs2==x1, rd==x16, rs2_val == 2, rs1_val == 536870912
# opcode: srl ; op1:x5; op2:x1; dest:x16; op1val:0x20000000;  op2val:0x00000002
TEST_RR_OP(srl, x16, x5, x1, 0x8000000, 0x20000000, 0x00000002, x7, 36, x22)

# rs1==x8, rs2==x28, rd==x11, rs2_val == 4, rs1_val == -3
# opcode: srl ; op1:x8; op2:x28; dest:x11; op1val:0xfffffffd;  op2val:0x00000004
TEST_RR_OP(srl, x11, x8, x28, 0xfffffff, 0xfffffffd, 0x00000004, x7, 40, x22)

# rs1==x11, rs2==x21, rd==x4, rs2_val == 16, rs1_val == 16384
# opcode: srl ; op1:x11; op2:x21; dest:x4; op1val:0x00004000;  op2val:0x00000010
TEST_RR_OP(srl, x4, x11, x21, 0x0, 0x00004000, 0x00000010, x7, 44, x22)

# rs1==x16, rs2==x0, rd==x13, rs2_val == 30, rs1_val == -32769
# opcode: srl ; op1:x16; op2:x0; dest:x13; op1val:0xffff7fff;  op2val:0x0000001e
TEST_RR_OP(srl, x13, x16, x0, 0x3, 0xffff7fff, 0x0000001e, x7, 48, x22)

# rs1==x15, rs2==x24, rd==x28, rs2_val == 29, rs1_val == 32
# opcode: srl ; op1:x15; op2:x24; dest:x28; op1val:0x00000020;  op2val:0x0000001d
TEST_RR_OP(srl, x28, x15, x24, 0x0, 0x00000020, 0x0000001d, x7, 52, x22)

# rs1==x14, rs2==x6, rd==x3, rs2_val == 27, rs1_val == -2049
# opcode: srl ; op1:x14; op2:x6; dest:x3; op1val:0xfffff7ff;  op2val:0x0000001b
TEST_RR_OP(srl, x3, x14, x6, 0x1f, 0xfffff7ff, 0x0000001b, x7, 56, x22)

# rs1==x2, rs2==x30, rd==x27, rs2_val == 23, 
# opcode: srl ; op1:x2; op2:x30; dest:x27; op1val:0x00000003;  op2val:0x00000017
TEST_RR_OP(srl, x27, x2, x30, 0x0, 0x00000003, 0x00000017, x7, 60, x22)

# rs1==x21, rs2==x31, rd==x18, rs2_val == 21, rs1_val == -4097
# opcode: srl ; op1:x21; op2:x31; dest:x18; op1val:0xffffefff;  op2val:0x00000015
TEST_RR_OP(srl, x18, x21, x31, 0x7ff, 0xffffefff, 0x00000015, x7, 64, x22)

# rs1==x27, rs2==x29, rd==x31, rs2_val == 10, 
# opcode: srl ; op1:x27; op2:x29; dest:x31; op1val:0x3fffffff;  op2val:0x0000000a
TEST_RR_OP(srl, x31, x27, x29, 0xfffff, 0x3fffffff, 0x0000000a, x7, 68, x11)
RVTEST_SIGBASE( x9,signature_x9_0)

# rs1==x18, rs2==x2, rd==x5, rs1_val == 4, 
# opcode: srl ; op1:x18; op2:x2; dest:x5; op1val:0x00000004;  op2val:0x0000001e
TEST_RR_OP(srl, x5, x18, x2, 0x0, 0x00000004, 0x0000001e, x9, 0, x11)

# rs1==x29, rs2==x22, rd==x20, rs1_val == 8, 
# opcode: srl ; op1:x29; op2:x22; dest:x20; op1val:0x00000008;  op2val:0x0000001f
TEST_RR_OP(srl, x20, x29, x22, 0x0, 0x00000008, 0x0000001f, x9, 4, x11)

# rs1==x23, rs2==x10, rd==x0, rs1_val == 16, 
# opcode: srl ; op1:x23; op2:x10; dest:x0; op1val:0x00000010;  op2val:0x00000012
TEST_RR_OP(srl, x0, x23, x10, 0x0, 0x00000010, 0x00000012, x9, 8, x11)

# rs1==x31, rs2==x19, rd==x6, rs1_val == 64, 
# opcode: srl ; op1:x31; op2:x19; dest:x6; op1val:0x00000040;  op2val:0x00000011
TEST_RR_OP(srl, x6, x31, x19, 0x0, 0x00000040, 0x00000011, x9, 12, x11)

# rs1==x0, rs2==x13, rd==x23, rs1_val == 128, 
# opcode: srl ; op1:x0; op2:x13; dest:x23; op1val:0x00000080;  op2val:0x00000010
TEST_RR_OP(srl, x23, x0, x13, 0x0, 0x00000080, 0x00000010, x9, 16, x11)

# rs1==x30, rs2==x25, rd==x8, rs1_val == 256, 
# opcode: srl ; op1:x30; op2:x25; dest:x8; op1val:0x00000100;  op2val:0x00000006
TEST_RR_OP(srl, x8, x30, x25, 0x4, 0x00000100, 0x00000006, x9, 20, x11)

# rs1==x7, rs2==x5, rd==x10, rs1_val == 512, 
# opcode: srl ; op1:x7; op2:x5; dest:x10; op1val:0x00000200;  op2val:0x0000001e
TEST_RR_OP(srl, x10, x7, x5, 0x0, 0x00000200, 0x0000001e, x9, 24, x11)

# rs1==x6, rs2==x8, rd==x12, rs1_val == 1024, 
# opcode: srl ; op1:x6; op2:x8; dest:x12; op1val:0x00000400;  op2val:0x0000001d
TEST_RR_OP(srl, x12, x6, x8, 0x0, 0x00000400, 0x0000001d, x9, 28, x11)

# rs1==x28, rs2==x23, rd==x19, rs1_val == 2048, 
# opcode: srl ; op1:x28; op2:x23; dest:x19; op1val:0x00000800;  op2val:0x00000000
TEST_RR_OP(srl, x19, x28, x23, 0x800, 0x00000800, 0x00000000, x9, 32, x11)

# rs1==x3, rs2==x4, rd==x29, rs1_val == 8192, 
# opcode: srl ; op1:x3; op2:x4; dest:x29; op1val:0x00002000;  op2val:0x00000004
TEST_RR_OP(srl, x29, x3, x4, 0x200, 0x00002000, 0x00000004, x9, 36, x11)

# rs1==x4, rs2==x14, rd==x7, rs1_val == 32768, 
# opcode: srl ; op1:x4; op2:x14; dest:x7; op1val:0x00008000;  op2val:0x00000015
TEST_RR_OP(srl, x7, x4, x14, 0x0, 0x00008000, 0x00000015, x9, 40, x11)

# rs1==x22, rs2==x16, rd==x24, rs1_val == 65536, 
# opcode: srl ; op1:x22; op2:x16; dest:x24; op1val:0x00010000;  op2val:0x0000001f
TEST_RR_OP(srl, x24, x22, x16, 0x0, 0x00010000, 0x0000001f, x9, 44, x11)

# rs1==x17, rs2==x18, rd==x15, rs1_val == 131072, 
# opcode: srl ; op1:x17; op2:x18; dest:x15; op1val:0x00020000;  op2val:0x00000009
TEST_RR_OP(srl, x15, x17, x18, 0x100, 0x00020000, 0x00000009, x9, 48, x11)

# rs1==x1, rs2==x7, rd==x22, rs1_val == 262144, 
# opcode: srl ; op1:x1; op2:x7; dest:x22; op1val:0x00040000;  op2val:0x00000015
TEST_RR_OP(srl, x22, x1, x7, 0x0, 0x00040000, 0x00000015, x9, 52, x11)

# rs1_val == 524288, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x2, 0x00080000, 0x00000012, x9, 56, x1)

# rs1_val == 1048576, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0x100, 0x00100000, 0x0000000c, x9, 60, x1)

# rs1_val == 2097152, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00200000, 0x0000001f, x9, 64, x1)

# rs1_val == 4194304, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000004
TEST_RR_OP(srl, x12, x10, x11, 0x40000, 0x00400000, 0x00000004, x9, 68, x1)

# rs1_val == 8388608, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000003
TEST_RR_OP(srl, x12, x10, x11, 0x100000, 0x00800000, 0x00000003, x9, 72, x1)

# rs1_val == 16777216, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000017
TEST_RR_OP(srl, x12, x10, x11, 0x2, 0x01000000, 0x00000017, x9, 76, x1)

# rs1_val == 33554432, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0x200, 0x02000000, 0x00000010, x9, 80, x1)

# rs1_val == 67108864, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x1000, 0x04000000, 0x0000000e, x9, 84, x1)

# rs1_val == -8193, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ffff, 0xffffdfff, 0x0000000e, x9, 88, x1)

# rs1_val == -16385, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffffbfff, 0x0000001b, x9, 92, x1)

# rs1_val == -65537, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x7fff7ff, 0xfffeffff, 0x00000005, x9, 96, x1)

# rs1_val == -131073, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x3fff7f, 0xfffdffff, 0x0000000a, x9, 100, x1)

# rs1_val == -262145, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000007
TEST_RR_OP(srl, x12, x10, x11, 0x1fff7ff, 0xfffbffff, 0x00000007, x9, 104, x1)

# rs1_val == -524289, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1ffeff, 0xfff7ffff, 0x0000000b, x9, 108, x1)

# rs1_val == -1048577, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xffef, 0xffefffff, 0x00000010, x9, 112, x1)

# rs1_val == -2097153, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffdfffff, 0x0000001b, x9, 116, x1)

# rs1_val == -4194305, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xffbff, 0xffbfffff, 0x0000000c, x9, 120, x1)

# rs1_val == -8388609, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x7fbf, 0xff7fffff, 0x00000011, x9, 124, x1)

# rs1_val == -16777217, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1fdff, 0xfeffffff, 0x0000000f, x9, 128, x1)

# rs1_val == -33554433, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000004
TEST_RR_OP(srl, x12, x10, x11, 0xfdfffff, 0xfdffffff, 0x00000004, x9, 132, x1)

# rs1_val == -67108865, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7dffffff, 0xfbffffff, 0x00000001, x9, 136, x1)

# rs1_val == -134217729, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1effff, 0xf7ffffff, 0x0000000b, x9, 140, x1)

# rs1_val == -268435457, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3bffffff, 0xefffffff, 0x00000002, x9, 144, x1)

# rs1_val == -536870913, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x37ffffff, 0xdfffffff, 0x00000002, x9, 148, x1)

# rs1_val == -33, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffef, 0xffffffdf, 0x00000001, x9, 152, x1)

# rs1_val == 134217728, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x2000000, 0x08000000, 0x00000002, x9, 156, x1)

# rs1_val == 268435456, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0x20000, 0x10000000, 0x0000000b, x9, 160, x1)

# rs1_val == 1073741824, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x100000, 0x40000000, 0x0000000a, x9, 164, x1)

# rs1_val == 1431655765, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0xaaaaa, 0x55555555, 0x0000000b, x9, 168, x1)

# rs1_val == -2, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffff, 0xfffffffe, 0x00000002, x9, 172, x1)

# rs1_val == -1431655766, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x5555, 0xaaaaaaaa, 0x00000011, x9, 176, x1)

# rs1_val == -5, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xfffffffb, 0x0000001b, x9, 180, x1)

# rs1_val == -9, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fff, 0xfffffff7, 0x00000012, x9, 184, x1)

# rs1_val == -17, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ffff, 0xffffffef, 0x0000000e, x9, 188, x1)

# rs1_val == -65, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffdf, 0xffffffbf, 0x00000001, x9, 192, x1)

# rs1_val == -129, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffff7f, 0xffffff7f, 0x00000000, x9, 196, x1)

# rs1_val == -257, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffbf, 0xfffffeff, 0x00000002, x9, 200, x1)

# rs1_val == -513, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xfffffdff, 0xfffffdff, 0x00000000, x9, 204, x1)

# rs1_val == -1025, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000007
TEST_RR_OP(srl, x12, x10, x11, 0x1fffff7, 0xfffffbff, 0x00000007, x9, 208, x1)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 4096
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00001000, 0x00000011, x9, 212, x1)

# rs1_val < 0 and rs2_val == 0, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xfffffffc, 0xfffffffc, 0x00000000, x9, 216, x1)

# rs1_val > 0 and rs2_val == 0, rs1_val == 2
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0x2, 0x00000002, 0x00000000, x9, 220, x1)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000005, 0x00000005, x9, 224, x1)

# rs2_val == 30, rs1_val == -32769
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x0000001e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xffff7fff, 0x0000001e, x9, 228, x1)

# rs1_val == 16, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000010, 0x00000012, x9, 232, x1)

# rs1_val == 128, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000080, 0x00000010, x9, 236, x1)
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
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x9_0:
    .fill 60*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
