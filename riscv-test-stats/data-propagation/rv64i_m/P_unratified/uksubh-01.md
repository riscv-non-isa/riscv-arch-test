
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b10')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | uksubh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uksubh-01.S    |
| Total Number of coverpoints| 404     |
| Total Coverpoints Hit     | 398      |
| Total Signature Updates   | 212      |
| STAT1                     | 103      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001940]:UKSUBH t6, t5, t4
      [0x80001944]:sd t6, 1280(t2)
 -- Signature Address: 0x80003820 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 8
      - rs2_h2_val == 32768
      - rs2_h1_val == 0
      - rs1_h2_val == 65534
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a50]:UKSUBH t6, t5, t4
      [0x80001a54]:sd t6, 1360(t2)
 -- Signature Address: 0x80003870 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h3_val == 32767
      - rs2_h2_val == 8
      - rs2_h1_val == 1024
      - rs2_h0_val == 65531
      - rs1_h3_val == 43690
      - rs1_h1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ac8]:UKSUBH t6, t5, t4
      [0x80001acc]:sd t6, 1392(t2)
 -- Signature Address: 0x80003890 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 61439
      - rs2_h2_val == 1024
      - rs2_h1_val == 65471
      - rs2_h0_val == 65471
      - rs1_h2_val == 61439
      - rs1_h0_val == 32767






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksubh', 'rs1 : x26', 'rs2 : x26', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 8', 'rs2_h1_val == 1024', 'rs2_h0_val == 65531', 'rs1_h3_val == 32767', 'rs1_h2_val == 8', 'rs1_h1_val == 1024', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800003d0]:UKSUBH a0, s10, s10
	-[0x800003d4]:sd a0, 0(gp)
Current Store : [0x800003d8] : sd s10, 8(gp) -- Store: [0x80003218]:0x7FFF00080400FFFB




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x13', 'rs1 == rs2 == rd', 'rs2_h3_val == 64511', 'rs1_h3_val == 64511']
Last Code Sequence : 
	-[0x8000040c]:UKSUBH a3, a3, a3
	-[0x80000410]:sd a3, 16(gp)
Current Store : [0x80000414] : sd a3, 24(gp) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 1', 'rs2_h2_val == 16384', 'rs2_h1_val == 8192', 'rs2_h0_val == 49151', 'rs1_h3_val == 65534', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000444]:UKSUBH s1, t5, t2
	-[0x80000448]:sd s1, 32(gp)
Current Store : [0x8000044c] : sd t5, 40(gp) -- Store: [0x80003238]:0xFFFE40000012000F




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x28', 'rs1 == rd != rs2', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h1_val == 65471', 'rs2_h0_val == 65519', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x80000478]:UKSUBH t3, t3, s9
	-[0x8000047c]:sd t3, 48(gp)
Current Store : [0x80000480] : sd t3, 56(gp) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rd : x19', 'rs2 == rd != rs1', 'rs2_h2_val == 65527', 'rs2_h1_val == 65407', 'rs2_h0_val == 63487', 'rs1_h3_val == 128', 'rs1_h1_val == 65534', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x800004b4]:UKSUBH s3, s4, s3
	-[0x800004b8]:sd s3, 64(gp)
Current Store : [0x800004bc] : sd s4, 72(gp) -- Store: [0x80003258]:0x0080000BFFFEF7FF




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rd : x18', 'rs2_h3_val == 43690', 'rs2_h2_val == 16', 'rs2_h1_val == 57343', 'rs1_h3_val == 1024', 'rs1_h2_val == 32767', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800004e8]:UKSUBH s2, s6, a2
	-[0x800004ec]:sd s2, 80(gp)
Current Store : [0x800004f0] : sd s6, 88(gp) -- Store: [0x80003268]:0x04007FFF40000012




Last Coverpoint : ['rs1 : x14', 'rs2 : x18', 'rd : x21', 'rs2_h3_val == 21845', 'rs2_h2_val == 0', 'rs2_h1_val == 49151', 'rs2_h0_val == 1024', 'rs1_h3_val == 0', 'rs1_h2_val == 8192', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000524]:UKSUBH s5, a4, s2
	-[0x80000528]:sd s5, 96(gp)
Current Store : [0x8000052c] : sd a4, 104(gp) -- Store: [0x80003278]:0x00002000000C0020




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x22', 'rs2_h3_val == 49151', 'rs2_h2_val == 64', 'rs2_h0_val == 32', 'rs1_h3_val == 32', 'rs1_h2_val == 65527', 'rs1_h1_val == 64511', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000560]:UKSUBH s6, sp, s1
	-[0x80000564]:sd s6, 112(gp)
Current Store : [0x80000568] : sd sp, 120(gp) -- Store: [0x80003288]:0x0020FFF7FBFF0100




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x29', 'rs2_h3_val == 57343', 'rs2_h2_val == 61439', 'rs1_h2_val == 65535', 'rs1_h1_val == 61439', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000594]:UKSUBH t4, a6, s7
	-[0x80000598]:sd t4, 128(gp)
Current Store : [0x8000059c] : sd a6, 136(gp) -- Store: [0x80003298]:0x000EFFFFEFFFFDFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x29', 'rd : x0', 'rs2_h3_val == 61439', 'rs2_h2_val == 1024', 'rs2_h0_val == 65471', 'rs1_h2_val == 61439', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800005d0]:UKSUBH zero, s1, t4
	-[0x800005d4]:sd zero, 144(gp)
Current Store : [0x800005d8] : sd s1, 152(gp) -- Store: [0x800032a8]:0x0007EFFF00057FFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x6', 'rs2_h3_val == 63487', 'rs2_h1_val == 32768', 'rs1_h3_val == 32768', 'rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x8000060c]:UKSUBH t1, s3, tp
	-[0x80000610]:sd t1, 160(gp)
Current Store : [0x80000614] : sd s3, 168(gp) -- Store: [0x800032b8]:0x80007FFFFDFF0007




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x7', 'rs2_h3_val == 65023', 'rs2_h2_val == 2', 'rs2_h0_val == 21845', 'rs1_h2_val == 0']
Last Code Sequence : 
	-[0x80000644]:UKSUBH t2, s9, a4
	-[0x80000648]:sd t2, 176(gp)
Current Store : [0x8000064c] : sd s9, 184(gp) -- Store: [0x800032c8]:0xFBFF00000011000D




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x12', 'rs2_h3_val == 65279', 'rs2_h1_val == 65519', 'rs2_h0_val == 43690', 'rs1_h3_val == 4096', 'rs1_h2_val == 2048', 'rs1_h1_val == 65519', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000067c]:UKSUBH a2, s2, a7
	-[0x80000680]:sd a2, 192(gp)
Current Store : [0x80000684] : sd s2, 200(gp) -- Store: [0x800032d8]:0x10000800FFEF4000




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x2', 'rs2_h3_val == 65407', 'rs2_h1_val == 65533', 'rs2_h0_val == 16', 'rs1_h2_val == 4', 'rs1_h1_val == 1', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x800006b8]:UKSUBH sp, t2, s4
	-[0x800006bc]:sd sp, 208(gp)
Current Store : [0x800006c0] : sd t2, 216(gp) -- Store: [0x800032e8]:0x001200040001FFBF




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x11', 'rs2_h3_val == 65471', 'rs2_h1_val == 65527', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x800006f4]:UKSUBH a1, s11, t5
	-[0x800006f8]:sd a1, 224(gp)
