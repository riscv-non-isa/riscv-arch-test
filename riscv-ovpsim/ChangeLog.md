riscvOVPsim Change Log
===
Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com

This CHANGELOG contains information for the riscvOVPsim fixed platform which includes information of the OVP Simulator and RISCV processor model

---

NOTE: X-commit messages below refer to git commits in the following
      Risc-V specification document repositories:
  I-commit: https://github.com/riscv/riscv-isa-manual
  V-commit: https://github.com/riscv/riscv-v-spec

- First release of Imperas Instruction Functional Coverage engine to provide coverage of
  RISC-V Compliance Test Suites.
- mintstatus, sintstatus and uintstatus CSRs have been reassigned to addresses
  0x346, 0x146 and 0x046, respectively.

Date 2020-July-09
Release 20200708.0
===

- Reads of instret and cycle CSRs now exclude the current instruction from the
  reported count.
- The vector version master branch currently has these differences compared to
  the previous 0.9 version:
  - SLEN=VLEN register layout is mandatory;
  - ELEN>VLEN is now supported for LMUL>1;
  - Whole register moves and load/stores now have element size hints;
  - Instructions vfrsqrte7.v and vfrece7.v added, with candidate implementations
    (precise behavior is not yet defined).

Date 2020-June-30
Release 20200629.0
===

- Vector Extension
  - behavior of vslidedown.vx and vslidedown.vi with a slide of 0 when source
    and destination vector registers are the same has been corrected.

Date 2020-June-22
Release 20200619.0
===

- Vector Extension
  - sstatus.VS field alias has been implemented in its new position (from
    specification version 0.9).

Date 2020-June-17
Release 20200616.0
===

- Core-Local Interrupt Controller (CLIC)
  - address for xintthresh CSRs have been changed to 0xm47 (previously 0xm4A)
- Vector Extension
  - Checking of overlap of vector registers for vector indexed segment loads and
    stores has been corrected.

Date 2020-June-09
Release 20200608.0
===

- The Bit-Manipulation Extension is now implemented in the model, with version
  defined by parameter bitmanip_version.
- Some Vector Extension issues have been corrected:
  - Parameter order shown by disassembly of vector AMO instructions has been
    corrected. Model behavior is not affected by this change.
  - Encodings of integer extension instructions have been corrected for Vector
    Extension version 0.9.
- The vector version master branch currently has these differences compared to
  the previous 0.9 version:
  - V-commit 443ce5b: overlap constraints for different source/destination EEW
    changed.

Date 2020-May-27
Release 20200526.0
===

- Memory accesses that straddle PMP region boundaries are now disallowed for
  M-mode, even if those regions imply full M-mode access.

Date 2020-May-22
Release 20200521.0
===

- Memory accesses that straddle PMP region boundaries are now disallowed.
- EBREAK now sets tval to 0 if priv_version is set to master.
- Some Vector Extension issues have been corrected:
  - Encodings of VFUNARY0/VFUNARY1 instructions have been corrected for Vector
    Extension version 0.9.
  - Alignment of vector register groups when explicit EEW is being used has been
    corrected for Vector Extension version 0.9.

Date 2020-May-19
Release 20200518.0
===

- EBREAK and ECALL no longer count as retired instructions if priv_version
  is set to master.
- SC instruction behavior has been changed so that store address alignment is
  validated even if the reservation check fails (previously, alignment was
  validated only if the reservation check succeeded).
- Masking of the mcountinhibit CSR has been corrected - previously, bit 1 and
  bits 63...32 were writeable when they should have been 0.
- The nmi signal has been corrected to match the documented behavior, execution
  resumes at the nmi_address parameter value when the nmi signal goes high
- The optional Core-Local Interrupt Controller (CLIC) has been implemented
  (version 0.9-draft-20191208).
