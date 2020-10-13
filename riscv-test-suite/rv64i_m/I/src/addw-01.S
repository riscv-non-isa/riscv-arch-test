
#This assembly file tests the addw instruction of the RISC-V I extension for the addw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addw)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 == rs2 == rd, rs1==x18, rs2==x18, rd==x18, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: addw ; op1:x18; op2:x18; dest:x18; op1val:0x8000000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x18, x18, x18, 0xfffffffc, 0x8000000000000000, 0xfffffffffffffffc, x12, 0, x15)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x2, rs2==x31, rd==x23, rs1_val == 0, rs2_val == 144115188075855872
# opcode: addw ; op1:x2; op2:x31; dest:x23; op1val:0x0000000000000000;  op2val:0x0200000000000000
TEST_RR_OP(addw, x23, x2, x31, 0x0, 0x0000000000000000, 0x0200000000000000, x12, 8, x15)

# rs1 == rs2 != rd, rs1==x10, rs2==x10, rd==x3, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -32769
# opcode: addw ; op1:x10; op2:x10; dest:x3; op1val:0x7fffffffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x3, x10, x10, 0x1ffff7ffe, 0x7fffffffffffffff, 0xffffffffffff7fff, x12, 16, x15)

# rs2 == rd != rs1, rs1==x19, rs2==x4, rd==x4, rs1_val == 1, 
# opcode: addw ; op1:x19; op2:x4; dest:x4; op1val:0x0000000000000001;  op2val:0xfffffffffffffffa
TEST_RR_OP(addw, x4, x19, x4, 0xfffffffb, 0x0000000000000001, 0xfffffffffffffffa, x12, 24, x15)

# rs1 == rd != rs2, rs1==x6, rs2==x16, rd==x6, rs2_val == (-2**(xlen-1)), rs1_val == -16385, rs2_val == -9223372036854775808
# opcode: addw ; op1:x6; op2:x16; dest:x6; op1val:0xffffffffffffbfff;  op2val:0x8000000000000000
TEST_RR_OP(addw, x6, x6, x16, 0xffffbfff, 0xffffffffffffbfff, 0x8000000000000000, x12, 32, x15)

# rs1==x21, rs2==x17, rd==x8, rs2_val == 0, rs1_val == -274877906945
# opcode: addw ; op1:x21; op2:x17; dest:x8; op1val:0xffffffbfffffffff;  op2val:0x0000000000000000
TEST_RR_OP(addw, x8, x21, x17, 0xffffffff, 0xffffffbfffffffff, 0x0000000000000000, x12, 40, x15)

# rs1==x31, rs2==x23, rd==x10, rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 9223372036854775807
# opcode: addw ; op1:x31; op2:x23; dest:x10; op1val:0x0000000000000009;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x10, x31, x23, 0x100000008, 0x0000000000000009, 0x7fffffffffffffff, x12, 48, x15)

# rs1==x8, rs2==x27, rd==x0, rs2_val == 1, rs1_val == -1073741825, rs1_val < 0 and rs2_val > 0
# opcode: addw ; op1:x8; op2:x27; dest:x0; op1val:0xffffffffbfffffff;  op2val:0x0000000000000001
TEST_RR_OP(addw, x0, x8, x27, 0xc0000000, 0xffffffffbfffffff, 0x0000000000000001, x12, 56, x15)

# rs1==x11, rs2==x21, rd==x27, rs1_val == rs2_val, rs2_val == -67108865, rs1_val == -67108865
# opcode: addw ; op1:x11; op2:x21; dest:x27; op1val:0xfffffffffbffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(addw, x27, x11, x21, 0x1f7fffffe, 0xfffffffffbffffff, 0xfffffffffbffffff, x12, 64, x15)

# rs1==x14, rs2==x11, rd==x2, rs1_val == 2, rs2_val == 131072
# opcode: addw ; op1:x14; op2:x11; dest:x2; op1val:0x0000000000000002;  op2val:0x0000000000020000
TEST_RR_OP(addw, x2, x14, x11, 0x20002, 0x0000000000000002, 0x0000000000020000, x12, 72, x15)

# rs1==x3, rs2==x19, rd==x24, rs1_val == 4, rs2_val == -134217729
# opcode: addw ; op1:x3; op2:x19; dest:x24; op1val:0x0000000000000004;  op2val:0xfffffffff7ffffff
TEST_RR_OP(addw, x24, x3, x19, 0xf8000003, 0x0000000000000004, 0xfffffffff7ffffff, x12, 80, x15)

# rs1==x9, rs2==x7, rd==x30, rs1_val == 8, rs2_val == -274877906945
# opcode: addw ; op1:x9; op2:x7; dest:x30; op1val:0x0000000000000008;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x30, x9, x7, 0x100000007, 0x0000000000000008, 0xffffffbfffffffff, x12, 88, x15)

