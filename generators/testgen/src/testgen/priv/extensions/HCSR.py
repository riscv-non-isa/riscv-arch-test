##################################
# priv/extensions/HCSR.py
#
# H CSR tests from HS, VS, U and VU modes
# wutianze@ict.ac.cn Sep 2026
# SPDX-License-Identifier: Apache-2.0
##################################
"""Hypervisor CSR tests using the ACT4 supervisor execution environment."""

from itertools import product

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.HCommon import (
    CSR,
    OPS,
    access_tests,
    csr_case,
    denied_tests,
    high_half_tests,
    replica_tests,
    scalar_tests,
    tvm_tests,
    walk_tests,
)
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "H",
    required_extensions=["H"],
    extra_defines=["#define BOOT_TO_SMODE"],
    testcases_per_file=16,
)
def make_h_csr(test_data: TestData) -> list[TestChunk]:
    """Generate CSR tests independently of the existing H generators."""
    chunks: list[TestChunk] = []
    chunks.extend(access_tests(test_data, "cp_hs_hcsr_access", "hs"))
    chunks.extend(walk_tests(test_data, "cp_hs_hcsr_walk", "hs"))
    chunks.extend(denied_tests(test_data, "cp_hs_mcsr_denied", "hs", "machine"))
    chunks.extend(replica_tests(test_data, "cp_hs_replica", "hs"))
    chunks.extend(scalar_tests(test_data, "cp_hs_vscause", "vscause"))
    chunks.extend(denied_tests(test_data, "cp_vs_mcsr_denied", "vs", "machine"))
    chunks.extend(high_half_tests(test_data, "cp_vs_high_half", "vs"))
    chunks.extend(replica_tests(test_data, "cp_vs_replica", "vs"))
    for csr, op in product((CSR("senvcfg"), CSR("scounteren")), OPS):
        chunks.append(csr_case(test_data, "cp_vs_nonreplica", "vs", csr, op))
    chunks.extend(scalar_tests(test_data, "cp_vs_sd", "sd"))
    chunks.extend(denied_tests(test_data, "cp_u_hcsr_denied", "u", "all"))
    chunks.extend(high_half_tests(test_data, "cp_u_high_half", "u"))
    chunks.extend(denied_tests(test_data, "cp_vu_csr_denied", "vu", "all"))
    chunks.extend(high_half_tests(test_data, "cp_vu_high_half", "vu"))
    chunks.extend(tvm_tests(test_data))
    return chunks