- Vector version 0.9 has been added, and is now used by default. Differences
  compared to the previous 0.8 version are as follows (with the associated
  specification V-commit identifiers):
  - V-commit bdb8b55: mstatus.VS and sstatus.VS fields have moved to bits 10:9;
  - V-commit b25b643: new CSR vcsr has been added and fields VXSAT and VXRM
    fields relocated there from CSR fcsr;
  - V-commit 951b64f: mirrors of fcsr fields have been removed from vcsr.
  - V-commit 1aceea2: vfslide1up.vf and vfslide1down.vf instructions added.
  - V-commit e256d65: vfcvt.rtz.xu.f.v, vfcvt.rtz.x.f.v, vfwcvt.rtz.xu.f.v,
    vfwcvt.rtz.x.f.v, vfncvt.rtz.xu.f.v and vfncvt.rtz.x.f.v instructions added;
  - V-commit 8a9fbce (and others): fractional LMUL support added, controlled by
    an extended vtype.vlmul CSR field;
  - V-commit f414f4d (and others): vector tail agnostic and vector mask agnostic
    fields added to the vtype CSR;
  - V-commit a526fb9 (and others): all vector load/store instructions replaced
    with new instructions that explicitly encode EEW of data or index;
  - V-commit ef531ea: whole register load and store operation encodings changed;
  - V-commit bdc85cd: vzext.vf2, vsext.vf2, vzext.vf4, vsext.vf4, vzext.vf8 and
     vsext.vf8 instructions added;
  - V-commit 9a77e12: MLEN is always 1.
- Some Vector Extension issues have been corrected:
  - Instructions vfmv.s.f and vfmv.f.s now require that SEW is a supported
    floating point size (pending vector specification clarification).

Date 2020-March-31
Release 20200330.0
===

- The priority order for handling simultaneous interrupts destined for the
  same privilege level has been corrected (previously, these were handled so
  that higher interrupt numbers were higher priority).
- Some Vector Extension issues have been corrected:
  - All vector floating point instructions now generate Illegal Instruction
    exceptions if the current rounding mode is invalid, even if those
    instructions do not use the rounding mode.

Date 2020-March-13
Release 20200312.0
===

- Support for Debug mode has been added; see RISCV processor documentation for
  more details.
- The priv_version parameter now includes a choice of 'master', which specifies
  that the evolving 1.12 Privileged Architecture Specification should be used.
  This has the following changes compared to the ratified 1.11 version:
  - MRET and SRET instruction clear mstatus.MPRV when leaving M-mode;
  - For RV32, a new mstatush CSR has been added;
  - Data endian is now configurable using UBE, SBE and MBE fields in mstatus
    and the new mstatush CSR.
- New parameter SEW_min has been added to specify the minimum SEW supported when
  the Vector Extension is implemented; the default is 8 bits.
- When the Vector Extension is implemented, the maximum VLEN value supported
  has increased from 2048 to 65536 bits.
- Some Vector Extension issues have been corrected:
  - Behavior of vslidedown has been corrected in cases when vl<vlmax. Previously
    elements where source element i satisfied vl<=i+offset were being zeroed;
    now, elements where source element i satisfies vlmax<=i+offset are zeroed.
- Some Vector Extension specification changes have been implemented:
  - V-commit 951b64f: Mirrors of fcsr fields have been removed from vcsr.
  - V-commit 45da90d: segment loads and stores have been restricted to SEW
    element size only.

Date 2020-February-19
Release 20200218.0
===

---

- Some Vector Extension issues have been corrected:
  - Behavior of vmv.x.s and vfmv.f.s has been corrected when vstart>=vl so that
    the result register is correctly updated (previously it was left unchanged 
    in this case).
  - Behavior of whole-register operations when vtype.vill=1 has been corrected
    (these instructions should execute even when vtype.vill=1).
  - Behavior of vid.v has been corrected when vstart!=0.

Date 2020-February-13
Release 20200212.0
===

- Some details of CSR access behavior have been corrected:
  - For Vector Extension version 0.8, access to vxsat and vxrm now requires both
    mstatus.FS and mstatus.VS to be non-zero; previously, only non-zero
    mstatus.FS was required. Note that from Vector Extension version 0.9
    onwards, only mstatus.VS is required because these two fields are now
    aliased in the new vcsr CSR instead of the fcsr CSR.
- An issue has been fixed in which an incorrect exception was raised on an
  access error during a page table walk.
