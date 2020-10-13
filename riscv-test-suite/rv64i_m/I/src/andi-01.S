
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

RVTEST_SIGBASE( x23,signature_x23_1)

# rs1 == rd, rs1==x28, rd==x28, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 64, imm_val == 64
# opcode: andi ; op1:x28; dest:x28; op1val:0x0000000000000040;  immval:64
TEST_IMM_OP( andi, x28, x28, 0x40, 0x0000000000000040, 64, x23, 0, x6)

# rs1 != rd, rs1==x12, rd==x9, rs1_val != imm_val, imm_val == -2, rs1_val > 0 and imm_val < 0, rs1_val == 16777216
# opcode: andi ; op1:x12; dest:x9; op1val:0x0000000001000000;  immval:-2
TEST_IMM_OP( andi, x9, x12, 0x1000000, 0x0000000001000000, -2, x23, 8, x6)

# rs1==x7, rd==x30, rs1_val < 0 and imm_val > 0, 
# opcode: andi ; op1:x7; dest:x30; op1val:0xfffffffffffffff6;  immval:6
TEST_IMM_OP( andi, x30, x7, 0x6, 0xfffffffffffffff6, 6, x23, 16, x6)

# rs1==x16, rd==x26, rs1_val < 0 and imm_val < 0, imm_val == -65, rs1_val == -6148914691236517206
# opcode: andi ; op1:x16; dest:x26; op1val:0xaaaaaaaaaaaaaaaa;  immval:-65
TEST_IMM_OP( andi, x26, x16, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, -65, x23, 24, x6)

# rs1==x9, rd==x8, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: andi ; op1:x9; dest:x8; op1val:0x8000000000000000;  immval:-8
TEST_IMM_OP( andi, x8, x9, 0x8000000000000000, 0x8000000000000000, -8, x23, 32, x6)

# rs1==x8, rd==x1, rs1_val == 0, imm_val == -33
# opcode: andi ; op1:x8; dest:x1; op1val:0x0000000000000000;  immval:-33
TEST_IMM_OP( andi, x1, x8, 0x0, 0x0000000000000000, -33, x23, 40, x6)

# rs1==x21, rd==x3, rs1_val == (2**(xlen-1)-1), imm_val == -257, rs1_val == 9223372036854775807
# opcode: andi ; op1:x21; dest:x3; op1val:0x7fffffffffffffff;  immval:-257
TEST_IMM_OP( andi, x3, x21, 0x7ffffffffffffeff, 0x7fffffffffffffff, -257, x23, 48, x6)

# rs1==x18, rd==x27, rs1_val == 1, imm_val == -9
# opcode: andi ; op1:x18; dest:x27; op1val:0x0000000000000001;  immval:-9
TEST_IMM_OP( andi, x27, x18, 0x1, 0x0000000000000001, -9, x23, 56, x6)

# rs1==x5, rd==x2, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 4398046511104
# opcode: andi ; op1:x5; dest:x2; op1val:0x0000040000000000;  immval:-2048
TEST_IMM_OP( andi, x2, x5, 0x40000000000, 0x0000040000000000, -2048, x23, 64, x6)

# rs1==x11, rd==x31, imm_val == 0, rs1_val == 2251799813685248
# opcode: andi ; op1:x11; dest:x31; op1val:0x0008000000000000;  immval:0
TEST_IMM_OP( andi, x31, x11, 0x0, 0x0008000000000000, 0, x23, 72, x6)

# rs1==x22, rd==x18, imm_val == (2**(12-1)-1), rs1_val == -9007199254740993, imm_val == 2047
# opcode: andi ; op1:x22; dest:x18; op1val:0xffdfffffffffffff;  immval:2047
TEST_IMM_OP( andi, x18, x22, 0x7ff, 0xffdfffffffffffff, 2047, x23, 80, x6)

# rs1==x20, rd==x25, imm_val == 1, rs1_val == 131072
# opcode: andi ; op1:x20; dest:x25; op1val:0x0000000000020000;  immval:1
TEST_IMM_OP( andi, x25, x20, 0x0, 0x0000000000020000, 1, x23, 88, x6)

