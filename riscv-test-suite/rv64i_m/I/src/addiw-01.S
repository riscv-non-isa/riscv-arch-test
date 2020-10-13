
#This assembly file tests the addiw instruction of the RISC-V I extension for the addiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addiw)

RVTEST_SIGBASE( x8,signature_x8_1)

# rs1 == rd, rs1==x11, rd==x11, rs1_val == imm_val, rs1_val > 0 and imm_val > 0
# opcode: addiw ; op1:x11; dest:x11; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( addiw, x11, x11, 0xa, 0x0000000000000005, 5, x8, 0, x4)

# rs1 != rd, rs1==x9, rd==x13, rs1_val != imm_val, imm_val == -65, rs1_val > 0 and imm_val < 0
# opcode: addiw ; op1:x9; dest:x13; op1val:0x0000000000000003;  immval:-65
TEST_IMM_OP( addiw, x13, x9, 0xffffffc2, 0x0000000000000003, -65, x8, 8, x4)

# rs1==x13, rd==x19, rs1_val < 0 and imm_val > 0, rs1_val == -137438953473, imm_val == 16
# opcode: addiw ; op1:x13; dest:x19; op1val:0xffffffdfffffffff;  immval:16
TEST_IMM_OP( addiw, x19, x13, 0x10000000f, 0xffffffdfffffffff, 16, x8, 16, x4)

# rs1==x17, rd==x29, rs1_val < 0 and imm_val < 0, rs1_val == -2049
# opcode: addiw ; op1:x17; dest:x29; op1val:0xfffffffffffff7ff;  immval:-65
TEST_IMM_OP( addiw, x29, x17, 0x1fffff7be, 0xfffffffffffff7ff, -65, x8, 24, x4)

# rs1==x1, rd==x9, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: addiw ; op1:x1; dest:x9; op1val:0x8000000000000000;  immval:-65
TEST_IMM_OP( addiw, x9, x1, 0xffffffbf, 0x8000000000000000, -65, x8, 32, x4)

# rs1==x25, rd==x22, rs1_val == 0, 
# opcode: addiw ; op1:x25; dest:x22; op1val:0x0000000000000000;  immval:16
TEST_IMM_OP( addiw, x22, x25, 0x10, 0x0000000000000000, 16, x8, 40, x4)

# rs1==x3, rd==x24, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: addiw ; op1:x3; dest:x24; op1val:0x7fffffffffffffff;  immval:-1024
TEST_IMM_OP( addiw, x24, x3, 0x1fffffbff, 0x7fffffffffffffff, -1024, x8, 48, x4)

# rs1==x10, rd==x15, rs1_val == 1, 
# opcode: addiw ; op1:x10; dest:x15; op1val:0x0000000000000001;  immval:-7
TEST_IMM_OP( addiw, x15, x10, 0xfffffffa, 0x0000000000000001, -7, x8, 56, x4)

# rs1==x23, rd==x6, imm_val == (-2**(12-1)), rs1_val == 4503599627370496, imm_val == -2048
# opcode: addiw ; op1:x23; dest:x6; op1val:0x0010000000000000;  immval:-2048
TEST_IMM_OP( addiw, x6, x23, 0xfffff800, 0x0010000000000000, -2048, x8, 64, x4)

# rs1==x28, rd==x7, imm_val == 0, rs1_val == 9007199254740992
# opcode: addiw ; op1:x28; dest:x7; op1val:0x0020000000000000;  immval:0
TEST_IMM_OP( addiw, x7, x28, 0x0, 0x0020000000000000, 0, x8, 72, x4)

# rs1==x7, rd==x27, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -4398046511105
# opcode: addiw ; op1:x7; dest:x27; op1val:0xfffffbffffffffff;  immval:2047
TEST_IMM_OP( addiw, x27, x7, 0x1000007fe, 0xfffffbffffffffff, 2047, x8, 80, x4)

# rs1==x20, rd==x5, imm_val == 1, rs1_val == 6148914691236517205
# opcode: addiw ; op1:x20; dest:x5; op1val:0x5555555555555555;  immval:1
TEST_IMM_OP( addiw, x5, x20, 0x55555556, 0x5555555555555555, 1, x8, 88, x4)

# rs1==x31, rd==x30, rs1_val == 2, imm_val == 2
# opcode: addiw ; op1:x31; dest:x30; op1val:0x0000000000000002;  immval:2
TEST_IMM_OP( addiw, x30, x31, 0x4, 0x0000000000000002, 2, x8, 96, x4)

