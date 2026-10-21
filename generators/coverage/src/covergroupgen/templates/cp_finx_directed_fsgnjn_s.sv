// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fsgnjn_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins quiet_payload = {128'h000000007fc123450000000000000000};
        bins signaling_payload = {128'h000000007f8123450000000080000000};
    }
