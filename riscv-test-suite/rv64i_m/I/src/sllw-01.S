
#This assembly file tests the sllw instruction of the RISC-V i extension for the sllw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sllw)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rs2 == rd, rs1==x21, rs2==x21, rd==x21, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, 
# opcode: sllw ; op1:x21; op2:x21; dest:x21; op1val:0xfffffffffffffff6;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x21, x21, x21, 0xffffffffffffb000, 0xfffffffffffffff6, 0x000000000000000b, x2, 0, x9)

# rs1 == rd != rs2, rs1==x1, rs2==x19, rd==x1, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 70368744177664, rs2_val == 21
# opcode: sllw ; op1:x1; op2:x19; dest:x1; op1val:0x0000400000000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x1, x1, x19, 0x0, 0x0000400000000000, 0x0000000000000015, x2, 8, x9)

# rs2 == rd != rs1, rs1==x7, rs2==x31, rd==x31, rs1_val < 0 and rs2_val == 0, rs1_val == -9223372036854775808, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
# opcode: sllw ; op1:x7; op2:x31; dest:x31; op1val:0x8000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x31, x7, x31, 0x8000000000000000, 0x8000000000000000, 0x0000000000000000, x2, 16, x9)

# rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x4, rs1_val > 0 and rs2_val == 0, 
# opcode: sllw ; op1:x12; op2:x12; dest:x4; op1val:0x0000000000000005;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x4, x12, x12, 0x5, 0x0000000000000005, 0x0000000000000000, x2, 24, x9)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x17, rs2==x29, rd==x16, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: sllw ; op1:x17; op2:x29; dest:x16; op1val:0x0000000000000007;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x16, x17, x29, 0x380, 0x0000000000000007, 0x0000000000000007, x2, 32, x9)

# rs1==x24, rs2==x5, rd==x14, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 4
# opcode: sllw ; op1:x24; op2:x5; dest:x14; op1val:0x0000000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x14, x24, x5, 0x0, 0x0000000000000000, 0x0000000000000004, x2, 40, x9)

# rs1==x26, rs2==x8, rd==x18, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807
# opcode: sllw ; op1:x26; op2:x8; dest:x18; op1val:0x7fffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x18, x26, x8, 0x7fffffffffffffff, 0x7fffffffffffffff, 0x0000000000000000, x2, 48, x9)

# rs1==x16, rs2==x13, rd==x17, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sllw ; op1:x16; op2:x13; dest:x17; op1val:0x0000000000000001;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x17, x16, x13, 0x20, 0x0000000000000001, 0x0000000000000005, x2, 56, x9)

# rs1==x23, rs2==x20, rd==x15, rs2_val == 1, rs1_val == 262144
# opcode: sllw ; op1:x23; op2:x20; dest:x15; op1val:0x0000000000040000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x15, x23, x20, 0x80000, 0x0000000000040000, 0x0000000000000001, x2, 64, x9)

# rs1==x10, rs2==x28, rd==x5, rs2_val == 2, rs1_val == -131073
# opcode: sllw ; op1:x10; op2:x28; dest:x5; op1val:0xfffffffffffdffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x5, x10, x28, 0xfffffffffff7fffc, 0xfffffffffffdffff, 0x0000000000000002, x2, 72, x9)

# rs1==x11, rs2==x16, rd==x6, rs2_val == 8, rs1_val == -268435457
# opcode: sllw ; op1:x11; op2:x16; dest:x6; op1val:0xffffffffefffffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x6, x11, x16, 0xffffffefffffff00, 0xffffffffefffffff, 0x0000000000000008, x2, 80, x9)

# rs1==x25, rs2==x18, rd==x11, rs2_val == 16, rs1_val == -33554433
# opcode: sllw ; op1:x25; op2:x18; dest:x11; op1val:0xfffffffffdffffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x11, x25, x18, 0xfffffdffffff0000, 0xfffffffffdffffff, 0x0000000000000010, x2, 88, x9)

# rs1==x0, rs2==x10, rd==x25, rs2_val == 30, rs1_val == -274877906945
# opcode: sllw ; op1:x0; op2:x10; dest:x25; op1val:0xffffffbfffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x25, x0, x10, 0xffffffffc0000000, 0xffffffbfffffffff, 0x000000000000001e, x2, 96, x9)

# rs1==x31, rs2==x26, rd==x13, rs2_val == 29, rs1_val == 32768
# opcode: sllw ; op1:x31; op2:x26; dest:x13; op1val:0x0000000000008000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x13, x31, x26, 0x100000000000, 0x0000000000008000, 0x000000000000001d, x2, 104, x9)

