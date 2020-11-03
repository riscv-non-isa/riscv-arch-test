
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rd, rs1==x7, rd==x13, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: xori ; op1:x7; dest:x13; op1val:0xfffffff8;  immval:-8
TEST_IMM_OP( xori, x13, x7, 0x0, 0xfffffff8, -8, x3, 0, x2)

# rs1 == rd, rs1==x17, rd==x17, rs1_val != imm_val, rs1_val == -268435457, imm_val == -2
# opcode: xori ; op1:x17; dest:x17; op1val:0xefffffff;  immval:-2
TEST_IMM_OP( xori, x17, x17, 0x10000001, 0xefffffff, -2, x3, 4, x2)

# rs1==x6, rd==x22, rs1_val > 0 and imm_val > 0, imm_val == 1
# opcode: xori ; op1:x6; dest:x22; op1val:0x00000006;  immval:1
TEST_IMM_OP( xori, x22, x6, 0x7, 0x00000006, 1, x3, 8, x2)

# rs1==x1, rd==x11, rs1_val > 0 and imm_val < 0, imm_val == -17, rs1_val == 4
# opcode: xori ; op1:x1; dest:x11; op1val:0x00000004;  immval:-17
TEST_IMM_OP( xori, x11, x1, 0xffffffeb, 0x00000004, -17, x3, 12, x2)

# rs1==x0, rd==x5, rs1_val < 0 and imm_val > 0, rs1_val == -2147483648, rs1_val == (-2**(xlen-1))
# opcode: xori ; op1:x0; dest:x5; op1val:0x80000000;  immval:9
TEST_IMM_OP( xori, x5, x0, 0x80000009, 0x80000000, 9, x3, 16, x2)

# rs1==x4, rd==x10, rs1_val == 0, imm_val == 8
# opcode: xori ; op1:x4; dest:x10; op1val:0x00000000;  immval:8
TEST_IMM_OP( xori, x10, x4, 0x8, 0x00000000, 8, x3, 20, x2)

# rs1==x12, rd==x30, rs1_val == (2**(xlen-1)-1), imm_val == -513, rs1_val == 2147483647
# opcode: xori ; op1:x12; dest:x30; op1val:0x7fffffff;  immval:-513
TEST_IMM_OP( xori, x30, x12, 0x80000200, 0x7fffffff, -513, x3, 24, x2)

# rs1==x20, rd==x12, rs1_val == 1, imm_val == -65
# opcode: xori ; op1:x20; dest:x12; op1val:0x00000001;  immval:-65
TEST_IMM_OP( xori, x12, x20, 0xffffffbe, 0x00000001, -65, x3, 28, x2)

# rs1==x5, rd==x31, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 32
# opcode: xori ; op1:x5; dest:x31; op1val:0x00000020;  immval:-2048
TEST_IMM_OP( xori, x31, x5, 0xfffff820, 0x00000020, -2048, x3, 32, x2)

# rs1==x10, rd==x26, imm_val == 0, rs1_val == 524288
# opcode: xori ; op1:x10; dest:x26; op1val:0x00080000;  immval:0
TEST_IMM_OP( xori, x26, x10, 0x80000, 0x00080000, 0, x3, 36, x2)

# rs1==x26, rd==x15, imm_val == (2**(12-1)-1), rs1_val == -524289, imm_val == 2047
# opcode: xori ; op1:x26; dest:x15; op1val:0xfff7ffff;  immval:2047
TEST_IMM_OP( xori, x15, x26, 0xfff7f800, 0xfff7ffff, 2047, x3, 40, x2)

# rs1==x8, rd==x19, rs1_val == 2, imm_val == 64
# opcode: xori ; op1:x8; dest:x19; op1val:0x00000002;  immval:64
TEST_IMM_OP( xori, x19, x8, 0x42, 0x00000002, 64, x3, 44, x2)

# rs1==x13, rd==x27, rs1_val == 8, imm_val == -33
# opcode: xori ; op1:x13; dest:x27; op1val:0x00000008;  immval:-33
TEST_IMM_OP( xori, x27, x13, 0xffffffd7, 0x00000008, -33, x3, 48, x2)

# rs1==x16, rd==x14, rs1_val == 16, imm_val == -129
# opcode: xori ; op1:x16; dest:x14; op1val:0x00000010;  immval:-129
TEST_IMM_OP( xori, x14, x16, 0xffffff6f, 0x00000010, -129, x3, 52, x2)

# rs1==x15, rd==x16, rs1_val == 64, imm_val == 512
# opcode: xori ; op1:x15; dest:x16; op1val:0x00000040;  immval:512
TEST_IMM_OP( xori, x16, x15, 0x240, 0x00000040, 512, x3, 56, x2)

