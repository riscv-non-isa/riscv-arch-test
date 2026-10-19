///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

    SdtrigSm_trig_module_reg_cg = new();       SdtrigSm_trig_module_reg_cg.set_inst_name("obj_SdtrigSm_trig_module_reg");
    SdtrigSm_access_cg = new();                SdtrigSm_access_cg.set_inst_name("obj_SdtrigSm_access");
    SdtrigSm_icount_cg = new();                SdtrigSm_icount_cg.set_inst_name("obj_SdtrigSm_icount");
    SdtrigSm_a_cg = new();                     SdtrigSm_a_cg.set_inst_name("obj_SdtrigSm_a");
    SdtrigSm_cache_operations_cg = new();      SdtrigSm_cache_operations_cg.set_inst_name("obj_SdtrigSm_cache_operations");
    `ifdef S_SUPPORTED
        SdtrigSm_native_triggers_cg = new();   SdtrigSm_native_triggers_cg.set_inst_name("obj_SdtrigSm_native_triggers");
    `endif
    SdtrigSm_mcontrol6_cg = new();             SdtrigSm_mcontrol6_cg.set_inst_name("obj_SdtrigSm_mcontrol6");
    SdtrigSm_textra_cg = new();                SdtrigSm_textra_cg.set_inst_name("obj_SdtrigSm_textra");
    `ifdef UDB_TCONTROL_AVAILABLE
        SdtrigSm_tcontrol_cg = new();          SdtrigSm_tcontrol_cg.set_inst_name("obj_SdtrigSm_tcontrol");
    `endif
