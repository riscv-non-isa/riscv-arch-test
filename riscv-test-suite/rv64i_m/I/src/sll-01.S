
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 == rs2 == rd, rs1==x0, rs2==x0, rd==x0, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -17179869185
# opcode: sll ; op1:x0; op2:x0; dest:x0; op1val:0xfffffffbffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sll, x0, x0, x0, 0xffffff7fffffffe0, 0xfffffffbffffffff, 0x0000000000000005, x9, 0, x12)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x18, rs2==x13, rd==x5, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 17592186044416, rs2_val == 4
# opcode: sll ; op1:x18; op2:x13; dest:x5; op1val:0x0000100000000000;  op2val:0x0000000000000004
TEST_RR_OP(sll, x5, x18, x13, 0x1000000000000, 0x0000100000000000, 0x0000000000000004, x9, 8, x12)

# rs1 == rs2 != rd, rs1==x21, rs2==x21, rd==x15, rs1_val < 0 and rs2_val == 0, rs1_val == -4398046511105
# opcode: sll ; op1:x21; op2:x21; dest:x15; op1val:0xfffffbffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x15, x21, x21, 0xfffffbffffffffff, 0xfffffbffffffffff, 0x0000000000000000, x9, 16, x12)

# rs2 == rd != rs1, rs1==x24, rs2==x28, rd==x28, rs1_val > 0 and rs2_val == 0, rs1_val == 32768
# opcode: sll ; op1:x24; op2:x28; dest:x28; op1val:0x0000000000008000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x28, x24, x28, 0x8000, 0x0000000000008000, 0x0000000000000000, x9, 24, x12)

# rs1 == rd != rs2, rs1==x31, rs2==x17, rd==x31, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 16, rs2_val == 16
# opcode: sll ; op1:x31; op2:x17; dest:x31; op1val:0x0000000000000010;  op2val:0x0000000000000010
TEST_RR_OP(sll, x31, x31, x17, 0x100000, 0x0000000000000010, 0x0000000000000010, x9, 32, x12)

# rs1==x27, rs2==x15, rd==x7, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 8, rs1_val == -9223372036854775808
# opcode: sll ; op1:x27; op2:x15; dest:x7; op1val:0x8000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sll, x7, x27, x15, 0x0, 0x8000000000000000, 0x0000000000000008, x9, 40, x12)

# rs1==x23, rs2==x7, rd==x30, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sll ; op1:x23; op2:x7; dest:x30; op1val:0x0000000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x30, x23, x7, 0x0, 0x0000000000000000, 0x000000000000000b, x9, 48, x12)

# rs1==x3, rs2==x14, rd==x8, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807, rs2_val == 32
# opcode: sll ; op1:x3; op2:x14; dest:x8; op1val:0x7fffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x8, x3, x14, 0x7fffffffffffffff, 0x7fffffffffffffff, 0x0000000000000020, x9, 56, x12)

# rs1==x4, rs2==x29, rd==x25, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sll ; op1:x4; op2:x29; dest:x25; op1val:0x0000000000000001;  op2val:0x0000000000000007
TEST_RR_OP(sll, x25, x4, x29, 0x80, 0x0000000000000001, 0x0000000000000007, x9, 64, x12)

# rs1==x30, rs2==x10, rd==x26, rs2_val == 1, rs1_val == 4
# opcode: sll ; op1:x30; op2:x10; dest:x26; op1val:0x0000000000000004;  op2val:0x0000000000000001
TEST_RR_OP(sll, x26, x30, x10, 0x8, 0x0000000000000004, 0x0000000000000001, x9, 72, x12)

# rs1==x6, rs2==x16, rd==x13, rs2_val == 2, 
# opcode: sll ; op1:x6; op2:x16; dest:x13; op1val:0x0000000000000009;  op2val:0x0000000000000002
TEST_RR_OP(sll, x13, x6, x16, 0x24, 0x0000000000000009, 0x0000000000000002, x9, 80, x12)

