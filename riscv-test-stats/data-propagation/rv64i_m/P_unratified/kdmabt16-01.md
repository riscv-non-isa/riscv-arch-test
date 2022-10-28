
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019e0')]      |
| SIG_REGION                | [('0x80003210', '0x80003850', '200 dwords')]      |
| COV_LABELS                | kdmabt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmabt16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 200      |
| STAT1                     | 97      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 100     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000160c]:KDMABT16 t6, t5, t4
      [0x80001610]:sd t6, 1056(ra)
 -- Signature Address: 0x80003730 Data: 0x27BF806F8275434C
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h0_val == -3
      - rs1_h2_val == -21846
      - rs1_h1_val == 32767
      - rs1_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016f0]:KDMABT16 t6, t5, t4
      [0x800016f4]:sd t6, 1120(ra)
 -- Signature Address: 0x80003770 Data: 0x26BEB08982058F52
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt16
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
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 0
      - rs2_h1_val == -4097
      - rs2_h0_val == -513
      - rs1_h3_val == 1
      - rs1_h2_val == 4
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001950]:KDMABT16 t6, t5, t4
      [0x80001954]:sd t6, 1296(ra)
 -- Signature Address: 0x80003820 Data: 0x295D19018A689330
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -5
      - rs2_h2_val == 4
      - rs1_h3_val == 256
      - rs1_h1_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmabt16', 'rs1 : x3', 'rs2 : x3', 'rd : x24', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -5', 'rs2_h2_val == 4', 'rs1_h3_val == -5', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x800003d0]:KDMABT16 s8, gp, gp
	-[0x800003d4]:sd s8, 0(t1)
Current Store : [0x800003d8] : sd gp, 8(t1) -- Store: [0x80003218]:0xFFFB0004FFFCFFF8




Last Coverpoint : ['rs1 : x1', 'rs2 : x1', 'rd : x1', 'rs1 == rs2 == rd', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -2', 'rs2_h2_val == -21846', 'rs2_h1_val == 16384', 'rs2_h0_val == -33', 'rs1_h3_val == -2', 'rs1_h2_val == -21846', 'rs1_h1_val == 16384', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x8000040c]:KDMABT16 ra, ra, ra
	-[0x80000410]:sd ra, 16(t1)
Current Store : [0x80000414] : sd ra, 24(t1) -- Store: [0x80003228]:0x000000023FF07FDF




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 4096', 'rs2_h2_val == -17', 'rs2_h1_val == 256', 'rs1_h3_val == -2049', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000448]:KDMABT16 s1, s8, a2
	-[0x8000044c]:sd s1, 32(t1)
Current Store : [0x80000450] : sd s8, 40(t1) -- Store: [0x80003238]:0xF7FF0003FFF9FF7F




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x30', 'rs1 == rd != rs2', 'rs1_h0_val == -32768', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs2_h2_val == -65', 'rs2_h1_val == 32767', 'rs2_h0_val == 0', 'rs1_h3_val == 8', 'rs1_h2_val == -2049', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000047c]:KDMABT16 t5, t5, a1
	-[0x80000480]:sd t5, 48(t1)
Current Store : [0x80000484] : sd t5, 56(t1) -- Store: [0x80003248]:0x000867ED80038000




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 512', 'rs2_h0_val == 4096', 'rs1_h1_val == -5', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004b4]:KDMABT16 fp, t6, fp
	-[0x800004b8]:sd fp, 64(t1)
Current Store : [0x800004bc] : sd t6, 72(t1) -- Store: [0x80003258]:0xFFFB0009FFFBFFBF




Last Coverpoint : ['rs1 : x5', 'rs2 : x25', 'rd : x13', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == 1024', 'rs2_h0_val == -65', 'rs1_h3_val == -17', 'rs1_h2_val == 32', 'rs1_h1_val == -129', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004f0]:KDMABT16 a3, t0, s9
	-[0x800004f4]:sd a3, 80(t1)
Current Store : [0x800004f8] : sd t0, 88(t1) -- Store: [0x80003268]:0xFFEF0020FF7F0020




Last Coverpoint : ['rs1 : x13', 'rs2 : x20', 'rd : x16', 'rs2_h3_val == -65', 'rs2_h2_val == 0', 'rs2_h1_val == -129', 'rs2_h0_val == -129', 'rs1_h3_val == -65', 'rs1_h2_val == -1', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000520]:KDMABT16 a6, a3, s4
	-[0x80000524]:sd a6, 96(t1)
Current Store : [0x80000528] : sd a3, 104(t1) -- Store: [0x80003278]:0xFFBFFFFFF7FFFF7F




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x23', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == 32767', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000554]:KDMABT16 s7, tp, s5
	-[0x80000558]:sd s7, 112(t1)
Current Store : [0x8000055c] : sd tp, 120(t1) -- Store: [0x80003288]:0xFFEF0003FFF60002




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x25', 'rs2_h3_val == 21845', 'rs2_h1_val == -4097', 'rs2_h0_val == 256', 'rs1_h3_val == 8192', 'rs1_h2_val == 21845', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000590]:KDMABT16 s9, a7, a5
	-[0x80000594]:sd s9, 128(t1)
Current Store : [0x80000598] : sd a7, 136(t1) -- Store: [0x80003298]:0x20005555FFFFFFF8




Last Coverpoint : ['rs1 : x23', 'rs2 : x22', 'rd : x12', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -2', 'rs2_h1_val == -8193', 'rs2_h0_val == 32', 'rs1_h3_val == 21845', 'rs1_h2_val == -8193', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800005d8]:KDMABT16 a2, s7, s6
	-[0x800005dc]:sd a2, 144(t1)
Current Store : [0x800005e0] : sd s7, 152(t1) -- Store: [0x800032a8]:0x5555DFFF55555555




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x14', 'rs2_h3_val == -16385', 'rs2_h2_val == -32768', 'rs1_h3_val == -33', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000060c]:KDMABT16 a4, fp, s11
	-[0x80000610]:sd a4, 160(t1)
Current Store : [0x80000614] : sd fp, 168(t1) -- Store: [0x800032b8]:0xFFDF0005FBFFFFFA




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x3', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000648]:KDMABT16 gp, sp, zero
	-[0x8000064c]:sd gp, 176(t1)
Current Store : [0x80000650] : sd sp, 184(t1) -- Store: [0x800032c8]:0x0007FFFF00097FFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x13', 'rd : x27', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == -4097', 'rs2_h2_val == 16', 'rs2_h1_val == -33', 'rs2_h0_val == -2049', 'rs1_h2_val == -32768', 'rs1_h1_val == 8', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000680]:KDMABT16 s11, a1, a3
	-[0x80000684]:sd s11, 192(t1)
Current Store : [0x80000688] : sd a1, 200(t1) -- Store: [0x800032d8]:0xFFFB800000080001




