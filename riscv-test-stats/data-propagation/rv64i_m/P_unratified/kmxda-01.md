
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001960')]      |
| SIG_REGION                | [('0x80003210', '0x80003840', '198 dwords')]      |
| COV_LABELS                | kmxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmxda-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 198      |
| STAT1                     | 95      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 99     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000142c]:KMXDA t6, t5, t4
      [0x80001430]:sd t6, 656(ra)
 -- Signature Address: 0x800036b0 Data: 0x00000C00FFF1FE00
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h0_val == 512
      - rs1_h3_val == 0
      - rs1_h2_val == 1024
      - rs1_h1_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017ac]:KMXDA t6, t5, t4
      [0x800017b0]:sd t6, 912(ra)
 -- Signature Address: 0x800037b0 Data: 0xFFFFA02DFFFE5008
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -5
      - rs1_h3_val == 4096
      - rs1_h2_val == -9
      - rs1_h1_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018e0]:KMXDA t6, t5, t4
      [0x800018e4]:sd t6, 1008(ra)
 -- Signature Address: 0x80003810 Data: 0x0000013BFFFF940C
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -5
      - rs2_h2_val == -65
      - rs2_h1_val == -513
      - rs2_h0_val == -2
      - rs1_h3_val == -5
      - rs1_h2_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001918]:KMXDA t6, t5, t4
      [0x8000191c]:sd t6, 1024(ra)
 -- Signature Address: 0x80003820 Data: 0xFFBC7C0000037FF9
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -32768
      - rs2_h2_val == 1024
      - rs2_h1_val == 32
      - rs2_h0_val == 32767
      - rs1_h3_val == -4097
      - rs1_h0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmxda', 'rs1 : x11', 'rs2 : x11', 'rd : x6', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h1_val == -257', 'rs2_h0_val == -16385', 'rs1_h3_val == -21846', 'rs1_h1_val == -257', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800003d0]:KMXDA t1, a1, a1
	-[0x800003d4]:sd t1, 0(ra)
Current Store : [0x800003d8] : sd a1, 8(ra) -- Store: [0x80003218]:0xAAAA0009FEFFBFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs2_h3_val == -5', 'rs2_h2_val == -65', 'rs2_h1_val == -513', 'rs2_h0_val == -2', 'rs1_h3_val == -5', 'rs1_h2_val == -65', 'rs1_h1_val == -513', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800003fc]:KMXDA s5, s5, s5
	-[0x80000400]:sd s5, 16(ra)
Current Store : [0x80000404] : sd s5, 24(ra) -- Store: [0x80003228]:0x0000028A00000804




Last Coverpoint : ['rs1 : x22', 'rs2 : x16', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 4096', 'rs2_h2_val == 4096', 'rs2_h1_val == -33', 'rs2_h0_val == 2048', 'rs1_h3_val == -17', 'rs1_h2_val == 32767', 'rs1_h1_val == 16', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000438]:KMXDA fp, s6, a6
	-[0x8000043c]:sd fp, 32(ra)
Current Store : [0x80000440] : sd s6, 40(ra) -- Store: [0x80003238]:0xFFEF7FFF00100100




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x30', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 512', 'rs1_h3_val == 128', 'rs1_h2_val == 16', 'rs1_h1_val == 2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000474]:KMXDA t5, t5, fp
	-[0x80000478]:sd t5, 48(ra)
Current Store : [0x8000047c] : sd t5, 56(ra) -- Store: [0x80003248]:0x00000430000004C6




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x29', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 1024', 'rs2_h2_val == 16', 'rs2_h1_val == -16385', 'rs1_h3_val == 32', 'rs1_h1_val == 4', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800004a8]:KMXDA t4, gp, t4
	-[0x800004ac]:sd t4, 64(ra)
Current Store : [0x800004b0] : sd gp, 72(ra) -- Store: [0x80003258]:0x0020FFF90004EFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x24', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -65', 'rs2_h2_val == -2049', 'rs2_h1_val == 512', 'rs2_h0_val == 0', 'rs1_h3_val == -65', 'rs1_h2_val == -2049', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800004d8]:KMXDA s8, s2, gp
	-[0x800004dc]:sd s8, 80(ra)
Current Store : [0x800004e0] : sd s2, 88(ra) -- Store: [0x80003268]:0xFFBFF7FF0100BFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x15', 'rd : x12', 'rs2_h3_val == -17', 'rs2_h0_val == -4097', 'rs1_h2_val == 21845', 'rs1_h1_val == -33', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000514]:KMXDA a2, fp, a5
	-[0x80000518]:sd a2, 96(ra)
Current Store : [0x8000051c] : sd fp, 104(ra) -- Store: [0x80003278]:0xFFBF5555FFDFFDFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x22', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h2_val == -4097', 'rs2_h1_val == 4', 'rs2_h0_val == -21846', 'rs1_h3_val == 1', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000548]:KMXDA s6, a6, t2
	-[0x8000054c]:sd s6, 112(ra)
Current Store : [0x80000550] : sd a6, 120(ra) -- Store: [0x80003288]:0x00017FFFFF7FFFF9




Last Coverpoint : ['rs1 : x13', 'rs2 : x26', 'rd : x19', 'rs2_h3_val == -33', 'rs2_h2_val == -32768', 'rs2_h1_val == -17', 'rs2_h0_val == -3', 'rs1_h3_val == 2', 'rs1_h2_val == 1024', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000057c]:KMXDA s3, a3, s10
	-[0x80000580]:sd s3, 128(ra)
Current Store : [0x80000584] : sd a3, 136(ra) -- Store: [0x80003298]:0x000204003FFFFFFD




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x7', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -8193', 'rs2_h0_val == -2049', 'rs1_h2_val == -17', 'rs1_h1_val == -4097', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005bc]:KMXDA t2, s4, s9
	-[0x800005c0]:sd t2, 144(ra)
Current Store : [0x800005c4] : sd s4, 152(ra) -- Store: [0x800032a8]:0x3FFFFFEFEFFF0040