# rs1==x7, rs2==x11, rd==x29, rs2_val == 62, rs1_val == 562949953421312
# opcode: sll ; op1:x7; op2:x11; dest:x29; op1val:0x0002000000000000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x29, x7, x11, 0x0, 0x0002000000000000, 0x000000000000003e, x9, 88, x12)

# rs1==x22, rs2==x19, rd==x24, rs2_val == 61, rs1_val == 4398046511104
# opcode: sll ; op1:x22; op2:x19; dest:x24; op1val:0x0000040000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x24, x22, x19, 0x0, 0x0000040000000000, 0x000000000000003d, x9, 96, x12)

# rs1==x8, rs2==x22, rd==x11, rs2_val == 59, rs1_val == -5
# opcode: sll ; op1:x8; op2:x22; dest:x11; op1val:0xfffffffffffffffb;  op2val:0x000000000000003b
TEST_RR_OP(sll, x11, x8, x22, 0xffffffffd8000000, 0xfffffffffffffffb, 0x000000000000003b, x9, 104, x12)

# rs1==x15, rs2==x2, rd==x1, rs2_val == 55, rs1_val == -1152921504606846977
# opcode: sll ; op1:x15; op2:x2; dest:x1; op1val:0xefffffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x1, x15, x2, 0xffffffffff800000, 0xefffffffffffffff, 0x0000000000000037, x9, 112, x12)
RVTEST_SIGBASE( x7,signature_x7_0)

# rs1==x13, rs2==x4, rd==x3, rs2_val == 47, 
# opcode: sll ; op1:x13; op2:x4; dest:x3; op1val:0xefffffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x3, x13, x4, 0xffffffffffff8000, 0xefffffffffffffff, 0x000000000000002f, x7, 0, x15)

# rs1==x9, rs2==x3, rd==x23, rs2_val == 31, rs1_val == 17179869184
# opcode: sll ; op1:x9; op2:x3; dest:x23; op1val:0x0000000400000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x23, x9, x3, 0x0, 0x0000000400000000, 0x000000000000001f, x7, 8, x15)

# rs1==x11, rs2==x27, rd==x20, rs2_val == 21, rs1_val == 2305843009213693952
# opcode: sll ; op1:x11; op2:x27; dest:x20; op1val:0x2000000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x20, x11, x27, 0x0, 0x2000000000000000, 0x0000000000000015, x7, 16, x15)

# rs1==x26, rs2==x18, rd==x17, rs2_val == 42, rs1_val == -33554433
# opcode: sll ; op1:x26; op2:x18; dest:x17; op1val:0xfffffffffdffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x17, x26, x18, 0xfffffff7fffffc00, 0xfffffffffdffffff, 0x000000000000002a, x7, 24, x15)

# rs1==x29, rs2==x30, rd==x16, rs1_val == 2, 
# opcode: sll ; op1:x29; op2:x30; dest:x16; op1val:0x0000000000000002;  op2val:0x0000000000000007
TEST_RR_OP(sll, x16, x29, x30, 0x100, 0x0000000000000002, 0x0000000000000007, x7, 32, x15)

# rs1==x10, rs2==x25, rd==x12, rs1_val == 8, 
# opcode: sll ; op1:x10; op2:x25; dest:x12; op1val:0x0000000000000008;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x25, 0x400000000, 0x0000000000000008, 0x000000000000003f, x7, 40, x15)

# rs1==x1, rs2==x23, rd==x2, rs1_val == 32, 
# opcode: sll ; op1:x1; op2:x23; dest:x2; op1val:0x0000000000000020;  op2val:0x0000000000000005
TEST_RR_OP(sll, x2, x1, x23, 0x400, 0x0000000000000020, 0x0000000000000005, x7, 48, x15)

# rs1==x28, rs2==x9, rd==x21, rs1_val == 64, 
# opcode: sll ; op1:x28; op2:x9; dest:x21; op1val:0x0000000000000040;  op2val:0x000000000000003f
TEST_RR_OP(sll, x21, x28, x9, 0x2000000000, 0x0000000000000040, 0x000000000000003f, x7, 56, x15)

