// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fcvt_s_l: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins positive_tie = {64'h0000000001000001};
        bins negative_tie = {64'hfffffffffeffffff};
        bins minimum = {64'h8000000000000000};
        bins maximum = {64'h7fffffffffffffff};
    }