# rs1==x22, rd==x26, rs1_val == 4, imm_val == -129
# opcode: addiw ; op1:x22; dest:x26; op1val:0x0000000000000004;  immval:-129
TEST_IMM_OP( addiw, x26, x22, 0xffffff83, 0x0000000000000004, -129, x8, 104, x4)

# rs1==x18, rd==x14, rs1_val == 8, imm_val == 32
# opcode: addiw ; op1:x18; dest:x14; op1val:0x0000000000000008;  immval:32
TEST_IMM_OP( addiw, x14, x18, 0x28, 0x0000000000000008, 32, x8, 112, x4)

# rs1==x24, rd==x0, rs1_val == 16, imm_val == 8
# opcode: addiw ; op1:x24; dest:x0; op1val:0x0000000000000010;  immval:8
TEST_IMM_OP( addiw, x0, x24, 0x18, 0x0000000000000010, 8, x8, 120, x4)

# rs1==x0, rd==x31, rs1_val == 32, 
# opcode: addiw ; op1:x0; dest:x31; op1val:0x0000000000000020;  immval:8
TEST_IMM_OP( addiw, x31, x0, 0x28, 0x0000000000000020, 8, x8, 128, x4)

# rs1==x2, rd==x21, rs1_val == 64, imm_val == -9
# opcode: addiw ; op1:x2; dest:x21; op1val:0x0000000000000040;  immval:-9
TEST_IMM_OP( addiw, x21, x2, 0x100000037, 0x0000000000000040, -9, x8, 136, x4)

# rs1==x14, rd==x1, rs1_val == 128, 
# opcode: addiw ; op1:x14; dest:x1; op1val:0x0000000000000080;  immval:7
TEST_IMM_OP( addiw, x1, x14, 0x87, 0x0000000000000080, 7, x8, 144, x7)

# rs1==x5, rd==x2, rs1_val == 256, 
# opcode: addiw ; op1:x5; dest:x2; op1val:0x0000000000000100;  immval:9
TEST_IMM_OP( addiw, x2, x5, 0x109, 0x0000000000000100, 9, x8, 152, x7)

# rs1==x30, rd==x20, rs1_val == 512, imm_val == -1025
# opcode: addiw ; op1:x30; dest:x20; op1val:0x0000000000000200;  immval:-1025
TEST_IMM_OP( addiw, x20, x30, 0xfffffdff, 0x0000000000000200, -1025, x8, 160, x7)

# rs1==x21, rd==x4, rs1_val == 1024, imm_val == 512
# opcode: addiw ; op1:x21; dest:x4; op1val:0x0000000000000400;  immval:512
TEST_IMM_OP( addiw, x4, x21, 0x600, 0x0000000000000400, 512, x8, 168, x7)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x27, rd==x3, rs1_val == 2048, imm_val == -3
# opcode: addiw ; op1:x27; dest:x3; op1val:0x0000000000000800;  immval:-3
TEST_IMM_OP( addiw, x3, x27, 0x1000007fd, 0x0000000000000800, -3, x1, 0, x7)

# rs1==x8, rd==x23, rs1_val == 4096, 
# opcode: addiw ; op1:x8; dest:x23; op1val:0x0000000000001000;  immval:-10
TEST_IMM_OP( addiw, x23, x8, 0x100000ff6, 0x0000000000001000, -10, x1, 8, x7)

# rs1==x12, rd==x16, rs1_val == 8192, imm_val == 1024
# opcode: addiw ; op1:x12; dest:x16; op1val:0x0000000000002000;  immval:1024
TEST_IMM_OP( addiw, x16, x12, 0x2400, 0x0000000000002000, 1024, x1, 16, x7)

# rs1==x29, rd==x18, rs1_val == 16384, 
# opcode: addiw ; op1:x29; dest:x18; op1val:0x0000000000004000;  immval:0
TEST_IMM_OP( addiw, x18, x29, 0x4000, 0x0000000000004000, 0, x1, 24, x7)

# rs1==x16, rd==x10, rs1_val == 32768, 
# opcode: addiw ; op1:x16; dest:x10; op1val:0x0000000000008000;  immval:0
TEST_IMM_OP( addiw, x10, x16, 0x8000, 0x0000000000008000, 0, x1, 32, x7)

