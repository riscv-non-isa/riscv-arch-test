
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b80')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | kstsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kstsa16-01.S    |
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
      [0x800015ac]:KSTSA16 t6, t5, t4
      [0x800015b0]:sd t6, 768(ra)
 -- Signature Address: 0x80003710 Data: 0xFFFC0005000100A0
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 4
      - rs2_h2_val == 4
      - rs2_h0_val == 32
      - rs1_h3_val == 0
      - rs1_h2_val == 1
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015e8]:KSTSA16 t6, t5, t4
      [0x800015ec]:sd t6, 784(ra)
 -- Signature Address: 0x80003720 Data: 0x0004555E5558FFB5
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 1
      - rs2_h1_val == -3
      - rs2_h0_val == -65
      - rs1_h2_val == 21845
      - rs1_h1_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a80]:KSTSA16 t6, t5, t4
      [0x80001a84]:sd t6, 1104(ra)
 -- Signature Address: 0x80003860 Data: 0xAAA5F7FFF008000B
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 21845
      - rs2_h2_val == 0
      - rs2_h1_val == 4096
      - rs1_h2_val == -2049
      - rs1_h1_val == 8
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001abc]:KSTSA16 t6, t5, t4
      [0x80001ac0]:sd t6, 1120(ra)
 -- Signature Address: 0x80003870 Data: 0x00005557FFC2005F
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 21845
      - rs2_h2_val == 21845
      - rs2_h1_val == 64
      - rs2_h0_val == -33
      - rs1_h3_val == 21845
      - rs1_h2_val == 2
      - rs1_h1_val == 2
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b28]:KSTSA16 t6, t5, t4
      [0x80001b2c]:sd t6, 1152(ra)
 -- Signature Address: 0x80003890 Data: 0xAAA73EFE0001FDFE
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val == rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 21845
      - rs2_h1_val == -2
      - rs2_h0_val == -257
      - rs1_h2_val == -257
      - rs1_h1_val == -1
      - rs1_h0_val == -257




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b6c]:KSTSA16 t6, t5, t4
      [0x80001b70]:sd t6, 1168(ra)
 -- Signature Address: 0x800038a0 Data: 0x1FFF2010F7FD0002
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 8192
      - rs2_h2_val == 16
      - rs2_h1_val == 2
      - rs1_h2_val == 8192
      - rs1_h1_val == -2049






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstsa16', 'rs1 : x3', 'rs2 : x3', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -513', 'rs2_h1_val == -2049', 'rs2_h0_val == -1025', 'rs1_h3_val == 32767', 'rs1_h2_val == -513', 'rs1_h1_val == -2049', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800003cc]:KSTSA16 s9, gp, gp
	-[0x800003d0]:sd s9, 0(a2)
Current Store : [0x800003d4] : sd gp, 8(a2) -- Store: [0x80003218]:0x7FFFFDFFF7FFFBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 21845', 'rs2_h1_val == 64', 'rs2_h0_val == -33', 'rs1_h3_val == 21845', 'rs1_h2_val == 21845', 'rs1_h1_val == 64', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000408]:KSTSA16 s6, s6, s6
	-[0x8000040c]:sd s6, 16(a2)
Current Store : [0x80000410] : sd s6, 24(a2) -- Store: [0x80003228]:0x00007FFF0000FFBE




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000444]:KSTSA16 a7, s8, zero
	-[0x80000448]:sd a7, 32(a2)
Current Store : [0x8000044c] : sd s8, 40(a2) -- Store: [0x80003238]:0xFFF800072000FFFA




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x13', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -2049', 'rs2_h2_val == -257', 'rs2_h0_val == -16385', 'rs1_h3_val == 64', 'rs1_h2_val == 64', 'rs1_h1_val == 32', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000480]:KSTSA16 a3, a3, sp
	-[0x80000484]:sd a3, 48(a2)
Current Store : [0x80000488] : sd a3, 56(a2) -- Store: [0x80003248]:0x0841FF3FFFE0B7FE




Last Coverpoint : ['rs1 : x9', 'rs2 : x7', 'rd : x7', 'rs2 == rd != rs1', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h2_val == 64', 'rs2_h1_val == -32768', 'rs2_h0_val == 1', 'rs1_h3_val == -513', 'rs1_h1_val == 16384', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004b4]:KSTSA16 t2, s1, t2
	-[0x800004b8]:sd t2, 64(a2)
Current Store : [0x800004bc] : sd s1, 72(a2) -- Store: [0x80003258]:0xFDFF00404000FEFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h1_val == -2', 'rs2_h0_val == -257', 'rs1_h2_val == -257', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800004e4]:KSTSA16 zero, fp, s3
	-[0x800004e8]:sd zero, 80(a2)
Current Store : [0x800004ec] : sd fp, 88(a2) -- Store: [0x80003268]:0xFFFCFEFFFFFFFEFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x26', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs2_h3_val == -4097', 'rs2_h2_val == -9', 'rs2_h1_val == -257', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x8000051c]:KSTSA16 s10, t0, a4
	-[0x80000520]:sd s10, 96(a2)
Current Store : [0x80000524] : sd t0, 104(a2) -- Store: [0x80003278]:0xFDFF80000003FEFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x17', 'rd : x28', 'rs2_h2_val == -65', 'rs2_h1_val == -17', 'rs1_h3_val == -3', 'rs1_h2_val == -33', 'rs1_h1_val == -17', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000558]:KSTSA16 t3, sp, a7
	-[0x8000055c]:sd t3, 112(a2)
Current Store : [0x80000560] : sd sp, 120(a2) -- Store: [0x80003288]:0xFFFDFFDFFFEFDFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x27', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -1', 'rs2_h2_val == -4097', 'rs2_h1_val == 32767', 'rs2_h0_val == 32', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000584]:KSTSA16 s11, t3, fp
	-[0x80000588]:sd s11, 128(a2)
Current Store : [0x8000058c] : sd t3, 136(a2) -- Store: [0x80003298]:0xFFF83FFFFEFFFEFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x10', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs1_h3_val == 4096', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005c8]:KSTSA16 a0, s7, t3
	-[0x800005cc]:sd a0, 144(a2)
Current Store : [0x800005d0] : sd s7, 152(a2) -- Store: [0x800032a8]:0x1000800000050020




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x1', 'rs2_h3_val == -21846', 'rs2_h2_val == -2049', 'rs2_h0_val == -32768', 'rs1_h3_val == 32', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000600]:KSTSA16 ra, a1, t5
	-[0x80000604]:sd ra, 160(a2)
Current Store : [0x80000608] : sd a1, 168(a2) -- Store: [0x800032b8]:0x00203FFF0003FF7F




Last Coverpoint : ['rs1 : x16', 'rs2 : x31', 'rd : x20', 'rs2_h3_val == -16385', 'rs2_h2_val == -5', 'rs2_h0_val == 16', 'rs1_h3_val == 16', 'rs1_h2_val == -2', 'rs1_h1_val == 1', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000640]:KSTSA16 s4, a6, t6
	-[0x80000644]:sd s4, 176(a2)
Current Store : [0x80000648] : sd a6, 184(a2) -- Store: [0x800032c8]:0x0010FFFE00010800




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x5', 'rs2_h3_val == -8193', 'rs2_h1_val == -8193', 'rs2_h0_val == -21846', 'rs1_h1_val == -1025', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000067c]:KSTSA16 t0, t6, s2
	-[0x80000680]:sd t0, 192(a2)
Current Store : [0x80000684] : sd t6, 200(a2) -- Store: [0x800032d8]:0x0005FFFCFBFFFFBF