- Some Vector Extension issues have been corrected:
  - Behavior of vpopc.m and vfirst.m has been corrected when vl==0.
  - Executing vsetvl/vsetvli instructions now sets vector state to dirty.
  - Behavior of whole-register operations when vstart!=0 has been corrected.
  - Vector indexed segment load instructions now raise an Illegal Instruction
    if the destination vector register overlaps either source or mask.
  - Decodes for vqmaccus and vqmaccsu instructions have been exchanged to match
    the specification
  - Implementations of vmv.s.x, vfmv.f.s and vfmv.s.f have been corrected to
    prevent Illegal Instruction exceptions being reported for odd-numbered
    vector registers for non-zero LMUL. These instructions should ignore LMUL.
  - Instruction vfmv.s.f has been corrected to validate that the argument is
    NaN-boxed when required.
- The vector version master branch currently has these differences compared to
  the previous 0.8 version:
  - V-commit bdb8b55: mstatus.VS and sstatus.VS fields have moved to bits 10:9;
  - V-commit b25b643: new CSR vcsr has been added and fields VXSAT and VXRM
    fields relocated there from CSR fcsr

Date 2020-February-06
Release 20200206.0
===

- Bit Manipulation Extension
  - Corrected sign extension for addwu, subwu, addiwu and slliu.w that were 
    incorrectly changed in the last fix.

- Command line argument 'memory' is modified so that permissions argument is required
  and uses the characters rR, wW and xX for read, write and execute.


Date 2020-January-21
Release 20200120.0
===

- Fix the vector version (0.7.1-draft-20190605) selected by Vector example scripts
  to match the cross compiler toolchain used to build the ELF files executed.

- Fixed memory argument so that more than two memory regions can be added 

Date 2020-January-17
Release 20200116.0
===

- Some Vector Extension issues have been corrected:
  - V-commit b9fd7c9: For vector versions 0.8-draft-20190906 and later, vmv.s.x
    and vmv.x.s now sign extend their operands if required (previously, they
    were zero extended)

Date 2020-January-15
Release 20200114.0
===

- Some Vector Extension issues have been corrected:
  - An issue has been corrected that caused a simulator error in blocks with
    some variants of vsetvl/vsetvli instructions.

Date 2020-January-10
Release 20200110.0
===

- Bit Manipulation Extension
  - Added sign extension for *w instructions on 64-bit processors.

- Command line argument 'memory' allows regions of memory to be defined using
  a string of form "low:high:permission"
  for example
     -memory 0x0000:0xffff:7 -memory 0xffff0000:0xffffffff:7
  or, as a comma separated list
     -memory 0x0000:0xffff:7,0xffff0000:0xffffffff:7
  both create two memory regions with read, write and execute permissions.
  The permissions field is optional, the default is RWX, if defined the
  bits signify 1:Read, 2:Write, 3:eXecute permission for the memory region. 
 
- V-commit f4056da: Encodings for vwmaccsu and vwmaccus instruction variants
  have been changed in 0.8-draft-20191004 and all subsequent versions to comply
  with a specification change of September 17th 2019.

Date 2019-December-18
Release 20191217.0
===

- Vector version 0.8 has been added, and is now used by default. Differences
  compared to the previous 0.8-draft-20191118 version are as follows (with the
  associated specification V-commit identifiers):
  - V-commit a6f94e7: vector context status in mstatus register is now
    implemented;
  - V-commit 49cbd95: whole register load and store operations have been
    restricted to a single register only;
  - V-commit 49cbd95: whole register move operations have been restricted to
    aligned groups of 1, 2, 4 or 8 registers only.
- The vector version master branch currently has no differences compared to
  the previous 0.8 version, but will change as the specification evolves.

Date 2019-December-09
Release 20191206.0
===

- Some Vector Extension issues have been corrected:
  - vfmne behavior has been corrected to return 1 for unordered operands
    (previously, 0 was returned).

Date 2019-November-29
Release 20191128.0
===

- New parameter require_vstart0 has been added to control whether
  non-interruptible Vector Extension instructions require CSR vstart to be zero.