# rs1==x20, rs2==x5, rd==x14, rs1_val == 16, rs2_val == -72057594037927937
# opcode: addw ; op1:x20; op2:x5; dest:x14; op1val:0x0000000000000010;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x14, x20, x5, 0x10000000f, 0x0000000000000010, 0xfeffffffffffffff, x12, 96, x15)

# rs1==x23, rs2==x26, rd==x13, rs1_val == 32, rs2_val == 4194304
# opcode: addw ; op1:x23; op2:x26; dest:x13; op1val:0x0000000000000020;  op2val:0x0000000000400000
TEST_RR_OP(addw, x13, x23, x26, 0x400020, 0x0000000000000020, 0x0000000000400000, x12, 104, x15)

# rs1==x22, rs2==x29, rd==x1, rs1_val == 64, rs2_val == 549755813888
# opcode: addw ; op1:x22; op2:x29; dest:x1; op1val:0x0000000000000040;  op2val:0x0000008000000000
TEST_RR_OP(addw, x1, x22, x29, 0x40, 0x0000000000000040, 0x0000008000000000, x12, 112, x15)

# rs1==x17, rs2==x1, rd==x29, rs1_val == 128, rs2_val == 2199023255552
# opcode: addw ; op1:x17; op2:x1; dest:x29; op1val:0x0000000000000080;  op2val:0x0000020000000000
TEST_RR_OP(addw, x29, x17, x1, 0x80, 0x0000000000000080, 0x0000020000000000, x12, 120, x18)

# rs1==x15, rs2==x28, rd==x9, rs1_val == 256, rs2_val == -16385
# opcode: addw ; op1:x15; op2:x28; dest:x9; op1val:0x0000000000000100;  op2val:0xffffffffffffbfff
TEST_RR_OP(addw, x9, x15, x28, 0xffffc0ff, 0x0000000000000100, 0xffffffffffffbfff, x12, 128, x18)
RVTEST_SIGBASE( x10,signature_x10_0)

# rs1==x24, rs2==x3, rd==x20, rs1_val == 512, rs2_val == 32
# opcode: addw ; op1:x24; op2:x3; dest:x20; op1val:0x0000000000000200;  op2val:0x0000000000000020
TEST_RR_OP(addw, x20, x24, x3, 0x220, 0x0000000000000200, 0x0000000000000020, x10, 0, x18)

# rs1==x5, rs2==x15, rd==x22, rs1_val == 1024, rs2_val == 68719476736
# opcode: addw ; op1:x5; op2:x15; dest:x22; op1val:0x0000000000000400;  op2val:0x0000001000000000
TEST_RR_OP(addw, x22, x5, x15, 0x400, 0x0000000000000400, 0x0000001000000000, x10, 8, x18)

# rs1==x26, rs2==x14, rd==x31, rs1_val == 2048, rs2_val == -17592186044417
# opcode: addw ; op1:x26; op2:x14; dest:x31; op1val:0x0000000000000800;  op2val:0xffffefffffffffff
TEST_RR_OP(addw, x31, x26, x14, 0x1000007ff, 0x0000000000000800, 0xffffefffffffffff, x10, 16, x18)

# rs1==x29, rs2==x24, rd==x11, rs1_val == 4096, rs2_val == 1152921504606846976
# opcode: addw ; op1:x29; op2:x24; dest:x11; op1val:0x0000000000001000;  op2val:0x1000000000000000
TEST_RR_OP(addw, x11, x29, x24, 0x1000, 0x0000000000001000, 0x1000000000000000, x10, 24, x18)

# rs1==x28, rs2==x25, rd==x16, rs1_val == 8192, rs2_val == 6148914691236517205
# opcode: addw ; op1:x28; op2:x25; dest:x16; op1val:0x0000000000002000;  op2val:0x5555555555555555
TEST_RR_OP(addw, x16, x28, x25, 0x55557555, 0x0000000000002000, 0x5555555555555555, x10, 32, x18)

# rs1==x25, rs2==x22, rd==x15, rs1_val == 16384, rs2_val == 8796093022208
# opcode: addw ; op1:x25; op2:x22; dest:x15; op1val:0x0000000000004000;  op2val:0x0000080000000000
TEST_RR_OP(addw, x15, x25, x22, 0x4000, 0x0000000000004000, 0x0000080000000000, x10, 40, x18)

# rs1==x16, rs2==x30, rd==x28, rs1_val == 32768, 
# opcode: addw ; op1:x16; op2:x30; dest:x28; op1val:0x0000000000008000;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x28, x16, x30, 0x100007ffc, 0x0000000000008000, 0xfffffffffffffffc, x10, 48, x18)

