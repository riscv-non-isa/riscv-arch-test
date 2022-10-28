
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ae0')]      |
| SIG_REGION                | [('0x80003210', '0x80003890', '208 dwords')]      |
| COV_LABELS                | kdmabb16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmabb16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 208      |
| STAT1                     | 100      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 104     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba8]:KDMABB16 t6, t5, t4
      [0x80000bac]:sd t6, 304(ra)
 -- Signature Address: 0x80003440 Data: 0xF7F9AD01032D184B
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 0
      - rs2_h2_val == 16
      - rs2_h1_val == 1
      - rs2_h0_val == 2
      - rs1_h3_val == -33
      - rs1_h1_val == 0
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016ec]:KDMABB16 t6, t5, t4
      [0x800016f0]:sd t6, 1104(ra)
 -- Signature Address: 0x80003760 Data: 0x8A12CCB423FA205F
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h2_val == -16385
      - rs2_h1_val == -2
      - rs1_h3_val == -129
      - rs1_h2_val == -513
      - rs1_h1_val == -257




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a8c]:KDMABB16 t6, t5, t4
      [0x80001a90]:sd t6, 1376(ra)
 -- Signature Address: 0x80003870 Data: 0x888D44CA2CCF07FB
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb16
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
      - rs2_h3_val == 4096
      - rs2_h1_val == 512
      - rs2_h0_val == -65
      - rs1_h3_val == 4096
      - rs1_h2_val == 4
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ac8]:KDMABB16 t6, t5, t4
      [0x80001acc]:sd t6, 1392(ra)
 -- Signature Address: 0x80003880 Data: 0x880D24CA2CCEC5FB
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 512
      - rs2_h2_val == 4096
      - rs2_h1_val == -17
      - rs2_h0_val == -33
      - rs1_h3_val == 32
      - rs1_h2_val == -1025
      - rs1_h0_val == 256






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmabb16', 'rs1 : x27', 'rs2 : x27', 'rd : x15', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -9', 'rs2_h2_val == -513', 'rs2_h1_val == 4096', 'rs1_h3_val == -9', 'rs1_h2_val == -513', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800003cc]:KDMABB16 a5, s11, s11
	-[0x800003d0]:sd a5, 0(tp)
Current Store : [0x800003d4] : sd s11, 8(tp) -- Store: [0x80003218]:0xFFF7FDFF1000FFFC




Last Coverpoint : ['rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 4096', 'rs2_h1_val == 512', 'rs2_h0_val == -65', 'rs1_h3_val == 4096', 'rs1_h1_val == 512', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000408]:KDMABB16 s7, s7, s7
	-[0x8000040c]:sd s7, 16(tp)
Current Store : [0x80000410] : sd s7, 24(tp) -- Store: [0x80003228]:0x10000069020120C1




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -257', 'rs1_h2_val == 16', 'rs1_h1_val == 1', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000440]:KDMABB16 s11, t4, t3
	-[0x80000444]:sd s11, 32(tp)
Current Store : [0x80000448] : sd t4, 40(tp) -- Store: [0x80003238]:0xFFFA001000015555




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x26', 'rs1 == rd != rs2', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -17', 'rs2_h1_val == 4', 'rs2_h0_val == -8193', 'rs1_h3_val == -4097', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000047c]:KDMABB16 s10, s10, t6
	-[0x80000480]:sd s10, 48(tp)
Current Store : [0x80000484] : sd s10, 56(tp) -- Store: [0x80003248]:0xF002C000FFFBBFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x30', 'rs2 == rd != rs1', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 8192', 'rs2_h2_val == 8192', 'rs2_h1_val == 1', 'rs2_h0_val == 128', 'rs1_h3_val == 2', 'rs1_h2_val == 8192', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800004b8]:KDMABB16 t5, s3, t5
	-[0x800004bc]:sd t5, 64(tp)
Current Store : [0x800004c0] : sd s3, 72(tp) -- Store: [0x80003258]:0x00022000FFFCFFEF




Last Coverpoint : ['rs1 : x3', 'rs2 : x9', 'rd : x13', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 32', 'rs2_h1_val == -17', 'rs2_h0_val == 4', 'rs1_h3_val == 128', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800004f0]:KDMABB16 a3, gp, s1
	-[0x800004f4]:sd a3, 80(tp)
Current Store : [0x800004f8] : sd gp, 88(tp) -- Store: [0x80003268]:0x0080FFFA3FFFAAAA




Last Coverpoint : ['rs1 : x10', 'rs2 : x15', 'rd : x1', 'rs2_h3_val == 4', 'rs2_h2_val == 4', 'rs2_h0_val == -129', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x8000052c]:KDMABB16 ra, a0, a5
	-[0x80000530]:sd ra, 96(tp)
Current Store : [0x80000534] : sd a0, 104(tp) -- Store: [0x80003278]:0xFFF800010007AAAA




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x14', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 0', 'rs1_h3_val == -65', 'rs1_h2_val == 512', 'rs1_h1_val == -129', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000568]:KDMABB16 a4, s5, a1
	-[0x8000056c]:sd a4, 112(tp)
Current Store : [0x80000570] : sd s5, 120(tp) -- Store: [0x80003288]:0xFFBF0200FF7FFF7F




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x6', 'rs2_h3_val == 1024', 'rs2_h2_val == 21845', 'rs2_h1_val == -5', 'rs2_h0_val == -17', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800005a4]:KDMABB16 t1, s2, gp
	-[0x800005a8]:sd t1, 128(tp)
Current Store : [0x800005ac] : sd s2, 136(tp) -- Store: [0x80003298]:0xEFFF00010400FFEF




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -21846', 'rs2_h0_val == -21846', 'rs1_h3_val == 1024', 'rs1_h2_val == 2', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800005e0]:KDMABB16 sp, t5, t2
	-[0x800005e4]:sd sp, 144(tp)
Current Store : [0x800005e8] : sd t5, 152(tp) -- Store: [0x800032a8]:0x040000020040FFF6




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x8', 'rs2_h3_val == 32767', 'rs2_h1_val == -4097', 'rs1_h3_val == -16385', 'rs1_h2_val == -3', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x8000061c]:KDMABB16 fp, ra, s10
	-[0x80000620]:sd fp, 160(tp)
Current Store : [0x80000624] : sd ra, 168(tp) -- Store: [0x800032b8]:0xBFFFFFFD0007FFDF




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x29', 'rs2_h3_val == -16385', 'rs2_h1_val == -1', 'rs2_h0_val == 21845', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000064c]:KDMABB16 t4, s9, a2
	-[0x80000650]:sd t4, 176(tp)
Current Store : [0x80000654] : sd s9, 184(tp) -- Store: [0x800032c8]:0xEFFF0001C0000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x7', 'rs2_h3_val == -8193', 'rs2_h2_val == 128', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000688]:KDMABB16 t2, a5, ra
	-[0x8000068c]:sd t2, 192(tp)
Current Store : [0x80000690] : sd a5, 200(tp) -- Store: [0x800032d8]:0xFFF600050007FEFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x19', 'rs2_h3_val == -4097', 'rs2_h2_val == -65', 'rs2_h0_val == 64', 'rs1_h3_val == 8', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800006c4]:KDMABB16 s3, s1, sp
	-[0x800006c8]:sd s3, 208(tp)
Current Store : [0x800006cc] : sd s1, 216(tp) -- Store: [0x800032e8]:0x000800033FFFBFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x24', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 8192', 'rs1_h2_val == -5', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000700]:KDMABB16 s8, a7, zero
	-[0x80000704]:sd s8, 224(tp)
