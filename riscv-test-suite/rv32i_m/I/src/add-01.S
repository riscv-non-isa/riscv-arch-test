
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

la x3,signature_x3_1

# opcode: add ; op1:x30; op2:x12; dest:x30; op1val:0x80000000;  op2val:0xfbffffff
TEST_RR_OP(add, x30, x30, x12, 0x7bffffff, 0x80000000, 0xfbffffff, x3, 0, x9)

# opcode: add ; op1:x6; op2:x6; dest:x22; op1val:0x00000000;  op2val:0xffbfffff
TEST_RR_OP(add, x22, x6, x6, 0xffbfffff, 0x00000000, 0xffbfffff, x3, 4, x9)

# opcode: add ; op1:x22; op2:x1; dest:x10; op1val:0x7fffffff;  op2val:0x01000000
TEST_RR_OP(add, x10, x22, x1, 0x80ffffff, 0x7fffffff, 0x01000000, x3, 8, x9)

# opcode: add ; op1:x21; op2:x21; dest:x21; op1val:0x00000001;  op2val:0xfffffffe
TEST_RR_OP(add, x21, x21, x21, 0xffffffff, 0x00000001, 0xfffffffe, x3, 12, x9)

# opcode: add ; op1:x23; op2:x28; dest:x28; op1val:0x00000004;  op2val:0x80000000
TEST_RR_OP(add, x28, x23, x28, 0x80000004, 0x00000004, 0x80000000, x3, 16, x9)

# opcode: add ; op1:x11; op2:x31; dest:x20; op1val:0x04000000;  op2val:0x00000000
TEST_RR_OP(add, x20, x11, x31, 0x4000000, 0x04000000, 0x00000000, x3, 20, x9)

# opcode: add ; op1:x25; op2:x15; dest:x23; op1val:0xffffefff;  op2val:0x7fffffff
TEST_RR_OP(add, x23, x25, x15, 0x7fffeffe, 0xffffefff, 0x7fffffff, x3, 24, x9)

# opcode: add ; op1:x2; op2:x0; dest:x11; op1val:0x00000003;  op2val:0x00000001
TEST_RR_OP(add, x11, x2, x0, 0x4, 0x00000003, 0x00000001, x3, 28, x9)

# opcode: add ; op1:x13; op2:x22; dest:x15; op1val:0xfffffeff;  op2val:0xfffffeff
TEST_RR_OP(add, x15, x13, x22, 0xfffffdfe, 0xfffffeff, 0xfffffeff, x3, 32, x9)

# opcode: add ; op1:x5; op2:x30; dest:x7; op1val:0x00000002;  op2val:0x00200000
TEST_RR_OP(add, x7, x5, x30, 0x200002, 0x00000002, 0x00200000, x3, 36, x9)

# opcode: add ; op1:x20; op2:x29; dest:x17; op1val:0x00000008;  op2val:0xfffffffb
TEST_RR_OP(add, x17, x20, x29, 0x3, 0x00000008, 0xfffffffb, x3, 40, x9)

# opcode: add ; op1:x18; op2:x26; dest:x8; op1val:0x00000010;  op2val:0x00000080
TEST_RR_OP(add, x8, x18, x26, 0x90, 0x00000010, 0x00000080, x3, 44, x9)

# opcode: add ; op1:x1; op2:x17; dest:x14; op1val:0x00000020;  op2val:0x00200000
TEST_RR_OP(add, x14, x1, x17, 0x200020, 0x00000020, 0x00200000, x3, 48, x9)

# opcode: add ; op1:x19; op2:x25; dest:x13; op1val:0x00000040;  op2val:0xffefffff
TEST_RR_OP(add, x13, x19, x25, 0xfff0003f, 0x00000040, 0xffefffff, x3, 52, x9)

# opcode: add ; op1:x26; op2:x19; dest:x16; op1val:0x00000080;  op2val:0x00000005
TEST_RR_OP(add, x16, x26, x19, 0x85, 0x00000080, 0x00000005, x3, 56, x9)