# rs1==x29, rd==x17, rs1_val == 2, imm_val == -17
# opcode: andi ; op1:x29; dest:x17; op1val:0x0000000000000002;  immval:-17
TEST_IMM_OP( andi, x17, x29, 0x2, 0x0000000000000002, -17, x23, 96, x6)

# rs1==x1, rd==x14, rs1_val == 4, imm_val == 2
# opcode: andi ; op1:x1; dest:x14; op1val:0x0000000000000004;  immval:2
TEST_IMM_OP( andi, x14, x1, 0x0, 0x0000000000000004, 2, x23, 104, x6)

# rs1==x2, rd==x20, rs1_val == 8, imm_val == 1024
# opcode: andi ; op1:x2; dest:x20; op1val:0x0000000000000008;  immval:1024
TEST_IMM_OP( andi, x20, x2, 0x0, 0x0000000000000008, 1024, x23, 112, x6)

# rs1==x13, rd==x7, rs1_val == 16, imm_val == -1366
# opcode: andi ; op1:x13; dest:x7; op1val:0x0000000000000010;  immval:-1366
TEST_IMM_OP( andi, x7, x13, 0x0, 0x0000000000000010, -1366, x23, 120, x6)

# rs1==x0, rd==x13, rs1_val == 32, 
# opcode: andi ; op1:x0; dest:x13; op1val:0x0000000000000020;  immval:-257
TEST_IMM_OP( andi, x13, x0, 0x20, 0x0000000000000020, -257, x23, 128, x6)

# rs1==x15, rd==x0, rs1_val == 128, imm_val == 16
# opcode: andi ; op1:x15; dest:x0; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( andi, x0, x15, 0x0, 0x0000000000000080, 16, x23, 136, x6)

# rs1==x17, rd==x10, rs1_val == 256, imm_val == -129
# opcode: andi ; op1:x17; dest:x10; op1val:0x0000000000000100;  immval:-129
TEST_IMM_OP( andi, x10, x17, 0x100, 0x0000000000000100, -129, x23, 144, x6)

# rs1==x4, rd==x5, rs1_val == 512, imm_val == 128
# opcode: andi ; op1:x4; dest:x5; op1val:0x0000000000000200;  immval:128
TEST_IMM_OP( andi, x5, x4, 0x0, 0x0000000000000200, 128, x23, 152, x6)

# rs1==x14, rd==x4, rs1_val == 1024, imm_val == -1025
# opcode: andi ; op1:x14; dest:x4; op1val:0x0000000000000400;  immval:-1025
TEST_IMM_OP( andi, x4, x14, 0x0, 0x0000000000000400, -1025, x23, 160, x2)

