
#This assembly file tests the subw instruction of the RISC-V I extension for the subw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",subw)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 == rs2 == rd, rs1==x11, rs2==x11, rd==x11, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: subw ; op1:x11; op2:x11; dest:x11; op1val:0x8000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(subw, x11, x11, x11, 0xfffffffffffffffd, 0x8000000000000000, 0x0000000000000003, x12, 0, x23)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x5, rs2==x3, rd==x27, rs1_val == 0, 
# opcode: subw ; op1:x5; op2:x3; dest:x27; op1val:0x0000000000000000;  op2val:0x0000000000000009
TEST_RR_OP(subw, x27, x5, x3, 0xfffffffffffffff7, 0x0000000000000000, 0x0000000000000009, x12, 8, x23)

# rs1 == rs2 != rd, rs1==x15, rs2==x15, rd==x13, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -17592186044417, rs1_val == 9223372036854775807
# opcode: subw ; op1:x15; op2:x15; dest:x13; op1val:0x7fffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x13, x15, x15, 0x0, 0x7fffffffffffffff, 0xffffefffffffffff, x12, 16, x23)

# rs2 == rd != rs1, rs1==x8, rs2==x2, rd==x2, rs1_val == 1, rs2_val == -549755813889
# opcode: subw ; op1:x8; op2:x2; dest:x2; op1val:0x0000000000000001;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x2, x8, x2, 0xffffffff00000002, 0x0000000000000001, 0xffffff7fffffffff, x12, 24, x23)

# rs1 == rd != rs2, rs1==x19, rs2==x8, rd==x19, rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -549755813889, rs2_val == -9223372036854775808
# opcode: subw ; op1:x19; op2:x8; dest:x19; op1val:0xffffff7fffffffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x19, x19, x8, 0xffffffff, 0xffffff7fffffffff, 0x8000000000000000, x12, 32, x23)

# rs1==x16, rs2==x31, rd==x10, rs2_val == 0, rs1_val == 140737488355328
# opcode: subw ; op1:x16; op2:x31; dest:x10; op1val:0x0000800000000000;  op2val:0x0000000000000000
TEST_RR_OP(subw, x10, x16, x31, 0x0, 0x0000800000000000, 0x0000000000000000, x12, 40, x23)

# rs1==x24, rs2==x4, rd==x17, rs2_val == (2**(xlen-1)-1), rs1_val == -4611686018427387905, rs2_val == 9223372036854775807
# opcode: subw ; op1:x24; op2:x4; dest:x17; op1val:0xbfffffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x17, x24, x4, 0x0, 0xbfffffffffffffff, 0x7fffffffffffffff, x12, 48, x23)

# rs1==x21, rs2==x6, rd==x5, rs2_val == 1, rs1_val == -562949953421313
# opcode: subw ; op1:x21; op2:x6; dest:x5; op1val:0xfffdffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(subw, x5, x21, x6, 0xfffffffe, 0xfffdffffffffffff, 0x0000000000000001, x12, 56, x23)

# rs1==x20, rs2==x27, rd==x22, rs1_val > 0 and rs2_val > 0, rs1_val == 8589934592, rs2_val == 512
# opcode: subw ; op1:x20; op2:x27; dest:x22; op1val:0x0000000200000000;  op2val:0x0000000000000200
TEST_RR_OP(subw, x22, x20, x27, 0xfffffffffffffe00, 0x0000000200000000, 0x0000000000000200, x12, 64, x23)

# rs1==x3, rs2==x10, rd==x26, rs1_val == rs2_val, rs1_val == 2, rs2_val == 2
# opcode: subw ; op1:x3; op2:x10; dest:x26; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(subw, x26, x3, x10, 0x0, 0x0000000000000002, 0x0000000000000002, x12, 72, x23)

# rs1==x31, rs2==x9, rd==x4, rs1_val == 4, rs2_val == 140737488355328
# opcode: subw ; op1:x31; op2:x9; dest:x4; op1val:0x0000000000000004;  op2val:0x0000800000000000
TEST_RR_OP(subw, x4, x31, x9, 0x4, 0x0000000000000004, 0x0000800000000000, x12, 80, x23)

# rs1==x9, rs2==x26, rd==x24, rs1_val == 8, rs2_val == -2049
# opcode: subw ; op1:x9; op2:x26; dest:x24; op1val:0x0000000000000008;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x24, x9, x26, 0xffffffff00000809, 0x0000000000000008, 0xfffffffffffff7ff, x12, 88, x23)

