
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000d80')]      |
| SIG_REGION                | [('0x80002210', '0x800026f0', '312 words')]      |
| COV_LABELS                | ukmsr64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukmsr64-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 223      |
| Total Signature Updates   | 309      |
| STAT1                     | 99      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 206     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d4]:UKMSR64 t5, t6, t4
      [0x800009d8]:sw t5, 540(ra)
 -- Signature Address: 0x8000257c Data: 0x434ABFA6
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 4286578687
      - rs1_w0_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d24]:UKMSR64 t5, t6, t4
      [0x80000d28]:sw t5, 864(ra)
 -- Signature Address: 0x800026c0 Data: 0xDF5E57D9
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs2_w0_val == 4293918719




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d44]:UKMSR64 t5, t6, t4
      [0x80000d48]:sw t5, 876(ra)
 -- Signature Address: 0x800026cc Data: 0x8A09028A
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d60]:UKMSR64 t5, t6, t4
      [0x80000d64]:sw t5, 888(ra)
 -- Signature Address: 0x800026d8 Data: 0x8A090998
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 4294967167






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000118]:UKMSR64 s6, s6, s6
	-[0x8000011c]:sw s6, 0(ra)
Current Store : [0x80000120] : sw s7, 4(ra) -- Store: [0x80002214]:0xB6FAB7FB




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000118]:UKMSR64 s6, s6, s6
	-[0x8000011c]:sw s6, 0(ra)
Current Store : [0x80000128] : sw s6, 8(ra) -- Store: [0x80002218]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x3', 'rd : x30', 'rs1 == rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000138]:UKMSR64 t5, gp, gp
	-[0x8000013c]:sw t5, 12(ra)
Current Store : [0x80000140] : sw t6, 16(ra) -- Store: [0x80002220]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x3', 'rs2 : x3', 'rd : x30', 'rs1 == rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000138]:UKMSR64 t5, gp, gp
	-[0x8000013c]:sw t5, 12(ra)
Current Store : [0x80000148] : sw gp, 20(ra) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000015c]:UKMSR64 s2, a6, a3
	-[0x80000160]:sw s2, 24(ra)
Current Store : [0x80000164] : sw s3, 28(ra) -- Store: [0x8000222c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000015c]:UKMSR64 s2, a6, a3
	-[0x80000160]:sw s2, 24(ra)
Current Store : [0x8000016c] : sw a6, 32(ra) -- Store: [0x80002230]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000017c]:UKMSR64 a2, tp, a2
	-[0x80000180]:sw a2, 36(ra)
Current Store : [0x80000184] : sw a3, 40(ra) -- Store: [0x80002238]:0xFFFEFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000017c]:UKMSR64 a2, tp, a2
	-[0x80000180]:sw a2, 36(ra)
Current Store : [0x8000018c] : sw tp, 44(ra) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x20', 'rs1 == rd != rs2', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000019c]:UKMSR64 s4, s4, a1
	-[0x800001a0]:sw s4, 48(ra)
Current Store : [0x800001a4] : sw s5, 52(ra) -- Store: [0x80002244]:0xDBEADFEE




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x20', 'rs1 == rd != rs2', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000019c]:UKMSR64 s4, s4, a1
	-[0x800001a0]:sw s4, 48(ra)
Current Store : [0x800001ac] : sw s4, 56(ra) -- Store: [0x80002248]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x26', 'rd : x2', 'rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800001bc]:UKMSR64 sp, s1, s10
	-[0x800001c0]:sw sp, 60(ra)
Current Store : [0x800001c4] : sw gp, 64(ra) -- Store: [0x80002250]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x26', 'rd : x2', 'rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800001bc]:UKMSR64 sp, s1, s10
	-[0x800001c0]:sw sp, 60(ra)
Current Store : [0x800001cc] : sw s1, 68(ra) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x8', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800001dc]:UKMSR64 fp, s5, a6
	-[0x800001e0]:sw fp, 72(ra)
Current Store : [0x800001e4] : sw s1, 76(ra) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x8', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800001dc]:UKMSR64 fp, s5, a6
	-[0x800001e0]:sw fp, 72(ra)
Current Store : [0x800001ec] : sw s5, 80(ra) -- Store: [0x80002260]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x16', 'rs2_w0_val == 4026531839', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800001fc]:UKMSR64 a6, a3, sp
	-[0x80000200]:sw a6, 84(ra)
Current Store : [0x80000204] : sw a7, 88(ra) -- Store: [0x80002268]:0xBEADFEED




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x16', 'rs2_w0_val == 4026531839', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800001fc]:UKMSR64 a6, a3, sp
	-[0x80000200]:sw a6, 84(ra)
Current Store : [0x8000020c] : sw a3, 92(ra) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x28', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000021c]:UKMSR64 t3, t2, s9
	-[0x80000220]:sw t3, 96(ra)
Current Store : [0x80000224] : sw t4, 100(ra) -- Store: [0x80002274]:0xEEDBEADF




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x28', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000021c]:UKMSR64 t3, t2, s9
	-[0x80000220]:sw t3, 96(ra)
Current Store : [0x8000022c] : sw t2, 104(ra) -- Store: [0x80002278]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x10', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000023c]:UKMSR64 a0, s10, t4
	-[0x80000240]:sw a0, 108(ra)
Current Store : [0x80000244] : sw a1, 112(ra) -- Store: [0x80002280]:0x7FFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x10', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000023c]:UKMSR64 a0, s10, t4
	-[0x80000240]:sw a0, 108(ra)
Current Store : [0x8000024c] : sw s10, 116(ra) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x24', 'rs2_w0_val == 0', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000025c]:UKMSR64 s8, s7, zero
	-[0x80000260]:sw s8, 120(ra)
Current Store : [0x80000264] : sw s9, 124(ra) -- Store: [0x8000228c]:0xF7FFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x24', 'rs2_w0_val == 0', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000025c]:UKMSR64 s8, s7, zero
	-[0x80000260]:sw s8, 120(ra)
Current Store : [0x8000026c] : sw s7, 128(ra) -- Store: [0x80002290]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x30', 'rd : x26', 'rs2_w0_val == 4278190079', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000280]:UKMSR64 s10, t1, t5
	-[0x80000284]:sw s10, 132(ra)
Current Store : [0x80000288] : sw s11, 136(ra) -- Store: [0x80002298]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x6', 'rs2 : x30', 'rd : x26', 'rs2_w0_val == 4278190079', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000280]:UKMSR64 s10, t1, t5
	-[0x80000284]:sw s10, 132(ra)
Current Store : [0x80000290] : sw t1, 140(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x4', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800002a8]:UKMSR64 tp, s9, t2
	-[0x800002ac]:sw tp, 0(gp)
Current Store : [0x800002b0] : sw t0, 4(gp) -- Store: [0x800022a4]:0x800000F8




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x4', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800002a8]:UKMSR64 tp, s9, t2
	-[0x800002ac]:sw tp, 0(gp)
Current Store : [0x800002b8] : sw s9, 8(gp) -- Store: [0x800022a8]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x14', 'rd : x6', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800002c8]:UKMSR64 t1, t4, a4
	-[0x800002cc]:sw t1, 12(gp)
Current Store : [0x800002d0] : sw t2, 16(gp) -- Store: [0x800022b0]:0xFF7FFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x14', 'rd : x6', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800002c8]:UKMSR64 t1, t4, a4
	-[0x800002cc]:sw t1, 12(gp)
Current Store : [0x800002d8] : sw t4, 20(gp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x15', 'rd : x14', 'rs2_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800002e8]:UKMSR64 a4, sp, a5
	-[0x800002ec]:sw a4, 24(gp)
Current Store : [0x800002f0] : sw a5, 28(gp) -- Store: [0x800022bc]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x15', 'rd : x14', 'rs2_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800002e8]:UKMSR64 a4, sp, a5
	-[0x800002ec]:sw a4, 24(gp)
Current Store : [0x800002f8] : sw sp, 32(gp) -- Store: [0x800022c0]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000308]:UKMSR64 a0, fp, a7
	-[0x8000030c]:sw a0, 36(gp)
Current Store : [0x80000310] : sw a1, 40(gp) -- Store: [0x800022c8]:0x7FFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000308]:UKMSR64 a0, fp, a7
	-[0x8000030c]:sw a0, 36(gp)
Current Store : [0x80000318] : sw fp, 44(gp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x8000032c]:UKMSR64 a0, t0, t3
	-[0x80000330]:sw a0, 48(gp)
Current Store : [0x80000334] : sw a1, 52(gp) -- Store: [0x800022d4]:0x7FFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x8000032c]:UKMSR64 a0, t0, t3
	-[0x80000330]:sw a0, 48(gp)
Current Store : [0x8000033c] : sw t0, 56(gp) -- Store: [0x800022d8]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x8', 'rs2_w0_val == 4294836223', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000034c]:UKMSR64 s10, s11, fp
	-[0x80000350]:sw s10, 60(gp)