Last Coverpoint : ['rs1 : x26', 'rs2 : x14', 'rd : x18', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -2049', 'rs2_h0_val == -1', 'rs1_h3_val == 32767', 'rs1_h2_val == 1', 'rs1_h1_val == 32767', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800006b4]:KDMABT16 s2, s10, a4
	-[0x800006b8]:sd s2, 208(t1)
Current Store : [0x800006bc] : sd s10, 216(t1) -- Store: [0x800032e8]:0x7FFF00017FFFFFEF




Last Coverpoint : ['rs1 : x21', 'rs2 : x19', 'rd : x31', 'rs2_h3_val == -1025', 'rs2_h2_val == -1025', 'rs1_h3_val == 16', 'rs1_h1_val == 128', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800006ec]:KDMABT16 t6, s5, s3
	-[0x800006f0]:sd t6, 224(t1)
Current Store : [0x800006f4] : sd s5, 232(t1) -- Store: [0x800032f8]:0x0010FFF800800800




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x21', 'rs2_h3_val == -513', 'rs2_h2_val == -513', 'rs2_h0_val == 1', 'rs1_h2_val == -9', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000728]:KDMABT16 s5, s3, t4
	-[0x8000072c]:sd s5, 240(t1)
Current Store : [0x80000730] : sd s3, 248(t1) -- Store: [0x80003308]:0x0003FFF70800FFFC




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x15', 'rs2_h3_val == -257', 'rs2_h2_val == -16385', 'rs2_h0_val == 8192', 'rs1_h2_val == -2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000075c]:KDMABT16 a5, a6, s7
	-[0x80000760]:sd a5, 0(ra)
Current Store : [0x80000764] : sd a6, 8(ra) -- Store: [0x80003318]:0xFFFAFFFEFFFFFFFB




Last Coverpoint : ['rs1 : x27', 'rs2 : x2', 'rd : x10', 'rs2_h3_val == -129', 'rs2_h1_val == 8', 'rs1_h3_val == -513', 'rs1_h1_val == -33', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000798]:KDMABT16 a0, s11, sp
	-[0x8000079c]:sd a0, 16(ra)
Current Store : [0x800007a0] : sd s11, 24(ra) -- Store: [0x80003328]:0xFDFF0001FFDF0400




Last Coverpoint : ['rs1 : x12', 'rs2 : x10', 'rd : x26', 'rs2_h3_val == -33', 'rs2_h1_val == -65', 'rs2_h0_val == 21845', 'rs1_h2_val == -257', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800007d4]:KDMABT16 s10, a2, a0
	-[0x800007d8]:sd s10, 32(ra)
Current Store : [0x800007dc] : sd a2, 40(ra) -- Store: [0x80003338]:0x0010FEFF00100800




Last Coverpoint : ['rs1 : x6', 'rs2 : x31', 'rd : x20', 'rs2_h3_val == -17', 'rs2_h1_val == -21846', 'rs1_h2_val == 16384', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000808]:KDMABT16 s4, t1, t6
	-[0x8000080c]:sd s4, 48(ra)
Current Store : [0x80000810] : sd t1, 56(ra) -- Store: [0x80003348]:0xFFFB400000050080




Last Coverpoint : ['rs1 : x28', 'rs2 : x9', 'rd : x7', 'rs2_h3_val == -9', 'rs2_h0_val == -513', 'rs1_h3_val == -8193', 'rs1_h2_val == 0', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000084c]:KDMABT16 t2, t3, s1
	-[0x80000850]:sd t2, 64(ra)
Current Store : [0x80000854] : sd t3, 72(ra) -- Store: [0x80003358]:0xDFFF00004000BFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x17', 'rs2_h3_val == -3', 'rs2_h0_val == -2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000888]:KDMABT16 a7, a4, tp
	-[0x8000088c]:sd a7, 80(ra)
Current Store : [0x80000890] : sd a4, 88(ra) -- Store: [0x80003368]:0xFFFCFFF87FFF0004




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x11', 'rs2_h3_val == -32768', 'rs2_h2_val == 2']
Last Code Sequence : 
	-[0x800008c4]:KDMABT16 a1, t4, s10
	-[0x800008c8]:sd a1, 96(ra)
Current Store : [0x800008cc] : sd t4, 104(ra) -- Store: [0x80003378]:0x20003FFF00020020




Last Coverpoint : ['rs1 : x25', 'rs2 : x28', 'rd : x2', 'rs2_h3_val == 16384', 'rs2_h1_val == -16385', 'rs2_h0_val == -1025', 'rs1_h2_val == -5', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000900]:KDMABT16 sp, s9, t3
	-[0x80000904]:sd sp, 112(ra)
Current Store : [0x80000908] : sd s9, 120(ra) -- Store: [0x80003388]:0xC000FFFB0009AAAA




Last Coverpoint : ['rs1 : x15', 'rs2 : x7', 'rd : x28', 'rs2_h3_val == 8192', 'rs2_h0_val == -5', 'rs1_h2_val == 64', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000934]:KDMABT16 t3, a5, t2
	-[0x80000938]:sd t3, 128(ra)
Current Store : [0x8000093c] : sd a5, 136(ra) -- Store: [0x80003398]:0x00030040EFFFFFF9




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x6', 'rs2_h3_val == 2048', 'rs2_h1_val == -17', 'rs1_h3_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000968]:KDMABT16 t1, zero, t0
	-[0x8000096c]:sd t1, 144(ra)
Current Store : [0x80000970] : sd zero, 152(ra) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x0', 'rs2_h3_val == 1024', 'rs2_h2_val == 256', 'rs2_h0_val == 512', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x800009a4]:KDMABT16 zero, s2, a7
	-[0x800009a8]:sd zero, 160(ra)
Current Store : [0x800009ac] : sd s2, 168(ra) -- Store: [0x800033b8]:0xFFBF008000080003




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x22', 'rs2_h3_val == 512', 'rs2_h2_val == 8192', 'rs2_h1_val == -5', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x800009e0]:KDMABT16 s6, s4, t5
	-[0x800009e4]:sd s6, 176(ra)
Current Store : [0x800009e8] : sd s4, 184(ra) -- Store: [0x800033c8]:0xEFFF400000050003




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x19', 'rs2_h3_val == 256', 'rs2_h2_val == 16384', 'rs2_h1_val == 1024', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000a14]:KDMABT16 s3, t2, s2
	-[0x80000a18]:sd s3, 192(ra)
Current Store : [0x80000a1c] : sd t2, 200(ra) -- Store: [0x800033d8]:0xFFF840000010FFF8




Last Coverpoint : ['rs1 : x9', 'rs2 : x24', 'rd : x4', 'rs2_h3_val == 128', 'rs2_h1_val == 32', 'rs2_h0_val == 8', 'rs1_h1_val == -2', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000a4c]:KDMABT16 tp, s1, s8
	-[0x80000a50]:sd tp, 208(ra)
Current Store : [0x80000a54] : sd s1, 216(ra) -- Store: [0x800033e8]:0xFFBFFFF9FFFE0008




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x5', 'rs2_h3_val == 64', 'rs1_h3_val == -16385', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000a84]:KDMABT16 t0, s6, t1
	-[0x80000a88]:sd t0, 224(ra)
Current Store : [0x80000a8c] : sd s6, 232(ra) -- Store: [0x800033f8]:0xBFFF0001FFFBFFF7




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x29', 'rs2_h3_val == 32', 'rs2_h2_val == -1', 'rs2_h1_val == 64', 'rs2_h0_val == -9', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000ac0]:KDMABT16 t4, a0, a6
	-[0x80000ac4]:sd t4, 240(ra)
Current Store : [0x80000ac8] : sd a0, 248(ra) -- Store: [0x80003408]:0x000800800800DFFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs1_h2_val == -17', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000af4]:KDMABT16 t6, t5, t4
	-[0x80000af8]:sd t6, 256(ra)
