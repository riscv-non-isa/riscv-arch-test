
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
| COV_LABELS                | kmsda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmsda-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 212      |
| STAT1                     | 100      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000164c]:KMSDA t6, t5, t4
      [0x80001650]:sd t6, 816(ra)
 -- Signature Address: 0x80003740 Data: 0xB158C99CFB465E65
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -32768
      - rs2_h2_val == 2
      - rs2_h1_val == -21846
      - rs1_h3_val == 0
      - rs1_h2_val == 8
      - rs1_h1_val == -5
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019a8]:KMSDA t6, t5, t4
      [0x800019ac]:sd t6, 1072(ra)
 -- Signature Address: 0x80003840 Data: 0xAC8C0C920D0D4A41
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 0
      - rs2_h2_val == -129
      - rs2_h1_val == -33
      - rs2_h0_val == 8192
      - rs1_h3_val == 32
      - rs1_h2_val == -65
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a14]:KMSDA t6, t5, t4
      [0x80001a18]:sd t6, 1104(ra)
 -- Signature Address: 0x80003860 Data: 0xAC8C0B7B0D0F4241
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -5
      - rs2_h2_val == 0
      - rs2_h0_val == 2
      - rs1_h3_val == -65
      - rs1_h2_val == -4097
      - rs1_h1_val == 2
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a88]:KMSDA t6, t5, t4
      [0x80001a8c]:sd t6, 1136(ra)
 -- Signature Address: 0x80003880 Data: 0x90AC2C4B0E4B4040
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -16385
      - rs2_h1_val == 128
      - rs2_h0_val == 32767
      - rs1_h3_val == 128
      - rs1_h2_val == 8
      - rs1_h1_val == -32768
      - rs1_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001abc]:KMSDA t6, t5, t4
      [0x80001ac0]:sd t6, 1152(ra)
 -- Signature Address: 0x80003890 Data: 0x90AC0A9A0E4BA74A
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
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
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -17
      - rs2_h2_val == 32
      - rs2_h1_val == -8193
      - rs2_h0_val == -257
      - rs1_h3_val == -513
      - rs1_h2_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001af8]:KMSDA t6, t5, t4
      [0x80001afc]:sd t6, 1168(ra)
 -- Signature Address: 0x800038a0 Data: 0x902BCB980E4B8F42
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 256
      - rs2_h2_val == -2
      - rs2_h0_val == 16
      - rs1_h3_val == 32767
      - rs1_h2_val == -8193
      - rs1_h1_val == -513
      - rs1_h0_val == 128






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x30', 'rd : x22', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -8193', 'rs2_h1_val == 0', 'rs2_h0_val == -9', 'rs1_h3_val == -8193', 'rs1_h1_val == 0', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800003d0]:KMSDA s6, t5, t5
	-[0x800003d4]:sd s6, 0(a0)
Current Store : [0x800003d8] : sd t5, 8(a0) -- Store: [0x80003218]:0xDFFFC0000000FFF7




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -65', 'rs2_h1_val == -257', 'rs2_h0_val == 8192', 'rs1_h3_val == -65', 'rs1_h1_val == -257', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000408]:KMSDA a4, a4, a4
	-[0x8000040c]:sd a4, 16(a0)
Current Store : [0x80000410] : sd a4, 24(a0) -- Store: [0x80003228]:0xFFBFEF37FAFE1DFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x19', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 512', 'rs1_h2_val == 256', 'rs1_h1_val == -9', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000444]:KMSDA t6, s9, s3
	-[0x80000448]:sd t6, 32(a0)
Current Store : [0x8000044c] : sd s9, 40(a0) -- Store: [0x80003238]:0xC0000100FFF7FBFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x4', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs2_h3_val == 1', 'rs2_h2_val == -5', 'rs2_h0_val == -2', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x80000478]:KMSDA tp, tp, a3
	-[0x8000047c]:sd tp, 48(a0)
Current Store : [0x80000480] : sd tp, 56(a0) -- Store: [0x80003248]:0x7FFF7FDDFFFDFFE1




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x27', 'rs2 == rd != rs1', 'rs2_h3_val == 8', 'rs2_h2_val == 16384', 'rs2_h1_val == 2', 'rs1_h3_val == 128', 'rs1_h2_val == 16384', 'rs1_h1_val == -21846', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800004b0]:KMSDA s11, s5, s11
	-[0x800004b4]:sd s11, 64(a0)
Current Store : [0x800004b8] : sd s5, 72(a0) -- Store: [0x80003258]:0x00804000AAAA0001




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x2', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h2_val == 1', 'rs2_h1_val == 512', 'rs2_h0_val == -33', 'rs1_h3_val == -17', 'rs1_h2_val == -257', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800004e4]:KMSDA sp, gp, a6
	-[0x800004e8]:sd sp, 80(a0)
Current Store : [0x800004ec] : sd gp, 88(a0) -- Store: [0x80003268]:0xFFEFFEFFDFFFFFFA




