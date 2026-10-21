// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fdiv_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins inexact_third = {128'h000000003f8000000000000040400000};
        bins divide_zero = {128'h000000003f8000000000000000000000};
    }