# rs1==x30, rs2==x3, rd==x26, rs2_val == 27, 
# opcode: sllw ; op1:x30; op2:x3; dest:x26; op1val:0x7fffffffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x26, x30, x3, 0xfffffffff8000000, 0x7fffffffffffffff, 0x000000000000001b, x2, 112, x9)

# rs1==x29, rs2==x25, rd==x10, rs2_val == 23, rs1_val == -144115188075855873
# opcode: sllw ; op1:x29; op2:x25; dest:x10; op1val:0xfdffffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x10, x29, x25, 0xffffffffff800000, 0xfdffffffffffffff, 0x0000000000000017, x2, 120, x21)

# rs1==x22, rs2==x7, rd==x20, rs2_val == 15, rs1_val == 16
# opcode: sllw ; op1:x22; op2:x7; dest:x20; op1val:0x0000000000000010;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x20, x22, x7, 0x80000, 0x0000000000000010, 0x000000000000000f, x2, 128, x21)
RVTEST_SIGBASE( x16,signature_x16_0)

# rs1==x3, rs2==x23, rd==x8, rs2_val == 10, rs1_val == 68719476736
# opcode: sllw ; op1:x3; op2:x23; dest:x8; op1val:0x0000001000000000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x8, x3, x23, 0x400000000000, 0x0000001000000000, 0x000000000000000a, x16, 0, x21)

# rs1==x19, rs2==x24, rd==x23, rs1_val == 2, 
# opcode: sllw ; op1:x19; op2:x24; dest:x23; op1val:0x0000000000000002;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x23, x19, x24, 0x100, 0x0000000000000002, 0x0000000000000007, x16, 8, x21)

# rs1==x14, rs2==x22, rd==x29, rs1_val == 4, 
# opcode: sllw ; op1:x14; op2:x22; dest:x29; op1val:0x0000000000000004;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x29, x14, x22, 0x2000000, 0x0000000000000004, 0x0000000000000017, x16, 16, x21)

# rs1==x15, rs2==x1, rd==x3, rs1_val == 8, 
# opcode: sllw ; op1:x15; op2:x1; dest:x3; op1val:0x0000000000000008;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x3, x15, x1, 0x40000000, 0x0000000000000008, 0x000000000000001b, x16, 24, x21)

# rs1==x13, rs2==x27, rd==x12, rs1_val == 32, 
# opcode: sllw ; op1:x13; op2:x27; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x13, x27, 0x800, 0x0000000000000020, 0x0000000000000006, x16, 32, x21)

# rs1==x4, rs2==x14, rd==x22, rs1_val == 64, 
# opcode: sllw ; op1:x4; op2:x14; dest:x22; op1val:0x0000000000000040;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x22, x4, x14, 0x4000, 0x0000000000000040, 0x0000000000000008, x16, 40, x21)

# rs1==x28, rs2==x11, rd==x2, rs1_val == 128, 
# opcode: sllw ; op1:x28; op2:x11; dest:x2; op1val:0x0000000000000080;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x2, x28, x11, 0x20000, 0x0000000000000080, 0x000000000000000a, x16, 48, x21)

# rs1==x8, rs2==x4, rd==x28, rs1_val == 256, 
# opcode: sllw ; op1:x8; op2:x4; dest:x28; op1val:0x0000000000000100;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x28, x8, x4, 0x4000000, 0x0000000000000100, 0x0000000000000012, x16, 56, x21)

# rs1==x9, rs2==x6, rd==x24, rs1_val == 512, 
# opcode: sllw ; op1:x9; op2:x6; dest:x24; op1val:0x0000000000000200;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x24, x9, x6, 0x8000000000, 0x0000000000000200, 0x000000000000001e, x16, 64, x21)

# rs1==x6, rs2==x0, rd==x19, rs1_val == 1024, 
# opcode: sllw ; op1:x6; op2:x0; dest:x19; op1val:0x0000000000000400;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x19, x6, x0, 0x20000000000, 0x0000000000000400, 0x000000000000001f, x16, 72, x21)

# rs1==x20, rs2==x2, rd==x9, rs1_val == 2048, 
# opcode: sllw ; op1:x20; op2:x2; dest:x9; op1val:0x0000000000000800;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x9, x20, x2, 0x40000000000, 0x0000000000000800, 0x000000000000001f, x16, 80, x21)

# rs1==x2, rs2==x17, rd==x0, rs1_val == 4096, 
# opcode: sllw ; op1:x2; op2:x17; dest:x0; op1val:0x0000000000001000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x0, x2, x17, 0x400000, 0x0000000000001000, 0x000000000000000a, x16, 88, x21)