# opcode: add ; op1:x14; op2:x20; dest:x4; op1val:0x00000100;  op2val:0x3fffffff
TEST_RR_OP(add, x4, x14, x20, 0x400000ff, 0x00000100, 0x3fffffff, x3, 60, x9)

# opcode: add ; op1:x27; op2:x2; dest:x29; op1val:0x00000200;  op2val:0x00000008
TEST_RR_OP(add, x29, x27, x2, 0x208, 0x00000200, 0x00000008, x3, 64, x21)
la x20,signature_x20_0

# opcode: add ; op1:x12; op2:x24; dest:x3; op1val:0x00000400;  op2val:0x7fffffff
TEST_RR_OP(add, x3, x12, x24, 0x800003ff, 0x00000400, 0x7fffffff, x20, 0, x21)

# opcode: add ; op1:x17; op2:x16; dest:x2; op1val:0x00000800;  op2val:0x00000010
TEST_RR_OP(add, x2, x17, x16, 0x810, 0x00000800, 0x00000010, x20, 4, x21)

# opcode: add ; op1:x7; op2:x23; dest:x18; op1val:0x00001000;  op2val:0x00000400
TEST_RR_OP(add, x18, x7, x23, 0x1400, 0x00001000, 0x00000400, x20, 8, x21)

# opcode: add ; op1:x24; op2:x9; dest:x25; op1val:0x00002000;  op2val:0x55555555
TEST_RR_OP(add, x25, x24, x9, 0x55557555, 0x00002000, 0x55555555, x20, 12, x21)

# opcode: add ; op1:x16; op2:x13; dest:x6; op1val:0x00004000;  op2val:0x80000000
TEST_RR_OP(add, x6, x16, x13, 0x80004000, 0x00004000, 0x80000000, x20, 16, x21)

# opcode: add ; op1:x3; op2:x8; dest:x5; op1val:0x00008000;  op2val:0x00010000
TEST_RR_OP(add, x5, x3, x8, 0x18000, 0x00008000, 0x00010000, x20, 20, x21)

# opcode: add ; op1:x10; op2:x4; dest:x0; op1val:0x00010000;  op2val:0x00000040
TEST_RR_OP(add, x0, x10, x4, 0x10040, 0x00010000, 0x00000040, x20, 24, x21)

# opcode: add ; op1:x28; op2:x14; dest:x12; op1val:0x00020000;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x28, x14, 0x17fff, 0x00020000, 0xffff7fff, x20, 28, x21)

# opcode: add ; op1:x9; op2:x27; dest:x1; op1val:0x00040000;  op2val:0x00000007
TEST_RR_OP(add, x1, x9, x27, 0x40007, 0x00040000, 0x00000007, x20, 32, x21)

# opcode: add ; op1:x15; op2:x7; dest:x27; op1val:0x00080000;  op2val:0x00000002
TEST_RR_OP(add, x27, x15, x7, 0x80002, 0x00080000, 0x00000002, x20, 36, x21)

# opcode: add ; op1:x29; op2:x3; dest:x31; op1val:0x00100000;  op2val:0x00200000
TEST_RR_OP(add, x31, x29, x3, 0x300000, 0x00100000, 0x00200000, x20, 40, x21)

# opcode: add ; op1:x0; op2:x5; dest:x9; op1val:0x00200000;  op2val:0x00000000
TEST_RR_OP(add, x9, x0, x5, 0x200000, 0x00200000, 0x00000000, x20, 44, x21)

# opcode: add ; op1:x8; op2:x10; dest:x19; op1val:0x00400000;  op2val:0x02000000
TEST_RR_OP(add, x19, x8, x10, 0x2400000, 0x00400000, 0x02000000, x20, 48, x21)

# opcode: add ; op1:x31; op2:x18; dest:x24; op1val:0x00800000;  op2val:0x00000001
TEST_RR_OP(add, x24, x31, x18, 0x800001, 0x00800000, 0x00000001, x20, 52, x21)

