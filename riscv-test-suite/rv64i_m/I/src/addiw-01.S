
#This assembly file tests the addiw instruction of the RISC-V I extension for the addiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addiw)

RVTEST_SIGBASE( x19,signature_x19_1)

# rs1 != rd, rs1==x16, rd==x9, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: addiw ; op1:x16; dest:x9; op1val:0xffffffffffffffff;  immval:-1
TEST_IMM_OP( addiw, x9, x16, 0x1fffffffe, 0xffffffffffffffff, -1, x19, 0, x23)

# rs1 == rd, rs1==x25, rd==x25, rs1_val != imm_val, imm_val == -513
# opcode: addiw ; op1:x25; dest:x25; op1val:0xfffffffffffffff6;  immval:-513
TEST_IMM_OP( addiw, x25, x25, 0x1fffffdf5, 0xfffffffffffffff6, -513, x19, 8, x23)

# rs1==x13, rd==x27, rs1_val > 0 and imm_val > 0, rs1_val == 8, imm_val == 32
# opcode: addiw ; op1:x13; dest:x27; op1val:0x0000000000000008;  immval:32
TEST_IMM_OP( addiw, x27, x13, 0x28, 0x0000000000000008, 32, x19, 16, x23)

# rs1==x1, rd==x31, rs1_val > 0 and imm_val < 0, rs1_val == 536870912, imm_val == -2
# opcode: addiw ; op1:x1; dest:x31; op1val:0x0000000020000000;  immval:-2
TEST_IMM_OP( addiw, x31, x1, 0x11ffffffe, 0x0000000020000000, -2, x19, 24, x23)

# rs1==x8, rd==x21, rs1_val < 0 and imm_val > 0, imm_val == 128
# opcode: addiw ; op1:x8; dest:x21; op1val:0xfffffffffffffff6;  immval:128
TEST_IMM_OP( addiw, x21, x8, 0x100000076, 0xfffffffffffffff6, 128, x19, 32, x23)

# rs1==x26, rd==x24, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: addiw ; op1:x26; dest:x24; op1val:0x8000000000000000;  immval:-8
TEST_IMM_OP( addiw, x24, x26, 0xfffffff8, 0x8000000000000000, -8, x19, 40, x23)

# rs1==x31, rd==x17, rs1_val == 0, imm_val == -17
# opcode: addiw ; op1:x31; dest:x17; op1val:0x0000000000000000;  immval:-17
TEST_IMM_OP( addiw, x17, x31, 0xffffffef, 0x0000000000000000, -17, x19, 48, x23)

# rs1==x2, rd==x30, rs1_val == (2**(xlen-1)-1), imm_val == -129, rs1_val == 9223372036854775807
# opcode: addiw ; op1:x2; dest:x30; op1val:0x7fffffffffffffff;  immval:-129
TEST_IMM_OP( addiw, x30, x2, 0x1ffffff7e, 0x7fffffffffffffff, -129, x19, 56, x23)

# rs1==x21, rd==x15, rs1_val == 1, imm_val == -33
# opcode: addiw ; op1:x21; dest:x15; op1val:0x0000000000000001;  immval:-33
TEST_IMM_OP( addiw, x15, x21, 0xffffffe0, 0x0000000000000001, -33, x19, 64, x23)

# rs1==x20, rd==x13, imm_val == (-2**(12-1)), imm_val == -2048
# opcode: addiw ; op1:x20; dest:x13; op1val:0x0000000000000009;  immval:-2048
TEST_IMM_OP( addiw, x13, x20, 0xfffff809, 0x0000000000000009, -2048, x19, 72, x23)

# rs1==x9, rd==x3, imm_val == 0, rs1_val == 256
# opcode: addiw ; op1:x9; dest:x3; op1val:0x0000000000000100;  immval:0
TEST_IMM_OP( addiw, x3, x9, 0x100, 0x0000000000000100, 0, x19, 80, x23)

# rs1==x22, rd==x10, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: addiw ; op1:x22; dest:x10; op1val:0x0000000000000001;  immval:2047
TEST_IMM_OP( addiw, x10, x22, 0x800, 0x0000000000000001, 2047, x19, 88, x23)

# rs1==x14, rd==x5, imm_val == 1, rs1_val == -268435457
# opcode: addiw ; op1:x14; dest:x5; op1val:0xffffffffefffffff;  immval:1
TEST_IMM_OP( addiw, x5, x14, 0xf0000000, 0xffffffffefffffff, 1, x19, 96, x23)

