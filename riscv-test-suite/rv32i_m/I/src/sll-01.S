
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x9, rd==x14, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 1, rs1_val == -129
# opcode: sll ; op1:x3; op2:x9; dest:x14; op1val:0xffffff7f;  op2val:0x00000001
TEST_RR_OP(sll, x14, x3, x9, 0xfffffefe, 0xffffff7f, 0x00000001, x12, 0, x17)

# rs1 == rd != rs2, rs1==x28, rs2==x0, rd==x28, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, 
# opcode: sll ; op1:x28; op2:x0; dest:x28; op1val:0x00000005;  op2val:0x0000000b
TEST_RR_OP(sll, x28, x28, x0, 0x2800, 0x00000005, 0x0000000b, x12, 4, x17)

# rs1 == rs2 != rd, rs1==x22, rs2==x22, rd==x25, rs1_val < 0 and rs2_val == 0, rs1_val == -1073741825
# opcode: sll ; op1:x22; op2:x22; dest:x25; op1val:0xbfffffff;  op2val:0x00000000
TEST_RR_OP(sll, x25, x22, x22, 0xbfffffff, 0xbfffffff, 0x00000000, x12, 8, x17)

# rs2 == rd != rs1, rs1==x4, rs2==x19, rd==x19, rs1_val > 0 and rs2_val == 0, rs1_val == 512
# opcode: sll ; op1:x4; op2:x19; dest:x19; op1val:0x00000200;  op2val:0x00000000
TEST_RR_OP(sll, x19, x4, x19, 0x200, 0x00000200, 0x00000000, x12, 12, x17)

# rs1 == rs2 == rd, rs1==x20, rs2==x20, rd==x20, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 8, rs2_val == 8
# opcode: sll ; op1:x20; op2:x20; dest:x20; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sll, x20, x20, x20, 0x800, 0x00000008, 0x00000008, x12, 16, x17)

# rs1==x0, rs2==x24, rd==x22, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -2147483648
# opcode: sll ; op1:x0; op2:x24; dest:x22; op1val:0x80000000;  op2val:0x0000000e
TEST_RR_OP(sll, x22, x0, x24, 0x0, 0x80000000, 0x0000000e, x12, 20, x17)

# rs1==x23, rs2==x16, rd==x11, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sll ; op1:x23; op2:x16; dest:x11; op1val:0x00000000;  op2val:0x0000000c
TEST_RR_OP(sll, x11, x23, x16, 0x0, 0x00000000, 0x0000000c, x12, 24, x17)

# rs1==x13, rs2==x23, rd==x7, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647, rs2_val == 30
# opcode: sll ; op1:x13; op2:x23; dest:x7; op1val:0x7fffffff;  op2val:0x0000001e
TEST_RR_OP(sll, x7, x13, x23, 0xc0000000, 0x7fffffff, 0x0000001e, x12, 28, x17)

# rs1==x2, rs2==x29, rd==x0, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sll ; op1:x2; op2:x29; dest:x0; op1val:0x00000001;  op2val:0x00000006
TEST_RR_OP(sll, x0, x2, x29, 0x40, 0x00000001, 0x00000006, x12, 32, x17)

# rs1==x15, rs2==x2, rd==x10, rs2_val == 2, rs1_val == 2
# opcode: sll ; op1:x15; op2:x2; dest:x10; op1val:0x00000002;  op2val:0x00000002
TEST_RR_OP(sll, x10, x15, x2, 0x8, 0x00000002, 0x00000002, x12, 36, x17)

# rs1==x29, rs2==x25, rd==x26, rs2_val == 4, rs1_val == -9
# opcode: sll ; op1:x29; op2:x25; dest:x26; op1val:0xfffffff7;  op2val:0x00000004
TEST_RR_OP(sll, x26, x29, x25, 0xffffff70, 0xfffffff7, 0x00000004, x12, 40, x17)

