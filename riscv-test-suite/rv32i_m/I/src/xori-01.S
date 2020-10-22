
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 != rd, rs1==x29, rd==x2, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: xori ; op1:x29; dest:x2; op1val:0xfffffff9;  immval:-7
TEST_IMM_OP( xori, x2, x29, 0x0, 0xfffffff9, -7, x5, 0, x7)

# rs1 == rd, rs1==x26, rd==x26, rs1_val != imm_val, rs1_val > 0 and imm_val < 0, imm_val == -9
# opcode: xori ; op1:x26; dest:x26; op1val:0x00000003;  immval:-9
TEST_IMM_OP( xori, x26, x26, 0xfffffff4, 0x00000003, -9, x5, 4, x7)

# rs1==x24, rd==x3, rs1_val > 0 and imm_val > 0, rs1_val == 65536
# opcode: xori ; op1:x24; dest:x3; op1val:0x00010000;  immval:6
TEST_IMM_OP( xori, x3, x24, 0x10006, 0x00010000, 6, x5, 8, x7)

# rs1==x9, rd==x22, rs1_val < 0 and imm_val > 0, rs1_val == -1048577
# opcode: xori ; op1:x9; dest:x22; op1val:0xffefffff;  immval:1023
TEST_IMM_OP( xori, x22, x9, 0xffeffc00, 0xffefffff, 1023, x5, 12, x7)

# rs1==x10, rd==x1, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, imm_val == -33
# opcode: xori ; op1:x10; dest:x1; op1val:0x80000000;  immval:-33
TEST_IMM_OP( xori, x1, x10, 0x7fffffdf, 0x80000000, -33, x5, 16, x7)

# rs1==x15, rd==x20, rs1_val == 0, imm_val == 0
# opcode: xori ; op1:x15; dest:x20; op1val:0x00000000;  immval:0
TEST_IMM_OP( xori, x20, x15, 0x0, 0x00000000, 0, x5, 20, x7)

# rs1==x28, rd==x11, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: xori ; op1:x28; dest:x11; op1val:0x7fffffff;  immval:7
TEST_IMM_OP( xori, x11, x28, 0x7ffffff8, 0x7fffffff, 7, x5, 24, x7)

# rs1==x12, rd==x25, rs1_val == 1, imm_val == -513
# opcode: xori ; op1:x12; dest:x25; op1val:0x00000001;  immval:-513
TEST_IMM_OP( xori, x25, x12, 0xfffffdfe, 0x00000001, -513, x5, 28, x7)

# rs1==x30, rd==x0, imm_val == (-2**(12-1)), rs1_val == 524288, imm_val == -2048
# opcode: xori ; op1:x30; dest:x0; op1val:0x00080000;  immval:-2048
TEST_IMM_OP( xori, x0, x30, 0xfff7f800, 0x00080000, -2048, x5, 32, x7)

# rs1==x8, rd==x24, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -67108865
# opcode: xori ; op1:x8; dest:x24; op1val:0xfbffffff;  immval:2047
TEST_IMM_OP( xori, x24, x8, 0xfbfff800, 0xfbffffff, 2047, x5, 36, x7)

# rs1==x16, rd==x18, imm_val == 1, rs1_val == 1073741824
# opcode: xori ; op1:x16; dest:x18; op1val:0x40000000;  immval:1
TEST_IMM_OP( xori, x18, x16, 0x40000001, 0x40000000, 1, x5, 40, x7)

# rs1==x13, rd==x23, rs1_val == 2, imm_val == 1365
# opcode: xori ; op1:x13; dest:x23; op1val:0x00000002;  immval:1365
TEST_IMM_OP( xori, x23, x13, 0x557, 0x00000002, 1365, x5, 44, x7)

# rs1==x19, rd==x14, rs1_val == 4, imm_val == 512
# opcode: xori ; op1:x19; dest:x14; op1val:0x00000004;  immval:512
TEST_IMM_OP( xori, x14, x19, 0x204, 0x00000004, 512, x5, 48, x7)

# rs1==x21, rd==x8, rs1_val == 8, 
# opcode: xori ; op1:x21; dest:x8; op1val:0x00000008;  immval:7
TEST_IMM_OP( xori, x8, x21, 0xf, 0x00000008, 7, x5, 52, x7)

# rs1==x0, rd==x13, rs1_val == 16, imm_val == 256
# opcode: xori ; op1:x0; dest:x13; op1val:0x00000010;  immval:256
TEST_IMM_OP( xori, x13, x0, 0x110, 0x00000010, 256, x5, 56, x7)

