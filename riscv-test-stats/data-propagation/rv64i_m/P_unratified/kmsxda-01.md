
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b50')]      |
| SIG_REGION                | [('0x80003210', '0x800038d0', '216 dwords')]      |
| COV_LABELS                | kmsxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmsxda-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 216      |
| STAT1                     | 104      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 108     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c4]:KMSXDA t6, t5, t4
      [0x800019c8]:sd t6, 1152(ra)
 -- Signature Address: 0x80003850 Data: 0xFAA539041687D84E
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val == rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -1
      - rs2_h0_val == 256
      - rs1_h3_val == 32
      - rs1_h1_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a94]:KMSXDA t6, t5, t4
      [0x80001a98]:sd t6, 1216(ra)
 -- Signature Address: 0x80003890 Data: 0x029E67AE1668BE12
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -65
      - rs2_h0_val == 16384
      - rs1_h3_val == -8193
      - rs1_h2_val == -65
      - rs1_h1_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ad0]:KMSXDA t6, t5, t4
      [0x80001ad4]:sd t6, 1232(ra)
 -- Signature Address: 0x800038a0 Data: 0x029E639E16786E8D
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val == rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -9
      - rs2_h2_val == -65
      - rs2_h1_val == -8193
      - rs2_h0_val == -4097
      - rs1_h2_val == -65
      - rs1_h1_val == -5
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b40]:KMSXDA t6, t5, t4
      [0x80001b44]:sd t6, 1264(ra)
 -- Signature Address: 0x800038c0 Data: 0x031E80EF167D43D6
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 512
      - rs2_h2_val == 21845
      - rs2_h1_val == -21846
      - rs2_h0_val == -9
      - rs1_h3_val == -1
      - rs1_h2_val == -2
      - rs1_h1_val == 1024
      - rs1_h0_val == 16






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmsxda', 'rs1 : x5', 'rs2 : x5', 'rd : x11', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -65', 'rs2_h0_val == 16384', 'rs1_h1_val == -65', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800003c8]:KMSXDA a1, t0, t0
	-[0x800003cc]:sd a1, 0(tp)
Current Store : [0x800003d0] : sd t0, 8(tp) -- Store: [0x80003218]:0xFFF63FFFFFBF4000