# rs1==x16, rs2==x5, rd==x22, rs1_val == 128, 
# opcode: sll ; op1:x16; op2:x5; dest:x22; op1val:0x0000000000000080;  op2val:0x000000000000000a
TEST_RR_OP(sll, x22, x16, x5, 0x20000, 0x0000000000000080, 0x000000000000000a, x7, 64, x15)

# rs1==x20, rs2==x8, rd==x19, rs1_val == 256, 
# opcode: sll ; op1:x20; op2:x8; dest:x19; op1val:0x0000000000000100;  op2val:0x0000000000000009
TEST_RR_OP(sll, x19, x20, x8, 0x20000, 0x0000000000000100, 0x0000000000000009, x7, 72, x15)

# rs1==x2, rs2==x31, rd==x10, rs1_val == 512, 
# opcode: sll ; op1:x2; op2:x31; dest:x10; op1val:0x0000000000000200;  op2val:0x0000000000000001
TEST_RR_OP(sll, x10, x2, x31, 0x400, 0x0000000000000200, 0x0000000000000001, x7, 80, x15)

# rs1==x19, rs2==x26, rd==x18, rs1_val == 1024, 
# opcode: sll ; op1:x19; op2:x26; dest:x18; op1val:0x0000000000000400;  op2val:0x0000000000000005
TEST_RR_OP(sll, x18, x19, x26, 0x8000, 0x0000000000000400, 0x0000000000000005, x7, 88, x15)

# rs1==x25, rs2==x6, rd==x14, rs1_val == 2048, 
# opcode: sll ; op1:x25; op2:x6; dest:x14; op1val:0x0000000000000800;  op2val:0x000000000000003e
TEST_RR_OP(sll, x14, x25, x6, 0x20000000000, 0x0000000000000800, 0x000000000000003e, x7, 96, x15)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x5, rs2==x24, rd==x6, rs1_val == 4096, 
# opcode: sll ; op1:x5; op2:x24; dest:x6; op1val:0x0000000000001000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x6, x5, x24, 0x800000, 0x0000000000001000, 0x000000000000000b, x2, 0, x3)

# rs1==x17, rs2==x1, rd==x9, rs1_val == 8192, 
# opcode: sll ; op1:x17; op2:x1; dest:x9; op1val:0x0000000000002000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x9, x17, x1, 0x4000000, 0x0000000000002000, 0x000000000000000d, x2, 8, x3)

# rs1==x14, rs2==x12, rd==x27, rs1_val == 16384, 
# opcode: sll ; op1:x14; op2:x12; dest:x27; op1val:0x0000000000004000;  op2val:0x0000000000000005
TEST_RR_OP(sll, x27, x14, x12, 0x80000, 0x0000000000004000, 0x0000000000000005, x2, 16, x3)

# rs1==x12, rs2==x20, rd==x4, rs1_val == 65536, 
# opcode: sll ; op1:x12; op2:x20; dest:x4; op1val:0x0000000000010000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x4, x12, x20, 0x4000000, 0x0000000000010000, 0x000000000000000a, x2, 24, x3)

# rs1_val == 131072, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0x100000000, 0x0000000000020000, 0x000000000000000f, x2, 32, x3)

# rs1_val == 262144, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0x800000000, 0x0000000000040000, 0x0000000000000011, x2, 40, x3)

# rs1_val == 524288, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0x2000000000, 0x0000000000080000, 0x0000000000000012, x2, 48, x3)

# rs1_val == 1048576, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0x100000000, 0x0000000000100000, 0x000000000000000c, x2, 56, x3)

# rs1_val == 2097152, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x0000000000200000, 0x0000000000000006, x2, 64, x3)

# rs1_val == 4194304, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0x2000000000000, 0x0000000000400000, 0x000000000000003b, x2, 72, x3)

# rs1_val == 8388608, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000000000800000, 0x000000000000003e, x2, 80, x3)

# rs1_val == 16777216, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000, 0x0000000001000000, 0x0000000000000011, x2, 88, x3)

# rs1_val == 33554432, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000, 0x0000000002000000, 0x0000000000000037, x2, 96, x3)