Current Store : [0x800006fc] : sd s11, 232(gp) -- Store: [0x800032f8]:0x10000000FFFD0100




Last Coverpoint : ['rs1 : x31', 'rs2 : x6', 'rd : x30', 'rs2_h3_val == 65503', 'rs2_h1_val == 2048', 'rs2_h0_val == 128', 'rs1_h1_val == 65407', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000728]:UKSUBH t5, t6, t1
	-[0x8000072c]:sd t5, 240(gp)
Current Store : [0x80000730] : sd t6, 248(gp) -- Store: [0x80003308]:0x00200009FF7F0080




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x24', 'rs2_h3_val == 65519', 'rs2_h2_val == 4096', 'rs2_h0_val == 16384', 'rs1_h3_val == 65533']
Last Code Sequence : 
	-[0x80000760]:UKSUBH s8, ra, t6
	-[0x80000764]:sd s8, 256(gp)
Current Store : [0x80000768] : sd ra, 264(gp) -- Store: [0x80003318]:0xFFFDFFF700070003




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x27', 'rs2_h3_val == 65527', 'rs2_h1_val == 64511', 'rs1_h3_val == 8192', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800007a4]:UKSUBH s11, a1, a0
	-[0x800007a8]:sd s11, 0(t2)
Current Store : [0x800007ac] : sd a1, 8(t2) -- Store: [0x80003328]:0x2000000AFFBF0200




Last Coverpoint : ['rs1 : x23', 'rs2 : x21', 'rd : x8', 'rs2_h3_val == 65531', 'rs2_h2_val == 65503', 'rs2_h1_val == 4096', 'rs2_h0_val == 256', 'rs1_h3_val == 65503', 'rs1_h2_val == 21845', 'rs1_h1_val == 63487', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x800007d0]:UKSUBH fp, s7, s5
	-[0x800007d4]:sd fp, 16(t2)
Current Store : [0x800007d8] : sd s7, 24(t2) -- Store: [0x80003338]:0xFFDF5555F7FFFF7F




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x26', 'rs2_h3_val == 65533', 'rs1_h3_val == 63487', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x8000080c]:UKSUBH s10, a2, s6
	-[0x80000810]:sd s10, 32(t2)
Current Store : [0x80000814] : sd a2, 40(t2) -- Store: [0x80003348]:0xF7FF0003000EFFF7




Last Coverpoint : ['rs1 : x24', 'rs2 : x11', 'rd : x15', 'rs2_h3_val == 65534', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000838]:UKSUBH a5, s8, a1
	-[0x8000083c]:sd a5, 48(t2)
Current Store : [0x80000840] : sd s8, 56(t2) -- Store: [0x80003358]:0x0003000A01000012




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x25', 'rs2_h3_val == 32768', 'rs2_h0_val == 65535', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80000874]:UKSUBH s9, fp, gp
	-[0x80000878]:sd s9, 64(t2)
Current Store : [0x8000087c] : sd fp, 72(t2) -- Store: [0x80003368]:0x4000000800050080




Last Coverpoint : ['rs1 : x6', 'rs2 : x8', 'rd : x4', 'rs2_h3_val == 16384', 'rs2_h2_val == 49151', 'rs1_h2_val == 65023', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x800008b0]:UKSUBH tp, t1, fp
	-[0x800008b4]:sd tp, 80(t2)
Current Store : [0x800008b8] : sd t1, 88(t2) -- Store: [0x80003378]:0x0007FDFFFBFFDFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x16', 'rd : x31', 'rs2_h3_val == 8192', 'rs2_h2_val == 21845', 'rs2_h0_val == 61439', 'rs1_h3_val == 1', 'rs1_h2_val == 4096', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x800008ec]:UKSUBH t6, t0, a6
	-[0x800008f0]:sd t6, 96(t2)
Current Store : [0x800008f4] : sd t0, 104(t2) -- Store: [0x80003388]:0x00011000FFEFFFFE




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x3', 'rs2_h3_val == 4096', 'rs2_h2_val == 8192', 'rs1_h3_val == 512', 'rs1_h1_val == 43690', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x8000092c]:UKSUBH gp, tp, s8
	-[0x80000930]:sd gp, 112(t2)
Current Store : [0x80000934] : sd tp, 120(t2) -- Store: [0x80003398]:0x02000013AAAA2000




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x20', 'rs2_h3_val == 2048', 'rs2_h0_val == 8', 'rs1_h2_val == 16', 'rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x80000960]:UKSUBH s4, a5, t0
	-[0x80000964]:sd s4, 128(t2)
Current Store : [0x80000968] : sd a5, 136(t2) -- Store: [0x800033a8]:0xFFDF0010FFFF2000




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x14', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h2_val == 65519']
Last Code Sequence : 
	-[0x8000099c]:UKSUBH a4, a7, zero
	-[0x800009a0]:sd a4, 144(t2)
Current Store : [0x800009a4] : sd a7, 152(t2) -- Store: [0x800033b8]:0x0001FFEFFFFE000A




Last Coverpoint : ['rs1 : x0', 'rs2 : x2', 'rd : x1', 'rs1_h0_val == 0', 'rs2_h3_val == 512', 'rs2_h2_val == 65407', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800009d8]:UKSUBH ra, zero, sp
	-[0x800009dc]:sd ra, 160(t2)
Current Store : [0x800009e0] : sd zero, 168(t2) -- Store: [0x800033c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x28', 'rd : x23', 'rs2_h3_val == 256', 'rs2_h2_val == 65279', 'rs2_h1_val == 61439', 'rs1_h3_val == 16', 'rs1_h2_val == 57343']
Last Code Sequence : 
	-[0x80000a10]:UKSUBH s7, gp, t3
	-[0x80000a14]:sd s7, 176(t2)
Current Store : [0x80000a18] : sd gp, 184(t2) -- Store: [0x800033d8]:0x0010DFFFFFFDFFBF




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x17', 'rs2_h3_val == 128', 'rs2_h0_val == 65279', 'rs1_h3_val == 65471', 'rs1_h2_val == 1024', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000a4c]:UKSUBH a7, s5, s11
	-[0x80000a50]:sd a7, 192(t2)
Current Store : [0x80000a54] : sd s5, 200(t2) -- Store: [0x800033e8]:0xFFBF0400000CFFEF




Last Coverpoint : ['rs1 : x10', 'rs2 : x15', 'rd : x5', 'rs2_h3_val == 64', 'rs2_h1_val == 65023', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000a88]:UKSUBH t0, a0, a5
	-[0x80000a8c]:sd t0, 208(t2)
Current Store : [0x80000a90] : sd a0, 216(t2) -- Store: [0x800033f8]:0x000B04005555F7FF




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x16', 'rs2_h3_val == 32', 'rs2_h1_val == 32', 'rs1_h2_val == 65471', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000ac4]:UKSUBH a6, t4, ra
	-[0x80000ac8]:sd a6, 224(t2)
Current Store : [0x80000acc] : sd t4, 232(t2) -- Store: [0x80003408]:0x000DFFBFDFFF000E




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 4', 'rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x80000b00]:UKSUBH t6, t5, t4
	-[0x80000b04]:sd t6, 240(t2)
