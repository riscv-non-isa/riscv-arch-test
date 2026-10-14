##################################
# priv/extensions/Sm_V.py
#
# Sm_V privileged test generator.
# Vector CSR access, vsetvl* behavior, vill, vstart, mstatus.VS.
# Part of the Sm suite: Sm_V_*-NN.S in tests/priv/Sm, run only when Zve32x is also supported.
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sm_V privileged test generator: vector CSRs and vtype/vl/vstart behavior in M-mode."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.VCommon import gen_v_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "Sm",
    required_extensions=["Sm", "Zve32x"],
    extra_defines=[
        "#define RVTEST_VECTOR",
        "#define RVTEST_SEW 0",
        "#define VDSEW 0",
        "#define BOOT_TO_MMODE",
    ],
)
def make_smv(test_data: TestData) -> list[TestChunk]:
    """Generate Sm_V tests (vector CSRs, vsetvl* behavior, vill, vstart, mstatus.VS)."""
    return gen_v_tests(test_data, "M", "Sm_V_cg")
