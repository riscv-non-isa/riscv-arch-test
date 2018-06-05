# RISC-V Compliance Test BC-I-CSRRC-01
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
# Description: Binary test for CSRRC.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # CSRRC
    csrrc   x0, 0, x1
    csrrc   x1, 0, x2
    csrrc   x2, 0, x3
    csrrc   x3, 0, x4
    csrrc   x4, 0, x5
    csrrc   x5, 0, x6
    csrrc   x6, 0, x7
    csrrc   x7, 0, x8
    csrrc   x8, 0, x9
    csrrc   x9, 0, x10
    csrrc   x10, 0, x11
    csrrc   x11, 0, x12
    csrrc   x12, 0, x13
    csrrc   x13, 0, x14
    csrrc   x14, 0, x15
    csrrc   x15, 0, x16
    csrrc   x16, 0, x17
    csrrc   x17, 0, x18
    csrrc   x18, 0, x19
    csrrc   x19, 0, x20
    csrrc   x20, 0, x21
    csrrc   x21, 0, x22
    csrrc   x22, 0, x23
    csrrc   x23, 0, x24
    csrrc   x24, 0, x25
    csrrc   x25, 0, x26
    csrrc   x26, 0, x27
    csrrc   x27, 0, x28
    csrrc   x28, 0, x29
    csrrc   x29, 0, x30
    csrrc   x30, 0, x31
    csrrc   x31, 0, x0

    csrrc   x1, 0x000, x2
    csrrc   x1, 0xFFF, x2
    csrrc   x1, 0x001, x2
    csrrc   x1, 0x002, x2
    csrrc   x1, 0x004, x2
    csrrc   x1, 0x008, x2
    csrrc   x1, 0x010, x2
    csrrc   x1, 0x020, x2
    csrrc   x1, 0x040, x2
    csrrc   x1, 0x080, x2
    csrrc   x1, 0x100, x2
    csrrc   x1, 0x200, x2
    csrrc   x1, 0x400, x2
    csrrc   x1, 0x800, x2
    csrrc   x1, 0xFFE, x2
    csrrc   x1, 0xFFD, x2
    csrrc   x1, 0xFFB, x2
    csrrc   x1, 0xFF7, x2
    csrrc   x1, 0xFEF, x2
    csrrc   x1, 0xFDF, x2
    csrrc   x1, 0xFBF, x2
    csrrc   x1, 0xF7F, x2
    csrrc   x1, 0xEFF, x2
    csrrc   x1, 0xDFF, x2
    csrrc   x1, 0xBFF, x2
    csrrc   x1, 0x7FF, x2

# CODE_END
