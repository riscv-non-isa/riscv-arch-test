
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001950')]      |
| SIG_REGION                | [('0x80003210', '0x80003a60', '266 dwords')]      |
| COV_LABELS                | kstsa32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kstsa32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 266      |
| STAT1                     | 128      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 133     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ffc]:KSTSA32 t6, t5, t4
      [0x80001000]:sd t6, 960(ra)
 -- Signature Address: 0x800036d0 Data: 0x00020000FFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 0
      - rs1_w1_val == 131072
      - rs1_w0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000186c]:KSTSA32 t6, t5, t4
      [0x80001870]:sd t6, 1776(ra)
 -- Signature Address: 0x80003a00 Data: 0xFFF000093DFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w0_val == -33554433
      - rs1_w1_val == -1048577
      - rs1_w0_val == 1073741824




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018ec]:KSTSA32 t6, t5, t4
      [0x800018f0]:sd t6, 1824(ra)
 -- Signature Address: 0x80003a30 Data: 0x00000000000000FC
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == -16777217
      - rs1_w1_val == -16777217
      - rs1_w0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001918]:KSTSA32 t6, t5, t4
      [0x8000191c]:sd t6, 1840(ra)
 -- Signature Address: 0x80003a40 Data: 0x3FFFFFC001EFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == -1073741825
      - rs2_w0_val == -1048577
      - rs1_w1_val == -65
      - rs1_w0_val == 33554432




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001940]:KSTSA32 t6, t5, t4
      [0x80001944]:sd t6, 1856(ra)
 -- Signature Address: 0x80003a50 Data: 0x01FFFFFC00800004
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -33554433
      - rs2_w0_val == 4
      - rs1_w1_val == -5
      - rs1_w0_val == 8388608






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstsa32', 'rs1 : x11', 'rs2 : x11', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -268435457', 'rs2_w0_val == 1073741824', 'rs1_w1_val == -268435457', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800003bc]:KSTSA32 a7, a1, a1
	-[0x800003c0]:sd a7, 0(gp)
Current Store : [0x800003c4] : sd a1, 8(gp) -- Store: [0x80003218]:0xEFFFFFFF40000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -16777217', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800003e4]:KSTSA32 a4, a4, a4
	-[0x800003e8]:sd a4, 16(gp)
Current Store : [0x800003ec] : sd a4, 24(gp) -- Store: [0x80003228]:0x00000000FFFFFFF8




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 262144', 'rs2_w0_val == -16385', 'rs1_w1_val == -3', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000414]:KSTSA32 s2, a7, a5
	-[0x80000418]:sd s2, 32(gp)
Current Store : [0x8000041c] : sd a7, 40(gp) -- Store: [0x80003238]:0xFFFFFFFD00020000




Last Coverpoint : ['rs1 : x30', 'rs2 : x2', 'rd : x30', 'rs1 == rd != rs2', 'rs1_w0_val == -2147483648', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == -8388609', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80000438]:KSTSA32 t5, t5, sp
	-[0x8000043c]:sd t5, 48(gp)
Current Store : [0x80000440] : sd t5, 56(gp) -- Store: [0x80003248]:0xFFFFFFFF80000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_w1_val == -5', 'rs2_w0_val == -4194305', 'rs1_w1_val == -513', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000464]:KSTSA32 ra, s10, ra
	-[0x80000468]:sd ra, 64(gp)
Current Store : [0x8000046c] : sd s10, 72(gp) -- Store: [0x80003258]:0xFFFFFDFFFFBFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x28', 'rd : x31', 'rs2_w1_val == 4194304', 'rs2_w0_val == 1048576', 'rs1_w1_val == 0', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000484]:KSTSA32 t6, s3, t3
	-[0x80000488]:sd t6, 80(gp)
Current Store : [0x8000048c] : sd s3, 88(gp) -- Store: [0x80003268]:0x0000000000400000




Last Coverpoint : ['rs1 : x25', 'rs2 : x16', 'rd : x12', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 16384', 'rs1_w1_val == -1048577', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800004b0]:KSTSA32 a2, s9, a6
	-[0x800004b4]:sd a2, 96(gp)
Current Store : [0x800004b8] : sd s9, 104(gp) -- Store: [0x80003278]:0xFFEFFFFFFFFFFFFD




Last Coverpoint : ['rs1 : x29', 'rs2 : x23', 'rd : x11', 'rs2_w1_val == 1431655765', 'rs1_w1_val == -2097153', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800004e4]:KSTSA32 a1, t4, s7
	-[0x800004e8]:sd a1, 112(gp)
Current Store : [0x800004ec] : sd t4, 120(gp) -- Store: [0x80003288]:0xFFDFFFFF00000080




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x24', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -524289', 'rs1_w1_val == -536870913', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000514]:KSTSA32 s8, t3, t1
	-[0x80000518]:sd s8, 128(gp)
Current Store : [0x8000051c] : sd t3, 136(gp) -- Store: [0x80003298]:0xDFFFFFFF00000002




Last Coverpoint : ['rs1 : x21', 'rs2 : x18', 'rd : x0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -1048577', 'rs1_w1_val == -65', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000540]:KSTSA32 zero, s5, s2
	-[0x80000544]:sd zero, 144(gp)
Current Store : [0x80000548] : sd s5, 152(gp) -- Store: [0x800032a8]:0xFFFFFFBF02000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x19', 'rs2_w1_val == -536870913', 'rs2_w0_val == 32768', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x8000056c]:KSTSA32 s3, t2, s9
	-[0x80000570]:sd s3, 160(gp)
Current Store : [0x80000574] : sd t2, 168(gp) -- Store: [0x800032b8]:0xDFFFFFFFFFFFFFBF




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x4', 'rs2_w1_val == -134217729', 'rs1_w1_val == -5', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000594]:KSTSA32 tp, a6, t5
	-[0x80000598]:sd tp, 176(gp)
Current Store : [0x8000059c] : sd a6, 184(gp) -- Store: [0x800032c8]:0xFFFFFFFB08000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x22', 'rd : x16', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -67108865', 'rs2_w0_val == -268435457', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800005c4]:KSTSA32 a6, ra, s6
	-[0x800005c8]:sd a6, 192(gp)
Current Store : [0x800005cc] : sd ra, 200(gp) -- Store: [0x800032d8]:0x3FFFFFFFFFDFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x28', 'rs2_w1_val == -33554433', 'rs2_w0_val == 4', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800005ec]:KSTSA32 t3, zero, t0
	-[0x800005f0]:sd t3, 208(gp)
Current Store : [0x800005f4] : sd zero, 216(gp) -- Store: [0x800032e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x10', 'rs2_w1_val == -8388609', 'rs2_w0_val == 8', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000614]:KSTSA32 a0, a5, a7
	-[0x80000618]:sd a0, 224(gp)
Current Store : [0x8000061c] : sd a5, 232(gp) -- Store: [0x800032f8]:0x0000002000020000




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x6', 'rs2_w1_val == -4194305', 'rs2_w0_val == -1025', 'rs1_w1_val == 8388608', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000063c]:KSTSA32 t1, s1, s4
	-[0x80000640]:sd t1, 240(gp)
Current Store : [0x80000644] : sd s1, 248(gp) -- Store: [0x80003308]:0x00800000FFFFFBFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x15', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -1', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x8000066c]:KSTSA32 a5, s4, zero
	-[0x80000670]:sd a5, 0(ra)
Current Store : [0x80000674] : sd s4, 8(ra) -- Store: [0x80003318]:0xFFFFFFFFFFFFF7FF




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rd : x2', 'rs2_w1_val == -1048577', 'rs2_w0_val == 8388608', 'rs1_w1_val == -67108865', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000698]:KSTSA32 sp, gp, s8
	-[0x8000069c]:sd sp, 16(ra)
Current Store : [0x800006a0] : sd gp, 24(ra) -- Store: [0x80003328]:0xFBFFFFFFFFFF7FFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x27', 'rd : x29', 'rs2_w1_val == -524289', 'rs2_w0_val == 256', 'rs1_w1_val == 268435456', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006c0]:KSTSA32 t4, tp, s11
	-[0x800006c4]:sd t4, 32(ra)
Current Store : [0x800006c8] : sd tp, 40(ra) -- Store: [0x80003338]:0x1000000000000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rd : x7', 'rs2_w1_val == -262145', 'rs2_w0_val == -5', 'rs1_w1_val == 67108864', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800006e8]:KSTSA32 t2, a3, t4
	-[0x800006ec]:sd t2, 48(ra)
Current Store : [0x800006f0] : sd a3, 56(ra) -- Store: [0x80003348]:0x0400000000100000




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x25', 'rs2_w1_val == -131073', 'rs2_w0_val == 536870912', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000710]:KSTSA32 s9, fp, s3
	-[0x80000714]:sd s9, 64(ra)
