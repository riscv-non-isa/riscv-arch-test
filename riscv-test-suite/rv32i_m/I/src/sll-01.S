
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

la x8,signature_x8_1

# rs1 == rs2 != rd, rs1==x30, rs2==x30, rd==x14, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 27
# opcode: sll ; op1:x30; op2:x30; dest:x14; op1val:0xfffffff6;  op2val:0x0000001b
TEST_RR_OP(sll, x14, x30, x30, 0xb0000000, 0xfffffff6, 0x0000001b, x8, 0, x12)

# rs2 == rd != rs1, rs1==x1, rs2==x23, rd==x23, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1431655765
# opcode: sll ; op1:x1; op2:x23; dest:x23; op1val:0x55555555;  op2val:0x0000001f
TEST_RR_OP(sll, x23, x1, x23, 0x80000000, 0x55555555, 0x0000001f, x8, 4, x12)

# rs1 == rs2 == rd, rs1==x25, rs2==x25, rd==x25, rs1_val < 0 and rs2_val == 0, rs1_val == -16777217
# opcode: sll ; op1:x25; op2:x25; dest:x25; op1val:0xfeffffff;  op2val:0x00000000
TEST_RR_OP(sll, x25, x25, x25, 0xfeffffff, 0xfeffffff, 0x00000000, x8, 8, x12)

# rs1 == rd != rs2, rs1==x31, rs2==x14, rd==x31, rs1_val > 0 and rs2_val == 0, rs1_val == 2
# opcode: sll ; op1:x31; op2:x14; dest:x31; op1val:0x00000002;  op2val:0x00000000
TEST_RR_OP(sll, x31, x31, x14, 0x2, 0x00000002, 0x00000000, x8, 12, x12)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x10, rd==x21, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: sll ; op1:x3; op2:x10; dest:x21; op1val:0x00000009;  op2val:0x00000009
TEST_RR_OP(sll, x21, x3, x10, 0x1200, 0x00000009, 0x00000009, x8, 16, x12)

# rs1==x23, rs2==x5, rd==x13, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -2147483648
# opcode: sll ; op1:x23; op2:x5; dest:x13; op1val:0x80000000;  op2val:0x00000000
TEST_RR_OP(sll, x13, x23, x5, 0x80000000, 0x80000000, 0x00000000, x8, 20, x12)

# rs1==x4, rs2==x29, rd==x17, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sll ; op1:x4; op2:x29; dest:x17; op1val:0x00000000;  op2val:0x00000005
TEST_RR_OP(sll, x17, x4, x29, 0x0, 0x00000000, 0x00000005, x8, 24, x12)

# rs1==x13, rs2==x31, rd==x18, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 8, rs1_val == 2147483647
# opcode: sll ; op1:x13; op2:x31; dest:x18; op1val:0x7fffffff;  op2val:0x00000008
TEST_RR_OP(sll, x18, x13, x31, 0xffffff00, 0x7fffffff, 0x00000008, x8, 28, x12)

# rs1==x6, rs2==x4, rd==x30, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sll ; op1:x6; op2:x4; dest:x30; op1val:0x00000001;  op2val:0x00000005
TEST_RR_OP(sll, x30, x6, x4, 0x20, 0x00000001, 0x00000005, x8, 32, x12)

# rs1==x14, rs2==x13, rd==x2, rs2_val == 1, 
# opcode: sll ; op1:x14; op2:x13; dest:x2; op1val:0x00000000;  op2val:0x00000001
TEST_RR_OP(sll, x2, x14, x13, 0x0, 0x00000000, 0x00000001, x8, 36, x12)

# rs1==x28, rs2==x0, rd==x10, rs2_val == 2, rs1_val == -1431655766
# opcode: sll ; op1:x28; op2:x0; dest:x10; op1val:0xaaaaaaaa;  op2val:0x00000002
TEST_RR_OP(sll, x10, x28, x0, 0xaaaaaaa8, 0xaaaaaaaa, 0x00000002, x8, 40, x12)

# rs1==x10, rs2==x1, rd==x6, rs2_val == 4, rs1_val == 16384
# opcode: sll ; op1:x10; op2:x1; dest:x6; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(sll, x6, x10, x1, 0x40000, 0x00004000, 0x00000004, x8, 44, x12)