Last Coverpoint : ['rs1 : x23', 'rs2 : x18', 'rd : x25', 'rs2_h3_val == 21845', 'rs1_h3_val == 16', 'rs1_h2_val == 1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800005f8]:KMXDA s9, s7, s2
	-[0x800005fc]:sd s9, 160(ra)
Current Store : [0x80000600] : sd s7, 168(ra) -- Store: [0x800032b8]:0x00100001FFF6FBFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x13', 'rd : x20', 'rs2_h3_val == 32767', 'rs2_h1_val == -4097', 'rs2_h0_val == -32768', 'rs1_h2_val == -3', 'rs1_h1_val == 512', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000630]:KMXDA s4, t4, a3
	-[0x80000634]:sd s4, 176(ra)
Current Store : [0x80000638] : sd t4, 184(ra) -- Store: [0x800032c8]:0x0020FFFD02000004




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x18', 'rs2_h3_val == -16385', 'rs2_h2_val == 16384', 'rs2_h1_val == -2049', 'rs1_h3_val == -2049', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000670]:KMXDA s2, s1, a4
	-[0x80000674]:sd s2, 192(ra)
Current Store : [0x80000678] : sd s1, 200(ra) -- Store: [0x800032d8]:0xF7FF3FFF0400FFFC




Last Coverpoint : ['rs1 : x31', 'rs2 : x20', 'rd : x17', 'rs2_h3_val == -8193', 'rs2_h2_val == 128', 'rs2_h1_val == -1025', 'rs2_h0_val == 1', 'rs1_h3_val == -513', 'rs1_h2_val == 512', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800006b4]:KMXDA a7, t6, s4
	-[0x800006b8]:sd a7, 208(ra)
Current Store : [0x800006bc] : sd t6, 216(ra) -- Store: [0x800032e8]:0xFDFF0200FBFF3FFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x4', 'rd : x5', 'rs2_h3_val == -4097', 'rs2_h2_val == -5', 'rs2_h1_val == -2', 'rs1_h3_val == -16385', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800006f0]:KMXDA t0, s8, tp
	-[0x800006f4]:sd t0, 224(ra)
Current Store : [0x800006f8] : sd s8, 232(ra) -- Store: [0x800032f8]:0xBFFFFFF6FFDFFFEF




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x31', 'rs2_h3_val == -2049', 'rs2_h2_val == 8', 'rs2_h1_val == 4096', 'rs1_h2_val == 8192', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000734]:KMXDA t6, t3, t0
	-[0x80000738]:sd t6, 240(ra)
Current Store : [0x8000073c] : sd t3, 248(ra) -- Store: [0x80003308]:0x000720008000FFDF




Last Coverpoint : ['rs1 : x12', 'rs2 : x0', 'rd : x10', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs1_h3_val == 2048', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000778]:KMXDA a0, a2, zero
	-[0x8000077c]:sd a0, 0(fp)
Current Store : [0x80000780] : sd a2, 8(fp) -- Store: [0x80003318]:0x08007FFF10000100




Last Coverpoint : ['rs1 : x4', 'rs2 : x31', 'rd : x27', 'rs2_h3_val == -513', 'rs2_h1_val == -5', 'rs1_h3_val == -8193', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800007b4]:KMXDA s11, tp, t6
	-[0x800007b8]:sd s11, 16(fp)
Current Store : [0x800007bc] : sd tp, 24(fp) -- Store: [0x80003328]:0xDFFFFFEFFFF8DFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x19', 'rd : x26', 'rs2_h3_val == -257', 'rs2_h0_val == 4096', 'rs1_h1_val == -17', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800007ec]:KMXDA s10, s9, s3
	-[0x800007f0]:sd s10, 32(fp)
Current Store : [0x800007f4] : sd s9, 40(fp) -- Store: [0x80003338]:0x0010FFFDFFEF0020




Last Coverpoint : ['rs1 : x15', 'rs2 : x6', 'rd : x16', 'rs2_h3_val == -129', 'rs2_h2_val == 32', 'rs2_h1_val == 8', 'rs2_h0_val == -1', 'rs1_h2_val == 0']
Last Code Sequence : 
	-[0x80000820]:KMXDA a6, a5, t1
	-[0x80000824]:sd a6, 48(fp)
Current Store : [0x80000828] : sd a5, 56(fp) -- Store: [0x80003348]:0x000700000004C000




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x23', 'rs2_h3_val == -9', 'rs2_h2_val == -21846', 'rs1_h3_val == -32768', 'rs1_h2_val == 2048', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000854]:KMXDA s7, sp, s1
	-[0x80000858]:sd s7, 64(fp)
Current Store : [0x8000085c] : sd sp, 72(fp) -- Store: [0x80003358]:0x8000080000065555




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x2', 'rs2_h3_val == -3', 'rs2_h2_val == 256', 'rs1_h2_val == -257', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000888]:KMXDA sp, a7, s6
	-[0x8000088c]:sd sp, 80(fp)
Current Store : [0x80000890] : sd a7, 88(fp) -- Store: [0x80003368]:0x0800FEFFFFFBFFEF




Last Coverpoint : ['rs1 : x1', 'rs2 : x2', 'rd : x14', 'rs2_h3_val == -2', 'rs2_h2_val == -129', 'rs2_h1_val == -3', 'rs1_h1_val == 2048', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800008b4]:KMXDA a4, ra, sp
	-[0x800008b8]:sd a4, 96(fp)
Current Store : [0x800008bc] : sd ra, 104(fp) -- Store: [0x80003378]:0xFFFB080008000010




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x0', 'rs2_h3_val == -32768', 'rs2_h2_val == 1024', 'rs2_h1_val == 32', 'rs2_h0_val == 32767', 'rs1_h3_val == -4097', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800008ec]:KMXDA zero, a0, t3
	-[0x800008f0]:sd zero, 112(fp)
Current Store : [0x800008f4] : sd a0, 120(fp) -- Store: [0x80003388]:0xEFFF000700070000




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rd : x1', 'rs2_h3_val == 16384', 'rs2_h2_val == -17', 'rs1_h3_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000920]:KMXDA ra, zero, a0
	-[0x80000924]:sd ra, 128(fp)
Current Store : [0x80000928] : sd zero, 136(fp) -- Store: [0x80003398]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x13', 'rs2_h3_val == 8192', 'rs2_h2_val == -257', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000095c]:KMXDA a3, a4, a7
	-[0x80000960]:sd a3, 144(fp)
Current Store : [0x80000964] : sd a4, 152(fp) -- Store: [0x800033a8]:0xFFF8FFF9FEFF0800




Last Coverpoint : ['rs1 : x5', 'rs2 : x30', 'rd : x4', 'rs2_h3_val == 2048', 'rs2_h2_val == 8192', 'rs1_h2_val == -1025', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000998]:KMXDA tp, t0, t5
	-[0x8000099c]:sd tp, 160(fp)
Current Store : [0x800009a0] : sd t0, 168(fp) -- Store: [0x800033b8]:0x0003FBFF00030080




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x9', 'rs2_h3_val == 512', 'rs2_h0_val == -5', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x800009c4]:KMXDA s1, t1, a2
	-[0x800009c8]:sd s1, 176(fp)
Current Store : [0x800009cc] : sd t1, 184(fp) -- Store: [0x800033c8]:0xFFEFEFFF00000020




Last Coverpoint : ['rs1 : x7', 'rs2 : x27', 'rd : x15', 'rs2_h3_val == 256', 'rs2_h2_val == -16385', 'rs2_h1_val == 8192', 'rs2_h0_val == 16384', 'rs1_h2_val == -8193', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800009f8]:KMXDA a5, t2, s11
	-[0x800009fc]:sd a5, 192(fp)
Current Store : [0x80000a00] : sd t2, 200(fp) -- Store: [0x800033d8]:0xFFFCDFFFFFFDFFF9




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rd : x11', 'rs2_h3_val == 128', 'rs2_h1_val == 21845', 'rs2_h0_val == -65', 'rs1_h3_val == 16384', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000a3c]:KMXDA a1, s3, s7
	-[0x80000a40]:sd a1, 208(fp)
Current Store : [0x80000a44] : sd s3, 216(fp) -- Store: [0x800033e8]:0x4000DFFF4000FFFE




Last Coverpoint : ['rs1 : x26', 'rs2 : x24', 'rd : x28', 'rs2_h3_val == 64', 'rs1_h2_val == -32768', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000a74]:KMXDA t3, s10, s8
	-[0x80000a78]:sd t3, 224(fp)
Current Store : [0x80000a7c] : sd s10, 232(fp) -- Store: [0x800033f8]:0x00808000DFFF0009




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x3', 'rs2_h3_val == 32', 'rs2_h2_val == -3', 'rs1_h1_val == -65', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000ab0]:KMXDA gp, s11, ra
	-[0x80000ab4]:sd gp, 240(fp)
Current Store : [0x80000ab8] : sd s11, 248(fp) -- Store: [0x80003408]:0x3FFFFFF9FFBFF7FF




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == -9', 'rs1_h2_val == 32', 'rs1_h1_val == -2', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000ae8]:KMXDA t6, t5, t4
	-[0x80000aec]:sd t6, 256(fp)
Current Store : [0x80000af0] : sd t5, 264(fp) -- Store: [0x80003418]:0x00800020FFFE0200




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == 8192', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000b24]:KMXDA t6, t5, t4
	-[0x80000b28]:sd t6, 0(ra)
Current Store : [0x80000b2c] : sd t5, 8(ra) -- Store: [0x80003428]:0x8000002020000008




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == 128', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000b60]:KMXDA t6, t5, t4
	-[0x80000b64]:sd t6, 16(ra)
Current Store : [0x80000b68] : sd t5, 24(ra) -- Store: [0x80003438]:0xF7FFFEFF0080FFBF




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h3_val == 8192', 'rs1_h2_val == 128', 'rs1_h1_val == 64', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000b94]:KMXDA t6, t5, t4
	-[0x80000b98]:sd t6, 32(ra)
Current Store : [0x80000b9c] : sd t5, 40(ra) -- Store: [0x80003448]:0x200000800040FFFF




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000bc8]:KMXDA t6, t5, t4
	-[0x80000bcc]:sd t6, 48(ra)
