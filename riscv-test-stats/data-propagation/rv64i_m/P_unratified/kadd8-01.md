
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001970')]      |
| SIG_REGION                | [('0x80003210', '0x80003740', '166 dwords')]      |
| COV_LABELS                | kadd8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kadd8-01.S    |
| Total Number of coverpoints| 476     |
| Total Coverpoints Hit     | 470      |
| Total Signature Updates   | 166      |
| STAT1                     | 79      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 83     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016bc]:KADD8 t6, t5, t4
      [0x800016c0]:sd t6, 688(sp)
 -- Signature Address: 0x80003690 Data: 0x80C240FBF6FF0804
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val < 0 and rs2_b7_val < 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b6_val < 0 and rs2_b6_val > 0
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val > 0 and rs2_b5_val > 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val < 0 and rs2_b4_val < 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b7_val == -5
      - rs2_b4_val == -2
      - rs2_b3_val == -17
      - rs2_b2_val == -33
      - rs2_b0_val == 0
      - rs1_b7_val == -128
      - rs1_b6_val == -65
      - rs1_b5_val == 1
      - rs1_b4_val == -3
      - rs1_b2_val == 32
      - rs1_b1_val == 16
      - rs1_b0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000173c]:KADD8 t6, t5, t4
      [0x80001740]:sd t6, 720(sp)
 -- Signature Address: 0x800036b0 Data: 0x16100B5A0A18FFB3
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val > 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val > 0 and rs2_b5_val > 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val > 0 and rs2_b4_val > 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b6_val == 0
      - rs2_b3_val == 16
      - rs2_b2_val == 8
      - rs2_b1_val == -65
      - rs1_b7_val == 16
      - rs1_b6_val == 16
      - rs1_b4_val == 85
      - rs1_b2_val == 16
      - rs1_b1_val == 64
      - rs1_b0_val == -86




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001920]:KADD8 t6, t5, t4
      [0x80001924]:sd t6, 832(sp)
 -- Signature Address: 0x80003720 Data: 0xFF0B65E926F5C85D
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val < 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b6_val > 0 and rs2_b6_val > 0
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val > 0 and rs2_b5_val > 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val > 0 and rs2_b4_val < 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b7_val == 127
      - rs2_b5_val == 85
      - rs2_b4_val == -86
      - rs2_b3_val == 32
      - rs2_b2_val == -5
      - rs2_b0_val == 85
      - rs1_b7_val == -128
      - rs1_b5_val == 16
      - rs1_b1_val == 8
      - rs1_b0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001964]:KADD8 t6, t5, t4
      [0x80001968]:sd t6, 848(sp)
 -- Signature Address: 0x80003730 Data: 0x1406F2DF1BFEF9F1
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val < 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b6_val < 0 and rs2_b6_val > 0
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val < 0 and rs2_b5_val < 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val > 0 and rs2_b4_val < 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b7_val == 85
      - rs2_b6_val == 8
      - rs2_b5_val == -9
      - rs2_b4_val == -65
      - rs2_b3_val == 32
      - rs2_b0_val == -17
      - rs1_b7_val == -65
      - rs1_b6_val == -2
      - rs1_b5_val == -5
      - rs1_b4_val == 32
      - rs1_b3_val == -5
      - rs1_b1_val == 1
      - rs1_b0_val == 2






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kadd8', 'rs1 : x26', 'rs2 : x26', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_b7_val == rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val < 0', 'rs1_b6_val == rs2_b6_val', 'rs1_b6_val < 0 and rs2_b6_val < 0', 'rs1_b5_val == rs2_b5_val', 'rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val == rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val < 0', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b7_val == -1', 'rs2_b6_val == -17', 'rs2_b3_val == 85', 'rs2_b2_val == -128', 'rs1_b7_val == -1', 'rs1_b6_val == -17', 'rs1_b3_val == 85', 'rs1_b2_val == -128']
Last Code Sequence : 
	-[0x800003dc]:KADD8 t0, s10, s10
	-[0x800003e0]:sd t0, 0(ra)
Current Store : [0x800003e4] : sd s10, 8(ra) -- Store: [0x80003218]:0xFFEF09F85580F63F




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b5_val < 0 and rs2_b5_val < 0', 'rs2_b6_val == -65', 'rs2_b5_val == -9', 'rs2_b3_val == 2', 'rs2_b1_val == -5', 'rs2_b0_val == 64', 'rs1_b6_val == -65', 'rs1_b5_val == -9', 'rs1_b3_val == 2', 'rs1_b1_val == -5', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000420]:KADD8 s1, s1, s1
	-[0x80000424]:sd s1, 16(ra)
Current Store : [0x80000428] : sd s1, 24(ra) -- Store: [0x80003228]:0x0E80EEEC0480F67F




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x25', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b0_val == -128', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val > 0 and rs2_b6_val < 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val > 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b7_val == 4', 'rs2_b6_val == -2', 'rs2_b5_val == 1', 'rs2_b4_val == 127', 'rs2_b3_val == 8', 'rs2_b1_val == 32', 'rs2_b0_val == -128', 'rs1_b6_val == 16', 'rs1_b5_val == 0', 'rs1_b4_val == -33', 'rs1_b2_val == 85']
Last Code Sequence : 
	-[0x80000464]:KADD8 s9, t1, a2
	-[0x80000468]:sd s9, 32(ra)
Current Store : [0x8000046c] : sd t1, 40(ra) -- Store: [0x80003238]:0xFC1000DF3F553F80




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x20', 'rs1 == rd != rs2', 'rs1_b7_val > 0 and rs2_b7_val < 0', 'rs1_b4_val > 0 and rs2_b4_val < 0', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b7_val == -2', 'rs2_b5_val == -17', 'rs2_b3_val == -2', 'rs2_b2_val == -17', 'rs2_b0_val == 127', 'rs1_b3_val == 1', 'rs1_b2_val == -86']
Last Code Sequence : 
	-[0x800004a0]:KADD8 s4, s4, t2
	-[0x800004a4]:sd s4, 48(ra)
Current Store : [0x800004a8] : sd s4, 56(ra) -- Store: [0x80003248]:0x01F6E9FBFF99017F




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rd : x30', 'rs2 == rd != rs1', 'rs1_b6_val < 0 and rs2_b6_val > 0', 'rs1_b4_val > 0 and rs2_b4_val > 0', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b7_val == -86', 'rs2_b5_val == 4', 'rs2_b4_val == 85', 'rs1_b7_val == 1', 'rs1_b5_val == 16', 'rs1_b4_val == 32', 'rs1_b1_val == -2', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x800004e4]:KADD8 t5, a7, t5
	-[0x800004e8]:sd t5, 64(ra)
Current Store : [0x800004ec] : sd a7, 72(ra) -- Store: [0x80003258]:0x01FC1020FA80FEFD




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x24', 'rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs2_b4_val == 64', 'rs2_b3_val == 16', 'rs2_b2_val == 85', 'rs2_b0_val == 1', 'rs1_b6_val == 4', 'rs1_b2_val == 16', 'rs1_b1_val == -128', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000528]:KADD8 s8, s3, a0
	-[0x8000052c]:sd s8, 80(ra)
Current Store : [0x80000530] : sd s3, 88(ra) -- Store: [0x80003268]:0x3F0405FA3F108055




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x19', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b4_val == -3', 'rs2_b3_val == -3', 'rs2_b0_val == -17', 'rs1_b6_val == -86', 'rs1_b5_val == -17', 'rs1_b4_val == -17', 'rs1_b2_val == -1', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x8000056c]:KADD8 s3, s6, fp
	-[0x80000570]:sd s3, 96(ra)
Current Store : [0x80000574] : sd s6, 104(ra) -- Store: [0x80003278]:0x01AAEFEF09FF0405




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rd : x17', 'rs2_b7_val == 0', 'rs2_b6_val == 0', 'rs2_b5_val == 0', 'rs2_b4_val == 0', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs2_b0_val == 0', 'rs1_b7_val == -33', 'rs1_b6_val == 1', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x800005b0]:KADD8 a7, t4, zero
	-[0x800005b4]:sd a7, 112(ra)
