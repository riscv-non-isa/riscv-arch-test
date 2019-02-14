/*
 * Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com
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

//
// These are placeholders in disassembly decoder
//
#define EMIT_R1         '\001'
#define EMIT_R2         '\002'
#define EMIT_R3         '\003'
#define EMIT_R4         '\004'
#define EMIT_CS         '\005'
#define EMIT_CX         '\006'
#define EMIT_UI         '\007'
#define EMIT_TGT        '\010'
#define EMIT_CSR        '\011'
#define EMIT_PRED       '\012'
#define EMIT_SUCC       '\013'

//
// These are placeholders in disassembly format strings
//
#define EMIT_R1_S       "\001"
#define EMIT_R2_S       "\002"
#define EMIT_R3_S       "\003"
#define EMIT_R4_S       "\004"
#define EMIT_CS_S       "\005"
#define EMIT_CX_S       "\006"
#define EMIT_UI_S       "\007"
#define EMIT_TGT_S      "\010"
#define EMIT_CSR_S      "\011"
#define EMIT_PRED_S     "\012"
#define EMIT_SUCC_S     "\013"

//
// These are disassembly format strings
//
#define FMT_NONE        ""
#define FMT_R1          EMIT_R1_S
#define FMT_R1_R2       EMIT_R1_S "," EMIT_R2_S
#define FMT_R1NZ_R2     "*" EMIT_R1_S "," EMIT_R2_S
#define FMT_R1_SIMM     EMIT_R1_S "," EMIT_CS_S
#define FMT_R1_R3       EMIT_R1_S "," EMIT_R3_S
#define FMT_R1_R2_R3    EMIT_R1_S "," EMIT_R2_S "," EMIT_R3_S
#define FMT_R1_R2_R3_R4 EMIT_R1_S "," EMIT_R2_S "," EMIT_R3_S "," EMIT_R4_S
#define FMT_R1_R2_SIMM  EMIT_R1_S "," EMIT_R2_S "," EMIT_CS_S
#define FMT_R1_R2_XIMM  EMIT_R1_S "," EMIT_R2_S "," EMIT_CX_S
#define FMT_R1_R2_TGT   EMIT_R1_S "," EMIT_R2_S "," EMIT_TGT_S
#define FMT_R1_MEM2     EMIT_R1_S ",(" EMIT_R2_S ")"
#define FMT_R1_R2_MEM3  EMIT_R1_S "," EMIT_R2_S ",(" EMIT_R3_S ")"
#define FMT_R1_OFF_R2   EMIT_R1_S "," EMIT_CS_S "(" EMIT_R2_S ")"
#define FMT_OFF_R2      EMIT_CS_S "(" EMIT_R2_S ")"
#define FMT_R2          EMIT_R2_S
#define FMT_R1_UI       EMIT_R1_S "," EMIT_UI_S
#define FMT_R1_CSR      EMIT_R1_S "," EMIT_CSR_S
#define FMT_R1_CSR_R2   EMIT_R1_S "," EMIT_CSR_S "," EMIT_R2_S
#define FMT_R1_CSR_SIMM EMIT_R1_S "," EMIT_CSR_S "," EMIT_CS_S
#define FMT_CSR_R2      EMIT_CSR_S "," EMIT_R2_S
#define FMT_CSR_SIMM    EMIT_CSR_S "," EMIT_CS_S
#define FMT_R1_TGT      EMIT_R1_S "," EMIT_TGT_S
#define FMT_R2_TGT      EMIT_R2_S "," EMIT_TGT_S
#define FMT_TGT         EMIT_TGT_S
#define FMT_PRED_SUCC   EMIT_PRED_S "," EMIT_SUCC_S

