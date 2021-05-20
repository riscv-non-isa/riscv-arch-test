
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IK")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*RV32.*I.*K.*);def TEST_CASE_1=True;",sm4ed)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*RV32.*I.*ZKs.*);def TEST_CASE_1=True;",sm4ed)

RVTEST_SIGBASE( x31,signature_x31_1)

inst_0:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x1; op1:x2; op1:x3; op1:x4; dest:x5;
li  x1, 0x924770d3;
li  x2, 0x6dcbac50;
li  x3, 0x93fdcab8;
li  x4, 0x34c2da80;
li  x5, 0xd035d259;
sm4ed x5, x1, 0;
sm4ed x5, x2, 1;
sm4ed x5, x3, 2;
sm4ed x5, x4, 3;
RVTEST_SIGUPD(x31,x5,0);

inst_1:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x2; op1:x3; op1:x4; op1:x5; dest:x6;
li  x2, 0xd2d6b877;
li  x3, 0x2904cdef;
li  x4, 0x854a9657;
li  x5, 0x53e8eb43;
li  x6, 0xff1e5bef;
sm4ed x6, x2, 0;
sm4ed x6, x3, 1;
sm4ed x6, x4, 2;
sm4ed x6, x5, 3;
RVTEST_SIGUPD(x31,x6,4);

inst_2:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x3; op1:x4; op1:x5; op1:x6; dest:x7;
li  x3, 0x0b680c1c;
li  x4, 0xdc338383;
li  x5, 0x9a6ab329;
li  x6, 0x61b0ee09;
li  x7, 0xacca7f0d;
sm4ed x7, x3, 0;
sm4ed x7, x4, 1;
sm4ed x7, x5, 2;
sm4ed x7, x6, 3;
RVTEST_SIGUPD(x31,x7,8);

inst_3:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x4; op1:x5; op1:x6; op1:x7; dest:x8;
li  x4, 0x74f2e2ed;
li  x5, 0xaf949e5e;
li  x6, 0xa96ec2b3;
li  x7, 0x220adb0a;
li  x8, 0xfb7f6f5d;
sm4ed x8, x4, 0;
sm4ed x8, x5, 1;
sm4ed x8, x6, 2;
sm4ed x8, x7, 3;
RVTEST_SIGUPD(x31,x8,12);

inst_4:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x5; op1:x6; op1:x7; op1:x8; dest:x9;
li  x5, 0xf829d29f;
li  x6, 0x9d02fc90;
li  x7, 0x0109c207;
li  x8, 0x224c0601;
li  x9, 0xe5f0307e;
sm4ed x9, x5, 0;
sm4ed x9, x6, 1;
sm4ed x9, x7, 2;
sm4ed x9, x8, 3;
RVTEST_SIGUPD(x31,x9,16);

inst_5:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x6; op1:x7; op1:x8; op1:x9; dest:x10;
li  x6, 0x8c8a18b2;
li  x7, 0x6f9fb997;
li  x8, 0x95a4d257;
li  x9, 0x69b1dcbf;
li  x10, 0x0973e89c;
sm4ed x10, x6, 0;
sm4ed x10, x7, 1;
sm4ed x10, x8, 2;
sm4ed x10, x9, 3;
RVTEST_SIGUPD(x31,x10,20);

inst_6:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x7; op1:x8; op1:x9; op1:x10; dest:x11;
li  x7, 0x7f216822;
li  x8, 0xa86b8a6e;
li  x9, 0xdae98554;
li  x10, 0x2651f637;
li  x11, 0x99ef1857;
sm4ed x11, x7, 0;
sm4ed x11, x8, 1;
sm4ed x11, x9, 2;
sm4ed x11, x10, 3;
RVTEST_SIGUPD(x31,x11,24);

inst_7:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x8; op1:x9; op1:x10; op1:x11; dest:x12;
li  x8, 0x18bb28e9;
li  x9, 0xceb506f6;
li  x10, 0xf29c11ad;
li  x11, 0x6a013380;
li  x12, 0x4652f62d;
sm4ed x12, x8, 0;
sm4ed x12, x9, 1;
sm4ed x12, x10, 2;
sm4ed x12, x11, 3;
RVTEST_SIGUPD(x31,x12,28);

