
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 == rs2 == rd, rs1==x5, rs2==x5, rd==x5, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -6148914691236517206
# opcode: srl ; op1:x5; op2:x5; dest:x5; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000009
TEST_RR_OP(srl, x5, x5, x5, 0x555555, 0xaaaaaaaaaaaaaaaa, 0x0000000000000009, x10, 0, x18)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x31, rs2==x29, rd==x21, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 42, rs1_val == 256
# opcode: srl ; op1:x31; op2:x29; dest:x21; op1val:0x0000000000000100;  op2val:0x000000000000002a
TEST_RR_OP(srl, x21, x31, x29, 0x0, 0x0000000000000100, 0x000000000000002a, x10, 8, x18)

# rs1 == rs2 != rd, rs1==x14, rs2==x14, rd==x16, rs1_val < 0 and rs2_val == 0, rs1_val == -257
# opcode: srl ; op1:x14; op2:x14; dest:x16; op1val:0xfffffffffffffeff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x16, x14, x14, 0xfffffeff, 0xfffffffffffffeff, 0x0000000000000000, x10, 16, x18)

# rs2 == rd != rs1, rs1==x0, rs2==x11, rd==x11, rs1_val > 0 and rs2_val == 0, rs1_val == 536870912
# opcode: srl ; op1:x0; op2:x11; dest:x11; op1val:0x0000000020000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x11, x0, x11, 0x20000000, 0x0000000020000000, 0x0000000000000000, x10, 24, x18)

# rs1 == rd != rs2, rs1==x4, rs2==x2, rd==x4, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 32, rs2_val == 32
# opcode: srl ; op1:x4; op2:x2; dest:x4; op1val:0x0000000000000020;  op2val:0x0000000000000020
TEST_RR_OP(srl, x4, x4, x2, 0x20, 0x0000000000000020, 0x0000000000000020, x10, 32, x18)

# rs1==x8, rs2==x24, rd==x9, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -9223372036854775808
# opcode: srl ; op1:x8; op2:x24; dest:x9; op1val:0x8000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(srl, x9, x8, x24, 0x0, 0x8000000000000000, 0x0000000000000005, x10, 40, x18)

# rs1==x24, rs2==x16, rd==x31, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 16
# opcode: srl ; op1:x24; op2:x16; dest:x31; op1val:0x0000000000000000;  op2val:0x0000000000000010
TEST_RR_OP(srl, x31, x24, x16, 0x0, 0x0000000000000000, 0x0000000000000010, x10, 48, x18)

# rs1==x9, rs2==x20, rd==x28, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807, rs2_val == 62
# opcode: srl ; op1:x9; op2:x20; dest:x28; op1val:0x7fffffffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x28, x9, x20, 0x3, 0x7fffffffffffffff, 0x000000000000003e, x10, 56, x18)

# rs1==x20, rs2==x4, rd==x3, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: srl ; op1:x20; op2:x4; dest:x3; op1val:0x0000000000000001;  op2val:0x0000000000000011
TEST_RR_OP(srl, x3, x20, x4, 0x0, 0x0000000000000001, 0x0000000000000011, x10, 64, x18)

# rs1==x17, rs2==x13, rd==x12, rs2_val == 1, 
# opcode: srl ; op1:x17; op2:x13; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x17, x13, 0x7fffff7f, 0xfffffffffffffeff, 0x0000000000000001, x10, 72, x18)

# rs1==x7, rs2==x1, rd==x30, rs2_val == 2, 
# opcode: srl ; op1:x7; op2:x1; dest:x30; op1val:0xfffffffffffffff8;  op2val:0x0000000000000002
TEST_RR_OP(srl, x30, x7, x1, 0x3ffffffe, 0xfffffffffffffff8, 0x0000000000000002, x10, 80, x18)

# rs1==x29, rs2==x27, rd==x22, rs2_val == 4, 
# opcode: srl ; op1:x29; op2:x27; dest:x22; op1val:0xfffffffffffffffa;  op2val:0x0000000000000004
TEST_RR_OP(srl, x22, x29, x27, 0xfffffff, 0xfffffffffffffffa, 0x0000000000000004, x10, 88, x18)

