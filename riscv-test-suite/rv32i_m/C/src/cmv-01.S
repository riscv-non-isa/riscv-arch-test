
#This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs2 != rd and rs2 != 0, rd==x24, rs2==x2, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: c.mv; op2:x2; dest:x24; op2val:0x80000000
TEST_CMV_OP( c.mv, x24, x2, 0x00000000, 0x80000000, x7, 0, x23)

# rs2 == rd and rs2 != 0, rd==x11, rs2==x11, rs2_val == 0, 
# opcode: c.mv; op2:x11; dest:x11; op2val:0x00000000
TEST_CMV_OP( c.mv, x11, x11, 0x00000000, 0x00000000, x7, 4, x23)

# rd==x26, rs2==x8, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: c.mv; op2:x8; dest:x26; op2val:0x7fffffff
TEST_CMV_OP( c.mv, x26, x8, 0x00000000, 0x7fffffff, x7, 8, x23)

# rd==x4, rs2==x21, rs2_val == 1, 
# opcode: c.mv; op2:x21; dest:x4; op2val:0x00000001
TEST_CMV_OP( c.mv, x4, x21, 0x00000000, 0x00000001, x7, 12, x23)

# rd==x1, rs2==x18, rs2_val == 2, 
# opcode: c.mv; op2:x18; dest:x1; op2val:0x00000002
TEST_CMV_OP( c.mv, x1, x18, 0x00000000, 0x00000002, x7, 16, x23)

# rd==x12, rs2==x15, rs2_val == 4, 
# opcode: c.mv; op2:x15; dest:x12; op2val:0x00000004
TEST_CMV_OP( c.mv, x12, x15, 0x00000000, 0x00000004, x7, 20, x23)

# rd==x8, rs2==x12, rs2_val == 8, 
# opcode: c.mv; op2:x12; dest:x8; op2val:0x00000008
TEST_CMV_OP( c.mv, x8, x12, 0x00000000, 0x00000008, x7, 24, x23)

# rd==x15, rs2==x1, rs2_val == 16, 
# opcode: c.mv; op2:x1; dest:x15; op2val:0x00000010
TEST_CMV_OP( c.mv, x15, x1, 0x00000000, 0x00000010, x7, 28, x23)

# rd==x30, rs2==x29, rs2_val == 32, 
# opcode: c.mv; op2:x29; dest:x30; op2val:0x00000020
TEST_CMV_OP( c.mv, x30, x29, 0x00000000, 0x00000020, x7, 32, x23)

# rd==x28, rs2==x3, rs2_val == 64, 
# opcode: c.mv; op2:x3; dest:x28; op2val:0x00000040
TEST_CMV_OP( c.mv, x28, x3, 0x00000000, 0x00000040, x7, 36, x23)

# rd==x27, rs2==x13, rs2_val == 128, 
# opcode: c.mv; op2:x13; dest:x27; op2val:0x00000080
TEST_CMV_OP( c.mv, x27, x13, 0x00000000, 0x00000080, x7, 40, x23)

# rd==x0, rs2==x4, rs2_val == 256, 
# opcode: c.mv; op2:x4; dest:x0; op2val:0x00000100
TEST_CMV_OP( c.mv, x0, x4, 0x00000000, 0x00000100, x7, 44, x23)

# rd==x14, rs2==x24, rs2_val == 512, 
# opcode: c.mv; op2:x24; dest:x14; op2val:0x00000200
TEST_CMV_OP( c.mv, x14, x24, 0x00000000, 0x00000200, x7, 48, x23)

# rd==x2, rs2==x27, rs2_val == 1024, 
# opcode: c.mv; op2:x27; dest:x2; op2val:0x00000400
TEST_CMV_OP( c.mv, x2, x27, 0x00000000, 0x00000400, x7, 52, x23)

# rd==x6, rs2==x22, rs2_val == 2048, 
# opcode: c.mv; op2:x22; dest:x6; op2val:0x00000800
TEST_CMV_OP( c.mv, x6, x22, 0x00000000, 0x00000800, x7, 56, x23)

# rd==x20, rs2==x14, rs2_val == 4096, 
# opcode: c.mv; op2:x14; dest:x20; op2val:0x00001000
TEST_CMV_OP( c.mv, x20, x14, 0x00000000, 0x00001000, x7, 60, x23)

# rd==x16, rs2==x30, rs2_val == 8192, 
# opcode: c.mv; op2:x30; dest:x16; op2val:0x00002000
TEST_CMV_OP( c.mv, x16, x30, 0x00000000, 0x00002000, x7, 64, x23)

# rd==x19, rs2==x6, rs2_val == 16384, 
# opcode: c.mv; op2:x6; dest:x19; op2val:0x00004000
TEST_CMV_OP( c.mv, x19, x6, 0x00000000, 0x00004000, x7, 68, x23)

# rd==x10, rs2==x16, rs2_val == 32768, 
# opcode: c.mv; op2:x16; dest:x10; op2val:0x00008000
TEST_CMV_OP( c.mv, x10, x16, 0x00000000, 0x00008000, x7, 72, x23)

# rd==x25, rs2==x5, rs2_val == 65536, 
# opcode: c.mv; op2:x5; dest:x25; op2val:0x00010000
TEST_CMV_OP( c.mv, x25, x5, 0x00000000, 0x00010000, x7, 76, x23)

# rd==x17, rs2==x9, rs2_val == 131072, 
# opcode: c.mv; op2:x9; dest:x17; op2val:0x00020000
TEST_CMV_OP( c.mv, x17, x9, 0x00000000, 0x00020000, x7, 80, x23)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x22, rs2==x19, rs2_val == 262144, 
# opcode: c.mv; op2:x19; dest:x22; op2val:0x00040000
TEST_CMV_OP( c.mv, x22, x19, 0x00000000, 0x00040000, x1, 0, x2)