Current Store : [0x800005b8] : sd t4, 120(ra) -- Store: [0x80003288]:0xDF0109C0FA55097F




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x4', 'rs2_b6_val == -9', 'rs2_b4_val == -5', 'rs2_b3_val == 4', 'rs2_b0_val == -5', 'rs1_b7_val == 85', 'rs1_b4_val == -5', 'rs1_b1_val == 127', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800005f4]:KADD8 tp, a3, sp
	-[0x800005f8]:sd tp, 128(ra)
Current Store : [0x800005fc] : sd a3, 136(ra) -- Store: [0x80003298]:0x5510C0FB3F057FF7




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x8', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs2_b4_val == 8', 'rs2_b1_val == -33', 'rs1_b7_val == -17', 'rs1_b6_val == -3', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000638]:KADD8 fp, a6, a4
	-[0x8000063c]:sd fp, 144(ra)
Current Store : [0x80000640] : sd a6, 152(ra) -- Store: [0x800032a8]:0xEFFD00FAC0FF0304




Last Coverpoint : ['rs1 : x11', 'rs2 : x5', 'rd : x22', 'rs2_b7_val == 32', 'rs2_b6_val == 8', 'rs2_b3_val == -1', 'rs1_b5_val == 2', 'rs1_b2_val == 0', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000674]:KADD8 s6, a1, t0
	-[0x80000678]:sd s6, 160(ra)
Current Store : [0x8000067c] : sd a1, 168(ra) -- Store: [0x800032b8]:0x01AA0207FA00F802




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x21', 'rs1_b5_val < 0 and rs2_b5_val > 0', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs2_b7_val == 16', 'rs2_b6_val == 1', 'rs2_b5_val == 32', 'rs2_b3_val == -17', 'rs1_b6_val == 127', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x800006b8]:KADD8 s5, t6, a6
	-[0x800006bc]:sd s5, 176(ra)
Current Store : [0x800006c0] : sd t6, 184(ra) -- Store: [0x800032c8]:0x097FF7EF02F91080




Last Coverpoint : ['rs1 : x25', 'rs2 : x23', 'rd : x26', 'rs2_b6_val == 32', 'rs2_b3_val == 32', 'rs1_b4_val == 85', 'rs1_b3_val == -86']
Last Code Sequence : 
	-[0x800006f4]:KADD8 s10, s9, s7
	-[0x800006f8]:sd s10, 192(ra)
Current Store : [0x800006fc] : sd s9, 200(ra) -- Store: [0x800032d8]:0xF910F855AAAA077F




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x0', 'rs2_b7_val == 127', 'rs2_b5_val == 85', 'rs2_b4_val == -86', 'rs2_b2_val == -5', 'rs2_b0_val == 85', 'rs1_b7_val == -128', 'rs1_b1_val == 8', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000740]:KADD8 zero, sp, s8
	-[0x80000744]:sd zero, 208(ra)
Current Store : [0x80000748] : sd sp, 216(ra) -- Store: [0x800032e8]:0x8006103F06FA0808




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x3', 'rs1_b5_val > 0 and rs2_b5_val < 0', 'rs2_b7_val == -65', 'rs2_b3_val == 64', 'rs2_b2_val == 127', 'rs1_b6_val == 64', 'rs1_b4_val == 2']
Last Code Sequence : 
	-[0x80000784]:KADD8 gp, tp, s4
	-[0x80000788]:sd gp, 224(ra)
Current Store : [0x8000078c] : sd tp, 232(ra) -- Store: [0x800032f8]:0xF9403F02AAF60308




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rd : x12', 'rs2_b7_val == -33', 'rs2_b5_val == 16', 'rs2_b2_val == 1', 'rs1_b4_val == 4']
Last Code Sequence : 
	-[0x800007c0]:KADD8 a2, t5, a5
	-[0x800007c4]:sd a2, 240(ra)
Current Store : [0x800007c8] : sd t5, 248(ra) -- Store: [0x80003308]:0xFF01F704F8F8F902




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x2', 'rs2_b7_val == -17', 'rs2_b6_val == -1', 'rs2_b5_val == 64', 'rs1_b7_val == -5', 'rs1_b5_val == -65', 'rs1_b3_val == 127', 'rs1_b2_val == 4', 'rs1_b1_val == -33', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x8000080c]:KADD8 sp, a2, t4
	-[0x80000810]:sd sp, 0(s1)
Current Store : [0x80000814] : sd a2, 8(s1) -- Store: [0x80003318]:0xFBFDBF207F04DFFB




Last Coverpoint : ['rs1 : x28', 'rs2 : x31', 'rd : x18', 'rs2_b7_val == -9', 'rs2_b5_val == -1', 'rs1_b5_val == 127', 'rs1_b4_val == -2', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x80000848]:KADD8 s2, t3, t6
	-[0x8000084c]:sd s2, 16(s1)
Current Store : [0x80000850] : sd t3, 24(s1) -- Store: [0x80003328]:0x09407FFEC0F602F6




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x14', 'rs2_b7_val == -5', 'rs2_b6_val == -3', 'rs2_b5_val == -5', 'rs2_b4_val == -2', 'rs2_b3_val == -5', 'rs2_b1_val == -9', 'rs1_b7_val == 32', 'rs1_b6_val == -5']
Last Code Sequence : 
	-[0x8000088c]:KADD8 a4, s2, s11
	-[0x80000890]:sd a4, 32(s1)
Current Store : [0x80000894] : sd s2, 40(s1) -- Store: [0x80003338]:0x20FB1003FC3F0609




Last Coverpoint : ['rs1 : x27', 'rs2 : x11', 'rd : x16', 'rs2_b7_val == -3', 'rs2_b5_val == -33', 'rs2_b3_val == -128', 'rs2_b2_val == -9', 'rs2_b0_val == 4', 'rs1_b7_val == 64', 'rs1_b6_val == -1', 'rs1_b5_val == 64', 'rs1_b4_val == -3']
Last Code Sequence : 
	-[0x800008d0]:KADD8 a6, s11, a1
	-[0x800008d4]:sd a6, 48(s1)
Current Store : [0x800008d8] : sd s11, 56(s1) -- Store: [0x80003348]:0x40FF40FDC0F6F604




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x31', 'rs2_b7_val == -128', 'rs2_b6_val == 127', 'rs2_b5_val == 127', 'rs2_b4_val == 1', 'rs2_b1_val == 2', 'rs1_b4_val == -65', 'rs1_b2_val == 2', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000914]:KADD8 t6, t2, t3
	-[0x80000918]:sd t6, 64(s1)
Current Store : [0x8000091c] : sd t2, 72(s1) -- Store: [0x80003358]:0x09FAC0BF060210BF




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x29', 'rs2_b7_val == 64', 'rs2_b3_val == 1', 'rs2_b2_val == 2', 'rs1_b5_val == -128', 'rs1_b4_val == -1']
Last Code Sequence : 
	-[0x80000950]:KADD8 t4, t0, s5
	-[0x80000954]:sd t4, 80(s1)
Current Store : [0x80000958] : sd t0, 88(s1) -- Store: [0x80003368]:0xF8F680FF7F07F803




Last Coverpoint : ['rs1 : x21', 'rs2 : x4', 'rd : x6', 'rs2_b7_val == 8', 'rs2_b4_val == -1', 'rs2_b0_val == -2', 'rs1_b6_val == 85', 'rs1_b5_val == -86', 'rs1_b4_val == 127', 'rs1_b3_val == 8', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000994]:KADD8 t1, s5, tp
	-[0x80000998]:sd t1, 96(s1)
Current Store : [0x8000099c] : sd s5, 104(s1) -- Store: [0x80003378]:0x0655AA7F08FB80BF




Last Coverpoint : ['rs1 : x14', 'rs2 : x3', 'rd : x28', 'rs2_b7_val == 2', 'rs2_b6_val == 16', 'rs2_b3_val == -65', 'rs2_b0_val == -3', 'rs1_b5_val == 85', 'rs1_b3_val == -2', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800009d8]:KADD8 t3, a4, gp
	-[0x800009dc]:sd t3, 112(s1)
Current Store : [0x800009e0] : sd a4, 120(s1) -- Store: [0x80003388]:0x55EF55FAFE10EF08




Last Coverpoint : ['rs1 : x24', 'rs2 : x25', 'rd : x10', 'rs2_b7_val == 1', 'rs2_b6_val == -33', 'rs2_b4_val == 2', 'rs2_b2_val == -65', 'rs2_b1_val == -3', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x80000a14]:KADD8 a0, s8, s9
	-[0x80000a18]:sd a0, 128(s1)
