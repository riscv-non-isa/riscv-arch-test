
#This assembly file tests the addiw instruction of the RISC-V I extension for the addiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addiw)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rd, rs1==x31, rd==x31, rs1_val == imm_val, imm_val == 1024, rs1_val > 0 and imm_val > 0, rs1_val == 1024
# opcode: addiw ; op1:x31; dest:x31; op1val:0x0000000000000400;  immval:1024
TEST_IMM_OP( addiw, x31, x31, 0x800, 0x0000000000000400, 1024, x2, 0, x12)

# rs1 != rd, rs1==x8, rd==x11, rs1_val != imm_val, rs1_val == -134217729, imm_val == 8, rs1_val < 0 and imm_val > 0
# opcode: addiw ; op1:x8; dest:x11; op1val:0xfffffffff7ffffff;  immval:8
TEST_IMM_OP( addiw, x11, x8, 0xf8000007, 0xfffffffff7ffffff, 8, x2, 8, x12)

# rs1==x21, rd==x3, rs1_val > 0 and imm_val < 0, rs1_val == 1099511627776, imm_val == -33
# opcode: addiw ; op1:x21; dest:x3; op1val:0x0000010000000000;  immval:-33
TEST_IMM_OP( addiw, x3, x21, 0xffffffdf, 0x0000010000000000, -33, x2, 16, x12)

# rs1==x25, rd==x26, rs1_val < 0 and imm_val < 0, imm_val == -65
# opcode: addiw ; op1:x25; dest:x26; op1val:0xfffffffffffffff9;  immval:-65
TEST_IMM_OP( addiw, x26, x25, 0x1ffffffb8, 0xfffffffffffffff9, -65, x2, 24, x12)

# rs1==x10, rd==x30, rs1_val == (-2**(xlen-1)), imm_val == 64, rs1_val == -9223372036854775808
# opcode: addiw ; op1:x10; dest:x30; op1val:0x8000000000000000;  immval:64
TEST_IMM_OP( addiw, x30, x10, 0x40, 0x8000000000000000, 64, x2, 32, x12)

# rs1==x23, rd==x22, rs1_val == 0, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: addiw ; op1:x23; dest:x22; op1val:0x0000000000000000;  immval:2047
TEST_IMM_OP( addiw, x22, x23, 0x7ff, 0x0000000000000000, 2047, x2, 40, x12)

# rs1==x17, rd==x29, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807, imm_val == -9
# opcode: addiw ; op1:x17; dest:x29; op1val:0x7fffffffffffffff;  immval:-9
TEST_IMM_OP( addiw, x29, x17, 0x1fffffff6, 0x7fffffffffffffff, -9, x2, 48, x12)

# rs1==x26, rd==x20, rs1_val == 1, 
# opcode: addiw ; op1:x26; dest:x20; op1val:0x0000000000000001;  immval:-65
TEST_IMM_OP( addiw, x20, x26, 0xffffffc0, 0x0000000000000001, -65, x2, 56, x12)

# rs1==x18, rd==x27, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -2305843009213693953
# opcode: addiw ; op1:x18; dest:x27; op1val:0xdfffffffffffffff;  immval:-2048
TEST_IMM_OP( addiw, x27, x18, 0x1fffff7ff, 0xdfffffffffffffff, -2048, x2, 64, x12)

# rs1==x4, rd==x6, imm_val == 0, rs1_val == 17179869184
# opcode: addiw ; op1:x4; dest:x6; op1val:0x0000000400000000;  immval:0
TEST_IMM_OP( addiw, x6, x4, 0x0, 0x0000000400000000, 0, x2, 72, x12)

# rs1==x24, rd==x16, imm_val == 1, rs1_val == 36028797018963968
# opcode: addiw ; op1:x24; dest:x16; op1val:0x0080000000000000;  immval:1
TEST_IMM_OP( addiw, x16, x24, 0x1, 0x0080000000000000, 1, x2, 80, x12)

# rs1==x5, rd==x13, rs1_val == 2, 
# opcode: addiw ; op1:x5; dest:x13; op1val:0x0000000000000002;  immval:1
TEST_IMM_OP( addiw, x13, x5, 0x3, 0x0000000000000002, 1, x2, 88, x12)

# rs1==x20, rd==x24, rs1_val == 4, 
# opcode: addiw ; op1:x20; dest:x24; op1val:0x0000000000000004;  immval:1023
TEST_IMM_OP( addiw, x24, x20, 0x403, 0x0000000000000004, 1023, x2, 96, x12)