Current Store : [0x80000b08] : sd t5, 248(t2) -- Store: [0x80003418]:0x00100003000AFFFE




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000b38]:UKSUBH t6, t5, t4
	-[0x80000b3c]:sd t6, 256(t2)
Current Store : [0x80000b40] : sd t5, 264(t2) -- Store: [0x80003428]:0x7FFF00060001FEFF




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == 64', 'rs1_h2_val == 43690']
Last Code Sequence : 
	-[0x80000b74]:UKSUBH t6, t5, t4
	-[0x80000b78]:sd t6, 272(t2)
Current Store : [0x80000b7c] : sd t5, 280(t2) -- Store: [0x80003438]:0xFBFFAAAA00077FFF




Last Coverpoint : ['rs2_h3_val == 1024', 'rs1_h3_val == 256', 'rs1_h2_val == 64', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000bb0]:UKSUBH t6, t5, t4
	-[0x80000bb4]:sd t6, 288(t2)
Current Store : [0x80000bb8] : sd t5, 296(t2) -- Store: [0x80003448]:0x0100004000040006




Last Coverpoint : ['rs1_h2_val == 63487', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000bf0]:UKSUBH t6, t5, t4
	-[0x80000bf4]:sd t6, 304(t2)
Current Store : [0x80000bf8] : sd t5, 312(t2) -- Store: [0x80003458]:0x0011F7FF00020013




Last Coverpoint : ['rs1_h3_val == 43690']
Last Code Sequence : 
	-[0x80000c24]:UKSUBH t6, t5, t4
	-[0x80000c28]:sd t6, 320(t2)
Current Store : [0x80000c2c] : sd t5, 328(t2) -- Store: [0x80003468]:0xAAAA001300000012




Last Coverpoint : ['rs1_h1_val == 65503', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000c58]:UKSUBH t6, t5, t4
	-[0x80000c5c]:sd t6, 336(t2)
Current Store : [0x80000c60] : sd t5, 344(t2) -- Store: [0x80003478]:0x00110004FFDFAAAA




Last Coverpoint : ['rs2_h1_val == 65531', 'rs1_h3_val == 64', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000c90]:UKSUBH t6, t5, t4
	-[0x80000c94]:sd t6, 352(t2)
Current Store : [0x80000c98] : sd t5, 360(t2) -- Store: [0x80003488]:0x0040400000015555




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == 4', 'rs1_h2_val == 65533', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000cc8]:UKSUBH t6, t5, t4
	-[0x80000ccc]:sd t6, 368(t2)
Current Store : [0x80000cd0] : sd t5, 376(t2) -- Store: [0x80003498]:0xFFDFFFFDFFFEEFFF




Last Coverpoint : ['rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000d04]:UKSUBH t6, t5, t4
	-[0x80000d08]:sd t6, 384(t2)
Current Store : [0x80000d0c] : sd t5, 392(t2) -- Store: [0x800034a8]:0x00110003000CFBFF




Last Coverpoint : ['rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000d38]:UKSUBH t6, t5, t4
	-[0x80000d3c]:sd t6, 400(t2)
Current Store : [0x80000d40] : sd t5, 408(t2) -- Store: [0x800034b8]:0x00000006000BFFDF




Last Coverpoint : ['rs2_h0_val == 65023', 'rs1_h3_val == 65519', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80000d6c]:UKSUBH t6, t5, t4
	-[0x80000d70]:sd t6, 416(t2)
Current Store : [0x80000d74] : sd t5, 424(t2) -- Store: [0x800034c8]:0xFFEF0002FBFFFFFB




Last Coverpoint : ['rs2_h2_val == 57343', 'rs1_h3_val == 57343', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000da8]:UKSUBH t6, t5, t4
	-[0x80000dac]:sd t6, 432(t2)
Current Store : [0x80000db0] : sd t5, 440(t2) -- Store: [0x800034d8]:0xDFFFFFFF0013FFFD




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h2_val == 65534', 'rs1_h1_val == 32', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000de0]:UKSUBH t6, t5, t4
	-[0x80000de4]:sd t6, 448(t2)
Current Store : [0x80000de8] : sd t5, 456(t2) -- Store: [0x800034e8]:0x1000FFFE00208000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h3_val == 4', 'rs1_h1_val == 512', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000e0c]:UKSUBH t6, t5, t4
	-[0x80000e10]:sd t6, 464(t2)
Current Store : [0x80000e14] : sd t5, 472(t2) -- Store: [0x800034f8]:0x0004000E02001000




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000e48]:UKSUBH t6, t5, t4
	-[0x80000e4c]:sd t6, 480(t2)
Current Store : [0x80000e50] : sd t5, 488(t2) -- Store: [0x80003508]:0xF7FF000ADFFF0800




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000e84]:UKSUBH t6, t5, t4
	-[0x80000e88]:sd t6, 496(t2)
Current Store : [0x80000e8c] : sd t5, 504(t2) -- Store: [0x80003518]:0xFFEF0011FBFF0400




Last Coverpoint : ['rs2_h0_val == 65407', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000ec0]:UKSUBH t6, t5, t4
	-[0x80000ec4]:sd t6, 512(t2)
Current Store : [0x80000ec8] : sd t5, 520(t2) -- Store: [0x80003528]:0x10000002FFDF0040




Last Coverpoint : ['rs2_h2_val == 65519', 'rs2_h1_val == 512', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000ef4]:UKSUBH t6, t5, t4
	-[0x80000ef8]:sd t6, 528(t2)
Current Store : [0x80000efc] : sd t5, 536(t2) -- Store: [0x80003538]:0x0007001200040010




Last Coverpoint : ['rs2_h1_val == 63487', 'rs1_h3_val == 65527', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000f28]:UKSUBH t6, t5, t4
	-[0x80000f2c]:sd t6, 544(t2)
Current Store : [0x80000f30] : sd t5, 552(t2) -- Store: [0x80003548]:0xFFF77FFF00000008




Last Coverpoint : ['rs2_h2_val == 65471', 'rs2_h0_val == 65527', 'rs1_h1_val == 2048', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000f5c]:UKSUBH t6, t5, t4
	-[0x80000f60]:sd t6, 560(t2)
Current Store : [0x80000f64] : sd t5, 568(t2) -- Store: [0x80003558]:0x0007000F08000004




Last Coverpoint : ['rs1_h3_val == 2048', 'rs1_h1_val == 4096', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000f94]:UKSUBH t6, t5, t4
	-[0x80000f98]:sd t6, 576(t2)
Current Store : [0x80000f9c] : sd t5, 584(t2) -- Store: [0x80003568]:0x0800000910000002




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h2_val == 64511', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000fd0]:UKSUBH t6, t5, t4
	-[0x80000fd4]:sd t6, 592(t2)
Current Store : [0x80000fd8] : sd t5, 600(t2) -- Store: [0x80003578]:0x5555FBFF000D0001




Last Coverpoint : ['rs1_h3_val == 49151', 'rs1_h1_val == 8192', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80001008]:UKSUBH t6, t5, t4
	-[0x8000100c]:sd t6, 608(t2)
Current Store : [0x80001010] : sd t5, 616(t2) -- Store: [0x80003588]:0xBFFFFFF72000FFFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80001044]:UKSUBH t6, t5, t4
	-[0x80001048]:sd t6, 624(t2)
