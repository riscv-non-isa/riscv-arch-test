
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001930')]      |
| SIG_REGION                | [('0x80003210', '0x80003a50', '264 dwords')]      |
| COV_LABELS                | kcras32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kcras32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 264      |
| STAT1                     | 128      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 132     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e8]:KCRAS32 t6, t5, t4
      [0x800011ec]:sd t6, 912(ra)
 -- Signature Address: 0x80003780 Data: 0xFBFFFFFFFFFFFFB6
 -- Redundant Coverpoints hit by the op
      - opcode : kcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 0
      - rs1_w1_val == -67108865
      - rs1_w0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001898]:KCRAS32 t6, t5, t4
      [0x8000189c]:sd t6, 1568(ra)
 -- Signature Address: 0x80003a10 Data: 0x00010100D5555556
 -- Redundant Coverpoints hit by the op
      - opcode : kcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -1431655766
      - rs2_w0_val == 256
      - rs1_w1_val == 65536




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001900]:KCRAS32 t6, t5, t4
      [0x80001904]:sd t6, 1600(ra)
 -- Signature Address: 0x80003a30 Data: 0xBFFFBFFE00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -134217729
      - rs2_w0_val == -16385
      - rs1_w1_val == -1073741825
      - rs1_w0_val == -134217729




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001924]:KCRAS32 t6, t5, t4
      [0x80001928]:sd t6, 1616(ra)
 -- Signature Address: 0x80003a40 Data: 0x0200100000010003
 -- Redundant Coverpoints hit by the op
      - opcode : kcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -65537
      - rs2_w0_val == 33554432
      - rs1_w1_val == 4096
      - rs1_w0_val == 2






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kcras32', 'rs1 : x27', 'rs2 : x27', 'rd : x28', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 256', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800003c0]:KCRAS32 t3, s11, s11
	-[0x800003c4]:sd t3, 0(sp)
Current Store : [0x800003c8] : sd s11, 8(sp) -- Store: [0x80003218]:0xAAAAAAAA00000100




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 131072', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 131072', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800003e8]:KCRAS32 s5, s5, s5
	-[0x800003ec]:sd s5, 16(sp)
Current Store : [0x800003f0] : sd s5, 24(sp) -- Store: [0x80003228]:0x7FFFFFFF7FFDFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x1', 'rd : x15', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 32', 'rs2_w0_val == -67108865', 'rs1_w1_val == -536870913', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000414]:KCRAS32 a5, t2, ra
	-[0x80000418]:sd a5, 32(sp)
Current Store : [0x8000041c] : sd t2, 40(sp) -- Store: [0x80003238]:0xDFFFFFFF00000200




Last Coverpoint : ['rs1 : x29', 'rs2 : x12', 'rd : x29', 'rs1 == rd != rs2', 'rs2_w0_val == -1048577', 'rs1_w1_val == -5', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000440]:KCRAS32 t4, t4, a2
	-[0x80000444]:sd t4, 48(sp)
Current Store : [0x80000448] : sd t4, 56(sp) -- Store: [0x80003248]:0xFFEFFFFA5555555D




Last Coverpoint : ['rs1 : x15', 'rs2 : x10', 'rd : x10', 'rs2 == rd != rs1', 'rs2_w1_val == 536870912', 'rs2_w0_val == 33554432', 'rs1_w1_val == 2048', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000468]:KCRAS32 a0, a5, a0
	-[0x8000046c]:sd a0, 64(sp)
Current Store : [0x80000470] : sd a5, 72(sp) -- Store: [0x80003258]:0x0000080002000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rd : x8', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 128', 'rs2_w0_val == -8193', 'rs1_w1_val == -17', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000490]:KCRAS32 fp, ra, a1
	-[0x80000494]:sd fp, 80(sp)
Current Store : [0x80000498] : sd ra, 88(sp) -- Store: [0x80003268]:0xFFFFFFEFFFFFFEFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x24', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -17', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800004bc]:KCRAS32 s8, a2, s3
	-[0x800004c0]:sd s8, 96(sp)
Current Store : [0x800004c4] : sd a2, 104(sp) -- Store: [0x80003278]:0xFFFFFFEFFFEFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x16', 'rd : x25', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -536870913', 'rs1_w1_val == 0', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800004e8]:KCRAS32 s9, s10, a6
	-[0x800004ec]:sd s9, 112(sp)
Current Store : [0x800004f0] : sd s10, 120(sp) -- Store: [0x80003288]:0x00000000FFFFFFFB




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x17', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -33', 'rs1_w1_val == -2049', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000510]:KCRAS32 a7, t6, s6
	-[0x80000514]:sd a7, 128(sp)
Current Store : [0x80000518] : sd t6, 136(sp) -- Store: [0x80003298]:0xFFFFF7FFFFFBFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x13', 'rd : x11', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -536870913', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x8000053c]:KCRAS32 a1, s4, a3
	-[0x80000540]:sd a1, 144(sp)
Current Store : [0x80000544] : sd s4, 152(sp) -- Store: [0x800032a8]:0xFFFBFFFF80000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x4', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 4194304', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000570]:KCRAS32 tp, a7, zero
	-[0x80000574]:sd tp, 160(sp)
Current Store : [0x80000578] : sd a7, 168(sp) -- Store: [0x800032b8]:0x0040000000000800




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x0', 'rs2_w1_val == -134217729', 'rs2_w0_val == -16385', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800005a4]:KCRAS32 zero, a1, s7
	-[0x800005a8]:sd zero, 176(sp)
Current Store : [0x800005ac] : sd a1, 184(sp) -- Store: [0x800032c8]:0xBFFFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x30', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -67108865', 'rs2_w0_val == 2048', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800005d4]:KCRAS32 t5, t3, s4
	-[0x800005d8]:sd t5, 192(sp)
Current Store : [0x800005dc] : sd t3, 200(sp) -- Store: [0x800032d8]:0x0000000500080000




Last Coverpoint : ['rs1 : x8', 'rs2 : x5', 'rd : x9', 'rs2_w1_val == -33554433', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800005f8]:KCRAS32 s1, fp, t0
	-[0x800005fc]:sd s1, 208(sp)
Current Store : [0x80000600] : sd fp, 216(sp) -- Store: [0x800032e8]:0x00000001FFFFFFF6




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x20', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -16777217', 'rs2_w0_val == 32', 'rs1_w1_val == 8388608', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000628]:KCRAS32 s4, s6, s2
	-[0x8000062c]:sd s4, 224(sp)
Current Store : [0x80000630] : sd s6, 232(sp) -- Store: [0x800032f8]:0x00800000FFBFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rd : x22', 'rs2_w1_val == -8388609', 'rs2_w0_val == 65536', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000065c]:KCRAS32 s6, a3, t4
	-[0x80000660]:sd s6, 0(a1)
Current Store : [0x80000664] : sd a3, 8(a1) -- Store: [0x80003308]:0xFFFFFFF8DFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x12', 'rs2_w1_val == -4194305', 'rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000684]:KCRAS32 a2, a0, t2
	-[0x80000688]:sd a2, 16(a1)
Current Store : [0x8000068c] : sd a0, 24(a1) -- Store: [0x80003318]:0xFFFFFFF67FFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x7', 'rs2_w1_val == -2097153', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800006ac]:KCRAS32 t2, tp, a7
	-[0x800006b0]:sd t2, 32(a1)
Current Store : [0x800006b4] : sd tp, 40(a1) -- Store: [0x80003328]:0x00000007FFFFDFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x9', 'rd : x1', 'rs2_w1_val == -1048577', 'rs2_w0_val == -5', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800006d0]:KCRAS32 ra, t0, s1
	-[0x800006d4]:sd ra, 48(a1)
Current Store : [0x800006d8] : sd t0, 56(a1) -- Store: [0x80003338]:0x00000008FFFFFFF9




Last Coverpoint : ['rs1 : x23', 'rs2 : x8', 'rd : x26', 'rs2_w1_val == -524289', 'rs2_w0_val == -65', 'rs1_w1_val == -65', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800006f4]:KCRAS32 s10, s7, fp
	-[0x800006f8]:sd s10, 64(a1)
Current Store : [0x800006fc] : sd s7, 72(a1) -- Store: [0x80003348]:0xFFFFFFBF00000002




Last Coverpoint : ['rs1 : x18', 'rs2 : x14', 'rd : x16', 'rs2_w1_val == -262145', 'rs1_w1_val == -33554433', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000071c]:KCRAS32 a6, s2, a4
	-[0x80000720]:sd a6, 80(a1)
Current Store : [0x80000724] : sd s2, 88(a1) -- Store: [0x80003358]:0xFDFFFFFF10000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x6', 'rs2_w1_val == -131073', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000748]:KCRAS32 t1, s8, a5
	-[0x8000074c]:sd t1, 96(a1)
