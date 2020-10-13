
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rd, rs1==x8, rd==x13, rs1_val == imm_val, imm_val == -513, rs1_val < 0 and imm_val < 0, rs1_val == -513
# opcode: ori ; op1:x8; dest:x13; op1val:0xfffffdff;  immval:-513
TEST_IMM_OP( ori, x13, x8, 0xfffffdff, 0xfffffdff, -513, x15, 0, x19)

# rs1 == rd, rs1==x23, rd==x23, rs1_val != imm_val, imm_val == 32, rs1_val < 0 and imm_val > 0, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: ori ; op1:x23; dest:x23; op1val:0x80000000;  immval:32
TEST_IMM_OP( ori, x23, x23, 0x80000020, 0x80000000, 32, x15, 4, x19)

# rs1==x29, rd==x5, rs1_val > 0 and imm_val > 0, rs1_val == 256
# opcode: ori ; op1:x29; dest:x5; op1val:0x00000100;  immval:5
TEST_IMM_OP( ori, x5, x29, 0x105, 0x00000100, 5, x15, 8, x19)

# rs1==x26, rd==x0, rs1_val > 0 and imm_val < 0, rs1_val == 32768
# opcode: ori ; op1:x26; dest:x0; op1val:0x00008000;  immval:-1024
TEST_IMM_OP( ori, x0, x26, 0xfffffc00, 0x00008000, -1024, x15, 12, x19)

# rs1==x21, rd==x12, rs1_val == 0, imm_val == 512
# opcode: ori ; op1:x21; dest:x12; op1val:0x00000000;  immval:512
TEST_IMM_OP( ori, x12, x21, 0x200, 0x00000000, 512, x15, 16, x19)

# rs1==x12, rd==x1, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: ori ; op1:x12; dest:x1; op1val:0x7fffffff;  immval:5
TEST_IMM_OP( ori, x1, x12, 0x7fffffff, 0x7fffffff, 5, x15, 20, x19)

# rs1==x9, rd==x27, rs1_val == 1, 
# opcode: ori ; op1:x9; dest:x27; op1val:0x00000001;  immval:32
TEST_IMM_OP( ori, x27, x9, 0x21, 0x00000001, 32, x15, 24, x19)

# rs1==x27, rd==x2, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 65536
# opcode: ori ; op1:x27; dest:x2; op1val:0x00010000;  immval:-2048
TEST_IMM_OP( ori, x2, x27, 0xfffff800, 0x00010000, -2048, x15, 28, x19)

# rs1==x6, rd==x9, imm_val == 0, rs1_val == -17
# opcode: ori ; op1:x6; dest:x9; op1val:0xffffffef;  immval:0
TEST_IMM_OP( ori, x9, x6, 0xffffffef, 0xffffffef, 0, x15, 32, x19)

# rs1==x20, rd==x4, imm_val == (2**(12-1)-1), rs1_val == -536870913, imm_val == 2047
# opcode: ori ; op1:x20; dest:x4; op1val:0xdfffffff;  immval:2047
TEST_IMM_OP( ori, x4, x20, 0xdfffffff, 0xdfffffff, 2047, x15, 36, x19)

# rs1==x14, rd==x22, imm_val == 1, 
# opcode: ori ; op1:x14; dest:x22; op1val:0x00008000;  immval:1
TEST_IMM_OP( ori, x22, x14, 0x8001, 0x00008000, 1, x15, 40, x19)

# rs1==x7, rd==x3, rs1_val == 2, imm_val == -129
# opcode: ori ; op1:x7; dest:x3; op1val:0x00000002;  immval:-129
TEST_IMM_OP( ori, x3, x7, 0xffffff7f, 0x00000002, -129, x15, 44, x19)

# rs1==x10, rd==x26, rs1_val == 4, 
# opcode: ori ; op1:x10; dest:x26; op1val:0x00000004;  immval:-2048
TEST_IMM_OP( ori, x26, x10, 0xfffff804, 0x00000004, -2048, x15, 48, x19)

# rs1==x2, rd==x31, rs1_val == 8, 
# opcode: ori ; op1:x2; dest:x31; op1val:0x00000008;  immval:1
TEST_IMM_OP( ori, x31, x2, 0x9, 0x00000008, 1, x15, 52, x19)

# rs1==x0, rd==x11, rs1_val == 16, 
# opcode: ori ; op1:x0; dest:x11; op1val:0x00000010;  immval:7
TEST_IMM_OP( ori, x11, x0, 0x17, 0x00000010, 7, x15, 56, x19)