Last Coverpoint : ['rs1 : x30', 'rs2 : x13', 'rd : x31', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -1025', 'rs2_h1_val == 16', 'rs1_h3_val == -2', 'rs1_h1_val == 2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800006b8]:KSTSA16 t6, t5, a3
	-[0x800006bc]:sd t6, 208(a2)
Current Store : [0x800006c0] : sd t5, 216(a2) -- Store: [0x800032e8]:0xFFFE000300020080




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x4', 'rs2_h3_val == -513', 'rs2_h2_val == 8', 'rs1_h3_val == 1024', 'rs1_h2_val == -17', 'rs1_h1_val == 256', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800006f4]:KSTSA16 tp, t4, t1
	-[0x800006f8]:sd tp, 224(a2)
Current Store : [0x800006fc] : sd t4, 232(a2) -- Store: [0x800032f8]:0x0400FFEF01000040




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x12', 'rs2_h3_val == -257', 'rs2_h2_val == 8192', 'rs2_h1_val == -1025', 'rs1_h3_val == -129', 'rs1_h2_val == 32', 'rs1_h1_val == -2', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000730]:KSTSA16 a2, a0, a6
	-[0x80000734]:sd a2, 0(a3)
Current Store : [0x80000738] : sd a0, 8(a3) -- Store: [0x80003308]:0xFF7F0020FFFE0200




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x11', 'rs2_h3_val == -129', 'rs2_h2_val == 2', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x8000076c]:KSTSA16 a1, t1, a2
	-[0x80000770]:sd a1, 16(a3)
Current Store : [0x80000774] : sd t1, 24(a3) -- Store: [0x80003318]:0xFFF600050006FF7F




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rd : x16', 'rs2_h3_val == -65', 'rs2_h2_val == -1', 'rs2_h1_val == 8192', 'rs1_h3_val == 512', 'rs1_h2_val == -65', 'rs1_h1_val == 8', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800007a8]:KSTSA16 a6, s10, s4
	-[0x800007ac]:sd a6, 32(a3)
Current Store : [0x800007b0] : sd s10, 40(a3) -- Store: [0x80003328]:0x0200FFBF0008FFFB




Last Coverpoint : ['rs1 : x27', 'rs2 : x10', 'rd : x29', 'rs2_h3_val == -17', 'rs2_h2_val == -3', 'rs2_h1_val == -129']
Last Code Sequence : 
	-[0x800007e4]:KSTSA16 t4, s11, a0
	-[0x800007e8]:sd t4, 48(a3)
Current Store : [0x800007ec] : sd s11, 56(a3) -- Store: [0x80003338]:0xFFFD3FFF3FFF0040




Last Coverpoint : ['rs1 : x1', 'rs2 : x27', 'rd : x14', 'rs2_h3_val == -9', 'rs1_h3_val == -9', 'rs1_h1_val == -129', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000818]:KSTSA16 a4, ra, s11
	-[0x8000081c]:sd a4, 64(a3)
Current Store : [0x80000820] : sd ra, 72(a3) -- Store: [0x80003348]:0xFFF7FFFEFF7FBFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x21', 'rs2_h3_val == -5', 'rs2_h1_val == 4', 'rs2_h0_val == 16384', 'rs1_h3_val == -1', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000848]:KSTSA16 s5, s9, t0
	-[0x8000084c]:sd s5, 80(a3)
Current Store : [0x80000850] : sd s9, 88(a3) -- Store: [0x80003358]:0xFFFF8000DFFF0006




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x23', 'rs2_h3_val == -3', 'rs2_h2_val == 2048', 'rs2_h1_val == -16385', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000884]:KSTSA16 s7, a7, a5
	-[0x80000888]:sd s7, 96(a3)
Current Store : [0x8000088c] : sd a7, 104(a3) -- Store: [0x80003368]:0x0005FEFF0400FFBF




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x19', 'rs2_h3_val == -2', 'rs2_h0_val == 8', 'rs1_h2_val == 2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800008c4]:KSTSA16 s3, s5, s8
	-[0x800008c8]:sd s3, 112(a3)
Current Store : [0x800008cc] : sd s5, 120(a3) -- Store: [0x80003378]:0x5555000201002000




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x18', 'rs2_h3_val == -32768', 'rs2_h2_val == -1025', 'rs2_h0_val == -513', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x800008fc]:KSTSA16 s2, a4, a1
	-[0x80000900]:sd s2, 128(a3)
Current Store : [0x80000904] : sd a4, 136(a3) -- Store: [0x80003388]:0x0020200000070800




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x3', 'rs2_h3_val == 16384', 'rs2_h0_val == 4', 'rs1_h3_val == -1025', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x80000938]:KSTSA16 gp, tp, t4
	-[0x8000093c]:sd gp, 144(a3)
Current Store : [0x80000940] : sd tp, 152(a3) -- Store: [0x80003398]:0xFBFF0008C000FFBF




Last Coverpoint : ['rs1 : x0', 'rs2 : x1', 'rd : x6', 'rs2_h3_val == 8192', 'rs2_h2_val == 16', 'rs2_h1_val == 2', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000097c]:KSTSA16 t1, zero, ra
	-[0x80000980]:sd t1, 160(a3)
Current Store : [0x80000984] : sd zero, 168(a3) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x15', 'rs2_h3_val == 4096', 'rs1_h1_val == 32767', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800009b0]:KSTSA16 a5, s4, s9
	-[0x800009b4]:sd a5, 176(a3)
Current Store : [0x800009b8] : sd s4, 184(a3) -- Store: [0x800033b8]:0x040000097FFFAAAA




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rd : x2', 'rs2_h3_val == 1024', 'rs2_h1_val == -33', 'rs1_h3_val == 2']
Last Code Sequence : 
	-[0x800009ec]:KSTSA16 sp, s3, s7
	-[0x800009f0]:sd sp, 192(a3)
Current Store : [0x800009f4] : sd s3, 200(a3) -- Store: [0x800033c8]:0x0002FFFCDFFFDFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x4', 'rd : x24', 'rs2_h3_val == 512', 'rs2_h1_val == 2048', 'rs2_h0_val == -3', 'rs1_h2_val == 2048', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000a20]:KSTSA16 s8, a2, tp
	-[0x80000a24]:sd s8, 208(a3)
Current Store : [0x80000a28] : sd a2, 216(a3) -- Store: [0x800033d8]:0xFFF60800FEFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x9', 'rs2_h3_val == 256', 'rs2_h1_val == -4097', 'rs2_h0_val == -5', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80000a54]:KSTSA16 s1, s2, s5
	-[0x80000a58]:sd s1, 224(a3)
Current Store : [0x80000a5c] : sd s2, 232(a3) -- Store: [0x800033e8]:0x04000010FFF60006




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x30', 'rs2_h3_val == 128', 'rs2_h2_val == 32767', 'rs1_h3_val == -8193', 'rs1_h2_val == 128', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000a94]:KSTSA16 t5, a5, s10
	-[0x80000a98]:sd t5, 240(a3)
Current Store : [0x80000a9c] : sd a5, 248(a3) -- Store: [0x800033f8]:0xDFFF0080AAAA0006




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x8', 'rs2_h3_val == 64', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000ac8]:KSTSA16 fp, t2, s1
	-[0x80000acc]:sd fp, 256(a3)
Current Store : [0x80000ad0] : sd t2, 264(a3) -- Store: [0x80003408]:0xFFF9004001000008




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == -33', 'rs2_h0_val == -2049', 'rs1_h3_val == -4097', 'rs1_h2_val == -4097', 'rs1_h1_val == 16', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000b0c]:KSTSA16 t6, t5, t4
	-[0x80000b10]:sd t6, 0(ra)
