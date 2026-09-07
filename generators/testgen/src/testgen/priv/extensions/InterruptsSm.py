##################################
# priv/extensions/InterruptsSm.py
#
# InterruptsSm privileged extension test generator.
# David_Harris@hmc.edu 7 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""InterruptsSm privileged extension test generator for interrupts relying on M-mode."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.InterruptsCommon import INTR_IMPL_DEFINES, emit_interrupts
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "InterruptsSm",
    required_extensions=["Sm"],
    extra_defines=[*INTR_IMPL_DEFINES, "#define BOOT_TO_MMODE"],
)
def make_interruptssm(test_data: TestData) -> list[TestChunk]:
    """Generate tests for InterruptsSm interrupt behavior that relies on M-mode, including M-mode interrupts and delegation."""
    test_chunks: list[TestChunk] = []

    for priv in ["M", "S", "U"]:  # , "VS", "VU"
        emit_interrupts(test_data, test_chunks, "InterruptsSm", priv)

    return test_chunks
