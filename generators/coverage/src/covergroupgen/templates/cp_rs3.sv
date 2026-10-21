// SPDX-License-Identifier: Apache-2.0
    cp_rs3 : coverpoint ins.get_gpr_reg(ins.current.rs3)  iff (ins.trap == 0 )  {
        // RS3 register assignment
    }
