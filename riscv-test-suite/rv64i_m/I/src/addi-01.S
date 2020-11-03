
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 == rd, rs1==x11, rd==x11, rs1_val == imm_val, rs1_val > 0 and imm_val > 0
# opcode: addi ; op1:x11; dest:x11; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( addi, x11, x11, 0x6, 0x0000000000000003, 3, x5, 0, x7)

# rs1 != rd, rs1==x2, rd==x12, rs1_val != imm_val, rs1_val == -137438953473, imm_val == 0
# opcode: addi ; op1:x2; dest:x12; op1val:0xffffffdfffffffff;  immval:0
TEST_IMM_OP( addi, x12, x2, 0xffffffdfffffffff, 0xffffffdfffffffff, 0, x5, 8, x7)

# rs1==x29, rd==x14, rs1_val > 0 and imm_val < 0, imm_val == -3, rs1_val == 65536
# opcode: addi ; op1:x29; dest:x14; op1val:0x0000000000010000;  immval:-3
TEST_IMM_OP( addi, x14, x29, 0xfffd, 0x0000000000010000, -3, x5, 16, x7)

# rs1==x3, rd==x28, rs1_val < 0 and imm_val > 0, rs1_val == -274877906945, imm_val == 1365
# opcode: addi ; op1:x3; dest:x28; op1val:0xffffffbfffffffff;  immval:1365
TEST_IMM_OP( addi, x28, x3, 0xffffffc000000554, 0xffffffbfffffffff, 1365, x5, 24, x7)

# rs1==x17, rd==x18, rs1_val < 0 and imm_val < 0, imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == -2305843009213693953
# opcode: addi ; op1:x17; dest:x18; op1val:0xdfffffffffffffff;  immval:-2048
TEST_IMM_OP( addi, x18, x17, 0xdffffffffffff7ff, 0xdfffffffffffffff, -2048, x5, 32, x7)

# rs1==x28, rd==x29, rs1_val == (-2**(xlen-1)), imm_val == 4, rs1_val == -9223372036854775808
# opcode: addi ; op1:x28; dest:x29; op1val:0x8000000000000000;  immval:4
TEST_IMM_OP( addi, x29, x28, 0x8000000000000004, 0x8000000000000000, 4, x5, 40, x7)

# rs1==x10, rd==x13, rs1_val == 0, imm_val == -257
# opcode: addi ; op1:x10; dest:x13; op1val:0x0000000000000000;  immval:-257
TEST_IMM_OP( addi, x13, x10, 0xfffffffffffffeff, 0x0000000000000000, -257, x5, 48, x7)

# rs1==x16, rd==x31, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: addi ; op1:x16; dest:x31; op1val:0x7fffffffffffffff;  immval:-8
TEST_IMM_OP( addi, x31, x16, 0x7ffffffffffffff7, 0x7fffffffffffffff, -8, x5, 56, x7)

# rs1==x15, rd==x25, rs1_val == 1, imm_val == -513
# opcode: addi ; op1:x15; dest:x25; op1val:0x0000000000000001;  immval:-513
TEST_IMM_OP( addi, x25, x15, 0xfffffffffffffe00, 0x0000000000000001, -513, x5, 64, x7)

# rs1==x20, rd==x3, imm_val == (2**(12-1)-1), rs1_val == -576460752303423489, imm_val == 2047
# opcode: addi ; op1:x20; dest:x3; op1val:0xf7ffffffffffffff;  immval:2047
TEST_IMM_OP( addi, x3, x20, 0xf8000000000007fe, 0xf7ffffffffffffff, 2047, x5, 72, x7)

# rs1==x24, rd==x21, imm_val == 1, rs1_val == 68719476736
# opcode: addi ; op1:x24; dest:x21; op1val:0x0000001000000000;  immval:1
TEST_IMM_OP( addi, x21, x24, 0x1000000001, 0x0000001000000000, 1, x5, 80, x7)

# rs1==x8, rd==x4, rs1_val == 2, imm_val == 1024
# opcode: addi ; op1:x8; dest:x4; op1val:0x0000000000000002;  immval:1024
TEST_IMM_OP( addi, x4, x8, 0x402, 0x0000000000000002, 1024, x5, 88, x7)

# rs1==x21, rd==x10, rs1_val == 4, imm_val == -33
# opcode: addi ; op1:x21; dest:x10; op1val:0x0000000000000004;  immval:-33
TEST_IMM_OP( addi, x10, x21, 0xffffffffffffffe3, 0x0000000000000004, -33, x5, 96, x7)