Current Store : [0x80000354] : sw s11, 64(gp) -- Store: [0x800022e0]:0x00000010




Last Coverpoint : ['rs1 : x27', 'rs2 : x8', 'rs2_w0_val == 4294836223', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000034c]:UKMSR64 s10, s11, fp
	-[0x80000350]:sw s10, 60(gp)
Current Store : [0x8000035c] : sw s11, 68(gp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x8000036c]:UKMSR64 a0, s8, s1
	-[0x80000370]:sw a0, 72(gp)
Current Store : [0x80000374] : sw a1, 76(gp) -- Store: [0x800022ec]:0x7FFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x8000036c]:UKMSR64 a0, s8, s1
	-[0x80000370]:sw a0, 72(gp)
Current Store : [0x8000037c] : sw s8, 80(gp) -- Store: [0x800022f0]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rs2_w0_val == 4294950911', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000038c]:UKMSR64 a4, t5, a0
	-[0x80000390]:sw a4, 84(gp)
Current Store : [0x80000394] : sw a5, 88(gp) -- Store: [0x800022f8]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rs2_w0_val == 4294950911', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000038c]:UKMSR64 a4, t5, a0
	-[0x80000390]:sw a4, 84(gp)
Current Store : [0x8000039c] : sw t5, 92(gp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rs2_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800003ac]:UKMSR64 a4, a7, s8
	-[0x800003b0]:sw a4, 96(gp)
Current Store : [0x800003b4] : sw a5, 100(gp) -- Store: [0x80002304]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rs2_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800003ac]:UKMSR64 a4, a7, s8
	-[0x800003b0]:sw a4, 96(gp)
Current Store : [0x800003bc] : sw a7, 104(gp) -- Store: [0x80002308]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rs2_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800003cc]:UKMSR64 a4, s3, s5
	-[0x800003d0]:sw a4, 108(gp)
Current Store : [0x800003d4] : sw a5, 112(gp) -- Store: [0x80002310]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rs2_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800003cc]:UKMSR64 a4, s3, s5
	-[0x800003d0]:sw a4, 108(gp)
Current Store : [0x800003dc] : sw s3, 116(gp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800003f0]:UKMSR64 tp, t3, ra
	-[0x800003f4]:sw tp, 120(gp)
Current Store : [0x800003f8] : sw t0, 124(gp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800003f0]:UKMSR64 tp, t3, ra
	-[0x800003f4]:sw tp, 120(gp)
Current Store : [0x80000400] : sw t3, 128(gp) -- Store: [0x80002320]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000040c]:UKMSR64 t1, ra, s2
	-[0x80000410]:sw t1, 132(gp)
Current Store : [0x80000414] : sw t2, 136(gp) -- Store: [0x80002328]:0xFF7FFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000040c]:UKMSR64 t1, ra, s2
	-[0x80000410]:sw t1, 132(gp)
Current Store : [0x8000041c] : sw ra, 140(gp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000042c]:UKMSR64 s10, t6, s3
	-[0x80000430]:sw s10, 144(gp)
Current Store : [0x80000434] : sw s11, 148(gp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000042c]:UKMSR64 s10, t6, s3
	-[0x80000430]:sw s10, 144(gp)
Current Store : [0x8000043c] : sw t6, 152(gp) -- Store: [0x80002338]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000448]:UKMSR64 t3, a4, t0
	-[0x8000044c]:sw t3, 156(gp)
Current Store : [0x80000450] : sw t4, 160(gp) -- Store: [0x80002340]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000448]:UKMSR64 t3, a4, t0
	-[0x8000044c]:sw t3, 156(gp)
Current Store : [0x80000458] : sw a4, 164(gp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x6', 'rs1_w0_val == 0', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000464]:UKMSR64 a4, zero, t1
	-[0x80000468]:sw a4, 168(gp)
Current Store : [0x8000046c] : sw a5, 172(gp) -- Store: [0x8000234c]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x6', 'rs1_w0_val == 0', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000464]:UKMSR64 a4, zero, t1
	-[0x80000468]:sw a4, 168(gp)
Current Store : [0x80000474] : sw zero, 176(gp) -- Store: [0x80002350]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000480]:UKMSR64 a2, s2, s7
	-[0x80000484]:sw a2, 180(gp)
Current Store : [0x80000488] : sw a3, 184(gp) -- Store: [0x80002358]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000480]:UKMSR64 a2, s2, s7
	-[0x80000484]:sw a2, 180(gp)
Current Store : [0x80000490] : sw s2, 188(gp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x27', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800004a4]:UKMSR64 s8, a1, s11
	-[0x800004a8]:sw s8, 0(ra)
Current Store : [0x800004ac] : sw s9, 4(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x27', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800004a4]:UKMSR64 s8, a1, s11
	-[0x800004a8]:sw s8, 0(ra)
Current Store : [0x800004b4] : sw a1, 8(ra) -- Store: [0x80002368]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800004c4]:UKMSR64 s6, a5, t6
	-[0x800004c8]:sw s6, 12(ra)
Current Store : [0x800004cc] : sw s7, 16(ra) -- Store: [0x80002370]:0xFFFFFFBF




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800004c4]:UKMSR64 s6, a5, t6
	-[0x800004c8]:sw s6, 12(ra)
Current Store : [0x800004d4] : sw a5, 20(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800004e0]:UKMSR64 s4, a0, tp
	-[0x800004e4]:sw s4, 24(ra)
Current Store : [0x800004e8] : sw s5, 28(ra) -- Store: [0x8000237c]:0xFFFFEFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800004e0]:UKMSR64 s4, a0, tp
	-[0x800004e4]:sw s4, 24(ra)
Current Store : [0x800004f0] : sw a0, 32(ra) -- Store: [0x80002380]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rs2_w0_val == 4294967291', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800004fc]:UKMSR64 t1, a2, s4
	-[0x80000500]:sw t1, 36(ra)
Current Store : [0x80000504] : sw t2, 40(ra) -- Store: [0x80002388]:0xFF7FFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rs2_w0_val == 4294967291', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800004fc]:UKMSR64 t1, a2, s4
	-[0x80000500]:sw t1, 36(ra)
Current Store : [0x8000050c] : sw a2, 44(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000518]:UKMSR64 t5, t6, t4
	-[0x8000051c]:sw t5, 48(ra)
Current Store : [0x80000520] : sw t6, 52(ra) -- Store: [0x80002394]:0x00000009




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000518]:UKMSR64 t5, t6, t4
	-[0x8000051c]:sw t5, 48(ra)
Current Store : [0x80000528] : sw t6, 56(ra) -- Store: [0x80002398]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000534]:UKMSR64 t5, t6, t4
	-[0x80000538]:sw t5, 60(ra)
Current Store : [0x8000053c] : sw t6, 64(ra) -- Store: [0x800023a0]:0x00000100




Last Coverpoint : ['rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000534]:UKMSR64 t5, t6, t4
	-[0x80000538]:sw t5, 60(ra)
Current Store : [0x80000544] : sw t6, 68(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2147483648', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000554]:UKMSR64 t5, t6, t4
	-[0x80000558]:sw t5, 72(ra)
Current Store : [0x8000055c] : sw t6, 76(ra) -- Store: [0x800023ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_w0_val == 2147483648', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000554]:UKMSR64 t5, t6, t4
	-[0x80000558]:sw t5, 72(ra)
Current Store : [0x80000564] : sw t6, 80(ra) -- Store: [0x800023b0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000570]:UKMSR64 t5, t6, t4
	-[0x80000574]:sw t5, 84(ra)
Current Store : [0x80000578] : sw t6, 88(ra) -- Store: [0x800023b8]:0x00200000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000570]:UKMSR64 t5, t6, t4
	-[0x80000574]:sw t5, 84(ra)
Current Store : [0x80000580] : sw t6, 92(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000590]:UKMSR64 t5, t6, t4
	-[0x80000594]:sw t5, 96(ra)
Current Store : [0x80000598] : sw t6, 100(ra) -- Store: [0x800023c4]:0xFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000590]:UKMSR64 t5, t6, t4
	-[0x80000594]:sw t5, 96(ra)
Current Store : [0x800005a0] : sw t6, 104(ra) -- Store: [0x800023c8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005ac]:UKMSR64 t5, t6, t4
	-[0x800005b0]:sw t5, 108(ra)
Current Store : [0x800005b4] : sw t6, 112(ra) -- Store: [0x800023d0]:0x00000008




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005ac]:UKMSR64 t5, t6, t4
	-[0x800005b0]:sw t5, 108(ra)
Current Store : [0x800005bc] : sw t6, 116(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800005cc]:UKMSR64 t5, t6, t4
	-[0x800005d0]:sw t5, 120(ra)
