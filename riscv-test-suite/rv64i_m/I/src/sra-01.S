
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rs2 == rd, rs1==x29, rs2==x29, rd==x29, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 47
# opcode: sra ; op1:x29; op2:x29; dest:x29; op1val:0xffffffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x29, x29, x29, 0x1ffff, 0xffffffffffffffff, 0x000000000000002f, x2, 0, x10)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x12, rs2==x13, rd==x22, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 21, rs1_val == 140737488355328
# opcode: sra ; op1:x12; op2:x13; dest:x22; op1val:0x0000800000000000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x22, x12, x13, 0x0, 0x0000800000000000, 0x0000000000000015, x2, 8, x10)

# rs1 == rs2 != rd, rs1==x21, rs2==x21, rd==x14, rs1_val < 0 and rs2_val == 0, rs1_val == -129
# opcode: sra ; op1:x21; op2:x21; dest:x14; op1val:0xffffffffffffff7f;  op2val:0x0000000000000000
TEST_RR_OP(sra, x14, x21, x21, 0xffffff7f, 0xffffffffffffff7f, 0x0000000000000000, x2, 16, x10)

# rs2 == rd != rs1, rs1==x15, rs2==x3, rd==x3, rs1_val > 0 and rs2_val == 0, rs1_val == 65536
# opcode: sra ; op1:x15; op2:x3; dest:x3; op1val:0x0000000000010000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x3, x15, x3, 0x10000, 0x0000000000010000, 0x0000000000000000, x2, 24, x10)

# rs1 == rd != rs2, rs1==x30, rs2==x12, rd==x30, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: sra ; op1:x30; op2:x12; dest:x30; op1val:0x0000000000000007;  op2val:0x0000000000000007
TEST_RR_OP(sra, x30, x30, x12, 0x0, 0x0000000000000007, 0x0000000000000007, x2, 32, x10)

# rs1==x16, rs2==x15, rd==x27, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 8, rs1_val == -9223372036854775808
# opcode: sra ; op1:x16; op2:x15; dest:x27; op1val:0x8000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x27, x16, x15, 0x0, 0x8000000000000000, 0x0000000000000008, x2, 40, x10)

# rs1==x17, rs2==x14, rd==x23, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 42
# opcode: sra ; op1:x17; op2:x14; dest:x23; op1val:0x0000000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x23, x17, x14, 0x0, 0x0000000000000000, 0x000000000000002a, x2, 48, x10)

# rs1==x24, rs2==x16, rd==x28, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807
# opcode: sra ; op1:x24; op2:x16; dest:x28; op1val:0x7fffffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x28, x24, x16, 0x3ffff, 0x7fffffffffffffff, 0x000000000000000e, x2, 56, x10)

# rs1==x14, rs2==x5, rd==x31, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 2, rs1_val == 1
# opcode: sra ; op1:x14; op2:x5; dest:x31; op1val:0x0000000000000001;  op2val:0x0000000000000002
TEST_RR_OP(sra, x31, x14, x5, 0x0, 0x0000000000000001, 0x0000000000000002, x2, 64, x10)

# rs1==x4, rs2==x25, rd==x8, rs2_val == 1, rs1_val == 512
# opcode: sra ; op1:x4; op2:x25; dest:x8; op1val:0x0000000000000200;  op2val:0x0000000000000001
TEST_RR_OP(sra, x8, x4, x25, 0x100, 0x0000000000000200, 0x0000000000000001, x2, 72, x10)

# rs1==x28, rs2==x6, rd==x16, rs2_val == 4, rs1_val == -257
# opcode: sra ; op1:x28; op2:x6; dest:x16; op1val:0xfffffffffffffeff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x16, x28, x6, 0xfffffef, 0xfffffffffffffeff, 0x0000000000000004, x2, 80, x10)

# rs1==x6, rs2==x23, rd==x7, rs2_val == 16, rs1_val == 6148914691236517205
# opcode: sra ; op1:x6; op2:x23; dest:x7; op1val:0x5555555555555555;  op2val:0x0000000000000010
TEST_RR_OP(sra, x7, x6, x23, 0x5555, 0x5555555555555555, 0x0000000000000010, x2, 88, x10)

# rs1==x27, rs2==x20, rd==x19, rs2_val == 32, 
# opcode: sra ; op1:x27; op2:x20; dest:x19; op1val:0xfffffffffffffff8;  op2val:0x0000000000000020
TEST_RR_OP(sra, x19, x27, x20, 0xfffffff8, 0xfffffffffffffff8, 0x0000000000000020, x2, 96, x10)