Current Store : [0x80000bd0] : sd t5, 56(ra) -- Store: [0x80003458]:0x8000EFFF00200200




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h3_val == 4', 'rs2_h2_val == 512', 'rs1_h3_val == 4096', 'rs1_h2_val == 8', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000bf8]:KMXDA t6, t5, t4
	-[0x80000bfc]:sd t6, 64(ra)
Current Store : [0x80000c00] : sd t5, 72(ra) -- Store: [0x80003468]:0x1000000800088000




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h0_val == -513', 'rs1_h3_val == 256', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000c34]:KMXDA t6, t5, t4
	-[0x80000c38]:sd t6, 80(ra)
Current Store : [0x80000c3c] : sd t5, 88(ra) -- Store: [0x80003478]:0x0100020000010080




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000c68]:KMXDA t6, t5, t4
	-[0x80000c6c]:sd t6, 96(ra)
Current Store : [0x80000c70] : sd t5, 104(ra) -- Store: [0x80003488]:0xFDFF8000FFFFFFDF




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000cac]:KMXDA t6, t5, t4
	-[0x80000cb0]:sd t6, 112(ra)
Current Store : [0x80000cb4] : sd t5, 120(ra) -- Store: [0x80003498]:0x000955550005AAAA




Last Coverpoint : ['rs2_h1_val == 32767', 'rs2_h0_val == -33', 'rs1_h3_val == -3', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000ce0]:KMXDA t6, t5, t4
	-[0x80000ce4]:sd t6, 128(ra)
Current Store : [0x80000ce8] : sd t5, 136(ra) -- Store: [0x800034a8]:0xFFFD0000FFFC7FFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h0_val == 8192', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000d18]:KMXDA t6, t5, t4
	-[0x80000d1c]:sd t6, 144(ra)
Current Store : [0x80000d20] : sd t5, 152(ra) -- Store: [0x800034b8]:0xFFFB00082000FEFF




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h2_val == -513', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000d54]:KMXDA t6, t5, t4
	-[0x80000d58]:sd t6, 160(ra)
Current Store : [0x80000d5c] : sd t5, 168(ra) -- Store: [0x800034c8]:0xFFBFFDFF0001FF7F




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -9', 'rs1_h1_val == -2049', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000d8c]:KMXDA t6, t5, t4
	-[0x80000d90]:sd t6, 176(ra)
Current Store : [0x80000d94] : sd t5, 184(ra) -- Store: [0x800034d8]:0xF7FFFFF6F7FFFFF7




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000db8]:KMXDA t6, t5, t4
	-[0x80000dbc]:sd t6, 192(ra)
Current Store : [0x80000dc0] : sd t5, 200(ra) -- Store: [0x800034e8]:0xFFF9FBFFFFDFFFFB




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000df0]:KMXDA t6, t5, t4
	-[0x80000df4]:sd t6, 208(ra)
Current Store : [0x80000df8] : sd t5, 216(ra) -- Store: [0x800034f8]:0x0007001000034000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == 1024', 'rs1_h3_val == 4', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000e28]:KMXDA t6, t5, t4
	-[0x80000e2c]:sd t6, 224(ra)
Current Store : [0x80000e30] : sd t5, 232(ra) -- Store: [0x80003508]:0x0004000900102000




Last Coverpoint : ['rs2_h3_val == -1025', 'rs1_h2_val == 2', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000e60]:KMXDA t6, t5, t4
	-[0x80000e64]:sd t6, 240(ra)
Current Store : [0x80000e68] : sd t5, 248(ra) -- Store: [0x80003518]:0xFFFA000200051000




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000e9c]:KMXDA t6, t5, t4
	-[0x80000ea0]:sd t6, 256(ra)
Current Store : [0x80000ea4] : sd t5, 264(ra) -- Store: [0x80003528]:0x00020020FFFF0400




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000ed8]:KMXDA t6, t5, t4
	-[0x80000edc]:sd t6, 272(ra)
Current Store : [0x80000ee0] : sd t5, 280(ra) -- Store: [0x80003538]:0xF7FF020000050002




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000f14]:KMXDA t6, t5, t4
	-[0x80000f18]:sd t6, 288(ra)
Current Store : [0x80000f1c] : sd t5, 296(ra) -- Store: [0x80003548]:0xFFEF000300060001




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 4', 'rs2_h1_val == 2048', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000f50]:KMXDA t6, t5, t4
	-[0x80000f54]:sd t6, 304(ra)
Current Store : [0x80000f58] : sd t5, 312(ra) -- Store: [0x80003558]:0x3FFF0004C0000200




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000f88]:KMXDA t6, t5, t4
	-[0x80000f8c]:sd t6, 320(ra)
Current Store : [0x80000f90] : sd t5, 328(ra) -- Store: [0x80003568]:0x0004F7FFFFFAFFEF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000fcc]:KMXDA t6, t5, t4
	-[0x80000fd0]:sd t6, 336(ra)
Current Store : [0x80000fd4] : sd t5, 344(ra) -- Store: [0x80003578]:0x40002000C000AAAA




Last Coverpoint : ['rs1_h3_val == -129', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80001000]:KMXDA t6, t5, t4
	-[0x80001004]:sd t6, 352(ra)
Current Store : [0x80001008] : sd t5, 360(ra) -- Store: [0x80003588]:0xFF7FFFFEFFF8FEFF




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x8000103c]:KMXDA t6, t5, t4
	-[0x80001040]:sd t6, 368(ra)
