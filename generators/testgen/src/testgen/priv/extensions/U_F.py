##################################
# priv/extensions/U_F.py
#
# U_F floating-point from user mode privileged extension test generator.
# Part of the U suite: U_F-NN.S in tests/priv/U, run only when F is also supported.
# David_Harris@hmc.edu 1 March 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""U_F test generator: floating-point CSRs and xstatus.FS (through T-SBI) in U-mode, part of the U suite."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.FCommon import gen_fcsr_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "U",
    required_extensions=["U", "F"],
    march_extensions=["F", "D", "Zfa"],
)
def make_u_f(test_data: TestData) -> list[TestChunk]:
    """Generate tests for U_F user-mode floating-point testsuite."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk("F")

    tc.code.extend(gen_fcsr_tests(test_data, "U", "U_F_cg"))

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