Current Store : [0x80000a1c] : sd s8, 136(s1) -- Store: [0x80003398]:0x20FF077F5507FD09




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x23', 'rs1_b7_val == -9', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x80000a50]:KADD8 s7, a0, ra
	-[0x80000a54]:sd s7, 144(s1)
Current Store : [0x80000a58] : sd a0, 152(s1) -- Store: [0x800033a8]:0xF7551007068000C0




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x7', 'rs2_b6_val == -86', 'rs2_b2_val == 64', 'rs1_b4_val == 8', 'rs1_b3_val == -1', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000a94]:KADD8 t2, a5, s3
	-[0x80000a98]:sd t2, 160(s1)
Current Store : [0x80000a9c] : sd a5, 168(s1) -- Store: [0x800033b8]:0xFCEF0008FF09EFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rd : x13', 'rs2_b6_val == 85', 'rs2_b3_val == -9', 'rs2_b1_val == 4', 'rs2_b0_val == 2', 'rs1_b7_val == -65', 'rs1_b5_val == -3', 'rs1_b3_val == 0', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x80000ae0]:KADD8 a3, fp, a7
	-[0x80000ae4]:sd a3, 176(s1)
Current Store : [0x80000ae8] : sd fp, 184(s1) -- Store: [0x800033c8]:0xBFFBFD0700F708FB




Last Coverpoint : ['rs1 : x3', 'rs2 : x22', 'rd : x15', 'rs2_b6_val == -5', 'rs2_b5_val == -86', 'rs2_b1_val == 85', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000b24]:KADD8 a5, gp, s6
	-[0x80000b28]:sd a5, 192(s1)
Current Store : [0x80000b2c] : sd gp, 200(s1) -- Store: [0x800033d8]:0x07FC7FFE0305C0EF




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x11', 'rs2_b7_val == 85', 'rs2_b4_val == -65', 'rs1_b7_val == 0', 'rs1_b6_val == 0', 'rs1_b4_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000b70]:KADD8 a1, zero, s2
	-[0x80000b74]:sd a1, 0(sp)