inst_8:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x9; op1:x10; op1:x11; op1:x12; dest:x13;
li  x9, 0x1e9667c2;
li  x10, 0x74ab0a38;
li  x11, 0xd230b46c;
li  x12, 0xc70afc92;
li  x13, 0x58fa6e1c;
sm4ed x13, x9, 0;
sm4ed x13, x10, 1;
sm4ed x13, x11, 2;
sm4ed x13, x12, 3;
RVTEST_SIGUPD(x31,x13,32);

inst_9:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x10; op1:x11; op1:x12; op1:x13; dest:x14;
li  x10, 0x6f4930c8;
li  x11, 0xb66b3284;
li  x12, 0x51c5b8b2;
li  x13, 0x1475f78d;
li  x14, 0x72b3cb0b;
sm4ed x14, x10, 0;
sm4ed x14, x11, 1;
sm4ed x14, x12, 2;
sm4ed x14, x13, 3;
RVTEST_SIGUPD(x31,x14,36);

inst_10:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x11; op1:x12; op1:x13; op1:x14; dest:x15;
li  x11, 0x9535971c;
li  x12, 0xde9a896f;
li  x13, 0xe918be9f;
li  x14, 0x8525e8a8;
li  x15, 0x9a238b6a;
sm4ed x15, x11, 0;
sm4ed x15, x12, 1;
sm4ed x15, x13, 2;
sm4ed x15, x14, 3;
RVTEST_SIGUPD(x31,x15,40);

inst_11:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x12; op1:x13; op1:x14; op1:x15; dest:x16;
li  x12, 0x1011eeb4;
li  x13, 0x66b072b9;
li  x14, 0x95be4da0;
li  x15, 0x89e6156b;
li  x16, 0x70fc1afc;
sm4ed x16, x12, 0;
sm4ed x16, x13, 1;
sm4ed x16, x14, 2;
sm4ed x16, x15, 3;
RVTEST_SIGUPD(x31,x16,44);

inst_12:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x13; op1:x14; op1:x15; op1:x16; dest:x17;
li  x13, 0x00b97ea6;
li  x14, 0x89112f0a;
li  x15, 0x0cf25923;
li  x16, 0x17be082f;
li  x17, 0x7c2c966d;
sm4ed x17, x13, 0;
sm4ed x17, x14, 1;
sm4ed x17, x15, 2;
sm4ed x17, x16, 3;
RVTEST_SIGUPD(x31,x17,48);

inst_13:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x14; op1:x15; op1:x16; op1:x17; dest:x18;
li  x14, 0x72745307;
li  x15, 0xb9e93d52;
li  x16, 0xb2a7a18a;
li  x17, 0x6c5e1578;
li  x18, 0x3cc279b3;
sm4ed x18, x14, 0;
sm4ed x18, x15, 1;
sm4ed x18, x16, 2;
sm4ed x18, x17, 3;
RVTEST_SIGUPD(x31,x18,52);

inst_14:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x15; op1:x16; op1:x17; op1:x18; dest:x19;
li  x15, 0x9e7e1fc3;
li  x16, 0xafe08a13;
li  x17, 0x7a9c0163;
li  x18, 0xcebe24d9;
li  x19, 0xf65cf3f3;
sm4ed x19, x15, 0;
sm4ed x19, x16, 1;
sm4ed x19, x17, 2;
sm4ed x19, x18, 3;
RVTEST_SIGUPD(x31,x19,56);

inst_15:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x16; op1:x17; op1:x18; op1:x19; dest:x20;
li  x16, 0xdbdd4dd9;
li  x17, 0xb7debb9b;
li  x18, 0xe380a176;
li  x19, 0xf65e7737;
li  x20, 0x491597ca;
sm4ed x20, x16, 0;
sm4ed x20, x17, 1;
sm4ed x20, x18, 2;
sm4ed x20, x19, 3;
RVTEST_SIGUPD(x31,x20,60);

inst_16:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x17; op1:x18; op1:x19; op1:x20; dest:x21;
li  x17, 0xab8534c1;
li  x18, 0x242a809b;
li  x19, 0x985a9ef0;
li  x20, 0x5990fe96;
li  x21, 0x31d4ff08;
sm4ed x21, x17, 0;
sm4ed x21, x18, 1;
sm4ed x21, x19, 2;
sm4ed x21, x20, 3;
RVTEST_SIGUPD(x31,x21,64);