# rs1==x12, rs2==x2, rd==x19, rs1_val == 65536, rs2_val == 17592186044416
# opcode: addw ; op1:x12; op2:x2; dest:x19; op1val:0x0000000000010000;  op2val:0x0000100000000000
TEST_RR_OP(addw, x19, x12, x2, 0x10000, 0x0000000000010000, 0x0000100000000000, x10, 56, x18)

# rs1==x30, rs2==x8, rd==x12, rs1_val == 131072, rs2_val == 268435456
# opcode: addw ; op1:x30; op2:x8; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000010000000
TEST_RR_OP(addw, x12, x30, x8, 0x10020000, 0x0000000000020000, 0x0000000010000000, x10, 64, x18)

# rs1==x1, rs2==x13, rd==x7, rs1_val == 262144, rs2_val == -34359738369
# opcode: addw ; op1:x1; op2:x13; dest:x7; op1val:0x0000000000040000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(addw, x7, x1, x13, 0x10003ffff, 0x0000000000040000, 0xfffffff7ffffffff, x10, 72, x18)

# rs1==x0, rs2==x12, rd==x26, rs1_val == 524288, 
# opcode: addw ; op1:x0; op2:x12; dest:x26; op1val:0x0000000000080000;  op2val:0xfffffffffffffff6
TEST_RR_OP(addw, x26, x0, x12, 0x10007fff6, 0x0000000000080000, 0xfffffffffffffff6, x10, 80, x18)

# rs1==x13, rs2==x20, rd==x17, rs1_val == 1048576, rs2_val == -4611686018427387905
# opcode: addw ; op1:x13; op2:x20; dest:x17; op1val:0x0000000000100000;  op2val:0xbfffffffffffffff
TEST_RR_OP(addw, x17, x13, x20, 0x1000fffff, 0x0000000000100000, 0xbfffffffffffffff, x10, 88, x18)

# rs1==x4, rs2==x0, rd==x5, rs1_val == 2097152, 
# opcode: addw ; op1:x4; op2:x0; dest:x5; op1val:0x0000000000200000;  op2val:0x8000000000000000
TEST_RR_OP(addw, x5, x4, x0, 0x200000, 0x0000000000200000, 0x8000000000000000, x10, 96, x18)

# rs1==x7, rs2==x6, rd==x25, rs1_val == 4194304, 
# opcode: addw ; op1:x7; op2:x6; dest:x25; op1val:0x0000000000400000;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x25, x7, x6, 0x1003fffff, 0x0000000000400000, 0xffffffbfffffffff, x10, 104, x18)

# rs1==x27, rs2==x9, rd==x21, rs1_val == 8388608, rs2_val == -4294967297
# opcode: addw ; op1:x27; op2:x9; dest:x21; op1val:0x0000000000800000;  op2val:0xfffffffeffffffff
TEST_RR_OP(addw, x21, x27, x9, 0x1007fffff, 0x0000000000800000, 0xfffffffeffffffff, x10, 112, x18)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1_val == 16777216, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000080000000000
TEST_RR_OP(addw, x12, x10, x11, 0x1000000, 0x0000000001000000, 0x0000080000000000, x1, 0, x2)

# rs1_val == 33554432, rs2_val == -144115188075855873
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x101ffffff, 0x0000000002000000, 0xfdffffffffffffff, x1, 8, x2)

# rs1_val == 67108864, rs2_val == 2147483648
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000080000000
TEST_RR_OP(addw, x12, x10, x11, 0x84000000, 0x0000000004000000, 0x0000000080000000, x1, 16, x2)

# rs1_val == 134217728, rs2_val == -17179869185
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x107ffffff, 0x0000000008000000, 0xfffffffbffffffff, x1, 24, x2)

# rs1_val == 268435456, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000007
TEST_RR_OP(addw, x12, x10, x11, 0x10000007, 0x0000000010000000, 0x0000000000000007, x1, 32, x2)

# rs1_val == 536870912, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x11fffffff, 0x0000000020000000, 0xfeffffffffffffff, x1, 40, x2)

# rs1_val == 1073741824, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000080000000
TEST_RR_OP(addw, x12, x10, x11, 0xc0000000, 0x0000000040000000, 0x0000000080000000, x1, 48, x2)

# rs1_val == 2147483648, rs2_val == -33
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(addw, x12, x10, x11, 0x17fffffdf, 0x0000000080000000, 0xffffffffffffffdf, x1, 56, x2)

# rs1_val == 4294967296, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000100000000, 0xfdffffffffffffff, x1, 64, x2)