Current Store : [0x80000b14] : sd t5, 8(ra) -- Store: [0x80003418]:0xEFFFEFFF00100400




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h0_val == 128', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80000b40]:KSTSA16 t6, t5, t4
	-[0x80000b44]:sd t6, 16(ra)
Current Store : [0x80000b48] : sd t5, 24(ra) -- Store: [0x80003428]:0x7FFFBFFF00023FFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == 8192', 'rs1_h2_val == 1024', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000b78]:KSTSA16 t6, t5, t4
	-[0x80000b7c]:sd t6, 32(ra)
Current Store : [0x80000b80] : sd t5, 40(ra) -- Store: [0x80003438]:0xFF7F0400FFDFF7FF




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == 64', 'rs1_h3_val == 8', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000bb0]:KSTSA16 t6, t5, t4
	-[0x80000bb4]:sd t6, 48(ra)
Current Store : [0x80000bb8] : sd t5, 56(ra) -- Store: [0x80003448]:0x00080010FFFBFBFF




Last Coverpoint : ['rs2_h1_val == -3', 'rs2_h0_val == 4096', 'rs1_h2_val == -1025', 'rs1_h1_val == -3', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000be4]:KSTSA16 t6, t5, t4
	-[0x80000be8]:sd t6, 64(ra)
Current Store : [0x80000bec] : sd t5, 72(ra) -- Store: [0x80003458]:0x7FFFFBFFFFFD4000




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c1c]:KSTSA16 t6, t5, t4
	-[0x80000c20]:sd t6, 80(ra)
Current Store : [0x80000c24] : sd t5, 88(ra) -- Store: [0x80003468]:0xFFF700058000BFFF




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h0_val == -2', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c58]:KSTSA16 t6, t5, t4
	-[0x80000c5c]:sd t6, 96(ra)
Current Store : [0x80000c60] : sd t5, 104(ra) -- Store: [0x80003478]:0xFDFF200010003FFF




Last Coverpoint : ['rs2_h1_val == -513', 'rs2_h0_val == 512', 'rs1_h2_val == -5', 'rs1_h1_val == 2048', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000c8c]:KSTSA16 t6, t5, t4
	-[0x80000c90]:sd t6, 112(ra)
Current Store : [0x80000c94] : sd t5, 120(ra) -- Store: [0x80003488]:0xFFF7FFFB08000004




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h2_val == 1', 'rs1_h1_val == 512', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000cc8]:KSTSA16 t6, t5, t4
	-[0x80000ccc]:sd t6, 128(ra)
Current Store : [0x80000cd0] : sd t5, 136(ra) -- Store: [0x80003498]:0x002000010200FFEF




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000d04]:KSTSA16 t6, t5, t4
	-[0x80000d08]:sd t6, 144(ra)
Current Store : [0x80000d0c] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFFFF00050080FFBF




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000d3c]:KSTSA16 t6, t5, t4
	-[0x80000d40]:sd t6, 160(ra)
Current Store : [0x80000d44] : sd t5, 168(ra) -- Store: [0x800034b8]:0x0020FFEF00408000




Last Coverpoint : ['rs1_h3_val == -257', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000d78]:KSTSA16 t6, t5, t4
	-[0x80000d7c]:sd t6, 176(ra)
Current Store : [0x80000d80] : sd t5, 184(ra) -- Store: [0x800034c8]:0xFEFF00030004FEFF




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_h3_val == 256', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000da4]:KSTSA16 t6, t5, t4
	-[0x80000da8]:sd t6, 192(ra)
Current Store : [0x80000dac] : sd t5, 200(ra) -- Store: [0x800034d8]:0x0100FEFF00000001




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000de0]:KSTSA16 t6, t5, t4
	-[0x80000de4]:sd t6, 208(ra)
Current Store : [0x80000de8] : sd t5, 216(ra) -- Store: [0x800034e8]:0xFFFD0000AAAA5555




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h3_val == -17', 'rs1_h1_val == 21845', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000e1c]:KSTSA16 t6, t5, t4
	-[0x80000e20]:sd t6, 224(ra)
Current Store : [0x80000e24] : sd t5, 232(ra) -- Store: [0x800034f8]:0xFFEF000655557FFF




Last Coverpoint : ['rs1_h3_val == -65', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e58]:KSTSA16 t6, t5, t4
	-[0x80000e5c]:sd t6, 240(ra)
Current Store : [0x80000e60] : sd t5, 248(ra) -- Store: [0x80003508]:0xFFBFEFFFC000EFFF




Last Coverpoint : ['rs1_h3_val == -32768', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e94]:KSTSA16 t6, t5, t4
	-[0x80000e98]:sd t6, 256(ra)
Current Store : [0x80000e9c] : sd t5, 264(ra) -- Store: [0x80003518]:0x800004000009FDFF




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80000ed8]:KSTSA16 t6, t5, t4
	-[0x80000edc]:sd t6, 272(ra)
Current Store : [0x80000ee0] : sd t5, 280(ra) -- Store: [0x80003528]:0x80000200FFF9FFDF




Last Coverpoint : ['rs2_h1_val == 16384', 'rs2_h0_val == 21845', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000f14]:KSTSA16 t6, t5, t4
	-[0x80000f18]:sd t6, 288(ra)
Current Store : [0x80000f1c] : sd t5, 296(ra) -- Store: [0x80003538]:0xFFEF8000FFFEFFF7




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h3_val == 2048', 'rs1_h2_val == 16384', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f50]:KSTSA16 t6, t5, t4
	-[0x80000f54]:sd t6, 304(ra)
Current Store : [0x80000f58] : sd t5, 312(ra) -- Store: [0x80003548]:0x08004000FF7FFFFD




Last Coverpoint : ['rs1_h3_val == -33', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f8c]:KSTSA16 t6, t5, t4
	-[0x80000f90]:sd t6, 320(ra)
Current Store : [0x80000f94] : sd t5, 328(ra) -- Store: [0x80003558]:0xFFDF04000004FFFE




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000fc4]:KSTSA16 t6, t5, t4
	-[0x80000fc8]:sd t6, 336(ra)
Current Store : [0x80000fcc] : sd t5, 344(ra) -- Store: [0x80003568]:0xFFEF0007AAAA1000




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000ffc]:KSTSA16 t6, t5, t4
	-[0x80001000]:sd t6, 352(ra)
Current Store : [0x80001004] : sd t5, 360(ra) -- Store: [0x80003578]:0xDFFF0010FFF90100




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80001030]:KSTSA16 t6, t5, t4
	-[0x80001034]:sd t6, 368(ra)
Current Store : [0x80001038] : sd t5, 376(ra) -- Store: [0x80003588]:0x0002001000050010




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == 8192', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001068]:KSTSA16 t6, t5, t4
	-[0x8000106c]:sd t6, 384(ra)
Current Store : [0x80001070] : sd t5, 392(ra) -- Store: [0x80003598]:0x20000006FFF90002




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001098]:KSTSA16 t6, t5, t4
	-[0x8000109c]:sd t6, 400(ra)
Current Store : [0x800010a0] : sd t5, 408(ra) -- Store: [0x800035a8]:0x08000800FFF70000




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == -1', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800010d4]:KSTSA16 t6, t5, t4
	-[0x800010d8]:sd t6, 416(ra)
Current Store : [0x800010dc] : sd t5, 424(ra) -- Store: [0x800035b8]:0x0001FFFC0020FFFD




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001110]:KSTSA16 t6, t5, t4
	-[0x80001114]:sd t6, 432(ra)
Current Store : [0x80001118] : sd t5, 440(ra) -- Store: [0x800035c8]:0x0400EFFF00080800




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001148]:KSTSA16 t6, t5, t4
	-[0x8000114c]:sd t6, 448(ra)
