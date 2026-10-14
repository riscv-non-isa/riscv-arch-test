##################################
# priv/extensions/Sm_F.py
#
# Sm_F floating-point from machine mode privileged extension test generator.
# Part of the Sm suite: Sm_F-NN.S in tests/priv/Sm, run only when F is also supported.
# David_Harris@hmc.edu 1 March 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sm_F test generator: floating-point CSRs and mstatus.FS in M-mode, part of the Sm suite."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.FCommon import gen_fcsr_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "Sm",
    required_extensions=["Sm", "F"],
    march_extensions=["F", "D", "Zfa"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_smf(test_data: TestData) -> list[TestChunk]:
    """Generate tests for Sm_F machine-mode floating-point testsuite."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk("F")

    tc.code.extend(gen_fcsr_tests(test_data, "M", "Sm_F_cg"))

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