# rs1==x28, rs2==x13, rd==x21, rs1_val == 16, rs2_val == -17
# opcode: subw ; op1:x28; op2:x13; dest:x21; op1val:0x0000000000000010;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x21, x28, x13, 0xffffffff00000021, 0x0000000000000010, 0xffffffffffffffef, x12, 96, x23)

# rs1==x4, rs2==x29, rd==x6, rs1_val == 32, rs2_val == 35184372088832
# opcode: subw ; op1:x4; op2:x29; dest:x6; op1val:0x0000000000000020;  op2val:0x0000200000000000
TEST_RR_OP(subw, x6, x4, x29, 0x20, 0x0000000000000020, 0x0000200000000000, x12, 104, x23)

# rs1==x26, rs2==x17, rd==x16, rs1_val == 64, 
# opcode: subw ; op1:x26; op2:x17; dest:x16; op1val:0x0000000000000040;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x16, x26, x17, 0xffffffff00000041, 0x0000000000000040, 0xffffff7fffffffff, x12, 112, x23)

# rs1==x18, rs2==x14, rd==x1, rs1_val == 128, rs2_val == -6148914691236517206
# opcode: subw ; op1:x18; op2:x14; dest:x1; op1val:0x0000000000000080;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x1, x18, x14, 0xffffffff555555d6, 0x0000000000000080, 0xaaaaaaaaaaaaaaaa, x12, 120, x23)

# rs1==x22, rs2==x24, rd==x20, rs1_val == 256, rs2_val == 1024
# opcode: subw ; op1:x22; op2:x24; dest:x20; op1val:0x0000000000000100;  op2val:0x0000000000000400
TEST_RR_OP(subw, x20, x22, x24, 0xfffffffffffffd00, 0x0000000000000100, 0x0000000000000400, x12, 128, x23)

# rs1==x6, rs2==x20, rd==x14, rs1_val == 512, rs2_val == 562949953421312
# opcode: subw ; op1:x6; op2:x20; dest:x14; op1val:0x0000000000000200;  op2val:0x0002000000000000
TEST_RR_OP(subw, x14, x6, x20, 0x200, 0x0000000000000200, 0x0002000000000000, x12, 136, x23)

# rs1==x25, rs2==x30, rd==x7, rs1_val == 1024, rs2_val == 131072
# opcode: subw ; op1:x25; op2:x30; dest:x7; op1val:0x0000000000000400;  op2val:0x0000000000020000
TEST_RR_OP(subw, x7, x25, x30, 0xfffffffffffe0400, 0x0000000000000400, 0x0000000000020000, x12, 144, x23)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x30, rs2==x12, rd==x3, rs1_val == 2048, rs2_val == -2097153
# opcode: subw ; op1:x30; op2:x12; dest:x3; op1val:0x0000000000000800;  op2val:0xffffffffffdfffff
TEST_RR_OP(subw, x3, x30, x12, 0xffffffff00200801, 0x0000000000000800, 0xffffffffffdfffff, x4, 0, x6)

# rs1==x27, rs2==x7, rd==x12, rs1_val == 4096, 
# opcode: subw ; op1:x27; op2:x7; dest:x12; op1val:0x0000000000001000;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x12, x27, x7, 0xffffffff00001001, 0x0000000000001000, 0xffffff7fffffffff, x4, 8, x6)

# rs1==x13, rs2==x21, rd==x28, rs1_val == 8192, rs2_val == 64
# opcode: subw ; op1:x13; op2:x21; dest:x28; op1val:0x0000000000002000;  op2val:0x0000000000000040
TEST_RR_OP(subw, x28, x13, x21, 0x1fc0, 0x0000000000002000, 0x0000000000000040, x4, 16, x6)

# rs1==x14, rs2==x19, rd==x15, rs1_val == 16384, 
# opcode: subw ; op1:x14; op2:x19; dest:x15; op1val:0x0000000000004000;  op2val:0xfffffffffffffff8
TEST_RR_OP(subw, x15, x14, x19, 0xffffffff00004008, 0x0000000000004000, 0xfffffffffffffff8, x4, 24, x6)

# rs1==x0, rs2==x16, rd==x8, rs1_val == 32768, rs2_val == 32768
# opcode: subw ; op1:x0; op2:x16; dest:x8; op1val:0x0000000000008000;  op2val:0x0000000000008000
TEST_RR_OP(subw, x8, x0, x16, 0x0, 0x0000000000008000, 0x0000000000008000, x4, 32, x6)

