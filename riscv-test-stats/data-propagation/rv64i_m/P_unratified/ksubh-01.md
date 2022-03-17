
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001aa0')]      |
| SIG_REGION                | [('0x80003210', '0x80003880', '206 dwords')]      |
| COV_LABELS                | ksubh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ksubh-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 206      |
| STAT1                     | 100      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 103     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015a0]:KSUBH t6, t5, t4
      [0x800015a4]:sd t6, 752(ra)
 -- Signature Address: 0x80003710 Data: 0x0000000000007FFF
 -- Redundant Coverpoints hit by the op
      - opcode : ksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h2_val == -257
      - rs2_h0_val == 16384
      - rs1_h3_val == 16
      - rs1_h1_val == 4096
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e0]:KSUBH t6, t5, t4
      [0x800019e4]:sd t6, 1056(ra)
 -- Signature Address: 0x80003840 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : ksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 0
      - rs2_h1_val == 1024
      - rs2_h0_val == -3
      - rs1_h3_val == -1025
      - rs1_h2_val == -2
      - rs1_h1_val == 32
      - rs1_h0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a4c]:KSUBH t6, t5, t4
      [0x80001a50]:sd t6, 1088(ra)
 -- Signature Address: 0x80003860 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : ksubh
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
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -129
      - rs2_h2_val == 32767
      - rs2_h1_val == 4
      - rs1_h3_val == 16384
      - rs1_h2_val == 2
      - rs1_h1_val == -4097
      - rs1_h0_val == -4097






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksubh', 'rs1 : x30', 'rs2 : x30', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 16', 'rs2_h1_val == 512', 'rs2_h0_val == 32767', 'rs1_h3_val == 16', 'rs1_h1_val == 512', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800003c4]:KSUBH a7, t5, t5
	-[0x800003c8]:sd a7, 0(t1)
Current Store : [0x800003cc] : sd t5, 8(t1) -- Store: [0x80003218]:0x0010C00002007FFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x31', 'rs1 == rs2 == rd', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == -2', 'rs2_h1_val == 16', 'rs2_h0_val == -1', 'rs1_h2_val == -2', 'rs1_h1_val == 16', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000408]:KSUBH t6, t6, t6
	-[0x8000040c]:sd t6, 16(t1)
Current Store : [0x80000410] : sd t6, 24(t1) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -4097', 'rs2_h1_val == -17', 'rs1_h3_val == -16385', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x8000043c]:KSUBH a4, ra, a5
	-[0x80000440]:sd a4, 32(t1)
Current Store : [0x80000444] : sd ra, 40(t1) -- Store: [0x80003238]:0xBFFF004000090006




Last Coverpoint : ['rs1 : x24', 'rs2 : x10', 'rd : x24', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs2_h3_val == -3', 'rs2_h2_val == -33', 'rs2_h1_val == -65', 'rs2_h0_val == 512', 'rs1_h3_val == -4097', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80000478]:KSUBH s8, s8, a0
	-[0x8000047c]:sd s8, 48(t1)
Current Store : [0x80000480] : sd s8, 56(t1) -- Store: [0x80003248]:0x0000000000007FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h3_val == -4097', 'rs2_h2_val == -32768', 'rs2_h1_val == -21846', 'rs2_h0_val == 0', 'rs1_h3_val == 16384', 'rs1_h2_val == -4097', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800004b8]:KSUBH s4, t2, s4
	-[0x800004bc]:sd s4, 64(t1)
Current Store : [0x800004c0] : sd t2, 72(t1) -- Store: [0x80003258]:0x4000EFFFFFFD0006




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x9', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 32767', 'rs2_h1_val == -32768', 'rs2_h0_val == 2', 'rs1_h2_val == 32767', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800004f4]:KSUBH s1, t3, tp
	-[0x800004f8]:sd s1, 80(t1)
Current Store : [0x800004fc] : sd t3, 88(t1) -- Store: [0x80003268]:0x00077FFF00060100




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x1', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == -16385', 'rs2_h2_val == 8192', 'rs2_h0_val == 1', 'rs1_h1_val == 4', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000538]:KSUBH ra, s4, t4
	-[0x8000053c]:sd ra, 96(t1)
Current Store : [0x80000540] : sd s4, 104(t1) -- Store: [0x80003278]:0xEFFFFFF900040020




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x2', 'rs2_h2_val == -3', 'rs2_h1_val == 0', 'rs2_h0_val == -5', 'rs1_h1_val == 0', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000574]:KSUBH sp, tp, s8
	-[0x80000578]:sd sp, 112(t1)
Current Store : [0x8000057c] : sd tp, 120(t1) -- Store: [0x80003288]:0xBFFFFFF90000DFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x2', 'rd : x21', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -32768', 'rs2_h2_val == -21846', 'rs2_h1_val == 8192', 'rs2_h0_val == -3', 'rs1_h1_val == -129', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005b4]:KSUBH s5, s10, sp
	-[0x800005b8]:sd s5, 128(t1)
Current Store : [0x800005bc] : sd s10, 136(t1) -- Store: [0x80003298]:0xFFF97FFFFF7F0004




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x12', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800005f0]:KSUBH a2, t4, s11
	-[0x800005f4]:sd a2, 144(t1)
Current Store : [0x800005f8] : sd t4, 152(t1) -- Store: [0x800032a8]:0xFFF80010FFFA0007




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x25', 'rs2_h3_val == -21846', 'rs2_h2_val == 0', 'rs2_h1_val == -5', 'rs2_h0_val == 4', 'rs1_h3_val == -2049', 'rs1_h2_val == 2', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000628]:KSUBH s9, s1, a3
	-[0x8000062c]:sd s9, 160(t1)
Current Store : [0x80000630] : sd s1, 168(t1) -- Store: [0x800032b8]:0xF7FF000200051000




Last Coverpoint : ['rs1 : x27', 'rs2 : x9', 'rd : x5', 'rs2_h3_val == 32767', 'rs2_h1_val == -129', 'rs1_h3_val == -3', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000658]:KSUBH t0, s11, s1
	-[0x8000065c]:sd t0, 176(t1)
Current Store : [0x80000660] : sd s11, 184(t1) -- Store: [0x800032c8]:0xFFFDFFF9FFF7FFFC




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x15', 'rs2_h3_val == -8193', 'rs2_h0_val == -513', 'rs1_h3_val == -1025', 'rs1_h2_val == 1', 'rs1_h1_val == -8193', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000694]:KSUBH a5, s7, gp
	-[0x80000698]:sd a5, 192(t1)
Current Store : [0x8000069c] : sd s7, 200(t1) -- Store: [0x800032d8]:0xFBFF0001DFFF0040




Last Coverpoint : ['rs1 : x13', 'rs2 : x22', 'rd : x3', 'rs2_h3_val == -2049', 'rs2_h0_val == 8192', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800006cc]:KSUBH gp, a3, s6
	-[0x800006d0]:sd gp, 208(t1)