- Some Vector Extension issues have been corrected:
  - An issue has been corrected that caused some variants of AMO instructions
    discarding the operation result to cause Illegal Instruction exceptions
    incorrectly.
  - Reduction operations with destination overlapping a source are now legal
    when LMUL>1; previously, such operations caused Illegal Instruction
    exceptions.

Date 2019-November-26
Release 20191126.0
===

- Bit Manipulation Extension has been updated to Version 0.92
- The vector version master branch currently has these differences compared to
  the previous 0.8-draft-20191118 version:
  - V-commit a6f94e7: vector context status in mstatus register is now
    implemented;
  - V-commit 49cbd95: whole register load and store operations have been
    restricted to a single register only;
  - V-commit 49cbd95: whole register move operations have been restricted to
    aligned groups of 1, 2, 4 or 8 registers only.
  This set of changes will increase as the master specification evolves.

Date 2019-November-25
Release 20191122.0
===

- Memory exceptions now produce information about the failure in verbose mode.
- Vector version 0.8-draft-20190906 has been added. The only difference between
  this version and the stable 0.8-draft-20191004 version is the encodings of
  vwsmaccsu and vwsmaccus instruction variants.
- Vector version 0.8-draft-20191117 has been added. Differences to the previous
  0.8-draft-20191004 version are as follows (with the associated specification
  V-commit identifiers):
  - V-commit 8d4492e: Indexed load/store instructions now zero extend offsets
    (in version 0.8-draft-20191004, they are sign-extended);
  - V-commit d06438e: vslide1up/vslide1down instructions now sign extend XLEN
    values to SEW length (in version 0.8-draft-20191004, they are
    zero-extended);
  - V-commit 5a038da: vadc/vsbc instruction encodings now require vm=0 (in 
    version 0.8-draft-20191004, they require vm=1);
  - V-commit 5a038da: vmadc/vmsbc instruction encodings now allow both vm=0,
    implying carry input is used, and vm=1, implying carry input is zero (in
    version 0.8-draft-20191004, only vm=1 is permitted implying carry input is
    used);
  - V-commit c2f3157: vaaddu.vv, vaaddu.vx, vasubu.vv and vasubu.vx
    instructions have been added;
  - V-commit c2f3157: vaadd.vv and vaadd.vx, instruction encodings have been
    changed;
  - V-commit c2f3157: vaadd.vi instruction has been removed;
  - V-commit 063b128: all widening saturating scaled multiply-add instructions
    have been removed;
  - V-commit 200a557: vqmaccu.vv, vqmaccu.vx, vqmacc.vv, vqmacc.vx, vqmacc.vx, 
    vqmaccsu.vx and vqmaccus.vx instructions have been added;
  - V-commit 7b02297: CSR vlenb has been added (giving vector register length
    in bytes);
  - V-commit 7b02297: load/store whole register instructions have been added;
  - V-commit 7b02297: whole register move instructions have been added.
- Vector version 0.8-draft-20191118 has been added. Differences to the previous
  0.8-draft-20191117 version are as follows (with the associated specification
  V-commit identifiers):
  - V-commit b6c48c3: vsetvl/vsetvli with rd!=zero and rs1=zero sets vl to the
    maximum vector length (previously, this combination preserved vl).
- The vector_version master branch is currently identical to the stable
  0.8-draft-20191118 version, but will change as the master specification
  evolves.

Date 2019-November-19
Release 20191119.0
===

- Some Vector Extension issues have been corrected:
  - Behavior of vnclipu.wi and vnclip.wi instructions has been corrected
  - Behavior of some polymorphic instructions when vl=0 has been corrected

Date 2019-November-14
Release 20191114.0
===

- Some Vector Extension issues have been corrected:
  - Behavior of vsetvl instruction on RV64 base has been corrected
  - Vector AMO operations for memory element bits less than 32 now cause Illegal
    Instruction exceptions.
  - Alignment required for vector AMO operations accessing 32-bit data is now
    four bytes - previously, eight-byte alignment was required for SEW=64.
  - Encodings for vwsmaccsu and vwsmaccus instruction variants has been changed
    in 0.8-draft-20191004 and master versions to comply with a specification
    change of September 17th 2019.