Current Store : [0x80000750] : sd s8, 104(a1) -- Store: [0x80003368]:0x40000000FFFFFF7F




Last Coverpoint : ['rs1 : x0', 'rs2 : x6', 'rd : x18', 'rs2_w1_val == -65537', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000076c]:KCRAS32 s2, zero, t1
	-[0x80000770]:sd s2, 112(a1)
Current Store : [0x80000774] : sd zero, 120(a1) -- Store: [0x80003378]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x23', 'rs2_w1_val == -32769', 'rs2_w0_val == 4096', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000798]:KCRAS32 s7, s3, s9
	-[0x8000079c]:sd s7, 128(a1)
Current Store : [0x800007a0] : sd s3, 136(a1) -- Store: [0x80003388]:0x0000010010000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x2', 'rs2_w1_val == -16385', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x800007c4]:KCRAS32 sp, t1, s8
	-[0x800007c8]:sd sp, 144(a1)
Current Store : [0x800007cc] : sd t1, 152(a1) -- Store: [0x80003398]:0xFFFFFEFFDFFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x4', 'rd : x31', 'rs2_w1_val == -8193', 'rs2_w0_val == 512', 'rs1_w1_val == -3', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800007f0]:KCRAS32 t6, t5, tp
	-[0x800007f4]:sd t6, 160(a1)
Current Store : [0x800007f8] : sd t5, 168(a1) -- Store: [0x800033a8]:0xFFFFFFFDFFFF7FFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x3', 'rd : x5', 'rs2_w1_val == -4097', 'rs2_w0_val == 67108864', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80000818]:KCRAS32 t0, s9, gp
	-[0x8000081c]:sd t0, 176(a1)
Current Store : [0x80000820] : sd s9, 184(a1) -- Store: [0x800033b8]:0x00000004FFFBFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x30', 'rd : x13', 'rs2_w1_val == -2049', 'rs2_w0_val == -513', 'rs1_w1_val == -16777217', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000084c]:KCRAS32 a3, sp, t5
	-[0x80000850]:sd a3, 192(a1)
Current Store : [0x80000854] : sd sp, 200(a1) -- Store: [0x800033c8]:0xFEFFFFFFAAAAAAAA




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x19', 'rs2_w1_val == -1025', 'rs2_w0_val == -2049', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000874]:KCRAS32 s3, a6, sp
	-[0x80000878]:sd s3, 208(a1)
Current Store : [0x8000087c] : sd a6, 216(a1) -- Store: [0x800033d8]:0x0000040000000006




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x27', 'rs2_w1_val == -513', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000089c]:KCRAS32 s11, gp, s10
	-[0x800008a0]:sd s11, 224(a1)
Current Store : [0x800008a4] : sd gp, 232(a1) -- Store: [0x800033e8]:0x00000080FFFFFF7F




Last Coverpoint : ['rs1 : x9', 'rs2 : x28', 'rd : x3', 'rs2_w1_val == -257', 'rs2_w0_val == 524288', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800008c8]:KCRAS32 gp, s1, t3
	-[0x800008cc]:sd gp, 0(ra)
Current Store : [0x800008d0] : sd s1, 8(ra) -- Store: [0x800033f8]:0xFFFFFEFF00100000




Last Coverpoint : ['rs1 : x14', 'rs2_w1_val == -129', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800008ec]:KCRAS32 t6, a4, s4
	-[0x800008f0]:sd t6, 16(ra)
Current Store : [0x800008f4] : sd a4, 24(ra) -- Store: [0x80003408]:0x0000000200000003




Last Coverpoint : ['rs2 : x31', 'rs2_w1_val == -65', 'rs2_w0_val == 2097152', 'rs1_w1_val == -1025', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000910]:KCRAS32 s1, s4, t6
	-[0x80000914]:sd s1, 32(ra)
Current Store : [0x80000918] : sd s4, 40(ra) -- Store: [0x80003418]:0xFFFFFBFF00001000




Last Coverpoint : ['rd : x14', 'rs2_w1_val == -33', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x8000093c]:KCRAS32 a4, a0, t1
	-[0x80000940]:sd a4, 48(ra)
Current Store : [0x80000944] : sd a0, 56(ra) -- Store: [0x80003428]:0x0000400000000800




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == -1']
Last Code Sequence : 
	-[0x8000095c]:KCRAS32 t6, t5, t4
	-[0x80000960]:sd t6, 64(ra)
Current Store : [0x80000964] : sd t5, 72(ra) -- Store: [0x80003438]:0xFFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == -9', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000980]:KCRAS32 t6, t5, t4
	-[0x80000984]:sd t6, 80(ra)
Current Store : [0x80000988] : sd t5, 88(ra) -- Store: [0x80003448]:0x0000040000800000




Last Coverpoint : ['rs2_w1_val == -5', 'rs1_w1_val == -129', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800009a4]:KCRAS32 t6, t5, t4
	-[0x800009a8]:sd t6, 96(ra)
Current Store : [0x800009ac] : sd t5, 104(ra) -- Store: [0x80003458]:0xFFFFFF7FFFFFFFBF




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -524289', 'rs1_w1_val == 32', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800009cc]:KCRAS32 t6, t5, t4
	-[0x800009d0]:sd t6, 112(ra)
Current Store : [0x800009d4] : sd t5, 120(ra) -- Store: [0x80003468]:0x0000002000000040




Last Coverpoint : ['rs2_w1_val == -2', 'rs1_w1_val == -4194305', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800009f0]:KCRAS32 t6, t5, t4
	-[0x800009f4]:sd t6, 128(ra)
Current Store : [0x800009f8] : sd t5, 136(ra) -- Store: [0x80003478]:0xFFBFFFFFFFFFFBFF




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == 8388608', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a18]:KCRAS32 t6, t5, t4
	-[0x80000a1c]:sd t6, 144(ra)
Current Store : [0x80000a20] : sd t5, 152(ra) -- Store: [0x80003488]:0x0000040000400000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 16', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000a40]:KCRAS32 t6, t5, t4
	-[0x80000a44]:sd t6, 160(ra)
Current Store : [0x80000a48] : sd t5, 168(ra) -- Store: [0x80003498]:0x00000010FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 16', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000a68]:KCRAS32 t6, t5, t4
	-[0x80000a6c]:sd t6, 176(ra)
Current Store : [0x80000a70] : sd t5, 184(ra) -- Store: [0x800034a8]:0x00200000FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a90]:KCRAS32 t6, t5, t4
	-[0x80000a94]:sd t6, 192(ra)
Current Store : [0x80000a98] : sd t5, 200(ra) -- Store: [0x800034b8]:0xC000000008000000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000abc]:KCRAS32 t6, t5, t4
	-[0x80000ac0]:sd t6, 208(ra)
Current Store : [0x80000ac4] : sd t5, 216(ra) -- Store: [0x800034c8]:0x00000002F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000af8]:KCRAS32 t6, t5, t4
	-[0x80000afc]:sd t6, 224(ra)
Current Store : [0x80000b00] : sd t5, 232(ra) -- Store: [0x800034d8]:0xDFFFFFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000b20]:KCRAS32 t6, t5, t4
	-[0x80000b24]:sd t6, 240(ra)
Current Store : [0x80000b28] : sd t5, 248(ra) -- Store: [0x800034e8]:0x0010000000000002




Last Coverpoint : ['rs2_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000b44]:KCRAS32 t6, t5, t4
	-[0x80000b48]:sd t6, 256(ra)
Current Store : [0x80000b4c] : sd t5, 264(ra) -- Store: [0x800034f8]:0x0080000000000000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 128', 'rs1_w1_val == -513', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000b68]:KCRAS32 t6, t5, t4
	-[0x80000b6c]:sd t6, 272(ra)
Current Store : [0x80000b70] : sd t5, 280(ra) -- Store: [0x80003508]:0xFFFFFDFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -3', 'rs1_w1_val == -2', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000b94]:KCRAS32 t6, t5, t4
	-[0x80000b98]:sd t6, 288(ra)
Current Store : [0x80000b9c] : sd t5, 296(ra) -- Store: [0x80003518]:0xFFFFFFFEFFDFFFFF




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000bbc]:KCRAS32 t6, t5, t4
	-[0x80000bc0]:sd t6, 304(ra)
Current Store : [0x80000bc4] : sd t5, 312(ra) -- Store: [0x80003528]:0xFEFFFFFF01000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000be4]:KCRAS32 t6, t5, t4
	-[0x80000be8]:sd t6, 320(ra)
Current Store : [0x80000bec] : sd t5, 328(ra) -- Store: [0x80003538]:0x0000000400200000




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c08]:KCRAS32 t6, t5, t4
	-[0x80000c0c]:sd t6, 336(ra)