# opcode: add ; op1:x4; op2:x11; dest:x26; op1val:0x01000000;  op2val:0xffdfffff
TEST_RR_OP(add, x26, x4, x11, 0xdfffff, 0x01000000, 0xffdfffff, x20, 56, x21)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xfffffffb
TEST_RR_OP(add, x12, x10, x11, 0x1fffffb, 0x02000000, 0xfffffffb, x20, 60, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffbff
TEST_RR_OP(add, x12, x10, x11, 0x7fffbff, 0x08000000, 0xfffffbff, x20, 64, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00100000
TEST_RR_OP(add, x12, x10, x11, 0x10100000, 0x10000000, 0x00100000, x20, 68, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x04000000
TEST_RR_OP(add, x12, x10, x11, 0x24000000, 0x20000000, 0x04000000, x20, 72, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0x40080000, 0x40000000, 0x00080000, x20, 76, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0x7ffe, 0xfffffffe, 0x00008000, x20, 80, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x01000000
TEST_RR_OP(add, x12, x10, x11, 0xfffffd, 0xfffffffd, 0x01000000, x20, 84, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xc0000000
TEST_RR_OP(add, x12, x10, x11, 0xbffffffb, 0xfffffffb, 0xc0000000, x20, 88, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xff7, 0xfffffff7, 0x00001000, x20, 92, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x20000000
TEST_RR_OP(add, x12, x10, x11, 0x1fffffef, 0xffffffef, 0x20000000, x20, 96, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffbfffde, 0xffffffdf, 0xffbfffff, x20, 100, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0xfff3fffe, 0xfff7ffff, 0xfffbffff, x20, 104, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0xfff7fbfe, 0xfffffbff, 0xfff7ffff, x20, 108, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0x7f7fffff, 0x80000000, 0xff7fffff, x20, 112, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xeffffff, 0x10000000, 0xfeffffff, x20, 116, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdfffffb, 0xfffffffc, 0xfdffffff, x20, 120, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf803ffff, 0x00040000, 0xf7ffffff, x20, 124, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xf0007fff, 0x00008000, 0xefffffff, x20, 128, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xdfffffff
TEST_RR_OP(add, x12, x10, x11, 0xe00000ff, 0x00000100, 0xdfffffff, x20, 132, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xbfdffffe, 0xffdfffff, 0xbfffffff, x20, 136, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaa6, 0xfffffffc, 0xaaaaaaaa, x20, 140, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xfffffebe, 0xffffffbf, 0xfffffeff, x20, 144, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xffdfff7e, 0xffffff7f, 0xffdfffff, x20, 148, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00100000
TEST_RR_OP(add, x12, x10, x11, 0xffdff, 0xfffffdff, 0x00100000, x20, 152, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x02000000
TEST_RR_OP(add, x12, x10, x11, 0x1fff7ff, 0xfffff7ff, 0x02000000, x20, 156, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000003
TEST_RR_OP(add, x12, x10, x11, 0xffffe002, 0xffffdfff, 0x00000003, x20, 160, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffff8
TEST_RR_OP(add, x12, x10, x11, 0xffffbff7, 0xffffbfff, 0xfffffff8, x20, 164, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfffe7ffe, 0xffff7fff, 0xfffeffff, x20, 168, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0x6ffff, 0xfffeffff, 0x00080000, x20, 172, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff7dfffe, 0xfffdffff, 0xff7fffff, x20, 176, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfffafffe, 0xfffbffff, 0xfffeffff, x20, 180, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffefbffe, 0xffefffff, 0xffffbfff, x20, 184, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffbfbffe, 0xffbfffff, 0xffffbfff, x20, 188, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0xff807fff, 0xff7fffff, 0x00008000, x20, 192, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xfeff7ffe, 0xfeffffff, 0xffff7fff, x20, 196, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xfcfffffe, 0xfdffffff, 0xfeffffff, x20, 200, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffefff
TEST_RR_OP(add, x12, x10, x11, 0xfbffeffe, 0xfbffffff, 0xffffefff, x20, 204, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffffff6
TEST_RR_OP(add, x12, x10, x11, 0xf7fffff5, 0xf7ffffff, 0xfffffff6, x20, 208, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfffff7ff
TEST_RR_OP(add, x12, x10, x11, 0xeffff7fe, 0xefffffff, 0xfffff7ff, x20, 212, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xe0000fff, 0xdfffffff, 0x00001000, x20, 216, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0xbdfffffe, 0xbfffffff, 0xfdffffff, x20, 220, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x04000000
TEST_RR_OP(add, x12, x10, x11, 0x59555555, 0x55555555, 0x04000000, x20, 224, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000001
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaab, 0xaaaaaaaa, 0x00000001, x20, 228, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000004
TEST_RR_OP(add, x12, x10, x11, 0x3, 0xffffffff, 0x00000004, x20, 232, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000020
TEST_RR_OP(add, x12, x10, x11, 0x20000020, 0x20000000, 0x00000020, x20, 236, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000100
TEST_RR_OP(add, x12, x10, x11, 0x102, 0x00000002, 0x00000100, x20, 240, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000200
TEST_RR_OP(add, x12, x10, x11, 0x1df, 0xffffffdf, 0x00000200, x20, 244, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000800
TEST_RR_OP(add, x12, x10, x11, 0x55555d55, 0x55555555, 0x00000800, x20, 248, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0x2002, 0x00000002, 0x00002000, x20, 252, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0xffe03fff, 0xffdfffff, 0x00004000, x20, 256, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00020000
TEST_RR_OP(add, x12, x10, x11, 0xffe1ffff, 0xffdfffff, 0x00020000, x20, 260, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00040000
TEST_RR_OP(add, x12, x10, x11, 0x40400, 0x00000400, 0x00040000, x20, 264, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00400000
TEST_RR_OP(add, x12, x10, x11, 0x3ffff7, 0xfffffff7, 0x00400000, x20, 268, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x00800000
TEST_RR_OP(add, x12, x10, x11, 0x800007, 0x00000007, 0x00800000, x20, 272, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x08000000
TEST_RR_OP(add, x12, x10, x11, 0x8000005, 0x00000005, 0x08000000, x20, 276, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x10000000
TEST_RR_OP(add, x12, x10, x11, 0x10008000, 0x00008000, 0x10000000, x20, 280, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x40000000
TEST_RR_OP(add, x12, x10, x11, 0x40000100, 0x00000100, 0x40000000, x20, 284, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xfffffffd
TEST_RR_OP(add, x12, x10, x11, 0x7fffd, 0x00080000, 0xfffffffd, x20, 288, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff7
TEST_RR_OP(add, x12, x10, x11, 0xbffffff6, 0xbfffffff, 0xfffffff7, x20, 292, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xffffffef
TEST_RR_OP(add, x12, x10, x11, 0x3fef, 0x00004000, 0xffffffef, x20, 296, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xfff7ffde, 0xfff7ffff, 0xffffffdf, x20, 300, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffffbf
TEST_RR_OP(add, x12, x10, x11, 0xfffbffbe, 0xfffbffff, 0xffffffbf, x20, 304, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xffffdfff
TEST_RR_OP(add, x12, x10, x11, 0xffffdff7, 0xfffffff8, 0xffffdfff, x20, 308, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffdff
TEST_RR_OP(add, x12, x10, x11, 0xfffffcfe, 0xfffffeff, 0xfffffdff, x20, 312, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffff7c, 0xfffffffd, 0xffffff7f, x20, 316, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffddffe, 0xffffdfff, 0xfffdffff, x20, 320, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0x7bffffff, 0x80000000, 0xfbffffff, x20, 324, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffbfffff, 0x00000000, 0xffbfffff, x20, 328, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffffe
TEST_RR_OP(add, x12, x10, x11, 0xffffffff, 0x00000001, 0xfffffffe, x20, 332, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x80000004, 0x00000004, 0x80000000, x20, 336, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000001
TEST_RR_OP(add, x12, x10, x11, 0x4, 0x00000003, 0x00000001, x20, 340, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000040
TEST_RR_OP(add, x12, x10, x11, 0x10040, 0x00010000, 0x00000040, x20, 344, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000000
TEST_RR_OP(add, x12, x10, x11, 0x200000, 0x00200000, 0x00000000, x20, 348, x1)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x20_0:
    .fill 88*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