# rs1==x6, rd==x19, rs1_val == 2048, 
# opcode: andi ; op1:x6; dest:x19; op1val:0x0000000000000800;  immval:5
TEST_IMM_OP( andi, x19, x6, 0x0, 0x0000000000000800, 5, x23, 168, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rd==x24, rs1_val == 4096, 
# opcode: andi ; op1:x23; dest:x24; op1val:0x0000000000001000;  immval:16
TEST_IMM_OP( andi, x24, x23, 0x0, 0x0000000000001000, 16, x1, 0, x2)

# rs1==x30, rd==x23, rs1_val == 8192, 
# opcode: andi ; op1:x30; dest:x23; op1val:0x0000000000002000;  immval:64
TEST_IMM_OP( andi, x23, x30, 0x0, 0x0000000000002000, 64, x1, 8, x2)

# rs1==x3, rd==x6, rs1_val == 16384, 
# opcode: andi ; op1:x3; dest:x6; op1val:0x0000000000004000;  immval:-9
TEST_IMM_OP( andi, x6, x3, 0x4000, 0x0000000000004000, -9, x1, 16, x2)

# rs1==x10, rd==x11, rs1_val == 32768, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0x8000, 0x0000000000008000, -10, x1, 24, x2)

# rs1==x26, rd==x16, rs1_val == 65536, 
# opcode: andi ; op1:x26; dest:x16; op1val:0x0000000000010000;  immval:-129
TEST_IMM_OP( andi, x16, x26, 0x10000, 0x0000000000010000, -129, x1, 32, x2)

# rs1==x24, rd==x21, rs1_val == 262144, 
# opcode: andi ; op1:x24; dest:x21; op1val:0x0000000000040000;  immval:-17
TEST_IMM_OP( andi, x21, x24, 0x40000, 0x0000000000040000, -17, x1, 40, x2)

# rs1==x27, rd==x15, rs1_val == 524288, 
# opcode: andi ; op1:x27; dest:x15; op1val:0x0000000000080000;  immval:-7
TEST_IMM_OP( andi, x15, x27, 0x80000, 0x0000000000080000, -7, x1, 48, x2)

# rs1==x31, rd==x29, rs1_val == 1048576, 
# opcode: andi ; op1:x31; dest:x29; op1val:0x0000000000100000;  immval:-129
TEST_IMM_OP( andi, x29, x31, 0x100000, 0x0000000000100000, -129, x1, 56, x2)

# rs1==x25, rd==x12, rs1_val == 2097152, 
# opcode: andi ; op1:x25; dest:x12; op1val:0x0000000000200000;  immval:64
TEST_IMM_OP( andi, x12, x25, 0x0, 0x0000000000200000, 64, x1, 64, x2)

# rs1==x19, rd==x22, rs1_val == 4194304, 
# opcode: andi ; op1:x19; dest:x22; op1val:0x0000000000400000;  immval:7
TEST_IMM_OP( andi, x22, x19, 0x0, 0x0000000000400000, 7, x1, 72, x2)

# rs1_val == 8388608, imm_val == 256
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000800000, 256, x1, 80, x2)

# rs1_val == 33554432, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000002000000, 7, x1, 88, x2)

# rs1_val == 67108864, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000004000000, 6, x1, 96, x2)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x8000000, 0x0000000008000000, -1025, x1, 104, x2)

# rs1_val == 268435456, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000010000000, 2047, x1, 112, x2)

# rs1_val == 536870912, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0x20000000, 0x0000000020000000, -33, x1, 120, x2)

# rs1_val == 1073741824, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000040000000, 1023, x1, 128, x2)

# rs1_val == 2147483648, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000080000000, 5, x1, 136, x2)

# rs1_val == 4294967296, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x100000000, 0x0000000100000000, -257, x1, 144, x2)

# rs1_val == 8589934592, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000200000000, 6, x1, 152, x2)

# rs1_val == 17179869184, imm_val == -3
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x400000000, 0x0000000400000000, -3, x1, 160, x2)

# rs1_val == 34359738368, imm_val == 32
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000800000000, 32, x1, 168, x2)

# rs1_val == 68719476736, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x1000000000, 0x0000001000000000, -1366, x1, 176, x2)

# rs1_val == 137438953472, imm_val == 8
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000002000000000, 8, x1, 184, x2)

# rs1_val == 274877906944, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x4000000000, 0x0000004000000000, -7, x1, 192, x2)

# rs1_val == 549755813888, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x8000000000, 0x0000008000000000, -2048, x1, 200, x2)

# rs1_val == 1099511627776, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000010000000000, 128, x1, 208, x2)

# rs1_val == 2199023255552, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x20000000000, 0x0000020000000000, -1025, x1, 216, x2)

# rs1_val == 8796093022208, imm_val == 512
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000080000000000, 512, x1, 224, x2)

# rs1_val == 17592186044416, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x100000000000, 0x0000100000000000, -2048, x1, 232, x2)

# rs1_val == 35184372088832, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000200000000000, 1024, x1, 240, x2)

# rs1_val == 70368744177664, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000400000000000, 6, x1, 248, x2)

# rs1_val == 140737488355328, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x800000000000, 0x0000800000000000, -1366, x1, 256, x2)

# rs1_val == 281474976710656, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0001000000000000, 3, x1, 264, x2)

# rs1_val == 562949953421312, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0002000000000000, 3, x1, 272, x2)

