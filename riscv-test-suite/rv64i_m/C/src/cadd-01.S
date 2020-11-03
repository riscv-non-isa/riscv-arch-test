
#This assembly file tests the c.add instruction of the RISC-V C extension for the cadd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cadd)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rs2, rs1==x11, rs2==x11, rs2_val > 0, rs2_val == 1099511627776, rs1_val == 144115188075855872
# opcode: c.add; op1:x11; op2:x11; op1val:0x0200000000000000; op2val:0x0000010000000000
TEST_CR_OP( c.add, x11, x11, 0x0000000000000000, 0x0200000000000000, 0x0000010000000000, x4, 0, x2)

# rs1 != rs2, rs1==x29, rs2==x21, rs2_val < 0, rs1_val == 4611686018427387904
# opcode: c.add; op1:x29; op2:x21; op1val:0x4000000000000000; op2val:0xfffffffffffffff9
TEST_CR_OP( c.add, x29, x21, 0x0000000000000000, 0x4000000000000000, 0xfffffffffffffff9, x4, 8, x2)

# rs1==x20, rs2==x14, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, rs2_val == 8
# opcode: c.add; op1:x20; op2:x14; op1val:0x8000000000000000; op2val:0x0000000000000008
TEST_CR_OP( c.add, x20, x14, 0x0000000000000000, 0x8000000000000000, 0x0000000000000008, x4, 16, x2)

# rs1==x6, rs2==x30, rs1_val == 0, rs2_val == -18014398509481985
# opcode: c.add; op1:x6; op2:x30; op1val:0x0000000000000000; op2val:0xffbfffffffffffff
TEST_CR_OP( c.add, x6, x30, 0x0000000000000000, 0x0000000000000000, 0xffbfffffffffffff, x4, 24, x2)

# rs1==x8, rs2==x1, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807, rs2_val == 2251799813685248
# opcode: c.add; op1:x8; op2:x1; op1val:0x7fffffffffffffff; op2val:0x0008000000000000
TEST_CR_OP( c.add, x8, x1, 0x0000000000000000, 0x7fffffffffffffff, 0x0008000000000000, x4, 32, x2)

# rs1==x23, rs2==x7, rs1_val == 1, rs2_val == -4611686018427387905
# opcode: c.add; op1:x23; op2:x7; op1val:0x0000000000000001; op2val:0xbfffffffffffffff
TEST_CR_OP( c.add, x23, x7, 0x0000000000000000, 0x0000000000000001, 0xbfffffffffffffff, x4, 40, x2)

# rs1==x1, rs2==x31, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val == -17592186044417
# opcode: c.add; op1:x1; op2:x31; op1val:0xffffefffffffffff; op2val:0x8000000000000000
TEST_CR_OP( c.add, x1, x31, 0x0000000000000000, 0xffffefffffffffff, 0x8000000000000000, x4, 48, x2)

# rs1==x24, rs2==x9, rs2_val == 0, rs1_val == -3
# opcode: c.add; op1:x24; op2:x9; op1val:0xfffffffffffffffd; op2val:0x0000000000000000
TEST_CR_OP( c.add, x24, x9, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000000000, x4, 56, x2)

# rs1==x16, rs2==x27, rs2_val == (2**(xlen-1)-1), rs1_val == 65536, rs2_val == 9223372036854775807
# opcode: c.add; op1:x16; op2:x27; op1val:0x0000000000010000; op2val:0x7fffffffffffffff
TEST_CR_OP( c.add, x16, x27, 0x0000000000000000, 0x0000000000010000, 0x7fffffffffffffff, x4, 64, x2)

# rs1==x17, rs2==x26, rs2_val == 1, rs1_val == -8589934593
# opcode: c.add; op1:x17; op2:x26; op1val:0xfffffffdffffffff; op2val:0x0000000000000001
TEST_CR_OP( c.add, x17, x26, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000001, x4, 72, x2)

# rs1==x21, rs2==x17, rs1_val == 2, rs2_val == -4398046511105
# opcode: c.add; op1:x21; op2:x17; op1val:0x0000000000000002; op2val:0xfffffbffffffffff
TEST_CR_OP( c.add, x21, x17, 0x0000000000000000, 0x0000000000000002, 0xfffffbffffffffff, x4, 80, x2)

