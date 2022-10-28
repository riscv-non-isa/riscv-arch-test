
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b30')]      |
| SIG_REGION                | [('0x80003210', '0x800038a0', '210 dwords')]      |
| COV_LABELS                | kmaxds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmaxds-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 210      |
| STAT1                     | 102      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 105     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001460]:KMAXDS t6, t5, t4
      [0x80001464]:sd t6, 656(ra)
 -- Signature Address: 0x800036b0 Data: 0x06C5B22501ABF9D3
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -4097
      - rs2_h2_val == 4096
      - rs2_h1_val == -16385
      - rs2_h0_val == 64
      - rs1_h2_val == -2
      - rs1_h1_val == 16
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019f8]:KMAXDS t6, t5, t4
      [0x800019fc]:sd t6, 1056(ra)
 -- Signature Address: 0x80003840 Data: 0xFDE4544F0A55B28F
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -129
      - rs2_h2_val == 2048
      - rs2_h1_val == -3
      - rs2_h0_val == 21845
      - rs1_h3_val == -32768
      - rs1_h2_val == -21846
      - rs1_h0_val == 16384




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b18]:KMAXDS t6, t5, t4
      [0x80001b1c]:sd t6, 1136(ra)
 -- Signature Address: 0x80003890 Data: 0xFDC5184A14FFB3A8
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -21846
      - rs2_h1_val == 2048
      - rs2_h0_val == 256
      - rs1_h3_val == -1025
      - rs1_h1_val == -33
      - rs1_h0_val == -21846






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxds', 'rs1 : x22', 'rs2 : x22', 'rd : x19', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -32768', 'rs2_h0_val == 4', 'rs1_h3_val == -32768', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800003d0]:KMAXDS s3, s6, s6
	-[0x800003d4]:sd s3, 0(fp)
Current Store : [0x800003d8] : sd s6, 8(fp) -- Store: [0x80003218]:0x8000FFF8FFF90004




Last Coverpoint : ['rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == -32768', 'rs2_h0_val == -129', 'rs1_h2_val == -32768', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000410]:KMAXDS a2, a2, a2
	-[0x80000414]:sd a2, 16(fp)
Current Store : [0x80000418] : sd a2, 24(fp) -- Store: [0x80003228]:0xC0008000FFF8FF7F




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == -17', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000044c]:KMAXDS a0, s8, zero
	-[0x80000450]:sd a0, 32(fp)
Current Store : [0x80000454] : sd s8, 40(fp) -- Store: [0x80003238]:0xFFEFFFF6FFFEFFFA




Last Coverpoint : ['rs1 : x3', 'rs2 : x25', 'rd : x3', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 21845', 'rs2_h1_val == 32767', 'rs2_h0_val == 128', 'rs1_h3_val == 16384', 'rs1_h2_val == -1025', 'rs1_h1_val == -9', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000490]:KMAXDS gp, gp, s9
	-[0x80000494]:sd gp, 48(fp)
Current Store : [0x80000498] : sd gp, 56(fp) -- Store: [0x80003248]:0x5756B7FEFFEEFBA0




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -65', 'rs2_h0_val == -1025', 'rs1_h3_val == 2', 'rs1_h1_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800004cc]:KMAXDS t3, a7, t3
	-[0x800004d0]:sd t3, 64(fp)
Current Store : [0x800004d4] : sd a7, 72(fp) -- Store: [0x80003258]:0x0002FFF9FFFFF7FF




Last Coverpoint : ['rs1 : x29', 'rs2 : x5', 'rd : x7', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 1', 'rs2_h0_val == 32', 'rs1_h3_val == -2', 'rs1_h2_val == 256', 'rs1_h1_val == 512', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000500]:KMAXDS t2, t4, t0
	-[0x80000504]:sd t2, 80(fp)
Current Store : [0x80000508] : sd t4, 88(fp) -- Store: [0x80003268]:0xFFFE01000200BFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x23', 'rs2_h3_val == -17', 'rs2_h2_val == -65', 'rs2_h1_val == -3', 'rs2_h0_val == 32767', 'rs1_h3_val == -3', 'rs1_h2_val == -8193', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000538]:KMAXDS s7, t5, a7
	-[0x8000053c]:sd s7, 96(fp)
Current Store : [0x80000540] : sd t5, 104(fp) -- Store: [0x80003278]:0xFFFDDFFFFFFD0007




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x27', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs2_h2_val == 16', 'rs2_h0_val == 8', 'rs1_h3_val == -8193', 'rs1_h2_val == 2048', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000574]:KMAXDS s11, a1, t5
	-[0x80000578]:sd s11, 112(fp)
Current Store : [0x8000057c] : sd a1, 120(fp) -- Store: [0x80003288]:0xDFFF0800FFFF0008




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x29', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 8', 'rs2_h1_val == -513', 'rs2_h0_val == -65', 'rs1_h3_val == 1024', 'rs1_h2_val == -257', 'rs1_h1_val == 2048', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005a8]:KMAXDS t4, s7, a3
	-[0x800005ac]:sd t4, 128(fp)
Current Store : [0x800005b0] : sd s7, 136(fp) -- Store: [0x80003298]:0x0400FEFF08000080




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x22', 'rs2_h3_val == -21846', 'rs2_h1_val == 2048', 'rs2_h0_val == 256', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800005e4]:KMAXDS s6, zero, t4
	-[0x800005e8]:sd s6, 144(fp)
Current Store : [0x800005ec] : sd zero, 152(fp) -- Store: [0x800032a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x30', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -33', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80000618]:KMAXDS t5, t0, t2
	-[0x8000061c]:sd t5, 160(fp)
Current Store : [0x80000620] : sd t0, 168(fp) -- Store: [0x800032b8]:0xFFF9200008000003




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rd : x4', 'rs2_h3_val == -16385', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80000654]:KMAXDS tp, s2, t1
	-[0x80000658]:sd tp, 176(fp)
Current Store : [0x8000065c] : sd s2, 184(fp) -- Store: [0x800032c8]:0x0007F7FF00060003




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x2', 'rs2_h3_val == -8193', 'rs2_h2_val == 8192']
Last Code Sequence : 
	-[0x80000698]:KMAXDS sp, s10, ra
	-[0x8000069c]:sd sp, 192(fp)
Current Store : [0x800006a0] : sd s10, 200(fp) -- Store: [0x800032d8]:0x000500030800FFFC




Last Coverpoint : ['rs1 : x6', 'rs2 : x3', 'rd : x25', 'rs2_h3_val == -4097', 'rs2_h2_val == -8193', 'rs2_h1_val == 64', 'rs1_h2_val == 1', 'rs1_h1_val == 1', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800006d4]:KMAXDS s9, t1, gp
	-[0x800006d8]:sd s9, 208(fp)
Current Store : [0x800006dc] : sd t1, 216(fp) -- Store: [0x800032e8]:0xFFF600010001FFBF




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x16', 'rs2_h3_val == -2049', 'rs2_h0_val == 16384', 'rs1_h3_val == 256', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80000708]:KMAXDS a6, s3, a0
	-[0x8000070c]:sd a6, 224(fp)
Current Store : [0x80000710] : sd s3, 232(fp) -- Store: [0x800032f8]:0x0100BFFFFFFDFFF6




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x14', 'rs2_h3_val == -1025', 'rs2_h2_val == 32767', 'rs2_h1_val == -65', 'rs1_h3_val == 16', 'rs1_h2_val == -5', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000744]:KMAXDS a4, s1, s4
	-[0x80000748]:sd a4, 240(fp)