- Vector version 0.8-draft-20190906 has been added. The only difference between
  this version and the stable 0.8-draft-20191004 version is the encodings of
  vwsmaccsu and vwsmaccus instruction variants.
- The vector_version master branch currently has the following changes compared
  to the stable 0.8-draft-20191004 version:
  - Indexed load/store instructions now zero extend offsets (in version
    0.8-draft-20191004, they are sign-extended);
  - vslide1up/vslide1down instructions now sign extend XLEN values to SEW length
    (in version 0.8-draft-20191004, they are zero-extended);
  - vadc/vsbc instruction encodings now require vm=0 (in version
    0.8-draft-20191004, they require vm=1);
  - vmadc/vmsbc instruction encodings now allow both vm=0, implying carry input
    is used, and vm=1, implying carry input is zero (in version
    0.8-draft-20191004, only vm=1 is permitted implying carry input is used).
  This set of changes will increase as the master specification evolves.

Date 2019-November-04
Release 20191104.0
===
- Behavior for fault-only-first vector segment load instructions has been corrected.
- Behavior for vector atomic operations with 32-bit memory element width has been corrected.
- Behavior for vector register gather operations when index>=VL and index<=VLMAX has been corrected.
- Vector atomic operations with SEW greater than XLEN now cause an Illegal Instruction exception.

Date 2019-October-09
Release 20191009.0
===
- The model has a new parameter vector_version which can be used to select
  either the stable 0.7.1 Vector Extension (the default) or the unstable master
  branch. The master branch currently has the following changes compared to the
  stable 0.7.1 branch:
  - behavior of vsetvl and vsetvli instructions when rs1 = x0 preserves the
    current vl instead of selecting the maximum possible vl.
  - tail vector and scalar elements are preserved, not zeroed.
  - vext.s.v, vmford.vv and vmford.vf instructions have been removed;
  - encodings for vfmv.f.s, vfmv.s.f, vmv.s.x, vpopc.m, vfirst.m, vmsbf.m, 
    vmsif.m, vmsof.m, viota.m and vid.v instructions have changed;
  - overlap constraints for slideup and slidedown instructions have been relaxed
    to allow overlap of destination and mask when SEW=1.
  - 64-bit vector AMO operations have been replaced with SEW-width vector AMO
    operations.
  - The double-width source vector register group for narrowing operations is
    now signified by a 'w' in the source operand suffix. Previously, a 'v' was
    used.
  - Instruction vfncvt.rod.f.f.w has been added (to allow narrowing floating
    point conversions with jamming semantics).
  This set of changes will increase as the master specification evolves.
- Default semihosting has been changed to use the ecall and ebreak instruction
  as the interception point for the host to implement the system call. This
  uses the same set of syscall numbers which are defined as part of the proxy
  kernel library for newlib.

Date 2019-Sept-23
Release 20190923.0
===
- The model has a new parameter vector_version which can be used to select
  either the stable 0.7.1 Vector Extension (the default) or the unstable master
  branch. The master branch currently has the following changes compared to the
  stable 0.7.1 branch:
  - behavior of vsetvl and vsetvli instructions when rs1 = x0 preserves the
    current vl instead of selecting the maximum possible vl.
  - tail vector and scalar elements are preserved, not zeroed.
  - vext.s.v and vmford.vv instructions have been removed;
  - vmv.s.x instruction has been added;
  - encodings for vpopc.m, vfirst.m, vmsbf.m, vmsif.m, vmsof.m, viota.m and
    vid.v instructions have changed;
  - overlap constraints for slideup and slidedown instructions have been relaxed
    to allow overlap of destination and mask when SEW=1.
  - 64-bit vector AMO operations have been replaced with SEW-width vector AMO
    operations.
  This set of changes will increase as the master specification evolves.