Current Store : [0x80000c10] : sd t5, 344(ra) -- Store: [0x80003548]:0xFFFFFFFA00040000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == 131072', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c2c]:KCRAS32 t6, t5, t4
	-[0x80000c30]:sd t6, 352(ra)
Current Store : [0x80000c34] : sd t5, 360(ra) -- Store: [0x80003558]:0xFFFFFFFF00020000




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c60]:KCRAS32 t6, t5, t4
	-[0x80000c64]:sd t6, 368(ra)
Current Store : [0x80000c68] : sd t5, 376(ra) -- Store: [0x80003568]:0xFDFFFFFF00010000




Last Coverpoint : ['rs1_w1_val == -134217729', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c90]:KCRAS32 t6, t5, t4
	-[0x80000c94]:sd t6, 384(ra)
Current Store : [0x80000c98] : sd t5, 392(ra) -- Store: [0x80003578]:0xF7FFFFFF00008000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == -257', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cc0]:KCRAS32 t6, t5, t4
	-[0x80000cc4]:sd t6, 400(ra)
Current Store : [0x80000cc8] : sd t5, 408(ra) -- Store: [0x80003588]:0xDFFFFFFF00004000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cec]:KCRAS32 t6, t5, t4
	-[0x80000cf0]:sd t6, 416(ra)
Current Store : [0x80000cf4] : sd t5, 424(ra) -- Store: [0x80003598]:0xFFBFFFFF00002000




Last Coverpoint : ['rs1_w1_val == -131073', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d14]:KCRAS32 t6, t5, t4
	-[0x80000d18]:sd t6, 432(ra)
Current Store : [0x80000d1c] : sd t5, 440(ra) -- Store: [0x800035a8]:0xFFFDFFFF00000400




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000d38]:KCRAS32 t6, t5, t4
	-[0x80000d3c]:sd t6, 448(ra)
Current Store : [0x80000d40] : sd t5, 456(ra) -- Store: [0x800035b8]:0x0002000000000100




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d5c]:KCRAS32 t6, t5, t4
	-[0x80000d60]:sd t6, 464(ra)
Current Store : [0x80000d64] : sd t5, 472(ra) -- Store: [0x800035c8]:0x0000000800000080




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d88]:KCRAS32 t6, t5, t4
	-[0x80000d8c]:sd t6, 480(ra)
Current Store : [0x80000d90] : sd t5, 488(ra) -- Store: [0x800035d8]:0xFBFFFFFF00000020




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w1_val == -65537', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000db4]:KCRAS32 t6, t5, t4
	-[0x80000db8]:sd t6, 496(ra)
Current Store : [0x80000dbc] : sd t5, 504(ra) -- Store: [0x800035e8]:0xFFFEFFFF00000010




Last Coverpoint : ['rs2_w0_val == -2097153', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000de0]:KCRAS32 t6, t5, t4
	-[0x80000de4]:sd t6, 512(ra)
Current Store : [0x80000de8] : sd t5, 520(ra) -- Store: [0x800035f8]:0xBFFFFFFF00000008




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e00]:KCRAS32 t6, t5, t4
	-[0x80000e04]:sd t6, 528(ra)
Current Store : [0x80000e08] : sd t5, 536(ra) -- Store: [0x80003608]:0x0000080000000004




Last Coverpoint : ['rs1_w1_val == -9', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e28]:KCRAS32 t6, t5, t4
	-[0x80000e2c]:sd t6, 544(ra)
Current Store : [0x80000e30] : sd t5, 552(ra) -- Store: [0x80003618]:0xFFFFFFF700000001




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e54]:KCRAS32 t6, t5, t4
	-[0x80000e58]:sd t6, 560(ra)
Current Store : [0x80000e5c] : sd t5, 568(ra) -- Store: [0x80003628]:0x10000000FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80000e84]:KCRAS32 t6, t5, t4
	-[0x80000e88]:sd t6, 576(ra)
Current Store : [0x80000e8c] : sd t5, 584(ra) -- Store: [0x80003638]:0xFF7FFFFF00040000




Last Coverpoint : ['rs2_w1_val == 524288']
Last Code Sequence : 
	-[0x80000eac]:KCRAS32 t6, t5, t4
	-[0x80000eb0]:sd t6, 592(ra)
Current Store : [0x80000eb4] : sd t5, 600(ra) -- Store: [0x80003648]:0x00000000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000edc]:KCRAS32 t6, t5, t4
	-[0x80000ee0]:sd t6, 608(ra)
Current Store : [0x80000ee4] : sd t5, 616(ra) -- Store: [0x80003658]:0xFFFFFFF6BFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000f00]:KCRAS32 t6, t5, t4
	-[0x80000f04]:sd t6, 624(ra)
Current Store : [0x80000f08] : sd t5, 632(ra) -- Store: [0x80003668]:0x00000002FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -131073', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000f28]:KCRAS32 t6, t5, t4
	-[0x80000f2c]:sd t6, 640(ra)
Current Store : [0x80000f30] : sd t5, 648(ra) -- Store: [0x80003678]:0x00000007EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000f58]:KCRAS32 t6, t5, t4
	-[0x80000f5c]:sd t6, 656(ra)
Current Store : [0x80000f60] : sd t5, 664(ra) -- Store: [0x80003688]:0x00400000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == -2']
Last Code Sequence : 
	-[0x80000f80]:KCRAS32 t6, t5, t4
	-[0x80000f84]:sd t6, 672(ra)
Current Store : [0x80000f88] : sd t5, 680(ra) -- Store: [0x80003698]:0xFFFFFFFD00200000




Last Coverpoint : ['rs2_w1_val == 1024']
Last Code Sequence : 
	-[0x80000fa4]:KCRAS32 t6, t5, t4
	-[0x80000fa8]:sd t6, 688(ra)
Current Store : [0x80000fac] : sd t5, 696(ra) -- Store: [0x800036a8]:0xFFFFFFFD00000005




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000fc8]:KCRAS32 t6, t5, t4
	-[0x80000fcc]:sd t6, 704(ra)
Current Store : [0x80000fd0] : sd t5, 712(ra) -- Store: [0x800036b8]:0x0000008000004000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x80000fe8]:KCRAS32 t6, t5, t4
	-[0x80000fec]:sd t6, 720(ra)
Current Store : [0x80000ff0] : sd t5, 728(ra) -- Store: [0x800036c8]:0xFFFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001014]:KCRAS32 t6, t5, t4
	-[0x80001018]:sd t6, 736(ra)
Current Store : [0x8000101c] : sd t5, 744(ra) -- Store: [0x800036d8]:0x04000000FFFFFFF9




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 8192', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001044]:KCRAS32 t6, t5, t4
	-[0x80001048]:sd t6, 752(ra)
Current Store : [0x8000104c] : sd t5, 760(ra) -- Store: [0x800036e8]:0x02000000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80001074]:KCRAS32 t6, t5, t4
	-[0x80001078]:sd t6, 768(ra)
Current Store : [0x8000107c] : sd t5, 776(ra) -- Store: [0x800036f8]:0x3FFFFFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000109c]:KCRAS32 t6, t5, t4
	-[0x800010a0]:sd t6, 784(ra)
Current Store : [0x800010a4] : sd t5, 792(ra) -- Store: [0x80003708]:0xFEFFFFFF04000000




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800010c4]:KCRAS32 t6, t5, t4
	-[0x800010c8]:sd t6, 800(ra)
Current Store : [0x800010cc] : sd t5, 808(ra) -- Store: [0x80003718]:0x55555555FFFFFFF8




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800010e8]:KCRAS32 t6, t5, t4
	-[0x800010ec]:sd t6, 816(ra)
Current Store : [0x800010f0] : sd t5, 824(ra) -- Store: [0x80003728]:0x0001000000000005




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w1_val == -33', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001110]:KCRAS32 t6, t5, t4
	-[0x80001114]:sd t6, 832(ra)
Current Store : [0x80001118] : sd t5, 840(ra) -- Store: [0x80003738]:0xFFFFFFDFFFFFF7FF




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001140]:KCRAS32 t6, t5, t4
	-[0x80001144]:sd t6, 848(ra)
Current Store : [0x80001148] : sd t5, 856(ra) -- Store: [0x80003748]:0x00001000AAAAAAAA




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001168]:KCRAS32 t6, t5, t4
	-[0x8000116c]:sd t6, 864(ra)
Current Store : [0x80001170] : sd t5, 872(ra) -- Store: [0x80003758]:0x008000007FFFFFFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001194]:KCRAS32 t6, t5, t4
	-[0x80001198]:sd t6, 880(ra)
Current Store : [0x8000119c] : sd t5, 888(ra) -- Store: [0x80003768]:0xFDFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800011c8]:KCRAS32 t6, t5, t4
	-[0x800011cc]:sd t6, 896(ra)
Current Store : [0x800011d0] : sd t5, 904(ra) -- Store: [0x80003778]:0xAAAAAAAAFFFFEFFF




