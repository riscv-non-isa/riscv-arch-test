///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`ifndef EXCLUDE_SM
    ZicntrPriv_Sm_cg = new();   ZicntrPriv_Sm_cg.set_inst_name("obj_ZicntrPriv_Sm");
`endif
    ZicntrPriv_S_cg = new();    ZicntrPriv_S_cg.set_inst_name("obj_ZicntrPriv_S");
    ZicntrPriv_U_cg = new();    ZicntrPriv_U_cg.set_inst_name("obj_ZicntrPriv_U");