# rs1==x6, rd==x28, rs1_val == 65536, imm_val == -5
# opcode: addiw ; op1:x6; dest:x28; op1val:0x0000000000010000;  immval:-5
TEST_IMM_OP( addiw, x28, x6, 0x10000fffb, 0x0000000000010000, -5, x1, 40, x7)

# rs1==x19, rd==x12, rs1_val == 131072, imm_val == -33
# opcode: addiw ; op1:x19; dest:x12; op1val:0x0000000000020000;  immval:-33
TEST_IMM_OP( addiw, x12, x19, 0x10001ffdf, 0x0000000000020000, -33, x1, 48, x7)

# rs1==x15, rd==x25, rs1_val == 262144, 
# opcode: addiw ; op1:x15; dest:x25; op1val:0x0000000000040000;  immval:-10
TEST_IMM_OP( addiw, x25, x15, 0x10003fff6, 0x0000000000040000, -10, x1, 56, x7)

# rs1==x4, rd==x8, rs1_val == 524288, 
# opcode: addiw ; op1:x4; dest:x8; op1val:0x0000000000080000;  immval:32
TEST_IMM_OP( addiw, x8, x4, 0x80020, 0x0000000000080000, 32, x1, 64, x7)

# rs1==x26, rd==x17, rs1_val == 1048576, 
# opcode: addiw ; op1:x26; dest:x17; op1val:0x0000000000100000;  immval:-7
TEST_IMM_OP( addiw, x17, x26, 0x1000ffff9, 0x0000000000100000, -7, x1, 72, x7)

# rs1_val == 2097152, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x200020, 0x0000000000200000, 32, x1, 80, x7)

# rs1_val == 4194304, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1003ffff8, 0x0000000000400000, -8, x1, 88, x7)

# rs1_val == 8388608, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x800001, 0x0000000000800000, 1, x1, 96, x7)

# rs1_val == 16777216, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x1000008, 0x0000000001000000, 8, x1, 104, x7)

# rs1_val == 33554432, imm_val == -513
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x101fffdff, 0x0000000002000000, -513, x1, 112, x7)

# rs1_val == 67108864, imm_val == -257
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x103fffeff, 0x0000000004000000, -257, x1, 120, x7)

# rs1_val == 134217728, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x8000007, 0x0000000008000000, 7, x1, 128, x7)

# rs1_val == 268435456, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x10fffffdf, 0x0000000010000000, -33, x1, 136, x7)

# rs1_val == 536870912, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x200007ff, 0x0000000020000000, 2047, x1, 144, x7)

# rs1_val == 1073741824, imm_val == 64
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x40000040, 0x0000000040000000, 64, x1, 152, x7)

# rs1_val == 2147483648, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x80000007, 0x0000000080000000, 7, x1, 160, x7)

# rs1_val == 4294967296, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x7, 0x0000000100000000, 7, x1, 168, x7)

# rs1_val == 8589934592, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x9, 0x0000000200000000, 9, x1, 176, x7)

# rs1_val == 17179869184, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0xfffffbff, 0x0000000400000000, -1025, x1, 184, x7)

# rs1_val == 34359738368, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0000000800000000, 512, x1, 192, x7)

# rs1_val == 68719476736, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x0000001000000000, -513, x1, 200, x7)

# rs1_val == 137438953472, imm_val == 4
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x4, 0x0000002000000000, 4, x1, 208, x7)

# rs1_val == 274877906944, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x0000004000000000, -2048, x1, 216, x7)

# rs1_val == 549755813888, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0000008000000000, -3, x1, 224, x7)

# rs1_val == 1099511627776, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x0000010000000000, -10, x1, 232, x7)

# rs1_val == 2199023255552, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x40, 0x0000020000000000, 64, x1, 240, x7)

# rs1_val == 4398046511104, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x0000040000000000, -513, x1, 248, x7)

# rs1_val == 8796093022208, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0000080000000000, -3, x1, 256, x7)

# rs1_val == 17592186044416, imm_val == 1365
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x555, 0x0000100000000000, 1365, x1, 264, x7)

# rs1_val == 35184372088832, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x2, 0x0000200000000000, 2, x1, 272, x7)

# rs1_val == 70368744177664, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0000400000000000, 512, x1, 280, x7)

# rs1_val == 140737488355328, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x40, 0x0000800000000000, 64, x1, 288, x7)

# rs1_val == 281474976710656, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x20, 0x0001000000000000, 32, x1, 296, x7)