# rs1==x9, rd==x4, rs1_val == 128, 
# opcode: xori ; op1:x9; dest:x4; op1val:0x00000080;  immval:-17
TEST_IMM_OP( xori, x4, x9, 0xffffff6f, 0x00000080, -17, x3, 60, x2)

# rs1==x31, rd==x1, rs1_val == 256, 
# opcode: xori ; op1:x31; dest:x1; op1val:0x00000100;  immval:-4
TEST_IMM_OP( xori, x1, x31, 0xfffffefc, 0x00000100, -4, x3, 64, x2)

# rs1==x22, rd==x24, rs1_val == 512, 
# opcode: xori ; op1:x22; dest:x24; op1val:0x00000200;  immval:7
TEST_IMM_OP( xori, x24, x22, 0x207, 0x00000200, 7, x3, 68, x2)

# rs1==x28, rd==x21, rs1_val == 1024, 
# opcode: xori ; op1:x28; dest:x21; op1val:0x00000400;  immval:512
TEST_IMM_OP( xori, x21, x28, 0x600, 0x00000400, 512, x3, 72, x2)

# rs1==x24, rd==x7, rs1_val == 2048, 
# opcode: xori ; op1:x24; dest:x7; op1val:0x00000800;  immval:-10
TEST_IMM_OP( xori, x7, x24, 0xfffff7f6, 0x00000800, -10, x3, 76, x2)

# rs1==x25, rd==x29, rs1_val == 4096, 
# opcode: xori ; op1:x25; dest:x29; op1val:0x00001000;  immval:-8
TEST_IMM_OP( xori, x29, x25, 0xffffeff8, 0x00001000, -8, x3, 80, x2)

# rs1==x11, rd==x28, rs1_val == 8192, imm_val == 1024
# opcode: xori ; op1:x11; dest:x28; op1val:0x00002000;  immval:1024
TEST_IMM_OP( xori, x28, x11, 0x2400, 0x00002000, 1024, x3, 84, x4)

# rs1==x2, rd==x9, rs1_val == 16384, 
# opcode: xori ; op1:x2; dest:x9; op1val:0x00004000;  immval:-7
TEST_IMM_OP( xori, x9, x2, 0xffffbff9, 0x00004000, -7, x3, 88, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x21, rd==x18, rs1_val == 32768, 
# opcode: xori ; op1:x21; dest:x18; op1val:0x00008000;  immval:1023
TEST_IMM_OP( xori, x18, x21, 0x83ff, 0x00008000, 1023, x1, 0, x4)

# rs1==x19, rd==x23, rs1_val == 65536, 
# opcode: xori ; op1:x19; dest:x23; op1val:0x00010000;  immval:1
TEST_IMM_OP( xori, x23, x19, 0x10001, 0x00010000, 1, x1, 4, x4)

# rs1==x14, rd==x8, rs1_val == 131072, 
# opcode: xori ; op1:x14; dest:x8; op1val:0x00020000;  immval:-8
TEST_IMM_OP( xori, x8, x14, 0xfffdfff8, 0x00020000, -8, x1, 8, x4)

# rs1==x30, rd==x6, rs1_val == 262144, imm_val == -257
# opcode: xori ; op1:x30; dest:x6; op1val:0x00040000;  immval:-257
TEST_IMM_OP( xori, x6, x30, 0xfffbfeff, 0x00040000, -257, x1, 12, x4)

# rs1==x18, rd==x0, rs1_val == 1048576, 
# opcode: xori ; op1:x18; dest:x0; op1val:0x00100000;  immval:9
TEST_IMM_OP( xori, x0, x18, 0x100009, 0x00100000, 9, x1, 16, x4)

# rs1==x23, rd==x25, rs1_val == 2097152, 
# opcode: xori ; op1:x23; dest:x25; op1val:0x00200000;  immval:1
TEST_IMM_OP( xori, x25, x23, 0x200001, 0x00200000, 1, x1, 20, x4)

# rs1==x29, rd==x3, rs1_val == 4194304, 
# opcode: xori ; op1:x29; dest:x3; op1val:0x00400000;  immval:2047
TEST_IMM_OP( xori, x3, x29, 0x4007ff, 0x00400000, 2047, x1, 24, x4)

# rs1==x27, rd==x2, rs1_val == 8388608, imm_val == -1366
# opcode: xori ; op1:x27; dest:x2; op1val:0x00800000;  immval:-1366
TEST_IMM_OP( xori, x2, x27, 0xff7ffaaa, 0x00800000, -1366, x1, 28, x4)

# rs1==x3, rd==x20, rs1_val == 16777216, 
# opcode: xori ; op1:x3; dest:x20; op1val:0x01000000;  immval:-1
TEST_IMM_OP( xori, x20, x3, 0xfeffffff, 0x01000000, -1, x1, 32, x4)

# rs1_val == 33554432, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x2000005, 0x02000000, 5, x1, 36, x4)

# rs1_val == 67108864, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x04000000;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0xfbffffff, 0x04000000, -1, x1, 40, x4)

# rs1_val == 134217728, imm_val == 32
# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x8000020, 0x08000000, 32, x1, 44, x4)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xeffffaaa, 0x10000000, -1366, x1, 48, x4)

# rs1_val == 536870912, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x20000001, 0x20000000, 1, x1, 52, x4)

# rs1_val == 1073741824, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0xbffffc00, 0x40000000, -1024, x1, 56, x4)

# rs1_val == -2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x81, 0xfffffffe, -129, x1, 60, x4)

# rs1_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffbd, 0xfffffffd, 64, x1, 64, x4)

# rs1_val == -5, imm_val == 16
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffffeb, 0xfffffffb, 16, x1, 68, x4)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xfffffff1, 0xfffffff7, 6, x1, 72, x4)