Current Store : [0x80000afc] : sd t5, 264(ra) -- Store: [0x80003418]:0x0000FFEFFBFFFDFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h2_val == 8', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000b30]:KDMABT16 t6, t5, t4
	-[0x80000b34]:sd t6, 272(ra)
Current Store : [0x80000b38] : sd t5, 280(ra) -- Store: [0x80003428]:0xEFFF000800040080




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80000b6c]:KDMABT16 t6, t5, t4
	-[0x80000b70]:sd t6, 288(ra)
Current Store : [0x80000b74] : sd t5, 296(ra) -- Store: [0x80003438]:0xBFFF02000009FFF8




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h3_val == 64', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000ba4]:KDMABT16 t6, t5, t4
	-[0x80000ba8]:sd t6, 304(ra)
Current Store : [0x80000bac] : sd t5, 312(ra) -- Store: [0x80003448]:0x0040FFFEFFFDC000




Last Coverpoint : ['rs1_h2_val == -33', 'rs1_h1_val == -32768', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000bdc]:KDMABT16 t6, t5, t4
	-[0x80000be0]:sd t6, 320(ra)
Current Store : [0x80000be4] : sd t5, 328(ra) -- Store: [0x80003458]:0x0006FFDF8000FEFF




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h3_val == 512', 'rs1_h2_val == -513', 'rs1_h1_val == 4096', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000c14]:KDMABT16 t6, t5, t4
	-[0x80000c18]:sd t6, 336(ra)
Current Store : [0x80000c1c] : sd t5, 344(ra) -- Store: [0x80003468]:0x0200FDFF1000FFFE




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h1_val == 1024', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000c50]:KDMABT16 t6, t5, t4
	-[0x80000c54]:sd t6, 352(ra)
Current Store : [0x80000c58] : sd t5, 360(ra) -- Store: [0x80003478]:0x0400FFF904001000




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000c8c]:KDMABT16 t6, t5, t4
	-[0x80000c90]:sd t6, 368(ra)
Current Store : [0x80000c94] : sd t5, 376(ra) -- Store: [0x80003488]:0x5555400002000008




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_h3_val == -21846', 'rs1_h2_val == 256', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000cc8]:KDMABT16 t6, t5, t4
	-[0x80000ccc]:sd t6, 384(ra)
Current Store : [0x80000cd0] : sd t5, 392(ra) -- Store: [0x80003498]:0xAAAA01000100FFF9




Last Coverpoint : ['rs1_h3_val == -9', 'rs1_h2_val == -3', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000cf8]:KDMABT16 t6, t5, t4
	-[0x80000cfc]:sd t6, 400(ra)
Current Store : [0x80000d00] : sd t5, 408(ra) -- Store: [0x800034a8]:0xFFF7FFFD00400001




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h2_val == 1024', 'rs1_h1_val == 32', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000d30]:KDMABT16 t6, t5, t4
	-[0x80000d34]:sd t6, 416(ra)
Current Store : [0x80000d38] : sd t5, 424(ra) -- Store: [0x800034b8]:0x000904000020FBFF




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000d6c]:KDMABT16 t6, t5, t4
	-[0x80000d70]:sd t6, 432(ra)
Current Store : [0x80000d74] : sd t5, 440(ra) -- Store: [0x800034c8]:0x000700060001FFBF




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h3_val == 1', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80000da4]:KDMABT16 t6, t5, t4
	-[0x80000da8]:sd t6, 448(ra)
Current Store : [0x80000dac] : sd t5, 456(ra) -- Store: [0x800034d8]:0x000110000000FFF6




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000de0]:KDMABT16 t6, t5, t4
	-[0x80000de4]:sd t6, 464(ra)
Current Store : [0x80000de8] : sd t5, 472(ra) -- Store: [0x800034e8]:0xFFEFC0005555EFFF




Last Coverpoint : ['rs2_h2_val == 4096', 'rs2_h0_val == -4097', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x80000e1c]:KDMABT16 t6, t5, t4
	-[0x80000e20]:sd t6, 480(ra)
Current Store : [0x80000e24] : sd t5, 488(ra) -- Store: [0x800034f8]:0x01000003C000FFDF




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == -65', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000e54]:KDMABT16 t6, t5, t4
	-[0x80000e58]:sd t6, 496(ra)
Current Store : [0x80000e5c] : sd t5, 504(ra) -- Store: [0x80003508]:0x0400FFF9FFBFFFFD




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == -32768', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000e9c]:KDMABT16 t6, t5, t4
	-[0x80000ea0]:sd t6, 512(ra)
Current Store : [0x80000ea4] : sd t5, 520(ra) -- Store: [0x80003518]:0xAAAAFFF77FFF4000




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h3_val == 32', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000ed0]:KDMABT16 t6, t5, t4
	-[0x80000ed4]:sd t6, 528(ra)
Current Store : [0x80000ed8] : sd t5, 536(ra) -- Store: [0x80003528]:0x0020008000010200




Last Coverpoint : ['rs2_h2_val == -4097', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000f08]:KDMABT16 t6, t5, t4
	-[0x80000f0c]:sd t6, 544(ra)
Current Store : [0x80000f10] : sd t5, 552(ra) -- Store: [0x80003538]:0xFFFA555500070100




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 16', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000f44]:KDMABT16 t6, t5, t4
	-[0x80000f48]:sd t6, 560(ra)
Current Store : [0x80000f4c] : sd t5, 568(ra) -- Store: [0x80003548]:0x020080003FFF0040




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == -2', 'rs1_h1_val == -513', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000f7c]:KDMABT16 t6, t5, t4
	-[0x80000f80]:sd t6, 576(ra)
Current Store : [0x80000f84] : sd t5, 584(ra) -- Store: [0x80003558]:0x00090080FDFF0010




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000fac]:KDMABT16 t6, t5, t4
	-[0x80000fb0]:sd t6, 592(ra)
Current Store : [0x80000fb4] : sd t5, 600(ra) -- Store: [0x80003568]:0xFFEFFFFBFFF60000




Last Coverpoint : ['rs2_h2_val == 1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000fe8]:KDMABT16 t6, t5, t4
	-[0x80000fec]:sd t6, 608(ra)
Current Store : [0x80000ff0] : sd t5, 616(ra) -- Store: [0x80003578]:0xFDFFFFFDFFFDFFFF




Last Coverpoint : ['rs2_h3_val == 2']
Last Code Sequence : 
	-[0x80001018]:KDMABT16 t6, t5, t4
	-[0x8000101c]:sd t6, 624(ra)
Current Store : [0x80001020] : sd t5, 632(ra) -- Store: [0x80003588]:0xFFF7FFEF02000080




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80001048]:KDMABT16 t6, t5, t4
	-[0x8000104c]:sd t6, 640(ra)
Current Store : [0x80001050] : sd t5, 648(ra) -- Store: [0x80003598]:0x000302003FFFFDFF




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == 64', 'rs1_h3_val == -257', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80001080]:KDMABT16 t6, t5, t4
	-[0x80001084]:sd t6, 656(ra)
Current Store : [0x80001088] : sd t5, 664(ra) -- Store: [0x800035a8]:0xFEFF0010FFBFFFEF




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800010b4]:KDMABT16 t6, t5, t4
	-[0x800010b8]:sd t6, 672(ra)
Current Store : [0x800010bc] : sd t5, 680(ra) -- Store: [0x800035b8]:0xAAAA020000015555




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x800010e8]:KDMABT16 t6, t5, t4
	-[0x800010ec]:sd t6, 688(ra)