# rs1_val == 8589934592, rs2_val == 8388608
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000800000
TEST_RR_OP(addw, x12, x10, x11, 0x800000, 0x0000000200000000, 0x0000000000800000, x1, 72, x2)

# rs1_val == 17179869184, rs2_val == -3
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffd, 0x0000000400000000, 0xfffffffffffffffd, x1, 80, x2)

# rs1_val == 34359738368, rs2_val == 2305843009213693952
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x2000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000000800000000, 0x2000000000000000, x1, 88, x2)

# rs1_val == 68719476736, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000020000000000, x1, 96, x2)

# rs1_val == 137438953472, rs2_val == -2199023255553
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000002000000000, 0xfffffdffffffffff, x1, 104, x2)

# rs1_val == 274877906944, rs2_val == -5
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffb, 0x0000004000000000, 0xfffffffffffffffb, x1, 112, x2)

# rs1_val == 549755813888, rs2_val == -16777217
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(addw, x12, x10, x11, 0xfeffffff, 0x0000008000000000, 0xfffffffffeffffff, x1, 120, x2)

# rs1_val == 1099511627776, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000000, x1, 128, x2)

# rs1_val == 2199023255552, rs2_val == 262144
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x40000, 0x0000020000000000, 0x0000000000040000, x1, 136, x2)

# rs1_val == 4398046511104, rs2_val == 137438953472
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000002000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000002000000000, x1, 144, x2)

# rs1_val == 8796093022208, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000400000
TEST_RR_OP(addw, x12, x10, x11, 0x400000, 0x0000080000000000, 0x0000000000400000, x1, 152, x2)

# rs1_val == 17592186044416, rs2_val == -65537
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(addw, x12, x10, x11, 0xfffeffff, 0x0000100000000000, 0xfffffffffffeffff, x1, 160, x2)

# rs1_val == 35184372088832, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x40000, 0x0000200000000000, 0x0000000000040000, x1, 168, x2)

# rs1_val == 70368744177664, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xc000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000400000000000, 0xc000000000000000, x1, 176, x2)

# rs1_val == 140737488355328, rs2_val == -36028797018963969
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000800000000000, 0xff7fffffffffffff, x1, 184, x2)

# rs1_val == 281474976710656, rs2_val == 512
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000200
TEST_RR_OP(addw, x12, x10, x11, 0x200, 0x0001000000000000, 0x0000000000000200, x1, 192, x2)

# rs1_val == 562949953421312, rs2_val == -137438953473
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0002000000000000, 0xffffffdfffffffff, x1, 200, x2)

# rs1_val == 1125899906842624, rs2_val == -70368744177665
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0004000000000000, 0xffffbfffffffffff, x1, 208, x2)

# rs1_val == 2251799813685248, rs2_val == -576460752303423489
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0008000000000000, 0xf7ffffffffffffff, x1, 216, x2)

# rs1_val == 4503599627370496, rs2_val == 536870912
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000020000000
TEST_RR_OP(addw, x12, x10, x11, 0x20000000, 0x0010000000000000, 0x0000000020000000, x1, 224, x2)

# rs1_val == 9007199254740992, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000009
TEST_RR_OP(addw, x12, x10, x11, 0x9, 0x0020000000000000, 0x0000000000000009, x1, 232, x2)

# rs1_val == 18014398509481984, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000005
TEST_RR_OP(addw, x12, x10, x11, 0x5, 0x0040000000000000, 0x0000000000000005, x1, 240, x2)

# rs1_val == 36028797018963968, rs2_val == 1024
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000400
TEST_RR_OP(addw, x12, x10, x11, 0x400, 0x0080000000000000, 0x0000000000000400, x1, 248, x2)

# rs1_val == 72057594037927936, rs2_val == 576460752303423488
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0800000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0100000000000000, 0x0800000000000000, x1, 256, x2)

# rs1_val == 144115188075855872, rs2_val == 2097152
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000200000
TEST_RR_OP(addw, x12, x10, x11, 0x200000, 0x0200000000000000, 0x0000000000200000, x1, 264, x2)

# rs1_val == 288230376151711744, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xc000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0400000000000000, 0xc000000000000000, x1, 272, x2)

# rs1_val == 576460752303423488, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0800000000000000, 0xff7fffffffffffff, x1, 280, x2)

# rs1_val == 1152921504606846976, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(addw, x12, x10, x11, 0x1, 0x1000000000000000, 0x0000000000000001, x1, 288, x2)

# rs1_val == 2305843009213693952, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x1000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x2000000000000000, 0x1000000000000000, x1, 296, x2)

# rs1_val == 4611686018427387904, rs2_val == 65536
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000010000
TEST_RR_OP(addw, x12, x10, x11, 0x10000, 0x4000000000000000, 0x0000000000010000, x1, 304, x2)