Current Store : [0x80000718] : sd fp, 72(ra) -- Store: [0x80003358]:0x7FFFFFFF10000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x26', 'rd : x20', 'rs2_w1_val == -65537', 'rs2_w0_val == -33554433', 'rs1_w1_val == 1048576', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000738]:KSTSA32 s4, s2, s10
	-[0x8000073c]:sd s4, 80(ra)
Current Store : [0x80000740] : sd s2, 88(ra) -- Store: [0x80003368]:0x0010000000000040




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rd : x23', 'rs2_w1_val == -32769', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000760]:KSTSA32 s7, s8, s1
	-[0x80000764]:sd s7, 96(ra)
Current Store : [0x80000768] : sd s8, 104(ra) -- Store: [0x80003378]:0xFFFFFFFCFFFFF7FF




Last Coverpoint : ['rs1 : x12', 'rs2 : x3', 'rd : x21', 'rs2_w1_val == -16385', 'rs2_w0_val == -536870913', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x8000078c]:KSTSA32 s5, a2, gp
	-[0x80000790]:sd s5, 112(ra)
Current Store : [0x80000794] : sd a2, 120(ra) -- Store: [0x80003388]:0x01000000FFFFFFF6




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x13', 'rs2_w1_val == -8193', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800007b8]:KSTSA32 a3, a0, t2
	-[0x800007bc]:sd a3, 128(ra)
Current Store : [0x800007c0] : sd a0, 136(ra) -- Store: [0x80003398]:0x000008003FFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x13', 'rd : x26', 'rs2_w1_val == -4097', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800007e0]:KSTSA32 s10, s11, a3
	-[0x800007e4]:sd s10, 144(ra)
Current Store : [0x800007e8] : sd s11, 152(ra) -- Store: [0x800033a8]:0xFFFFFBFF00000080




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x3', 'rs2_w1_val == -2049', 'rs2_w0_val == -513', 'rs1_w1_val == -8388609', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000080c]:KSTSA32 gp, s7, tp
	-[0x80000810]:sd gp, 160(ra)
Current Store : [0x80000814] : sd s7, 168(ra) -- Store: [0x800033b8]:0xFF7FFFFF00004000




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x22', 'rs2_w1_val == -1025', 'rs1_w1_val == 131072', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000834]:KSTSA32 s6, t0, t6
	-[0x80000838]:sd s6, 176(ra)
Current Store : [0x8000083c] : sd t0, 184(ra) -- Store: [0x800033c8]:0x0002000000000010




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x27', 'rs2_w1_val == -513', 'rs2_w0_val == -9', 'rs1_w1_val == 33554432', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000858]:KSTSA32 s11, s6, a0
	-[0x8000085c]:sd s11, 192(ra)
Current Store : [0x80000860] : sd s6, 200(ra) -- Store: [0x800033d8]:0x0200000000000200




Last Coverpoint : ['rs1 : x6', 'rs2 : x8', 'rd : x9', 'rs2_w1_val == -257', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000884]:KSTSA32 s1, t1, fp
	-[0x80000888]:sd s1, 208(ra)
Current Store : [0x8000088c] : sd t1, 216(ra) -- Store: [0x800033e8]:0x00000002FFDFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x21', 'rd : x5', 'rs2_w1_val == -129', 'rs2_w0_val == -2', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800008a8]:KSTSA32 t0, t6, s5
	-[0x800008ac]:sd t0, 224(ra)
Current Store : [0x800008b0] : sd t6, 232(ra) -- Store: [0x800033f8]:0x0000080000800000




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x8', 'rs2_w1_val == -65', 'rs2_w0_val == 134217728', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008cc]:KSTSA32 fp, sp, a2
	-[0x800008d0]:sd fp, 240(ra)
Current Store : [0x800008d4] : sd sp, 248(ra) -- Store: [0x80003408]:0x00000009FFFFFFFB




Last Coverpoint : ['rs2_w1_val == -33', 'rs2_w0_val == 131072', 'rs1_w1_val == 524288', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800008f0]:KSTSA32 t6, t5, t4
	-[0x800008f4]:sd t6, 256(ra)
Current Store : [0x800008f8] : sd t5, 264(ra) -- Store: [0x80003418]:0x0008000001000000




Last Coverpoint : ['rs2_w1_val == -17']
Last Code Sequence : 
	-[0x80000910]:KSTSA32 t6, t5, t4
	-[0x80000914]:sd t6, 272(ra)
Current Store : [0x80000918] : sd t5, 280(ra) -- Store: [0x80003428]:0x0000080000000000




Last Coverpoint : ['rs2_w1_val == -9']
Last Code Sequence : 
	-[0x80000938]:KSTSA32 t6, t5, t4
	-[0x8000093c]:sd t6, 288(ra)
Current Store : [0x80000940] : sd t5, 296(ra) -- Store: [0x80003438]:0xEFFFFFFF00000010




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000960]:KSTSA32 t6, t5, t4
	-[0x80000964]:sd t6, 304(ra)
Current Store : [0x80000968] : sd t5, 312(ra) -- Store: [0x80003448]:0x0400000000004000




Last Coverpoint : ['rs2_w1_val == -2']
Last Code Sequence : 
	-[0x80000984]:KSTSA32 t6, t5, t4
	-[0x80000988]:sd t6, 320(ra)
Current Store : [0x8000098c] : sd t5, 328(ra) -- Store: [0x80003458]:0xFFEFFFFF00000002




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800009b4]:KSTSA32 t6, t5, t4
	-[0x800009b8]:sd t6, 336(ra)
Current Store : [0x800009bc] : sd t5, 344(ra) -- Store: [0x80003468]:0xFFF7FFFF00004000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800009e4]:KSTSA32 t6, t5, t4
	-[0x800009e8]:sd t6, 352(ra)
Current Store : [0x800009ec] : sd t5, 360(ra) -- Store: [0x80003478]:0xFFBFFFFF00000005




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 8192', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000a14]:KSTSA32 t6, t5, t4
	-[0x80000a18]:sd t6, 368(ra)
Current Store : [0x80000a1c] : sd t5, 376(ra) -- Store: [0x80003488]:0x7FFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a34]:KSTSA32 t6, t5, t4
	-[0x80000a38]:sd t6, 384(ra)
Current Store : [0x80000a3c] : sd t5, 392(ra) -- Store: [0x80003498]:0xFFFFFFBFC0000000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -131073', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000a70]:KSTSA32 t6, t5, t4
	-[0x80000a74]:sd t6, 400(ra)
Current Store : [0x80000a78] : sd t5, 408(ra) -- Store: [0x800034a8]:0xEFFFFFFF00000800




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000aac]:KSTSA32 t6, t5, t4
	-[0x80000ab0]:sd t6, 416(ra)
Current Store : [0x80000ab4] : sd t5, 424(ra) -- Store: [0x800034b8]:0x40000000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -65537', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000ae0]:KSTSA32 t6, t5, t4
	-[0x80000ae4]:sd t6, 432(ra)
Current Store : [0x80000ae8] : sd t5, 440(ra) -- Store: [0x800034c8]:0x40000000FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 64', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000b04]:KSTSA32 t6, t5, t4
	-[0x80000b08]:sd t6, 448(ra)
Current Store : [0x80000b0c] : sd t5, 456(ra) -- Store: [0x800034d8]:0x0000004000000020




Last Coverpoint : ['rs2_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000b2c]:KSTSA32 t6, t5, t4
	-[0x80000b30]:sd t6, 464(ra)
Current Store : [0x80000b34] : sd t5, 472(ra) -- Store: [0x800034e8]:0x0400000000000020




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000b60]:KSTSA32 t6, t5, t4
	-[0x80000b64]:sd t6, 480(ra)
Current Store : [0x80000b68] : sd t5, 488(ra) -- Store: [0x800034f8]:0x00000009FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b8c]:KSTSA32 t6, t5, t4
	-[0x80000b90]:sd t6, 496(ra)
Current Store : [0x80000b94] : sd t5, 504(ra) -- Store: [0x80003508]:0xFFFFFFFA04000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000bbc]:KSTSA32 t6, t5, t4
	-[0x80000bc0]:sd t6, 512(ra)
Current Store : [0x80000bc4] : sd t5, 520(ra) -- Store: [0x80003518]:0x0000040000000010




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000bdc]:KSTSA32 t6, t5, t4
	-[0x80000be0]:sd t6, 528(ra)
Current Store : [0x80000be4] : sd t5, 536(ra) -- Store: [0x80003528]:0xFFFFFFF904000000




Last Coverpoint : ['rs1_w1_val == 1431655765', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c08]:KSTSA32 t6, t5, t4
	-[0x80000c0c]:sd t6, 544(ra)