Current Store : [0x8000104c] : sd t5, 632(t2) -- Store: [0x80003598]:0x0200FFEFFFBF0004




Last Coverpoint : ['rs2_h3_val == 65535']
Last Code Sequence : 
	-[0x80001078]:UKSUBH t6, t5, t4
	-[0x8000107c]:sd t6, 640(t2)
Current Store : [0x80001080] : sd t5, 648(t2) -- Store: [0x800035a8]:0x1000FFFE0006FFF7




Last Coverpoint : ['rs2_h2_val == 43690', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800010b0]:UKSUBH t6, t5, t4
	-[0x800010b4]:sd t6, 656(t2)
Current Store : [0x800010b8] : sd t5, 664(t2) -- Store: [0x800035b8]:0xFFEFF7FF0012FEFF




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x800010e4]:UKSUBH t6, t5, t4
	-[0x800010e8]:sd t6, 672(t2)
Current Store : [0x800010ec] : sd t5, 680(t2) -- Store: [0x800035c8]:0x001008005555FDFF




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 65503']
Last Code Sequence : 
	-[0x80001120]:UKSUBH t6, t5, t4
	-[0x80001124]:sd t6, 688(t2)
Current Store : [0x80001128] : sd t5, 696(t2) -- Store: [0x800035d8]:0x000C000300040800




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x8000115c]:UKSUBH t6, t5, t4
	-[0x80001160]:sd t6, 704(t2)
Current Store : [0x80001164] : sd t5, 712(t2) -- Store: [0x800035e8]:0x0100FFF7FDFF0009




Last Coverpoint : ['rs2_h2_val == 32768', 'rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x80001190]:UKSUBH t6, t5, t4
	-[0x80001194]:sd t6, 720(t2)
Current Store : [0x80001198] : sd t5, 728(t2) -- Store: [0x800035f8]:0x00060004000E0009




Last Coverpoint : ['rs2_h1_val == 65535', 'rs2_h0_val == 8192', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800011c4]:UKSUBH t6, t5, t4
	-[0x800011c8]:sd t6, 736(t2)
Current Store : [0x800011cc] : sd t5, 744(t2) -- Store: [0x80003608]:0x400000407FFFFFFB




Last Coverpoint : ['rs2_h2_val == 65534', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800011f8]:UKSUBH t6, t5, t4
	-[0x800011fc]:sd t6, 752(t2)
Current Store : [0x80001200] : sd t5, 760(t2) -- Store: [0x80003618]:0x00000400000B0003




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h1_val == 21845', 'rs2_h0_val == 1', 'rs1_h2_val == 65531']
Last Code Sequence : 
	-[0x80001234]:UKSUBH t6, t5, t4
	-[0x80001238]:sd t6, 768(t2)
Current Store : [0x8000123c] : sd t5, 776(t2) -- Store: [0x80003628]:0xFFFEFFFB0006FEFF




Last Coverpoint : ['rs1_h3_val == 61439']
Last Code Sequence : 
	-[0x8000126c]:UKSUBH t6, t5, t4
	-[0x80001270]:sd t6, 784(t2)
Current Store : [0x80001274] : sd t5, 792(t2) -- Store: [0x80003638]:0xEFFF5555000DAAAA




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h3_val == 65023']
Last Code Sequence : 
	-[0x800012a8]:UKSUBH t6, t5, t4
	-[0x800012ac]:sd t6, 800(t2)
Current Store : [0x800012b0] : sd t5, 808(t2) -- Store: [0x80003648]:0xFDFF7FFF0400FFFF




Last Coverpoint : ['rs1_h3_val == 65279', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x800012e4]:UKSUBH t6, t5, t4
	-[0x800012e8]:sd t6, 816(t2)
Current Store : [0x800012ec] : sd t5, 824(t2) -- Store: [0x80003658]:0xFEFF00200100FFFD




Last Coverpoint : ['rs1_h3_val == 65407']
Last Code Sequence : 
	-[0x8000131c]:UKSUBH t6, t5, t4
	-[0x80001320]:sd t6, 832(t2)
Current Store : [0x80001324] : sd t5, 840(t2) -- Store: [0x80003668]:0xFF7F000C1000000A




Last Coverpoint : ['rs1_h3_val == 65531', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x80001358]:UKSUBH t6, t5, t4
	-[0x8000135c]:sd t6, 848(t2)
Current Store : [0x80001360] : sd t5, 856(t2) -- Store: [0x80003678]:0xFFFB0008FFF7DFFF




Last Coverpoint : ['rs2_h2_val == 63487', 'rs2_h1_val == 128', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80001394]:UKSUBH t6, t5, t4
	-[0x80001398]:sd t6, 864(t2)
Current Store : [0x8000139c] : sd t5, 872(t2) -- Store: [0x80003688]:0x0100000800800006




Last Coverpoint : ['rs2_h2_val == 64511']
Last Code Sequence : 
	-[0x800013d0]:UKSUBH t6, t5, t4
	-[0x800013d4]:sd t6, 880(t2)
Current Store : [0x800013d8] : sd t5, 888(t2) -- Store: [0x80003698]:0x0006000F000A000B




Last Coverpoint : ['rs2_h2_val == 65023']
Last Code Sequence : 
	-[0x8000140c]:UKSUBH t6, t5, t4
	-[0x80001410]:sd t6, 896(t2)
Current Store : [0x80001414] : sd t5, 904(t2) -- Store: [0x800036a8]:0xBFFF7FFF000E0080




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x80001444]:UKSUBH t6, t5, t4
	-[0x80001448]:sd t6, 912(t2)
Current Store : [0x8000144c] : sd t5, 920(t2) -- Store: [0x800036b8]:0x00080012FFEFFFFD




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h3_val == 2', 'rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x80001480]:UKSUBH t6, t5, t4
	-[0x80001484]:sd t6, 928(t2)
Current Store : [0x80001488] : sd t5, 936(t2) -- Store: [0x800036c8]:0x00020005FFFB7FFF




Last Coverpoint : ['rs1_h3_val == 65535', 'rs1_h2_val == 65279']
Last Code Sequence : 
	-[0x800014b0]:UKSUBH t6, t5, t4
	-[0x800014b4]:sd t6, 944(t2)
Current Store : [0x800014b8] : sd t5, 952(t2) -- Store: [0x800036d8]:0xFFFFFEFF20001000




Last Coverpoint : ['rs2_h2_val == 65531', 'rs2_h1_val == 43690', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800014e4]:UKSUBH t6, t5, t4
	-[0x800014e8]:sd t6, 960(t2)
Current Store : [0x800014ec] : sd t5, 968(t2) -- Store: [0x800036e8]:0x555502000002FFFE




Last Coverpoint : ['rs1_h2_val == 49151', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000151c]:UKSUBH t6, t5, t4
	-[0x80001520]:sd t6, 976(t2)
Current Store : [0x80001524] : sd t5, 984(t2) -- Store: [0x800036f8]:0x2000BFFF00400012




Last Coverpoint : ['rs1_h2_val == 65407']
Last Code Sequence : 
	-[0x80001554]:UKSUBH t6, t5, t4
	-[0x80001558]:sd t6, 992(t2)