# rs1==x24, rs2==x26, rd==x4, rs2_val == 16, rs1_val == 33554432
# opcode: sll ; op1:x24; op2:x26; dest:x4; op1val:0x02000000;  op2val:0x00000010
TEST_RR_OP(sll, x4, x24, x26, 0x0, 0x02000000, 0x00000010, x8, 48, x12)

# rs1==x18, rs2==x7, rd==x3, rs2_val == 30, 
# opcode: sll ; op1:x18; op2:x7; dest:x3; op1val:0x00000005;  op2val:0x0000001e
TEST_RR_OP(sll, x3, x18, x7, 0x40000000, 0x00000005, 0x0000001e, x8, 52, x12)

# rs1==x21, rs2==x22, rd==x19, rs2_val == 29, rs1_val == 4096
# opcode: sll ; op1:x21; op2:x22; dest:x19; op1val:0x00001000;  op2val:0x0000001d
TEST_RR_OP(sll, x19, x21, x22, 0x0, 0x00001000, 0x0000001d, x8, 56, x12)

# rs1==x19, rs2==x6, rd==x5, rs2_val == 23, 
# opcode: sll ; op1:x19; op2:x6; dest:x5; op1val:0xaaaaaaaa;  op2val:0x00000017
TEST_RR_OP(sll, x5, x19, x6, 0x55000000, 0xaaaaaaaa, 0x00000017, x8, 60, x12)

# rs1==x29, rs2==x27, rd==x11, rs2_val == 15, rs1_val == 256
# opcode: sll ; op1:x29; op2:x27; dest:x11; op1val:0x00000100;  op2val:0x0000000f
TEST_RR_OP(sll, x11, x29, x27, 0x800000, 0x00000100, 0x0000000f, x8, 64, x12)

# rs1==x27, rs2==x16, rd==x9, rs2_val == 21, rs1_val == -65537
# opcode: sll ; op1:x27; op2:x16; dest:x9; op1val:0xfffeffff;  op2val:0x00000015
TEST_RR_OP(sll, x9, x27, x16, 0xffe00000, 0xfffeffff, 0x00000015, x8, 68, x12)

# rs1==x15, rs2==x24, rd==x20, rs2_val == 10, 
# opcode: sll ; op1:x15; op2:x24; dest:x20; op1val:0xffffffff;  op2val:0x0000000a
TEST_RR_OP(sll, x20, x15, x24, 0xfffffc00, 0xffffffff, 0x0000000a, x8, 72, x6)
la x4,signature_x4_0

# rs1==x0, rs2==x12, rd==x28, rs1_val == 4, 
# opcode: sll ; op1:x0; op2:x12; dest:x28; op1val:0x00000004;  op2val:0x00000006
TEST_RR_OP(sll, x28, x0, x12, 0x100, 0x00000004, 0x00000006, x4, 0, x6)

# rs1==x7, rs2==x15, rd==x26, rs1_val == 8, 
# opcode: sll ; op1:x7; op2:x15; dest:x26; op1val:0x00000008;  op2val:0x00000017
TEST_RR_OP(sll, x26, x7, x15, 0x4000000, 0x00000008, 0x00000017, x4, 4, x6)

# rs1==x20, rs2==x19, rd==x1, rs1_val == 16, 
# opcode: sll ; op1:x20; op2:x19; dest:x1; op1val:0x00000010;  op2val:0x0000001e
TEST_RR_OP(sll, x1, x20, x19, 0x0, 0x00000010, 0x0000001e, x4, 8, x6)

# rs1==x17, rs2==x21, rd==x8, rs1_val == 32, 
# opcode: sll ; op1:x17; op2:x21; dest:x8; op1val:0x00000020;  op2val:0x00000003
TEST_RR_OP(sll, x8, x17, x21, 0x100, 0x00000020, 0x00000003, x4, 12, x6)

# rs1==x12, rs2==x11, rd==x27, rs1_val == 64, 
# opcode: sll ; op1:x12; op2:x11; dest:x27; op1val:0x00000040;  op2val:0x0000000b
TEST_RR_OP(sll, x27, x12, x11, 0x20000, 0x00000040, 0x0000000b, x4, 16, x6)