# rs1==x1, rd==x23, rs1_val == 8, 
# opcode: addiw ; op1:x1; dest:x23; op1val:0x0000000000000008;  immval:3
TEST_IMM_OP( addiw, x23, x1, 0xb, 0x0000000000000008, 3, x2, 104, x12)

# rs1==x0, rd==x9, rs1_val == 16, 
# opcode: addiw ; op1:x0; dest:x9; op1val:0x0000000000000010;  immval:7
TEST_IMM_OP( addiw, x9, x0, 0x17, 0x0000000000000010, 7, x2, 112, x12)

# rs1==x11, rd==x7, rs1_val == 32, 
# opcode: addiw ; op1:x11; dest:x7; op1val:0x0000000000000020;  immval:5
TEST_IMM_OP( addiw, x7, x11, 0x25, 0x0000000000000020, 5, x2, 120, x12)

# rs1==x19, rd==x25, rs1_val == 64, imm_val == 1365
# opcode: addiw ; op1:x19; dest:x25; op1val:0x0000000000000040;  immval:1365
TEST_IMM_OP( addiw, x25, x19, 0x595, 0x0000000000000040, 1365, x2, 128, x12)

# rs1==x3, rd==x8, rs1_val == 128, 
# opcode: addiw ; op1:x3; dest:x8; op1val:0x0000000000000080;  immval:5
TEST_IMM_OP( addiw, x8, x3, 0x85, 0x0000000000000080, 5, x2, 136, x12)

# rs1==x22, rd==x19, rs1_val == 256, 
# opcode: addiw ; op1:x22; dest:x19; op1val:0x0000000000000100;  immval:-7
TEST_IMM_OP( addiw, x19, x22, 0x1000000f9, 0x0000000000000100, -7, x2, 144, x12)

# rs1==x15, rd==x21, rs1_val == 512, imm_val == 2
# opcode: addiw ; op1:x15; dest:x21; op1val:0x0000000000000200;  immval:2
TEST_IMM_OP( addiw, x21, x15, 0x202, 0x0000000000000200, 2, x2, 152, x12)

# rs1==x27, rd==x1, rs1_val == 2048, 
# opcode: addiw ; op1:x27; dest:x1; op1val:0x0000000000000800;  immval:-65
TEST_IMM_OP( addiw, x1, x27, 0x1000007bf, 0x0000000000000800, -65, x2, 160, x3)

# rs1==x30, rd==x18, rs1_val == 4096, imm_val == 512
# opcode: addiw ; op1:x30; dest:x18; op1val:0x0000000000001000;  immval:512
TEST_IMM_OP( addiw, x18, x30, 0x1200, 0x0000000000001000, 512, x2, 168, x3)