# rs1==x5, rs2==x30, rd==x27, rs1_val == 8192, 
# opcode: sllw ; op1:x5; op2:x30; dest:x27; op1val:0x0000000000002000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x27, x5, x30, 0x40000000, 0x0000000000002000, 0x0000000000000011, x16, 96, x21)

# rs1==x27, rs2==x9, rd==x30, rs1_val == 16384, 
# opcode: sllw ; op1:x27; op2:x9; dest:x30; op1val:0x0000000000004000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x30, x27, x9, 0x2000000000, 0x0000000000004000, 0x0000000000000017, x16, 104, x21)

# rs1==x18, rs2==x15, rd==x7, rs1_val == 65536, 
# opcode: sllw ; op1:x18; op2:x15; dest:x7; op1val:0x0000000000010000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x7, x18, x15, 0x80000000, 0x0000000000010000, 0x000000000000000f, x16, 112, x21)

# rs1_val == 131072, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x100000, 0x0000000000020000, 0x0000000000000003, x16, 120, x1)

# rs1_val == 524288, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000, 0x0000000000080000, 0x000000000000000d, x16, 128, x1)

# rs1_val == 1048576, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000000, 0x0000000000100000, 0x000000000000001e, x16, 136, x1)

# rs1_val == 2097152, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000000000200000, 0x000000000000001e, x16, 144, x1)

# rs1_val == 4194304, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x800000, 0x0000000000400000, 0x0000000000000001, x16, 152, x1)

# rs1_val == 8388608, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000, 0x0000000000800000, 0x0000000000000009, x16, 160, x1)

# rs1_val == 16777216, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000000001000000, 0x0000000000000017, x16, 168, x1)

# rs1_val == 33554432, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000, 0x0000000002000000, 0x0000000000000008, x16, 176, x1)

# rs1_val == 67108864, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000000, 0x0000000004000000, 0x000000000000001e, x16, 184, x1)

# rs1_val == 134217728, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000, 0x0000000008000000, 0x0000000000000003, x16, 192, x1)

# rs1_val == 268435456, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000, 0x0000000010000000, 0x000000000000000d, x16, 200, x1)

# rs1_val == 536870912, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000, 0x0000000020000000, 0x0000000000000005, x16, 208, x1)

# rs1_val == 1073741824, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000, 0x0000000040000000, 0x0000000000000004, x16, 216, x1)

# rs1_val == 2147483648, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000, 0x0000000080000000, 0x000000000000000a, x16, 224, x1)

# rs1_val == 4294967296, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000, 0x0000000100000000, 0x0000000000000008, x16, 232, x1)

# rs1_val == 8589934592, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000000, 0x0000000200000000, 0x0000000000000011, x16, 240, x1)

# rs1_val == 17179869184, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x0000000400000000, 0x000000000000001d, x16, 248, x1)

# rs1_val == 34359738368, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000, 0x0000000800000000, 0x0000000000000001, x16, 256, x1)

# rs1_val == 137438953472, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000002000000000, 0x000000000000000e, x16, 264, x1)

# rs1_val == 274877906944, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000000, 0x0000004000000000, 0x0000000000000012, x16, 272, x1)

# rs1_val == 549755813888, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000, 0x0000008000000000, 0x0000000000000009, x16, 280, x1)

# rs1_val == 1099511627776, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000000, 0x0000010000000000, 0x0000000000000015, x16, 288, x1)

# rs1_val == 2199023255552, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000000000, 0x0000020000000000, 0x000000000000000d, x16, 296, x1)

# rs1_val == 4398046511104, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000040000000000, 0x000000000000001e, x16, 304, x1)

# rs1_val == 8796093022208, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000080000000000, 0x0000000000000004, x16, 312, x1)

# rs1_val == 17592186044416, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000001d, x16, 320, x1)

# rs1_val == 35184372088832, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000, 0x0000200000000000, 0x0000000000000004, x16, 328, x1)

# rs1_val == 140737488355328, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000800000000000, 0x0000000000000000, x16, 336, x1)

# rs1_val == 281474976710656, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000001e, x16, 344, x1)

# rs1_val == 562949953421312, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0002000000000000, 0x0000000000000002, x16, 352, x1)

# rs1_val == 1125899906842624, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0004000000000000, 0x000000000000000a, x16, 360, x1)

# rs1_val == 2251799813685248, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0008000000000000, 0x0000000000000009, x16, 368, x1)

# rs1_val == 4503599627370496, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000001f, x16, 376, x1)

# rs1_val == 9007199254740992, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000001d, x16, 384, x1)

# rs1_val == 18014398509481984, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000000, 0x0040000000000000, 0x0000000000000003, x16, 392, x1)