Current Store : [0x80000c10] : sd t5, 552(ra) -- Store: [0x80003538]:0x5555555500200000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c30]:KSTSA32 t6, t5, t4
	-[0x80000c34]:sd t6, 560(ra)
Current Store : [0x80000c38] : sd t5, 568(ra) -- Store: [0x80003548]:0x0080000000080000




Last Coverpoint : ['rs1_w1_val == -16385', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c58]:KSTSA32 t6, t5, t4
	-[0x80000c5c]:sd t6, 576(ra)
Current Store : [0x80000c60] : sd t5, 584(ra) -- Store: [0x80003558]:0xFFFFBFFF00040000




Last Coverpoint : ['rs1_w1_val == -2049', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c7c]:KSTSA32 t6, t5, t4
	-[0x80000c80]:sd t6, 592(ra)
Current Store : [0x80000c84] : sd t5, 600(ra) -- Store: [0x80003568]:0xFFFFF7FF00010000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ca8]:KSTSA32 t6, t5, t4
	-[0x80000cac]:sd t6, 608(ra)
Current Store : [0x80000cb0] : sd t5, 616(ra) -- Store: [0x80003578]:0x0100000000008000




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cc8]:KSTSA32 t6, t5, t4
	-[0x80000ccc]:sd t6, 624(ra)
Current Store : [0x80000cd0] : sd t5, 632(ra) -- Store: [0x80003588]:0xFFFFFFFB00002000




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == -2147483648', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cf0]:KSTSA32 t6, t5, t4
	-[0x80000cf4]:sd t6, 640(ra)
Current Store : [0x80000cf8] : sd t5, 648(ra) -- Store: [0x80003598]:0xFFFFBFFF00001000




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d14]:KSTSA32 t6, t5, t4
	-[0x80000d18]:sd t6, 656(ra)
Current Store : [0x80000d1c] : sd t5, 664(ra) -- Store: [0x800035a8]:0x0080000000000400




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d44]:KSTSA32 t6, t5, t4
	-[0x80000d48]:sd t6, 672(ra)
Current Store : [0x80000d4c] : sd t5, 680(ra) -- Store: [0x800035b8]:0xFF7FFFFF00000008




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d68]:KSTSA32 t6, t5, t4
	-[0x80000d6c]:sd t6, 688(ra)
Current Store : [0x80000d70] : sd t5, 696(ra) -- Store: [0x800035c8]:0x0000080000000004




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == 16', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000d90]:KSTSA32 t6, t5, t4
	-[0x80000d94]:sd t6, 704(ra)
Current Store : [0x80000d98] : sd t5, 712(ra) -- Store: [0x800035d8]:0x00000010FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80000db8]:KSTSA32 t6, t5, t4
	-[0x80000dbc]:sd t6, 720(ra)
Current Store : [0x80000dc0] : sd t5, 728(ra) -- Store: [0x800035e8]:0xFFFBFFFF00000007




Last Coverpoint : ['rs2_w1_val == 32768']
Last Code Sequence : 
	-[0x80000dd8]:KSTSA32 t6, t5, t4
	-[0x80000ddc]:sd t6, 736(ra)
Current Store : [0x80000de0] : sd t5, 744(ra) -- Store: [0x800035f8]:0x0000000080000000




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000e08]:KSTSA32 t6, t5, t4
	-[0x80000e0c]:sd t6, 752(ra)
Current Store : [0x80000e10] : sd t5, 760(ra) -- Store: [0x80003608]:0xFFEFFFFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000e30]:KSTSA32 t6, t5, t4
	-[0x80000e34]:sd t6, 768(ra)
Current Store : [0x80000e38] : sd t5, 776(ra) -- Store: [0x80003618]:0x00000100FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000e58]:KSTSA32 t6, t5, t4
	-[0x80000e5c]:sd t6, 784(ra)
Current Store : [0x80000e60] : sd t5, 792(ra) -- Store: [0x80003628]:0x0000000300000009




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000e84]:KSTSA32 t6, t5, t4
	-[0x80000e88]:sd t6, 800(ra)
Current Store : [0x80000e8c] : sd t5, 808(ra) -- Store: [0x80003638]:0xFFBFFFFFFFFF7FFF




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 268435456', 'rs1_w1_val == -257', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000eac]:KSTSA32 t6, t5, t4
	-[0x80000eb0]:sd t6, 816(ra)
Current Store : [0x80000eb4] : sd t5, 824(ra) -- Store: [0x80003648]:0xFFFFFEFF55555555




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000ed0]:KSTSA32 t6, t5, t4
	-[0x80000ed4]:sd t6, 832(ra)
Current Store : [0x80000ed8] : sd t5, 840(ra) -- Store: [0x80003658]:0x0000000800010000




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 33554432', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000ef4]:KSTSA32 t6, t5, t4
	-[0x80000ef8]:sd t6, 848(ra)
Current Store : [0x80000efc] : sd t5, 856(ra) -- Store: [0x80003668]:0x0000008000000005




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80000f1c]:KSTSA32 t6, t5, t4
	-[0x80000f20]:sd t6, 864(ra)
Current Store : [0x80000f24] : sd t5, 872(ra) -- Store: [0x80003678]:0xFFFFFFFF00000003




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 2', 'rs1_w1_val == -32769', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000f40]:KSTSA32 t6, t5, t4
	-[0x80000f44]:sd t6, 880(ra)
Current Store : [0x80000f48] : sd t5, 888(ra) -- Store: [0x80003688]:0xFFFF7FFFFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000f64]:KSTSA32 t6, t5, t4
	-[0x80000f68]:sd t6, 896(ra)
Current Store : [0x80000f6c] : sd t5, 904(ra) -- Store: [0x80003698]:0x0000001000000003




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000f84]:KSTSA32 t6, t5, t4
	-[0x80000f88]:sd t6, 912(ra)
Current Store : [0x80000f8c] : sd t5, 920(ra) -- Store: [0x800036a8]:0x00000080FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == 4194304', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000fb4]:KSTSA32 t6, t5, t4
	-[0x80000fb8]:sd t6, 928(ra)
Current Store : [0x80000fbc] : sd t5, 936(ra) -- Store: [0x800036b8]:0x00400000FFF7FFFF




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000fd8]:KSTSA32 t6, t5, t4
	-[0x80000fdc]:sd t6, 944(ra)
Current Store : [0x80000fe0] : sd t5, 952(ra) -- Store: [0x800036c8]:0x0000000700000010




Last Coverpoint : ['opcode : kstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 0', 'rs1_w1_val == 131072', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000ffc]:KSTSA32 t6, t5, t4
	-[0x80001000]:sd t6, 960(ra)
Current Store : [0x80001004] : sd t5, 968(ra) -- Store: [0x800036d8]:0x0002000000000002




Last Coverpoint : ['rs2_w0_val == -1073741825', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001020]:KSTSA32 t6, t5, t4
	-[0x80001024]:sd t6, 976(ra)
Current Store : [0x80001028] : sd t5, 984(ra) -- Store: [0x800036e8]:0x2000000000000008




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x8000104c]:KSTSA32 t6, t5, t4
	-[0x80001050]:sd t6, 992(ra)
Current Store : [0x80001054] : sd t5, 1000(ra) -- Store: [0x800036f8]:0xFFFFFFEFFFEFFFFF




Last Coverpoint : ['rs2_w0_val == -67108865', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001080]:KSTSA32 t6, t5, t4
	-[0x80001084]:sd t6, 1008(ra)
Current Store : [0x80001088] : sd t5, 1016(ra) -- Store: [0x80003708]:0x40000000FFFEFFFF




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w1_val == -4097', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800010ac]:KSTSA32 t6, t5, t4
	-[0x800010b0]:sd t6, 1024(ra)
Current Store : [0x800010b4] : sd t5, 1032(ra) -- Store: [0x80003718]:0xFFFFEFFFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == -33554433', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800010d4]:KSTSA32 t6, t5, t4
	-[0x800010d8]:sd t6, 1040(ra)
Current Store : [0x800010dc] : sd t5, 1048(ra) -- Store: [0x80003728]:0xFDFFFFFFFFFFFFFE




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800010fc]:KSTSA32 t6, t5, t4
	-[0x80001100]:sd t6, 1056(ra)
Current Store : [0x80001104] : sd t5, 1064(ra) -- Store: [0x80003738]:0xFFFFFFF880000000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80001120]:KSTSA32 t6, t5, t4
	-[0x80001124]:sd t6, 1072(ra)
Current Store : [0x80001128] : sd t5, 1080(ra) -- Store: [0x80003748]:0x0000000300000200




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001148]:KSTSA32 t6, t5, t4
	-[0x8000114c]:sd t6, 1088(ra)
Current Store : [0x80001150] : sd t5, 1096(ra) -- Store: [0x80003758]:0x4000000001000000




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80001170]:KSTSA32 t6, t5, t4
	-[0x80001174]:sd t6, 1104(ra)