# rs1_val == 67108864, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0x800000000, 0x0000000004000000, 0x0000000000000009, x2, 104, x3)

# rs1_val == 134217728, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000, 0x0000000008000000, 0x0000000000000009, x2, 112, x3)

# rs1_val == 268435456, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000, 0x0000000010000000, 0x0000000000000037, x2, 120, x3)

# rs1_val == 536870912, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x20000000, 0x0000000020000000, 0x0000000000000000, x2, 128, x3)

# rs1_val == 1073741824, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x10000000000, 0x0000000040000000, 0x000000000000002a, x2, 136, x3)

# rs1_val == 2147483648, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0x10000000000, 0x0000000080000000, 0x0000000000000009, x2, 144, x3)

# rs1_val == 4294967296, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000000100000000, 0x0000000000000015, x2, 152, x3)

# rs1_val == 8589934592, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0x800000000, 0x0000000200000000, 0x0000000000000002, x2, 160, x3)

# rs1_val == 34359738368, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0x100000000000, 0x0000000800000000, 0x0000000000000009, x2, 168, x3)

# rs1_val == 68719476736, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000001000000000, 0x000000000000003f, x2, 176, x3)

# rs1_val == 137438953472, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000003f, x2, 184, x3)

# rs1_val == 274877906944, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x2000000000000000, 0x0000004000000000, 0x0000000000000037, x2, 192, x3)

# rs1_val == 549755813888, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000003d, x2, 200, x3)

# rs1_val == 1099511627776, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000, 0x0000010000000000, 0x000000000000002a, x2, 208, x3)

# rs1_val == 2199023255552, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000020000000000, 0x000000000000001f, x2, 216, x3)

# rs1_val == 8796093022208, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000000, 0x0000080000000000, 0x0000000000000011, x2, 224, x3)

# rs1_val == 35184372088832, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000000, 0x0000200000000000, 0x000000000000002f, x2, 232, x3)

# rs1_val == 70368744177664, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x400000000000, 0x0000400000000000, 0x0000000000000000, x2, 240, x3)

# rs1_val == 140737488355328, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000000, 0x0000800000000000, 0x0000000000000010, x2, 248, x3)

# rs1_val == 281474976710656, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000001f, x2, 256, x3)

# rs1_val == 1125899906842624, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0x80000000000000, 0x0004000000000000, 0x0000000000000005, x2, 264, x3)

# rs1_val == 2251799813685248, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000000, 0x0008000000000000, 0x000000000000000b, x2, 272, x3)

# rs1_val == 4503599627370496, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0x80000000000000, 0x0010000000000000, 0x0000000000000003, x2, 280, x3)

# rs1_val == 9007199254740992, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000003d, x2, 288, x3)

# rs1_val == 18014398509481984, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000000c, x2, 296, x3)

# rs1_val == 36028797018963968, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000003e, x2, 304, x3)

# rs1_val == 72057594037927936, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000000, 0x0100000000000000, 0x0000000000000001, x2, 312, x3)

# rs1_val == 144115188075855872, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000000, 0x0200000000000000, 0x0000000000000006, x2, 320, x3)

# rs1_val == 288230376151711744, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0400000000000000, 0x000000000000003d, x2, 328, x3)

# rs1_val == -2199023255553, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xffdffffffffff000, 0xfffffdffffffffff, 0x000000000000000c, x2, 336, x3)

# rs1_val == -8796093022209, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0xfffbffffffffff80, 0xfffff7ffffffffff, 0x0000000000000007, x2, 344, x3)

# rs1_val == -17592186044417, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xfbffffffffffc000, 0xffffefffffffffff, 0x000000000000000e, x2, 352, x3)

# rs1_val == -35184372088833, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0xfff7ffffffffffc0, 0xffffdfffffffffff, 0x0000000000000006, x2, 360, x3)

# rs1_val == -70368744177665, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffffffff8000, 0xffffbfffffffffff, 0x000000000000002f, x2, 368, x3)

# rs1_val == -140737488355329, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0xffbfffffffffff80, 0xffff7fffffffffff, 0x0000000000000007, x2, 376, x3)