# rs1==x6, rd==x21, rs1_val == 32, imm_val == 8
# opcode: xori ; op1:x6; dest:x21; op1val:0x00000020;  immval:8
TEST_IMM_OP( xori, x21, x6, 0x28, 0x00000020, 8, x5, 60, x7)

# rs1==x3, rd==x4, rs1_val == 64, imm_val == -1025
# opcode: xori ; op1:x3; dest:x4; op1val:0x00000040;  immval:-1025
TEST_IMM_OP( xori, x4, x3, 0xfffffbbf, 0x00000040, -1025, x5, 64, x7)

# rs1==x1, rd==x17, rs1_val == 128, imm_val == 1024
# opcode: xori ; op1:x1; dest:x17; op1val:0x00000080;  immval:1024
TEST_IMM_OP( xori, x17, x1, 0x480, 0x00000080, 1024, x5, 68, x7)

# rs1==x20, rd==x29, rs1_val == 256, imm_val == -2
# opcode: xori ; op1:x20; dest:x29; op1val:0x00000100;  immval:-2
TEST_IMM_OP( xori, x29, x20, 0xfffffefe, 0x00000100, -2, x5, 72, x3)

# rs1==x23, rd==x7, rs1_val == 512, 
# opcode: xori ; op1:x23; dest:x7; op1val:0x00000200;  immval:-1
TEST_IMM_OP( xori, x7, x23, 0xfffffdff, 0x00000200, -1, x5, 76, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x4, rd==x10, rs1_val == 1024, 
# opcode: xori ; op1:x4; dest:x10; op1val:0x00000400;  immval:-2048
TEST_IMM_OP( xori, x10, x4, 0xfffffc00, 0x00000400, -2048, x1, 0, x3)

# rs1==x7, rd==x16, rs1_val == 2048, 
# opcode: xori ; op1:x7; dest:x16; op1val:0x00000800;  immval:-8
TEST_IMM_OP( xori, x16, x7, 0xfffff7f8, 0x00000800, -8, x1, 4, x3)

# rs1==x17, rd==x5, rs1_val == 4096, imm_val == -3
# opcode: xori ; op1:x17; dest:x5; op1val:0x00001000;  immval:-3
TEST_IMM_OP( xori, x5, x17, 0xffffeffd, 0x00001000, -3, x1, 8, x3)

# rs1==x14, rd==x19, rs1_val == 8192, 
# opcode: xori ; op1:x14; dest:x19; op1val:0x00002000;  immval:-4
TEST_IMM_OP( xori, x19, x14, 0xffffdffc, 0x00002000, -4, x1, 12, x3)

# rs1==x5, rd==x27, rs1_val == 16384, 
# opcode: xori ; op1:x5; dest:x27; op1val:0x00004000;  immval:5
TEST_IMM_OP( xori, x27, x5, 0x4005, 0x00004000, 5, x1, 16, x3)

# rs1==x11, rd==x28, rs1_val == 32768, 
# opcode: xori ; op1:x11; dest:x28; op1val:0x00008000;  immval:0
TEST_IMM_OP( xori, x28, x11, 0x8000, 0x00008000, 0, x1, 20, x3)

# rs1==x2, rd==x30, rs1_val == 131072, imm_val == -5
# opcode: xori ; op1:x2; dest:x30; op1val:0x00020000;  immval:-5
TEST_IMM_OP( xori, x30, x2, 0xfffdfffb, 0x00020000, -5, x1, 24, x3)

# rs1==x22, rd==x9, rs1_val == 262144, 
# opcode: xori ; op1:x22; dest:x9; op1val:0x00040000;  immval:-4
TEST_IMM_OP( xori, x9, x22, 0xfffbfffc, 0x00040000, -4, x1, 28, x3)

# rs1==x31, rd==x12, rs1_val == 1048576, 
# opcode: xori ; op1:x31; dest:x12; op1val:0x00100000;  immval:-10
TEST_IMM_OP( xori, x12, x31, 0xffeffff6, 0x00100000, -10, x1, 32, x3)

# rs1==x27, rd==x6, rs1_val == 2097152, 
# opcode: xori ; op1:x27; dest:x6; op1val:0x00200000;  immval:-3
TEST_IMM_OP( xori, x6, x27, 0xffdffffd, 0x00200000, -3, x1, 36, x3)

# rs1==x18, rd==x15, rs1_val == 4194304, 
# opcode: xori ; op1:x18; dest:x15; op1val:0x00400000;  immval:-9
TEST_IMM_OP( xori, x15, x18, 0xffbffff7, 0x00400000, -9, x1, 40, x3)

# rs1==x25, rd==x31, rs1_val == 8388608, imm_val == 32
# opcode: xori ; op1:x25; dest:x31; op1val:0x00800000;  immval:32
TEST_IMM_OP( xori, x31, x25, 0x800020, 0x00800000, 32, x1, 44, x3)

# rs1_val == 16777216, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x01000000;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0xfeffffdf, 0x01000000, -33, x1, 48, x3)

# rs1_val == 33554432, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x2000006, 0x02000000, 6, x1, 52, x3)

# rs1_val == 67108864, imm_val == -17
# opcode: xori ; op1:x10; dest:x11; op1val:0x04000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xfbffffef, 0x04000000, -17, x1, 56, x3)

# rs1_val == 134217728, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xf7fffff7, 0x08000000, -9, x1, 60, x3)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x10000008, 0x10000000, 8, x1, 64, x3)

# rs1_val == 536870912, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xdfffffef, 0x20000000, -17, x1, 68, x3)

# rs1_val == -2, imm_val == 128
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffff7e, 0xfffffffe, 128, x1, 72, x3)

