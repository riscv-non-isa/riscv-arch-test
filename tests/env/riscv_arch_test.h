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
// hgeip is read-only, so only the platform can raise a guest external interrupt, through the
// optional RVMODEL_SET_GUEST_EXT_INT. UDB has no parameter for this, so key it on that hook.
#if defined(H_SUPPORTED) && defined(RVMODEL_SET_GUEST_EXT_INT)
  #define UDB_SGEI_INTR_IMPL
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
