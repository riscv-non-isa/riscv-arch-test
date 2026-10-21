// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fcvt_s_wu: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins positive_tie = {64'h0000000001000001};
        bins maximum = {64'h00000000ffffffff};
    }