Current Store : [0x80000b78] : sd zero, 8(sp) -- Store: [0x800033e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x1', 'rs2_b6_val == 4', 'rs1_b5_val == -2']
Last Code Sequence : 
	-[0x80000bb4]:KADD8 ra, s7, a3
	-[0x80000bb8]:sd ra, 16(sp)
Current Store : [0x80000bbc] : sd s7, 24(sp) -- Store: [0x800033f8]:0x807FFEDF0705FC06




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x27', 'rs1_b5_val == 32', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000bf8]:KADD8 s11, ra, t1
	-[0x80000bfc]:sd s11, 32(sp)
Current Store : [0x80000c00] : sd ra, 40(sp) -- Store: [0x80003408]:0xF93F2005F63FDF10




Last Coverpoint : ['rs2_b0_val == 32', 'rs1_b6_val == 8', 'rs1_b5_val == 8']
Last Code Sequence : 
	-[0x80000c34]:KADD8 t6, t5, t4
	-[0x80000c38]:sd t6, 48(sp)
Current Store : [0x80000c3c] : sd t5, 56(sp) -- Store: [0x80003418]:0x00080855F8AAF93F




Last Coverpoint : ['rs2_b4_val == -9', 'rs2_b3_val == -33', 'rs2_b1_val == -1', 'rs2_b0_val == 8', 'rs1_b5_val == 4', 'rs1_b4_val == -9', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000c78]:KADD8 t6, t5, t4
	-[0x80000c7c]:sd t6, 64(sp)
Current Store : [0x80000c80] : sd t5, 72(sp) -- Store: [0x80003428]:0xEFC004F70410FB55




Last Coverpoint : ['rs1_b5_val == 1']
Last Code Sequence : 
	-[0x80000cbc]:KADD8 t6, t5, t4
	-[0x80000cc0]:sd t6, 80(sp)
Current Store : [0x80000cc4] : sd t5, 88(sp) -- Store: [0x80003438]:0x3FFC010355100810




Last Coverpoint : ['rs2_b5_val == -128', 'rs1_b5_val == -1', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x80000cf8]:KADD8 t6, t5, t4
	-[0x80000cfc]:sd t6, 96(sp)
Current Store : [0x80000d00] : sd t5, 104(sp) -- Store: [0x80003448]:0xF804FFEFFCBFFCFB




Last Coverpoint : ['rs1_b6_val == 2', 'rs1_b4_val == -86']
Last Code Sequence : 
	-[0x80000d3c]:KADD8 t6, t5, t4
	-[0x80000d40]:sd t6, 112(sp)
Current Store : [0x80000d44] : sd t5, 120(sp) -- Store: [0x80003458]:0xFA02FDAA03023F80




Last Coverpoint : ['rs2_b4_val == 16', 'rs1_b6_val == -2', 'rs1_b5_val == -33', 'rs1_b4_val == -128']
Last Code Sequence : 
	-[0x80000d80]:KADD8 t6, t5, t4
	-[0x80000d84]:sd t6, 128(sp)
Current Store : [0x80000d88] : sd t5, 136(sp) -- Store: [0x80003468]:0x03FEDF807FFBF6F8




Last Coverpoint : ['rs2_b2_val == 8', 'rs2_b1_val == -128', 'rs1_b4_val == 64']
Last Code Sequence : 
	-[0x80000dbc]:KADD8 t6, t5, t4
	-[0x80000dc0]:sd t6, 144(sp)
Current Store : [0x80000dc4] : sd t5, 152(sp) -- Store: [0x80003478]:0xF809FC40AA06FD08




Last Coverpoint : ['rs2_b5_val == 2', 'rs2_b2_val == 4', 'rs1_b4_val == 16', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000df8]:KADD8 t6, t5, t4
	-[0x80000dfc]:sd t6, 160(sp)
Current Store : [0x80000e00] : sd t5, 168(sp) -- Store: [0x80003488]:0xEFFFDF1007FFFB20




Last Coverpoint : ['rs2_b4_val == -128', 'rs1_b3_val == -17', 'rs1_b2_val == -2']
Last Code Sequence : 
	-[0x80000e3c]:KADD8 t6, t5, t4
	-[0x80000e40]:sd t6, 176(sp)
Current Store : [0x80000e44] : sd t5, 184(sp) -- Store: [0x80003498]:0x3FF98000EFFEFEFF




Last Coverpoint : ['rs1_b6_val == -9', 'rs1_b3_val == -65', 'rs1_b1_val == -86']
Last Code Sequence : 
	-[0x80000e80]:KADD8 t6, t5, t4
	-[0x80000e84]:sd t6, 192(sp)
Current Store : [0x80000e88] : sd t5, 200(sp) -- Store: [0x800034a8]:0xFAF7C0C0BF04AAFC




Last Coverpoint : ['rs1_b3_val == -33', 'rs1_b1_val == -9', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000ebc]:KADD8 t6, t5, t4
	-[0x80000ec0]:sd t6, 208(sp)
Current Store : [0x80000ec4] : sd t5, 216(sp) -- Store: [0x800034b8]:0x05F802FBDFFFF7AA




Last Coverpoint : ['rs1_b7_val == 4', 'rs1_b3_val == -9']
Last Code Sequence : 
	-[0x80000f00]:KADD8 t6, t5, t4
	-[0x80000f04]:sd t6, 224(sp)
Current Store : [0x80000f08] : sd t5, 232(sp) -- Store: [0x800034c8]:0x04080909F7FE0800




Last Coverpoint : ['rs1_b5_val == -5', 'rs1_b3_val == -3', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000f3c]:KADD8 t6, t5, t4
	-[0x80000f40]:sd t6, 240(sp)
Current Store : [0x80000f44] : sd t5, 248(sp) -- Store: [0x800034d8]:0xF840FBEFFD5500DF




Last Coverpoint : ['rs2_b0_val == -33', 'rs1_b3_val == -128']
Last Code Sequence : 
	-[0x80000f88]:KADD8 t6, t5, t4
	-[0x80000f8c]:sd t6, 256(sp)
Current Store : [0x80000f90] : sd t5, 264(sp) -- Store: [0x800034e8]:0xBF05FA3F80FB3FAA




Last Coverpoint : ['rs2_b6_val == -128', 'rs2_b2_val == -3', 'rs1_b7_val == -2', 'rs1_b6_val == 32', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000fc4]:KADD8 t6, t5, t4
	-[0x80000fc8]:sd t6, 272(sp)
Current Store : [0x80000fcc] : sd t5, 280(sp) -- Store: [0x800034f8]:0xFE20030540FC07AA




Last Coverpoint : ['rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80001010]:KADD8 t6, t5, t4
	-[0x80001014]:sd t6, 288(sp)
Current Store : [0x80001018] : sd t5, 296(sp) -- Store: [0x80003508]:0xDF0201802002F6AA




Last Coverpoint : ['rs2_b3_val == -86']
Last Code Sequence : 
	-[0x8000105c]:KADD8 t6, t5, t4
	-[0x80001060]:sd t6, 304(sp)
Current Store : [0x80001064] : sd t5, 312(sp) -- Store: [0x80003518]:0xBF01FC002007047F




Last Coverpoint : ['rs2_b3_val == 127', 'rs2_b0_val == -86', 'rs1_b4_val == 1']
Last Code Sequence : 
	-[0x800010a0]:KADD8 t6, t5, t4
	-[0x800010a4]:sd t6, 320(sp)
Current Store : [0x800010a8] : sd t5, 328(sp) -- Store: [0x80003528]:0xC0F7FA0140BFFC02




Last Coverpoint : ['rs2_b2_val == -86', 'rs1_b7_val == 8']
Last Code Sequence : 
	-[0x800010e4]:KADD8 t6, t5, t4
	-[0x800010e8]:sd t6, 336(sp)
Current Store : [0x800010ec] : sd t5, 344(sp) -- Store: [0x80003538]:0x08003F0906FE00FA




Last Coverpoint : ['rs2_b5_val == 8', 'rs2_b2_val == -33', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80001128]:KADD8 t6, t5, t4
	-[0x8000112c]:sd t6, 352(sp)
Current Store : [0x80001130] : sd t5, 360(sp) -- Store: [0x80003548]:0x00C0FFFAFBFFEF04




Last Coverpoint : ['rs2_b6_val == 64', 'rs2_b2_val == 32']
Last Code Sequence : 
	-[0x8000116c]:KADD8 t6, t5, t4
	-[0x80001170]:sd t6, 368(sp)
Current Store : [0x80001174] : sd t5, 376(sp) -- Store: [0x80003558]:0xFCF81010FA05EF55




Last Coverpoint : ['rs2_b2_val == 16', 'rs2_b1_val == 8', 'rs1_b2_val == -33']
Last Code Sequence : 
	-[0x800011b8]:KADD8 t6, t5, t4
	-[0x800011bc]:sd t6, 384(sp)
Current Store : [0x800011c0] : sd t5, 392(sp) -- Store: [0x80003568]:0x0909FB0803DF1004




Last Coverpoint : ['rs2_b2_val == -1', 'rs2_b1_val == 16', 'rs1_b6_val == -128']
Last Code Sequence : 
	-[0x800011fc]:KADD8 t6, t5, t4
	-[0x80001200]:sd t6, 400(sp)
Current Store : [0x80001204] : sd t5, 408(sp) -- Store: [0x80003578]:0x4080F7FA0206F805




Last Coverpoint : ['rs2_b1_val == -86', 'rs1_b7_val == -86', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x80001240]:KADD8 t6, t5, t4
	-[0x80001244]:sd t6, 416(sp)
Current Store : [0x80001248] : sd t5, 424(sp) -- Store: [0x80003588]:0xAA407FC000F90109




Last Coverpoint : ['rs2_b1_val == 127', 'rs2_b0_val == -9', 'rs1_b7_val == 2']
Last Code Sequence : 
	-[0x80001284]:KADD8 t6, t5, t4
	-[0x80001288]:sd t6, 432(sp)
Current Store : [0x8000128c] : sd t5, 440(sp) -- Store: [0x80003598]:0x0208FDFEF7F7C0EF




Last Coverpoint : ['rs2_b1_val == -65', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x800012c0]:KADD8 t6, t5, t4
	-[0x800012c4]:sd t6, 448(sp)
Current Store : [0x800012c8] : sd t5, 456(sp) -- Store: [0x800035a8]:0xBF0406F73F4004F9




Last Coverpoint : ['rs1_b7_val == 16', 'rs1_b3_val == 16']
Last Code Sequence : 
	-[0x8000130c]:KADD8 t6, t5, t4
	-[0x80001310]:sd t6, 464(sp)
Current Store : [0x80001314] : sd t5, 472(sp) -- Store: [0x800035b8]:0x1004407F100700FC




Last Coverpoint : ['rs2_b1_val == -17', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80001350]:KADD8 t6, t5, t4
	-[0x80001354]:sd t6, 480(sp)
Current Store : [0x80001358] : sd t5, 488(sp) -- Store: [0x800035c8]:0xDF20F604FA060801




Last Coverpoint : ['rs2_b1_val == -2', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80001394]:KADD8 t6, t5, t4
	-[0x80001398]:sd t6, 496(sp)
Current Store : [0x8000139c] : sd t5, 504(sp) -- Store: [0x800035d8]:0xFBC0FD05052080F8




Last Coverpoint : ['rs2_b0_val == -65', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x800013d4]:KADD8 t6, t5, t4
	-[0x800013d8]:sd t6, 512(sp)
Current Store : [0x800013dc] : sd t5, 520(sp) -- Store: [0x800035e8]:0x01F7040220404000




Last Coverpoint : ['rs2_b4_val == -17', 'rs2_b0_val == -1', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80001418]:KADD8 t6, t5, t4
	-[0x8000141c]:sd t6, 528(sp)
Current Store : [0x80001420] : sd t5, 536(sp) -- Store: [0x800035f8]:0xAA5508FDFF0805FB




Last Coverpoint : ['rs2_b1_val == 64', 'rs1_b2_val == 1', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x8000145c]:KADD8 t6, t5, t4
	-[0x80001460]:sd t6, 544(sp)
Current Store : [0x80001464] : sd t5, 552(sp) -- Store: [0x80003608]:0x07AA3F3F070103FE




Last Coverpoint : ['rs2_b6_val == 2', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800014a8]:KADD8 t6, t5, t4
	-[0x800014ac]:sd t6, 560(sp)
Current Store : [0x800014b0] : sd t5, 568(sp) -- Store: [0x80003618]:0x4010F9EF05F955FD




Last Coverpoint : ['rs2_b0_val == 16', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x800014e4]:KADD8 t6, t5, t4
	-[0x800014e8]:sd t6, 576(sp)
Current Store : [0x800014ec] : sd t5, 584(sp) -- Store: [0x80003628]:0xFEC0010555FFFF03




Last Coverpoint : ['rs2_b1_val == 1', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x80001528]:KADD8 t6, t5, t4
	-[0x8000152c]:sd t6, 592(sp)
Current Store : [0x80001530] : sd t5, 600(sp) -- Store: [0x80003638]:0xF90107040508BF05




Last Coverpoint : ['rs1_b7_val == 127']
Last Code Sequence : 
	-[0x8000156c]:KADD8 t6, t5, t4
	-[0x80001570]:sd t6, 608(sp)
Current Store : [0x80001574] : sd t5, 616(sp) -- Store: [0x80003648]:0x7F05FFF7083F0955




Last Coverpoint : ['rs2_b5_val == -3']
Last Code Sequence : 
	-[0x800015b0]:KADD8 t6, t5, t4
	-[0x800015b4]:sd t6, 624(sp)
Current Store : [0x800015b8] : sd t5, 632(sp) -- Store: [0x80003658]:0xF7FA1020F9F90802




Last Coverpoint : ['rs2_b5_val == -2']
Last Code Sequence : 
	-[0x800015f4]:KADD8 t6, t5, t4
	-[0x800015f8]:sd t6, 640(sp)
Current Store : [0x800015fc] : sd t5, 648(sp) -- Store: [0x80003668]:0x030140F70910AA09




Last Coverpoint : ['rs2_b4_val == 32', 'rs1_b6_val == -33']
Last Code Sequence : 
	-[0x80001634]:KADD8 t6, t5, t4
	-[0x80001638]:sd t6, 656(sp)
Current Store : [0x8000163c] : sd t5, 664(sp) -- Store: [0x80003678]:0x07DF0008F6C0DF55




Last Coverpoint : ['rs2_b4_val == -33']
Last Code Sequence : 
	-[0x80001678]:KADD8 t6, t5, t4
	-[0x8000167c]:sd t6, 672(sp)
Current Store : [0x80001680] : sd t5, 680(sp) -- Store: [0x80003688]:0xF7F6FCFF20F9BF40




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val < 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val < 0 and rs2_b6_val > 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val < 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b7_val == -5', 'rs2_b4_val == -2', 'rs2_b3_val == -17', 'rs2_b2_val == -33', 'rs2_b0_val == 0', 'rs1_b7_val == -128', 'rs1_b6_val == -65', 'rs1_b5_val == 1', 'rs1_b4_val == -3', 'rs1_b2_val == 32', 'rs1_b1_val == 16', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800016bc]:KADD8 t6, t5, t4
	-[0x800016c0]:sd t6, 688(sp)
Current Store : [0x800016c4] : sd t5, 696(sp) -- Store: [0x80003698]:0x80BF01FD07201004




Last Coverpoint : ['rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800016f8]:KADD8 t6, t5, t4
	-[0x800016fc]:sd t6, 704(sp)
Current Store : [0x80001700] : sd t5, 712(sp) -- Store: [0x800036a8]:0x03FC08053F802008




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val > 0 and rs2_b4_val > 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b6_val == 0', 'rs2_b3_val == 16', 'rs2_b2_val == 8', 'rs2_b1_val == -65', 'rs1_b7_val == 16', 'rs1_b6_val == 16', 'rs1_b4_val == 85', 'rs1_b2_val == 16', 'rs1_b1_val == 64', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x8000173c]:KADD8 t6, t5, t4
	-[0x80001740]:sd t6, 720(sp)
Current Store : [0x80001744] : sd t5, 728(sp) -- Store: [0x800036b8]:0x10100555FA1040AA




Last Coverpoint : ['rs1_b2_val == 127']
Last Code Sequence : 
	-[0x80001788]:KADD8 t6, t5, t4
	-[0x8000178c]:sd t6, 736(sp)
Current Store : [0x80001790] : sd t5, 744(sp) -- Store: [0x800036c8]:0x01F9FC03097FF6FF




Last Coverpoint : ['rs1_b7_val == -3']
Last Code Sequence : 
	-[0x800017cc]:KADD8 t6, t5, t4
	-[0x800017d0]:sd t6, 752(sp)
Current Store : [0x800017d4] : sd t5, 760(sp) -- Store: [0x800036d8]:0xFD07FFF680040120




Last Coverpoint : ['rs2_b5_val == -65', 'rs1_b2_val == -17']
Last Code Sequence : 
	-[0x80001808]:KADD8 t6, t5, t4
	-[0x8000180c]:sd t6, 768(sp)
Current Store : [0x80001810] : sd t5, 776(sp) -- Store: [0x800036e8]:0x071004FB3FEFF740




Last Coverpoint : ['rs2_b4_val == 4']
Last Code Sequence : 
	-[0x8000184c]:KADD8 t6, t5, t4
	-[0x80001850]:sd t6, 784(sp)
Current Store : [0x80001854] : sd t5, 792(sp) -- Store: [0x800036f8]:0xF820F7FAFD20F6DF




Last Coverpoint : ['rs1_b2_val == -3']
Last Code Sequence : 
	-[0x80001890]:KADD8 t6, t5, t4
	-[0x80001894]:sd t6, 800(sp)
Current Store : [0x80001898] : sd t5, 808(sp) -- Store: [0x80003708]:0xBFEFBF0155FD0580




Last Coverpoint : ['rs2_b2_val == -2']
Last Code Sequence : 
	-[0x800018d4]:KADD8 t6, t5, t4
	-[0x800018d8]:sd t6, 816(sp)
Current Store : [0x800018dc] : sd t5, 824(sp) -- Store: [0x80003718]:0xDF0109C0FA55097F




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val > 0 and rs2_b4_val < 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b7_val == 127', 'rs2_b5_val == 85', 'rs2_b4_val == -86', 'rs2_b3_val == 32', 'rs2_b2_val == -5', 'rs2_b0_val == 85', 'rs1_b7_val == -128', 'rs1_b5_val == 16', 'rs1_b1_val == 8', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80001920]:KADD8 t6, t5, t4
	-[0x80001924]:sd t6, 832(sp)
Current Store : [0x80001928] : sd t5, 840(sp) -- Store: [0x80003728]:0x8006103F06FA0808




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val < 0 and rs2_b6_val > 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val < 0 and rs2_b5_val < 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val > 0 and rs2_b4_val < 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b7_val == 85', 'rs2_b6_val == 8', 'rs2_b5_val == -9', 'rs2_b4_val == -65', 'rs2_b3_val == 32', 'rs2_b0_val == -17', 'rs1_b7_val == -65', 'rs1_b6_val == -2', 'rs1_b5_val == -5', 'rs1_b4_val == 32', 'rs1_b3_val == -5', 'rs1_b1_val == 1', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80001964]:KADD8 t6, t5, t4
	-[0x80001968]:sd t6, 848(sp)
Current Store : [0x8000196c] : sd t5, 856(sp) -- Store: [0x80003738]:0xBFFEFB20FBF80102





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                                                                                                                                                                                                   |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFEDE12F07F80EC7E|- opcode : kadd8<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_b7_val == rs2_b7_val<br> - rs1_b7_val < 0 and rs2_b7_val < 0<br> - rs1_b6_val == rs2_b6_val<br> - rs1_b6_val < 0 and rs2_b6_val < 0<br> - rs1_b5_val == rs2_b5_val<br> - rs1_b5_val > 0 and rs2_b5_val > 0<br> - rs1_b4_val == rs2_b4_val<br> - rs1_b4_val < 0 and rs2_b4_val < 0<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b7_val == -1<br> - rs2_b6_val == -17<br> - rs2_b3_val == 85<br> - rs2_b2_val == -128<br> - rs1_b7_val == -1<br> - rs1_b6_val == -17<br> - rs1_b3_val == 85<br> - rs1_b2_val == -128<br> |[0x800003dc]:KADD8 t0, s10, s10<br> [0x800003e0]:sd t0, 0(ra)<br>     |
|   2|[0x80003220]<br>0x0E80EEEC0480F67F|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs1_b7_val > 0 and rs2_b7_val > 0<br> - rs1_b5_val < 0 and rs2_b5_val < 0<br> - rs2_b6_val == -65<br> - rs2_b5_val == -9<br> - rs2_b3_val == 2<br> - rs2_b1_val == -5<br> - rs2_b0_val == 64<br> - rs1_b6_val == -65<br> - rs1_b5_val == -9<br> - rs1_b3_val == 2<br> - rs1_b1_val == -5<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000420]:KADD8 s1, s1, s1<br> [0x80000424]:sd s1, 16(ra)<br>      |
|   3|[0x80003230]<br>0x000E015E474D5F80|- rs1 : x6<br> - rs2 : x12<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b0_val == -128<br> - rs1_b7_val != rs2_b7_val<br> - rs1_b7_val < 0 and rs2_b7_val > 0<br> - rs1_b6_val != rs2_b6_val<br> - rs1_b6_val > 0 and rs2_b6_val < 0<br> - rs1_b5_val != rs2_b5_val<br> - rs1_b4_val != rs2_b4_val<br> - rs1_b4_val < 0 and rs2_b4_val > 0<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b7_val == 4<br> - rs2_b6_val == -2<br> - rs2_b5_val == 1<br> - rs2_b4_val == 127<br> - rs2_b3_val == 8<br> - rs2_b1_val == 32<br> - rs2_b0_val == -128<br> - rs1_b6_val == 16<br> - rs1_b5_val == 0<br> - rs1_b4_val == -33<br> - rs1_b2_val == 85<br>                      |[0x80000464]:KADD8 s9, t1, a2<br> [0x80000468]:sd s9, 32(ra)<br>      |
|   4|[0x80003240]<br>0x01F6E9FBFF99017F|- rs1 : x20<br> - rs2 : x7<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_b7_val > 0 and rs2_b7_val < 0<br> - rs1_b4_val > 0 and rs2_b4_val < 0<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs1_b0_val != rs2_b0_val<br> - rs2_b7_val == -2<br> - rs2_b5_val == -17<br> - rs2_b3_val == -2<br> - rs2_b2_val == -17<br> - rs2_b0_val == 127<br> - rs1_b3_val == 1<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800004a0]:KADD8 s4, s4, t2<br> [0x800004a4]:sd s4, 48(ra)<br>      |
|   5|[0x80003250]<br>0xABFF1475F6800700|- rs1 : x17<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_b6_val < 0 and rs2_b6_val > 0<br> - rs1_b4_val > 0 and rs2_b4_val > 0<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b7_val == -86<br> - rs2_b5_val == 4<br> - rs2_b4_val == 85<br> - rs1_b7_val == 1<br> - rs1_b5_val == 16<br> - rs1_b4_val == 32<br> - rs1_b1_val == -2<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800004e4]:KADD8 t5, a7, t5<br> [0x800004e8]:sd t5, 64(ra)<br>      |
|   6|[0x80003260]<br>0x430B0B3A4F658656|- rs1 : x19<br> - rs2 : x10<br> - rd : x24<br> - rs1_b6_val > 0 and rs2_b6_val > 0<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b4_val == 64<br> - rs2_b3_val == 16<br> - rs2_b2_val == 85<br> - rs2_b0_val == 1<br> - rs1_b6_val == 4<br> - rs1_b2_val == 16<br> - rs1_b1_val == -128<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000528]:KADD8 s8, s3, a0<br> [0x8000052c]:sd s8, 80(ra)<br>      |
|   7|[0x80003270]<br>0xABA6DEEC06FB24F4|- rs1 : x22<br> - rs2 : x8<br> - rd : x19<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b4_val == -3<br> - rs2_b3_val == -3<br> - rs2_b0_val == -17<br> - rs1_b6_val == -86<br> - rs1_b5_val == -17<br> - rs1_b4_val == -17<br> - rs1_b2_val == -1<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000056c]:KADD8 s3, s6, fp<br> [0x80000570]:sd s3, 96(ra)<br>      |
|   8|[0x80003280]<br>0xDF0109C0FA55097F|- rs1 : x29<br> - rs2 : x0<br> - rd : x17<br> - rs2_b7_val == 0<br> - rs2_b6_val == 0<br> - rs2_b5_val == 0<br> - rs2_b4_val == 0<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b7_val == -33<br> - rs1_b6_val == 1<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800005b0]:KADD8 a7, t4, zero<br> [0x800005b4]:sd a7, 112(ra)<br>   |
|   9|[0x80003290]<br>0x5E07B6F6430B78F2|- rs1 : x13<br> - rs2 : x2<br> - rd : x4<br> - rs2_b6_val == -9<br> - rs2_b4_val == -5<br> - rs2_b3_val == 4<br> - rs2_b0_val == -5<br> - rs1_b7_val == 85<br> - rs1_b4_val == -5<br> - rs1_b1_val == 127<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005f4]:KADD8 tp, a3, sp<br> [0x800005f8]:sd tp, 128(ra)<br>     |
|  10|[0x800032a0]<br>0x2E06F702C4EEE244|- rs1 : x16<br> - rs2 : x14<br> - rd : x8<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs2_b4_val == 8<br> - rs2_b1_val == -33<br> - rs1_b7_val == -17<br> - rs1_b6_val == -3<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000638]:KADD8 fp, a6, a4<br> [0x8000063c]:sd fp, 144(ra)<br>     |
|  11|[0x800032b0]<br>0x21B20B03F900B87F|- rs1 : x11<br> - rs2 : x5<br> - rd : x22<br> - rs2_b7_val == 32<br> - rs2_b6_val == 8<br> - rs2_b3_val == -1<br> - rs1_b5_val == 2<br> - rs1_b2_val == 0<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000674]:KADD8 s6, a1, t0<br> [0x80000678]:sd s6, 160(ra)<br>     |
|  12|[0x800032c0]<br>0x197F17EFF1FC0A80|- rs1 : x31<br> - rs2 : x16<br> - rd : x21<br> - rs1_b5_val < 0 and rs2_b5_val > 0<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs2_b7_val == 16<br> - rs2_b6_val == 1<br> - rs2_b5_val == 32<br> - rs2_b3_val == -17<br> - rs1_b6_val == 127<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006b8]:KADD8 s5, t6, a6<br> [0x800006bc]:sd s5, 176(ra)<br>     |
|  13|[0x800032d0]<br>0xFF303715CAB10E7F|- rs1 : x25<br> - rs2 : x23<br> - rd : x26<br> - rs2_b6_val == 32<br> - rs2_b3_val == 32<br> - rs1_b4_val == 85<br> - rs1_b3_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006f4]:KADD8 s10, s9, s7<br> [0x800006f8]:sd s10, 192(ra)<br>   |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x24<br> - rd : x0<br> - rs2_b7_val == 127<br> - rs2_b5_val == 85<br> - rs2_b4_val == -86<br> - rs2_b2_val == -5<br> - rs2_b0_val == 85<br> - rs1_b7_val == -128<br> - rs1_b1_val == 8<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000740]:KADD8 zero, sp, s8<br> [0x80000744]:sd zero, 208(ra)<br> |
|  15|[0x800032f0]<br>0xB8603905EA75F90D|- rs1 : x4<br> - rs2 : x20<br> - rd : x3<br> - rs1_b5_val > 0 and rs2_b5_val < 0<br> - rs2_b7_val == -65<br> - rs2_b3_val == 64<br> - rs2_b2_val == 127<br> - rs1_b6_val == 64<br> - rs1_b4_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000784]:KADD8 gp, tp, s4<br> [0x80000788]:sd gp, 224(ra)<br>     |
|  16|[0x80003300]<br>0xDE08070CFEF9F4FB|- rs1 : x30<br> - rs2 : x15<br> - rd : x12<br> - rs2_b7_val == -33<br> - rs2_b5_val == 16<br> - rs2_b2_val == 1<br> - rs1_b4_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800007c0]:KADD8 a2, t5, a5<br> [0x800007c4]:sd a2, 240(ra)<br>     |
|  17|[0x80003310]<br>0xEAFCFF167F84FFEA|- rs1 : x12<br> - rs2 : x29<br> - rd : x2<br> - rs2_b7_val == -17<br> - rs2_b6_val == -1<br> - rs2_b5_val == 64<br> - rs1_b7_val == -5<br> - rs1_b5_val == -65<br> - rs1_b3_val == 127<br> - rs1_b2_val == 4<br> - rs1_b1_val == -33<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000080c]:KADD8 sp, a2, t4<br> [0x80000810]:sd sp, 0(s1)<br>       |
|  18|[0x80003320]<br>0x00477E7DFF4B41F1|- rs1 : x28<br> - rs2 : x31<br> - rd : x18<br> - rs2_b7_val == -9<br> - rs2_b5_val == -1<br> - rs1_b5_val == 127<br> - rs1_b4_val == -2<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000848]:KADD8 s2, t3, t6<br> [0x8000084c]:sd s2, 16(s1)<br>      |
|  19|[0x80003330]<br>0x1BF80B01F73AFDF8|- rs1 : x18<br> - rs2 : x27<br> - rd : x14<br> - rs2_b7_val == -5<br> - rs2_b6_val == -3<br> - rs2_b5_val == -5<br> - rs2_b4_val == -2<br> - rs2_b3_val == -5<br> - rs2_b1_val == -9<br> - rs1_b7_val == 32<br> - rs1_b6_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000088c]:KADD8 a4, s2, s11<br> [0x80000890]:sd a4, 32(s1)<br>     |
|  20|[0x80003340]<br>0x3D3E1F3D80EDF108|- rs1 : x27<br> - rs2 : x11<br> - rd : x16<br> - rs2_b7_val == -3<br> - rs2_b5_val == -33<br> - rs2_b3_val == -128<br> - rs2_b2_val == -9<br> - rs2_b0_val == 4<br> - rs1_b7_val == 64<br> - rs1_b6_val == -1<br> - rs1_b5_val == 64<br> - rs1_b4_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800008d0]:KADD8 a6, s11, a1<br> [0x800008d4]:sd a6, 48(s1)<br>     |
|  21|[0x80003350]<br>0x89793FC00BFB12B8|- rs1 : x7<br> - rs2 : x28<br> - rd : x31<br> - rs2_b7_val == -128<br> - rs2_b6_val == 127<br> - rs2_b5_val == 127<br> - rs2_b4_val == 1<br> - rs2_b1_val == 2<br> - rs1_b4_val == -65<br> - rs1_b2_val == 2<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000914]:KADD8 t6, t2, t3<br> [0x80000918]:sd t6, 64(s1)<br>      |
|  22|[0x80003360]<br>0x38F280FD7F09F804|- rs1 : x5<br> - rs2 : x21<br> - rd : x29<br> - rs2_b7_val == 64<br> - rs2_b3_val == 1<br> - rs2_b2_val == 2<br> - rs1_b5_val == -128<br> - rs1_b4_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000950]:KADD8 t4, t0, s5<br> [0x80000954]:sd t4, 80(s1)<br>      |
|  23|[0x80003370]<br>0x0E51AF7E107A80BD|- rs1 : x21<br> - rs2 : x4<br> - rd : x6<br> - rs2_b7_val == 8<br> - rs2_b4_val == -1<br> - rs2_b0_val == -2<br> - rs1_b6_val == 85<br> - rs1_b5_val == -86<br> - rs1_b4_val == 127<br> - rs1_b3_val == 8<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000994]:KADD8 t1, s5, tp<br> [0x80000998]:sd t1, 96(s1)<br>      |
|  24|[0x80003380]<br>0x57FF65FABD65EA05|- rs1 : x14<br> - rs2 : x3<br> - rd : x28<br> - rs2_b7_val == 2<br> - rs2_b6_val == 16<br> - rs2_b3_val == -65<br> - rs2_b0_val == -3<br> - rs1_b5_val == 85<br> - rs1_b3_val == -2<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800009d8]:KADD8 t3, a4, gp<br> [0x800009dc]:sd t3, 112(s1)<br>     |
|  25|[0x80003390]<br>0x21DE0C7F59C6FA0D|- rs1 : x24<br> - rs2 : x25<br> - rd : x10<br> - rs2_b7_val == 1<br> - rs2_b6_val == -33<br> - rs2_b4_val == 2<br> - rs2_b2_val == -65<br> - rs2_b1_val == -3<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a14]:KADD8 a0, s8, s9<br> [0x80000a18]:sd a0, 128(s1)<br>     |
|  26|[0x800033a0]<br>0xF75C4F0E0180FCC5|- rs1 : x10<br> - rs2 : x1<br> - rd : x23<br> - rs1_b7_val == -9<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000a50]:KADD8 s7, a0, ra<br> [0x80000a54]:sd s7, 144(s1)<br>     |
|  27|[0x800033b0]<br>0x02990303FD49E706|- rs1 : x15<br> - rs2 : x19<br> - rd : x7<br> - rs2_b6_val == -86<br> - rs2_b2_val == 64<br> - rs1_b4_val == 8<br> - rs1_b3_val == -1<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a94]:KADD8 t2, a5, s3<br> [0x80000a98]:sd t2, 160(s1)<br>     |
|  28|[0x800033c0]<br>0x80501D47F7FC0CFD|- rs1 : x8<br> - rs2 : x17<br> - rd : x13<br> - rs2_b6_val == 85<br> - rs2_b3_val == -9<br> - rs2_b1_val == 4<br> - rs2_b0_val == 2<br> - rs1_b7_val == -65<br> - rs1_b5_val == -3<br> - rs1_b3_val == 0<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ae0]:KADD8 a3, fp, a7<br> [0x80000ae4]:sd a3, 176(s1)<br>     |
|  29|[0x800033d0]<br>0x06F729FAFB061580|- rs1 : x3<br> - rs2 : x22<br> - rd : x15<br> - rs2_b6_val == -5<br> - rs2_b5_val == -86<br> - rs2_b1_val == 85<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b24]:KADD8 a5, gp, s6<br> [0x80000b28]:sd a5, 192(s1)<br>     |
|  30|[0x800033e0]<br>0x5508F7BF2006F8EF|- rs1 : x0<br> - rs2 : x18<br> - rd : x11<br> - rs2_b7_val == 85<br> - rs2_b4_val == -65<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b4_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b70]:KADD8 a1, zero, s2<br> [0x80000b74]:sd a1, 0(sp)<br>     |
|  31|[0x800033f0]<br>0x827F05D9085A1C0D|- rs1 : x23<br> - rs2 : x13<br> - rd : x1<br> - rs2_b6_val == 4<br> - rs1_b5_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bb4]:KADD8 ra, s7, a3<br> [0x80000bb8]:sd ra, 16(sp)<br>      |
|  32|[0x80003400]<br>0xF65F1F5AF948E317|- rs1 : x1<br> - rs2 : x6<br> - rd : x27<br> - rs1_b5_val == 32<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bf8]:KADD8 s11, ra, t1<br> [0x80000bfc]:sd s11, 32(sp)<br>    |
|  33|[0x80003410]<br>0xFA5D0357F4ADF15F|- rs2_b0_val == 32<br> - rs1_b6_val == 8<br> - rs1_b5_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c34]:KADD8 t6, t5, t4<br> [0x80000c38]:sd t6, 48(sp)<br>      |
|  34|[0x80003420]<br>0xAEC644EEE310FA5D|- rs2_b4_val == -9<br> - rs2_b3_val == -33<br> - rs2_b1_val == -1<br> - rs2_b0_val == 8<br> - rs1_b5_val == 4<br> - rs1_b4_val == -9<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000c78]:KADD8 t6, t5, t4<br> [0x80000c7c]:sd t6, 64(sp)<br>      |
|  35|[0x80003430]<br>0x373BFB0554904718|- rs1_b5_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000cbc]:KADD8 t6, t5, t4<br> [0x80000cc0]:sd t6, 80(sp)<br>      |
|  36|[0x80003440]<br>0xB70B80EE04C6FB1B|- rs2_b5_val == -128<br> - rs1_b5_val == -1<br> - rs1_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000cf8]:KADD8 t6, t5, t4<br> [0x80000cfc]:sd t6, 96(sp)<br>      |
|  37|[0x80003450]<br>0xFAAC3CA80B573980|- rs1_b6_val == 2<br> - rs1_b4_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d3c]:KADD8 t6, t5, t4<br> [0x80000d40]:sd t6, 112(sp)<br>     |
|  38|[0x80003460]<br>0x58F4DE907680EE37|- rs2_b4_val == 16<br> - rs1_b6_val == -2<br> - rs1_b5_val == -33<br> - rs1_b4_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d80]:KADD8 t6, t5, t4<br> [0x80000d84]:sd t6, 128(sp)<br>     |
|  39|[0x80003470]<br>0x3805FF7FAD0E80C8|- rs2_b2_val == 8<br> - rs2_b1_val == -128<br> - rs1_b4_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000dbc]:KADD8 t6, t5, t4<br> [0x80000dc0]:sd t6, 144(sp)<br>     |
|  40|[0x80003480]<br>0xF303E165FD030025|- rs2_b5_val == 2<br> - rs2_b2_val == 4<br> - rs1_b4_val == 16<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000df8]:KADD8 t6, t5, t4<br> [0x80000dfc]:sd t6, 160(sp)<br>     |
|  41|[0x80003490]<br>0x4FD88080EFBDF93F|- rs2_b4_val == -128<br> - rs1_b3_val == -17<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e3c]:KADD8 t6, t5, t4<br> [0x80000e40]:sd t6, 176(sp)<br>     |
|  42|[0x800034a0]<br>0x394CB8C6C10DA9FF|- rs1_b6_val == -9<br> - rs1_b3_val == -65<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000e80]:KADD8 t6, t5, t4<br> [0x80000e84]:sd t6, 192(sp)<br>     |
|  43|[0x800034b0]<br>0x0D0804F4DBEEF1EA|- rs1_b3_val == -33<br> - rs1_b1_val == -9<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ebc]:KADD8 t6, t5, t4<br> [0x80000ec0]:sd t6, 208(sp)<br>     |
|  44|[0x800034c0]<br>0xC4B2F805FBED0EFB|- rs1_b7_val == 4<br> - rs1_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f00]:KADD8 t6, t5, t4<br> [0x80000f04]:sd t6, 224(sp)<br>     |
|  45|[0x800034d0]<br>0xFE60F1F2FE44025E|- rs1_b5_val == -5<br> - rs1_b3_val == -3<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f3c]:KADD8 t6, t5, t4<br> [0x80000f40]:sd t6, 240(sp)<br>     |
|  46|[0x800034e0]<br>0xB8FF80E987FB3689|- rs2_b0_val == -33<br> - rs1_b3_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f88]:KADD8 t6, t5, t4<br> [0x80000f8c]:sd t6, 256(sp)<br>     |
|  47|[0x800034f0]<br>0xFAA0FDAF36F9C7EA|- rs2_b6_val == -128<br> - rs2_b2_val == -3<br> - rs1_b7_val == -2<br> - rs1_b6_val == 32<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000fc4]:KADD8 t6, t5, t4<br> [0x80000fc8]:sd t6, 272(sp)<br>     |
|  48|[0x80003500]<br>0x5EFDABFF16C2EDA6|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001010]:KADD8 t6, t5, t4<br> [0x80001014]:sd t6, 288(sp)<br>     |
|  49|[0x80003510]<br>0x80098002CA0D0A7A|- rs2_b3_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000105c]:KADD8 t6, t5, t4<br> [0x80001060]:sd t6, 304(sp)<br>     |
|  50|[0x80003520]<br>0x8000F6027FC7F9AC|- rs2_b3_val == 127<br> - rs2_b0_val == -86<br> - rs1_b4_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010a0]:KADD8 t6, t5, t4<br> [0x800010a4]:sd t6, 320(sp)<br>     |
|  51|[0x80003530]<br>0x28F8380202A8DFE9|- rs2_b2_val == -86<br> - rs1_b7_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800010e4]:KADD8 t6, t5, t4<br> [0x800010e8]:sd t6, 336(sp)<br>     |
|  52|[0x80003540]<br>0x04B807FCF1DEE67F|- rs2_b5_val == 8<br> - rs2_b2_val == -33<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001128]:KADD8 t6, t5, t4<br> [0x8000112c]:sd t6, 352(sp)<br>     |
|  53|[0x80003550]<br>0x0438FFBA3A25EE44|- rs2_b6_val == 64<br> - rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000116c]:KADD8 t6, t5, t4<br> [0x80001170]:sd t6, 368(sp)<br>     |
|  54|[0x80003560]<br>0x490200C8FDEF1806|- rs2_b2_val == 16<br> - rs2_b1_val == 8<br> - rs1_b2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011b8]:KADD8 t6, t5, t4<br> [0x800011bc]:sd t6, 384(sp)<br>     |
|  55|[0x80003570]<br>0x4386F103FE05080A|- rs2_b2_val == -1<br> - rs2_b1_val == 16<br> - rs1_b6_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011fc]:KADD8 t6, t5, t4<br> [0x80001200]:sd t6, 400(sp)<br>     |
|  56|[0x80003580]<br>0xAC50FFBDFE39AB05|- rs2_b1_val == -86<br> - rs1_b7_val == -86<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001240]:KADD8 t6, t5, t4<br> [0x80001244]:sd t6, 416(sp)<br>     |
|  57|[0x80003590]<br>0x06003C53FCE63FE6|- rs2_b1_val == 127<br> - rs2_b0_val == -9<br> - rs1_b7_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001284]:KADD8 t6, t5, t4<br> [0x80001288]:sd t6, 432(sp)<br>     |
|  58|[0x800035a0]<br>0xBAFB0DF53F39C302|- rs2_b1_val == -65<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800012c0]:KADD8 t6, t5, t4<br> [0x800012c4]:sd t6, 448(sp)<br>     |
|  59|[0x800035b0]<br>0x65F37F29650DF6A6|- rs1_b7_val == 16<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000130c]:KADD8 t6, t5, t4<br> [0x80001310]:sd t6, 464(sp)<br>     |
|  60|[0x800035c0]<br>0xEF231644BA0BF701|- rs2_b1_val == -17<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001350]:KADD8 t6, t5, t4<br> [0x80001354]:sd t6, 480(sp)<br>     |
|  61|[0x800035d0]<br>0xF9BBF90B851C8000|- rs2_b1_val == -2<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001394]:KADD8 t6, t5, t4<br> [0x80001398]:sd t6, 496(sp)<br>     |
|  62|[0x800035e0]<br>0xF9F30C031C6049BF|- rs2_b0_val == -65<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800013d4]:KADD8 t6, t5, t4<br> [0x800013d8]:sd t6, 512(sp)<br>     |
|  63|[0x800035f0]<br>0x997F08EC01285AFA|- rs2_b4_val == -17<br> - rs2_b0_val == -1<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001418]:KADD8 t6, t5, t4<br> [0x8000141c]:sd t6, 528(sp)<br>     |
|  64|[0x80003600]<br>0x0DBA3F3BFDF743FC|- rs2_b1_val == 64<br> - rs1_b2_val == 1<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000145c]:KADD8 t6, t5, t4<br> [0x80001460]:sd t6, 544(sp)<br>     |
|  65|[0x80003610]<br>0x7F120980C54E75FB|- rs2_b6_val == 2<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014a8]:KADD8 t6, t5, t4<br> [0x800014ac]:sd t6, 560(sp)<br>     |
|  66|[0x80003620]<br>0xF5E0054515DE7E13|- rs2_b0_val == 16<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800014e4]:KADD8 t6, t5, t4<br> [0x800014e8]:sd t6, 576(sp)<br>     |
|  67|[0x80003630]<br>0xB8FD0E430A0BC0FD|- rs2_b1_val == 1<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001528]:KADD8 t6, t5, t4<br> [0x8000152c]:sd t6, 592(sp)<br>     |
|  68|[0x80003640]<br>0x7FE405F60A400144|- rs1_b7_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000156c]:KADD8 t6, t5, t4<br> [0x80001570]:sd t6, 608(sp)<br>     |
|  69|[0x80003650]<br>0xF03A0D2009EF0CFE|- rs2_b5_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015b0]:KADD8 t6, t5, t4<br> [0x800015b4]:sd t6, 624(sp)<br>     |
|  70|[0x80003660]<br>0x09F73EF2C919A949|- rs2_b5_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015f4]:KADD8 t6, t5, t4<br> [0x800015f8]:sd t6, 640(sp)<br>     |
|  71|[0x80003670]<br>0x475E0128E580DD15|- rs2_b4_val == 32<br> - rs1_b6_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001634]:KADD8 t6, t5, t4<br> [0x80001638]:sd t6, 656(sp)<br>     |
|  72|[0x80003680]<br>0x76ECF8DE1BE8FE41|- rs2_b4_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001678]:KADD8 t6, t5, t4<br> [0x8000167c]:sd t6, 672(sp)<br>     |
|  73|[0x800036a0]<br>0x09BB0F0D46801B88|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016f8]:KADD8 t6, t5, t4<br> [0x800016fc]:sd t6, 704(sp)<br>     |
|  74|[0x800036c0]<br>0xFBF7F3FA7F7FECFA|- rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001788]:KADD8 t6, t5, t4<br> [0x8000178c]:sd t6, 736(sp)<br>     |
|  75|[0x800036d0]<br>0xDC011FF7A07FF816|- rs1_b7_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800017cc]:KADD8 t6, t5, t4<br> [0x800017d0]:sd t6, 752(sp)<br>     |
|  76|[0x800036e0]<br>0x2765C30B390FF344|- rs2_b5_val == -65<br> - rs1_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001808]:KADD8 t6, t5, t4<br> [0x8000180c]:sd t6, 768(sp)<br>     |
|  77|[0x800036f0]<br>0x00A0E6FEFC17F4E8|- rs2_b4_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000184c]:KADD8 t6, t5, t4<br> [0x80001850]:sd t6, 784(sp)<br>     |
|  78|[0x80003700]<br>0xBEDEC8F97F80FBBF|- rs1_b2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001890]:KADD8 t6, t5, t4<br> [0x80001894]:sd t6, 800(sp)<br>     |
|  79|[0x80003710]<br>0x34E002C6F0530C7F|- rs2_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800018d4]:KADD8 t6, t5, t4<br> [0x800018d8]:sd t6, 816(sp)<br>     |