Current Store : [0x800006d4] : sd a3, 216(t1) -- Store: [0x800032e8]:0xC000000900200006




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x22', 'rs2_h3_val == -1025', 'rs2_h2_val == -1025', 'rs2_h1_val == -9', 'rs2_h0_val == 128', 'rs1_h3_val == 1024', 'rs1_h1_val == -33', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000708]:KSUBH s6, t0, s10
	-[0x8000070c]:sd s6, 224(t1)
Current Store : [0x80000710] : sd t0, 232(t1) -- Store: [0x800032f8]:0x0400FFFCFFDF5555




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x19', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -513', 'rs2_h2_val == 2048', 'rs2_h1_val == 1024', 'rs1_h2_val == -9', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000748]:KSUBH s3, s9, a2
	-[0x8000074c]:sd s3, 240(t1)
Current Store : [0x80000750] : sd s9, 248(t1) -- Store: [0x80003308]:0x3FFFFFF73FFFBFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x7', 'rs2_h3_val == -257', 'rs2_h2_val == 4096', 'rs2_h1_val == 1', 'rs1_h3_val == -65', 'rs1_h2_val == -33', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000784]:KSUBH t2, a5, t3
	-[0x80000788]:sd t2, 256(t1)
Current Store : [0x8000078c] : sd a5, 264(t1) -- Store: [0x80003318]:0xFFBFFFDF2000FFF8




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rd : x8', 'rs2_h3_val == 0', 'rs1_h1_val == -4097', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800007c4]:KSUBH fp, s5, zero
	-[0x800007c8]:sd fp, 272(t1)
Current Store : [0x800007cc] : sd s5, 280(t1) -- Store: [0x80003328]:0x40000002EFFFEFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == -65', 'rs2_h2_val == -513', 'rs1_h2_val == -32768', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000800]:KSUBH a1, t1, s9
	-[0x80000804]:sd a1, 0(s1)
Current Store : [0x80000808] : sd t1, 8(s1) -- Store: [0x80003338]:0x40008000FFFB0004




Last Coverpoint : ['rs1 : x17', 'rs2 : x5', 'rd : x6', 'rs2_h3_val == -33', 'rs2_h2_val == -257', 'rs2_h1_val == 256', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80000838]:KSUBH t1, a7, t0
	-[0x8000083c]:sd t1, 16(s1)
Current Store : [0x80000840] : sd a7, 24(s1) -- Store: [0x80003348]:0x1000FFF60003FFFA




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x27', 'rs2_h3_val == -17', 'rs1_h2_val == -8193', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000874]:KSUBH s11, a2, a6
	-[0x80000878]:sd s11, 32(s1)
Current Store : [0x8000087c] : sd a2, 40(s1) -- Store: [0x80003358]:0xFFBFDFFF0003FEFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x18', 'rs2_h3_val == -9', 'rs2_h2_val == 16384', 'rs2_h0_val == -1025', 'rs1_h1_val == 2048', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800008a4]:KSUBH s2, gp, a7
	-[0x800008a8]:sd s2, 48(s1)
Current Store : [0x800008ac] : sd gp, 56(s1) -- Store: [0x80003368]:0xFFFDDFFF08000400




Last Coverpoint : ['rs1 : x18', 'rs2 : x7', 'rd : x26', 'rs2_h3_val == -5', 'rs2_h1_val == -513', 'rs1_h3_val == 2048', 'rs1_h2_val == -1025', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800008dc]:KSUBH s10, s2, t2
	-[0x800008e0]:sd s10, 64(s1)
Current Store : [0x800008e4] : sd s2, 72(s1) -- Store: [0x80003378]:0x0800FBFF0006FFFD




Last Coverpoint : ['rs1 : x19', 'rs2 : x11', 'rd : x16', 'rs2_h3_val == -2', 'rs2_h2_val == 1']
Last Code Sequence : 
	-[0x80000910]:KSUBH a6, s3, a1
	-[0x80000914]:sd a6, 80(s1)
Current Store : [0x80000918] : sd s3, 88(s1) -- Store: [0x80003388]:0xC000EFFFFFFBEFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x0', 'rs2_h3_val == 16384', 'rs2_h0_val == -33', 'rs1_h3_val == -17', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000944]:KSUBH zero, s6, s2
	-[0x80000948]:sd zero, 96(s1)
Current Store : [0x8000094c] : sd s6, 104(s1) -- Store: [0x80003398]:0xFFEFC0007FFFFFFC




Last Coverpoint : ['rs1 : x8', 'rs2 : x23', 'rd : x29', 'rs2_h3_val == 8192', 'rs2_h2_val == -1', 'rs1_h3_val == -32768', 'rs1_h1_val == 128', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000980]:KSUBH t4, fp, s7
	-[0x80000984]:sd t4, 112(s1)
Current Store : [0x80000988] : sd fp, 120(s1) -- Store: [0x800033a8]:0x800000400080FDFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x13', 'rs2_h3_val == 4096', 'rs2_h1_val == -8193', 'rs2_h0_val == -17', 'rs1_h3_val == 64', 'rs1_h1_val == 1', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800009bc]:KSUBH a3, a6, a4
	-[0x800009c0]:sd a3, 128(s1)
Current Store : [0x800009c4] : sd a6, 136(s1) -- Store: [0x800033b8]:0x004000070001FFEF




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x30', 'rs2_h3_val == 2048', 'rs2_h0_val == -2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800009f8]:KSUBH t5, a1, s3
	-[0x800009fc]:sd t5, 144(s1)
Current Store : [0x80000a00] : sd a1, 152(s1) -- Store: [0x800033c8]:0x1000EFFFFFFB0080




Last Coverpoint : ['rs1 : x14', 'rs2 : x6', 'rd : x28', 'rs2_h3_val == 1024', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x80000a34]:KSUBH t3, a4, t1
	-[0x80000a38]:sd t3, 160(s1)
Current Store : [0x80000a3c] : sd a4, 168(s1) -- Store: [0x800033d8]:0x0400FBFFFFF7FEFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x8', 'rd : x23', 'rs2_h3_val == 512', 'rs2_h2_val == 8', 'rs1_h3_val == -9', 'rs1_h2_val == 512', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000a64]:KSUBH s7, a0, fp
	-[0x80000a68]:sd s7, 176(s1)
Current Store : [0x80000a6c] : sd a0, 184(s1) -- Store: [0x800033e8]:0xFFF70200BFFF1000




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x4', 'rs2_h3_val == 256', 'rs2_h1_val == 32', 'rs2_h0_val == 1024', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000aa0]:KSUBH tp, zero, s5
	-[0x80000aa4]:sd tp, 192(s1)
Current Store : [0x80000aa8] : sd zero, 200(s1) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x10', 'rs2_h3_val == 128', 'rs2_h2_val == 64', 'rs2_h0_val == -16385', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000ad8]:KSUBH a0, sp, ra
	-[0x80000adc]:sd a0, 208(s1)
Current Store : [0x80000ae0] : sd sp, 216(s1) -- Store: [0x80003408]:0xFFF90006FFFD2000