Current Store : [0x80001150] : sd t5, 456(ra) -- Store: [0x800035d8]:0x0007AAAA0002AAAA




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x8000117c]:KSTSA16 t6, t5, t4
	-[0x80001180]:sd t6, 464(ra)
Current Store : [0x80001184] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFF7FFFCFFF6FFF8




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x800011b8]:KSTSA16 t6, t5, t4
	-[0x800011bc]:sd t6, 480(ra)
Current Store : [0x800011c0] : sd t5, 488(ra) -- Store: [0x800035f8]:0x7FFF0003FFFF0008




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800011f4]:KSTSA16 t6, t5, t4
	-[0x800011f8]:sd t6, 496(ra)
Current Store : [0x800011fc] : sd t5, 504(ra) -- Store: [0x80003608]:0x0001FFFC0002FF7F




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -8193', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80001230]:KSTSA16 t6, t5, t4
	-[0x80001234]:sd t6, 512(ra)
Current Store : [0x80001238] : sd t5, 520(ra) -- Store: [0x80003618]:0xFFDF00070004F7FF




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80001260]:KSTSA16 t6, t5, t4
	-[0x80001264]:sd t6, 528(ra)
Current Store : [0x80001268] : sd t5, 536(ra) -- Store: [0x80003628]:0xFFFCFFFD80000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80001298]:KSTSA16 t6, t5, t4
	-[0x8000129c]:sd t6, 544(ra)
Current Store : [0x800012a0] : sd t5, 552(ra) -- Store: [0x80003638]:0x0001FEFFFFFEFFFA




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800012d4]:KSTSA16 t6, t5, t4
	-[0x800012d8]:sd t6, 560(ra)
Current Store : [0x800012dc] : sd t5, 568(ra) -- Store: [0x80003648]:0xFDFF0040FFFBFFEF




Last Coverpoint : ['rs2_h1_val == 4096', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80001304]:KSTSA16 t6, t5, t4
	-[0x80001308]:sd t6, 576(ra)
Current Store : [0x8000130c] : sd t5, 584(ra) -- Store: [0x80003658]:0xFFFC040000010005




Last Coverpoint : ['rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80001340]:KSTSA16 t6, t5, t4
	-[0x80001344]:sd t6, 592(ra)
Current Store : [0x80001348] : sd t5, 600(ra) -- Store: [0x80003668]:0xAAAA0020FFFAFFF9




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x8000137c]:KSTSA16 t6, t5, t4
	-[0x80001380]:sd t6, 608(ra)
Current Store : [0x80001384] : sd t5, 616(ra) -- Store: [0x80003678]:0xBFFF002000000800




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x800013b4]:KSTSA16 t6, t5, t4
	-[0x800013b8]:sd t6, 624(ra)
Current Store : [0x800013bc] : sd t5, 632(ra) -- Store: [0x80003688]:0xF7FFFFF80000FFFA




Last Coverpoint : ['rs1_h3_val == -5']
Last Code Sequence : 
	-[0x800013ec]:KSTSA16 t6, t5, t4
	-[0x800013f0]:sd t6, 640(ra)
Current Store : [0x800013f4] : sd t5, 648(ra) -- Store: [0x80003698]:0xFFFB00100002C000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 1', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x80001418]:KSTSA16 t6, t5, t4
	-[0x8000141c]:sd t6, 656(ra)
Current Store : [0x80001420] : sd t5, 664(ra) -- Store: [0x800036a8]:0xFF7FFFFFFFFE8000




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80001454]:KSTSA16 t6, t5, t4
	-[0x80001458]:sd t6, 672(ra)
Current Store : [0x8000145c] : sd t5, 680(ra) -- Store: [0x800036b8]:0x400000080080FFFD




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x80001498]:KSTSA16 t6, t5, t4
	-[0x8000149c]:sd t6, 688(ra)
Current Store : [0x800014a0] : sd t5, 696(ra) -- Store: [0x800036c8]:0x00203FFF00200800




Last Coverpoint : ['rs1_h3_val == 128']
Last Code Sequence : 
	-[0x800014cc]:KSTSA16 t6, t5, t4
	-[0x800014d0]:sd t6, 704(ra)
Current Store : [0x800014d4] : sd t5, 712(ra) -- Store: [0x800036d8]:0x0080BFFF3FFF0400




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80001508]:KSTSA16 t6, t5, t4
	-[0x8000150c]:sd t6, 720(ra)
Current Store : [0x80001510] : sd t5, 728(ra) -- Store: [0x800036e8]:0xF7FFF7FF00070004




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x8000153c]:KSTSA16 t6, t5, t4
	-[0x80001540]:sd t6, 736(ra)
Current Store : [0x80001544] : sd t5, 744(ra) -- Store: [0x800036f8]:0x0004FDFFFFDF0008




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001578]:KSTSA16 t6, t5, t4
	-[0x8000157c]:sd t6, 752(ra)
Current Store : [0x80001580] : sd t5, 760(ra) -- Store: [0x80003708]:0x008010008000FDFF




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 4', 'rs2_h2_val == 4', 'rs2_h0_val == 32', 'rs1_h3_val == 0', 'rs1_h2_val == 1', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800015ac]:KSTSA16 t6, t5, t4
	-[0x800015b0]:sd t6, 768(ra)
Current Store : [0x800015b4] : sd t5, 776(ra) -- Store: [0x80003718]:0x0000000100070080




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 1', 'rs2_h1_val == -3', 'rs2_h0_val == -65', 'rs1_h2_val == 21845', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800015e8]:KSTSA16 t6, t5, t4
	-[0x800015ec]:sd t6, 784(ra)
Current Store : [0x800015f0] : sd t5, 792(ra) -- Store: [0x80003728]:0x000555555555FFF6




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x80001620]:KSTSA16 t6, t5, t4
	-[0x80001624]:sd t6, 800(ra)
Current Store : [0x80001628] : sd t5, 808(ra) -- Store: [0x80003738]:0x2000FF7F00070009




Last Coverpoint : ['rs1_h2_val == 32767', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001654]:KSTSA16 t6, t5, t4
	-[0x80001658]:sd t6, 816(ra)
Current Store : [0x8000165c] : sd t5, 824(ra) -- Store: [0x80003748]:0x04007FFFFDFF0040




Last Coverpoint : ['rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x80001694]:KSTSA16 t6, t5, t4
	-[0x80001698]:sd t6, 832(ra)
Current Store : [0x8000169c] : sd t5, 840(ra) -- Store: [0x80003758]:0xFDFF555500011000




Last Coverpoint : ['rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x800016c8]:KSTSA16 t6, t5, t4
	-[0x800016cc]:sd t6, 848(ra)
Current Store : [0x800016d0] : sd t5, 856(ra) -- Store: [0x80003768]:0x0100DFFF8000FFFB




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80001704]:KSTSA16 t6, t5, t4
	-[0x80001708]:sd t6, 864(ra)
Current Store : [0x8000170c] : sd t5, 872(ra) -- Store: [0x80003778]:0x008008005555FBFF




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001740]:KSTSA16 t6, t5, t4
	-[0x80001744]:sd t6, 880(ra)
Current Store : [0x80001748] : sd t5, 888(ra) -- Store: [0x80003788]:0xEFFFFFF700060400




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80001774]:KSTSA16 t6, t5, t4
	-[0x80001778]:sd t6, 896(ra)
Current Store : [0x8000177c] : sd t5, 904(ra) -- Store: [0x80003798]:0x0006FEFFAAAAFDFF




