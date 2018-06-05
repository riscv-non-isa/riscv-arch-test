# RISC-V Compliance Test BC-I-AUIPC-01
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
# Description: Binary test for AUIPC.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # AUIPC
    auipc   x0, 0
    auipc   x1, 0
    auipc   x2, 0
    auipc   x3, 0
    auipc   x4, 0
    auipc   x5, 0
    auipc   x6, 0
    auipc   x7, 0
    auipc   x8, 0
    auipc   x9, 0
    auipc   x10, 0
    auipc   x11, 0
    auipc   x12, 0
    auipc   x13, 0
    auipc   x14, 0
    auipc   x15, 0
    auipc   x16, 0
    auipc   x17, 0
    auipc   x18, 0
    auipc   x19, 0
    auipc   x20, 0
    auipc   x21, 0
    auipc   x22, 0
    auipc   x23, 0
    auipc   x24, 0
    auipc   x25, 0
    auipc   x26, 0
    auipc   x27, 0
    auipc   x28, 0
    auipc   x29, 0
    auipc   x30, 0
    auipc   x31, 0

    auipc   x1, 0x00000
    auipc   x1, 0xFFFFF
    auipc   x1, 0x00001
    auipc   x1, 0x00002
    auipc   x1, 0x00004
    auipc   x1, 0x00008
    auipc   x1, 0x00010
    auipc   x1, 0x00020
    auipc   x1, 0x00040
    auipc   x1, 0x00080
    auipc   x1, 0x00100
    auipc   x1, 0x00200
    auipc   x1, 0x00400
    auipc   x1, 0x00800
    auipc   x1, 0x01000
    auipc   x1, 0x02000
    auipc   x1, 0x04000
    auipc   x1, 0x08000
    auipc   x1, 0x10000
    auipc   x1, 0x20000
    auipc   x1, 0x40000
    auipc   x1, 0x80000
    auipc   x1, 0xFFFFE
    auipc   x1, 0xFFFFD
    auipc   x1, 0xFFFFB
    auipc   x1, 0xFFFF7
    auipc   x1, 0xFFFEF
    auipc   x1, 0xFFFDF
    auipc   x1, 0xFFFBF
    auipc   x1, 0xFFF7F
    auipc   x1, 0xFFEFF
    auipc   x1, 0xFFDFF
    auipc   x1, 0xFFBFF
    auipc   x1, 0xFF7FF
    auipc   x1, 0xFEFFF
    auipc   x1, 0xFDFFF
    auipc   x1, 0xFBFFF
    auipc   x1, 0xF7FFF
    auipc   x1, 0xEFFFF
    auipc   x1, 0xDFFFF
    auipc   x1, 0xBFFFF
    auipc   x1, 0x7FFFF

# CODE_END