# rs1==x18, rd==x2, rs1_val == 2, imm_val == -65
# opcode: addiw ; op1:x18; dest:x2; op1val:0x0000000000000002;  immval:-65
TEST_IMM_OP( addiw, x2, x18, 0xffffffc1, 0x0000000000000002, -65, x19, 104, x23)

# rs1==x24, rd==x26, rs1_val == 4, 
# opcode: addiw ; op1:x24; dest:x26; op1val:0x0000000000000004;  immval:-1
TEST_IMM_OP( addiw, x26, x24, 0x100000003, 0x0000000000000004, -1, x19, 112, x23)

# rs1==x4, rd==x11, rs1_val == 16, 
# opcode: addiw ; op1:x4; dest:x11; op1val:0x0000000000000010;  immval:-1024
TEST_IMM_OP( addiw, x11, x4, 0xfffffc10, 0x0000000000000010, -1024, x19, 120, x23)

# rs1==x12, rd==x0, rs1_val == 32, 
# opcode: addiw ; op1:x12; dest:x0; op1val:0x0000000000000020;  immval:2047
TEST_IMM_OP( addiw, x0, x12, 0x81f, 0x0000000000000020, 2047, x19, 128, x23)

# rs1==x7, rd==x20, rs1_val == 64, 
# opcode: addiw ; op1:x7; dest:x20; op1val:0x0000000000000040;  immval:-2048
TEST_IMM_OP( addiw, x20, x7, 0xfffff840, 0x0000000000000040, -2048, x19, 136, x23)

# rs1==x6, rd==x1, rs1_val == 128, 
# opcode: addiw ; op1:x6; dest:x1; op1val:0x0000000000000080;  immval:-513
TEST_IMM_OP( addiw, x1, x6, 0xfffffe7f, 0x0000000000000080, -513, x19, 144, x23)

# rs1==x3, rd==x4, rs1_val == 512, imm_val == 8
# opcode: addiw ; op1:x3; dest:x4; op1val:0x0000000000000200;  immval:8
TEST_IMM_OP( addiw, x4, x3, 0x208, 0x0000000000000200, 8, x19, 152, x2)

# rs1==x5, rd==x14, rs1_val == 1024, 
# opcode: addiw ; op1:x5; dest:x14; op1val:0x0000000000000400;  immval:-6
TEST_IMM_OP( addiw, x14, x5, 0x1000003fa, 0x0000000000000400, -6, x19, 160, x2)

# rs1==x23, rd==x22, rs1_val == 2048, 
# opcode: addiw ; op1:x23; dest:x22; op1val:0x0000000000000800;  immval:9
TEST_IMM_OP( addiw, x22, x23, 0x809, 0x0000000000000800, 9, x19, 168, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x28, rd==x16, rs1_val == 4096, imm_val == 64
# opcode: addiw ; op1:x28; dest:x16; op1val:0x0000000000001000;  immval:64
TEST_IMM_OP( addiw, x16, x28, 0x1040, 0x0000000000001000, 64, x1, 0, x2)

# rs1==x29, rd==x6, rs1_val == 8192, 
# opcode: addiw ; op1:x29; dest:x6; op1val:0x0000000000002000;  immval:-65
TEST_IMM_OP( addiw, x6, x29, 0x100001fbf, 0x0000000000002000, -65, x1, 8, x2)

# rs1==x19, rd==x8, rs1_val == 16384, 
# opcode: addiw ; op1:x19; dest:x8; op1val:0x0000000000004000;  immval:2047
TEST_IMM_OP( addiw, x8, x19, 0x47ff, 0x0000000000004000, 2047, x1, 16, x2)

# rs1==x0, rd==x19, rs1_val == 32768, 
# opcode: addiw ; op1:x0; dest:x19; op1val:0x0000000000008000;  immval:8
TEST_IMM_OP( addiw, x19, x0, 0x8008, 0x0000000000008000, 8, x1, 24, x2)

# rs1==x27, rd==x12, rs1_val == 65536, 
# opcode: addiw ; op1:x27; dest:x12; op1val:0x0000000000010000;  immval:-65
TEST_IMM_OP( addiw, x12, x27, 0x10000ffbf, 0x0000000000010000, -65, x1, 32, x2)

# rs1==x10, rd==x29, rs1_val == 131072, imm_val == -9
# opcode: addiw ; op1:x10; dest:x29; op1val:0x0000000000020000;  immval:-9
TEST_IMM_OP( addiw, x29, x10, 0x10001fff7, 0x0000000000020000, -9, x1, 40, x2)

# rs1==x30, rd==x28, rs1_val == 262144, 
# opcode: addiw ; op1:x30; dest:x28; op1val:0x0000000000040000;  immval:1023
TEST_IMM_OP( addiw, x28, x30, 0x403ff, 0x0000000000040000, 1023, x1, 48, x2)

# rs1==x17, rd==x18, rs1_val == 524288, 
# opcode: addiw ; op1:x17; dest:x18; op1val:0x0000000000080000;  immval:-10
TEST_IMM_OP( addiw, x18, x17, 0x10007fff6, 0x0000000000080000, -10, x1, 56, x2)

# rs1==x15, rd==x23, rs1_val == 1048576, 
# opcode: addiw ; op1:x15; dest:x23; op1val:0x0000000000100000;  immval:3
TEST_IMM_OP( addiw, x23, x15, 0x100003, 0x0000000000100000, 3, x1, 64, x2)

# rs1==x11, rd==x7, rs1_val == 2097152, imm_val == 1365
# opcode: addiw ; op1:x11; dest:x7; op1val:0x0000000000200000;  immval:1365
TEST_IMM_OP( addiw, x7, x11, 0x200555, 0x0000000000200000, 1365, x1, 72, x2)

# rs1_val == 4194304, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1003ffffa, 0x0000000000400000, -6, x1, 80, x2)

# rs1_val == 8388608, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1007ffff6, 0x0000000000800000, -10, x1, 88, x2)

# rs1_val == 16777216, imm_val == -257
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x100fffeff, 0x0000000001000000, -257, x1, 96, x2)