Last Coverpoint : ['rs1 : x28', 'rs2 : x12', 'rd : x1', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == -8193', 'rs2_h1_val == -5', 'rs2_h0_val == 512', 'rs1_h2_val == 2', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000518]:KMSDA ra, t3, a2
	-[0x8000051c]:sd ra, 96(a0)
Current Store : [0x80000520] : sd t3, 104(a0) -- Store: [0x80003278]:0xFFFA0002FFDFC000




Last Coverpoint : ['rs1 : x19', 'rs2 : x9', 'rd : x11', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 16384', 'rs2_h1_val == 2048', 'rs2_h0_val == -32768', 'rs1_h3_val == 4096', 'rs1_h2_val == -9', 'rs1_h1_val == 2048', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000560]:KMSDA a1, s3, s1
	-[0x80000564]:sd a1, 112(a0)
Current Store : [0x80000568] : sd s3, 120(a0) -- Store: [0x80003288]:0x1000FFF70800FFEF




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rd : x28', 'rs2_h3_val == 16', 'rs2_h0_val == -5', 'rs1_h3_val == 1024', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000059c]:KMSDA t3, t0, tp
	-[0x800005a0]:sd t3, 128(a0)
Current Store : [0x800005a4] : sd t0, 136(a0) -- Store: [0x80003298]:0x0400FFF9AAAAFFFB




Last Coverpoint : ['rs1 : x2', 'rs2 : x29', 'rd : x7', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs1_h3_val == -513', 'rs1_h2_val == -2049', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005d8]:KMSDA t2, sp, t4
	-[0x800005dc]:sd t2, 144(a0)
Current Store : [0x800005e0] : sd sp, 152(a0) -- Store: [0x800032a8]:0xFDFFF7FF3FFF0080




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x6', 'rs2_h3_val == -21846', 'rs2_h1_val == 21845', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000614]:KMSDA t1, fp, t6
	-[0x80000618]:sd t1, 160(a0)
Current Store : [0x8000061c] : sd fp, 168(a0) -- Store: [0x800032b8]:0xFFFAFFF83FFFFFF7




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x9', 'rs2_h3_val == 21845', 'rs2_h1_val == 32767', 'rs1_h3_val == -32768', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000654]:KMSDA s1, a2, s10
	-[0x80000658]:sd s1, 176(a0)
Current Store : [0x8000065c] : sd a2, 184(a0) -- Store: [0x800032c8]:0x80000005EFFFFFFC




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x15', 'rs2_h3_val == 32767', 'rs2_h2_val == -32768', 'rs2_h1_val == 8', 'rs2_h0_val == -65', 'rs1_h2_val == 8', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000690]:KMSDA a5, t1, a1
	-[0x80000694]:sd a5, 192(a0)
Current Store : [0x80000698] : sd t1, 200(a0) -- Store: [0x800032d8]:0x100000080001FFFA




Last Coverpoint : ['rs1 : x27', 'rs2 : x0', 'rd : x29', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -32768', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800006cc]:KMSDA t4, s11, zero
	-[0x800006d0]:sd t4, 208(a0)
Current Store : [0x800006d4] : sd s11, 216(a0) -- Store: [0x800032e8]:0x008000088000FDFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x7', 'rd : x20', 'rs2_h3_val == -4097', 'rs2_h2_val == -65', 'rs2_h1_val == 8192', 'rs2_h0_val == 21845', 'rs1_h2_val == -17', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000708]:KMSDA s4, a3, t2
	-[0x8000070c]:sd s4, 224(a0)
Current Store : [0x80000710] : sd a3, 232(a0) -- Store: [0x800032f8]:0xFFFAFFEFFFF80000




Last Coverpoint : ['rs1 : x1', 'rs2 : x17', 'rd : x13', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -2049', 'rs2_h1_val == -4097', 'rs2_h0_val == -17', 'rs1_h3_val == 256', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000744]:KMSDA a3, ra, a7
	-[0x80000748]:sd a3, 240(a0)
Current Store : [0x8000074c] : sd ra, 248(a0) -- Store: [0x80003308]:0x0100FFEF0100FFFA




Last Coverpoint : ['rs1 : x24', 'rs2 : x1', 'rd : x23', 'rs2_h3_val == -1025', 'rs1_h2_val == -33', 'rs1_h1_val == 1024', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000788]:KMSDA s7, s8, ra
	-[0x8000078c]:sd s7, 0(tp)
Current Store : [0x80000790] : sd s8, 8(tp) -- Store: [0x80003318]:0x0005FFDF0400FFBF




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x19', 'rs1_h0_val == -32768', 'rs2_h3_val == -513', 'rs2_h2_val == 32', 'rs2_h1_val == -1', 'rs1_h3_val == 4', 'rs1_h2_val == -1', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800007b8]:KMSDA s3, t6, fp
	-[0x800007bc]:sd s3, 16(tp)
Current Store : [0x800007c0] : sd t6, 24(tp) -- Store: [0x80003328]:0x0004FFFF00808000




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x17', 'rs2_h3_val == -257', 'rs2_h1_val == -33', 'rs2_h0_val == -257', 'rs1_h2_val == -32768', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800007f0]:KMSDA a7, s1, sp
	-[0x800007f4]:sd a7, 32(tp)
Current Store : [0x800007f8] : sd s1, 40(tp) -- Store: [0x80003338]:0xFFFA8000FBFF0006




Last Coverpoint : ['rs1 : x16', 'rs2 : x21', 'rd : x5', 'rs2_h3_val == -129', 'rs2_h2_val == -33', 'rs2_h1_val == -2049', 'rs2_h0_val == -129', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000824]:KMSDA t0, a6, s5
	-[0x80000828]:sd t0, 48(tp)
Current Store : [0x8000082c] : sd a6, 56(tp) -- Store: [0x80003348]:0x01000100FFF7AAAA




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x3', 'rs2_h3_val == -33', 'rs2_h2_val == 4', 'rs2_h1_val == 1', 'rs2_h0_val == 16', 'rs1_h3_val == 1', 'rs1_h2_val == 4', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000860]:KMSDA gp, s10, s2
	-[0x80000864]:sd gp, 64(tp)
Current Store : [0x80000868] : sd s10, 72(tp) -- Store: [0x80003358]:0x000100040008FFF8




Last Coverpoint : ['rs1 : x0', 'rs2 : x28', 'rd : x16', 'rs2_h3_val == -17', 'rs2_h1_val == -8193', 'rs1_h3_val == 0', 'rs1_h2_val == 0']
Last Code Sequence : 
	-[0x80000894]:KMSDA a6, zero, t3
	-[0x80000898]:sd a6, 80(tp)
Current Store : [0x8000089c] : sd zero, 88(tp) -- Store: [0x80003368]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x10', 'rd : x8', 'rs2_h3_val == -9', 'rs2_h2_val == -9', 'rs1_h3_val == -4097', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008d4]:KMSDA fp, s4, a0
	-[0x800008d8]:sd fp, 96(tp)
Current Store : [0x800008dc] : sd s4, 104(tp) -- Store: [0x80003378]:0xEFFFFFFADFFF5555




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x12', 'rs2_h3_val == -5', 'rs2_h2_val == 1024', 'rs2_h1_val == -2', 'rs1_h3_val == -5', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x8000090c]:KMSDA a2, s2, t0
	-[0x80000910]:sd a2, 112(tp)
Current Store : [0x80000914] : sd s2, 120(tp) -- Store: [0x80003388]:0xFFFB0200FFFC0000




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x26', 'rs2_h3_val == -3', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000944]:KMSDA s10, a1, gp
	-[0x80000948]:sd s10, 128(tp)
Current Store : [0x8000094c] : sd a1, 136(tp) -- Store: [0x80003398]:0x0080FFF6FF7F8000




Last Coverpoint : ['rs1 : x15', 'rs2 : x20', 'rd : x21', 'rs2_h3_val == -2', 'rs2_h2_val == -16385', 'rs1_h1_val == -3', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000974]:KMSDA s5, a5, s4
	-[0x80000978]:sd s5, 144(tp)
Current Store : [0x8000097c] : sd a5, 152(tp) -- Store: [0x800033a8]:0x01000000FFFD4000




Last Coverpoint : ['rs1 : x22', 'rs2 : x15', 'rd : x30', 'rs2_h3_val == -32768', 'rs2_h2_val == -21846', 'rs1_h2_val == -129', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800009ac]:KMSDA t5, s6, a5
	-[0x800009b0]:sd t5, 160(tp)
Current Store : [0x800009b4] : sd s6, 168(tp) -- Store: [0x800033b8]:0xEFFFFF7FFEFFFFFD




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rd : x24', 'rs2_h3_val == 8192', 'rs2_h2_val == 256', 'rs2_h1_val == -3', 'rs1_h3_val == 21845', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x800009e4]:KMSDA s8, t2, s7
	-[0x800009e8]:sd s8, 176(tp)
Current Store : [0x800009ec] : sd t2, 184(tp) -- Store: [0x800033c8]:0x5555FBFF00052000




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rd : x10', 'rs2_h3_val == 4096', 'rs2_h2_val == 32767', 'rs1_h3_val == 64']
Last Code Sequence : 
	-[0x80000a20]:KMSDA a0, a7, s8
	-[0x80000a24]:sd a0, 192(tp)
Current Store : [0x80000a28] : sd a7, 200(tp) -- Store: [0x800033d8]:0x0040FFFA0080FDFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x18', 'rs2_h3_val == 2048', 'rs1_h2_val == -513', 'rs1_h1_val == 4096', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000a5c]:KMSDA s2, s7, s9
	-[0x80000a60]:sd s2, 208(tp)
Current Store : [0x80000a64] : sd s7, 216(tp) -- Store: [0x800033e8]:0xFFFAFDFF1000DFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x6', 'rd : x25', 'rs2_h3_val == 1024', 'rs2_h2_val == 16']
Last Code Sequence : 
	-[0x80000a94]:KMSDA s9, a0, t1
	-[0x80000a98]:sd s9, 224(tp)
Current Store : [0x80000a9c] : sd a0, 232(tp) -- Store: [0x800033f8]:0x0006FFFCFFF7FFFA




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x0', 'rs2_h3_val == 256', 'rs2_h2_val == -2', 'rs1_h2_val == -8193', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000ad0]:KMSDA zero, t4, s6
	-[0x80000ad4]:sd zero, 240(tp)
Current Store : [0x80000ad8] : sd t4, 248(tp) -- Store: [0x80003408]:0x7FFFDFFFFDFF0080




Last Coverpoint : ['rs2_h3_val == 128', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000b0c]:KMSDA t6, t5, t4
	-[0x80000b10]:sd t6, 0(ra)
Current Store : [0x80000b14] : sd t5, 8(ra) -- Store: [0x80003418]:0xFFFC00060003FFFE




Last Coverpoint : ['rs2_h3_val == 64', 'rs2_h1_val == -9', 'rs2_h0_val == -8193', 'rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80000b44]:KMSDA t6, t5, t4
	-[0x80000b48]:sd t6, 16(ra)
Current Store : [0x80000b4c] : sd t5, 24(ra) -- Store: [0x80003428]:0xAAAA000400085555




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == -129', 'rs1_h3_val == 2', 'rs1_h1_val == -65', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000b74]:KMSDA t6, t5, t4
	-[0x80000b78]:sd t6, 32(ra)
Current Store : [0x80000b7c] : sd t5, 40(ra) -- Store: [0x80003438]:0x00023FFFFFBF0100




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == 16384', 'rs1_h3_val == -1025', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000bac]:KMSDA t6, t5, t4
	-[0x80000bb0]:sd t6, 48(ra)
Current Store : [0x80000bb4] : sd t5, 56(ra) -- Store: [0x80003448]:0xFBFFFEFF00010002




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000be4]:KMSDA t6, t5, t4
	-[0x80000be8]:sd t6, 64(ra)
Current Store : [0x80000bec] : sd t5, 72(ra) -- Store: [0x80003458]:0x00050005FFFB5555




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h1_val == -2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000c18]:KMSDA t6, t5, t4
	-[0x80000c1c]:sd t6, 80(ra)
Current Store : [0x80000c20] : sd t5, 88(ra) -- Store: [0x80003468]:0x1000FFEFFFFEFFDF




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000c5c]:KMSDA t6, t5, t4
	-[0x80000c60]:sd t6, 96(ra)
Current Store : [0x80000c64] : sd t5, 104(ra) -- Store: [0x80003478]:0xC0003FFF4000FFF7




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h2_val == -3', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000c90]:KMSDA t6, t5, t4
	-[0x80000c94]:sd t6, 112(ra)
Current Store : [0x80000c98] : sd t5, 120(ra) -- Store: [0x80003488]:0x0080FFFD20000005




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000cc8]:KMSDA t6, t5, t4
	-[0x80000ccc]:sd t6, 128(ra)
Current Store : [0x80000cd0] : sd t5, 136(ra) -- Store: [0x80003498]:0xFDFF000702000003




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h3_val == -1', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000cfc]:KMSDA t6, t5, t4
	-[0x80000d00]:sd t6, 144(ra)
Current Store : [0x80000d04] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFFFFFDFF0040FFDF




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h2_val == 128', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d38]:KMSDA t6, t5, t4
	-[0x80000d3c]:sd t6, 160(ra)
Current Store : [0x80000d40] : sd t5, 168(ra) -- Store: [0x800034b8]:0x000500800010FFF6




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h2_val == -4097', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000d70]:KMSDA t6, t5, t4
	-[0x80000d74]:sd t6, 176(ra)
Current Store : [0x80000d78] : sd t5, 184(ra) -- Store: [0x800034c8]:0x0004EFFF00048000




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h3_val == 2048', 'rs1_h2_val == 64', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000da8]:KMSDA t6, t5, t4
	-[0x80000dac]:sd t6, 192(ra)
Current Store : [0x80000db0] : sd t5, 200(ra) -- Store: [0x800034d8]:0x0800004000022000




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000de0]:KMSDA t6, t5, t4
	-[0x80000de4]:sd t6, 208(ra)
Current Store : [0x80000de8] : sd t5, 216(ra) -- Store: [0x800034e8]:0x080000070000EFFF




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000e1c]:KMSDA t6, t5, t4
	-[0x80000e20]:sd t6, 224(ra)
