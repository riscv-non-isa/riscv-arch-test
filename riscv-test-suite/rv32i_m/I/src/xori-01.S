
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

la x1,signature_x1_1

# rs1 == rd, rs1==x17, rd==x17, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 2, imm_val == 2
# opcode: xori ; op1:x17; dest:x17; op1val:0x00000002;  immval:2
TEST_IMM_OP( xori, x17, x17, 0x0, 0x00000002, 2, x1, 0, x15)

# rs1 != rd, rs1==x20, rd==x6, rs1_val != imm_val, rs1_val == 65536
# opcode: xori ; op1:x20; dest:x6; op1val:0x00010000;  immval:6
TEST_IMM_OP( xori, x6, x20, 0x10006, 0x00010000, 6, x1, 4, x15)

# rs1==x10, rd==x18, rs1_val > 0 and imm_val < 0, imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == 64
# opcode: xori ; op1:x10; dest:x18; op1val:0x00000040;  immval:-2048
TEST_IMM_OP( xori, x18, x10, 0xfffff840, 0x00000040, -2048, x1, 8, x15)

# rs1==x7, rd==x28, rs1_val < 0 and imm_val > 0, rs1_val == -17
# opcode: xori ; op1:x7; dest:x28; op1val:0xffffffef;  immval:7
TEST_IMM_OP( xori, x28, x7, 0xffffffe8, 0xffffffef, 7, x1, 12, x15)

# rs1==x0, rd==x30, rs1_val < 0 and imm_val < 0, rs1_val == -4097, imm_val == -17
# opcode: xori ; op1:x0; dest:x30; op1val:0xffffefff;  immval:-17
TEST_IMM_OP( xori, x30, x0, 0x1010, 0xffffefff, -17, x1, 16, x15)

# rs1==x14, rd==x22, rs1_val == (-2**(xlen-1)), imm_val == 4, rs1_val == -2147483648
# opcode: xori ; op1:x14; dest:x22; op1val:0x80000000;  immval:4
TEST_IMM_OP( xori, x22, x14, 0x80000004, 0x80000000, 4, x1, 20, x15)

# rs1==x9, rd==x25, rs1_val == 0, imm_val == -5
# opcode: xori ; op1:x9; dest:x25; op1val:0x00000000;  immval:-5
TEST_IMM_OP( xori, x25, x9, 0xfffffffb, 0x00000000, -5, x1, 24, x15)

# rs1==x13, rd==x4, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: xori ; op1:x13; dest:x4; op1val:0x7fffffff;  immval:-7
TEST_IMM_OP( xori, x4, x13, 0x80000006, 0x7fffffff, -7, x1, 28, x15)

# rs1==x23, rd==x29, rs1_val == 1, 
# opcode: xori ; op1:x23; dest:x29; op1val:0x00000001;  immval:9
TEST_IMM_OP( xori, x29, x23, 0x8, 0x00000001, 9, x1, 32, x15)

# rs1==x26, rd==x5, imm_val == 0, rs1_val == -16777217
# opcode: xori ; op1:x26; dest:x5; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( xori, x5, x26, 0xfeffffff, 0xfeffffff, 0, x1, 36, x15)

# rs1==x4, rd==x3, imm_val == (2**(12-1)-1), rs1_val == -129, imm_val == 2047
# opcode: xori ; op1:x4; dest:x3; op1val:0xffffff7f;  immval:2047
TEST_IMM_OP( xori, x3, x4, 0xfffff880, 0xffffff7f, 2047, x1, 40, x15)

# rs1==x3, rd==x11, imm_val == 1, rs1_val == 8192
# opcode: xori ; op1:x3; dest:x11; op1val:0x00002000;  immval:1
TEST_IMM_OP( xori, x11, x3, 0x2001, 0x00002000, 1, x1, 44, x15)

# rs1==x16, rd==x31, rs1_val == 4, imm_val == -257
# opcode: xori ; op1:x16; dest:x31; op1val:0x00000004;  immval:-257
TEST_IMM_OP( xori, x31, x16, 0xfffffefb, 0x00000004, -257, x1, 48, x15)

# rs1==x5, rd==x16, rs1_val == 8, imm_val == 1024
# opcode: xori ; op1:x5; dest:x16; op1val:0x00000008;  immval:1024
TEST_IMM_OP( xori, x16, x5, 0x408, 0x00000008, 1024, x1, 52, x15)

# rs1==x2, rd==x9, rs1_val == 16, imm_val == 8
# opcode: xori ; op1:x2; dest:x9; op1val:0x00000010;  immval:8
TEST_IMM_OP( xori, x9, x2, 0x18, 0x00000010, 8, x1, 56, x15)