inst_17:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x18; op1:x19; op1:x20; op1:x21; dest:x22;
li  x18, 0xffec35fe;
li  x19, 0x6c69a172;
li  x20, 0x8e368ce0;
li  x21, 0x5d447060;
li  x22, 0xa08b84f3;
sm4ed x22, x18, 0;
sm4ed x22, x19, 1;
sm4ed x22, x20, 2;
sm4ed x22, x21, 3;
RVTEST_SIGUPD(x31,x22,68);

inst_18:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x19; op1:x20; op1:x21; op1:x22; dest:x23;
li  x19, 0x35a7efc0;
li  x20, 0x9c1a1528;
li  x21, 0xdffb54ce;
li  x22, 0xa6faba7b;
li  x23, 0x0e24d9cc;
sm4ed x23, x19, 0;
sm4ed x23, x20, 1;
sm4ed x23, x21, 2;
sm4ed x23, x22, 3;
RVTEST_SIGUPD(x31,x23,72);

inst_19:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x20; op1:x21; op1:x22; op1:x23; dest:x24;
li  x20, 0x4133e4d7;
li  x21, 0x74f5add5;
li  x22, 0xc2680192;
li  x23, 0x4850e927;
li  x24, 0xb1f00bca;
sm4ed x24, x20, 0;
sm4ed x24, x21, 1;
sm4ed x24, x22, 2;
sm4ed x24, x23, 3;
RVTEST_SIGUPD(x31,x24,76);

inst_20:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x21; op1:x22; op1:x23; op1:x24; dest:x25;
li  x21, 0x81aa70ac;
li  x22, 0x437cbc41;
li  x23, 0x576e3d4f;
li  x24, 0xb9fef1d6;
li  x25, 0x7adb78cc;
sm4ed x25, x21, 0;
sm4ed x25, x22, 1;
sm4ed x25, x23, 2;
sm4ed x25, x24, 3;
RVTEST_SIGUPD(x31,x25,80);

inst_21:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x22; op1:x23; op1:x24; op1:x25; dest:x26;
li  x22, 0xb847f03e;
li  x23, 0xcb256db7;
li  x24, 0xfe0a9c6c;
li  x25, 0xd6220b4f;
li  x26, 0x5274f6a0;
sm4ed x26, x22, 0;
sm4ed x26, x23, 1;
sm4ed x26, x24, 2;
sm4ed x26, x25, 3;
RVTEST_SIGUPD(x31,x26,84);

inst_22:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x23; op1:x24; op1:x25; op1:x26; dest:x27;
li  x23, 0xbd8d9d60;
li  x24, 0x9c3d087c;
li  x25, 0x2fb5a758;
li  x26, 0x2b24ced4;
li  x27, 0xef8c60c0;
sm4ed x27, x23, 0;
sm4ed x27, x24, 1;
sm4ed x27, x25, 2;
sm4ed x27, x26, 3;
RVTEST_SIGUPD(x31,x27,88);

inst_23:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x24; op1:x25; op1:x26; op1:x27; dest:x28;
li  x24, 0xbeb2993a;
li  x25, 0xf37e27a3;
li  x26, 0x041bbaab;
li  x27, 0x338a2f39;
li  x28, 0x93017690;
sm4ed x28, x24, 0;
sm4ed x28, x25, 1;
sm4ed x28, x26, 2;
sm4ed x28, x27, 3;
RVTEST_SIGUPD(x31,x28,92);

inst_24:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x25; op1:x26; op1:x27; op1:x28; dest:x29;
li  x25, 0x0cd5d8e2;
li  x26, 0x90af95fe;
li  x27, 0x65a3a495;
li  x28, 0x28615e14;
li  x29, 0xdd4ec4d8;
sm4ed x29, x25, 0;
sm4ed x29, x26, 1;
sm4ed x29, x27, 2;
sm4ed x29, x28, 3;
RVTEST_SIGUPD(x31,x29,96);

inst_25:
// Expected use-case sequence -> Aims to test things like pipeline forwarding
// opcode: sm4ed; op1:x26; op1:x27; op1:x28; op1:x29; dest:x30;
li  x26, 0xfff5618b;
li  x27, 0x596f5f89;
li  x28, 0x65bcf7b6;
li  x29, 0x5902a9db;
li  x30, 0xdd959036;
sm4ed x30, x26, 0;
sm4ed x30, x27, 1;
sm4ed x30, x28, 2;
sm4ed x30, x29, 3;
RVTEST_SIGUPD(x31,x30,100);

#endif

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x31_1:
    .fill 26*(XLEN/32),4,0xdeadbeef
    
#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