# rs1==x12, rd==x0, rs1_val == 8192, imm_val == -5
# opcode: addiw ; op1:x12; dest:x0; op1val:0x0000000000002000;  immval:-5
TEST_IMM_OP( addiw, x0, x12, 0x100001ffb, 0x0000000000002000, -5, x2, 176, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x29, rd==x2, rs1_val == 16384, 
# opcode: addiw ; op1:x29; dest:x2; op1val:0x0000000000004000;  immval:8
TEST_IMM_OP( addiw, x2, x29, 0x4008, 0x0000000000004000, 8, x1, 0, x3)

# rs1==x6, rd==x17, rs1_val == 32768, 
# opcode: addiw ; op1:x6; dest:x17; op1val:0x0000000000008000;  immval:-10
TEST_IMM_OP( addiw, x17, x6, 0x100007ff6, 0x0000000000008000, -10, x1, 8, x3)

# rs1==x2, rd==x28, rs1_val == 65536, imm_val == -17
# opcode: addiw ; op1:x2; dest:x28; op1val:0x0000000000010000;  immval:-17
TEST_IMM_OP( addiw, x28, x2, 0x10000ffef, 0x0000000000010000, -17, x1, 16, x3)

# rs1==x13, rd==x5, rs1_val == 131072, 
# opcode: addiw ; op1:x13; dest:x5; op1val:0x0000000000020000;  immval:-10
TEST_IMM_OP( addiw, x5, x13, 0x10001fff6, 0x0000000000020000, -10, x1, 24, x3)

# rs1==x9, rd==x15, rs1_val == 262144, imm_val == 4
# opcode: addiw ; op1:x9; dest:x15; op1val:0x0000000000040000;  immval:4
TEST_IMM_OP( addiw, x15, x9, 0x40004, 0x0000000000040000, 4, x1, 32, x3)

# rs1==x14, rd==x10, rs1_val == 524288, 
# opcode: addiw ; op1:x14; dest:x10; op1val:0x0000000000080000;  immval:1023
TEST_IMM_OP( addiw, x10, x14, 0x803ff, 0x0000000000080000, 1023, x1, 40, x3)

# rs1==x7, rd==x4, rs1_val == 1048576, 
# opcode: addiw ; op1:x7; dest:x4; op1val:0x0000000000100000;  immval:-1
TEST_IMM_OP( addiw, x4, x7, 0x1000fffff, 0x0000000000100000, -1, x1, 48, x3)

# rs1==x28, rd==x14, rs1_val == 2097152, 
# opcode: addiw ; op1:x28; dest:x14; op1val:0x0000000000200000;  immval:2
TEST_IMM_OP( addiw, x14, x28, 0x200002, 0x0000000000200000, 2, x1, 56, x3)

# rs1==x16, rd==x12, rs1_val == 4194304, 
# opcode: addiw ; op1:x16; dest:x12; op1val:0x0000000000400000;  immval:9
TEST_IMM_OP( addiw, x12, x16, 0x400009, 0x0000000000400000, 9, x1, 64, x3)

# rs1_val == 8388608, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1007fffdf, 0x0000000000800000, -33, x1, 72, x3)

# rs1_val == 16777216, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x100ffffdf, 0x0000000001000000, -33, x1, 80, x3)

# rs1_val == 33554432, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x2000200, 0x0000000002000000, 512, x1, 88, x3)

# rs1_val == 67108864, imm_val == -1366
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0x103fffaaa, 0x0000000004000000, -1366, x1, 96, x3)

# rs1_val == 134217728, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x107fff800, 0x0000000008000000, -2048, x1, 104, x3)

# rs1_val == 268435456, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x10fffffff, 0x0000000010000000, -1, x1, 112, x3)

# rs1_val == 536870912, imm_val == 128
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x20000080, 0x0000000020000000, 128, x1, 120, x3)

# rs1_val == 1073741824, imm_val == -129
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x13fffff7f, 0x0000000040000000, -129, x1, 128, x3)

# rs1_val == 2147483648, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x80000001, 0x0000000080000000, 1, x1, 136, x3)

# rs1_val == 4294967296, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0xfffffaaa, 0x0000000100000000, -1366, x1, 144, x3)

# rs1_val == 8589934592, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x8, 0x0000000200000000, 8, x1, 152, x3)

# rs1_val == 34359738368, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x0000000800000000, -2048, x1, 160, x3)

# rs1_val == 68719476736, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0000001000000000, 512, x1, 168, x3)

# rs1_val == 137438953472, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x0000002000000000, -65, x1, 176, x3)

# rs1_val == 274877906944, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0000004000000000, -4, x1, 184, x3)

# rs1_val == 549755813888, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0xffffffef, 0x0000008000000000, -17, x1, 192, x3)

# rs1_val == 2199023255552, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0xffffffef, 0x0000020000000000, -17, x1, 200, x3)

# rs1_val == 4398046511104, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x0, 0x0000040000000000, 0, x1, 208, x3)

# rs1_val == 8796093022208, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0xfffffffa, 0x0000080000000000, -6, x1, 216, x3)

# rs1_val == 17592186044416, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x2, 0x0000100000000000, 2, x1, 224, x3)

# rs1_val == 35184372088832, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x0000200000000000, -2048, x1, 232, x3)

# rs1_val == 70368744177664, imm_val == -2
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0xfffffffe, 0x0000400000000000, -2, x1, 240, x3)

# rs1_val == 140737488355328, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x7ff, 0x0000800000000000, 2047, x1, 248, x3)

# rs1_val == 281474976710656, imm_val == -3
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0001000000000000, -3, x1, 256, x3)

# rs1_val == 562949953421312, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0002000000000000, -4, x1, 264, x3)

# rs1_val == 1125899906842624, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x3, 0x0004000000000000, 3, x1, 272, x3)

# rs1_val == 2251799813685248, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x555, 0x0008000000000000, 1365, x1, 280, x3)