# rs1==x28, rd==x12, rs1_val == 32, 
# opcode: xori ; op1:x28; dest:x12; op1val:0x00000020;  immval:7
TEST_IMM_OP( xori, x12, x28, 0x27, 0x00000020, 7, x1, 60, x15)

# rs1==x19, rd==x8, rs1_val == 128, 
# opcode: xori ; op1:x19; dest:x8; op1val:0x00000080;  immval:2
TEST_IMM_OP( xori, x8, x19, 0x82, 0x00000080, 2, x1, 64, x15)

# rs1==x12, rd==x24, rs1_val == 256, 
# opcode: xori ; op1:x12; dest:x24; op1val:0x00000100;  immval:0
TEST_IMM_OP( xori, x24, x12, 0x100, 0x00000100, 0, x1, 68, x15)

# rs1==x18, rd==x20, rs1_val == 512, 
# opcode: xori ; op1:x18; dest:x20; op1val:0x00000200;  immval:8
TEST_IMM_OP( xori, x20, x18, 0x208, 0x00000200, 8, x1, 72, x4)

# rs1==x15, rd==x19, rs1_val == 1024, 
# opcode: xori ; op1:x15; dest:x19; op1val:0x00000400;  immval:2047
TEST_IMM_OP( xori, x19, x15, 0x3ff, 0x00000400, 2047, x1, 76, x4)
la x3,signature_x3_0

# rs1==x6, rd==x7, rs1_val == 2048, 
# opcode: xori ; op1:x6; dest:x7; op1val:0x00000800;  immval:1024
TEST_IMM_OP( xori, x7, x6, 0xc00, 0x00000800, 1024, x3, 0, x4)

# rs1==x30, rd==x23, rs1_val == 4096, 
# opcode: xori ; op1:x30; dest:x23; op1val:0x00001000;  immval:-1
TEST_IMM_OP( xori, x23, x30, 0xffffefff, 0x00001000, -1, x3, 4, x4)

# rs1==x29, rd==x15, rs1_val == 16384, 
# opcode: xori ; op1:x29; dest:x15; op1val:0x00004000;  immval:1024
TEST_IMM_OP( xori, x15, x29, 0x4400, 0x00004000, 1024, x3, 8, x4)

# rs1==x25, rd==x13, rs1_val == 32768, imm_val == 32
# opcode: xori ; op1:x25; dest:x13; op1val:0x00008000;  immval:32
TEST_IMM_OP( xori, x13, x25, 0x8020, 0x00008000, 32, x3, 12, x4)

# rs1==x24, rd==x2, rs1_val == 131072, 
# opcode: xori ; op1:x24; dest:x2; op1val:0x00020000;  immval:0
TEST_IMM_OP( xori, x2, x24, 0x20000, 0x00020000, 0, x3, 16, x4)

# rs1==x22, rd==x1, rs1_val == 262144, imm_val == 64
# opcode: xori ; op1:x22; dest:x1; op1val:0x00040000;  immval:64
TEST_IMM_OP( xori, x1, x22, 0x40040, 0x00040000, 64, x3, 20, x4)

# rs1==x11, rd==x27, rs1_val == 524288, imm_val == -3
# opcode: xori ; op1:x11; dest:x27; op1val:0x00080000;  immval:-3
TEST_IMM_OP( xori, x27, x11, 0xfff7fffd, 0x00080000, -3, x3, 24, x4)

# rs1==x27, rd==x21, rs1_val == 1048576, 
# opcode: xori ; op1:x27; dest:x21; op1val:0x00100000;  immval:-257
TEST_IMM_OP( xori, x21, x27, 0xffeffeff, 0x00100000, -257, x3, 28, x4)

# rs1==x31, rd==x14, rs1_val == 2097152, 
# opcode: xori ; op1:x31; dest:x14; op1val:0x00200000;  immval:-8
TEST_IMM_OP( xori, x14, x31, 0xffdffff8, 0x00200000, -8, x3, 32, x4)

# rs1==x21, rd==x0, rs1_val == 4194304, 
# opcode: xori ; op1:x21; dest:x0; op1val:0x00400000;  immval:32
TEST_IMM_OP( xori, x0, x21, 0x400020, 0x00400000, 32, x3, 36, x4)

# rs1==x1, rd==x10, rs1_val == 8388608, 
# opcode: xori ; op1:x1; dest:x10; op1val:0x00800000;  immval:1
TEST_IMM_OP( xori, x10, x1, 0x800001, 0x00800000, 1, x3, 40, x4)