Current Store : [0x80000708] : sd a7, 232(tp) -- Store: [0x800032f8]:0x2000FFFBFFF60400




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x20', 'rs2_h3_val == -1025', 'rs2_h2_val == 32767', 'rs2_h0_val == 2', 'rs1_h3_val == 16384', 'rs1_h2_val == 0', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000730]:KDMABB16 s4, s6, t4
	-[0x80000734]:sd s4, 240(tp)
Current Store : [0x80000738] : sd s6, 248(tp) -- Store: [0x80003308]:0x4000000000010004




Last Coverpoint : ['rs1 : x12', 'rs2 : x14', 'rd : x21', 'rs2_h3_val == -513', 'rs2_h2_val == -2', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x8000076c]:KDMABB16 s5, a2, a4
	-[0x80000770]:sd s5, 0(ra)
Current Store : [0x80000774] : sd a2, 8(ra) -- Store: [0x80003318]:0xFFFDFFF800400400




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x17', 'rs2_h3_val == -257', 'rs2_h2_val == -1025', 'rs2_h1_val == -2049', 'rs1_h3_val == -33', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800007a4]:KDMABB16 a7, t1, s8
	-[0x800007a8]:sd a7, 16(ra)
Current Store : [0x800007ac] : sd t1, 24(ra) -- Store: [0x80003328]:0xFFDFFFF9FEFFAAAA




Last Coverpoint : ['rs1 : x20', 'rs2 : x17', 'rd : x12', 'rs2_h3_val == -129', 'rs2_h0_val == -513', 'rs1_h2_val == -21846', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800007d4]:KDMABB16 a2, s4, a7
	-[0x800007d8]:sd a2, 32(ra)
Current Store : [0x800007dc] : sd s4, 40(ra) -- Store: [0x80003338]:0xFFF6AAAAC0000010




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x18', 'rs2_h3_val == -65', 'rs2_h2_val == 16', 'rs1_h3_val == -1025', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000810]:KDMABB16 s2, t0, a3
	-[0x80000814]:sd s2, 48(ra)
Current Store : [0x80000818] : sd t0, 56(ra) -- Store: [0x80003348]:0xFBFFFFFB8000FFFC




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == -33', 'rs2_h0_val == 1024', 'rs1_h3_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000848]:KDMABB16 a1, zero, s9
	-[0x8000084c]:sd a1, 64(ra)
Current Store : [0x80000850] : sd zero, 72(ra) -- Store: [0x80003358]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x10', 'rs2_h3_val == -5', 'rs2_h1_val == 64', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000880]:KDMABB16 a0, sp, t0
	-[0x80000884]:sd a0, 80(ra)
Current Store : [0x80000888] : sd sp, 88(ra) -- Store: [0x80003368]:0x0000FFFAFFF82000




Last Coverpoint : ['rs1 : x4', 'rs2 : x6', 'rd : x3', 'rs2_h3_val == -3', 'rs2_h1_val == -1025', 'rs1_h3_val == 32767', 'rs1_h2_val == 4096', 'rs1_h1_val == 8192', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800008c0]:KDMABB16 gp, tp, t1
	-[0x800008c4]:sd gp, 96(ra)
Current Store : [0x800008c8] : sd tp, 104(ra) -- Store: [0x80003378]:0x7FFF10002000FFF7




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x4', 'rs2_h3_val == -2', 'rs2_h2_val == 4096', 'rs1_h2_val == -257', 'rs1_h1_val == 32', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800008f4]:KDMABB16 tp, a1, a0
	-[0x800008f8]:sd tp, 112(ra)
Current Store : [0x800008fc] : sd a1, 120(ra) -- Store: [0x80003388]:0xFFF8FEFF00200100




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x16', 'rs2_h3_val == -32768', 'rs1_h3_val == -2049', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000938]:KDMABB16 a6, t6, fp
	-[0x8000093c]:sd a6, 128(ra)
Current Store : [0x80000940] : sd t6, 136(ra) -- Store: [0x80003398]:0xF7FF3FFFFF7FEFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x9', 'rs2_h3_val == 16384', 'rs1_h2_val == -17', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000970]:KDMABB16 s1, fp, a6
	-[0x80000974]:sd s1, 144(ra)
Current Store : [0x80000978] : sd fp, 152(ra) -- Store: [0x800033a8]:0x1000FFEFFFFD0010




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x28', 'rs2_h3_val == 2048', 'rs2_h2_val == 1024', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x800009a8]:KDMABB16 t3, a4, tp
	-[0x800009ac]:sd t3, 160(ra)
Current Store : [0x800009b0] : sd a4, 168(ra) -- Store: [0x800033b8]:0xEFFF000600070000




Last Coverpoint : ['rs1 : x13', 'rs2 : x22', 'rd : x0', 'rs2_h3_val == 512', 'rs2_h0_val == -33', 'rs1_h3_val == 32', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x800009e4]:KDMABB16 zero, a3, s6
	-[0x800009e8]:sd zero, 176(ra)
Current Store : [0x800009ec] : sd a3, 184(ra) -- Store: [0x800033c8]:0x0020FBFFFFF60100




Last Coverpoint : ['rs1 : x16', 'rs2 : x19', 'rd : x5', 'rs2_h3_val == 256', 'rs2_h2_val == -16385', 'rs2_h0_val == 32767', 'rs1_h2_val == -65', 'rs1_h1_val == -21846', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000a28]:KDMABB16 t0, a6, s3
	-[0x80000a2c]:sd t0, 192(ra)
Current Store : [0x80000a30] : sd a6, 200(ra) -- Store: [0x800033d8]:0xBFFFFFBFAAAADFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x18', 'rd : x25', 'rs2_h3_val == 128', 'rs2_h2_val == -1', 'rs1_h3_val == 1', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80000a58]:KDMABB16 s9, t3, s2
	-[0x80000a5c]:sd s9, 208(ra)
Current Store : [0x80000a60] : sd t3, 216(ra) -- Store: [0x800033e8]:0x00017FFFFEFFFFF9




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x31', 'rs2_h3_val == 64', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000a94]:KDMABB16 t6, s8, s5
	-[0x80000a98]:sd t6, 224(ra)
Current Store : [0x80000a9c] : sd s8, 232(ra) -- Store: [0x800033f8]:0xFFF9000000805555




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x22', 'rs2_h3_val == 16', 'rs2_h1_val == 1024', 'rs2_h0_val == -1025', 'rs1_h2_val == 32', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000acc]:KDMABB16 s6, t2, s4
	-[0x80000ad0]:sd s6, 240(ra)
Current Store : [0x80000ad4] : sd t2, 248(ra) -- Store: [0x80003408]:0x040000200800FFF9




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x80000b08]:KDMABB16 t6, t5, t4
	-[0x80000b0c]:sd t6, 256(ra)
Current Store : [0x80000b10] : sd t5, 264(ra) -- Store: [0x80003418]:0xEFFFFFF6FEFFFFF6




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == 256', 'rs2_h0_val == -32768', 'rs1_h2_val == -2049', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000b40]:KDMABB16 t6, t5, t4
	-[0x80000b44]:sd t6, 272(ra)
Current Store : [0x80000b48] : sd t5, 280(ra) -- Store: [0x80003428]:0xFFBFF7FF4000FEFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h3_val == 256', 'rs1_h2_val == -2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000b74]:KDMABB16 t6, t5, t4
	-[0x80000b78]:sd t6, 288(ra)
Current Store : [0x80000b7c] : sd t5, 296(ra) -- Store: [0x80003438]:0x0100FFFE8000FFFB