# rs1==x9, rs2==x0, rd==x21, rs2_val == 62, rs1_val == -3
# opcode: sra ; op1:x9; op2:x0; dest:x21; op1val:0xfffffffffffffffd;  op2val:0x000000000000003e
TEST_RR_OP(sra, x21, x9, x0, 0x3, 0xfffffffffffffffd, 0x000000000000003e, x2, 104, x10)

# rs1==x0, rs2==x22, rd==x9, rs2_val == 61, rs1_val == 8
# opcode: sra ; op1:x0; op2:x22; dest:x9; op1val:0x0000000000000008;  op2val:0x000000000000003d
TEST_RR_OP(sra, x9, x0, x22, 0x0, 0x0000000000000008, 0x000000000000003d, x2, 112, x10)

# rs1==x20, rs2==x31, rd==x4, rs2_val == 59, rs1_val == -33
# opcode: sra ; op1:x20; op2:x31; dest:x4; op1val:0xffffffffffffffdf;  op2val:0x000000000000003b
TEST_RR_OP(sra, x4, x20, x31, 0x1f, 0xffffffffffffffdf, 0x000000000000003b, x2, 120, x10)

# rs1==x11, rs2==x30, rd==x5, rs2_val == 55, rs1_val == 8796093022208
# opcode: sra ; op1:x11; op2:x30; dest:x5; op1val:0x0000080000000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x5, x11, x30, 0x0, 0x0000080000000000, 0x0000000000000037, x2, 128, x10)

# rs1==x1, rs2==x26, rd==x25, rs2_val == 31, 
# opcode: sra ; op1:x1; op2:x26; dest:x25; op1val:0x0000000000000008;  op2val:0x000000000000001f
TEST_RR_OP(sra, x25, x1, x26, 0x0, 0x0000000000000008, 0x000000000000001f, x2, 136, x10)
RVTEST_SIGBASE( x14,signature_x14_0)

# rs1==x19, rs2==x11, rd==x20, rs1_val == 2, 
# opcode: sra ; op1:x19; op2:x11; dest:x20; op1val:0x0000000000000002;  op2val:0x0000000000000009
TEST_RR_OP(sra, x20, x19, x11, 0x0, 0x0000000000000002, 0x0000000000000009, x14, 0, x16)

# rs1==x10, rs2==x9, rd==x26, rs1_val == 4, 
# opcode: sra ; op1:x10; op2:x9; dest:x26; op1val:0x0000000000000004;  op2val:0x0000000000000008
TEST_RR_OP(sra, x26, x10, x9, 0x0, 0x0000000000000004, 0x0000000000000008, x14, 8, x16)

# rs1==x25, rs2==x17, rd==x0, rs1_val == 16, 
# opcode: sra ; op1:x25; op2:x17; dest:x0; op1val:0x0000000000000010;  op2val:0x000000000000003e
TEST_RR_OP(sra, x0, x25, x17, 0x0, 0x0000000000000010, 0x000000000000003e, x14, 16, x16)

# rs1==x7, rs2==x2, rd==x15, rs1_val == 32, 
# opcode: sra ; op1:x7; op2:x2; dest:x15; op1val:0x0000000000000020;  op2val:0x0000000000000015
TEST_RR_OP(sra, x15, x7, x2, 0x0, 0x0000000000000020, 0x0000000000000015, x14, 24, x16)

# rs1==x2, rs2==x10, rd==x11, rs1_val == 64, 
# opcode: sra ; op1:x2; op2:x10; dest:x11; op1val:0x0000000000000040;  op2val:0x000000000000000c
TEST_RR_OP(sra, x11, x2, x10, 0x0, 0x0000000000000040, 0x000000000000000c, x14, 32, x16)

# rs1==x22, rs2==x7, rd==x1, rs1_val == 128, 
# opcode: sra ; op1:x22; op2:x7; dest:x1; op1val:0x0000000000000080;  op2val:0x0000000000000015
TEST_RR_OP(sra, x1, x22, x7, 0x0, 0x0000000000000080, 0x0000000000000015, x14, 40, x16)

# rs1==x3, rs2==x19, rd==x24, rs1_val == 256, 
# opcode: sra ; op1:x3; op2:x19; dest:x24; op1val:0x0000000000000100;  op2val:0x000000000000003d
TEST_RR_OP(sra, x24, x3, x19, 0x0, 0x0000000000000100, 0x000000000000003d, x14, 48, x16)

# rs1==x31, rs2==x24, rd==x2, rs1_val == 1024, 
# opcode: sra ; op1:x31; op2:x24; dest:x2; op1val:0x0000000000000400;  op2val:0x0000000000000008
TEST_RR_OP(sra, x2, x31, x24, 0x4, 0x0000000000000400, 0x0000000000000008, x14, 56, x16)