Last Coverpoint : ['rs2_h3_val == 64', 'rs2_h1_val == -1', 'rs1_h3_val == 32767', 'rs1_h2_val == -513', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000b0c]:KSUBH t6, t5, t4
	-[0x80000b10]:sd t6, 224(s1)
Current Store : [0x80000b14] : sd t5, 232(s1) -- Store: [0x80003418]:0x7FFFFDFFFFFAFFDF




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == 1024', 'rs2_h0_val == -21846', 'rs1_h3_val == 512', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x80000b50]:KSUBH t6, t5, t4
	-[0x80000b54]:sd t6, 0(ra)
Current Store : [0x80000b58] : sd t5, 8(ra) -- Store: [0x80003428]:0x020001000200FFF6




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80000b8c]:KSUBH t6, t5, t4
	-[0x80000b90]:sd t6, 16(ra)
Current Store : [0x80000b94] : sd t5, 24(ra) -- Store: [0x80003438]:0xFFF6000100055555




Last Coverpoint : ['rs1_h1_val == -2', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000bc8]:KSUBH t6, t5, t4
	-[0x80000bcc]:sd t6, 32(ra)
Current Store : [0x80000bd0] : sd t5, 40(ra) -- Store: [0x80003448]:0xFBFF7FFFFFFE0002




Last Coverpoint : ['rs1_h3_val == 4', 'rs1_h1_val == -32768', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000c04]:KSUBH t6, t5, t4
	-[0x80000c08]:sd t6, 48(ra)
Current Store : [0x80000c0c] : sd t5, 56(ra) -- Store: [0x80003458]:0x000400028000FFBF




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000c38]:KSUBH t6, t5, t4
	-[0x80000c3c]:sd t6, 64(ra)
Current Store : [0x80000c40] : sd t5, 72(ra) -- Store: [0x80003468]:0x00093FFF40000400




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h0_val == 64', 'rs1_h3_val == 2', 'rs1_h2_val == -65', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c64]:KSUBH t6, t5, t4
	-[0x80000c68]:sd t6, 80(ra)
Current Store : [0x80000c6c] : sd t5, 88(ra) -- Store: [0x80003478]:0x0002FFBF10000020




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h2_val == 2048', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000c90]:KSUBH t6, t5, t4
	-[0x80000c94]:sd t6, 96(ra)
Current Store : [0x80000c98] : sd t5, 104(ra) -- Store: [0x80003488]:0xFFF7080004000100




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000ccc]:KSUBH t6, t5, t4
	-[0x80000cd0]:sd t6, 112(ra)
Current Store : [0x80000cd4] : sd t5, 120(ra) -- Store: [0x80003498]:0xBFFFFFBF0100FEFF




Last Coverpoint : ['rs2_h3_val == -129', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000cfc]:KSUBH t6, t5, t4
	-[0x80000d00]:sd t6, 128(ra)
Current Store : [0x80000d04] : sd t5, 136(ra) -- Store: [0x800034a8]:0x0003000300400000




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 4', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d38]:KSUBH t6, t5, t4
	-[0x80000d3c]:sd t6, 144(ra)
Current Store : [0x80000d40] : sd t5, 152(ra) -- Store: [0x800034b8]:0xEFFF000000023FFF




Last Coverpoint : ['rs1_h2_val == -16385', 'rs1_h1_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000d74]:KSUBH t6, t5, t4
	-[0x80000d78]:sd t6, 160(ra)
Current Store : [0x80000d7c] : sd t5, 168(ra) -- Store: [0x800034c8]:0xEFFFBFFFFFFFF7FF




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000dac]:KSUBH t6, t5, t4
	-[0x80000db0]:sd t6, 176(ra)
Current Store : [0x80000db4] : sd t5, 184(ra) -- Store: [0x800034d8]:0x1000FFF8FFDFAAAA




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000de4]:KSUBH t6, t5, t4
	-[0x80000de8]:sd t6, 192(ra)
Current Store : [0x80000dec] : sd t5, 200(ra) -- Store: [0x800034e8]:0xEFFF8000FFF67FFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == 4096', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e20]:KSUBH t6, t5, t4
	-[0x80000e24]:sd t6, 208(ra)
Current Store : [0x80000e28] : sd t5, 216(ra) -- Store: [0x800034f8]:0xFFBFFFF9FFFAFBFF




Last Coverpoint : ['rs1_h2_val == 4', 'rs1_h1_val == -65', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000e54]:KSUBH t6, t5, t4
	-[0x80000e58]:sd t6, 224(ra)
Current Store : [0x80000e5c] : sd t5, 232(ra) -- Store: [0x80003508]:0xFFEF0004FFBFFF7F




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h1_val == -17', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000e8c]:KSUBH t6, t5, t4
	-[0x80000e90]:sd t6, 240(ra)
Current Store : [0x80000e94] : sd t5, 248(ra) -- Store: [0x80003518]:0x0200FFF6FFEFFFF7




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h1_val == 8', 'rs2_h0_val == 16', 'rs1_h3_val == -8193', 'rs1_h1_val == -513', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000ec8]:KSUBH t6, t5, t4
	-[0x80000ecc]:sd t6, 256(ra)
Current Store : [0x80000ed0] : sd t5, 264(ra) -- Store: [0x80003528]:0xDFFF0010FDFFFFFB




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h0_val == 8', 'rs1_h3_val == -129', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000efc]:KSUBH t6, t5, t4
	-[0x80000f00]:sd t6, 272(ra)
Current Store : [0x80000f04] : sd t5, 280(ra) -- Store: [0x80003538]:0xFF7FFBFF0002FFFE




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f34]:KSUBH t6, t5, t4
	-[0x80000f38]:sd t6, 288(ra)
Current Store : [0x80000f3c] : sd t5, 296(ra) -- Store: [0x80003548]:0x0004FFF67FFF4000




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000f70]:KSUBH t6, t5, t4
	-[0x80000f74]:sd t6, 304(ra)
Current Store : [0x80000f78] : sd t5, 312(ra) -- Store: [0x80003558]:0x0002FFFC00010800




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000fa4]:KSUBH t6, t5, t4
	-[0x80000fa8]:sd t6, 320(ra)
Current Store : [0x80000fac] : sd t5, 328(ra) -- Store: [0x80003568]:0xFF7FFFF810000200




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000fe0]:KSUBH t6, t5, t4
	-[0x80000fe4]:sd t6, 336(ra)
Current Store : [0x80000fe8] : sd t5, 344(ra) -- Store: [0x80003578]:0x10000009FFF70010




Last Coverpoint : ['rs1_h3_val == -33', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000101c]:KSUBH t6, t5, t4
	-[0x80001020]:sd t6, 352(ra)
Current Store : [0x80001024] : sd t5, 360(ra) -- Store: [0x80003588]:0xFFDFFFF800400008




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == -4097', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001058]:KSUBH t6, t5, t4
	-[0x8000105c]:sd t6, 368(ra)
Current Store : [0x80001060] : sd t5, 376(ra) -- Store: [0x80003598]:0xFFDF000320000001




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x8000108c]:KSUBH t6, t5, t4
	-[0x80001090]:sd t6, 384(ra)