Last Coverpoint : ['opcode : kdmabb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 0', 'rs2_h2_val == 16', 'rs2_h1_val == 1', 'rs2_h0_val == 2', 'rs1_h3_val == -33', 'rs1_h1_val == 0', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000ba8]:KDMABB16 t6, t5, t4
	-[0x80000bac]:sd t6, 304(ra)
Current Store : [0x80000bb0] : sd t5, 312(ra) -- Store: [0x80003448]:0xFFDFFFF80000BFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h1_val == 4', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000bdc]:KDMABB16 t6, t5, t4
	-[0x80000be0]:sd t6, 320(ra)
Current Store : [0x80000be4] : sd t5, 328(ra) -- Store: [0x80003458]:0x0002002000040800




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h0_val == 512', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000c14]:KDMABB16 t6, t5, t4
	-[0x80000c18]:sd t6, 336(ra)
Current Store : [0x80000c1c] : sd t5, 344(ra) -- Store: [0x80003468]:0xFFF6AAAAFFFB2000




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000c4c]:KDMABB16 t6, t5, t4
	-[0x80000c50]:sd t6, 352(ra)
Current Store : [0x80000c54] : sd t5, 360(ra) -- Store: [0x80003478]:0xF7FFFFFCFFFE0000




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == -4097', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000c84]:KDMABB16 t6, t5, t4
	-[0x80000c88]:sd t6, 368(ra)
Current Store : [0x80000c8c] : sd t5, 376(ra) -- Store: [0x80003488]:0x000700041000FFDF




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000cc0]:KDMABB16 t6, t5, t4
	-[0x80000cc4]:sd t6, 384(ra)
Current Store : [0x80000cc8] : sd t5, 392(ra) -- Store: [0x80003498]:0xF7FFFFF60100FFFC




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h2_val == -129', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000cfc]:KDMABB16 t6, t5, t4
	-[0x80000d00]:sd t6, 400(ra)
Current Store : [0x80000d04] : sd t5, 408(ra) -- Store: [0x800034a8]:0x0000FF7F0010AAAA




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h1_val == -129', 'rs1_h2_val == 21845', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d3c]:KDMABB16 t6, t5, t4
	-[0x80000d40]:sd t6, 416(ra)
Current Store : [0x80000d44] : sd t5, 424(ra) -- Store: [0x800034b8]:0x000555550008C000




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == 16384', 'rs1_h1_val == 2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000d74]:KDMABB16 t6, t5, t4
	-[0x80000d78]:sd t6, 432(ra)
Current Store : [0x80000d7c] : sd t5, 440(ra) -- Store: [0x800034c8]:0x0000002000020020




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h3_val == -32768', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000da4]:KDMABB16 t6, t5, t4
	-[0x80000da8]:sd t6, 448(ra)
Current Store : [0x80000dac] : sd t5, 456(ra) -- Store: [0x800034d8]:0x80007FFFFFFFFFDF




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_h3_val == 64', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000de0]:KDMABB16 t6, t5, t4
	-[0x80000de4]:sd t6, 464(ra)
Current Store : [0x80000de8] : sd t5, 472(ra) -- Store: [0x800034e8]:0x00400006FFFC7FFF




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h3_val == -21846', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000e24]:KDMABB16 t6, t5, t4
	-[0x80000e28]:sd t6, 480(ra)
Current Store : [0x80000e2c] : sd t5, 488(ra) -- Store: [0x800034f8]:0xAAAA55550800F7FF




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e60]:KDMABB16 t6, t5, t4
	-[0x80000e64]:sd t6, 496(ra)
Current Store : [0x80000e68] : sd t5, 504(ra) -- Store: [0x80003508]:0x40003FFF0400FBFF




Last Coverpoint : ['rs2_h2_val == 16384', 'rs2_h0_val == -2049', 'rs1_h2_val == -16385', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e94]:KDMABB16 t6, t5, t4
	-[0x80000e98]:sd t6, 512(ra)
Current Store : [0x80000e9c] : sd t5, 520(ra) -- Store: [0x80003518]:0x0008BFFFFEFFFDFF




Last Coverpoint : ['rs2_h1_val == -2', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x80000ed0]:KDMABB16 t6, t5, t4
	-[0x80000ed4]:sd t6, 528(ra)
Current Store : [0x80000ed8] : sd t5, 536(ra) -- Store: [0x80003528]:0x8000EFFFFEFFFFBF




Last Coverpoint : ['rs2_h2_val == -21846', 'rs2_h0_val == -1', 'rs1_h2_val == 128', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f0c]:KDMABB16 t6, t5, t4
	-[0x80000f10]:sd t6, 544(ra)
Current Store : [0x80000f14] : sd t5, 552(ra) -- Store: [0x80003538]:0xEFFF00800080FFFD




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f48]:KDMABB16 t6, t5, t4
	-[0x80000f4c]:sd t6, 560(ra)
Current Store : [0x80000f50] : sd t5, 568(ra) -- Store: [0x80003548]:0x000300060040FFFE




Last Coverpoint : ['rs1_h3_val == 4', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f80]:KDMABB16 t6, t5, t4
	-[0x80000f84]:sd t6, 576(ra)
Current Store : [0x80000f88] : sd t5, 584(ra) -- Store: [0x80003558]:0x0004FFFA00024000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h3_val == -1', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000fb0]:KDMABB16 t6, t5, t4
	-[0x80000fb4]:sd t6, 592(ra)
Current Store : [0x80000fb8] : sd t5, 600(ra) -- Store: [0x80003568]:0xFFFF3FFF00051000




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 8192', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000fec]:KDMABB16 t6, t5, t4
	-[0x80000ff0]:sd t6, 608(ra)
Current Store : [0x80000ff4] : sd t5, 616(ra) -- Store: [0x80003578]:0x0080FFFD08000200




Last Coverpoint : ['rs1_h3_val == -2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001020]:KDMABB16 t6, t5, t4
	-[0x80001024]:sd t6, 624(ra)
Current Store : [0x80001028] : sd t5, 632(ra) -- Store: [0x80003588]:0xFFFEFF7FFFF80080




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_h2_val == 2048', 'rs1_h1_val == -1025', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000105c]:KDMABB16 t6, t5, t4
	-[0x80001060]:sd t6, 640(ra)
Current Store : [0x80001064] : sd t5, 648(ra) -- Store: [0x80003598]:0x00200800FBFF0040




Last Coverpoint : ['rs2_h3_val == -2049', 'rs1_h3_val == -257', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80001094]:KDMABB16 t6, t5, t4
	-[0x80001098]:sd t6, 656(ra)
Current Store : [0x8000109c] : sd t5, 664(ra) -- Store: [0x800035a8]:0xFEFFC00000040008




Last Coverpoint : ['rs2_h1_val == -16385', 'rs2_h0_val == 1', 'rs1_h3_val == 512', 'rs1_h2_val == 8', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800010d0]:KDMABB16 t6, t5, t4
	-[0x800010d4]:sd t6, 672(ra)
Current Store : [0x800010d8] : sd t5, 680(ra) -- Store: [0x800035b8]:0x02000008FFF80002




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h3_val == -5', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000110c]:KDMABB16 t6, t5, t4
	-[0x80001110]:sd t6, 688(ra)
Current Store : [0x80001114] : sd t5, 696(ra) -- Store: [0x800035c8]:0xFFFB00801000FFFF




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h2_val == 256', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001148]:KDMABB16 t6, t5, t4
	-[0x8000114c]:sd t6, 704(ra)
Current Store : [0x80001150] : sd t5, 712(ra) -- Store: [0x800035d8]:0xAAAA0100FFDFFF7F




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001180]:KDMABB16 t6, t5, t4
	-[0x80001184]:sd t6, 720(ra)
