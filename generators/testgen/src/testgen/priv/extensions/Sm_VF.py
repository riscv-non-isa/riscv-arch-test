##################################
# priv/extensions/Sm_VF.py
#
# Sm_VF privileged test generator.
# Vector floating-point interactions with mstatus.FS state transitions.
# Part of the Sm suite: Sm_VF-NN.S in tests/priv/Sm, run only when Zve32f is also supported.
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sm_VF privileged test generator: vector-FP × mstatus.FS state."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.VFCommon import gen_vf_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "Sm",
    required_extensions=["Sm", "Zve32f"],
    march_extensions=["F", "Zve32f"],
    extra_defines=[
        "#define RVTEST_VECTOR",
        "#define RVTEST_SEW 0",
        "#define VDSEW 0",
        "#define BOOT_TO_MMODE",
    ],
)
def make_smvf(test_data: TestData) -> list[TestChunk]:
    """Generate Sm_VF tests (vector-FP x mstatus.FS state)."""
    return gen_vf_tests(test_data, "M", "Sm_VF_cg")