# rs1==x18, rs2==x3, rs1_val == 4, rs2_val == -5
# opcode: c.add; op1:x18; op2:x3; op1val:0x0000000000000004; op2val:0xfffffffffffffffb
TEST_CR_OP( c.add, x18, x3, 0x0000000000000000, 0x0000000000000004, 0xfffffffffffffffb, x4, 88, x2)

# rs1==x3, rs2==x24, rs1_val == 8, rs2_val == 65536
# opcode: c.add; op1:x3; op2:x24; op1val:0x0000000000000008; op2val:0x0000000000010000
TEST_CR_OP( c.add, x3, x24, 0x0000000000000000, 0x0000000000000008, 0x0000000000010000, x4, 96, x2)

# rs1==x26, rs2==x19, rs1_val == 16, rs2_val == 33554432
# opcode: c.add; op1:x26; op2:x19; op1val:0x0000000000000010; op2val:0x0000000002000000
TEST_CR_OP( c.add, x26, x19, 0x0000000000000000, 0x0000000000000010, 0x0000000002000000, x4, 104, x2)

# rs1==x5, rs2==x15, rs1_val == 32, rs2_val == -288230376151711745
# opcode: c.add; op1:x5; op2:x15; op1val:0x0000000000000020; op2val:0xfbffffffffffffff
TEST_CR_OP( c.add, x5, x15, 0x0000000000000000, 0x0000000000000020, 0xfbffffffffffffff, x4, 112, x2)

# rs1==x0, rs2==x10, rs1_val == 64, rs2_val == 256
# opcode: c.add; op1:x0; op2:x10; op1val:0x0000000000000040; op2val:0x0000000000000100
TEST_CR_OP( c.add, x0, x10, 0x0000000000000000, 0x0000000000000040, 0x0000000000000100, x4, 120, x2)

# rs1==x13, rs2==x29, rs1_val == 128, rs2_val == -72057594037927937
# opcode: c.add; op1:x13; op2:x29; op1val:0x0000000000000080; op2val:0xfeffffffffffffff
TEST_CR_OP( c.add, x13, x29, 0x0000000000000000, 0x0000000000000080, 0xfeffffffffffffff, x4, 128, x2)

# rs1==x10, rs2==x20, rs1_val == 256, rs2_val == -524289
# opcode: c.add; op1:x10; op2:x20; op1val:0x0000000000000100; op2val:0xfffffffffff7ffff
TEST_CR_OP( c.add, x10, x20, 0x0000000000000000, 0x0000000000000100, 0xfffffffffff7ffff, x4, 136, x2)

# rs1==x28, rs2==x25, rs1_val == 512, rs2_val == -2049
# opcode: c.add; op1:x28; op2:x25; op1val:0x0000000000000200; op2val:0xfffffffffffff7ff
TEST_CR_OP( c.add, x28, x25, 0x0000000000000000, 0x0000000000000200, 0xfffffffffffff7ff, x4, 144, x2)