Current Store : [0x800010f0] : sd t5, 696(ra) -- Store: [0x800035c8]:0x4000FFDFFFFDC000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001124]:KDMABT16 t6, t5, t4
	-[0x80001128]:sd t6, 704(ra)
Current Store : [0x8000112c] : sd t5, 712(ra) -- Store: [0x800035d8]:0xFFDF0100EFFF3FFF




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000115c]:KDMABT16 t6, t5, t4
	-[0x80001160]:sd t6, 720(ra)
Current Store : [0x80001164] : sd t5, 728(ra) -- Store: [0x800035e8]:0xFFBFFFFFFFFAFFFC




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == 2048', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001198]:KDMABT16 t6, t5, t4
	-[0x8000119c]:sd t6, 736(ra)
Current Store : [0x800011a0] : sd t5, 744(ra) -- Store: [0x800035f8]:0xFFDF0200DFFF0040




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800011cc]:KDMABT16 t6, t5, t4
	-[0x800011d0]:sd t6, 752(ra)
Current Store : [0x800011d4] : sd t5, 760(ra) -- Store: [0x80003608]:0xFFBF0005FFF60002




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80001200]:KDMABT16 t6, t5, t4
	-[0x80001204]:sd t6, 768(ra)
Current Store : [0x80001208] : sd t5, 776(ra) -- Store: [0x80003618]:0x000000202000FFFF




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80001238]:KDMABT16 t6, t5, t4
	-[0x8000123c]:sd t6, 784(ra)
Current Store : [0x80001240] : sd t5, 792(ra) -- Store: [0x80003628]:0x0004020000063FFF




Last Coverpoint : ['rs1_h3_val == -1025', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001274]:KDMABT16 t6, t5, t4
	-[0x80001278]:sd t6, 800(ra)
Current Store : [0x8000127c] : sd t5, 808(ra) -- Store: [0x80003638]:0xFBFF7FFFFFFE5555




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800012b0]:KDMABT16 t6, t5, t4
	-[0x800012b4]:sd t6, 816(ra)
Current Store : [0x800012b8] : sd t5, 824(ra) -- Store: [0x80003648]:0xFF7FDFFF2000FBFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == -33', 'rs1_h3_val == -3', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x800012e4]:KDMABT16 t6, t5, t4
	-[0x800012e8]:sd t6, 832(ra)
Current Store : [0x800012ec] : sd t5, 840(ra) -- Store: [0x80003658]:0xFFFD2000FFF8FF7F




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80001314]:KDMABT16 t6, t5, t4
	-[0x80001318]:sd t6, 848(ra)
Current Store : [0x8000131c] : sd t5, 856(ra) -- Store: [0x80003668]:0xAAAAFFF600102000




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80001354]:KDMABT16 t6, t5, t4
	-[0x80001358]:sd t6, 864(ra)
Current Store : [0x8000135c] : sd t5, 872(ra) -- Store: [0x80003678]:0x8000FFFF40008000




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001390]:KDMABT16 t6, t5, t4
	-[0x80001394]:sd t6, 880(ra)
Current Store : [0x80001398] : sd t5, 888(ra) -- Store: [0x80003688]:0x1000F7FF0200FFEF




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x800013cc]:KDMABT16 t6, t5, t4
	-[0x800013d0]:sd t6, 896(ra)
Current Store : [0x800013d4] : sd t5, 904(ra) -- Store: [0x80003698]:0x00080009FFDF0040




Last Coverpoint : ['rs2_h1_val == -257', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80001408]:KDMABT16 t6, t5, t4
	-[0x8000140c]:sd t6, 912(ra)
Current Store : [0x80001410] : sd t5, 920(ra) -- Store: [0x800036a8]:0x0800FFDF1000FFF6




Last Coverpoint : ['rs2_h2_val == -2049']
Last Code Sequence : 
	-[0x80001444]:KDMABT16 t6, t5, t4
	-[0x80001448]:sd t6, 928(ra)
Current Store : [0x8000144c] : sd t5, 936(ra) -- Store: [0x800036b8]:0x04004000FFFC0800




Last Coverpoint : ['rs1_h3_val == 128', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80001478]:KDMABT16 t6, t5, t4
	-[0x8000147c]:sd t6, 944(ra)
Current Store : [0x80001480] : sd t5, 952(ra) -- Store: [0x800036c8]:0x0080BFFF00084000




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -16385', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800014b4]:KDMABT16 t6, t5, t4
	-[0x800014b8]:sd t6, 960(ra)
Current Store : [0x800014bc] : sd t5, 968(ra) -- Store: [0x800036d8]:0x0800080000020400




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800014f0]:KDMABT16 t6, t5, t4
	-[0x800014f4]:sd t6, 976(ra)
Current Store : [0x800014f8] : sd t5, 984(ra) -- Store: [0x800036e8]:0xFF7FFDFFFEFFFFFA




Last Coverpoint : ['rs1_h3_val == 2']
Last Code Sequence : 
	-[0x80001524]:KDMABT16 t6, t5, t4
	-[0x80001528]:sd t6, 992(ra)
Current Store : [0x8000152c] : sd t5, 1000(ra) -- Store: [0x800036f8]:0x0002FFF6FBFF0100




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x8000155c]:KDMABT16 t6, t5, t4
	-[0x80001560]:sd t6, 1008(ra)
Current Store : [0x80001564] : sd t5, 1016(ra) -- Store: [0x80003708]:0x0008010000404000




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001598]:KDMABT16 t6, t5, t4
	-[0x8000159c]:sd t6, 1024(ra)
Current Store : [0x800015a0] : sd t5, 1032(ra) -- Store: [0x80003718]:0xFFFF0003FEFF0200




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x800015d4]:KDMABT16 t6, t5, t4
	-[0x800015d8]:sd t6, 1040(ra)
Current Store : [0x800015dc] : sd t5, 1048(ra) -- Store: [0x80003728]:0x3FFF4000FFFDFFFA




Last Coverpoint : ['opcode : kdmabt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -3', 'rs1_h2_val == -21846', 'rs1_h1_val == 32767', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000160c]:KDMABT16 t6, t5, t4
	-[0x80001610]:sd t6, 1056(ra)
Current Store : [0x80001614] : sd t5, 1064(ra) -- Store: [0x80003738]:0xFFF6AAAA7FFF1000




Last Coverpoint : ['rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x80001648]:KDMABT16 t6, t5, t4
	-[0x8000164c]:sd t6, 1072(ra)
Current Store : [0x80001650] : sd t5, 1080(ra) -- Store: [0x80003748]:0x3FFFEFFF80007FFF




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80001684]:KDMABT16 t6, t5, t4
	-[0x80001688]:sd t6, 1088(ra)
Current Store : [0x8000168c] : sd t5, 1096(ra) -- Store: [0x80003758]:0x0009DFFF0004FFFE




Last Coverpoint : ['rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800016c0]:KDMABT16 t6, t5, t4
	-[0x800016c4]:sd t6, 1104(ra)
Current Store : [0x800016c8] : sd t5, 1112(ra) -- Store: [0x80003768]:0xEFFF00010004FFEF




Last Coverpoint : ['opcode : kdmabt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 0', 'rs2_h1_val == -4097', 'rs2_h0_val == -513', 'rs1_h3_val == 1', 'rs1_h2_val == 4', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800016f0]:KDMABT16 t6, t5, t4
	-[0x800016f4]:sd t6, 1120(ra)
Current Store : [0x800016f8] : sd t5, 1128(ra) -- Store: [0x80003778]:0x00010004FFF60400




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x8000172c]:KDMABT16 t6, t5, t4
	-[0x80001730]:sd t6, 1136(ra)
