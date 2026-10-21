// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fnmsub_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val)), 64'(unsigned'(ins.current.rs3_val))} iff (ins.trap == 0) {
        bins single_rounding = {192'h000000003f800001000000003f7ffffe000000003f800000};
        bins tininess_after_rounding = {192'h000000003f00fbff000000008000000100000000007fffff};
        bins zero_times_inf = {192'h0000000000000000000000007f800000000000007fc00000};
    }