# rd==x3, rs2==x28, rs2_val == 524288, 
# opcode: c.mv; op2:x28; dest:x3; op2val:0x00080000
TEST_CMV_OP( c.mv, x3, x28, 0x00000000, 0x00080000, x1, 4, x2)

# rd==x5, rs2==x7, rs2_val == 1048576, 
# opcode: c.mv; op2:x7; dest:x5; op2val:0x00100000
TEST_CMV_OP( c.mv, x5, x7, 0x00000000, 0x00100000, x1, 8, x2)

# rd==x9, rs2==x17, rs2_val == 2097152, 
# opcode: c.mv; op2:x17; dest:x9; op2val:0x00200000
TEST_CMV_OP( c.mv, x9, x17, 0x00000000, 0x00200000, x1, 12, x2)

# rd==x21, rs2==x23, rs2_val == 4194304, 
# opcode: c.mv; op2:x23; dest:x21; op2val:0x00400000
TEST_CMV_OP( c.mv, x21, x23, 0x00000000, 0x00400000, x1, 16, x2)

# rd==x23, rs2==x10, rs2_val == 8388608, 
# opcode: c.mv; op2:x10; dest:x23; op2val:0x00800000
TEST_CMV_OP( c.mv, x23, x10, 0x00000000, 0x00800000, x1, 20, x2)

# rd==x31, rs2==x26, rs2_val == 16777216, 
# opcode: c.mv; op2:x26; dest:x31; op2val:0x01000000
TEST_CMV_OP( c.mv, x31, x26, 0x00000000, 0x01000000, x1, 24, x2)

# rd==x13, rs2==x31, rs2_val == 33554432, 
# opcode: c.mv; op2:x31; dest:x13; op2val:0x02000000
TEST_CMV_OP( c.mv, x13, x31, 0x00000000, 0x02000000, x1, 28, x2)

# rd==x7, rs2==x20, rs2_val == 67108864, 
# opcode: c.mv; op2:x20; dest:x7; op2val:0x04000000
TEST_CMV_OP( c.mv, x7, x20, 0x00000000, 0x04000000, x1, 32, x2)

# rd==x29, rs2==x25, rs2_val == 134217728, 
# opcode: c.mv; op2:x25; dest:x29; op2val:0x08000000
TEST_CMV_OP( c.mv, x29, x25, 0x00000000, 0x08000000, x1, 36, x2)

# rd==x18, rs2_val == 268435456, 
# opcode: c.mv; op2:x13; dest:x18; op2val:0x10000000
TEST_CMV_OP( c.mv, x18, x13, 0x00000000, 0x10000000, x1, 40, x2)

# rs2_val == 536870912, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x20000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x20000000, x1, 44, x2)

# rs2_val == 1073741824, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x40000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x40000000, x1, 48, x2)

# rs2_val == -2, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffe
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffe, x1, 52, x2)

# rs2_val == -3, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffd
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffd, x1, 56, x2)

# rs2_val == -536870913, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xdfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xdfffffff, x1, 60, x2)

# rs2_val == -1073741825, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xbfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xbfffffff, x1, 64, x2)

# rs2_val == 1431655765, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x55555555
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555555, x1, 68, x2)

# rs2_val == -1431655766, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xaaaaaaaa
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xaaaaaaaa, x1, 72, x2)

# rs2_val == -5, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffb
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffb, x1, 76, x2)

# rs2_val == -9, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffff7
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffff7, x1, 80, x2)

# rs2_val == -17, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffef
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffef, x1, 84, x2)

# rs2_val == -33, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffdf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffdf, x1, 88, x2)

# rs2_val == -65, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffbf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffbf, x1, 92, x2)

# rs2_val == -129, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffff7f
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffff7f, x1, 96, x2)

# rs2_val == -257, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffeff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffeff, x1, 100, x2)

# rs2_val == -513, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffdff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffdff, x1, 104, x2)

# rs2_val == -1025, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffbff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffbff, x1, 108, x2)

# rs2_val == -2049, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffff7ff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffff7ff, x1, 112, x2)

# rs2_val == -4097, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffefff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffefff, x1, 116, x2)

# rs2_val == -8193, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffdfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffdfff, x1, 120, x2)

# rs2_val == -16385, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffbfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffbfff, x1, 124, x2)

# rs2_val == -32769, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffff7fff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffff7fff, x1, 128, x2)

# rs2_val == -65537, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffeffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffeffff, x1, 132, x2)

# rs2_val == -131073, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffdffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffdffff, x1, 136, x2)

# rs2_val == -262145, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffbffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffbffff, x1, 140, x2)

# rs2_val == -524289, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfff7ffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfff7ffff, x1, 144, x2)

# rs2_val == -1048577, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffefffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffefffff, x1, 148, x2)

# rs2_val == -2097153, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffdfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffdfffff, x1, 152, x2)

# rs2_val == -4194305, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffbfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffbfffff, x1, 156, x2)

# rs2_val == -8388609, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xff7fffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xff7fffff, x1, 160, x2)

# rs2_val == -16777217, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfeffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfeffffff, x1, 164, x2)

# rs2_val == -33554433, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfdffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfdffffff, x1, 168, x2)

# rs2_val == -67108865, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfbffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfbffffff, x1, 172, x2)

# rs2_val == -134217729, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xf7ffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xf7ffffff, x1, 176, x2)

# rs2_val == -268435457, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xefffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xefffffff, x1, 180, x2)

# rs2_val == 256, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x00000100
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x00000100, x1, 184, x2)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 47*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