# rs1==x31, rs2==x2, rs1_val == 1024, rs2_val == -8388609
# opcode: c.add; op1:x31; op2:x2; op1val:0x0000000000000400; op2val:0xffffffffff7fffff
TEST_CR_OP( c.add, x31, x2, 0x0000000000000000, 0x0000000000000400, 0xffffffffff7fffff, x4, 152, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x30, rs2==x5, rs1_val == 2048, 
# opcode: c.add; op1:x30; op2:x5; op1val:0x0000000000000800; op2val:0x0008000000000000
TEST_CR_OP( c.add, x30, x5, 0x0000000000000000, 0x0000000000000800, 0x0008000000000000, x1, 0, x3)

# rs1==x27, rs2==x28, rs1_val == 4096, rs2_val == -16385
# opcode: c.add; op1:x27; op2:x28; op1val:0x0000000000001000; op2val:0xffffffffffffbfff
TEST_CR_OP( c.add, x27, x28, 0x0000000000000000, 0x0000000000001000, 0xffffffffffffbfff, x1, 8, x3)

# rs1==x7, rs2==x4, rs1_val == 8192, rs2_val == -140737488355329
# opcode: c.add; op1:x7; op2:x4; op1val:0x0000000000002000; op2val:0xffff7fffffffffff
TEST_CR_OP( c.add, x7, x4, 0x0000000000000000, 0x0000000000002000, 0xffff7fffffffffff, x1, 16, x3)

# rs1==x2, rs2==x23, rs1_val == 16384, rs2_val == 32768
# opcode: c.add; op1:x2; op2:x23; op1val:0x0000000000004000; op2val:0x0000000000008000
TEST_CR_OP( c.add, x2, x23, 0x0000000000000000, 0x0000000000004000, 0x0000000000008000, x1, 24, x3)

# rs1==x12, rs2==x6, rs1_val == 32768, rs2_val == 4398046511104
# opcode: c.add; op1:x12; op2:x6; op1val:0x0000000000008000; op2val:0x0000040000000000
TEST_CR_OP( c.add, x12, x6, 0x0000000000000000, 0x0000000000008000, 0x0000040000000000, x1, 32, x3)

# rs1==x22, rs2==x8, rs1_val == 131072, 
# opcode: c.add; op1:x22; op2:x8; op1val:0x0000000000020000; op2val:0xbfffffffffffffff
TEST_CR_OP( c.add, x22, x8, 0x0000000000000000, 0x0000000000020000, 0xbfffffffffffffff, x1, 40, x3)

# rs1==x9, rs2==x18, rs1_val == 262144, 
# opcode: c.add; op1:x9; op2:x18; op1val:0x0000000000040000; op2val:0xfffffffffffffff9
TEST_CR_OP( c.add, x9, x18, 0x0000000000000000, 0x0000000000040000, 0xfffffffffffffff9, x1, 48, x3)

# rs1==x15, rs2==x22, rs1_val == 524288, rs2_val == -144115188075855873
# opcode: c.add; op1:x15; op2:x22; op1val:0x0000000000080000; op2val:0xfdffffffffffffff
TEST_CR_OP( c.add, x15, x22, 0x0000000000000000, 0x0000000000080000, 0xfdffffffffffffff, x1, 56, x3)

# rs1==x25, rs2==x13, rs1_val == 1048576, rs2_val == 128
# opcode: c.add; op1:x25; op2:x13; op1val:0x0000000000100000; op2val:0x0000000000000080
TEST_CR_OP( c.add, x25, x13, 0x0000000000000000, 0x0000000000100000, 0x0000000000000080, x1, 64, x3)

# rs1==x4, rs2==x16, rs1_val == 2097152, 
# opcode: c.add; op1:x4; op2:x16; op1val:0x0000000000200000; op2val:0xfeffffffffffffff
TEST_CR_OP( c.add, x4, x16, 0x0000000000000000, 0x0000000000200000, 0xfeffffffffffffff, x1, 72, x3)

# rs1==x19, rs2==x12, rs1_val == 4194304, rs2_val == -2305843009213693953
# opcode: c.add; op1:x19; op2:x12; op1val:0x0000000000400000; op2val:0xdfffffffffffffff
TEST_CR_OP( c.add, x19, x12, 0x0000000000000000, 0x0000000000400000, 0xdfffffffffffffff, x1, 80, x3)

# rs1==x14, rs1_val == 8388608, 
# opcode: c.add; op1:x14; op2:x20; op1val:0x0000000000800000; op2val:0x0008000000000000
TEST_CR_OP( c.add, x14, x20, 0x0000000000000000, 0x0000000000800000, 0x0008000000000000, x1, 88, x3)

# rs1_val == 16777216, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x0000000000000007
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000000000000007, x1, 96, x3)

# rs1_val == 33554432, rs2_val == -513
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xfffffffffffffdff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffffffffffffdff, x1, 104, x3)

# rs1_val == 67108864, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xfffffffffffffff8
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xfffffffffffffff8, x1, 112, x3)

# rs1_val == 134217728, rs2_val == 549755813888
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000008000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0000008000000000, x1, 120, x3)