# rs1==x23, rs2==x22, rd==x25, rs1_val == 65536, 
# opcode: subw ; op1:x23; op2:x22; dest:x25; op1val:0x0000000000010000;  op2val:0xfffffffffffffffa
TEST_RR_OP(subw, x25, x23, x22, 0xffffffff00010006, 0x0000000000010000, 0xfffffffffffffffa, x4, 40, x6)

# rs1==x7, rs2==x25, rd==x0, rs1_val == 131072, rs2_val == 137438953472
# opcode: subw ; op1:x7; op2:x25; dest:x0; op1val:0x0000000000020000;  op2val:0x0000002000000000
TEST_RR_OP(subw, x0, x7, x25, 0x20000, 0x0000000000020000, 0x0000002000000000, x4, 48, x6)

# rs1==x2, rs2==x28, rd==x18, rs1_val == 262144, 
# opcode: subw ; op1:x2; op2:x28; dest:x18; op1val:0x0000000000040000;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x18, x2, x28, 0xffffffff00040001, 0x0000000000040000, 0xffffefffffffffff, x4, 56, x6)

# rs1==x10, rs2==x0, rd==x30, rs1_val == 524288, rs2_val == -33
# opcode: subw ; op1:x10; op2:x0; dest:x30; op1val:0x0000000000080000;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x30, x10, x0, 0xffffffff00080021, 0x0000000000080000, 0xffffffffffffffdf, x4, 64, x6)

# rs1==x17, rs2==x18, rd==x9, rs1_val == 1048576, rs2_val == -4097
# opcode: subw ; op1:x17; op2:x18; dest:x9; op1val:0x0000000000100000;  op2val:0xffffffffffffefff
TEST_RR_OP(subw, x9, x17, x18, 0xffffffff00101001, 0x0000000000100000, 0xffffffffffffefff, x4, 72, x6)

# rs1==x1, rs2==x5, rd==x29, rs1_val == 2097152, 
# opcode: subw ; op1:x1; op2:x5; dest:x29; op1val:0x0000000000200000;  op2val:0x0000000000000400
TEST_RR_OP(subw, x29, x1, x5, 0x1ffc00, 0x0000000000200000, 0x0000000000000400, x4, 80, x6)

# rs1==x12, rs2==x23, rd==x31, rs1_val == 4194304, rs2_val == -281474976710657
# opcode: subw ; op1:x12; op2:x23; dest:x31; op1val:0x0000000000400000;  op2val:0xfffeffffffffffff
TEST_RR_OP(subw, x31, x12, x23, 0xffffffff00400001, 0x0000000000400000, 0xfffeffffffffffff, x4, 88, x6)

# rs1==x29, rs2==x1, rd==x23, rs1_val == 8388608, rs2_val == -1048577
# opcode: subw ; op1:x29; op2:x1; dest:x23; op1val:0x0000000000800000;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x23, x29, x1, 0xffffffff00900001, 0x0000000000800000, 0xffffffffffefffff, x4, 96, x6)

# rs1_val == 16777216, rs2_val == 524288
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000080000
TEST_RR_OP(subw, x12, x10, x11, 0xf80000, 0x0000000001000000, 0x0000000000080000, x4, 104, x6)

# rs1_val == 33554432, rs2_val == 8
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0x1fffff8, 0x0000000002000000, 0x0000000000000008, x4, 112, x6)

# rs1_val == 67108864, rs2_val == -131073
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff04020001, 0x0000000004000000, 0xfffffffffffdffff, x4, 120, x6)

# rs1_val == 134217728, rs2_val == -257
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff08000101, 0x0000000008000000, 0xfffffffffffffeff, x4, 128, x6)

# rs1_val == 268435456, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff10100001, 0x0000000010000000, 0xffffffffffefffff, x4, 136, x6)

# rs1_val == 536870912, rs2_val == 1125899906842624
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0004000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x20000000, 0x0000000020000000, 0x0004000000000000, x4, 144, x6)

# rs1_val == 1073741824, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000021, 0x0000000040000000, 0xffffffffffffffdf, x4, 152, x6)

# rs1_val == 2147483648, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80100001, 0x0000000080000000, 0xffffffffffefffff, x4, 160, x6)

# rs1_val == 4294967296, rs2_val == 268435456
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0x0000000100000000, 0x0000000010000000, x4, 168, x6)

