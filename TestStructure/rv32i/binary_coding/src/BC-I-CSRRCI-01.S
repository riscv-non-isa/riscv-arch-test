# RISC-V Compliance Test BC-I-CSRRCI-01
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
# Description: Binary test for CSRRCI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # CSRRCI
    csrrci  x0, 0, 0
    csrrci  x1, 0, 0
    csrrci  x2, 0, 0
    csrrci  x3, 0, 0
    csrrci  x4, 0, 0
    csrrci  x5, 0, 0
    csrrci  x6, 0, 0
    csrrci  x7, 0, 0
    csrrci  x8, 0, 0
    csrrci  x9, 0, 0
    csrrci  x10, 0, 0
    csrrci  x11, 0, 0
    csrrci  x12, 0, 0
    csrrci  x13, 0, 0
    csrrci  x14, 0, 0
    csrrci  x15, 0, 0
    csrrci  x16, 0, 0
    csrrci  x17, 0, 0
    csrrci  x18, 0, 0
    csrrci  x19, 0, 0
    csrrci  x20, 0, 0
    csrrci  x21, 0, 0
    csrrci  x22, 0, 0
    csrrci  x23, 0, 0
    csrrci  x24, 0, 0
    csrrci  x25, 0, 0
    csrrci  x26, 0, 0
    csrrci  x27, 0, 0
    csrrci  x28, 0, 0
    csrrci  x29, 0, 0
    csrrci  x30, 0, 0
    csrrci  x31, 0, 0

    csrrci  x1, 0x000, 0
    csrrci  x1, 0xFFF, 0
    csrrci  x1, 0x001, 0
    csrrci  x1, 0x002, 0
    csrrci  x1, 0x004, 0
    csrrci  x1, 0x008, 0
    csrrci  x1, 0x010, 0
    csrrci  x1, 0x020, 0
    csrrci  x1, 0x040, 0
    csrrci  x1, 0x080, 0
    csrrci  x1, 0x100, 0
    csrrci  x1, 0x200, 0
    csrrci  x1, 0x400, 0
    csrrci  x1, 0x800, 0
    csrrci  x1, 0xFFE, 0
    csrrci  x1, 0xFFD, 0
    csrrci  x1, 0xFFB, 0
    csrrci  x1, 0xFF7, 0
    csrrci  x1, 0xFEF, 0
    csrrci  x1, 0xFDF, 0
    csrrci  x1, 0xFBF, 0
    csrrci  x1, 0xF7F, 0
    csrrci  x1, 0xEFF, 0
    csrrci  x1, 0xDFF, 0
    csrrci  x1, 0xBFF, 0
    csrrci  x1, 0x7FF, 0

    csrrci  x1, 0x000, 0x00
    csrrci  x1, 0x000, 0x1F
    csrrci  x1, 0x000, 0x01
    csrrci  x1, 0x000, 0x02
    csrrci  x1, 0x000, 0x04
    csrrci  x1, 0x000, 0x08
    csrrci  x1, 0x000, 0x10
    csrrci  x1, 0x000, 0x1E
    csrrci  x1, 0x000, 0x1D
    csrrci  x1, 0x000, 0x1B
    csrrci  x1, 0x000, 0x17
    csrrci  x1, 0x000, 0x0F

# CODE_END