Last Coverpoint : ['rs1 : x18', 'rs2 : x18', 'rd : x18', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -17', 'rs2_h1_val == -3', 'rs1_h3_val == 21845', 'rs1_h2_val == -17', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x8000040c]:KMSXDA s2, s2, s2
	-[0x80000410]:sd s2, 16(tp)
Current Store : [0x80000414] : sd s2, 24(tp) -- Store: [0x80003228]:0x55615539FFFEBFF9




Last Coverpoint : ['rs1 : x21', 'rs2 : x15', 'rd : x23', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 32', 'rs2_h2_val == 32767', 'rs2_h1_val == -2', 'rs2_h0_val == 2', 'rs1_h3_val == -1025', 'rs1_h1_val == 32767', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000440]:KMSXDA s7, s5, a5
	-[0x80000444]:sd s7, 32(tp)
Current Store : [0x80000448] : sd s5, 40(tp) -- Store: [0x80003238]:0xFBFF00077FFF0000




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x15', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -33', 'rs2_h2_val == -1025', 'rs1_h3_val == 64', 'rs1_h2_val == 16384', 'rs1_h1_val == 16384', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000474]:KMSXDA a5, a5, s5
	-[0x80000478]:sd a5, 48(tp)
Current Store : [0x8000047c] : sd a5, 56(tp) -- Store: [0x80003248]:0x004980404001BF80




Last Coverpoint : ['rs1 : x14', 'rs2 : x19', 'rd : x19', 'rs2 == rd != rs1', 'rs2_h3_val == 32767', 'rs2_h0_val == 128', 'rs1_h3_val == -65']
Last Code Sequence : 
	-[0x800004b0]:KMSXDA s3, a4, s3
	-[0x800004b4]:sd s3, 64(tp)
Current Store : [0x800004b8] : sd a4, 72(tp) -- Store: [0x80003258]:0xFFBF00067FFF3FFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x16', 'rs2_h3_val == -5', 'rs2_h2_val == -9', 'rs2_h0_val == 21845', 'rs1_h3_val == 128', 'rs1_h2_val == -2049', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800004ec]:KMSXDA a6, s1, a0
	-[0x800004f0]:sd a6, 80(tp)
Current Store : [0x800004f4] : sd s1, 88(tp) -- Store: [0x80003268]:0x0080F7FF00020009




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rd : x25', 'rs2_h2_val == 128', 'rs2_h1_val == 1', 'rs2_h0_val == 2048', 'rs1_h3_val == -2', 'rs1_h2_val == 128', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000524]:KMSXDA s9, t3, s10
	-[0x80000528]:sd s9, 96(tp)
Current Store : [0x8000052c] : sd t3, 104(tp) -- Store: [0x80003278]:0xFFFE008000010010




Last Coverpoint : ['rs1 : x26', 'rs2 : x3', 'rd : x2', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000560]:KMSXDA sp, s10, gp
	-[0x80000564]:sd sp, 112(tp)
Current Store : [0x80000568] : sd s10, 120(tp) -- Store: [0x80003288]:0x00400005FFFCBFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x30', 'rs2_h3_val == -1', 'rs2_h2_val == -513', 'rs1_h2_val == -65', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000594]:KMSXDA t5, a0, ra
	-[0x80000598]:sd t5, 128(tp)
Current Store : [0x8000059c] : sd a0, 136(tp) -- Store: [0x80003298]:0x5555FFBFFF7F3FFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x7', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 64', 'rs2_h2_val == -4097', 'rs2_h1_val == -2049', 'rs2_h0_val == -17', 'rs1_h3_val == -8193', 'rs1_h2_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800005c8]:KMSXDA t2, a3, sp
	-[0x800005cc]:sd t2, 144(tp)
Current Store : [0x800005d0] : sd a3, 152(tp) -- Store: [0x800032a8]:0xDFFFFFFF7FFFF7FF




Last Coverpoint : ['rs1 : x20', 'rs2 : x24', 'rd : x14', 'rs2_h3_val == -21846', 'rs1_h3_val == 16', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x8000060c]:KMSXDA a4, s4, s8
	-[0x80000610]:sd a4, 160(tp)
Current Store : [0x80000614] : sd s4, 168(tp) -- Store: [0x800032b8]:0x0010FFFD0002FFF6




Last Coverpoint : ['rs1 : x22', 'rs2 : x9', 'rd : x6', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == -16385', 'rs2_h0_val == -8193', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000648]:KMSXDA t1, s6, s1
	-[0x8000064c]:sd t1, 176(tp)
Current Store : [0x80000650] : sd s6, 184(tp) -- Store: [0x800032c8]:0x0007FFFF0003FFFB




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rd : x8', 'rs2_h3_val == -8193', 'rs2_h2_val == -1', 'rs2_h1_val == 1024', 'rs2_h0_val == 4096', 'rs1_h3_val == 16384', 'rs1_h2_val == -129', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000680]:KMSXDA fp, s9, t4
	-[0x80000684]:sd fp, 192(tp)
Current Store : [0x80000688] : sd s9, 200(tp) -- Store: [0x800032d8]:0x4000FF7F0040C000




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x29', 'rs2_h3_val == -4097', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800006b0]:KMSXDA t4, t5, a1
	-[0x800006b4]:sd t4, 208(tp)
Current Store : [0x800006b8] : sd t5, 216(tp) -- Store: [0x800032e8]:0xFFF9000920000006




Last Coverpoint : ['rs1 : x6', 'rs2 : x31', 'rd : x22', 'rs2_h3_val == -2049', 'rs1_h3_val == -33', 'rs1_h2_val == -8193', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800006e0]:KMSXDA s6, t1, t6
	-[0x800006e4]:sd s6, 224(tp)
Current Store : [0x800006e8] : sd t1, 232(tp) -- Store: [0x800032f8]:0xFFDFDFFFFBFFFFFA




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x26', 'rs2_h3_val == -1025', 'rs2_h1_val == -129', 'rs2_h0_val == 256', 'rs1_h2_val == -9', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000724]:KMSXDA s10, s11, a7
	-[0x80000728]:sd s10, 0(t0)
Current Store : [0x8000072c] : sd s11, 8(t0) -- Store: [0x80003308]:0xFFFCFFF700050800




Last Coverpoint : ['rs1 : x8', 'rs2 : x14', 'rd : x24', 'rs1_h0_val == -32768', 'rs2_h3_val == -513', 'rs2_h2_val == 8', 'rs2_h1_val == 512', 'rs1_h3_val == -9', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x8000075c]:KMSXDA s8, fp, a4
	-[0x80000760]:sd s8, 16(t0)
Current Store : [0x80000764] : sd fp, 24(t0) -- Store: [0x80003318]:0xFFF70008FFFD8000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x4', 'rs2_h3_val == -257', 'rs2_h1_val == -513', 'rs1_h3_val == -1', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80000798]:KMSXDA tp, ra, s4
	-[0x8000079c]:sd tp, 32(t0)
Current Store : [0x800007a0] : sd ra, 40(t0) -- Store: [0x80003328]:0xFFFF004040003FFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x21', 'rs2_h3_val == -129', 'rs2_h1_val == 0', 'rs1_h3_val == 1024', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x800007cc]:KMSXDA s5, t4, s6
	-[0x800007d0]:sd s5, 48(t0)
Current Store : [0x800007d4] : sd t4, 56(t0) -- Store: [0x80003338]:0x04000020FFF9BFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rd : x3', 'rs2_h3_val == -65', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000810]:KMSXDA gp, tp, s7
	-[0x80000814]:sd gp, 64(t0)
Current Store : [0x80000818] : sd tp, 72(t0) -- Store: [0x80003348]:0x5555FFEF4000FFF6




Last Coverpoint : ['rs1 : x31', 'rs2 : x13', 'rd : x12', 'rs2_h3_val == -17', 'rs2_h1_val == -1', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80000848]:KMSXDA a2, t6, a3
	-[0x8000084c]:sd a2, 80(t0)
Current Store : [0x80000850] : sd t6, 88(t0) -- Store: [0x80003358]:0xFBFF020000064000




Last Coverpoint : ['rs1 : x11', 'rs2 : x7', 'rd : x0', 'rs2_h3_val == -9', 'rs2_h2_val == -65', 'rs2_h1_val == -8193', 'rs2_h0_val == -4097', 'rs1_h1_val == -5', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000884]:KMSXDA zero, a1, t2
	-[0x80000888]:sd zero, 96(t0)
Current Store : [0x8000088c] : sd a1, 104(t0) -- Store: [0x80003368]:0xFFF9FFBFFFFB0080




Last Coverpoint : ['rs1 : x7', 'rs2 : x27', 'rd : x10', 'rs2_h3_val == -3', 'rs2_h2_val == 1', 'rs2_h1_val == -5', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x800008b8]:KMSXDA a0, t2, s11
	-[0x800008bc]:sd a0, 112(t0)
Current Store : [0x800008c0] : sd t2, 120(t0) -- Store: [0x80003378]:0x0080000420000080




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x9', 'rs2_h3_val == -2']
Last Code Sequence : 
	-[0x800008ec]:KMSXDA s1, a6, fp
	-[0x800008f0]:sd s1, 128(t0)
Current Store : [0x800008f4] : sd a6, 136(t0) -- Store: [0x80003388]:0xFFF7FFF6FFFAC000




Last Coverpoint : ['rs1 : x19', 'rs2 : x6', 'rd : x17', 'rs2_h3_val == -32768', 'rs2_h2_val == 1024', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000928]:KMSXDA a7, s3, t1
	-[0x8000092c]:sd a7, 144(t0)
Current Store : [0x80000930] : sd s3, 152(t0) -- Store: [0x80003398]:0x4000FFEF7FFFFBFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x30', 'rd : x31', 'rs2_h3_val == 16384', 'rs2_h2_val == -2', 'rs2_h0_val == -65', 'rs1_h3_val == 4096', 'rs1_h1_val == 512', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000964]:KMSXDA t6, sp, t5
	-[0x80000968]:sd t6, 160(t0)
Current Store : [0x8000096c] : sd sp, 168(t0) -- Store: [0x800033a8]:0x1000FFF902000020




Last Coverpoint : ['rs1 : x24', 'rs2 : x4', 'rd : x1', 'rs2_h3_val == 8192', 'rs2_h2_val == 64', 'rs2_h0_val == 1024', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80000994]:KMSXDA ra, s8, tp
	-[0x80000998]:sd ra, 176(t0)
Current Store : [0x8000099c] : sd s8, 184(t0) -- Store: [0x800033b8]:0x0010555520000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x20', 'rs2_h3_val == 4096', 'rs1_h1_val == 0', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800009d0]:KMSXDA s4, a2, s9
	-[0x800009d4]:sd s4, 192(t0)
Current Store : [0x800009d8] : sd a2, 200(t0) -- Store: [0x800033c8]:0x008000080000FEFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x16', 'rd : x13', 'rs2_h3_val == 2048', 'rs2_h1_val == -257', 'rs2_h0_val == -1025', 'rs1_h3_val == 32767', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000a14]:KMSXDA a3, a7, a6
	-[0x80000a18]:sd a3, 0(ra)
Current Store : [0x80000a1c] : sd a7, 8(ra) -- Store: [0x800033d8]:0x7FFFFFF6FEFFBFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x28', 'rs2_h3_val == 0', 'rs1_h3_val == -4097', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000a54]:KMSXDA t3, gp, zero
	-[0x80000a58]:sd t3, 16(ra)
Current Store : [0x80000a5c] : sd gp, 24(ra) -- Store: [0x800033e8]:0xEFFFDFFFFFFAFFEF




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x27', 'rs2_h3_val == 512', 'rs2_h2_val == 21845', 'rs2_h1_val == -21846', 'rs2_h0_val == -9', 'rs1_h3_val == 0', 'rs1_h2_val == 0']
Last Code Sequence : 
	-[0x80000a84]:KMSXDA s11, zero, a2
	-[0x80000a88]:sd s11, 32(ra)
Current Store : [0x80000a8c] : sd zero, 40(ra) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x5', 'rs2_h3_val == 256', 'rs2_h0_val == -513', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000ab4]:KMSXDA t0, s7, t3
	-[0x80000ab8]:sd t0, 48(ra)
Current Store : [0x80000abc] : sd s7, 56(ra) -- Store: [0x80003408]:0x7FFFDFFF0001FFFE




Last Coverpoint : ['rs2_h3_val == 128', 'rs2_h2_val == -16385', 'rs2_h1_val == 4', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000ae8]:KMSXDA t6, t5, t4
	-[0x80000aec]:sd t6, 64(ra)
Current Store : [0x80000af0] : sd t5, 72(ra) -- Store: [0x80003418]:0xEFFF020080000007




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h0_val == -32768', 'rs1_h2_val == 2', 'rs1_h1_val == -513', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000b1c]:KMSXDA t6, t5, t4
	-[0x80000b20]:sd t6, 80(ra)
Current Store : [0x80000b24] : sd t5, 88(ra) -- Store: [0x80003428]:0xFFBF0002FDFF0100




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == -129', 'rs1_h1_val == 32', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000b58]:KMSXDA t6, t5, t4
	-[0x80000b5c]:sd t6, 96(ra)
Current Store : [0x80000b60] : sd t5, 104(ra) -- Store: [0x80003438]:0xDFFF00080020DFFF




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h1_val == -9', 'rs2_h0_val == -16385', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000b8c]:KMSXDA t6, t5, t4
	-[0x80000b90]:sd t6, 112(ra)
Current Store : [0x80000b94] : sd t5, 120(ra) -- Store: [0x80003448]:0xFFBFF7FFEFFFFFFA




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -16385', 'rs2_h0_val == -1', 'rs1_h3_val == 256', 'rs1_h2_val == -16385', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000bbc]:KMSXDA t6, t5, t4
	-[0x80000bc0]:sd t6, 128(ra)
Current Store : [0x80000bc4] : sd t5, 136(ra) -- Store: [0x80003458]:0x0100BFFFFFFA7FFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000bf4]:KMSXDA t6, t5, t4
	-[0x80000bf8]:sd t6, 144(ra)
Current Store : [0x80000bfc] : sd t5, 152(ra) -- Store: [0x80003468]:0x40003FFF0003BFFF




Last Coverpoint : ['rs1_h3_val == -513', 'rs1_h1_val == -2', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000c30]:KMSXDA t6, t5, t4
	-[0x80000c34]:sd t6, 160(ra)
Current Store : [0x80000c38] : sd t5, 168(ra) -- Store: [0x80003478]:0xFDFF0000FFFEFFBF




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 4096', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000c68]:KMSXDA t6, t5, t4
	-[0x80000c6c]:sd t6, 176(ra)
Current Store : [0x80000c70] : sd t5, 184(ra) -- Store: [0x80003488]:0x4000FFFF10000001




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == -129', 'rs1_h3_val == -32768', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000cac]:KMSXDA t6, t5, t4
	-[0x80000cb0]:sd t6, 192(ra)
Current Store : [0x80000cb4] : sd t5, 200(ra) -- Store: [0x80003498]:0x8000FFFD0800FFFA




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_h1_val == 256', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000ce8]:KMSXDA t6, t5, t4
	-[0x80000cec]:sd t6, 208(ra)
Current Store : [0x80000cf0] : sd t5, 216(ra) -- Store: [0x800034a8]:0x1000FF7F01000008




Last Coverpoint : ['rs1_h3_val == 8192', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000d1c]:KMSXDA t6, t5, t4
	-[0x80000d20]:sd t6, 224(ra)
Current Store : [0x80000d24] : sd t5, 232(ra) -- Store: [0x800034b8]:0x2000008000800009




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_h3_val == -257', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d54]:KMSXDA t6, t5, t4
	-[0x80000d58]:sd t6, 240(ra)
Current Store : [0x80000d5c] : sd t5, 248(ra) -- Store: [0x800034c8]:0xFEFFC00000100010




Last Coverpoint : ['rs2_h2_val == -21846', 'rs2_h0_val == -5', 'rs1_h3_val == 2048', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d90]:KMSXDA t6, t5, t4
	-[0x80000d94]:sd t6, 256(ra)
Current Store : [0x80000d98] : sd t5, 264(ra) -- Store: [0x800034d8]:0x0800FFF700080006




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h1_val == 16384', 'rs1_h1_val == 4', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000dc8]:KMSXDA t6, t5, t4
	-[0x80000dcc]:sd t6, 272(ra)
Current Store : [0x80000dd0] : sd t5, 280(ra) -- Store: [0x800034e8]:0x0010C00000040400




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h0_val == 4', 'rs1_h1_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000df8]:KMSXDA t6, t5, t4
	-[0x80000dfc]:sd t6, 288(ra)