Current Store : [0x80000e24] : sd t5, 232(ra) -- Store: [0x800034f8]:0xDFFF8000FFFF0080




Last Coverpoint : ['rs2_h1_val == -21846', 'rs2_h0_val == 64', 'rs1_h2_val == -2', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000e58]:KMSDA t6, t5, t4
	-[0x80000e5c]:sd t6, 240(ra)
Current Store : [0x80000e60] : sd t5, 248(ra) -- Store: [0x80003508]:0xDFFFFFFE00027FFF




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == -513', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000e94]:KMSDA t6, t5, t4
	-[0x80000e98]:sd t6, 256(ra)
Current Store : [0x80000e9c] : sd t5, 264(ra) -- Store: [0x80003518]:0x0005FFDF2000BFFF




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000ed0]:KMSDA t6, t5, t4
	-[0x80000ed4]:sd t6, 272(ra)
Current Store : [0x80000ed8] : sd t5, 280(ra) -- Store: [0x80003528]:0xFFF901003FFFF7FF




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h0_val == 128', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000f0c]:KMSDA t6, t5, t4
	-[0x80000f10]:sd t6, 288(ra)
Current Store : [0x80000f14] : sd t5, 296(ra) -- Store: [0x80003538]:0xFDFF00800080FF7F




Last Coverpoint : ['rs2_h3_val == -16385', 'rs1_h2_val == 4096', 'rs1_h1_val == -16385', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f40]:KMSDA t6, t5, t4
	-[0x80000f44]:sd t6, 304(ra)
Current Store : [0x80000f48] : sd t5, 312(ra) -- Store: [0x80003548]:0xEFFF1000BFFF1000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 21845', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000f78]:KMSDA t6, t5, t4
	-[0x80000f7c]:sd t6, 320(ra)
Current Store : [0x80000f80] : sd t5, 328(ra) -- Store: [0x80003558]:0x0040FBFF08000800




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000fb4]:KMSDA t6, t5, t4
	-[0x80000fb8]:sd t6, 336(ra)
Current Store : [0x80000fbc] : sd t5, 344(ra) -- Store: [0x80003568]:0x1000FFEFAAAA0400




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == 4', 'rs1_h2_val == 16', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000ff0]:KMSDA t6, t5, t4
	-[0x80000ff4]:sd t6, 352(ra)
Current Store : [0x80000ff8] : sd t5, 360(ra) -- Store: [0x80003578]:0x0400001000040200




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h2_val == 32', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000102c]:KMSDA t6, t5, t4
	-[0x80001030]:sd t6, 368(ra)
Current Store : [0x80001034] : sd t5, 376(ra) -- Store: [0x80003588]:0xDFFF0020FDFF0040




Last Coverpoint : ['rs1_h3_val == -16385', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80001064]:KMSDA t6, t5, t4
	-[0x80001068]:sd t6, 384(ra)
Current Store : [0x8000106c] : sd t5, 392(ra) -- Store: [0x80003598]:0xBFFF8000FFBF0020




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800010a8]:KMSDA t6, t5, t4
	-[0x800010ac]:sd t6, 400(ra)
Current Store : [0x800010b0] : sd t5, 408(ra) -- Store: [0x800035a8]:0xDFFF0002FFFD0010




Last Coverpoint : ['rs2_h2_val == 8192', 'rs1_h3_val == -257', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800010e0]:KMSDA t6, t5, t4
	-[0x800010e4]:sd t6, 416(ra)
Current Store : [0x800010e8] : sd t5, 424(ra) -- Store: [0x800035b8]:0xFEFFFFFD00080008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000111c]:KMSDA t6, t5, t4
	-[0x80001120]:sd t6, 432(ra)
Current Store : [0x80001124] : sd t5, 440(ra) -- Store: [0x800035c8]:0x0006008000010004




Last Coverpoint : ['rs2_h1_val == 1024', 'rs2_h0_val == -21846', 'rs1_h3_val == -3', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001158]:KMSDA t6, t5, t4
	-[0x8000115c]:sd t6, 448(ra)
