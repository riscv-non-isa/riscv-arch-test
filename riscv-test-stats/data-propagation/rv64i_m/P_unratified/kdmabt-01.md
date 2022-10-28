
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
| SIG_REGION                | [('0x80003210', '0x80003830', '196 dwords')]      |
| COV_LABELS                | kdmabt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmabt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 196      |
| STAT1                     | 93      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 98     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e38]:KDMABT t6, t5, t4
      [0x80000e3c]:sd t6, 448(a3)
 -- Signature Address: 0x800034f0 Data: 0x0000000000E94270
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 4096
      - rs2_h2_val == -513
      - rs2_h0_val == 8
      - rs1_h3_val == -8193
      - rs1_h2_val == 64
      - rs1_h1_val == 2048
      - rs1_h0_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012a4]:KDMABT t6, t5, t4
      [0x800012a8]:sd t6, 768(a3)
 -- Signature Address: 0x80003630 Data: 0xFFFFFFFFFF9E9412
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
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
      - rs1_h0_val == rs2_h0_val
      - rs2_h2_val == 8
      - rs2_h1_val == -4097
      - rs2_h0_val == 0
      - rs1_h3_val == -2
      - rs1_h2_val == -3
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015e8]:KDMABT t6, t5, t4
      [0x800015ec]:sd t6, 1008(a3)
 -- Signature Address: 0x80003720 Data: 0xFFFFFFFFFF6F310E
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 32
      - rs2_h2_val == -32768
      - rs2_h1_val == 16384
      - rs2_h0_val == -32768
      - rs1_h3_val == 1
      - rs1_h2_val == -65
      - rs1_h1_val == -3
      - rs1_h0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016f0]:KDMABT t6, t5, t4
      [0x800016f4]:sd t6, 1088(a3)
 -- Signature Address: 0x80003770 Data: 0xFFFFFFFFFEF06732
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -2049
      - rs2_h1_val == 16384
      - rs1_h2_val == 16
      - rs1_h1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001940]:KDMABT t6, t5, t4
      [0x80001944]:sd t6, 1264(a3)
 -- Signature Address: 0x80003820 Data: 0xFFFFFFFFCDA13906
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h2_val == -1
      - rs2_h1_val == -65
      - rs2_h0_val == 16384
      - rs1_h3_val == 4
      - rs1_h2_val == 2
      - rs1_h0_val == -129






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmabt', 'rs1 : x29', 'rs2 : x29', 'rd : x21', 'rs1 == rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 1', 'rs2_h2_val == 16', 'rs2_h1_val == -5', 'rs2_h0_val == -32768', 'rs1_h3_val == 1', 'rs1_h2_val == 16', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800003d0]:KDMABT s5, t4, t4
	-[0x800003d4]:sd s5, 0(a0)
Current Store : [0x800003d8] : sd t4, 8(a0) -- Store: [0x80003218]:0x00010010FFFB8000