Current Store : [0x800005d4] : sw t6, 124(ra) -- Store: [0x800023dc]:0xFFFF7FFF




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800005cc]:UKMSR64 t5, t6, t4
	-[0x800005d0]:sw t5, 120(ra)
Current Store : [0x800005dc] : sw t6, 128(ra) -- Store: [0x800023e0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x800005e8]:UKMSR64 t5, t6, t4
	-[0x800005ec]:sw t5, 132(ra)
Current Store : [0x800005f0] : sw t6, 136(ra) -- Store: [0x800023e8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x800005e8]:UKMSR64 t5, t6, t4
	-[0x800005ec]:sw t5, 132(ra)
Current Store : [0x800005f8] : sw t6, 140(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000608]:UKMSR64 t5, t6, t4
	-[0x8000060c]:sw t5, 144(ra)
Current Store : [0x80000610] : sw t6, 148(ra) -- Store: [0x800023f4]:0xFF7FFFFF




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000608]:UKMSR64 t5, t6, t4
	-[0x8000060c]:sw t5, 144(ra)
Current Store : [0x80000618] : sw t6, 152(ra) -- Store: [0x800023f8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000624]:UKMSR64 t5, t6, t4
	-[0x80000628]:sw t5, 156(ra)
Current Store : [0x8000062c] : sw t6, 160(ra) -- Store: [0x80002400]:0x80000000




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000624]:UKMSR64 t5, t6, t4
	-[0x80000628]:sw t5, 156(ra)
Current Store : [0x80000634] : sw t6, 164(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000640]:UKMSR64 t5, t6, t4
	-[0x80000644]:sw t5, 168(ra)
Current Store : [0x80000648] : sw t6, 172(ra) -- Store: [0x8000240c]:0x20000000




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000640]:UKMSR64 t5, t6, t4
	-[0x80000644]:sw t5, 168(ra)
Current Store : [0x80000650] : sw t6, 176(ra) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000065c]:UKMSR64 t5, t6, t4
	-[0x80000660]:sw t5, 180(ra)
Current Store : [0x80000664] : sw t6, 184(ra) -- Store: [0x80002418]:0x00000080




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000065c]:UKMSR64 t5, t6, t4
	-[0x80000660]:sw t5, 180(ra)
Current Store : [0x8000066c] : sw t6, 188(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x8000067c]:UKMSR64 t5, t6, t4
	-[0x80000680]:sw t5, 192(ra)
Current Store : [0x80000684] : sw t6, 196(ra) -- Store: [0x80002424]:0xF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x8000067c]:UKMSR64 t5, t6, t4
	-[0x80000680]:sw t5, 192(ra)
Current Store : [0x8000068c] : sw t6, 200(ra) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000698]:UKMSR64 t5, t6, t4
	-[0x8000069c]:sw t5, 204(ra)
Current Store : [0x800006a0] : sw t6, 208(ra) -- Store: [0x80002430]:0xFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000698]:UKMSR64 t5, t6, t4
	-[0x8000069c]:sw t5, 204(ra)
Current Store : [0x800006a8] : sw t6, 212(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800006b4]:UKMSR64 t5, t6, t4
	-[0x800006b8]:sw t5, 216(ra)
Current Store : [0x800006bc] : sw t6, 220(ra) -- Store: [0x8000243c]:0x00000040




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800006b4]:UKMSR64 t5, t6, t4
	-[0x800006b8]:sw t5, 216(ra)
Current Store : [0x800006c4] : sw t6, 224(ra) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800006d0]:UKMSR64 t5, t6, t4
	-[0x800006d4]:sw t5, 228(ra)
Current Store : [0x800006d8] : sw t6, 232(ra) -- Store: [0x80002448]:0x00000020




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800006d0]:UKMSR64 t5, t6, t4
	-[0x800006d4]:sw t5, 228(ra)
Current Store : [0x800006e0] : sw t6, 236(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006f0]:UKMSR64 t5, t6, t4
	-[0x800006f4]:sw t5, 240(ra)
Current Store : [0x800006f8] : sw t6, 244(ra) -- Store: [0x80002454]:0x00000004




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006f0]:UKMSR64 t5, t6, t4
	-[0x800006f4]:sw t5, 240(ra)
Current Store : [0x80000700] : sw t6, 248(ra) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000070c]:UKMSR64 t5, t6, t4
	-[0x80000710]:sw t5, 252(ra)
Current Store : [0x80000714] : sw t6, 256(ra) -- Store: [0x80002460]:0x00000002




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000070c]:UKMSR64 t5, t6, t4
	-[0x80000710]:sw t5, 252(ra)
Current Store : [0x8000071c] : sw t6, 260(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000728]:UKMSR64 t5, t6, t4
	-[0x8000072c]:sw t5, 264(ra)
Current Store : [0x80000730] : sw t6, 268(ra) -- Store: [0x8000246c]:0xFFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000728]:UKMSR64 t5, t6, t4
	-[0x8000072c]:sw t5, 264(ra)
Current Store : [0x80000738] : sw t6, 272(ra) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000744]:UKMSR64 t5, t6, t4
	-[0x80000748]:sw t5, 276(ra)
Current Store : [0x8000074c] : sw t6, 280(ra) -- Store: [0x80002478]:0x00400000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000744]:UKMSR64 t5, t6, t4
	-[0x80000748]:sw t5, 276(ra)
Current Store : [0x80000754] : sw t6, 284(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000760]:UKMSR64 t5, t6, t4
	-[0x80000764]:sw t5, 288(ra)
Current Store : [0x80000768] : sw t6, 292(ra) -- Store: [0x80002484]:0x08000000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000760]:UKMSR64 t5, t6, t4
	-[0x80000764]:sw t5, 288(ra)
Current Store : [0x80000770] : sw t6, 296(ra) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000077c]:UKMSR64 t5, t6, t4
	-[0x80000780]:sw t5, 300(ra)
Current Store : [0x80000784] : sw t6, 304(ra) -- Store: [0x80002490]:0xFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000077c]:UKMSR64 t5, t6, t4
	-[0x80000780]:sw t5, 300(ra)
Current Store : [0x8000078c] : sw t6, 308(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x8000079c]:UKMSR64 t5, t6, t4
	-[0x800007a0]:sw t5, 312(ra)
Current Store : [0x800007a4] : sw t6, 316(ra) -- Store: [0x8000249c]:0x00000800




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x8000079c]:UKMSR64 t5, t6, t4
	-[0x800007a0]:sw t5, 312(ra)
Current Store : [0x800007ac] : sw t6, 320(ra) -- Store: [0x800024a0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800007bc]:UKMSR64 t5, t6, t4
	-[0x800007c0]:sw t5, 324(ra)
Current Store : [0x800007c4] : sw t6, 328(ra) -- Store: [0x800024a8]:0xFFDFFFFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800007bc]:UKMSR64 t5, t6, t4
	-[0x800007c0]:sw t5, 324(ra)
Current Store : [0x800007cc] : sw t6, 332(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800007d8]:UKMSR64 t5, t6, t4
	-[0x800007dc]:sw t5, 336(ra)
Current Store : [0x800007e0] : sw t6, 340(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800007d8]:UKMSR64 t5, t6, t4
	-[0x800007dc]:sw t5, 336(ra)
Current Store : [0x800007e8] : sw t6, 344(ra) -- Store: [0x800024b8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800007f4]:UKMSR64 t5, t6, t4
	-[0x800007f8]:sw t5, 348(ra)
Current Store : [0x800007fc] : sw t6, 352(ra) -- Store: [0x800024c0]:0x00002000




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800007f4]:UKMSR64 t5, t6, t4
	-[0x800007f8]:sw t5, 348(ra)
Current Store : [0x80000804] : sw t6, 356(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000810]:UKMSR64 t5, t6, t4
	-[0x80000814]:sw t5, 360(ra)
Current Store : [0x80000818] : sw t6, 364(ra) -- Store: [0x800024cc]:0x00400000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000810]:UKMSR64 t5, t6, t4
	-[0x80000814]:sw t5, 360(ra)
Current Store : [0x80000820] : sw t6, 368(ra) -- Store: [0x800024d0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000834]:UKMSR64 t5, t6, t4
	-[0x80000838]:sw t5, 372(ra)
Current Store : [0x8000083c] : sw t6, 376(ra) -- Store: [0x800024d8]:0xFFEFFFFF




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000834]:UKMSR64 t5, t6, t4
	-[0x80000838]:sw t5, 372(ra)
Current Store : [0x80000844] : sw t6, 380(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000854]:UKMSR64 t5, t6, t4
	-[0x80000858]:sw t5, 384(ra)
Current Store : [0x8000085c] : sw t6, 388(ra) -- Store: [0x800024e4]:0xFFF7FFFF




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000854]:UKMSR64 t5, t6, t4
	-[0x80000858]:sw t5, 384(ra)
Current Store : [0x80000864] : sw t6, 392(ra) -- Store: [0x800024e8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000870]:UKMSR64 t5, t6, t4
	-[0x80000874]:sw t5, 396(ra)