# rs1_val == 268435456, rs2_val == 8796093022208
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000080000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000080000000000, x1, 128, x3)

# rs1_val == 536870912, rs2_val == -1099511627777
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xfffffeffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffeffffffffff, x1, 136, x3)

# rs1_val == 1073741824, rs2_val == 16777216
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000001000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000000001000000, x1, 144, x3)

# rs1_val == 2147483648, rs2_val == 576460752303423488
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0800000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0800000000000000, x1, 152, x3)

# rs1_val == 4294967296, rs2_val == 4194304
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000400000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000000400000, x1, 160, x3)

# rs1_val == 8589934592, rs2_val == -274877906945
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffbfffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffffbfffffffff, x1, 168, x3)

# rs1_val == 17179869184, rs2_val == 274877906944
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000004000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000004000000000, x1, 176, x3)

# rs1_val == 34359738368, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfffffbffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffffbffffffffff, x1, 184, x3)

# rs1_val == 68719476736, rs2_val == 2305843009213693952
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x2000000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x2000000000000000, x1, 192, x3)

# rs1_val == 137438953472, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfffffffffffffff8
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xfffffffffffffff8, x1, 200, x3)

# rs1_val == 274877906944, rs2_val == -8796093022209
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffff7ffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffff7ffffffffff, x1, 208, x3)

# rs1_val == 549755813888, rs2_val == -17592186044417
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xffffefffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffffefffffffffff, x1, 216, x3)

# rs1_val == 1099511627776, rs2_val == -2199023255553
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffdffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xfffffdffffffffff, x1, 224, x3)

# rs1_val == 2199023255552, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000080000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000080000000000, x1, 232, x3)

# rs1_val == 4398046511104, rs2_val == 281474976710656
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0001000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0001000000000000, x1, 240, x3)

# rs1_val == 8796093022208, rs2_val == 6148914691236517205
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x5555555555555555
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x5555555555555555, x1, 248, x3)

# rs1_val == 17592186044416, rs2_val == 35184372088832
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000200000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000200000000000, x1, 256, x3)

# rs1_val == 35184372088832, rs2_val == -9
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffffffffffff7
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfffffffffffffff7, x1, 264, x3)

# rs1_val == 70368744177664, rs2_val == 34359738368
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000800000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000800000000, x1, 272, x3)

# rs1_val == 140737488355328, rs2_val == -33
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xffffffffffffffdf
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xffffffffffffffdf, x1, 280, x3)

# rs1_val == 281474976710656, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffff9
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xfffffffffffffff9, x1, 288, x3)

# rs1_val == 562949953421312, rs2_val == -129
# opcode: c.add; op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xffffffffffffff7f
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xffffffffffffff7f, x1, 296, x3)

# rs1_val == 1125899906842624, rs2_val == -257
# opcode: c.add; op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffffffeff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffffffeff, x1, 304, x3)

# rs1_val == 2251799813685248, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffefffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0008000000000000, 0xffffefffffffffff, x1, 312, x3)

# rs1_val == 4503599627370496, rs2_val == -34359738369
# opcode: c.add; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffff7ffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffff7ffffffff, x1, 320, x3)

# rs1_val == 9007199254740992, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000001000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000001000000, x1, 328, x3)

# rs1_val == 18014398509481984, rs2_val == -268435457
# opcode: c.add; op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffffefffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xffffffffefffffff, x1, 336, x3)

# rs1_val == 36028797018963968, rs2_val == -8589934593
# opcode: c.add; op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfffffffdffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffdffffffff, x1, 344, x3)

# rs1_val == 72057594037927936, rs2_val == -137438953473
# opcode: c.add; op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xffffffdfffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xffffffdfffffffff, x1, 352, x3)

# rs1_val == 288230376151711744, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xdfffffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xdfffffffffffffff, x1, 360, x3)

# rs1_val == 576460752303423488, rs2_val == -68719476737
# opcode: c.add; op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffffefffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xffffffefffffffff, x1, 368, x3)

# rs1_val == 1152921504606846976, rs2_val == -1073741825
# opcode: c.add; op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xffffffffbfffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffbfffffff, x1, 376, x3)