# rs1==x5, rs2==x2, rd==x0, rs1_val == 128, 
# opcode: sll ; op1:x5; op2:x2; dest:x0; op1val:0x00000080;  op2val:0x00000013
TEST_RR_OP(sll, x0, x5, x2, 0x4000000, 0x00000080, 0x00000013, x4, 20, x6)

# rs1==x26, rs2==x17, rd==x29, rs1_val == 512, 
# opcode: sll ; op1:x26; op2:x17; dest:x29; op1val:0x00000200;  op2val:0x00000001
TEST_RR_OP(sll, x29, x26, x17, 0x400, 0x00000200, 0x00000001, x4, 24, x6)

# rs1==x8, rs2==x20, rd==x24, rs1_val == 1024, 
# opcode: sll ; op1:x8; op2:x20; dest:x24; op1val:0x00000400;  op2val:0x00000004
TEST_RR_OP(sll, x24, x8, x20, 0x4000, 0x00000400, 0x00000004, x4, 28, x6)

# rs1==x22, rs2==x18, rd==x15, rs1_val == 2048, 
# opcode: sll ; op1:x22; op2:x18; dest:x15; op1val:0x00000800;  op2val:0x00000011
TEST_RR_OP(sll, x15, x22, x18, 0x10000000, 0x00000800, 0x00000011, x4, 32, x6)

# rs1==x2, rs2==x3, rd==x7, rs1_val == 8192, 
# opcode: sll ; op1:x2; op2:x3; dest:x7; op1val:0x00002000;  op2val:0x0000000a
TEST_RR_OP(sll, x7, x2, x3, 0x800000, 0x00002000, 0x0000000a, x4, 36, x6)

# rs1==x11, rs2==x28, rd==x16, rs1_val == 32768, 
# opcode: sll ; op1:x11; op2:x28; dest:x16; op1val:0x00008000;  op2val:0x0000001f
TEST_RR_OP(sll, x16, x11, x28, 0x0, 0x00008000, 0x0000001f, x4, 40, x6)

# rs1==x9, rs2==x8, rd==x12, rs1_val == 65536, 
# opcode: sll ; op1:x9; op2:x8; dest:x12; op1val:0x00010000;  op2val:0x00000017
TEST_RR_OP(sll, x12, x9, x8, 0x0, 0x00010000, 0x00000017, x4, 44, x6)

# rs1==x16, rs2==x9, rd==x22, rs1_val == 131072, 
# opcode: sll ; op1:x16; op2:x9; dest:x22; op1val:0x00020000;  op2val:0x0000000d
TEST_RR_OP(sll, x22, x16, x9, 0x40000000, 0x00020000, 0x0000000d, x4, 48, x6)

# rs1_val == 262144, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x40000, 0x00040000, 0x00000000, x4, 52, x6)

# rs1_val == 524288, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000017
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00080000, 0x00000017, x4, 56, x6)

# rs1_val == 1048576, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0x00100000, 0x0000000b, x4, 60, x6)

# rs1_val == 2097152, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00200000, 0x0000001e, x4, 64, x6)

# rs1_val == 4194304, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x400000, 0x00400000, 0x00000000, x4, 68, x6)

# rs1_val == 8388608, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000008
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0x00800000, 0x00000008, x4, 72, x6)

# rs1_val == 16777216, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x01000000, 0x00000003, x4, 76, x6)

# rs1_val == 67108864, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x04000000, 0x00000006, x4, 80, x6)

# rs1_val == 134217728, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x08000000, 0x00000006, x4, 84, x6)

# rs1_val == 268435456, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0x40000000, 0x10000000, 0x00000002, x4, 88, x6)

# rs1_val == -2049, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0xffe00000, 0xfffff7ff, 0x00000015, x4, 92, x6)

# rs1_val == -4097, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xff7ff800, 0xffffefff, 0x0000000b, x4, 96, x6)

# rs1_val == -8193, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000008
TEST_RR_OP(sll, x12, x10, x11, 0xffdfff00, 0xffffdfff, 0x00000008, x4, 100, x6)