Current Store : [0x80001178] : sd t5, 1112(ra) -- Store: [0x80003768]:0x0000400010000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80001198]:KSTSA32 t6, t5, t4
	-[0x8000119c]:sd t6, 1120(ra)
Current Store : [0x800011a0] : sd t5, 1128(ra) -- Store: [0x80003778]:0x0400000000080000




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800011cc]:KSTSA32 t6, t5, t4
	-[0x800011d0]:sd t6, 1136(ra)
Current Store : [0x800011d4] : sd t5, 1144(ra) -- Store: [0x80003788]:0xBFFFFFFF55555555




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x800011fc]:KSTSA32 t6, t5, t4
	-[0x80001200]:sd t6, 1152(ra)
Current Store : [0x80001204] : sd t5, 1160(ra) -- Store: [0x80003798]:0xEFFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w1_val == -1431655766', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001224]:KSTSA32 t6, t5, t4
	-[0x80001228]:sd t6, 1168(ra)
Current Store : [0x8000122c] : sd t5, 1176(ra) -- Store: [0x800037a8]:0xAAAAAAAAFFFFFFF7




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000124c]:KSTSA32 t6, t5, t4
	-[0x80001250]:sd t6, 1184(ra)
Current Store : [0x80001254] : sd t5, 1192(ra) -- Store: [0x800037b8]:0xF7FFFFFF00000005




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001274]:KSTSA32 t6, t5, t4
	-[0x80001278]:sd t6, 1200(ra)
Current Store : [0x8000127c] : sd t5, 1208(ra) -- Store: [0x800037c8]:0xFFFDFFFF00000003




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800012a8]:KSTSA32 t6, t5, t4
	-[0x800012ac]:sd t6, 1216(ra)
Current Store : [0x800012b0] : sd t5, 1224(ra) -- Store: [0x800037d8]:0xFFFEFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800012d4]:KSTSA32 t6, t5, t4
	-[0x800012d8]:sd t6, 1232(ra)
Current Store : [0x800012dc] : sd t5, 1240(ra) -- Store: [0x800037e8]:0xFFFFDFFF00000200




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x800012f8]:KSTSA32 t6, t5, t4
	-[0x800012fc]:sd t6, 1248(ra)
Current Store : [0x80001300] : sd t5, 1256(ra) -- Store: [0x800037f8]:0xFFFFFF7F00004000




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x8000131c]:KSTSA32 t6, t5, t4
	-[0x80001320]:sd t6, 1264(ra)
Current Store : [0x80001324] : sd t5, 1272(ra) -- Store: [0x80003808]:0xFFFFFFDFFFFFFFBF




Last Coverpoint : ['rs2_w0_val == -4097', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80001348]:KSTSA32 t6, t5, t4
	-[0x8000134c]:sd t6, 1280(ra)
Current Store : [0x80001350] : sd t5, 1288(ra) -- Store: [0x80003818]:0xFFFFFFF7FFFFF7FF




Last Coverpoint : ['rs1_w1_val == -2', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000137c]:KSTSA32 t6, t5, t4
	-[0x80001380]:sd t6, 1296(ra)
Current Store : [0x80001384] : sd t5, 1304(ra) -- Store: [0x80003828]:0xFFFFFFFEAAAAAAAA




Last Coverpoint : ['rs1_w1_val == -2147483648', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800013a4]:KSTSA32 t6, t5, t4
	-[0x800013a8]:sd t6, 1312(ra)
Current Store : [0x800013ac] : sd t5, 1320(ra) -- Store: [0x80003838]:0x8000000000000100




Last Coverpoint : ['rs1_w1_val == 134217728', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800013d0]:KSTSA32 t6, t5, t4
	-[0x800013d4]:sd t6, 1328(ra)
Current Store : [0x800013d8] : sd t5, 1336(ra) -- Store: [0x80003848]:0x08000000DFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800013f8]:KSTSA32 t6, t5, t4
	-[0x800013fc]:sd t6, 1344(ra)
Current Store : [0x80001400] : sd t5, 1352(ra) -- Store: [0x80003858]:0x00200000C0000000




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000141c]:KSTSA32 t6, t5, t4
	-[0x80001420]:sd t6, 1360(ra)
Current Store : [0x80001424] : sd t5, 1368(ra) -- Store: [0x80003868]:0x0004000000000003




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001450]:KSTSA32 t6, t5, t4
	-[0x80001454]:sd t6, 1376(ra)
Current Store : [0x80001458] : sd t5, 1384(ra) -- Store: [0x80003878]:0x00010000FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x8000147c]:KSTSA32 t6, t5, t4
	-[0x80001480]:sd t6, 1392(ra)
Current Store : [0x80001484] : sd t5, 1400(ra) -- Store: [0x80003888]:0x0000800000000000




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800014a8]:KSTSA32 t6, t5, t4
	-[0x800014ac]:sd t6, 1408(ra)
Current Store : [0x800014b0] : sd t5, 1416(ra) -- Store: [0x80003898]:0x00002000F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800014d0]:KSTSA32 t6, t5, t4
	-[0x800014d4]:sd t6, 1424(ra)
Current Store : [0x800014d8] : sd t5, 1432(ra) -- Store: [0x800038a8]:0x0000100000008000




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800014f4]:KSTSA32 t6, t5, t4
	-[0x800014f8]:sd t6, 1440(ra)
Current Store : [0x800014fc] : sd t5, 1448(ra) -- Store: [0x800038b8]:0x0000020000000200




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001518]:KSTSA32 t6, t5, t4
	-[0x8000151c]:sd t6, 1456(ra)
Current Store : [0x80001520] : sd t5, 1464(ra) -- Store: [0x800038c8]:0x0000000100000008




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001540]:KSTSA32 t6, t5, t4
	-[0x80001544]:sd t6, 1472(ra)
Current Store : [0x80001548] : sd t5, 1480(ra) -- Store: [0x800038d8]:0x000010007FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001568]:KSTSA32 t6, t5, t4
	-[0x8000156c]:sd t6, 1488(ra)
Current Store : [0x80001570] : sd t5, 1496(ra) -- Store: [0x800038e8]:0xBFFFFFFFBFFFFFFF




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001590]:KSTSA32 t6, t5, t4
	-[0x80001594]:sd t6, 1504(ra)
Current Store : [0x80001598] : sd t5, 1512(ra) -- Store: [0x800038f8]:0xFDFFFFFFFFFFFFF7




Last Coverpoint : ['rs2_w0_val == -8193', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800015c8]:KSTSA32 t6, t5, t4
	-[0x800015cc]:sd t6, 1520(ra)
Current Store : [0x800015d0] : sd t5, 1528(ra) -- Store: [0x80003908]:0xAAAAAAAAEFFFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800015f0]:KSTSA32 t6, t5, t4
	-[0x800015f4]:sd t6, 1536(ra)
Current Store : [0x800015f8] : sd t5, 1544(ra) -- Store: [0x80003918]:0xFFFFDFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001618]:KSTSA32 t6, t5, t4
	-[0x8000161c]:sd t6, 1552(ra)
Current Store : [0x80001620] : sd t5, 1560(ra) -- Store: [0x80003928]:0x00000010FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80001648]:KSTSA32 t6, t5, t4
	-[0x8000164c]:sd t6, 1568(ra)
Current Store : [0x80001650] : sd t5, 1576(ra) -- Store: [0x80003938]:0x40000000FEFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001674]:KSTSA32 t6, t5, t4
	-[0x80001678]:sd t6, 1584(ra)
Current Store : [0x8000167c] : sd t5, 1592(ra) -- Store: [0x80003948]:0xFFFFFFFAFF7FFFFF




Last Coverpoint : ['rs2_w1_val == -2097153', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800016a4]:KSTSA32 t6, t5, t4
	-[0x800016a8]:sd t6, 1600(ra)
Current Store : [0x800016ac] : sd t5, 1608(ra) -- Store: [0x80003958]:0x0080000000100000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800016d8]:KSTSA32 t6, t5, t4
	-[0x800016dc]:sd t6, 1616(ra)
Current Store : [0x800016e0] : sd t5, 1624(ra) -- Store: [0x80003968]:0xFEFFFFFFFFFDFFFF




Last Coverpoint : ['rs2_w0_val == -257', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001700]:KSTSA32 t6, t5, t4
	-[0x80001704]:sd t6, 1632(ra)
Current Store : [0x80001708] : sd t5, 1640(ra) -- Store: [0x80003978]:0x20000000FFFFFFEF




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000172c]:KSTSA32 t6, t5, t4
	-[0x80001730]:sd t6, 1648(ra)