# rs1==x16, rs2==x25, rd==x17, rs2_val == 8, rs1_val == 36028797018963968
# opcode: srl ; op1:x16; op2:x25; dest:x17; op1val:0x0080000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x17, x16, x25, 0x0, 0x0080000000000000, 0x0000000000000008, x10, 96, x18)

# rs1==x25, rs2==x15, rd==x7, rs2_val == 61, rs1_val == 1152921504606846976
# opcode: srl ; op1:x25; op2:x15; dest:x7; op1val:0x1000000000000000;  op2val:0x000000000000003d
TEST_RR_OP(srl, x7, x25, x15, 0x0, 0x1000000000000000, 0x000000000000003d, x10, 104, x18)

# rs1==x26, rs2==x6, rd==x8, rs2_val == 59, rs1_val == -4398046511105
# opcode: srl ; op1:x26; op2:x6; dest:x8; op1val:0xfffffbffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x8, x26, x6, 0x1f, 0xfffffbffffffffff, 0x000000000000003b, x10, 112, x18)

# rs1==x13, rs2==x7, rd==x0, rs2_val == 55, 
# opcode: srl ; op1:x13; op2:x7; dest:x0; op1val:0x0080000000000000;  op2val:0x0000000000000037
TEST_RR_OP(srl, x0, x13, x7, 0x0, 0x0080000000000000, 0x0000000000000037, x10, 120, x5)

# rs1==x19, rs2==x12, rd==x20, rs2_val == 47, rs1_val == 140737488355328
# opcode: srl ; op1:x19; op2:x12; dest:x20; op1val:0x0000800000000000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x20, x19, x12, 0x0, 0x0000800000000000, 0x000000000000002f, x10, 128, x5)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x21, rs2==x31, rd==x23, rs2_val == 31, rs1_val == 6148914691236517205
# opcode: srl ; op1:x21; op2:x31; dest:x23; op1val:0x5555555555555555;  op2val:0x000000000000001f
TEST_RR_OP(srl, x23, x21, x31, 0x0, 0x5555555555555555, 0x000000000000001f, x4, 0, x5)

# rs1==x18, rs2==x10, rd==x29, rs2_val == 21, 
# opcode: srl ; op1:x18; op2:x10; dest:x29; op1val:0xfffffffffffffff8;  op2val:0x0000000000000015
TEST_RR_OP(srl, x29, x18, x10, 0x7ff, 0xfffffffffffffff8, 0x0000000000000015, x4, 8, x5)

# rs1==x23, rs2==x8, rd==x18, rs1_val == 2, 
# opcode: srl ; op1:x23; op2:x8; dest:x18; op1val:0x0000000000000002;  op2val:0x000000000000002a
TEST_RR_OP(srl, x18, x23, x8, 0x0, 0x0000000000000002, 0x000000000000002a, x4, 16, x5)

# rs1==x2, rs2==x3, rd==x15, rs1_val == 4, 
# opcode: srl ; op1:x2; op2:x3; dest:x15; op1val:0x0000000000000004;  op2val:0x0000000000000012
TEST_RR_OP(srl, x15, x2, x3, 0x0, 0x0000000000000004, 0x0000000000000012, x4, 24, x5)

# rs1==x3, rs2==x22, rd==x27, rs1_val == 8, 
# opcode: srl ; op1:x3; op2:x22; dest:x27; op1val:0x0000000000000008;  op2val:0x0000000000000001
TEST_RR_OP(srl, x27, x3, x22, 0x4, 0x0000000000000008, 0x0000000000000001, x4, 32, x5)

# rs1==x27, rs2==x30, rd==x1, rs1_val == 16, 
# opcode: srl ; op1:x27; op2:x30; dest:x1; op1val:0x0000000000000010;  op2val:0x000000000000002a
TEST_RR_OP(srl, x1, x27, x30, 0x0, 0x0000000000000010, 0x000000000000002a, x4, 40, x5)

