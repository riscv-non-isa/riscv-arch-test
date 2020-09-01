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

The riscv-ovpsim simulator is licensed under an Imperas license. There is no dependency on this and it is included as a convenience to users.

## Engineering practice

- Documentation uses the structured text format _AsciiDoc_.  See [`doc/README.adoc`](doc/README.adoc) for more details.

- Some directories use `ChangeLog` files to track changes in the code and documentation.  Please honor these, keeping them up to date and including the ChangeLog entry in the _git_ commit message.

- Please include a comment with the SPDX license identifier in all source files, for example:
```
// SPDX-License-Identifier: BSD-3-Clause
```

## Directory Structure

```
.
├── coverage              # folder containing coverage information of the test suite
├── doc                   # contaitns docs on the test format spec.
├── riscv-target          # folder containing targets for compliance
├── riscv-test-env        # header files used by the test-suites
├── riscv-test-suite      # the actual test-suite
```

## Running the compliance tests

The compliance tests available in this repository only require setting up a target/device on which
the tests are to be run. These targets/devices are found in the `riscv-target` folder.

### Creating Targets for compliance

The following steps need to be followed to create a target for compliance

1. Create a folder under riscv-target with the name of the target/device. Eg. spike
2. Inside riscv-target/spike create a ``compliance_model.h`` file which defines the various target
   based assembly macros. The details of these macros are available in the 
   [TestFormat Spec](spec/TestFormatSpec.adoc)
3. Anyother files required for execution of the target like: linker scripts, configuration scripts,
   etc can also be placed here.
4. craete a folder device under riscv-target/spike
5. If its a 32-bit target create a folder ``rv32i_m``. If its a 64-bit target create a folder ``rv64i_m``
6. Based on the configuration of the target/device you will need to create one or more of the
   following folder:
   ```
   - rv32i_m/I
   - rv32i_m/M
   - rv32i_m/C
   - rv64i_m/I
   - rv64i_m/M
   - rv64i_m/C
   ```
7. Each of the above folders need to provide a ``Makefile.include`` file which defines the following
   make variables
   - ``RUN_TARGET``: This variable needs to include commands and steps to execute an ELF on target.
   - ``COMPILE_TARGET``: This variable should include the commands and steps required to compile an
     assembly test for the target under each extension mentioned above. 

### Running Compliance on Target

Once you have followed the above steps to create a target you run the compliance suite using the
following steps:

1. cd riscv-compliance
2. in the Makefile available in the root folder make the following changes:
   - change XLEN to the default XLEN value of the target/device. Eg. 32 or 64
   - change ``RISCV_TARGET`` to the name of your target. Eg. spike
3. save the changes
4. type ``make``