# rs1==x11, rd==x21, rs1_val == 32, 
# opcode: ori ; op1:x11; dest:x21; op1val:0x00000020;  immval:2047
TEST_IMM_OP( ori, x21, x11, 0x7ff, 0x00000020, 2047, x15, 60, x19)

# rs1==x22, rd==x8, rs1_val == 64, 
# opcode: ori ; op1:x22; dest:x8; op1val:0x00000040;  immval:-129
TEST_IMM_OP( ori, x8, x22, 0xffffff7f, 0x00000040, -129, x15, 64, x19)

# rs1==x25, rd==x20, rs1_val == 128, 
# opcode: ori ; op1:x25; dest:x20; op1val:0x00000080;  immval:-2048
TEST_IMM_OP( ori, x20, x25, 0xfffff880, 0x00000080, -2048, x15, 68, x19)

# rs1==x16, rd==x10, rs1_val == 512, 
# opcode: ori ; op1:x16; dest:x10; op1val:0x00000200;  immval:-7
TEST_IMM_OP( ori, x10, x16, 0xfffffff9, 0x00000200, -7, x15, 72, x19)

# rs1==x18, rd==x28, rs1_val == 1024, 
# opcode: ori ; op1:x18; dest:x28; op1val:0x00000400;  immval:-8
TEST_IMM_OP( ori, x28, x18, 0xfffffff8, 0x00000400, -8, x15, 76, x19)

# rs1==x17, rd==x7, rs1_val == 2048, 
# opcode: ori ; op1:x17; dest:x7; op1val:0x00000800;  immval:6
TEST_IMM_OP( ori, x7, x17, 0x806, 0x00000800, 6, x15, 80, x19)

# rs1==x5, rd==x19, rs1_val == 4096, imm_val == -2
# opcode: ori ; op1:x5; dest:x19; op1val:0x00001000;  immval:-2
TEST_IMM_OP( ori, x19, x5, 0xfffffffe, 0x00001000, -2, x15, 84, x7)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x3, rd==x29, rs1_val == 8192, imm_val == -257
# opcode: ori ; op1:x3; dest:x29; op1val:0x00002000;  immval:-257
TEST_IMM_OP( ori, x29, x3, 0xfffffeff, 0x00002000, -257, x2, 0, x7)

# rs1==x28, rd==x6, rs1_val == 16384, 
# opcode: ori ; op1:x28; dest:x6; op1val:0x00004000;  immval:2047
TEST_IMM_OP( ori, x6, x28, 0x47ff, 0x00004000, 2047, x2, 4, x7)

# rs1==x4, rd==x24, rs1_val == 131072, 
# opcode: ori ; op1:x4; dest:x24; op1val:0x00020000;  immval:32
TEST_IMM_OP( ori, x24, x4, 0x20020, 0x00020000, 32, x2, 8, x7)

# rs1==x13, rd==x14, rs1_val == 262144, 
# opcode: ori ; op1:x13; dest:x14; op1val:0x00040000;  immval:1023
TEST_IMM_OP( ori, x14, x13, 0x403ff, 0x00040000, 1023, x2, 12, x7)

# rs1==x15, rd==x16, rs1_val == 524288, imm_val == 2
# opcode: ori ; op1:x15; dest:x16; op1val:0x00080000;  immval:2
TEST_IMM_OP( ori, x16, x15, 0x80002, 0x00080000, 2, x2, 16, x7)

# rs1==x19, rd==x18, rs1_val == 1048576, 
# opcode: ori ; op1:x19; dest:x18; op1val:0x00100000;  immval:7
TEST_IMM_OP( ori, x18, x19, 0x100007, 0x00100000, 7, x2, 20, x7)

# rs1==x31, rd==x17, rs1_val == 2097152, imm_val == -1366
# opcode: ori ; op1:x31; dest:x17; op1val:0x00200000;  immval:-1366
TEST_IMM_OP( ori, x17, x31, 0xfffffaaa, 0x00200000, -1366, x2, 24, x7)

# rs1==x24, rd==x30, rs1_val == 4194304, 
# opcode: ori ; op1:x24; dest:x30; op1val:0x00400000;  immval:32
TEST_IMM_OP( ori, x30, x24, 0x400020, 0x00400000, 32, x2, 28, x7)