Current Store : [0x80001188] : sd t5, 728(ra) -- Store: [0x800035e8]:0x00040007FEFFC000




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800011b8]:KDMABB16 t6, t5, t4
	-[0x800011bc]:sd t6, 736(ra)
Current Store : [0x800011c0] : sd t5, 744(ra) -- Store: [0x800035f8]:0xFFFE0009FFF73FFF




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800011f0]:KDMABB16 t6, t5, t4
	-[0x800011f4]:sd t6, 752(ra)
Current Store : [0x800011f8] : sd t5, 760(ra) -- Store: [0x80003608]:0x4000C000FFF8C000




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h0_val == -5', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x8000122c]:KDMABB16 t6, t5, t4
	-[0x80001230]:sd t6, 768(ra)
Current Store : [0x80001234] : sd t5, 776(ra) -- Store: [0x80003618]:0xFFFBFFF700200020




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80001268]:KDMABB16 t6, t5, t4
	-[0x8000126c]:sd t6, 784(ra)
Current Store : [0x80001270] : sd t5, 792(ra) -- Store: [0x80003628]:0xFFF6FFFBFFFCFFF8




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000129c]:KDMABB16 t6, t5, t4
	-[0x800012a0]:sd t6, 800(ra)
Current Store : [0x800012a4] : sd t5, 808(ra) -- Store: [0x80003638]:0xFFF90001F7FF1000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h3_val == -17']
Last Code Sequence : 
	-[0x800012d8]:KDMABB16 t6, t5, t4
	-[0x800012dc]:sd t6, 816(ra)
Current Store : [0x800012e0] : sd t5, 824(ra) -- Store: [0x80003648]:0xFFEFFFEF00090009




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001308]:KDMABB16 t6, t5, t4
	-[0x8000130c]:sd t6, 832(ra)
Current Store : [0x80001310] : sd t5, 840(ra) -- Store: [0x80003658]:0x4000FFBF0020C000




Last Coverpoint : ['rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x80001344]:KDMABB16 t6, t5, t4
	-[0x80001348]:sd t6, 848(ra)
Current Store : [0x8000134c] : sd t5, 856(ra) -- Store: [0x80003668]:0x5555FFEF00207FFF




Last Coverpoint : ['rs1_h3_val == -8193', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x8000137c]:KDMABB16 t6, t5, t4
	-[0x80001380]:sd t6, 864(ra)
Current Store : [0x80001384] : sd t5, 872(ra) -- Store: [0x80003678]:0xDFFFFFBFEFFFFFFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == -21846', 'rs1_h3_val == -513']
Last Code Sequence : 
	-[0x800013b8]:KDMABB16 t6, t5, t4
	-[0x800013bc]:sd t6, 880(ra)
Current Store : [0x800013c0] : sd t5, 888(ra) -- Store: [0x80003688]:0xFDFFFFFA0200FFFD




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800013f4]:KDMABB16 t6, t5, t4
	-[0x800013f8]:sd t6, 896(ra)
Current Store : [0x800013fc] : sd t5, 904(ra) -- Store: [0x80003698]:0xFF7FFFFCFFFD0008




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001430]:KDMABB16 t6, t5, t4
	-[0x80001434]:sd t6, 912(ra)
Current Store : [0x80001438] : sd t5, 920(ra) -- Store: [0x800036a8]:0xFFF70400FFFD0020




Last Coverpoint : ['rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80001470]:KDMABB16 t6, t5, t4
	-[0x80001474]:sd t6, 928(ra)
Current Store : [0x80001478] : sd t5, 936(ra) -- Store: [0x800036b8]:0x08000200FFFCFFF8




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x800014a8]:KDMABB16 t6, t5, t4
	-[0x800014ac]:sd t6, 944(ra)
Current Store : [0x800014b0] : sd t5, 952(ra) -- Store: [0x800036c8]:0x1000FFFBFBFF4000




Last Coverpoint : ['rs2_h2_val == -257']
Last Code Sequence : 
	-[0x800014dc]:KDMABB16 t6, t5, t4
	-[0x800014e0]:sd t6, 960(ra)
Current Store : [0x800014e4] : sd t5, 968(ra) -- Store: [0x800036d8]:0x2000001000100005




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x80001518]:KDMABB16 t6, t5, t4
	-[0x8000151c]:sd t6, 976(ra)
Current Store : [0x80001520] : sd t5, 984(ra) -- Store: [0x800036e8]:0x0010000200200020




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x80001550]:KDMABB16 t6, t5, t4
	-[0x80001554]:sd t6, 992(ra)
Current Store : [0x80001558] : sd t5, 1000(ra) -- Store: [0x800036f8]:0xDFFFFBFF0003FFFF




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x8000158c]:KDMABB16 t6, t5, t4
	-[0x80001590]:sd t6, 1008(ra)
Current Store : [0x80001594] : sd t5, 1016(ra) -- Store: [0x80003708]:0xFFFF0008FFFF0400




Last Coverpoint : ['rs2_h2_val == -9']
Last Code Sequence : 
	-[0x800015c8]:KDMABB16 t6, t5, t4
	-[0x800015cc]:sd t6, 1024(ra)
Current Store : [0x800015d0] : sd t5, 1032(ra) -- Store: [0x80003718]:0xFFFCFFBFEFFF0006




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x8000160c]:KDMABB16 t6, t5, t4
	-[0x80001610]:sd t6, 1040(ra)
Current Store : [0x80001614] : sd t5, 1048(ra) -- Store: [0x80003728]:0xAAAA00804000EFFF




Last Coverpoint : ['rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x8000163c]:KDMABB16 t6, t5, t4
	-[0x80001640]:sd t6, 1056(ra)
Current Store : [0x80001644] : sd t5, 1064(ra) -- Store: [0x80003738]:0xFFFFDFFFFFFC0020




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x80001678]:KDMABB16 t6, t5, t4
	-[0x8000167c]:sd t6, 1072(ra)
Current Store : [0x80001680] : sd t5, 1080(ra) -- Store: [0x80003748]:0x0020FFFD0020FFFD




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x800016b4]:KDMABB16 t6, t5, t4
	-[0x800016b8]:sd t6, 1088(ra)
Current Store : [0x800016bc] : sd t5, 1096(ra) -- Store: [0x80003758]:0x00058000FFFD0001




Last Coverpoint : ['opcode : kdmabb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == -16385', 'rs2_h1_val == -2', 'rs1_h3_val == -129', 'rs1_h2_val == -513', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800016ec]:KDMABB16 t6, t5, t4
	-[0x800016f0]:sd t6, 1104(ra)
Current Store : [0x800016f4] : sd t5, 1112(ra) -- Store: [0x80003768]:0xFF7FFDFFFEFFFFFC




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_h2_val == -33', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001724]:KDMABB16 t6, t5, t4
	-[0x80001728]:sd t6, 1120(ra)
Current Store : [0x8000172c] : sd t5, 1128(ra) -- Store: [0x80003778]:0xFFF8FFDFBFFF0002




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80001758]:KDMABB16 t6, t5, t4
	-[0x8000175c]:sd t6, 1136(ra)
Current Store : [0x80001760] : sd t5, 1144(ra) -- Store: [0x80003788]:0xFBFF3FFF10000001




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80001794]:KDMABB16 t6, t5, t4
	-[0x80001798]:sd t6, 1152(ra)
Current Store : [0x8000179c] : sd t5, 1160(ra) -- Store: [0x80003798]:0xFFFB004000000800




Last Coverpoint : ['rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800017d0]:KDMABB16 t6, t5, t4
	-[0x800017d4]:sd t6, 1168(ra)
Current Store : [0x800017d8] : sd t5, 1176(ra) -- Store: [0x800037a8]:0xFF7FFFFDFFFD0001




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80001804]:KDMABB16 t6, t5, t4
	-[0x80001808]:sd t6, 1184(ra)
