// SPDX-License-Identifier: Apache-2.0
    cmp_rs1_rs3 : coverpoint ins.get_gpr_reg(ins.current.rs1)  iff (ins.current.rs1 == ins.current.rs3 & ins.trap == 0 )  {
        // Compare assignments of all registers
    }
