# RISC-V Compliance Test BC-I-SLL-01
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
# Description: Binary test for SLL.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLL
    sll     x0, x1, x2
    sll     x1, x2, x3
    sll     x2, x3, x4
    sll     x3, x4, x5
    sll     x4, x5, x6
    sll     x5, x6, x7
    sll     x6, x7, x8
    sll     x7, x8, x9
    sll     x8, x9, x10
    sll     x9, x10, x11
    sll     x10, x11, x12
    sll     x11, x12, x13
    sll     x12, x13, x14
    sll     x13, x14, x15
    sll     x14, x15, x16
    sll     x15, x16, x17
    sll     x16, x17, x18
    sll     x17, x18, x19
    sll     x18, x19, x20
    sll     x19, x20, x21
    sll     x20, x21, x22
    sll     x21, x22, x23
    sll     x22, x23, x24
    sll     x23, x24, x25
    sll     x24, x25, x26
    sll     x25, x26, x27
    sll     x26, x27, x28
    sll     x27, x28, x29
    sll     x28, x29, x30
    sll     x29, x30, x31
    sll     x30, x31, x0
    sll     x31, x0, x1

# CODE_END