# rs1==x30, rs2==x21, rd==x1, rs2_val == 16, rs1_val == 64
# opcode: sll ; op1:x30; op2:x21; dest:x1; op1val:0x00000040;  op2val:0x00000010
TEST_RR_OP(sll, x1, x30, x21, 0x400000, 0x00000040, 0x00000010, x12, 44, x17)

# rs1==x1, rs2==x5, rd==x30, rs2_val == 29, 
# opcode: sll ; op1:x1; op2:x5; dest:x30; op1val:0x00000040;  op2val:0x0000001d
TEST_RR_OP(sll, x30, x1, x5, 0x0, 0x00000040, 0x0000001d, x12, 48, x17)

# rs1==x25, rs2==x18, rd==x24, rs2_val == 27, rs1_val == 1073741824
# opcode: sll ; op1:x25; op2:x18; dest:x24; op1val:0x40000000;  op2val:0x0000001b
TEST_RR_OP(sll, x24, x25, x18, 0x0, 0x40000000, 0x0000001b, x12, 52, x17)

# rs1==x8, rs2==x1, rd==x4, rs2_val == 23, rs1_val == 1048576
# opcode: sll ; op1:x8; op2:x1; dest:x4; op1val:0x00100000;  op2val:0x00000017
TEST_RR_OP(sll, x4, x8, x1, 0x0, 0x00100000, 0x00000017, x12, 56, x17)

# rs1==x16, rs2==x4, rd==x3, rs2_val == 15, rs1_val == 268435456
# opcode: sll ; op1:x16; op2:x4; dest:x3; op1val:0x10000000;  op2val:0x0000000f
TEST_RR_OP(sll, x3, x16, x4, 0x0, 0x10000000, 0x0000000f, x12, 60, x17)

# rs1==x6, rs2==x30, rd==x16, rs2_val == 21, rs1_val == 32768
# opcode: sll ; op1:x6; op2:x30; dest:x16; op1val:0x00008000;  op2val:0x00000015
TEST_RR_OP(sll, x16, x6, x30, 0x0, 0x00008000, 0x00000015, x12, 64, x17)

# rs1==x18, rs2==x15, rd==x6, rs2_val == 10, rs1_val == 32
# opcode: sll ; op1:x18; op2:x15; dest:x6; op1val:0x00000020;  op2val:0x0000000a
TEST_RR_OP(sll, x6, x18, x15, 0x8000, 0x00000020, 0x0000000a, x12, 68, x4)

# rs1==x24, rs2==x28, rd==x13, rs1_val == 4, 
# opcode: sll ; op1:x24; op2:x28; dest:x13; op1val:0x00000004;  op2val:0x00000012
TEST_RR_OP(sll, x13, x24, x28, 0x100000, 0x00000004, 0x00000012, x12, 72, x4)