# rs1==x26, rs2==x18, rd==x17, rs1_val == 2048, 
# opcode: sra ; op1:x26; op2:x18; dest:x17; op1val:0x0000000000000800;  op2val:0x0000000000000013
TEST_RR_OP(sra, x17, x26, x18, 0x0, 0x0000000000000800, 0x0000000000000013, x14, 64, x16)

# rs1==x18, rs2==x1, rd==x12, rs1_val == 4096, 
# opcode: sra ; op1:x18; op2:x1; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x18, x1, 0x400, 0x0000000000001000, 0x0000000000000002, x14, 72, x16)

# rs1==x5, rs2==x4, rd==x10, rs1_val == 8192, 
# opcode: sra ; op1:x5; op2:x4; dest:x10; op1val:0x0000000000002000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x10, x5, x4, 0x8, 0x0000000000002000, 0x000000000000002a, x14, 80, x16)

# rs1==x13, rs2==x27, rd==x18, rs1_val == 16384, 
# opcode: sra ; op1:x13; op2:x27; dest:x18; op1val:0x0000000000004000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x18, x13, x27, 0x200, 0x0000000000004000, 0x0000000000000005, x14, 88, x16)

# rs1==x23, rs2==x28, rd==x6, rs1_val == 32768, 
# opcode: sra ; op1:x23; op2:x28; dest:x6; op1val:0x0000000000008000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x6, x23, x28, 0x1000, 0x0000000000008000, 0x0000000000000003, x14, 96, x16)

# rs1==x8, rs1_val == 131072, 
# opcode: sra ; op1:x8; op2:x2; dest:x27; op1val:0x0000000000020000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x27, x8, x2, 0x800, 0x0000000000020000, 0x0000000000000006, x14, 104, x16)

# rs2==x8, rs1_val == 262144, 
# opcode: sra ; op1:x4; op2:x8; dest:x11; op1val:0x0000000000040000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x11, x4, x8, 0x400, 0x0000000000040000, 0x0000000000000008, x14, 112, x16)

# rd==x13, rs1_val == 524288, 
# opcode: sra ; op1:x5; op2:x12; dest:x13; op1val:0x0000000000080000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x13, x5, x12, 0x80000, 0x0000000000080000, 0x0000000000000020, x14, 120, x16)

# rs1_val == 1048576, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x0000000000100000, 0x000000000000000a, x14, 128, x16)

# rs1_val == 2097152, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x20000, 0x0000000000200000, 0x0000000000000004, x14, 136, x16)

# rs1_val == 4194304, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x400000, 0x0000000000400000, 0x0000000000000020, x14, 144, x16)

# rs1_val == 8388608, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000800000, 0x000000000000003d, x14, 152, x16)

# rs1_val == 16777216, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x0000000001000000, 0x000000000000000d, x14, 160, x16)

# rs1_val == 33554432, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x80, 0x0000000002000000, 0x0000000000000012, x14, 168, x16)

# rs1_val == 67108864, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000004000000, 0x000000000000003b, x14, 176, x16)

# rs1_val == 134217728, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000008000000, 0x000000000000003e, x14, 184, x16)

# rs1_val == 268435456, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000010000000, 0x000000000000003f, x14, 192, x16)

# rs1_val == 536870912, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x2000000, 0x0000000020000000, 0x0000000000000004, x14, 200, x16)

# rs1_val == 1073741824, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x0000000040000000, 0x000000000000000e, x14, 208, x16)

# rs1_val == 2147483648, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1000000, 0x0000000080000000, 0x0000000000000007, x14, 216, x16)

# rs1_val == 4294967296, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000013, x14, 224, x16)

# rs1_val == 8589934592, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000004, x14, 232, x16)

# rs1_val == 17179869184, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000003, x14, 240, x16)

# rs1_val == 34359738368, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000010, x14, 248, x16)

# rs1_val == 68719476736, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000003, x14, 256, x16)

# rs1_val == 137438953472, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000009, x14, 264, x16)

# rs1_val == 274877906944, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000001f, x14, 272, x16)

# rs1_val == 549755813888, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000011, x14, 280, x16)

# rs1_val == 1099511627776, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000010000000000, 0x000000000000000f, x14, 288, x16)

# rs1_val == 2199023255552, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000020000000000, 0x000000000000000a, x14, 296, x16)

# rs1_val == 4398046511104, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000010, x14, 304, x16)

# rs1_val == 17592186044416, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000002a, x14, 312, x16)