# rs1==x18, rd==x17, rs1_val == 8, 
# opcode: addi ; op1:x18; dest:x17; op1val:0x0000000000000008;  immval:-1024
TEST_IMM_OP( addi, x17, x18, 0xfffffffffffffc08, 0x0000000000000008, -1024, x5, 104, x7)

# rs1==x25, rd==x24, rs1_val == 16, 
# opcode: addi ; op1:x25; dest:x24; op1val:0x0000000000000010;  immval:-1
TEST_IMM_OP( addi, x24, x25, 0xf, 0x0000000000000010, -1, x5, 112, x7)

# rs1==x27, rd==x30, rs1_val == 32, 
# opcode: addi ; op1:x27; dest:x30; op1val:0x0000000000000020;  immval:-33
TEST_IMM_OP( addi, x30, x27, 0xffffffffffffffff, 0x0000000000000020, -33, x5, 120, x7)

# rs1==x13, rd==x26, rs1_val == 64, 
# opcode: addi ; op1:x13; dest:x26; op1val:0x0000000000000040;  immval:-3
TEST_IMM_OP( addi, x26, x13, 0x3d, 0x0000000000000040, -3, x5, 128, x7)

# rs1==x12, rd==x9, rs1_val == 128, imm_val == -1366
# opcode: addi ; op1:x12; dest:x9; op1val:0x0000000000000080;  immval:-1366
TEST_IMM_OP( addi, x9, x12, 0xfffffffffffffb2a, 0x0000000000000080, -1366, x5, 136, x7)

# rs1==x9, rd==x1, rs1_val == 256, imm_val == -5
# opcode: addi ; op1:x9; dest:x1; op1val:0x0000000000000100;  immval:-5
TEST_IMM_OP( addi, x1, x9, 0xfb, 0x0000000000000100, -5, x5, 144, x7)

# rs1==x6, rd==x19, rs1_val == 512, 
# opcode: addi ; op1:x6; dest:x19; op1val:0x0000000000000200;  immval:1365
TEST_IMM_OP( addi, x19, x6, 0x755, 0x0000000000000200, 1365, x5, 152, x7)

# rs1==x0, rd==x16, rs1_val == 1024, imm_val == -65
# opcode: addi ; op1:x0; dest:x16; op1val:0x0000000000000400;  immval:-65
TEST_IMM_OP( addi, x16, x0, 0x3bf, 0x0000000000000400, -65, x5, 160, x9)

# rs1==x4, rd==x6, rs1_val == 2048, 
# opcode: addi ; op1:x4; dest:x6; op1val:0x0000000000000800;  immval:1024
TEST_IMM_OP( addi, x6, x4, 0xc00, 0x0000000000000800, 1024, x5, 168, x9)

# rs1==x26, rd==x22, rs1_val == 4096, imm_val == -129
# opcode: addi ; op1:x26; dest:x22; op1val:0x0000000000001000;  immval:-129
TEST_IMM_OP( addi, x22, x26, 0xf7f, 0x0000000000001000, -129, x5, 176, x9)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x1, rd==x23, rs1_val == 8192, 
# opcode: addi ; op1:x1; dest:x23; op1val:0x0000000000002000;  immval:5
TEST_IMM_OP( addi, x23, x1, 0x2005, 0x0000000000002000, 5, x3, 0, x9)

# rs1==x31, rd==x20, rs1_val == 16384, imm_val == -17
# opcode: addi ; op1:x31; dest:x20; op1val:0x0000000000004000;  immval:-17
TEST_IMM_OP( addi, x20, x31, 0x3fef, 0x0000000000004000, -17, x3, 8, x9)

# rs1==x30, rd==x5, rs1_val == 32768, 
# opcode: addi ; op1:x30; dest:x5; op1val:0x0000000000008000;  immval:1365
TEST_IMM_OP( addi, x5, x30, 0x8555, 0x0000000000008000, 1365, x3, 16, x9)

# rs1==x22, rd==x0, rs1_val == 131072, 
# opcode: addi ; op1:x22; dest:x0; op1val:0x0000000000020000;  immval:6
TEST_IMM_OP( addi, x0, x22, 0x20006, 0x0000000000020000, 6, x3, 24, x9)