# rs1==x27, rs2==x6, rd==x15, rs1_val == 16, 
# opcode: sll ; op1:x27; op2:x6; dest:x15; op1val:0x00000010;  op2val:0x0000000a
TEST_RR_OP(sll, x15, x27, x6, 0x4000, 0x00000010, 0x0000000a, x12, 76, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x14, rs2==x31, rd==x21, rs1_val == 128, 
# opcode: sll ; op1:x14; op2:x31; dest:x21; op1val:0x00000080;  op2val:0x00000004
TEST_RR_OP(sll, x21, x14, x31, 0x800, 0x00000080, 0x00000004, x1, 0, x4)

# rs1==x12, rs2==x11, rd==x9, rs1_val == 256, 
# opcode: sll ; op1:x12; op2:x11; dest:x9; op1val:0x00000100;  op2val:0x0000000e
TEST_RR_OP(sll, x9, x12, x11, 0x400000, 0x00000100, 0x0000000e, x1, 4, x4)

# rs1==x31, rs2==x13, rd==x17, rs1_val == 1024, 
# opcode: sll ; op1:x31; op2:x13; dest:x17; op1val:0x00000400;  op2val:0x00000007
TEST_RR_OP(sll, x17, x31, x13, 0x20000, 0x00000400, 0x00000007, x1, 8, x4)

# rs1==x10, rs2==x17, rd==x8, rs1_val == 2048, 
# opcode: sll ; op1:x10; op2:x17; dest:x8; op1val:0x00000800;  op2val:0x0000000c
TEST_RR_OP(sll, x8, x10, x17, 0x800000, 0x00000800, 0x0000000c, x1, 12, x4)

# rs1==x7, rs2==x10, rd==x5, rs1_val == 4096, 
# opcode: sll ; op1:x7; op2:x10; dest:x5; op1val:0x00001000;  op2val:0x00000000
TEST_RR_OP(sll, x5, x7, x10, 0x1000, 0x00001000, 0x00000000, x1, 16, x4)

# rs1==x19, rs2==x3, rd==x18, rs1_val == 8192, 
# opcode: sll ; op1:x19; op2:x3; dest:x18; op1val:0x00002000;  op2val:0x0000001d
TEST_RR_OP(sll, x18, x19, x3, 0x0, 0x00002000, 0x0000001d, x1, 20, x4)

# rs1==x21, rs2==x14, rd==x2, rs1_val == 16384, 
# opcode: sll ; op1:x21; op2:x14; dest:x2; op1val:0x00004000;  op2val:0x0000001f
TEST_RR_OP(sll, x2, x21, x14, 0x0, 0x00004000, 0x0000001f, x1, 24, x4)

# rs1==x9, rs2==x12, rd==x27, rs1_val == 65536, 
# opcode: sll ; op1:x9; op2:x12; dest:x27; op1val:0x00010000;  op2val:0x0000001e
TEST_RR_OP(sll, x27, x9, x12, 0x0, 0x00010000, 0x0000001e, x1, 28, x4)

# rs1==x17, rs2==x26, rd==x31, rs1_val == 131072, 
# opcode: sll ; op1:x17; op2:x26; dest:x31; op1val:0x00020000;  op2val:0x00000004
TEST_RR_OP(sll, x31, x17, x26, 0x200000, 0x00020000, 0x00000004, x1, 32, x4)

# rs1==x11, rs2==x27, rd==x23, rs1_val == 262144, 
# opcode: sll ; op1:x11; op2:x27; dest:x23; op1val:0x00040000;  op2val:0x0000001e
TEST_RR_OP(sll, x23, x11, x27, 0x0, 0x00040000, 0x0000001e, x1, 36, x4)

# rs1==x26, rs2==x7, rd==x29, rs1_val == 524288, 
# opcode: sll ; op1:x26; op2:x7; dest:x29; op1val:0x00080000;  op2val:0x00000012
TEST_RR_OP(sll, x29, x26, x7, 0x0, 0x00080000, 0x00000012, x1, 40, x4)

# rs1==x5, rs2==x8, rd==x12, rs1_val == 2097152, 
# opcode: sll ; op1:x5; op2:x8; dest:x12; op1val:0x00200000;  op2val:0x00000007
TEST_RR_OP(sll, x12, x5, x8, 0x10000000, 0x00200000, 0x00000007, x1, 44, x4)

# rs1_val == 4194304, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00400000, 0x0000000d, x1, 48, x4)

# rs1_val == 8388608, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00800000, 0x0000000b, x1, 52, x4)

# rs1_val == 16777216, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000004
TEST_RR_OP(sll, x12, x10, x11, 0x10000000, 0x01000000, 0x00000004, x1, 56, x4)

# rs1_val == 33554432, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x02000000, 0x00000015, x1, 60, x4)

# rs1_val == 67108864, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000017
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x04000000, 0x00000017, x1, 64, x4)

# rs1_val == 134217728, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x08000000, 0x0000000e, x1, 68, x4)

# rs1_val == -2049, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0xdffc0000, 0xfffff7ff, 0x00000012, x1, 72, x4)

# rs1_val == -4097, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x0000000a
TEST_RR_OP(sll, x12, x10, x11, 0xffbffc00, 0xffffefff, 0x0000000a, x1, 76, x4)

# rs1_val == -8193, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0xc0000000, 0xffffdfff, 0x0000001e, x1, 80, x4)

