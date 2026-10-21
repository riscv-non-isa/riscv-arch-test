///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

    InterruptsS_cg = new();         InterruptsS_cg.set_inst_name("obj_InterruptsS");
    `ifdef H_SUPPORTED
        InterruptsS_h_cg = new();       InterruptsS_h_cg.set_inst_name("obj_InterruptsS_h");
        `ifdef RVMODEL_SET_GUEST_EXT_INT
            InterruptsS_gei_m_cg = new();   InterruptsS_gei_m_cg.set_inst_name("obj_InterruptsS_gei_m");
            InterruptsS_gei_cg = new();     InterruptsS_gei_cg.set_inst_name("obj_InterruptsS_gei");
        `endif
    `endif
