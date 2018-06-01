# Generic framework for compliance testing

This directory containts work-in-progress for a generic testing framework.  It
separates out state initialization and state validation, so these can be
customized to different environments.  The development can be tracked through
the `ChangeLog` which is also recorded in the git log.

**Note.**  We are only concerned with semantic compliance of the
encoded instructions.  There is a separate issue of syntactic compliance by
any assembler implementation, which is a matter for testing of the assembler.

## General principles

Almost all tests are of single instructions.  Some future tests may wish to
consider pairs or even longer sequences of instructions to validate particular
combinations.  Each test has the form (in assembler)
```
	INITIALIZE_STATE
	<instruction being tested>
	VALIDATE_STATE
```
Where `INITIALIZE_STATE` and `VALIDATE_STATE` are macros.  Depending on the
approach `VALIDATE_STATE` can be used to produce a signature, compare with a
reference signature or print output.

It is intended that each instruction test is a standalone entity in its own
right. Thus `INITIALIZE_STATE` can drive all setup required.

### `INITIALIZE_STATE`

The state of a RISC-V machine is defined by
- its general purpose registers
- its memory
- any relevant CSRs

Clearly some of this will depend on the specific variant being used, both the
base instruction set (RV32I, RV32E, RV64I, RV128I) and any instruction
extensions being used.

Since we will check for negatives, it is important that all unused state is
initialized to some meaningful non-zero value, such as `0x55555555`.

It is up to the specific implementation whether any non-state side-effects,
such as output are caused by this macro.

### `VALIDATE_STATE`

This must check that the state (as defined by `INITIALIZE_STATE`) is as
expected.  In particular it must check for negative behavior.  So for example:
```
	add     x1,x2,x3
```
should check not only that x1 has the expected new value, but that all other
registers (and CSRs) have not changed and that memory has not been altered.

It is up to the specific implementation whether any non-state side-effects,
such as output are caused by this macro.

### Supported tests

We need to consider that some tests may be out of scope even for a compliant
implementation. A particular case is the ability to validate extreme
addressing with implementations having limited memory.

This section will describe the chosen mechanism.

_TBD_

## Reference implementations

The following reference implementations will be provided:
- Spike
- QEMU
- OVPSim
- CGEN simulator within GDB
- CGEN simulator via GDB Remote Serial Protocol
- RI5CY verilator model

These will be provided initially for RV32I and RV64I.  These will be
supplemented by optional instruction sets and RV32E and RV128I in due course.

The objective is to find all the parameterization required for the compliance
tests to be generic over the long term.

## Useful considerations

### Grouping of tests

It makes sense to group together tests by encoding and where appropriate
within this by function

### Three address instruction variants

Note that a three address instruction of the general form
```
	OP      <d>,<s1>,<s2>
```
Has the following variants for consideration
```
	OP      A,A,A
	OP      A,B,B
	OP      B,A,B
	OP      B,B,A
	OP      A,B,C
```
### Boundary conditions

Instructions should be tested at their boundaries. For registers this means
considering particularly `x0`, `x1`, `x15` (for RV32E) and `x31`.  For values
this means considering 0, 1, -1, MAX, -MAX, UMAX.  For constants (12-bit) this
means considering 0, 1, -1, 4095, 2047, -2048.  For memory, the boundaries of
8-bit, 16-bit, 32-bit and 64-bit addressibility should be tested, although
physical limitations may mean some of these cannot be supported.

### Testing negatives

In general tests should be provided for the negative state.  However presence
of extra instructions is never a fault, since arbitrary extensions are
permitted.  Thus all RV32IM implementations are also compliant RV32I
implementations.  A side-effect of this is that there is no generic test for
an illegal instruction.

In the future we may want to consider adding testing for an exact set of
instructions, to allow architectures to validate that they have no unexpected
behavior.