# rs1_val == 17179869184, rs2_val == -8388609
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00800001, 0x0000000400000000, 0xffffffffff7fffff, x4, 176, x6)

# rs1_val == 34359738368, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc0, 0x0000000800000000, 0x0000000000000040, x4, 184, x6)

# rs1_val == 68719476736, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0x0000001000000000, 0x0000000010000000, x4, 192, x6)

# rs1_val == 137438953472, rs2_val == -4194305
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00400001, 0x0000002000000000, 0xffffffffffbfffff, x4, 200, x6)

# rs1_val == 274877906944, rs2_val == -2
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000002, 0x0000004000000000, 0xfffffffffffffffe, x4, 208, x6)

# rs1_val == 549755813888, rs2_val == 4294967296
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000100000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000100000000, x4, 216, x6)

# rs1_val == 1099511627776, rs2_val == -16777217
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff01000001, 0x0000010000000000, 0xfffffffffeffffff, x4, 224, x6)

# rs1_val == 2199023255552, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00020001, 0x0000020000000000, 0xfffffffffffdffff, x4, 232, x6)

# rs1_val == 4398046511104, rs2_val == 134217728
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0x0000040000000000, 0x0000000008000000, x4, 240, x6)

# rs1_val == 8796093022208, rs2_val == -576460752303423489
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000080000000000, 0xf7ffffffffffffff, x4, 248, x6)

# rs1_val == 17592186044416, rs2_val == 2305843009213693952
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000100000000000, 0x2000000000000000, x4, 256, x6)

# rs1_val == 35184372088832, rs2_val == 4398046511104
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000040000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000040000000000, x4, 264, x6)

# rs1_val == 70368744177664, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc0, 0x0000400000000000, 0x0000000000000040, x4, 272, x6)

# rs1_val == 281474976710656, rs2_val == 1048576
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000100000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff00000, 0x0001000000000000, 0x0000000000100000, x4, 280, x6)

# rs1_val == 562949953421312, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000002
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0x0002000000000000, 0x0000000000000002, x4, 288, x6)

# rs1_val == 1125899906842624, rs2_val == -34359738369
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0004000000000000, 0xfffffff7ffffffff, x4, 296, x6)

# rs1_val == 2251799813685248, rs2_val == -68719476737
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0008000000000000, 0xffffffefffffffff, x4, 304, x6)

# rs1_val == 4503599627370496, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0010000000000000, 0xffffffffffffffef, x4, 312, x6)

# rs1_val == 9007199254740992, rs2_val == 18014398509481984
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0040000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0040000000000000, x4, 320, x6)

# rs1_val == 18014398509481984, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000100000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000100000000, x4, 328, x6)

# rs1_val == 36028797018963968, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000200000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000200000000000, x4, 336, x6)

# rs1_val == 72057594037927936, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000003
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffd, 0x0100000000000000, 0x0000000000000003, x4, 344, x6)

# rs1_val == 144115188075855872, rs2_val == -140737488355329
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0200000000000000, 0xffff7fffffffffff, x4, 352, x6)

# rs1_val == 288230376151711744, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000002000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000002000000000, x4, 360, x6)

# rs1_val == 576460752303423488, rs2_val == -9007199254740993
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0800000000000000, 0xffdfffffffffffff, x4, 368, x6)

# rs1_val == 1152921504606846976, rs2_val == -8193
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00002001, 0x1000000000000000, 0xffffffffffffdfff, x4, 376, x6)

# rs1_val == 2305843009213693952, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0x2000000000000000, 0x0000000008000000, x4, 384, x6)

# rs1_val == 4611686018427387904, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555556, 0x4000000000000000, 0xaaaaaaaaaaaaaaaa, x4, 392, x6)

# rs1_val == -2, rs2_val == -2147483649
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffffff7fffffff
TEST_RR_OP(subw, x12, x10, x11, 0x7fffffff, 0xfffffffffffffffe, 0xffffffff7fffffff, x4, 400, x6)

# rs1_val == -3, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffbd, 0xfffffffffffffffd, 0x0000000000000040, x4, 408, x6)

# rs1_val == -5, rs2_val == 34359738368
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000800000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffb, 0xfffffffffffffffb, 0x0000000800000000, x4, 416, x6)

# rs1_val == -9, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0xffffffef, 0xfffffffffffffff7, 0x0000000000000008, x4, 424, x6)

# rs1_val == -17, rs2_val == 17179869184
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000400000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffef, 0xffffffffffffffef, 0x0000000400000000, x4, 432, x6)