# rs1_val == 33554432, imm_val == 2
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x2000002, 0x0000000002000000, 2, x1, 104, x2)

# rs1_val == 67108864, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x103fffff6, 0x0000000004000000, -10, x1, 112, x2)

# rs1_val == 134217728, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x107ffffff, 0x0000000008000000, -1, x1, 120, x2)

# rs1_val == 268435456, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x10000007, 0x0000000010000000, 7, x1, 128, x2)

# rs1_val == 1073741824, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x40000008, 0x0000000040000000, 8, x1, 136, x2)

# rs1_val == 2147483648, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x80000008, 0x0000000080000000, 8, x1, 144, x2)

# rs1_val == 4294967296, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0xffffffdf, 0x0000000100000000, -33, x1, 152, x2)

# rs1_val == 8589934592, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0xfffffc00, 0x0000000200000000, -1024, x1, 160, x2)

# rs1_val == 17179869184, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x0000000400000000, -10, x1, 168, x2)

# rs1_val == 34359738368, imm_val == 16
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10, 0x0000000800000000, 16, x1, 176, x2)

# rs1_val == 68719476736, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x1, 0x0000001000000000, 1, x1, 184, x2)

# rs1_val == 137438953472, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x20, 0x0000002000000000, 32, x1, 192, x2)

# rs1_val == 274877906944, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x555, 0x0000004000000000, 1365, x1, 200, x2)

# rs1_val == 549755813888, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x1, 0x0000008000000000, 1, x1, 208, x2)

# rs1_val == 1099511627776, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x0, 0x0000010000000000, 0, x1, 216, x2)

# rs1_val == 2199023255552, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x1, 0x0000020000000000, 1, x1, 224, x2)

# rs1_val == 4398046511104, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0xfffffc00, 0x0000040000000000, -1024, x1, 232, x2)

# rs1_val == 8796093022208, imm_val == -1366
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0xfffffaaa, 0x0000080000000000, -1366, x1, 240, x2)

# rs1_val == 17592186044416, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0xfffffffa, 0x0000100000000000, -6, x1, 248, x2)

# rs1_val == 35184372088832, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x5, 0x0000200000000000, 5, x1, 256, x2)

# rs1_val == 70368744177664, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x0, 0x0000400000000000, 0, x1, 264, x2)

# rs1_val == 140737488355328, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0xfffffff8, 0x0000800000000000, -8, x1, 272, x2)

# rs1_val == 281474976710656, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0xfffffc00, 0x0001000000000000, -1024, x1, 280, x2)

# rs1_val == 562949953421312, imm_val == 1024
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0002000000000000, 1024, x1, 288, x2)

# rs1_val == 1125899906842624, imm_val == 256
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x100, 0x0004000000000000, 256, x1, 296, x2)

# rs1_val == 2251799813685248, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x0008000000000000, -10, x1, 304, x2)

