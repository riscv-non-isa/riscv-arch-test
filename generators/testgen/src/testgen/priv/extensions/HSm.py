##################################
# priv/extensions/HSm.py
#
# H CSR tests requiring standard machine mode
# wutianze@ict.ac.cn Sep 2026
# SPDX-License-Identifier: Apache-2.0
##################################
"""Machine-mode hypervisor CSR access and isolation tests."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.HCommon import access_tests, replica_tests, scalar_tests, walk_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "HSm",
    required_extensions=["H", "Sm"],
    extra_defines=["#define BOOT_TO_MMODE"],
    testcases_per_file=16,
)
def make_hsm(test_data: TestData) -> list[TestChunk]:
    """Generate the H CSR tests whose tested behavior requires M-mode."""
    chunks: list[TestChunk] = []
    chunks.extend(access_tests(test_data, "cp_m_hcsr_access", "m"))
    chunks.extend(walk_tests(test_data, "cp_m_hcsr_walk", "m"))
    chunks.extend(replica_tests(test_data, "cp_m_replica", "m"))
    chunks.extend(scalar_tests(test_data, "cp_m_mtval", "mtval"))
    return chunks