Current Store : [0x80000878] : sw t6, 400(ra) -- Store: [0x800024f0]:0xFFFFFFF7




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000870]:UKMSR64 t5, t6, t4
	-[0x80000874]:sw t5, 396(ra)
Current Store : [0x80000880] : sw t6, 404(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x8000088c]:UKMSR64 t5, t6, t4
	-[0x80000890]:sw t5, 408(ra)
Current Store : [0x80000894] : sw t6, 412(ra) -- Store: [0x800024fc]:0xFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x8000088c]:UKMSR64 t5, t6, t4
	-[0x80000890]:sw t5, 408(ra)
Current Store : [0x8000089c] : sw t6, 416(ra) -- Store: [0x80002500]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800008a8]:UKMSR64 t5, t6, t4
	-[0x800008ac]:sw t5, 420(ra)
Current Store : [0x800008b0] : sw t6, 424(ra) -- Store: [0x80002508]:0x00000004




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800008a8]:UKMSR64 t5, t6, t4
	-[0x800008ac]:sw t5, 420(ra)
Current Store : [0x800008b8] : sw t6, 428(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800008c4]:UKMSR64 t5, t6, t4
	-[0x800008c8]:sw t5, 432(ra)
Current Store : [0x800008cc] : sw t6, 436(ra) -- Store: [0x80002514]:0x02000000




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800008c4]:UKMSR64 t5, t6, t4
	-[0x800008c8]:sw t5, 432(ra)
Current Store : [0x800008d4] : sw t6, 440(ra) -- Store: [0x80002518]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800008e4]:UKMSR64 t5, t6, t4
	-[0x800008e8]:sw t5, 444(ra)
Current Store : [0x800008ec] : sw t6, 448(ra) -- Store: [0x80002520]:0xF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800008e4]:UKMSR64 t5, t6, t4
	-[0x800008e8]:sw t5, 444(ra)
Current Store : [0x800008f4] : sw t6, 452(ra) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000900]:UKMSR64 t5, t6, t4
	-[0x80000904]:sw t5, 456(ra)
Current Store : [0x80000908] : sw t6, 460(ra) -- Store: [0x8000252c]:0x00001000




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000900]:UKMSR64 t5, t6, t4
	-[0x80000904]:sw t5, 456(ra)
Current Store : [0x80000910] : sw t6, 464(ra) -- Store: [0x80002530]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x8000091c]:UKMSR64 t5, t6, t4
	-[0x80000920]:sw t5, 468(ra)
Current Store : [0x80000924] : sw t6, 472(ra) -- Store: [0x80002538]:0x0000000A




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x8000091c]:UKMSR64 t5, t6, t4
	-[0x80000920]:sw t5, 468(ra)
Current Store : [0x8000092c] : sw t6, 476(ra) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000938]:UKMSR64 t5, t6, t4
	-[0x8000093c]:sw t5, 480(ra)
Current Store : [0x80000940] : sw t6, 484(ra) -- Store: [0x80002544]:0xFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000938]:UKMSR64 t5, t6, t4
	-[0x8000093c]:sw t5, 480(ra)
Current Store : [0x80000948] : sw t6, 488(ra) -- Store: [0x80002548]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000958]:UKMSR64 t5, t6, t4
	-[0x8000095c]:sw t5, 492(ra)
Current Store : [0x80000960] : sw t6, 496(ra) -- Store: [0x80002550]:0xFF7FFFFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000958]:UKMSR64 t5, t6, t4
	-[0x8000095c]:sw t5, 492(ra)
Current Store : [0x80000968] : sw t6, 500(ra) -- Store: [0x80002554]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000974]:UKMSR64 t5, t6, t4
	-[0x80000978]:sw t5, 504(ra)
Current Store : [0x8000097c] : sw t6, 508(ra) -- Store: [0x8000255c]:0xFFFFFFEF




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000974]:UKMSR64 t5, t6, t4
	-[0x80000978]:sw t5, 504(ra)
Current Store : [0x80000984] : sw t6, 512(ra) -- Store: [0x80002560]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000990]:UKMSR64 t5, t6, t4
	-[0x80000994]:sw t5, 516(ra)
Current Store : [0x80000998] : sw t6, 520(ra) -- Store: [0x80002568]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000990]:UKMSR64 t5, t6, t4
	-[0x80000994]:sw t5, 516(ra)
Current Store : [0x800009a0] : sw t6, 524(ra) -- Store: [0x8000256c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800009b0]:UKMSR64 t5, t6, t4
	-[0x800009b4]:sw t5, 528(ra)
Current Store : [0x800009b8] : sw t6, 532(ra) -- Store: [0x80002574]:0x7FFFFFFF




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800009b0]:UKMSR64 t5, t6, t4
	-[0x800009b4]:sw t5, 528(ra)
Current Store : [0x800009c0] : sw t6, 536(ra) -- Store: [0x80002578]:0x00000001




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800009d4]:UKMSR64 t5, t6, t4
	-[0x800009d8]:sw t5, 540(ra)
Current Store : [0x800009dc] : sw t6, 544(ra) -- Store: [0x80002580]:0x55555555




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800009d4]:UKMSR64 t5, t6, t4
	-[0x800009d8]:sw t5, 540(ra)
Current Store : [0x800009e4] : sw t6, 548(ra) -- Store: [0x80002584]:0x00000001




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800009f8]:UKMSR64 t5, t6, t4
	-[0x800009fc]:sw t5, 552(ra)
Current Store : [0x80000a00] : sw t6, 556(ra) -- Store: [0x8000258c]:0xBFFFFFFF




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800009f8]:UKMSR64 t5, t6, t4
	-[0x800009fc]:sw t5, 552(ra)
Current Store : [0x80000a08] : sw t6, 560(ra) -- Store: [0x80002590]:0x00000001




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000a18]:UKMSR64 t5, t6, t4
	-[0x80000a1c]:sw t5, 564(ra)
Current Store : [0x80000a20] : sw t6, 568(ra) -- Store: [0x80002598]:0xDFFFFFFF




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000a18]:UKMSR64 t5, t6, t4
	-[0x80000a1c]:sw t5, 564(ra)
Current Store : [0x80000a28] : sw t6, 572(ra) -- Store: [0x8000259c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000a3c]:UKMSR64 t5, t6, t4
	-[0x80000a40]:sw t5, 576(ra)
Current Store : [0x80000a44] : sw t6, 580(ra) -- Store: [0x800025a4]:0xEFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000a3c]:UKMSR64 t5, t6, t4
	-[0x80000a40]:sw t5, 576(ra)
Current Store : [0x80000a4c] : sw t6, 584(ra) -- Store: [0x800025a8]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000a5c]:UKMSR64 t5, t6, t4
	-[0x80000a60]:sw t5, 588(ra)
Current Store : [0x80000a64] : sw t6, 592(ra) -- Store: [0x800025b0]:0xFBFFFFFF




Last Coverpoint : ['rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000a5c]:UKMSR64 t5, t6, t4
	-[0x80000a60]:sw t5, 588(ra)
Current Store : [0x80000a6c] : sw t6, 596(ra) -- Store: [0x800025b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000a7c]:UKMSR64 t5, t6, t4
	-[0x80000a80]:sw t5, 600(ra)
Current Store : [0x80000a84] : sw t6, 604(ra) -- Store: [0x800025bc]:0xFDFFFFFF




Last Coverpoint : ['rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000a7c]:UKMSR64 t5, t6, t4
	-[0x80000a80]:sw t5, 600(ra)
Current Store : [0x80000a8c] : sw t6, 608(ra) -- Store: [0x800025c0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000a9c]:UKMSR64 t5, t6, t4
	-[0x80000aa0]:sw t5, 612(ra)
Current Store : [0x80000aa4] : sw t6, 616(ra) -- Store: [0x800025c8]:0xFEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000a9c]:UKMSR64 t5, t6, t4
	-[0x80000aa0]:sw t5, 612(ra)
Current Store : [0x80000aac] : sw t6, 620(ra) -- Store: [0x800025cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000abc]:UKMSR64 t5, t6, t4
	-[0x80000ac0]:sw t5, 624(ra)
Current Store : [0x80000ac4] : sw t6, 628(ra) -- Store: [0x800025d4]:0xFFBFFFFF




Last Coverpoint : ['rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000abc]:UKMSR64 t5, t6, t4
	-[0x80000ac0]:sw t5, 624(ra)
Current Store : [0x80000acc] : sw t6, 632(ra) -- Store: [0x800025d8]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000adc]:UKMSR64 t5, t6, t4
	-[0x80000ae0]:sw t5, 636(ra)
Current Store : [0x80000ae4] : sw t6, 640(ra) -- Store: [0x800025e0]:0xFFFBFFFF




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000adc]:UKMSR64 t5, t6, t4
	-[0x80000ae0]:sw t5, 636(ra)