Last Coverpoint : ['rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x800017b8]:KSTSA16 t6, t5, t4
	-[0x800017bc]:sd t6, 912(ra)
Current Store : [0x800017c0] : sd t5, 920(ra) -- Store: [0x800037a8]:0xF7FF0009FEFFFFF7




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800017f4]:KSTSA16 t6, t5, t4
	-[0x800017f8]:sd t6, 928(ra)
Current Store : [0x800017fc] : sd t5, 936(ra) -- Store: [0x800037b8]:0x5555010000020200




Last Coverpoint : ['rs2_h1_val == -65']
Last Code Sequence : 
	-[0x8000182c]:KSTSA16 t6, t5, t4
	-[0x80001830]:sd t6, 944(ra)
Current Store : [0x80001834] : sd t5, 952(ra) -- Store: [0x800037c8]:0xFFBF200008005555




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001864]:KSTSA16 t6, t5, t4
	-[0x80001868]:sd t6, 960(ra)
Current Store : [0x8000186c] : sd t5, 968(ra) -- Store: [0x800037d8]:0x00200004FFFCEFFF




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800018a0]:KSTSA16 t6, t5, t4
	-[0x800018a4]:sd t6, 976(ra)
Current Store : [0x800018a8] : sd t5, 984(ra) -- Store: [0x800037e8]:0x0080FFF7BFFFBFFF




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800018dc]:KSTSA16 t6, t5, t4
	-[0x800018e0]:sd t6, 992(ra)
Current Store : [0x800018e4] : sd t5, 1000(ra) -- Store: [0x800037f8]:0x000740000100DFFF




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001918]:KSTSA16 t6, t5, t4
	-[0x8000191c]:sd t6, 1008(ra)
Current Store : [0x80001920] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFDFFFFDFEFFF0400




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001954]:KSTSA16 t6, t5, t4
	-[0x80001958]:sd t6, 1024(ra)
Current Store : [0x8000195c] : sd t5, 1032(ra) -- Store: [0x80003818]:0x1000FFDFFFF88000




Last Coverpoint : ['rs2_h1_val == 512']
Last Code Sequence : 
	-[0x80001990]:KSTSA16 t6, t5, t4
	-[0x80001994]:sd t6, 1040(ra)
Current Store : [0x80001998] : sd t5, 1048(ra) -- Store: [0x80003828]:0x0007000800097FFF




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800019cc]:KSTSA16 t6, t5, t4
	-[0x800019d0]:sd t6, 1056(ra)
Current Store : [0x800019d4] : sd t5, 1064(ra) -- Store: [0x80003838]:0xFFF8FFFF0040AAAA




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80001a04]:KSTSA16 t6, t5, t4
	-[0x80001a08]:sd t6, 1072(ra)
Current Store : [0x80001a0c] : sd t5, 1080(ra) -- Store: [0x80003848]:0xAAAAFFFFFFBF8000




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80001a44]:KSTSA16 t6, t5, t4
	-[0x80001a48]:sd t6, 1088(ra)
Current Store : [0x80001a4c] : sd t5, 1096(ra) -- Store: [0x80003858]:0x7FFFEFFF40001000




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 0', 'rs2_h1_val == 4096', 'rs1_h2_val == -2049', 'rs1_h1_val == 8', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80001a80]:KSTSA16 t6, t5, t4
	-[0x80001a84]:sd t6, 1104(ra)
Current Store : [0x80001a88] : sd t5, 1112(ra) -- Store: [0x80003868]:0xFFFAF7FF00080008




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 21845', 'rs2_h1_val == 64', 'rs2_h0_val == -33', 'rs1_h3_val == 21845', 'rs1_h2_val == 2', 'rs1_h1_val == 2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001abc]:KSTSA16 t6, t5, t4
	-[0x80001ac0]:sd t6, 1120(ra)
Current Store : [0x80001ac4] : sd t5, 1128(ra) -- Store: [0x80003878]:0x5555000200020080




Last Coverpoint : ['rs2_h3_val == -33']
Last Code Sequence : 
	-[0x80001af8]:KSTSA16 t6, t5, t4
	-[0x80001afc]:sd t6, 1136(ra)
Current Store : [0x80001b00] : sd t5, 1144(ra) -- Store: [0x80003888]:0xFFF800072000FFFA




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h1_val == -2', 'rs2_h0_val == -257', 'rs1_h2_val == -257', 'rs1_h1_val == -1', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80001b28]:KSTSA16 t6, t5, t4
	-[0x80001b2c]:sd t6, 1152(ra)
Current Store : [0x80001b30] : sd t5, 1160(ra) -- Store: [0x80003898]:0xFFFCFEFFFFFFFEFF




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 8192', 'rs2_h2_val == 16', 'rs2_h1_val == 2', 'rs1_h2_val == 8192', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001b6c]:KSTSA16 t6, t5, t4
	-[0x80001b70]:sd t6, 1168(ra)