# rs1==x1, rd==x25, rs1_val == 8388608, 
# opcode: ori ; op1:x1; dest:x25; op1val:0x00800000;  immval:9
TEST_IMM_OP( ori, x25, x1, 0x800009, 0x00800000, 9, x2, 32, x7)

# rs1==x30, rd==x15, rs1_val == 16777216, imm_val == -33
# opcode: ori ; op1:x30; dest:x15; op1val:0x01000000;  immval:-33
TEST_IMM_OP( ori, x15, x30, 0xffffffdf, 0x01000000, -33, x2, 36, x7)

# rs1_val == 33554432, imm_val == -1025
# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0x02000000, -1025, x2, 40, x7)

# rs1_val == 67108864, imm_val == -3
# opcode: ori ; op1:x10; dest:x11; op1val:0x04000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0x04000000, -3, x2, 44, x7)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x8000000, 0x08000000, 0, x2, 48, x7)

# rs1_val == 268435456, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x10000002, 0x10000000, 2, x2, 52, x7)

# rs1_val == 536870912, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0x20000000, -3, x2, 56, x7)

# rs1_val == 1073741824, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x40000002, 0x40000000, 2, x2, 60, x7)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffe, 2047, x2, 64, x7)

# rs1_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0xfffffffd, -7, x2, 68, x7)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffb, 7, x2, 72, x7)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffff7, -257, x2, 76, x7)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, -513, x2, 80, x7)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0xffffffbf, 1, x2, 84, x7)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffff7f, 1023, x2, 88, x7)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xfffffeff, 5, x2, 92, x7)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffbff, -33, x2, 96, x7)

# rs1_val == -2049, imm_val == 256
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xfffff7ff, 0xfffff7ff, 256, x2, 100, x7)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xffffefff, 0xffffefff, 32, x2, 104, x7)

# rs1_val == -524289, imm_val == 1365
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xfff7ffff, 0xfff7ffff, 1365, x2, 108, x7)

# rs1_val == -1048577, imm_val == -9
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffefffff, -9, x2, 112, x7)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffdfffff, -7, x2, 116, x7)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffbfffff, -8, x2, 120, x7)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xff7fffff, -2048, x2, 124, x7)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( ori, x11, x10, 0xfeffffff, 0xfeffffff, 6, x2, 128, x7)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfdffffff, -4, x2, 132, x7)

# rs1_val == -67108865, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfbffffff, -1366, x2, 136, x7)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xf7ffffff, -1366, x2, 140, x7)

# rs1_val == -268435457, imm_val == -17
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xefffffff, -17, x2, 144, x7)

# rs1_val == -1073741825, imm_val == 16
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xbfffffff, 0xbfffffff, 16, x2, 148, x7)

# rs1_val == 1431655765, imm_val == 4
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x55555555, 0x55555555, 4, x2, 152, x7)

# imm_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffff, -65, x2, 156, x7)

# rs1_val == -1431655766, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xaaaaaaaa, -257, x2, 160, x7)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xffff7fff, 0xffff7fff, 1365, x2, 164, x7)

# imm_val == 8, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffff7fff, 0xffff7fff, 8, x2, 168, x7)

# imm_val == 64, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000000;  immval:64
TEST_IMM_OP( ori, x11, x10, 0x40, 0x00000000, 64, x2, 172, x7)

# imm_val == 128, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfffffffb, 0xfffffffb, 128, x2, 176, x7)

# imm_val == 1024, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00010000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x10400, 0x00010000, 1024, x2, 180, x7)

# rs1_val == -8193, imm_val == -5
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffdfff, -5, x2, 184, x7)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffbfff, -65, x2, 188, x7)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffeffff, -513, x2, 192, x7)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffdffff, -10, x2, 196, x7)

# rs1_val == -262145, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffbffff, -513, x2, 200, x7)

# rs1_val != imm_val, imm_val == 32, rs1_val < 0 and imm_val > 0, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: ori ; op1:x10; dest:x11; op1val:0x80000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x80000020, 0x80000000, 32, x2, 204, x7)

# rs1_val > 0 and imm_val < 0, rs1_val == 32768
# opcode: ori ; op1:x10; dest:x11; op1val:0x00008000;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffc00, 0x00008000, -1024, x2, 208, x7)

# rs1_val == 16, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000010;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x17, 0x00000010, 7, x2, 212, x7)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 54*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
