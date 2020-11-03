
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x5, rd==x4, rs1_val == imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 1024, imm_val == 1024
# opcode: sltiu ; op1:x5; dest:x4; op1val:0x00000400;  immval:1024
TEST_IMM_OP( sltiu, x4, x5, 0x0, 0x00000400, 1024, x7, 0, x19)

# rs1 == rd, rs1==x28, rd==x28, rs1_val != imm_val and rs1_val > 0 and imm_val > 0, imm_val == 4063, rs1_val == 4160749567
# opcode: sltiu ; op1:x28; dest:x28; op1val:0xf7ffffff;  immval:4063
TEST_IMM_OP( sltiu, x28, x28, 0x0, 0xf7ffffff, 4063, x7, 4, x19)

# rs1==x6, rd==x1, rs1_val == 0, 
# opcode: sltiu ; op1:x6; dest:x1; op1val:0x00000000;  immval:15
TEST_IMM_OP( sltiu, x1, x6, 0x1, 0x00000000, 15, x7, 8, x19)

# rs1==x14, rd==x22, rs1_val == (2**(xlen)-1), imm_val == 256
# opcode: sltiu ; op1:x14; dest:x22; op1val:0xffffffff;  immval:256
TEST_IMM_OP( sltiu, x22, x14, 0x0, 0xffffffff, 256, x7, 12, x19)

# rs1==x26, rd==x29, rs1_val == 1, imm_val == 0
# opcode: sltiu ; op1:x26; dest:x29; op1val:0x00000001;  immval:0
TEST_IMM_OP( sltiu, x29, x26, 0x0, 0x00000001, 0, x7, 16, x19)

# rs1==x22, rd==x8, imm_val == (2**(12)-1), rs1_val == 8
# opcode: sltiu ; op1:x22; dest:x8; op1val:0x00000008;  immval:4095
TEST_IMM_OP( sltiu, x8, x22, 0x1, 0x00000008, 4095, x7, 20, x19)

# rs1==x15, rd==x17, imm_val == 1, 
# opcode: sltiu ; op1:x15; dest:x17; op1val:0x0000000e;  immval:1
TEST_IMM_OP( sltiu, x17, x15, 0x0, 0x0000000e, 1, x7, 24, x19)

# rs1==x20, rd==x10, rs1_val == 2, 
# opcode: sltiu ; op1:x20; dest:x10; op1val:0x00000002;  immval:17
TEST_IMM_OP( sltiu, x10, x20, 0x1, 0x00000002, 17, x7, 28, x19)

# rs1==x12, rd==x11, rs1_val == 4, 
# opcode: sltiu ; op1:x12; dest:x11; op1val:0x00000004;  immval:11
TEST_IMM_OP( sltiu, x11, x12, 0x1, 0x00000004, 11, x7, 32, x19)

# rs1==x10, rd==x0, rs1_val == 16, imm_val == 3583
# opcode: sltiu ; op1:x10; dest:x0; op1val:0x00000010;  immval:3583
TEST_IMM_OP( sltiu, x0, x10, 0x1, 0x00000010, 3583, x7, 36, x19)

# rs1==x3, rd==x20, rs1_val == 32, 
# opcode: sltiu ; op1:x3; dest:x20; op1val:0x00000020;  immval:3583
TEST_IMM_OP( sltiu, x20, x3, 0x1, 0x00000020, 3583, x7, 40, x19)

# rs1==x27, rd==x5, rs1_val == 64, imm_val == 32
# opcode: sltiu ; op1:x27; dest:x5; op1val:0x00000040;  immval:32
TEST_IMM_OP( sltiu, x5, x27, 0x0, 0x00000040, 32, x7, 44, x19)

# rs1==x2, rd==x14, rs1_val == 128, imm_val == 4031
# opcode: sltiu ; op1:x2; dest:x14; op1val:0x00000080;  immval:4031
TEST_IMM_OP( sltiu, x14, x2, 0x1, 0x00000080, 4031, x7, 48, x19)

# rs1==x8, rd==x6, rs1_val == 256, imm_val == 4094
# opcode: sltiu ; op1:x8; dest:x6; op1val:0x00000100;  immval:4094
TEST_IMM_OP( sltiu, x6, x8, 0x1, 0x00000100, 4094, x7, 52, x19)

