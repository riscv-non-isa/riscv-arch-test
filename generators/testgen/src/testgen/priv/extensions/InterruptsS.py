##################################
# priv/extensions/InterruptsS.py
#
# InterruptsS privileged extension test generator.
# David_Harris@hmc.edu 7 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""InterruptsS privileged extension test generator for interrupts not relying on M-mode."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.InterruptsCommon import INTR_IMPL_DEFINES, emit_interrupts
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "InterruptsS",
    required_extensions=["S"],
    extra_defines=[*INTR_IMPL_DEFINES, "#define BOOT_TO_SMODE"],
)
def make_interruptss(test_data: TestData) -> list[TestChunk]:
    """Generate tests for InterruptsS interrupt behavior that does not rely on M-mode."""
    test_chunks: list[TestChunk] = []

    for priv in ["S", "U"]:  # , "VS", "VU"
        emit_interrupts(test_data, test_chunks, "InterruptsS", priv)

    return test_chunks