# rs1_val == 4503599627370496, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0xfffffffa, 0x0010000000000000, -6, x1, 288, x3)

# rs1_val == 9007199254740992, imm_val == -513
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x0020000000000000, -513, x1, 296, x3)

# rs1_val == 18014398509481984, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x0040000000000000, -513, x1, 304, x3)

# rs1_val == 72057594037927936, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x0100000000000000, -65, x1, 312, x3)

# rs1_val == 144115188075855872, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x0200000000000000, -65, x1, 320, x3)

# rs1_val == 288230376151711744, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x7, 0x0400000000000000, 7, x1, 328, x3)

# rs1_val == 576460752303423488, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0xfffffff8, 0x0800000000000000, -8, x1, 336, x3)

# rs1_val == 1152921504606846976, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x4, 0x1000000000000000, 4, x1, 344, x3)

# rs1_val == 2305843009213693952, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x2000000000000000, -513, x1, 352, x3)

# rs1_val == 4611686018427387904, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x5, 0x4000000000000000, 5, x1, 360, x3)

# rs1_val == -2, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xfffffffffffffffe, 7, x1, 368, x3)

# rs1_val == -3, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff8, 0xfffffffffffffffd, -5, x1, 376, x3)

# rs1_val == -5, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff2, 0xfffffffffffffffb, -9, x1, 384, x3)

# rs1_val == -9, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffa, 0xfffffffffffffff7, 3, x1, 392, x3)

# rs1_val == -17, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xffffffffffffffef, -17, x1, 400, x3)

# rs1_val == -2251799813685249, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbff, 0xfff7ffffffffffff, -1024, x1, 408, x3)

# rs1_val == -4503599627370497, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xffefffffffffffff, 1, x1, 416, x3)

# rs1_val == -9007199254740993, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x1000007fe, 0xffdfffffffffffff, 2047, x1, 424, x3)

# rs1_val == -18014398509481985, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xffbfffffffffffff, 6, x1, 432, x3)

# rs1_val == -36028797018963969, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x1000003ff, 0xff7fffffffffffff, 1024, x1, 440, x3)

# rs1_val == -72057594037927937, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff7, 0xfeffffffffffffff, -8, x1, 448, x3)

# rs1_val == -144115188075855873, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfdffffffffffffff, -17, x1, 456, x3)

# rs1_val == -288230376151711745, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbff, 0xfbffffffffffffff, -1024, x1, 464, x3)

# rs1_val == -576460752303423489, imm_val == 32
# opcode: addiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x10000001f, 0xf7ffffffffffffff, 32, x1, 472, x3)

# rs1_val == -1152921504606846977, imm_val == -257
# opcode: addiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffefe, 0xefffffffffffffff, -257, x1, 480, x3)

# rs1_val == -4611686018427387905, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x10000007f, 0xbfffffffffffffff, 128, x1, 488, x3)

# rs1_val == 6148914691236517205, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x155554d55, 0x5555555555555555, -2048, x1, 496, x3)

# rs1_val == -6148914691236517206, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0x1aaaaa554, 0xaaaaaaaaaaaaaaaa, -1366, x1, 504, x3)

# imm_val == 16, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x4000010, 0x0000000004000000, 16, x1, 512, x3)

# imm_val == 256, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000006;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x106, 0x0000000000000006, 256, x1, 520, x3)

# imm_val == -1025, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0xfffffc02, 0x0000000000000003, -1025, x1, 528, x3)

# rs1_val == -33, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x10000001f, 0xffffffffffffffdf, 64, x1, 536, x3)

# rs1_val == -65, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0xffffffc7, 0xffffffffffffffbf, 8, x1, 544, x3)

# rs1_val == -129, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0xffffff8f, 0xffffffffffffff7f, 16, x1, 552, x3)

# rs1_val == -257, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x1fffffef8, 0xfffffffffffffeff, -7, x1, 560, x3)

# rs1_val == -513, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x1000001fe, 0xfffffffffffffdff, 1023, x1, 568, x3)

# rs1_val == -1025, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1fffffb7e, 0xfffffffffffffbff, -129, x1, 576, x3)

# rs1_val == -2049, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffff3fe, 0xfffffffffffff7ff, -1025, x1, 584, x3)

# rs1_val == -4097, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xfffff3fe, 0xffffffffffffefff, 1023, x1, 592, x3)