# rs1_val == 2305843009213693952, rs2_val == 16
# opcode: c.add; op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000000000010
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000000000000010, x1, 384, x3)

# rs1_val == -2, rs2_val == 64
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000000040
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000000000040, x1, 392, x3)

# rs1_val == -5, rs2_val == 8589934592
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000200000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0000000200000000, x1, 400, x3)

# rs1_val == -9, rs2_val == -35184372088833
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffffdfffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xffffdfffffffffff, x1, 408, x3)

# rs1_val == -17, rs2_val == 2147483648
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000080000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000080000000, x1, 416, x3)

# rs1_val == -33, rs2_val == -1025
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffffffbff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffffffffffbff, x1, 424, x3)

# rs1_val == -65, rs2_val == -9007199254740993
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xffdfffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffdfffffffffffff, x1, 432, x3)

# rs1_val == -129, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffffffffff7
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xfffffffffffffff7, x1, 440, x3)

# rs2_val == -36028797018963969, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xff7fffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xff7fffffffffffff, x1, 448, x3)

# rs2_val == -576460752303423489, rs1_val == -72057594037927937
# opcode: c.add; op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xf7ffffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xf7ffffffffffffff, x1, 456, x3)

# rs2_val == -1152921504606846977, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xefffffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xefffffffffffffff, x1, 464, x3)

# rs2_val == -6148914691236517206, rs1_val == -68719476737
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xaaaaaaaaaaaaaaaa
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xaaaaaaaaaaaaaaaa, x1, 472, x3)

# rs1_val == -257, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000010000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000000000010000, x1, 480, x3)

# rs1_val == -513, rs2_val == -262145
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffffbffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xfffffffffffbffff, x1, 488, x3)

# rs1_val == -1025, rs2_val == 1152921504606846976
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x1000000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x1000000000000000, x1, 496, x3)

# rs1_val == -2049, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xffffdfffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xffffdfffffffffff, x1, 504, x3)

# rs1_val == -4097, rs2_val == 1073741824
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000040000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000000040000000, x1, 512, x3)

# rs1_val == -8193, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffffffffffffff6
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffffffff6, x1, 520, x3)

# rs1_val == -16385, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0001000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0001000000000000, x1, 528, x3)

# rs1_val == -32769, rs2_val == -4503599627370497
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xffefffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xffefffffffffffff, x1, 536, x3)

# rs1_val == -65537, rs2_val == -536870913
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffffdfffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xffffffffdfffffff, x1, 544, x3)

# rs1_val == -131073, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffffffbff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfffffffffffffbff, x1, 552, x3)

# rs1_val == -262145, rs2_val == 70368744177664
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000400000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000400000000000, x1, 560, x3)

# rs1_val == -524289, rs2_val == -67108865
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xfffffffffbffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xfffffffffbffffff, x1, 568, x3)

# rs1_val == -1048577, rs2_val == -65537
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xfffffffffffeffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffffffffeffff, x1, 576, x3)

# rs1_val == -2097153, rs2_val == -134217729
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffffffff7ffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xfffffffff7ffffff, x1, 584, x3)

# rs1_val == -4194305, rs2_val == 262144
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000040000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000000000040000, x1, 592, x3)

# rs1_val == -8388609, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffffffbfffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xffffffffbfffffff, x1, 600, x3)

# rs1_val == -16777217, rs2_val == 4503599627370496
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0010000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0010000000000000, x1, 608, x3)

# rs1_val == -33554433, rs2_val == -17
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffffffffef
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xffffffffffffffef, x1, 616, x3)

# rs1_val == -67108865, rs2_val == 8388608
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000000800000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000000000800000, x1, 624, x3)

# rs1_val == -134217729, rs2_val == 18014398509481984
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0040000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0040000000000000, x1, 632, x3)

# rs1_val == -268435457, rs2_val == 1125899906842624
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0004000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0x0004000000000000, x1, 640, x3)

# rs1_val == -536870913, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xff7fffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xff7fffffffffffff, x1, 648, x3)

