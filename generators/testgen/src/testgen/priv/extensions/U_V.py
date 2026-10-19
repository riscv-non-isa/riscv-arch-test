##################################
# priv/extensions/U_V.py
#
# U_V user-mode vector privileged test generator.
# Vector CSR access, vset* behavior, vill, vstart and xstatus.VS (through T-SBI), shared with Sm_V and S_V.
# Part of the U suite: U_V_*-NN.S in tests/priv/U, run only when Zve32x is also supported.
# SPDX-License-Identifier: Apache-2.0
##################################

"""U_V privileged test generator: vector CSRs and vtype/vl/vstart behavior in U-mode."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.VCommon import gen_v_tests
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "U",
    required_extensions=["U", "Zve32x"],
    extra_defines=[
        "#define RVTEST_VECTOR",
        "#define RVTEST_SEW 0",
        "#define VDSEW 0",
    ],
)
def make_u_v(test_data: TestData) -> list[TestChunk]:
    """Generate U_V tests (vector CSRs, vsetvl* behavior, vill, vstart, xstatus.VS from U-mode)."""
    return gen_v_tests(test_data, "U", "U_V_cg")