Current Store : [0x8000155c] : sd t5, 1000(t2) -- Store: [0x80003708]:0x000AFF7FFFF70100




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 65279']
Last Code Sequence : 
	-[0x8000158c]:UKSUBH t6, t5, t4
	-[0x80001590]:sd t6, 1008(t2)
Current Store : [0x80001594] : sd t5, 1016(t2) -- Store: [0x80003718]:0x0400002000031000




Last Coverpoint : ['rs1_h2_val == 65503']
Last Code Sequence : 
	-[0x800015c8]:UKSUBH t6, t5, t4
	-[0x800015cc]:sd t6, 1024(t2)
Current Store : [0x800015d0] : sd t5, 1032(t2) -- Store: [0x80003728]:0x4000FFDF0004000D




Last Coverpoint : ['rs2_h2_val == 65535']
Last Code Sequence : 
	-[0x80001604]:UKSUBH t6, t5, t4
	-[0x80001608]:sd t6, 1040(t2)
Current Store : [0x8000160c] : sd t5, 1048(t2) -- Store: [0x80003738]:0x20000003FFF7000A




Last Coverpoint : ['rs1_h2_val == 32768']
Last Code Sequence : 
	-[0x8000163c]:UKSUBH t6, t5, t4
	-[0x80001640]:sd t6, 1056(t2)
Current Store : [0x80001644] : sd t5, 1064(t2) -- Store: [0x80003748]:0x000580007FFF0005




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80001678]:UKSUBH t6, t5, t4
	-[0x8000167c]:sd t6, 1072(t2)
Current Store : [0x80001680] : sd t5, 1080(t2) -- Store: [0x80003758]:0x00137FFF00030004




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800016b4]:UKSUBH t6, t5, t4
	-[0x800016b8]:sd t6, 1088(t2)
Current Store : [0x800016bc] : sd t5, 1096(t2) -- Store: [0x80003768]:0x800001002000FFFE




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x800016f0]:UKSUBH t6, t5, t4
	-[0x800016f4]:sd t6, 1104(t2)
Current Store : [0x800016f8] : sd t5, 1112(t2) -- Store: [0x80003778]:0xEFFF00800400FFF7




Last Coverpoint : ['rs2_h1_val == 65503', 'rs2_h0_val == 64511']
Last Code Sequence : 
	-[0x8000172c]:UKSUBH t6, t5, t4
	-[0x80001730]:sd t6, 1120(t2)
Current Store : [0x80001734] : sd t5, 1128(t2) -- Store: [0x80003788]:0x020000137FFF0400




Last Coverpoint : ['rs2_h1_val == 65534']
Last Code Sequence : 
	-[0x80001758]:UKSUBH t6, t5, t4
	-[0x8000175c]:sd t6, 1136(t2)
Current Store : [0x80001760] : sd t5, 1144(t2) -- Store: [0x80003798]:0x000C010000400000




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000178c]:UKSUBH t6, t5, t4
	-[0x80001790]:sd t6, 1152(t2)
Current Store : [0x80001794] : sd t5, 1160(t2) -- Store: [0x800037a8]:0x000002000020EFFF




Last Coverpoint : ['rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x800017c4]:UKSUBH t6, t5, t4
	-[0x800017c8]:sd t6, 1168(t2)
Current Store : [0x800017cc] : sd t5, 1176(t2) -- Store: [0x800037b8]:0x000FAAAABFFF0800




Last Coverpoint : ['rs2_h1_val == 256']
Last Code Sequence : 
	-[0x800017f8]:UKSUBH t6, t5, t4
	-[0x800017fc]:sd t6, 1184(t2)
Current Store : [0x80001800] : sd t5, 1192(t2) -- Store: [0x800037c8]:0x000D4000000B4000




Last Coverpoint : ['rs1_h1_val == 65279']
Last Code Sequence : 
	-[0x8000182c]:UKSUBH t6, t5, t4
	-[0x80001830]:sd t6, 1200(t2)
Current Store : [0x80001834] : sd t5, 1208(t2) -- Store: [0x800037d8]:0xFF7FFF7FFEFF0008




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001868]:UKSUBH t6, t5, t4
	-[0x8000186c]:sd t6, 1216(t2)
Current Store : [0x80001870] : sd t5, 1224(t2) -- Store: [0x800037e8]:0xFFBF1000FFFE0007




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800018a0]:UKSUBH t6, t5, t4
	-[0x800018a4]:sd t6, 1232(t2)
Current Store : [0x800018a8] : sd t5, 1240(t2) -- Store: [0x800037f8]:0x000100090400FF7F




Last Coverpoint : ['rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800018dc]:UKSUBH t6, t5, t4
	-[0x800018e0]:sd t6, 1248(t2)
Current Store : [0x800018e4] : sd t5, 1256(t2) -- Store: [0x80003808]:0x000D00010007FFFB




Last Coverpoint : ['rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80001910]:UKSUBH t6, t5, t4
	-[0x80001914]:sd t6, 1264(t2)
Current Store : [0x80001918] : sd t5, 1272(t2) -- Store: [0x80003818]:0x000EFBFF80000002




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 8', 'rs2_h2_val == 32768', 'rs2_h1_val == 0', 'rs1_h2_val == 65534', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80001940]:UKSUBH t6, t5, t4
	-[0x80001944]:sd t6, 1280(t2)
Current Store : [0x80001948] : sd t5, 1288(t2) -- Store: [0x80003828]:0x000BFFFE00135555




Last Coverpoint : ['rs2_h0_val == 57343']
Last Code Sequence : 
	-[0x80001974]:UKSUBH t6, t5, t4
	-[0x80001978]:sd t6, 1296(t2)
Current Store : [0x8000197c] : sd t5, 1304(t2) -- Store: [0x80003838]:0x000004000012FFBF




Last Coverpoint : ['rs2_h2_val == 65533']
Last Code Sequence : 
	-[0x800019b0]:UKSUBH t6, t5, t4
	-[0x800019b4]:sd t6, 1312(t2)
Current Store : [0x800019b8] : sd t5, 1320(t2) -- Store: [0x80003848]:0xFF7F2000FFBFAAAA




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800019e0]:UKSUBH t6, t5, t4
	-[0x800019e4]:sd t6, 1328(t2)
Current Store : [0x800019e8] : sd t5, 1336(t2) -- Store: [0x80003858]:0x0003BFFF00100000




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001a18]:UKSUBH t6, t5, t4
	-[0x80001a1c]:sd t6, 1344(t2)
Current Store : [0x80001a20] : sd t5, 1352(t2) -- Store: [0x80003868]:0xFFFB000000080011




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == 0', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 8', 'rs2_h1_val == 1024', 'rs2_h0_val == 65531', 'rs1_h3_val == 43690', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80001a50]:UKSUBH t6, t5, t4
	-[0x80001a54]:sd t6, 1360(t2)
Current Store : [0x80001a58] : sd t5, 1368(t2) -- Store: [0x80003878]:0xAAAA001102000000




