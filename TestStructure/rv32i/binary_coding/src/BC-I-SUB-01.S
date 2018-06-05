# RISC-V Compliance Test BC-I-SUB-01
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
# Description: Binary test for SUB.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SUB
    sub     x0, x1, x2
    sub     x1, x2, x3
    sub     x2, x3, x4
    sub     x3, x4, x5
    sub     x4, x5, x6
    sub     x5, x6, x7
    sub     x6, x7, x8
    sub     x7, x8, x9
    sub     x8, x9, x10
    sub     x9, x10, x11
    sub     x10, x11, x12
    sub     x11, x12, x13
    sub     x12, x13, x14
    sub     x13, x14, x15
    sub     x14, x15, x16
    sub     x15, x16, x17
    sub     x16, x17, x18
    sub     x17, x18, x19
    sub     x18, x19, x20
    sub     x19, x20, x21
    sub     x20, x21, x22
    sub     x21, x22, x23
    sub     x22, x23, x24
    sub     x23, x24, x25
    sub     x24, x25, x26
    sub     x25, x26, x27
    sub     x26, x27, x28
    sub     x27, x28, x29
    sub     x28, x29, x30
    sub     x29, x30, x31
    sub     x30, x31, x0
    sub     x31, x0, x1

# CODE_END