Last Coverpoint : ['rs1 : x17', 'rs2 : x17', 'rd : x17', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs2_h3_val == -129', 'rs2_h1_val == -257', 'rs2_h0_val == -2049', 'rs1_h3_val == -129', 'rs1_h1_val == -257', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000410]:KDMABT a7, a7, a7
	-[0x80000414]:sd a7, 16(a0)
Current Store : [0x80000418] : sd a7, 24(a0) -- Store: [0x80003228]:0xFFFFFFFFFF100A01




Last Coverpoint : ['rs1 : x13', 'rs2 : x15', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 4096', 'rs2_h2_val == -1025', 'rs2_h1_val == 4096', 'rs2_h0_val == -3', 'rs1_h2_val == 21845', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000454]:KDMABT s10, a3, a5
	-[0x80000458]:sd s10, 32(a0)
Current Store : [0x8000045c] : sd a3, 40(a0) -- Store: [0x80003238]:0xFFF95555FFF6FF7F




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x0', 'rs1 == rd != rs2', 'rs2_h2_val == -1', 'rs2_h1_val == -65', 'rs2_h0_val == 16384', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000488]:KDMABT zero, zero, s5
	-[0x8000048c]:sd zero, 48(a0)
Current Store : [0x80000490] : sd zero, 56(a0) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -1', 'rs2_h2_val == -32768', 'rs2_h1_val == 2', 'rs1_h2_val == -32768', 'rs1_h1_val == -65', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800004b4]:KDMABT a3, a4, a3
	-[0x800004b8]:sd a3, 64(a0)
Current Store : [0x800004bc] : sd a4, 72(a0) -- Store: [0x80003258]:0x00058000FFBFFFFB




Last Coverpoint : ['rs1 : x3', 'rs2 : x1', 'rd : x27', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == 16384', 'rs2_h1_val == -2', 'rs2_h0_val == -65', 'rs1_h2_val == -2049', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004ec]:KDMABT s11, gp, ra
	-[0x800004f0]:sd s11, 80(a0)
Current Store : [0x800004f4] : sd gp, 88(a0) -- Store: [0x80003268]:0xFFF6F7FFFEFF0020




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x16', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 32', 'rs2_h0_val == 4096', 'rs1_h3_val == 16', 'rs1_h2_val == 32', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000524]:KDMABT a6, s11, t1
	-[0x80000528]:sd a6, 96(a0)
Current Store : [0x8000052c] : sd s11, 104(a0) -- Store: [0x80003278]:0x00100020FFBFBFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x9', 'rd : x2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -257', 'rs2_h2_val == 512', 'rs2_h1_val == 128', 'rs2_h0_val == -21846', 'rs1_h2_val == 2048', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000568]:KDMABT sp, t0, s1
	-[0x8000056c]:sd sp, 112(a0)
Current Store : [0x80000570] : sd t0, 120(a0) -- Store: [0x80003288]:0x3FFF08000100FFF8




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x28', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -9', 'rs2_h1_val == 32', 'rs2_h0_val == 64', 'rs1_h3_val == -9', 'rs1_h2_val == -129', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000059c]:KDMABT t3, s2, s9
	-[0x800005a0]:sd t3, 128(a0)
Current Store : [0x800005a4] : sd s2, 136(a0) -- Store: [0x80003298]:0xFFF7FF7FF7FF3FFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rd : x12', 'rs2_h3_val == -21846', 'rs2_h2_val == 4096', 'rs2_h1_val == 1024', 'rs2_h0_val == -513', 'rs1_h2_val == -8193', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800005d0]:KDMABT a2, tp, a4
	-[0x800005d4]:sd a2, 144(a0)
Current Store : [0x800005d8] : sd tp, 152(a0) -- Store: [0x800032a8]:0x0006DFFFFDFFFFFB




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -4097', 'rs2_h1_val == -16385', 'rs2_h0_val == -1', 'rs1_h3_val == -16385', 'rs1_h2_val == 512', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000614]:KDMABT ra, t5, t3
	-[0x80000618]:sd ra, 160(a0)
Current Store : [0x8000061c] : sd t5, 168(a0) -- Store: [0x800032b8]:0xBFFF02005555FF7F




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x4', 'rs2_h3_val == 32767', 'rs2_h1_val == -33', 'rs2_h0_val == -2', 'rs1_h3_val == 64', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80000650]:KDMABT tp, a6, s7
	-[0x80000654]:sd tp, 176(a0)
Current Store : [0x80000658] : sd a6, 184(a0) -- Store: [0x800032c8]:0x0040FFFE0000FFFA




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rd : x25', 'rs2_h3_val == -16385', 'rs2_h1_val == 64', 'rs2_h0_val == 2', 'rs1_h3_val == -8193', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000068c]:KDMABT s9, a5, t6
	-[0x80000690]:sd s9, 192(a0)
Current Store : [0x80000694] : sd a5, 200(a0) -- Store: [0x800032d8]:0xDFFFC000FFEFFFF6




Last Coverpoint : ['rs1 : x8', 'rs2 : x30', 'rd : x18', 'rs2_h3_val == -8193', 'rs2_h2_val == 256', 'rs2_h1_val == -513', 'rs1_h3_val == -1', 'rs1_h2_val == 1', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800006c0]:KDMABT s2, fp, t5
	-[0x800006c4]:sd s2, 208(a0)
Current Store : [0x800006c8] : sd fp, 216(a0) -- Store: [0x800032e8]:0xFFFF0001FFFC0400




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x14', 'rs2_h3_val == -4097', 'rs2_h2_val == 4', 'rs2_h0_val == 32767', 'rs1_h2_val == -1', 'rs1_h1_val == 32', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800006fc]:KDMABT a4, s10, s11
	-[0x80000700]:sd a4, 224(a0)
Current Store : [0x80000704] : sd s10, 232(a0) -- Store: [0x800032f8]:0x3FFFFFFF00205555




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x15', 'rs2_h3_val == -2049', 'rs2_h2_val == 1024', 'rs2_h0_val == 8192', 'rs1_h2_val == -1025', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000734]:KDMABT a5, t3, gp
	-[0x80000738]:sd a5, 240(a0)
Current Store : [0x8000073c] : sd t3, 248(a0) -- Store: [0x80003308]:0xFF7FFBFF0100FFBF




Last Coverpoint : ['rs1 : x19', 'rs2 : x2', 'rd : x29', 'rs2_h3_val == -1025', 'rs2_h1_val == 4', 'rs1_h3_val == 4', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000770]:KDMABT t4, s3, sp
	-[0x80000774]:sd t4, 256(a0)
Current Store : [0x80000778] : sd s3, 264(a0) -- Store: [0x80003318]:0x0004FFFEFF7F5555




Last Coverpoint : ['rs1 : x24', 'rs2 : x7', 'rd : x30', 'rs2_h3_val == -513', 'rs2_h2_val == -65', 'rs1_h3_val == 8192', 'rs1_h2_val == 2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800007b0]:KDMABT t5, s8, t2
	-[0x800007b4]:sd t5, 272(a0)
Current Store : [0x800007b8] : sd s8, 280(a0) -- Store: [0x80003328]:0x200000025555FFDF




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x11', 'rs2_h3_val == -65', 'rs1_h3_val == 8', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800007f0]:KDMABT a1, a2, s3
	-[0x800007f4]:sd a1, 0(a3)
Current Store : [0x800007f8] : sd a2, 8(a3) -- Store: [0x80003338]:0x0008FFFF0003EFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x7', 'rs2_h3_val == -33', 'rs2_h2_val == 8192', 'rs2_h0_val == 8', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000082c]:KDMABT t2, s7, s4
	-[0x80000830]:sd t2, 16(a3)
Current Store : [0x80000834] : sd s7, 24(a3) -- Store: [0x80003348]:0xFFF6C000FBFF0400




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x5', 'rs2_h3_val == -17', 'rs2_h2_val == 2', 'rs2_h1_val == 0', 'rs1_h3_val == -1025', 'rs1_h1_val == 2048', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000860]:KDMABT t0, s9, fp
	-[0x80000864]:sd t0, 32(a3)
Current Store : [0x80000868] : sd s9, 40(a3) -- Store: [0x80003358]:0xFBFFFFF60800FEFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x24', 'rd : x23', 'rs2_h3_val == -5', 'rs2_h2_val == 0', 'rs2_h0_val == 1', 'rs1_h3_val == 16384', 'rs1_h2_val == 128', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000894]:KDMABT s7, s1, s8
	-[0x80000898]:sd s7, 48(a3)
Current Store : [0x8000089c] : sd s1, 56(a3) -- Store: [0x80003368]:0x40000080FFFCFFFE




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rd : x19', 'rs2_h3_val == -3', 'rs1_h2_val == -9', 'rs1_h1_val == -32768', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800008cc]:KDMABT s3, sp, tp
	-[0x800008d0]:sd s3, 64(a3)
Current Store : [0x800008d4] : sd sp, 72(a3) -- Store: [0x80003378]:0x3FFFFFF78000FFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x12', 'rd : x22', 'rs2_h3_val == -2', 'rs2_h2_val == -513', 'rs1_h3_val == 32767', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000900]:KDMABT s6, a1, a2
	-[0x80000904]:sd s6, 80(a3)
Current Store : [0x80000908] : sd a1, 88(a3) -- Store: [0x80003388]:0x7FFF4000FFF80007




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x9', 'rs2_h3_val == -32768', 'rs2_h2_val == -17', 'rs2_h1_val == 21845', 'rs2_h0_val == 21845', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x8000093c]:KDMABT s1, ra, s10
	-[0x80000940]:sd s1, 96(a3)
Current Store : [0x80000944] : sd ra, 104(a3) -- Store: [0x80003398]:0xFFFE008000030000




Last Coverpoint : ['rs1 : x20', 'rs2 : x5', 'rd : x31', 'rs2_h3_val == 16384', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000978]:KDMABT t6, s4, t0
	-[0x8000097c]:sd t6, 112(a3)
Current Store : [0x80000980] : sd s4, 120(a3) -- Store: [0x800033a8]:0x0006FFFAC000AAAA




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x24', 'rs2_h3_val == 8192', 'rs2_h2_val == -33', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800009b4]:KDMABT s8, a0, a6
	-[0x800009b8]:sd s8, 128(a3)
Current Store : [0x800009bc] : sd a0, 136(a3) -- Store: [0x800033b8]:0x2000FFFFFFFDFF7F




Last Coverpoint : ['rs1 : x31', 'rs2 : x11', 'rd : x3', 'rs2_h3_val == 2048', 'rs2_h0_val == 1024', 'rs1_h3_val == 32', 'rs1_h1_val == 16', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800009f0]:KDMABT gp, t6, a1
	-[0x800009f4]:sd gp, 144(a3)
Current Store : [0x800009f8] : sd t6, 152(a3) -- Store: [0x800033c8]:0x0020000700100010




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x20', 'rs2_h3_val == 1024', 'rs2_h1_val == 256', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000a38]:KDMABT s4, t1, a0
	-[0x80000a3c]:sd s4, 160(a3)
Current Store : [0x80000a40] : sd t1, 168(a3) -- Store: [0x800033d8]:0xDFFF00020800EFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x6', 'rs2_h3_val == 512', 'rs2_h2_val == 32767', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80000a64]:KDMABT t1, s6, s2
	-[0x80000a68]:sd t1, 176(a3)
Current Store : [0x80000a6c] : sd s6, 184(a3) -- Store: [0x800033e8]:0xFFF81000FBFFFFBF




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x8', 'rs2_h3_val == 256', 'rs2_h2_val == 1', 'rs2_h0_val == 2048', 'rs1_h3_val == -4097', 'rs1_h2_val == 1024', 'rs1_h1_val == -1', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000aa0]:KDMABT fp, t2, s6
	-[0x80000aa4]:sd fp, 192(a3)
Current Store : [0x80000aa8] : sd t2, 200(a3) -- Store: [0x800033f8]:0xEFFF0400FFFF0008




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rd : x10', 'rs2_h3_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000adc]:KDMABT a0, s5, zero
	-[0x80000ae0]:sd a0, 208(a3)
Current Store : [0x80000ae4] : sd s5, 216(a3) -- Store: [0x80003408]:0xFFF9FFFE5555FBFF




Last Coverpoint : ['rs2_h3_val == 64', 'rs1_h3_val == -5', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000b14]:KDMABT t6, t5, t4
	-[0x80000b18]:sd t6, 224(a3)
Current Store : [0x80000b1c] : sd t5, 232(a3) -- Store: [0x80003418]:0xFFFB00000080EFFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h1_val == 32767', 'rs1_h3_val == 256', 'rs1_h1_val == -2', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000b4c]:KDMABT t6, t5, t4
	-[0x80000b50]:sd t6, 240(a3)
Current Store : [0x80000b54] : sd t5, 248(a3) -- Store: [0x80003428]:0x0100FFF8FFFE0100




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000b88]:KDMABT t6, t5, t4
	-[0x80000b8c]:sd t6, 256(a3)