# rs1==x5, rd==x8, rs1_val == 262144, 
# opcode: addi ; op1:x5; dest:x8; op1val:0x0000000000040000;  immval:-5
TEST_IMM_OP( addi, x8, x5, 0x3fffb, 0x0000000000040000, -5, x3, 32, x9)

# rs1==x14, rd==x7, rs1_val == 524288, imm_val == 32
# opcode: addi ; op1:x14; dest:x7; op1val:0x0000000000080000;  immval:32
TEST_IMM_OP( addi, x7, x14, 0x80020, 0x0000000000080000, 32, x3, 40, x9)

# rs1==x7, rd==x15, rs1_val == 1048576, imm_val == 2
# opcode: addi ; op1:x7; dest:x15; op1val:0x0000000000100000;  immval:2
TEST_IMM_OP( addi, x15, x7, 0x100002, 0x0000000000100000, 2, x3, 48, x9)

# rs1==x19, rd==x27, rs1_val == 2097152, 
# opcode: addi ; op1:x19; dest:x27; op1val:0x0000000000200000;  immval:-6
TEST_IMM_OP( addi, x27, x19, 0x1ffffa, 0x0000000000200000, -6, x3, 56, x9)

# rs1==x23, rd==x2, rs1_val == 4194304, 
# opcode: addi ; op1:x23; dest:x2; op1val:0x0000000000400000;  immval:1
TEST_IMM_OP( addi, x2, x23, 0x400001, 0x0000000000400000, 1, x3, 64, x9)

# rs1_val == 8388608, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x800400, 0x0000000000800000, 1024, x3, 72, x9)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffff7f, 0x0000000001000000, -129, x3, 80, x9)

# rs1_val == 33554432, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x2000007, 0x0000000002000000, 7, x3, 88, x9)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x4000001, 0x0000000004000000, 1, x3, 96, x9)

# rs1_val == 134217728, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0x7fffff9, 0x0000000008000000, -7, x3, 104, x9)

# rs1_val == 268435456, imm_val == 128
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x10000080, 0x0000000010000000, 128, x3, 112, x9)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x20000007, 0x0000000020000000, 7, x3, 120, x9)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0x3fffffff, 0x0000000040000000, -1, x3, 128, x9)

# rs1_val == 2147483648, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x7ffffff8, 0x0000000080000000, -8, x3, 136, x9)

# rs1_val == 4294967296, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0xffffffff, 0x0000000100000000, -1, x3, 144, x9)

# rs1_val == 8589934592, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x200000080, 0x0000000200000000, 128, x3, 152, x9)

# rs1_val == 17179869184, imm_val == -1025
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0x3fffffbff, 0x0000000400000000, -1025, x3, 160, x9)

# rs1_val == 34359738368, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:5
TEST_IMM_OP( addi, x11, x10, 0x800000005, 0x0000000800000000, 5, x3, 168, x9)

# rs1_val == 137438953472, imm_val == 8
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x2000000008, 0x0000002000000000, 8, x3, 176, x9)

# rs1_val == 274877906944, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x4000000020, 0x0000004000000000, 32, x3, 184, x9)

# rs1_val == 549755813888, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x7ffffffc00, 0x0000008000000000, -1024, x3, 192, x9)

# rs1_val == 1099511627776, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffffffa, 0x0000010000000000, -6, x3, 200, x9)

# rs1_val == 2199023255552, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x20000000555, 0x0000020000000000, 1365, x3, 208, x9)

# rs1_val == 4398046511104, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x3fffffffeff, 0x0000040000000000, -257, x3, 216, x9)

# rs1_val == 8796093022208, imm_val == -9
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x7fffffffff7, 0x0000080000000000, -9, x3, 224, x9)

# rs1_val == 17592186044416, imm_val == 512
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x100000000200, 0x0000100000000000, 512, x3, 232, x9)

# rs1_val == 35184372088832, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x2000000007ff, 0x0000200000000000, 2047, x3, 240, x9)

# rs1_val == 70368744177664, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffaaa, 0x0000400000000000, -1366, x3, 248, x9)

# rs1_val == 140737488355328, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:3
TEST_IMM_OP( addi, x11, x10, 0x800000000003, 0x0000800000000000, 3, x3, 256, x9)

# rs1_val == 281474976710656, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:4
TEST_IMM_OP( addi, x11, x10, 0x1000000000004, 0x0001000000000000, 4, x3, 264, x9)