# rs1_val == -16385, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xf7ffe000, 0xffffbfff, 0x0000000d, x4, 104, x6)

# rs1_val == -32769, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000004
TEST_RR_OP(sll, x12, x10, x11, 0xfff7fff0, 0xffff7fff, 0x00000004, x4, 108, x6)

# rs1_val == -131073, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0xff7fffc0, 0xfffdffff, 0x00000006, x4, 112, x6)

# rs1_val == -262145, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xffeffffc, 0xfffbffff, 0x00000002, x4, 116, x6)

# rs1_val == -524289, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xffbffff8, 0xfff7ffff, 0x00000003, x4, 120, x6)

# rs1_val == -1048577, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x7ffff800, 0xffefffff, 0x0000000b, x4, 124, x6)

# rs1_val == -2097153, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xffdfffff, 0x0000001f, x4, 128, x6)

# rs1_val == -4194305, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xffbfffff, 0x0000001f, x4, 132, x6)

# rs1_val == -8388609, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000008
TEST_RR_OP(sll, x12, x10, x11, 0x7fffff00, 0xff7fffff, 0x00000008, x4, 136, x6)

# rs1_val == -33554433, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffffc000, 0xfdffffff, 0x0000000e, x4, 140, x6)

# rs1_val == -67108865, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xfbffffff, 0xfbffffff, 0x00000000, x4, 144, x6)

# rs1_val == -134217729, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffffe00, 0xf7ffffff, 0x00000009, x4, 148, x6)

# rs1_val == -268435457, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0xfff80000, 0xefffffff, 0x00000013, x4, 152, x6)

# rs1_val == -33, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0xfffff7c0, 0xffffffdf, 0x00000006, x4, 156, x6)

# rs1_val == -536870913, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xfffe0000, 0xdfffffff, 0x00000011, x4, 160, x6)

# rs1_val == 536870912, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x20000000, 0x00000013, x4, 164, x6)

# rs1_val == -1073741825, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x0000000a
TEST_RR_OP(sll, x12, x10, x11, 0xfffffc00, 0xbfffffff, 0x0000000a, x4, 168, x6)

# rs1_val == 1073741824, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x40000000, 0x00000007, x4, 172, x6)

# rs1_val == -2, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xfffc0000, 0xfffffffe, 0x00000011, x4, 176, x6)

# rs1_val == -3, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xffffffe8, 0xfffffffd, 0x00000003, x4, 180, x6)

# rs1_val == -5, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffff600, 0xfffffffb, 0x00000009, x4, 184, x6)

# rs1_val == -9, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000004
TEST_RR_OP(sll, x12, x10, x11, 0xffffff70, 0xfffffff7, 0x00000004, x4, 188, x6)

# rs1_val == -17, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0x78000000, 0xffffffef, 0x0000001b, x4, 192, x6)

# rs1_val == -65, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0xffff7e00, 0xffffffbf, 0x00000009, x4, 196, x6)

# rs1_val == -129, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffff7f, 0xffffff7f, 0x00000000, x4, 200, x6)

# rs1_val == -257, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xfffffeff, 0x0000001f, x4, 204, x6)

# rs1_val == -513, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xffeff800, 0xfffffdff, 0x0000000b, x4, 208, x6)

# rs1_val == -1025, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xffffdff8, 0xfffffbff, 0x00000003, x4, 212, x6)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 27
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0xb0000000, 0xfffffff6, 0x0000001b, x4, 216, x6)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1431655765
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0x55555555, 0x0000001f, x4, 220, x6)

# rs1_val < 0 and rs2_val == 0, rs1_val == -16777217
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xfeffffff, 0xfeffffff, 0x00000000, x4, 224, x6)

# rs1_val > 0 and rs2_val == 0, rs1_val == 2
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x2, 0x00000002, 0x00000000, x4, 228, x6)

# rs2_val == 2, rs1_val == -1431655766
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaaaa8, 0xaaaaaaaa, 0x00000002, x4, 232, x6)

# rs1_val == 4, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x100, 0x00000004, 0x00000006, x4, 236, x6)

# rs1_val == 128, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0x4000000, 0x00000080, 0x00000013, x4, 240, x6)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 61*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