Last Coverpoint : ['rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80001a8c]:UKSUBH t6, t5, t4
	-[0x80001a90]:sd t6, 1376(t2)
Current Store : [0x80001a94] : sd t5, 1384(t2) -- Store: [0x80003888]:0xFBFF000EFFFBBFFF




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 61439', 'rs2_h2_val == 1024', 'rs2_h1_val == 65471', 'rs2_h0_val == 65471', 'rs1_h2_val == 61439', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80001ac8]:UKSUBH t6, t5, t4
	-[0x80001acc]:sd t6, 1392(t2)
Current Store : [0x80001ad0] : sd t5, 1400(t2) -- Store: [0x80003898]:0x0007EFFF00057FFF




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80001b04]:UKSUBH t6, t5, t4
	-[0x80001b08]:sd t6, 1408(t2)
Current Store : [0x80001b0c] : sd t5, 1416(t2) -- Store: [0x800038a8]:0x0001FFEFFFFE000A





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                     coverpoints                                                                                                                                                                                                                                                                                      |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : uksubh<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 8<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 65531<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 8<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 65531<br> |[0x800003d0]:UKSUBH a0, s10, s10<br> [0x800003d4]:sd a0, 0(gp)<br>     |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 64511<br> - rs1_h3_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000040c]:UKSUBH a3, a3, a3<br> [0x80000410]:sd a3, 16(gp)<br>      |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x7<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 1<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 49151<br> - rs1_h3_val == 65534<br> - rs1_h2_val == 16384<br>                                                                                                                      |[0x80000444]:UKSUBH s1, t5, t2<br> [0x80000448]:sd s1, 32(gp)<br>      |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x25<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 65519<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000478]:UKSUBH t3, t3, s9<br> [0x8000047c]:sd t3, 48(gp)<br>      |
|   5|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs2_h2_val == 65527<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 63487<br> - rs1_h3_val == 128<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800004b4]:UKSUBH s3, s4, s3<br> [0x800004b8]:sd s3, 64(gp)<br>      |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x12<br> - rd : x18<br> - rs2_h3_val == 43690<br> - rs2_h2_val == 16<br> - rs2_h1_val == 57343<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x800004e8]:UKSUBH s2, s6, a2<br> [0x800004ec]:sd s2, 80(gp)<br>      |
|   7|[0x80003270]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x18<br> - rd : x21<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 0<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 0<br> - rs1_h2_val == 8192<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000524]:UKSUBH s5, a4, s2<br> [0x80000528]:sd s5, 96(gp)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x9<br> - rd : x22<br> - rs2_h3_val == 49151<br> - rs2_h2_val == 64<br> - rs2_h0_val == 32<br> - rs1_h3_val == 32<br> - rs1_h2_val == 65527<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000560]:UKSUBH s6, sp, s1<br> [0x80000564]:sd s6, 112(gp)<br>     |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x23<br> - rd : x29<br> - rs2_h3_val == 57343<br> - rs2_h2_val == 61439<br> - rs1_h2_val == 65535<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000594]:UKSUBH t4, a6, s7<br> [0x80000598]:sd t4, 128(gp)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x29<br> - rd : x0<br> - rs2_h3_val == 61439<br> - rs2_h2_val == 1024<br> - rs2_h0_val == 65471<br> - rs1_h2_val == 61439<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800005d0]:UKSUBH zero, s1, t4<br> [0x800005d4]:sd zero, 144(gp)<br> |
|  11|[0x800032b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x4<br> - rd : x6<br> - rs2_h3_val == 63487<br> - rs2_h1_val == 32768<br> - rs1_h3_val == 32768<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000060c]:UKSUBH t1, s3, tp<br> [0x80000610]:sd t1, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x14<br> - rd : x7<br> - rs2_h3_val == 65023<br> - rs2_h2_val == 2<br> - rs2_h0_val == 21845<br> - rs1_h2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000644]:UKSUBH t2, s9, a4<br> [0x80000648]:sd t2, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x17<br> - rd : x12<br> - rs2_h3_val == 65279<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 43690<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                    |[0x8000067c]:UKSUBH a2, s2, a7<br> [0x80000680]:sd a2, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x20<br> - rd : x2<br> - rs2_h3_val == 65407<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 16<br> - rs1_h2_val == 4<br> - rs1_h1_val == 1<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006b8]:UKSUBH sp, t2, s4<br> [0x800006bc]:sd sp, 208(gp)<br>     |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rs2 : x30<br> - rd : x11<br> - rs2_h3_val == 65471<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006f4]:UKSUBH a1, s11, t5<br> [0x800006f8]:sd a1, 224(gp)<br>    |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rs2 : x6<br> - rd : x30<br> - rs2_h3_val == 65503<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 128<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000728]:UKSUBH t5, t6, t1<br> [0x8000072c]:sd t5, 240(gp)<br>     |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x31<br> - rd : x24<br> - rs2_h3_val == 65519<br> - rs2_h2_val == 4096<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000760]:UKSUBH s8, ra, t6<br> [0x80000764]:sd s8, 256(gp)<br>     |
|  18|[0x80003320]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x11<br> - rs2 : x10<br> - rd : x27<br> - rs2_h3_val == 65527<br> - rs2_h1_val == 64511<br> - rs1_h3_val == 8192<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800007a4]:UKSUBH s11, a1, a0<br> [0x800007a8]:sd s11, 0(t2)<br>     |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x8<br> - rs2_h3_val == 65531<br> - rs2_h2_val == 65503<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 256<br> - rs1_h3_val == 65503<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                            |[0x800007d0]:UKSUBH fp, s7, s5<br> [0x800007d4]:sd fp, 16(t2)<br>      |
|  20|[0x80003340]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x22<br> - rd : x26<br> - rs2_h3_val == 65533<br> - rs1_h3_val == 63487<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000080c]:UKSUBH s10, a2, s6<br> [0x80000810]:sd s10, 32(t2)<br>    |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x11<br> - rd : x15<br> - rs2_h3_val == 65534<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000838]:UKSUBH a5, s8, a1<br> [0x8000083c]:sd a5, 48(t2)<br>      |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x3<br> - rd : x25<br> - rs2_h3_val == 32768<br> - rs2_h0_val == 65535<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000874]:UKSUBH s9, fp, gp<br> [0x80000878]:sd s9, 64(t2)<br>      |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x8<br> - rd : x4<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 49151<br> - rs1_h2_val == 65023<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800008b0]:UKSUBH tp, t1, fp<br> [0x800008b4]:sd tp, 80(t2)<br>      |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x5<br> - rs2 : x16<br> - rd : x31<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 21845<br> - rs2_h0_val == 61439<br> - rs1_h3_val == 1<br> - rs1_h2_val == 4096<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x800008ec]:UKSUBH t6, t0, a6<br> [0x800008f0]:sd t6, 96(t2)<br>      |
|  25|[0x80003390]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x24<br> - rd : x3<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 8192<br> - rs1_h3_val == 512<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000092c]:UKSUBH gp, tp, s8<br> [0x80000930]:sd gp, 112(t2)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rs2 : x5<br> - rd : x20<br> - rs2_h3_val == 2048<br> - rs2_h0_val == 8<br> - rs1_h2_val == 16<br> - rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000960]:UKSUBH s4, a5, t0<br> [0x80000964]:sd s4, 128(t2)<br>     |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x17<br> - rs2 : x0<br> - rd : x14<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h2_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000099c]:UKSUBH a4, a7, zero<br> [0x800009a0]:sd a4, 144(t2)<br>   |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs1_h0_val == 0<br> - rs2_h3_val == 512<br> - rs2_h2_val == 65407<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800009d8]:UKSUBH ra, zero, sp<br> [0x800009dc]:sd ra, 160(t2)<br>   |
|  29|[0x800033d0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x28<br> - rd : x23<br> - rs2_h3_val == 256<br> - rs2_h2_val == 65279<br> - rs2_h1_val == 61439<br> - rs1_h3_val == 16<br> - rs1_h2_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a10]:UKSUBH s7, gp, t3<br> [0x80000a14]:sd s7, 176(t2)<br>     |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x21<br> - rs2 : x27<br> - rd : x17<br> - rs2_h3_val == 128<br> - rs2_h0_val == 65279<br> - rs1_h3_val == 65471<br> - rs1_h2_val == 1024<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a4c]:UKSUBH a7, s5, s11<br> [0x80000a50]:sd a7, 192(t2)<br>    |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x15<br> - rd : x5<br> - rs2_h3_val == 64<br> - rs2_h1_val == 65023<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a88]:UKSUBH t0, a0, a5<br> [0x80000a8c]:sd t0, 208(t2)<br>     |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x29<br> - rs2 : x1<br> - rd : x16<br> - rs2_h3_val == 32<br> - rs2_h1_val == 32<br> - rs1_h2_val == 65471<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ac4]:UKSUBH a6, t4, ra<br> [0x80000ac8]:sd a6, 224(t2)<br>     |
|  33|[0x80003410]<br>0x0000000000000000|- rs2_h3_val == 16<br> - rs2_h2_val == 4<br> - rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b00]:UKSUBH t6, t5, t4<br> [0x80000b04]:sd t6, 240(t2)<br>     |
|  34|[0x80003420]<br>0x0000000000000000|- rs2_h3_val == 8<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b38]:UKSUBH t6, t5, t4<br> [0x80000b3c]:sd t6, 256(t2)<br>     |
|  35|[0x80003430]<br>0x0000000000000000|- rs2_h3_val == 4<br> - rs2_h0_val == 64<br> - rs1_h2_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b74]:UKSUBH t6, t5, t4<br> [0x80000b78]:sd t6, 272(t2)<br>     |
|  36|[0x80003440]<br>0x0000000000000000|- rs2_h3_val == 1024<br> - rs1_h3_val == 256<br> - rs1_h2_val == 64<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bb0]:UKSUBH t6, t5, t4<br> [0x80000bb4]:sd t6, 288(t2)<br>     |
|  37|[0x80003450]<br>0x0000000000000000|- rs1_h2_val == 63487<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bf0]:UKSUBH t6, t5, t4<br> [0x80000bf4]:sd t6, 304(t2)<br>     |
|  38|[0x80003460]<br>0x0000000000000000|- rs1_h3_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c24]:UKSUBH t6, t5, t4<br> [0x80000c28]:sd t6, 320(t2)<br>     |
|  39|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 65503<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c58]:UKSUBH t6, t5, t4<br> [0x80000c5c]:sd t6, 336(t2)<br>     |
|  40|[0x80003480]<br>0x0000000000000000|- rs2_h1_val == 65531<br> - rs1_h3_val == 64<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c90]:UKSUBH t6, t5, t4<br> [0x80000c94]:sd t6, 352(t2)<br>     |
|  41|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 2048<br> - rs2_h1_val == 4<br> - rs1_h2_val == 65533<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000cc8]:UKSUBH t6, t5, t4<br> [0x80000ccc]:sd t6, 368(t2)<br>     |
|  42|[0x800034a0]<br>0x0000000000000000|- rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d04]:UKSUBH t6, t5, t4<br> [0x80000d08]:sd t6, 384(t2)<br>     |
|  43|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d38]:UKSUBH t6, t5, t4<br> [0x80000d3c]:sd t6, 400(t2)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65023<br> - rs1_h3_val == 65519<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d6c]:UKSUBH t6, t5, t4<br> [0x80000d70]:sd t6, 416(t2)<br>     |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 57343<br> - rs1_h3_val == 57343<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000da8]:UKSUBH t6, t5, t4<br> [0x80000dac]:sd t6, 432(t2)<br>     |
|  46|[0x800034e0]<br>0x0000000000000000|- rs2_h1_val == 64<br> - rs1_h2_val == 65534<br> - rs1_h1_val == 32<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000de0]:UKSUBH t6, t5, t4<br> [0x80000de4]:sd t6, 448(t2)<br>     |
|  47|[0x800034f0]<br>0x0000000000000000|- rs2_h2_val == 256<br> - rs1_h3_val == 4<br> - rs1_h1_val == 512<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e0c]:UKSUBH t6, t5, t4<br> [0x80000e10]:sd t6, 464(t2)<br>     |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 512<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000e48]:UKSUBH t6, t5, t4<br> [0x80000e4c]:sd t6, 480(t2)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e84]:UKSUBH t6, t5, t4<br> [0x80000e88]:sd t6, 496(t2)<br>     |
|  50|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65407<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000ec0]:UKSUBH t6, t5, t4<br> [0x80000ec4]:sd t6, 512(t2)<br>     |
|  51|[0x80003530]<br>0x0000000000000000|- rs2_h2_val == 65519<br> - rs2_h1_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ef4]:UKSUBH t6, t5, t4<br> [0x80000ef8]:sd t6, 528(t2)<br>     |
|  52|[0x80003540]<br>0x0000000000000000|- rs2_h1_val == 63487<br> - rs1_h3_val == 65527<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f28]:UKSUBH t6, t5, t4<br> [0x80000f2c]:sd t6, 544(t2)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65471<br> - rs2_h0_val == 65527<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f5c]:UKSUBH t6, t5, t4<br> [0x80000f60]:sd t6, 560(t2)<br>     |
|  54|[0x80003560]<br>0x0000000000000000|- rs1_h3_val == 2048<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f94]:UKSUBH t6, t5, t4<br> [0x80000f98]:sd t6, 576(t2)<br>     |
|  55|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 21845<br> - rs1_h2_val == 64511<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000fd0]:UKSUBH t6, t5, t4<br> [0x80000fd4]:sd t6, 592(t2)<br>     |
|  56|[0x80003580]<br>0x0000000000000000|- rs1_h3_val == 49151<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001008]:UKSUBH t6, t5, t4<br> [0x8000100c]:sd t6, 608(t2)<br>     |
|  57|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 2<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001044]:UKSUBH t6, t5, t4<br> [0x80001048]:sd t6, 624(t2)<br>     |
|  58|[0x800035a0]<br>0x0000000000000000|- rs2_h3_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001078]:UKSUBH t6, t5, t4<br> [0x8000107c]:sd t6, 640(t2)<br>     |
|  59|[0x800035b0]<br>0x0000000000000000|- rs2_h2_val == 43690<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800010b0]:UKSUBH t6, t5, t4<br> [0x800010b4]:sd t6, 656(t2)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800010e4]:UKSUBH t6, t5, t4<br> [0x800010e8]:sd t6, 672(t2)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 2<br> - rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001120]:UKSUBH t6, t5, t4<br> [0x80001124]:sd t6, 688(t2)<br>     |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 512<br> - rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000115c]:UKSUBH t6, t5, t4<br> [0x80001160]:sd t6, 704(t2)<br>     |
|  63|[0x800035f0]<br>0x0000000000000000|- rs2_h2_val == 32768<br> - rs2_h0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001190]:UKSUBH t6, t5, t4<br> [0x80001194]:sd t6, 720(t2)<br>     |
|  64|[0x80003600]<br>0x0000000000000000|- rs2_h1_val == 65535<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011c4]:UKSUBH t6, t5, t4<br> [0x800011c8]:sd t6, 736(t2)<br>     |
|  65|[0x80003610]<br>0x0000000000000000|- rs2_h2_val == 65534<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011f8]:UKSUBH t6, t5, t4<br> [0x800011fc]:sd t6, 752(t2)<br>     |
|  66|[0x80003620]<br>0x0000000000000000|- rs2_h2_val == 1<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 1<br> - rs1_h2_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001234]:UKSUBH t6, t5, t4<br> [0x80001238]:sd t6, 768(t2)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000126c]:UKSUBH t6, t5, t4<br> [0x80001270]:sd t6, 784(t2)<br>     |
|  68|[0x80003640]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 8<br> - rs1_h3_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800012a8]:UKSUBH t6, t5, t4<br> [0x800012ac]:sd t6, 800(t2)<br>     |
|  69|[0x80003650]<br>0x0000000000000000|- rs1_h3_val == 65279<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800012e4]:UKSUBH t6, t5, t4<br> [0x800012e8]:sd t6, 816(t2)<br>     |
|  70|[0x80003660]<br>0x0000000000000000|- rs1_h3_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000131c]:UKSUBH t6, t5, t4<br> [0x80001320]:sd t6, 832(t2)<br>     |
|  71|[0x80003670]<br>0x0000000000000000|- rs1_h3_val == 65531<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001358]:UKSUBH t6, t5, t4<br> [0x8000135c]:sd t6, 848(t2)<br>     |
|  72|[0x80003680]<br>0x0000000000000000|- rs2_h2_val == 63487<br> - rs2_h1_val == 128<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001394]:UKSUBH t6, t5, t4<br> [0x80001398]:sd t6, 864(t2)<br>     |
|  73|[0x80003690]<br>0x0000000000000000|- rs2_h2_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800013d0]:UKSUBH t6, t5, t4<br> [0x800013d4]:sd t6, 880(t2)<br>     |
|  74|[0x800036a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000140c]:UKSUBH t6, t5, t4<br> [0x80001410]:sd t6, 896(t2)<br>     |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001444]:UKSUBH t6, t5, t4<br> [0x80001448]:sd t6, 912(t2)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 128<br> - rs1_h3_val == 2<br> - rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001480]:UKSUBH t6, t5, t4<br> [0x80001484]:sd t6, 928(t2)<br>     |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 65535<br> - rs1_h2_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800014b0]:UKSUBH t6, t5, t4<br> [0x800014b4]:sd t6, 944(t2)<br>     |
|  78|[0x800036e0]<br>0x0000000000000000|- rs2_h2_val == 65531<br> - rs2_h1_val == 43690<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014e4]:UKSUBH t6, t5, t4<br> [0x800014e8]:sd t6, 960(t2)<br>     |
|  79|[0x800036f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 49151<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000151c]:UKSUBH t6, t5, t4<br> [0x80001520]:sd t6, 976(t2)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001554]:UKSUBH t6, t5, t4<br> [0x80001558]:sd t6, 992(t2)<br>     |
|  81|[0x80003710]<br>0x0000000000000000|- rs2_h2_val == 32<br> - rs2_h1_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000158c]:UKSUBH t6, t5, t4<br> [0x80001590]:sd t6, 1008(t2)<br>    |
|  82|[0x80003720]<br>0x0000000000000000|- rs1_h2_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015c8]:UKSUBH t6, t5, t4<br> [0x800015cc]:sd t6, 1024(t2)<br>    |
|  83|[0x80003730]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001604]:UKSUBH t6, t5, t4<br> [0x80001608]:sd t6, 1040(t2)<br>    |
|  84|[0x80003740]<br>0x0000000000000000|- rs1_h2_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000163c]:UKSUBH t6, t5, t4<br> [0x80001640]:sd t6, 1056(t2)<br>    |
|  85|[0x80003750]<br>0x0000000000000000|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001678]:UKSUBH t6, t5, t4<br> [0x8000167c]:sd t6, 1072(t2)<br>    |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800016b4]:UKSUBH t6, t5, t4<br> [0x800016b8]:sd t6, 1088(t2)<br>    |
|  87|[0x80003770]<br>0x0000000000000000|- rs2_h0_val == 32767<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800016f0]:UKSUBH t6, t5, t4<br> [0x800016f4]:sd t6, 1104(t2)<br>    |
|  88|[0x80003780]<br>0x0000000000000000|- rs2_h1_val == 65503<br> - rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000172c]:UKSUBH t6, t5, t4<br> [0x80001730]:sd t6, 1120(t2)<br>    |
|  89|[0x80003790]<br>0x0000000000000000|- rs2_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001758]:UKSUBH t6, t5, t4<br> [0x8000175c]:sd t6, 1136(t2)<br>    |
|  90|[0x800037a0]<br>0x0000000000000000|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000178c]:UKSUBH t6, t5, t4<br> [0x80001790]:sd t6, 1152(t2)<br>    |
|  91|[0x800037b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800017c4]:UKSUBH t6, t5, t4<br> [0x800017c8]:sd t6, 1168(t2)<br>    |
|  92|[0x800037c0]<br>0x0000000000000000|- rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017f8]:UKSUBH t6, t5, t4<br> [0x800017fc]:sd t6, 1184(t2)<br>    |
|  93|[0x800037d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000182c]:UKSUBH t6, t5, t4<br> [0x80001830]:sd t6, 1200(t2)<br>    |
|  94|[0x800037e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001868]:UKSUBH t6, t5, t4<br> [0x8000186c]:sd t6, 1216(t2)<br>    |
|  95|[0x800037f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800018a0]:UKSUBH t6, t5, t4<br> [0x800018a4]:sd t6, 1232(t2)<br>    |
|  96|[0x80003800]<br>0x0000000000000000|- rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800018dc]:UKSUBH t6, t5, t4<br> [0x800018e0]:sd t6, 1248(t2)<br>    |
|  97|[0x80003810]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001910]:UKSUBH t6, t5, t4<br> [0x80001914]:sd t6, 1264(t2)<br>    |
|  98|[0x80003830]<br>0x0000000000000000|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001974]:UKSUBH t6, t5, t4<br> [0x80001978]:sd t6, 1296(t2)<br>    |
|  99|[0x80003840]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800019b0]:UKSUBH t6, t5, t4<br> [0x800019b4]:sd t6, 1312(t2)<br>    |
| 100|[0x80003850]<br>0x0000000000000000|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800019e0]:UKSUBH t6, t5, t4<br> [0x800019e4]:sd t6, 1328(t2)<br>    |
| 101|[0x80003860]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001a18]:UKSUBH t6, t5, t4<br> [0x80001a1c]:sd t6, 1344(t2)<br>    |
| 102|[0x80003880]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001a8c]:UKSUBH t6, t5, t4<br> [0x80001a90]:sd t6, 1376(t2)<br>    |
| 103|[0x800038a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001b04]:UKSUBH t6, t5, t4<br> [0x80001b08]:sd t6, 1408(t2)<br>    |