- Some vector extension issues have been corrected:
  - Behavior of vsetvl and vsetvli instructions when requested vector size
    exceeds the implementation limits has been corrected.
  - Two decodes for non-existent vector compare instructions have been removed.
  - The constraint on legal LMUL for segmented load/store operations has been
    changed from requiring LMUL=1 to requiring LMUL*NFIELDS<=8. This corresponds
    to a specification change made on 2019-June-06.
  - decodes for instructions which only exist in unmasked form have been
    changed so that the vm field in the instruction must be 1 (previously, this
    bit was treated as a don't-care).
  - instruction disassembly has been improved for 'move' instructions (this
    change does not affect model behavior).
  - A bug has been fixed which caused an error when an attempt was made to
    execute floating point instructions with a scalar argument and with SLEN
    less than 32.
  - A bug has been fixed which caused narrowing floating point/integer type
    conversion instructions targeting integer types to raise illegal instruction
    exceptions when the current SEW is smaller than the smallest supported
    floating point SEW. These instructions should be legal when SEW*2 is the
    smallest supported floating point SEW and SEW is legal for integer types.
- Enhancements to the B Extensions to include the instructions as part of the
  v0.91 specification, also added a parameter for version selection, currently
  v0.90 and v 0.91. The default will always be the later specification
- A bug has been fixed which caused some instructions that update the fcsr 
  register not to also update mstatus.FS when required.
- Parameter "fs_always_dirty" has been removed; new parameter "mstatus_fs_mode"
  has been added to allow the conditions under which mstatus.FS is set to Dirty
  to be specified more precisely. See processor variant documentation for a
  detailed description of the available options.
- A fix has been made to the cmix instruction so it no longer writes the t0 
  register. Note this is not in the base model, but in the extB prototype bit 
  manipulation extension library.
- New functions to support modeling Transactional Memory features in an 
  extension library have been added to the enhanced model support call backs in 
  the base model. 
- Corrected memory sizing in the riscvOVPsim fixed platform to use address 
  range specified by argument addressbits.
- Fixed bug when using new vmi_IMULSU operation.
- Bug fixed which could cause incorrect results for floating point round or 
  convert to unsigned operations when non-vmi_FPR_CURRENT rounding modes are
  used in general arithmetic operations, as per RISC-V.
- A bug was fixed that could cause incorrect behavior when PMP region mappings
  change.

Date 2019-June-28
Release 20190628.0
===

- Fixed bug that caused the Model Specific Documentation for the SiFive 
  U54MC model to be missing the sections under Overview.
- The vector extension is now implemented and enabled if the V bit is set in
  the misa register. Variants RV32GCV and RV64GCV have been added which enable
  this extension as standard. See the processor documentation for these variants
  for more information.
- New parameter 'add_Extensions' can be used to specify extensions to add to a
  base variant, by misa letter. For example, value "VD" specifies that vector
  and double-precision floating point extensions should be added.
- New parameter 'add_Extensions_mask' can be used to specify that bits in the
  misa register should be writable, by letter. For example, value "VD" specifies
  that vector and double-precision floating point extensions can be dynamically
  enabled.
- Newlib semihost library for RiscV processors now support the naming convention 
  for defining the start of the heap that is used by the linker scripts in
  the BSPs provided in the SiFive freedom-e-sdk.
- Semihosting of the _sbrk() function will now report an error if it is called 
  and cannot find the expected symbol that defines the start of the heap area.
- The Model Specific Information document for each variant now includes 
  information on the extensions that are supported by the model but not enabled 
  on the specific variant being documented. 
- Various changes have been made to implement conformance with Privileged
  Architecture specification 20190405-Priv-MSU-Ratification, as follows:
  - The priority order of synchronous exceptions has been modified;
  - A new parameter, xret_preserves_lr, allows specification that xRET
    instructions should preserve the current value of LR (if False, LR is
    cleared by these instructions);
  - Behavior of misa and xepc registers on systems with variable IALIGN has been
    changed to match the specification;
  - misa.I is now writable if the write mask permits it. misa.E is read only and
    always the complement of misa.I;
  - The mcountinhibit CSR has been implemented.
- Various changes have been made to implement conformance with Base Architecture
  specification 20190303-User-Ratification, as follows:
  - A new parameter, unalignedAMO, controls whether AMO instructions support
    unaligned addresses. LR/SC instructions now never support unaligned
    addresses.
  - RV32E may now be used in conjunction with other extensions. misa.E is now
    always a read-only complement of misa.I.
- The SFENCE.VMA instruction is now only supported if Supervisor mode is
  implemented.
- When Privileged Level version 1.11 is enabled (see the priv_version parameter)
  mstatus.TW is now writable if any Privilege Level other than Machine mode is
  implemented. When Privileged Level version 1.10 is enabled, this field is
  writable only if Supervisor mode is implemented.
- A bug has been fixed which caused PMP privileges to be incorrectly set in some
  cases (where a high priority unlocked region was disabled and covered the same
  address range as a lower priority locked region).
- The model has been simplified to use the built-in VMI RMM rounding mode
  support.

Date 2019-March-06
Release 20190306.0
===
- Relaxed the fence instruction for finer grain as per specification of values
  for imm[11:0], rs1 and rd fields
- The model now supports save and restore.
- Field mstatus.MPP has been changed from WLRL to WARL in accordance with
  version 1.11 of the Privileged Specification). When written with an illegal
  value, the previous legal value is preserved.