Current Store : [0x8000074c] : sd s1, 248(fp) -- Store: [0x80003308]:0x0010FFFB00050800




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x5', 'rs2_h3_val == -513', 'rs2_h1_val == 4', 'rs2_h0_val == -513', 'rs1_h1_val == -257', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000784]:KMAXDS t0, s4, a1
	-[0x80000788]:sd t0, 0(gp)
Current Store : [0x8000078c] : sd s4, 8(gp) -- Store: [0x80003318]:0x00100006FEFF0100




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x15', 'rs2_h3_val == -257', 'rs2_h2_val == -5', 'rs2_h1_val == 256', 'rs2_h0_val == 2048', 'rs1_h3_val == 8', 'rs1_h2_val == 32767', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800007bc]:KMAXDS a5, s5, a4
	-[0x800007c0]:sd a5, 16(gp)
Current Store : [0x800007c4] : sd s5, 24(gp) -- Store: [0x80003328]:0x00087FFFEFFFFFBF




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rd : x18', 'rs2_h3_val == -129', 'rs2_h2_val == 1', 'rs2_h1_val == -129', 'rs2_h0_val == -257', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800007f4]:KMAXDS s2, a5, s7
	-[0x800007f8]:sd s2, 32(gp)
Current Store : [0x800007fc] : sd a5, 40(gp) -- Store: [0x80003338]:0x0008F7FFEFFFEFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x6', 'rs2_h3_val == -33', 'rs2_h2_val == -513', 'rs2_h1_val == -33', 'rs2_h0_val == -8193', 'rs1_h3_val == -513', 'rs1_h2_val == 2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000830]:KMAXDS t1, t3, tp
	-[0x80000834]:sd t1, 48(gp)
Current Store : [0x80000838] : sd t3, 56(gp) -- Store: [0x80003348]:0xFDFF000200075555




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x26', 'rs2_h3_val == -9', 'rs2_h2_val == 4', 'rs2_h1_val == 16', 'rs1_h3_val == 8192', 'rs1_h2_val == -17', 'rs1_h1_val == -513', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000868]:KMAXDS s10, sp, s8
	-[0x8000086c]:sd s10, 64(gp)
Current Store : [0x80000870] : sd sp, 72(gp) -- Store: [0x80003358]:0x2000FFEFFDFFFFEF




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x8', 'rs2_h3_val == -5', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x800008a0]:KMAXDS fp, a4, t6
	-[0x800008a4]:sd fp, 80(gp)
Current Store : [0x800008a8] : sd a4, 88(gp) -- Store: [0x80003368]:0xBFFF8000FFFEC000




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x31', 'rs2_h3_val == -3', 'rs2_h1_val == 8192', 'rs2_h0_val == 1', 'rs1_h3_val == 128', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008cc]:KMAXDS t6, s11, s5
	-[0x800008d0]:sd t6, 96(gp)
Current Store : [0x800008d4] : sd s11, 104(gp) -- Store: [0x80003378]:0x0080DFFF10000005




Last Coverpoint : ['rs1 : x10', 'rs2 : x27', 'rd : x1', 'rs2_h3_val == -2', 'rs2_h1_val == 32', 'rs2_h0_val == 1024', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800008f8]:KMAXDS ra, a0, s11
	-[0x800008fc]:sd ra, 112(gp)
Current Store : [0x80000900] : sd a0, 120(gp) -- Store: [0x80003388]:0x00007FFFAAAA0003




Last Coverpoint : ['rs1 : x8', 'rs2 : x2', 'rd : x0', 'rs2_h3_val == 16384', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x8000092c]:KMAXDS zero, fp, sp
	-[0x80000930]:sd zero, 128(gp)
Current Store : [0x80000934] : sd fp, 136(gp) -- Store: [0x80003398]:0xDFFF000900000009




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x11', 'rs1_h0_val == -32768', 'rs2_h3_val == 8192', 'rs2_h2_val == -1', 'rs1_h3_val == -9', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80000964]:KMAXDS a1, ra, s1
	-[0x80000968]:sd a1, 144(gp)
Current Store : [0x8000096c] : sd ra, 152(gp) -- Store: [0x800033a8]:0xFFF70080FFF98000




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x21', 'rs2_h3_val == 4096', 'rs2_h2_val == -1025', 'rs2_h0_val == -16385', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x800009a0]:KMAXDS s5, t6, a5
	-[0x800009a4]:sd s5, 160(gp)
Current Store : [0x800009a8] : sd t6, 168(gp) -- Store: [0x800033b8]:0x0006FFDFFFFD0006




Last Coverpoint : ['rs1 : x16', 'rs2 : x18', 'rd : x20', 'rs2_h3_val == 2048', 'rs1_h3_val == 512', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800009dc]:KMAXDS s4, a6, s2
	-[0x800009e0]:sd s4, 176(gp)
Current Store : [0x800009e4] : sd a6, 184(gp) -- Store: [0x800033c8]:0x020000050800AAAA




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x24', 'rs2_h3_val == 1024', 'rs2_h1_val == -2049', 'rs2_h0_val == -33', 'rs1_h3_val == 4', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000a14]:KMAXDS s8, s9, fp
	-[0x80000a18]:sd s8, 192(gp)
Current Store : [0x80000a1c] : sd s9, 200(gp) -- Store: [0x800033d8]:0x0004FFFA80000800




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x17', 'rs2_h3_val == 512', 'rs2_h2_val == 128', 'rs2_h1_val == 128', 'rs2_h0_val == -21846', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000a58]:KMAXDS a7, t2, a6
	-[0x80000a5c]:sd a7, 208(gp)
Current Store : [0x80000a60] : sd t2, 216(gp) -- Store: [0x800033e8]:0x0008FFF8F7FF0009




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x9', 'rs2_h3_val == 256', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80000a90]:KMAXDS s1, a3, s3
	-[0x80000a94]:sd s1, 224(gp)
Current Store : [0x80000a98] : sd a3, 232(gp) -- Store: [0x800033f8]:0x0000FDFFFFF6AAAA




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x13', 'rs2_h3_val == 128', 'rs2_h2_val == 512', 'rs2_h1_val == -2', 'rs1_h3_val == 32', 'rs1_h2_val == 512', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000ac4]:KMAXDS a3, tp, s10
	-[0x80000ac8]:sd a3, 240(gp)
Current Store : [0x80000acc] : sd tp, 248(gp) -- Store: [0x80003408]:0x0020020010000020




Last Coverpoint : ['rs2_h3_val == 64']
Last Code Sequence : 
	-[0x80000afc]:KMAXDS t6, t5, t4
	-[0x80000b00]:sd t6, 256(gp)
Current Store : [0x80000b04] : sd t5, 264(gp) -- Store: [0x80003418]:0x400080000005AAAA




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == -129', 'rs2_h0_val == -32768', 'rs1_h3_val == 1', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000b34]:KMAXDS t6, t5, t4
	-[0x80000b38]:sd t6, 0(ra)
Current Store : [0x80000b3c] : sd t5, 8(ra) -- Store: [0x80003428]:0x0001F7FF10000040




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -257', 'rs2_h1_val == -257', 'rs2_h0_val == -9', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000b68]:KMAXDS t6, t5, t4
	-[0x80000b6c]:sd t6, 16(ra)
Current Store : [0x80000b70] : sd t5, 24(ra) -- Store: [0x80003438]:0x0003FDFF4000FFBF




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000ba4]:KMAXDS t6, t5, t4
	-[0x80000ba8]:sd t6, 32(ra)
Current Store : [0x80000bac] : sd t5, 40(ra) -- Store: [0x80003448]:0x00052000FFFB0040




Last Coverpoint : ['rs2_h1_val == -32768', 'rs1_h3_val == -65', 'rs1_h2_val == -2', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000be0]:KMAXDS t6, t5, t4
	-[0x80000be4]:sd t6, 48(ra)