Last Coverpoint : ['opcode : kcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w1_val == -67108865', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800011e8]:KCRAS32 t6, t5, t4
	-[0x800011ec]:sd t6, 912(ra)
Current Store : [0x800011f0] : sd t5, 920(ra) -- Store: [0x80003788]:0xFBFFFFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001218]:KCRAS32 t6, t5, t4
	-[0x8000121c]:sd t6, 928(ra)
Current Store : [0x80001220] : sd t5, 936(ra) -- Store: [0x80003798]:0x7FFFFFFF00000001




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001244]:KCRAS32 t6, t5, t4
	-[0x80001248]:sd t6, 944(ra)
Current Store : [0x8000124c] : sd t5, 952(ra) -- Store: [0x800037a8]:0xEFFFFFFFFFFFFFF8




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x8000126c]:KCRAS32 t6, t5, t4
	-[0x80001270]:sd t6, 960(ra)
Current Store : [0x80001274] : sd t5, 968(ra) -- Store: [0x800037b8]:0xFFDFFFFF00000006




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001294]:KCRAS32 t6, t5, t4
	-[0x80001298]:sd t6, 976(ra)
Current Store : [0x8000129c] : sd t5, 984(ra) -- Store: [0x800037c8]:0xFFEFFFFFFFFFF7FF




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800012bc]:KCRAS32 t6, t5, t4
	-[0x800012c0]:sd t6, 992(ra)
Current Store : [0x800012c4] : sd t5, 1000(ra) -- Store: [0x800037d8]:0xFFF7FFFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800012e0]:KCRAS32 t6, t5, t4
	-[0x800012e4]:sd t6, 1008(ra)
Current Store : [0x800012e8] : sd t5, 1016(ra) -- Store: [0x800037e8]:0xFFFF7FFF00800000




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x8000130c]:KCRAS32 t6, t5, t4
	-[0x80001310]:sd t6, 1024(ra)
Current Store : [0x80001314] : sd t5, 1032(ra) -- Store: [0x800037f8]:0xFFFFBFFFFFFFEFFF




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80001334]:KCRAS32 t6, t5, t4
	-[0x80001338]:sd t6, 1040(ra)
Current Store : [0x8000133c] : sd t5, 1048(ra) -- Store: [0x80003808]:0xFFFFDFFFFFFFFFFA




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001360]:KCRAS32 t6, t5, t4
	-[0x80001364]:sd t6, 1056(ra)
Current Store : [0x80001368] : sd t5, 1064(ra) -- Store: [0x80003818]:0xFFFFEFFF00000100




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001390]:KCRAS32 t6, t5, t4
	-[0x80001394]:sd t6, 1072(ra)
Current Store : [0x80001398] : sd t5, 1080(ra) -- Store: [0x80003828]:0x80000000FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x800013c8]:KCRAS32 t6, t5, t4
	-[0x800013cc]:sd t6, 1088(ra)
Current Store : [0x800013d0] : sd t5, 1096(ra) -- Store: [0x80003838]:0x20000000AAAAAAAA




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x800013fc]:KCRAS32 t6, t5, t4
	-[0x80001400]:sd t6, 1104(ra)
Current Store : [0x80001404] : sd t5, 1112(ra) -- Store: [0x80003848]:0x08000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001424]:KCRAS32 t6, t5, t4
	-[0x80001428]:sd t6, 1120(ra)
Current Store : [0x8000142c] : sd t5, 1128(ra) -- Store: [0x80003858]:0x01000000FFFFFFF8




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001448]:KCRAS32 t6, t5, t4
	-[0x8000144c]:sd t6, 1136(ra)
Current Store : [0x80001450] : sd t5, 1144(ra) -- Store: [0x80003868]:0x0008000000000004




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001474]:KCRAS32 t6, t5, t4
	-[0x80001478]:sd t6, 1152(ra)
Current Store : [0x8000147c] : sd t5, 1160(ra) -- Store: [0x80003878]:0x00040000FFFFFFF6




Last Coverpoint : ['rs1_w1_val == 32768', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800014a0]:KCRAS32 t6, t5, t4
	-[0x800014a4]:sd t6, 1168(ra)
Current Store : [0x800014a8] : sd t5, 1176(ra) -- Store: [0x80003888]:0x00008000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800014c0]:KCRAS32 t6, t5, t4
	-[0x800014c4]:sd t6, 1184(ra)
Current Store : [0x800014c8] : sd t5, 1192(ra) -- Store: [0x80003898]:0x00002000FF7FFFFF




Last Coverpoint : ['rs1_w1_val == 512', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800014e4]:KCRAS32 t6, t5, t4
	-[0x800014e8]:sd t6, 1200(ra)
Current Store : [0x800014ec] : sd t5, 1208(ra) -- Store: [0x800038a8]:0x00000200FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x8000150c]:KCRAS32 t6, t5, t4
	-[0x80001510]:sd t6, 1216(ra)
Current Store : [0x80001514] : sd t5, 1224(ra) -- Store: [0x800038b8]:0xFDFFFFFF00000001




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80001530]:KCRAS32 t6, t5, t4
	-[0x80001534]:sd t6, 1232(ra)
Current Store : [0x80001538] : sd t5, 1240(ra) -- Store: [0x800038c8]:0x0000800000000080




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001560]:KCRAS32 t6, t5, t4
	-[0x80001564]:sd t6, 1248(ra)
Current Store : [0x80001568] : sd t5, 1256(ra) -- Store: [0x800038d8]:0x0000004000200000




Last Coverpoint : ['rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001584]:KCRAS32 t6, t5, t4
	-[0x80001588]:sd t6, 1264(ra)
Current Store : [0x8000158c] : sd t5, 1272(ra) -- Store: [0x800038e8]:0x0000000100800000




Last Coverpoint : ['rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x800015ac]:KCRAS32 t6, t5, t4
	-[0x800015b0]:sd t6, 1280(ra)
Current Store : [0x800015b4] : sd t5, 1288(ra) -- Store: [0x800038f8]:0x4000000000000002




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x800015e4]:KCRAS32 t6, t5, t4
	-[0x800015e8]:sd t6, 1296(ra)
Current Store : [0x800015ec] : sd t5, 1304(ra) -- Store: [0x80003908]:0xFBFFFFFF55555555




Last Coverpoint : ['rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80001620]:KCRAS32 t6, t5, t4
	-[0x80001624]:sd t6, 1312(ra)
Current Store : [0x80001628] : sd t5, 1320(ra) -- Store: [0x80003918]:0x00010000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001650]:KCRAS32 t6, t5, t4
	-[0x80001654]:sd t6, 1328(ra)
Current Store : [0x80001658] : sd t5, 1336(ra) -- Store: [0x80003928]:0x08000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80001688]:KCRAS32 t6, t5, t4
	-[0x8000168c]:sd t6, 1344(ra)
Current Store : [0x80001690] : sd t5, 1352(ra) -- Store: [0x80003938]:0xBFFFFFFFFFFF7FFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800016ac]:KCRAS32 t6, t5, t4
	-[0x800016b0]:sd t6, 1360(ra)
Current Store : [0x800016b4] : sd t5, 1368(ra) -- Store: [0x80003948]:0x00000004FEFFFFFF




Last Coverpoint : ['rs2_w0_val == -4097', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800016d0]:KCRAS32 t6, t5, t4
	-[0x800016d4]:sd t6, 1376(ra)
Current Store : [0x800016d8] : sd t5, 1384(ra) -- Store: [0x80003958]:0xFFFFFFFC20000000




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800016fc]:KCRAS32 t6, t5, t4
	-[0x80001700]:sd t6, 1392(ra)
Current Store : [0x80001704] : sd t5, 1400(ra) -- Store: [0x80003968]:0x00000007FFF7FFFF




Last Coverpoint : ['rs2_w0_val == -1025', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001728]:KCRAS32 t6, t5, t4
	-[0x8000172c]:sd t6, 1408(ra)
Current Store : [0x80001730] : sd t5, 1416(ra) -- Store: [0x80003978]:0xEFFFFFFFFFFDFFFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001758]:KCRAS32 t6, t5, t4
	-[0x8000175c]:sd t6, 1424(ra)
Current Store : [0x80001760] : sd t5, 1432(ra) -- Store: [0x80003988]:0xFFEFFFFFFFFFBFFF




Last Coverpoint : ['rs2_w0_val == -9']
Last Code Sequence : 
	-[0x8000177c]:KCRAS32 t6, t5, t4
	-[0x80001780]:sd t6, 1440(ra)
Current Store : [0x80001784] : sd t5, 1448(ra) -- Store: [0x80003998]:0xFFFFFDFF20000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000179c]:KCRAS32 t6, t5, t4
	-[0x800017a0]:sd t6, 1456(ra)