# rs1_val == 562949953421312, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:5
TEST_IMM_OP( addi, x11, x10, 0x2000000000005, 0x0002000000000000, 5, x3, 272, x9)

# rs1_val == 1125899906842624, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffdff, 0x0004000000000000, -513, x3, 280, x9)

# rs1_val == 2251799813685248, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x8000000000006, 0x0008000000000000, 6, x3, 288, x9)

# rs1_val == 4503599627370496, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffffffffffbff, 0x0010000000000000, -1025, x3, 296, x9)

# rs1_val == 9007199254740992, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x1fffffffffff7f, 0x0020000000000000, -129, x3, 304, x9)

# rs1_val == 18014398509481984, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x40000000000080, 0x0040000000000000, 128, x3, 312, x9)

# rs1_val == 36028797018963968, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x80000000000006, 0x0080000000000000, 6, x3, 320, x9)

# rs1_val == 72057594037927936, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x1000000000007ff, 0x0100000000000000, 2047, x3, 328, x9)

# rs1_val == 144115188075855872, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x1fffffffffffeff, 0x0200000000000000, -257, x3, 336, x9)

# rs1_val == 288230376151711744, imm_val == -2
# opcode: addi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffffffe, 0x0400000000000000, -2, x3, 344, x9)

# rs1_val == 576460752303423488, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x7fffffffffffffc, 0x0800000000000000, -4, x3, 352, x9)

# rs1_val == 1152921504606846976, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffb, 0x1000000000000000, -5, x3, 360, x9)

# rs1_val == 2305843009213693952, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffc00, 0x2000000000000000, -1024, x3, 368, x9)

# rs1_val == 4611686018427387904, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffffffa, 0x4000000000000000, -6, x3, 376, x9)

# rs1_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffb, 0xfffffffffffffffe, -3, x3, 384, x9)

# rs1_val == -2251799813685249, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfff8000000000005, 0xfff7ffffffffffff, 6, x3, 392, x9)

# rs1_val == -4503599627370497, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xfff00000000003fe, 0xffefffffffffffff, 1023, x3, 400, x9)

# rs1_val == -9007199254740993, imm_val == 256
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xffe00000000000ff, 0xffdfffffffffffff, 256, x3, 408, x9)

# rs1_val == -18014398509481985, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffbffffffffff7ff, 0xffbfffffffffffff, -2048, x3, 416, x9)

# rs1_val == -36028797018963969, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xff7ffffffffffff6, 0xff7fffffffffffff, -9, x3, 424, x9)

# rs1_val == -72057594037927937, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xff00000000000007, 0xfeffffffffffffff, 8, x3, 432, x9)

# rs1_val == -144115188075855873, imm_val == 16
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xfe0000000000000f, 0xfdffffffffffffff, 16, x3, 440, x9)

# rs1_val == -288230376151711745, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfbffffffffffffff, 0xfbffffffffffffff, 0, x3, 448, x9)

# rs1_val == -1152921504606846977, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xf00000000000000f, 0xefffffffffffffff, 16, x3, 456, x9)

# rs1_val == -4611686018427387905, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 0, x3, 464, x9)

# rs1_val == 6148914691236517205, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x555555555555554c, 0x5555555555555555, -9, x3, 472, x9)

# rs1_val == -6148914691236517206, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaaaaaaaab1, 0xaaaaaaaaaaaaaaaa, 7, x3, 480, x9)

# imm_val == 64, rs1_val == -4194305
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xffffffffffc0003f, 0xffffffffffbfffff, 64, x3, 488, x9)

# rs1_val == -3, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffdc, 0xfffffffffffffffd, -33, x3, 496, x9)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffff5, 0xfffffffffffffffb, -6, x3, 504, x9)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffff2, 0xfffffffffffffff7, -5, x3, 512, x9)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffe6, 0xffffffffffffffef, -9, x3, 520, x9)

# rs1_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffff, 0xffffffffffffffdf, 32, x3, 528, x9)

# rs1_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffbb, 0xffffffffffffffbf, -4, x3, 536, x9)

# rs1_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x17f, 0xffffffffffffff7f, 512, x3, 544, x9)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffef6, 0xfffffffffffffeff, -9, x3, 552, x9)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffdf8, 0xfffffffffffffdff, -7, x3, 560, x9)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffc03, 0xfffffffffffffbff, 4, x3, 568, x9)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff801, 0xfffffffffffff7ff, 2, x3, 576, x9)