# rs1==x25, rd==x26, rs1_val == 512, 
# opcode: sltiu ; op1:x25; dest:x26; op1val:0x00000200;  immval:3583
TEST_IMM_OP( sltiu, x26, x25, 0x1, 0x00000200, 3583, x7, 56, x19)

# rs1==x23, rd==x27, rs1_val == 2048, 
# opcode: sltiu ; op1:x23; dest:x27; op1val:0x00000800;  immval:1024
TEST_IMM_OP( sltiu, x27, x23, 0x0, 0x00000800, 1024, x7, 60, x19)

# rs1==x0, rd==x21, rs1_val == 4096, 
# opcode: sltiu ; op1:x0; dest:x21; op1val:0x00001000;  immval:3583
TEST_IMM_OP( sltiu, x21, x0, 0x0, 0x00001000, 3583, x7, 64, x19)

# rs1==x13, rd==x18, rs1_val == 8192, imm_val == 2
# opcode: sltiu ; op1:x13; dest:x18; op1val:0x00002000;  immval:2
TEST_IMM_OP( sltiu, x18, x13, 0x0, 0x00002000, 2, x7, 68, x19)

# rs1==x31, rd==x16, rs1_val == 16384, 
# opcode: sltiu ; op1:x31; dest:x16; op1val:0x00004000;  immval:4031
TEST_IMM_OP( sltiu, x16, x31, 0x0, 0x00004000, 4031, x7, 72, x19)

# rs1==x9, rd==x30, rs1_val == 32768, 
# opcode: sltiu ; op1:x9; dest:x30; op1val:0x00008000;  immval:32
TEST_IMM_OP( sltiu, x30, x9, 0x0, 0x00008000, 32, x7, 76, x19)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x1, rd==x19, rs1_val == 65536, 
# opcode: sltiu ; op1:x1; dest:x19; op1val:0x00010000;  immval:2
TEST_IMM_OP( sltiu, x19, x1, 0x0, 0x00010000, 2, x5, 0, x6)

# rs1==x18, rd==x15, rs1_val == 131072, 
# opcode: sltiu ; op1:x18; dest:x15; op1val:0x00020000;  immval:1
TEST_IMM_OP( sltiu, x15, x18, 0x0, 0x00020000, 1, x5, 4, x6)

# rs1==x16, rd==x31, rs1_val == 262144, imm_val == 8
# opcode: sltiu ; op1:x16; dest:x31; op1val:0x00040000;  immval:8
TEST_IMM_OP( sltiu, x31, x16, 0x0, 0x00040000, 8, x5, 8, x6)

# rs1==x21, rd==x7, rs1_val == 524288, 
# opcode: sltiu ; op1:x21; dest:x7; op1val:0x00080000;  immval:4095
TEST_IMM_OP( sltiu, x7, x21, 0x0, 0x00080000, 4095, x5, 12, x6)

# rs1==x19, rd==x13, rs1_val == 1048576, 
# opcode: sltiu ; op1:x19; dest:x13; op1val:0x00100000;  immval:1024
TEST_IMM_OP( sltiu, x13, x19, 0x0, 0x00100000, 1024, x5, 16, x6)

# rs1==x17, rd==x24, rs1_val == 2097152, 
# opcode: sltiu ; op1:x17; dest:x24; op1val:0x00200000;  immval:18
TEST_IMM_OP( sltiu, x24, x17, 0x0, 0x00200000, 18, x5, 20, x6)

# rs1==x11, rd==x23, rs1_val == 4194304, 
# opcode: sltiu ; op1:x11; dest:x23; op1val:0x00400000;  immval:6
TEST_IMM_OP( sltiu, x23, x11, 0x0, 0x00400000, 6, x5, 24, x6)

# rs1==x30, rd==x25, rs1_val == 8388608, imm_val == 3071
# opcode: sltiu ; op1:x30; dest:x25; op1val:0x00800000;  immval:3071
TEST_IMM_OP( sltiu, x25, x30, 0x0, 0x00800000, 3071, x5, 28, x6)

# rs1==x24, rd==x9, rs1_val == 16777216, 
# opcode: sltiu ; op1:x24; dest:x9; op1val:0x01000000;  immval:3583
TEST_IMM_OP( sltiu, x9, x24, 0x0, 0x01000000, 3583, x5, 32, x6)

# rs1==x29, rd==x2, rs1_val == 33554432, imm_val == 2048
# opcode: sltiu ; op1:x29; dest:x2; op1val:0x02000000;  immval:2048
TEST_IMM_OP( sltiu, x2, x29, 0x0, 0x02000000, 2048, x5, 36, x6)