# rs1_val == -33, rs2_val == 8388608
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000800000
TEST_RR_OP(subw, x12, x10, x11, 0xff7fffdf, 0xffffffffffffffdf, 0x0000000000800000, x4, 440, x6)

# rs1_val == -65, rs2_val == -134217729
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0x7ffffc0, 0xffffffffffffffbf, 0xfffffffff7ffffff, x4, 448, x6)

# rs1_val == -129, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000020000
TEST_RR_OP(subw, x12, x10, x11, 0xfffdff7f, 0xffffffffffffff7f, 0x0000000000020000, x4, 456, x6)

# rs1_val == -257, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffff00, 0xfffffffffffffeff, 0xf7ffffffffffffff, x4, 464, x6)

# rs1_val == -513, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0x7fffe00, 0xfffffffffffffdff, 0xfffffffff7ffffff, x4, 472, x6)

# rs1_val == -1025, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffff9
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffc06, 0xfffffffffffffbff, 0xfffffffffffffff9, x4, 480, x6)

# rs1_val == -2049, rs2_val == 549755813888
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffff7ff, 0xfffffffffffff7ff, 0x0000008000000000, x4, 488, x6)

# rs1_val == -4097, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000005
TEST_RR_OP(subw, x12, x10, x11, 0xffffeffa, 0xffffffffffffefff, 0x0000000000000005, x4, 496, x6)

# rs1_val == -8193, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffdfff, 0xffffffffffffdfff, 0x0000000000000000, x4, 504, x6)

# rs2_val == -1125899906842625, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000100000000, 0xfffbffffffffffff, x4, 512, x6)

# rs2_val == -2251799813685249, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffc00, 0xfffffffffffffbff, 0xfff7ffffffffffff, x4, 520, x6)

# rs2_val == -4503599627370497, rs1_val == -144115188075855873
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfdffffffffffffff, 0xffefffffffffffff, x4, 528, x6)

# rs2_val == -18014398509481985, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000000000000, 0xffbfffffffffffff, x4, 536, x6)

# rs2_val == -36028797018963969, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffff800, 0xfffffffffffff7ff, 0xff7fffffffffffff, x4, 544, x6)

# rs2_val == -72057594037927937, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffff7fffffffff, 0xfeffffffffffffff, x4, 552, x6)

# rs2_val == -144115188075855873, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xfdffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080001, 0x0000000000080000, 0xfdffffffffffffff, x4, 560, x6)

# rs2_val == -288230376151711745, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000000040000000, 0xfbffffffffffffff, x4, 568, x6)

# rs2_val == -1152921504606846977, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000001000000000, 0xefffffffffffffff, x4, 576, x6)

# rs2_val == -2305843009213693953, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000100000000000, 0xdfffffffffffffff, x4, 584, x6)

# rs2_val == -4611686018427387905, rs1_val == -536870913
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe0000000, 0xffffffffdfffffff, 0xbfffffffffffffff, x4, 592, x6)

# rs2_val == 6148914691236517205, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffaaaaaaab, 0x0002000000000000, 0x5555555555555555, x4, 600, x6)

# rs1_val == -16385, rs2_val == -562949953421313
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffdffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffc000, 0xffffffffffffbfff, 0xfffdffffffffffff, x4, 608, x6)

# rs1_val == -32769, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffdffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff8000, 0xffffffffffff7fff, 0xfffdffffffffffff, x4, 616, x6)

# rs1_val == -65537, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffefffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0000, 0xfffffffffffeffff, 0xffffffefffffffff, x4, 624, x6)

# rs1_val == -131073, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000200
TEST_RR_OP(subw, x12, x10, x11, 0xfffdfdff, 0xfffffffffffdffff, 0x0000000000000200, x4, 632, x6)

# rs1_val == -262145, rs2_val == 274877906944
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000004000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffbffff, 0xfffffffffffbffff, 0x0000004000000000, x4, 640, x6)

# rs1_val == -524289, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xeff7ffff, 0xfffffffffff7ffff, 0x0000000010000000, x4, 648, x6)

# rs1_val == -1048577, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000200
TEST_RR_OP(subw, x12, x10, x11, 0xffeffdff, 0xffffffffffefffff, 0x0000000000000200, x4, 656, x6)

# rs1_val == -2097153, rs2_val == -35184372088833
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffe00000, 0xffffffffffdfffff, 0xffffdfffffffffff, x4, 664, x6)