Current Store : [0x80000e00] : sd t5, 296(ra) -- Store: [0x800034f8]:0x04003FFFFFFFFFDF




Last Coverpoint : ['rs1_h2_val == -2', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000e30]:KMSXDA t6, t5, t4
	-[0x80000e34]:sd t6, 304(ra)
Current Store : [0x80000e38] : sd t5, 312(ra) -- Store: [0x80003508]:0x3FFFFFFE0007AAAA




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h3_val == 2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e68]:KMSXDA t6, t5, t4
	-[0x80000e6c]:sd t6, 320(ra)
Current Store : [0x80000e70] : sd t5, 328(ra) -- Store: [0x80003518]:0x0002FFF9FBFF5555




Last Coverpoint : ['rs1_h2_val == -4097', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000eac]:KMSXDA t6, t5, t4
	-[0x80000eb0]:sd t6, 336(ra)
Current Store : [0x80000eb4] : sd t5, 344(ra) -- Store: [0x80003528]:0x2000EFFF3FFFEFFF




Last Coverpoint : ['rs2_h1_val == -32768', 'rs2_h0_val == -257', 'rs1_h2_val == 8192', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ee0]:KMSXDA t6, t5, t4
	-[0x80000ee4]:sd t6, 352(ra)
Current Store : [0x80000ee8] : sd t5, 360(ra) -- Store: [0x80003538]:0x00002000FFFFFDFF




Last Coverpoint : ['rs1_h3_val == -5', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000f1c]:KMSXDA t6, t5, t4
	-[0x80000f20]:sd t6, 368(ra)
Current Store : [0x80000f24] : sd t5, 376(ra) -- Store: [0x80003548]:0xFFFBFFFF0002FF7F




Last Coverpoint : ['rs1_h1_val == -8193', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000f4c]:KMSXDA t6, t5, t4
	-[0x80000f50]:sd t6, 384(ra)
Current Store : [0x80000f54] : sd t5, 392(ra) -- Store: [0x80003558]:0x80000020DFFFFFF7




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f84]:KMSXDA t6, t5, t4
	-[0x80000f88]:sd t6, 400(ra)
Current Store : [0x80000f8c] : sd t5, 408(ra) -- Store: [0x80003568]:0x0006F7FFFFFDFFFD




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000fbc]:KMSXDA t6, t5, t4
	-[0x80000fc0]:sd t6, 416(ra)
Current Store : [0x80000fc4] : sd t5, 424(ra) -- Store: [0x80003578]:0xFFF9000680002000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h2_val == -32768', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000ffc]:KMSXDA t6, t5, t4
	-[0x80001000]:sd t6, 432(ra)
Current Store : [0x80001004] : sd t5, 440(ra) -- Store: [0x80003588]:0xEFFF800008001000




Last Coverpoint : ['rs1_h3_val == 8', 'rs1_h2_val == 16', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001030]:KMSXDA t6, t5, t4
	-[0x80001034]:sd t6, 448(ra)
Current Store : [0x80001038] : sd t5, 456(ra) -- Store: [0x80003598]:0x0008001008000200




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001064]:KMSXDA t6, t5, t4
	-[0x80001068]:sd t6, 464(ra)
Current Store : [0x8000106c] : sd t5, 472(ra) -- Store: [0x800035a8]:0xFEFFFFFE20000040




Last Coverpoint : ['rs2_h2_val == 16384', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800010a0]:KMSXDA t6, t5, t4
	-[0x800010a4]:sd t6, 480(ra)
Current Store : [0x800010a8] : sd t5, 488(ra) -- Store: [0x800035b8]:0x7FFFFFFAFFF60004




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800010d4]:KMSXDA t6, t5, t4
	-[0x800010d8]:sd t6, 496(ra)
Current Store : [0x800010dc] : sd t5, 504(ra) -- Store: [0x800035c8]:0xFDFF000420000002




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001108]:KMSXDA t6, t5, t4
	-[0x8000110c]:sd t6, 512(ra)
Current Store : [0x80001110] : sd t5, 520(ra) -- Store: [0x800035d8]:0x0005FFFC00200003




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80001144]:KMSXDA t6, t5, t4
	-[0x80001148]:sd t6, 528(ra)
Current Store : [0x8000114c] : sd t5, 536(ra) -- Store: [0x800035e8]:0xFFBFFFF7EFFFFFF8




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001178]:KMSXDA t6, t5, t4
	-[0x8000117c]:sd t6, 544(ra)
Current Store : [0x80001180] : sd t5, 552(ra) -- Store: [0x800035f8]:0x0100FF7F08000040




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800011bc]:KMSXDA t6, t5, t4
	-[0x800011c0]:sd t6, 560(ra)
