# RISC-V Test Suites

The tests are grouped based on the different extension subsets of the RISC-V unprivileged ISA.
The tests strictly follow the [Test format](../spec/TestFormatSpec.adoc) specification.


The coverage report (in html format) of the tests available in this suite is generated through
[RISCOF](https://gitlab.com/incoresemi/riscof) and is available here: [Coverage Report](../coverage/).

These tests have been generated using the open source Compliance Test Generator from InCore Semiconductors available 
at: [CTG](https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg).

The reference signatures are generated using Spike.

Directory structure
```

├── env                       # contains the compliance test header files
└── rv32i_m                   # top level folder indicate rv32 tests for machine mode
    ├── C                     # include tests and references for "C" extension
    │   ├── references        # static references signatures for "C" extension
    │   └── src               # assembly tests for "C" extension
    ├── I                     # include tests and references for "I" extension
    │   ├── references        # static references signatures for "I" extension
    │   └── src               # assembly tests for "I" extension
    ├── M                     # include tests and references for "M" extension
    │   ├── references        # static references signatures for "M" extension
    │   └── src               # assembly tests for "M" extension
    ├── privilege             # include tests and references for tests which require Privilege Spec 
    │   ├── references        # static references signatures for tests which require Privilege Spec
    │   └── src               # assembly tests for tests which require Privilege Spec
    └── Zifencei              # include tests and references for "Zifencei" extension
        ├── references        # static references signatures for "Zifencei" extension
        └── src               # assembly tests for "Zifencei" extension
└── rv64i_m                   # top level folder indicate rv64 tests for machine mode
    ├── C                     # include tests and references for "C" extension
    │   ├── references        # static references signatures for "C" extension
    │   └── src               # assembly tests for "C" extension
    ├── I                     # include tests and references for "I" extension
    │   ├── references        # static references signatures for "I" extension
    │   └── src               # assembly tests for "I" extension
    ├── M                     # include tests and references for "M" extension
    │   ├── references        # static references signatures for "M" extension
    │   └── src               # assembly tests for "M" extension
    ├── privilege             # include tests and references for tests which require Privilege Spec 
    │   ├── references        # static references signatures for tests which require Privilege Spec
    │   └── src               # assembly tests for tests which require Privilege Spec
    └── Zifencei              # include tests and references for "Zifencei" extension
        ├── references        # static references signatures for "Zifencei" extension
        └── src               # assembly tests for "Zifencei" extension
```
