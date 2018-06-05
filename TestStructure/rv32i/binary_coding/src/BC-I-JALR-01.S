# RISC-V Compliance Test BC-I-JALR-01
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
# Description: Binary test for JALR.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # JALR
    jalr    x0, x1, 0
    jalr    x1, x2, 0
    jalr    x2, x3, 0
    jalr    x3, x4, 0
    jalr    x4, x5, 0
    jalr    x5, x6, 0
    jalr    x6, x7, 0
    jalr    x7, x8, 0
    jalr    x8, x9, 0
    jalr    x9, x10 , 0
    jalr    x10, x11, 0
    jalr    x11, x12, 0
    jalr    x12, x13, 0
    jalr    x13, x14, 0
    jalr    x14, x15, 0
    jalr    x15, x16, 0
    jalr    x16, x17, 0
    jalr    x17, x18, 0
    jalr    x18, x19, 0
    jalr    x19, x20, 0
    jalr    x20, x21, 0
    jalr    x21, x22, 0
    jalr    x22, x23, 0
    jalr    x23, x24, 0
    jalr    x24, x25, 0
    jalr    x25, x26, 0
    jalr    x26, x27, 0
    jalr    x27, x28, 0
    jalr    x28, x29, 0
    jalr    x29, x30, 0
    jalr    x30, x31, 0
    jalr    x31, x0, 0

    jalr    x1, x2, 0x00000000
    jalr    x1, x2, 0xFFFFFFFF
    jalr    x1, x2, 0x00000001
    jalr    x1, x2, 0x00000002
    jalr    x1, x2, 0x00000004
    jalr    x1, x2, 0x00000008
    jalr    x1, x2, 0x00000010
    jalr    x1, x2, 0x00000020
    jalr    x1, x2, 0x00000040
    jalr    x1, x2, 0x00000080
    jalr    x1, x2, 0x00000100
    jalr    x1, x2, 0x00000200
    jalr    x1, x2, 0x00000400
    jalr    x1, x2, 0xFFFFF800
    jalr    x1, x2, 0xFFFFFFFE
    jalr    x1, x2, 0xFFFFFFFD
    jalr    x1, x2, 0xFFFFFFFB
    jalr    x1, x2, 0xFFFFFFF7
    jalr    x1, x2, 0xFFFFFFEF
    jalr    x1, x2, 0xFFFFFFDF
    jalr    x1, x2, 0xFFFFFFBF
    jalr    x1, x2, 0xFFFFFF7F
    jalr    x1, x2, 0xFFFFFEFF
    jalr    x1, x2, 0xFFFFFDFF
    jalr    x1, x2, 0xFFFFFBFF
    jalr    x1, x2, 0x000007FF

# CODE_END