# rs1_val == -281474976710657, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff80000, 0xfffeffffffffffff, 0x0000000000000013, x2, 384, x3)

# rs1_val == -562949953421313, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xfffdffffffffffff, 0xfffdffffffffffff, 0x0000000000000020, x2, 392, x3)

# rs1_val == -1125899906842625, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0xfffbffffffffffff, 0x0000000000000037, x2, 400, x3)

# rs1_val == -2251799813685249, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfff7ffffffffffff, 0x000000000000003f, x2, 408, x3)

# rs1_val == -4503599627370497, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffc0000, 0xffefffffffffffff, 0x0000000000000012, x2, 416, x3)

# rs1_val == -9007199254740993, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffc000, 0xffdfffffffffffff, 0x000000000000000e, x2, 424, x3)

# rs1_val == -18014398509481985, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffe0000000, 0xffbfffffffffffff, 0x000000000000003d, x2, 432, x3)

# rs1_val == -36028797018963969, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0xff7fffffffffffff, 0x0000000000000037, x2, 440, x3)

# rs1_val == -72057594037927937, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xfdfffffffffffffe, 0xfeffffffffffffff, 0x0000000000000001, x2, 448, x3)

# rs1_val == -144115188075855873, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0x7fffffffffffffc0, 0xfdffffffffffffff, 0x0000000000000006, x2, 456, x3)

# rs1_val == -288230376151711745, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xfbffffffffffffff, 0xfbffffffffffffff, 0x0000000000000020, x2, 464, x3)

# rs1_val == -576460752303423489, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0xf7ffffffffffffff, 0x0000000000000037, x2, 472, x3)

# rs1_val == -2305843009213693953, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffe000, 0xdfffffffffffffff, 0x000000000000000d, x2, 480, x3)

# rs1_val == -4611686018427387905, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffe0000000, 0xbfffffffffffffff, 0x000000000000003d, x2, 488, x3)

# rs1_val == 6148914691236517205, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0x5555555555555000, 0x5555555555555555, 0x000000000000000c, x2, 496, x3)

# rs1_val == -6148914691236517206, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x5555555540000000, 0xaaaaaaaaaaaaaaaa, 0x000000000000003d, x2, 504, x3)

# rs1_val == 576460752303423488, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000003e, x2, 512, x3)

# rs1_val == 1152921504606846976, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000000b, x2, 520, x3)

# rs1_val == 4611686018427387904, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000003d, x2, 528, x3)

# rs1_val == -2, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff00000, 0xfffffffffffffffe, 0x0000000000000013, x2, 536, x3)

# rs1_val == -3, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffa00, 0xfffffffffffffffd, 0x0000000000000009, x2, 544, x3)

# rs1_val == -9, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0000000000000000, x2, 552, x3)

# rs1_val == -17, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffde00, 0xffffffffffffffef, 0x0000000000000009, x2, 560, x3)

# rs1_val == -33, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff7c00, 0xffffffffffffffdf, 0x000000000000002a, x2, 568, x3)

# rs1_val == -65, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffdf80000, 0xffffffffffffffbf, 0x0000000000000013, x2, 576, x3)

# rs1_val == -129, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffefe, 0xffffffffffffff7f, 0x0000000000000001, x2, 584, x3)

# rs1_val == -257, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff7f80, 0xfffffffffffffeff, 0x0000000000000007, x2, 592, x3)

# rs1_val == -513, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffff7fc, 0xfffffffffffffdff, 0x0000000000000002, x2, 600, x3)

# rs1_val == -1025, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0xfffffeffc0000000, 0xfffffffffffffbff, 0x000000000000003e, x2, 608, x3)

# rs1_val == -2049, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xfffffbff80000000, 0xfffffffffffff7ff, 0x000000000000001f, x2, 616, x3)

# rs1_val == -4097, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffdffe, 0xffffffffffffefff, 0x0000000000000001, x2, 624, x3)

# rs1_val == -8193, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffbffe, 0xffffffffffffdfff, 0x0000000000000001, x2, 632, x3)