Current Store : [0x80001044] : sd t5, 376(ra) -- Store: [0x80003598]:0xFF7FFFFE0100DFFF




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001078]:KMXDA t6, t5, t4
	-[0x8000107c]:sd t6, 384(ra)
Current Store : [0x80001080] : sd t5, 392(ra) -- Store: [0x800035a8]:0xBFFF000010000100




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h3_val == 64']
Last Code Sequence : 
	-[0x800010ac]:KMXDA t6, t5, t4
	-[0x800010b0]:sd t6, 400(ra)
Current Store : [0x800010b4] : sd t5, 408(ra) -- Store: [0x800035b8]:0x0040555500000007




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x800010e0]:KMXDA t6, t5, t4
	-[0x800010e4]:sd t6, 416(ra)
Current Store : [0x800010e8] : sd t5, 424(ra) -- Store: [0x800035c8]:0x0007FFEFFF7FFFF7




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001118]:KMXDA t6, t5, t4
	-[0x8000111c]:sd t6, 432(ra)
Current Store : [0x80001120] : sd t5, 440(ra) -- Store: [0x800035d8]:0xFFFF04000009F7FF




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000114c]:KMXDA t6, t5, t4
	-[0x80001150]:sd t6, 448(ra)
Current Store : [0x80001154] : sd t5, 456(ra) -- Store: [0x800035e8]:0xAAAA008000100009




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == -129', 'rs1_h3_val == -257', 'rs1_h2_val == -16385', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001180]:KMXDA t6, t5, t4
	-[0x80001184]:sd t6, 464(ra)
Current Store : [0x80001188] : sd t5, 472(ra) -- Store: [0x800035f8]:0xFEFFBFFF7FFFFFFB




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800011b4]:KMXDA t6, t5, t4
	-[0x800011b8]:sd t6, 480(ra)
Current Store : [0x800011bc] : sd t5, 488(ra) -- Store: [0x80003608]:0xEFFF080000020004




Last Coverpoint : ['rs2_h1_val == -21846', 'rs2_h0_val == 1024', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x800011ec]:KMXDA t6, t5, t4
	-[0x800011f0]:sd t6, 496(ra)
Current Store : [0x800011f4] : sd t5, 504(ra) -- Store: [0x80003618]:0xFFDF08000009FFBF




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001230]:KMXDA t6, t5, t4
	-[0x80001234]:sd t6, 512(ra)
Current Store : [0x80001238] : sd t5, 520(ra) -- Store: [0x80003628]:0xAAAA8000F7FF0800




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h0_val == 128', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x8000126c]:KMXDA t6, t5, t4
	-[0x80001270]:sd t6, 528(ra)
Current Store : [0x80001274] : sd t5, 536(ra) -- Store: [0x80003638]:0x0800FF7F40000010




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800012a8]:KMXDA t6, t5, t4
	-[0x800012ac]:sd t6, 544(ra)
Current Store : [0x800012b0] : sd t5, 552(ra) -- Store: [0x80003648]:0x0002FFEFC000FFDF




Last Coverpoint : ['rs2_h1_val == -129', 'rs2_h0_val == 4', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800012e4]:KMXDA t6, t5, t4
	-[0x800012e8]:sd t6, 560(ra)
Current Store : [0x800012ec] : sd t5, 568(ra) -- Store: [0x80003658]:0xFFFA0007FFF70005




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80001328]:KMXDA t6, t5, t4
	-[0x8000132c]:sd t6, 576(ra)
Current Store : [0x80001330] : sd t5, 584(ra) -- Store: [0x80003668]:0x5555FFFBFEFF5555




Last Coverpoint : ['rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x8000135c]:KMXDA t6, t5, t4
	-[0x80001360]:sd t6, 592(ra)
Current Store : [0x80001364] : sd t5, 600(ra) -- Store: [0x80003678]:0x7FFF000900020005




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001394]:KMXDA t6, t5, t4
	-[0x80001398]:sd t6, 608(ra)
Current Store : [0x8000139c] : sd t5, 616(ra) -- Store: [0x80003688]:0x04000001C000FFFA




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == 512', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x800013c8]:KMXDA t6, t5, t4
	-[0x800013cc]:sd t6, 624(ra)
Current Store : [0x800013d0] : sd t5, 632(ra) -- Store: [0x80003698]:0x0200AAAAFEFFBFFF




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x80001400]:KMXDA t6, t5, t4
	-[0x80001404]:sd t6, 640(ra)
Current Store : [0x80001408] : sd t5, 648(ra) -- Store: [0x800036a8]:0x00080007FFFDFF7F




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 512', 'rs1_h3_val == 0', 'rs1_h2_val == 1024', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000142c]:KMXDA t6, t5, t4
	-[0x80001430]:sd t6, 656(ra)
Current Store : [0x80001434] : sd t5, 664(ra) -- Store: [0x800036b8]:0x00000400F7FFFFF8




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000146c]:KMXDA t6, t5, t4
	-[0x80001470]:sd t6, 672(ra)
Current Store : [0x80001474] : sd t5, 680(ra) -- Store: [0x800036c8]:0xEFFFFFBF40008000




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x800014a8]:KMXDA t6, t5, t4
	-[0x800014ac]:sd t6, 688(ra)
Current Store : [0x800014b0] : sd t5, 696(ra) -- Store: [0x800036d8]:0x0008FFDF00053FFF




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x800014dc]:KMXDA t6, t5, t4
	-[0x800014e0]:sd t6, 704(ra)
Current Store : [0x800014e4] : sd t5, 712(ra) -- Store: [0x800036e8]:0x0001FFF780000100




Last Coverpoint : ['rs2_h2_val == 1']
Last Code Sequence : 
	-[0x80001518]:KMXDA t6, t5, t4
	-[0x8000151c]:sd t6, 720(ra)
Current Store : [0x80001520] : sd t5, 728(ra) -- Store: [0x800036f8]:0xBFFFF7FF00040003




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001550]:KMXDA t6, t5, t4
	-[0x80001554]:sd t6, 736(ra)
Current Store : [0x80001558] : sd t5, 744(ra) -- Store: [0x80003708]:0xFDFF40003FFF1000




Last Coverpoint : ['rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001578]:KMXDA t6, t5, t4
	-[0x8000157c]:sd t6, 752(ra)
Current Store : [0x80001580] : sd t5, 760(ra) -- Store: [0x80003718]:0xFFF8100000091000




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x800015ac]:KMXDA t6, t5, t4
	-[0x800015b0]:sd t6, 768(ra)
Current Store : [0x800015b4] : sd t5, 776(ra) -- Store: [0x80003728]:0xFFEFFFF77FFFFFEF




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800015ec]:KMXDA t6, t5, t4
	-[0x800015f0]:sd t6, 784(ra)
Current Store : [0x800015f4] : sd t5, 792(ra) -- Store: [0x80003738]:0xDFFF0100F7FFC000




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80001628]:KMXDA t6, t5, t4
	-[0x8000162c]:sd t6, 800(ra)
Current Store : [0x80001630] : sd t5, 808(ra) -- Store: [0x80003748]:0xEFFF00400001FFFD




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001660]:KMXDA t6, t5, t4
	-[0x80001664]:sd t6, 816(ra)