Current Store : [0x80000be8] : sd t5, 56(ra) -- Store: [0x80003458]:0xFFBFFFFE2000AAAA




Last Coverpoint : ['rs1_h1_val == 1024', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000c14]:KMAXDS t6, t5, t4
	-[0x80000c18]:sd t6, 64(ra)
Current Store : [0x80000c1c] : sd t5, 72(ra) -- Store: [0x80003468]:0x0008C0000400FFFD




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == 21845', 'rs1_h2_val == 64', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c58]:KMAXDS t6, t5, t4
	-[0x80000c5c]:sd t6, 80(ra)
Current Store : [0x80000c60] : sd t5, 88(ra) -- Store: [0x80003478]:0x000700400100FFFA




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h3_val == -2049', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000c90]:KMAXDS t6, t5, t4
	-[0x80000c94]:sd t6, 96(ra)
Current Store : [0x80000c98] : sd t5, 104(ra) -- Store: [0x80003488]:0xF7FF800000803FFF




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000ccc]:KMAXDS t6, t5, t4
	-[0x80000cd0]:sd t6, 112(ra)
Current Store : [0x80000cd4] : sd t5, 120(ra) -- Store: [0x80003498]:0xF7FFFDFF00400080




Last Coverpoint : ['rs1_h3_val == -1025', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000d08]:KMAXDS t6, t5, t4
	-[0x80000d0c]:sd t6, 128(ra)
Current Store : [0x80000d10] : sd t5, 136(ra) -- Store: [0x800034a8]:0xFBFF80000020EFFF




Last Coverpoint : ['rs2_h1_val == 1024', 'rs2_h0_val == 4096', 'rs1_h2_val == 32', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d40]:KMAXDS t6, t5, t4
	-[0x80000d44]:sd t6, 144(ra)
Current Store : [0x80000d48] : sd t5, 152(ra) -- Store: [0x800034b8]:0xFFF600200010F7FF




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d7c]:KMAXDS t6, t5, t4
	-[0x80000d80]:sd t6, 160(ra)
Current Store : [0x80000d84] : sd t5, 168(ra) -- Store: [0x800034c8]:0x0007DFFF00080004




Last Coverpoint : ['rs1_h1_val == 4', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000db4]:KMAXDS t6, t5, t4
	-[0x80000db8]:sd t6, 176(ra)
Current Store : [0x80000dbc] : sd t5, 184(ra) -- Store: [0x800034d8]:0x0010000100040200




Last Coverpoint : ['rs1_h3_val == -5', 'rs1_h1_val == 2', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000dec]:KMAXDS t6, t5, t4
	-[0x80000df0]:sd t6, 192(ra)
Current Store : [0x80000df4] : sd t5, 200(ra) -- Store: [0x800034e8]:0xFFFBDFFF0002FFFE




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000e24]:KMAXDS t6, t5, t4
	-[0x80000e28]:sd t6, 208(ra)
Current Store : [0x80000e2c] : sd t5, 216(ra) -- Store: [0x800034f8]:0x0005200001007FFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e58]:KMAXDS t6, t5, t4
	-[0x80000e5c]:sd t6, 224(ra)
Current Store : [0x80000e60] : sd t5, 232(ra) -- Store: [0x80003508]:0xFFFA00073FFFDFFF




Last Coverpoint : ['rs1_h3_val == 4096', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e94]:KMAXDS t6, t5, t4
	-[0x80000e98]:sd t6, 240(ra)
Current Store : [0x80000e9c] : sd t5, 248(ra) -- Store: [0x80003518]:0x1000DFFF0001FBFF




Last Coverpoint : ['rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ed8]:KMAXDS t6, t5, t4
	-[0x80000edc]:sd t6, 256(ra)
Current Store : [0x80000ee0] : sd t5, 264(ra) -- Store: [0x80003528]:0x0400FFDF0400FDFF




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 4096', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000f0c]:KMAXDS t6, t5, t4
	-[0x80000f10]:sd t6, 272(ra)
Current Store : [0x80000f14] : sd t5, 280(ra) -- Store: [0x80003538]:0x0009C000F7FFFEFF




Last Coverpoint : ['rs1_h3_val == 32767', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x80000f48]:KMAXDS t6, t5, t4
	-[0x80000f4c]:sd t6, 288(ra)
Current Store : [0x80000f50] : sd t5, 296(ra) -- Store: [0x80003548]:0x7FFFFF7F0007FF7F




Last Coverpoint : ['rs1_h3_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000f78]:KMAXDS t6, t5, t4
	-[0x80000f7c]:sd t6, 304(ra)
Current Store : [0x80000f80] : sd t5, 312(ra) -- Store: [0x80003558]:0xFFFF00800009FFDF




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_h2_val == 4', 'rs1_h1_val == -8193', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000fac]:KMAXDS t6, t5, t4
	-[0x80000fb0]:sd t6, 320(ra)
Current Store : [0x80000fb4] : sd t5, 328(ra) -- Store: [0x80003568]:0xFFBF0004DFFFFFF7




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h3_val == -129', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000fe0]:KMAXDS t6, t5, t4
	-[0x80000fe4]:sd t6, 336(ra)
Current Store : [0x80000fe8] : sd t5, 344(ra) -- Store: [0x80003578]:0xFF7FFFFA0800FFFB




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80001018]:KMAXDS t6, t5, t4
	-[0x8000101c]:sd t6, 352(ra)
Current Store : [0x80001020] : sd t5, 360(ra) -- Store: [0x80003588]:0xFFFEFFDFFFFA4000




Last Coverpoint : ['rs2_h2_val == -21846', 'rs2_h0_val == 2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80001048]:KMAXDS t6, t5, t4
	-[0x8000104c]:sd t6, 368(ra)
Current Store : [0x80001050] : sd t5, 376(ra) -- Store: [0x80003598]:0xFFFDFF7F40002000




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80001080]:KMAXDS t6, t5, t4
	-[0x80001084]:sd t6, 384(ra)
Current Store : [0x80001088] : sd t5, 392(ra) -- Store: [0x800035a8]:0x7FFFFFFA55551000




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == 21845', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800010c4]:KMAXDS t6, t5, t4
	-[0x800010c8]:sd t6, 400(ra)
Current Store : [0x800010cc] : sd t5, 408(ra) -- Store: [0x800035b8]:0xFFEF0007F7FF0400




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == -9', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001100]:KMAXDS t6, t5, t4
	-[0x80001104]:sd t6, 416(ra)
Current Store : [0x80001108] : sd t5, 424(ra) -- Store: [0x800035c8]:0x0009FFF6F7FF0002




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80001134]:KMAXDS t6, t5, t4
	-[0x80001138]:sd t6, 432(ra)
Current Store : [0x8000113c] : sd t5, 440(ra) -- Store: [0x800035d8]:0xFF7F00000009F7FF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80001170]:KMAXDS t6, t5, t4
	-[0x80001174]:sd t6, 448(ra)
Current Store : [0x80001178] : sd t5, 456(ra) -- Store: [0x800035e8]:0xFFFC0080C000AAAA




Last Coverpoint : ['rs2_h1_val == -8193', 'rs2_h0_val == -2049', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800011ac]:KMAXDS t6, t5, t4
	-[0x800011b0]:sd t6, 464(ra)
Current Store : [0x800011b4] : sd t5, 472(ra) -- Store: [0x800035f8]:0x0000FEFFFF7FF7FF




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800011ec]:KMAXDS t6, t5, t4
	-[0x800011f0]:sd t6, 480(ra)