Current Store : [0x8000180c] : sd t5, 1192(ra) -- Store: [0x800037b8]:0xFFF7FFEF0000FFF9




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x8000183c]:KDMABB16 t6, t5, t4
	-[0x80001840]:sd t6, 1200(ra)
Current Store : [0x80001844] : sd t5, 1208(ra) -- Store: [0x800037c8]:0x0040FFFF00012000




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001874]:KDMABB16 t6, t5, t4
	-[0x80001878]:sd t6, 1216(ra)
Current Store : [0x8000187c] : sd t5, 1224(ra) -- Store: [0x800037d8]:0x0040008055558000




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800018b0]:KDMABB16 t6, t5, t4
	-[0x800018b4]:sd t6, 1232(ra)
Current Store : [0x800018b8] : sd t5, 1240(ra) -- Store: [0x800037e8]:0x2000FFFFFFFAAAAA




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800018e0]:KDMABB16 t6, t5, t4
	-[0x800018e4]:sd t6, 1248(ra)
Current Store : [0x800018e8] : sd t5, 1256(ra) -- Store: [0x800037f8]:0xF7FF00087FFFFFF8




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001914]:KDMABB16 t6, t5, t4
	-[0x80001918]:sd t6, 1264(ra)
Current Store : [0x8000191c] : sd t5, 1272(ra) -- Store: [0x80003808]:0x00070000DFFF0003




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001948]:KDMABB16 t6, t5, t4
	-[0x8000194c]:sd t6, 1280(ra)
Current Store : [0x80001950] : sd t5, 1288(ra) -- Store: [0x80003818]:0xBFFFFFFFFFEF0200




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001970]:KDMABB16 t6, t5, t4
	-[0x80001974]:sd t6, 1296(ra)
Current Store : [0x80001978] : sd t5, 1304(ra) -- Store: [0x80003828]:0xFF7F8000FDFFFF7F




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800019a4]:KDMABB16 t6, t5, t4
	-[0x800019a8]:sd t6, 1312(ra)
Current Store : [0x800019ac] : sd t5, 1320(ra) -- Store: [0x80003838]:0x0080DFFFEFFFFFEF




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800019e0]:KDMABB16 t6, t5, t4
	-[0x800019e4]:sd t6, 1328(ra)
Current Store : [0x800019e8] : sd t5, 1336(ra) -- Store: [0x80003848]:0x00001000FFBF7FFF




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001a1c]:KDMABB16 t6, t5, t4
	-[0x80001a20]:sd t6, 1344(ra)
Current Store : [0x80001a24] : sd t5, 1352(ra) -- Store: [0x80003858]:0x1000FFDFDFFF4000




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001a50]:KDMABB16 t6, t5, t4
	-[0x80001a54]:sd t6, 1360(ra)
Current Store : [0x80001a58] : sd t5, 1368(ra) -- Store: [0x80003868]:0x0040400000058000




Last Coverpoint : ['opcode : kdmabb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 4096', 'rs2_h1_val == 512', 'rs2_h0_val == -65', 'rs1_h3_val == 4096', 'rs1_h2_val == 4', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80001a8c]:KDMABB16 t6, t5, t4
	-[0x80001a90]:sd t6, 1376(ra)
Current Store : [0x80001a94] : sd t5, 1384(ra) -- Store: [0x80003878]:0x1000000400035555




Last Coverpoint : ['opcode : kdmabb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 512', 'rs2_h2_val == 4096', 'rs2_h1_val == -17', 'rs2_h0_val == -33', 'rs1_h3_val == 32', 'rs1_h2_val == -1025', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001ac8]:KDMABB16 t6, t5, t4
	-[0x80001acc]:sd t6, 1392(ra)
Current Store : [0x80001ad0] : sd t5, 1400(ra) -- Store: [0x80003888]:0x0020FBFFFFF60100





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

