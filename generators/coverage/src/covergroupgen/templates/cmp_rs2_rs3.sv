// SPDX-License-Identifier: Apache-2.0
    cmp_rs2_rs3 : coverpoint ins.get_gpr_reg(ins.current.rs2)  iff (ins.current.rs2 == ins.current.rs3 & ins.trap == 0 )  {
        // Compare assignments of all registers
    }