# rs1_val == -2, rs2_val == -2049
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffff7ff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffff7fd, 0xfffffffffffffffe, 0xfffffffffffff7ff, x1, 312, x2)

# rs1_val == -3, rs2_val == 18014398509481984
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0040000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffd, 0xfffffffffffffffd, 0x0040000000000000, x1, 320, x2)

# rs1_val == -5, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000003
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffe, 0xfffffffffffffffb, 0x0000000000000003, x1, 328, x2)

# rs1_val == -9, rs2_val == 256
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000100
TEST_RR_OP(addw, x12, x10, x11, 0x1000000f7, 0xfffffffffffffff7, 0x0000000000000100, x1, 336, x2)

# rs1_val == -17, rs2_val == -140737488355329
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffff7fffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffee, 0xffffffffffffffef, 0xffff7fffffffffff, x1, 344, x2)

# rs1_val == -33, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffffff8
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffd7, 0xffffffffffffffdf, 0xfffffffffffffff8, x1, 352, x2)

# rs1_val == -65, rs2_val == 9007199254740992
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0020000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffbf, 0xffffffffffffffbf, 0x0020000000000000, x1, 360, x2)

# rs1_val == -129, rs2_val == -268435457
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffefffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1efffff7e, 0xffffffffffffff7f, 0xffffffffefffffff, x1, 368, x2)

# rs1_val == -257, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffeff, 0xfffffffffffffeff, 0x0000000000000000, x1, 376, x2)

# rs1_val == -513, rs2_val == -65
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffffffffffffbf
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffdbe, 0xfffffffffffffdff, 0xffffffffffffffbf, x1, 384, x2)

# rs2_val == -1125899906842625, rs1_val == -144115188075855873
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfdffffffffffffff, 0xfffbffffffffffff, x1, 392, x2)

# rs2_val == -2251799813685249, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x11fffffff, 0x0000000020000000, 0xfff7ffffffffffff, x1, 400, x2)

# rs2_val == -4503599627370497, rs1_val == -1152921504606846977
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xefffffffffffffff, 0xffefffffffffffff, x1, 408, x2)

# rs2_val == -9007199254740993, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000100000000, 0xffdfffffffffffff, x1, 416, x2)

# rs2_val == -18014398509481985, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x107ffffff, 0x0000000008000000, 0xffbfffffffffffff, x1, 424, x2)

# rs2_val == -288230376151711745, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xfbffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x100000005, 0x0000000000000006, 0xfbffffffffffffff, x1, 432, x2)

# rs2_val == -1152921504606846977, rs1_val == -35184372088833
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xffffdfffffffffff, 0xefffffffffffffff, x1, 440, x2)

# rs2_val == -2305843009213693953, rs1_val == 6148914691236517205
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xdfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x155555554, 0x5555555555555555, 0xdfffffffffffffff, x1, 448, x2)

# rs2_val == -6148914691236517206, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(addw, x12, x10, x11, 0xaaaaaab2, 0x0000000000000008, 0xaaaaaaaaaaaaaaaa, x1, 456, x2)

# rs1_val == -1025, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000100000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffbff, 0xfffffffffffffbff, 0x0000100000000000, x1, 464, x2)

# rs1_val == -2049, rs2_val == 134217728
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000008000000
TEST_RR_OP(addw, x12, x10, x11, 0x107fff7ff, 0xfffffffffffff7ff, 0x0000000008000000, x1, 472, x2)

# rs1_val == -4097, rs2_val == -8388609
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ff7feffe, 0xffffffffffffefff, 0xffffffffff7fffff, x1, 480, x2)

# rs1_val == -8193, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffdffe, 0xffffffffffffdfff, 0xff7fffffffffffff, x1, 488, x2)

# rs1_val == -32769, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x100037fff, 0xffffffffffff7fff, 0x0000000000040000, x1, 496, x2)

# rs1_val == -65537, rs2_val == -549755813889
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffefffe, 0xfffffffffffeffff, 0xffffff7fffffffff, x1, 504, x2)

# rs1_val == -131073, rs2_val == -562949953421313
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffdfffe, 0xfffffffffffdffff, 0xfffdffffffffffff, x1, 512, x2)

# rs1_val == -262145, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fbfbfffe, 0xfffffffffffbffff, 0xfffffffffbffffff, x1, 520, x2)

# rs1_val == -524289, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000008000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfff7ffff, 0xfffffffffff7ffff, 0x0000008000000000, x1, 528, x2)

# rs1_val == -1048577, rs2_val == 16384
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000004000
TEST_RR_OP(addw, x12, x10, x11, 0xfff03fff, 0xffffffffffefffff, 0x0000000000004000, x1, 536, x2)