Current Store : [0x800011f4] : sd t5, 488(ra) -- Store: [0x80003608]:0xBFFFFF7F2000FBFF




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001228]:KMAXDS t6, t5, t4
	-[0x8000122c]:sd t6, 496(ra)
Current Store : [0x80001230] : sd t5, 504(ra) -- Store: [0x80003618]:0xFFFBFFFB0000FDFF




Last Coverpoint : ['rs2_h2_val == 16384', 'rs2_h0_val == -3', 'rs1_h3_val == 2048', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001264]:KMAXDS t6, t5, t4
	-[0x80001268]:sd t6, 512(ra)
Current Store : [0x8000126c] : sd t5, 520(ra) -- Store: [0x80003628]:0x080000021000FFFF




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800012a0]:KMAXDS t6, t5, t4
	-[0x800012a4]:sd t6, 528(ra)
Current Store : [0x800012a8] : sd t5, 536(ra) -- Store: [0x80003638]:0xFDFF00808000FFFC




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x800012d4]:KMAXDS t6, t5, t4
	-[0x800012d8]:sd t6, 544(ra)
Current Store : [0x800012dc] : sd t5, 552(ra) -- Store: [0x80003648]:0x0004FFFFFFF8FFBF




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80001300]:KMAXDS t6, t5, t4
	-[0x80001304]:sd t6, 560(ra)
Current Store : [0x80001308] : sd t5, 568(ra) -- Store: [0x80003658]:0x0800FFEF00000003




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001334]:KMAXDS t6, t5, t4
	-[0x80001338]:sd t6, 576(ra)
Current Store : [0x8000133c] : sd t5, 584(ra) -- Store: [0x80003668]:0x3FFFFFEFFFFF0003




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == -21846', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x8000136c]:KMAXDS t6, t5, t4
	-[0x80001370]:sd t6, 592(ra)
Current Store : [0x80001374] : sd t5, 600(ra) -- Store: [0x80003678]:0xAAAAEFFF0100FFF9




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800013b0]:KMAXDS t6, t5, t4
	-[0x800013b4]:sd t6, 608(ra)
Current Store : [0x800013b8] : sd t5, 616(ra) -- Store: [0x80003688]:0x555500067FFF0010




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x800013f4]:KMAXDS t6, t5, t4
	-[0x800013f8]:sd t6, 624(ra)
Current Store : [0x800013fc] : sd t5, 632(ra) -- Store: [0x80003698]:0xEFFF00010001EFFF




Last Coverpoint : ['rs1_h3_val == -257', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001430]:KMAXDS t6, t5, t4
	-[0x80001434]:sd t6, 640(ra)
Current Store : [0x80001438] : sd t5, 648(ra) -- Store: [0x800036a8]:0xFEFF0040FFFA0001




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -4097', 'rs2_h2_val == 4096', 'rs2_h1_val == -16385', 'rs2_h0_val == 64', 'rs1_h2_val == -2', 'rs1_h1_val == 16', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001460]:KMAXDS t6, t5, t4
	-[0x80001464]:sd t6, 656(ra)
Current Store : [0x80001468] : sd t5, 664(ra) -- Store: [0x800036b8]:0xFFFCFFFE00100000




Last Coverpoint : ['rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001494]:KMAXDS t6, t5, t4
	-[0x80001498]:sd t6, 672(ra)
Current Store : [0x8000149c] : sd t5, 680(ra) -- Store: [0x800036c8]:0xFFDF01000100FEFF




Last Coverpoint : ['rs2_h3_val == 4']
Last Code Sequence : 
	-[0x800014d0]:KMAXDS t6, t5, t4
	-[0x800014d4]:sd t6, 688(ra)
Current Store : [0x800014d8] : sd t5, 696(ra) -- Store: [0x800036d8]:0x5555F7FF00053FFF




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x8000150c]:KMAXDS t6, t5, t4
	-[0x80001510]:sd t6, 704(ra)
Current Store : [0x80001514] : sd t5, 712(ra) -- Store: [0x800036e8]:0x0010FFF70003FFFA




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80001550]:KMAXDS t6, t5, t4
	-[0x80001554]:sd t6, 720(ra)
Current Store : [0x80001558] : sd t5, 728(ra) -- Store: [0x800036f8]:0x4000FFFE8000FFBF




Last Coverpoint : ['rs1_h3_val == 64', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001588]:KMAXDS t6, t5, t4
	-[0x8000158c]:sd t6, 736(ra)
Current Store : [0x80001590] : sd t5, 744(ra) -- Store: [0x80003708]:0x00405555FFF80040




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x800015c4]:KMAXDS t6, t5, t4
	-[0x800015c8]:sd t6, 752(ra)
Current Store : [0x800015cc] : sd t5, 760(ra) -- Store: [0x80003718]:0x0005000100200200




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x800015fc]:KMAXDS t6, t5, t4
	-[0x80001600]:sd t6, 768(ra)
Current Store : [0x80001604] : sd t5, 776(ra) -- Store: [0x80003728]:0x400000080004FDFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001638]:KMAXDS t6, t5, t4
	-[0x8000163c]:sd t6, 784(ra)
Current Store : [0x80001640] : sd t5, 792(ra) -- Store: [0x80003738]:0x0008AAAAFFFE0004




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x80001678]:KMAXDS t6, t5, t4
	-[0x8000167c]:sd t6, 800(ra)
Current Store : [0x80001680] : sd t5, 808(ra) -- Store: [0x80003748]:0xFBFF0020F7FF0200




Last Coverpoint : ['rs2_h2_val == 256']
Last Code Sequence : 
	-[0x800016b4]:KMAXDS t6, t5, t4
	-[0x800016b8]:sd t6, 816(ra)
Current Store : [0x800016bc] : sd t5, 824(ra) -- Store: [0x80003758]:0x7FFF0005FFFB0005




Last Coverpoint : ['rs1_h2_val == -65']
Last Code Sequence : 
	-[0x800016f0]:KMAXDS t6, t5, t4
	-[0x800016f4]:sd t6, 832(ra)
Current Store : [0x800016f8] : sd t5, 840(ra) -- Store: [0x80003768]:0xFFFAFFBF0010DFFF




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x8000172c]:KMAXDS t6, t5, t4
	-[0x80001730]:sd t6, 848(ra)
Current Store : [0x80001734] : sd t5, 856(ra) -- Store: [0x80003778]:0xFFF90009FFFC0800




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80001754]:KMAXDS t6, t5, t4
	-[0x80001758]:sd t6, 864(ra)
Current Store : [0x8000175c] : sd t5, 872(ra) -- Store: [0x80003788]:0x0004FF7F20000010




Last Coverpoint : ['rs1_h2_val == -3']
Last Code Sequence : 
	-[0x8000178c]:KMAXDS t6, t5, t4
	-[0x80001790]:sd t6, 880(ra)
Current Store : [0x80001794] : sd t5, 888(ra) -- Store: [0x80003798]:0xFFFAFFFDFFFFEFFF




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x800017c8]:KMAXDS t6, t5, t4
	-[0x800017cc]:sd t6, 896(ra)
Current Store : [0x800017d0] : sd t5, 904(ra) -- Store: [0x800037a8]:0xFBFF40000080BFFF




Last Coverpoint : ['rs1_h2_val == 4096', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800017fc]:KMAXDS t6, t5, t4
	-[0x80001800]:sd t6, 912(ra)
Current Store : [0x80001804] : sd t5, 920(ra) -- Store: [0x800037b8]:0xF7FF1000FFEF0004




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001838]:KMAXDS t6, t5, t4
	-[0x8000183c]:sd t6, 928(ra)