- RMM rounding mode is now fully implemented for all operations.
- A bug has been fixed in which some floating point convert operations were not
  causing Illegal Instruction exceptions when rounding modes 5 and 6 were
  specified in the instruction.
- A bug has been fixed which could cause permissions for locked PMP regions to
  be ignored in Machine mode in some cases.
- A bug has been fixed which would prevent instruction access faults being
  raised in some circumstances for instructions that straddle PMP region
  boundaries.
- A new parameter PMP_grain allows the grain size (G) of PMP regions to be
  specified. For example, a value of 3 indicates that the smallest implemented
  PMP region size is 32 bytes.

Date 2018-November-14
Release 20181114.0
===
- A bug has been fixed which allowed User mode accesses to unimplemented
  hardware performance registers irrespective of the settings in the counter
  enable registers.
- Instruction address misaligned faults are now taken on the branch or jump
  instruction instead of the target instruction.
- A bug has been fixed in which RV64 instructions like sraiw with shifts >= 32
  bits (e.g. sraiw a2,a2,0x20) did not cause an exception.
- A bug has been fixed in which compressed instructions with shifts >= 32 bits
  (e.g. srai a2,a2,0x20) did not cause an exception when RV64I is absent or
  disabled.
- Decode for compressed instructions c.addi4spn, c.addi16sp, c.lui, c.jr,
  c.addiw, c.lwsp and c.ldsp has been corrected to properly handle reserved
  cases.
- A bug has been fixed in which the source value of fmv.s instructions was not
  being checked as NaN-boxed.
- A bug has been fixed which caused sedeleg and sideleg registers to be present
  when user-level interrupts were present and supervisor mode was absent. These
  registers should be present only if both supervisor mode and user-level
  interrupts are present.

Date 2018-August-03
Release 20180716.2
===

Date 2018-July-16
Release 20180716.0
===
- The RISCV processor model has been changed to set the default initial PC at 
  simulation start to the value indicated by the processor model's reset_address
  parameter. Previously the default start address was 0x0.
  NOTE: The --startaddress command line argument or the start address from an 
  ELF file that is loaded will override this value.
  NOTE: The default value for the reset_address can vary by variant, since this
  is defined to be an implementation dependent value by the RISCV specification.
  See the Model Specific Information document to see what value is implemented 
  for a specific variant.
  
Date 2018-March-12
Release 20180221.1
===

Date 2018-February-21
Release 20180221.0
===
- The model has been extensively rewritten to implement privilege levels and
  state consistent with Privileged Architecture version 1.10, including virtual
  memory and physical memory protection registers.

Date 2017-September-19
Release 20170919.0
===
This is the first release of the RISC-V models. There is a generic
model that implements the RISC-V ISA variants and there are vendor specific
cores.

To see the available processor models use:
    iss.exe --showlibraryprocessors
and to see the specific variants these contain use:
    iss.exe --showvariants --processorname riscv

Date 2017-May-12
Release 20170511.0
===
- The model supporting variants RV32G, RV32I, RV64G and RV64I is released.

Date 2017-February-01
Release 20170201.0
===