# rs1_val == -8193, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xffffe001, 0xffffffffffffdfff, 2, x1, 600, x3)

# rs1_val == -16385, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0xffffc07f, 0xffffffffffffbfff, 128, x1, 608, x3)

# rs1_val == -32769, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0xffff801f, 0xffffffffffff7fff, 32, x1, 616, x3)

# rs1_val == -65537, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0xffff0554, 0xfffffffffffeffff, 1365, x1, 624, x3)

# rs1_val == -131073, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffdfff7, 0xfffffffffffdffff, -8, x1, 632, x3)

# rs1_val == -262145, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1fffbffee, 0xfffffffffffbffff, -17, x1, 640, x3)

# rs1_val == -524289, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xfff80004, 0xfffffffffff7ffff, 5, x1, 648, x3)

# rs1_val == -1048577, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0xfff0001f, 0xffffffffffefffff, 32, x1, 656, x3)

# rs1_val == -2097153, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xffe00004, 0xffffffffffdfffff, 5, x1, 664, x3)

# rs1_val == -4194305, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0xffc00007, 0xffffffffffbfffff, 8, x1, 672, x3)

# rs1_val == -8388609, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ff7fffbe, 0xffffffffff7fffff, -65, x1, 680, x3)

# rs1_val == -16777217, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0xff00000f, 0xfffffffffeffffff, 16, x1, 688, x3)

# rs1_val == -33554433, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0xfe00003f, 0xfffffffffdffffff, 64, x1, 696, x3)

# rs1_val == -67108865, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0xfc000007, 0xfffffffffbffffff, 8, x1, 704, x3)

# rs1_val == -268435457, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xefffffff, 0xffffffffefffffff, 0, x1, 712, x3)

# rs1_val == -536870913, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1dffffbff, 0xffffffffdfffffff, -1024, x1, 720, x3)

# rs1_val == -1073741825, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0xc0000003, 0xffffffffbfffffff, 4, x1, 728, x3)

# rs1_val == -2147483649, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x17ffffdfe, 0xffffffff7fffffff, -513, x1, 736, x3)

# rs1_val == -4294967297, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff9, 0xfffffffeffffffff, -6, x1, 744, x3)

# rs1_val == -8589934593, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffefe, 0xfffffffdffffffff, -257, x1, 752, x3)

# rs1_val == -17179869185, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffefe, 0xfffffffbffffffff, -257, x1, 760, x3)

# rs1_val == -34359738369, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xfffffff7ffffffff, -1025, x1, 768, x3)

# rs1_val == -68719476737, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff8, 0xffffffefffffffff, -7, x1, 776, x3)

# rs1_val == -137438953473, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xffffffdfffffffff, -17, x1, 784, x3)

# rs1_val == -274877906945, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xffffffbfffffffff, 16, x1, 792, x3)

# rs1_val == -549755813889, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xffffff7fffffffff, -1025, x1, 800, x3)

# rs1_val == -1099511627777, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffa, 0xfffffeffffffffff, -5, x1, 808, x3)

# rs1_val == -2199023255553, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x100000003, 0xfffffdffffffffff, 4, x1, 816, x3)

# rs1_val == -4398046511105, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffd, 0xfffffbffffffffff, -2, x1, 824, x3)

# rs1_val == -8796093022209, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfffff7ffffffffff, -17, x1, 832, x3)

# rs1_val == -17592186044417, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x1000001ff, 0xffffefffffffffff, 512, x1, 840, x3)

# rs1_val == -35184372088833, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x100000002, 0xffffdfffffffffff, 3, x1, 848, x3)

# rs1_val == -70368744177665, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff9, 0xffffbfffffffffff, -6, x1, 856, x3)

# rs1_val == -140737488355329, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xffff7fffffffffff, -17, x1, 864, x3)

# rs1_val == -281474976710657, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xfffeffffffffffff, -33, x1, 872, x3)

# rs1_val == -562949953421313, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x1000001ff, 0xfffdffffffffffff, 512, x1, 880, x3)

# rs1_val == -1125899906842625, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff9, 0xfffbffffffffffff, -6, x1, 888, x3)

# rs1_val == 16, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000010;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x17, 0x0000000000000010, 7, x1, 896, x3)

# rs1_val == 8192, imm_val == -5
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x100001ffb, 0x0000000000002000, -5, x1, 904, x3)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


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
