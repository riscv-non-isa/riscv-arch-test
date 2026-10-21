// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fsqrt_s: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins inexact_sqrt_two = {64'h0000000040000000};
        bins negative_one = {64'h00000000bf800000};
    }
