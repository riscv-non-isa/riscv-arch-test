// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fclass_s: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins quiet_payload = {64'h000000007fc12345};
        bins signaling_payload = {64'h000000007f812345};
    }