Current Store : [0x80000b90] : sd t5, 264(a3) -- Store: [0x80003438]:0xC0000200FFFBFBFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == -9', 'rs1_h3_val == 128', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000bbc]:KDMABT t6, t5, t4
	-[0x80000bc0]:sd t6, 272(a3)
Current Store : [0x80000bc4] : sd t5, 280(a3) -- Store: [0x80003448]:0x0080040040000009




Last Coverpoint : ['rs1_h3_val == 2048', 'rs1_h2_val == 32767', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000bf0]:KDMABT t6, t5, t4
	-[0x80000bf4]:sd t6, 288(a3)
Current Store : [0x80000bf8] : sd t5, 296(a3) -- Store: [0x80003458]:0x08007FFF20000400




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h1_val == 8192', 'rs1_h1_val == 4096', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000c34]:KDMABT t6, t5, t4
	-[0x80000c38]:sd t6, 304(a3)
Current Store : [0x80000c3c] : sd t5, 312(a3) -- Store: [0x80003468]:0x0800FFF81000DFFF




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -1025', 'rs1_h2_val == 64', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000c70]:KDMABT t6, t5, t4
	-[0x80000c74]:sd t6, 320(a3)
Current Store : [0x80000c78] : sd t5, 328(a3) -- Store: [0x80003478]:0x000600400400FFBF




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000ca0]:KDMABT t6, t5, t4
	-[0x80000ca4]:sd t6, 336(a3)
Current Store : [0x80000ca8] : sd t5, 344(a3) -- Store: [0x80003488]:0x00007FFF02000009




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000cd4]:KDMABT t6, t5, t4
	-[0x80000cd8]:sd t6, 352(a3)
Current Store : [0x80000cdc] : sd t5, 360(a3) -- Store: [0x80003498]:0x7FFFFFF700405555




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d0c]:KDMABT t6, t5, t4
	-[0x80000d10]:sd t6, 368(a3)
Current Store : [0x80000d14] : sd t5, 376(a3) -- Store: [0x800034a8]:0x000340000008FFFB




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000d48]:KDMABT t6, t5, t4
	-[0x80000d4c]:sd t6, 384(a3)
Current Store : [0x80000d50] : sd t5, 392(a3) -- Store: [0x800034b8]:0x0008FFF70004FFF8




Last Coverpoint : ['rs1_h3_val == -257', 'rs1_h2_val == -3', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d84]:KDMABT t6, t5, t4
	-[0x80000d88]:sd t6, 400(a3)
Current Store : [0x80000d8c] : sd t5, 408(a3) -- Store: [0x800034c8]:0xFEFFFFFD0002EFFF




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h2_val == -257', 'rs1_h1_val == 1', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000db8]:KDMABT t6, t5, t4
	-[0x80000dbc]:sd t6, 416(a3)
Current Store : [0x80000dc0] : sd t5, 424(a3) -- Store: [0x800034d8]:0x0020FEFF0001FFF7




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h3_val == 2', 'rs1_h2_val == 4', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000df4]:KDMABT t6, t5, t4
	-[0x80000df8]:sd t6, 432(a3)
Current Store : [0x80000dfc] : sd t5, 440(a3) -- Store: [0x800034e8]:0x0002000400207FFF




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 4096', 'rs2_h2_val == -513', 'rs2_h0_val == 8', 'rs1_h3_val == -8193', 'rs1_h2_val == 64', 'rs1_h1_val == 2048', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000e38]:KDMABT t6, t5, t4
	-[0x80000e3c]:sd t6, 448(a3)
Current Store : [0x80000e40] : sd t5, 456(a3) -- Store: [0x800034f8]:0xDFFF00400800F7FF




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h1_val == -2049', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e70]:KDMABT t6, t5, t4
	-[0x80000e74]:sd t6, 464(a3)
Current Store : [0x80000e78] : sd t5, 472(a3) -- Store: [0x80003508]:0xC000FBFF0010FDFF




Last Coverpoint : ['rs1_h2_val == -5', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000eb8]:KDMABT t6, t5, t4
	-[0x80000ebc]:sd t6, 480(a3)
Current Store : [0x80000ec0] : sd t5, 488(a3) -- Store: [0x80003518]:0xBFFFFFFB5555FFEF




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000ee4]:KDMABT t6, t5, t4
	-[0x80000ee8]:sd t6, 496(a3)
Current Store : [0x80000eec] : sd t5, 504(a3) -- Store: [0x80003528]:0xFFFC7FFFFFFFFFFD




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f1c]:KDMABT t6, t5, t4
	-[0x80000f20]:sd t6, 512(a3)
Current Store : [0x80000f24] : sd t5, 520(a3) -- Store: [0x80003538]:0xFBFFFBFF00094000




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h1_val == 512', 'rs2_h0_val == -129', 'rs1_h2_val == -16385', 'rs1_h1_val == -33', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f50]:KDMABT t6, t5, t4
	-[0x80000f54]:sd t6, 528(a3)
Current Store : [0x80000f58] : sd t5, 536(a3) -- Store: [0x80003548]:0xFFF8BFFFFFDF2000




Last Coverpoint : ['rs2_h1_val == -4097', 'rs2_h0_val == -257', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f80]:KDMABT t6, t5, t4
	-[0x80000f84]:sd t6, 544(a3)
Current Store : [0x80000f88] : sd t5, 552(a3) -- Store: [0x80003558]:0x2000FF7F00071000




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h1_val == -17', 'rs1_h1_val == -4097', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000fbc]:KDMABT t6, t5, t4
	-[0x80000fc0]:sd t6, 560(a3)
Current Store : [0x80000fc4] : sd t5, 568(a3) -- Store: [0x80003568]:0x0100FFFFEFFF0800