Current Store : [0x80001840] : sd t5, 936(ra) -- Store: [0x800037c8]:0x3FFF0400EFFFFFFA




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x8000186c]:KMAXDS t6, t5, t4
	-[0x80001870]:sd t6, 944(ra)
Current Store : [0x80001874] : sd t5, 952(ra) -- Store: [0x800037d8]:0x0007FBFFFFFFFFFC




Last Coverpoint : ['rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800018a8]:KMAXDS t6, t5, t4
	-[0x800018ac]:sd t6, 960(ra)
Current Store : [0x800018b0] : sd t5, 968(ra) -- Store: [0x800037e8]:0xFFDF0010FFF77FFF




Last Coverpoint : ['rs2_h1_val == -17']
Last Code Sequence : 
	-[0x800018e0]:KMAXDS t6, t5, t4
	-[0x800018e4]:sd t6, 976(ra)
Current Store : [0x800018e8] : sd t5, 984(ra) -- Store: [0x800037f8]:0xFFEF0080FFF8FBFF




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000191c]:KMAXDS t6, t5, t4
	-[0x80001920]:sd t6, 992(ra)
Current Store : [0x80001924] : sd t5, 1000(ra) -- Store: [0x80003808]:0x00023FFFFF7F0800




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001958]:KMAXDS t6, t5, t4
	-[0x8000195c]:sd t6, 1008(ra)
Current Store : [0x80001960] : sd t5, 1016(ra) -- Store: [0x80003818]:0x00030007BFFF0009




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000198c]:KMAXDS t6, t5, t4
	-[0x80001990]:sd t6, 1024(ra)
Current Store : [0x80001994] : sd t5, 1032(ra) -- Store: [0x80003828]:0xFFFBC000FBFFFFFE




Last Coverpoint : ['rs2_h3_val == 2']
Last Code Sequence : 
	-[0x800019c0]:KMAXDS t6, t5, t4
	-[0x800019c4]:sd t6, 1040(ra)
Current Store : [0x800019c8] : sd t5, 1048(ra) -- Store: [0x80003838]:0xFFBF0001EFFFFFFF




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -129', 'rs2_h2_val == 2048', 'rs2_h1_val == -3', 'rs2_h0_val == 21845', 'rs1_h3_val == -32768', 'rs1_h2_val == -21846', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800019f8]:KMAXDS t6, t5, t4
	-[0x800019fc]:sd t6, 1056(ra)
Current Store : [0x80001a00] : sd t5, 1064(ra) -- Store: [0x80003848]:0x8000AAAAFFF94000




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80001a34]:KMAXDS t6, t5, t4
	-[0x80001a38]:sd t6, 1072(ra)
Current Store : [0x80001a3c] : sd t5, 1080(ra) -- Store: [0x80003858]:0x3FFFFFFAFFBFBFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001a68]:KMAXDS t6, t5, t4
	-[0x80001a6c]:sd t6, 1088(ra)
Current Store : [0x80001a70] : sd t5, 1096(ra) -- Store: [0x80003868]:0x0001FFFBFFDF0100




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001aa0]:KMAXDS t6, t5, t4
	-[0x80001aa4]:sd t6, 1104(ra)
Current Store : [0x80001aa8] : sd t5, 1112(ra) -- Store: [0x80003878]:0x000601000040FFF6




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x80001adc]:KMAXDS t6, t5, t4
	-[0x80001ae0]:sd t6, 1120(ra)
Current Store : [0x80001ae4] : sd t5, 1128(ra) -- Store: [0x80003888]:0xFFEFFFF6FFFEFFFA




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -21846', 'rs2_h1_val == 2048', 'rs2_h0_val == 256', 'rs1_h3_val == -1025', 'rs1_h1_val == -33', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80001b18]:KMAXDS t6, t5, t4
	-[0x80001b1c]:sd t6, 1136(ra)
Current Store : [0x80001b20] : sd t5, 1144(ra) -- Store: [0x80003898]:0xFBFF0006FFDFAAAA





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