Current Store : [0x80001160] : sd t5, 456(ra) -- Store: [0x800035d8]:0xFFFD0009FFEF0006




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001194]:KMSDA t6, t5, t4
	-[0x80001198]:sd t6, 464(ra)
Current Store : [0x8000119c] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFFB55550003FFBF




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800011c4]:KMSDA t6, t5, t4
	-[0x800011c8]:sd t6, 480(ra)
Current Store : [0x800011cc] : sd t5, 488(ra) -- Store: [0x800035f8]:0xFFEFC00010000000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -1025', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001200]:KMSDA t6, t5, t4
	-[0x80001204]:sd t6, 496(ra)
Current Store : [0x80001208] : sd t5, 504(ra) -- Store: [0x80003608]:0x8000FFEFFF7F0800




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80001234]:KMSDA t6, t5, t4
	-[0x80001238]:sd t6, 512(ra)
Current Store : [0x8000123c] : sd t5, 520(ra) -- Store: [0x80003618]:0xFFFCFFF84000FF7F




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x8000126c]:KMSDA t6, t5, t4
	-[0x80001270]:sd t6, 528(ra)
Current Store : [0x80001274] : sd t5, 536(ra) -- Store: [0x80003628]:0xC0000004FFFAFFF7




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800012a0]:KMSDA t6, t5, t4
	-[0x800012a4]:sd t6, 544(ra)
Current Store : [0x800012a8] : sd t5, 552(ra) -- Store: [0x80003638]:0x8000000200038000




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800012d4]:KMSDA t6, t5, t4
	-[0x800012d8]:sd t6, 560(ra)
Current Store : [0x800012dc] : sd t5, 568(ra) -- Store: [0x80003648]:0xFFF90200FFFCFFFC




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80001310]:KMSDA t6, t5, t4
	-[0x80001314]:sd t6, 576(ra)
Current Store : [0x80001318] : sd t5, 584(ra) -- Store: [0x80003658]:0x10000002FFF7BFFF




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x80001340]:KMSDA t6, t5, t4
	-[0x80001344]:sd t6, 592(ra)
Current Store : [0x80001348] : sd t5, 600(ra) -- Store: [0x80003668]:0xFF7F0005DFFFFF7F




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x8000137c]:KMSDA t6, t5, t4
	-[0x80001380]:sd t6, 608(ra)
Current Store : [0x80001384] : sd t5, 616(ra) -- Store: [0x80003678]:0xFF7F00060010FF7F




Last Coverpoint : ['rs1_h3_val == -2049', 'rs1_h2_val == 1024', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800013b4]:KMSDA t6, t5, t4
	-[0x800013b8]:sd t6, 624(ra)
Current Store : [0x800013bc] : sd t5, 632(ra) -- Store: [0x80003688]:0xF7FF0400FFF7FEFF




Last Coverpoint : ['rs1_h3_val == -33']
Last Code Sequence : 
	-[0x800013e0]:KMSDA t6, t5, t4
	-[0x800013e4]:sd t6, 640(ra)
Current Store : [0x800013e8] : sd t5, 648(ra) -- Store: [0x80003698]:0xFFDF00203FFFFFF9




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001410]:KMSDA t6, t5, t4
	-[0x80001414]:sd t6, 656(ra)
Current Store : [0x80001418] : sd t5, 664(ra) -- Store: [0x800036a8]:0x7FFF1000FFFFFFFF




Last Coverpoint : ['rs1_h3_val == -9', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80001444]:KMSDA t6, t5, t4
	-[0x80001448]:sd t6, 672(ra)
Current Store : [0x8000144c] : sd t5, 680(ra) -- Store: [0x800036b8]:0xFFF708000006FFFA




Last Coverpoint : ['rs1_h3_val == -2', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80001480]:KMSDA t6, t5, t4
	-[0x80001484]:sd t6, 688(ra)
Current Store : [0x80001488] : sd t5, 696(ra) -- Store: [0x800036c8]:0xFFFEBFFFEFFF0002




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x800014b8]:KMSDA t6, t5, t4
	-[0x800014bc]:sd t6, 704(ra)
Current Store : [0x800014c0] : sd t5, 712(ra) -- Store: [0x800036d8]:0x02000080C000FFF8




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x800014ec]:KMSDA t6, t5, t4
	-[0x800014f0]:sd t6, 720(ra)
Current Store : [0x800014f4] : sd t5, 728(ra) -- Store: [0x800036e8]:0xFF7FFFEF00070080




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80001528]:KMSDA t6, t5, t4
	-[0x8000152c]:sd t6, 736(ra)
Current Store : [0x80001530] : sd t5, 744(ra) -- Store: [0x800036f8]:0x7FFF00070080FDFF




Last Coverpoint : ['rs1_h3_val == 32', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000155c]:KMSDA t6, t5, t4
	-[0x80001560]:sd t6, 752(ra)
Current Store : [0x80001564] : sd t5, 760(ra) -- Store: [0x80003708]:0x0020FFF77FFFFFF6




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x80001598]:KMSDA t6, t5, t4
	-[0x8000159c]:sd t6, 768(ra)
Current Store : [0x800015a0] : sd t5, 776(ra) -- Store: [0x80003718]:0x0010FFFE0006EFFF




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x800015d8]:KMSDA t6, t5, t4
	-[0x800015dc]:sd t6, 784(ra)
Current Store : [0x800015e0] : sd t5, 792(ra) -- Store: [0x80003728]:0x000800033FFF0200




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80001614]:KMSDA t6, t5, t4
	-[0x80001618]:sd t6, 800(ra)
Current Store : [0x8000161c] : sd t5, 808(ra) -- Store: [0x80003738]:0xFFFAF7FFC0000100




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -32768', 'rs2_h2_val == 2', 'rs2_h1_val == -21846', 'rs1_h3_val == 0', 'rs1_h2_val == 8', 'rs1_h1_val == -5', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000164c]:KMSDA t6, t5, t4
	-[0x80001650]:sd t6, 816(ra)
Current Store : [0x80001654] : sd t5, 824(ra) -- Store: [0x80003748]:0x00000008FFFB0040




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001680]:KMSDA t6, t5, t4
	-[0x80001684]:sd t6, 832(ra)
Current Store : [0x80001688] : sd t5, 840(ra) -- Store: [0x80003758]:0xFFF8AAAA0007FFFF




Last Coverpoint : ['rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x800016bc]:KMSDA t6, t5, t4
	-[0x800016c0]:sd t6, 848(ra)
Current Store : [0x800016c4] : sd t5, 856(ra) -- Store: [0x80003768]:0x10007FFFFFFF0009




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x800016ec]:KMSDA t6, t5, t4
	-[0x800016f0]:sd t6, 864(ra)
Current Store : [0x800016f4] : sd t5, 872(ra) -- Store: [0x80003778]:0xFF7F100004007FFF




Last Coverpoint : ['rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001728]:KMSDA t6, t5, t4
	-[0x8000172c]:sd t6, 880(ra)
Current Store : [0x80001730] : sd t5, 888(ra) -- Store: [0x80003788]:0x00012000FFFCFFFE




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x8000175c]:KMSDA t6, t5, t4
	-[0x80001760]:sd t6, 896(ra)
Current Store : [0x80001764] : sd t5, 904(ra) -- Store: [0x80003798]:0xFFFBFF7FEFFFFBFF




Last Coverpoint : ['rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80001798]:KMSDA t6, t5, t4
	-[0x8000179c]:sd t6, 912(ra)
Current Store : [0x800017a0] : sd t5, 920(ra) -- Store: [0x800037a8]:0xFFFE00020009F7FF




Last Coverpoint : ['rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800017cc]:KMSDA t6, t5, t4
	-[0x800017d0]:sd t6, 928(ra)
Current Store : [0x800017d4] : sd t5, 936(ra) -- Store: [0x800037b8]:0x000000010800FEFF




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80001800]:KMSDA t6, t5, t4
	-[0x80001804]:sd t6, 944(ra)
Current Store : [0x80001808] : sd t5, 952(ra) -- Store: [0x800037c8]:0x2000000400050002




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x8000183c]:KMSDA t6, t5, t4
	-[0x80001840]:sd t6, 960(ra)