# rs1_val == 35184372088832, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000002, x14, 320, x16)

# rs1_val == 70368744177664, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000003b, x14, 328, x16)

# rs1_val == 281474976710656, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000003d, x14, 336, x16)

# rs1_val == 562949953421312, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000020, x14, 344, x16)

# rs1_val == 1125899906842624, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0004000000000000, 0x000000000000000e, x14, 352, x16)

# rs1_val == 2251799813685248, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000000, x14, 360, x16)

# rs1_val == 4503599627370496, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000003b, x14, 368, x16)

# rs1_val == 9007199254740992, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000000d, x14, 376, x16)

# rs1_val == 18014398509481984, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000008, x14, 384, x16)

# rs1_val == 36028797018963968, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000006, x14, 392, x16)

# rs1_val == 72057594037927936, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000003d, x14, 400, x16)

# rs1_val == 144115188075855872, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000003b, x14, 408, x16)

# rs1_val == 288230376151711744, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000005, x14, 416, x16)

# rs1_val == 576460752303423488, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000007, x14, 424, x16)

# rs1_val == -2199023255553, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x7fffff, 0xfffffdffffffffff, 0x0000000000000009, x14, 432, x16)

# rs1_val == -4398046511105, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffffbffffffffff, 0x000000000000000a, x14, 440, x16)

# rs1_val == -8796093022209, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffff7ffffffffff, 0x000000000000003e, x14, 448, x16)

# rs1_val == -17592186044417, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xffffefffffffffff, 0x000000000000003d, x14, 456, x16)

# rs1_val == -35184372088833, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xffffdfffffffffff, 0x0000000000000006, x14, 464, x16)

# rs1_val == -70368744177665, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffffbfffffffffff, 0x0000000000000037, x14, 472, x16)

# rs1_val == -140737488355329, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffff7fffffffffff, 0x0000000000000037, x14, 480, x16)

# rs1_val == -281474976710657, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffeffffffffffff, 0x000000000000002f, x14, 488, x16)

# rs1_val == -562949953421313, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffdffffffffffff, 0x000000000000003e, x14, 496, x16)

# rs1_val == -1125899906842625, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7fff, 0xfffbffffffffffff, 0x0000000000000011, x14, 504, x16)

# rs1_val == -2251799813685249, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xfff7ffffffffffff, 0x0000000000000008, x14, 512, x16)

# rs1_val == -4503599627370497, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffefffffffffffff, 0x000000000000000f, x14, 520, x16)

# rs1_val == -9007199254740993, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xffdfffffffffffff, 0x0000000000000004, x14, 528, x16)

# rs1_val == -18014398509481985, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xffbfffffffffffff, 0x0000000000000007, x14, 536, x16)

# rs1_val == -36028797018963969, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xff7fffffffffffff, 0x000000000000002a, x14, 544, x16)

# rs1_val == -72057594037927937, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xfeffffffffffffff, 0x000000000000000c, x14, 552, x16)

# rs1_val == -144115188075855873, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfdffffffffffffff, 0x000000000000002f, x14, 560, x16)

# rs1_val == -288230376151711745, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xfbffffffffffffff, 0x0000000000000006, x14, 568, x16)

# rs1_val == -576460752303423489, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xf7ffffffffffffff, 0x0000000000000006, x14, 576, x16)

# rs1_val == -1152921504606846977, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xefffffffffffffff, 0x0000000000000015, x14, 584, x16)

# rs1_val == -2305843009213693953, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0x000000000000003f, x14, 592, x16)

# rs1_val == -4611686018427387905, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xbfffffffffffffff, 0x0000000000000004, x14, 600, x16)

# rs1_val == -6148914691236517206, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x2aaaaa, 0xaaaaaaaaaaaaaaaa, 0x000000000000002a, x14, 608, x16)

# rs1_val == 1152921504606846976, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000001, x14, 616, x16)

# rs1_val == 2305843009213693952, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000012, x14, 624, x16)

# rs1_val == 4611686018427387904, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000013, x14, 632, x16)

# rs1_val == -2, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xfffffffffffffffe, 0x0000000000000004, x14, 640, x16)

# rs1_val == -5, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xfffffffb, 0xfffffffffffffffb, 0x0000000000000000, x14, 648, x16)

# rs1_val == -9, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xfffffffffffffff7, 0x0000000000000007, x14, 656, x16)

# rs1_val == -17, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xffffffffffffffef, 0x000000000000003e, x14, 664, x16)

# rs1_val == -65, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xffffffffffffffbf, 0x0000000000000012, x14, 672, x16)

