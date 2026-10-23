///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`ifdef F_SUPPORTED
`ifdef EXCEPTIONS_SM_OR_U
    Exceptions_F_cg = new();   Exceptions_F_cg.set_inst_name("obj_Exceptions_F");
`endif // EXCEPTIONS_SM_OR_U
`endif // F_SUPPORTED
`ifdef S_SUPPORTED
    Exceptions_S_cg = new();   Exceptions_S_cg.set_inst_name("obj_Exceptions_S");
`endif // S_SUPPORTED
`ifndef EXCLUDE_SM
    Exceptions_Sm_cg = new();   Exceptions_Sm_cg.set_inst_name("obj_Exceptions_Sm");
`endif // EXCLUDE_SM
`ifdef U_SUPPORTED
    Exceptions_U_cg = new();   Exceptions_U_cg.set_inst_name("obj_Exceptions_U");
`endif // U_SUPPORTED
`ifdef ZAAMO_SUPPORTED
`ifdef EXCEPTIONS_SM_OR_U
    Exceptions_Zaamo_cg = new();   Exceptions_Zaamo_cg.set_inst_name("obj_Exceptions_Zaamo");
`endif // EXCEPTIONS_SM_OR_U
`endif // ZAAMO_SUPPORTED
`ifdef ZALRSC_SUPPORTED
`ifdef EXCEPTIONS_SM_OR_U
    Exceptions_Zalrsc_cg = new();   Exceptions_Zalrsc_cg.set_inst_name("obj_Exceptions_Zalrsc");
`endif // EXCEPTIONS_SM_OR_U
`endif // ZALRSC_SUPPORTED
`ifdef ZCA_SUPPORTED
`ifdef EXCEPTIONS_SM_OR_U
    Exceptions_Zc_cg = new();   Exceptions_Zc_cg.set_inst_name("obj_Exceptions_Zc");
`endif // EXCEPTIONS_SM_OR_U
`endif // ZCA_SUPPORTED
`ifdef S_SUPPORTED
`ifdef EXCEPTIONS_ZICBO_ANY
    Exceptions_ZicboS_cg = new();   Exceptions_ZicboS_cg.set_inst_name("obj_Exceptions_ZicboS");
`endif // EXCEPTIONS_ZICBO_ANY
`endif // S_SUPPORTED
`ifndef EXCLUDE_SM
`ifdef EXCEPTIONS_ZICBO_ANY
    Exceptions_ZicboSm_cg = new();   Exceptions_ZicboSm_cg.set_inst_name("obj_Exceptions_ZicboSm");
`endif // EXCEPTIONS_ZICBO_ANY
`endif // EXCLUDE_SM
`ifdef U_SUPPORTED
`ifdef EXCEPTIONS_ZICBO_ANY
    Exceptions_ZicboU_cg = new();   Exceptions_ZicboU_cg.set_inst_name("obj_Exceptions_ZicboU");
`endif // EXCEPTIONS_ZICBO_ANY
`endif // U_SUPPORTED