# rs1_val == 562949953421312, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0xfffffff9, 0x0002000000000000, -7, x1, 304, x7)

# rs1_val == 1125899906842624, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x7, 0x0004000000000000, 7, x1, 312, x7)

# rs1_val == 2251799813685248, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0xffffff7f, 0x0008000000000000, -129, x1, 320, x7)

# rs1_val == 18014398509481984, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x4, 0x0040000000000000, 4, x1, 328, x7)

# rs1_val == 36028797018963968, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0080000000000000, -3, x1, 336, x7)

# rs1_val == 72057594037927936, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0x0100000000000000, -1, x1, 344, x7)

# rs1_val == 144115188075855872, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x555, 0x0200000000000000, 1365, x1, 352, x7)

# rs1_val == 288230376151711744, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x0400000000000000, -2048, x1, 360, x7)

# rs1_val == 576460752303423488, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x0800000000000000, -10, x1, 368, x7)

# rs1_val == 1152921504606846976, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x1000000000000000, -10, x1, 376, x7)

# rs1_val == 2305843009213693952, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x2000000000000000, -65, x1, 384, x7)

# rs1_val == 4611686018427387904, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x4000000000000000, -513, x1, 392, x7)

# rs1_val == -2, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xfffffffffffffffe, 2, x1, 400, x7)

# rs1_val == -3, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000552, 0xfffffffffffffffd, 1365, x1, 408, x7)

# rs1_val == -5, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x10000003b, 0xfffffffffffffffb, 64, x1, 416, x7)

# rs1_val == -2251799813685249, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xfff7ffffffffffff, 1, x1, 424, x7)

# rs1_val == -4503599627370497, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xffefffffffffffff, 7, x1, 432, x7)

# rs1_val == -9007199254740993, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xffdfffffffffffff, 16, x1, 440, x7)

# rs1_val == -18014398509481985, imm_val == -17
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xffbfffffffffffff, -17, x1, 448, x7)

# rs1_val == -36028797018963969, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x100000001, 0xff7fffffffffffff, 2, x1, 456, x7)

# rs1_val == -72057594037927937, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x100000003, 0xfeffffffffffffff, 4, x1, 464, x7)

# rs1_val == -144115188075855873, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xfdffffffffffffff, 6, x1, 472, x7)

# rs1_val == -288230376151711745, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff5, 0xfbffffffffffffff, -10, x1, 480, x7)

# rs1_val == -576460752303423489, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x100000004, 0xf7ffffffffffffff, 5, x1, 488, x7)

# rs1_val == -1152921504606846977, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffe, 0xefffffffffffffff, -1, x1, 496, x7)

# rs1_val == -2305843009213693953, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xdfffffffffffffff, 16, x1, 504, x7)

# rs1_val == -4611686018427387905, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xbfffffffffffffff, -3, x1, 512, x7)

# rs1_val == -6148914691236517206, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0xaaaab2a9, 0xaaaaaaaaaaaaaaaa, 2047, x1, 520, x7)

# imm_val == 128, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0000001000000000, 128, x1, 528, x7)

# imm_val == 256, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x100, 0x0040000000000000, 256, x1, 536, x7)

# imm_val == -2, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1000ffffe, 0x0000000000100000, -2, x1, 544, x7)

# imm_val == -1366, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0xfffffaaa, 0x4000000000000000, -1366, x1, 552, x7)

# rs1_val == -9, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x100000077, 0xfffffffffffffff7, 128, x1, 560, x7)

# rs1_val == -17, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xffffffffffffffef, 32, x1, 568, x7)

# rs1_val == -33, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffd8, 0xffffffffffffffdf, -7, x1, 576, x7)

# rs1_val == -65, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffbb, 0xffffffffffffffbf, -4, x1, 584, x7)

# rs1_val == -129, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffe7e, 0xffffffffffffff7f, -257, x1, 592, x7)

# rs1_val == -257, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1fffff6ff, 0xfffffffffffffeff, -2048, x1, 600, x7)

# rs1_val == -513, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0xfffffeff, 0xfffffffffffffdff, 256, x1, 608, x7)

# rs1_val == -1025, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbde, 0xfffffffffffffbff, -33, x1, 616, x7)

# rs1_val == -4097, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1ffffeefe, 0xffffffffffffefff, -257, x1, 624, x7)

# rs1_val == -8193, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1ffffd7ff, 0xffffffffffffdfff, -2048, x1, 632, x7)

