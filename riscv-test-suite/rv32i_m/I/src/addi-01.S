
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 != rd, rs1==x10, rd==x11, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffc;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffff8, 0xfffffffc, -4, x13, 0, x14)

# rs1 == rd, rs1==x1, rd==x1, rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -8388609
# opcode: addi ; op1:x1; dest:x1; op1val:0xff7fffff;  immval:9
TEST_IMM_OP( addi, x1, x1, 0xff800008, 0xff7fffff, 9, x13, 4, x14)

# rs1==x4, rd==x3, rs1_val > 0 and imm_val > 0, rs1_val == 134217728, imm_val == 1024
# opcode: addi ; op1:x4; dest:x3; op1val:0x08000000;  immval:1024
TEST_IMM_OP( addi, x3, x4, 0x8000400, 0x08000000, 1024, x13, 8, x14)

# rs1==x20, rd==x30, rs1_val > 0 and imm_val < 0, imm_val == -65, rs1_val == 536870912
# opcode: addi ; op1:x20; dest:x30; op1val:0x20000000;  immval:-65
TEST_IMM_OP( addi, x30, x20, 0x1fffffbf, 0x20000000, -65, x13, 12, x14)

# rs1==x9, rd==x15, rs1_val == (-2**(xlen-1)), imm_val == 8, rs1_val == -2147483648
# opcode: addi ; op1:x9; dest:x15; op1val:0x80000000;  immval:8
TEST_IMM_OP( addi, x15, x9, 0x80000008, 0x80000000, 8, x13, 16, x14)

# rs1==x2, rd==x25, rs1_val == 0, imm_val == -9
# opcode: addi ; op1:x2; dest:x25; op1val:0x00000000;  immval:-9
TEST_IMM_OP( addi, x25, x2, 0xfffffff7, 0x00000000, -9, x13, 20, x14)

# rs1==x12, rd==x24, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: addi ; op1:x12; dest:x24; op1val:0x7fffffff;  immval:-8
TEST_IMM_OP( addi, x24, x12, 0x7ffffff7, 0x7fffffff, -8, x13, 24, x14)

# rs1==x24, rd==x7, rs1_val == 1, imm_val == 4
# opcode: addi ; op1:x24; dest:x7; op1val:0x00000001;  immval:4
TEST_IMM_OP( addi, x7, x24, 0x5, 0x00000001, 4, x13, 28, x14)

# rs1==x28, rd==x5, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -268435457
# opcode: addi ; op1:x28; dest:x5; op1val:0xefffffff;  immval:-2048
TEST_IMM_OP( addi, x5, x28, 0xeffff7ff, 0xefffffff, -2048, x13, 32, x14)

# rs1==x18, rd==x28, imm_val == 0, rs1_val == 65536
# opcode: addi ; op1:x18; dest:x28; op1val:0x00010000;  immval:0
TEST_IMM_OP( addi, x28, x18, 0x10000, 0x00010000, 0, x13, 36, x14)

# rs1==x6, rd==x22, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: addi ; op1:x6; dest:x22; op1val:0x7fffffff;  immval:2047
TEST_IMM_OP( addi, x22, x6, 0x800007fe, 0x7fffffff, 2047, x13, 40, x14)

# rs1==x29, rd==x17, imm_val == 1, rs1_val == -3
# opcode: addi ; op1:x29; dest:x17; op1val:0xfffffffd;  immval:1
TEST_IMM_OP( addi, x17, x29, 0xfffffffe, 0xfffffffd, 1, x13, 44, x14)

# rs1==x3, rd==x20, rs1_val == 2, imm_val == -3
# opcode: addi ; op1:x3; dest:x20; op1val:0x00000002;  immval:-3
TEST_IMM_OP( addi, x20, x3, 0xffffffff, 0x00000002, -3, x13, 48, x14)

# rs1==x31, rd==x19, rs1_val == 4, 
# opcode: addi ; op1:x31; dest:x19; op1val:0x00000004;  immval:-1
TEST_IMM_OP( addi, x19, x31, 0x3, 0x00000004, -1, x13, 52, x14)

# rs1==x26, rd==x21, rs1_val == 8, 
# opcode: addi ; op1:x26; dest:x21; op1val:0x00000008;  immval:-65
TEST_IMM_OP( addi, x21, x26, 0xffffffc7, 0x00000008, -65, x13, 56, x14)