Current Store : [0x80001734] : sd t5, 1656(ra) -- Store: [0x80003988]:0xFFFFFFF7FF7FFFFF




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x8000174c]:KSTSA32 t6, t5, t4
	-[0x80001750]:sd t6, 1664(ra)
Current Store : [0x80001754] : sd t5, 1672(ra) -- Store: [0x80003998]:0x0080000000008000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000177c]:KSTSA32 t6, t5, t4
	-[0x80001780]:sd t6, 1680(ra)
Current Store : [0x80001784] : sd t5, 1688(ra) -- Store: [0x800039a8]:0xFFFFEFFFFFFFBFFF




Last Coverpoint : ['rs2_w0_val == -17']
Last Code Sequence : 
	-[0x800017a4]:KSTSA32 t6, t5, t4
	-[0x800017a8]:sd t6, 1696(ra)
Current Store : [0x800017ac] : sd t5, 1704(ra) -- Store: [0x800039b8]:0xFFFFFFFA00000006




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x800017cc]:KSTSA32 t6, t5, t4
	-[0x800017d0]:sd t6, 1712(ra)
Current Store : [0x800017d4] : sd t5, 1720(ra) -- Store: [0x800039c8]:0x0000080000000002




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800017fc]:KSTSA32 t6, t5, t4
	-[0x80001800]:sd t6, 1728(ra)
Current Store : [0x80001804] : sd t5, 1736(ra) -- Store: [0x800039d8]:0x00100000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001824]:KSTSA32 t6, t5, t4
	-[0x80001828]:sd t6, 1744(ra)
Current Store : [0x8000182c] : sd t5, 1752(ra) -- Store: [0x800039e8]:0xFFFFFDFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001848]:KSTSA32 t6, t5, t4
	-[0x8000184c]:sd t6, 1760(ra)
Current Store : [0x80001850] : sd t5, 1768(ra) -- Store: [0x800039f8]:0x00000100FFEFFFFF




Last Coverpoint : ['opcode : kstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w0_val == -33554433', 'rs1_w1_val == -1048577', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000186c]:KSTSA32 t6, t5, t4
	-[0x80001870]:sd t6, 1776(ra)
Current Store : [0x80001874] : sd t5, 1784(ra) -- Store: [0x80003a08]:0xFFEFFFFF40000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001894]:KSTSA32 t6, t5, t4
	-[0x80001898]:sd t6, 1792(ra)
Current Store : [0x8000189c] : sd t5, 1800(ra) -- Store: [0x80003a18]:0xC000000020000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800018c4]:KSTSA32 t6, t5, t4
	-[0x800018c8]:sd t6, 1808(ra)
Current Store : [0x800018cc] : sd t5, 1816(ra) -- Store: [0x80003a28]:0x00008000FFFFEFFF




Last Coverpoint : ['opcode : kstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -16777217', 'rs1_w1_val == -16777217', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800018ec]:KSTSA32 t6, t5, t4
	-[0x800018f0]:sd t6, 1824(ra)
Current Store : [0x800018f4] : sd t5, 1832(ra) -- Store: [0x80003a38]:0xFEFFFFFF00000100




Last Coverpoint : ['opcode : kstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -1048577', 'rs1_w1_val == -65', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001918]:KSTSA32 t6, t5, t4
	-[0x8000191c]:sd t6, 1840(ra)
Current Store : [0x80001920] : sd t5, 1848(ra) -- Store: [0x80003a48]:0xFFFFFFBF02000000




Last Coverpoint : ['opcode : kstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -33554433', 'rs2_w0_val == 4', 'rs1_w1_val == -5', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001940]:KSTSA32 t6, t5, t4
	-[0x80001944]:sd t6, 1856(ra)
Current Store : [0x80001948] : sd t5, 1864(ra) -- Store: [0x80003a58]:0xFFFFFFFB00800000





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