Current Store : [0x80001844] : sd t5, 968(ra) -- Store: [0x800037d8]:0x8000EFFF5555FFDF




Last Coverpoint : ['rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80001870]:KMSDA t6, t5, t4
	-[0x80001874]:sd t6, 976(ra)
Current Store : [0x80001878] : sd t5, 984(ra) -- Store: [0x800037e8]:0x4000FEFF00000002




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800018a4]:KMSDA t6, t5, t4
	-[0x800018a8]:sd t6, 992(ra)
Current Store : [0x800018ac] : sd t5, 1000(ra) -- Store: [0x800037f8]:0x0000FBFF00020007




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x800018cc]:KMSDA t6, t5, t4
	-[0x800018d0]:sd t6, 1008(ra)
Current Store : [0x800018d4] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFFFD0400DFFFFEFF




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x80001900]:KMSDA t6, t5, t4
	-[0x80001904]:sd t6, 1024(ra)
Current Store : [0x80001908] : sd t5, 1032(ra) -- Store: [0x80003818]:0x00040010FEFF3FFF




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000193c]:KMSDA t6, t5, t4
	-[0x80001940]:sd t6, 1040(ra)
Current Store : [0x80001944] : sd t5, 1048(ra) -- Store: [0x80003828]:0xFFEF0020F7FF0005




Last Coverpoint : ['rs1_h2_val == -65']
Last Code Sequence : 
	-[0x80001974]:KMSDA t6, t5, t4
	-[0x80001978]:sd t6, 1056(ra)
Current Store : [0x8000197c] : sd t5, 1064(ra) -- Store: [0x80003838]:0xFFFBFFBF00084000




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 0', 'rs2_h2_val == -129', 'rs2_h1_val == -33', 'rs2_h0_val == 8192', 'rs1_h3_val == 32', 'rs1_h2_val == -65', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800019a8]:KMSDA t6, t5, t4
	-[0x800019ac]:sd t6, 1072(ra)
Current Store : [0x800019b0] : sd t5, 1080(ra) -- Store: [0x80003848]:0x0020FFBFFFF60080




Last Coverpoint : ['rs1_h2_val == -5']
Last Code Sequence : 
	-[0x800019e0]:KMSDA t6, t5, t4
	-[0x800019e4]:sd t6, 1088(ra)
Current Store : [0x800019e8] : sd t5, 1096(ra) -- Store: [0x80003858]:0x0010FFFBC000C000




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -5', 'rs2_h2_val == 0', 'rs2_h0_val == 2', 'rs1_h3_val == -65', 'rs1_h2_val == -4097', 'rs1_h1_val == 2', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80001a14]:KMSDA t6, t5, t4
	-[0x80001a18]:sd t6, 1104(ra)
Current Store : [0x80001a1c] : sd t5, 1112(ra) -- Store: [0x80003868]:0xFFBFEFFF00020400




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80001a4c]:KMSDA t6, t5, t4
	-[0x80001a50]:sd t6, 1120(ra)
Current Store : [0x80001a54] : sd t5, 1128(ra) -- Store: [0x80003878]:0x2000800000208000




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -16385', 'rs2_h1_val == 128', 'rs2_h0_val == 32767', 'rs1_h3_val == 128', 'rs1_h2_val == 8', 'rs1_h1_val == -32768', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80001a88]:KMSDA t6, t5, t4
	-[0x80001a8c]:sd t6, 1136(ra)
Current Store : [0x80001a90] : sd t5, 1144(ra) -- Store: [0x80003888]:0x008000088000FDFF




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -17', 'rs2_h2_val == 32', 'rs2_h1_val == -8193', 'rs2_h0_val == -257', 'rs1_h3_val == -513', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80001abc]:KMSDA t6, t5, t4
	-[0x80001ac0]:sd t6, 1152(ra)
Current Store : [0x80001ac4] : sd t5, 1160(ra) -- Store: [0x80003898]:0xFDFFFFFD00030007




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == -2', 'rs2_h0_val == 16', 'rs1_h3_val == 32767', 'rs1_h2_val == -8193', 'rs1_h1_val == -513', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001af8]:KMSDA t6, t5, t4
	-[0x80001afc]:sd t6, 1168(ra)
Current Store : [0x80001b00] : sd t5, 1176(ra) -- Store: [0x800038a8]:0x7FFFDFFFFDFF0080





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