Current Store : [0x80001b74] : sd t5, 1176(ra) -- Store: [0x800038a8]:0x3FFF2000F7FF0009





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                             coverpoints                                                                                                                                                                                                                                                                                             |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000FBFE0000F7FE|- opcode : kstsa16<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -513<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -1025<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -513<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -1025<br> |[0x800003cc]:KSTSA16 s9, gp, gp<br> [0x800003d0]:sd s9, 0(a2)<br>      |
|   2|[0x80003220]<br>0x00007FFF0000FFBE|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 64<br> - rs2_h0_val == -33<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 64<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                          |[0x80000408]:KSTSA16 s6, s6, s6<br> [0x8000040c]:sd s6, 16(a2)<br>     |
|   3|[0x80003230]<br>0xFFF800072000FFFA|- rs1 : x24<br> - rs2 : x0<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                             |[0x80000444]:KSTSA16 a7, s8, zero<br> [0x80000448]:sd a7, 32(a2)<br>   |
|   4|[0x80003240]<br>0x0841FF3FFFE0B7FE|- rs1 : x13<br> - rs2 : x2<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -257<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 64<br> - rs1_h2_val == 64<br> - rs1_h1_val == 32<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                    |[0x80000480]:KSTSA16 a3, a3, sp<br> [0x80000484]:sd a3, 48(a2)<br>     |
|   5|[0x80003250]<br>0xF5FF00807FFFFF00|- rs1 : x9<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 64<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1<br> - rs1_h3_val == -513<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                              |[0x800004b4]:KSTSA16 t2, s1, t2<br> [0x800004b8]:sd t2, 64(a2)<br>     |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x19<br> - rd : x0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h1_val == -2<br> - rs2_h0_val == -257<br> - rs1_h2_val == -257<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004e4]:KSTSA16 zero, fp, s3<br> [0x800004e8]:sd zero, 80(a2)<br> |
|   7|[0x80003270]<br>0x0E00800001043EFE|- rs1 : x5<br> - rs2 : x14<br> - rd : x26<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -9<br> - rs2_h1_val == -257<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000051c]:KSTSA16 s10, t0, a4<br> [0x80000520]:sd s10, 96(a2)<br>   |
|   8|[0x80003280]<br>0x07FEFF9E0000DFF8|- rs1 : x2<br> - rs2 : x17<br> - rd : x28<br> - rs2_h2_val == -65<br> - rs2_h1_val == -17<br> - rs1_h3_val == -3<br> - rs1_h2_val == -33<br> - rs1_h1_val == -17<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000558]:KSTSA16 t3, sp, a7<br> [0x8000055c]:sd t3, 112(a2)<br>    |
|   9|[0x80003290]<br>0xFFF92FFE8000FF1F|- rs1 : x28<br> - rs2 : x8<br> - rd : x27<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -1<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 32<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000584]:KSTSA16 s11, t3, fp<br> [0x80000588]:sd s11, 128(a2)<br>  |
|  10|[0x800032a0]<br>0xBAAB8000C0060025|- rs1 : x23<br> - rs2 : x28<br> - rd : x10<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs1_h3_val == 4096<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800005c8]:KSTSA16 a0, s7, t3<br> [0x800005cc]:sd a0, 144(a2)<br>    |
|  11|[0x800032b0]<br>0x557637FE00148000|- rs1 : x11<br> - rs2 : x30<br> - rd : x1<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -2049<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 32<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000600]:KSTSA16 ra, a1, t5<br> [0x80000604]:sd ra, 160(a2)<br>    |
|  12|[0x800032c0]<br>0x4011FFF980020810|- rs1 : x16<br> - rs2 : x31<br> - rd : x20<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -5<br> - rs2_h0_val == 16<br> - rs1_h3_val == 16<br> - rs1_h2_val == -2<br> - rs1_h1_val == 1<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000640]:KSTSA16 s4, a6, t6<br> [0x80000644]:sd s4, 176(a2)<br>    |
|  13|[0x800032d0]<br>0x2006003C1C00AA69|- rs1 : x31<br> - rs2 : x18<br> - rd : x5<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000067c]:KSTSA16 t0, t6, s2<br> [0x80000680]:sd t0, 192(a2)<br>    |
|  14|[0x800032e0]<br>0x03FFFFFAFFF2C07F|- rs1 : x30<br> - rs2 : x13<br> - rd : x31<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 16<br> - rs1_h3_val == -2<br> - rs1_h1_val == 2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006b8]:KSTSA16 t6, t5, a3<br> [0x800006bc]:sd t6, 208(a2)<br>    |
|  15|[0x800032f0]<br>0x0601FFF700FA0045|- rs1 : x29<br> - rs2 : x6<br> - rd : x4<br> - rs2_h3_val == -513<br> - rs2_h2_val == 8<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -17<br> - rs1_h1_val == 256<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006f4]:KSTSA16 tp, t4, t1<br> [0x800006f8]:sd tp, 224(a2)<br>    |
|  16|[0x80003300]<br>0x0080202003FF01F9|- rs1 : x10<br> - rs2 : x16<br> - rd : x12<br> - rs2_h3_val == -257<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -1025<br> - rs1_h3_val == -129<br> - rs1_h2_val == 32<br> - rs1_h1_val == -2<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x80000730]:KSTSA16 a2, a0, a6<br> [0x80000734]:sd a2, 0(a3)<br>      |
|  17|[0x80003310]<br>0x007700070001FEFE|- rs1 : x6<br> - rs2 : x12<br> - rd : x11<br> - rs2_h3_val == -129<br> - rs2_h2_val == 2<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000076c]:KSTSA16 a1, t1, a2<br> [0x80000770]:sd a1, 16(a3)<br>     |
|  18|[0x80003320]<br>0x0241FFBEE008FBFA|- rs1 : x26<br> - rs2 : x20<br> - rd : x16<br> - rs2_h3_val == -65<br> - rs2_h2_val == -1<br> - rs2_h1_val == 8192<br> - rs1_h3_val == 512<br> - rs1_h2_val == -65<br> - rs1_h1_val == 8<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x800007a8]:KSTSA16 a6, s10, s4<br> [0x800007ac]:sd a6, 32(a3)<br>    |
|  19|[0x80003330]<br>0x000E3FFC40800047|- rs1 : x27<br> - rs2 : x10<br> - rd : x29<br> - rs2_h3_val == -17<br> - rs2_h2_val == -3<br> - rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800007e4]:KSTSA16 t4, s11, a0<br> [0x800007e8]:sd t4, 48(a3)<br>    |
|  20|[0x80003340]<br>0x000055530780BFF9|- rs1 : x1<br> - rs2 : x27<br> - rd : x14<br> - rs2_h3_val == -9<br> - rs1_h3_val == -9<br> - rs1_h1_val == -129<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000818]:KSTSA16 a4, ra, s11<br> [0x8000081c]:sd a4, 64(a3)<br>    |
|  21|[0x80003350]<br>0x00048003DFFB4006|- rs1 : x25<br> - rs2 : x5<br> - rd : x21<br> - rs2_h3_val == -5<br> - rs2_h1_val == 4<br> - rs2_h0_val == 16384<br> - rs1_h3_val == -1<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000848]:KSTSA16 s5, s9, t0<br> [0x8000084c]:sd s5, 80(a3)<br>     |
|  22|[0x80003360]<br>0x000806FF44013FBE|- rs1 : x17<br> - rs2 : x15<br> - rd : x23<br> - rs2_h3_val == -3<br> - rs2_h2_val == 2048<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000884]:KSTSA16 s7, a7, a5<br> [0x80000888]:sd s7, 96(a3)<br>     |
|  23|[0x80003370]<br>0x5557000800FB2008|- rs1 : x21<br> - rs2 : x24<br> - rd : x19<br> - rs2_h3_val == -2<br> - rs2_h0_val == 8<br> - rs1_h2_val == 2<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800008c4]:KSTSA16 s3, s5, s8<br> [0x800008c8]:sd s3, 112(a3)<br>    |
|  24|[0x80003380]<br>0x7FFF1BFF200805FF|- rs1 : x14<br> - rs2 : x11<br> - rd : x18<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -1025<br> - rs2_h0_val == -513<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800008fc]:KSTSA16 s2, a4, a1<br> [0x80000900]:sd s2, 128(a3)<br>    |
|  25|[0x80003390]<br>0xBBFF0011BFC0FFC3|- rs1 : x4<br> - rs2 : x29<br> - rd : x3<br> - rs2_h3_val == 16384<br> - rs2_h0_val == 4<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000938]:KSTSA16 gp, tp, t4<br> [0x8000093c]:sd gp, 144(a3)<br>    |
|  26|[0x800033a0]<br>0xE0000010FFFEFFF9|- rs1 : x0<br> - rs2 : x1<br> - rd : x6<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 16<br> - rs2_h1_val == 2<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000097c]:KSTSA16 t1, zero, ra<br> [0x80000980]:sd t1, 160(a3)<br>  |
|  27|[0x800033b0]<br>0xF40000197FFFAAB1|- rs1 : x20<br> - rs2 : x25<br> - rd : x15<br> - rs2_h3_val == 4096<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800009b0]:KSTSA16 a5, s4, s9<br> [0x800009b4]:sd a5, 176(a3)<br>    |
|  28|[0x800033c0]<br>0xFC02FFFFE020DFF7|- rs1 : x19<br> - rs2 : x23<br> - rd : x2<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -33<br> - rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800009ec]:KSTSA16 sp, s3, s7<br> [0x800009f0]:sd sp, 192(a3)<br>    |
|  29|[0x800033d0]<br>0xFDF607FAF6FFFFFC|- rs1 : x12<br> - rs2 : x4<br> - rd : x24<br> - rs2_h3_val == 512<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -3<br> - rs1_h2_val == 2048<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a20]:KSTSA16 s8, a2, tp<br> [0x80000a24]:sd s8, 208(a3)<br>    |
|  30|[0x800033e0]<br>0x0300FFCF0FF70001|- rs1 : x18<br> - rs2 : x21<br> - rd : x9<br> - rs2_h3_val == 256<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -5<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a54]:KSTSA16 s1, s2, s5<br> [0x80000a58]:sd s1, 224(a3)<br>    |
|  31|[0x800033f0]<br>0xDF7F7FFFAEAB8006|- rs1 : x15<br> - rs2 : x26<br> - rd : x30<br> - rs2_h3_val == 128<br> - rs2_h2_val == 32767<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 128<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a94]:KSTSA16 t5, a5, s10<br> [0x80000a98]:sd t5, 240(a3)<br>   |
|  32|[0x80003400]<br>0xFFB9C0400108C007|- rs1 : x7<br> - rs2 : x9<br> - rd : x8<br> - rs2_h3_val == 64<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ac8]:KSTSA16 fp, t2, s1<br> [0x80000acc]:sd fp, 256(a3)<br>    |
|  33|[0x80003410]<br>0xEFDFEFDEE010FBFF|- rs2_h3_val == 32<br> - rs2_h2_val == -33<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 16<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000b0c]:KSTSA16 t6, t5, t4<br> [0x80000b10]:sd t6, 0(ra)<br>      |
|  34|[0x80003420]<br>0x7FEFBFF7FFC2407F|- rs2_h3_val == 16<br> - rs2_h0_val == 128<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b40]:KSTSA16 t6, t5, t4<br> [0x80000b44]:sd t6, 16(ra)<br>     |
|  35|[0x80003430]<br>0xFF777FFFDFDF17FF|- rs2_h3_val == 8<br> - rs2_h0_val == 8192<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b78]:KSTSA16 t6, t5, t4<br> [0x80000b7c]:sd t6, 32(ra)<br>     |
|  36|[0x80003440]<br>0xF0080012FEFBFC3F|- rs2_h1_val == 256<br> - rs2_h0_val == 64<br> - rs1_h3_val == 8<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000bb0]:KSTSA16 t6, t5, t4<br> [0x80000bb4]:sd t6, 48(ra)<br>     |
|  37|[0x80003450]<br>0x77FFFC0700005000|- rs2_h1_val == -3<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -3<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000be4]:KSTSA16 t6, t5, t4<br> [0x80000be8]:sd t6, 64(ra)<br>     |
|  38|[0x80003460]<br>0xFFF2F0048011C002|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c1c]:KSTSA16 t6, t5, t4<br> [0x80000c20]:sd t6, 80(ra)<br>     |
|  39|[0x80003470]<br>0x3DFFDFFF50013FFD|- rs2_h2_val == -16385<br> - rs2_h0_val == -2<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c58]:KSTSA16 t6, t5, t4<br> [0x80000c5c]:sd t6, 96(ra)<br>     |
|  40|[0x80003480]<br>0x07F8003B0A010204|- rs2_h1_val == -513<br> - rs2_h0_val == 512<br> - rs1_h2_val == -5<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000c8c]:KSTSA16 t6, t5, t4<br> [0x80000c90]:sd t6, 112(ra)<br>    |
|  41|[0x80003490]<br>0x4020020101FD3FEE|- rs2_h2_val == 512<br> - rs1_h2_val == 1<br> - rs1_h1_val == 512<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000cc8]:KSTSA16 t6, t5, t4<br> [0x80000ccc]:sd t6, 128(ra)<br>    |
|  42|[0x800034a0]<br>0xFDFFFFFD00403FBE|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000d04]:KSTSA16 t6, t5, t4<br> [0x80000d08]:sd t6, 144(ra)<br>    |
|  43|[0x800034b0]<br>0x0031FFF7FF408800|- rs1_h0_val == -32768<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d3c]:KSTSA16 t6, t5, t4<br> [0x80000d40]:sd t6, 160(ra)<br>    |
|  44|[0x800034c0]<br>0xFF100203FF04FEFB|- rs1_h3_val == -257<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d78]:KSTSA16 t6, t5, t4<br> [0x80000d7c]:sd t6, 176(ra)<br>    |
|  45|[0x800034d0]<br>0x010802FF0081FFFF|- rs2_h2_val == 1024<br> - rs1_h3_val == 256<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000da4]:KSTSA16 t6, t5, t4<br> [0x80000da8]:sd t6, 192(ra)<br>    |
|  46|[0x800034e0]<br>0x00030005AAB17FFF|- rs2_h0_val == 32767<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000de0]:KSTSA16 t6, t5, t4<br> [0x80000de4]:sd t6, 208(ra)<br>    |
|  47|[0x800034f0]<br>0xFDEF010675567FFF|- rs2_h2_val == 256<br> - rs1_h3_val == -17<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e1c]:KSTSA16 t6, t5, t4<br> [0x80000e20]:sd t6, 224(ra)<br>    |
|  48|[0x80003500]<br>0xFFC4F007C0022FFE|- rs1_h3_val == -65<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e58]:KSTSA16 t6, t5, t4<br> [0x80000e5c]:sd t6, 240(ra)<br>    |
|  49|[0x80003510]<br>0x90010408FFF9F9FE|- rs1_h3_val == -32768<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e94]:KSTSA16 t6, t5, t4<br> [0x80000e98]:sd t6, 256(ra)<br>    |
|  50|[0x80003520]<br>0x8000C1FF80007FDE|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ed8]:KSTSA16 t6, t5, t4<br> [0x80000edc]:sd t6, 272(ra)<br>    |
|  51|[0x80003530]<br>0xEFEF8100BFFE554C|- rs2_h1_val == 16384<br> - rs2_h0_val == 21845<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f14]:KSTSA16 t6, t5, t4<br> [0x80000f18]:sd t6, 288(ra)<br>    |
|  52|[0x80003540]<br>0x5D564008FF7603FD|- rs2_h0_val == 1024<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f50]:KSTSA16 t6, t5, t4<br> [0x80000f54]:sd t6, 304(ra)<br>    |
|  53|[0x80003550]<br>0x7FDF01FF0405FFF7|- rs1_h3_val == -33<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f8c]:KSTSA16 t6, t5, t4<br> [0x80000f90]:sd t6, 320(ra)<br>    |
|  54|[0x80003560]<br>0x03F00006AAA41004|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000fc4]:KSTSA16 t6, t5, t4<br> [0x80000fc8]:sd t6, 336(ra)<br>    |
|  55|[0x80003570]<br>0x3555000900028100|- rs2_h1_val == -9<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ffc]:KSTSA16 t6, t5, t4<br> [0x80001000]:sd t6, 352(ra)<br>    |
|  56|[0x80003580]<br>0xFFFB00168006000E|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001030]:KSTSA16 t6, t5, t4<br> [0x80001034]:sd t6, 368(ra)<br>    |
|  57|[0x80003590]<br>0x2041000480000002|- rs2_h2_val == -2<br> - rs1_h3_val == 8192<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001068]:KSTSA16 t6, t5, t4<br> [0x8000106c]:sd t6, 384(ra)<br>    |
|  58|[0x800035a0]<br>0x07C005FF3FF70004|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001098]:KSTSA16 t6, t5, t4<br> [0x8000109c]:sd t6, 400(ra)<br>    |
|  59|[0x800035b0]<br>0xFFFDF7FBF820FFFC|- rs2_h3_val == 4<br> - rs2_h0_val == -1<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800010d4]:KSTSA16 t6, t5, t4<br> [0x800010d8]:sd t6, 416(ra)<br>    |
|  60|[0x800035c0]<br>0x0407F005000747FF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001110]:KSTSA16 t6, t5, t4<br> [0x80001114]:sd t6, 432(ra)<br>    |
|  61|[0x800035d0]<br>0xFFF7AB2A00028000|- rs2_h2_val == 128<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001148]:KSTSA16 t6, t5, t4<br> [0x8000114c]:sd t6, 448(ra)<br>    |
|  62|[0x800035e0]<br>0xFFFEF7FBFFF70FF8|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000117c]:KSTSA16 t6, t5, t4<br> [0x80001180]:sd t6, 464(ra)<br>    |
|  63|[0x800035f0]<br>0x7FFF000AFFEFE007|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011b8]:KSTSA16 t6, t5, t4<br> [0x800011bc]:sd t6, 480(ra)<br>    |
|  64|[0x80003600]<br>0xFE01FFBB2003EF7E|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011f4]:KSTSA16 t6, t5, t4<br> [0x800011f8]:sd t6, 496(ra)<br>    |
|  65|[0x80003610]<br>0xFFDEE006E004F7BE|- rs2_h3_val == 1<br> - rs2_h2_val == -8193<br> - rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001230]:KSTSA16 t6, t5, t4<br> [0x80001234]:sd t6, 512(ra)<br>    |
|  66|[0x80003620]<br>0x07FD00FD8000FFEF|- rs2_h0_val == -17<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001260]:KSTSA16 t6, t5, t4<br> [0x80001264]:sd t6, 528(ra)<br>    |
|  67|[0x80003630]<br>0x55571EFF0002FFF1|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001298]:KSTSA16 t6, t5, t4<br> [0x8000129c]:sd t6, 544(ra)<br>    |
|  68|[0x80003640]<br>0x02000047FFFD00EF|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800012d4]:KSTSA16 t6, t5, t4<br> [0x800012d8]:sd t6, 560(ra)<br>    |
|  69|[0x80003650]<br>0xFFF303DFF0010007|- rs2_h1_val == 4096<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001304]:KSTSA16 t6, t5, t4<br> [0x80001308]:sd t6, 576(ra)<br>    |
|  70|[0x80003660]<br>0xA6AA001FF7FAFFF3|- rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001340]:KSTSA16 t6, t5, t4<br> [0x80001344]:sd t6, 592(ra)<br>    |
|  71|[0x80003670]<br>0xBBFF0120000407FB|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000137c]:KSTSA16 t6, t5, t4<br> [0x80001380]:sd t6, 608(ra)<br>    |
|  72|[0x80003680]<br>0xF7FFDFF7000807FA|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800013b4]:KSTSA16 t6, t5, t4<br> [0x800013b8]:sd t6, 624(ra)<br>    |
|  73|[0x80003690]<br>0xFFF8E00FFFFBC200|- rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013ec]:KSTSA16 t6, t5, t4<br> [0x800013f0]:sd t6, 640(ra)<br>    |
|  74|[0x800036a0]<br>0xFF7D0000EFFE8040|- rs2_h3_val == 2<br> - rs2_h2_val == 1<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001418]:KSTSA16 t6, t5, t4<br> [0x8000141c]:sd t6, 656(ra)<br>    |
|  75|[0x800036b0]<br>0x4081000C4080FFBC|- rs2_h2_val == 4<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001454]:KSTSA16 t6, t5, t4<br> [0x80001458]:sd t6, 672(ra)<br>    |
|  76|[0x800036c0]<br>0xAACBEAA908210804|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001498]:KSTSA16 t6, t5, t4<br> [0x8000149c]:sd t6, 688(ra)<br>    |
|  77|[0x800036d0]<br>0x0077BFFC3EFF0408|- rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014cc]:KSTSA16 t6, t5, t4<br> [0x800014d0]:sd t6, 704(ra)<br>    |
|  78|[0x800036e0]<br>0xF802F77E00030008|- rs2_h2_val == -129<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001508]:KSTSA16 t6, t5, t4<br> [0x8000150c]:sd t6, 720(ra)<br>    |
|  79|[0x800036f0]<br>0x000E0DFFFFDA000D|- rs2_h2_val == 4096<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000153c]:KSTSA16 t6, t5, t4<br> [0x80001540]:sd t6, 736(ra)<br>    |
|  80|[0x80003700]<br>0x00850FEF8000FE00|- rs2_h2_val == -17<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001578]:KSTSA16 t6, t5, t4<br> [0x8000157c]:sd t6, 752(ra)<br>    |
|  81|[0x80003730]<br>0x1FF08000C0081009|- rs2_h2_val == -32768<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001620]:KSTSA16 t6, t5, t4<br> [0x80001624]:sd t6, 800(ra)<br>    |
|  82|[0x80003740]<br>0x03FA7FFFFDEF0060|- rs1_h2_val == 32767<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001654]:KSTSA16 t6, t5, t4<br> [0x80001658]:sd t6, 816(ra)<br>    |
|  83|[0x80003750]<br>0xDDFF7FFF20027FFF|- rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001694]:KSTSA16 t6, t5, t4<br> [0x80001698]:sd t6, 832(ra)<br>    |
|  84|[0x80003760]<br>0x0107E7FF8000BFFB|- rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800016c8]:KSTSA16 t6, t5, t4<br> [0x800016cc]:sd t6, 848(ra)<br>    |
|  85|[0x80003770]<br>0x008708205552FBF5|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001704]:KSTSA16 t6, t5, t4<br> [0x80001708]:sd t6, 864(ra)<br>    |
|  86|[0x80003780]<br>0x9AAAFFFD000CC3FF|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001740]:KSTSA16 t6, t5, t4<br> [0x80001744]:sd t6, 880(ra)<br>    |
|  87|[0x80003790]<br>0x0006FEF70000FE1F|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001774]:KSTSA16 t6, t5, t4<br> [0x80001778]:sd t6, 896(ra)<br>    |
|  88|[0x800037a0]<br>0xE7FFAAB3A9AAFFF2|- rs2_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800017b8]:KSTSA16 t6, t5, t4<br> [0x800017bc]:sd t6, 912(ra)<br>    |
|  89|[0x800037b0]<br>0x5558FCFFFFFF0210|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017f4]:KSTSA16 t6, t5, t4<br> [0x800017f8]:sd t6, 928(ra)<br>    |
|  90|[0x800037c0]<br>0xFFC15FFF08415D55|- rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000182c]:KSTSA16 t6, t5, t4<br> [0x80001830]:sd t6, 944(ra)<br>    |
|  91|[0x800037d0]<br>0x2021002400012FFF|- rs2_h1_val == -5<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001864]:KSTSA16 t6, t5, t4<br> [0x80001868]:sd t6, 960(ra)<br>    |
|  92|[0x800037e0]<br>0xC081FFF6BFFCC005|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018a0]:KSTSA16 t6, t5, t4<br> [0x800018a4]:sd t6, 976(ra)<br>    |
|  93|[0x800037f0]<br>0x0808410000F85FFE|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018dc]:KSTSA16 t6, t5, t4<br> [0x800018e0]:sd t6, 992(ra)<br>    |
|  94|[0x80003800]<br>0xFE09FFE2EFFC03F8|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001918]:KSTSA16 t6, t5, t4<br> [0x8000191c]:sd t6, 1008(ra)<br>   |
|  95|[0x80003810]<br>0x200101DFFBF8C000|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001954]:KSTSA16 t6, t5, t4<br> [0x80001958]:sd t6, 1024(ra)<br>   |
|  96|[0x80003820]<br>0xFF87FFF7FE097FF9|- rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001990]:KSTSA16 t6, t5, t4<br> [0x80001994]:sd t6, 1040(ra)<br>   |
|  97|[0x80003830]<br>0xFFF2FF7EFFC0B2AA|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800019cc]:KSTSA16 t6, t5, t4<br> [0x800019d0]:sd t6, 1056(ra)<br>   |
|  98|[0x80003840]<br>0xAAAB0004FFC48000|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001a04]:KSTSA16 t6, t5, t4<br> [0x80001a08]:sd t6, 1072(ra)<br>   |
|  99|[0x80003850]<br>0x7FFFF0003FE00FFA|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a44]:KSTSA16 t6, t5, t4<br> [0x80001a48]:sd t6, 1088(ra)<br>   |
| 100|[0x80003880]<br>0x0019FFE62009FFF4|- rs2_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001af8]:KSTSA16 t6, t5, t4<br> [0x80001afc]:sd t6, 1136(ra)<br>   |