# rs1==x6, rs2==x21, rd==x10, rs1_val == 64, 
# opcode: srl ; op1:x6; op2:x21; dest:x10; op1val:0x0000000000000040;  op2val:0x0000000000000002
TEST_RR_OP(srl, x10, x6, x21, 0x10, 0x0000000000000040, 0x0000000000000002, x4, 48, x5)

# rs1==x15, rs2==x26, rd==x14, rs1_val == 128, 
# opcode: srl ; op1:x15; op2:x26; dest:x14; op1val:0x0000000000000080;  op2val:0x0000000000000007
TEST_RR_OP(srl, x14, x15, x26, 0x1, 0x0000000000000080, 0x0000000000000007, x4, 56, x5)

# rs1==x12, rs2==x23, rd==x6, rs1_val == 512, 
# opcode: srl ; op1:x12; op2:x23; dest:x6; op1val:0x0000000000000200;  op2val:0x000000000000000e
TEST_RR_OP(srl, x6, x12, x23, 0x0, 0x0000000000000200, 0x000000000000000e, x4, 64, x5)

# rs1==x30, rs2==x9, rd==x25, rs1_val == 1024, 
# opcode: srl ; op1:x30; op2:x9; dest:x25; op1val:0x0000000000000400;  op2val:0x000000000000003d
TEST_RR_OP(srl, x25, x30, x9, 0x0, 0x0000000000000400, 0x000000000000003d, x4, 72, x5)

# rs1==x1, rs2==x28, rd==x26, rs1_val == 2048, 
# opcode: srl ; op1:x1; op2:x28; dest:x26; op1val:0x0000000000000800;  op2val:0x000000000000003e
TEST_RR_OP(srl, x26, x1, x28, 0x0, 0x0000000000000800, 0x000000000000003e, x4, 80, x5)

# rs1==x10, rs2==x0, rd==x24, rs1_val == 4096, 
# opcode: srl ; op1:x10; op2:x0; dest:x24; op1val:0x0000000000001000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x24, x10, x0, 0x0, 0x0000000000001000, 0x000000000000002f, x4, 88, x5)

# rs1==x11, rs2==x19, rd==x13, rs1_val == 8192, 
# opcode: srl ; op1:x11; op2:x19; dest:x13; op1val:0x0000000000002000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x13, x11, x19, 0x10, 0x0000000000002000, 0x0000000000000009, x4, 96, x5)

# rs1==x28, rs2==x18, rd==x19, rs1_val == 16384, 
# opcode: srl ; op1:x28; op2:x18; dest:x19; op1val:0x0000000000004000;  op2val:0x0000000000000006
TEST_RR_OP(srl, x19, x28, x18, 0x100, 0x0000000000004000, 0x0000000000000006, x4, 104, x1)

# rs1==x22, rs2==x17, rd==x2, rs1_val == 32768, 
# opcode: srl ; op1:x22; op2:x17; dest:x2; op1val:0x0000000000008000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x2, x22, x17, 0x0, 0x0000000000008000, 0x000000000000003e, x4, 112, x1)

# rs1_val == 65536, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0x10, 0x0000000000010000, 0x000000000000000c, x4, 120, x1)

# rs1_val == 131072, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x20000, 0x0000000000020000, 0x0000000000000000, x4, 128, x1)

# rs1_val == 262144, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x0000000000040000, 0x0000000000000005, x4, 136, x1)

# rs1_val == 524288, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000007
TEST_RR_OP(srl, x12, x10, x11, 0x1000, 0x0000000000080000, 0x0000000000000007, x4, 144, x1)

# rs1_val == 1048576, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000100000, 0x000000000000003e, x4, 152, x1)

# rs1_val == 2097152, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0x200, 0x0000000000200000, 0x000000000000000c, x4, 160, x1)

# rs1_val == 4194304, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x0000000000400000, 0x0000000000000009, x4, 168, x1)