# rs1_val == 36028797018963968, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000009, x16, 400, x1)

# rs1_val == 72057594037927936, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000000e, x16, 408, x1)

# rs1_val == 144115188075855872, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000009, x16, 416, x1)

# rs1_val == 288230376151711744, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0400000000000000, 0x000000000000000e, x16, 424, x1)

# rs1_val == 576460752303423488, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000000c, x16, 432, x1)

# rs1_val == -8796093022209, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffeffffffffffe00, 0xfffff7ffffffffff, 0x0000000000000009, x16, 440, x1)

# rs1_val == -17592186044417, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xffff7ffffffffff8, 0xffffefffffffffff, 0x0000000000000003, x16, 448, x1)

# rs1_val == -35184372088833, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xdfffffffffff0000, 0xffffdfffffffffff, 0x0000000000000010, x16, 456, x1)

# rs1_val == -70368744177665, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xbfffffffffff0000, 0xffffbfffffffffff, 0x0000000000000010, x16, 464, x1)

# rs1_val == -140737488355329, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffe0000, 0xffff7fffffffffff, 0x0000000000000011, x16, 472, x1)

# rs1_val == -281474976710657, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff0000, 0xfffeffffffffffff, 0x0000000000000010, x16, 480, x1)

# rs1_val == -562949953421313, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfffdffffffffffff, 0x000000000000001e, x16, 488, x1)

# rs1_val == -1125899906842625, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfffbffffffffffff, 0x000000000000001e, x16, 496, x1)

# rs1_val == -2251799813685249, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xfeffffffffffffe0, 0xfff7ffffffffffff, 0x0000000000000005, x16, 504, x1)

# rs1_val == -4503599627370497, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffc000, 0xffefffffffffffff, 0x000000000000000e, x16, 512, x1)

# rs1_val == -9007199254740993, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x7ffffffffffffc00, 0xffdfffffffffffff, 0x000000000000000a, x16, 520, x1)

# rs1_val == -18014398509481985, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xefffffffffffffc0, 0xffbfffffffffffff, 0x0000000000000006, x16, 528, x1)

# rs1_val == -36028797018963969, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfdfffffffffffffc, 0xff7fffffffffffff, 0x0000000000000002, x16, 536, x1)

# rs1_val == -72057594037927937, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffc00, 0xfeffffffffffffff, 0x000000000000000a, x16, 544, x1)

# rs1_val == -288230376151711745, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffff800000, 0xfbffffffffffffff, 0x0000000000000017, x16, 552, x1)

# rs1_val == -576460752303423489, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffc000, 0xf7ffffffffffffff, 0x000000000000000e, x16, 560, x1)

# rs1_val == -1152921504606846977, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffff00, 0xefffffffffffffff, 0x0000000000000008, x16, 568, x1)

# rs1_val == -2305843009213693953, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xdfffffffffffffff, 0xdfffffffffffffff, 0x0000000000000000, x16, 576, x1)

# rs1_val == -4611686018427387905, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff8000, 0xbfffffffffffffff, 0x000000000000000f, x16, 584, x1)

# rs1_val == 6148914691236517205, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x5555555555555550, 0x5555555555555555, 0x0000000000000004, x16, 592, x1)

# rs1_val == -6148914691236517206, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xaaaaaaaaaaaaaa00, 0xaaaaaaaaaaaaaaaa, 0x0000000000000008, x16, 600, x1)

# rs1_val == 1152921504606846976, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x1000000000000000, 0x0000000000000003, x16, 608, x1)

# rs1_val == 2305843009213693952, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000011, x16, 616, x1)

# rs1_val == 4611686018427387904, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000004, x16, 624, x1)

# rs1_val == -2, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffe0000, 0xfffffffffffffffe, 0x0000000000000010, x16, 632, x1)

# rs1_val == -3, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffe80000000, 0xfffffffffffffffd, 0x000000000000001f, x16, 640, x1)

# rs1_val == -5, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffd80, 0xfffffffffffffffb, 0x0000000000000007, x16, 648, x1)

# rs1_val == -9, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffb80, 0xfffffffffffffff7, 0x0000000000000007, x16, 656, x1)

# rs1_val == -17, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffde0000000, 0xffffffffffffffef, 0x000000000000001d, x16, 664, x1)

# rs1_val == -33, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffbe00000, 0xffffffffffffffdf, 0x0000000000000015, x16, 672, x1)

# rs1_val == -65, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff7e000, 0xffffffffffffffbf, 0x000000000000000d, x16, 680, x1)

# rs1_val == -129, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffefe00, 0xffffffffffffff7f, 0x0000000000000009, x16, 688, x1)