Current Store : [0x80001094] : sd t5, 392(ra) -- Store: [0x800035a8]:0x0000AAAABFFFFFFF




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x800010c4]:KSUBH t6, t5, t4
	-[0x800010c8]:sd t6, 400(ra)
Current Store : [0x800010cc] : sd t5, 408(ra) -- Store: [0x800035b8]:0x0040EFFFFFEFBFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == -65', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x800010f4]:KSUBH t6, t5, t4
	-[0x800010f8]:sd t6, 416(ra)
Current Store : [0x800010fc] : sd t5, 424(ra) -- Store: [0x800035c8]:0x0400FFFB01001000




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == 64', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001138]:KSUBH t6, t5, t4
	-[0x8000113c]:sd t6, 432(ra)
Current Store : [0x80001140] : sd t5, 440(ra) -- Store: [0x800035d8]:0x7FFFC0005555FBFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == 2', 'rs1_h3_val == 128']
Last Code Sequence : 
	-[0x80001174]:KSUBH t6, t5, t4
	-[0x80001178]:sd t6, 448(ra)
Current Store : [0x8000117c] : sd t5, 456(ra) -- Store: [0x800035e8]:0x00800004FFDFFFBF




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h2_val == -17']
Last Code Sequence : 
	-[0x800011b0]:KSUBH t6, t5, t4
	-[0x800011b4]:sd t6, 464(ra)
Current Store : [0x800011b8] : sd t5, 472(ra) -- Store: [0x800035f8]:0xBFFFFFEFFFFA0100




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800011ec]:KSUBH t6, t5, t4
	-[0x800011f0]:sd t6, 480(ra)
Current Store : [0x800011f4] : sd t5, 488(ra) -- Store: [0x80003608]:0xFFF80010FFF60003




Last Coverpoint : ['rs2_h1_val == 21845', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000122c]:KSUBH t6, t5, t4
	-[0x80001230]:sd t6, 496(ra)
Current Store : [0x80001234] : sd t5, 504(ra) -- Store: [0x80003618]:0xFFF900000005FFFE




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80001264]:KSUBH t6, t5, t4
	-[0x80001268]:sd t6, 512(ra)
Current Store : [0x8000126c] : sd t5, 520(ra) -- Store: [0x80003628]:0xFFF7BFFFFFF7FEFF




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80001298]:KSUBH t6, t5, t4
	-[0x8000129c]:sd t6, 528(ra)
Current Store : [0x800012a0] : sd t5, 536(ra) -- Store: [0x80003638]:0x3FFF00040010FFF6




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h0_val == 4096', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x800012cc]:KSUBH t6, t5, t4
	-[0x800012d0]:sd t6, 544(ra)
Current Store : [0x800012d4] : sd t5, 552(ra) -- Store: [0x80003648]:0x0005F7FF7FFF0000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80001308]:KSUBH t6, t5, t4
	-[0x8000130c]:sd t6, 560(ra)
Current Store : [0x80001310] : sd t5, 568(ra) -- Store: [0x80003658]:0xDFFF010000010001




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001340]:KSUBH t6, t5, t4
	-[0x80001344]:sd t6, 576(ra)
Current Store : [0x80001348] : sd t5, 584(ra) -- Store: [0x80003668]:0x0040FFF9FFFF0002




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000137c]:KSUBH t6, t5, t4
	-[0x80001380]:sd t6, 592(ra)
Current Store : [0x80001384] : sd t5, 600(ra) -- Store: [0x80003678]:0xC000FFFC0004FFFC




Last Coverpoint : ['rs1_h3_val == -21846', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x800013b8]:KSUBH t6, t5, t4
	-[0x800013bc]:sd t6, 608(ra)
Current Store : [0x800013c0] : sd t5, 616(ra) -- Store: [0x80003688]:0xAAAAFF7F80000100




Last Coverpoint : ['rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x800013ec]:KSUBH t6, t5, t4
	-[0x800013f0]:sd t6, 624(ra)
Current Store : [0x800013f4] : sd t5, 632(ra) -- Store: [0x80003698]:0x5555BFFFFFFCEFFF




Last Coverpoint : ['rs1_h3_val == -513', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001428]:KSUBH t6, t5, t4
	-[0x8000142c]:sd t6, 640(ra)
Current Store : [0x80001430] : sd t5, 648(ra) -- Store: [0x800036a8]:0xFDFFFBFFFEFFFFBF




Last Coverpoint : ['rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000145c]:KSUBH t6, t5, t4
	-[0x80001460]:sd t6, 656(ra)
Current Store : [0x80001464] : sd t5, 664(ra) -- Store: [0x800036b8]:0xFEFF000200000080




Last Coverpoint : ['rs1_h3_val == -5']
Last Code Sequence : 
	-[0x80001498]:KSUBH t6, t5, t4
	-[0x8000149c]:sd t6, 672(ra)
Current Store : [0x800014a0] : sd t5, 680(ra) -- Store: [0x800036c8]:0xFFFBFFEFFFF70004




Last Coverpoint : ['rs2_h1_val == -257', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x800014cc]:KSUBH t6, t5, t4
	-[0x800014d0]:sd t6, 688(ra)
Current Store : [0x800014d4] : sd t5, 696(ra) -- Store: [0x800036d8]:0xFFFE000180000001




Last Coverpoint : ['rs1_h3_val == 8192', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x80001508]:KSUBH t6, t5, t4
	-[0x8000150c]:sd t6, 704(ra)
Current Store : [0x80001510] : sd t5, 712(ra) -- Store: [0x800036e8]:0x200000080001AAAA




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h1_val == 2048', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x8000153c]:KSUBH t6, t5, t4
	-[0x80001540]:sd t6, 720(ra)
Current Store : [0x80001544] : sd t5, 728(ra) -- Store: [0x800036f8]:0x0100FFF908000080




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h3_val == 32', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001570]:KSUBH t6, t5, t4
	-[0x80001574]:sd t6, 736(ra)
Current Store : [0x80001578] : sd t5, 744(ra) -- Store: [0x80003708]:0x002000070008F7FF




Last Coverpoint : ['opcode : ksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == -257', 'rs2_h0_val == 16384', 'rs1_h3_val == 16', 'rs1_h1_val == 4096', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800015a0]:KSUBH t6, t5, t4
	-[0x800015a4]:sd t6, 752(ra)
Current Store : [0x800015a8] : sd t5, 760(ra) -- Store: [0x80003718]:0x0010000310000040




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800015e0]:KSUBH t6, t5, t4
	-[0x800015e4]:sd t6, 768(ra)
Current Store : [0x800015e8] : sd t5, 776(ra) -- Store: [0x80003728]:0xFDFFFF7FAAAAFDFF




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h3_val == 8', 'rs1_h2_val == 21845', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001614]:KSUBH t6, t5, t4
	-[0x80001618]:sd t6, 784(ra)
Current Store : [0x8000161c] : sd t5, 792(ra) -- Store: [0x80003738]:0x00085555FBFF1000




Last Coverpoint : ['rs1_h3_val == 1']
Last Code Sequence : 
	-[0x8000164c]:KSUBH t6, t5, t4
	-[0x80001650]:sd t6, 800(ra)
Current Store : [0x80001654] : sd t5, 808(ra) -- Store: [0x80003748]:0x0001EFFFFDFF3FFF




Last Coverpoint : ['rs2_h2_val == -9']
Last Code Sequence : 
	-[0x80001680]:KSUBH t6, t5, t4
	-[0x80001684]:sd t6, 816(ra)
Current Store : [0x80001688] : sd t5, 824(ra) -- Store: [0x80003758]:0x00020040FFF60020




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h3_val == -1']
Last Code Sequence : 
	-[0x800016b8]:KSUBH t6, t5, t4
	-[0x800016bc]:sd t6, 832(ra)
Current Store : [0x800016c0] : sd t5, 840(ra) -- Store: [0x80003768]:0xFFFF0800AAAA0010




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x800016f4]:KSUBH t6, t5, t4
	-[0x800016f8]:sd t6, 848(ra)