# rs1_val == 4503599627370496, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0xffffffdf, 0x0010000000000000, -33, x1, 312, x2)

# rs1_val == 9007199254740992, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10, 0x0020000000000000, 16, x1, 320, x2)

# rs1_val == 18014398509481984, imm_val == -3
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0040000000000000, -3, x1, 328, x2)

# rs1_val == 36028797018963968, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0xffffff7f, 0x0080000000000000, -129, x1, 336, x2)

# rs1_val == 72057594037927936, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0xfffffeff, 0x0100000000000000, -257, x1, 344, x2)

# rs1_val == 144115188075855872, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x9, 0x0200000000000000, 9, x1, 352, x2)

# rs1_val == 288230376151711744, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x555, 0x0400000000000000, 1365, x1, 360, x2)

# rs1_val == 576460752303423488, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0xfffffdff, 0x0800000000000000, -513, x1, 368, x2)

# rs1_val == 1152921504606846976, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x1000000000000000, -2048, x1, 376, x2)

# rs1_val == 2305843009213693952, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0xffffff7f, 0x2000000000000000, -129, x1, 384, x2)

# rs1_val == 4611686018427387904, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0xfffffff7, 0x4000000000000000, -9, x1, 392, x2)

# rs1_val == -2, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x10000007e, 0xfffffffffffffffe, 128, x1, 400, x2)

# rs1_val == -3, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff5, 0xfffffffffffffffd, -8, x1, 408, x2)

# rs1_val == -5, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000550, 0xfffffffffffffffb, 1365, x1, 416, x2)

# rs1_val == -9, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x100000017, 0xfffffffffffffff7, 32, x1, 424, x2)

# rs1_val == -17, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xffffffffffffffef, -17, x1, 432, x2)

# rs1_val == -2251799813685249, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x100000001, 0xfff7ffffffffffff, 2, x1, 440, x2)

# rs1_val == -4503599627370497, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xffefffffffffffff, 7, x1, 448, x2)

# rs1_val == -9007199254740993, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x100000004, 0xffdfffffffffffff, 5, x1, 456, x2)

# rs1_val == -18014398509481985, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x10000003f, 0xffbfffffffffffff, 64, x1, 464, x2)

# rs1_val == -36028797018963969, imm_val == -1025
# opcode: addiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xff7fffffffffffff, -1025, x1, 472, x2)

# rs1_val == -72057594037927937, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfeffffffffffffff, -17, x1, 480, x2)

# rs1_val == -144115188075855873, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xfdffffffffffffff, 0, x1, 488, x2)

# rs1_val == -288230376151711745, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfbffffffffffffff, -17, x1, 496, x2)

# rs1_val == -576460752303423489, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x100000008, 0xf7ffffffffffffff, 9, x1, 504, x2)

# rs1_val == -1152921504606846977, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffd, 0xefffffffffffffff, -2, x1, 512, x2)

# rs1_val == -2305843009213693953, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x1000000ff, 0xdfffffffffffffff, 256, x1, 520, x2)

# rs1_val == -4611686018427387905, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xbfffffffffffffff, -513, x1, 528, x2)

# rs1_val == 6148914691236517205, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1555554d4, 0x5555555555555555, -129, x1, 536, x2)

# rs1_val == -6148914691236517206, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1aaaaaa89, 0xaaaaaaaaaaaaaaaa, -33, x1, 544, x2)

# imm_val == 4, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x4, 0x0000000200000000, 4, x1, 552, x2)

# imm_val == 512, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff6;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x1000001f6, 0xfffffffffffffff6, 512, x1, 560, x2)

# imm_val == -5, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0xfffffffb, 0x8000000000000000, -5, x1, 568, x2)

# rs1_val == -33, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000534, 0xffffffffffffffdf, 1365, x1, 576, x2)

# rs1_val == -65, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7bf, 0xffffffffffffffbf, -2048, x1, 584, x2)

# rs1_val == -129, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0xffffff86, 0xffffffffffffff7f, 7, x1, 592, x2)

# rs1_val == -257, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1fffffefd, 0xfffffffffffffeff, -2, x1, 600, x2)

# rs1_val == -513, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0xfffffe0f, 0xfffffffffffffdff, 16, x1, 608, x2)

# rs1_val == -1025, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0xfffffc07, 0xfffffffffffffbff, 8, x1, 616, x2)

# rs1_val == -2049, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7be, 0xfffffffffffff7ff, -65, x1, 624, x2)

# rs1_val == -4097, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0xfffff03f, 0xffffffffffffefff, 64, x1, 632, x2)