|s.no|            signature             |                                                                                                                                                                                                                                                                coverpoints                                                                                                                                                                                                                                                                 |                                  code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFAC003B8FAB7FBD6|- opcode : kdmabb16<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -9<br> - rs2_h2_val == -513<br> - rs2_h1_val == 4096<br> - rs1_h3_val == -9<br> - rs1_h2_val == -513<br> - rs1_h1_val == 4096<br> |[0x800003cc]:KDMABB16 a5, s11, s11<br> [0x800003d0]:sd a5, 0(tp)<br>     |
|   2|[0x80003220]<br>0x10000069020120C1|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 512<br> - rs2_h0_val == -65<br> - rs1_h3_val == 4096<br> - rs1_h1_val == 512<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                     |[0x80000408]:KDMABB16 s7, s7, s7<br> [0x8000040c]:sd s7, 16(tp)<br>      |
|   3|[0x80003230]<br>0xFFFFFDDF3AAAD552|- rs1 : x29<br> - rs2 : x28<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -257<br> - rs1_h2_val == 16<br> - rs1_h1_val == 1<br> - rs1_h0_val == 21845<br>                                                                                            |[0x80000440]:KDMABB16 s11, t4, t3<br> [0x80000444]:sd s11, 32(tp)<br>    |
|   4|[0x80003240]<br>0xF002C000FFFBBFFF|- rs1 : x26<br> - rs2 : x31<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -17<br> - rs2_h1_val == 4<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -4097<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                               |[0x8000047c]:KDMABB16 s10, s10, t6<br> [0x80000480]:sd s10, 48(tp)<br>   |
|   5|[0x80003250]<br>0x280020000000EF80|- rs1 : x19<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 1<br> - rs2_h0_val == 128<br> - rs1_h3_val == 2<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                        |[0x800004b8]:KDMABB16 t5, s3, t5<br> [0x800004bc]:sd t5, 64(tp)<br>      |
|   6|[0x80003260]<br>0xEADCEEE7EADD442B|- rs1 : x3<br> - rs2 : x9<br> - rd : x13<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 32<br> - rs2_h1_val == -17<br> - rs2_h0_val == 4<br> - rs1_h3_val == 128<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                |[0x800004f0]:KDMABB16 a3, gp, s1<br> [0x800004f4]:sd a3, 80(tp)<br>      |
|   7|[0x80003270]<br>0xFEEDBEB5FF43BF59|- rs1 : x10<br> - rs2 : x15<br> - rd : x1<br> - rs2_h3_val == 4<br> - rs2_h2_val == 4<br> - rs2_h0_val == -129<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000052c]:KDMABB16 ra, a0, a5<br> [0x80000530]:sd ra, 96(tp)<br>      |
|   8|[0x80003280]<br>0xF56FF76DF52F786F|- rs1 : x21<br> - rs2 : x11<br> - rd : x14<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 0<br> - rs1_h3_val == -65<br> - rs1_h2_val == 512<br> - rs1_h1_val == -129<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                    |[0x80000568]:KDMABB16 a4, s5, a1<br> [0x8000056c]:sd a4, 112(tp)<br>     |
|   9|[0x80003290]<br>0x0000AAAA80003242|- rs1 : x18<br> - rs2 : x3<br> - rd : x6<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 21845<br> - rs2_h1_val == -5<br> - rs2_h0_val == -17<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x800005a4]:KDMABB16 t1, s2, gp<br> [0x800005a8]:sd t1, 128(tp)<br>     |
|  10|[0x800032a0]<br>0xFF76D752FF7D8A0E|- rs1 : x30<br> - rs2 : x7<br> - rd : x2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 2<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                    |[0x800005e0]:KDMABB16 sp, t5, t2<br> [0x800005e4]:sd sp, 144(tp)<br>     |
|  11|[0x800032b0]<br>0x5BFDDB7D5BFDFCBF|- rs1 : x1<br> - rs2 : x26<br> - rd : x8<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -4097<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -3<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x8000061c]:KDMABB16 fp, ra, s10<br> [0x80000620]:sd fp, 160(tp)<br>    |
|  12|[0x800032c0]<br>0xFFFA002200015555|- rs1 : x25<br> - rs2 : x12<br> - rd : x29<br> - rs2_h3_val == -16385<br> - rs2_h1_val == -1<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000064c]:KDMABB16 t4, s9, a2<br> [0x80000650]:sd t4, 176(tp)<br>     |
|  13|[0x800032d0]<br>0xAAAB02FF0044ECAC|- rs1 : x15<br> - rs2 : x1<br> - rd : x7<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 128<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000688]:KDMABB16 t2, a5, ra<br> [0x8000068c]:sd t2, 192(tp)<br>     |
|  14|[0x800032e0]<br>0x00021E7AFFDCFF6F|- rs1 : x9<br> - rs2 : x2<br> - rd : x19<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -65<br> - rs2_h0_val == 64<br> - rs1_h3_val == 8<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x800006c4]:KDMABB16 s3, s1, sp<br> [0x800006c8]:sd s3, 208(tp)<br>     |
|  15|[0x800032f0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : x17<br> - rs2 : x0<br> - rd : x24<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -5<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                    |[0x80000700]:KDMABB16 s8, a7, zero<br> [0x80000704]:sd s8, 224(tp)<br>   |
|  16|[0x80003300]<br>0xB7D5BFDDB7D5BFED|- rs1 : x22<br> - rs2 : x29<br> - rd : x20<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 2<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 0<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000730]:KDMABB16 s4, s6, t4<br> [0x80000734]:sd s4, 240(tp)<br>     |
|  17|[0x80003310]<br>0xFFBF0220FF801F7F|- rs1 : x12<br> - rs2 : x14<br> - rd : x21<br> - rs2_h3_val == -513<br> - rs2_h2_val == -2<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000076c]:KDMABB16 s5, a2, a4<br> [0x80000770]:sd s5, 0(ra)<br>       |
|  18|[0x80003320]<br>0x20013809FFF60400|- rs1 : x6<br> - rs2 : x24<br> - rd : x17<br> - rs2_h3_val == -257<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -2049<br> - rs1_h3_val == -33<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x800007a4]:KDMABB16 a7, t1, s8<br> [0x800007a8]:sd a7, 16(ra)<br>      |
|  19|[0x80003330]<br>0xAAA8AAA4003FC3E0|- rs1 : x20<br> - rs2 : x17<br> - rd : x12<br> - rs2_h3_val == -129<br> - rs2_h0_val == -513<br> - rs1_h2_val == -21846<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x800007d4]:KDMABB16 a2, s4, a7<br> [0x800007d8]:sd a2, 32(ra)<br>      |
|  20|[0x80003340]<br>0xEFFEFF610403AA9F|- rs1 : x5<br> - rs2 : x13<br> - rd : x18<br> - rs2_h3_val == -65<br> - rs2_h2_val == 16<br> - rs1_h3_val == -1025<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000810]:KDMABB16 s2, t0, a3<br> [0x80000814]:sd s2, 48(ra)<br>      |
|  21|[0x80003350]<br>0x55550000FFFC3FFF|- rs1 : x0<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == -33<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000848]:KDMABB16 a1, zero, s9<br> [0x8000084c]:sd a1, 64(ra)<br>    |
|  22|[0x80003360]<br>0xFFF7FFD10005AAAA|- rs1 : x2<br> - rs2 : x5<br> - rd : x10<br> - rs2_h3_val == -5<br> - rs2_h1_val == 64<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000880]:KDMABB16 a0, sp, t0<br> [0x80000884]:sd a0, 80(ra)<br>      |
|  23|[0x80003370]<br>0x0400B555FFFBFFEF|- rs1 : x4<br> - rs2 : x6<br> - rd : x3<br> - rs2_h3_val == -3<br> - rs2_h1_val == -1025<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                             |[0x800008c0]:KDMABB16 gp, tp, t1<br> [0x800008c4]:sd gp, 96(ra)<br>      |
|  24|[0x80003380]<br>0x7FDEF0001FFCFDF7|- rs1 : x11<br> - rs2 : x10<br> - rd : x4<br> - rs2_h3_val == -2<br> - rs2_h2_val == 4096<br> - rs1_h2_val == -257<br> - rs1_h1_val == 32<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800008f4]:KDMABB16 tp, a1, a0<br> [0x800008f8]:sd tp, 112(ra)<br>     |
|  25|[0x80003390]<br>0x7D58FDE77FFFFFFF|- rs1 : x31<br> - rs2 : x8<br> - rd : x16<br> - rs2_h3_val == -32768<br> - rs1_h3_val == -2049<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000938]:KDMABB16 a6, t6, fp<br> [0x8000093c]:sd a6, 128(ra)<br>     |
|  26|[0x800033a0]<br>0x000801573FF7BFFF|- rs1 : x8<br> - rs2 : x16<br> - rd : x9<br> - rs2_h3_val == 16384<br> - rs1_h2_val == -17<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000970]:KDMABB16 s1, fp, a6<br> [0x80000974]:sd s1, 144(ra)<br>     |
|  27|[0x800033b0]<br>0x00036FFFFEFF3FFF|- rs1 : x14<br> - rs2 : x4<br> - rd : x28<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800009a8]:KDMABB16 t3, a4, tp<br> [0x800009ac]:sd t3, 160(ra)<br>     |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x22<br> - rd : x0<br> - rs2_h3_val == 512<br> - rs2_h0_val == -33<br> - rs1_h3_val == 32<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x800009e4]:KDMABB16 zero, a3, s6<br> [0x800009e8]:sd zero, 176(ra)<br> |
|  29|[0x800033d0]<br>0x001B8086E0403FFA|- rs1 : x16<br> - rs2 : x19<br> - rd : x5<br> - rs2_h3_val == 256<br> - rs2_h2_val == -16385<br> - rs2_h0_val == 32767<br> - rs1_h2_val == -65<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000a28]:KDMABB16 t0, a6, s3<br> [0x80000a2c]:sd t0, 192(ra)<br>     |
|  30|[0x800033e0]<br>0xFFDE20024000C40E|- rs1 : x28<br> - rs2 : x18<br> - rd : x25<br> - rs2_h3_val == 128<br> - rs2_h2_val == -1<br> - rs1_h3_val == 1<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000a58]:KDMABB16 s9, t3, s2<br> [0x80000a5c]:sd s9, 208(ra)<br>     |
|  31|[0x800033f0]<br>0xF7FF3FFF022A97FF|- rs1 : x24<br> - rs2 : x21<br> - rd : x31<br> - rs2_h3_val == 64<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000a94]:KDMABB16 t6, s8, s5<br> [0x80000a98]:sd t6, 224(ra)<br>     |
|  32|[0x80003400]<br>0x02001000FFF037ED|- rs1 : x7<br> - rs2 : x20<br> - rd : x22<br> - rs2_h3_val == 16<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -1025<br> - rs1_h2_val == 32<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000acc]:KDMABB16 s6, t2, s4<br> [0x80000ad0]:sd s6, 240(ra)<br>     |
|  33|[0x80003410]<br>0xF7FA4013022D1813|- rs2_h3_val == 8<br> - rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b08]:KDMABB16 t6, t5, t4<br> [0x80000b0c]:sd t6, 256(ra)<br>     |
|  34|[0x80003420]<br>0xF7F9B001032E1813|- rs2_h3_val == 2<br> - rs2_h1_val == 256<br> - rs2_h0_val == -32768<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b40]:KDMABB16 t6, t5, t4<br> [0x80000b44]:sd t6, 272(ra)<br>     |
|  35|[0x80003430]<br>0xF7F9AE01032E184F|- rs2_h3_val == 1<br> - rs1_h3_val == 256<br> - rs1_h2_val == -2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b74]:KDMABB16 t6, t5, t4<br> [0x80000b78]:sd t6, 288(ra)<br>     |
|  36|[0x80003450]<br>0xF7F9AA81012D084B|- rs2_h3_val == -1<br> - rs1_h1_val == 4<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bdc]:KDMABB16 t6, t5, t4<br> [0x80000be0]:sd t6, 320(ra)<br>     |
|  37|[0x80003460]<br>0xF7FCFFDD01AD084B|- rs2_h2_val == -5<br> - rs2_h0_val == 512<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c14]:KDMABB16 t6, t5, t4<br> [0x80000c18]:sd t6, 336(ra)<br>     |
|  38|[0x80003470]<br>0xF7FD002D01AD084B|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c4c]:KDMABB16 t6, t5, t4<br> [0x80000c50]:sd t6, 352(ra)<br>     |
|  39|[0x80003480]<br>0xF7FE002D01B1288D|- rs2_h1_val == 32<br> - rs2_h0_val == -4097<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c84]:KDMABB16 t6, t5, t4<br> [0x80000c88]:sd t6, 368(ra)<br>     |
|  40|[0x80003490]<br>0xF7FE007D01B1280D|- rs2_h0_val == 16<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cc0]:KDMABB16 t6, t5, t4<br> [0x80000cc4]:sd t6, 384(ra)<br>     |
|  41|[0x800034a0]<br>0xF7FE02812C5CD2B9|- rs2_h0_val == -16385<br> - rs1_h2_val == -129<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000cfc]:KDMABB16 t6, t5, t4<br> [0x80000d00]:sd t6, 400(ra)<br>     |
|  42|[0x800034b0]<br>0xA2A9028101B252B9|- rs2_h2_val == -32768<br> - rs2_h1_val == -129<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000d3c]:KDMABB16 t6, t5, t4<br> [0x80000d40]:sd t6, 416(ra)<br>     |
|  43|[0x800034c0]<br>0xA2A7024101C252B9|- rs2_h2_val == -2049<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 2<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000d74]:KDMABB16 t6, t5, t4<br> [0x80000d78]:sd t6, 432(ra)<br>     |
|  44|[0x800034d0]<br>0xA2A6024301BE32B9|- rs2_h0_val == 4096<br> - rs1_h3_val == -32768<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000da4]:KDMABB16 t6, t5, t4<br> [0x80000da8]:sd t6, 448(ra)<br>     |
|  45|[0x800034e0]<br>0xA2A600B7FDBD3ABB|- rs2_h2_val == -33<br> - rs1_h3_val == 64<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000de0]:KDMABB16 t6, t5, t4<br> [0x80000de4]:sd t6, 464(ra)<br>     |
|  46|[0x800034f0]<br>0xA150020DFDBCBAAB|- rs2_h0_val == 8<br> - rs1_h3_val == -21846<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e24]:KDMABB16 t6, t5, t4<br> [0x80000e28]:sd t6, 480(ra)<br>     |
|  47|[0x80003500]<br>0xC14F020FFDCCC6AD|- rs2_h1_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e60]:KDMABB16 t6, t5, t4<br> [0x80000e64]:sd t6, 496(ra)<br>     |
|  48|[0x80003510]<br>0xA14E820FFDECDAAF|- rs2_h2_val == 16384<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -16385<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e94]:KDMABB16 t6, t5, t4<br> [0x80000e98]:sd t6, 512(ra)<br>     |
|  49|[0x80003520]<br>0xA94F020FFDECD9AB|- rs2_h1_val == -2<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000ed0]:KDMABB16 t6, t5, t4<br> [0x80000ed4]:sd t6, 528(ra)<br>     |
|  50|[0x80003530]<br>0xA8F9AC0FFDECD9B1|- rs2_h2_val == -21846<br> - rs2_h0_val == -1<br> - rs1_h2_val == 128<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f0c]:KDMABB16 t6, t5, t4<br> [0x80000f10]:sd t6, 544(ra)<br>     |
|  51|[0x80003540]<br>0xA8F9A903FDECD99D|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f48]:KDMABB16 t6, t5, t4<br> [0x80000f4c]:sd t6, 560(ra)<br>     |
|  52|[0x80003550]<br>0xA8F9A963FDE9599D|- rs1_h3_val == 4<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f80]:KDMABB16 t6, t5, t4<br> [0x80000f84]:sd t6, 576(ra)<br>     |
|  53|[0x80003560]<br>0x80000000FDED599D|- rs2_h0_val == 32<br> - rs1_h3_val == -1<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000fb0]:KDMABB16 t6, t5, t4<br> [0x80000fb4]:sd t6, 592(ra)<br>     |
|  54|[0x80003570]<br>0x80000000FDECD59D|- rs2_h2_val == 32<br> - rs2_h1_val == 8192<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000fec]:KDMABB16 t6, t5, t4<br> [0x80000ff0]:sd t6, 608(ra)<br>     |
|  55|[0x80003580]<br>0x80000000FDECD79D|- rs1_h3_val == -2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001020]:KDMABB16 t6, t5, t4<br> [0x80001024]:sd t6, 624(ra)<br>     |
|  56|[0x80003590]<br>0x80008000FDEC971D|- rs2_h2_val == 8<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000105c]:KDMABB16 t6, t5, t4<br> [0x80001060]:sd t6, 640(ra)<br>     |
|  57|[0x800035a0]<br>0x84010000FDEC975D|- rs2_h3_val == -2049<br> - rs1_h3_val == -257<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001094]:KDMABB16 t6, t5, t4<br> [0x80001098]:sd t6, 656(ra)<br>     |
|  58|[0x800035b0]<br>0x8400FBF0FDEC9761|- rs2_h1_val == -16385<br> - rs2_h0_val == 1<br> - rs1_h3_val == 512<br> - rs1_h2_val == 8<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800010d0]:KDMABB16 t6, t5, t4<br> [0x800010d4]:sd t6, 672(ra)<br>     |
|  59|[0x800035c0]<br>0x83FEFAF0FDEC9767|- rs2_h0_val == -3<br> - rs1_h3_val == -5<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000110c]:KDMABB16 t6, t5, t4<br> [0x80001110]:sd t6, 688(ra)<br>     |
|  60|[0x800035d0]<br>0x847EF8F0FDEC1667|- rs2_h1_val == 2<br> - rs1_h2_val == 256<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001148]:KDMABB16 t6, t5, t4<br> [0x8000114c]:sd t6, 704(ra)<br>     |
|  61|[0x800035e0]<br>0x847EF722FE6C9667|- rs2_h1_val == 8<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001180]:KDMABB16 t6, t5, t4<br> [0x80001184]:sd t6, 720(ra)<br>     |
|  62|[0x800035f0]<br>0x847A77101E6C1667|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800011b8]:KDMABB16 t6, t5, t4<br> [0x800011bc]:sd t6, 736(ra)<br>     |
|  63|[0x80003600]<br>0x8C7AF7101E709667|- rs2_h2_val == -4097<br> - rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011f0]:KDMABB16 t6, t5, t4<br> [0x800011f4]:sd t6, 752(ra)<br>     |
|  64|[0x80003610]<br>0x8C7AF6EC1E709527|- rs2_h2_val == 2<br> - rs2_h0_val == -5<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000122c]:KDMABB16 t6, t5, t4<br> [0x80001230]:sd t6, 768(ra)<br>     |
|  65|[0x80003620]<br>0x8C7AF6E21E709547|- rs2_h2_val == 1<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001268]:KDMABB16 t6, t5, t4<br> [0x8000126c]:sd t6, 784(ra)<br>     |
|  66|[0x80003630]<br>0x8C7AF6CE22709547|- rs2_h0_val == 8192<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000129c]:KDMABB16 t6, t5, t4<br> [0x800012a0]:sd t6, 800(ra)<br>     |
|  67|[0x80003640]<br>0x8C8376CE22712547|- rs2_h0_val == 2048<br> - rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800012d8]:KDMABB16 t6, t5, t4<br> [0x800012dc]:sd t6, 816(ra)<br>     |
|  68|[0x80003650]<br>0x8C82F4CE21F12547|- rs2_h2_val == 256<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001308]:KDMABB16 t6, t5, t4<br> [0x8000130c]:sd t6, 832(ra)<br>     |
|  69|[0x80003660]<br>0x8C82F3BE21F22545|- rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001344]:KDMABB16 t6, t5, t4<br> [0x80001348]:sd t6, 848(ra)<br>     |
|  70|[0x80003670]<br>0x8C8271BE21F22547|- rs1_h3_val == -8193<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000137c]:KDMABB16 t6, t5, t4<br> [0x80001380]:sd t6, 864(ra)<br>     |
|  71|[0x80003680]<br>0x8C826EBE21F22583|- rs2_h2_val == 64<br> - rs2_h1_val == -21846<br> - rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800013b8]:KDMABB16 t6, t5, t4<br> [0x800013bc]:sd t6, 880(ra)<br>     |
|  72|[0x80003690]<br>0x8C82EEC621F22533|- rs2_h1_val == 2048<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800013f4]:KDMABB16 t6, t5, t4<br> [0x800013f8]:sd t6, 896(ra)<br>     |
|  73|[0x800036a0]<br>0x8C62E6C621F22373|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001430]:KDMABB16 t6, t5, t4<br> [0x80001434]:sd t6, 912(ra)<br>     |
|  74|[0x800036b0]<br>0x8B0D8EC621F12373|- rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001470]:KDMABB16 t6, t5, t4<br> [0x80001474]:sd t6, 928(ra)<br>     |
|  75|[0x800036c0]<br>0x8B0ECED021F22373|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800014a8]:KDMABB16 t6, t5, t4<br> [0x800014ac]:sd t6, 944(ra)<br>     |
|  76|[0x800036d0]<br>0x8B0EAEB021F2232D|- rs2_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014dc]:KDMABB16 t6, t5, t4<br> [0x800014e0]:sd t6, 960(ra)<br>     |
|  77|[0x800036e0]<br>0x8B0EAF3021F22B2D|- rs2_h1_val == -65<br> - rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001518]:KDMABB16 t6, t5, t4<br> [0x8000151c]:sd t6, 976(ra)<br>     |
|  78|[0x800036f0]<br>0x8B12B83221F22AAD|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001550]:KDMABB16 t6, t5, t4<br> [0x80001554]:sd t6, 992(ra)<br>     |
|  79|[0x80003700]<br>0x8B12B72221F1E2AD|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000158c]:KDMABB16 t6, t5, t4<br> [0x80001590]:sd t6, 1008(ra)<br>    |
|  80|[0x80003710]<br>0x8B12BBB421F1DCA1|- rs2_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800015c8]:KDMABB16 t6, t5, t4<br> [0x800015cc]:sd t6, 1024(ra)<br>    |
|  81|[0x80003720]<br>0x8B12B8B423F21CA3|- rs2_h2_val == -3<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000160c]:KDMABB16 t6, t5, t4<br> [0x80001610]:sd t6, 1040(ra)<br>    |
|  82|[0x80003730]<br>0x8B1278B223FA1CA3|- rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000163c]:KDMABB16 t6, t5, t4<br> [0x80001640]:sd t6, 1056(ra)<br>    |
|  83|[0x80003740]<br>0x8B1248B223FA1C97|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001678]:KDMABB16 t6, t5, t4<br> [0x8000167c]:sd t6, 1072(ra)<br>    |
|  84|[0x80003750]<br>0x891248B223FA2097|- rs2_h2_val == 512<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016b4]:KDMABB16 t6, t5, t4<br> [0x800016b8]:sd t6, 1088(ra)<br>    |
|  85|[0x80003770]<br>0x8A13D4F623F8CB07|- rs2_h1_val == -9<br> - rs1_h2_val == -33<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001724]:KDMABB16 t6, t5, t4<br> [0x80001728]:sd t6, 1120(ra)<br>    |
|  86|[0x80003780]<br>0x899356F823F8CF07|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001758]:KDMABB16 t6, t5, t4<br> [0x8000175c]:sd t6, 1136(ra)<br>    |
|  87|[0x80003790]<br>0x8992567823F85F07|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001794]:KDMABB16 t6, t5, t4<br> [0x80001798]:sd t6, 1152(ra)<br>    |
|  88|[0x800037a0]<br>0x8990D67823F85F17|- rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017d0]:KDMABB16 t6, t5, t4<br> [0x800017d4]:sd t6, 1168(ra)<br>    |
|  89|[0x800037b0]<br>0x8990D61223F85F33|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001804]:KDMABB16 t6, t5, t4<br> [0x80001808]:sd t6, 1184(ra)<br>    |
|  90|[0x800037c0]<br>0x8991561223781F33|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000183c]:KDMABB16 t6, t5, t4<br> [0x80001840]:sd t6, 1200(ra)<br>    |
|  91|[0x800037d0]<br>0x89915C1223F91F33|- rs1_h0_val == -32768<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001874]:KDMABB16 t6, t5, t4<br> [0x80001878]:sd t6, 1216(ra)<br>    |
|  92|[0x800037e0]<br>0x89925C1223FE7493|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800018b0]:KDMABB16 t6, t5, t4<br> [0x800018b4]:sd t6, 1232(ra)<br>    |
|  93|[0x800037f0]<br>0x89925BF223FE7493|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018e0]:KDMABB16 t6, t5, t4<br> [0x800018e4]:sd t6, 1248(ra)<br>    |
|  94|[0x80003800]<br>0x89925BF223FE5C8D|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001914]:KDMABB16 t6, t5, t4<br> [0x80001918]:sd t6, 1264(ra)<br>    |
|  95|[0x80003810]<br>0x8993069E24FE5C8D|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001948]:KDMABB16 t6, t5, t4<br> [0x8000194c]:sd t6, 1280(ra)<br>    |
|  96|[0x80003820]<br>0x898D069E24FE5C8D|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001970]:KDMABB16 t6, t5, t4<br> [0x80001974]:sd t6, 1296(ra)<br>    |
|  97|[0x80003830]<br>0x898D86A224FE5D15|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800019a4]:KDMABB16 t6, t5, t4<br> [0x800019a8]:sd t6, 1312(ra)<br>    |
|  98|[0x80003840]<br>0x898DC6A224F65D25|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800019e0]:KDMABB16 t6, t5, t4<br> [0x800019e4]:sd t6, 1328(ra)<br>    |
|  99|[0x80003850]<br>0x898DC4922CF65D25|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a1c]:KDMABB16 t6, t5, t4<br> [0x80001a20]:sd t6, 1344(ra)<br>    |
| 100|[0x80003860]<br>0x888D44922CFA5D25|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001a50]:KDMABB16 t6, t5, t4<br> [0x80001a54]:sd t6, 1360(ra)<br>    |