# rs1_val == -257, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffdfe00000, 0xfffffffffffffeff, 0x0000000000000015, x16, 696, x1)

# rs1_val == -513, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbfe0000000, 0xfffffffffffffdff, 0x000000000000001d, x16, 704, x1)

# rs1_val == -1025, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff7fe0, 0xfffffffffffffbff, 0x0000000000000005, x16, 712, x1)

# rs1_val == -2049, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffbff800000, 0xfffffffffffff7ff, 0x0000000000000017, x16, 720, x1)

# rs1_val == -4097, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffefff00, 0xffffffffffffefff, 0x0000000000000008, x16, 728, x1)

# rs1_val == -8193, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff7ffc000, 0xffffffffffffdfff, 0x000000000000000e, x16, 736, x1)

# rs1_val == -16385, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffefffc0, 0xffffffffffffbfff, 0x0000000000000006, x16, 744, x1)

# rs1_val == -32769, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffbfff8, 0xffffffffffff7fff, 0x0000000000000003, x16, 752, x1)

# rs1_val == -65537, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffbfffc000, 0xfffffffffffeffff, 0x000000000000000e, x16, 760, x1)

# rs1_val == -262145, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffbffff0, 0xfffffffffffbffff, 0x0000000000000004, x16, 768, x1)

# rs1_val == -524289, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0xfffbffff80000000, 0xfffffffffff7ffff, 0x000000000000001f, x16, 776, x1)

# rs1_val == -1048577, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff7ffff800, 0xffffffffffefffff, 0x000000000000000b, x16, 784, x1)

# rs1_val == -2097153, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffbffffe00, 0xffffffffffdfffff, 0x0000000000000009, x16, 792, x1)

# rs1_val == -4194305, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xffffdfffff800000, 0xffffffffffbfffff, 0x0000000000000017, x16, 800, x1)

# rs1_val == -8388609, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffbfffff80, 0xffffffffff7fffff, 0x0000000000000007, x16, 808, x1)

# rs1_val == -16777217, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbfffffc000, 0xfffffffffeffffff, 0x000000000000000e, x16, 816, x1)

# rs1_val == -67108865, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xfffff7fffffe0000, 0xfffffffffbffffff, 0x0000000000000011, x16, 824, x1)

# rs1_val == -134217729, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffeffffffe0, 0xfffffffff7ffffff, 0x0000000000000005, x16, 832, x1)

# rs1_val == -536870913, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xffffefffffff8000, 0xffffffffdfffffff, 0x000000000000000f, x16, 840, x1)

# rs1_val == -1073741825, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffbfffffff000, 0xffffffffbfffffff, 0x000000000000000c, x16, 848, x1)

# rs1_val == -2147483649, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fffffff0, 0xffffffff7fffffff, 0x0000000000000004, x16, 856, x1)

# rs1_val == -4294967297, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffeffffffff00, 0xfffffffeffffffff, 0x0000000000000008, x16, 864, x1)

# rs1_val == -8589934593, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfff7fffffffc0000, 0xfffffffdffffffff, 0x0000000000000012, x16, 872, x1)

# rs1_val == -17179869185, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xff7fffffffe00000, 0xfffffffbffffffff, 0x0000000000000015, x16, 880, x1)

# rs1_val == -34359738369, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffff7ffffffff00, 0xfffffff7ffffffff, 0x0000000000000008, x16, 888, x1)

# rs1_val == -68719476737, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xfffefffffffff000, 0xffffffefffffffff, 0x000000000000000c, x16, 896, x1)

# rs1_val == -137438953473, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xffffff7ffffffffc, 0xffffffdfffffffff, 0x0000000000000002, x16, 904, x1)

# rs1_val == -549755813889, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfdfffffffffc0000, 0xffffff7fffffffff, 0x0000000000000012, x16, 912, x1)

# rs1_val == -1099511627777, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfffffeffffffffff, 0x000000000000001e, x16, 920, x1)

# rs1_val == -2199023255553, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffdffffffffff, 0xfffffdffffffffff, 0x0000000000000000, x16, 928, x1)

# rs1_val == -4398046511105, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfffffbffffffffff, 0x000000000000001e, x16, 936, x1)

# rs2_val == 30, rs1_val == -274877906945
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xffffffbfffffffff, 0x000000000000001e, x16, 944, x1)

# rs1_val == 1024, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000, 0x0000000000000400, 0x000000000000001f, x16, 952, x1)

# rs1_val == 4096, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x400000, 0x0000000000001000, 0x000000000000000a, x16, 960, x1)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x16_0:
    .fill 121*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