# rs1_val == -8193, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xffffe001, 0xffffffffffffdfff, 2, x1, 640, x2)

# rs1_val == -16385, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0xffffc003, 0xffffffffffffbfff, 4, x1, 648, x2)

# rs1_val == -32769, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1ffff7ffa, 0xffffffffffff7fff, -5, x1, 656, x2)

# rs1_val == -65537, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffefffe, 0xfffffffffffeffff, -1, x1, 664, x2)

# rs1_val == -131073, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xfffe03fe, 0xfffffffffffdffff, 1023, x1, 672, x2)

# rs1_val == -262145, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0xfffc01ff, 0xfffffffffffbffff, 512, x1, 680, x2)

# rs1_val == -524289, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0xfff8001f, 0xfffffffffff7ffff, 32, x1, 688, x2)

# rs1_val == -1048577, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0xfff000ff, 0xffffffffffefffff, 256, x1, 696, x2)

# rs1_val == -2097153, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xffe00001, 0xffffffffffdfffff, 2, x1, 704, x2)

# rs1_val == -4194305, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0xffc00006, 0xffffffffffbfffff, 7, x1, 712, x2)

# rs1_val == -8388609, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ff7fffee, 0xffffffffff7fffff, -17, x1, 720, x2)

# rs1_val == -16777217, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fefffff7, 0xfffffffffeffffff, -8, x1, 728, x2)

# rs1_val == -33554433, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fdfffdfe, 0xfffffffffdffffff, -513, x1, 736, x2)

# rs1_val == -67108865, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fbfffffc, 0xfffffffffbffffff, -3, x1, 744, x2)

# rs1_val == -134217729, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0xf80007fe, 0xfffffffff7ffffff, 2047, x1, 752, x2)

# rs1_val == -536870913, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0xe000003f, 0xffffffffdfffffff, 64, x1, 760, x2)

# rs1_val == -1073741825, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0xc000007f, 0xffffffffbfffffff, 128, x1, 768, x2)

# rs1_val == -2147483649, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x8000000f, 0xffffffff7fffffff, 16, x1, 776, x2)

# rs1_val == -4294967297, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xfffffffeffffffff, -513, x1, 784, x2)

# rs1_val == -8589934593, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xfffffffdffffffff, -513, x1, 792, x2)

# rs1_val == -17179869185, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xfffffffbffffffff, -3, x1, 800, x2)

# rs1_val == -34359738369, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xfffffff7ffffffff, 7, x1, 808, x2)

# rs1_val == -68719476737, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x100000003, 0xffffffefffffffff, 4, x1, 816, x2)

# rs1_val == -137438953473, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0x1fffffaa9, 0xffffffdfffffffff, -1366, x1, 824, x2)

# rs1_val == -274877906945, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000554, 0xffffffbfffffffff, 1365, x1, 832, x2)

# rs1_val == -549755813889, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xffffff7fffffffff, 7, x1, 840, x2)

# rs1_val == -1099511627777, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff7e, 0xfffffeffffffffff, -129, x1, 848, x2)

# rs1_val == -2199023255553, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xfffffdffffffffff, 7, x1, 856, x2)

# rs1_val == -4398046511105, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x1000003fe, 0xfffffbffffffffff, 1023, x1, 864, x2)

# rs1_val == -8796093022209, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff7e, 0xfffff7ffffffffff, -129, x1, 872, x2)

# rs1_val == -17592186044417, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffd, 0xffffefffffffffff, -2, x1, 880, x2)

# rs1_val == -35184372088833, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xffffdfffffffffff, 1, x1, 888, x2)

# rs1_val == -70368744177665, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xffffbfffffffffff, 7, x1, 896, x2)

# rs1_val == -140737488355329, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xffff7fffffffffff, 0, x1, 904, x2)

# rs1_val == -281474976710657, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x100000007, 0xfffeffffffffffff, 8, x1, 912, x2)

# rs1_val == -562949953421313, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x100000008, 0xfffdffffffffffff, 9, x1, 920, x2)

# rs1_val == -1125899906842625, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff7, 0xfffbffffffffffff, -8, x1, 928, x2)

# rs1_val != imm_val, imm_val == -513
# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff6;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdf5, 0xfffffffffffffff6, -513, x1, 936, x2)

# rs1_val == 32, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x81f, 0x0000000000000020, 2047, x1, 944, x2)

# rs1_val == 32768, 
# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x8008, 0x0000000000008000, 8, x1, 952, x2)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 120*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