# rs1_val == -4194305, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x12, x10, x11, 0x55155555, 0xffffffffffbfffff, 0xaaaaaaaaaaaaaaaa, x4, 672, x6)

# rs1_val == -8388609, rs2_val == 67108864
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfb7fffff, 0xffffffffff7fffff, 0x0000000004000000, x4, 680, x6)

# rs1_val == -16777217, rs2_val == 128
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000080
TEST_RR_OP(subw, x12, x10, x11, 0xfeffff7f, 0xfffffffffeffffff, 0x0000000000000080, x4, 688, x6)

# rs1_val == -33554433, rs2_val == 65536
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000010000
TEST_RR_OP(subw, x12, x10, x11, 0xfdfeffff, 0xfffffffffdffffff, 0x0000000000010000, x4, 696, x6)

# rs1_val == -67108865, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x2000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfbffffff, 0xfffffffffbffffff, 0x2000000000000000, x4, 704, x6)

# rs1_val == -134217729, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8002000, 0xfffffffff7ffffff, 0xffffffffffffdfff, x4, 712, x6)

# rs1_val == -268435457, rs2_val == 281474976710656
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xefffffff, 0xffffffffefffffff, 0x0001000000000000, x4, 720, x6)

# rs1_val == -1073741825, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffc0000000, 0xffffffffbfffffff, 0xff7fffffffffffff, x4, 728, x6)

# rs1_val == -2147483649, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xc000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x7fffffff, 0xffffffff7fffffff, 0xc000000000000000, x4, 736, x6)

# rs1_val == -4294967297, rs2_val == 4096
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000001000
TEST_RR_OP(subw, x12, x10, x11, 0xffffefff, 0xfffffffeffffffff, 0x0000000000001000, x4, 744, x6)

# rs1_val == -8589934593, rs2_val == 32
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffdf, 0xfffffffdffffffff, 0x0000000000000020, x4, 752, x6)

# rs1_val == -17179869185, rs2_val == 16777216
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xfeffffff, 0xfffffffbffffffff, 0x0000000001000000, x4, 760, x6)

# rs1_val == -34359738369, rs2_val == 576460752303423488
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0800000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0800000000000000, x4, 768, x6)

# rs1_val == -68719476737, rs2_val == -137438953473
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffefffffffff, 0xffffffdfffffffff, x4, 776, x6)

# rs1_val == -137438953473, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0x400000, 0xffffffdfffffffff, 0xffffffffffbfffff, x4, 784, x6)

# rs1_val == -274877906945, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffbfffffffff, 0xf7ffffffffffffff, x4, 792, x6)

# rs1_val == -1099511627777, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffc, 0xfffffeffffffffff, 0x0000000000000003, x4, 800, x6)

# rs1_val == -2199023255553, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(subw, x12, x10, x11, 0xfffffbff, 0xfffffdffffffffff, 0x0000000000000400, x4, 808, x6)

# rs1_val == -4398046511105, rs2_val == 1073741824
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(subw, x12, x10, x11, 0xbfffffff, 0xfffffbffffffffff, 0x0000000040000000, x4, 816, x6)

# rs1_val == -8796093022209, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x8000000000000000, x4, 824, x6)

# rs1_val == -17592186044417, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffefffffffffff, 0x0000008000000000, x4, 832, x6)

# rs1_val == -35184372088833, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffdfffffffffff, 0x0000040000000000, x4, 840, x6)

# rs1_val == -70368744177665, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(subw, x12, x10, x11, 0xfff7ffff, 0xffffbfffffffffff, 0x0000000000080000, x4, 848, x6)

# rs1_val == -140737488355329, rs2_val == 2199023255552
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000020000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffff7fffffffffff, 0x0000020000000000, x4, 856, x6)

# rs1_val == -281474976710657, rs2_val == 8796093022208
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffeffffffffffff, 0x0000080000000000, x4, 864, x6)

# rs1_val == -1125899906842625, rs2_val == -16385
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(subw, x12, x10, x11, 0x4000, 0xfffbffffffffffff, 0xffffffffffffbfff, x4, 872, x6)

# rs1_val == -2251799813685249, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff8, 0xfff7ffffffffffff, 0x0000000000000007, x4, 880, x6)

# rs1_val == -4503599627370497, rs2_val == 1152921504606846976
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffefffffffffffff, 0x1000000000000000, x4, 888, x6)

