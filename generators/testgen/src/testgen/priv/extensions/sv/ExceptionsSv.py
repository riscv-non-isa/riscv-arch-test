##################################
# priv/extensions/sv/ExceptionsSv.py
#
# Virtual-memory exception test generation for the Sv suite"s Exceptions groups.
# Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
# SPDX-License-Identifier: Apache-2.0
##################################

"""Generate S-mode, U-mode and M-mode (MPRV) virtual-memory exception tests."""

from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.sv.ExceptionsSvCommon import make_exception_suite
from testgen.priv.extensions.sv.page_tables import SV32, SV39
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv32"],
    march_extensions=[],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_sv32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="Exceptions", operation="rwx", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv39"],
    march_extensions=[],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_sv39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="Exceptions", operation="rwx", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv32"],
    march_extensions=[],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svsm32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="ExceptionsSm", operation="rwx", machine_state=True)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv39"],
    march_extensions=[],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svsm39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="ExceptionsSm", operation="rwx", machine_state=True)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv32", "Zaamo"],
    march_extensions=["Zaamo"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_svzaamo32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="ExceptionsZaamo", operation="Zaamo", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv39", "Zaamo"],
    march_extensions=["Zaamo"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_svzaamo39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="ExceptionsZaamo", operation="Zaamo", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv32", "Zaamo"],
    march_extensions=["Zaamo"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svzaamosm32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="ExceptionsZaamoSm", operation="Zaamo", machine_state=True)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv39", "Zaamo"],
    march_extensions=["Zaamo"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svzaamosm39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="ExceptionsZaamoSm", operation="Zaamo", machine_state=True)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv32", "Zalrsc"],
    march_extensions=["Zalrsc"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_svzalrsc32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="ExceptionsZalrsc", operation="Zalrsc", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sv39", "Zalrsc"],
    march_extensions=["Zalrsc"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_exceptions_svzalrsc39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="ExceptionsZalrsc", operation="Zalrsc", machine_state=False)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv32", "Zalrsc"],
    march_extensions=["Zalrsc"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svzalrscsm32(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV32, group="ExceptionsZalrscSm", operation="Zalrsc", machine_state=True)


@add_priv_test_generator(
    "Sv",
    required_extensions=["Sm", "Sv39", "Zalrsc"],
    march_extensions=["Zalrsc"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_exceptions_svzalrscsm39(test_data: TestData) -> list[TestChunk]:
    return make_exception_suite(test_data, SV39, group="ExceptionsZalrscSm", operation="Zalrsc", machine_state=True)