Current Store : [0x80001734] : sd t5, 1144(ra) -- Store: [0x80003788]:0xFFF80002F7FF5555




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001770]:KDMABT16 t6, t5, t4
	-[0x80001774]:sd t6, 1152(ra)
Current Store : [0x80001778] : sd t5, 1160(ra) -- Store: [0x80003798]:0x7FFFFFDFAAAA3FFF




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800017ac]:KDMABT16 t6, t5, t4
	-[0x800017b0]:sd t6, 1168(ra)
Current Store : [0x800017b4] : sd t5, 1176(ra) -- Store: [0x800037a8]:0x4000FDFFFFF7FFFA




Last Coverpoint : ['rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x800017e0]:KDMABT16 t6, t5, t4
	-[0x800017e4]:sd t6, 1184(ra)
Current Store : [0x800017e8] : sd t5, 1192(ra) -- Store: [0x800037b8]:0xFFDFFBFF04000100




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001814]:KDMABT16 t6, t5, t4
	-[0x80001818]:sd t6, 1200(ra)
Current Store : [0x8000181c] : sd t5, 1208(ra) -- Store: [0x800037c8]:0x80000003BFFFFFFC




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80001844]:KDMABT16 t6, t5, t4
	-[0x80001848]:sd t6, 1216(ra)
Current Store : [0x8000184c] : sd t5, 1224(ra) -- Store: [0x800037d8]:0x1000BFFFFFFB0009




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80001880]:KDMABT16 t6, t5, t4
	-[0x80001884]:sd t6, 1232(ra)
Current Store : [0x80001888] : sd t5, 1240(ra) -- Store: [0x800037e8]:0x4000FFFE0400FBFF




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x800018b4]:KDMABT16 t6, t5, t4
	-[0x800018b8]:sd t6, 1248(ra)
Current Store : [0x800018bc] : sd t5, 1256(ra) -- Store: [0x800037f8]:0x00020009FFFFFF7F




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800018e4]:KDMABT16 t6, t5, t4
	-[0x800018e8]:sd t6, 1264(ra)
Current Store : [0x800018ec] : sd t5, 1272(ra) -- Store: [0x80003808]:0x10004000FFEF2000




Last Coverpoint : ['rs1_h2_val == -129']
Last Code Sequence : 
	-[0x80001918]:KDMABT16 t6, t5, t4
	-[0x8000191c]:sd t6, 1280(ra)
Current Store : [0x80001920] : sd t5, 1288(ra) -- Store: [0x80003818]:0x0200FF7F0040FFFB




Last Coverpoint : ['opcode : kdmabt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -5', 'rs2_h2_val == 4', 'rs1_h3_val == 256', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80001950]:KDMABT16 t6, t5, t4
	-[0x80001954]:sd t6, 1296(ra)
Current Store : [0x80001958] : sd t5, 1304(ra) -- Store: [0x80003828]:0x0100FFF620008000




Last Coverpoint : ['rs1_h2_val == -65', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000198c]:KDMABT16 t6, t5, t4
	-[0x80001990]:sd t6, 1312(ra)
Current Store : [0x80001994] : sd t5, 1320(ra) -- Store: [0x80003838]:0xFFFEFFBF4000F7FF




Last Coverpoint : ['rs2_h3_val == -8193']
Last Code Sequence : 
	-[0x800019c8]:KDMABT16 t6, t5, t4
	-[0x800019cc]:sd t6, 1328(ra)
Current Store : [0x800019d0] : sd t5, 1336(ra) -- Store: [0x80003848]:0x0007FFFF00097FFF





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