# rs1_val == -513, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffeff, 0xfffffffffffffdff, 0x0000000000000001, x14, 680, x16)

# rs1_val == -1025, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffffffffffbff, 0x000000000000002f, x14, 688, x16)

# rs1_val == -2049, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffffffffff7ff, 0x000000000000003f, x14, 696, x16)

# rs1_val == -4097, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffdf, 0xffffffffffffefff, 0x0000000000000007, x14, 704, x16)

# rs1_val == -8193, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff7, 0xffffffffffffdfff, 0x000000000000002a, x14, 712, x16)

# rs1_val == -16385, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffbf, 0xffffffffffffbfff, 0x0000000000000008, x14, 720, x16)

# rs1_val == -32769, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1fffe, 0xffffffffffff7fff, 0x000000000000000f, x14, 728, x16)

# rs1_val == -65537, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xfffffffffffeffff, 0x000000000000003b, x14, 736, x16)

# rs1_val == -131073, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffffffffffdffff, 0x0000000000000013, x14, 744, x16)

# rs1_val == -262145, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xfffbffff, 0xfffffffffffbffff, 0x0000000000000020, x14, 752, x16)

# rs1_val == -524289, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffffffffff7ffff, 0x0000000000000037, x14, 760, x16)

# rs1_val == -1048577, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffefff, 0xffffffffffefffff, 0x0000000000000008, x14, 768, x16)

# rs1_val == -2097153, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffbf, 0xffffffffffdfffff, 0x000000000000002f, x14, 776, x16)

# rs1_val == -4194305, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffffffffffbfffff, 0x0000000000000037, x14, 784, x16)

# rs1_val == -8388609, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fdfffff, 0xffffffffff7fffff, 0x0000000000000002, x14, 792, x16)

# rs1_val == -16777217, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1fdff, 0xfffffffffeffffff, 0x000000000000000f, x14, 800, x16)

# rs1_val == -33554433, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fbfff, 0xfffffffffdffffff, 0x000000000000000b, x14, 808, x16)

# rs1_val == -67108865, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffffffffbffffff, 0x000000000000003e, x14, 816, x16)

# rs1_val == -134217729, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7bfffff, 0xfffffffff7ffffff, 0x0000000000000005, x14, 824, x16)

# rs1_val == -268435457, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xeffffff, 0xffffffffefffffff, 0x0000000000000004, x14, 832, x16)

# rs1_val == -536870913, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x6ff, 0xffffffffdfffffff, 0x0000000000000015, x14, 840, x16)

# rs1_val == -1073741825, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x17, 0xffffffffbfffffff, 0x000000000000003b, x14, 848, x16)

# rs1_val == -2147483649, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0x7fff, 0xffffffff7fffffff, 0x0000000000000010, x14, 856, x16)

# rs1_val == -4294967297, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xfffffffeffffffff, 0x000000000000000b, x14, 864, x16)

# rs1_val == -8589934593, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffffdffffffff, 0x000000000000000e, x14, 872, x16)

# rs1_val == -17179869185, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xfffffffbffffffff, 0x0000000000000020, x14, 880, x16)

# rs1_val == -34359738369, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffffff7ffffffff, 0x000000000000003e, x14, 888, x16)

# rs1_val == -68719476737, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xffffffefffffffff, 0x0000000000000007, x14, 896, x16)

# rs1_val == -137438953473, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xffffffdfffffffff, 0x0000000000000020, x14, 904, x16)

# rs1_val == -274877906945, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xffffffbfffffffff, 0x000000000000000c, x14, 912, x16)

# rs1_val == -549755813889, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xffffff7fffffffff, 0x000000000000000e, x14, 920, x16)

# rs1_val == -1099511627777, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xfffffeffffffffff, 0x000000000000000c, x14, 928, x16)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 47
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffffffffffffff, 0x000000000000002f, x14, 936, x16)

# rs1_val < 0 and rs2_val == 0, rs1_val == -129
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffff7f, 0xffffffffffffff7f, 0x0000000000000000, x14, 944, x16)

# rs1_val > 0 and rs2_val == 0, rs1_val == 65536
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x0000000000010000, 0x0000000000000000, x14, 952, x16)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000007, 0x0000000000000007, x14, 960, x16)

# rs2_val == 62, rs1_val == -3
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffffffffffffffd, 0x000000000000003e, x14, 968, x16)

# rs2_val == 61, rs1_val == 8
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000008, 0x000000000000003d, x14, 976, x16)

# rs1_val == 16, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000010, 0x000000000000003e, x14, 984, x16)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x14_0:
    .fill 124*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