|s.no|            signature             |                                                                                                                                                                                                                                         coverpoints                                                                                                                                                                                                                                         |                                 code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x59F52FF66DF56FA6|- opcode : kmsda<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 0<br> - rs2_h0_val == -9<br> - rs1_h3_val == -8193<br> - rs1_h1_val == 0<br> - rs1_h0_val == -9<br> |[0x800003d0]:KMSDA s6, t5, t5<br> [0x800003d4]:sd s6, 0(a0)<br>       |
|   2|[0x80003220]<br>0xFFBFEF37FAFE1DFF|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -65<br> - rs2_h1_val == -257<br> - rs2_h0_val == 8192<br> - rs1_h3_val == -65<br> - rs1_h1_val == -257<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                    |[0x80000408]:KMSDA a4, a4, a4<br> [0x8000040c]:sd a4, 16(a0)<br>      |
|   3|[0x80003230]<br>0xFC36F7B7FBB6EAE0|- rs1 : x25<br> - rs2 : x19<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 512<br> - rs1_h2_val == 256<br> - rs1_h1_val == -9<br> - rs1_h0_val == -1025<br>                                            |[0x80000444]:KMSDA t6, s9, s3<br> [0x80000448]:sd t6, 32(a0)<br>      |
|   4|[0x80003240]<br>0x7FFF7FDDFFFDFFE1|- rs1 : x4<br> - rs2 : x13<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs2_h3_val == 1<br> - rs2_h2_val == -5<br> - rs2_h0_val == -2<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                    |[0x80000478]:KMSDA tp, tp, a3<br> [0x8000047c]:sd tp, 48(a0)<br>      |
|   5|[0x80003250]<br>0xF0083C000002AAAC|- rs1 : x21<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_h3_val == 8<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 2<br> - rs1_h3_val == 128<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                               |[0x800004b0]:KMSDA s11, s5, s11<br> [0x800004b4]:sd s11, 64(a0)<br>   |
|   6|[0x80003260]<br>0xFF76E068FFB6E090|- rs1 : x3<br> - rs2 : x16<br> - rd : x2<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h2_val == 1<br> - rs2_h1_val == 512<br> - rs2_h0_val == -33<br> - rs1_h3_val == -17<br> - rs1_h2_val == -257<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                        |[0x800004e4]:KMSDA sp, gp, a6<br> [0x800004e8]:sd sp, 80(a0)<br>      |
|   7|[0x80003270]<br>0xFEEDFE7FFF6DBE08|- rs1 : x28<br> - rs2 : x12<br> - rd : x1<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h2_val == -8193<br> - rs2_h1_val == -5<br> - rs2_h0_val == 512<br> - rs1_h2_val == 2<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                         |[0x80000518]:KMSDA ra, t3, a2<br> [0x8000051c]:sd ra, 96(a0)<br>      |
|   8|[0x80003280]<br>0xA77FBB30AB373B6F|- rs1 : x19<br> - rs2 : x9<br> - rd : x11<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -9<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                         |[0x80000560]:KMSDA a1, s3, s1<br> [0x80000564]:sd a1, 112(a0)<br>     |
|   9|[0x80003290]<br>0xFFF9C02CFFE2BFED|- rs1 : x5<br> - rs2 : x4<br> - rd : x28<br> - rs2_h3_val == 16<br> - rs2_h0_val == -5<br> - rs1_h3_val == 1024<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                   |[0x8000059c]:KMSDA t3, t0, tp<br> [0x800005a0]:sd t3, 128(a0)<br>     |
|  10|[0x800032a0]<br>0xB7FC0F0BB7FCBB76|- rs1 : x2<br> - rs2 : x29<br> - rd : x7<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs1_h3_val == -513<br> - rs1_h2_val == -2049<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                      |[0x800005d8]:KMSDA t2, sp, t4<br> [0x800005dc]:sd t2, 144(a0)<br>     |
|  11|[0x800032b0]<br>0xFFFE002480000000|- rs1 : x8<br> - rs2 : x31<br> - rd : x6<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000614]:KMSDA t1, fp, t6<br> [0x80000618]:sd t1, 160(a0)<br>     |
|  12|[0x800032c0]<br>0x6AAA3FFE1000F00B|- rs1 : x12<br> - rs2 : x26<br> - rd : x9<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 32767<br> - rs1_h3_val == -32768<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000654]:KMSDA s1, a2, s10<br> [0x80000658]:sd s1, 176(a0)<br>    |
|  13|[0x800032d0]<br>0xF2BC0BB6FAB7FA28|- rs1 : x6<br> - rs2 : x11<br> - rd : x15<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 8<br> - rs2_h0_val == -65<br> - rs1_h2_val == 8<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                 |[0x80000690]:KMSDA a5, t1, a1<br> [0x80000694]:sd a5, 192(a0)<br>     |
|  14|[0x800032e0]<br>0x00080009FFFCFFF7|- rs1 : x27<br> - rs2 : x0<br> - rd : x29<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                          |[0x800006cc]:KMSDA t4, s11, zero<br> [0x800006d0]:sd t4, 208(a0)<br>  |
|  15|[0x800032f0]<br>0xB7D55B86B7D6BFDD|- rs1 : x13<br> - rs2 : x7<br> - rd : x20<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -65<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 21845<br> - rs1_h2_val == -17<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                             |[0x80000708]:KMSDA s4, a3, t2<br> [0x8000070c]:sd s4, 224(a0)<br>     |
|  16|[0x80003300]<br>0x0000E0DE0008009A|- rs1 : x1<br> - rs2 : x17<br> - rd : x13<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -17<br> - rs1_h3_val == 256<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                            |[0x80000744]:KMSDA a3, ra, a7<br> [0x80000748]:sd a3, 240(a0)<br>     |
|  17|[0x80003310]<br>0xB6FACAF8B6FA8B7A|- rs1 : x24<br> - rs2 : x1<br> - rd : x23<br> - rs2_h3_val == -1025<br> - rs1_h2_val == -33<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000788]:KMSDA s7, s8, ra<br> [0x8000078c]:sd s7, 0(tp)<br>       |
|  18|[0x80003320]<br>0x1001081B07FD806F|- rs1 : x31<br> - rs2 : x8<br> - rd : x19<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -513<br> - rs2_h2_val == 32<br> - rs2_h1_val == -1<br> - rs1_h3_val == 4<br> - rs1_h2_val == -1<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                         |[0x800007b8]:KMSDA s3, t6, fp<br> [0x800007bc]:sd s3, 16(tp)<br>      |
|  19|[0x80003330]<br>0xD7FFD9F9EFFF81D4|- rs1 : x9<br> - rs2 : x2<br> - rd : x17<br> - rs2_h3_val == -257<br> - rs2_h1_val == -33<br> - rs2_h0_val == -257<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                  |[0x800007f0]:KMSDA a7, s1, sp<br> [0x800007f4]:sd a7, 32(tp)<br>      |
|  20|[0x80003340]<br>0x0401A1F9AA7FB79C|- rs1 : x16<br> - rs2 : x21<br> - rd : x5<br> - rs2_h3_val == -129<br> - rs2_h2_val == -33<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -129<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                 |[0x80000824]:KMSDA t0, a6, s5<br> [0x80000828]:sd t0, 48(tp)<br>      |
|  21|[0x80003350]<br>0xFFEFFF10E0000072|- rs1 : x26<br> - rs2 : x18<br> - rd : x3<br> - rs2_h3_val == -33<br> - rs2_h2_val == 4<br> - rs2_h1_val == 1<br> - rs2_h0_val == 16<br> - rs1_h3_val == 1<br> - rs1_h2_val == 4<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                   |[0x80000860]:KMSDA gp, s10, s2<br> [0x80000864]:sd gp, 64(tp)<br>     |
|  22|[0x80003360]<br>0x01000100FFF7AAAA|- rs1 : x0<br> - rs2 : x28<br> - rd : x16<br> - rs2_h3_val == -17<br> - rs2_h1_val == -8193<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                  |[0x80000894]:KMSDA a6, zero, t3<br> [0x80000898]:sd a6, 80(tp)<br>    |
|  23|[0x80003370]<br>0xFDFE6FE1EAAB7551|- rs1 : x20<br> - rs2 : x10<br> - rd : x8<br> - rs2_h3_val == -9<br> - rs2_h2_val == -9<br> - rs1_h3_val == -4097<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                              |[0x800008d4]:KMSDA fp, s4, a0<br> [0x800008d8]:sd fp, 96(tp)<br>      |
|  24|[0x80003380]<br>0x80000000EFFFFFF4|- rs1 : x18<br> - rs2 : x5<br> - rd : x12<br> - rs2_h3_val == -5<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -2<br> - rs1_h3_val == -5<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                          |[0x8000090c]:KMSDA a2, s2, t0<br> [0x80000910]:sd a2, 112(tp)<br>     |
|  25|[0x80003390]<br>0x000101ACFF887AEE|- rs1 : x11<br> - rs2 : x3<br> - rd : x26<br> - rs2_h3_val == -3<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000944]:KMSDA s10, a1, gp<br> [0x80000948]:sd s10, 128(tp)<br>   |
|  26|[0x800033a0]<br>0xFF8001DFF7FE7F67|- rs1 : x15<br> - rs2 : x20<br> - rd : x21<br> - rs2_h3_val == -2<br> - rs2_h2_val == -16385<br> - rs1_h1_val == -3<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000974]:KMSDA s5, a5, s4<br> [0x80000978]:sd s5, 144(tp)<br>     |
|  27|[0x800033b0]<br>0xD7D43FAA000161F9|- rs1 : x22<br> - rs2 : x15<br> - rd : x30<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -21846<br> - rs1_h2_val == -129<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                         |[0x800009ac]:KMSDA t5, s6, a5<br> [0x800009b0]:sd t5, 160(tp)<br>     |
|  28|[0x800033c0]<br>0xF55F60DF04111FCE|- rs1 : x7<br> - rs2 : x23<br> - rd : x24<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 256<br> - rs2_h1_val == -3<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                    |[0x800009e4]:KMSDA s8, t2, s7<br> [0x800009e8]:sd s8, 176(tp)<br>     |
|  29|[0x800033d0]<br>0xFFF6FFF1FFE3608F|- rs1 : x17<br> - rs2 : x24<br> - rd : x10<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 32767<br> - rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000a20]:KMSDA a0, a7, s8<br> [0x80000a24]:sd a0, 192(tp)<br>     |
|  30|[0x800033e0]<br>0x007B6FFF003C7200|- rs1 : x23<br> - rs2 : x25<br> - rd : x18<br> - rs2_h3_val == 2048<br> - rs1_h2_val == -513<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000a5c]:KMSDA s2, s7, s9<br> [0x80000a60]:sd s2, 208(tp)<br>     |
|  31|[0x800033f0]<br>0x0800283FFFF9C1B8|- rs1 : x10<br> - rs2 : x6<br> - rd : x25<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a94]:KMSDA s9, a0, t1<br> [0x80000a98]:sd s9, 224(tp)<br>     |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x22<br> - rd : x0<br> - rs2_h3_val == 256<br> - rs2_h2_val == -2<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000ad0]:KMSDA zero, t4, s6<br> [0x80000ad4]:sd zero, 240(tp)<br> |
|  33|[0x80003410]<br>0x0007020300807A0E|- rs2_h3_val == 128<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b0c]:KMSDA t6, t5, t4<br> [0x80000b10]:sd t6, 0(ra)<br>       |
|  34|[0x80003420]<br>0x001CD7870B2B6FAB|- rs2_h3_val == 64<br> - rs2_h1_val == -9<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b44]:KMSDA t6, t5, t4<br> [0x80000b48]:sd t6, 16(ra)<br>      |
|  35|[0x80003430]<br>0x003D16C60B2B306A|- rs2_h3_val == 32<br> - rs2_h2_val == -129<br> - rs1_h3_val == 2<br> - rs1_h1_val == -65<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b74]:KMSDA t6, t5, t4<br> [0x80000b78]:sd t6, 32(ra)<br>      |
|  36|[0x80003440]<br>0x00412ACA0B2AF06A|- rs2_h3_val == 4<br> - rs2_h0_val == 16384<br> - rs1_h3_val == -1025<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000bac]:KMSDA t6, t5, t4<br> [0x80000bb0]:sd t6, 48(ra)<br>      |
|  37|[0x80003450]<br>0x004129A8008052EA|- rs2_h1_val == 128<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000be4]:KMSDA t6, t5, t4<br> [0x80000be8]:sd t6, 64(ra)<br>      |
|  38|[0x80003460]<br>0x004A49A80080638F|- rs2_h2_val == 4096<br> - rs1_h1_val == -2<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c18]:KMSDA t6, t5, t4<br> [0x80000c1c]:sd t6, 80(ra)<br>      |
|  39|[0x80003470]<br>0x004A492700006146|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c5c]:KMSDA t6, t5, t4<br> [0x80000c60]:sd t6, 96(ra)<br>      |
|  40|[0x80003480]<br>0x004A47B9FFFDE14B|- rs2_h0_val == 32767<br> - rs1_h2_val == -3<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c90]:KMSDA t6, t5, t4<br> [0x80000c94]:sd t6, 112(ra)<br>     |
|  41|[0x80003490]<br>0x004A4FA1FFFDE93F|- rs2_h0_val == 4<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000cc8]:KMSDA t6, t5, t4<br> [0x80000ccc]:sd t6, 128(ra)<br>     |
|  42|[0x800034a0]<br>0x004A54A3FFFDEC01|- rs2_h0_val == 2<br> - rs1_h3_val == -1<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000cfc]:KMSDA t6, t5, t4<br> [0x80000d00]:sd t6, 144(ra)<br>     |
|  43|[0x800034b0]<br>0x00777FA3FFFE3BF1|- rs2_h0_val == 2048<br> - rs1_h2_val == 128<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d38]:KMSDA t6, t5, t4<br> [0x80000d3c]:sd t6, 160(ra)<br>     |
|  44|[0x800034c0]<br>0x0077CFD0FFFEBC15|- rs2_h0_val == 1<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d70]:KMSDA t6, t5, t4<br> [0x80000d74]:sd t6, 176(ra)<br>     |
|  45|[0x800034d0]<br>0xFF67D0100000DD17|- rs2_h1_val == -129<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 64<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000da8]:KMSDA t6, t5, t4<br> [0x80000dac]:sd t6, 192(ra)<br>     |
|  46|[0x800034e0]<br>0xFF69B81700012D1C|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000de0]:KMSDA t6, t5, t4<br> [0x80000de4]:sd t6, 208(ra)<br>     |
|  47|[0x800034f0]<br>0xBF71B857FFFD2D17|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e1c]:KMSDA t6, t5, t4<br> [0x80000e20]:sd t6, 224(ra)<br>     |
|  48|[0x80003500]<br>0xBF711750FFDDD803|- rs2_h1_val == -21846<br> - rs2_h0_val == 64<br> - rs1_h2_val == -2<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e58]:KMSDA t6, t5, t4<br> [0x80000e5c]:sd t6, 240(ra)<br>     |
|  49|[0x80003510]<br>0xBF711785FF3D9602|- rs2_h1_val == 256<br> - rs2_h0_val == -513<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e94]:KMSDA t6, t5, t4<br> [0x80000e98]:sd t6, 256(ra)<br>     |
|  50|[0x80003520]<br>0xBF7158AFFF41E5F3|- rs2_h1_val == -17<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000ed0]:KMSDA t6, t5, t4<br> [0x80000ed4]:sd t6, 272(ra)<br>     |
|  51|[0x80003530]<br>0xBF6F562EFF422973|- rs2_h2_val == 512<br> - rs2_h0_val == 128<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f0c]:KMSDA t6, t5, t4<br> [0x80000f10]:sd t6, 288(ra)<br>     |
|  52|[0x80003540]<br>0xBB73162DEF40E973|- rs2_h3_val == -16385<br> - rs1_h2_val == 4096<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f40]:KMSDA t6, t5, t4<br> [0x80000f44]:sd t6, 304(ra)<br>     |
|  53|[0x80003550]<br>0xBCC8BFC2ED40F173|- rs2_h3_val == -1<br> - rs2_h2_val == 21845<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f78]:KMSDA t6, t5, t4<br> [0x80000f7c]:sd t6, 320(ra)<br>     |
|  54|[0x80003560]<br>0xBCC9073102966573|- rs2_h1_val == 16384<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000fb4]:KMSDA t6, t5, t4<br> [0x80000fb8]:sd t6, 336(ra)<br>     |
|  55|[0x80003570]<br>0xBDC9033101966763|- rs2_h2_val == 64<br> - rs2_h1_val == 4<br> - rs1_h2_val == 16<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ff0]:KMSDA t6, t5, t4<br> [0x80000ff4]:sd t6, 352(ra)<br>     |
|  56|[0x80003580]<br>0xBDC9C27701A76823|- rs2_h0_val == -16385<br> - rs1_h2_val == 32<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000102c]:KMSDA t6, t5, t4<br> [0x80001030]:sd t6, 368(ra)<br>     |
|  57|[0x80003590]<br>0xBDEB42F701A3661B|- rs1_h3_val == -16385<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001064]:KMSDA t6, t5, t4<br> [0x80001068]:sd t6, 384(ra)<br>     |
|  58|[0x800035a0]<br>0xB34025A101A4A628|- rs2_h1_val == -16385<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010a8]:KMSDA t6, t5, t4<br> [0x800010ac]:sd t6, 400(ra)<br>     |
|  59|[0x800035b0]<br>0xB3488DA101A2A640|- rs2_h2_val == 8192<br> - rs1_h3_val == -257<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800010e0]:KMSDA t6, t5, t4<br> [0x800010e4]:sd t6, 416(ra)<br>     |
|  60|[0x800035c0]<br>0xB3460DA301A2A644|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000111c]:KMSDA t6, t5, t4<br> [0x80001120]:sd t6, 432(ra)<br>     |
|  61|[0x800035d0]<br>0xB3460DA601A4EA48|- rs2_h1_val == 1024<br> - rs2_h0_val == -21846<br> - rs1_h3_val == -3<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001158]:KMSDA t6, t5, t4<br> [0x8000115c]:sd t6, 448(ra)<br>     |
|  62|[0x800035e0]<br>0x9DF122F6019FDA08|- rs2_h0_val == -4097<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001194]:KMSDA t6, t5, t4<br> [0x80001198]:sd t6, 464(ra)<br>     |
|  63|[0x800035f0]<br>0x9DEFDEE501A01A08|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800011c4]:KMSDA t6, t5, t4<br> [0x800011c8]:sd t6, 480(ra)<br>     |
|  64|[0x80003600]<br>0x9DF0DF4B01BE1D87|- rs2_h3_val == 2<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001200]:KMSDA t6, t5, t4<br> [0x80001204]:sd t6, 496(ra)<br>     |
|  65|[0x80003610]<br>0x9DF0DF6FF1BE5C04|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001234]:KMSDA t6, t5, t4<br> [0x80001238]:sd t6, 512(ra)<br>     |
|  66|[0x80003620]<br>0x9DEEA773F1C06C04|- rs2_h2_val == -513<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000126c]:KMSDA t6, t5, t4<br> [0x80001270]:sd t6, 528(ra)<br>     |
|  67|[0x80003630]<br>0x9DF33775F3C06F07|- rs2_h2_val == -2049<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012a0]:KMSDA t6, t5, t4<br> [0x800012a4]:sd t6, 544(ra)<br>     |
|  68|[0x80003640]<br>0x9DF32B3DF3C07007|- rs2_h1_val == 32<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012d4]:KMSDA t6, t5, t4<br> [0x800012d8]:sd t6, 560(ra)<br>     |
|  69|[0x80003650]<br>0x9DD32B43F3C22806|- rs2_h2_val == -3<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001310]:KMSDA t6, t5, t4<br> [0x80001314]:sd t6, 576(ra)<br>     |
|  70|[0x80003660]<br>0x9DD34B88E91712B0|- rs2_h2_val == -1<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001340]:KMSDA t6, t5, t4<br> [0x80001344]:sd t6, 592(ra)<br>     |
|  71|[0x80003670]<br>0x9DD330CDE917129F|- rs2_h2_val == -257<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000137c]:KMSDA t6, t5, t4<br> [0x80001380]:sd t6, 608(ra)<br>     |
|  72|[0x80003680]<br>0xA1D3B4CCE8D6D71F|- rs1_h3_val == -2049<br> - rs1_h2_val == 1024<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800013b4]:KMSDA t6, t5, t4<br> [0x800013b8]:sd t6, 624(ra)<br>     |
|  73|[0x80003690]<br>0xA1D193ABE0D6F78F|- rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013e0]:KMSDA t6, t5, t4<br> [0x800013e4]:sd t6, 640(ra)<br>     |
|  74|[0x800036a0]<br>0xA15174ABE0D67794|- rs2_h2_val == 2<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001410]:KMSDA t6, t5, t4<br> [0x80001414]:sd t6, 656(ra)<br>     |
|  75|[0x800036b0]<br>0xA16173A2E0D9779A|- rs1_h3_val == -9<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001444]:KMSDA t6, t5, t4<br> [0x80001448]:sd t6, 672(ra)<br>     |
|  76|[0x800036c0]<br>0xB161C3A2E0E978DC|- rs1_h3_val == -2<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001480]:KMSDA t6, t5, t4<br> [0x80001484]:sd t6, 688(ra)<br>     |
|  77|[0x800036d0]<br>0xB163C522E0E5F8DC|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800014b8]:KMSDA t6, t5, t4<br> [0x800014bc]:sd t6, 704(ra)<br>     |
|  78|[0x800036e0]<br>0xB162B490E0DDF922|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014ec]:KMSDA t6, t5, t4<br> [0x800014f0]:sd t6, 720(ra)<br>     |
|  79|[0x800036f0]<br>0xB15E50A0E033F84C|- rs2_h2_val == -1025<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001528]:KMSDA t6, t5, t4<br> [0x8000152c]:sd t6, 736(ra)<br>     |
|  80|[0x80003700]<br>0xB15E517BE234745F|- rs1_h3_val == 32<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000155c]:KMSDA t6, t5, t4<br> [0x80001560]:sd t6, 752(ra)<br>     |
|  81|[0x80003710]<br>0xB15E51C9E78A1954|- rs2_h1_val == 16<br> - rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001598]:KMSDA t6, t5, t4<br> [0x8000159c]:sd t6, 768(ra)<br>     |
|  82|[0x80003720]<br>0xB15C51BDEB884953|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800015d8]:KMSDA t6, t5, t4<br> [0x800015dc]:sd t6, 784(ra)<br>     |
|  83|[0x80003730]<br>0xB158C9ACFB480A53|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001614]:KMSDA t6, t5, t4<br> [0x80001618]:sd t6, 800(ra)<br>     |
|  84|[0x80003750]<br>0x9C02F46EFB469E7A|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001680]:KMSDA t6, t5, t4<br> [0x80001684]:sd t6, 832(ra)<br>     |
|  85|[0x80003760]<br>0x96AA2475FB469ECB|- rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800016bc]:KMSDA t6, t5, t4<br> [0x800016c0]:sd t6, 848(ra)<br>     |
|  86|[0x80003770]<br>0x962A2271FB46BECB|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800016ec]:KMSDA t6, t5, t4<br> [0x800016f0]:sd t6, 864(ra)<br>     |
|  87|[0x80003780]<br>0x96263272FB46BF13|- rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001728]:KMSDA t6, t5, t4<br> [0x8000172c]:sd t6, 880(ra)<br>     |
|  88|[0x80003790]<br>0x9626366BFD471B10|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000175c]:KMSDA t6, t5, t4<br> [0x80001760]:sd t6, 896(ra)<br>     |
|  89|[0x800037a0]<br>0x962646EDFD4314D8|- rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001798]:KMSDA t6, t5, t4<br> [0x8000179c]:sd t6, 912(ra)<br>     |
|  90|[0x800037b0]<br>0x962646E6FDC49BD7|- rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800017cc]:KMSDA t6, t5, t4<br> [0x800017d0]:sd t6, 928(ra)<br>     |
|  91|[0x800037c0]<br>0x962542E6FDC49897|- rs2_h1_val == 64<br> - rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001800]:KMSDA t6, t5, t4<br> [0x80001804]:sd t6, 944(ra)<br>     |
|  92|[0x800037d0]<br>0x9626F2E9FB19F13C|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000183c]:KMSDA t6, t5, t4<br> [0x80001840]:sd t6, 960(ra)<br>     |
|  93|[0x800037e0]<br>0xAB7C73EAFB19F14A|- rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001870]:KMSDA t6, t5, t4<br> [0x80001874]:sd t6, 976(ra)<br>     |
|  94|[0x800037f0]<br>0xAB8C77EAFB1CB151|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018a4]:KMSDA t6, t5, t4<br> [0x800018a8]:sd t6, 992(ra)<br>     |
|  95|[0x80003800]<br>0xAC8C7B87FD1CC151|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800018cc]:KMSDA t6, t5, t4<br> [0x800018d0]:sd t6, 1008(ra)<br>    |
|  96|[0x80003810]<br>0xAC8C7287FD1CC255|- rs2_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001900]:KMSDA t6, t5, t4<br> [0x80001904]:sd t6, 1024(ra)<br>    |
|  97|[0x80003820]<br>0xAC8C6E76FD1D0BA3|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000193c]:KMSDA t6, t5, t4<br> [0x80001940]:sd t6, 1040(ra)<br>    |
|  98|[0x80003830]<br>0xAC8C2D530D1D4B8B|- rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001974]:KMSDA t6, t5, t4<br> [0x80001978]:sd t6, 1056(ra)<br>    |
|  99|[0x80003850]<br>0xAC8C0CC00D0ECA41|- rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800019e0]:KMSDA t6, t5, t4<br> [0x800019e4]:sd t6, 1088(ra)<br>    |
| 100|[0x80003870]<br>0x908C2B7B0D0AC241|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001a4c]:KMSDA t6, t5, t4<br> [0x80001a50]:sd t6, 1120(ra)<br>    |