Current Store : [0x800011c4] : sd t5, 568(ra) -- Store: [0x80003608]:0xEFFFFF7FFFDF0006




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x800011f0]:KMSXDA t6, t5, t4
	-[0x800011f4]:sd t6, 576(ra)
Current Store : [0x800011f8] : sd t5, 584(ra) -- Store: [0x80003618]:0xFFF67FFF00800200




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000122c]:KMSXDA t6, t5, t4
	-[0x80001230]:sd t6, 592(ra)
Current Store : [0x80001234] : sd t5, 600(ra) -- Store: [0x80003628]:0xFFF9F7FF0005FFF7




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80001260]:KMSXDA t6, t5, t4
	-[0x80001264]:sd t6, 608(ra)
Current Store : [0x80001268] : sd t5, 616(ra) -- Store: [0x80003638]:0x0400FDFFFFF60008




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h3_val == -129', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80001294]:KMSXDA t6, t5, t4
	-[0x80001298]:sd t6, 624(ra)
Current Store : [0x8000129c] : sd t5, 632(ra) -- Store: [0x80003648]:0xFF7FFBFF1000FFFA




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800012d0]:KMSXDA t6, t5, t4
	-[0x800012d4]:sd t6, 640(ra)
Current Store : [0x800012d8] : sd t5, 648(ra) -- Store: [0x80003658]:0xFDFF0001FFDF0200




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h0_val == 8', 'rs1_h3_val == 512', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80001308]:KMSXDA t6, t5, t4
	-[0x8000130c]:sd t6, 656(ra)
Current Store : [0x80001310] : sd t5, 664(ra) -- Store: [0x80003668]:0x0200FFF804000004




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x8000133c]:KMSXDA t6, t5, t4
	-[0x80001340]:sd t6, 672(ra)
Current Store : [0x80001344] : sd t5, 680(ra) -- Store: [0x80003678]:0xFFF8FFF910000007




Last Coverpoint : ['rs1_h3_val == -21846', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001378]:KMSXDA t6, t5, t4
	-[0x8000137c]:sd t6, 688(ra)
Current Store : [0x80001380] : sd t5, 696(ra) -- Store: [0x80003688]:0xAAAA0400FFF90080




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x800013b4]:KMSXDA t6, t5, t4
	-[0x800013b8]:sd t6, 704(ra)
Current Store : [0x800013bc] : sd t5, 712(ra) -- Store: [0x80003698]:0xBFFFC00000060010




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x800013e4]:KMSXDA t6, t5, t4
	-[0x800013e8]:sd t6, 720(ra)
Current Store : [0x800013ec] : sd t5, 728(ra) -- Store: [0x800036a8]:0xF7FFFFF6FFFA2000




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x80001418]:KMSXDA t6, t5, t4
	-[0x8000141c]:sd t6, 736(ra)
Current Store : [0x80001420] : sd t5, 744(ra) -- Store: [0x800036b8]:0xFFEF7FFFFFFD2000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001448]:KMSXDA t6, t5, t4
	-[0x8000144c]:sd t6, 752(ra)
Current Store : [0x80001450] : sd t5, 760(ra) -- Store: [0x800036c8]:0xFFDF7FFFFFFDFFFF




Last Coverpoint : ['rs1_h3_val == -3']
Last Code Sequence : 
	-[0x8000147c]:KMSXDA t6, t5, t4
	-[0x80001480]:sd t6, 768(ra)
Current Store : [0x80001484] : sd t5, 776(ra) -- Store: [0x800036d8]:0xFFFD5555FFFBAAAA




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x800014b8]:KMSXDA t6, t5, t4
	-[0x800014bc]:sd t6, 784(ra)
Current Store : [0x800014c0] : sd t5, 792(ra) -- Store: [0x800036e8]:0x2000FFFB00070010




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800014ec]:KMSXDA t6, t5, t4
	-[0x800014f0]:sd t6, 800(ra)
Current Store : [0x800014f4] : sd t5, 808(ra) -- Store: [0x800036f8]:0x002002000003BFFF




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80001528]:KMSXDA t6, t5, t4
	-[0x8000152c]:sd t6, 816(ra)
Current Store : [0x80001530] : sd t5, 824(ra) -- Store: [0x80003708]:0x0004FBFF0001EFFF




Last Coverpoint : ['rs2_h2_val == -33']
Last Code Sequence : 
	-[0x80001564]:KMSXDA t6, t5, t4
	-[0x80001568]:sd t6, 832(ra)
Current Store : [0x8000156c] : sd t5, 840(ra) -- Store: [0x80003718]:0xFFF7FFFC00090020




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80001594]:KMSXDA t6, t5, t4
	-[0x80001598]:sd t6, 848(ra)
Current Store : [0x8000159c] : sd t5, 856(ra) -- Store: [0x80003728]:0x00010005C0008000




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x800015c4]:KMSXDA t6, t5, t4
	-[0x800015c8]:sd t6, 864(ra)
Current Store : [0x800015cc] : sd t5, 872(ra) -- Store: [0x80003738]:0xC000FFF600055555




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001600]:KMSXDA t6, t5, t4
	-[0x80001604]:sd t6, 880(ra)
Current Store : [0x80001608] : sd t5, 888(ra) -- Store: [0x80003748]:0x4000AAAA00003FFF




Last Coverpoint : ['rs2_h2_val == 4096']
Last Code Sequence : 
	-[0x80001638]:KMSXDA t6, t5, t4
	-[0x8000163c]:sd t6, 896(ra)
Current Store : [0x80001640] : sd t5, 904(ra) -- Store: [0x80003758]:0xFFBFFFEFFF7F0001




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x8000166c]:KMSXDA t6, t5, t4
	-[0x80001670]:sd t6, 912(ra)
Current Store : [0x80001674] : sd t5, 920(ra) -- Store: [0x80003768]:0x0000FFF8C0000010




Last Coverpoint : ['rs1_h2_val == -257', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800016a4]:KMSXDA t6, t5, t4
	-[0x800016a8]:sd t6, 928(ra)
Current Store : [0x800016ac] : sd t5, 936(ra) -- Store: [0x80003778]:0x0200FEFFFFF7F7FF




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800016d8]:KMSXDA t6, t5, t4
	-[0x800016dc]:sd t6, 944(ra)
Current Store : [0x800016e0] : sd t5, 952(ra) -- Store: [0x80003788]:0x0000FFFCF7FFFBFF




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80001710]:KMSXDA t6, t5, t4
	-[0x80001714]:sd t6, 960(ra)
Current Store : [0x80001718] : sd t5, 968(ra) -- Store: [0x80003798]:0xFFF9FFDFFFFA8000




Last Coverpoint : ['rs2_h3_val == 1024', 'rs2_h2_val == 16', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x8000174c]:KMSXDA t6, t5, t4
	-[0x80001750]:sd t6, 976(ra)
Current Store : [0x80001754] : sd t5, 984(ra) -- Store: [0x800037a8]:0xFFEF01000006EFFF




Last Coverpoint : ['rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001784]:KMSXDA t6, t5, t4
	-[0x80001788]:sd t6, 992(ra)
Current Store : [0x8000178c] : sd t5, 1000(ra) -- Store: [0x800037b8]:0x0010100000060006




Last Coverpoint : ['rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800017bc]:KMSXDA t6, t5, t4
	-[0x800017c0]:sd t6, 1008(ra)
Current Store : [0x800017c4] : sd t5, 1016(ra) -- Store: [0x800037c8]:0xFFFA0800FFF72000




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x800017f0]:KMSXDA t6, t5, t4
	-[0x800017f4]:sd t6, 1024(ra)
Current Store : [0x800017f8] : sd t5, 1032(ra) -- Store: [0x800037d8]:0xFBFF000400020003




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x8000182c]:KMSXDA t6, t5, t4
	-[0x80001830]:sd t6, 1040(ra)