# rs1_val == -9007199254740993, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff8, 0xffdfffffffffffff, 0x0000000000000007, x4, 896, x6)

# rs1_val == -18014398509481985, rs2_val == -17179869185
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffbfffffffffffff, 0xfffffffbffffffff, x4, 904, x6)

# rs1_val == -36028797018963969, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xff7fffffffffffff, 0x0000800000000000, x4, 912, x6)

# rs1_val == -72057594037927937, rs2_val == -1099511627777
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0xfffffeffffffffff, x4, 920, x6)

# rs1_val == -288230376151711745, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff7, 0xfbffffffffffffff, 0x0000000000000008, x4, 928, x6)

# rs1_val == -576460752303423489, rs2_val == 4194304
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xf7ffffffffffffff, 0x0000000000400000, x4, 936, x6)

# rs1_val == -1152921504606846977, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffe, 0xefffffffffffffff, 0x0000000000000001, x4, 944, x6)

# rs1_val == -2305843009213693953, rs2_val == 9007199254740992
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xdfffffffffffffff, 0x0020000000000000, x4, 952, x6)

# rs1_val == 6148914691236517205, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555556, 0x5555555555555555, 0xffffefffffffffff, x4, 960, x6)

# rs1_val == -6148914691236517206, rs2_val == 16384
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000004000
TEST_RR_OP(subw, x12, x10, x11, 0xaaaa6aaa, 0xaaaaaaaaaaaaaaaa, 0x0000000000004000, x4, 968, x6)

# rs2_val == 4, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000000004
TEST_RR_OP(subw, x12, x10, x11, 0x3ffc, 0x0000000000004000, 0x0000000000000004, x4, 976, x6)

# rs2_val == 16, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000010
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaa9a, 0xaaaaaaaaaaaaaaaa, 0x0000000000000010, x4, 984, x6)

# rs2_val == 256, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(subw, x12, x10, x11, 0xfffffeff, 0xffffdfffffffffff, 0x0000000000000100, x4, 992, x6)

# rs2_val == 2048, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000000800
TEST_RR_OP(subw, x12, x10, x11, 0x3800, 0x0000000000004000, 0x0000000000000800, x4, 1000, x6)

# rs2_val == 8192, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(subw, x12, x10, x11, 0xffffdfff, 0xfbffffffffffffff, 0x0000000000002000, x4, 1008, x6)

# rs2_val == 262144, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000040000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffc0000, 0x0000000000000000, 0x0000000000040000, x4, 1016, x6)

# rs2_val == 2097152, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffdffffa, 0xfffffffffffffffa, 0x0000000000200000, x4, 1024, x6)

# rs2_val == 33554432, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000002000000
TEST_RR_OP(subw, x12, x10, x11, 0x7dffffff, 0xffffffff7fffffff, 0x0000000002000000, x4, 1032, x6)

# rs2_val == 536870912, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000020000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe0000200, 0x0000000000000200, 0x0000000020000000, x4, 1040, x6)

# rs2_val == 2147483648, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(subw, x12, x10, x11, 0x7fffffff, 0xffefffffffffffff, 0x0000000080000000, x4, 1048, x6)

# rs2_val == 8589934592, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000200000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000200000000, x4, 1056, x6)

# rs2_val == 68719476736, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000001000000000
TEST_RR_OP(subw, x12, x10, x11, 0x2000000, 0x0000000002000000, 0x0000001000000000, x4, 1064, x6)

# rs2_val == 1099511627776, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000010000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffd, 0xfffffffffffffffd, 0x0000010000000000, x4, 1072, x6)

# rs2_val == 17592186044416, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000100000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0000100000000000, x4, 1080, x6)

# rs2_val == 2251799813685248, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0008000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x5, 0x0000000000000005, 0x0008000000000000, x4, 1088, x6)

# rs2_val == 4503599627370496, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0010000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffdffff, 0xfffffffffffdffff, 0x0010000000000000, x4, 1096, x6)

# rs2_val == 36028797018963968, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0080000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0080000000000000, x4, 1104, x6)

# rs2_val == 72057594037927936, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffdfffffffffffff, 0x0100000000000000, x4, 1112, x6)

# rs2_val == 144115188075855872, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0200000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffffbfffffffff, 0x0200000000000000, x4, 1120, x6)

# rs2_val == 288230376151711744, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffdfffffffffffff, 0x0400000000000000, x4, 1128, x6)

# rs2_val == 4611686018427387904, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x4000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0200000000000000, 0x4000000000000000, x4, 1136, x6)