# rs1_val == 8388608, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000000a
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x0000000000800000, 0x000000000000000a, x4, 176, x1)

# rs1_val == 16777216, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0x100, 0x0000000001000000, 0x0000000000000010, x4, 184, x1)

# rs1_val == 33554432, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x10000, 0x0000000002000000, 0x0000000000000009, x4, 192, x1)

# rs1_val == 67108864, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0x4000000, 0x0000000004000000, 0x0000000000000020, x4, 200, x1)

# rs1_val == 134217728, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x40000, 0x0000000008000000, 0x0000000000000009, x4, 208, x1)

# rs1_val == 268435456, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000006
TEST_RR_OP(srl, x12, x10, x11, 0x400000, 0x0000000010000000, 0x0000000000000006, x4, 216, x1)

# rs1_val == 1073741824, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x8000, 0x0000000040000000, 0x000000000000000f, x4, 224, x1)

# rs1_val == 2147483648, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x10000000, 0x0000000080000000, 0x0000000000000003, x4, 232, x1)

# rs1_val == 4294967296, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x000000000000000b
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000100000000, 0x000000000000000b, x4, 240, x1)

# rs1_val == 8589934592, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000200000000, 0x000000000000002a, x4, 248, x1)

# rs1_val == 17179869184, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000400000000, 0x000000000000002f, x4, 256, x1)

# rs1_val == 34359738368, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000003e, x4, 264, x1)

# rs1_val == 68719476736, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000001000000000, 0x000000000000003b, x4, 272, x1)

# rs1_val == 137438953472, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000009, x4, 280, x1)

# rs1_val == 274877906944, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000003f, x4, 288, x1)

# rs1_val == 549755813888, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000013, x4, 296, x1)

# rs1_val == 1099511627776, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000000, x4, 304, x1)

# rs1_val == 2199023255552, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000015
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000015, x4, 312, x1)

# rs1_val == 4398046511104, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000001, x4, 320, x1)

# rs1_val == 8796093022208, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000003e, x4, 328, x1)

# rs1_val == 17592186044416, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000001, x4, 336, x1)

# rs1_val == 35184372088832, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000012
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000012, x4, 344, x1)

# rs1_val == 70368744177664, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000011
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000000011, x4, 352, x1)

# rs1_val == 281474976710656, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000000d, x4, 360, x1)

# rs1_val == 562949953421312, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000003, x4, 368, x1)

# rs1_val == 1125899906842624, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000005, x4, 376, x1)

# rs1_val == 2251799813685248, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000000, x4, 384, x1)

# rs1_val == 4503599627370496, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000001f, x4, 392, x1)

# rs1_val == 9007199254740992, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000013, x4, 400, x1)

# rs1_val == 18014398509481984, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000003e, x4, 408, x1)

# rs1_val == 72057594037927936, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000002
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000002, x4, 416, x1)

# rs1_val == 144115188075855872, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000008, x4, 424, x1)

# rs1_val == 288230376151711744, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000006
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000006, x4, 432, x1)

# rs1_val == 576460752303423488, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000013, x4, 440, x1)

# rs1_val == -2199023255553, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xfffffdffffffffff, 0x000000000000001f, x4, 448, x1)

# rs1_val == -8796093022209, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffff, 0xfffff7ffffffffff, 0x000000000000002a, x4, 456, x1)

# rs1_val == -17592186044417, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffffefffffffffff, 0x000000000000003b, x4, 464, x1)

# rs1_val == -35184372088833, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0xffff, 0xffffdfffffffffff, 0x0000000000000010, x4, 472, x1)

# rs1_val == -70368744177665, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffff, 0xffffbfffffffffff, 0x0000000000000006, x4, 480, x1)

# rs1_val == -140737488355329, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x7fffff, 0xffff7fffffffffff, 0x0000000000000009, x4, 488, x1)

# rs1_val == -281474976710657, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7ffff, 0xfffeffffffffffff, 0x000000000000000d, x4, 496, x1)

