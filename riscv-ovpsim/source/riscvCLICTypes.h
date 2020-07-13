/*
 * Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com
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

#pragma once

// VMI header files
#include "vmi/vmiTypes.h"

// model header files
#include "riscvMode.h"
#include "riscvTypeRefs.h"


////////////////////////////////////////////////////////////////////////////////
// REGISTER DEFINITIONS
////////////////////////////////////////////////////////////////////////////////

//
// Use this to declare a register type name
//
#define CLIC_FIELDS(_N) riscvCLICFields_##_N

//
// Use this to declare a register type name
//
#define CLIC_REG_TYPE(_N) riscvCLIC_##_N

//
// Use this to declare a 32-bit CLIC register
//
#define CLIC_REG_STRUCT_DECL(_N) typedef union { \
    Uns32           bits;     \
    CLIC_FIELDS(_N) fields;   \
} CLIC_REG_TYPE(_N)

// -----------------------------------------------------------------------------
// cliccfg      (offset 0x0000)
// -----------------------------------------------------------------------------

typedef struct {
    Uns32 nvbits :  1;
    Uns32 nlbits :  4;
    Uns32 nmbits :  2;
    Uns32 _u1    : 25;
} CLIC_FIELDS(cliccfg);

// define 32 bit type
CLIC_REG_STRUCT_DECL(cliccfg);

// -----------------------------------------------------------------------------
// clicinfo     (offset 0x0004)
// -----------------------------------------------------------------------------

typedef struct {
    Uns32 num_interrupt  : 13;
    Uns32 version        :  8;
    Uns32 CLICINTCTLBITS :  4;
    Uns32 _u1            :  7;
} CLIC_FIELDS(clicinfo);

// define 32 bit type
CLIC_REG_STRUCT_DECL(clicinfo);

// -----------------------------------------------------------------------------
// clicintattr  (offset 0x1002+4*i etc)
// -----------------------------------------------------------------------------

typedef struct {
    Uns32 shv  : 1;
    Uns32 trig : 2;
    Uns32 _u1  : 3;
    Uns32 mode : 2;
} CLIC_FIELDS(clicintattr);

// define 32 bit type
CLIC_REG_STRUCT_DECL(clicintattr);

//
// Use this to define a CLIC register
//
#define CLIC_REG_DECL(_N)   CLIC_REG_TYPE(_N) _N


////////////////////////////////////////////////////////////////////////////////
// INTERRUPT MANAGEMENT STRUCTURES
////////////////////////////////////////////////////////////////////////////////

//
// This holds state for a pending CLIC interrupt
//
typedef struct riscvCLICOutStateS {
    riscvMode priv;     // privilege mode
    Int32     id;       // interrupt id
    Uns8      level;    // interrupt level
    Bool      shv;      // whether selectively hardware vectored
    Bool      _u1[6];   // (for alignment)
} riscvCLICOutState;

//
// This holds CLIC state
//
typedef struct riscvCLICS {
    riscvCLICOutState  sel;         // selected interrupt state
    CLIC_REG_DECL     (cliccfg);    // cliccfg register value
    CLIC_REG_DECL     (clicinfo);   // clicinfo register value
    riscvPP            harts;       // member harts
    riscvCLICIntStateP intState;    // state for each interrupt
    Uns64             *ipe;         // mask of pending-and-enabled interrupts
} riscvCLIC;