# rs1_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x17, 0xffffffef, -8, x1, 76, x4)

# rs1_val == -33, imm_val == -9
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x28, 0xffffffdf, -9, x1, 80, x4)

# rs1_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x60, 0xffffffbf, -33, x1, 84, x4)

# rs1_val == -129, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x280, 0xffffff7f, -513, x1, 88, x4)

# rs1_val == -1048577, imm_val == 1365
# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xffeffaaa, 0xffefffff, 1365, x1, 92, x4)

# rs1_val == -2097153, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffdffff7, 0xffdfffff, 8, x1, 96, x4)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x400020, 0xffbfffff, -33, x1, 100, x4)

# rs1_val == -8388609, imm_val == -3
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x800002, 0xff7fffff, -3, x1, 104, x4)

# rs1_val == -16777217, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xfefffffc, 0xfeffffff, 3, x1, 108, x4)

# rs1_val == -33554433, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x2000002, 0xfdffffff, -3, x1, 112, x4)

# rs1_val == -67108865, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfbfffc00, 0xfbffffff, 1023, x1, 116, x4)

# rs1_val == -134217729, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xf7fffffe, 0xf7ffffff, 1, x1, 120, x4)

# rs1_val == -536870913, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x20000555, 0xdfffffff, -1366, x1, 124, x4)

# rs1_val == -1073741825, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x40000080, 0xbfffffff, -129, x1, 128, x4)

# rs1_val == 1431655765, imm_val == -1025
# opcode: xori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0xaaaaaeaa, 0x55555555, -1025, x1, 132, x4)

# rs1_val == -1431655766, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x55555575, 0xaaaaaaaa, -33, x1, 136, x4)

# imm_val == 2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000003;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x1, 0x00000003, 2, x1, 140, x4)

# rs1_val == -8193, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffdfef, 0xffffdfff, 16, x1, 144, x4)

# rs1_val == -4097, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xffffedff, 0xffffefff, 512, x1, 148, x4)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x8001, 0xffff7fff, -2, x1, 152, x4)

# imm_val == 4, rs1_val == -16385
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffffbffb, 0xffffbfff, 4, x1, 156, x4)

# imm_val == 128, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:128
TEST_IMM_OP( xori, x11, x10, 0x2000080, 0x02000000, 128, x1, 160, x4)

# rs1_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfffffefa, 0xfffffeff, 5, x1, 164, x4)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xfffffbf8, 0xfffffbff, 7, x1, 168, x4)

# imm_val == 256, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000003;  immval:256
TEST_IMM_OP( xori, x11, x10, 0x103, 0x00000003, 256, x1, 172, x4)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x208, 0xfffffdff, -9, x1, 176, x4)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfffff7df, 0xfffff7ff, 32, x1, 180, x4)

# imm_val == -5, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x84, 0xffffff7f, -5, x1, 184, x4)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffefffb, 0xfffeffff, 4, x1, 188, x4)

# rs1_val == -131073, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfffdf800, 0xfffdffff, 2047, x1, 192, x4)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x40010, 0xfffbffff, -17, x1, 196, x4)

# rs1_val < 0 and imm_val > 0, rs1_val == -2147483648, rs1_val == (-2**(xlen-1))
# opcode: xori ; op1:x10; dest:x11; op1val:0x80000000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x80000009, 0x80000000, 9, x1, 200, x4)

# rs1_val == 1048576, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00100000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x100009, 0x00100000, 9, x1, 204, x4)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 52*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
