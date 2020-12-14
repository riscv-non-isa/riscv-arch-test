# RISC-V Compliance Task Group

This is a repository for the work of the RISC-V Foundation Compliance Task Group. The repository owners are:
- Jeremy Bennett (Embecosm)
- Lee Moore (Imperas)

Details of the RISC-V Foundation, the work of its task groups, and how to become a member can be found at [riscv.org](https://riscv.org/).

For more details and documentation on the current testing framework see: [`doc/README.adoc`](doc/README.adoc)

For more details on the test format spec see: ['spec/TestFormatSpec.adoc'](spec/TestFormatSpec.adoc)

## Test Disclaimers

The following are the exhaustive list of disclaimers that can be used as waivers by target owners 
when reporting the status of pass/fail on the execution of the architectural suite on their respective targets.

1. The references uploaded for the following misaligned load/store tests will match targets which do 
   not support misaligned load/stores in hardware. Targets with hardware misaligned support for 
   load/stores will fail these tests.

   1. rv32i_m/privilege/src/misalign-[lb[u],lh[u],lw,sh,sb,sw]-01.S
   2. rv64i_m/privilege/src/misalign-[lb[u],lh[u],lw[u],ld,sb,sh,sw,sd]-01.S

2. The references uploaded for the following misaligned instruction tests will match targets which 
   have compressed extension support enabled by default. Targets without the compressed extension 
   support will fail the following tests:
   1. rv[32/64]i_m/privilege/src/misalign-b[ge[u],lt[u],eq,ne]-01.S
   2. rv[32/64]i_m/privilege/src/misalign[1,2]-jalr-01.S

3. The machine mode trap handler used in the privilege tests assumes one of the following conditions. 
   Targets not satisfying any of the following conditions are bound to fail the entire 
   rv32i_m/privilege and rv64i_m/privilege tests:
   1. The target must have implemented mtvec which is completely writable by the test in machine mode.
   2. The target has initialized mtvec, before entering the test (via RVMODEL_BOOT), to point to a memory location which has both read and write permissions.

## Contribution process

You are encouraged to contribute to this repository by submitting pull requests and by commenting on pull requests submitted by other people.

- Where a pull request is non-controversial one of the repository owners will immediately merge it. The repository uses rebase merges to maintain a linear history.

- Other pull requests will be publicised to the task group for comment and decision at a subsequent meeting of the group. Everyone is encouraged to comment on a pull request. Such pull requests will be merged by when a consensus/decision has been reached by the task group.

## Licensing

In general:
- code is licensed under the BSD 3-clause license (SPDX license identifier `BSD-3-Clause`); while
- documentation is licensed under the Creative Commons Attribution 4.0 International license (SPDX license identifier `CC-BY-4.0`).

The files [`COPYING.BSD`](./COPYING.BSD) and [`COPYING.CC`](./COPYING.CC) in the top level directory contain the complete text of these licenses.

## Engineering practice

- Documentation uses the structured text format _AsciiDoc_.  See [`doc/README.adoc`](doc/README.adoc) for more details.

- Some directories use `ChangeLog` files to track changes in the code and documentation.  Please honor these, keeping them up to date and including the ChangeLog entry in the _git_ commit message.

- Please include a comment with the SPDX license identifier in all source files, for example:
```
// SPDX-License-Identifier: BSD-3-Clause
```

## Quick Links:

- [RISCOF](https://riscof.readthedocs.io/en/latest/): This is the next version of the architectural test framework currently under development
- [RISCV-ISAC](https://riscv-isac.readthedocs.io/en/latest/index.html): This is an ISA level coverage extraction tool for RISC-V which used to generate the coverage statistics of the architectural tests.
- [RISCV-CTG](https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg): This is a RISC-V Architectural Test generator used to generate some of the tests already checked into this repository. Docs to be updated soon !!
- [Videos](https://youtu.be/VIW1or1Oubo): This Global Forum 2020 video provides an introduction to the above mentioned tools

