# RISC-V Compliance Tests
#
#
# Copyright (c) 2021 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


| Instruction          | Tested   | Assembly             | Type            | Group(s)        | Description                                                   |
| -------------------- |:-------- |:-------------------- |:--------------- |:--------------- |:------------------------------------------------------------- |
| GETNOISE             | False    | getnoise             | R               |                 |  Noise Source Test                                            |
| POLLENTROPY          | False    | pollentropy          | R               |                 |  Poll Randomness                                              |
| AES32DSI             | True     | aes32dsi             | RRI             | imm2            |  AES Decrypt SubBytes                                         |
| AES32DSMI            | True     | aes32dsmi            | RRI             | imm2            |  AES Decrypt SubBytes and MixColumns                          |
| AES32ESI             | True     | aes32esi             | RRI             | imm2            |  AES Encrypt SubBytes                                         |
| AES32ESMI            | True     | aes32esmi            | RRI             | imm2            |  AES Encrypt SubBytes and MixColumns                          |
| AES64DS              | True     | aes64ds              | R               |                 |  AES Inverse SubBytes and ShiftRows transformation            |
| AES64DSM             | True     | aes64dsm             | R               |                 |  AES Inverse SubBytes, ShiftRows, MixColumns transformation   |
| AES64ES              | True     | aes64es              | R               |                 |  AES SubBytes and ShiftRows transformation                    |
| AES64ESM             | True     | aes64esm             | R               |                 |  AES SubBytes, ShiftRows, MixColumns transformation           |
| AES64IM              | True     | aes64im              | R1              |                 |  AES Inverse MixColumns transformation                        |
| AES64KS1I            | True     | aes64ks1i            | I               | rcon            |  AES Encrypt KeySchedule - rotate, SubBytes and Tound Constant |
| AES64KS2             | True     | aes64ks2             | R               |                 |  AES Encrypt KeySchedule: - XOR summation                     |
| SHA256SIG0           | True     | sha256sig0           | R1              |                 |  SHA256 hash function                                         |
| SHA256SIG1           | True     | sha256sig1           | R1              |                 |  SHA256 hash function                                         |
| SHA256SUM0           | True     | sha256sum0           | R1              |                 |  SHA256 hash function                                         |
| SHA256SUM1           | True     | sha256sum1           | R1              |                 |  SHA256 hash function                                         |
| SHA512SIG0           | True     | sha512sig0           | R1              |                 |  SHA256 hash function                                         |
| SHA512SIG0H          | True     | sha512sig0h          | R               |                 |  SHA512 hash function                                         |
| SHA512SIG0L          | True     | sha512sig0l          | R               |                 |  SHA512 hash function                                         |
| SHA512SIG1           | True     | sha512sig1           | R1              |                 |  SHA512 hash function                                         |
| SHA512SIG1H          | True     | sha512sig1h          | R               |                 |  SHA512 hash function                                         |
| SHA512SIG1L          | True     | sha512sig1l          | R               |                 |  SHA512 hash function                                         |
| SHA512SUM0           | True     | sha512sum0           | R1              |                 |  SHA512 hash function                                         |
| SHA512SUM0R          | True     | sha512sum0r          | R               |                 |  SHA512 hash function                                         |
| SHA512SUM1           | True     | sha512sum1           | R1              |                 |  SHA512 hash function                                         |
| SHA512SUM1R          | True     | sha512sum1r          | R               |                 |  SHA512 hash function                                         |
| SM3P0                | True     | sm3p0                | R1              |                 |  SM3 Secure Hash function                                     |
| SM3P1                | True     | sm3p1                | R1              |                 |  SM3 Secure Hash function                                     |
| SM4ED                | True     | sm4ed                | RRI             | imm2            |  SM4 Block cipher - encrypt/decrypt                           |
| SM4KS                | True     | sm4ks                | RRI             | imm2            |  SM4 Block cipher - KeySchedule                               |
| ROL                  | True     | rol                  | R               |                 |  Rotate Left                                                  |
| ROR                  | True     | ror                  | R               |                 |  Rotate Right                                                 |
| RORI                 | True     | rori                 | I               | imm5            |  Rotate Right, immediate                                      |
| ROLW                 | True     | rolw                 | R               |                 |  Rotate Left                                                  |
| RORIW                | True     | roriw                | I               | imm5            |  Rotate Right, immediate                                      |
| RORW                 | True     | rorw                 | R               |                 |  Rotate Right                                                 |
| REV-B                | False    | rev.b                | R1              |                 |  Reverse bits in bytes                                        |
| REV8                 | False    | rev8                 | R1              |                 |  Reverse Bytes in Word                                        |
| REV8-W               | False    | rev8                 | R1              |                 |  Reverse Bytes in Word                                        |
| ZIP                  | False    | zip                  | R1              |                 |  Shuffle, immediate                                           |
| UNZIP                | False    | unzip                | R1              |                 |  Unshuffle, Immediate                                         |
| GORCI                | True     | gorci                | I               | imm3_4_7        |  Generalized OR-combine, immediate                            |
| CLMUL                | True     | clmul                | R               |                 |  Carry-Less Multiply, lower half of product                   |
| CLMULH               | True     | clmulh               | R               |                 |  Carry-Less Multiply, upper half of product                   |
| ANDN                 | True     | andn                 | R               |                 |  AND with rs inverted                                         |
| ORN                  | True     | orn                  | R               |                 |  OR with rs2 inverted                                         |
| XNOR                 | True     | xnor                 | R               |                 |  None                                                         |
| PACK                 | True     | pack                 | R               |                 |  Pack two words into one register, lower half of each         |
| PACKH                | True     | packh                | R               |                 |  Pack two words into one register, lower byte of each         |
| PACKU                | True     | packu                | R               |                 |  Pack two words into one register, upper half of each         |
| PACKUW               | True     | packuw               | R               |                 |  Pack two words into one register, upper half of each         |
| PACKW                | True     | packw                | R               |                 |  Pack two words into one register, lower half of each         |
| XPERM-N              | False    | xperm.n              | R               |                 |  None                                                         |
| XPERM-B              | False    | xperm.b              | R               |                 |  Crossbar Permutation, Byte                                   |



