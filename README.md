# RISC-V Compliance Task Group

This is a repository for the work of the RISC-V Foundation Compliance Task Group. The repository owners are:
- Jeremy Bennett (Embecosm)
- Lee Moore (Imperas)

Details of the RISC-V Foundation, the work of its task groups, and how to become a member can be found at [riscv.org](https://riscv.org/).

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

## Running the compliance tests

The only setup required is to define where the toolchain is found, and where the target / device is found.

For the toolchain, the binaries must be in the search path and the compiler prefix is defined on the make line. The default value for this is

    RISCV_PREFIX ?= riscv64-unknown-elf-

The path to the RUN_TARGET is defined within the riscv-target Makefile.include.

To run the rv32i test suite on riscvOVPsim you must first download riscvOVPsim, and install in a directory parallel to riscv-compliance
Simply clone [github.com/riscv-ovpsim](https://github.com/riscv-ovpsim/imperas-riscv-tests)

Set the environment variable TARGET_SIM to point to the executable <install-dir>/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe
    
Now run the command

    export TARGET_SIM=/home/riscv/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe
    make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i

### Accessing riscvOVPsim

**riscvOVPsim** was created by Imperas in 2018 to assist in the development of compliance tests and to provide a free, high quality, configurable reference simulator of the RISC-V specifications. 

It was provided in this repository as a convenience. It has now evolved and has been enhanced and moved to its own repository.

There are now two flavors: _riscvOVPsim_ from [github.com/riscv-ovpsim](https://github.com/riscv-ovpsim/imperas-riscv-tests) which is useful for running compliance tests and generating the required signatures, and _riscvOVPsimPlus_ from [ovpworld.org/riscv-ovpsim-plus](https://www.ovpworld.org/riscv-ovpsim-plus) which is used for test development and verification. 

Please contact info@ovpworld.org or info@imperas.com for more information.

For details on riscvOVPsim look here: [github.com/riscv-ovpsim](https://github.com/riscv-ovpsim/imperas-riscv-tests) and here: [riscv-ovpsim/doc/riscvOVPsim_User_Guide.pdf](https://github.com/riscv-ovpsim/imperas-riscv-tests/blob/main/riscv-ovpsim/doc/riscvOVPsim_User_Guide.pdf).

### Running Instruction Functional Coverage with riscvOVPsim

As you develop tests you can measure their coverage with the built-in features of riscvOVPsim. Please see chapter 7 in the [riscv-ovpsim/doc/riscvOVPsim_User_Guide.pdf](https://github.com/riscv-ovpsim/imperas-riscv-tests/blob/main/riscv-ovpsim/doc/riscvOVPsim_User_Guide.pdf) for full details.

To run basic coverage on a suite:

     make clean
     make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i RISCV_ISA=rv32i COVERTYPE=basic
     make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i RISCV_ISA=rv32i COVERTYPE=basic cover

To run extended coverage on a suite:

     make clean
     make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i RISCV_ISA=rv32i COVERTYPE=extended
     make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i RISCV_ISA=rv32i COVERTYPE=extended cover

### Using the simulators from the Sail RISC-V formal model

The [Sail RISC-V formal model](https://github.com/rems-project/sail-riscv) generates two
simulators, in C and OCaml.  They can be used as test targets for this compliance suite.

For this purpose, the Sail model needs to be checked out and built on
the machine running the compliance suite.  Follow the build
instructions described the README for building the RV32 and RV64
models.  Once built, please add `$SAIL_RISCV/c_emulator` and
`$SAIL_RISCV/ocaml_emulator` to your path, where $SAIL_RISCV is the
top-level directory containing the model.

To test the compliance of the C simulator for the current RV32 and RV64 tests, use

    make RISCV_TARGET=sail-riscv-c all_variant

while the corresponding command for the OCaml simulator is

    make RISCV_TARGET=sail-riscv-ocaml all_variant

### Using the GRIFT simulator

The [GRIFT](https://github.com/GaloisInc/grift) formal model and simulation tool
can be used as a test target for this compliance suite.

GRIFT needs to be cloned and built on the machine running the compliance
suite. Follow the build instructions described in the README for building the
GRIFT simulator. Once build, add the generated `grift-sim` executable to your
path.

To test the compliance of the GRIFT simulator for the current RV32 and RV64
tests, use

    make RISCV_TARGET=grift all_variant

Note that the I-MISALIGN_LDST test fails for GRIFT because GRIFT currently
supports misaligned loads and stores in hardware, while the test is specifically
written for systems that trap on misaligned loads and stores.