Last Coverpoint : ['rs1_h3_val == -21846', 'rs1_h2_val == 8', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000ff8]:KDMABT t6, t5, t4
	-[0x80000ffc]:sd t6, 576(a3)
Current Store : [0x80001000] : sd t5, 584(a3) -- Store: [0x80003578]:0xAAAA0008FFF80200




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001034]:KDMABT t6, t5, t4
	-[0x80001038]:sd t6, 592(a3)
Current Store : [0x8000103c] : sd t5, 600(a3) -- Store: [0x80003588]:0xFFF8002000020080




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001078]:KDMABT t6, t5, t4
	-[0x8000107c]:sd t6, 608(a3)
Current Store : [0x80001080] : sd t5, 616(a3) -- Store: [0x80003598]:0x3FFF00072000BFFF




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x800010b4]:KDMABT t6, t5, t4
	-[0x800010b8]:sd t6, 624(a3)
Current Store : [0x800010bc] : sd t5, 632(a3) -- Store: [0x800035a8]:0x100055550080FFBF




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800010f0]:KDMABT t6, t5, t4
	-[0x800010f4]:sd t6, 640(a3)
Current Store : [0x800010f8] : sd t5, 648(a3) -- Store: [0x800035b8]:0x0800FFFA0001FFBF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x8000111c]:KDMABT t6, t5, t4
	-[0x80001120]:sd t6, 656(a3)
Current Store : [0x80001124] : sd t5, 664(a3) -- Store: [0x800035c8]:0x0000000800098000




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == -1025', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80001160]:KDMABT t6, t5, t4
	-[0x80001164]:sd t6, 672(a3)
Current Store : [0x80001168] : sd t5, 680(a3) -- Store: [0x800035d8]:0x3FFF040055550080




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001194]:KDMABT t6, t5, t4
	-[0x80001198]:sd t6, 688(a3)
Current Store : [0x8000119c] : sd t5, 696(a3) -- Store: [0x800035e8]:0xEFFF0800FFFD0002




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x800011c8]:KDMABT t6, t5, t4
	-[0x800011cc]:sd t6, 704(a3)
Current Store : [0x800011d0] : sd t5, 712(a3) -- Store: [0x800035f8]:0xFFDF1000FEFFFFF7




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80001200]:KDMABT t6, t5, t4
	-[0x80001204]:sd t6, 720(a3)
Current Store : [0x80001208] : sd t5, 728(a3) -- Store: [0x80003608]:0xFFF7DFFF00001000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x8000123c]:KDMABT t6, t5, t4
	-[0x80001240]:sd t6, 736(a3)
Current Store : [0x80001244] : sd t5, 744(a3) -- Store: [0x80003618]:0x08000800FFFAFFFD




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80001270]:KDMABT t6, t5, t4
	-[0x80001274]:sd t6, 752(a3)
Current Store : [0x80001278] : sd t5, 760(a3) -- Store: [0x80003628]:0xFFFA020001000400




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs2_h2_val == 8', 'rs2_h1_val == -4097', 'rs2_h0_val == 0', 'rs1_h3_val == -2', 'rs1_h2_val == -3', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800012a4]:KDMABT t6, t5, t4
	-[0x800012a8]:sd t6, 768(a3)
Current Store : [0x800012ac] : sd t5, 776(a3) -- Store: [0x80003638]:0xFFFEFFFD00060000




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h2_val == -21846', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800012d8]:KDMABT t6, t5, t4
	-[0x800012dc]:sd t6, 784(a3)
Current Store : [0x800012e0] : sd t5, 792(a3) -- Store: [0x80003648]:0x5555AAAAFFF7FFF6




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001308]:KDMABT t6, t5, t4
	-[0x8000130c]:sd t6, 800(a3)
Current Store : [0x80001310] : sd t5, 808(a3) -- Store: [0x80003658]:0xFFF6FFFD00040040




Last Coverpoint : ['rs2_h2_val == -5', 'rs1_h3_val == -2049', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x80001344]:KDMABT t6, t5, t4
	-[0x80001348]:sd t6, 816(a3)
Current Store : [0x8000134c] : sd t5, 824(a3) -- Store: [0x80003668]:0xF7FFFFBF0200FFEF




Last Coverpoint : ['rs2_h3_val == 128', 'rs1_h3_val == -513']
Last Code Sequence : 
	-[0x80001380]:KDMABT t6, t5, t4
	-[0x80001384]:sd t6, 832(a3)
Current Store : [0x80001388] : sd t5, 840(a3) -- Store: [0x80003678]:0xFDFFFFF700030080




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800013b4]:KDMABT t6, t5, t4
	-[0x800013b8]:sd t6, 848(a3)
Current Store : [0x800013bc] : sd t5, 856(a3) -- Store: [0x80003688]:0xFF7FFFFAFFEF0004




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_h3_val == -65', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x800013e4]:KDMABT t6, t5, t4
	-[0x800013e8]:sd t6, 864(a3)
Current Store : [0x800013ec] : sd t5, 872(a3) -- Store: [0x80003698]:0xFFBFEFFFFFFFFFFC




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001420]:KDMABT t6, t5, t4
	-[0x80001424]:sd t6, 880(a3)
Current Store : [0x80001428] : sd t5, 888(a3) -- Store: [0x800036a8]:0xFFF8000600070001




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == -17']
Last Code Sequence : 
	-[0x8000145c]:KDMABT t6, t5, t4
	-[0x80001460]:sd t6, 896(a3)
Current Store : [0x80001464] : sd t5, 904(a3) -- Store: [0x800036b8]:0xFFEFFFFD0003FFFB




Last Coverpoint : ['rs2_h2_val == -16385']
Last Code Sequence : 
	-[0x8000148c]:KDMABT t6, t5, t4
	-[0x80001490]:sd t6, 912(a3)
Current Store : [0x80001494] : sd t5, 920(a3) -- Store: [0x800036c8]:0x0020FF7FFBFF0000




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x800014c8]:KDMABT t6, t5, t4
	-[0x800014cc]:sd t6, 928(a3)
Current Store : [0x800014d0] : sd t5, 936(a3) -- Store: [0x800036d8]:0x0400FFBF0006FFF9




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80001504]:KDMABT t6, t5, t4
	-[0x80001508]:sd t6, 944(a3)
Current Store : [0x8000150c] : sd t5, 952(a3) -- Store: [0x800036e8]:0x00040009FEFFEFFF




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h3_val == 512', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x8000153c]:KDMABT t6, t5, t4
	-[0x80001540]:sd t6, 960(a3)
Current Store : [0x80001544] : sd t5, 968(a3) -- Store: [0x800036f8]:0x020020000007FFDF




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x80001574]:KDMABT t6, t5, t4
	-[0x80001578]:sd t6, 976(a3)
Current Store : [0x8000157c] : sd t5, 984(a3) -- Store: [0x80003708]:0x4000000800050080




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x800015b4]:KDMABT t6, t5, t4
	-[0x800015b8]:sd t6, 992(a3)
Current Store : [0x800015bc] : sd t5, 1000(a3) -- Store: [0x80003718]:0x00050003FFDF0005




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 32', 'rs2_h2_val == -32768', 'rs2_h1_val == 16384', 'rs2_h0_val == -32768', 'rs1_h3_val == 1', 'rs1_h2_val == -65', 'rs1_h1_val == -3', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800015e8]:KDMABT t6, t5, t4
	-[0x800015ec]:sd t6, 1008(a3)
