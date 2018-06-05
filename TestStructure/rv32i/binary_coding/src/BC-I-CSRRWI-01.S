# RISC-V Compliance Test BC-I-CSRRWI-01
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
# Description: Binary test for CSRRWI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # CSRRWI
    csrrwi  x0, 0, 0
    csrrwi  x1, 0, 0
    csrrwi  x2, 0, 0
    csrrwi  x3, 0, 0
    csrrwi  x4, 0, 0
    csrrwi  x5, 0, 0
    csrrwi  x6, 0, 0
    csrrwi  x7, 0, 0
    csrrwi  x8, 0, 0
    csrrwi  x9, 0, 0
    csrrwi  x10, 0, 0
    csrrwi  x11, 0, 0
    csrrwi  x12, 0, 0
    csrrwi  x13, 0, 0
    csrrwi  x14, 0, 0
    csrrwi  x15, 0, 0
    csrrwi  x16, 0, 0
    csrrwi  x17, 0, 0
    csrrwi  x18, 0, 0
    csrrwi  x19, 0, 0
    csrrwi  x20, 0, 0
    csrrwi  x21, 0, 0
    csrrwi  x22, 0, 0
    csrrwi  x23, 0, 0
    csrrwi  x24, 0, 0
    csrrwi  x25, 0, 0
    csrrwi  x26, 0, 0
    csrrwi  x27, 0, 0
    csrrwi  x28, 0, 0
    csrrwi  x29, 0, 0
    csrrwi  x30, 0, 0
    csrrwi  x31, 0, 0

    csrrwi  x1, 0x000, 0
    csrrwi  x1, 0xFFF, 0
    csrrwi  x1, 0x001, 0
    csrrwi  x1, 0x002, 0
    csrrwi  x1, 0x004, 0
    csrrwi  x1, 0x008, 0
    csrrwi  x1, 0x010, 0
    csrrwi  x1, 0x020, 0
    csrrwi  x1, 0x040, 0
    csrrwi  x1, 0x080, 0
    csrrwi  x1, 0x100, 0
    csrrwi  x1, 0x200, 0
    csrrwi  x1, 0x400, 0
    csrrwi  x1, 0x800, 0
    csrrwi  x1, 0xFFE, 0
    csrrwi  x1, 0xFFD, 0
    csrrwi  x1, 0xFFB, 0
    csrrwi  x1, 0xFF7, 0
    csrrwi  x1, 0xFEF, 0
    csrrwi  x1, 0xFDF, 0
    csrrwi  x1, 0xFBF, 0
    csrrwi  x1, 0xF7F, 0
    csrrwi  x1, 0xEFF, 0
    csrrwi  x1, 0xDFF, 0
    csrrwi  x1, 0xBFF, 0
    csrrwi  x1, 0x7FF, 0

    csrrwi  x1, 0x000, 0x00
    csrrwi  x1, 0x000, 0x1F
    csrrwi  x1, 0x000, 0x01
    csrrwi  x1, 0x000, 0x02
    csrrwi  x1, 0x000, 0x04
    csrrwi  x1, 0x000, 0x08
    csrrwi  x1, 0x000, 0x10
    csrrwi  x1, 0x000, 0x1E
    csrrwi  x1, 0x000, 0x1D
    csrrwi  x1, 0x000, 0x1B
    csrrwi  x1, 0x000, 0x17
    csrrwi  x1, 0x000, 0x0F

# CODE_END