Current Store : [0x800017a4] : sd t5, 1464(ra) -- Store: [0x800039a8]:0xEFFFFFFFFFFFFDFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800017bc]:KCRAS32 t6, t5, t4
	-[0x800017c0]:sd t6, 1472(ra)
Current Store : [0x800017c4] : sd t5, 1480(ra) -- Store: [0x800039b8]:0xFFFFFFFA08000000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800017e0]:KCRAS32 t6, t5, t4
	-[0x800017e4]:sd t6, 1488(ra)
Current Store : [0x800017e8] : sd t5, 1496(ra) -- Store: [0x800039c8]:0x0000200000000004




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001804]:KCRAS32 t6, t5, t4
	-[0x80001808]:sd t6, 1504(ra)
Current Store : [0x8000180c] : sd t5, 1512(ra) -- Store: [0x800039d8]:0x00000001FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001828]:KCRAS32 t6, t5, t4
	-[0x8000182c]:sd t6, 1520(ra)
Current Store : [0x80001830] : sd t5, 1528(ra) -- Store: [0x800039e8]:0x00000040FFFFFFF8




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001850]:KCRAS32 t6, t5, t4
	-[0x80001854]:sd t6, 1536(ra)
Current Store : [0x80001858] : sd t5, 1544(ra) -- Store: [0x800039f8]:0xFFFFDFFF40000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001870]:KCRAS32 t6, t5, t4
	-[0x80001874]:sd t6, 1552(ra)
Current Store : [0x80001878] : sd t5, 1560(ra) -- Store: [0x80003a08]:0xFDFFFFFFFFFFFFEF




Last Coverpoint : ['opcode : kcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 256', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001898]:KCRAS32 t6, t5, t4
	-[0x8000189c]:sd t6, 1568(ra)
Current Store : [0x800018a0] : sd t5, 1576(ra) -- Store: [0x80003a18]:0x0001000080000000




Last Coverpoint : ['rs2_w1_val == -268435457']
Last Code Sequence : 
	-[0x800018cc]:KCRAS32 t6, t5, t4
	-[0x800018d0]:sd t6, 1584(ra)
Current Store : [0x800018d4] : sd t5, 1592(ra) -- Store: [0x80003a28]:0x0040000000000800




Last Coverpoint : ['opcode : kcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -134217729', 'rs2_w0_val == -16385', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001900]:KCRAS32 t6, t5, t4
	-[0x80001904]:sd t6, 1600(ra)
Current Store : [0x80001908] : sd t5, 1608(ra) -- Store: [0x80003a38]:0xBFFFFFFFF7FFFFFF




Last Coverpoint : ['opcode : kcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -65537', 'rs2_w0_val == 33554432', 'rs1_w1_val == 4096', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80001924]:KCRAS32 t6, t5, t4
	-[0x80001928]:sd t6, 1616(ra)
