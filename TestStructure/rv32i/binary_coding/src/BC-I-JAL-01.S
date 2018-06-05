# RISC-V Compliance Test BC-I-JAL-01
#
# Copyright (c) 2017, Codasip Ltd.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * Neither the name of the Codasip Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd. BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Specification: RV32I Base Integer Instruction Set, Version 2.0
# Description: Binary test for JAL.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # JAL
    1: jal     x0, 1b
    1: jal     x1, 1b
    1: jal     x2, 1b
    1: jal     x3, 1b
    1: jal     x4, 1b
    1: jal     x5, 1b
    1: jal     x6, 1b
    1: jal     x7, 1b
    1: jal     x8, 1b
    1: jal     x9, 1b
    1: jal     x10, 1b
    1: jal     x11, 1b
    1: jal     x12, 1b
    1: jal     x13, 1b
    1: jal     x14, 1b
    1: jal     x15, 1b
    1: jal     x16, 1b
    1: jal     x17, 1b
    1: jal     x18, 1b
    1: jal     x19, 1b
    1: jal     x20, 1b
    1: jal     x21, 1b
    1: jal     x22, 1b
    1: jal     x23, 1b
    1: jal     x24, 1b
    1: jal     x25, 1b
    1: jal     x26, 1b
    1: jal     x27, 1b
    1: jal     x28, 1b
    1: jal     x29, 1b
    1: jal     x30, 1b
    1: jal     x31, 1b

    1: jal     x1, 1b + 0           # 0x00000000
    1: jal     x1, 1b + -2          # 0xFFFFFFFE
    1: jal     x1, 1b + 2           # 0x00000002
    1: jal     x1, 1b + 4           # 0x00000004
    1: jal     x1, 1b + 8           # 0x00000008
    1: jal     x1, 1b + 16          # 0x00000010
    1: jal     x1, 1b + 32          # 0x00000020
    1: jal     x1, 1b + 64          # 0x00000040
    1: jal     x1, 1b + 128         # 0x00000080
    1: jal     x1, 1b + 256         # 0x00000100
    1: jal     x1, 1b + 512         # 0x00000200
    1: jal     x1, 1b + 1024        # 0x00000400
    1: jal     x1, 1b + 2048        # 0x00000800
    1: jal     x1, 1b + 4096        # 0x00001000
    1: jal     x1, 1b + 8192        # 0x00002000
    1: jal     x1, 1b + 16384       # 0x00004000
    1: jal     x1, 1b + 32768       # 0x00008000
    1: jal     x1, 1b + 65536       # 0x00010000
    1: jal     x1, 1b + 131072      # 0x00020000
    1: jal     x1, 1b + 262144      # 0x00040000
    1: jal     x1, 1b + 524288      # 0x00080000
    1: jal     x1, 1b + -1048576    # 0xFFF00000
    1: jal     x1, 1b + -4          # 0xFFFFFFFC
    1: jal     x1, 1b + -6          # 0xFFFFFFFA
    1: jal     x1, 1b + -10         # 0xFFFFFFF6
    1: jal     x1, 1b + -18         # 0xFFFFFFEE
    1: jal     x1, 1b + -34         # 0xFFFFFFDE
    1: jal     x1, 1b + -66         # 0xFFFFFFBE
    1: jal     x1, 1b + -130        # 0xFFFFFF7E
    1: jal     x1, 1b + -258        # 0xFFFFFEFE
    1: jal     x1, 1b + -514        # 0xFFFFFDFE
    1: jal     x1, 1b + -1026       # 0xFFFFFBFE
    1: jal     x1, 1b + -2050       # 0xFFFFF7FE
    1: jal     x1, 1b + -4098       # 0xFFFFEFFE
    1: jal     x1, 1b + -8194       # 0xFFFFDFFE
    1: jal     x1, 1b + -16386      # 0xFFFFBFFE
    1: jal     x1, 1b + -32770      # 0xFFFF7FFE
    1: jal     x1, 1b + -65538      # 0xFFFEFFFE
    1: jal     x1, 1b + -131074     # 0xFFFDFFFE
    1: jal     x1, 1b + -262146     # 0xFFFBFFFE
    1: jal     x1, 1b + -524290     # 0xFFF7FFFE
    1: jal     x1, 1b + 1048574     # 0x000FFFFE

# CODE_END