|s.no|            signature             |                                                                                                                                                                              coverpoints                                                                                                                                                                              |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000000007FFFFFFF|- opcode : kstsa32<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 1073741824<br> |[0x800003bc]:KSTSA32 a7, a1, a1<br> [0x800003c0]:sd a7, 0(gp)<br>       |
|   2|[0x80003220]<br>0x00000000FFFFFFF8|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == -16777217<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                              |[0x800003e4]:KSTSA32 a4, a4, a4<br> [0x800003e8]:sd a4, 16(gp)<br>      |
|   3|[0x80003230]<br>0xFFFBFFFD0001BFFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 262144<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -3<br> - rs1_w0_val == 131072<br>                     |[0x80000414]:KSTSA32 s2, a7, a5<br> [0x80000418]:sd s2, 32(gp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFF80000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_w0_val == -2147483648<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == 4<br>                                                                                                                                                                        |[0x80000438]:KSTSA32 t5, t5, sp<br> [0x8000043c]:sd t5, 48(gp)<br>      |
|   5|[0x80003250]<br>0xFFFFFE04FF7FFFFE|- rs1 : x26<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_w1_val == -5<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == -513<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                          |[0x80000464]:KSTSA32 ra, s10, ra<br> [0x80000468]:sd ra, 64(gp)<br>     |
|   6|[0x80003260]<br>0xFFC0000000500000|- rs1 : x19<br> - rs2 : x28<br> - rd : x31<br> - rs2_w1_val == 4194304<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 0<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                               |[0x80000484]:KSTSA32 t6, s3, t3<br> [0x80000488]:sd t6, 80(gp)<br>      |
|   7|[0x80003270]<br>0x5545555500003FFD|- rs1 : x25<br> - rs2 : x16<br> - rd : x12<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 16384<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == -3<br>                                                                                                                                                                   |[0x800004b0]:KSTSA32 a2, s9, a6<br> [0x800004b4]:sd a2, 96(gp)<br>      |
|   8|[0x80003280]<br>0xAA8AAAAAFFFFC07F|- rs1 : x29<br> - rs2 : x23<br> - rd : x11<br> - rs2_w1_val == 1431655765<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                     |[0x800004e4]:KSTSA32 a1, t4, s7<br> [0x800004e8]:sd a1, 112(gp)<br>     |
|   9|[0x80003290]<br>0x80000000FFF80001|- rs1 : x28<br> - rs2 : x6<br> - rd : x24<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -524289<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                          |[0x80000514]:KSTSA32 s8, t3, t1<br> [0x80000518]:sd s8, 128(gp)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x18<br> - rd : x0<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == -65<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                        |[0x80000540]:KSTSA32 zero, s5, s2<br> [0x80000544]:sd zero, 144(gp)<br> |
|  11|[0x800032b0]<br>0x0000000000007FBF|- rs1 : x7<br> - rs2 : x25<br> - rd : x19<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 32768<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                         |[0x8000056c]:KSTSA32 s3, t2, s9<br> [0x80000570]:sd s3, 160(gp)<br>     |
|  12|[0x800032c0]<br>0x07FFFFFC08008000|- rs1 : x16<br> - rs2 : x30<br> - rd : x4<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == -5<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                      |[0x80000594]:KSTSA32 tp, a6, t5<br> [0x80000598]:sd tp, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x44000000EFDFFFFE|- rs1 : x1<br> - rs2 : x22<br> - rd : x16<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                        |[0x800005c4]:KSTSA32 a6, ra, s6<br> [0x800005c8]:sd a6, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x0200000100000004|- rs1 : x0<br> - rs2 : x5<br> - rd : x28<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 4<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                                 |[0x800005ec]:KSTSA32 t3, zero, t0<br> [0x800005f0]:sd t3, 208(gp)<br>   |
|  15|[0x800032f0]<br>0x0080002100020008|- rs1 : x15<br> - rs2 : x17<br> - rd : x10<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 8<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                               |[0x80000614]:KSTSA32 a0, a5, a7<br> [0x80000618]:sd a0, 224(gp)<br>     |
|  16|[0x80003300]<br>0x00C00001FFFFF7FE|- rs1 : x9<br> - rs2 : x20<br> - rd : x6<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                              |[0x8000063c]:KSTSA32 t1, s1, s4<br> [0x80000640]:sd t1, 240(gp)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFF7FF|- rs1 : x20<br> - rs2 : x0<br> - rd : x15<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -1<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                             |[0x8000066c]:KSTSA32 a5, s4, zero<br> [0x80000670]:sd a5, 0(ra)<br>     |
|  18|[0x80003320]<br>0xFC100000007F7FFF|- rs1 : x3<br> - rs2 : x24<br> - rd : x2<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                         |[0x80000698]:KSTSA32 sp, gp, s8<br> [0x8000069c]:sd sp, 16(ra)<br>      |
|  19|[0x80003330]<br>0x1008000100000101|- rs1 : x4<br> - rs2 : x27<br> - rd : x29<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 256<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                  |[0x800006c0]:KSTSA32 t4, tp, s11<br> [0x800006c4]:sd t4, 32(ra)<br>     |
|  20|[0x80003340]<br>0x04040001000FFFFB|- rs1 : x13<br> - rs2 : x29<br> - rd : x7<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -5<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                              |[0x800006e8]:KSTSA32 t2, a3, t4<br> [0x800006ec]:sd t2, 48(ra)<br>      |
|  21|[0x80003350]<br>0x7FFFFFFF30000000|- rs1 : x8<br> - rs2 : x19<br> - rd : x25<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                   |[0x80000710]:KSTSA32 s9, fp, s3<br> [0x80000714]:sd s9, 64(ra)<br>      |
|  22|[0x80003360]<br>0x00110001FE00003F|- rs1 : x18<br> - rs2 : x26<br> - rd : x20<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                             |[0x80000738]:KSTSA32 s4, s2, s10<br> [0x8000073c]:sd s4, 80(ra)<br>     |
|  23|[0x80003370]<br>0x00007FFD003FF7FF|- rs1 : x24<br> - rs2 : x9<br> - rd : x23<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                   |[0x80000760]:KSTSA32 s7, s8, s1<br> [0x80000764]:sd s7, 96(ra)<br>      |
|  24|[0x80003380]<br>0x01004001DFFFFFF5|- rs1 : x12<br> - rs2 : x3<br> - rd : x21<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -536870913<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                   |[0x8000078c]:KSTSA32 s5, a2, gp<br> [0x80000790]:sd s5, 112(ra)<br>     |
|  25|[0x80003390]<br>0x000028017FFFFFFF|- rs1 : x10<br> - rs2 : x7<br> - rd : x13<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                        |[0x800007b8]:KSTSA32 a3, a0, t2<br> [0x800007bc]:sd a3, 128(ra)<br>     |
|  26|[0x800033a0]<br>0x00000C004000007F|- rs1 : x27<br> - rs2 : x13<br> - rd : x26<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                     |[0x800007e0]:KSTSA32 s10, s11, a3<br> [0x800007e4]:sd s10, 144(ra)<br>  |
|  27|[0x800033b0]<br>0xFF80080000003DFF|- rs1 : x23<br> - rs2 : x4<br> - rd : x3<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -513<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                 |[0x8000080c]:KSTSA32 gp, s7, tp<br> [0x80000810]:sd gp, 160(ra)<br>     |
|  28|[0x800033c0]<br>0x00020401F000000F|- rs1 : x5<br> - rs2 : x31<br> - rd : x22<br> - rs2_w1_val == -1025<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                              |[0x80000834]:KSTSA32 s6, t0, t6<br> [0x80000838]:sd s6, 176(ra)<br>     |
|  29|[0x800033d0]<br>0x02000201000001F7|- rs1 : x22<br> - rs2 : x10<br> - rd : x27<br> - rs2_w1_val == -513<br> - rs2_w0_val == -9<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                    |[0x80000858]:KSTSA32 s11, s6, a0<br> [0x8000085c]:sd s11, 192(ra)<br>   |
|  30|[0x800033e0]<br>0x00000103FFDFBFFE|- rs1 : x6<br> - rs2 : x8<br> - rd : x9<br> - rs2_w1_val == -257<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                             |[0x80000884]:KSTSA32 s1, t1, fp<br> [0x80000888]:sd s1, 208(ra)<br>     |
|  31|[0x800033f0]<br>0x00000881007FFFFE|- rs1 : x31<br> - rs2 : x21<br> - rd : x5<br> - rs2_w1_val == -129<br> - rs2_w0_val == -2<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                              |[0x800008a8]:KSTSA32 t0, t6, s5<br> [0x800008ac]:sd t0, 224(ra)<br>     |
|  32|[0x80003400]<br>0x0000004A07FFFFFB|- rs1 : x2<br> - rs2 : x12<br> - rd : x8<br> - rs2_w1_val == -65<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                              |[0x800008cc]:KSTSA32 fp, sp, a2<br> [0x800008d0]:sd fp, 240(ra)<br>     |
|  33|[0x80003410]<br>0x0008002101020000|- rs2_w1_val == -33<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                             |[0x800008f0]:KSTSA32 t6, t5, t4<br> [0x800008f4]:sd t6, 256(ra)<br>     |
|  34|[0x80003420]<br>0x00000811FFFFFBFF|- rs2_w1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000910]:KSTSA32 t6, t5, t4<br> [0x80000914]:sd t6, 272(ra)<br>     |
|  35|[0x80003430]<br>0xF0000008FE00000F|- rs2_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000938]:KSTSA32 t6, t5, t4<br> [0x8000093c]:sd t6, 288(ra)<br>     |
|  36|[0x80003440]<br>0x0400000300003FDF|- rs2_w1_val == -3<br> - rs2_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                         |[0x80000960]:KSTSA32 t6, t5, t4<br> [0x80000964]:sd t6, 304(ra)<br>     |
|  37|[0x80003450]<br>0xFFF0000140000002|- rs2_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000984]:KSTSA32 t6, t5, t4<br> [0x80000988]:sd t6, 320(ra)<br>     |
|  38|[0x80003460]<br>0x7FF7FFFF00404000|- rs2_w1_val == -2147483648<br> - rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                                                                            |[0x800009b4]:KSTSA32 t6, t5, t4<br> [0x800009b8]:sd t6, 336(ra)<br>     |
|  39|[0x80003470]<br>0xBFBFFFFFF0000004|- rs2_w1_val == 1073741824<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                                            |[0x800009e4]:KSTSA32 t6, t5, t4<br> [0x800009e8]:sd t6, 352(ra)<br>     |
|  40|[0x80003480]<br>0x5FFFFFFFFFFC1FFF|- rs2_w1_val == 536870912<br> - rs2_w0_val == 8192<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                     |[0x80000a14]:KSTSA32 t6, t5, t4<br> [0x80000a18]:sd t6, 368(ra)<br>     |
|  41|[0x80003490]<br>0xEFFFFFBFC0000400|- rs2_w1_val == 268435456<br> - rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a34]:KSTSA32 t6, t5, t4<br> [0x80000a38]:sd t6, 384(ra)<br>     |
|  42|[0x800034a0]<br>0xE7FFFFFFFFFE07FF|- rs2_w1_val == 134217728<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                     |[0x80000a70]:KSTSA32 t6, t5, t4<br> [0x80000a74]:sd t6, 400(ra)<br>     |
|  43|[0x800034b0]<br>0x3C000000FFF7DFFE|- rs2_w1_val == 67108864<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                  |[0x80000aac]:KSTSA32 t6, t5, t4<br> [0x80000ab0]:sd t6, 416(ra)<br>     |
|  44|[0x800034c0]<br>0x3E000000FFFEFDFE|- rs2_w1_val == 33554432<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                       |[0x80000ae0]:KSTSA32 t6, t5, t4<br> [0x80000ae4]:sd t6, 432(ra)<br>     |
|  45|[0x800034d0]<br>0xFF00004000000029|- rs2_w1_val == 16777216<br> - rs1_w1_val == 64<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                             |[0x80000b04]:KSTSA32 t6, t5, t4<br> [0x80000b08]:sd t6, 448(ra)<br>     |
|  46|[0x800034e0]<br>0x03800000FE00001F|- rs2_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000b2c]:KSTSA32 t6, t5, t4<br> [0x80000b30]:sd t6, 464(ra)<br>     |
|  47|[0x800034f0]<br>0xFFE00009AA9AAAA9|- rs2_w1_val == 2097152<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                               |[0x80000b60]:KSTSA32 t6, t5, t4<br> [0x80000b64]:sd t6, 480(ra)<br>     |
|  48|[0x80003500]<br>0xFFEFFFFA03EFFFFF|- rs2_w1_val == 1048576<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                               |[0x80000b8c]:KSTSA32 t6, t5, t4<br> [0x80000b90]:sd t6, 496(ra)<br>     |
|  49|[0x80003510]<br>0xFFF8040055555565|- rs2_w1_val == 524288<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                     |[0x80000bbc]:KSTSA32 t6, t5, t4<br> [0x80000bc0]:sd t6, 512(ra)<br>     |
|  50|[0x80003520]<br>0xFFFDFFF924000000|- rs2_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000bdc]:KSTSA32 t6, t5, t4<br> [0x80000be0]:sd t6, 528(ra)<br>     |
|  51|[0x80003530]<br>0x5555555A00200003|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                             |[0x80000c08]:KSTSA32 t6, t5, t4<br> [0x80000c0c]:sd t6, 544(ra)<br>     |
|  52|[0x80003540]<br>0x007FFFF9000A0000|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000c30]:KSTSA32 t6, t5, t4<br> [0x80000c34]:sd t6, 560(ra)<br>     |
|  53|[0x80003550]<br>0xFF7FBFFF0003FFFC|- rs1_w1_val == -16385<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                  |[0x80000c58]:KSTSA32 t6, t5, t4<br> [0x80000c5c]:sd t6, 576(ra)<br>     |
|  54|[0x80003560]<br>0xFFFFF80800012000|- rs1_w1_val == -2049<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                    |[0x80000c7c]:KSTSA32 t6, t5, t4<br> [0x80000c80]:sd t6, 592(ra)<br>     |
|  55|[0x80003570]<br>0x0000000000007DFF|- rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000ca8]:KSTSA32 t6, t5, t4<br> [0x80000cac]:sd t6, 608(ra)<br>     |
|  56|[0x80003580]<br>0xFFFFFFFCFFFF1FFF|- rs2_w1_val == -1<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                        |[0x80000cc8]:KSTSA32 t6, t5, t4<br> [0x80000ccc]:sd t6, 624(ra)<br>     |
|  57|[0x80003590]<br>0xFFFFBFBF80001000|- rs2_w1_val == 64<br> - rs2_w0_val == -2147483648<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                        |[0x80000cf0]:KSTSA32 t6, t5, t4<br> [0x80000cf4]:sd t6, 640(ra)<br>     |
|  58|[0x800035a0]<br>0x007FFFFB00200400|- rs2_w0_val == 2097152<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                   |[0x80000d14]:KSTSA32 t6, t5, t4<br> [0x80000d18]:sd t6, 656(ra)<br>     |
|  59|[0x800035b0]<br>0xFF7BFFFF00000808|- rs2_w0_val == 2048<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                         |[0x80000d44]:KSTSA32 t6, t5, t4<br> [0x80000d48]:sd t6, 672(ra)<br>     |
|  60|[0x800035c0]<br>0x0000080200000024|- rs2_w0_val == 32<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                           |[0x80000d68]:KSTSA32 t6, t5, t4<br> [0x80000d6c]:sd t6, 688(ra)<br>     |
|  61|[0x800035d0]<br>0xFFFFE010FFFFFFF5|- rs2_w1_val == 8192<br> - rs1_w1_val == 16<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                 |[0x80000d90]:KSTSA32 t6, t5, t4<br> [0x80000d94]:sd t6, 704(ra)<br>     |
|  62|[0x800035e0]<br>0xFFFAFFFF00000010|- rs2_w1_val == 65536<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                                                                                                                                                  |[0x80000db8]:KSTSA32 t6, t5, t4<br> [0x80000dbc]:sd t6, 720(ra)<br>     |
|  63|[0x800035f0]<br>0xFFFF800080000020|- rs2_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000dd8]:KSTSA32 t6, t5, t4<br> [0x80000ddc]:sd t6, 736(ra)<br>     |
|  64|[0x80003600]<br>0xFFEFBFFFFFFBFDFE|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000e08]:KSTSA32 t6, t5, t4<br> [0x80000e0c]:sd t6, 752(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFF100FFF00008|- rs2_w1_val == 4096<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                       |[0x80000e30]:KSTSA32 t6, t5, t4<br> [0x80000e34]:sd t6, 768(ra)<br>     |
|  66|[0x80003620]<br>0xFFFFF803FFFF0008|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000e58]:KSTSA32 t6, t5, t4<br> [0x80000e5c]:sd t6, 784(ra)<br>     |
|  67|[0x80003630]<br>0xFFBFFBFFFFFF81FF|- rs2_w1_val == 1024<br> - rs2_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                       |[0x80000e84]:KSTSA32 t6, t5, t4<br> [0x80000e88]:sd t6, 800(ra)<br>     |
|  68|[0x80003640]<br>0xFFFFFCFF65555555|- rs2_w1_val == 512<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -257<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                          |[0x80000eac]:KSTSA32 t6, t5, t4<br> [0x80000eb0]:sd t6, 816(ra)<br>     |
|  69|[0x80003650]<br>0xFFFFFF080000FFDF|- rs2_w1_val == 256<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                          |[0x80000ed0]:KSTSA32 t6, t5, t4<br> [0x80000ed4]:sd t6, 832(ra)<br>     |
|  70|[0x80003660]<br>0x0000000002000005|- rs2_w1_val == 128<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                           |[0x80000ef4]:KSTSA32 t6, t5, t4<br> [0x80000ef8]:sd t6, 848(ra)<br>     |
|  71|[0x80003670]<br>0xFFFFFFDFFFFC0002|- rs2_w1_val == 32<br> - rs2_w0_val == -262145<br>                                                                                                                                                                                                                                                                                                                     |[0x80000f1c]:KSTSA32 t6, t5, t4<br> [0x80000f20]:sd t6, 864(ra)<br>     |
|  72|[0x80003680]<br>0xFFFF7FEFFFFFFF01|- rs2_w1_val == 16<br> - rs2_w0_val == 2<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                       |[0x80000f40]:KSTSA32 t6, t5, t4<br> [0x80000f44]:sd t6, 880(ra)<br>     |
|  73|[0x80003690]<br>0x0000000800080003|- rs2_w1_val == 8<br> - rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                       |[0x80000f64]:KSTSA32 t6, t5, t4<br> [0x80000f68]:sd t6, 896(ra)<br>     |
|  74|[0x800036a0]<br>0x0000007C03FFFFFC|- rs2_w1_val == 4<br> - rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                     |[0x80000f84]:KSTSA32 t6, t5, t4<br> [0x80000f88]:sd t6, 912(ra)<br>     |
|  75|[0x800036b0]<br>0x003FFFFE0037FFFF|- rs2_w1_val == 2<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                          |[0x80000fb4]:KSTSA32 t6, t5, t4<br> [0x80000fb8]:sd t6, 928(ra)<br>     |
|  76|[0x800036c0]<br>0x0000000600010010|- rs2_w1_val == 1<br> - rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                        |[0x80000fd8]:KSTSA32 t6, t5, t4<br> [0x80000fdc]:sd t6, 944(ra)<br>     |
|  77|[0x800036e0]<br>0x1FFFFFF0C0000007|- rs2_w0_val == -1073741825<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                          |[0x80001020]:KSTSA32 t6, t5, t4<br> [0x80001024]:sd t6, 976(ra)<br>     |
|  78|[0x800036f0]<br>0x00000070F7EFFFFE|- rs2_w0_val == -134217729<br> - rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                                                 |[0x8000104c]:KSTSA32 t6, t5, t4<br> [0x80001050]:sd t6, 992(ra)<br>     |
|  79|[0x80003700]<br>0x3FFFF800FBFEFFFE|- rs2_w0_val == -67108865<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                               |[0x80001080]:KSTSA32 t6, t5, t4<br> [0x80001084]:sd t6, 1008(ra)<br>    |
|  80|[0x80003710]<br>0xFFFFEDFFFDFFFFFE|- rs2_w0_val == -16777217<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                  |[0x800010ac]:KSTSA32 t6, t5, t4<br> [0x800010b0]:sd t6, 1024(ra)<br>    |
|  81|[0x80003720]<br>0xFCFFFFFF0003FFFE|- rs2_w0_val == 262144<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                        |[0x800010d4]:KSTSA32 t6, t5, t4<br> [0x800010d8]:sd t6, 1040(ra)<br>    |
|  82|[0x80003730]<br>0x8000000080001000|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                               |[0x800010fc]:KSTSA32 t6, t5, t4<br> [0x80001100]:sd t6, 1056(ra)<br>    |
|  83|[0x80003740]<br>0x0000000400000280|- rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                |[0x80001120]:KSTSA32 t6, t5, t4<br> [0x80001124]:sd t6, 1072(ra)<br>    |
|  84|[0x80003750]<br>0x3FF8000001000040|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80001148]:KSTSA32 t6, t5, t4<br> [0x8000114c]:sd t6, 1088(ra)<br>    |
|  85|[0x80003760]<br>0x0000600110000010|- rs2_w0_val == 16<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                                       |[0x80001170]:KSTSA32 t6, t5, t4<br> [0x80001174]:sd t6, 1104(ra)<br>    |
|  86|[0x80003770]<br>0x0400000500080001|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                  |[0x80001198]:KSTSA32 t6, t5, t4<br> [0x8000119c]:sd t6, 1120(ra)<br>    |
|  87|[0x80003780]<br>0x1555555555555555|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                                        |[0x800011cc]:KSTSA32 t6, t5, t4<br> [0x800011d0]:sd t6, 1136(ra)<br>    |
|  88|[0x80003790]<br>0xEFFBFFFFFFFBFFFE|- rs2_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                 |[0x800011fc]:KSTSA32 t6, t5, t4<br> [0x80001200]:sd t6, 1152(ra)<br>    |
|  89|[0x800037a0]<br>0xAAAAA8AAFFFFFFFF|- rs1_w1_val == -1431655766<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                 |[0x80001224]:KSTSA32 t6, t5, t4<br> [0x80001228]:sd t6, 1168(ra)<br>    |
|  90|[0x800037b0]<br>0xF8000080FFFFFFFB|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000124c]:KSTSA32 t6, t5, t4<br> [0x80001250]:sd t6, 1184(ra)<br>    |
|  91|[0x800037c0]<br>0xFFFCFFFF80000003|- rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001274]:KSTSA32 t6, t5, t4<br> [0x80001278]:sd t6, 1200(ra)<br>    |
|  92|[0x800037d0]<br>0x55545555FFB7FFFE|- rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                                                             |[0x800012a8]:KSTSA32 t6, t5, t4<br> [0x800012ac]:sd t6, 1216(ra)<br>    |
|  93|[0x800037e0]<br>0x7FFFDFFF000001FA|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                              |[0x800012d4]:KSTSA32 t6, t5, t4<br> [0x800012d8]:sd t6, 1232(ra)<br>    |
|  94|[0x800037f0]<br>0x00003F8010004000|- rs1_w1_val == -129<br>                                                                                                                                                                                                                                                                                                                                               |[0x800012f8]:KSTSA32 t6, t5, t4<br> [0x800012fc]:sd t6, 1248(ra)<br>    |
|  95|[0x80003800]<br>0xFFFFFFD900000FBF|- rs1_w1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                |[0x8000131c]:KSTSA32 t6, t5, t4<br> [0x80001320]:sd t6, 1264(ra)<br>    |
|  96|[0x80003810]<br>0x00000038FFFFE7FE|- rs2_w0_val == -4097<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x80001348]:KSTSA32 t6, t5, t4<br> [0x8000134c]:sd t6, 1280(ra)<br>    |
|  97|[0x80003820]<br>0x01FFFFFFAAAAB2AA|- rs1_w1_val == -2<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                 |[0x8000137c]:KSTSA32 t6, t5, t4<br> [0x80001380]:sd t6, 1296(ra)<br>    |
|  98|[0x80003830]<br>0x80000000000000FE|- rs1_w1_val == -2147483648<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                |[0x800013a4]:KSTSA32 t6, t5, t4<br> [0x800013a8]:sd t6, 1312(ra)<br>    |
|  99|[0x80003840]<br>0x07FFF800DFFFFFF8|- rs1_w1_val == 134217728<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                           |[0x800013d0]:KSTSA32 t6, t5, t4<br> [0x800013d4]:sd t6, 1328(ra)<br>    |
| 100|[0x80003850]<br>0x00210001BF7FFFFF|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                            |[0x800013f8]:KSTSA32 t6, t5, t4<br> [0x800013fc]:sd t6, 1344(ra)<br>    |
| 101|[0x80003860]<br>0x00040011F8000002|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                                                             |[0x8000141c]:KSTSA32 t6, t5, t4<br> [0x80001420]:sd t6, 1360(ra)<br>    |
| 102|[0x80003870]<br>0x00018001FFFFE007|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                                              |[0x80001450]:KSTSA32 t6, t5, t4<br> [0x80001454]:sd t6, 1376(ra)<br>    |
| 103|[0x80003880]<br>0x0002800155555555|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                              |[0x8000147c]:KSTSA32 t6, t5, t4<br> [0x80001480]:sd t6, 1392(ra)<br>    |
| 104|[0x80003890]<br>0x00001FF9F7FBFFFE|- rs1_w1_val == 8192<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                                |[0x800014a8]:KSTSA32 t6, t5, t4<br> [0x800014ac]:sd t6, 1408(ra)<br>    |
| 105|[0x800038a0]<br>0x4000100000808000|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                               |[0x800014d0]:KSTSA32 t6, t5, t4<br> [0x800014d4]:sd t6, 1424(ra)<br>    |
| 106|[0x800038b0]<br>0x000002017FFFFFFF|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                |[0x800014f4]:KSTSA32 t6, t5, t4<br> [0x800014f8]:sd t6, 1440(ra)<br>    |
| 107|[0x800038c0]<br>0x00001002FFFFFFFE|- rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                  |[0x80001518]:KSTSA32 t6, t5, t4<br> [0x8000151c]:sd t6, 1456(ra)<br>    |
| 108|[0x800038d0]<br>0x000010213FFFFFFE|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001540]:KSTSA32 t6, t5, t4<br> [0x80001544]:sd t6, 1472(ra)<br>    |
| 109|[0x800038e0]<br>0xC0000006C1FFFFFF|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                                        |[0x80001568]:KSTSA32 t6, t5, t4<br> [0x8000156c]:sd t6, 1488(ra)<br>    |
| 110|[0x800038f0]<br>0xFE000010FFDFFFF6|- rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                                           |[0x80001590]:KSTSA32 t6, t5, t4<br> [0x80001594]:sd t6, 1504(ra)<br>    |
| 111|[0x80003900]<br>0x80000000EFFFDFFE|- rs2_w0_val == -8193<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                                               |[0x800015c8]:KSTSA32 t6, t5, t4<br> [0x800015cc]:sd t6, 1520(ra)<br>    |
| 112|[0x80003910]<br>0x003FE0003BFFFFFF|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                                                          |[0x800015f0]:KSTSA32 t6, t5, t4<br> [0x800015f4]:sd t6, 1536(ra)<br>    |
| 113|[0x80003920]<br>0x00008011FDFFFFFD|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                                          |[0x80001618]:KSTSA32 t6, t5, t4<br> [0x8000161c]:sd t6, 1552(ra)<br>    |
| 114|[0x80003930]<br>0x40000003FEFF7FFE|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                                             |[0x80001648]:KSTSA32 t6, t5, t4<br> [0x8000164c]:sd t6, 1568(ra)<br>    |
| 115|[0x80003940]<br>0x00000002FF7FEFFE|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                                           |[0x80001674]:KSTSA32 t6, t5, t4<br> [0x80001678]:sd t6, 1584(ra)<br>    |
| 116|[0x80003950]<br>0x00A00001000FF7FF|- rs2_w1_val == -2097153<br> - rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                                 |[0x800016a4]:KSTSA32 t6, t5, t4<br> [0x800016a8]:sd t6, 1600(ra)<br>    |
| 117|[0x80003960]<br>0xA9AAAAAAFFFE7FFF|- rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                                            |[0x800016d8]:KSTSA32 t6, t5, t4<br> [0x800016dc]:sd t6, 1616(ra)<br>    |
| 118|[0x80003970]<br>0x20000006FFFFFEEE|- rs2_w0_val == -257<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                       |[0x80001700]:KSTSA32 t6, t5, t4<br> [0x80001704]:sd t6, 1632(ra)<br>    |
| 119|[0x80003980]<br>0x3FFFFFF7FF7FFF7E|- rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                                               |[0x8000172c]:KSTSA32 t6, t5, t4<br> [0x80001730]:sd t6, 1648(ra)<br>    |
| 120|[0x80003990]<br>0x0080000100007FBF|- rs2_w0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                |[0x8000174c]:KSTSA32 t6, t5, t4<br> [0x80001750]:sd t6, 1664(ra)<br>    |
| 121|[0x800039a0]<br>0x7FFFEFFFEFFFBFFE|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                             |[0x8000177c]:KSTSA32 t6, t5, t4<br> [0x80001780]:sd t6, 1680(ra)<br>    |
| 122|[0x800039b0]<br>0x55555550FFFFFFF5|- rs2_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                |[0x800017a4]:KSTSA32 t6, t5, t4<br> [0x800017a8]:sd t6, 1696(ra)<br>    |
| 123|[0x800039c0]<br>0x55555D56FFFFFFFF|- rs2_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                 |[0x800017cc]:KSTSA32 t6, t5, t4<br> [0x800017d0]:sd t6, 1712(ra)<br>    |
| 124|[0x800039d0]<br>0xFF100000FEFFFF7E|- rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                                               |[0x800017fc]:KSTSA32 t6, t5, t4<br> [0x80001800]:sd t6, 1728(ra)<br>    |
| 125|[0x800039e0]<br>0xFFBFFDFFFFFFFDDE|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                |[0x80001824]:KSTSA32 t6, t5, t4<br> [0x80001828]:sd t6, 1744(ra)<br>    |
| 126|[0x800039f0]<br>0x0000010100EFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                           |[0x80001848]:KSTSA32 t6, t5, t4<br> [0x8000184c]:sd t6, 1760(ra)<br>    |
| 127|[0x80003a10]<br>0xBFFFF80060000000|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                                                          |[0x80001894]:KSTSA32 t6, t5, t4<br> [0x80001898]:sd t6, 1792(ra)<br>    |
| 128|[0x80003a20]<br>0x10008001FFFFEFFA|- rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                              |[0x800018c4]:KSTSA32 t6, t5, t4<br> [0x800018c8]:sd t6, 1808(ra)<br>    |