# rs1_val == -1073741825, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xfffffffffbffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xfffffffffbffffff, x1, 656, x3)

# rs1_val == -2147483649, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000000400000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000000000400000, x1, 664, x3)

# rs1_val == -4294967297, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0000000000000008
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000000008, x1, 672, x3)

# rs1_val == -17179869185, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000040000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000000000040000, x1, 680, x3)

# rs1_val == -34359738369, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000040000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000000000040000, x1, 688, x3)

# rs1_val == -137438953473, rs2_val == 17592186044416
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000100000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0000100000000000, x1, 696, x3)

# rs1_val == -274877906945, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfffffffffffffeff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xfffffffffffffeff, x1, 704, x3)

# rs1_val == -549755813889, rs2_val == 16384
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000000004000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000000004000, x1, 712, x3)

# rs1_val == -1099511627777, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000001
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000000000000001, x1, 720, x3)

# rs1_val == -2199023255553, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x1000000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x1000000000000000, x1, 728, x3)

# rs1_val == -4398046511105, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xdfffffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xdfffffffffffffff, x1, 736, x3)

# rs1_val == -8796093022209, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000000000003
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x0000000000000003, x1, 744, x3)

# rs1_val == -35184372088833, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffdffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffffdffffffffff, x1, 752, x3)

# rs1_val == -70368744177665, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffffffff7f
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xffffffffffffff7f, x1, 760, x3)

# rs1_val == -140737488355329, rs2_val == -3
# opcode: c.add; op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffffffffffffffd
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0xfffffffffffffffd, x1, 768, x3)

# rs1_val == -281474976710657, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xfffffffffffffffa
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xfffffffffffffffa, x1, 776, x3)

# rs1_val == -562949953421313, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffeffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xfffffffffffeffff, x1, 784, x3)

# rs1_val == -36028797018963969, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffbfffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xffbfffffffffffff, x1, 792, x3)

# rs1_val == -144115188075855873, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000008000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000008000000000, x1, 800, x3)

# rs1_val == -288230376151711745, rs2_val == -70368744177665
# opcode: c.add; op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xffffbfffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xffffbfffffffffff, x1, 808, x3)

# rs1_val == -576460752303423489, rs2_val == -33554433
# opcode: c.add; op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfffffffffdffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0xfffffffffdffffff, x1, 816, x3)

# rs1_val == -1152921504606846977, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000000007
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000000007, x1, 824, x3)

# rs1_val == -2305843009213693953, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0004000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0004000000000000, x1, 832, x3)

# rs1_val == -4611686018427387905, rs2_val == 131072
# opcode: c.add; op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000000020000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000000000020000, x1, 840, x3)

# rs1_val == 6148914691236517205, rs2_val == -2097153
# opcode: c.add; op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xffffffffffdfffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffffffdfffff, x1, 848, x3)

# rs1_val == -6148914691236517206, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0040000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0040000000000000, x1, 856, x3)

# rs2_val == 2, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0x0000000000000002
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000040000, 0x0000000000000002, x1, 864, x3)

# rs2_val == 4, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000004
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000000000000004, x1, 872, x3)

# rs2_val == 32, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0000000000000020
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000000000000020, x1, 880, x3)

# rs2_val == 512, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000000000200
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000000000200, x1, 888, x3)

# rs2_val == 1024, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000000400
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000000400, x1, 896, x3)

# rs2_val == 2048, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0x0000000000000800
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0x0000000000000800, x1, 904, x3)

# rs2_val == 4096, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000000001000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0000000000001000, x1, 912, x3)

# rs2_val == 8192, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000002000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000002000, x1, 920, x3)

# rs2_val == 524288, rs1_val == -9007199254740993
# opcode: c.add; op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000080000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000080000, x1, 928, x3)

# rs2_val == 1048576, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000000100000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0000000000100000, x1, 936, x3)

# rs2_val == 2097152, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000000200000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x0000000000200000, x1, 944, x3)

# rs2_val == 67108864, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0x0000000004000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000000006, 0x0000000004000000, x1, 952, x3)

# rs2_val == 134217728, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000008000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000008000000, x1, 960, x3)

