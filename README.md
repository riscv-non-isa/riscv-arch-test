# RISC-V Compliance Task Group

This is a repository for the work of the RISC-V Foundation Compliance Task Group. The repository owners are:
- Jeremy Bennett (Embecosm)
- Lee Moore (Imperas)

Details of the RISC-V Foundation, the work of its task groups, and how to become a member can be found at [riscv.org](https://riscv.org/).

## Contribution process

You are encouraged to contribute to this repository by submitting pull requests and by commenting on pull requests submitted by other people.

- Where a pull request is non-controversial one of the repository owners will immediately merge it. The respository uses rebase merges to maintain a linear history.

- Other pull requests will be publicised to the task group for comment and decision at a subsequent meeting of the group. Everyone is encouraged to comment on a pull request. Such pull requests will be merged by when a concensus/decision has been reached by the task group.

## Licensing

In general:
- code is licensed under the BSD 3-clause license (SPDX license identifier `BSD-3-Clause`); while
- documentation is licensed under the Creative Commons Attribution 4.0 International license (SPDX license identifier `CC-BY-4.0`).

The files [`COPYING.BSD`](./COPYING.BSD) and [`COPYING.CC`](./COPYING.CC) in the top level directory contain the complete text of these licenses.

## Engineering practice

- Documentation uses the structured text format _AsciiDoc_.  See [`doc/README.md`](doc/README.md) for more details.

- Some directories use `ChangeLog` files to track changes in the code and documentation.  Please honor these, keeping them up to date and including the ChangeLog entry in the _git_ commit message.

- Please include a comment with the SPDX license identifier in all source files, for example:
```
// SPDX-License-Identifier: BSD-3-Clause
```

## Running the compliance tests

The only setup required is to define where the toolchain is found, and where the target device is found

In the Makefile there are 2 entries to be defined for `GCC_BIN` & `OVP_BIN`

I have as yet only defined a single test which uses any logging, this is the test `I-IO`. This test contains a number of logging macros, eg

    RVTEST_IO_WRITE_STR("# Test part A1 - Complete\n");

and assertion macros for sequential correctness

    RVTEST_IO_ASSERT_EQ(x3, 0x00000000)

To run on rv32i on either riscvOVPsim or spike

    make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i
    make RISCV_TARGET=spike RISCV_DEVICE=rv32i

### Accessing riscvOVPsim

Currently the Imperas developed _riscvOVPsim_ compliance simulator is not yet publicly available on GitHub. Imperas is working on this. In the mean time if you would like early access to this fully functional RISC-V simulator please contact info@ovpworld.org or info@imperas.com