Current Store : [0x80001668] : sd t5, 824(ra) -- Store: [0x80003758]:0x0008FFBF5555FFF8




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80001690]:KMXDA t6, t5, t4
	-[0x80001694]:sd t6, 832(ra)
Current Store : [0x80001698] : sd t5, 840(ra) -- Store: [0x80003768]:0x0005F7FF7FFFFF7F




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800016c8]:KMXDA t6, t5, t4
	-[0x800016cc]:sd t6, 848(ra)
Current Store : [0x800016d0] : sd t5, 856(ra) -- Store: [0x80003778]:0xFFFD0040AAAA0007




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x80001704]:KMXDA t6, t5, t4
	-[0x80001708]:sd t6, 864(ra)
Current Store : [0x8000170c] : sd t5, 872(ra) -- Store: [0x80003788]:0x800000070200FFF7




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001738]:KMXDA t6, t5, t4
	-[0x8000173c]:sd t6, 880(ra)
Current Store : [0x80001740] : sd t5, 888(ra) -- Store: [0x80003798]:0xFFFBAAAABFFF0040




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x8000176c]:KMXDA t6, t5, t4
	-[0x80001770]:sd t6, 896(ra)
Current Store : [0x80001774] : sd t5, 904(ra) -- Store: [0x800037a8]:0xFFF7C000C0000000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -5', 'rs1_h3_val == 4096', 'rs1_h2_val == -9', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800017ac]:KMXDA t6, t5, t4
	-[0x800017b0]:sd t6, 912(ra)
Current Store : [0x800017b4] : sd t5, 920(ra) -- Store: [0x800037b8]:0x1000FFF7FDFFC000




Last Coverpoint : ['rs1_h3_val == -2']
Last Code Sequence : 
	-[0x800017e0]:KMXDA t6, t5, t4
	-[0x800017e4]:sd t6, 928(ra)
Current Store : [0x800017e8] : sd t5, 936(ra) -- Store: [0x800037c8]:0xFFFE0040FFFC0007




Last Coverpoint : ['rs2_h3_val == -1']
Last Code Sequence : 
	-[0x8000180c]:KMXDA t6, t5, t4
	-[0x80001810]:sd t6, 944(ra)
Current Store : [0x80001814] : sd t5, 952(ra) -- Store: [0x800037d8]:0xFFFFFFFB0000FFF7




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80001848]:KMXDA t6, t5, t4
	-[0x8000184c]:sd t6, 960(ra)
Current Store : [0x80001850] : sd t5, 968(ra) -- Store: [0x800037e8]:0x4000FFFC0002BFFF




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x8000187c]:KMXDA t6, t5, t4
	-[0x80001880]:sd t6, 976(ra)
Current Store : [0x80001884] : sd t5, 984(ra) -- Store: [0x800037f8]:0xBFFF020000074000




Last Coverpoint : ['rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x800018b4]:KMXDA t6, t5, t4
	-[0x800018b8]:sd t6, 992(ra)
Current Store : [0x800018bc] : sd t5, 1000(ra) -- Store: [0x80003808]:0xFBFFBFFF00008000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -5', 'rs2_h2_val == -65', 'rs2_h1_val == -513', 'rs2_h0_val == -2', 'rs1_h3_val == -5', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800018e0]:KMXDA t6, t5, t4
	-[0x800018e4]:sd t6, 1008(ra)
Current Store : [0x800018e8] : sd t5, 1016(ra) -- Store: [0x80003818]:0xFFFB00023FFFFFF6




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -32768', 'rs2_h2_val == 1024', 'rs2_h1_val == 32', 'rs2_h0_val == 32767', 'rs1_h3_val == -4097', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001918]:KMXDA t6, t5, t4
	-[0x8000191c]:sd t6, 1024(ra)
Current Store : [0x80001920] : sd t5, 1032(ra) -- Store: [0x80003828]:0xEFFF000700070000




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x8000194c]:KMXDA t6, t5, t4
	-[0x80001950]:sd t6, 1040(ra)
Current Store : [0x80001954] : sd t5, 1048(ra) -- Store: [0x80003838]:0xFFF6FFFF04000008





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