# rs1_val == -562949953421313, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xfffdffffffffffff, 0x000000000000003f, x4, 504, x1)

# rs1_val == -1125899906842625, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xfffbffffffffffff, 0x000000000000000f, x4, 512, x1)

# rs1_val == -2251799813685249, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x7fffff, 0xfff7ffffffffffff, 0x0000000000000009, x4, 520, x1)

# rs1_val == -4503599627370497, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srl, x12, x10, x11, 0x1ffffff, 0xffefffffffffffff, 0x0000000000000007, x4, 528, x1)

# rs1_val == -9007199254740993, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0xfffff, 0xffdfffffffffffff, 0x000000000000000c, x4, 536, x1)

# rs1_val == -18014398509481985, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xffbfffffffffffff, 0x0000000000000020, x4, 544, x1)

# rs1_val == -36028797018963969, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffff, 0xff7fffffffffffff, 0x000000000000002a, x4, 552, x1)

# rs1_val == -72057594037927937, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xfeffffffffffffff, 0x000000000000003f, x4, 560, x1)

# rs1_val == -144115188075855873, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0xffff, 0xfdffffffffffffff, 0x0000000000000010, x4, 568, x1)

# rs1_val == -288230376151711745, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffff, 0xfbffffffffffffff, 0x0000000000000001, x4, 576, x1)

# rs1_val == -576460752303423489, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xf7ffffffffffffff, 0x0000000000000020, x4, 584, x1)

# rs1_val == -1152921504606846977, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xefffffffffffffff, 0x000000000000001f, x4, 592, x1)

# rs1_val == -2305843009213693953, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0xffff, 0xdfffffffffffffff, 0x0000000000000010, x4, 600, x1)

# rs1_val == -4611686018427387905, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srl, x12, x10, x11, 0x1ffffff, 0xbfffffffffffffff, 0x0000000000000007, x4, 608, x1)

# rs1_val == 2305843009213693952, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000002f, x4, 616, x1)

# rs1_val == 4611686018427387904, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000008, x4, 624, x1)

# rs1_val == -2, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fff, 0xfffffffffffffffe, 0x0000000000000012, x4, 632, x1)

# rs1_val == -3, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000000a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffff, 0xfffffffffffffffd, 0x000000000000000a, x4, 640, x1)

# rs1_val == -5, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffffffffffffb, 0x000000000000003d, x4, 648, x1)

# rs1_val == -9, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xfffffffffffffff7, 0x000000000000000f, x4, 656, x1)

# rs1_val == -17, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffffffffffffef, 0x000000000000003f, x4, 664, x1)

# rs1_val == -33, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0xffffff, 0xffffffffffffffdf, 0x0000000000000008, x4, 672, x1)

# rs1_val == -65, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7ffff, 0xffffffffffffffbf, 0x000000000000000d, x4, 680, x1)

# rs1_val == -129, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xffffff7f, 0xffffffffffffff7f, 0x0000000000000020, x4, 688, x1)

# rs1_val == -513, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x1ff, 0xfffffffffffffdff, 0x0000000000000037, x4, 696, x1)

# rs1_val == -1025, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1fffff, 0xfffffffffffffbff, 0x000000000000000b, x4, 704, x1)

# rs1_val == -2049, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000002
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffdff, 0xfffffffffffff7ff, 0x0000000000000002, x4, 712, x1)

# rs1_val == -4097, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7ffff, 0xffffffffffffefff, 0x000000000000000d, x4, 720, x1)

# rs1_val == -8193, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xffffffffffffdfff, 0x000000000000000f, x4, 728, x1)

# rs1_val == -16385, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffef, 0xffffffffffffbfff, 0x000000000000002a, x4, 736, x1)

# rs1_val == -32769, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xffffffffffff7fff, 0x000000000000003e, x4, 744, x1)

# rs1_val == -65537, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xfffffffffffeffff, 0x000000000000003e, x4, 752, x1)