Current Store : [0x800016fc] : sd t5, 856(ra) -- Store: [0x80003778]:0x1000FEFF08000008




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x8000172c]:KSUBH t6, t5, t4
	-[0x80001730]:sd t6, 864(ra)
Current Store : [0x80001734] : sd t5, 872(ra) -- Store: [0x80003788]:0x3FFF0000FFF6FFFD




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001760]:KSUBH t6, t5, t4
	-[0x80001764]:sd t6, 880(ra)
Current Store : [0x80001768] : sd t5, 888(ra) -- Store: [0x80003798]:0xFFEF4000AAAAFFF6




Last Coverpoint : ['rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x800017a4]:KSUBH t6, t5, t4
	-[0x800017a8]:sd t6, 896(ra)
Current Store : [0x800017ac] : sd t5, 904(ra) -- Store: [0x800037a8]:0x400010000800FFFF




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x800017e0]:KSUBH t6, t5, t4
	-[0x800017e4]:sd t6, 912(ra)
Current Store : [0x800017e8] : sd t5, 920(ra) -- Store: [0x800037b8]:0xFFFBFFF60020FFF7




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000181c]:KSUBH t6, t5, t4
	-[0x80001820]:sd t6, 928(ra)
Current Store : [0x80001824] : sd t5, 936(ra) -- Store: [0x800037c8]:0x1000F7FFF7FFFFFB




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001850]:KSUBH t6, t5, t4
	-[0x80001854]:sd t6, 944(ra)
Current Store : [0x80001858] : sd t5, 952(ra) -- Store: [0x800037d8]:0x000604007FFFFF7F




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001888]:KSUBH t6, t5, t4
	-[0x8000188c]:sd t6, 960(ra)
Current Store : [0x80001890] : sd t5, 968(ra) -- Store: [0x800037e8]:0x02000080FFBF2000




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x800018c4]:KSUBH t6, t5, t4
	-[0x800018c8]:sd t6, 976(ra)
Current Store : [0x800018cc] : sd t5, 984(ra) -- Store: [0x800037f8]:0x0100FFFF0003FFF9




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800018f4]:KSUBH t6, t5, t4
	-[0x800018f8]:sd t6, 992(ra)
Current Store : [0x800018fc] : sd t5, 1000(ra) -- Store: [0x80003808]:0xFFBF7FFF0009FFF6




Last Coverpoint : ['rs1_h2_val == 32']
Last Code Sequence : 
	-[0x8000192c]:KSUBH t6, t5, t4
	-[0x80001930]:sd t6, 1008(ra)
Current Store : [0x80001934] : sd t5, 1016(ra) -- Store: [0x80003818]:0x0009002000001000




Last Coverpoint : ['rs2_h2_val == 4']
Last Code Sequence : 
	-[0x80001968]:KSUBH t6, t5, t4
	-[0x8000196c]:sd t6, 1024(ra)
Current Store : [0x80001970] : sd t5, 1032(ra) -- Store: [0x80003828]:0x8000FEFFFFBF0007




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x800019a4]:KSUBH t6, t5, t4
	-[0x800019a8]:sd t6, 1040(ra)
Current Store : [0x800019ac] : sd t5, 1048(ra) -- Store: [0x80003838]:0x3FFFFFF80002FFFA




Last Coverpoint : ['opcode : ksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 0', 'rs2_h1_val == 1024', 'rs2_h0_val == -3', 'rs1_h3_val == -1025', 'rs1_h2_val == -2', 'rs1_h1_val == 32', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800019e0]:KSUBH t6, t5, t4
	-[0x800019e4]:sd t6, 1056(ra)
Current Store : [0x800019e8] : sd t5, 1064(ra) -- Store: [0x80003848]:0xFBFFFFFE0020FFFB




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x80001a0c]:KSUBH t6, t5, t4
	-[0x80001a10]:sd t6, 1072(ra)
Current Store : [0x80001a14] : sd t5, 1080(ra) -- Store: [0x80003858]:0x0000000900088000




Last Coverpoint : ['opcode : ksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -129', 'rs2_h2_val == 32767', 'rs2_h1_val == 4', 'rs1_h3_val == 16384', 'rs1_h2_val == 2', 'rs1_h1_val == -4097', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80001a4c]:KSUBH t6, t5, t4
	-[0x80001a50]:sd t6, 1088(ra)
Current Store : [0x80001a54] : sd t5, 1096(ra) -- Store: [0x80003868]:0x40000002EFFFEFFF