# rs1_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x2, 0xfffffffd, -1, x1, 76, x3)

# rs1_val == -5, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xfffffffc, 0xfffffffb, 7, x1, 80, x3)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffffff, 0xfffffff7, 8, x1, 84, x3)

# rs1_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xffffffef, 0xffffffef, 0, x1, 88, x3)

# rs1_val == -33, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffffffd6, 0xffffffdf, 9, x1, 92, x3)

# rs1_val == -65, imm_val == -257
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x140, 0xffffffbf, -257, x1, 96, x3)

# rs1_val == -129, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x81, 0xffffff7f, -2, x1, 100, x3)

# rs1_val == -524289, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfff7ffff, 0xfff7ffff, 0, x1, 104, x3)

# rs1_val == -2097153, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x200005, 0xffdfffff, -6, x1, 108, x3)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x400000, 0xffbfffff, -1, x1, 112, x3)

# rs1_val == -8388609, imm_val == -1366
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x800555, 0xff7fffff, -1366, x1, 116, x3)

# rs1_val == -16777217, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x1000000, 0xfeffffff, -1, x1, 120, x3)

# rs1_val == -33554433, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x2000009, 0xfdffffff, -10, x1, 124, x3)

# rs1_val == -134217729, imm_val == 16
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xf7ffffef, 0xf7ffffff, 16, x1, 128, x3)

# rs1_val == -268435457, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x10000000, 0xefffffff, -1, x1, 132, x3)

# rs1_val == -536870913, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x200003ff, 0xdfffffff, -1024, x1, 136, x3)

# rs1_val == -1073741825, imm_val == -129
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x40000080, 0xbfffffff, -129, x1, 140, x3)

# rs1_val == 1431655765, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xaaaaaa2a, 0x55555555, -129, x1, 144, x3)

# rs1_val == -1431655766, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaaf, 0xaaaaaaaa, 5, x1, 148, x3)

# imm_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xc0000000;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x3fffffbf, 0xc0000000, -65, x1, 152, x3)

# imm_val == 2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xff7ffffd, 0xff7fffff, 2, x1, 156, x3)

# imm_val == 4, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00080000;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x80004, 0x00080000, 4, x1, 160, x3)

# imm_val == 64, rs1_val == -8193
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffdfbf, 0xffffdfff, 64, x1, 164, x3)

# rs1_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffd00, 0xfffffeff, 1023, x1, 168, x3)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xffffffff, 0xfffffdff, 512, x1, 172, x3)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x408, 0xfffffbff, -9, x1, 176, x3)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0xbff, 0xfffff7ff, -1024, x1, 180, x3)

# rs1_val == -4097, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffeff7, 0xffffefff, 8, x1, 184, x3)

# rs1_val == -16385, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffffbbff, 0xffffbfff, 1024, x1, 188, x3)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xffff7c00, 0xffff7fff, 1023, x1, 192, x3)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x10009, 0xfffeffff, -10, x1, 196, x3)

# rs1_val == -131073, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffdfeff, 0xfffdffff, 256, x1, 200, x3)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffbffff, 0xfffbffff, 0, x1, 204, x3)

# rs1_val != imm_val, rs1_val > 0 and imm_val < 0, imm_val == -9
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000003;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfffffff4, 0x00000003, -9, x1, 208, x3)

# imm_val == (-2**(12-1)), rs1_val == 524288, imm_val == -2048
# opcode: xori ; op1:x10; dest:x11; op1val:0x00080000;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0xfff7f800, 0x00080000, -2048, x1, 212, x3)

# rs1_val == 16, imm_val == 256
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000010;  immval:256
TEST_IMM_OP( xori, x11, x10, 0x110, 0x00000010, 256, x1, 216, x3)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 55*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
