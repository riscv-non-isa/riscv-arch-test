# RISC-V Compliance Test BC-I-LUI-01
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
# Description: Binary test for LUI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # LUI
    lui     x0, 0
    lui     x1, 0
    lui     x2, 0
    lui     x3, 0
    lui     x4, 0
    lui     x5, 0
    lui     x6, 0
    lui     x7, 0
    lui     x8, 0
    lui     x9, 0
    lui     x10, 0
    lui     x11, 0
    lui     x12, 0
    lui     x13, 0
    lui     x14, 0
    lui     x15, 0
    lui     x16, 0
    lui     x17, 0
    lui     x18, 0
    lui     x19, 0
    lui     x20, 0
    lui     x21, 0
    lui     x22, 0
    lui     x23, 0
    lui     x24, 0
    lui     x25, 0
    lui     x26, 0
    lui     x27, 0
    lui     x28, 0
    lui     x29, 0
    lui     x30, 0
    lui     x31, 0

    lui     x1, 0x00000
    lui     x1, 0xFFFFF
    lui     x1, 0x00001
    lui     x1, 0x00002
    lui     x1, 0x00004
    lui     x1, 0x00008
    lui     x1, 0x00010
    lui     x1, 0x00020
    lui     x1, 0x00040
    lui     x1, 0x00080
    lui     x1, 0x00100
    lui     x1, 0x00200
    lui     x1, 0x00400
    lui     x1, 0x00800
    lui     x1, 0x01000
    lui     x1, 0x02000
    lui     x1, 0x04000
    lui     x1, 0x08000
    lui     x1, 0x10000
    lui     x1, 0x20000
    lui     x1, 0x40000
    lui     x1, 0x80000
    lui     x1, 0xFFFFE
    lui     x1, 0xFFFFD
    lui     x1, 0xFFFFB
    lui     x1, 0xFFFF7
    lui     x1, 0xFFFEF
    lui     x1, 0xFFFDF
    lui     x1, 0xFFFBF
    lui     x1, 0xFFF7F
    lui     x1, 0xFFEFF
    lui     x1, 0xFFDFF
    lui     x1, 0xFFBFF
    lui     x1, 0xFF7FF
    lui     x1, 0xFEFFF
    lui     x1, 0xFDFFF
    lui     x1, 0xFBFFF
    lui     x1, 0xF7FFF
    lui     x1, 0xEFFFF
    lui     x1, 0xDFFFF
    lui     x1, 0xBFFFF
    lui     x1, 0x7FFFF

# CODE_END