# rs1==x16, rd==x10, rs1_val == 16, 
# opcode: addi ; op1:x16; dest:x10; op1val:0x00000010;  immval:8
TEST_IMM_OP( addi, x10, x16, 0x18, 0x00000010, 8, x13, 60, x14)

# rs1==x8, rd==x29, rs1_val == 32, 
# opcode: addi ; op1:x8; dest:x29; op1val:0x00000020;  immval:-10
TEST_IMM_OP( addi, x29, x8, 0x16, 0x00000020, -10, x13, 64, x14)

# rs1==x22, rd==x23, rs1_val == 64, 
# opcode: addi ; op1:x22; dest:x23; op1val:0x00000040;  immval:-8
TEST_IMM_OP( addi, x23, x22, 0x38, 0x00000040, -8, x13, 68, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x15, rd==x2, rs1_val == 128, 
# opcode: addi ; op1:x15; dest:x2; op1val:0x00000080;  immval:1023
TEST_IMM_OP( addi, x2, x15, 0x47f, 0x00000080, 1023, x1, 0, x3)

# rs1==x21, rd==x13, rs1_val == 256, imm_val == -33
# opcode: addi ; op1:x21; dest:x13; op1val:0x00000100;  immval:-33
TEST_IMM_OP( addi, x13, x21, 0xdf, 0x00000100, -33, x1, 4, x3)

# rs1==x11, rd==x27, rs1_val == 512, imm_val == 1365
# opcode: addi ; op1:x11; dest:x27; op1val:0x00000200;  immval:1365
TEST_IMM_OP( addi, x27, x11, 0x755, 0x00000200, 1365, x1, 8, x3)

# rs1==x23, rd==x0, rs1_val == 1024, imm_val == -1025
# opcode: addi ; op1:x23; dest:x0; op1val:0x00000400;  immval:-1025
TEST_IMM_OP( addi, x0, x23, 0xffffffff, 0x00000400, -1025, x1, 12, x3)

# rs1==x25, rd==x18, rs1_val == 2048, imm_val == -17
# opcode: addi ; op1:x25; dest:x18; op1val:0x00000800;  immval:-17
TEST_IMM_OP( addi, x18, x25, 0x7ef, 0x00000800, -17, x1, 16, x3)

# rs1==x27, rd==x14, rs1_val == 4096, 
# opcode: addi ; op1:x27; dest:x14; op1val:0x00001000;  immval:5
TEST_IMM_OP( addi, x14, x27, 0x1005, 0x00001000, 5, x1, 20, x3)

# rs1==x0, rd==x4, rs1_val == 8192, 
# opcode: addi ; op1:x0; dest:x4; op1val:0x00002000;  immval:7
TEST_IMM_OP( addi, x4, x0, 0x2007, 0x00002000, 7, x1, 24, x3)

# rs1==x13, rd==x26, rs1_val == 16384, 
# opcode: addi ; op1:x13; dest:x26; op1val:0x00004000;  immval:1023
TEST_IMM_OP( addi, x26, x13, 0x43ff, 0x00004000, 1023, x1, 28, x3)

# rs1==x7, rd==x12, rs1_val == 32768, imm_val == 16
# opcode: addi ; op1:x7; dest:x12; op1val:0x00008000;  immval:16
TEST_IMM_OP( addi, x12, x7, 0x8010, 0x00008000, 16, x1, 32, x3)

# rs1==x14, rd==x16, rs1_val == 131072, 
# opcode: addi ; op1:x14; dest:x16; op1val:0x00020000;  immval:3
TEST_IMM_OP( addi, x16, x14, 0x20003, 0x00020000, 3, x1, 36, x3)

# rs1==x19, rd==x9, rs1_val == 262144, imm_val == -5
# opcode: addi ; op1:x19; dest:x9; op1val:0x00040000;  immval:-5
TEST_IMM_OP( addi, x9, x19, 0x3fffb, 0x00040000, -5, x1, 40, x3)

# rs1==x5, rd==x8, rs1_val == 524288, 
# opcode: addi ; op1:x5; dest:x8; op1val:0x00080000;  immval:7
TEST_IMM_OP( addi, x8, x5, 0x80007, 0x00080000, 7, x1, 44, x3)

# rs1==x17, rd==x6, rs1_val == 1048576, 
# opcode: addi ; op1:x17; dest:x6; op1val:0x00100000;  immval:1023
TEST_IMM_OP( addi, x6, x17, 0x1003ff, 0x00100000, 1023, x1, 48, x3)

# rs1==x30, rd==x31, rs1_val == 2097152, 
# opcode: addi ; op1:x30; dest:x31; op1val:0x00200000;  immval:9
TEST_IMM_OP( addi, x31, x30, 0x200009, 0x00200000, 9, x1, 52, x3)

# rs1_val == 4194304, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00400000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x400010, 0x00400000, 16, x1, 56, x3)

# rs1_val == 8388608, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00800000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x7fffdf, 0x00800000, -33, x1, 60, x3)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x01000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffd, 0x01000000, -3, x1, 64, x3)

# rs1_val == 33554432, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x2000010, 0x02000000, 16, x1, 68, x3)

# rs1_val == 67108864, imm_val == -129
# opcode: addi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x3ffff7f, 0x04000000, -129, x1, 72, x3)

# rs1_val == 268435456, imm_val == 32
# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x10000020, 0x10000000, 32, x1, 76, x3)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x40000400, 0x40000000, 1024, x1, 80, x3)

# rs1_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfffffffe, 0xfffffffe, 0, x1, 84, x3)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x1, 0xfffffffb, 6, x1, 88, x3)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffff7f7, 0xfffffff7, -2048, x1, 92, x3)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffff3, 0xffffffef, 4, x1, 96, x3)

# rs1_val == -33, imm_val == 2
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffffffe1, 0xffffffdf, 2, x1, 100, x3)