Current Store : [0x80001834] : sd t5, 1048(ra) -- Store: [0x800037e8]:0xFBFF0003EFFFAAAA




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001868]:KMSXDA t6, t5, t4
	-[0x8000186c]:sd t6, 1056(ra)
Current Store : [0x80001870] : sd t5, 1064(ra) -- Store: [0x800037f8]:0xFFFDFDFFAAAAFFFB




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x8000189c]:KMSXDA t6, t5, t4
	-[0x800018a0]:sd t6, 1072(ra)
Current Store : [0x800018a4] : sd t5, 1080(ra) -- Store: [0x80003808]:0x0040FFF95555C000




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800018e0]:KMSXDA t6, t5, t4
	-[0x800018e4]:sd t6, 1088(ra)
Current Store : [0x800018e8] : sd t5, 1096(ra) -- Store: [0x80003818]:0xC000FFF9BFFF0001




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x8000191c]:KMSXDA t6, t5, t4
	-[0x80001920]:sd t6, 1104(ra)
Current Store : [0x80001924] : sd t5, 1112(ra) -- Store: [0x80003828]:0x0006FFFAFDFFF7FF




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001950]:KMSXDA t6, t5, t4
	-[0x80001954]:sd t6, 1120(ra)
Current Store : [0x80001958] : sd t5, 1128(ra) -- Store: [0x80003838]:0xFFFEDFFFFFF80008




Last Coverpoint : ['rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80001994]:KMSXDA t6, t5, t4
	-[0x80001998]:sd t6, 1136(ra)
Current Store : [0x8000199c] : sd t5, 1144(ra) -- Store: [0x80003848]:0x0400FDFF00400010




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -1', 'rs2_h0_val == 256', 'rs1_h3_val == 32', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800019c4]:KMSXDA t6, t5, t4
	-[0x800019c8]:sd t6, 1152(ra)
Current Store : [0x800019cc] : sd t5, 1160(ra) -- Store: [0x80003858]:0x0020C000FFBFFFF8




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800019f8]:KMSXDA t6, t5, t4
	-[0x800019fc]:sd t6, 1168(ra)
Current Store : [0x80001a00] : sd t5, 1176(ra) -- Store: [0x80003868]:0x0006FFFEAAAA5555




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001a34]:KMSXDA t6, t5, t4
	-[0x80001a38]:sd t6, 1184(ra)
Current Store : [0x80001a3c] : sd t5, 1192(ra) -- Store: [0x80003878]:0xFFF6FFBFFFEF0020




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001a64]:KMSXDA t6, t5, t4
	-[0x80001a68]:sd t6, 1200(ra)
Current Store : [0x80001a6c] : sd t5, 1208(ra) -- Store: [0x80003888]:0xFFFD0000FFBFFEFF




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -65', 'rs2_h0_val == 16384', 'rs1_h3_val == -8193', 'rs1_h2_val == -65', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001a94]:KMSXDA t6, t5, t4
	-[0x80001a98]:sd t6, 1216(ra)
Current Store : [0x80001a9c] : sd t5, 1224(ra) -- Store: [0x80003898]:0xDFFFFFBFFFF78000




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -9', 'rs2_h2_val == -65', 'rs2_h1_val == -8193', 'rs2_h0_val == -4097', 'rs1_h2_val == -65', 'rs1_h1_val == -5', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001ad0]:KMSXDA t6, t5, t4
	-[0x80001ad4]:sd t6, 1232(ra)
Current Store : [0x80001ad8] : sd t5, 1240(ra) -- Store: [0x800038a8]:0xFFF9FFBFFFFB0080




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80001b10]:KMSXDA t6, t5, t4
	-[0x80001b14]:sd t6, 1248(ra)
Current Store : [0x80001b18] : sd t5, 1256(ra) -- Store: [0x800038b8]:0xEFFFDFFFFFFAFFEF




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 512', 'rs2_h2_val == 21845', 'rs2_h1_val == -21846', 'rs2_h0_val == -9', 'rs1_h3_val == -1', 'rs1_h2_val == -2', 'rs1_h1_val == 1024', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80001b40]:KMSXDA t6, t5, t4
	-[0x80001b44]:sd t6, 1264(ra)
Current Store : [0x80001b48] : sd t5, 1272(ra) -- Store: [0x800038c8]:0xFFFFFFFE04000010





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