|s.no|            signature             |                                                                                                                                                                                                                                       coverpoints                                                                                                                                                                                                                                        |                                 code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x6FAB7FBB6FAB7FBB|- opcode : kmaxds<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -32768<br> - rs2_h0_val == 4<br> - rs1_h3_val == -32768<br> - rs1_h0_val == 4<br> |[0x800003d0]:KMAXDS s3, s6, s6<br> [0x800003d4]:sd s3, 0(fp)<br>       |
|   2|[0x80003220]<br>0xC0008000FFF8FF7F|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -32768<br> - rs2_h0_val == -129<br> - rs1_h2_val == -32768<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                     |[0x80000410]:KMAXDS a2, a2, a2<br> [0x80000414]:sd a2, 16(fp)<br>      |
|   3|[0x80003230]<br>0x0000000000000200|- rs1 : x24<br> - rs2 : x0<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -17<br> - rs1_h1_val == -2<br>                                                                                                                            |[0x8000044c]:KMAXDS a0, s8, zero<br> [0x80000450]:sd a0, 32(fp)<br>    |
|   4|[0x80003240]<br>0x5756B7FEFFEEFBA0|- rs1 : x3<br> - rs2 : x25<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 128<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -9<br> - rs1_h0_val == 16<br>                                                                                       |[0x80000490]:KMAXDS gp, gp, s9<br> [0x80000494]:sd gp, 48(fp)<br>      |
|   5|[0x80003250]<br>0xFFBFFE24FFF6AFF6|- rs1 : x17<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -65<br> - rs2_h0_val == -1025<br> - rs1_h3_val == 2<br> - rs1_h1_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                    |[0x800004cc]:KMAXDS t3, a7, t3<br> [0x800004d0]:sd t3, 64(fp)<br>      |
|   6|[0x80003260]<br>0xB7FBB6EEB7FC36FB|- rs1 : x29<br> - rs2 : x5<br> - rd : x7<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 1<br> - rs2_h0_val == 32<br> - rs1_h3_val == -2<br> - rs1_h2_val == 256<br> - rs1_h1_val == 512<br> - rs1_h0_val == -16385<br>                                                                                                                                                                       |[0x80000500]:KMAXDS t2, t4, t0<br> [0x80000504]:sd t2, 80(fp)<br>      |
|   7|[0x80003270]<br>0xB6F898ADB6F93813|- rs1 : x30<br> - rs2 : x17<br> - rd : x23<br> - rs2_h3_val == -17<br> - rs2_h2_val == -65<br> - rs2_h1_val == -3<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -3<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                   |[0x80000538]:KMAXDS s7, t5, a7<br> [0x8000053c]:sd s7, 96(fp)<br>      |
|   8|[0x80003280]<br>0xBB6D936FBB6FABA7|- rs1 : x11<br> - rs2 : x30<br> - rd : x27<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs2_h2_val == 16<br> - rs2_h0_val == 8<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 2048<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                              |[0x80000574]:KMAXDS s11, a1, t5<br> [0x80000578]:sd s11, 112(fp)<br>   |
|   9|[0x80003290]<br>0x00FE050801FFB87F|- rs1 : x23<br> - rs2 : x13<br> - rd : x29<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 8<br> - rs2_h1_val == -513<br> - rs2_h0_val == -65<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -257<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 128<br>                                                                                                                                                                                  |[0x800005a8]:KMAXDS t4, s7, a3<br> [0x800005ac]:sd t4, 128(fp)<br>     |
|  10|[0x800032a0]<br>0x8000FFF8FFF90004|- rs1 : x0<br> - rs2 : x29<br> - rd : x22<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 256<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                         |[0x800005e4]:KMAXDS s6, zero, t4<br> [0x800005e8]:sd s6, 144(fp)<br>   |
|  11|[0x800032b0]<br>0xF55860F7FFF5F811|- rs1 : x5<br> - rs2 : x7<br> - rd : x30<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -33<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                           |[0x80000618]:KMAXDS t5, t0, t2<br> [0x8000061c]:sd t5, 160(fp)<br>     |
|  12|[0x800032c0]<br>0xBDDD6FB8BFDDB829|- rs1 : x18<br> - rs2 : x6<br> - rd : x4<br> - rs2_h3_val == -16385<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000654]:KMAXDS tp, s2, t1<br> [0x80000658]:sd tp, 176(fp)<br>     |
|  13|[0x800032d0]<br>0xFF77DF59FF780F52|- rs1 : x26<br> - rs2 : x1<br> - rd : x2<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000698]:KMAXDS sp, s10, ra<br> [0x8000069c]:sd sp, 192(fp)<br>    |
|  14|[0x800032e0]<br>0x7FFFFFFF7FFF1140|- rs1 : x6<br> - rs2 : x3<br> - rd : x25<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 64<br> - rs1_h2_val == 1<br> - rs1_h1_val == 1<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                               |[0x800006d4]:KMAXDS s9, t1, gp<br> [0x800006d8]:sd s9, 208(fp)<br>     |
|  15|[0x800032f0]<br>0x7B5B94DA7D5B3DF9|- rs1 : x19<br> - rs2 : x10<br> - rd : x16<br> - rs2_h3_val == -2049<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 256<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000708]:KMAXDS a6, s3, a0<br> [0x8000070c]:sd a6, 224(fp)<br>     |
|  16|[0x80003300]<br>0xF577E358F571FF7C|- rs1 : x9<br> - rs2 : x20<br> - rd : x14<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -65<br> - rs1_h3_val == 16<br> - rs1_h2_val == -5<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                          |[0x80000744]:KMAXDS a4, s1, s4<br> [0x80000748]:sd a4, 240(fp)<br>     |
|  17|[0x80003310]<br>0xFFF12C060801FF04|- rs1 : x20<br> - rs2 : x11<br> - rd : x5<br> - rs2_h3_val == -513<br> - rs2_h1_val == 4<br> - rs2_h0_val == -513<br> - rs1_h1_val == -257<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                    |[0x80000784]:KMAXDS t0, s4, a1<br> [0x80000788]:sd t0, 0(gp)<br>       |
|  18|[0x80003320]<br>0xFB387A8DFA3834B6|- rs1 : x21<br> - rs2 : x14<br> - rd : x15<br> - rs2_h3_val == -257<br> - rs2_h2_val == -5<br> - rs2_h1_val == 256<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 8<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                 |[0x800007bc]:KMAXDS a5, s5, a4<br> [0x800007c0]:sd a5, 16(gp)<br>      |
|  19|[0x80003330]<br>0x0003EF86000E0083|- rs1 : x15<br> - rs2 : x23<br> - rd : x18<br> - rs2_h3_val == -129<br> - rs2_h2_val == 1<br> - rs2_h1_val == -129<br> - rs2_h0_val == -257<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                 |[0x800007f4]:KMAXDS s2, a5, s7<br> [0x800007f8]:sd s2, 32(gp)<br>      |
|  20|[0x80003340]<br>0xFFFA0444000C1FAD|- rs1 : x28<br> - rs2 : x4<br> - rd : x6<br> - rs2_h3_val == -33<br> - rs2_h2_val == -513<br> - rs2_h1_val == -33<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -513<br> - rs1_h2_val == 2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                  |[0x80000830]:KMAXDS t1, t3, tp<br> [0x80000834]:sd t1, 48(gp)<br>      |
|  21|[0x80003350]<br>0x00057F6A0780C10C|- rs1 : x2<br> - rs2 : x24<br> - rd : x26<br> - rs2_h3_val == -9<br> - rs2_h2_val == 4<br> - rs2_h1_val == 16<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -17<br> - rs1_h1_val == -513<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                       |[0x80000868]:KMAXDS s10, sp, s8<br> [0x8000086c]:sd s10, 64(gp)<br>    |
|  22|[0x80003360]<br>0xFFFF400781FFB212|- rs1 : x14<br> - rs2 : x31<br> - rd : x8<br> - rs2_h3_val == -5<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x800008a0]:KMAXDS fp, a4, t6<br> [0x800008a4]:sd fp, 80(gp)<br>      |
|  23|[0x80003370]<br>0xFFFA9F7607FFAFFF|- rs1 : x27<br> - rs2 : x21<br> - rd : x31<br> - rs2_h3_val == -3<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 1<br> - rs1_h3_val == 128<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x800008cc]:KMAXDS t6, s11, s5<br> [0x800008d0]:sd t6, 96(gp)<br>     |
|  24|[0x80003380]<br>0xE0001FFE3EA9A7A6|- rs1 : x10<br> - rs2 : x27<br> - rd : x1<br> - rs2_h3_val == -2<br> - rs2_h1_val == 32<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                           |[0x800008f8]:KMAXDS ra, a0, s11<br> [0x800008fc]:sd ra, 112(gp)<br>    |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x2<br> - rd : x0<br> - rs2_h3_val == 16384<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000092c]:KMAXDS zero, fp, sp<br> [0x80000930]:sd zero, 128(gp)<br> |
|  26|[0x800033a0]<br>0xFDEF8009FFFFFE06|- rs1 : x1<br> - rs2 : x9<br> - rd : x11<br> - rs1_h0_val == -32768<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -1<br> - rs1_h3_val == -9<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x80000964]:KMAXDS a1, ra, s1<br> [0x80000968]:sd a1, 144(gp)<br>     |
|  27|[0x800033b0]<br>0xFFFFF5F92000C0CA|- rs1 : x31<br> - rs2 : x15<br> - rd : x21<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -1025<br> - rs2_h0_val == -16385<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                      |[0x800009a0]:KMAXDS s5, t6, a5<br> [0x800009a4]:sd s5, 160(gp)<br>     |
|  28|[0x800033c0]<br>0x000BD606FEFC2650|- rs1 : x16<br> - rs2 : x18<br> - rd : x20<br> - rs2_h3_val == 2048<br> - rs1_h3_val == 512<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                |[0x800009dc]:KMAXDS s4, a6, s2<br> [0x800009e0]:sd s4, 176(gp)<br>     |
|  29|[0x800033d0]<br>0xFFF717E40060C800|- rs1 : x25<br> - rs2 : x8<br> - rd : x24<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -33<br> - rs1_h3_val == 4<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a14]:KMAXDS s8, s9, fp<br> [0x80000a18]:sd s8, 192(gp)<br>     |
|  30|[0x800033e0]<br>0xFFF013BF02A880D5|- rs1 : x7<br> - rs2 : x16<br> - rd : x17<br> - rs2_h3_val == 512<br> - rs2_h2_val == 128<br> - rs2_h1_val == 128<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                |[0x80000a58]:KMAXDS a7, t2, a6<br> [0x80000a5c]:sd a7, 208(gp)<br>     |
|  31|[0x800033f0]<br>0x200300FFFFF70063|- rs1 : x13<br> - rs2 : x19<br> - rd : x9<br> - rs2_h3_val == 256<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a90]:KMAXDS s1, a3, s3<br> [0x80000a94]:sd s1, 224(gp)<br>     |
|  32|[0x80003400]<br>0x00003DFF0006AAEA|- rs1 : x4<br> - rs2 : x26<br> - rd : x13<br> - rs2_h3_val == 128<br> - rs2_h2_val == 512<br> - rs2_h1_val == -2<br> - rs1_h3_val == 32<br> - rs1_h2_val == 512<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                |[0x80000ac4]:KMAXDS a3, tp, s10<br> [0x80000ac8]:sd a3, 240(gp)<br>    |
|  33|[0x80003410]<br>0x1026BFDFFFE7552B|- rs2_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000afc]:KMAXDS t6, t5, t4<br> [0x80000b00]:sd t6, 256(gp)<br>     |
|  34|[0x80003420]<br>0x1027BF7EF7E752EB|- rs2_h3_val == 32<br> - rs2_h2_val == -129<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 1<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000b34]:KMAXDS t6, t5, t4<br> [0x80000b38]:sd t6, 0(ra)<br>       |
|  35|[0x80003430]<br>0x1027DC8BF7E4D1AA|- rs2_h3_val == 16<br> - rs2_h2_val == -257<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b68]:KMAXDS t6, t5, t4<br> [0x80000b6c]:sd t6, 16(ra)<br>      |
|  36|[0x80003440]<br>0x1028FBE6F7E4D27E|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ba4]:KMAXDS t6, t5, t4<br> [0x80000ba8]:sd t6, 32(ra)<br>      |
|  37|[0x80003450]<br>0x1018BC27C539B27E|- rs2_h1_val == -32768<br> - rs1_h3_val == -65<br> - rs1_h2_val == -2<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000be0]:KMAXDS t6, t5, t4<br> [0x80000be4]:sd t6, 48(ra)<br>      |
|  38|[0x80003460]<br>0x1218BC27C639B278|- rs1_h1_val == 1024<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c14]:KMAXDS t6, t5, t4<br> [0x80000c18]:sd t6, 64(ra)<br>      |
|  39|[0x80003470]<br>0x1208D827C63C3276|- rs2_h2_val == 1024<br> - rs2_h1_val == 21845<br> - rs1_h2_val == 64<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000c58]:KMAXDS t6, t5, t4<br> [0x80000c5c]:sd t6, 80(ra)<br>      |
|  40|[0x80003480]<br>0x1206002CD63C3275|- rs2_h1_val == -16385<br> - rs1_h3_val == -2049<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c90]:KMAXDS t6, t5, t4<br> [0x80000c94]:sd t6, 96(ra)<br>      |
|  41|[0x80003490]<br>0x1104DDABD63C33F5|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ccc]:KMAXDS t6, t5, t4<br> [0x80000cd0]:sd t6, 112(ra)<br>     |
|  42|[0x800034a0]<br>0x10825D2BD64413D3|- rs1_h3_val == -1025<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d08]:KMAXDS t6, t5, t4<br> [0x80000d0c]:sd t6, 128(ra)<br>     |
|  43|[0x800034b0]<br>0x10825D59D66517D3|- rs2_h1_val == 1024<br> - rs2_h0_val == 4096<br> - rs1_h2_val == 32<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000d40]:KMAXDS t6, t5, t4<br> [0x80000d44]:sd t6, 144(ra)<br>     |
|  44|[0x800034c0]<br>0x107E5938D66518D3|- rs2_h0_val == 64<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000d7c]:KMAXDS t6, t5, t4<br> [0x80000d80]:sd t6, 160(ra)<br>     |
|  45|[0x800034d0]<br>0x107E1978D66318D7|- rs1_h1_val == 4<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000db4]:KMAXDS t6, t5, t4<br> [0x80000db8]:sd t6, 176(ra)<br>     |
|  46|[0x800034e0]<br>0x107D1993D66318CB|- rs1_h3_val == -5<br> - rs1_h1_val == 2<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000dec]:KMAXDS t6, t5, t4<br> [0x80000df0]:sd t6, 192(ra)<br>     |
|  47|[0x800034f0]<br>0x087D39A2D64397CA|- rs2_h1_val == -1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000e24]:KMAXDS t6, t5, t4<br> [0x80000e28]:sd t6, 208(ra)<br>     |
|  48|[0x80003500]<br>0x087D6993D663D8C9|- rs2_h2_val == -2049<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e58]:KMAXDS t6, t5, t4<br> [0x80000e5c]:sd t6, 224(ra)<br>     |
|  49|[0x80003510]<br>0x087BA982D76414CF|- rs1_h3_val == 4096<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e94]:KMAXDS t6, t5, t4<br> [0x80000e98]:sd t6, 240(ra)<br>     |
|  50|[0x80003520]<br>0x0879A961D77418CF|- rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ed8]:KMAXDS t6, t5, t4<br> [0x80000edc]:sd t6, 256(ra)<br>     |
|  51|[0x80003530]<br>0x08792A81D7A434D0|- rs2_h2_val == 32<br> - rs2_h1_val == 4096<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000f0c]:KMAXDS t6, t5, t4<br> [0x80000f10]:sd t6, 272(ra)<br>     |
|  52|[0x80003540]<br>0x0879A678D76574C9|- rs1_h3_val == 32767<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000f48]:KMAXDS t6, t5, t4<br> [0x80000f4c]:sd t6, 288(ra)<br>     |
|  53|[0x80003550]<br>0x0879A678D76532A8|- rs1_h3_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f78]:KMAXDS t6, t5, t4<br> [0x80000f7c]:sd t6, 304(ra)<br>     |
|  54|[0x80003560]<br>0x087A2802DF654E9F|- rs2_h1_val == -1025<br> - rs1_h2_val == 4<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000fac]:KMAXDS t6, t5, t4<br> [0x80000fb0]:sd t6, 320(ra)<br>     |
|  55|[0x80003570]<br>0x087217F6DF65839F|- rs2_h2_val == 4096<br> - rs1_h3_val == -129<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000fe0]:KMAXDS t6, t5, t4<br> [0x80000fe4]:sd t6, 336(ra)<br>     |
|  56|[0x80003580]<br>0x087217BEDF6603A5|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001018]:KMAXDS t6, t5, t4<br> [0x8000101c]:sd t6, 352(ra)<br>     |
|  57|[0x80003590]<br>0x087419C0DE6683A5|- rs2_h2_val == -21846<br> - rs2_h0_val == 2<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001048]:KMAXDS t6, t5, t4<br> [0x8000104c]:sd t6, 368(ra)<br>     |
|  58|[0x800035a0]<br>0x0473A221DE718E45|- rs1_h1_val == 21845<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001080]:KMAXDS t6, t5, t4<br> [0x80001084]:sd t6, 384(ra)<br>     |
|  59|[0x800035b0]<br>0x0470218FDBBE90F0|- rs2_h1_val == 512<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800010c4]:KMAXDS t6, t5, t4<br> [0x800010c8]:sd t6, 400(ra)<br>     |
|  60|[0x800035c0]<br>0x047023B1D91393AD|- rs2_h2_val == 64<br> - rs2_h1_val == -9<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001100]:KMAXDS t6, t5, t4<br> [0x80001104]:sd t6, 416(ra)<br>     |
|  61|[0x800035d0]<br>0x047023B1D915E3A6|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001134]:KMAXDS t6, t5, t4<br> [0x80001138]:sd t6, 432(ra)<br>     |
|  62|[0x800035e0]<br>0x0471390907C0CE50|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001170]:KMAXDS t6, t5, t4<br> [0x80001174]:sd t6, 448(ra)<br>     |
|  63|[0x800035f0]<br>0x0471592906C4AED0|- rs2_h1_val == -8193<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800011ac]:KMAXDS t6, t5, t4<br> [0x800011b0]:sd t6, 464(ra)<br>     |
|  64|[0x80003600]<br>0x0480392406C2CEE0|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800011ec]:KMAXDS t6, t5, t4<br> [0x800011f0]:sd t6, 480(ra)<br>     |
|  65|[0x80003610]<br>0x04804D1006C2E0E9|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001228]:KMAXDS t6, t5, t4<br> [0x8000122c]:sd t6, 496(ra)<br>     |
|  66|[0x80003620]<br>0x06804D9206C2B0F9|- rs2_h2_val == 16384<br> - rs2_h0_val == -3<br> - rs1_h3_val == 2048<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001264]:KMAXDS t6, t5, t4<br> [0x80001268]:sd t6, 512(ra)<br>     |
|  67|[0x80003630]<br>0x06C0458E06C3B1F9|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800012a0]:KMAXDS t6, t5, t4<br> [0x800012a4]:sd t6, 528(ra)<br>     |
|  68|[0x80003640]<br>0x06C04D9306C270B8|- rs2_h0_val == 8192<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012d4]:KMAXDS t6, t5, t4<br> [0x800012d8]:sd t6, 544(ra)<br>     |
|  69|[0x80003650]<br>0x06C087B306C264B8|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001300]:KMAXDS t6, t5, t4<br> [0x80001304]:sd t6, 560(ra)<br>     |
|  70|[0x80003660]<br>0x06C1C7E106C26328|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001334]:KMAXDS t6, t5, t4<br> [0x80001338]:sd t6, 576(ra)<br>     |
|  71|[0x80003670]<br>0x06C472AD07026A28|- rs2_h2_val == -2<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000136c]:KMAXDS t6, t5, t4<br> [0x80001370]:sd t6, 592(ra)<br>     |
|  72|[0x80003680]<br>0x06C572D60701EA29|- rs1_h3_val == 21845<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013b0]:KMAXDS t6, t5, t4<br> [0x800013b4]:sd t6, 608(ra)<br>     |
|  73|[0x80003690]<br>0x06C602E001AC35D3|- rs2_h1_val == -21846<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013f4]:KMAXDS t6, t5, t4<br> [0x800013f8]:sd t6, 624(ra)<br>     |
|  74|[0x800036a0]<br>0x06C6122701ABF5D3|- rs1_h3_val == -257<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001430]:KMAXDS t6, t5, t4<br> [0x80001434]:sd t6, 640(ra)<br>     |
|  75|[0x800036c0]<br>0x06D6322501AC22F3|- rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001494]:KMAXDS t6, t5, t4<br> [0x80001498]:sd t6, 672(ra)<br>     |
|  76|[0x800036d0]<br>0x06C0A79403AC5B0B|- rs2_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800014d0]:KMAXDS t6, t5, t4<br> [0x800014d4]:sd t6, 688(ra)<br>     |
|  77|[0x800036e0]<br>0x06BCB98403AC5B5F|- rs2_h2_val == -16385<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000150c]:KMAXDS t6, t5, t4<br> [0x80001510]:sd t6, 704(ra)<br>     |
|  78|[0x800036f0]<br>0x02BC797003CD5D5F|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001550]:KMAXDS t6, t5, t4<br> [0x80001554]:sd t6, 720(ra)<br>     |
|  79|[0x80003700]<br>0x02BF896D03CC5F5F|- rs1_h3_val == 64<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001588]:KMAXDS t6, t5, t4<br> [0x8000158c]:sd t6, 736(ra)<br>     |
|  80|[0x80003710]<br>0x02BF33C303C95F3F|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800015c4]:KMAXDS t6, t5, t4<br> [0x800015c8]:sd t6, 752(ra)<br>     |
|  81|[0x80003720]<br>0x02BDF3CB03C55B2E|- rs2_h2_val == -9<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015fc]:KMAXDS t6, t5, t4<br> [0x80001600]:sd t6, 768(ra)<br>     |
|  82|[0x80003730]<br>0x02BFF3B703C4EB34|- rs2_h2_val == -3<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001638]:KMAXDS t6, t5, t4<br> [0x8000163c]:sd t6, 784(ra)<br>     |
|  83|[0x80003740]<br>0x02A7EBB706452B34|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001678]:KMAXDS t6, t5, t4<br> [0x8000167c]:sd t6, 800(ra)<br>     |
|  84|[0x80003750]<br>0x0327C2B706453016|- rs2_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800016b4]:KMAXDS t6, t5, t4<br> [0x800016b8]:sd t6, 816(ra)<br>     |
|  85|[0x80003760]<br>0x0326413716449005|- rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800016f0]:KMAXDS t6, t5, t4<br> [0x800016f4]:sd t6, 832(ra)<br>     |
|  86|[0x80003770]<br>0x03263C7F16457009|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000172c]:KMAXDS t6, t5, t4<br> [0x80001730]:sd t6, 848(ra)<br>     |
|  87|[0x80003780]<br>0x03263C8718457059|- rs2_h2_val == 2<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001754]:KMAXDS t6, t5, t4<br> [0x80001758]:sd t6, 864(ra)<br>     |
|  88|[0x80003790]<br>0x0325DC8418657259|- rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000178c]:KMAXDS t6, t5, t4<br> [0x80001790]:sd t6, 880(ra)<br>     |
|  89|[0x800037a0]<br>0x0324848E185731E0|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800017c8]:KMAXDS t6, t5, t4<br> [0x800017cc]:sd t6, 896(ra)<br>     |
|  90|[0x800037b0]<br>0x0344AC911857B305|- rs1_h2_val == 4096<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800017fc]:KMAXDS t6, t5, t4<br> [0x80001800]:sd t6, 912(ra)<br>     |
|  91|[0x800037c0]<br>0x03493081185532BF|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001838]:KMAXDS t6, t5, t4<br> [0x8000183c]:sd t6, 928(ra)<br>     |
|  92|[0x800037d0]<br>0x04496C5D1854F0BB|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000186c]:KMAXDS t6, t5, t4<br> [0x80001870]:sd t6, 944(ra)<br>     |
|  93|[0x800037e0]<br>0x04454CDD1855F152|- rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800018a8]:KMAXDS t6, t5, t4<br> [0x800018ac]:sd t6, 960(ra)<br>     |
|  94|[0x800037f0]<br>0x040AF8131857AD41|- rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018e0]:KMAXDS t6, t5, t4<br> [0x800018e4]:sd t6, 976(ra)<br>     |
|  95|[0x80003800]<br>0x020B40131657B0C8|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000191c]:KMAXDS t6, t5, t4<br> [0x80001920]:sd t6, 992(ra)<br>     |
|  96|[0x80003810]<br>0x020EC013125797C8|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001958]:KMAXDS t6, t5, t4<br> [0x8000195c]:sd t6, 1008(ra)<br>    |
|  97|[0x80003820]<br>0x020F556A1257B3E1|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000198c]:KMAXDS t6, t5, t4<br> [0x80001990]:sd t6, 1024(ra)<br>    |
|  98|[0x80003830]<br>0x020F54A50A5747E2|- rs2_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800019c0]:KMAXDS t6, t5, t4<br> [0x800019c4]:sd t6, 1040(ra)<br>    |
|  99|[0x80003850]<br>0xFDC414B21255D2D0|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001a34]:KMAXDS t6, t5, t4<br> [0x80001a38]:sd t6, 1072(ra)<br>    |
| 100|[0x80003860]<br>0xFDC394AD1255CE4C|- rs2_h3_val == -1<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001a68]:KMAXDS t6, t5, t4<br> [0x80001a6c]:sd t6, 1088(ra)<br>    |
| 101|[0x80003870]<br>0xFDC32CA71255CF1C|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001aa0]:KMAXDS t6, t5, t4<br> [0x80001aa4]:sd t6, 1104(ra)<br>    |
| 102|[0x80003880]<br>0xFDC32C4B125524A8|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001adc]:KMAXDS t6, t5, t4<br> [0x80001ae0]:sd t6, 1120(ra)<br>    |