Current Store : [0x80000aec] : sw t6, 644(ra) -- Store: [0x800025e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000b00]:UKMSR64 t5, t6, t4
	-[0x80000b04]:sw t5, 648(ra)
Current Store : [0x80000b08] : sw t6, 652(ra) -- Store: [0x800025ec]:0xFFFDFFFF




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000b00]:UKMSR64 t5, t6, t4
	-[0x80000b04]:sw t5, 648(ra)
Current Store : [0x80000b10] : sw t6, 656(ra) -- Store: [0x800025f0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000b24]:UKMSR64 t5, t6, t4
	-[0x80000b28]:sw t5, 660(ra)
Current Store : [0x80000b2c] : sw t6, 664(ra) -- Store: [0x800025f8]:0xFFFFBFFF




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000b24]:UKMSR64 t5, t6, t4
	-[0x80000b28]:sw t5, 660(ra)
Current Store : [0x80000b34] : sw t6, 668(ra) -- Store: [0x800025fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000b44]:UKMSR64 t5, t6, t4
	-[0x80000b48]:sw t5, 672(ra)
Current Store : [0x80000b4c] : sw t6, 676(ra) -- Store: [0x80002604]:0xFFFFDFFF




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000b44]:UKMSR64 t5, t6, t4
	-[0x80000b48]:sw t5, 672(ra)
Current Store : [0x80000b54] : sw t6, 680(ra) -- Store: [0x80002608]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000b60]:UKMSR64 t5, t6, t4
	-[0x80000b64]:sw t5, 684(ra)
Current Store : [0x80000b68] : sw t6, 688(ra) -- Store: [0x80002610]:0xFFFFFF7F




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000b60]:UKMSR64 t5, t6, t4
	-[0x80000b64]:sw t5, 684(ra)
Current Store : [0x80000b70] : sw t6, 692(ra) -- Store: [0x80002614]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000b7c]:UKMSR64 t5, t6, t4
	-[0x80000b80]:sw t5, 696(ra)
Current Store : [0x80000b84] : sw t6, 700(ra) -- Store: [0x8000261c]:0xFFFFFFBF




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000b7c]:UKMSR64 t5, t6, t4
	-[0x80000b80]:sw t5, 696(ra)
Current Store : [0x80000b8c] : sw t6, 704(ra) -- Store: [0x80002620]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000b98]:UKMSR64 t5, t6, t4
	-[0x80000b9c]:sw t5, 708(ra)
Current Store : [0x80000ba0] : sw t6, 712(ra) -- Store: [0x80002628]:0xFFFFFFDF




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000b98]:UKMSR64 t5, t6, t4
	-[0x80000b9c]:sw t5, 708(ra)
Current Store : [0x80000ba8] : sw t6, 716(ra) -- Store: [0x8000262c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000bb8]:UKMSR64 t5, t6, t4
	-[0x80000bbc]:sw t5, 720(ra)
Current Store : [0x80000bc0] : sw t6, 724(ra) -- Store: [0x80002634]:0xFFFFFFFD




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000bb8]:UKMSR64 t5, t6, t4
	-[0x80000bbc]:sw t5, 720(ra)
Current Store : [0x80000bc8] : sw t6, 728(ra) -- Store: [0x80002638]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000bd4]:UKMSR64 t5, t6, t4
	-[0x80000bd8]:sw t5, 732(ra)
Current Store : [0x80000bdc] : sw t6, 736(ra) -- Store: [0x80002640]:0xFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000bd4]:UKMSR64 t5, t6, t4
	-[0x80000bd8]:sw t5, 732(ra)
Current Store : [0x80000be4] : sw t6, 740(ra) -- Store: [0x80002644]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000bf4]:UKMSR64 t5, t6, t4
	-[0x80000bf8]:sw t5, 744(ra)
Current Store : [0x80000bfc] : sw t6, 748(ra) -- Store: [0x8000264c]:0x40000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000bf4]:UKMSR64 t5, t6, t4
	-[0x80000bf8]:sw t5, 744(ra)
Current Store : [0x80000c04] : sw t6, 752(ra) -- Store: [0x80002650]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4261412863', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000c14]:UKMSR64 t5, t6, t4
	-[0x80000c18]:sw t5, 756(ra)
Current Store : [0x80000c1c] : sw t6, 760(ra) -- Store: [0x80002658]:0x04000000




Last Coverpoint : ['rs2_w0_val == 4261412863', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000c14]:UKMSR64 t5, t6, t4
	-[0x80000c18]:sw t5, 756(ra)
Current Store : [0x80000c24] : sw t6, 764(ra) -- Store: [0x8000265c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c34]:UKMSR64 t5, t6, t4
	-[0x80000c38]:sw t5, 768(ra)
Current Store : [0x80000c3c] : sw t6, 772(ra) -- Store: [0x80002664]:0x01000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c34]:UKMSR64 t5, t6, t4
	-[0x80000c38]:sw t5, 768(ra)
Current Store : [0x80000c44] : sw t6, 776(ra) -- Store: [0x80002668]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c50]:UKMSR64 t5, t6, t4
	-[0x80000c54]:sw t5, 780(ra)
Current Store : [0x80000c58] : sw t6, 784(ra) -- Store: [0x80002670]:0x00800000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c50]:UKMSR64 t5, t6, t4
	-[0x80000c54]:sw t5, 780(ra)
Current Store : [0x80000c60] : sw t6, 788(ra) -- Store: [0x80002674]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c70]:UKMSR64 t5, t6, t4
	-[0x80000c74]:sw t5, 792(ra)
Current Store : [0x80000c78] : sw t6, 796(ra) -- Store: [0x8000267c]:0x00100000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c70]:UKMSR64 t5, t6, t4
	-[0x80000c74]:sw t5, 792(ra)
Current Store : [0x80000c80] : sw t6, 800(ra) -- Store: [0x80002680]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c8c]:UKMSR64 t5, t6, t4
	-[0x80000c90]:sw t5, 804(ra)
Current Store : [0x80000c94] : sw t6, 808(ra) -- Store: [0x80002688]:0x00040000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c8c]:UKMSR64 t5, t6, t4
	-[0x80000c90]:sw t5, 804(ra)
Current Store : [0x80000c9c] : sw t6, 812(ra) -- Store: [0x8000268c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ca8]:UKMSR64 t5, t6, t4
	-[0x80000cac]:sw t5, 816(ra)
Current Store : [0x80000cb0] : sw t6, 820(ra) -- Store: [0x80002694]:0x00008000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ca8]:UKMSR64 t5, t6, t4
	-[0x80000cac]:sw t5, 816(ra)
Current Store : [0x80000cb8] : sw t6, 824(ra) -- Store: [0x80002698]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cc4]:UKMSR64 t5, t6, t4
	-[0x80000cc8]:sw t5, 828(ra)
Current Store : [0x80000ccc] : sw t6, 832(ra) -- Store: [0x800026a0]:0x00020000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cc4]:UKMSR64 t5, t6, t4
	-[0x80000cc8]:sw t5, 828(ra)
Current Store : [0x80000cd4] : sw t6, 836(ra) -- Store: [0x800026a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce4]:UKMSR64 t5, t6, t4
	-[0x80000ce8]:sw t5, 840(ra)
Current Store : [0x80000cec] : sw t6, 844(ra) -- Store: [0x800026ac]:0x00000200




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce4]:UKMSR64 t5, t6, t4
	-[0x80000ce8]:sw t5, 840(ra)
Current Store : [0x80000cf4] : sw t6, 848(ra) -- Store: [0x800026b0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000d04]:UKMSR64 t5, t6, t4
	-[0x80000d08]:sw t5, 852(ra)
Current Store : [0x80000d0c] : sw t6, 856(ra) -- Store: [0x800026b8]:0xFFFFFDFF




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000d04]:UKMSR64 t5, t6, t4
	-[0x80000d08]:sw t5, 852(ra)
Current Store : [0x80000d14] : sw t6, 860(ra) -- Store: [0x800026bc]:0x00000001




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000d24]:UKMSR64 t5, t6, t4
	-[0x80000d28]:sw t5, 864(ra)
Current Store : [0x80000d2c] : sw t6, 868(ra) -- Store: [0x800026c4]:0x00000000




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000d24]:UKMSR64 t5, t6, t4
	-[0x80000d28]:sw t5, 864(ra)
Current Store : [0x80000d34] : sw t6, 872(ra) -- Store: [0x800026c8]:0x00000001




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000d44]:UKMSR64 t5, t6, t4
	-[0x80000d48]:sw t5, 876(ra)
Current Store : [0x80000d4c] : sw t6, 880(ra) -- Store: [0x800026d0]:0x00000013




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000d44]:UKMSR64 t5, t6, t4
	-[0x80000d48]:sw t5, 876(ra)