Current Store : [0x8000192c] : sd t5, 1624(ra) -- Store: [0x80003a48]:0x0000100000000002





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                        |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xAAAAABAA55555656|- opcode : kcras32<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 256<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 256<br> |[0x800003c0]:KCRAS32 t3, s11, s11<br> [0x800003c4]:sd t3, 0(sp)<br>     |
|   2|[0x80003220]<br>0x7FFFFFFF7FFDFFFF|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 131072<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 2147483647<br>                                                                                                                          |[0x800003e8]:KCRAS32 s5, s5, s5<br> [0x800003ec]:sd s5, 16(sp)<br>      |
|   3|[0x80003230]<br>0xDBFFFFFE000001E0|- rs1 : x7<br> - rs2 : x1<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 32<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 512<br>       |[0x80000414]:KCRAS32 a5, t2, ra<br> [0x80000418]:sd a5, 32(sp)<br>      |
|   4|[0x80003240]<br>0xFFEFFFFA5555555D|- rs1 : x29<br> - rs2 : x12<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == -5<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                   |[0x80000440]:KCRAS32 t4, t4, a2<br> [0x80000444]:sd t4, 48(sp)<br>      |
|   5|[0x80003250]<br>0x02000800E2000000|- rs1 : x15<br> - rs2 : x10<br> - rd : x10<br> - rs2 == rd != rs1<br> - rs2_w1_val == 536870912<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                     |[0x80000468]:KCRAS32 a0, a5, a0<br> [0x8000046c]:sd a0, 64(sp)<br>      |
|   6|[0x80003260]<br>0xFFFFDFEEFFFFFE7F|- rs1 : x1<br> - rs2 : x11<br> - rd : x8<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 128<br> - rs2_w0_val == -8193<br> - rs1_w1_val == -17<br> - rs1_w0_val == -257<br>                                                                                                                                                                    |[0x80000490]:KCRAS32 fp, ra, a1<br> [0x80000494]:sd fp, 80(sp)<br>      |
|   7|[0x80003270]<br>0xFFFFFFDEAA9AAAAA|- rs1 : x12<br> - rs2 : x19<br> - rd : x24<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -17<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                         |[0x800004bc]:KCRAS32 s8, a2, s3<br> [0x800004c0]:sd s8, 96(sp)<br>      |
|   8|[0x80003280]<br>0xDFFFFFFF80000000|- rs1 : x26<br> - rs2 : x16<br> - rd : x25<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -536870913<br> - rs1_w1_val == 0<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                  |[0x800004e8]:KCRAS32 s9, s10, a6<br> [0x800004ec]:sd s9, 112(sp)<br>    |
|   9|[0x80003290]<br>0xFFFFF7DE3FFC0000|- rs1 : x31<br> - rs2 : x22<br> - rd : x17<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -33<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                               |[0x80000510]:KCRAS32 a7, t6, s6<br> [0x80000514]:sd a7, 128(sp)<br>     |
|  10|[0x800032a0]<br>0xBFFBFFFEA0000001|- rs1 : x20<br> - rs2 : x13<br> - rd : x11<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                  |[0x8000053c]:KCRAS32 a1, s4, a3<br> [0x80000540]:sd a1, 144(sp)<br>     |
|  11|[0x800032b0]<br>0x0040000000000800|- rs1 : x17<br> - rs2 : x0<br> - rd : x4<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                              |[0x80000570]:KCRAS32 tp, a7, zero<br> [0x80000574]:sd tp, 160(sp)<br>   |
|  12|[0x800032c0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x23<br> - rd : x0<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                     |[0x800005a4]:KCRAS32 zero, a1, s7<br> [0x800005a8]:sd zero, 176(sp)<br> |
|  13|[0x800032d0]<br>0x0000080504080001|- rs1 : x28<br> - rs2 : x20<br> - rd : x30<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                   |[0x800005d4]:KCRAS32 t5, t3, s4<br> [0x800005d8]:sd t5, 192(sp)<br>     |
|  14|[0x800032e0]<br>0xFFFFFFF001FFFFF7|- rs1 : x8<br> - rs2 : x5<br> - rd : x9<br> - rs2_w1_val == -33554433<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                            |[0x800005f8]:KCRAS32 s1, fp, t0<br> [0x800005fc]:sd s1, 208(sp)<br>     |
|  15|[0x800032f0]<br>0x0080002000C00000|- rs1 : x22<br> - rs2 : x18<br> - rd : x20<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 32<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -4194305<br>                                                                                                                                                       |[0x80000628]:KCRAS32 s4, s6, s2<br> [0x8000062c]:sd s4, 224(sp)<br>     |
|  16|[0x80003300]<br>0x0000FFF8E0800000|- rs1 : x13<br> - rs2 : x29<br> - rd : x22<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 65536<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                       |[0x8000065c]:KCRAS32 s6, a3, t4<br> [0x80000660]:sd s6, 0(a1)<br>       |
|  17|[0x80003310]<br>0x000000367FFFFFFF|- rs1 : x10<br> - rs2 : x7<br> - rd : x12<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 64<br>                                                                                                                                                                                                                                                          |[0x80000684]:KCRAS32 a2, a0, t2<br> [0x80000688]:sd a2, 16(a1)<br>      |
|  18|[0x80003320]<br>0x00000003001FE000|- rs1 : x4<br> - rs2 : x17<br> - rd : x7<br> - rs2_w1_val == -2097153<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                        |[0x800006ac]:KCRAS32 t2, tp, a7<br> [0x800006b0]:sd t2, 32(a1)<br>      |
|  19|[0x80003330]<br>0x00000003000FFFFA|- rs1 : x5<br> - rs2 : x9<br> - rd : x1<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -5<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                      |[0x800006d0]:KCRAS32 ra, t0, s1<br> [0x800006d4]:sd ra, 48(a1)<br>      |
|  20|[0x80003340]<br>0xFFFFFF7E00080003|- rs1 : x23<br> - rs2 : x8<br> - rd : x26<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -65<br> - rs1_w1_val == -65<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                            |[0x800006f4]:KCRAS32 s10, s7, fp<br> [0x800006f8]:sd s10, 64(a1)<br>    |
|  21|[0x80003350]<br>0xFE00000510040001|- rs1 : x18<br> - rs2 : x14<br> - rd : x16<br> - rs2_w1_val == -262145<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                     |[0x8000071c]:KCRAS32 a6, s2, a4<br> [0x80000720]:sd a6, 80(a1)<br>      |
|  22|[0x80003360]<br>0x3BFFFFFF0001FF80|- rs1 : x24<br> - rs2 : x15<br> - rd : x6<br> - rs2_w1_val == -131073<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                          |[0x80000748]:KCRAS32 t1, s8, a5<br> [0x8000074c]:sd t1, 96(a1)<br>      |
|  23|[0x80003370]<br>0x0200000000010001|- rs1 : x0<br> - rs2 : x6<br> - rd : x18<br> - rs2_w1_val == -65537<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                                              |[0x8000076c]:KCRAS32 s2, zero, t1<br> [0x80000770]:sd s2, 112(a1)<br>   |
|  24|[0x80003380]<br>0x0000110010008001|- rs1 : x19<br> - rs2 : x25<br> - rd : x23<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                                 |[0x80000798]:KCRAS32 s7, s3, s9<br> [0x8000079c]:sd s7, 128(a1)<br>     |
|  25|[0x80003390]<br>0xFFFFFF06E0004000|- rs1 : x6<br> - rs2 : x24<br> - rd : x2<br> - rs2_w1_val == -16385<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                                                                           |[0x800007c4]:KCRAS32 sp, t1, s8<br> [0x800007c8]:sd sp, 144(a1)<br>     |
|  26|[0x800033a0]<br>0x000001FDFFFFA000|- rs1 : x30<br> - rs2 : x4<br> - rd : x31<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 512<br> - rs1_w1_val == -3<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                          |[0x800007f0]:KCRAS32 t6, t5, tp<br> [0x800007f4]:sd t6, 160(a1)<br>     |
|  27|[0x800033b0]<br>0x04000004FFFC1000|- rs1 : x25<br> - rs2 : x3<br> - rd : x5<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                  |[0x80000818]:KCRAS32 t0, s9, gp<br> [0x8000081c]:sd t0, 176(a1)<br>     |
|  28|[0x800033c0]<br>0xFEFFFDFEAAAAB2AB|- rs1 : x2<br> - rs2 : x30<br> - rd : x13<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -513<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                             |[0x8000084c]:KCRAS32 a3, sp, t5<br> [0x80000850]:sd a3, 192(a1)<br>     |
|  29|[0x800033d0]<br>0xFFFFFBFF00000407|- rs1 : x16<br> - rs2 : x2<br> - rd : x19<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                 |[0x80000874]:KCRAS32 s3, a6, sp<br> [0x80000878]:sd s3, 208(a1)<br>     |
|  30|[0x800033e0]<br>0x555555D500000180|- rs1 : x3<br> - rs2 : x26<br> - rd : x27<br> - rs2_w1_val == -513<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                              |[0x8000089c]:KCRAS32 s11, gp, s10<br> [0x800008a0]:sd s11, 224(a1)<br>  |
|  31|[0x800033f0]<br>0x0007FEFF00100101|- rs1 : x9<br> - rs2 : x28<br> - rd : x3<br> - rs2_w1_val == -257<br> - rs2_w0_val == 524288<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                               |[0x800008c8]:KCRAS32 gp, s1, t3<br> [0x800008cc]:sd gp, 0(ra)<br>       |
|  32|[0x80003400]<br>0x0000004200000084|- rs1 : x14<br> - rs2_w1_val == -129<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                             |[0x800008ec]:KCRAS32 t6, a4, s4<br> [0x800008f0]:sd t6, 16(ra)<br>      |
|  33|[0x80003410]<br>0x001FFBFF00001041|- rs2 : x31<br> - rs2_w1_val == -65<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                     |[0x80000910]:KCRAS32 s1, s4, t6<br> [0x80000914]:sd s1, 32(ra)<br>      |
|  34|[0x80003420]<br>0x0020400000000821|- rd : x14<br> - rs2_w1_val == -33<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                           |[0x8000093c]:KCRAS32 a4, a0, t1<br> [0x80000940]:sd a4, 48(ra)<br>      |
|  35|[0x80003430]<br>0x00000008FFF00010|- rs2_w1_val == -17<br> - rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                                             |[0x8000095c]:KCRAS32 t6, t5, t4<br> [0x80000960]:sd t6, 64(ra)<br>      |
|  36|[0x80003440]<br>0x000003DF00800009|- rs2_w1_val == -9<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                         |[0x80000980]:KCRAS32 t6, t5, t4<br> [0x80000984]:sd t6, 80(ra)<br>      |
|  37|[0x80003450]<br>0xFFFFFF6EFFFFFFC4|- rs2_w1_val == -5<br> - rs1_w1_val == -129<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                    |[0x800009a4]:KCRAS32 t6, t5, t4<br> [0x800009a8]:sd t6, 96(ra)<br>      |
|  38|[0x80003460]<br>0xFFF8001F00000043|- rs2_w1_val == -3<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 32<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                           |[0x800009cc]:KCRAS32 t6, t5, t4<br> [0x800009d0]:sd t6, 112(ra)<br>     |
|  39|[0x80003470]<br>0xFFC00005FFFFFC01|- rs2_w1_val == -2<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                                              |[0x800009f0]:KCRAS32 t6, t5, t4<br> [0x800009f4]:sd t6, 128(ra)<br>     |
|  40|[0x80003480]<br>0x008004007FFFFFFF|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 8388608<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                    |[0x80000a18]:KCRAS32 t6, t5, t4<br> [0x80000a1c]:sd t6, 144(ra)<br>     |
|  41|[0x80003490]<br>0x00000015BFFEFFFF|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 16<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                           |[0x80000a40]:KCRAS32 t6, t5, t4<br> [0x80000a44]:sd t6, 160(ra)<br>     |
|  42|[0x800034a0]<br>0x00200010EFFFFF7F|- rs2_w1_val == 268435456<br> - rs2_w0_val == 16<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                           |[0x80000a68]:KCRAS32 t6, t5, t4<br> [0x80000a6c]:sd t6, 176(ra)<br>     |
|  43|[0x800034b0]<br>0xC000000900000000|- rs2_w1_val == 134217728<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                |[0x80000a90]:KCRAS32 t6, t5, t4<br> [0x80000a94]:sd t6, 192(ra)<br>     |
|  44|[0x800034c0]<br>0xFFC00001F3FFFFFF|- rs2_w1_val == 67108864<br> - rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                  |[0x80000abc]:KCRAS32 t6, t5, t4<br> [0x80000ac0]:sd t6, 208(ra)<br>     |
|  45|[0x800034d0]<br>0x35555554F9FFFFFF|- rs2_w1_val == 33554432<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                 |[0x80000af8]:KCRAS32 t6, t5, t4<br> [0x80000afc]:sd t6, 224(ra)<br>     |
|  46|[0x800034e0]<br>0x000FFFEFFF000002|- rs2_w1_val == 16777216<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                   |[0x80000b20]:KCRAS32 t6, t5, t4<br> [0x80000b24]:sd t6, 240(ra)<br>     |
|  47|[0x800034f0]<br>0x007FFFFAFF800000|- rs2_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                |[0x80000b44]:KCRAS32 t6, t5, t4<br> [0x80000b48]:sd t6, 256(ra)<br>     |
|  48|[0x80003500]<br>0xFFFFFE7FFFBFFFDF|- rs2_w1_val == 4194304<br> - rs2_w0_val == 128<br> - rs1_w1_val == -513<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                                                                       |[0x80000b68]:KCRAS32 t6, t5, t4<br> [0x80000b6c]:sd t6, 272(ra)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFBFFBFFFFF|- rs2_w1_val == 2097152<br> - rs2_w0_val == -3<br> - rs1_w1_val == -2<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                     |[0x80000b94]:KCRAS32 t6, t5, t4<br> [0x80000b98]:sd t6, 288(ra)<br>     |
|  50|[0x80003520]<br>0x8000000000C00000|- rs2_w0_val == -2147483648<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                               |[0x80000bbc]:KCRAS32 t6, t5, t4<br> [0x80000bc0]:sd t6, 304(ra)<br>     |
|  51|[0x80003530]<br>0xFFF0000300200401|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                |[0x80000be4]:KCRAS32 t6, t5, t4<br> [0x80000be8]:sd t6, 320(ra)<br>     |
|  52|[0x80003540]<br>0xFFFFFFF900040081|- rs2_w0_val == -1<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                          |[0x80000c08]:KCRAS32 t6, t5, t4<br> [0x80000c0c]:sd t6, 336(ra)<br>     |
|  53|[0x80003550]<br>0x0001FFFF0001F000|- rs2_w1_val == 4096<br> - rs2_w0_val == 131072<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                             |[0x80000c2c]:KCRAS32 t6, t5, t4<br> [0x80000c30]:sd t6, 352(ra)<br>     |
|  54|[0x80003560]<br>0xF5FFFFFEE0010000|- rs2_w0_val == -134217729<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                   |[0x80000c60]:KCRAS32 t6, t5, t4<br> [0x80000c64]:sd t6, 368(ra)<br>     |
|  55|[0x80003570]<br>0xF7EFFFFE00008002|- rs1_w1_val == -134217729<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                   |[0x80000c90]:KCRAS32 t6, t5, t4<br> [0x80000c94]:sd t6, 384(ra)<br>     |
|  56|[0x80003580]<br>0xDFFFFEFEFFFC4000|- rs2_w1_val == 262144<br> - rs2_w0_val == -257<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                              |[0x80000cc0]:KCRAS32 t6, t5, t4<br> [0x80000cc4]:sd t6, 400(ra)<br>     |
|  57|[0x80003590]<br>0xFFBFFFEE00002081|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000cec]:KCRAS32 t6, t5, t4<br> [0x80000cf0]:sd t6, 416(ra)<br>     |
|  58|[0x800035a0]<br>0xFFFDFFF702000401|- rs1_w1_val == -131073<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                       |[0x80000d14]:KCRAS32 t6, t5, t4<br> [0x80000d18]:sd t6, 432(ra)<br>     |
|  59|[0x800035b0]<br>0x00060000000000FE|- rs2_w1_val == 2<br> - rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                           |[0x80000d38]:KCRAS32 t6, t5, t4<br> [0x80000d3c]:sd t6, 448(ra)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFC708000081|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000d5c]:KCRAS32 t6, t5, t4<br> [0x80000d60]:sd t6, 464(ra)<br>     |
|  61|[0x800035d0]<br>0xFBFFFFBEF8000020|- rs1_w1_val == -67108865<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                       |[0x80000d88]:KCRAS32 t6, t5, t4<br> [0x80000d8c]:sd t6, 480(ra)<br>     |
|  62|[0x800035e0]<br>0xFDFEFFFE00000811|- rs2_w0_val == -33554433<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                            |[0x80000db4]:KCRAS32 t6, t5, t4<br> [0x80000db8]:sd t6, 496(ra)<br>     |
|  63|[0x800035f0]<br>0xBFDFFFFE00000002|- rs2_w0_val == -2097153<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                         |[0x80000de0]:KCRAS32 t6, t5, t4<br> [0x80000de4]:sd t6, 512(ra)<br>     |
|  64|[0x80003600]<br>0x08000800FFFFFFFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                        |[0x80000e00]:KCRAS32 t6, t5, t4<br> [0x80000e04]:sd t6, 528(ra)<br>     |
|  65|[0x80003610]<br>0x0001FFF7FF800001|- rs1_w1_val == -9<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                                               |[0x80000e28]:KCRAS32 t6, t5, t4<br> [0x80000e2c]:sd t6, 544(ra)<br>     |
|  66|[0x80003620]<br>0x0FFFFFFFEFFFFFFF|- rs1_w1_val == 268435456<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                       |[0x80000e54]:KCRAS32 t6, t5, t4<br> [0x80000e58]:sd t6, 560(ra)<br>     |
|  67|[0x80003630]<br>0xFF3FFFFEFFF40000|- rs2_w1_val == 1048576<br> - rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                   |[0x80000e84]:KCRAS32 t6, t5, t4<br> [0x80000e88]:sd t6, 576(ra)<br>     |
|  68|[0x80003640]<br>0x04000000FFE7FFFF|- rs2_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000eac]:KCRAS32 t6, t5, t4<br> [0x80000eb0]:sd t6, 592(ra)<br>     |
|  69|[0x80003650]<br>0xFFFFDFF5BFFEFFFF|- rs2_w1_val == 65536<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                  |[0x80000edc]:KCRAS32 t6, t5, t4<br> [0x80000ee0]:sd t6, 608(ra)<br>     |
|  70|[0x80003660]<br>0x20000002FFFF7FBF|- rs2_w1_val == 32768<br> - rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                    |[0x80000f00]:KCRAS32 t6, t5, t4<br> [0x80000f04]:sd t6, 624(ra)<br>     |
|  71|[0x80003670]<br>0xFFFE0006EFFFBFFF|- rs2_w1_val == 16384<br> - rs2_w0_val == -131073<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                       |[0x80000f28]:KCRAS32 t6, t5, t4<br> [0x80000f2c]:sd t6, 640(ra)<br>     |
|  72|[0x80003680]<br>0x00C00000FFEFDFFF|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000f58]:KCRAS32 t6, t5, t4<br> [0x80000f5c]:sd t6, 656(ra)<br>     |
|  73|[0x80003690]<br>0xFFFFFFFB001FF800|- rs2_w1_val == 2048<br> - rs2_w0_val == -2<br>                                                                                                                                                                                                                                                                                                            |[0x80000f80]:KCRAS32 t6, t5, t4<br> [0x80000f84]:sd t6, 672(ra)<br>     |
|  74|[0x800036a0]<br>0x80000000FFFFFC05|- rs2_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000fa4]:KCRAS32 t6, t5, t4<br> [0x80000fa8]:sd t6, 688(ra)<br>     |
|  75|[0x800036b0]<br>0x2000008000003E00|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000fc8]:KCRAS32 t6, t5, t4<br> [0x80000fcc]:sd t6, 704(ra)<br>     |
|  76|[0x800036c0]<br>0xFFFFFF7EF7FFFEFF|- rs2_w1_val == 256<br> - rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                                                           |[0x80000fe8]:KCRAS32 t6, t5, t4<br> [0x80000fec]:sd t6, 720(ra)<br>     |
|  77|[0x800036d0]<br>0xFBFFFFFFFFFFFFB9|- rs2_w1_val == 64<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                        |[0x80001014]:KCRAS32 t6, t5, t4<br> [0x80001018]:sd t6, 736(ra)<br>     |
|  78|[0x800036e0]<br>0x02002000FFEFFFEF|- rs2_w1_val == 16<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                               |[0x80001044]:KCRAS32 t6, t5, t4<br> [0x80001048]:sd t6, 752(ra)<br>     |
|  79|[0x800036f0]<br>0x3FFF7FFEFBFFFFF7|- rs2_w1_val == 8<br> - rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                           |[0x80001074]:KCRAS32 t6, t5, t4<br> [0x80001078]:sd t6, 768(ra)<br>     |
|  80|[0x80003700]<br>0xFEEFFFFE03FFFFFC|- rs2_w1_val == 4<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                         |[0x8000109c]:KCRAS32 t6, t5, t4<br> [0x800010a0]:sd t6, 784(ra)<br>     |
|  81|[0x80003710]<br>0x5555D55500000009|- rs2_w0_val == 32768<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                   |[0x800010c4]:KCRAS32 t6, t5, t4<br> [0x800010c8]:sd t6, 800(ra)<br>     |
|  82|[0x80003720]<br>0x000140000000000A|- rs2_w0_val == 16384<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                        |[0x800010e8]:KCRAS32 t6, t5, t4<br> [0x800010ec]:sd t6, 816(ra)<br>     |
|  83|[0x80003730]<br>0x000003DFF7FFF7FF|- rs2_w0_val == 1024<br> - rs1_w1_val == -33<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                 |[0x80001110]:KCRAS32 t6, t5, t4<br> [0x80001114]:sd t6, 832(ra)<br>     |
|  84|[0x80003740]<br>0x00001008A8AAAAAA|- rs2_w0_val == 8<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                             |[0x80001140]:KCRAS32 t6, t5, t4<br> [0x80001144]:sd t6, 848(ra)<br>     |
|  85|[0x80003750]<br>0x008000047FFFFEFF|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001168]:KCRAS32 t6, t5, t4<br> [0x8000116c]:sd t6, 864(ra)<br>     |
|  86|[0x80003760]<br>0xFE000001FA000000|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001194]:KCRAS32 t6, t5, t4<br> [0x80001198]:sd t6, 880(ra)<br>     |
|  87|[0x80003770]<br>0xAAAAAAAB03FFF000|- rs2_w0_val == 1<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                            |[0x800011c8]:KCRAS32 t6, t5, t4<br> [0x800011cc]:sd t6, 896(ra)<br>     |
|  88|[0x80003790]<br>0x7DFFFFFEC0000001|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                             |[0x80001218]:KCRAS32 t6, t5, t4<br> [0x8000121c]:sd t6, 928(ra)<br>     |
|  89|[0x800037a0]<br>0xEDFFFFFEDFFFFFF8|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                                                                                             |[0x80001244]:KCRAS32 t6, t5, t4<br> [0x80001248]:sd t6, 944(ra)<br>     |
|  90|[0x800037b0]<br>0xFFDFFFFDFFFFFFFF|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                               |[0x8000126c]:KCRAS32 t6, t5, t4<br> [0x80001270]:sd t6, 960(ra)<br>     |
|  91|[0x800037c0]<br>0x80000000FFFFF806|- rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                                                                               |[0x80001294]:KCRAS32 t6, t5, t4<br> [0x80001298]:sd t6, 976(ra)<br>     |
|  92|[0x800037d0]<br>0x7FF7FFFE00003FFD|- rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                                                                                                |[0x800012bc]:KCRAS32 t6, t5, t4<br> [0x800012c0]:sd t6, 992(ra)<br>     |
|  93|[0x800037e0]<br>0xFFFF7FF8007FFFFC|- rs1_w1_val == -32769<br>                                                                                                                                                                                                                                                                                                                                 |[0x800012e0]:KCRAS32 t6, t5, t4<br> [0x800012e4]:sd t6, 1008(ra)<br>    |
|  94|[0x800037f0]<br>0xFFFFBFF8FFFFEFF6|- rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000130c]:KCRAS32 t6, t5, t4<br> [0x80001310]:sd t6, 1024(ra)<br>    |
|  95|[0x80003800]<br>0xFFFFE00755555550|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001334]:KCRAS32 t6, t5, t4<br> [0x80001338]:sd t6, 1040(ra)<br>    |
|  96|[0x80003810]<br>0xFFFFEFF9C0000100|- rs1_w1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001360]:KCRAS32 t6, t5, t4<br> [0x80001364]:sd t6, 1056(ra)<br>    |
|  97|[0x80003820]<br>0x80000000FBFFFFF7|- rs2_w0_val == -16777217<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                                                              |[0x80001390]:KCRAS32 t6, t5, t4<br> [0x80001394]:sd t6, 1072(ra)<br>    |
|  98|[0x80003830]<br>0x20400000AACAAAAB|- rs2_w0_val == 4194304<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                  |[0x800013c8]:KCRAS32 t6, t5, t4<br> [0x800013cc]:sd t6, 1088(ra)<br>    |
|  99|[0x80003840]<br>0x0800000455554D55|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                                                              |[0x800013fc]:KCRAS32 t6, t5, t4<br> [0x80001400]:sd t6, 1104(ra)<br>    |
| 100|[0x80003850]<br>0x0140000000001FF9|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                               |[0x80001424]:KCRAS32 t6, t5, t4<br> [0x80001428]:sd t6, 1120(ra)<br>    |
| 101|[0x80003860]<br>0x0007FFF900040005|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001448]:KCRAS32 t6, t5, t4<br> [0x8000144c]:sd t6, 1136(ra)<br>    |
| 102|[0x80003870]<br>0x0003FEFF3FFFFFF6|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001474]:KCRAS32 t6, t5, t4<br> [0x80001478]:sd t6, 1152(ra)<br>    |
| 103|[0x80003880]<br>0xFE007FFFFFFF7FFE|- rs1_w1_val == 32768<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                                           |[0x800014a0]:KCRAS32 t6, t5, t4<br> [0x800014a4]:sd t6, 1168(ra)<br>    |
| 104|[0x80003890]<br>0x08002000FF7FFFFF|- rs1_w1_val == 8192<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                      |[0x800014c0]:KCRAS32 t6, t5, t4<br> [0x800014c4]:sd t6, 1184(ra)<br>    |
| 105|[0x800038a0]<br>0x000001EF0007FFF8|- rs1_w1_val == 512<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                             |[0x800014e4]:KCRAS32 t6, t5, t4<br> [0x800014e8]:sd t6, 1200(ra)<br>    |
| 106|[0x800038b0]<br>0xFDFFFFF900000000|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000150c]:KCRAS32 t6, t5, t4<br> [0x80001510]:sd t6, 1216(ra)<br>    |
| 107|[0x800038c0]<br>0x0000820000000081|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001530]:KCRAS32 t6, t5, t4<br> [0x80001534]:sd t6, 1232(ra)<br>    |
| 108|[0x800038d0]<br>0x0000084000200801|- rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001560]:KCRAS32 t6, t5, t4<br> [0x80001564]:sd t6, 1248(ra)<br>    |
| 109|[0x800038e0]<br>0xAAAAAAAB00800041|- rs2_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                            |[0x80001584]:KCRAS32 t6, t5, t4<br> [0x80001588]:sd t6, 1264(ra)<br>    |
| 110|[0x800038f0]<br>0x2FFFFFFFFF800002|- rs2_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                                                             |[0x800015ac]:KCRAS32 t6, t5, t4<br> [0x800015b0]:sd t6, 1280(ra)<br>    |
| 111|[0x80003900]<br>0xFB7FFFFE55555515|- rs2_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                               |[0x800015e4]:KCRAS32 t6, t5, t4<br> [0x800015e8]:sd t6, 1296(ra)<br>    |
| 112|[0x80003910]<br>0xFFFCFFFFAA9AAAAA|- rs2_w0_val == -262145<br>                                                                                                                                                                                                                                                                                                                                |[0x80001620]:KCRAS32 t6, t5, t4<br> [0x80001624]:sd t6, 1312(ra)<br>    |
| 113|[0x80003920]<br>0x0C000000EDFFFFFF|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                              |[0x80001650]:KCRAS32 t6, t5, t4<br> [0x80001654]:sd t6, 1328(ra)<br>    |
| 114|[0x80003930]<br>0xBFFEFFFEFFFD7FFF|- rs2_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001688]:KCRAS32 t6, t5, t4<br> [0x8000168c]:sd t6, 1344(ra)<br>    |
| 115|[0x80003940]<br>0xF8000003FEFFFFFA|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                                              |[0x800016ac]:KCRAS32 t6, t5, t4<br> [0x800016b0]:sd t6, 1360(ra)<br>    |
| 116|[0x80003950]<br>0xFFFFEFFB20000201|- rs2_w0_val == -4097<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                    |[0x800016d0]:KCRAS32 t6, t5, t4<br> [0x800016d4]:sd t6, 1376(ra)<br>    |
| 117|[0x80003960]<br>0x00100007FF77FFFF|- rs2_w0_val == 1048576<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                    |[0x800016fc]:KCRAS32 t6, t5, t4<br> [0x80001700]:sd t6, 1392(ra)<br>    |
| 118|[0x80003970]<br>0xEFFFFBFEFFFDFFDF|- rs2_w0_val == -1025<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                      |[0x80001728]:KCRAS32 t6, t5, t4<br> [0x8000172c]:sd t6, 1408(ra)<br>    |
| 119|[0x80003980]<br>0xBFEFFFFEFFFDBFFF|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001758]:KCRAS32 t6, t5, t4<br> [0x8000175c]:sd t6, 1424(ra)<br>    |
| 120|[0x80003990]<br>0xFFFFFDF6E0000001|- rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                                     |[0x8000177c]:KCRAS32 t6, t5, t4<br> [0x80001780]:sd t6, 1440(ra)<br>    |
| 121|[0x800039a0]<br>0xEFFFFFFFFFFFF9FF|- rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000179c]:KCRAS32 t6, t5, t4<br> [0x800017a0]:sd t6, 1456(ra)<br>    |
| 122|[0x800039b0]<br>0x3FFFFFFA08020001|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                             |[0x800017bc]:KCRAS32 t6, t5, t4<br> [0x800017c0]:sd t6, 1472(ra)<br>    |
| 123|[0x800039c0]<br>0x10002000FFFF8004|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                              |[0x800017e0]:KCRAS32 t6, t5, t4<br> [0x800017e4]:sd t6, 1488(ra)<br>    |
| 124|[0x800039d0]<br>0x00000041FFFFFFF7|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001804]:KCRAS32 t6, t5, t4<br> [0x80001808]:sd t6, 1504(ra)<br>    |
| 125|[0x800039e0]<br>0x0100004000000009|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                                               |[0x80001828]:KCRAS32 t6, t5, t4<br> [0x8000182c]:sd t6, 1520(ra)<br>    |
| 126|[0x800039f0]<br>0xFFFFE00840008001|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                             |[0x80001850]:KCRAS32 t6, t5, t4<br> [0x80001854]:sd t6, 1536(ra)<br>    |
| 127|[0x80003a00]<br>0xBDFFFFFFFFFFFFEE|- rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001870]:KCRAS32 t6, t5, t4<br> [0x80001874]:sd t6, 1552(ra)<br>    |
| 128|[0x80003a20]<br>0x0050000010000801|- rs2_w1_val == -268435457<br>                                                                                                                                                                                                                                                                                                                             |[0x800018cc]:KCRAS32 t6, t5, t4<br> [0x800018d0]:sd t6, 1584(ra)<br>    |