# rs1_val == -16385, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffefffc, 0xffffffffffffbfff, 0x0000000000000002, x2, 640, x3)

# rs1_val == -32769, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffbfff8000, 0xffffffffffff7fff, 0x000000000000002f, x2, 648, x3)

# rs1_val == -65537, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffdfffe00, 0xfffffffffffeffff, 0x0000000000000009, x2, 656, x3)

# rs1_val == -131073, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffbfffe0000, 0xfffffffffffdffff, 0x0000000000000011, x2, 664, x3)

# rs1_val == -262145, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0xfffeffffc0000000, 0xfffffffffffbffff, 0x000000000000003e, x2, 672, x3)

# rs1_val == -524289, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xffffbffff8000000, 0xfffffffffff7ffff, 0x000000000000003b, x2, 680, x3)

# rs1_val == -1048577, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xfff7ffff80000000, 0xffffffffffefffff, 0x000000000000001f, x2, 688, x3)

# rs1_val == -2097153, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xffefffff80000000, 0xffffffffffdfffff, 0x000000000000003f, x2, 696, x3)

# rs1_val == -4194305, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0000000000000000, x2, 704, x3)

# rs1_val == -8388609, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff7fffff, 0xffffffffff7fffff, 0x0000000000000020, x2, 712, x3)

# rs1_val == -16777217, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xfff7fffff8000000, 0xfffffffffeffffff, 0x000000000000003b, x2, 720, x3)

# rs1_val == -67108865, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xffffeffffffc0000, 0xfffffffffbffffff, 0x0000000000000012, x2, 728, x3)

# rs1_val == -134217729, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xfffffdffffffc000, 0xfffffffff7ffffff, 0x000000000000000e, x2, 736, x3)

# rs1_val == -268435457, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0xfbffffffc0000000, 0xffffffffefffffff, 0x000000000000003e, x2, 744, x3)

# rs1_val == -536870913, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0xffffefffffff8000, 0xffffffffdfffffff, 0x000000000000000f, x2, 752, x3)

# rs1_val == -1073741825, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffbfffffff, 0xffffffffbfffffff, 0x0000000000000000, x2, 760, x3)

# rs1_val == -2147483649, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffefffffffe, 0xffffffff7fffffff, 0x0000000000000001, x2, 768, x3)

# rs1_val == -4294967297, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xffffeffffffff000, 0xfffffffeffffffff, 0x000000000000000c, x2, 776, x3)

# rs1_val == -8589934593, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffdffffffff, 0xfffffffdffffffff, 0x0000000000000020, x2, 784, x3)

# rs1_val == -34359738369, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfffffff7ffffffff, 0x000000000000001f, x2, 792, x3)

# rs1_val == -68719476737, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xf7ffffffff800000, 0xffffffefffffffff, 0x0000000000000037, x2, 800, x3)

# rs1_val == -137438953473, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xffffffdfffffffff, 0x000000000000001f, x2, 808, x3)

# rs1_val == -274877906945, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xfefffffffffc0000, 0xffffffbfffffffff, 0x0000000000000012, x2, 816, x3)

# rs1_val == -549755813889, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0xfffff7fffffffff0, 0xffffff7fffffffff, 0x0000000000000004, x2, 824, x3)

# rs1_val == -1099511627777, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xfffbfffffffffc00, 0xfffffeffffffffff, 0x000000000000002a, x2, 832, x3)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -17179869185
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0xffffff7fffffffe0, 0xfffffffbffffffff, 0x0000000000000005, x2, 840, x3)

# rs1_val < 0 and rs2_val == 0, rs1_val == -4398046511105
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xfffffbffffffffff, 0xfffffbffffffffff, 0x0000000000000000, x2, 848, x3)

# rs1_val > 0 and rs2_val == 0, rs1_val == 32768
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x8000, 0x0000000000008000, 0x0000000000000000, x2, 856, x3)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 16, rs2_val == 16
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0x100000, 0x0000000000000010, 0x0000000000000010, x2, 864, x3)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 13*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 109*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