# rs2_val == -3, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffffffffffffd
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00001003, 0x0000000000001000, 0xfffffffffffffffd, x4, 1144, x6)

# rs2_val == -5, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(subw, x12, x10, x11, 0x4, 0xffffffefffffffff, 0xfffffffffffffffb, x4, 1152, x6)

# rs2_val == -9, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xfffffffffffffff7
TEST_RR_OP(subw, x12, x10, x11, 0x3, 0xfffffffffffffffa, 0xfffffffffffffff7, x4, 1160, x6)

# rs2_val == -65, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffffffbf
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffff840, 0xfffffffffffff7ff, 0xffffffffffffffbf, x4, 1168, x6)

# rs2_val == -129, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffffffffffff7f
TEST_RR_OP(subw, x12, x10, x11, 0x7f, 0xfffffffffffffffe, 0xffffffffffffff7f, x4, 1176, x6)

# rs2_val == -513, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000201, 0x0008000000000000, 0xfffffffffffffdff, x4, 1184, x6)

# rs2_val == -1025, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000401, 0x0000001000000000, 0xfffffffffffffbff, x4, 1192, x6)

# rs2_val == -32769, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(subw, x12, x10, x11, 0x8000, 0xfffffeffffffffff, 0xffffffffffff7fff, x4, 1200, x6)

# rs2_val == -65537, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00010001, 0x8000000000000000, 0xfffffffffffeffff, x4, 1208, x6)

# rs2_val == -262145, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(subw, x12, x10, x11, 0x40000, 0xffefffffffffffff, 0xfffffffffffbffff, x4, 1216, x6)

# rs2_val == -524289, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080001, 0x0002000000000000, 0xfffffffffff7ffff, x4, 1224, x6)

# rs2_val == -33554433, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffdffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1ffff80, 0xffffffffffffff7f, 0xfffffffffdffffff, x4, 1232, x6)

# rs2_val == -67108865, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff04000001, 0x0000000800000000, 0xfffffffffbffffff, x4, 1240, x6)

# rs2_val == -268435457, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(subw, x12, x10, x11, 0x10000000, 0xffffdfffffffffff, 0xffffffffefffffff, x4, 1248, x6)

# rs2_val == -536870913, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1fffff80, 0xffffffffffffff7f, 0xffffffffdfffffff, x4, 1256, x6)

# rs2_val == -1073741825, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000200000000000, 0xffffffffbfffffff, x4, 1264, x6)

# rs2_val == -4294967297, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000000040000000, 0xfffffffeffffffff, x4, 1272, x6)

# rs2_val == -274877906945, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000200000000000, 0xffffffbfffffffff, x4, 1280, x6)

# rs2_val == 70368744177664, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000400000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xffffffffffbfffff, 0x0000400000000000, x4, 1288, x6)

# rs2_val == -2199023255553, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00002001, 0x0000000000002000, 0xfffffdffffffffff, x4, 1296, x6)

# rs2_val == -4398046511105, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xfffffbffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000041, 0x0000000000000040, 0xfffffbffffffffff, x4, 1304, x6)

# rs2_val == -8796093022209, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000100000000000, 0xfffff7ffffffffff, x4, 1312, x6)

# rs2_val == -70368744177665, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffbfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffff00, 0xfffffffffffffeff, 0xffffbfffffffffff, x4, 1320, x6)

# rs2_val == -8589934593, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0xfffffffdffffffff, x4, 1328, x6)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffd, 0x8000000000000000, 0x0000000000000003, x4, 1336, x6)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -17592186044417, rs1_val == 9223372036854775807
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0xffffefffffffffff, x4, 1344, x6)

# rs1_val == 1, rs2_val == -549755813889
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000002, 0x0000000000000001, 0xffffff7fffffffff, x4, 1352, x6)

# rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -549755813889, rs2_val == -9223372036854775808
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x8000000000000000, x4, 1360, x6)

# rs1_val == 32768, rs2_val == 32768
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000008000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000000008000, 0x0000000000008000, x4, 1368, x6)

# rs1_val == 131072, rs2_val == 137438953472
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000002000000000
TEST_RR_OP(subw, x12, x10, x11, 0x20000, 0x0000000000020000, 0x0000002000000000, x4, 1376, x6)

# rs1_val == 524288, rs2_val == -33
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080021, 0x0000000000080000, 0xffffffffffffffdf, x4, 1384, x6)
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
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 174*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