Current Store : [0x800015f0] : sd t5, 1016(a3) -- Store: [0x80003728]:0x0001FFBFFFFDFFBF




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x8000161c]:KDMABT t6, t5, t4
	-[0x80001620]:sd t6, 1024(a3)
Current Store : [0x80001624] : sd t5, 1032(a3) -- Store: [0x80003738]:0x0004200000072000




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x8000164c]:KDMABT t6, t5, t4
	-[0x80001650]:sd t6, 1040(a3)
Current Store : [0x80001654] : sd t5, 1048(a3) -- Store: [0x80003748]:0xFFFCFDFFFFFB0008




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80001680]:KDMABT t6, t5, t4
	-[0x80001684]:sd t6, 1056(a3)
Current Store : [0x80001688] : sd t5, 1064(a3) -- Store: [0x80003758]:0x0007FFDFFEFFFFFA




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800016b4]:KDMABT t6, t5, t4
	-[0x800016b8]:sd t6, 1072(a3)
Current Store : [0x800016bc] : sd t5, 1080(a3) -- Store: [0x80003768]:0xFFEF010000800004




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -2049', 'rs2_h1_val == 16384', 'rs1_h2_val == 16', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800016f0]:KDMABT t6, t5, t4
	-[0x800016f4]:sd t6, 1088(a3)
Current Store : [0x800016f8] : sd t5, 1096(a3) -- Store: [0x80003778]:0x00090010FFFD0003




Last Coverpoint : ['rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80001728]:KDMABT t6, t5, t4
	-[0x8000172c]:sd t6, 1104(a3)
Current Store : [0x80001730] : sd t5, 1112(a3) -- Store: [0x80003788]:0x00023FFFFFFF0080




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x8000175c]:KDMABT t6, t5, t4
	-[0x80001760]:sd t6, 1120(a3)
Current Store : [0x80001764] : sd t5, 1128(a3) -- Store: [0x80003798]:0xFDFFFFFEAAAA2000




Last Coverpoint : ['rs2_h1_val == -32768', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x80001790]:KDMABT t6, t5, t4
	-[0x80001794]:sd t6, 1136(a3)
Current Store : [0x80001798] : sd t5, 1144(a3) -- Store: [0x800037a8]:0xFFFDFEFFFFF94000




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800017b8]:KDMABT t6, t5, t4
	-[0x800017bc]:sd t6, 1152(a3)
Current Store : [0x800017c0] : sd t5, 1160(a3) -- Store: [0x800037b8]:0xDFFF00107FFFFF7F




Last Coverpoint : ['rs1_h2_val == -17', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800017f8]:KDMABT t6, t5, t4
	-[0x800017fc]:sd t6, 1168(a3)
Current Store : [0x80001800] : sd t5, 1176(a3) -- Store: [0x800037c8]:0xBFFFFFEFBFFF2000




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000182c]:KDMABT t6, t5, t4
	-[0x80001830]:sd t6, 1184(a3)
Current Store : [0x80001834] : sd t5, 1192(a3) -- Store: [0x800037d8]:0xFFFA0006DFFFF7FF




Last Coverpoint : ['rs2_h3_val == 4']
Last Code Sequence : 
	-[0x80001864]:KDMABT t6, t5, t4
	-[0x80001868]:sd t6, 1200(a3)
Current Store : [0x8000186c] : sd t5, 1208(a3) -- Store: [0x800037e8]:0x1000555502000005




Last Coverpoint : ['rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80001898]:KDMABT t6, t5, t4
	-[0x8000189c]:sd t6, 1216(a3)
Current Store : [0x800018a0] : sd t5, 1224(a3) -- Store: [0x800037f8]:0x8000FFFE00040800




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x800018d4]:KDMABT t6, t5, t4
	-[0x800018d8]:sd t6, 1232(a3)
Current Store : [0x800018dc] : sd t5, 1240(a3) -- Store: [0x80003808]:0x0010FF7FAAAA5555




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x8000190c]:KDMABT t6, t5, t4
	-[0x80001910]:sd t6, 1248(a3)
Current Store : [0x80001914] : sd t5, 1256(a3) -- Store: [0x80003818]:0xEFFFFFBF8000AAAA




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == -1', 'rs2_h1_val == -65', 'rs2_h0_val == 16384', 'rs1_h3_val == 4', 'rs1_h2_val == 2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80001940]:KDMABT t6, t5, t4
	-[0x80001944]:sd t6, 1264(a3)
