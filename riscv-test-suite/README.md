# RISC-V Test Suites

The tests are grouped based on the different extension subsets of the RISC-V unprivileged ISA.
The tests strictly follow the [Test format](../spec/TestFormatSpec.adoc) specification.

Directory names postfixed with "\_unratified" indicate that tests for extensions that have not yet
been ratified by RVI.

The coverage report (in html format) of the tests available in this suite is generated through
[RISCOF](https://gitlab.com/incoresemi/riscof) and is available here: [Coverage Report](../coverage/).

These tests have been generated using the open source Compatibility Test Generator from InCore Semiconductors available 
at: [CTG](https://github.com/riscv/riscv-ctg).

The reference signatures are generated using [SAIL](https://github.com/rems-project/sail-riscv) or
[SPIKE](https://github.com/riscv/riscv-isa-sim).

Test directories with the "\_unratified" post-fix indicate test-suites for extensions which have not been
ratified (but are stable and near ratification)

Directory structure
```

├── env                       # contains the architectural test header files
└── rv32i_m                   # top level folder indicate rv32 tests for machine mode
    ├── C                     # include tests and references for "C" extension
    │   └── src               # assembly tests for "C" extension
    ├── I                     # include tests and references for "I" extension
    │   └── src               # assembly tests for "I" extension
    ├── M                     # include tests and references for "M" extension
    │   └── src               # assembly tests for "M" extension
    ├── K_unratified          # include tests and references for "K" extension
    │   └── src               # assembly tests for "K" extension
    ├── privilege             # include tests and references for tests which require Privilege Spec 
    │   └── src               # assembly tests for tests which require Privilege Spec
    └── Zifencei              # include tests and references for "Zifencei" extension
        └── src               # assembly tests for "Zifencei" extension
└── rv64i_m                   # top level folder indicate rv64 tests for machine mode
    ├── C                     # include tests and references for "C" extension
    │   └── src               # assembly tests for "C" extension
    ├── I                     # include tests and references for "I" extension
    │   └── src               # assembly tests for "I" extension
    ├── M                     # include tests and references for "M" extension
    │   └── src               # assembly tests for "M" extension
    ├── K_unratified          # include tests and references for "K" extension
    │   └── src               # assembly tests for "K" extension
    ├── privilege             # include tests and references for tests which require Privilege Spec 
    │   └── src               # assembly tests for tests which require Privilege Spec
    └── Zifencei              # include tests and references for "Zifencei" extension
        └── src               # assembly tests for "Zifencei" extension
```