# rs1_val == -16385, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xfffefffc, 0xffffbfff, 0x00000002, x1, 84, x4)

# rs1_val == -32769, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xffff7fff, 0xffff7fff, 0x00000000, x1, 88, x4)

# rs1_val == -65537, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x0000000f
TEST_RR_OP(sll, x12, x10, x11, 0x7fff8000, 0xfffeffff, 0x0000000f, x1, 92, x4)

# rs1_val == -131073, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xfff7fffc, 0xfffdffff, 0x00000002, x1, 96, x4)

# rs1_val == -262145, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0xc0000000, 0xfffbffff, 0x0000001e, x1, 100, x4)

# rs1_val == -524289, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xfbffff80, 0xfff7ffff, 0x00000007, x1, 104, x4)

# rs1_val == -1048577, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0xdffffe00, 0xffefffff, 0x00000009, x1, 108, x4)

# rs1_val == -2097153, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xff7ffffc, 0xffdfffff, 0x00000002, x1, 112, x4)

# rs1_val == -4194305, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffffc000, 0xffbfffff, 0x0000000e, x1, 116, x4)

# rs1_val == -8388609, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffe000, 0xff7fffff, 0x0000000d, x1, 120, x4)

# rs1_val == -16777217, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000005
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffe0, 0xfeffffff, 0x00000005, x1, 124, x4)

# rs1_val == -33554433, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000017
TEST_RR_OP(sll, x12, x10, x11, 0xff800000, 0xfdffffff, 0x00000017, x1, 128, x4)

# rs1_val == -67108865, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xffffff80, 0xfbffffff, 0x00000007, x1, 132, x4)

# rs1_val == -134217729, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xffffff80, 0xf7ffffff, 0x00000007, x1, 136, x4)

# rs1_val == -268435457, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffffc000, 0xefffffff, 0x0000000e, x1, 140, x4)

# rs1_val == -536870913, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0x7ffffffc, 0xdfffffff, 0x00000002, x1, 144, x4)

# rs1_val == 536870912, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x20000000, 0x00000010, x1, 148, x4)

# rs1_val == -1025, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xff7fe000, 0xfffffbff, 0x0000000d, x1, 152, x4)

# rs1_val == 1431655765, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0xaaa00000, 0x55555555, 0x00000015, x1, 156, x4)

# rs1_val == -2, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xfffffff0, 0xfffffffe, 0x00000003, x1, 160, x4)

# rs1_val == -5, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xfff60000, 0xfffffffb, 0x00000011, x1, 164, x4)

# rs1_val == -1431655766, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0x55400000, 0xaaaaaaaa, 0x00000015, x1, 168, x4)

# rs1_val == -3, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0xffa00000, 0xfffffffd, 0x00000015, x1, 172, x4)

# rs1_val == -17, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0xfde00000, 0xffffffef, 0x00000015, x1, 176, x4)

# rs1_val == -33, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000005
TEST_RR_OP(sll, x12, x10, x11, 0xfffffbe0, 0xffffffdf, 0x00000005, x1, 180, x4)

# rs1_val == -65, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0xf8000000, 0xffffffbf, 0x0000001b, x1, 184, x4)

# rs1_val == -257, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xffff7f80, 0xfffffeff, 0x00000007, x1, 188, x4)

# rs1_val == -513, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xffffeff8, 0xfffffdff, 0x00000003, x1, 192, x4)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x2800, 0x00000005, 0x0000000b, x1, 196, x4)

# rs1_val < 0 and rs2_val == 0, rs1_val == -1073741825
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xbfffffff, 0xbfffffff, 0x00000000, x1, 200, x4)

# rs1_val > 0 and rs2_val == 0, rs1_val == 512
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x200, 0x00000200, 0x00000000, x1, 204, x4)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 8, rs2_val == 8
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sll, x12, x10, x11, 0x800, 0x00000008, 0x00000008, x1, 208, x4)

# rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -2147483648
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x80000000, 0x0000000e, x1, 212, x4)

# rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x40, 0x00000001, 0x00000006, x1, 216, x4)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 55*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