Current Store : [0x80000d54] : sw t6, 884(ra) -- Store: [0x800026d4]:0x00000001




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000d60]:UKMSR64 t5, t6, t4
	-[0x80000d64]:sw t5, 888(ra)
Current Store : [0x80000d68] : sw t6, 892(ra) -- Store: [0x800026dc]:0x0000000E




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000d60]:UKMSR64 t5, t6, t4
	-[0x80000d64]:sw t5, 888(ra)
Current Store : [0x80000d70] : sw t6, 896(ra) -- Store: [0x800026e0]:0x00000001





```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|        signature         |                                                                                                          coverpoints                                                                                                           |                                 code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ukmsr64<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 4293918719<br> |[0x80000118]:UKMSR64 s6, s6, s6<br> [0x8000011c]:sw s6, 0(ra)<br>     |
|   2|[0x8000221c]<br>0xBE8A6736|- rs1 : x3<br> - rs2 : x3<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 1431655765<br>                                                                                               |[0x80000138]:UKMSR64 t5, gp, gp<br> [0x8000013c]:sw t5, 12(ra)<br>    |
|   3|[0x80002228]<br>0x00000000|- rs1 : x16<br> - rs2 : x13<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 4294901759<br>                                                                      |[0x8000015c]:UKMSR64 s2, a6, a3<br> [0x80000160]:sw s2, 24(ra)<br>    |
|   4|[0x80002234]<br>0x0000AAAA|- rs1 : x4<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 65536<br>                              |[0x8000017c]:UKMSR64 a2, tp, a2<br> [0x80000180]:sw a2, 36(ra)<br>    |
|   5|[0x80002240]<br>0x80000016|- rs1 : x20<br> - rs2 : x11<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_w0_val == 2147483647<br>                                                                                                                            |[0x8000019c]:UKMSR64 s4, s4, a1<br> [0x800001a0]:sw s4, 48(ra)<br>    |
|   6|[0x8000224c]<br>0x00000000|- rs1 : x9<br> - rs2 : x26<br> - rd : x2<br> - rs2_w0_val == 3221225471<br>                                                                                                                                                     |[0x800001bc]:UKMSR64 sp, s1, s10<br> [0x800001c0]:sw sp, 60(ra)<br>   |
|   7|[0x80002258]<br>0x00000000|- rs1 : x21<br> - rs2 : x16<br> - rd : x8<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 8192<br>                                                                                                                           |[0x800001dc]:UKMSR64 fp, s5, a6<br> [0x800001e0]:sw fp, 72(ra)<br>    |
|   8|[0x80002264]<br>0xEFFFFFFF|- rs1 : x13<br> - rs2 : x2<br> - rd : x16<br> - rs2_w0_val == 4026531839<br> - rs1_w0_val == 268435456<br>                                                                                                                      |[0x800001fc]:UKMSR64 a6, a3, sp<br> [0x80000200]:sw a6, 84(ra)<br>    |
|   9|[0x80002270]<br>0xDDBFD5BF|- rs1 : x7<br> - rs2 : x25<br> - rd : x28<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 524288<br>                                                                                                                         |[0x8000021c]:UKMSR64 t3, t2, s9<br> [0x80000220]:sw t3, 96(ra)<br>    |
|  10|[0x8000227c]<br>0x00004200|- rs1 : x26<br> - rs2 : x29<br> - rd : x10<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 16384<br>                                                                                                                         |[0x8000023c]:UKMSR64 a0, s10, t4<br> [0x80000240]:sw a0, 108(ra)<br>  |
|  11|[0x80002288]<br>0xDB7D5BFD|- rs1 : x23<br> - rs2 : x0<br> - rd : x24<br> - rs2_w0_val == 0<br> - rs1_w0_val == 1024<br>                                                                                                                                    |[0x8000025c]:UKMSR64 s8, s7, zero<br> [0x80000260]:sw s8, 120(ra)<br> |
|  12|[0x80002294]<br>0x00000000|- rs1 : x6<br> - rs2 : x30<br> - rd : x26<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 4294965247<br>                                                                                                                     |[0x80000280]:UKMSR64 s10, t1, t5<br> [0x80000284]:sw s10, 132(ra)<br> |
|  13|[0x800022a0]<br>0x00000000|- rs1 : x25<br> - rs2 : x7<br> - rd : x4<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 4294967039<br>                                                                                                                      |[0x800002a8]:UKMSR64 tp, s9, t2<br> [0x800002ac]:sw tp, 0(gp)<br>     |
|  14|[0x800022ac]<br>0x40000101|- rs1 : x29<br> - rs2 : x14<br> - rd : x6<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 256<br>                                                                                                                            |[0x800002c8]:UKMSR64 t1, t4, a4<br> [0x800002cc]:sw t1, 12(gp)<br>    |
|  15|[0x800022b8]<br>0x0140000B|- rs1 : x2<br> - rs2 : x15<br> - rd : x14<br> - rs2_w0_val == 4292870143<br>                                                                                                                                                    |[0x800002e8]:UKMSR64 a4, sp, a5<br> [0x800002ec]:sw a4, 24(gp)<br>    |
|  16|[0x800022c4]<br>0x0078420F|- rs1 : x8<br> - rs2 : x17<br> - rs2_w0_val == 4294443007<br>                                                                                                                                                                   |[0x80000308]:UKMSR64 a0, fp, a7<br> [0x8000030c]:sw a0, 36(gp)<br>    |
|  17|[0x800022d0]<br>0x20784A0F|- rs1 : x5<br> - rs2 : x28<br> - rs2_w0_val == 4294705151<br> - rs1_w0_val == 2048<br>                                                                                                                                          |[0x8000032c]:UKMSR64 a0, t0, t3<br> [0x80000330]:sw a0, 48(gp)<br>    |
|  18|[0x800022dc]<br>0x00200010|- rs1 : x27<br> - rs2 : x8<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 16<br>                                                                                                                                            |[0x8000034c]:UKMSR64 s10, s11, fp<br> [0x80000350]:sw s10, 60(gp)<br> |
|  19|[0x800022e8]<br>0x22784E0F|- rs1 : x24<br> - rs2 : x9<br> - rs2_w0_val == 4294934527<br>                                                                                                                                                                   |[0x8000036c]:UKMSR64 a0, s8, s1<br> [0x80000370]:sw a0, 72(gp)<br>    |
|  20|[0x800022f4]<br>0x0140400C|- rs1 : x30<br> - rs2 : x10<br> - rs2_w0_val == 4294950911<br> - rs1_w0_val == 1<br>                                                                                                                                            |[0x8000038c]:UKMSR64 a4, t5, a0<br> [0x80000390]:sw a4, 84(gp)<br>    |
|  21|[0x80002300]<br>0x0142801E|- rs1 : x17<br> - rs2 : x24<br> - rs2_w0_val == 4294959103<br>                                                                                                                                                                  |[0x800003ac]:UKMSR64 a4, a7, s8<br> [0x800003b0]:sw a4, 96(gp)<br>    |
|  22|[0x8000230c]<br>0x0142D023|- rs1 : x19<br> - rs2 : x21<br> - rs2_w0_val == 4294963199<br>                                                                                                                                                                  |[0x800003cc]:UKMSR64 a4, s3, s5<br> [0x800003d0]:sw a4, 108(gp)<br>   |
|  23|[0x80002318]<br>0x00000000|- rs1 : x28<br> - rs2 : x1<br> - rs2_w0_val == 4294965247<br>                                                                                                                                                                   |[0x800003f0]:UKMSR64 tp, t3, ra<br> [0x800003f4]:sw tp, 120(gp)<br>   |
|  24|[0x80002324]<br>0x40004D14|- rs1 : x1<br> - rs2 : x18<br> - rs2_w0_val == 4294966271<br>                                                                                                                                                                   |[0x8000040c]:UKMSR64 t1, ra, s2<br> [0x80000410]:sw t1, 132(gp)<br>   |
|  25|[0x80002330]<br>0x00000000|- rs1 : x31<br> - rs2 : x19<br> - rs2_w0_val == 4294966783<br>                                                                                                                                                                  |[0x8000042c]:UKMSR64 s10, t6, s3<br> [0x80000430]:sw s10, 144(gp)<br> |
|  26|[0x8000233c]<br>0x00000000|- rs1 : x14<br> - rs2 : x5<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 4096<br>                                                                                                                                          |[0x80000448]:UKMSR64 t3, a4, t0<br> [0x8000044c]:sw t3, 156(gp)<br>   |
|  27|[0x80002348]<br>0x00000001|- rs1 : x0<br> - rs2 : x6<br> - rs1_w0_val == 0<br> - rs2_w0_val == 4294967167<br>                                                                                                                                              |[0x80000464]:UKMSR64 a4, zero, t1<br> [0x80000468]:sw a4, 168(gp)<br> |
|  28|[0x80002354]<br>0x00000000|- rs1 : x18<br> - rs2 : x23<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 8<br>                                                                                                                                            |[0x80000480]:UKMSR64 a2, s2, s7<br> [0x80000484]:sw a2, 180(gp)<br>   |
|  29|[0x80002360]<br>0x00000000|- rs1 : x11<br> - rs2 : x27<br> - rs2_w0_val == 4294967263<br>                                                                                                                                                                  |[0x800004a4]:UKMSR64 s8, a1, s11<br> [0x800004a8]:sw s8, 0(ra)<br>    |
|  30|[0x8000236c]<br>0x5555554B|- rs1 : x15<br> - rs2 : x31<br> - rs2_w0_val == 4294967279<br> - rs1_w0_val == 2863311530<br>                                                                                                                                   |[0x800004c4]:UKMSR64 s6, a5, t6<br> [0x800004c8]:sw s6, 12(ra)<br>    |
|  31|[0x80002378]<br>0x0000002E|- rs1 : x10<br> - rs2 : x4<br> - rs2_w0_val == 4294967287<br>                                                                                                                                                                   |[0x800004e0]:UKMSR64 s4, a0, tp<br> [0x800004e4]:sw s4, 24(ra)<br>    |
|  32|[0x80002384]<br>0x00000000|- rs1 : x12<br> - rs2 : x20<br> - rs2_w0_val == 4294967291<br> - rs1_w0_val == 4294967287<br>                                                                                                                                   |[0x800004fc]:UKMSR64 t1, a2, s4<br> [0x80000500]:sw t1, 36(ra)<br>    |
|  33|[0x80002390]<br>0x0000001C|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                  |[0x80000518]:UKMSR64 t5, t6, t4<br> [0x8000051c]:sw t5, 48(ra)<br>    |
|  34|[0x8000239c]<br>0x0000021C|- rs2_w0_val == 4294967294<br>                                                                                                                                                                                                  |[0x80000534]:UKMSR64 t5, t6, t4<br> [0x80000538]:sw t5, 60(ra)<br>    |
|  35|[0x800023a8]<br>0x8000021C|- rs2_w0_val == 2147483648<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                   |[0x80000554]:UKMSR64 t5, t6, t4<br> [0x80000558]:sw t5, 72(ra)<br>    |
|  36|[0x800023b4]<br>0x8000021C|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                      |[0x80000570]:UKMSR64 t5, t6, t4<br> [0x80000574]:sw t5, 84(ra)<br>    |
|  37|[0x800023c0]<br>0xA000021C|- rs2_w0_val == 536870912<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                    |[0x80000590]:UKMSR64 t5, t6, t4<br> [0x80000594]:sw t5, 96(ra)<br>    |
|  38|[0x800023cc]<br>0x2000021C|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                   |[0x800005ac]:UKMSR64 t5, t6, t4<br> [0x800005b0]:sw t5, 108(ra)<br>   |
|  39|[0x800023d8]<br>0x2800021C|- rs2_w0_val == 134217728<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                    |[0x800005cc]:UKMSR64 t5, t6, t4<br> [0x800005d0]:sw t5, 120(ra)<br>   |
|  40|[0x800023e4]<br>0x2400021C|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                    |[0x800005e8]:UKMSR64 t5, t6, t4<br> [0x800005ec]:sw t5, 132(ra)<br>   |
|  41|[0x800023f0]<br>0x2600021C|- rs2_w0_val == 33554432<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                     |[0x80000608]:UKMSR64 t5, t6, t4<br> [0x8000060c]:sw t5, 144(ra)<br>   |
|  42|[0x800023fc]<br>0x2600021C|- rs2_w0_val == 16777216<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                                     |[0x80000624]:UKMSR64 t5, t6, t4<br> [0x80000628]:sw t5, 156(ra)<br>   |
|  43|[0x80002408]<br>0x2600021C|- rs2_w0_val == 8388608<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                       |[0x80000640]:UKMSR64 t5, t6, t4<br> [0x80000644]:sw t5, 168(ra)<br>   |
|  44|[0x80002414]<br>0x0600021C|- rs2_w0_val == 4194304<br> - rs1_w0_val == 128<br>                                                                                                                                                                             |[0x8000065c]:UKMSR64 t5, t6, t4<br> [0x80000660]:sw t5, 180(ra)<br>   |
|  45|[0x80002420]<br>0x0620021C|- rs2_w0_val == 2097152<br> - rs1_w0_val == 4160749567<br>                                                                                                                                                                      |[0x8000067c]:UKMSR64 t5, t6, t4<br> [0x80000680]:sw t5, 192(ra)<br>   |
|  46|[0x8000242c]<br>0x0670021C|- rs2_w0_val == 1048576<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                      |[0x80000698]:UKMSR64 t5, t6, t4<br> [0x8000069c]:sw t5, 204(ra)<br>   |
|  47|[0x80002438]<br>0x066FFFDC|- rs1_w0_val == 64<br>                                                                                                                                                                                                          |[0x800006b4]:UKMSR64 t5, t6, t4<br> [0x800006b8]:sw t5, 216(ra)<br>   |
|  48|[0x80002444]<br>0x066FFD7C|- rs1_w0_val == 32<br>                                                                                                                                                                                                          |[0x800006d0]:UKMSR64 t5, t6, t4<br> [0x800006d4]:sw t5, 228(ra)<br>   |
|  49|[0x80002450]<br>0x166FFD80|- rs1_w0_val == 4<br>                                                                                                                                                                                                           |[0x800006f0]:UKMSR64 t5, t6, t4<br> [0x800006f4]:sw t5, 240(ra)<br>   |
|  50|[0x8000245c]<br>0x166FFD6A|- rs1_w0_val == 2<br>                                                                                                                                                                                                           |[0x8000070c]:UKMSR64 t5, t6, t4<br> [0x80000710]:sw t5, 252(ra)<br>   |
|  51|[0x80002468]<br>0x266FFD6A|- rs1_w0_val == 4294967295<br>                                                                                                                                                                                                  |[0x80000728]:UKMSR64 t5, t6, t4<br> [0x8000072c]:sw t5, 264(ra)<br>   |
|  52|[0x80002474]<br>0x266FFD6A|- rs2_w0_val == 524288<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                          |[0x80000744]:UKMSR64 t5, t6, t4<br> [0x80000748]:sw t5, 276(ra)<br>   |
|  53|[0x80002480]<br>0x266FFD6A|- rs2_w0_val == 262144<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                        |[0x80000760]:UKMSR64 t5, t6, t4<br> [0x80000764]:sw t5, 288(ra)<br>   |
|  54|[0x8000248c]<br>0x2E71FD6A|- rs2_w0_val == 131072<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                                       |[0x8000077c]:UKMSR64 t5, t6, t4<br> [0x80000780]:sw t5, 300(ra)<br>   |
|  55|[0x80002498]<br>0x2671FD6A|- rs2_w0_val == 65536<br>                                                                                                                                                                                                       |[0x8000079c]:UKMSR64 t5, t6, t4<br> [0x800007a0]:sw t5, 312(ra)<br>   |
|  56|[0x800024a4]<br>0x26727D6A|- rs2_w0_val == 32768<br>                                                                                                                                                                                                       |[0x800007bc]:UKMSR64 t5, t6, t4<br> [0x800007c0]:sw t5, 324(ra)<br>   |
|  57|[0x800024b0]<br>0x26723D6A|- rs2_w0_val == 16384<br>                                                                                                                                                                                                       |[0x800007d8]:UKMSR64 t5, t6, t4<br> [0x800007dc]:sw t5, 336(ra)<br>   |
|  58|[0x800024bc]<br>0x22723D6A|- rs2_w0_val == 8192<br>                                                                                                                                                                                                        |[0x800007f4]:UKMSR64 t5, t6, t4<br> [0x800007f8]:sw t5, 348(ra)<br>   |
|  59|[0x800024c8]<br>0x22723D6A|- rs2_w0_val == 4096<br>                                                                                                                                                                                                        |[0x80000810]:UKMSR64 t5, t6, t4<br> [0x80000814]:sw t5, 360(ra)<br>   |
|  60|[0x800024d4]<br>0xA272456A|- rs2_w0_val == 2048<br>                                                                                                                                                                                                        |[0x80000834]:UKMSR64 t5, t6, t4<br> [0x80000838]:sw t5, 372(ra)<br>   |
|  61|[0x800024e0]<br>0xC272496A|- rs2_w0_val == 1024<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                         |[0x80000854]:UKMSR64 t5, t6, t4<br> [0x80000858]:sw t5, 384(ra)<br>   |
|  62|[0x800024ec]<br>0xC2725B6A|- rs2_w0_val == 512<br>                                                                                                                                                                                                         |[0x80000870]:UKMSR64 t5, t6, t4<br> [0x80000874]:sw t5, 396(ra)<br>   |
|  63|[0x800024f8]<br>0xC2765C6A|- rs2_w0_val == 256<br>                                                                                                                                                                                                         |[0x8000088c]:UKMSR64 t5, t6, t4<br> [0x80000890]:sw t5, 408(ra)<br>   |
|  64|[0x80002504]<br>0xC2765A6A|- rs2_w0_val == 128<br>                                                                                                                                                                                                         |[0x800008a8]:UKMSR64 t5, t6, t4<br> [0x800008ac]:sw t5, 420(ra)<br>   |
|  65|[0x80002510]<br>0x42765A6A|- rs2_w0_val == 64<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                             |[0x800008c4]:UKMSR64 t5, t6, t4<br> [0x800008c8]:sw t5, 432(ra)<br>   |
|  66|[0x8000251c]<br>0x42765A8A|- rs2_w0_val == 32<br>                                                                                                                                                                                                          |[0x800008e4]:UKMSR64 t5, t6, t4<br> [0x800008e8]:sw t5, 444(ra)<br>   |
|  67|[0x80002528]<br>0x42755A8A|- rs2_w0_val == 16<br>                                                                                                                                                                                                          |[0x80000900]:UKMSR64 t5, t6, t4<br> [0x80000904]:sw t5, 456(ra)<br>   |
|  68|[0x80002534]<br>0x42755A3A|- rs2_w0_val == 8<br>                                                                                                                                                                                                           |[0x8000091c]:UKMSR64 t5, t6, t4<br> [0x80000920]:sw t5, 468(ra)<br>   |
|  69|[0x80002540]<br>0x42756A3E|- rs2_w0_val == 4<br>                                                                                                                                                                                                           |[0x80000938]:UKMSR64 t5, t6, t4<br> [0x8000093c]:sw t5, 480(ra)<br>   |
|  70|[0x8000254c]<br>0x43756A40|- rs2_w0_val == 2<br>                                                                                                                                                                                                           |[0x80000958]:UKMSR64 t5, t6, t4<br> [0x8000095c]:sw t5, 492(ra)<br>   |
|  71|[0x80002558]<br>0x43756A51|- rs2_w0_val == 1<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                            |[0x80000974]:UKMSR64 t5, t6, t4<br> [0x80000978]:sw t5, 504(ra)<br>   |
|  72|[0x80002564]<br>0x43756A51|- rs2_w0_val == 4294967295<br>                                                                                                                                                                                                  |[0x80000990]:UKMSR64 t5, t6, t4<br> [0x80000994]:sw t5, 516(ra)<br>   |
|  73|[0x80002570]<br>0x43756A51|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                  |[0x800009b0]:UKMSR64 t5, t6, t4<br> [0x800009b4]:sw t5, 528(ra)<br>   |
|  74|[0x80002588]<br>0x034A9FA5|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                                  |[0x800009f8]:UKMSR64 t5, t6, t4<br> [0x800009fc]:sw t5, 552(ra)<br>   |
|  75|[0x80002594]<br>0x234A9FAE|- rs1_w0_val == 3758096383<br>                                                                                                                                                                                                  |[0x80000a18]:UKMSR64 t5, t6, t4<br> [0x80000a1c]:sw t5, 564(ra)<br>   |
|  76|[0x800025a0]<br>0x130A9FAD|- rs1_w0_val == 4026531839<br>                                                                                                                                                                                                  |[0x80000a3c]:UKMSR64 t5, t6, t4<br> [0x80000a40]:sw t5, 576(ra)<br>   |
|  77|[0x800025ac]<br>0x130AA02D|- rs1_w0_val == 4227858431<br>                                                                                                                                                                                                  |[0x80000a5c]:UKMSR64 t5, t6, t4<br> [0x80000a60]:sw t5, 588(ra)<br>   |
|  78|[0x800025b8]<br>0x138AA02D|- rs1_w0_val == 4261412863<br>                                                                                                                                                                                                  |[0x80000a7c]:UKMSR64 t5, t6, t4<br> [0x80000a80]:sw t5, 600(ra)<br>   |
|  79|[0x800025c4]<br>0x138AA02D|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                  |[0x80000a9c]:UKMSR64 t5, t6, t4<br> [0x80000aa0]:sw t5, 612(ra)<br>   |
|  80|[0x800025d0]<br>0x13CAA02D|- rs1_w0_val == 4290772991<br>                                                                                                                                                                                                  |[0x80000abc]:UKMSR64 t5, t6, t4<br> [0x80000ac0]:sw t5, 624(ra)<br>   |
|  81|[0x800025dc]<br>0x13BEA02A|- rs1_w0_val == 4294705151<br>                                                                                                                                                                                                  |[0x80000adc]:UKMSR64 t5, t6, t4<br> [0x80000ae0]:sw t5, 636(ra)<br>   |
|  82|[0x800025e8]<br>0x133CA029|- rs1_w0_val == 4294836223<br>                                                                                                                                                                                                  |[0x80000b00]:UKMSR64 t5, t6, t4<br> [0x80000b04]:sw t5, 648(ra)<br>   |
|  83|[0x800025f4]<br>0xD33C6028|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                  |[0x80000b24]:UKMSR64 t5, t6, t4<br> [0x80000b28]:sw t5, 660(ra)<br>   |
|  84|[0x80002600]<br>0xD2FC3E27|- rs1_w0_val == 4294959103<br>                                                                                                                                                                                                  |[0x80000b44]:UKMSR64 t5, t6, t4<br> [0x80000b48]:sw t5, 672(ra)<br>   |
|  85|[0x8000260c]<br>0xD2FC3CA4|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                  |[0x80000b60]:UKMSR64 t5, t6, t4<br> [0x80000b64]:sw t5, 684(ra)<br>   |
|  86|[0x80002618]<br>0xD2FC4177|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                  |[0x80000b7c]:UKMSR64 t5, t6, t4<br> [0x80000b80]:sw t5, 696(ra)<br>   |
|  87|[0x80002624]<br>0xD2FC41DA|- rs1_w0_val == 4294967263<br>                                                                                                                                                                                                  |[0x80000b98]:UKMSR64 t5, t6, t4<br> [0x80000b9c]:sw t5, 708(ra)<br>   |
|  88|[0x80002630]<br>0xD2FC59DA|- rs1_w0_val == 4294967293<br>                                                                                                                                                                                                  |[0x80000bb8]:UKMSR64 t5, t6, t4<br> [0x80000bbc]:sw t5, 720(ra)<br>   |
|  89|[0x8000263c]<br>0xD6FC59DA|- rs1_w0_val == 4294967294<br>                                                                                                                                                                                                  |[0x80000bd4]:UKMSR64 t5, t6, t4<br> [0x80000bd8]:sw t5, 732(ra)<br>   |
|  90|[0x80002648]<br>0x16FC59DA|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                  |[0x80000bf4]:UKMSR64 t5, t6, t4<br> [0x80000bf8]:sw t5, 744(ra)<br>   |
|  91|[0x80002654]<br>0x1AFC59DA|- rs2_w0_val == 4261412863<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                     |[0x80000c14]:UKMSR64 t5, t6, t4<br> [0x80000c18]:sw t5, 756(ra)<br>   |
|  92|[0x80002660]<br>0x1BFC59DA|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                    |[0x80000c34]:UKMSR64 t5, t6, t4<br> [0x80000c38]:sw t5, 768(ra)<br>   |
|  93|[0x8000266c]<br>0x17FC59DA|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                     |[0x80000c50]:UKMSR64 t5, t6, t4<br> [0x80000c54]:sw t5, 780(ra)<br>   |
|  94|[0x80002678]<br>0x180C59DA|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                     |[0x80000c70]:UKMSR64 t5, t6, t4<br> [0x80000c74]:sw t5, 792(ra)<br>   |
|  95|[0x80002684]<br>0x178C59DA|- rs1_w0_val == 262144<br>                                                                                                                                                                                                      |[0x80000c8c]:UKMSR64 t5, t6, t4<br> [0x80000c90]:sw t5, 804(ra)<br>   |
|  96|[0x80002690]<br>0x178C59DA|- rs1_w0_val == 32768<br>                                                                                                                                                                                                       |[0x80000ca8]:UKMSR64 t5, t6, t4<br> [0x80000cac]:sw t5, 816(ra)<br>   |
|  97|[0x8000269c]<br>0x1F8E59DA|- rs1_w0_val == 131072<br>                                                                                                                                                                                                      |[0x80000cc4]:UKMSR64 t5, t6, t4<br> [0x80000cc8]:sw t5, 828(ra)<br>   |
|  98|[0x800026a8]<br>0x1F7E59DA|- rs1_w0_val == 512<br>                                                                                                                                                                                                         |[0x80000ce4]:UKMSR64 t5, t6, t4<br> [0x80000ce8]:sw t5, 840(ra)<br>   |
|  99|[0x800026b4]<br>0xDF5E57D9|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                  |[0x80000d04]:UKMSR64 t5, t6, t4<br> [0x80000d08]:sw t5, 852(ra)<br>   |