# rs1_val == -2097153, rs2_val == 8
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x10, x11, 0xffe00007, 0xffffffffffdfffff, 0x0000000000000008, x1, 544, x2)

# rs1_val == -4194305, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000020000000
TEST_RR_OP(addw, x12, x10, x11, 0x11fbfffff, 0xffffffffffbfffff, 0x0000000020000000, x1, 552, x2)

# rs1_val == -8388609, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xc000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xff7fffff, 0xffffffffff7fffff, 0xc000000000000000, x1, 560, x2)

# rs1_val == -16777217, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdfffffe, 0xfffffffffeffffff, 0xfffffffffeffffff, x1, 568, x2)

# rs1_val == -33554433, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdfffffe, 0xfffffffffdffffff, 0xfffffdffffffffff, x1, 576, x2)

# rs1_val == -134217729, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x2000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xf7ffffff, 0xfffffffff7ffffff, 0x2000000000000000, x1, 584, x2)

# rs1_val == -268435457, rs2_val == 1048576
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000100000
TEST_RR_OP(addw, x12, x10, x11, 0xf00fffff, 0xffffffffefffffff, 0x0000000000100000, x1, 592, x2)

# rs1_val == -536870913, rs2_val == -513
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(addw, x12, x10, x11, 0x1dffffdfe, 0xffffffffdfffffff, 0xfffffffffffffdff, x1, 600, x2)

# rs1_val == -2147483649, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(addw, x12, x10, x11, 0x17ffffffc, 0xffffffff7fffffff, 0xfffffffffffffffd, x1, 608, x2)

# rs1_val == -4294967297, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000100
TEST_RR_OP(addw, x12, x10, x11, 0x1000000ff, 0xfffffffeffffffff, 0x0000000000000100, x1, 616, x2)

# rs1_val == -8589934593, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffffdffffffff, 0x0000020000000000, x1, 624, x2)

# rs1_val == -17179869185, rs2_val == -262145
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffbfffe, 0xfffffffbffffffff, 0xfffffffffffbffff, x1, 632, x2)

# rs1_val == -34359738369, rs2_val == 2251799813685248
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0008000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0008000000000000, x1, 640, x2)

# rs1_val == -68719476737, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ff7ffffe, 0xffffffefffffffff, 0xffffffffff7fffff, x1, 648, x2)

# rs1_val == -137438953473, rs2_val == 64
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000040
TEST_RR_OP(addw, x12, x10, x11, 0x10000003f, 0xffffffdfffffffff, 0x0000000000000040, x1, 656, x2)

# rs1_val == -549755813889, rs2_val == -9
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff6, 0xffffff7fffffffff, 0xfffffffffffffff7, x1, 664, x2)

# rs1_val == -1099511627777, rs2_val == 34359738368
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000800000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffeffffffffff, 0x0000000800000000, x1, 672, x2)

# rs1_val == -2199023255553, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffdffffffffff, 0xffffefffffffffff, x1, 680, x2)

# rs1_val == -4398046511105, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff5, 0xfffffbffffffffff, 0xfffffffffffffff6, x1, 688, x2)

# rs1_val == -8796093022209, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000100000000000, x1, 696, x2)

# rs1_val == -17592186044417, rs2_val == 17179869184
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffefffffffffff, 0x0000000400000000, x1, 704, x2)

# rs1_val == -70368744177665, rs2_val == -2147483649
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(addw, x12, x10, x11, 0x17ffffffe, 0xffffbfffffffffff, 0xffffffff7fffffff, x1, 712, x2)

# rs1_val == -140737488355329, rs2_val == 1099511627776
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffff7fffffffffff, 0x0000010000000000, x1, 720, x2)

# rs1_val == -281474976710657, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(addw, x12, x10, x11, 0x100000008, 0xfffeffffffffffff, 0x0000000000000009, x1, 728, x2)

# rs1_val == -2251799813685249, rs2_val == -131073
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffdfffe, 0xfff7ffffffffffff, 0xfffffffffffdffff, x1, 736, x2)

# rs1_val == -4503599627370497, rs2_val == 35184372088832
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffefffffffffffff, 0x0000200000000000, x1, 744, x2)

# rs1_val == -9007199254740993, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffdfe, 0xffdfffffffffffff, 0xfffffffffffffdff, x1, 752, x2)

# rs1_val == -18014398509481985, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x10, x11, 0x100000007, 0xffbfffffffffffff, 0x0000000000000008, x1, 760, x2)

# rs1_val == -36028797018963969, rs2_val == 140737488355328
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xff7fffffffffffff, 0x0000800000000000, x1, 768, x2)