# rs1_val == -4097, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff554, 0xffffffffffffefff, 1365, x3, 584, x9)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffe07f, 0xffffffffffffdfff, 128, x3, 592, x9)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffbff8, 0xffffffffffffbfff, -7, x3, 600, x9)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff8006, 0xffffffffffff7fff, 7, x3, 608, x9)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffef7ff, 0xfffffffffffeffff, -2048, x3, 616, x9)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffdfffd, 0xfffffffffffdffff, -2, x3, 624, x9)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffbfaa9, 0xfffffffffffbffff, -1366, x3, 632, x9)

# rs1_val == -524289, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff7ffde, 0xfffffffffff7ffff, -33, x3, 640, x9)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffffffefffee, 0xffffffffffefffff, -17, x3, 648, x9)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffe00003, 0xffffffffffdfffff, 4, x3, 656, x9)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffffffffff800001, 0xffffffffff7fffff, 2, x3, 664, x9)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffefffffd, 0xfffffffffeffffff, -2, x3, 672, x9)

# rs1_val == -33554433, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffe000001, 0xfffffffffdffffff, 2, x3, 680, x9)

# rs1_val == -67108865, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffbfffff7, 0xfffffffffbffffff, -8, x3, 688, x9)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffffffff7ffffde, 0xfffffffff7ffffff, -33, x3, 696, x9)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xfffffffff00003fe, 0xffffffffefffffff, 1023, x3, 704, x9)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffffffdffffffd, 0xffffffffdfffffff, -2, x3, 712, x9)

# rs1_val == -1073741825, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xffffffffc00001ff, 0xffffffffbfffffff, 512, x3, 720, x9)

# rs1_val == -2147483649, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffffff7fffff7e, 0xffffffff7fffffff, -129, x3, 728, x9)

# rs1_val == -4294967297, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffffefffffff9, 0xfffffffeffffffff, -6, x3, 736, x9)

# rs1_val == -8589934593, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xfffffffe000001ff, 0xfffffffdffffffff, 512, x3, 744, x9)

# rs1_val == -17179869185, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffffc00000003, 0xfffffffbffffffff, 4, x3, 752, x9)

# rs1_val == -34359738369, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xfffffff7fffffaa9, 0xfffffff7ffffffff, -1366, x3, 760, x9)

# rs1_val == -68719476737, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffffefffffff7e, 0xffffffefffffffff, -129, x3, 768, x9)

# rs1_val == -549755813889, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffffff7ffffffbfe, 0xffffff7fffffffff, -1025, x3, 776, x9)

# rs1_val == -1099511627777, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffffefffffffbff, 0xfffffeffffffffff, -1024, x3, 784, x9)

# rs1_val == -2199023255553, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffffdfffffffff7, 0xfffffdffffffffff, -8, x3, 792, x9)

# rs1_val == -4398046511105, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffbfffffffff6, 0xfffffbffffffffff, -9, x3, 800, x9)

# rs1_val == -8796093022209, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xfffff80000000002, 0xfffff7ffffffffff, 3, x3, 808, x9)

# rs1_val == -17592186044417, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffeffffffffff8, 0xffffefffffffffff, -7, x3, 816, x9)

# rs1_val == -35184372088833, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xffffe00000000005, 0xffffdfffffffffff, 6, x3, 824, x9)

# rs1_val == -70368744177665, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xffffc0000000003f, 0xffffbfffffffffff, 64, x3, 832, x9)

# rs1_val == -140737488355329, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xffff7ffffffffdfe, 0xffff7fffffffffff, -513, x3, 840, x9)

# rs1_val == -281474976710657, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffff000000000002, 0xfffeffffffffffff, 3, x3, 848, x9)

# rs1_val == -562949953421313, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffdfffffffffffc, 0xfffdffffffffffff, -3, x3, 856, x9)

# rs1_val == -1125899906842625, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xfffc00000000003f, 0xfffbffffffffffff, 64, x3, 864, x9)

# rs1_val == 1024, imm_val == -65
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0x3bf, 0x0000000000000400, -65, x3, 872, x9)

# rs1_val == 131072, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x20006, 0x0000000000020000, 6, x3, 880, x9)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 111*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