# rs1==x8, rd==x26, rs1_val == 16777216, 
# opcode: xori ; op1:x8; dest:x26; op1val:0x01000000;  immval:3
TEST_IMM_OP( xori, x26, x8, 0x1000003, 0x01000000, 3, x3, 44, x4)

# rs1_val == 33554432, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xfdfffff8, 0x02000000, -8, x3, 48, x4)

# rs1_val == 67108864, imm_val == 512
# opcode: xori ; op1:x10; dest:x11; op1val:0x04000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x4000200, 0x04000000, 512, x3, 52, x4)

# rs1_val == 134217728, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x8000400, 0x08000000, 1024, x3, 56, x4)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x10000040, 0x10000000, 64, x3, 60, x4)

# rs1_val == 536870912, imm_val == -129
# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xdfffff7f, 0x20000000, -129, x3, 64, x4)

# rs1_val == 1073741824, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x40000200, 0x40000000, 512, x3, 68, x4)

# rs1_val == -2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffffffff, 0xfffffffe, 1, x3, 72, x4)

# rs1_val == -3, imm_val == 16
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffffed, 0xfffffffd, 16, x3, 76, x4)

# rs1_val == -5, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffffff3, 0xfffffffb, 8, x3, 80, x4)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x3f7, 0xfffffff7, -1024, x3, 84, x4)

# rs1_val == -33, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xffffffdc, 0xffffffdf, 3, x3, 88, x4)

# rs1_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xffffffbd, 0xffffffbf, 2, x3, 92, x4)

# rs1_val == -257, imm_val == -9
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x108, 0xfffffeff, -9, x3, 96, x4)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x205, 0xfffffdff, -6, x3, 100, x4)

# rs1_val == -524289, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfff7ffbf, 0xfff7ffff, 64, x3, 104, x4)

# rs1_val == -1048577, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffeffffe, 0xffefffff, 1, x3, 108, x4)

# rs1_val == -2097153, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xffdff800, 0xffdfffff, 2047, x3, 112, x4)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffbffff8, 0xffbfffff, 7, x3, 116, x4)

# rs1_val == -8388609, imm_val == -65
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x800040, 0xff7fffff, -65, x3, 120, x4)

# rs1_val == -33554433, imm_val == -33
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x2000020, 0xfdffffff, -33, x3, 124, x4)

# rs1_val == -67108865, imm_val == 128
# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xfbffff7f, 0xfbffffff, 128, x3, 128, x4)

# rs1_val == -134217729, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x8000002, 0xf7ffffff, -3, x3, 132, x4)

# rs1_val == -268435457, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x10000000, 0xefffffff, -1, x3, 136, x4)

# rs1_val == -536870913, imm_val == -2
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x20000001, 0xdfffffff, -2, x3, 140, x4)

# rs1_val == -1073741825, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x40000007, 0xbfffffff, -8, x3, 144, x4)

# imm_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff8;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x207, 0xfffffff8, -513, x3, 148, x4)

# imm_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x410, 0xffffffef, -1025, x3, 152, x4)

# imm_val == 1365, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x40000555, 0x40000000, 1365, x3, 156, x4)

# imm_val == -1366, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000005;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfffffaaf, 0x00000005, -1366, x3, 160, x4)

# rs1_val == 1431655765, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x55555555;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x55555557, 0x55555555, 2, x3, 164, x4)

# rs1_val == -1431655766, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x55555155, 0xaaaaaaaa, -1025, x3, 168, x4)

# imm_val == 256, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffc;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffefc, 0xfffffffc, 256, x3, 172, x4)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffffffff, 0xfffffbff, 1024, x3, 176, x4)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x802, 0xfffff7ff, -3, x3, 180, x4)

# rs1_val == -8193, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x2003, 0xffffdfff, -4, x3, 184, x4)

# rs1_val == -16385, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffffbffe, 0xffffbfff, 1, x3, 188, x4)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffff7ff8, 0xffff7fff, 7, x3, 192, x4)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x10004, 0xfffeffff, -5, x3, 196, x4)

# rs1_val == -131073, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x20005, 0xfffdffff, -6, x3, 200, x4)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x40200, 0xfffbffff, -513, x3, 204, x4)

# rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 2, imm_val == 2
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000002;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x0, 0x00000002, 2, x3, 208, x4)

# rs1_val < 0 and imm_val < 0, rs1_val == -4097, imm_val == -17
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x1010, 0xffffefff, -17, x3, 212, x4)

# rs1_val == 4194304, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00400000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x400020, 0x00400000, 32, x3, 216, x4)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x3_0:
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