# rs1==x7, rd==x12, rs1_val == 67108864, 
# opcode: sltiu ; op1:x7; dest:x12; op1val:0x04000000;  immval:13
TEST_IMM_OP( sltiu, x12, x7, 0x0, 0x04000000, 13, x5, 40, x6)

# rs1==x4, rd==x3, rs1_val == 134217728, imm_val == 2047
# opcode: sltiu ; op1:x4; dest:x3; op1val:0x08000000;  immval:2047
TEST_IMM_OP( sltiu, x3, x4, 0x0, 0x08000000, 2047, x5, 44, x6)

# rs1_val == 268435456, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x10000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x10000000, 18, x5, 48, x6)

# rs1_val == 536870912, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 2, x5, 52, x6)

# rs1_val == 1073741824, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 14, x5, 56, x6)

# rs1_val == 2147483648, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 3, x5, 60, x6)

# rs1_val == 4294967294, imm_val == 2730
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffe, 2730, x5, 64, x6)

# rs1_val == 4294967293, imm_val == 4093
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffd, 4093, x5, 68, x6)

# rs1_val == 4294967291, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffb, 2, x5, 72, x6)

# rs1_val == 4294967287, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 4031, x5, 76, x6)

# rs1_val == 4294967279, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffef;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffef, 13, x5, 80, x6)

# rs1_val == 4294967263, imm_val == 4087
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdf, 4087, x5, 84, x6)

# rs1_val == 4294967231, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 10, x5, 88, x6)

# rs1_val == 4294967167, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7f, 2048, x5, 92, x6)

# rs1_val == 4294967039, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeff, 17, x5, 96, x6)

# rs1_val == 4294966783, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdff, 4063, x5, 100, x6)

# rs1_val == 4294966271, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbff, 17, x5, 104, x6)

# rs1_val == 4294965247, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ff, 4087, x5, 108, x6)

# rs1_val == 4261412863, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffff, 7, x5, 112, x6)

# rs1_val == 4227858431, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffff, 2730, x5, 116, x6)

# rs1_val == 4026531839, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffff, 7, x5, 120, x6)

# rs1_val == 3758096383, imm_val == 64
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffff, 64, x5, 124, x6)

# rs1_val == 3221225471, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffff, 8, x5, 128, x6)

# rs1_val == 2147483647, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffff, 1024, x5, 132, x6)

# rs1_val == 1431655765, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x55555555;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x55555555, 3071, x5, 136, x6)

# rs1_val == 2863311530, imm_val == 3967
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaa, 3967, x5, 140, x6)

# imm_val == 4, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000080;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00000080, 4, x5, 144, x6)

# imm_val == 16, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ff, 16, x5, 148, x6)

# imm_val == 128, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000f;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000f, 128, x5, 152, x6)

# imm_val == 512, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00008000;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00008000, 512, x5, 156, x6)

# imm_val == 4091, rs1_val == 4278190079
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffff, 4091, x5, 160, x6)

# imm_val == 4079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 4079, x5, 164, x6)

# imm_val == 1365, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000003;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x00000003, 1365, x5, 168, x6)

# imm_val == 3839, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000010;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x00000010, 3839, x5, 172, x6)

# rs1_val == 4294963199, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefff, 9, x5, 176, x6)

# rs1_val == 4294959103, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfff, 12, x5, 180, x6)

# rs1_val == 4294950911, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfff, 17, x5, 184, x6)

# rs1_val == 4294934527, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fff, 7, x5, 188, x6)

# rs1_val == 4294901759, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffff, 512, x5, 192, x6)

# rs1_val == 4294836223, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffff, 2048, x5, 196, x6)

# rs1_val == 4294705151, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffff, 17, x5, 200, x6)

# rs1_val == 4294443007, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffff, 17, x5, 204, x6)

# rs1_val == 4293918719, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffff, 1365, x5, 208, x6)

# rs1_val == 4292870143, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffff, 2730, x5, 212, x6)

# rs1_val == 4290772991, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffff, 128, x5, 216, x6)

# rs1_val == 4286578687, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffff, 3839, x5, 220, x6)

# rs1_val == 4096, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00001000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00001000, 3583, x5, 224, x6)
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
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 57*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
