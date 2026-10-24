# riscv_arch_test.h
# Top-level riscv-arch-test header file
# Jordan Carlin jcarlin@hmc.edu October 2025
# SPDX-License-Identifier: Apache-2.0

#include "rvtest_config.h"
#include "derived_config.h"
#include "encoding.h"
#ifdef ENABLE_EXPERIMENTAL_EXTENSIONS
  #include "rvtest_experimental.h"
#endif
#include "utils.h"
#include "rvmodel_macros.h"

// Select the cycle counter for the timing tests (the Zkt suite and the data-independent latency checks of
// the cryptographic instructions): cycle with Zicntr, else mcycle in M-mode. mcycle exists only with
// standard M-mode CSRs, which rvmodel_macros.h declares (STANDARD_SM_SUPPORTED), so this follows it. With neither, RVTEST_CYCLE_CSR stays undefined and the tests run untimed.
#ifdef RVTEST_USES_CYCLE_CSR
  #if defined(ZICNTR_SUPPORTED)
    #define RVTEST_CYCLE_CSR cycle
  #elif defined(STANDARD_SM_SUPPORTED)
    #define RVTEST_CYCLE_CSR mcycle
    #define BOOT_TO_MMODE
  #endif
#endif

#ifndef RVTEST_SELFCHECK
  #include "sail_macros.h"
#endif
#include "check_defines.h"
#include "signature.h"
#include "rvtest_macros.h"
#if UDB_NUM_PMP_ENTRIES > 0
  #include "rvtest_pmp_macros.h"
#endif
#ifdef RVTEST_VECTOR
  #include "rvtest_macros_vector.h"
#endif
#ifdef H_SUPPORTED
  #include "rvtest_macros_hypervisor.h"
#endif
#include "rvtest_trap_handler.h"
#include "rvtest_invisible_trap_handler.h"
#include "rvtest_failure_code.h"
#include "rvtest_setup.h"
