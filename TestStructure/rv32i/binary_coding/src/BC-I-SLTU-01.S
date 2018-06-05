# RISC-V Compliance Test BC-I-SLTU-01
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
# Description: Binary test for SLTU.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLTU
    sltu    x0, x1, x2
    sltu    x1, x2, x3
    sltu    x2, x3, x4
    sltu    x3, x4, x5
    sltu    x4, x5, x6
    sltu    x5, x6, x7
    sltu    x6, x7, x8
    sltu    x7, x8, x9
    sltu    x8, x9, x10
    sltu    x9, x10, x11
    sltu    x10, x11, x12
    sltu    x11, x12, x13
    sltu    x12, x13, x14
    sltu    x13, x14, x15
    sltu    x14, x15, x16
    sltu    x15, x16, x17
    sltu    x16, x17, x18
    sltu    x17, x18, x19
    sltu    x18, x19, x20
    sltu    x19, x20, x21
    sltu    x20, x21, x22
    sltu    x21, x22, x23
    sltu    x22, x23, x24
    sltu    x23, x24, x25
    sltu    x24, x25, x26
    sltu    x25, x26, x27
    sltu    x26, x27, x28
    sltu    x27, x28, x29
    sltu    x28, x29, x30
    sltu    x29, x30, x31
    sltu    x30, x31, x0
    sltu    x31, x0, x1

# CODE_END