# rs1_val == -16385, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ffffbfbe, 0xffffffffffffbfff, -65, x1, 640, x7)

# rs1_val == -32769, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0xffff83ff, 0xffffffffffff7fff, 1024, x1, 648, x7)

# rs1_val == -65537, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0xffff00ff, 0xfffffffffffeffff, 256, x1, 656, x7)

# rs1_val == -131073, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffdfbfe, 0xfffffffffffdffff, -1025, x1, 664, x7)

# rs1_val == -262145, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffbfffe, 0xfffffffffffbffff, -1, x1, 672, x7)

# rs1_val == -524289, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fff7fffe, 0xfffffffffff7ffff, -1, x1, 680, x7)

# rs1_val == -1048577, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1ffeffff5, 0xffffffffffefffff, -10, x1, 688, x7)

# rs1_val == -2097153, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0xffe00006, 0xffffffffffdfffff, 7, x1, 696, x7)

# rs1_val == -4194305, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1ffbffefe, 0xffffffffffbfffff, -257, x1, 704, x7)

# rs1_val == -8388609, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1ff7ffffa, 0xffffffffff7fffff, -5, x1, 712, x7)

# rs1_val == -16777217, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1feffffbe, 0xfffffffffeffffff, -65, x1, 720, x7)

# rs1_val == -33554433, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1fdfffffd, 0xfffffffffdffffff, -2, x1, 728, x7)

# rs1_val == -67108865, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fbfffbfe, 0xfffffffffbffffff, -1025, x1, 736, x7)

# rs1_val == -134217729, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xf80003fe, 0xfffffffff7ffffff, 1023, x1, 744, x7)

# rs1_val == -268435457, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xf00003fe, 0xffffffffefffffff, 1023, x1, 752, x7)

# rs1_val == -536870913, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1dfffff7e, 0xffffffffdfffffff, -129, x1, 760, x7)

# rs1_val == -1073741825, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0xc00007fe, 0xffffffffbfffffff, 2047, x1, 768, x7)

# rs1_val == -2147483649, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x80000001, 0xffffffff7fffffff, 2, x1, 776, x7)

# rs1_val == -4294967297, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xfffffffeffffffff, 0, x1, 784, x7)

# rs1_val == -8589934593, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff7, 0xfffffffdffffffff, -8, x1, 792, x7)

# rs1_val == -17179869185, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffbe, 0xfffffffbffffffff, -65, x1, 800, x7)

# rs1_val == -34359738369, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x100000001, 0xfffffff7ffffffff, 2, x1, 808, x7)

# rs1_val == -68719476737, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x10000001f, 0xffffffefffffffff, 32, x1, 816, x7)

# rs1_val == -274877906945, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xffffffbfffffffff, -17, x1, 824, x7)

# rs1_val == -549755813889, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffbe, 0xffffff7fffffffff, -65, x1, 832, x7)

# rs1_val == -1099511627777, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffa, 0xfffffeffffffffff, -5, x1, 840, x7)

# rs1_val == -2199023255553, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7ff, 0xfffffdffffffffff, -2048, x1, 848, x7)

# rs1_val == -8796093022209, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xfffff7ffffffffff, -3, x1, 856, x7)

# rs1_val == -17592186044417, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff6, 0xffffefffffffffff, -9, x1, 864, x7)

# rs1_val == -35184372088833, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xffffdfffffffffff, 1, x1, 872, x7)

# rs1_val == -70368744177665, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffe, 0xffffbfffffffffff, -1, x1, 880, x7)

# rs1_val == -140737488355329, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xffff7fffffffffff, -1025, x1, 888, x7)

# rs1_val == -281474976710657, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff6, 0xfffeffffffffffff, -9, x1, 896, x7)

# rs1_val == -562949953421313, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbff, 0xfffdffffffffffff, -1024, x1, 904, x7)

# rs1_val == -1125899906842625, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x100000002, 0xfffbffffffffffff, 3, x1, 912, x7)

# rs1_val == imm_val, rs1_val > 0 and imm_val > 0
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xa, 0x0000000000000005, 5, x1, 920, x7)

# rs1_val == 16, imm_val == 8
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000010;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x18, 0x0000000000000010, 8, x1, 928, x7)

# rs1_val == 32, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x28, 0x0000000000000020, 8, x1, 936, x7)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 118*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
