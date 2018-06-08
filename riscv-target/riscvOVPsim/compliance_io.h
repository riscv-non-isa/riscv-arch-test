// RISC-V Compliance IO Test Header File

/*
 * Copyright (c) 2005-2018 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */


//
// In general the following registers are reserved
// ra, a0, t0
// Additionally on a fail, t1, t2 are overwritten
// x1, x10, x5, x6, x7 respectively
//

#ifndef _COMPLIANCE_IO_H
#define _COMPLIANCE_IO_H

//#define RVTEST_IO_QUIET

//-----------------------------------------------------------------------
// RV IO Macros
//-----------------------------------------------------------------------
#define RVTEST_CUSTOM1 0x0005200B

#define LOCAL_RVTEST_IO_WRITE_A0                                        \
    RVTEST_IO_PUTC(a0);                                                 \

#define LOCAL_RVTEST_IO_WRITE_REG(_R)                                   \
    mv          a0, _R;                                                 \
    jal         FN_WriteA0;

#ifdef RVTEST_IO_QUIET

#define RVTEST_IO_INIT
#define RVTEST_IO_PUTC(_R)
#define RVTEST_IO_WRITE_STR(_STR)
#define RVTEST_IO_ASSERT_EQ(_R, _I)

#else

#define RVTEST_IO_INIT

#define RVTEST_IO_PUTC(_R)                                              \
    .word RVTEST_CUSTOM1;                                               \

#define RVTEST_IO_WRITE_STR(_STR)                                       \
    .section .data;                                                     \
10002:                                                                  \
    .string ## _STR;                                                    \
    .align 4;                                                           \
    .section .text.init;                                                \
    la a0, 10002b;                                                      \
    jal FN_WriteStr;                                                    \

#define RVTEST_IO_ASSERT_EQ(_R, _I)                                     \
    li          t0, _I;                                                 \
    beq         _R, t0, 20001f;                                         \
    RVTEST_IO_WRITE_STR("# ASSERT ");                                   \
    RVTEST_IO_WRITE_STR(# _R);                                          \
    RVTEST_IO_WRITE_STR("(");                                           \
    LOCAL_RVTEST_IO_WRITE_REG(_R);                                      \
    RVTEST_IO_WRITE_STR(")!=");                                         \
    RVTEST_IO_WRITE_STR(# _I);                                          \
    RVTEST_IO_WRITE_STR("\n");                                          \
    li TESTNUM, 100;                                                    \
    RVTEST_FAIL;                                                        \
20001:

//
// FN_WriteStr: Uses a0, t0
//
FN_WriteStr:
    mv          t0, a0;
10000:
    lbu         a0, (t0);
    addi        t0, t0, 1;
    beq         a0, zero, 10000f;
    LOCAL_RVTEST_IO_WRITE_A0
    j           10000b;
10000:
    ret;

//
// FN_WriteA0: write register a0(x10) (destroys a0(x10), t0-t2(x5-x7))
//
FN_WriteA0:
        mv          t0, a0
        // determine architectural register width
        li          a0, -1
        srli        a0, a0, 31
        srli        a0, a0, 1
        bnez        a0, FN_WriteA0_64

FN_WriteA0_32:
        // reverse register when xlen is 32
        li          t1, 8
10000:  slli        t2, t2, 4
        andi        a0, t0, 0xf
        srli        t0, t0, 4
        or          t2, t2, a0
        addi        t1, t1, -1
        bnez        t1, 10000b
        li          t1, 8
        j           FN_WriteA0_common

FN_WriteA0_64:
        // reverse register when xlen is 64
        li          t1, 16
10000:  slli        t2, t2, 4
        andi        a0, t0, 0xf
        srli        t0, t0, 4
        or          t2, t2, a0
        addi        t1, t1, -1
        bnez        t1, 10000b
        li          t1, 16

FN_WriteA0_common:
        // write reversed characters
        li          t0, 10
10000:  andi        a0, t2, 0xf
        blt         a0, t0, 10001f
        addi        a0, a0, 'a'-10
        j           10002f
10001:  addi        a0, a0, '0'
10002:  RVTEST_IO_PUTC(a0)
        srli        t2, t2, 4
        addi        t1, t1, -1
        bnez        t1, 10000b
        ret

#endif // RVTEST_IO_QUIET
#endif // _COMPLIANCE_IO_H