# rs1_val == 1125899906842624, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0x4000000000000, 0x0004000000000000, -2, x1, 280, x2)

# rs1_val == 4503599627370496, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0x10000000000000, 0x0010000000000000, -4, x1, 288, x2)

# rs1_val == 9007199254740992, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0020000000000000, 1024, x1, 296, x2)

# rs1_val == 18014398509481984, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0040000000000000, 5, x1, 304, x2)

# rs1_val == 36028797018963968, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0080000000000000, 16, x1, 312, x2)

# rs1_val == 72057594037927936, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x100000000000000, 0x0100000000000000, -9, x1, 320, x2)

# rs1_val == 144115188075855872, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0200000000000000, 64, x1, 328, x2)

# rs1_val == 288230376151711744, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x400000000000000, 0x0400000000000000, -9, x1, 336, x2)

# rs1_val == 576460752303423488, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0800000000000000, 2, x1, 344, x2)

# rs1_val == 1152921504606846976, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0x1000000000000000, 1, x1, 352, x2)

# rs1_val == 2305843009213693952, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x2000000000000000, 32, x1, 360, x2)

# rs1_val == 4611686018427387904, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x4000000000000000, 0x4000000000000000, -1366, x1, 368, x2)

# rs1_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffff800, 0xfffffffffffffffe, -2048, x1, 376, x2)

# rs1_val == -3, imm_val == -5
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffff9, 0xfffffffffffffffd, -5, x1, 384, x2)

# rs1_val == -5, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffff800, 0xfffffffffffffffb, -2048, x1, 392, x2)

# rs1_val == -2251799813685249, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfff7ffffffffffff, 2, x1, 400, x2)

# rs1_val == -4503599627370497, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffefffffffffffff, 0, x1, 408, x2)

# rs1_val == -18014398509481985, imm_val == 4
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffbfffffffffffff, 4, x1, 416, x2)

# rs1_val == -36028797018963969, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xff7ffffffffffffe, 0xff7fffffffffffff, -2, x1, 424, x2)

# rs1_val == -72057594037927937, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfefffffffffffc00, 0xfeffffffffffffff, -1024, x1, 432, x2)

# rs1_val == -144115188075855873, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfdffffffffffffff, 64, x1, 440, x2)

# rs1_val == -288230376151711745, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfbffffffffffffff, 0xfbffffffffffffff, -1, x1, 448, x2)

# rs1_val == -576460752303423489, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xf7ffffffffffffff, 3, x1, 456, x2)

# rs1_val == -1152921504606846977, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xeffffffffffffffb, 0xefffffffffffffff, -5, x1, 464, x2)

# rs1_val == -2305843009213693953, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xdfffffffffffffff, 8, x1, 472, x2)

# rs1_val == -4611686018427387905, imm_val == -513
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xbffffffffffffdff, 0xbfffffffffffffff, -513, x1, 480, x2)

# rs1_val == 6148914691236517205, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0x5555555555555400, 0x5555555555555555, -1024, x1, 488, x2)

# imm_val == 1365, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0008000000000000, 1365, x1, 496, x2)

# rs1_val == -9, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffffffffffff7, 8, x1, 504, x2)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffffffffffffffef, 4, x1, 512, x2)

# rs1_val == -33, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xffffffffffffffdf, 1, x1, 520, x2)

# rs1_val == -65, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffffffffbf, 5, x1, 528, x2)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffffffffffff7f, 128, x1, 536, x2)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffffffeff, 1, x1, 544, x2)

# rs1_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffddf, 0xfffffffffffffdff, -33, x1, 552, x2)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffbfb, 0xfffffffffffffbff, -5, x1, 560, x2)

# rs1_val == -2049, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffffff7ff, 1, x1, 568, x2)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xffffffffffffefff, 8, x1, 576, x2)

# rs1_val == -8193, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xffffffffffffdfff, 3, x1, 584, x2)

# rs1_val == -16385, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xffffffffffffbfff, 128, x1, 592, x2)