# rs1_val == -72057594037927937, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffbfffe, 0xfeffffffffffffff, 0xfffffffffffbffff, x1, 776, x2)

# rs1_val == -288230376151711745, rs2_val == 1125899906842624
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0004000000000000, x1, 784, x2)

# rs1_val == -576460752303423489, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xf7ffffffffffffff, 0xffffbfffffffffff, x1, 792, x2)

# rs1_val == -2305843009213693953, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff7, 0xdfffffffffffffff, 0xfffffffffffffff8, x1, 800, x2)

# rs1_val == -4611686018427387905, rs2_val == 274877906944
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xbfffffffffffffff, 0x0000004000000000, x1, 808, x2)

# rs1_val == -6148914691236517206, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000001000000000
TEST_RR_OP(addw, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000001000000000, x1, 816, x2)

# rs2_val == 2, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(addw, x12, x10, x11, 0x100000001, 0xffffffffffffffff, 0x0000000000000002, x1, 824, x2)

# rs2_val == 4, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000000004
TEST_RR_OP(addw, x12, x10, x11, 0x8004, 0x0000000000008000, 0x0000000000000004, x1, 832, x2)

# rs2_val == 16, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0x0000000000000010
TEST_RR_OP(addw, x12, x10, x11, 0x100000009, 0xfffffffffffffff9, 0x0000000000000010, x1, 840, x2)

# rs2_val == 128, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000080
TEST_RR_OP(addw, x12, x10, x11, 0x10000080, 0x0000000010000000, 0x0000000000000080, x1, 848, x2)

# rs2_val == 2048, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000800
TEST_RR_OP(addw, x12, x10, x11, 0x1000007fb, 0xfffffffffffffffb, 0x0000000000000800, x1, 856, x2)

# rs2_val == 4096, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000001000
TEST_RR_OP(addw, x12, x10, x11, 0x8001000, 0x0000000008000000, 0x0000000000001000, x1, 864, x2)

# rs2_val == 8192, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000002000
TEST_RR_OP(addw, x12, x10, x11, 0x10002000, 0x0000000010000000, 0x0000000000002000, x1, 872, x2)

# rs2_val == 32768, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000008000
TEST_RR_OP(addw, x12, x10, x11, 0x100006fff, 0xffffffffffffefff, 0x0000000000008000, x1, 880, x2)

# rs2_val == 524288, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000080000
TEST_RR_OP(addw, x12, x10, x11, 0x80000, 0x0000004000000000, 0x0000000000080000, x1, 888, x2)

# rs2_val == 16777216, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000000001000000
TEST_RR_OP(addw, x12, x10, x11, 0x1000007, 0x0000000000000007, 0x0000000001000000, x1, 896, x2)

# rs2_val == 33554432, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000002000000
TEST_RR_OP(addw, x12, x10, x11, 0x2000001, 0x0000000000000001, 0x0000000002000000, x1, 904, x2)

# rs2_val == 67108864, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000004000000
TEST_RR_OP(addw, x12, x10, x11, 0x4000000, 0x0000004000000000, 0x0000000004000000, x1, 912, x2)

# rs2_val == 1073741824, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000040000000
TEST_RR_OP(addw, x12, x10, x11, 0x40000000, 0x0000200000000000, 0x0000000040000000, x1, 920, x2)

# rs2_val == 4294967296, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000100000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000100000000, x1, 928, x2)

# rs2_val == 8589934592, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0000000200000000, x1, 936, x2)

# rs2_val == 4398046511104, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000040000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffef, 0xffffffffffffffef, 0x0000040000000000, x1, 944, x2)

# rs2_val == 4503599627370496, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0010000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x8000, 0x0000000000008000, 0x0010000000000000, x1, 952, x2)

# rs2_val == 562949953421312, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffff7fffffffffff, 0x0002000000000000, x1, 960, x2)

# rs2_val == 36028797018963968, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0080000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0080000000000000, x1, 968, x2)

# rs2_val == 72057594037927936, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0100000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0100000000000000, x1, 976, x2)

# rs2_val == 288230376151711744, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0400000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xff7fffff, 0xffffffffff7fffff, 0x0400000000000000, x1, 984, x2)

# rs2_val == 4611686018427387904, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x4000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000000100000000, 0x4000000000000000, x1, 992, x2)

# rs2_val == -2, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xfffffffffffffffe
TEST_RR_OP(addw, x12, x10, x11, 0x1000007fe, 0x0000000000000800, 0xfffffffffffffffe, x1, 1000, x2)

# rs2_val == -17, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffee, 0xfffffffeffffffff, 0xffffffffffffffef, x1, 1008, x2)