# rs2_val == 268435456, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000010000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000000010000000, x1, 968, x3)

# rs2_val == 536870912, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000020000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000020000000, x1, 976, x3)

# rs2_val == 4294967296, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000100000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000000100000000, x1, 984, x3)

# rs2_val == 17179869184, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000400000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000400000000, x1, 992, x3)

# rs2_val == 68719476736, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000001000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000001000000000, x1, 1000, x3)

# rs2_val == 36028797018963968, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0080000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0080000000000000, x1, 1008, x3)

# rs2_val == 9007199254740992, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffff9; op2val:0x0020000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffff9, 0x0020000000000000, x1, 1016, x3)

# rs2_val == 72057594037927936, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0x0100000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0100000000000000, x1, 1024, x3)

# rs2_val == 144115188075855872, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0200000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0200000000000000, x1, 1032, x3)

# rs2_val == 288230376151711744, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0400000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0400000000000000, x1, 1040, x3)

# rs2_val == 4611686018427387904, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x4000000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x4000000000000000, x1, 1048, x3)

# rs2_val == -2, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfffffffffffffffe
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffffffe, x1, 1056, x3)

# rs2_val == -65, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffffffffffbf
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xffffffffffffffbf, x1, 1064, x3)

# rs2_val == -4097, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffffffefff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffffffffffffefff, x1, 1072, x3)

# rs2_val == -8193, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xffffffffffffdfff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xffffffffffffdfff, x1, 1080, x3)

# rs2_val == -32769, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xffffffffffff7fff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xffffffffffff7fff, x1, 1088, x3)

# rs2_val == -131073, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfffffffffffdffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffdffff, x1, 1096, x3)

# rs2_val == -1048577, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xffffffffffefffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xffffffffffefffff, x1, 1104, x3)

# rs2_val == -2251799813685249, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfff7ffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xfff7ffffffffffff, x1, 1112, x3)

# rs2_val == -4194305, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xffffffffffbfffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffffffffffbfffff, x1, 1120, x3)

# rs2_val == -16777217, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffffffeffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xfffffffffeffffff, x1, 1128, x3)

# rs2_val == -2147483649, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffffffff7fffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xffffffff7fffffff, x1, 1136, x3)

# rs2_val == -4294967297, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfffffffeffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffffffeffffffff, x1, 1144, x3)

# rs1_val == -1125899906842625, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xfffffffffffffff8
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffffffff8, x1, 1152, x3)

# rs2_val == -17179869185, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xfffffffbffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffbffffffff, x1, 1160, x3)

# rs2_val == 137438953472, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x0000002000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000002000000000, x1, 1168, x3)

# rs2_val == 562949953421312, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0002000000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0002000000000000, x1, 1176, x3)

# rs1_val == -2251799813685249, rs2_val == 2199023255552
# opcode: c.add; op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000020000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000020000000000, x1, 1184, x3)

# rs2_val == -549755813889, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffff7fffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xffffff7fffffffff, x1, 1192, x3)

# rs2_val == 140737488355328, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000800000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000800000000000, x1, 1200, x3)

# rs2_val == -281474976710657, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffeffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfffeffffffffffff, x1, 1208, x3)

# rs2_val == -562949953421313, 
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0xfffdffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000020000, 0xfffdffffffffffff, x1, 1216, x3)

# rs2_val == -1125899906842625, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffbffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffbffffffffffff, x1, 1224, x3)

# rs1_val == -4503599627370497, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xffff7fffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xffff7fffffffffff, x1, 1232, x3)

# rs1_val == -18014398509481985, 
# opcode: c.add; op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xffbfffffffffffff
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffbfffffffffffff, x1, 1240, x3)

# rs2_val > 0, rs2_val == 1099511627776, rs1_val == 144115188075855872
# opcode: c.add; op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000010000000000
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000010000000000, x1, 1248, x3)

# rs1_val == 64, rs2_val == 256
# opcode: c.add; op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0x0000000000000100
TEST_CR_OP( c.add, x10, x11, 0x0000000000000000, 0x0000000000000040, 0x0000000000000100, x1, 1256, x3)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 158*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
