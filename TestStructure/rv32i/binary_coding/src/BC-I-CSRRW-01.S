# RISC-V Compliance Test BC-I-CSRRW-01
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
# Description: Binary test for CSRRW.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # CSRRW
    csrrw   x0, 0, x1
    csrrw   x1, 0, x2
    csrrw   x2, 0, x3
    csrrw   x3, 0, x4
    csrrw   x4, 0, x5
    csrrw   x5, 0, x6
    csrrw   x6, 0, x7
    csrrw   x7, 0, x8
    csrrw   x8, 0, x9
    csrrw   x9, 0, x10
    csrrw   x10, 0, x11
    csrrw   x11, 0, x12
    csrrw   x12, 0, x13
    csrrw   x13, 0, x14
    csrrw   x14, 0, x15
    csrrw   x15, 0, x16
    csrrw   x16, 0, x17
    csrrw   x17, 0, x18
    csrrw   x18, 0, x19
    csrrw   x19, 0, x20
    csrrw   x20, 0, x21
    csrrw   x21, 0, x22
    csrrw   x22, 0, x23
    csrrw   x23, 0, x24
    csrrw   x24, 0, x25
    csrrw   x25, 0, x26
    csrrw   x26, 0, x27
    csrrw   x27, 0, x28
    csrrw   x28, 0, x29
    csrrw   x29, 0, x30
    csrrw   x30, 0, x31
    csrrw   x31, 0, x0

    csrrw   x1, 0x000, x2
    csrrw   x1, 0xFFF, x2
    csrrw   x1, 0x001, x2
    csrrw   x1, 0x002, x2
    csrrw   x1, 0x004, x2
    csrrw   x1, 0x008, x2
    csrrw   x1, 0x010, x2
    csrrw   x1, 0x020, x2
    csrrw   x1, 0x040, x2
    csrrw   x1, 0x080, x2
    csrrw   x1, 0x100, x2
    csrrw   x1, 0x200, x2
    csrrw   x1, 0x400, x2
    csrrw   x1, 0x800, x2
    csrrw   x1, 0xFFE, x2
    csrrw   x1, 0xFFD, x2
    csrrw   x1, 0xFFB, x2
    csrrw   x1, 0xFF7, x2
    csrrw   x1, 0xFEF, x2
    csrrw   x1, 0xFDF, x2
    csrrw   x1, 0xFBF, x2
    csrrw   x1, 0xF7F, x2
    csrrw   x1, 0xEFF, x2
    csrrw   x1, 0xDFF, x2
    csrrw   x1, 0xBFF, x2
    csrrw   x1, 0x7FF, x2

# CODE_END