# rs2_val == -129, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xffffffffffffff7f
TEST_RR_OP(addw, x12, x10, x11, 0x1003fff7f, 0x0000000000400000, 0xffffffffffffff7f, x1, 1016, x2)

# rs2_val == -257, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffefe, 0x7fffffffffffffff, 0xfffffffffffffeff, x1, 1024, x2)

# rs2_val == -1025, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffffffbff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffbfa, 0xfffffffffffffffb, 0xfffffffffffffbff, x1, 1032, x2)

# rs2_val == -4097, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xffffffffffffefff
TEST_RR_OP(addw, x12, x10, x11, 0x100002fff, 0x0000000000004000, 0xffffffffffffefff, x1, 1040, x2)

# rs2_val == -8193, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(addw, x12, x10, x11, 0xffffdfff, 0x0000004000000000, 0xffffffffffffdfff, x1, 1048, x2)

# rs2_val == -524289, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fff7fefe, 0xfffffffffffffeff, 0xfffffffffff7ffff, x1, 1056, x2)

# rs2_val == -1048577, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffeffffe, 0xffffffefffffffff, 0xffffffffffefffff, x1, 1064, x2)

# rs2_val == -2097153, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(addw, x12, x10, x11, 0xffdfffff, 0x0000000800000000, 0xffffffffffdfffff, x1, 1072, x2)

# rs2_val == -4194305, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(addw, x12, x10, x11, 0x1f7bffffe, 0xfffffffff7ffffff, 0xffffffffffbfffff, x1, 1080, x2)

# rs2_val == -33554433, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdf7fffe, 0xfffffffffff7ffff, 0xfffffffffdffffff, x1, 1088, x2)

# rs2_val == -536870913, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xffffffffdfffffff
TEST_RR_OP(addw, x12, x10, x11, 0xe000007f, 0x0000000000000080, 0xffffffffdfffffff, x1, 1096, x2)

# rs2_val == -1073741825, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(addw, x12, x10, x11, 0xbfffffff, 0x0000000100000000, 0xffffffffbfffffff, x1, 1104, x2)

# rs2_val == -8589934593, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x2000000000000000, 0xfffffffdffffffff, x1, 1112, x2)

# rs2_val == 281474976710656, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffdfffffffffff, 0x0001000000000000, x1, 1120, x2)

# rs2_val == -68719476737, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffffefffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffdffffe, 0xffffffffffdfffff, 0xffffffefffffffff, x1, 1128, x2)

# rs2_val == -1099511627777, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffffeffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x10000ffff, 0x0000000000010000, 0xfffffeffffffffff, x1, 1136, x2)

# rs2_val == -281474976710657, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffffbffffffff, 0xfffeffffffffffff, x1, 1144, x2)

# rs2_val == -4398046511105, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffffe, 0xffffffffbfffffff, 0xfffffbffffffffff, x1, 1152, x2)

# rs2_val == -8796093022209, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xffbfffffffffffff, 0xfffff7ffffffffff, x1, 1160, x2)

# rs2_val == -35184372088833, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffffdffffffff, 0xffffdfffffffffff, x1, 1168, x2)

# rs2_val == 70368744177664, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000400000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000400000000000, x1, 1176, x2)

# rs1_val == -562949953421313, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(addw, x12, x10, x11, 0x100003fff, 0xfffdffffffffffff, 0x0000000000004000, x1, 1184, x2)

# rs1_val == -1125899906842625, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffbffffffffffff, 0xf7ffffffffffffff, x1, 1192, x2)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffc, 0x8000000000000000, 0xfffffffffffffffc, x1, 1200, x2)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -32769
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffff7ffe, 0x7fffffffffffffff, 0xffffffffffff7fff, x1, 1208, x2)

# rs1_val == 1, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffffffffffa
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffb, 0x0000000000000001, 0xfffffffffffffffa, x1, 1216, x2)

# rs2_val == (-2**(xlen-1)), rs1_val == -16385, rs2_val == -9223372036854775808
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x8000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffbfff, 0xffffffffffffbfff, 0x8000000000000000, x1, 1224, x2)

# rs2_val == 1, rs1_val == -1073741825, rs1_val < 0 and rs2_val > 0
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000001
TEST_RR_OP(addw, x12, x10, x11, 0xc0000000, 0xffffffffbfffffff, 0x0000000000000001, x1, 1232, x2)

# rs1_val == 524288, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xfffffffffffffff6
TEST_RR_OP(addw, x12, x10, x11, 0x10007fff6, 0x0000000000080000, 0xfffffffffffffff6, x1, 1240, x2)

# rs1_val == 2097152, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x8000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x200000, 0x0000000000200000, 0x8000000000000000, x1, 1248, x2)
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
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x10_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 157*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