|s.no|            signature             |                                                                                                                                                                                                                                                                    coverpoints                                                                                                                                                                                                                                                                     |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFF9FFF400808202|- opcode : kmxda<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h1_val == -257<br> - rs2_h0_val == -16385<br> - rs1_h3_val == -21846<br> - rs1_h1_val == -257<br> - rs1_h0_val == -16385<br> |[0x800003d0]:KMXDA t1, a1, a1<br> [0x800003d4]:sd t1, 0(ra)<br>       |
|   2|[0x80003220]<br>0x0000028A00000804|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs2_h3_val == -5<br> - rs2_h2_val == -65<br> - rs2_h1_val == -513<br> - rs2_h0_val == -2<br> - rs1_h3_val == -5<br> - rs1_h2_val == -65<br> - rs1_h1_val == -513<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                         |[0x800003fc]:KMXDA s5, s5, s5<br> [0x80000400]:sd s5, 16(ra)<br>      |
|   3|[0x80003230]<br>0x07FEE00000005F00|- rs1 : x22<br> - rs2 : x16<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -33<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -17<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 16<br> - rs1_h0_val == 256<br> |[0x80000438]:KMXDA fp, s6, a6<br> [0x8000043c]:sd fp, 32(ra)<br>      |
|   4|[0x80003240]<br>0x00000430000004C6|- rs1 : x30<br> - rs2 : x8<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h0_val == 512<br> - rs1_h3_val == 128<br> - rs1_h2_val == 16<br> - rs1_h1_val == 2<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                           |[0x80000474]:KMXDA t5, t5, fp<br> [0x80000478]:sd t5, 48(ra)<br>      |
|   5|[0x80003250]<br>0xFFFFE60004004FE9|- rs1 : x3<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 16<br> - rs2_h1_val == -16385<br> - rs1_h3_val == 32<br> - rs1_h1_val == 4<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                              |[0x800004a8]:KMXDA t4, gp, t4<br> [0x800004ac]:sd t4, 64(ra)<br>      |
|   6|[0x80003260]<br>0x00041082FF7FFE00|- rs1 : x18<br> - rs2 : x3<br> - rd : x24<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -65<br> - rs2_h2_val == -2049<br> - rs2_h1_val == 512<br> - rs2_h0_val == 0<br> - rs1_h3_val == -65<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                     |[0x800004d8]:KMXDA s8, s2, gp<br> [0x800004dc]:sd s8, 80(ra)<br>      |
|   7|[0x80003270]<br>0xFFFA539400025242|- rs1 : x8<br> - rs2 : x15<br> - rd : x12<br> - rs2_h3_val == -17<br> - rs2_h0_val == -4097<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -33<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000514]:KMXDA a2, fp, a5<br> [0x80000518]:sd a2, 96(ra)<br>      |
|   8|[0x80003280]<br>0x1FFF3000002B003A|- rs1 : x16<br> - rs2 : x7<br> - rd : x22<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 4<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 1<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                             |[0x80000548]:KMXDA s6, a6, t2<br> [0x8000054c]:sd s6, 112(ra)<br>     |
|   9|[0x80003290]<br>0xFFFE7C00FFFF4036|- rs1 : x13<br> - rs2 : x26<br> - rd : x19<br> - rs2_h3_val == -33<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -17<br> - rs2_h0_val == -3<br> - rs1_h3_val == 2<br> - rs1_h2_val == 1024<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                              |[0x8000057c]:KMXDA s3, a3, s10<br> [0x80000580]:sd s3, 128(ra)<br>    |
|  10|[0x800032a0]<br>0xF7FFE12200701801|- rs1 : x20<br> - rs2 : x25<br> - rd : x7<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == -8193<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -17<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                  |[0x800005bc]:KMXDA t2, s4, s9<br> [0x800005c0]:sd t2, 144(ra)<br>     |
|  11|[0x800032b0]<br>0xFFFFD5450000843F|- rs1 : x23<br> - rs2 : x18<br> - rd : x25<br> - rs2_h3_val == 21845<br> - rs1_h3_val == 16<br> - rs1_h2_val == 1<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005f8]:KMXDA s9, s7, s2<br> [0x800005fc]:sd s9, 160(ra)<br>     |
|  12|[0x800032c0]<br>0x00008003FEFFBFFC|- rs1 : x29<br> - rs2 : x13<br> - rd : x20<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -32768<br> - rs1_h2_val == -3<br> - rs1_h1_val == 512<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                  |[0x80000630]:KMXDA s4, t4, a3<br> [0x80000634]:sd s4, 176(ra)<br>     |
|  13|[0x800032d0]<br>0xEDFFC001FF002004|- rs1 : x9<br> - rs2 : x14<br> - rd : x18<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -2049<br> - rs1_h3_val == -2049<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000670]:KMXDA s2, s1, a4<br> [0x80000674]:sd s2, 192(ra)<br>     |
|  14|[0x800032e0]<br>0xFFBEFD80FEFFC000|- rs1 : x31<br> - rs2 : x20<br> - rd : x17<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 128<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1<br> - rs1_h3_val == -513<br> - rs1_h2_val == 512<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                         |[0x800006b4]:KMXDA a7, t6, s4<br> [0x800006b8]:sd a7, 208(ra)<br>     |
|  15|[0x800032f0]<br>0x0001E00F000000E8|- rs1 : x24<br> - rs2 : x4<br> - rd : x5<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -5<br> - rs2_h1_val == -2<br> - rs1_h3_val == -16385<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800006f0]:KMXDA t0, s8, tp<br> [0x800006f4]:sd t0, 224(ra)<br>     |
|  16|[0x80003300]<br>0xFEFFE03800017000|- rs1 : x28<br> - rs2 : x5<br> - rd : x31<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 8<br> - rs2_h1_val == 4096<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000734]:KMXDA t6, t3, t0<br> [0x80000738]:sd t6, 240(ra)<br>     |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x10<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000778]:KMXDA a0, a2, zero<br> [0x8000077c]:sd a0, 0(fp)<br>     |
|  18|[0x80003320]<br>0xFFF0219100006005|- rs1 : x4<br> - rs2 : x31<br> - rd : x27<br> - rs2_h3_val == -513<br> - rs2_h1_val == -5<br> - rs1_h3_val == -8193<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800007b4]:KMXDA s11, tp, t6<br> [0x800007b8]:sd s11, 16(fp)<br>    |
|  19|[0x80003330]<br>0xFFFF02F3FFFEF080|- rs1 : x25<br> - rs2 : x19<br> - rd : x26<br> - rs2_h3_val == -257<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -17<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800007ec]:KMXDA s10, s9, s3<br> [0x800007f0]:sd s10, 32(fp)<br>    |
|  20|[0x80003340]<br>0x000000E0FFFDFFFC|- rs1 : x15<br> - rs2 : x6<br> - rd : x16<br> - rs2_h3_val == -129<br> - rs2_h2_val == 32<br> - rs2_h1_val == 8<br> - rs2_h0_val == -1<br> - rs1_h2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000820]:KMXDA a6, a5, t1<br> [0x80000824]:sd a6, 48(fp)<br>      |
|  21|[0x80003350]<br>0x2AAAB800EAAAC02A|- rs1 : x2<br> - rs2 : x9<br> - rd : x23<br> - rs2_h3_val == -9<br> - rs2_h2_val == -21846<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 2048<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000854]:KMXDA s7, sp, s1<br> [0x80000858]:sd s7, 64(fp)<br>      |
|  22|[0x80003360]<br>0x0008030300013F89|- rs1 : x17<br> - rs2 : x22<br> - rd : x2<br> - rs2_h3_val == -3<br> - rs2_h2_val == 256<br> - rs1_h2_val == -257<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000888]:KMXDA sp, a7, s6<br> [0x8000088c]:sd sp, 80(fp)<br>      |
|  23|[0x80003370]<br>0xFFFFF285FBFFFFD0|- rs1 : x1<br> - rs2 : x2<br> - rd : x14<br> - rs2_h3_val == -2<br> - rs2_h2_val == -129<br> - rs2_h1_val == -3<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x800008b4]:KMXDA a4, ra, sp<br> [0x800008b8]:sd a4, 96(fp)<br>      |
|  24|[0x80003380]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x28<br> - rd : x0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 32<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -4097<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                  |[0x800008ec]:KMXDA zero, a0, t3<br> [0x800008f0]:sd zero, 112(fp)<br> |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x1<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -17<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000920]:KMXDA ra, zero, a0<br> [0x80000924]:sd ra, 128(fp)<br>   |
|  26|[0x800033a0]<br>0xFFFF2808FF800008|- rs1 : x14<br> - rs2 : x17<br> - rd : x13<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -257<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000095c]:KMXDA a3, a4, a7<br> [0x80000960]:sd a3, 144(fp)<br>     |
|  27|[0x800033b0]<br>0xFFE05800000001F4|- rs1 : x5<br> - rs2 : x30<br> - rd : x4<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 8192<br> - rs1_h2_val == -1025<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000998]:KMXDA tp, t0, t5<br> [0x8000099c]:sd tp, 160(fp)<br>     |
|  28|[0x800033c0]<br>0xFFDFFD9A0007FFE0|- rs1 : x6<br> - rs2 : x12<br> - rd : x9<br> - rs2_h3_val == 512<br> - rs2_h0_val == -5<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800009c4]:KMXDA s1, t1, a2<br> [0x800009c8]:sd s1, 176(fp)<br>     |
|  29|[0x800033d0]<br>0xFFE0FF04FFFE6000|- rs1 : x7<br> - rs2 : x27<br> - rd : x15<br> - rs2_h3_val == 256<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 16384<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                |[0x800009f8]:KMXDA a5, t2, s11<br> [0x800009fc]:sd a5, 192(fp)<br>    |
|  30|[0x800033e0]<br>0x002FFF80FFEF1556|- rs1 : x19<br> - rs2 : x23<br> - rd : x11<br> - rs2_h3_val == 128<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -65<br> - rs1_h3_val == 16384<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a3c]:KMXDA a1, s3, s7<br> [0x80000a40]:sd a1, 208(fp)<br>     |
|  31|[0x800033f0]<br>0xFFCFFF800000FFC9|- rs1 : x26<br> - rs2 : x24<br> - rd : x28<br> - rs2_h3_val == 64<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000a74]:KMXDA t3, s10, s8<br> [0x80000a78]:sd t3, 224(fp)<br>    |
|  32|[0x80003400]<br>0xFFFF3F2302108041|- rs1 : x27<br> - rs2 : x1<br> - rd : x3<br> - rs2_h3_val == 32<br> - rs2_h2_val == -3<br> - rs1_h1_val == -65<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ab0]:KMXDA gp, s11, ra<br> [0x80000ab4]:sd gp, 240(fp)<br>    |
|  33|[0x80003410]<br>0x000EFF60FFFF6E00|- rs2_h2_val == -513<br> - rs2_h1_val == -9<br> - rs1_h2_val == 32<br> - rs1_h1_val == -2<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000ae8]:KMXDA t6, t5, t4<br> [0x80000aec]:sd t6, 256(fp)<br>     |
|  34|[0x80003420]<br>0x04007EE0FFFEDFC8|- rs2_h0_val == -9<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b24]:KMXDA t6, t5, t4<br> [0x80000b28]:sd t6, 0(ra)<br>       |
|  35|[0x80003430]<br>0xFFFFD918FFFE0043|- rs2_h0_val == -1025<br> - rs1_h1_val == 128<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b60]:KMXDA t6, t5, t4<br> [0x80000b64]:sd t6, 16(ra)<br>      |
|  36|[0x80003440]<br>0xFFF75F8000001000|- rs2_h0_val == 64<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 128<br> - rs1_h1_val == 64<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b94]:KMXDA t6, t5, t4<br> [0x80000b98]:sd t6, 32(ra)<br>      |
|  37|[0x80003450]<br>0xFFFBF007FF7FFDE0|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000bc8]:KMXDA t6, t5, t4<br> [0x80000bcc]:sd t6, 48(ra)<br>      |
|  38|[0x80003460]<br>0x00200020FFF08000|- rs1_h0_val == -32768<br> - rs2_h3_val == 4<br> - rs2_h2_val == 512<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 8<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bf8]:KMXDA t6, t5, t4<br> [0x80000bfc]:sd t6, 64(ra)<br>      |
|  39|[0x80003470]<br>0x008002000000FDFF|- rs2_h2_val == 2<br> - rs2_h0_val == -513<br> - rs1_h3_val == 256<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c34]:KMXDA t6, t5, t4<br> [0x80000c38]:sd t6, 80(ra)<br>      |
|  40|[0x80003480]<br>0x001D120100000006|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c68]:KMXDA t6, t5, t4<br> [0x80000c6c]:sd t6, 96(ra)<br>      |
|  41|[0x80003490]<br>0xD555890001555D51|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000cac]:KMXDA t6, t5, t4<br> [0x80000cb0]:sd t6, 112(ra)<br>     |
|  42|[0x800034a0]<br>0x000000333FFF0085|- rs2_h1_val == 32767<br> - rs2_h0_val == -33<br> - rs1_h3_val == -3<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ce0]:KMXDA t6, t5, t4<br> [0x80000ce4]:sd t6, 128(ra)<br>     |
|  43|[0x800034b0]<br>0x00001EC003FFFAFB|- rs2_h2_val == 64<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000d18]:KMXDA t6, t5, t4<br> [0x80000d1c]:sd t6, 144(ra)<br>     |
|  44|[0x800034c0]<br>0xFEFF4101FFFFFDFE|- rs2_h0_val == 2<br> - rs1_h2_val == -513<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d54]:KMXDA t6, t5, t4<br> [0x80000d58]:sd t6, 160(ra)<br>     |
|  45|[0x800034d0]<br>0x000047F5001008E1|- rs2_h3_val == 2<br> - rs2_h2_val == -9<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d8c]:KMXDA t6, t5, t4<br> [0x80000d90]:sd t6, 176(ra)<br>     |
|  46|[0x800034e0]<br>0xFFFFE0FAFFFFF1E0|- rs2_h0_val == 32<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000db8]:KMXDA t6, t5, t4<br> [0x80000dbc]:sd t6, 192(ra)<br>     |
|  47|[0x800034f0]<br>0x00000D90FFFF7FEE|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000df0]:KMXDA t6, t5, t4<br> [0x80000df4]:sd t6, 208(ra)<br>     |
|  48|[0x80003500]<br>0xFFFFF017007FFFD0|- rs2_h2_val == -1025<br> - rs2_h1_val == 1024<br> - rs1_h3_val == 4<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e28]:KMXDA t6, t5, t4<br> [0x80000e2c]:sd t6, 224(ra)<br>     |
|  49|[0x80003510]<br>0xFFFFF7F2FFFF8FEC|- rs2_h3_val == -1025<br> - rs1_h2_val == 2<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e60]:KMXDA t6, t5, t4<br> [0x80000e64]:sd t6, 240(ra)<br>     |
|  50|[0x80003520]<br>0xFFF75534FFFFDBFE|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e9c]:KMXDA t6, t5, t4<br> [0x80000ea0]:sd t6, 256(ra)<br>     |
|  51|[0x80003530]<br>0xFFFFCDFBFFFFFC0D|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000ed8]:KMXDA t6, t5, t4<br> [0x80000edc]:sd t6, 272(ra)<br>     |
|  52|[0x80003540]<br>0xFFFFFEE8FFFFFE72|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f14]:KMXDA t6, t5, t4<br> [0x80000f18]:sd t6, 288(ra)<br>     |
|  53|[0x80003550]<br>0x0001003C00118000|- rs2_h3_val == 16<br> - rs2_h2_val == 4<br> - rs2_h1_val == 2048<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f50]:KMXDA t6, t5, t4<br> [0x80000f54]:sd t6, 304(ra)<br>     |
|  54|[0x80003560]<br>0xFFFFBFE8FFFFFEEA|- rs2_h3_val == 8<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000f88]:KMXDA t6, t5, t4<br> [0x80000f8c]:sd t6, 320(ra)<br>     |
|  55|[0x80003570]<br>0xF0002000FFFCAAAC|- rs2_h3_val == 1<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000fcc]:KMXDA t6, t5, t4<br> [0x80000fd0]:sd t6, 336(ra)<br>     |
|  56|[0x80003580]<br>0x00020481FFFFFC03|- rs1_h3_val == -129<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001000]:KMXDA t6, t5, t4<br> [0x80001004]:sd t6, 352(ra)<br>     |
|  57|[0x80003590]<br>0xFFFFEFD2003FBEFE|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000103c]:KMXDA t6, t5, t4<br> [0x80001040]:sd t6, 368(ra)<br>     |
|  58|[0x800035a0]<br>0x00084021FFFF7100|- rs2_h2_val == -33<br> - rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001078]:KMXDA t6, t5, t4<br> [0x8000107c]:sd t6, 384(ra)<br>     |
|  59|[0x800035b0]<br>0x002EAA80FFFFFFF9|- rs2_h1_val == -1<br> - rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800010ac]:KMXDA t6, t5, t4<br> [0x800010b0]:sd t6, 400(ra)<br>     |
|  60|[0x800035c0]<br>0x00000095FFD2002E|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010e0]:KMXDA t6, t5, t4<br> [0x800010e4]:sd t6, 416(ra)<br>     |
|  61|[0x800035d0]<br>0x0001FFFAFFFF3001|- rs2_h0_val == -8193<br> - rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001118]:KMXDA t6, t5, t4<br> [0x8000111c]:sd t6, 432(ra)<br>     |
|  62|[0x800035e0]<br>0x0000535600022FE7|- rs2_h2_val == -1<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000114c]:KMXDA t6, t5, t4<br> [0x80001150]:sd t6, 448(ra)<br>     |
|  63|[0x800035f0]<br>0xFFFE8802FFBF7B81|- rs2_h1_val == 256<br> - rs2_h0_val == -129<br> - rs1_h3_val == -257<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001180]:KMXDA t6, t5, t4<br> [0x80001184]:sd t6, 464(ra)<br>     |
|  64|[0x80003600]<br>0xFFFDEFE00001FFDA|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800011b4]:KMXDA t6, t5, t4<br> [0x800011b8]:sd t6, 480(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFB1080015CED6|- rs2_h1_val == -21846<br> - rs2_h0_val == 1024<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800011ec]:KMXDA t6, t5, t4<br> [0x800011f0]:sd t6, 496(ra)<br>     |
|  66|[0x80003620]<br>0xFFD95500FFF80F00|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001230]:KMXDA t6, t5, t4<br> [0x80001234]:sd t6, 512(ra)<br>     |
|  67|[0x80003630]<br>0x006B0056001BFFF0|- rs2_h2_val == 2048<br> - rs2_h0_val == 128<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000126c]:KMXDA t6, t5, t4<br> [0x80001270]:sd t6, 528(ra)<br>     |
|  68|[0x80003640]<br>0x00000F78FFFE0063|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012a8]:KMXDA t6, t5, t4<br> [0x800012ac]:sd t6, 544(ra)<br>     |
|  69|[0x80003650]<br>0xFFFFFC49FFFFFD57|- rs2_h1_val == -129<br> - rs2_h0_val == 4<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012e4]:KMXDA t6, t5, t4<br> [0x800012e8]:sd t6, 560(ra)<br>     |
|  70|[0x80003660]<br>0xFFFDD802FFAC58AC|- rs1_h3_val == 21845<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001328]:KMXDA t6, t5, t4<br> [0x8000132c]:sd t6, 576(ra)<br>     |
|  71|[0x80003670]<br>0x003FFF89FFFFFB79|- rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000135c]:KMXDA t6, t5, t4<br> [0x80001360]:sd t6, 592(ra)<br>     |
|  72|[0x80003680]<br>0x00002800FEFFF400|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001394]:KMXDA t6, t5, t4<br> [0x80001398]:sd t6, 608(ra)<br>     |
|  73|[0x80003690]<br>0xFFFAA6A010008405|- rs2_h2_val == -2<br> - rs1_h3_val == 512<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800013c8]:KMXDA t6, t5, t4<br> [0x800013cc]:sd t6, 624(ra)<br>     |
|  74|[0x800036a0]<br>0x0000000EFFFFFF76|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001400]:KMXDA t6, t5, t4<br> [0x80001404]:sd t6, 640(ra)<br>     |
|  75|[0x800036c0]<br>0xFFEA2568DFFBC000|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000146c]:KMXDA t6, t5, t4<br> [0x80001470]:sd t6, 672(ra)<br>     |
|  76|[0x800036d0]<br>0xFFFFBF53F0000029|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800014a8]:KMXDA t6, t5, t4<br> [0x800014ac]:sd t6, 688(ra)<br>     |
|  77|[0x800036e0]<br>0xFFFF7004FFFE0000|- rs2_h1_val == 128<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800014dc]:KMXDA t6, t5, t4<br> [0x800014e0]:sd t6, 704(ra)<br>     |
|  78|[0x800036f0]<br>0xFFDFBBFFFFFFF7FD|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001518]:KMXDA t6, t5, t4<br> [0x8000151c]:sd t6, 720(ra)<br>     |
|  79|[0x80003700]<br>0xFFFDFFE0F7DFD001|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001550]:KMXDA t6, t5, t4<br> [0x80001554]:sd t6, 736(ra)<br>     |
|  80|[0x80003710]<br>0xFFFFA03000020000|- rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001578]:KMXDA t6, t5, t4<br> [0x8000157c]:sd t6, 752(ra)<br>     |
|  81|[0x80003720]<br>0x0000008F40012012|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800015ac]:KMXDA t6, t5, t4<br> [0x800015b0]:sd t6, 768(ra)<br>     |
|  82|[0x80003730]<br>0x0001A0090D5542AB|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015ec]:KMXDA t6, t5, t4<br> [0x800015f0]:sd t6, 784(ra)<br>     |
|  83|[0x80003740]<br>0xFFEFFCC00000004F|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001628]:KMXDA t6, t5, t4<br> [0x8000162c]:sd t6, 800(ra)<br>     |
|  84|[0x80003750]<br>0xFFFFF8080AAAA208|- rs2_h1_val == -65<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001660]:KMXDA t6, t5, t4<br> [0x80001664]:sd t6, 816(ra)<br>     |
|  85|[0x80003760]<br>0x02006800E0001FC0|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001690]:KMXDA t6, t5, t4<br> [0x80001694]:sd t6, 832(ra)<br>     |
|  86|[0x80003770]<br>0x00008003FFFF546D|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016c8]:KMXDA t6, t5, t4<br> [0x800016cc]:sd t6, 848(ra)<br>     |
|  87|[0x80003780]<br>0x02000FF90003FE00|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001704]:KMXDA t6, t5, t4<br> [0x80001708]:sd t6, 864(ra)<br>     |
|  88|[0x80003790]<br>0x0001AA90FFF03FC1|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001738]:KMXDA t6, t5, t4<br> [0x8000173c]:sd t6, 880(ra)<br>     |
|  89|[0x800037a0]<br>0xF000404800014000|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000176c]:KMXDA t6, t5, t4<br> [0x80001770]:sd t6, 896(ra)<br>     |
|  90|[0x800037c0]<br>0xFFFFFDCA0002554B|- rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017e0]:KMXDA t6, t5, t4<br> [0x800017e4]:sd t6, 928(ra)<br>     |
|  91|[0x800037d0]<br>0x00000106FFFFFFD3|- rs2_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000180c]:KMXDA t6, t5, t4<br> [0x80001810]:sd t6, 944(ra)<br>     |
|  92|[0x800037e0]<br>0x1555401CF000AAAB|- rs2_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001848]:KMXDA t6, t5, t4<br> [0x8000184c]:sd t6, 960(ra)<br>     |
|  93|[0x800037f0]<br>0xDF7FBE01FFFE0000|- rs2_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000187c]:KMXDA t6, t5, t4<br> [0x80001880]:sd t6, 976(ra)<br>     |
|  94|[0x80003800]<br>0x1555B14D00808000|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018b4]:KMXDA t6, t5, t4<br> [0x800018b8]:sd t6, 992(ra)<br>     |
|  95|[0x80003830]<br>0xFFFFC0AAFFFFE7D0|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000194c]:KMXDA t6, t5, t4<br> [0x80001950]:sd t6, 1040(ra)<br>    |