Last Coverpoint : ['rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001a88]:KSUBH t6, t5, t4
	-[0x80001a8c]:sd t6, 1104(ra)
Current Store : [0x80001a90] : sd t5, 1112(ra) -- Store: [0x80003878]:0x40002000FFFCDFFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                               coverpoints                                                                                                                                                                                                                                                               |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ksubh<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 16<br> - rs2_h1_val == 512<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 16<br> - rs1_h1_val == 512<br> - rs1_h0_val == 32767<br> |[0x800003c4]:KSUBH a7, t5, t5<br> [0x800003c8]:sd a7, 0(t1)<br>      |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -2<br> - rs2_h1_val == 16<br> - rs2_h0_val == -1<br> - rs1_h2_val == -2<br> - rs1_h1_val == 16<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                  |[0x80000408]:KSUBH t6, t6, t6<br> [0x8000040c]:sd t6, 16(t1)<br>     |
|   3|[0x80003230]<br>0x0000000000007FFF|- rs1 : x1<br> - rs2 : x15<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -17<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 64<br>                                              |[0x8000043c]:KSUBH a4, ra, a5<br> [0x80000440]:sd a4, 32(t1)<br>     |
|   4|[0x80003240]<br>0x0000000000007FFF|- rs1 : x24<br> - rs2 : x10<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs2_h3_val == -3<br> - rs2_h2_val == -33<br> - rs2_h1_val == -65<br> - rs2_h0_val == 512<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                            |[0x80000478]:KSUBH s8, s8, a0<br> [0x8000047c]:sd s8, 48(t1)<br>     |
|   5|[0x80003250]<br>0x0000000000007FFF|- rs1 : x7<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 0<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                    |[0x800004b8]:KSUBH s4, t2, s4<br> [0x800004bc]:sd s4, 64(t1)<br>     |
|   6|[0x80003260]<br>0x0000000000007FFF|- rs1 : x28<br> - rs2 : x4<br> - rd : x9<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 2<br> - rs1_h2_val == 32767<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                              |[0x800004f4]:KSUBH s1, t3, tp<br> [0x800004f8]:sd s1, 80(t1)<br>     |
|   7|[0x80003270]<br>0x0000000000007FFF|- rs1 : x20<br> - rs2 : x29<br> - rd : x1<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 1<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                             |[0x80000538]:KSUBH ra, s4, t4<br> [0x8000053c]:sd ra, 96(t1)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFE004|- rs1 : x4<br> - rs2 : x24<br> - rd : x2<br> - rs2_h2_val == -3<br> - rs2_h1_val == 0<br> - rs2_h0_val == -5<br> - rs1_h1_val == 0<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000574]:KSUBH sp, tp, s8<br> [0x80000578]:sd sp, 112(t1)<br>    |
|   9|[0x80003290]<br>0xFFFFFFFFFFFF8000|- rs1 : x26<br> - rs2 : x2<br> - rd : x21<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -3<br> - rs1_h1_val == -129<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                               |[0x800005b4]:KSUBH s5, s10, sp<br> [0x800005b8]:sd s5, 128(t1)<br>   |
|  10|[0x800032a0]<br>0x0000000000007FFF|- rs1 : x29<br> - rs2 : x27<br> - rd : x12<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005f0]:KSUBH a2, t4, s11<br> [0x800005f4]:sd a2, 144(t1)<br>   |
|  11|[0x800032b0]<br>0x0000000000007FFF|- rs1 : x9<br> - rs2 : x13<br> - rd : x25<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 0<br> - rs2_h1_val == -5<br> - rs2_h0_val == 4<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 2<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x80000628]:KSUBH s9, s1, a3<br> [0x8000062c]:sd s9, 160(t1)<br>    |
|  12|[0x800032c0]<br>0x0000000000007FFF|- rs1 : x27<br> - rs2 : x9<br> - rd : x5<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -129<br> - rs1_h3_val == -3<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000658]:KSUBH t0, s11, s1<br> [0x8000065c]:sd t0, 176(t1)<br>   |
|  13|[0x800032d0]<br>0xFFFFFFFFFFFF8000|- rs1 : x23<br> - rs2 : x3<br> - rd : x15<br> - rs2_h3_val == -8193<br> - rs2_h0_val == -513<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 1<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000694]:KSUBH a5, s7, gp<br> [0x80000698]:sd a5, 192(t1)<br>    |
|  14|[0x800032e0]<br>0x0000000000007FFF|- rs1 : x13<br> - rs2 : x22<br> - rd : x3<br> - rs2_h3_val == -2049<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800006cc]:KSUBH gp, a3, s6<br> [0x800006d0]:sd gp, 208(t1)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFF8000|- rs1 : x5<br> - rs2 : x26<br> - rd : x22<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -9<br> - rs2_h0_val == 128<br> - rs1_h3_val == 1024<br> - rs1_h1_val == -33<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                              |[0x80000708]:KSUBH s6, t0, s10<br> [0x8000070c]:sd s6, 224(t1)<br>   |
|  16|[0x80003300]<br>0x0000000000007FFF|- rs1 : x25<br> - rs2 : x12<br> - rd : x19<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -513<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 1024<br> - rs1_h2_val == -9<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                      |[0x80000748]:KSUBH s3, s9, a2<br> [0x8000074c]:sd s3, 240(t1)<br>    |
|  17|[0x80003310]<br>0x0000000000007FFF|- rs1 : x15<br> - rs2 : x28<br> - rd : x7<br> - rs2_h3_val == -257<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 1<br> - rs1_h3_val == -65<br> - rs1_h2_val == -33<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000784]:KSUBH t2, a5, t3<br> [0x80000788]:sd t2, 256(t1)<br>    |
|  18|[0x80003320]<br>0xFFFFFFFFFFFF8000|- rs1 : x21<br> - rs2 : x0<br> - rd : x8<br> - rs2_h3_val == 0<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800007c4]:KSUBH fp, s5, zero<br> [0x800007c8]:sd fp, 272(t1)<br>  |
|  19|[0x80003330]<br>0x0000000000007FFF|- rs1 : x6<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == -65<br> - rs2_h2_val == -513<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000800]:KSUBH a1, t1, s9<br> [0x80000804]:sd a1, 0(s1)<br>      |
|  20|[0x80003340]<br>0xFFFFFFFFFFFF8000|- rs1 : x17<br> - rs2 : x5<br> - rd : x6<br> - rs2_h3_val == -33<br> - rs2_h2_val == -257<br> - rs2_h1_val == 256<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000838]:KSUBH t1, a7, t0<br> [0x8000083c]:sd t1, 16(s1)<br>     |
|  21|[0x80003350]<br>0x0000000000007FFF|- rs1 : x12<br> - rs2 : x16<br> - rd : x27<br> - rs2_h3_val == -17<br> - rs1_h2_val == -8193<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000874]:KSUBH s11, a2, a6<br> [0x80000878]:sd s11, 32(s1)<br>   |
|  22|[0x80003360]<br>0x0000000000007FFF|- rs1 : x3<br> - rs2 : x17<br> - rd : x18<br> - rs2_h3_val == -9<br> - rs2_h2_val == 16384<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                               |[0x800008a4]:KSUBH s2, gp, a7<br> [0x800008a8]:sd s2, 48(s1)<br>     |
|  23|[0x80003370]<br>0x0000000000007FFF|- rs1 : x18<br> - rs2 : x7<br> - rd : x26<br> - rs2_h3_val == -5<br> - rs2_h1_val == -513<br> - rs1_h3_val == 2048<br> - rs1_h2_val == -1025<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x800008dc]:KSUBH s10, s2, t2<br> [0x800008e0]:sd s10, 64(s1)<br>   |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFEFF9|- rs1 : x19<br> - rs2 : x11<br> - rd : x16<br> - rs2_h3_val == -2<br> - rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000910]:KSUBH a6, s3, a1<br> [0x80000914]:sd a6, 80(s1)<br>     |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x0<br> - rs2_h3_val == 16384<br> - rs2_h0_val == -33<br> - rs1_h3_val == -17<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000944]:KSUBH zero, s6, s2<br> [0x80000948]:sd zero, 96(s1)<br> |
|  26|[0x800033a0]<br>0x0000000000007FFF|- rs1 : x8<br> - rs2 : x23<br> - rd : x29<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -1<br> - rs1_h3_val == -32768<br> - rs1_h1_val == 128<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000980]:KSUBH t4, fp, s7<br> [0x80000984]:sd t4, 112(s1)<br>    |
|  27|[0x800033b0]<br>0x0000000000007FFF|- rs1 : x16<br> - rs2 : x14<br> - rd : x13<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -17<br> - rs1_h3_val == 64<br> - rs1_h1_val == 1<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                           |[0x800009bc]:KSUBH a3, a6, a4<br> [0x800009c0]:sd a3, 128(s1)<br>    |
|  28|[0x800033c0]<br>0x0000000000007FFF|- rs1 : x11<br> - rs2 : x19<br> - rd : x30<br> - rs2_h3_val == 2048<br> - rs2_h0_val == -2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800009f8]:KSUBH t5, a1, s3<br> [0x800009fc]:sd t5, 144(s1)<br>    |
|  29|[0x800033d0]<br>0xFFFFFFFFFFFF8000|- rs1 : x14<br> - rs2 : x6<br> - rd : x28<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a34]:KSUBH t3, a4, t1<br> [0x80000a38]:sd t3, 160(s1)<br>    |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFF8000|- rs1 : x10<br> - rs2 : x8<br> - rd : x23<br> - rs2_h3_val == 512<br> - rs2_h2_val == 8<br> - rs1_h3_val == -9<br> - rs1_h2_val == 512<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000a64]:KSUBH s7, a0, fp<br> [0x80000a68]:sd s7, 176(s1)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFF8000|- rs1 : x0<br> - rs2 : x21<br> - rd : x4<br> - rs2_h3_val == 256<br> - rs2_h1_val == 32<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                   |[0x80000aa0]:KSUBH tp, zero, s5<br> [0x80000aa4]:sd tp, 192(s1)<br>  |
|  32|[0x80003400]<br>0x0000000000007FFF|- rs1 : x2<br> - rs2 : x1<br> - rd : x10<br> - rs2_h3_val == 128<br> - rs2_h2_val == 64<br> - rs2_h0_val == -16385<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ad8]:KSUBH a0, sp, ra<br> [0x80000adc]:sd a0, 208(s1)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 64<br> - rs2_h1_val == -1<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -513<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b0c]:KSUBH t6, t5, t4<br> [0x80000b10]:sd t6, 224(s1)<br>    |
|  34|[0x80003420]<br>0x0000000000007FFF|- rs2_h3_val == 32<br> - rs2_h2_val == 1024<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 512<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b50]:KSUBH t6, t5, t4<br> [0x80000b54]:sd t6, 0(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 8<br> - rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000b8c]:KSUBH t6, t5, t4<br> [0x80000b90]:sd t6, 16(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFFFF8000|- rs1_h1_val == -2<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000bc8]:KSUBH t6, t5, t4<br> [0x80000bcc]:sd t6, 32(ra)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 4<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c04]:KSUBH t6, t5, t4<br> [0x80000c08]:sd t6, 48(ra)<br>     |
|  38|[0x80003460]<br>0x0000000000007FFF|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c38]:KSUBH t6, t5, t4<br> [0x80000c3c]:sd t6, 64(ra)<br>     |
|  39|[0x80003470]<br>0x0000000000007FFF|- rs2_h2_val == -5<br> - rs2_h0_val == 64<br> - rs1_h3_val == 2<br> - rs1_h2_val == -65<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c64]:KSUBH t6, t5, t4<br> [0x80000c68]:sd t6, 80(ra)<br>     |
|  40|[0x80003480]<br>0x0000000000007FFF|- rs2_h3_val == 2<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000c90]:KSUBH t6, t5, t4<br> [0x80000c94]:sd t6, 96(ra)<br>     |
|  41|[0x80003490]<br>0x0000000000007FFF|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ccc]:KSUBH t6, t5, t4<br> [0x80000cd0]:sd t6, 112(ra)<br>    |
|  42|[0x800034a0]<br>0x0000000000007FFF|- rs2_h3_val == -129<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000cfc]:KSUBH t6, t5, t4<br> [0x80000d00]:sd t6, 128(ra)<br>    |
|  43|[0x800034b0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 32<br> - rs2_h1_val == 4<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d38]:KSUBH t6, t5, t4<br> [0x80000d3c]:sd t6, 144(ra)<br>    |
|  44|[0x800034c0]<br>0x0000000000007FFF|- rs1_h2_val == -16385<br> - rs1_h1_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000d74]:KSUBH t6, t5, t4<br> [0x80000d78]:sd t6, 160(ra)<br>    |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == -8193<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dac]:KSUBH t6, t5, t4<br> [0x80000db0]:sd t6, 176(ra)<br>    |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000de4]:KSUBH t6, t5, t4<br> [0x80000de8]:sd t6, 192(ra)<br>    |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 21845<br> - rs2_h1_val == 4096<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e20]:KSUBH t6, t5, t4<br> [0x80000e24]:sd t6, 208(ra)<br>    |
|  48|[0x80003500]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 4<br> - rs1_h1_val == -65<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e54]:KSUBH t6, t5, t4<br> [0x80000e58]:sd t6, 224(ra)<br>    |
|  49|[0x80003510]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == -32768<br> - rs1_h1_val == -17<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e8c]:KSUBH t6, t5, t4<br> [0x80000e90]:sd t6, 240(ra)<br>    |
|  50|[0x80003520]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 4<br> - rs2_h1_val == 8<br> - rs2_h0_val == 16<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -513<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ec8]:KSUBH t6, t5, t4<br> [0x80000ecc]:sd t6, 256(ra)<br>    |
|  51|[0x80003530]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -65<br> - rs2_h0_val == 8<br> - rs1_h3_val == -129<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000efc]:KSUBH t6, t5, t4<br> [0x80000f00]:sd t6, 272(ra)<br>    |
|  52|[0x80003540]<br>0x0000000000007FFF|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f34]:KSUBH t6, t5, t4<br> [0x80000f38]:sd t6, 288(ra)<br>    |
|  53|[0x80003550]<br>0x0000000000000804|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000f70]:KSUBH t6, t5, t4<br> [0x80000f74]:sd t6, 304(ra)<br>    |
|  54|[0x80003560]<br>0x0000000000007FFF|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000fa4]:KSUBH t6, t5, t4<br> [0x80000fa8]:sd t6, 320(ra)<br>    |
|  55|[0x80003570]<br>0xFFFFFFFFFFFF8000|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000fe0]:KSUBH t6, t5, t4<br> [0x80000fe4]:sd t6, 336(ra)<br>    |
|  56|[0x80003580]<br>0x0000000000007FFF|- rs1_h3_val == -33<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000101c]:KSUBH t6, t5, t4<br> [0x80001020]:sd t6, 352(ra)<br>    |
|  57|[0x80003590]<br>0x0000000000007FFF|- rs2_h1_val == -2049<br> - rs2_h0_val == -4097<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001058]:KSUBH t6, t5, t4<br> [0x8000105c]:sd t6, 368(ra)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000108c]:KSUBH t6, t5, t4<br> [0x80001090]:sd t6, 384(ra)<br>    |
|  59|[0x800035b0]<br>0x0000000000007FFF|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800010c4]:KSUBH t6, t5, t4<br> [0x800010c8]:sd t6, 400(ra)<br>    |
|  60|[0x800035c0]<br>0x0000000000007FFF|- rs2_h3_val == -1<br> - rs2_h0_val == -65<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800010f4]:KSUBH t6, t5, t4<br> [0x800010f8]:sd t6, 416(ra)<br>    |
|  61|[0x800035d0]<br>0x0000000000007FFF|- rs2_h2_val == -16385<br> - rs2_h1_val == 64<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001138]:KSUBH t6, t5, t4<br> [0x8000113c]:sd t6, 432(ra)<br>    |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -2049<br> - rs2_h1_val == 2<br> - rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001174]:KSUBH t6, t5, t4<br> [0x80001178]:sd t6, 448(ra)<br>    |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 21845<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011b0]:KSUBH t6, t5, t4<br> [0x800011b4]:sd t6, 464(ra)<br>    |
|  64|[0x80003600]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011ec]:KSUBH t6, t5, t4<br> [0x800011f0]:sd t6, 480(ra)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == 21845<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000122c]:KSUBH t6, t5, t4<br> [0x80001230]:sd t6, 496(ra)<br>    |
|  66|[0x80003620]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == 128<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001264]:KSUBH t6, t5, t4<br> [0x80001268]:sd t6, 512(ra)<br>    |
|  67|[0x80003630]<br>0x0000000000007FFF|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001298]:KSUBH t6, t5, t4<br> [0x8000129c]:sd t6, 528(ra)<br>    |
|  68|[0x80003640]<br>0x0000000000007FFF|- rs2_h2_val == 16<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012cc]:KSUBH t6, t5, t4<br> [0x800012d0]:sd t6, 544(ra)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001308]:KSUBH t6, t5, t4<br> [0x8000130c]:sd t6, 560(ra)<br>    |
|  70|[0x80003660]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001340]:KSUBH t6, t5, t4<br> [0x80001344]:sd t6, 576(ra)<br>    |
|  71|[0x80003670]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000137c]:KSUBH t6, t5, t4<br> [0x80001380]:sd t6, 592(ra)<br>    |
|  72|[0x80003680]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == -21846<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013b8]:KSUBH t6, t5, t4<br> [0x800013bc]:sd t6, 608(ra)<br>    |
|  73|[0x80003690]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013ec]:KSUBH t6, t5, t4<br> [0x800013f0]:sd t6, 624(ra)<br>    |
|  74|[0x800036a0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == -513<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001428]:KSUBH t6, t5, t4<br> [0x8000142c]:sd t6, 640(ra)<br>    |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000145c]:KSUBH t6, t5, t4<br> [0x80001460]:sd t6, 656(ra)<br>    |
|  76|[0x800036c0]<br>0x0000000000007FFF|- rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001498]:KSUBH t6, t5, t4<br> [0x8000149c]:sd t6, 672(ra)<br>    |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == -257<br> - rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800014cc]:KSUBH t6, t5, t4<br> [0x800014d0]:sd t6, 688(ra)<br>    |
|  78|[0x800036e0]<br>0x0000000000007FFF|- rs1_h3_val == 8192<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001508]:KSUBH t6, t5, t4<br> [0x8000150c]:sd t6, 704(ra)<br>    |
|  79|[0x800036f0]<br>0x000000000000007E|- rs2_h2_val == 256<br> - rs2_h1_val == 2048<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000153c]:KSUBH t6, t5, t4<br> [0x80001540]:sd t6, 720(ra)<br>    |
|  80|[0x80003700]<br>0x0000000000007FFF|- rs2_h2_val == -17<br> - rs1_h3_val == 32<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001570]:KSUBH t6, t5, t4<br> [0x80001574]:sd t6, 736(ra)<br>    |
|  81|[0x80003720]<br>0x0000000000007FFF|- rs2_h2_val == -129<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800015e0]:KSUBH t6, t5, t4<br> [0x800015e4]:sd t6, 768(ra)<br>    |
|  82|[0x80003730]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == 16384<br> - rs1_h3_val == 8<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001614]:KSUBH t6, t5, t4<br> [0x80001618]:sd t6, 784(ra)<br>    |
|  83|[0x80003740]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000164c]:KSUBH t6, t5, t4<br> [0x80001650]:sd t6, 800(ra)<br>    |
|  84|[0x80003750]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001680]:KSUBH t6, t5, t4<br> [0x80001684]:sd t6, 816(ra)<br>    |
|  85|[0x80003760]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 512<br> - rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800016b8]:KSUBH t6, t5, t4<br> [0x800016bc]:sd t6, 832(ra)<br>    |
|  86|[0x80003770]<br>0x0000000000007FFF|- rs2_h1_val == -3<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016f4]:KSUBH t6, t5, t4<br> [0x800016f8]:sd t6, 848(ra)<br>    |
|  87|[0x80003780]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000172c]:KSUBH t6, t5, t4<br> [0x80001730]:sd t6, 864(ra)<br>    |
|  88|[0x80003790]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == -4097<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001760]:KSUBH t6, t5, t4<br> [0x80001764]:sd t6, 880(ra)<br>    |
|  89|[0x800037a0]<br>0x0000000000007FFF|- rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800017a4]:KSUBH t6, t5, t4<br> [0x800017a8]:sd t6, 896(ra)<br>    |
|  90|[0x800037b0]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800017e0]:KSUBH t6, t5, t4<br> [0x800017e4]:sd t6, 912(ra)<br>    |
|  91|[0x800037c0]<br>0x0000000000007FFF|- rs2_h1_val == -16385<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000181c]:KSUBH t6, t5, t4<br> [0x80001820]:sd t6, 928(ra)<br>    |
|  92|[0x800037d0]<br>0x0000000000007FFF|- rs2_h2_val == 2<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001850]:KSUBH t6, t5, t4<br> [0x80001854]:sd t6, 944(ra)<br>    |
|  93|[0x800037e0]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001888]:KSUBH t6, t5, t4<br> [0x8000188c]:sd t6, 960(ra)<br>    |
|  94|[0x800037f0]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018c4]:KSUBH t6, t5, t4<br> [0x800018c8]:sd t6, 976(ra)<br>    |
|  95|[0x80003800]<br>0x0000000000007FFF|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018f4]:KSUBH t6, t5, t4<br> [0x800018f8]:sd t6, 992(ra)<br>    |
|  96|[0x80003810]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000192c]:KSUBH t6, t5, t4<br> [0x80001930]:sd t6, 1008(ra)<br>   |
|  97|[0x80003820]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001968]:KSUBH t6, t5, t4<br> [0x8000196c]:sd t6, 1024(ra)<br>   |
|  98|[0x80003830]<br>0x0000000000007FFF|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800019a4]:KSUBH t6, t5, t4<br> [0x800019a8]:sd t6, 1040(ra)<br>   |
|  99|[0x80003850]<br>0xFFFFFFFFFFFF8000|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a0c]:KSUBH t6, t5, t4<br> [0x80001a10]:sd t6, 1072(ra)<br>   |
| 100|[0x80003870]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001a88]:KSUBH t6, t5, t4<br> [0x80001a8c]:sd t6, 1104(ra)<br>   |