# rs1_val == -131073, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fff, 0xfffffffffffdffff, 0x0000000000000012, x4, 760, x1)

# rs1_val == -262145, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000007
TEST_RR_OP(srl, x12, x10, x11, 0x1fff7ff, 0xfffffffffffbffff, 0x0000000000000007, x4, 768, x1)

# rs1_val == -524289, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x1ffe, 0xfffffffffff7ffff, 0x0000000000000013, x4, 776, x1)

# rs1_val == -1048577, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7ff7ffff, 0xffffffffffefffff, 0x0000000000000001, x4, 784, x1)

# rs1_val == -2097153, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xffffffffffdfffff, 0x000000000000003d, x4, 792, x1)

# rs1_val == -4194305, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xffffffffffbfffff, 0x000000000000003d, x4, 800, x1)

# rs1_val == -8388609, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x1fe, 0xffffffffff7fffff, 0x0000000000000037, x4, 808, x1)

# rs1_val == -16777217, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fbf, 0xfffffffffeffffff, 0x0000000000000012, x4, 816, x1)

# rs1_val == -33554433, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000004
TEST_RR_OP(srl, x12, x10, x11, 0xfdfffff, 0xfffffffffdffffff, 0x0000000000000004, x4, 824, x1)

# rs1_val == -67108865, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000015
TEST_RR_OP(srl, x12, x10, x11, 0x7df, 0xfffffffffbffffff, 0x0000000000000015, x4, 832, x1)

# rs1_val == -134217729, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7bffffff, 0xfffffffff7ffffff, 0x0000000000000001, x4, 840, x1)

# rs1_val == -268435457, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffffffefffffff, 0x000000000000003f, x4, 848, x1)

# rs1_val == -536870913, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xdfffffff, 0xffffffffdfffffff, 0x0000000000000020, x4, 856, x1)

# rs1_val == -1073741825, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x17ff, 0xffffffffbfffffff, 0x0000000000000013, x4, 864, x1)

# rs1_val == -2147483649, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0xf, 0xffffffff7fffffff, 0x000000000000003b, x4, 872, x1)

# rs1_val == -4294967297, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xfffffffeffffffff, 0x000000000000000f, x4, 880, x1)

# rs1_val == -8589934593, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffffdffffffff, 0x000000000000003d, x4, 888, x1)

# rs1_val == -17179869185, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffff, 0xfffffffbffffffff, 0x0000000000000001, x4, 896, x1)

# rs1_val == -34359738369, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ffff, 0xfffffff7ffffffff, 0x000000000000000e, x4, 904, x1)

# rs1_val == -68719476737, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x7ffffff, 0xffffffefffffffff, 0x0000000000000005, x4, 912, x1)

# rs1_val == -137438953473, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffffdfffffffff, 0x000000000000001f, x4, 920, x1)

# rs1_val == -274877906945, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffff, 0xffffffbfffffffff, 0x0000000000000006, x4, 928, x1)

# rs1_val == -549755813889, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000000000020, x4, 936, x1)

# rs1_val == -1099511627777, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(srl, x12, x10, x11, 0x7fff, 0xfffffeffffffffff, 0x0000000000000011, x4, 944, x1)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -6148914691236517206
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x555555, 0xaaaaaaaaaaaaaaaa, 0x0000000000000009, x4, 952, x1)

# rs1_val < 0 and rs2_val == 0, rs1_val == -257
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0xfffffeff, 0xfffffffffffffeff, 0x0000000000000000, x4, 960, x1)

# rs1_val > 0 and rs2_val == 0, rs1_val == 536870912
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x20000000, 0x0000000020000000, 0x0000000000000000, x4, 968, x1)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 32, rs2_val == 32
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0x20, 0x0000000000000020, 0x0000000000000020, x4, 976, x1)

# rs2_val == 55, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000037, x4, 984, x1)

# rs1_val == 4096, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000001000, 0x000000000000002f, x4, 992, x1)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 125*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
