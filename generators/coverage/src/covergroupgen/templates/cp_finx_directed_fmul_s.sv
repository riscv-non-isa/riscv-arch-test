// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fmul_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins tininess_after_rounding = {128'h0000000000800001000000003f7ffffe};
    }