Current Store : [0x80001948] : sd t5, 1272(a3) -- Store: [0x80003828]:0x00040002FFFCFF7F





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                     coverpoints                                                                                                                                                                                                                                                                                      |                                  code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFDBEFDFEE|- opcode : kdmabt<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_h0_val == -32768<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 1<br> - rs2_h2_val == 16<br> - rs2_h1_val == -5<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 1<br> - rs1_h2_val == 16<br> - rs1_h1_val == -5<br> |[0x800003d0]:KDMABT s5, t4, t4<br> [0x800003d4]:sd s5, 0(a0)<br>        |
|   2|[0x80003220]<br>0xFFFFFFFFFF100A01|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs2_h3_val == -129<br> - rs2_h1_val == -257<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -129<br> - rs1_h1_val == -257<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                         |[0x80000410]:KDMABT a7, a7, a7<br> [0x80000414]:sd a7, 16(a0)<br>       |
|   3|[0x80003230]<br>0x0000000076CF36FF|- rs1 : x13<br> - rs2 : x15<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -1025<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -3<br> - rs1_h2_val == 21845<br> - rs1_h0_val == -129<br>                                                                                |[0x80000454]:KDMABT s10, a3, a5<br> [0x80000458]:sd s10, 32(a0)<br>     |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x0<br> - rs1 == rd != rs2<br> - rs2_h2_val == -1<br> - rs2_h1_val == -65<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                  |[0x80000488]:KDMABT zero, zero, s5<br> [0x8000048c]:sd zero, 48(a0)<br> |
|   5|[0x80003250]<br>0x000000000002BFEC|- rs1 : x14<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -1<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 2<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -65<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                       |[0x800004b4]:KDMABT a3, a4, a3<br> [0x800004b8]:sd a3, 64(a0)<br>       |
|   6|[0x80003260]<br>0xFFFFFFFFBB6FAAFF|- rs1 : x3<br> - rs2 : x1<br> - rd : x27<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -2<br> - rs2_h0_val == -65<br> - rs1_h2_val == -2049<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                |[0x800004ec]:KDMABT s11, gp, ra<br> [0x800004f0]:sd s11, 80(a0)<br>     |
|   7|[0x80003270]<br>0x000000007D7C7E5D|- rs1 : x27<br> - rs2 : x6<br> - rd : x16<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 32<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 16<br> - rs1_h2_val == 32<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000524]:KDMABT a6, s11, t1<br> [0x80000528]:sd a6, 96(a0)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFFFF76D756|- rs1 : x5<br> - rs2 : x9<br> - rd : x2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -257<br> - rs2_h2_val == 512<br> - rs2_h1_val == 128<br> - rs2_h0_val == -21846<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000568]:KDMABT sp, t0, s1<br> [0x8000056c]:sd sp, 112(a0)<br>      |
|   9|[0x80003290]<br>0xFFFFFFFFDDC7D57F|- rs1 : x18<br> - rs2 : x25<br> - rd : x28<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -9<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_h3_val == -9<br> - rs1_h2_val == -129<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                 |[0x8000059c]:KDMABT t3, s2, s9<br> [0x800005a0]:sd t3, 128(a0)<br>      |
|  10|[0x800032a0]<br>0xFFFFFFFFD5BFB5B7|- rs1 : x4<br> - rs2 : x14<br> - rd : x12<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -513<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x800005d0]:KDMABT a2, tp, a4<br> [0x800005d4]:sd a2, 144(a0)<br>      |
|  11|[0x800032b0]<br>0x00000000003F80C1|- rs1 : x30<br> - rs2 : x28<br> - rd : x1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -1<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 512<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                              |[0x80000614]:KDMABT ra, t5, t3<br> [0x80000618]:sd ra, 160(a0)<br>      |
|  12|[0x800032c0]<br>0xFFFFFFFFFE000187|- rs1 : x16<br> - rs2 : x23<br> - rd : x4<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -33<br> - rs2_h0_val == -2<br> - rs1_h3_val == 64<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000650]:KDMABT tp, a6, s7<br> [0x80000654]:sd tp, 176(a0)<br>      |
|  13|[0x800032d0]<br>0x00000000001FFB40|- rs1 : x15<br> - rs2 : x31<br> - rd : x25<br> - rs2_h3_val == -16385<br> - rs2_h1_val == 64<br> - rs2_h0_val == 2<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000068c]:KDMABT s9, a5, t6<br> [0x80000690]:sd s9, 192(a0)<br>      |
|  14|[0x800032e0]<br>0xFFFFFFFFF7EF37FF|- rs1 : x8<br> - rs2 : x30<br> - rd : x18<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 256<br> - rs2_h1_val == -513<br> - rs1_h3_val == -1<br> - rs1_h2_val == 1<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006c0]:KDMABT s2, fp, t5<br> [0x800006c4]:sd s2, 208(a0)<br>      |
|  15|[0x800032f0]<br>0x0000000004045351|- rs1 : x26<br> - rs2 : x27<br> - rd : x14<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 4<br> - rs2_h0_val == 32767<br> - rs1_h2_val == -1<br> - rs1_h1_val == 32<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006fc]:KDMABT a4, s10, s11<br> [0x80000700]:sd a4, 224(a0)<br>    |
|  16|[0x80003300]<br>0xFFFFFFFFFFF000FA|- rs1 : x28<br> - rs2 : x3<br> - rd : x15<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 1024<br> - rs2_h0_val == 8192<br> - rs1_h2_val == -1025<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000734]:KDMABT a5, t3, gp<br> [0x80000738]:sd a5, 240(a0)<br>      |
|  17|[0x80003310]<br>0xFFFFFFFFFFFE2AA8|- rs1 : x19<br> - rs2 : x2<br> - rd : x29<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 4<br> - rs1_h3_val == 4<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000770]:KDMABT t4, s3, sp<br> [0x80000774]:sd t4, 256(a0)<br>      |
|  18|[0x80003320]<br>0xFFFFFFFFFDFEF7FA|- rs1 : x24<br> - rs2 : x7<br> - rd : x30<br> - rs2_h3_val == -513<br> - rs2_h2_val == -65<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 2<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800007b0]:KDMABT t5, s8, t2<br> [0x800007b4]:sd t5, 272(a0)<br>      |
|  19|[0x80003330]<br>0xFFFFFFFFAB7F1B65|- rs1 : x12<br> - rs2 : x19<br> - rd : x11<br> - rs2_h3_val == -65<br> - rs1_h3_val == 8<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800007f0]:KDMABT a1, a2, s3<br> [0x800007f4]:sd a1, 0(a3)<br>        |
|  20|[0x80003340]<br>0x0000000003FFD003|- rs1 : x23<br> - rs2 : x20<br> - rd : x7<br> - rs2_h3_val == -33<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 8<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000082c]:KDMABT t2, s7, s4<br> [0x80000830]:sd t2, 16(a3)<br>       |
|  21|[0x80003350]<br>0x000000000100FFF8|- rs1 : x25<br> - rs2 : x8<br> - rd : x5<br> - rs2_h3_val == -17<br> - rs2_h2_val == 2<br> - rs2_h1_val == 0<br> - rs1_h3_val == -1025<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000860]:KDMABT t0, s9, fp<br> [0x80000864]:sd t0, 32(a3)<br>       |
|  22|[0x80003360]<br>0xFFFFFFFFFBFF0200|- rs1 : x9<br> - rs2 : x24<br> - rd : x23<br> - rs2_h3_val == -5<br> - rs2_h2_val == 0<br> - rs2_h0_val == 1<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 128<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000894]:KDMABT s7, s1, s8<br> [0x80000898]:sd s7, 48(a3)<br>       |
|  23|[0x80003370]<br>0x000000000005FE0B|- rs1 : x2<br> - rs2 : x4<br> - rd : x19<br> - rs2_h3_val == -3<br> - rs1_h2_val == -9<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800008cc]:KDMABT s3, sp, tp<br> [0x800008d0]:sd s3, 64(a3)<br>       |
|  24|[0x80003380]<br>0x000000006DF56FB1|- rs1 : x11<br> - rs2 : x12<br> - rd : x22<br> - rs2_h3_val == -2<br> - rs2_h2_val == -513<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000900]:KDMABT s6, a1, a2<br> [0x80000904]:sd s6, 80(a3)<br>       |
|  25|[0x80003390]<br>0xFFFFFFFFFFFCFFFE|- rs1 : x1<br> - rs2 : x26<br> - rd : x9<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -17<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000093c]:KDMABT s1, ra, s10<br> [0x80000940]:sd s1, 96(a3)<br>      |
|  26|[0x800033a0]<br>0x00000000003B554E|- rs1 : x20<br> - rs2 : x5<br> - rd : x31<br> - rs2_h3_val == 16384<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000978]:KDMABT t6, s4, t0<br> [0x8000097c]:sd t6, 112(a3)<br>      |
|  27|[0x800033b0]<br>0x00000000007FF6EF|- rs1 : x10<br> - rs2 : x16<br> - rd : x24<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -33<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800009b4]:KDMABT s8, a0, a6<br> [0x800009b8]:sd s8, 128(a3)<br>      |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFEA000|- rs1 : x31<br> - rs2 : x11<br> - rd : x3<br> - rs2_h3_val == 2048<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 32<br> - rs1_h1_val == 16<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800009f0]:KDMABT gp, t6, a1<br> [0x800009f4]:sd gp, 144(a3)<br>      |
|  29|[0x800033d0]<br>0xFFFFFFFFBFE0A8AA|- rs1 : x6<br> - rs2 : x10<br> - rd : x20<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 256<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a38]:KDMABT s4, t1, a0<br> [0x80000a3c]:sd s4, 160(a3)<br>      |
|  30|[0x800033e0]<br>0x0000000007F8CFFF|- rs1 : x22<br> - rs2 : x18<br> - rd : x6<br> - rs2_h3_val == 512<br> - rs2_h2_val == 32767<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a64]:KDMABT t1, s6, s2<br> [0x80000a68]:sd t1, 176(a3)<br>      |
|  31|[0x800033f0]<br>0x000000000003FFF5|- rs1 : x7<br> - rs2 : x22<br> - rd : x8<br> - rs2_h3_val == 256<br> - rs2_h2_val == 1<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000aa0]:KDMABT fp, t2, s6<br> [0x80000aa4]:sd fp, 192(a3)<br>      |
|  32|[0x80003400]<br>0x000000000100DFFF|- rs1 : x21<br> - rs2 : x0<br> - rd : x10<br> - rs2_h3_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000adc]:KDMABT a0, s5, zero<br> [0x80000ae0]:sd a0, 208(a3)<br>    |
|  33|[0x80003410]<br>0x00000000000BFFD0|- rs2_h3_val == 64<br> - rs1_h3_val == -5<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b14]:KDMABT t6, t5, t4<br> [0x80000b18]:sd t6, 224(a3)<br>      |
|  34|[0x80003420]<br>0x00000000010BFDD0|- rs2_h3_val == 16<br> - rs2_h1_val == 32767<br> - rs1_h3_val == 256<br> - rs1_h1_val == -2<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b4c]:KDMABT t6, t5, t4<br> [0x80000b50]:sd t6, 240(a3)<br>      |
|  35|[0x80003430]<br>0x00000000010B7DB0|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b88]:KDMABT t6, t5, t4<br> [0x80000b8c]:sd t6, 256(a3)<br>      |
|  36|[0x80003440]<br>0x00000000010B7D32|- rs2_h3_val == 8<br> - rs2_h0_val == -9<br> - rs1_h3_val == 128<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000bbc]:KDMABT t6, t5, t4<br> [0x80000bc0]:sd t6, 272(a3)<br>      |
|  37|[0x80003450]<br>0x00000000010A7532|- rs1_h3_val == 2048<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000bf0]:KDMABT t6, t5, t4<br> [0x80000bf4]:sd t6, 288(a3)<br>      |
|  38|[0x80003460]<br>0xFFFFFFFFF90A3532|- rs2_h2_val == -9<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c34]:KDMABT t6, t5, t4<br> [0x80000c38]:sd t6, 304(a3)<br>      |
|  39|[0x80003470]<br>0xFFFFFFFFF90A3122|- rs2_h1_val == 8<br> - rs2_h0_val == -1025<br> - rs1_h2_val == 64<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c70]:KDMABT t6, t5, t4<br> [0x80000c74]:sd t6, 320(a3)<br>      |
|  40|[0x80003480]<br>0xFFFFFFFFF90A316A|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000ca0]:KDMABT t6, t5, t4<br> [0x80000ca4]:sd t6, 336(a3)<br>      |
|  41|[0x80003490]<br>0xFFFFFFFFF90A316A|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000cd4]:KDMABT t6, t5, t4<br> [0x80000cd8]:sd t6, 352(a3)<br>      |
|  42|[0x800034a0]<br>0xFFFFFFFFF90A317E|- rs2_h2_val == 21845<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d0c]:KDMABT t6, t5, t4<br> [0x80000d10]:sd t6, 368(a3)<br>      |
|  43|[0x800034b0]<br>0xFFFFFFFFF90A31BE|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d48]:KDMABT t6, t5, t4<br> [0x80000d4c]:sd t6, 384(a3)<br>      |
|  44|[0x800034c0]<br>0x00000000010AB1BE|- rs1_h3_val == -257<br> - rs1_h2_val == -3<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d84]:KDMABT t6, t5, t4<br> [0x80000d88]:sd t6, 400(a3)<br>      |
|  45|[0x800034d0]<br>0x00000000010AB23C|- rs2_h0_val == -17<br> - rs1_h2_val == -257<br> - rs1_h1_val == 1<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000db8]:KDMABT t6, t5, t4<br> [0x80000dbc]:sd t6, 416(a3)<br>      |
|  46|[0x800034e0]<br>0x0000000000E9B27E|- rs2_h0_val == -33<br> - rs1_h3_val == 2<br> - rs1_h2_val == 4<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000df4]:KDMABT t6, t5, t4<br> [0x80000df8]:sd t6, 432(a3)<br>      |
|  47|[0x80003500]<br>0x0000000001095672|- rs2_h2_val == -2<br> - rs2_h1_val == -2049<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e70]:KDMABT t6, t5, t4<br> [0x80000e74]:sd t6, 464(a3)<br>      |
|  48|[0x80003510]<br>0x0000000000FE0128|- rs1_h2_val == -5<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000eb8]:KDMABT t6, t5, t4<br> [0x80000ebc]:sd t6, 480(a3)<br>      |
|  49|[0x80003520]<br>0x0000000000FE00C8|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ee4]:KDMABT t6, t5, t4<br> [0x80000ee8]:sd t6, 496(a3)<br>      |
|  50|[0x80003530]<br>0x0000000000FB80C8|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f1c]:KDMABT t6, t5, t4<br> [0x80000f20]:sd t6, 512(a3)<br>      |
|  51|[0x80003540]<br>0x00000000017B80C8|- rs2_h2_val == 128<br> - rs2_h1_val == 512<br> - rs2_h0_val == -129<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -33<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000f50]:KDMABT t6, t5, t4<br> [0x80000f54]:sd t6, 528(a3)<br>      |
|  52|[0x80003550]<br>0xFFFFFFFFFF7B60C8|- rs2_h1_val == -4097<br> - rs2_h0_val == -257<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f80]:KDMABT t6, t5, t4<br> [0x80000f84]:sd t6, 544(a3)<br>      |
|  53|[0x80003560]<br>0xFFFFFFFFFF7A50C8|- rs2_h2_val == -3<br> - rs2_h1_val == -17<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000fbc]:KDMABT t6, t5, t4<br> [0x80000fc0]:sd t6, 560(a3)<br>      |
|  54|[0x80003570]<br>0xFFFFFFFFFF794CC8|- rs1_h3_val == -21846<br> - rs1_h2_val == 8<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ff8]:KDMABT t6, t5, t4<br> [0x80000ffc]:sd t6, 576(a3)<br>      |
|  55|[0x80003580]<br>0xFFFFFFFFFF7947C8|- rs2_h0_val == -5<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001034]:KDMABT t6, t5, t4<br> [0x80001038]:sd t6, 592(a3)<br>      |
|  56|[0x80003590]<br>0xFFFFFFFFFF78C7C6|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001078]:KDMABT t6, t5, t4<br> [0x8000107c]:sd t6, 608(a3)<br>      |
|  57|[0x800035a0]<br>0xFFFFFFFFFF78C848|- rs2_h1_val == -1<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800010b4]:KDMABT t6, t5, t4<br> [0x800010b8]:sd t6, 624(a3)<br>      |
|  58|[0x800035b0]<br>0xFFFFFFFFFF9948CA|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010f0]:KDMABT t6, t5, t4<br> [0x800010f4]:sd t6, 640(a3)<br>      |
|  59|[0x800035c0]<br>0xFFFFFFFFFF9E48CA|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000111c]:KDMABT t6, t5, t4<br> [0x80001120]:sd t6, 656(a3)<br>      |
|  60|[0x800035d0]<br>0xFFFFFFFFFF9A47CA|- rs2_h2_val == -2049<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001160]:KDMABT t6, t5, t4<br> [0x80001164]:sd t6, 672(a3)<br>      |
|  61|[0x800035e0]<br>0xFFFFFFFFFF9A4BCA|- rs2_h0_val == 256<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001194]:KDMABT t6, t5, t4<br> [0x80001198]:sd t6, 688(a3)<br>      |
|  62|[0x800035f0]<br>0xFFFFFFFFFF9A4B4C|- rs2_h0_val == 128<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011c8]:KDMABT t6, t5, t4<br> [0x800011cc]:sd t6, 704(a3)<br>      |
|  63|[0x80003600]<br>0xFFFFFFFFFF9E4B4C|- rs2_h2_val == 8<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001200]:KDMABT t6, t5, t4<br> [0x80001204]:sd t6, 720(a3)<br>      |
|  64|[0x80003610]<br>0xFFFFFFFFFF9E4C12|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000123c]:KDMABT t6, t5, t4<br> [0x80001240]:sd t6, 736(a3)<br>      |
|  65|[0x80003620]<br>0xFFFFFFFFFF9E9412|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001270]:KDMABT t6, t5, t4<br> [0x80001274]:sd t6, 752(a3)<br>      |
|  66|[0x80003640]<br>0xFFFFFFFFFF9E9462|- rs1_h3_val == 21845<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012d8]:KDMABT t6, t5, t4<br> [0x800012dc]:sd t6, 784(a3)<br>      |
|  67|[0x80003650]<br>0xFFFFFFFFFF9ED462|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001308]:KDMABT t6, t5, t4<br> [0x8000130c]:sd t6, 800(a3)<br>      |
|  68|[0x80003660]<br>0xFFFFFFFFFF9ED330|- rs2_h2_val == -5<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001344]:KDMABT t6, t5, t4<br> [0x80001348]:sd t6, 816(a3)<br>      |
|  69|[0x80003670]<br>0xFFFFFFFFFF9ECF30|- rs2_h3_val == 128<br> - rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001380]:KDMABT t6, t5, t4<br> [0x80001384]:sd t6, 832(a3)<br>      |
|  70|[0x80003680]<br>0xFFFFFFFFFF9ECF40|- rs2_h3_val == 2<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800013b4]:KDMABT t6, t5, t4<br> [0x800013b8]:sd t6, 848(a3)<br>      |
|  71|[0x80003690]<br>0xFFFFFFFFFF9EDF48|- rs2_h2_val == 64<br> - rs1_h3_val == -65<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013e4]:KDMABT t6, t5, t4<br> [0x800013e8]:sd t6, 864(a3)<br>      |
|  72|[0x800036a0]<br>0xFFFFFFFFFF9EDF38|- rs2_h2_val == 32<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001420]:KDMABT t6, t5, t4<br> [0x80001424]:sd t6, 880(a3)<br>      |
|  73|[0x800036b0]<br>0xFFFFFFFFFFA23494|- rs2_h1_val == -21846<br> - rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000145c]:KDMABT t6, t5, t4<br> [0x80001460]:sd t6, 896(a3)<br>      |
|  74|[0x800036c0]<br>0xFFFFFFFFFFA23494|- rs2_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000148c]:KDMABT t6, t5, t4<br> [0x80001490]:sd t6, 912(a3)<br>      |
|  75|[0x800036d0]<br>0xFFFFFFFFFFA23424|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014c8]:KDMABT t6, t5, t4<br> [0x800014cc]:sd t6, 928(a3)<br>      |
|  76|[0x800036e0]<br>0xFFFFFFFFFFA17418|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001504]:KDMABT t6, t5, t4<br> [0x80001508]:sd t6, 944(a3)<br>      |
|  77|[0x800036f0]<br>0xFFFFFFFFFF90F418|- rs2_h1_val == 16384<br> - rs1_h3_val == 512<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000153c]:KDMABT t6, t5, t4<br> [0x80001540]:sd t6, 960(a3)<br>      |
|  78|[0x80003700]<br>0xFFFFFFFFFF90F118|- rs2_h2_val == -257<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001574]:KDMABT t6, t5, t4<br> [0x80001578]:sd t6, 976(a3)<br>      |
|  79|[0x80003710]<br>0xFFFFFFFFFF8FB10E|- rs2_h2_val == -129<br> - rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800015b4]:KDMABT t6, t5, t4<br> [0x800015b8]:sd t6, 992(a3)<br>      |
|  80|[0x80003730]<br>0xFFFFFFFFFEEEF10E|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000161c]:KDMABT t6, t5, t4<br> [0x80001620]:sd t6, 1024(a3)<br>     |
|  81|[0x80003740]<br>0xFFFFFFFFFEEEE8FE|- rs2_h1_val == -129<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000164c]:KDMABT t6, t5, t4<br> [0x80001650]:sd t6, 1040(a3)<br>     |
|  82|[0x80003750]<br>0xFFFFFFFFFEEEE93A|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001680]:KDMABT t6, t5, t4<br> [0x80001684]:sd t6, 1056(a3)<br>     |
|  83|[0x80003760]<br>0xFFFFFFFFFEEEE732|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800016b4]:KDMABT t6, t5, t4<br> [0x800016b8]:sd t6, 1072(a3)<br>     |
|  84|[0x80003780]<br>0xFFFFFFFFFEF05E32|- rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001728]:KDMABT t6, t5, t4<br> [0x8000172c]:sd t6, 1104(a3)<br>     |
|  85|[0x80003790]<br>0xFFFFFFFFFEEE5E32|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000175c]:KDMABT t6, t5, t4<br> [0x80001760]:sd t6, 1120(a3)<br>     |
|  86|[0x800037a0]<br>0xFFFFFFFFBEEE5E32|- rs2_h1_val == -32768<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001790]:KDMABT t6, t5, t4<br> [0x80001794]:sd t6, 1136(a3)<br>     |
|  87|[0x800037b0]<br>0xFFFFFFFFBEADDE32|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800017b8]:KDMABT t6, t5, t4<br> [0x800017bc]:sd t6, 1152(a3)<br>     |
|  88|[0x800037c0]<br>0xFFFFFFFFD4031E32|- rs1_h2_val == -17<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017f8]:KDMABT t6, t5, t4<br> [0x800017fc]:sd t6, 1168(a3)<br>     |
|  89|[0x800037d0]<br>0xFFFFFFFFD302FE32|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000182c]:KDMABT t6, t5, t4<br> [0x80001830]:sd t6, 1184(a3)<br>     |
|  90|[0x800037e0]<br>0xFFFFFFFFD3031232|- rs2_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001864]:KDMABT t6, t5, t4<br> [0x80001868]:sd t6, 1200(a3)<br>     |
|  91|[0x800037f0]<br>0xFFFFFFFFD2F30232|- rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001898]:KDMABT t6, t5, t4<br> [0x8000189c]:sd t6, 1216(a3)<br>     |
|  92|[0x80003800]<br>0xFFFFFFFFD2F65784|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800018d4]:KDMABT t6, t5, t4<br> [0x800018d8]:sd t6, 1232(a3)<br>     |
|  93|[0x80003810]<br>0xFFFFFFFFCDA0F784|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000190c]:KDMABT t6, t5, t4<br> [0x80001910]:sd t6, 1248(a3)<br>     |
