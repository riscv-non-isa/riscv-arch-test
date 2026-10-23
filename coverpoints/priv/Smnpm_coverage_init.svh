///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

Smnpm_SSm_cg = new();
Smnpm_SSm_cg.set_inst_name("obj_Smnpm_SSm");
Smnpm_S_cg = new();
Smnpm_S_cg.set_inst_name("obj_Smnpm_S");
`ifndef S_SUPPORTED
Smnpm_U_cg = new();
Smnpm_U_cg.set_inst_name("obj_Smnpm_U");
`endif
`ifndef S_SUPPORTED
Smnpm_USm_cg = new();
Smnpm_USm_cg.set_inst_name("obj_Smnpm_USm");
`endif