# rs1_val == -32769, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xffffffffffff7eff, 0xffffffffffff7fff, -257, x1, 600, x2)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffefffe, 0xfffffffffffeffff, -2, x1, 608, x2)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffdfc00, 0xfffffffffffdffff, -1024, x1, 616, x2)

# rs1_val == -262145, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xfffffffffffbffff, 512, x1, 624, x2)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffff7ffff, 1, x1, 632, x2)

# rs1_val == -1048577, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffffffffefffff, 256, x1, 640, x2)

# rs1_val == -2097153, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffffffffffdfffff, 32, x1, 648, x2)

# rs1_val == -4194305, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffffffffbfffff, 256, x1, 656, x2)

# rs1_val == -8388609, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xffffffffff7ffffc, 0xffffffffff7fffff, -4, x1, 664, x2)

# rs1_val == -16777217, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffffffffefffff6, 0xfffffffffeffffff, -10, x1, 672, x2)

# rs1_val == -33554433, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffffffdffffff, 0, x1, 680, x2)

# rs1_val == -67108865, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfffffffffbffffff, 0xfffffffffbffffff, -1, x1, 688, x2)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xfffffffff7ffffff, 128, x1, 696, x2)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xffffffffefffffff, 6, x1, 704, x2)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xffffffffdfffffff, 3, x1, 712, x2)

# rs1_val == -1073741825, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xffffffffbfffffff, 1365, x1, 720, x2)

# rs1_val == -2147483649, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffff7ffffffe, 0xffffffff7fffffff, -2, x1, 728, x2)

# rs1_val == -4294967297, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffeffffffff, 256, x1, 736, x2)

# rs1_val == -8589934593, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xfffffffdfffffffa, 0xfffffffdffffffff, -6, x1, 744, x2)

# rs1_val == -17179869185, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x7ff, 0xfffffffbffffffff, 2047, x1, 752, x2)

# rs1_val == -34359738369, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffff7fffffff8, 0xfffffff7ffffffff, -8, x1, 760, x2)

# rs1_val == -68719476737, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffffffefffffffff, 32, x1, 768, x2)

# rs1_val == -137438953473, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffffdfffffffef, 0xffffffdfffffffff, -17, x1, 776, x2)

# rs1_val == -274877906945, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xffffffbffffff800, 0xffffffbfffffffff, -2048, x1, 784, x2)

# rs1_val == -549755813889, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xffffff7ffffffff7, 0xffffff7fffffffff, -9, x1, 792, x2)

# rs1_val == -1099511627777, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x7ff, 0xfffffeffffffffff, 2047, x1, 800, x2)

# rs1_val == -2199023255553, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffdffffffffff, 64, x1, 808, x2)

# rs1_val == -4398046511105, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffbfffffffbff, 0xfffffbffffffffff, -1025, x1, 816, x2)

# rs1_val == -8796093022209, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfffff7ffffffffff, 2, x1, 824, x2)

# rs1_val == -17592186044417, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xffffeffffffffffa, 0xffffefffffffffff, -6, x1, 832, x2)

# rs1_val == -35184372088833, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffffdfffffffffff, 0xffffdfffffffffff, -1, x1, 840, x2)

# rs1_val == -70368744177665, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0xffffbfffffffffff, 7, x1, 848, x2)

# rs1_val == -140737488355329, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffff7fffffffffef, 0xffff7fffffffffff, -17, x1, 856, x2)

# rs1_val == -281474976710657, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x7ff, 0xfffeffffffffffff, 2047, x1, 864, x2)

# rs1_val == -562949953421313, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xfffdffffffffffef, 0xfffdffffffffffff, -17, x1, 872, x2)

# rs1_val == -1125899906842625, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xfffbffffffffffff, 8, x1, 880, x2)

# rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 64, imm_val == 64
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0x0000000000000040, 64, x1, 888, x2)

# rs1_val == 32, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x20, 0x0000000000000020, -257, x1, 896, x2)

# rs1_val == 128, imm_val == 16
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000000080, 16, x1, 904, x2)
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

signature_x23_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x23_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 114*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