# rs1_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xffffffc6, 0xffffffbf, 7, x1, 104, x3)

# rs1_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffff76, 0xffffff7f, -9, x1, 108, x3)

# rs1_val == -524289, imm_val == -2
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfff7fffd, 0xfff7ffff, -2, x1, 112, x3)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfff00000, 0xffefffff, 1, x1, 116, x3)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffdfff7e, 0xffdfffff, -129, x1, 120, x3)

# rs1_val == -4194305, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffbffffd, 0xffbfffff, -2, x1, 124, x3)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfeffffff, 0xfeffffff, 0, x1, 128, x3)

# rs1_val == -33554433, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfdffffee, 0xfdffffff, -17, x1, 132, x3)

# rs1_val == -67108865, imm_val == 256
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xfc0000ff, 0xfbffffff, 256, x1, 136, x3)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xf8000003, 0xf7ffffff, 4, x1, 140, x3)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xdfffffbe, 0xdfffffff, -65, x1, 144, x3)

# rs1_val == -1073741825, imm_val == 64
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xc000003f, 0xbfffffff, 64, x1, 148, x3)

# rs1_val == 1431655765, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x55555555;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x55555d54, 0x55555555, 2047, x1, 152, x3)

# rs1_val == -1431655766, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaae, 0xaaaaaaaa, 4, x1, 156, x3)

# imm_val == 128, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00100000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x100080, 0x00100000, 128, x1, 160, x3)

# imm_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00100000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xffeff, 0x00100000, -257, x1, 164, x3)

# imm_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff9;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffffdf8, 0xfffffff9, -513, x1, 168, x3)

# imm_val == -1366, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1fffaaa, 0x02000000, -1366, x1, 172, x3)

# rs1_val == -4097, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffe7ff, 0xffffefff, -2048, x1, 176, x3)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x2fe, 0xfffffeff, 1023, x1, 180, x3)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffffafe, 0xfffffbff, -257, x1, 184, x3)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffff5ff, 0xfffffdff, -2048, x1, 188, x3)

# imm_val == 512, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x20000200, 0x20000000, 512, x1, 192, x3)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffff5fe, 0xfffff7ff, -513, x1, 196, x3)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffd7ff, 0xffffdfff, -2048, x1, 200, x3)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xffffc004, 0xffffbfff, 5, x1, 204, x3)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffff7ffd, 0xffff7fff, -2, x1, 208, x3)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffefff6, 0xfffeffff, -9, x1, 212, x3)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xfffe0008, 0xfffdffff, 9, x1, 216, x3)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffbffde, 0xfffbffff, -33, x1, 220, x3)

# rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -8388609
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xff800008, 0xff7fffff, 9, x1, 224, x3)

# rs1_val == 1024, imm_val == -1025
# opcode: addi ; op1:x10; dest:x11; op1val:0x00000400;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffffffff, 0x00000400, -1025, x1, 228, x3)

# rs1_val == 8192, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00002000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x2007, 0x00002000, 7, x1, 232, x3)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 59*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