|s.no|            signature             |                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                    |                                  code                                   |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xDB7D5BD5DB7D5C3D|- opcode : kdmabt16<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -5<br> - rs2_h2_val == 4<br> - rs1_h3_val == -5<br> - rs1_h2_val == 4<br> |[0x800003d0]:KDMABT16 s8, gp, gp<br> [0x800003d4]:sd s8, 0(t1)<br>       |
|   2|[0x80003220]<br>0x000000023FF07FDF|- rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -2<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -33<br> - rs1_h3_val == -2<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -33<br>                                                                                                                        |[0x8000040c]:KDMABT16 ra, ra, ra<br> [0x80000410]:sd ra, 16(t1)<br>      |
|   3|[0x80003230]<br>0xADFF4DBEADFDEBBE|- rs1 : x24<br> - rs2 : x12<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -17<br> - rs2_h1_val == 256<br> - rs1_h3_val == -2049<br> - rs1_h0_val == -129<br>       |[0x80000448]:KDMABT16 s1, s8, a2<br> [0x8000044c]:sd s1, 32(t1)<br>      |
|   4|[0x80003240]<br>0x000867ED80038000|- rs1 : x30<br> - rs2 : x11<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_h0_val == -32768<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs2_h2_val == -65<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 0<br> - rs1_h3_val == 8<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 2<br>                                                                                                                                                                                            |[0x8000047c]:KDMABT16 t5, t5, a1<br> [0x80000480]:sd t5, 48(t1)<br>      |
|   5|[0x80003250]<br>0xFFF8FF8B01FF0C00|- rs1 : x31<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -5<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                       |[0x800004b4]:KDMABT16 fp, t6, fp<br> [0x800004b8]:sd fp, 64(t1)<br>      |
|   6|[0x80003260]<br>0xEACA995BEADFED1B|- rs1 : x5<br> - rs2 : x25<br> - rd : x13<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 1024<br> - rs2_h0_val == -65<br> - rs1_h3_val == -17<br> - rs1_h2_val == 32<br> - rs1_h1_val == -129<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                  |[0x800004f0]:KDMABT16 a3, t0, s9<br> [0x800004f4]:sd a3, 80(t1)<br>      |
|   7|[0x80003270]<br>0x7D5BFE5D7D5C7FDD|- rs1 : x13<br> - rs2 : x20<br> - rd : x16<br> - rs2_h3_val == -65<br> - rs2_h2_val == 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == -129<br> - rs1_h3_val == -65<br> - rs1_h2_val == -1<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                           |[0x80000520]:KDMABT16 a6, a3, s4<br> [0x80000524]:sd a6, 96(t1)<br>      |
|   8|[0x80003280]<br>0xB6FB17FBB6F9B7FB|- rs1 : x4<br> - rs2 : x21<br> - rd : x23<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == 32767<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000554]:KDMABT16 s7, tp, s5<br> [0x80000558]:sd s7, 112(t1)<br>     |
|   9|[0x80003290]<br>0xE38D2072FFFAFFCF|- rs1 : x17<br> - rs2 : x15<br> - rd : x25<br> - rs2_h3_val == 21845<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 256<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                              |[0x80000590]:KDMABT16 s9, a7, a5<br> [0x80000594]:sd s9, 128(t1)<br>     |
|  10|[0x800032a0]<br>0xF0003FF1EBAB1550|- rs1 : x23<br> - rs2 : x22<br> - rd : x12<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -2<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 32<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                  |[0x800005d8]:KDMABT16 a2, s7, s6<br> [0x800005dc]:sd a2, 144(t1)<br>     |
|  11|[0x800032b0]<br>0xF56D7763F572F76D|- rs1 : x8<br> - rs2 : x27<br> - rd : x14<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -32768<br> - rs1_h3_val == -33<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                             |[0x8000060c]:KDMABT16 a4, fp, s11<br> [0x80000610]:sd a4, 160(t1)<br>    |
|  12|[0x800032c0]<br>0xFFFB0004FFFCFFF8|- rs1 : x2<br> - rs2 : x0<br> - rd : x3<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000648]:KDMABT16 gp, sp, zero<br> [0x8000064c]:sd gp, 176(t1)<br>   |
|  13|[0x800032d0]<br>0xD0008000BFFFFFC7|- rs1 : x11<br> - rs2 : x13<br> - rd : x27<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 16<br> - rs2_h1_val == -33<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 8<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                  |[0x80000680]:KDMABT16 s11, a1, a3<br> [0x80000684]:sd s11, 192(t1)<br>   |
|  14|[0x800032e0]<br>0xDF56EF74DF45FF98|- rs1 : x26<br> - rs2 : x14<br> - rd : x18<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -2049<br> - rs2_h0_val == -1<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 1<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                         |[0x800006b4]:KDMABT16 s2, s10, a4<br> [0x800006b8]:sd s2, 208(t1)<br>    |
|  15|[0x800032f0]<br>0xFFFB401907FBEFBF|- rs1 : x21<br> - rs2 : x19<br> - rd : x31<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -1025<br> - rs1_h3_val == 16<br> - rs1_h1_val == 128<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                        |[0x800006ec]:KDMABT16 t6, s5, s3<br> [0x800006f0]:sd t6, 224(t1)<br>     |
|  16|[0x80003300]<br>0x0011240A00800830|- rs1 : x19<br> - rs2 : x29<br> - rd : x21<br> - rs2_h3_val == -513<br> - rs2_h2_val == -513<br> - rs2_h0_val == 1<br> - rs1_h2_val == -9<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                            |[0x80000728]:KDMABT16 s5, s3, t4<br> [0x8000072c]:sd s5, 240(t1)<br>     |
|  17|[0x80003310]<br>0x5555040BEFFF013C|- rs1 : x16<br> - rs2 : x23<br> - rd : x15<br> - rs2_h3_val == -257<br> - rs2_h2_val == -16385<br> - rs2_h0_val == 8192<br> - rs1_h2_val == -2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                         |[0x8000075c]:KDMABT16 a5, a6, s7<br> [0x80000760]:sd a5, 0(ra)<br>       |
|  18|[0x80003320]<br>0xFFFFFEFE00004200|- rs1 : x27<br> - rs2 : x2<br> - rd : x10<br> - rs2_h3_val == -129<br> - rs2_h1_val == 8<br> - rs1_h3_val == -513<br> - rs1_h1_val == -33<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                            |[0x80000798]:KDMABT16 a0, s11, sp<br> [0x8000079c]:sd a0, 16(ra)<br>     |
|  19|[0x80003330]<br>0x7FFF42437FFBEFEF|- rs1 : x12<br> - rs2 : x10<br> - rd : x26<br> - rs2_h3_val == -33<br> - rs2_h1_val == -65<br> - rs2_h0_val == 21845<br> - rs1_h2_val == -257<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                          |[0x800007d4]:KDMABT16 s10, a2, a0<br> [0x800007d8]:sd s10, 32(ra)<br>    |
|  20|[0x80003340]<br>0xFFB68000FF2AA97F|- rs1 : x6<br> - rs2 : x31<br> - rd : x20<br> - rs2_h3_val == -17<br> - rs2_h1_val == -21846<br> - rs1_h2_val == 16384<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                |[0x80000808]:KDMABT16 s4, t1, t6<br> [0x8000080c]:sd s4, 48(ra)<br>      |
|  21|[0x80003350]<br>0xB7FBB6FAB800B70E|- rs1 : x28<br> - rs2 : x9<br> - rd : x7<br> - rs2_h3_val == -9<br> - rs2_h0_val == -513<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 0<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                           |[0x8000084c]:KDMABT16 t2, t3, s1<br> [0x80000850]:sd t2, 64(ra)<br>      |
|  22|[0x80003360]<br>0x2000558500000020|- rs1 : x14<br> - rs2 : x4<br> - rd : x17<br> - rs2_h3_val == -3<br> - rs2_h0_val == -2<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000888]:KDMABT16 a7, a4, tp<br> [0x8000088c]:sd a7, 80(ra)<br>      |
|  23|[0x80003370]<br>0xBFFC80000007FE01|- rs1 : x29<br> - rs2 : x26<br> - rd : x11<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x800008c4]:KDMABT16 a1, t4, s10<br> [0x800008c8]:sd a1, 96(ra)<br>     |
|  24|[0x80003380]<br>0xFF7C84002AB3AAAF|- rs1 : x25<br> - rs2 : x28<br> - rd : x2<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -1025<br> - rs1_h2_val == -5<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                    |[0x80000900]:KDMABT16 sp, s9, t3<br> [0x80000904]:sd sp, 112(ra)<br>     |
|  25|[0x80003390]<br>0x4010FFFEBFFC7C0D|- rs1 : x15<br> - rs2 : x7<br> - rd : x28<br> - rs2_h3_val == 8192<br> - rs2_h0_val == -5<br> - rs1_h2_val == 64<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000934]:KDMABT16 t3, a5, t2<br> [0x80000938]:sd t3, 128(ra)<br>     |
|  26|[0x800033a0]<br>0xFFFB400000050080|- rs1 : x0<br> - rs2 : x5<br> - rd : x6<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -17<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                    |[0x80000968]:KDMABT16 t1, zero, t0<br> [0x8000096c]:sd t1, 144(ra)<br>   |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x17<br> - rd : x0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 256<br> - rs2_h0_val == 512<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                    |[0x800009a4]:KDMABT16 zero, s2, a7<br> [0x800009a8]:sd zero, 160(ra)<br> |
|  28|[0x800033c0]<br>0x7FFFFFFFDFFF0002|- rs1 : x20<br> - rs2 : x30<br> - rd : x22<br> - rs2_h3_val == 512<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -5<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                  |[0x800009e0]:KDMABT16 s6, s4, t5<br> [0x800009e4]:sd s6, 176(ra)<br>     |
|  29|[0x800033d0]<br>0x0083FFF70800BFFC|- rs1 : x7<br> - rs2 : x18<br> - rd : x19<br> - rs2_h3_val == 256<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000a14]:KDMABT16 s3, t2, s2<br> [0x80000a18]:sd s3, 192(ra)<br>     |
|  30|[0x800033e0]<br>0xFFFCF910000601FE|- rs1 : x9<br> - rs2 : x24<br> - rd : x4<br> - rs2_h3_val == 128<br> - rs2_h1_val == 32<br> - rs2_h0_val == 8<br> - rs1_h1_val == -2<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                    |[0x80000a4c]:KDMABT16 tp, s1, s8<br> [0x80000a50]:sd tp, 208(ra)<br>     |
|  31|[0x800033f0]<br>0x08000082FFEF0DC0|- rs1 : x22<br> - rs2 : x6<br> - rd : x5<br> - rs2_h3_val == 64<br> - rs1_h3_val == -16385<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000a84]:KDMABT16 t0, s6, t1<br> [0x80000a88]:sd t0, 224(ra)<br>     |
|  32|[0x80003400]<br>0x20005FFFFFF1FFA0|- rs1 : x10<br> - rs2 : x16<br> - rd : x29<br> - rs2_h3_val == 32<br> - rs2_h2_val == -1<br> - rs2_h1_val == 64<br> - rs2_h0_val == -9<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                              |[0x80000ac0]:KDMABT16 t4, a0, a6<br> [0x80000ac4]:sd t4, 240(ra)<br>     |
|  33|[0x80003410]<br>0xFFEEFDE7AAAB4442|- rs2_h3_val == 16<br> - rs1_h2_val == -17<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000af4]:KDMABT16 t6, t5, t4<br> [0x80000af8]:sd t6, 256(ra)<br>     |
|  34|[0x80003420]<br>0xFFEEFE67AAAB6442|- rs2_h3_val == 8<br> - rs1_h2_val == 8<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b30]:KDMABT16 t6, t5, t4<br> [0x80000b34]:sd t6, 272(ra)<br>     |
|  35|[0x80003430]<br>0xFFEF0E67AAAB63D2|- rs2_h3_val == 4<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b6c]:KDMABT16 t6, t5, t4<br> [0x80000b70]:sd t6, 288(ra)<br>     |
|  36|[0x80003440]<br>0xFFEF0E478000E3D2|- rs2_h1_val == 21845<br> - rs1_h3_val == 64<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ba4]:KDMABT16 t6, t5, t4<br> [0x80000ba8]:sd t6, 304(ra)<br>     |
|  37|[0x80003450]<br>0xFFEF0F0D80000000|- rs1_h2_val == -33<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bdc]:KDMABT16 t6, t5, t4<br> [0x80000be0]:sd t6, 320(ra)<br>     |
|  38|[0x80003460]<br>0xFFEF331F80000000|- rs2_h0_val == -32768<br> - rs1_h3_val == 512<br> - rs1_h2_val == -513<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000c14]:KDMABT16 t6, t5, t4<br> [0x80000c18]:sd t6, 336(ra)<br>     |
|  39|[0x80003470]<br>0xFFEF32E780000000|- rs1_h3_val == 1024<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c50]:KDMABT16 t6, t5, t4<br> [0x80000c54]:sd t6, 352(ra)<br>     |
|  40|[0x80003480]<br>0x006F32E780000800|- rs2_h1_val == 128<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c8c]:KDMABT16 t6, t5, t4<br> [0x80000c90]:sd t6, 368(ra)<br>     |
|  41|[0x80003490]<br>0x006EB0E78000082A|- rs2_h1_val == -3<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 256<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cc8]:KDMABT16 t6, t5, t4<br> [0x80000ccc]:sd t6, 384(ra)<br>     |
|  42|[0x800034a0]<br>0x006EB10B80000000|- rs1_h3_val == -9<br> - rs1_h2_val == -3<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cf8]:KDMABT16 t6, t5, t4<br> [0x80000cfc]:sd t6, 400(ra)<br>     |
|  43|[0x800034b0]<br>0x006E910B80000000|- rs2_h0_val == -257<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 32<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d30]:KDMABT16 t6, t5, t4<br> [0x80000d34]:sd t6, 416(ra)<br>     |
|  44|[0x800034c0]<br>0x006E60FF80000492|- rs2_h1_val == -9<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d6c]:KDMABT16 t6, t5, t4<br> [0x80000d70]:sd t6, 432(ra)<br>     |
|  45|[0x800034d0]<br>0x002E40FF800004F6|- rs2_h2_val == 128<br> - rs1_h3_val == 1<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000da4]:KDMABT16 t6, t5, t4<br> [0x80000da8]:sd t6, 448(ra)<br>     |
|  46|[0x800034e0]<br>0xD583C0FF80000000|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000de0]:KDMABT16 t6, t5, t4<br> [0x80000de4]:sd t6, 464(ra)<br>     |
|  47|[0x800034f0]<br>0xD585C0FD80000108|- rs2_h2_val == 4096<br> - rs2_h0_val == -4097<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e1c]:KDMABT16 t6, t5, t4<br> [0x80000e20]:sd t6, 480(ra)<br>     |
|  48|[0x80003500]<br>0xD585C1EB80000000|- rs2_h0_val == 16384<br> - rs1_h1_val == -65<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000e54]:KDMABT16 t6, t5, t4<br> [0x80000e58]:sd t6, 496(ra)<br>     |
|  49|[0x80003510]<br>0xD58BC1F780000000|- rs2_h2_val == 64<br> - rs2_h1_val == -32768<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e9c]:KDMABT16 t6, t5, t4<br> [0x80000ea0]:sd t6, 512(ra)<br>     |
|  50|[0x80003520]<br>0xD58BD1F780000000|- rs2_h2_val == -9<br> - rs1_h3_val == 32<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ed0]:KDMABT16 t6, t5, t4<br> [0x80000ed4]:sd t6, 528(ra)<br>     |
|  51|[0x80003530]<br>0xD5607CCD80000000|- rs2_h2_val == -4097<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000f08]:KDMABT16 t6, t5, t4<br> [0x80000f0c]:sd t6, 544(ra)<br>     |
|  52|[0x80003540]<br>0x15607CCD80000200|- rs2_h1_val == 4<br> - rs2_h0_val == 16<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f44]:KDMABT16 t6, t5, t4<br> [0x80000f48]:sd t6, 560(ra)<br>     |
|  53|[0x80003550]<br>0x15607DCD800001C0|- rs2_h3_val == 1<br> - rs2_h1_val == -2<br> - rs1_h1_val == -513<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f7c]:KDMABT16 t6, t5, t4<br> [0x80000f80]:sd t6, 576(ra)<br>     |
|  54|[0x80003560]<br>0x15607C8D800001C0|- rs2_h1_val == -1<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000fac]:KDMABT16 t6, t5, t4<br> [0x80000fb0]:sd t6, 592(ra)<br>     |
|  55|[0x80003570]<br>0x1560768D800001C8|- rs2_h2_val == 1<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000fe8]:KDMABT16 t6, t5, t4<br> [0x80000fec]:sd t6, 608(ra)<br>     |
|  56|[0x80003580]<br>0x15607649804001C8|- rs2_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001018]:KDMABT16 t6, t5, t4<br> [0x8000101c]:sd t6, 624(ra)<br>     |
|  57|[0x80003590]<br>0x15609649803FF9C4|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001048]:KDMABT16 t6, t5, t4<br> [0x8000104c]:sd t6, 640(ra)<br>     |
|  58|[0x800035a0]<br>0x15609689803FF9A2|- rs2_h1_val == 1<br> - rs2_h0_val == 64<br> - rs1_h3_val == -257<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001080]:KDMABT16 t6, t5, t4<br> [0x80001084]:sd t6, 656(ra)<br>     |
|  59|[0x800035b0]<br>0x16609689803FF9A2|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800010b4]:KDMABT16 t6, t5, t4<br> [0x800010b8]:sd t6, 672(ra)<br>     |
|  60|[0x800035c0]<br>0x1660A74B805079A2|- rs2_h0_val == -21846<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800010e8]:KDMABT16 t6, t5, t4<br> [0x800010ec]:sd t6, 688(ra)<br>     |
|  61|[0x800035d0]<br>0x1660954B80000000|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001124]:KDMABT16 t6, t5, t4<br> [0x80001128]:sd t6, 704(ra)<br>     |
|  62|[0x800035e0]<br>0x1660956D80000000|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000115c]:KDMABT16 t6, t5, t4<br> [0x80001160]:sd t6, 720(ra)<br>     |
|  63|[0x800035f0]<br>0x1660716D80000000|- rs2_h1_val == -2049<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001198]:KDMABT16 t6, t5, t4<br> [0x8000119c]:sd t6, 736(ra)<br>     |
|  64|[0x80003600]<br>0x16605D6380008000|- rs2_h1_val == 8192<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800011cc]:KDMABT16 t6, t5, t4<br> [0x800011d0]:sd t6, 752(ra)<br>     |
|  65|[0x80003610]<br>0x16505D6380007FF0|- rs2_h0_val == 4<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001200]:KDMABT16 t6, t5, t4<br> [0x80001204]:sd t6, 768(ra)<br>     |
|  66|[0x80003620]<br>0x164E596380000000|- rs2_h0_val == 2<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001238]:KDMABT16 t6, t5, t4<br> [0x8000123c]:sd t6, 784(ra)<br>     |
|  67|[0x80003630]<br>0x154D5B6580000000|- rs1_h3_val == -1025<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001274]:KDMABT16 t6, t5, t4<br> [0x80001278]:sd t6, 800(ra)<br>     |
|  68|[0x80003640]<br>0x254DDB6580000000|- rs2_h1_val == 16<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800012b0]:KDMABT16 t6, t5, t4<br> [0x800012b4]:sd t6, 816(ra)<br>     |
|  69|[0x80003650]<br>0x254D9B6580000102|- rs2_h3_val == -1<br> - rs2_h2_val == -33<br> - rs1_h3_val == -3<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800012e4]:KDMABT16 t6, t5, t4<br> [0x800012e8]:sd t6, 832(ra)<br>     |
|  70|[0x80003660]<br>0x254D9B6584000102|- rs2_h1_val == 4096<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001314]:KDMABT16 t6, t5, t4<br> [0x80001318]:sd t6, 848(ra)<br>     |
|  71|[0x80003670]<br>0x254D936583F70102|- rs2_h2_val == 21845<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001354]:KDMABT16 t6, t5, t4<br> [0x80001358]:sd t6, 864(ra)<br>     |
|  72|[0x80003680]<br>0x25CDB36783F701AC|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001390]:KDMABT16 t6, t5, t4<br> [0x80001394]:sd t6, 880(ra)<br>     |
|  73|[0x80003690]<br>0x25CDB11583F7052C|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800013cc]:KDMABT16 t6, t5, t4<br> [0x800013d0]:sd t6, 896(ra)<br>     |
|  74|[0x800036a0]<br>0x25CDACF583F71940|- rs2_h1_val == -257<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001408]:KDMABT16 t6, t5, t4<br> [0x8000140c]:sd t6, 912(ra)<br>     |
|  75|[0x800036b0]<br>0x27CDACF583F60940|- rs2_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001444]:KDMABT16 t6, t5, t4<br> [0x80001448]:sd t6, 928(ra)<br>     |
|  76|[0x800036c0]<br>0x27CF2CFB83F28940|- rs1_h3_val == 128<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001478]:KDMABT16 t6, t5, t4<br> [0x8000147c]:sd t6, 944(ra)<br>     |
|  77|[0x800036d0]<br>0x27CF3CFB81F28940|- rs2_h2_val == -257<br> - rs2_h0_val == -16385<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800014b4]:KDMABT16 t6, t5, t4<br> [0x800014b8]:sd t6, 960(ra)<br>     |
|  78|[0x800036e0]<br>0x27BF34FB81F4094C|- rs2_h2_val == -129<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800014f0]:KDMABT16 t6, t5, t4<br> [0x800014f4]:sd t6, 976(ra)<br>     |
|  79|[0x800036f0]<br>0x27BF359B82F4074C|- rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001524]:KDMABT16 t6, t5, t4<br> [0x80001528]:sd t6, 992(ra)<br>     |
|  80|[0x80003700]<br>0x27BF559B82F0074C|- rs2_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000155c]:KDMABT16 t6, t5, t4<br> [0x80001560]:sd t6, 1008(ra)<br>    |
|  81|[0x80003710]<br>0x27BF55CB8270034C|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001598]:KDMABT16 t6, t5, t4<br> [0x8000159c]:sd t6, 1024(ra)<br>    |
|  82|[0x80003720]<br>0x27C2D5CB8276034C|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800015d4]:KDMABT16 t6, t5, t4<br> [0x800015d8]:sd t6, 1040(ra)<br>    |
|  83|[0x80003740]<br>0x26BF706F8285432C|- rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001648]:KDMABT16 t6, t5, t4<br> [0x8000164c]:sd t6, 1072(ra)<br>    |
|  84|[0x80003750]<br>0x26BEB06982855330|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001684]:KDMABT16 t6, t5, t4<br> [0x80001688]:sd t6, 1088(ra)<br>    |
|  85|[0x80003760]<br>0x26BEB08982859752|- rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016c0]:KDMABT16 t6, t5, t4<br> [0x800016c4]:sd t6, 1104(ra)<br>    |
|  86|[0x80003780]<br>0x26BF3089820839FA|- rs2_h2_val == 512<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000172c]:KDMABT16 t6, t5, t4<br> [0x80001730]:sd t6, 1136(ra)<br>    |
|  87|[0x80003790]<br>0x26AEB0899207F9FA|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001770]:KDMABT16 t6, t5, t4<br> [0x80001774]:sd t6, 1152(ra)<br>    |
|  88|[0x800037a0]<br>0x26AED49B9207FA72|- rs2_h2_val == 2048<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800017ac]:KDMABT16 t6, t5, t4<br> [0x800017b0]:sd t6, 1168(ra)<br>    |
|  89|[0x800037b0]<br>0x295A2F47920BFA72|- rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800017e0]:KDMABT16 t6, t5, t4<br> [0x800017e4]:sd t6, 1184(ra)<br>    |
|  90|[0x800037c0]<br>0x295A8F47920DFA72|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001814]:KDMABT16 t6, t5, t4<br> [0x80001818]:sd t6, 1200(ra)<br>    |
|  91|[0x800037d0]<br>0x295B0F49920E8A72|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001844]:KDMABT16 t6, t5, t4<br> [0x80001848]:sd t6, 1216(ra)<br>    |
|  92|[0x800037e0]<br>0x295B0F3D920EAA7A|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001880]:KDMABT16 t6, t5, t4<br> [0x80001884]:sd t6, 1232(ra)<br>    |
|  93|[0x800037f0]<br>0x295B0E899264AB26|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800018b4]:KDMABT16 t6, t5, t4<br> [0x800018b8]:sd t6, 1248(ra)<br>    |
|  94|[0x80003800]<br>0x295D0E898A646B26|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018e4]:KDMABT16 t6, t5, t4<br> [0x800018e8]:sd t6, 1264(ra)<br>    |
|  95|[0x80003810]<br>0x295D189D8A649330|- rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001918]:KDMABT16 t6, t5, t4<br> [0x8000191c]:sd t6, 1280(ra)<br>    |
|  96|[0x80003830]<br>0x295D1A0586681330|- rs1_h2_val == -65<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000198c]:KDMABT16 t6, t5, t4<br> [0x80001990]:sd t6, 1312(ra)<br>    |
|  97|[0x80003840]<br>0x295D5A0786571352|- rs2_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800019c8]:KDMABT16 t6, t5, t4<br> [0x800019cc]:sd t6, 1328(ra)<br>    |