|s.no|            signature             |                                                                                                                                                                                                                                       coverpoints                                                                                                                                                                                                                                        |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xAB84BB5BABA03B6F|- opcode : kmsxda<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -65<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -65<br> - rs1_h0_val == 16384<br> |[0x800003c8]:KMSXDA a1, t0, t0<br> [0x800003cc]:sd a1, 0(tp)<br>      |
|   2|[0x80003220]<br>0x55615539FFFEBFF9|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -17<br> - rs2_h1_val == -3<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -17<br> - rs1_h1_val == -3<br>                                                                                                                                                                                   |[0x8000040c]:KMSXDA s2, s2, s2<br> [0x80000410]:sd s2, 16(tp)<br>     |
|   3|[0x80003230]<br>0xB8FB331AB6F9B7FD|- rs1 : x21<br> - rs2 : x15<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 32<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -2<br> - rs2_h0_val == 2<br> - rs1_h3_val == -1025<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 0<br>          |[0x80000440]:KMSXDA s7, s5, a5<br> [0x80000444]:sd s7, 32(tp)<br>     |
|   4|[0x80003240]<br>0x004980404001BF80|- rs1 : x15<br> - rs2 : x21<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -33<br> - rs2_h2_val == -1025<br> - rs1_h3_val == 64<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 16<br>                                                                                                 |[0x80000474]:KMSXDA a5, a5, s5<br> [0x80000478]:sd a5, 48(tp)<br>     |
|   5|[0x80003250]<br>0x7FFC0192CFBFC100|- rs1 : x14<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs2_h3_val == 32767<br> - rs2_h0_val == 128<br> - rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                           |[0x800004b0]:KMSXDA s3, a4, s3<br> [0x800004b4]:sd s3, 64(tp)<br>     |
|   6|[0x80003260]<br>0x7D5BDA567D5B5316|- rs1 : x9<br> - rs2 : x10<br> - rd : x16<br> - rs2_h3_val == -5<br> - rs2_h2_val == -9<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 128<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                             |[0x800004ec]:KMSXDA a6, s1, a0<br> [0x800004f0]:sd a6, 80(tp)<br>     |
|   7|[0x80003270]<br>0xED94047EEDBEA5EE|- rs1 : x28<br> - rs2 : x26<br> - rd : x25<br> - rs2_h2_val == 128<br> - rs2_h1_val == 1<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -2<br> - rs1_h2_val == 128<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                |[0x80000524]:KMSXDA s9, t3, s10<br> [0x80000528]:sd s9, 96(tp)<br>    |
|   8|[0x80003280]<br>0xFF66DFC8FF7974AF|- rs1 : x26<br> - rs2 : x3<br> - rd : x2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000560]:KMSXDA sp, s10, gp<br> [0x80000564]:sd sp, 112(tp)<br>   |
|   9|[0x80003290]<br>0xF818F483F78D74F1|- rs1 : x10<br> - rs2 : x1<br> - rd : x30<br> - rs2_h3_val == -1<br> - rs2_h2_val == -513<br> - rs1_h2_val == -65<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000594]:KMSXDA t5, a0, ra<br> [0x80000598]:sd t5, 128(tp)<br>    |
|  10|[0x800032a0]<br>0xB5FB8739B7C426E8|- rs1 : x13<br> - rs2 : x2<br> - rd : x7<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 64<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -17<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                        |[0x800005c8]:KMSXDA t2, a3, sp<br> [0x800005cc]:sd t2, 144(tp)<br>    |
|  11|[0x800032b0]<br>0xFFBE01147FFC1555|- rs1 : x20<br> - rs2 : x24<br> - rd : x14<br> - rs2_h3_val == -21846<br> - rs1_h3_val == 16<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x8000060c]:KMSXDA a4, s4, s8<br> [0x80000610]:sd a4, 160(tp)<br>    |
|  12|[0x800032c0]<br>0xFFFFBFCE80008FE0|- rs1 : x22<br> - rs2 : x9<br> - rd : x6<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == -16385<br> - rs2_h0_val == -8193<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                          |[0x80000648]:KMSXDA t1, s6, s1<br> [0x8000064c]:sd t1, 176(tp)<br>    |
|  13|[0x800032d0]<br>0x5BEDFAFC5CF9DB7D|- rs1 : x25<br> - rs2 : x29<br> - rd : x8<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -1<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -129<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                |[0x80000680]:KMSXDA fp, s9, t4<br> [0x80000684]:sd fp, 192(tp)<br>    |
|  14|[0x800032e0]<br>0xE000900804000FFA|- rs1 : x30<br> - rs2 : x11<br> - rd : x29<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                             |[0x800006b0]:KMSXDA t4, t5, a1<br> [0x800006b4]:sd t4, 208(tp)<br>    |
|  15|[0x800032f0]<br>0xFF0753DD01044019|- rs1 : x6<br> - rs2 : x31<br> - rd : x22<br> - rs2_h3_val == -2049<br> - rs1_h3_val == -33<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                       |[0x800006e0]:KMSXDA s6, t1, t6<br> [0x800006e4]:sd s6, 224(tp)<br>    |
|  16|[0x80003300]<br>0x003FDBFC0000C2FF|- rs1 : x27<br> - rs2 : x17<br> - rd : x26<br> - rs2_h3_val == -1025<br> - rs2_h1_val == -129<br> - rs2_h0_val == 256<br> - rs1_h2_val == -9<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                 |[0x80000724]:KMSXDA s10, s11, a7<br> [0x80000728]:sd s10, 0(t0)<br>   |
|  17|[0x80003310]<br>0xAAAB103FC1005540|- rs1 : x8<br> - rs2 : x14<br> - rd : x24<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -513<br> - rs2_h2_val == 8<br> - rs2_h1_val == 512<br> - rs1_h3_val == -9<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                              |[0x8000075c]:KMSXDA s8, fp, a4<br> [0x80000760]:sd s8, 16(t0)<br>     |
|  18|[0x80003320]<br>0x0000404880000000|- rs1 : x1<br> - rs2 : x20<br> - rd : x4<br> - rs2_h3_val == -257<br> - rs2_h1_val == -513<br> - rs1_h3_val == -1<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000798]:KMSXDA tp, ra, s4<br> [0x8000079c]:sd tp, 32(t0)<br>     |
|  19|[0x80003330]<br>0x00E00C1F000BBFF9|- rs1 : x29<br> - rs2 : x22<br> - rd : x21<br> - rs2_h3_val == -129<br> - rs2_h1_val == 0<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                             |[0x800007cc]:KMSXDA s5, t4, s6<br> [0x800007d0]:sd s5, 48(t0)<br>     |
|  20|[0x80003340]<br>0xFFFBE653FFE555F5|- rs1 : x4<br> - rs2 : x23<br> - rd : x3<br> - rs2_h3_val == -65<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000810]:KMSXDA gp, tp, s7<br> [0x80000814]:sd gp, 64(t0)<br>     |
|  21|[0x80003350]<br>0xD5BFDFAFD5C01D99|- rs1 : x31<br> - rs2 : x13<br> - rd : x12<br> - rs2_h3_val == -17<br> - rs2_h1_val == -1<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000848]:KMSXDA a2, t6, a3<br> [0x8000084c]:sd a2, 80(t0)<br>     |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x7<br> - rd : x0<br> - rs2_h3_val == -9<br> - rs2_h2_val == -65<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -5<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                            |[0x80000884]:KMSXDA zero, a1, t2<br> [0x80000888]:sd zero, 96(t0)<br> |
|  23|[0x80003370]<br>0x5555FF4BFF80827F|- rs1 : x7<br> - rs2 : x27<br> - rd : x10<br> - rs2_h3_val == -3<br> - rs2_h2_val == 1<br> - rs2_h1_val == -5<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                   |[0x800008b8]:KMSXDA a0, t2, s11<br> [0x800008bc]:sd a0, 112(t0)<br>   |
|  24|[0x80003380]<br>0xBFFF0044FFFA9FFF|- rs1 : x16<br> - rs2 : x8<br> - rd : x9<br> - rs2_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008ec]:KMSXDA s1, a6, fp<br> [0x800008f0]:sd s1, 128(t0)<br>    |
|  25|[0x80003390]<br>0xFAF68000FF82F0F4|- rs1 : x19<br> - rs2 : x6<br> - rd : x17<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 1024<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000928]:KMSXDA a7, s3, t1<br> [0x8000092c]:sd a7, 144(t0)<br>    |
|  26|[0x800033a0]<br>0xFC00E2000006C2A0|- rs1 : x2<br> - rs2 : x30<br> - rd : x31<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -2<br> - rs2_h0_val == -65<br> - rs1_h3_val == 4096<br> - rs1_h1_val == 512<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                            |[0x80000964]:KMSXDA t6, sp, t5<br> [0x80000968]:sd t6, 160(t0)<br>    |
|  27|[0x800033b0]<br>0xF5545C403F803FFF|- rs1 : x24<br> - rs2 : x4<br> - rd : x1<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 64<br> - rs2_h0_val == 1024<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000994]:KMSXDA ra, s8, tp<br> [0x80000998]:sd ra, 176(t0)<br>    |
|  28|[0x800033c0]<br>0xFEFE8088FDFF0BFC|- rs1 : x12<br> - rs2 : x25<br> - rd : x20<br> - rs2_h3_val == 4096<br> - rs1_h1_val == 0<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800009d0]:KMSXDA s4, a2, s9<br> [0x800009d4]:sd s4, 192(t0)<br>    |
|  29|[0x800033d0]<br>0xFFEC5000FFBABA03|- rs1 : x17<br> - rs2 : x16<br> - rd : x13<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -257<br> - rs2_h0_val == -1025<br> - rs1_h3_val == 32767<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                             |[0x80000a14]:KMSXDA a3, a7, a6<br> [0x80000a18]:sd a3, 0(ra)<br>      |
|  30|[0x800033e0]<br>0xFFFE008000010010|- rs1 : x3<br> - rs2 : x0<br> - rd : x28<br> - rs2_h3_val == 0<br> - rs1_h3_val == -4097<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000a54]:KMSXDA t3, gp, zero<br> [0x80000a58]:sd t3, 16(ra)<br>   |
|  31|[0x800033f0]<br>0xFFFD0001FFFBFFF6|- rs1 : x0<br> - rs2 : x12<br> - rd : x27<br> - rs2_h3_val == 512<br> - rs2_h2_val == 21845<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -9<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br>                                                                                                                                                                                                                                                                                             |[0x80000a84]:KMSXDA s11, zero, a2<br> [0x80000a88]:sd s11, 32(ra)<br> |
|  32|[0x80003400]<br>0xE020C0FF800034FF|- rs1 : x23<br> - rs2 : x28<br> - rd : x5<br> - rs2_h3_val == 256<br> - rs2_h0_val == -513<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ab4]:KMSXDA t0, s7, t3<br> [0x80000ab8]:sd t0, 48(ra)<br>     |
|  33|[0x80003410]<br>0xF7FF91FF0007C284|- rs2_h3_val == 128<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 4<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ae8]:KMSXDA t6, t5, t4<br> [0x80000aec]:sd t6, 64(ra)<br>     |
|  34|[0x80003420]<br>0xF7FF919EFF094384|- rs2_h3_val == 16<br> - rs2_h0_val == -32768<br> - rs1_h2_val == 2<br> - rs1_h1_val == -513<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x80000b1c]:KMSXDA t6, t5, t4<br> [0x80000b20]:sd t6, 80(ra)<br>     |
|  35|[0x80003430]<br>0xF7EF70DDFF0A640D|- rs2_h3_val == 8<br> - rs2_h2_val == -129<br> - rs1_h1_val == 32<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b58]:KMSXDA t6, t5, t4<br> [0x80000b5c]:sd t6, 96(ra)<br>     |
|  36|[0x80003440]<br>0xF7EF8ED9FB0A13D6|- rs2_h3_val == 4<br> - rs2_h1_val == -9<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000b8c]:KMSXDA t6, t5, t4<br> [0x80000b90]:sd t6, 112(ra)<br>    |
|  37|[0x80003450]<br>0xF7F00EDB1B0A53CF|- rs2_h3_val == 2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -1<br> - rs1_h3_val == 256<br> - rs1_h2_val == -16385<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                      |[0x80000bbc]:KMSXDA t6, t5, t4<br> [0x80000bc0]:sd t6, 128(ra)<br>    |
|  38|[0x80003460]<br>0xF7EF8EDC1B0BB3D6|- rs2_h3_val == 1<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000bf4]:KMSXDA t6, t5, t4<br> [0x80000bf8]:sd t6, 144(ra)<br>    |
|  39|[0x80003470]<br>0xF7EF7ED41B0BB19B|- rs1_h3_val == -513<br> - rs1_h1_val == -2<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c30]:KMSXDA t6, t5, t4<br> [0x80000c34]:sd t6, 160(ra)<br>    |
|  40|[0x80003480]<br>0xE7EFBEF4230BB199|- rs2_h1_val == 2<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c68]:KMSXDA t6, t5, t4<br> [0x80000c6c]:sd t6, 176(ra)<br>    |
|  41|[0x80003490]<br>0x07EF3EE2230FBC99|- rs2_h1_val == 128<br> - rs2_h0_val == -129<br> - rs1_h3_val == -32768<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000cac]:KMSXDA t6, t5, t4<br> [0x80000cb0]:sd t6, 192(ra)<br>    |
|  42|[0x800034a0]<br>0x086F50E6232FAD99|- rs2_h2_val == -2049<br> - rs1_h1_val == 256<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000ce8]:KMSXDA t6, t5, t4<br> [0x80000cec]:sd t6, 208(ra)<br>    |
|  43|[0x800034b0]<br>0x08AF7166232FABEC|- rs1_h3_val == 8192<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d1c]:KMSXDA t6, t5, t4<br> [0x80000d20]:sd t6, 224(ra)<br>    |
|  44|[0x800034c0]<br>0x089F285D232FA4FC|- rs2_h1_val == -17<br> - rs1_h3_val == -257<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d54]:KMSXDA t6, t5, t4<br> [0x80000d58]:sd t6, 240(ra)<br>    |
|  45|[0x800034d0]<br>0x0B49D7C4232FA530|- rs2_h2_val == -21846<br> - rs2_h0_val == -5<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d90]:KMSXDA t6, t5, t4<br> [0x80000d94]:sd t6, 256(ra)<br>    |
|  46|[0x800034e0]<br>0x0B91D7C4222FA540|- rs2_h2_val == -32768<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 4<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000dc8]:KMSXDA t6, t5, t4<br> [0x80000dcc]:sd t6, 272(ra)<br>    |
|  47|[0x800034f0]<br>0x0B7457BA222FA5A7|- rs2_h2_val == 2048<br> - rs2_h0_val == 4<br> - rs1_h1_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000df8]:KMSXDA t6, t5, t4<br> [0x80000dfc]:sd t6, 288(ra)<br>    |
|  48|[0x80003500]<br>0x1B7457F9222E5087|- rs1_h2_val == -2<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e30]:KMSXDA t6, t5, t4<br> [0x80000e34]:sd t6, 304(ra)<br>    |
|  49|[0x80003510]<br>0x1B74D83305BCC24E|- rs2_h1_val == 21845<br> - rs1_h3_val == 2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000e68]:KMSXDA t6, t5, t4<br> [0x80000e6c]:sd t6, 320(ra)<br>    |
|  50|[0x80003520]<br>0x1EF51833F06867AC|- rs1_h2_val == -4097<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000eac]:KMSXDA t6, t5, t4<br> [0x80000eb0]:sd t6, 336(ra)<br>    |
|  51|[0x80003530]<br>0x1FF53833EF67E6AB|- rs2_h1_val == -32768<br> - rs2_h0_val == -257<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ee0]:KMSXDA t6, t5, t4<br> [0x80000ee4]:sd t6, 352(ra)<br>    |
|  52|[0x80003540]<br>0x1FF52E2FEF8826B5|- rs1_h3_val == -5<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f1c]:KMSXDA t6, t5, t4<br> [0x80000f20]:sd t6, 368(ra)<br>    |
|  53|[0x80003550]<br>0x1FF1CE4FEF6805AB|- rs1_h1_val == -8193<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000f4c]:KMSXDA t6, t5, t4<br> [0x80000f50]:sd t6, 384(ra)<br>    |
|  54|[0x80003560]<br>0x1D46CBFFEF68126B|- rs2_h1_val == 64<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f84]:KMSXDA t6, t5, t4<br> [0x80000f88]:sd t6, 400(ra)<br>    |
|  55|[0x80003570]<br>0x1D46CB97EF6CB26B|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000fbc]:KMSXDA t6, t5, t4<br> [0x80000fc0]:sd t6, 416(ra)<br>    |
|  56|[0x80003580]<br>0xDD56CC97EF8CAA6B|- rs2_h2_val == 256<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000ffc]:KMSXDA t6, t5, t4<br> [0x80001000]:sd t6, 432(ra)<br>    |
|  57|[0x80003590]<br>0xDD5CCCA7EF8D8C6B|- rs1_h3_val == 8<br> - rs1_h2_val == 16<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001030]:KMSXDA t6, t5, t4<br> [0x80001034]:sd t6, 448(ra)<br>    |
|  58|[0x800035a0]<br>0xDD5CD52EFA384E2B|- rs2_h0_val == -21846<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001064]:KMSXDA t6, t5, t4<br> [0x80001068]:sd t6, 464(ra)<br>    |
|  59|[0x800035b0]<br>0xBD5D0928FA3A4DDB|- rs2_h2_val == 16384<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010a0]:KMSXDA t6, t5, t4<br> [0x800010a4]:sd t6, 480(ra)<br>    |
|  60|[0x800035c0]<br>0xBD5D03A904E50CDB|- rs2_h2_val == -3<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800010d4]:KMSXDA t6, t5, t4<br> [0x800010d8]:sd t6, 496(ra)<br>    |
|  61|[0x800035d0]<br>0xBD5CEF8904D50D01|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001108]:KMSXDA t6, t5, t4<br> [0x8000110c]:sd t6, 512(ra)<br>    |
|  62|[0x800035e0]<br>0xBD5C60430455F500|- rs2_h1_val == 8192<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001144]:KMSXDA t6, t5, t4<br> [0x80001148]:sd t6, 528(ra)<br>    |
|  63|[0x800035f0]<br>0xBD070BC40456FEC0|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001178]:KMSXDA t6, t5, t4<br> [0x8000117c]:sd t6, 544(ra)<br>    |
|  64|[0x80003600]<br>0xB916EBC404563E5D|- rs2_h0_val == -3<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011bc]:KMSXDA t6, t5, t4<br> [0x800011c0]:sd t6, 560(ra)<br>    |
|  65|[0x80003610]<br>0xB516F4000456515D|- rs2_h0_val == -2<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011f0]:KMSXDA t6, t5, t4<br> [0x800011f4]:sd t6, 576(ra)<br>    |
|  66|[0x80003620]<br>0xB518D42004564742|- rs2_h2_val == 8192<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000122c]:KMSXDA t6, t5, t4<br> [0x80001230]:sd t6, 592(ra)<br>    |
|  67|[0x80003630]<br>0xB518B9FF045639C2|- rs2_h0_val == 64<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001260]:KMSXDA t6, t5, t4<br> [0x80001264]:sd t6, 608(ra)<br>    |
|  68|[0x80003640]<br>0xB518C9820452B9C2|- rs2_h0_val == 32<br> - rs1_h3_val == -129<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001294]:KMSXDA t6, t5, t4<br> [0x80001298]:sd t6, 624(ra)<br>    |
|  69|[0x80003650]<br>0xB518D3910452ADD2|- rs2_h0_val == 16<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800012d0]:KMSXDA t6, t5, t4<br> [0x800012d4]:sd t6, 640(ra)<br>    |
|  70|[0x80003660]<br>0xB558558904528DE6|- rs2_h2_val == -8193<br> - rs2_h0_val == 8<br> - rs1_h3_val == 512<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001308]:KMSXDA t6, t5, t4<br> [0x8000130c]:sd t6, 656(ra)<br>    |
|  71|[0x80003670]<br>0xB55855C504527DFB|- rs2_h2_val == 4<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000133c]:KMSXDA t6, t5, t4<br> [0x80001340]:sd t6, 672(ra)<br>    |
|  72|[0x80003680]<br>0xCAAC806F0432B5FB|- rs1_h3_val == -21846<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001378]:KMSXDA t6, t5, t4<br> [0x8000137c]:sd t6, 688(ra)<br>    |
|  73|[0x80003690]<br>0xCAA9406904380B55|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013b4]:KMSXDA t6, t5, t4<br> [0x800013b8]:sd t6, 704(ra)<br>    |
|  74|[0x800036a0]<br>0xCAA9204704380B67|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800013e4]:KMSXDA t6, t5, t4<br> [0x800013e8]:sd t6, 720(ra)<br>    |
|  75|[0x800036b0]<br>0xEAA8E0030437AB7F|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001418]:KMSXDA t6, t5, t4<br> [0x8000141c]:sd t6, 736(ra)<br>    |
|  76|[0x800036c0]<br>0xFAA940E90437A87B|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001448]:KMSXDA t6, t5, t4<br> [0x8000144c]:sd t6, 752(ra)<br>    |
|  77|[0x800036d0]<br>0xFAB434DBEEE1C920|- rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000147c]:KMSXDA t6, t5, t4<br> [0x80001480]:sd t6, 768(ra)<br>    |
|  78|[0x800036e0]<br>0xFAD454DBEEE1C8D4|- rs2_h2_val == -257<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014b8]:KMSXDA t6, t5, t4<br> [0x800014bc]:sd t6, 784(ra)<br>    |
|  79|[0x800036f0]<br>0xFAD495DBF6E1E754|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014ec]:KMSXDA t6, t5, t4<br> [0x800014f0]:sd t6, 800(ra)<br>    |
|  80|[0x80003700]<br>0xFAD59633F2E1A765|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001528]:KMSXDA t6, t5, t4<br> [0x8000152c]:sd t6, 816(ra)<br>    |
|  81|[0x80003710]<br>0xFAD59486F2DDB06E|- rs2_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001564]:KMSXDA t6, t5, t4<br> [0x80001568]:sd t6, 832(ra)<br>    |
|  82|[0x80003720]<br>0xFAD5948CF6DD706E|- rs2_h1_val == 2048<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001594]:KMSXDA t6, t5, t4<br> [0x80001598]:sd t6, 848(ra)<br>    |
|  83|[0x80003730]<br>0xFAD45482F6DA7071|- rs2_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800015c4]:KMSXDA t6, t5, t4<br> [0x800015c8]:sd t6, 864(ra)<br>    |
|  84|[0x80003740]<br>0xF97F272CF6D97075|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001600]:KMSXDA t6, t5, t4<br> [0x80001604]:sd t6, 880(ra)<br>    |
|  85|[0x80003750]<br>0xF98BB71BF698EE75|- rs2_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001638]:KMSXDA t6, t5, t4<br> [0x8000163c]:sd t6, 896(ra)<br>    |
|  86|[0x80003760]<br>0xF98BAF130690AE85|- rs2_h2_val == 512<br> - rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000166c]:KMSXDA t6, t5, t4<br> [0x80001670]:sd t6, 912(ra)<br>    |
|  87|[0x80003770]<br>0xF96BEF530690B674|- rs1_h2_val == -257<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800016a4]:KMSXDA t6, t5, t4<br> [0x800016a8]:sd t6, 928(ra)<br>    |
|  88|[0x80003780]<br>0xF96BEF7706904261|- rs2_h2_val == 32<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016d8]:KMSXDA t6, t5, t4<br> [0x800016dc]:sd t6, 944(ra)<br>    |
|  89|[0x80003790]<br>0xF96BE2360693425F|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001710]:KMSXDA t6, t5, t4<br> [0x80001714]:sd t6, 960(ra)<br>    |
|  90|[0x800037a0]<br>0xF967E3460693A268|- rs2_h3_val == 1024<br> - rs2_h2_val == 16<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000174c]:KMSXDA t6, t5, t4<br> [0x80001750]:sd t6, 976(ra)<br>    |
|  91|[0x800037b0]<br>0xF96743460693AE4A|- rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001784]:KMSXDA t6, t5, t4<br> [0x80001788]:sd t6, 992(ra)<br>    |
|  92|[0x800037c0]<br>0xF9671E460694CE14|- rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800017bc]:KMSXDA t6, t5, t4<br> [0x800017c0]:sd t6, 1008(ra)<br>   |
|  93|[0x800037d0]<br>0xF963198906950219|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800017f0]:KMSXDA t6, t5, t4<br> [0x800017f4]:sd t6, 1024(ra)<br>   |
|  94|[0x800037e0]<br>0xF962DD80068A920C|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000182c]:KMSXDA t6, t5, t4<br> [0x80001830]:sd t6, 1040(ra)<br>   |
|  95|[0x800037f0]<br>0xF9E31DB0068932AF|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001868]:KMSXDA t6, t5, t4<br> [0x8000186c]:sd t6, 1056(ra)<br>   |
|  96|[0x80003800]<br>0xF9E31D29168922AF|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000189c]:KMSXDA t6, t5, t4<br> [0x800018a0]:sd t6, 1072(ra)<br>   |
|  97|[0x80003810]<br>0xF9E11CEA169122C8|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018e0]:KMSXDA t6, t5, t4<br> [0x800018e4]:sd t6, 1088(ra)<br>   |
|  98|[0x80003820]<br>0xF9E11D08168126CE|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000191c]:KMSXDA t6, t5, t4<br> [0x80001920]:sd t6, 1104(ra)<br>   |
|  99|[0x80003830]<br>0xF9A0FB05167FA6C6|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001950]:KMSXDA t6, t5, t4<br> [0x80001954]:sd t6, 1120(ra)<br>   |
| 100|[0x80003840]<br>0xFA9D790416879706|- rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001994]:KMSXDA t6, t5, t4<br> [0x80001998]:sd t6, 1136(ra)<br>   |
| 101|[0x80003860]<br>0xFAA4D904167ED85C|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800019f8]:KMSXDA t6, t5, t4<br> [0x800019fc]:sd t6, 1168(ra)<br>   |
| 102|[0x80003870]<br>0xFA9E48B91676B64B|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001a34]:KMSXDA t6, t5, t4<br> [0x80001a38]:sd t6, 1184(ra)<br>   |
| 103|[0x80003880]<br>0xFA9E4A391686FE12|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001a64]:KMSXDA t6, t5, t4<br> [0x80001a68]:sd t6, 1200(ra)<br>   |
| 104|[0x800038b0]<br>0x031E279A1677CA76|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001b10]:KMSXDA t6, t5, t4<br> [0x80001b14]:sd t6, 1248(ra)<br>   |
