
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800018b0')]      |
| SIG_REGION                | [('0x80003210', '0x80003720', '162 dwords')]      |
| COV_LABELS                | khmx8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmx8-01.S    |
| Total Number of coverpoints| 476     |
| Total Coverpoints Hit     | 470      |
| Total Signature Updates   | 162      |
| STAT1                     | 79      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015a0]:KHMX8 t6, t5, t4
      [0x800015a4]:sd t6, 592(ra)
 -- Signature Address: 0x80003650 Data: 0xFF0002FF00FF00FE
 -- Redundant Coverpoints hit by the op
      - opcode : khmx8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val < 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b6_val > 0 and rs2_b6_val > 0
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val < 0 and rs2_b5_val > 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val < 0 and rs2_b4_val < 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b7_val == 4
      - rs2_b5_val == 2
      - rs2_b2_val == -2
      - rs2_b0_val == -5
      - rs1_b5_val == -33
      - rs1_b4_val == -5
      - rs1_b2_val == -33
      - rs1_b0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001860]:KHMX8 t6, t5, t4
      [0x80001864]:sd t6, 768(ra)
 -- Signature Address: 0x80003700 Data: 0x05F700FFF8FFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : khmx8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val
      - rs1_b7_val < 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val
      - rs1_b6_val < 0 and rs2_b6_val < 0
      - rs1_b5_val != rs2_b5_val
      - rs1_b5_val < 0 and rs2_b5_val > 0
      - rs1_b4_val != rs2_b4_val
      - rs1_b4_val < 0 and rs2_b4_val < 0
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b7_val == 64
      - rs2_b5_val == 4
      - rs2_b4_val == -1
      - rs2_b3_val == -1
      - rs2_b2_val == -128
      - rs2_b1_val == -2
      - rs1_b6_val == -17
      - rs1_b3_val == 8
      - rs1_b2_val == 2
      - rs1_b1_val == 16
      - rs1_b0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmx8', 'rs1 : x23', 'rs2 : x23', 'rd : x1', 'rs1 == rs2 != rd', 'rs1_b7_val == rs2_b7_val', 'rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b6_val == rs2_b6_val', 'rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b5_val == rs2_b5_val', 'rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val == rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val < 0', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b7_val == 2', 'rs2_b4_val == -65', 'rs2_b3_val == 2', 'rs2_b2_val == -128', 'rs2_b1_val == -86', 'rs2_b0_val == 127', 'rs1_b7_val == 2', 'rs1_b4_val == -65', 'rs1_b3_val == 2', 'rs1_b2_val == -128', 'rs1_b1_val == -86', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x800003dc]:KHMX8 ra, s7, s7
	-[0x800003e0]:sd ra, 0(s3)
Current Store : [0x800003e4] : sd s7, 8(s3) -- Store: [0x80003218]:0x02093FBF0280AA7F




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x8', 'rs1 == rs2 == rd', 'rs1_b6_val < 0 and rs2_b6_val < 0', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs2_b5_val == 1', 'rs2_b4_val == -33', 'rs2_b2_val == -33', 'rs2_b0_val == 32', 'rs1_b5_val == 1', 'rs1_b4_val == -33', 'rs1_b2_val == -33', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000418]:KHMX8 fp, fp, fp
	-[0x8000041c]:sd fp, 16(s3)
Current Store : [0x80000420] : sd fp, 24(s3) -- Store: [0x80003228]:0xFBFBFFFF02020101




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val < 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b3_val != rs2_b3_val', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b6_val == 0', 'rs2_b5_val == 85', 'rs2_b4_val == -3', 'rs2_b3_val == -3', 'rs2_b2_val == 8', 'rs2_b0_val == -5', 'rs1_b7_val == -65', 'rs1_b6_val == -86', 'rs1_b5_val == -9', 'rs1_b4_val == -2', 'rs1_b1_val == 1', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x8000045c]:KHMX8 a1, t2, s2
	-[0x80000460]:sd a1, 32(s3)
Current Store : [0x80000464] : sd t2, 40(s3) -- Store: [0x80003238]:0xBFAAF7FEFA800102




Last Coverpoint : ['rs1 : x24', 'rs2 : x20', 'rd : x24', 'rs1 == rd != rs2', 'rs1_b7_val < 0 and rs2_b7_val < 0', 'rs1_b5_val > 0 and rs2_b5_val < 0', 'rs1_b4_val < 0 and rs2_b4_val > 0', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs2_b7_val == -33', 'rs2_b6_val == -33', 'rs2_b5_val == -1', 'rs2_b4_val == 64', 'rs2_b3_val == 32', 'rs2_b2_val == 2', 'rs2_b1_val == -128', 'rs2_b0_val == 2', 'rs1_b6_val == 0', 'rs1_b4_val == -128', 'rs1_b3_val == 16', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x8000049c]:KHMX8 s8, s8, s4
	-[0x800004a0]:sd s8, 48(s3)
Current Store : [0x800004a4] : sd s8, 56(s3) -- Store: [0x80003248]:0x0200030100FE0000




Last Coverpoint : ['rs1 : x2', 'rs2 : x31', 'rd : x31', 'rs2 == rd != rs1', 'rs1_b7_val > 0 and rs2_b7_val < 0', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b6_val == -128', 'rs2_b4_val == -128', 'rs2_b2_val == -86', 'rs2_b1_val == -33', 'rs1_b7_val == 64', 'rs1_b5_val == 127', 'rs1_b2_val == -86']
Last Code Sequence : 
	-[0x800004e0]:KHMX8 t6, sp, t6
	-[0x800004e4]:sd t6, 64(s3)
Current Store : [0x800004e8] : sd sp, 72(s3) -- Store: [0x80003258]:0x40C07F80FAAAF6F8




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x2', 'rs1_b6_val > 0 and rs2_b6_val < 0', 'rs1_b5_val < 0 and rs2_b5_val < 0', 'rs2_b6_val == -1', 'rs2_b5_val == -86', 'rs2_b4_val == -5', 'rs2_b3_val == 4', 'rs2_b1_val == -3', 'rs2_b0_val == 1', 'rs1_b5_val == -2', 'rs1_b4_val == -86', 'rs1_b3_val == 127', 'rs1_b1_val == 8', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x8000051c]:KHMX8 sp, a0, t0
	-[0x80000520]:sd sp, 80(s3)
Current Store : [0x80000524] : sd a0, 88(s3) -- Store: [0x80003268]:0xF809FEAA7FFC08F7




Last Coverpoint : ['rs1 : x22', 'rs2 : x14', 'rd : x4', 'rs2_b7_val == 16', 'rs2_b6_val == 127', 'rs2_b5_val == 8', 'rs2_b3_val == -128', 'rs2_b0_val == -17', 'rs1_b6_val == 64', 'rs1_b3_val == -65', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000558]:KHMX8 tp, s6, a4
	-[0x8000055c]:sd tp, 96(s3)
Current Store : [0x80000560] : sd s6, 104(s3) -- Store: [0x80003278]:0x064007FEBFFC3F08




Last Coverpoint : ['rs1 : x18', 'rs2 : x0', 'rd : x25', 'rs2_b7_val == 0', 'rs2_b5_val == 0', 'rs2_b4_val == 0', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs2_b0_val == 0', 'rs1_b6_val == 85', 'rs1_b5_val == -128', 'rs1_b4_val == 64', 'rs1_b3_val == -86', 'rs1_b1_val == 32', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x8000059c]:KHMX8 s9, s2, zero
	-[0x800005a0]:sd s9, 112(s3)
Current Store : [0x800005a4] : sd s2, 120(s3) -- Store: [0x80003288]:0xF6558040AA3F20DF




Last Coverpoint : ['rs1 : x11', 'rs2 : x25', 'rd : x6', 'rs1_b6_val < 0 and rs2_b6_val > 0', 'rs1_b4_val > 0 and rs2_b4_val > 0', 'rs2_b7_val == -1', 'rs2_b6_val == 1', 'rs2_b5_val == -2', 'rs2_b3_val == 127', 'rs1_b7_val == 8', 'rs1_b5_val == -5', 'rs1_b4_val == 4', 'rs1_b2_val == 85', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x800005d8]:KHMX8 t1, a1, s9
	-[0x800005dc]:sd t1, 128(s3)
Current Store : [0x800005e0] : sd a1, 136(s3) -- Store: [0x80003298]:0x08FAFB040655047F




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x20', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b7_val == 8', 'rs2_b5_val == -128', 'rs2_b1_val == 16', 'rs1_b7_val == 127', 'rs1_b6_val == 4', 'rs1_b5_val == 32', 'rs1_b2_val == -2', 'rs1_b1_val == 85', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000624]:KHMX8 s4, t1, sp
	-[0x80000628]:sd s4, 144(s3)
Current Store : [0x8000062c] : sd t1, 152(s3) -- Store: [0x800032a8]:0x7F0420AA05FE55EF




Last Coverpoint : ['rs1 : x25', 'rs2 : x17', 'rd : x22', 'rs1_b4_val > 0 and rs2_b4_val < 0', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs2_b5_val == -3', 'rs2_b0_val == 64', 'rs1_b4_val == 32', 'rs1_b3_val == -33', 'rs1_b1_val == -2', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000660]:KHMX8 s6, s9, a7
	-[0x80000664]:sd s6, 160(s3)
Current Store : [0x80000668] : sd s9, 168(s3) -- Store: [0x800032b8]:0xF6F8FE20DF03FE04




Last Coverpoint : ['rs1 : x29', 'rs2 : x3', 'rd : x17', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs2_b7_val == -86', 'rs2_b4_val == 4', 'rs2_b3_val == -5', 'rs2_b2_val == 32', 'rs2_b0_val == 8', 'rs1_b7_val == -5', 'rs1_b6_val == -9', 'rs1_b5_val == -65', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x8000069c]:KHMX8 a7, t4, gp
	-[0x800006a0]:sd a7, 176(s3)
Current Store : [0x800006a4] : sd t4, 184(s3) -- Store: [0x800032c8]:0xFBF7BF0306F60005




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x12', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs2_b6_val == 8', 'rs2_b2_val == -2', 'rs2_b0_val == -3', 'rs1_b7_val == 85', 'rs1_b6_val == -2', 'rs1_b5_val == 0', 'rs1_b3_val == 85', 'rs1_b2_val == 2', 'rs1_b1_val == -5', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x800006e0]:KHMX8 a2, t3, a5
	-[0x800006e4]:sd a2, 192(s3)
Current Store : [0x800006e8] : sd t3, 200(s3) -- Store: [0x800032d8]:0x55FE00AA5502FBFD




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x5', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs2_b7_val == 85', 'rs2_b6_val == -3', 'rs2_b5_val == -65', 'rs1_b6_val == -33', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x80000724]:KHMX8 t0, t6, a6
	-[0x80000728]:sd t0, 208(s3)
Current Store : [0x8000072c] : sd t6, 216(s3) -- Store: [0x800032e8]:0x55DFFBC0BF06FFF8




Last Coverpoint : ['rs1 : x9', 'rs2 : x27', 'rd : x13', 'rs2_b7_val == 127', 'rs2_b6_val == 64', 'rs2_b5_val == -33', 'rs2_b1_val == -2', 'rs1_b5_val == -1']
Last Code Sequence : 
	-[0x80000770]:KHMX8 a3, s1, s11
	-[0x80000774]:sd a3, 224(s3)
Current Store : [0x80000778] : sd s1, 232(s3) -- Store: [0x800032f8]:0x07F8FF030509AADF




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x27', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs2_b7_val == -65', 'rs2_b4_val == -2', 'rs2_b1_val == 8', 'rs2_b0_val == -9', 'rs1_b7_val == -33', 'rs1_b4_val == 1', 'rs1_b2_val == -9', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x800007c4]:KHMX8 s11, a3, t1
	-[0x800007c8]:sd s11, 0(sp)
Current Store : [0x800007cc] : sd a3, 8(sp) -- Store: [0x80003308]:0xDF04F60155F7F7C0




Last Coverpoint : ['rs1 : x16', 'rs2 : x9', 'rd : x18', 'rs2_b7_val == -17', 'rs2_b3_val == -33', 'rs2_b1_val == -65', 'rs1_b5_val == 85', 'rs1_b2_val == -3', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000808]:KHMX8 s2, a6, s1
	-[0x8000080c]:sd s2, 16(sp)
Current Store : [0x80000810] : sd a6, 24(sp) -- Store: [0x80003318]:0xFBF855F97FFD05BF




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rd : x30', 'rs2_b7_val == -9', 'rs2_b3_val == 85', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x80000854]:KHMX8 t5, s4, tp
	-[0x80000858]:sd t5, 32(sp)
Current Store : [0x8000085c] : sd s4, 40(sp) -- Store: [0x80003328]:0xFA0905C003F9BFBF




Last Coverpoint : ['rs1 : x17', 'rs2 : x19', 'rd : x9', 'rs2_b7_val == -5', 'rs2_b4_val == 8', 'rs2_b3_val == -2', 'rs2_b0_val == 4', 'rs1_b4_val == 85', 'rs1_b3_val == -3', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000894]:KHMX8 s1, a7, s3
	-[0x80000898]:sd s1, 48(sp)
Current Store : [0x8000089c] : sd a7, 56(sp) -- Store: [0x80003338]:0x03093F55FD082000




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x10', 'rs2_b7_val == -3', 'rs2_b6_val == -5', 'rs2_b4_val == 32']
Last Code Sequence : 
	-[0x800008d0]:KHMX8 a0, t5, s10
	-[0x800008d4]:sd a0, 64(sp)
Current Store : [0x800008d8] : sd t5, 72(sp) -- Store: [0x80003348]:0xBFF8034005030305




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x19', 'rs2_b7_val == -2', 'rs2_b3_val == 64', 'rs2_b0_val == -128', 'rs1_b5_val == -33']
Last Code Sequence : 
	-[0x8000090c]:KHMX8 s3, t0, ra
	-[0x80000910]:sd s3, 80(sp)
Current Store : [0x80000914] : sd t0, 88(sp) -- Store: [0x80003358]:0xFAF8DFFEF655F920




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x3', 'rs2_b7_val == -128', 'rs2_b3_val == -86', 'rs1_b5_val == 4', 'rs1_b3_val == 1', 'rs1_b2_val == -1']
Last Code Sequence : 
	-[0x80000948]:KHMX8 gp, s11, t3
	-[0x8000094c]:sd gp, 96(sp)
Current Store : [0x80000950] : sd s11, 104(sp) -- Store: [0x80003368]:0x0604040701FFF902




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x0', 'rs2_b7_val == 64', 'rs2_b5_val == 4', 'rs2_b4_val == -1', 'rs2_b3_val == -1', 'rs1_b6_val == -17', 'rs1_b3_val == 8', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x80000988]:KHMX8 zero, a5, s5
	-[0x8000098c]:sd zero, 112(sp)
Current Store : [0x80000990] : sd a5, 120(sp) -- Store: [0x80003378]:0xF6EFFCF608021000




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rd : x26', 'rs2_b7_val == 32', 'rs2_b1_val == -5', 'rs2_b0_val == -33', 'rs1_b7_val == -17', 'rs1_b3_val == -17', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x800009d4]:KHMX8 s10, a2, a3
	-[0x800009d8]:sd s10, 128(sp)
Current Store : [0x800009dc] : sd a2, 136(sp) -- Store: [0x80003388]:0xEFF700FAEF04C005




Last Coverpoint : ['rs1 : x14', 'rs2 : x30', 'rd : x7', 'rs2_b7_val == 4', 'rs2_b6_val == 16', 'rs2_b4_val == 16', 'rs2_b2_val == 64', 'rs1_b7_val == 4', 'rs1_b3_val == -9']
Last Code Sequence : 
	-[0x80000a18]:KHMX8 t2, a4, t5
	-[0x80000a1c]:sd t2, 144(sp)
Current Store : [0x80000a20] : sd a4, 152(sp) -- Store: [0x80003398]:0x04FCF855F704C020




Last Coverpoint : ['rs1 : x3', 'rs2 : x10', 'rd : x21', 'rs2_b7_val == 1', 'rs2_b6_val == -2', 'rs2_b4_val == -17', 'rs2_b2_val == -3', 'rs1_b6_val == 1']
Last Code Sequence : 
	-[0x80000a5c]:KHMX8 s5, gp, a0
	-[0x80000a60]:sd s5, 160(sp)
Current Store : [0x80000a64] : sd gp, 168(sp) -- Store: [0x800033a8]:0xFA01F95505F601FC




Last Coverpoint : ['rs1 : x21', 'rs2 : x22', 'rd : x29', 'rs2_b5_val == -5', 'rs2_b1_val == 32', 'rs1_b5_val == 16', 'rs1_b3_val == -1', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000a98]:KHMX8 t4, s5, s6
	-[0x80000a9c]:sd t4, 176(sp)
Current Store : [0x80000aa0] : sd s5, 184(sp) -- Store: [0x800033b8]:0x05F910F6FFFC8002




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x23', 'rs2_b3_val == 1', 'rs2_b1_val == 64', 'rs1_b5_val == -3', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000adc]:KHMX8 s7, s10, a1
	-[0x80000ae0]:sd s7, 192(sp)
Current Store : [0x80000ae4] : sd s10, 200(sp) -- Store: [0x800033c8]:0xEFF9FD05F9FCF740




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x16', 'rs2_b6_val == -86', 'rs2_b5_val == 64', 'rs2_b1_val == -9', 'rs1_b5_val == 64', 'rs1_b3_val == 0']
Last Code Sequence : 
	-[0x80000b20]:KHMX8 a6, ra, t2
	-[0x80000b24]:sd a6, 208(sp)
Current Store : [0x80000b28] : sd ra, 216(sp) -- Store: [0x800033d8]:0xF955403F0008FA02




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x14', 'rs2_b6_val == -17', 'rs1_b7_val == 16', 'rs1_b6_val == 127', 'rs1_b5_val == 8', 'rs1_b4_val == 16']
Last Code Sequence : 
	-[0x80000b6c]:KHMX8 a4, s3, a2
	-[0x80000b70]:sd a4, 224(sp)
Current Store : [0x80000b74] : sd s3, 232(sp) -- Store: [0x800033e8]:0x107F0810093F107F




Last Coverpoint : ['rs1 : x0', 'rs2 : x24', 'rd : x15', 'rs2_b6_val == -9', 'rs1_b7_val == 0', 'rs1_b4_val == 0', 'rs1_b2_val == 0']
Last Code Sequence : 
	-[0x80000bb0]:KHMX8 a5, zero, s8
	-[0x80000bb4]:sd a5, 240(sp)
Current Store : [0x80000bb8] : sd zero, 248(sp) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x28', 'rs2_b5_val == 127', 'rs2_b2_val == 127', 'rs1_b6_val == 8', 'rs1_b4_val == 127', 'rs1_b3_val == -128', 'rs1_b2_val == 64', 'rs1_b1_val == 127', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000bf4]:KHMX8 t3, tp, t4
	-[0x80000bf8]:sd t3, 0(ra)
Current Store : [0x80000bfc] : sd tp, 8(ra) -- Store: [0x80003408]:0x0208017F80407F55




Last Coverpoint : ['rs1_b3_val == 4', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x80000c40]:KHMX8 t6, t5, t4
	-[0x80000c44]:sd t6, 16(ra)
Current Store : [0x80000c48] : sd t5, 24(ra) -- Store: [0x80003418]:0xDF7FFBBF04024002




Last Coverpoint : ['rs2_b4_val == -9', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000c80]:KHMX8 t6, t5, t4
	-[0x80000c84]:sd t6, 32(ra)
Current Store : [0x80000c88] : sd t5, 40(ra) -- Store: [0x80003428]:0x7FC0FEDF808003AA




Last Coverpoint : ['rs1_b4_val == -17']
Last Code Sequence : 
	-[0x80000cc4]:KHMX8 t6, t5, t4
	-[0x80000cc8]:sd t6, 48(ra)
Current Store : [0x80000ccc] : sd t5, 56(ra) -- Store: [0x80003438]:0x5508BFEF80FF2009




Last Coverpoint : ['rs1_b6_val == -3', 'rs1_b4_val == -9']
Last Code Sequence : 
	-[0x80000d00]:KHMX8 t6, t5, t4
	-[0x80000d04]:sd t6, 64(ra)
Current Store : [0x80000d08] : sd t5, 72(ra) -- Store: [0x80003448]:0x02FD00F7000701BF




Last Coverpoint : ['rs1_b4_val == -3']
Last Code Sequence : 
	-[0x80000d4c]:KHMX8 t6, t5, t4
	-[0x80000d50]:sd t6, 80(ra)
Current Store : [0x80000d54] : sd t5, 88(ra) -- Store: [0x80003458]:0x7F00F9FD3F00FF04




Last Coverpoint : ['rs2_b4_val == 127', 'rs2_b0_val == 16', 'rs1_b4_val == 8']
Last Code Sequence : 
	-[0x80000d88]:KHMX8 t6, t5, t4
	-[0x80000d8c]:sd t6, 96(ra)
Current Store : [0x80000d90] : sd t5, 104(ra) -- Store: [0x80003468]:0x107F0608C0807FF8




Last Coverpoint : ['rs2_b2_val == -1', 'rs1_b6_val == 2', 'rs1_b4_val == 2', 'rs1_b2_val == -17']
Last Code Sequence : 
	-[0x80000dd4]:KHMX8 t6, t5, t4
	-[0x80000dd8]:sd t6, 112(ra)
Current Store : [0x80000ddc] : sd t5, 120(ra) -- Store: [0x80003478]:0x0202FC02C0EFF607




Last Coverpoint : ['rs2_b6_val == -65', 'rs2_b3_val == -65', 'rs1_b1_val == -33', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000e18]:KHMX8 t6, t5, t4
	-[0x80000e1c]:sd t6, 128(ra)
Current Store : [0x80000e20] : sd t5, 136(ra) -- Store: [0x80003488]:0xFC3FF600AA09DFFF




Last Coverpoint : ['rs1_b7_val == 1', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80000e54]:KHMX8 t6, t5, t4
	-[0x80000e58]:sd t6, 144(ra)
Current Store : [0x80000e5c] : sd t5, 152(ra) -- Store: [0x80003498]:0x0107F604FBAAC055




Last Coverpoint : ['rs2_b3_val == -9', 'rs2_b1_val == 127', 'rs1_b7_val == -3', 'rs1_b3_val == -2', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x80000ea0]:KHMX8 t6, t5, t4
	-[0x80000ea4]:sd t6, 160(ra)
Current Store : [0x80000ea8] : sd t5, 168(ra) -- Store: [0x800034a8]:0xFD09FC7FFE10F609




Last Coverpoint : ['rs2_b1_val == 1', 'rs1_b7_val == 32', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000ee4]:KHMX8 t6, t5, t4
	-[0x80000ee8]:sd t6, 176(ra)
Current Store : [0x80000eec] : sd t5, 184(ra) -- Store: [0x800034b8]:0x2008F90740F810FD




Last Coverpoint : ['rs2_b5_val == 2', 'rs2_b3_val == -17', 'rs1_b4_val == -1', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000f20]:KHMX8 t6, t5, t4
	-[0x80000f24]:sd t6, 192(ra)
Current Store : [0x80000f28] : sd t5, 200(ra) -- Store: [0x800034c8]:0x04FABFFFFEC0FFFE




Last Coverpoint : ['rs2_b3_val == 16']
Last Code Sequence : 
	-[0x80000f5c]:KHMX8 t6, t5, t4
	-[0x80000f60]:sd t6, 208(ra)
Current Store : [0x80000f64] : sd t5, 216(ra) -- Store: [0x800034d8]:0xFBF740DFFDFAFBAA




Last Coverpoint : ['rs2_b1_val == -1', 'rs1_b4_val == -5']
Last Code Sequence : 
	-[0x80000fa0]:KHMX8 t6, t5, t4
	-[0x80000fa4]:sd t6, 224(ra)
Current Store : [0x80000fa8] : sd t5, 232(ra) -- Store: [0x800034e8]:0x10DF7FFB0880FE7F




Last Coverpoint : ['rs2_b5_val == 16', 'rs2_b2_val == 85']
Last Code Sequence : 
	-[0x80000fe4]:KHMX8 t6, t5, t4
	-[0x80000fe8]:sd t6, 240(ra)
Current Store : [0x80000fec] : sd t5, 248(ra) -- Store: [0x800034f8]:0x04030504AA1009BF




Last Coverpoint : ['rs2_b4_val == 2', 'rs2_b2_val == -65']
Last Code Sequence : 
	-[0x80001028]:KHMX8 t6, t5, t4
	-[0x8000102c]:sd t6, 256(ra)
Current Store : [0x80001030] : sd t5, 264(ra) -- Store: [0x80003508]:0xFCF6F902020540FC




Last Coverpoint : ['rs2_b2_val == -17']
Last Code Sequence : 
	-[0x80001064]:KHMX8 t6, t5, t4
	-[0x80001068]:sd t6, 272(ra)
Current Store : [0x8000106c] : sd t5, 280(ra) -- Store: [0x80003518]:0x020240FD801005F7




Last Coverpoint : ['rs2_b6_val == 4', 'rs2_b2_val == -9', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x800010a8]:KHMX8 t6, t5, t4
	-[0x800010ac]:sd t6, 288(ra)
Current Store : [0x800010b0] : sd t5, 296(ra) -- Store: [0x80003528]:0xDF04FB2006F9F6FB




Last Coverpoint : ['rs2_b2_val == -5', 'rs2_b1_val == -17']
Last Code Sequence : 
	-[0x800010f4]:KHMX8 t6, t5, t4
	-[0x800010f8]:sd t6, 304(ra)
Current Store : [0x800010fc] : sd t5, 312(ra) -- Store: [0x80003538]:0xFCFCFFC002F6203F




Last Coverpoint : ['rs2_b2_val == 16']
Last Code Sequence : 
	-[0x80001138]:KHMX8 t6, t5, t4
	-[0x8000113c]:sd t6, 320(ra)
Current Store : [0x80001140] : sd t5, 328(ra) -- Store: [0x80003548]:0x3F05FF8055AA06F6




Last Coverpoint : ['rs2_b2_val == 4', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80001184]:KHMX8 t6, t5, t4
	-[0x80001188]:sd t6, 336(ra)
Current Store : [0x8000118c] : sd t5, 344(ra) -- Store: [0x80003558]:0x0408FA0806023F01




Last Coverpoint : ['rs2_b2_val == 1']
Last Code Sequence : 
	-[0x800011c8]:KHMX8 t6, t5, t4
	-[0x800011cc]:sd t6, 352(ra)
Current Store : [0x800011d0] : sd t5, 360(ra) -- Store: [0x80003568]:0x06EF05090500FCF9




Last Coverpoint : ['rs2_b1_val == 85', 'rs1_b7_val == -1']
Last Code Sequence : 
	-[0x8000120c]:KHMX8 t6, t5, t4
	-[0x80001210]:sd t6, 368(ra)
Current Store : [0x80001214] : sd t5, 376(ra) -- Store: [0x80003578]:0xFF06FDEF05FCFFF7




Last Coverpoint : ['rs2_b6_val == 32', 'rs2_b0_val == -65', 'rs1_b3_val == 32', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80001248]:KHMX8 t6, t5, t4
	-[0x8000124c]:sd t6, 384(ra)
Current Store : [0x80001250] : sd t5, 392(ra) -- Store: [0x80003588]:0x0401800920FB20C0




Last Coverpoint : ['rs1_b7_val == -128', 'rs1_b2_val == 127']
Last Code Sequence : 
	-[0x8000128c]:KHMX8 t6, t5, t4
	-[0x80001290]:sd t6, 400(ra)
Current Store : [0x80001294] : sd t5, 408(ra) -- Store: [0x80003598]:0x8001F7FA087FF6EF




Last Coverpoint : ['rs1_b6_val == -5', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x800012d0]:KHMX8 t6, t5, t4
	-[0x800012d4]:sd t6, 416(ra)
Current Store : [0x800012d8] : sd t5, 424(ra) -- Store: [0x800035a8]:0xFDFBF9FB00BF80FA




Last Coverpoint : ['rs2_b6_val == 85']
Last Code Sequence : 
	-[0x8000131c]:KHMX8 t6, t5, t4
	-[0x80001320]:sd t6, 432(ra)
Current Store : [0x80001324] : sd t5, 440(ra) -- Store: [0x800035b8]:0x800900DFAA0020FC




Last Coverpoint : ['rs1_b2_val == 1']
Last Code Sequence : 
	-[0x80001354]:KHMX8 t6, t5, t4
	-[0x80001358]:sd t6, 448(ra)
Current Store : [0x8000135c] : sd t5, 456(ra) -- Store: [0x800035c8]:0xFBF705FDDF01BFFB




Last Coverpoint : ['rs1_b0_val == -128', 'rs2_b0_val == -2', 'rs1_b7_val == -9', 'rs1_b6_val == -128']
Last Code Sequence : 
	-[0x80001398]:KHMX8 t6, t5, t4
	-[0x8000139c]:sd t6, 464(ra)
Current Store : [0x800013a0] : sd t5, 472(ra) -- Store: [0x800035d8]:0xF780F90606F8FE80




Last Coverpoint : ['rs1_b5_val == -17', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800013dc]:KHMX8 t6, t5, t4
	-[0x800013e0]:sd t6, 480(ra)
Current Store : [0x800013e4] : sd t5, 488(ra) -- Store: [0x800035e8]:0xFF03EF08553FEF06




Last Coverpoint : ['rs2_b0_val == -1']
Last Code Sequence : 
	-[0x80001410]:KHMX8 t6, t5, t4
	-[0x80001414]:sd t6, 496(ra)
Current Store : [0x80001418] : sd t5, 504(ra) -- Store: [0x800035f8]:0x00000705AAC0DF80




Last Coverpoint : ['rs2_b1_val == 4', 'rs1_b7_val == -86', 'rs1_b6_val == 16']
Last Code Sequence : 
	-[0x8000144c]:KHMX8 t6, t5, t4
	-[0x80001450]:sd t6, 512(ra)
Current Store : [0x80001454] : sd t5, 520(ra) -- Store: [0x80003608]:0xAA1003FB55400308




Last Coverpoint : ['rs2_b6_val == 2']
Last Code Sequence : 
	-[0x80001490]:KHMX8 t6, t5, t4
	-[0x80001494]:sd t6, 528(ra)
Current Store : [0x80001498] : sd t5, 536(ra) -- Store: [0x80003618]:0xFDAA010540FCEFFA




Last Coverpoint : ['rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800014d4]:KHMX8 t6, t5, t4
	-[0x800014d8]:sd t6, 544(ra)
Current Store : [0x800014dc] : sd t5, 552(ra) -- Store: [0x80003628]:0xFA1000FEFA090220




Last Coverpoint : ['rs1_b7_val == -2']
Last Code Sequence : 
	-[0x80001520]:KHMX8 t6, t5, t4
	-[0x80001524]:sd t6, 560(ra)
Current Store : [0x80001528] : sd t5, 568(ra) -- Store: [0x80003638]:0xFEF9007F04F955BF




Last Coverpoint : ['rs2_b5_val == 32', 'rs2_b1_val == 2', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80001564]:KHMX8 t6, t5, t4
	-[0x80001568]:sd t6, 576(ra)
Current Store : [0x8000156c] : sd t5, 584(ra) -- Store: [0x80003648]:0x10EF0700FB00C010




Last Coverpoint : ['opcode : khmx8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val < 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val < 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b7_val == 4', 'rs2_b5_val == 2', 'rs2_b2_val == -2', 'rs2_b0_val == -5', 'rs1_b5_val == -33', 'rs1_b4_val == -5', 'rs1_b2_val == -33', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x800015a0]:KHMX8 t6, t5, t4
	-[0x800015a4]:sd t6, 592(ra)
Current Store : [0x800015a8] : sd t5, 600(ra) -- Store: [0x80003658]:0xF606DFFBF8DFF920




Last Coverpoint : ['rs1_b6_val == -65']
Last Code Sequence : 
	-[0x800015dc]:KHMX8 t6, t5, t4
	-[0x800015e0]:sd t6, 608(ra)
Current Store : [0x800015e4] : sd t5, 616(ra) -- Store: [0x80003668]:0x01BF09EF03FBF6FE




Last Coverpoint : ['rs2_b4_val == -86']
Last Code Sequence : 
	-[0x80001620]:KHMX8 t6, t5, t4
	-[0x80001624]:sd t6, 624(ra)
Current Store : [0x80001628] : sd t5, 632(ra) -- Store: [0x80003678]:0x01F77FF6033FFEFF




Last Coverpoint : ['rs2_b5_val == -17', 'rs2_b4_val == 85']
Last Code Sequence : 
	-[0x8000165c]:KHMX8 t6, t5, t4
	-[0x80001660]:sd t6, 640(ra)
Current Store : [0x80001664] : sd t5, 648(ra) -- Store: [0x80003688]:0xFDFC0302DFF9F603




Last Coverpoint : ['rs1_b6_val == 32']
Last Code Sequence : 
	-[0x800016a0]:KHMX8 t6, t5, t4
	-[0x800016a4]:sd t6, 656(ra)
Current Store : [0x800016a8] : sd t5, 664(ra) -- Store: [0x80003698]:0xEF2009F780F8FB03




Last Coverpoint : ['rs1_b6_val == -1']
Last Code Sequence : 
	-[0x800016e4]:KHMX8 t6, t5, t4
	-[0x800016e8]:sd t6, 672(ra)
Current Store : [0x800016ec] : sd t5, 680(ra) -- Store: [0x800036a8]:0x04FF3FFCEFBF09FC




Last Coverpoint : ['rs2_b3_val == 8', 'rs1_b5_val == -86']
Last Code Sequence : 
	-[0x80001720]:KHMX8 t6, t5, t4
	-[0x80001724]:sd t6, 688(ra)
Current Store : [0x80001728] : sd t5, 696(ra) -- Store: [0x800036b8]:0xFF05AAAA0901C0F6




Last Coverpoint : ['rs2_b4_val == 1']
Last Code Sequence : 
	-[0x8000175c]:KHMX8 t6, t5, t4
	-[0x80001760]:sd t6, 704(ra)
Current Store : [0x80001764] : sd t5, 712(ra) -- Store: [0x800036c8]:0xEFBF01DF0305FFFE




Last Coverpoint : ['rs2_b0_val == -86', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x80001798]:KHMX8 t6, t5, t4
	-[0x8000179c]:sd t6, 720(ra)
Current Store : [0x800017a0] : sd t5, 728(ra) -- Store: [0x800036d8]:0xFAFD40800204FDF9




Last Coverpoint : ['rs2_b0_val == 85']
Last Code Sequence : 
	-[0x800017dc]:KHMX8 t6, t5, t4
	-[0x800017e0]:sd t6, 736(ra)
Current Store : [0x800017e4] : sd t5, 744(ra) -- Store: [0x800036e8]:0xFC55080706FE40F6




Last Coverpoint : ['rs2_b5_val == -9']
Last Code Sequence : 
	-[0x80001820]:KHMX8 t6, t5, t4
	-[0x80001824]:sd t6, 752(ra)
Current Store : [0x80001828] : sd t5, 760(ra) -- Store: [0x800036f8]:0x800507EF80000106




Last Coverpoint : ['opcode : khmx8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val', 'rs1_b7_val < 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val', 'rs1_b6_val < 0 and rs2_b6_val < 0', 'rs1_b5_val != rs2_b5_val', 'rs1_b5_val < 0 and rs2_b5_val > 0', 'rs1_b4_val != rs2_b4_val', 'rs1_b4_val < 0 and rs2_b4_val < 0', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b7_val == 64', 'rs2_b5_val == 4', 'rs2_b4_val == -1', 'rs2_b3_val == -1', 'rs2_b2_val == -128', 'rs2_b1_val == -2', 'rs1_b6_val == -17', 'rs1_b3_val == 8', 'rs1_b2_val == 2', 'rs1_b1_val == 16', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80001860]:KHMX8 t6, t5, t4
	-[0x80001864]:sd t6, 768(ra)
Current Store : [0x80001868] : sd t5, 776(ra) -- Store: [0x80003708]:0xF6EFFCF608021000




Last Coverpoint : ['rs1_b5_val == 2', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x800018a4]:KHMX8 t6, t5, t4
	-[0x800018a8]:sd t6, 784(ra)
Current Store : [0x800018ac] : sd t5, 792(ra) -- Store: [0x80003718]:0x07FC02FB7F20DFFA





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                coverpoints                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000E0E0FEFEAAAA|- opcode : khmx8<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_b7_val == rs2_b7_val<br> - rs1_b7_val > 0 and rs2_b7_val > 0<br> - rs1_b6_val == rs2_b6_val<br> - rs1_b6_val > 0 and rs2_b6_val > 0<br> - rs1_b5_val == rs2_b5_val<br> - rs1_b5_val > 0 and rs2_b5_val > 0<br> - rs1_b4_val == rs2_b4_val<br> - rs1_b4_val < 0 and rs2_b4_val < 0<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b7_val == 2<br> - rs2_b4_val == -65<br> - rs2_b3_val == 2<br> - rs2_b2_val == -128<br> - rs2_b1_val == -86<br> - rs2_b0_val == 127<br> - rs1_b7_val == 2<br> - rs1_b4_val == -65<br> - rs1_b3_val == 2<br> - rs1_b2_val == -128<br> - rs1_b1_val == -86<br> - rs1_b0_val == 127<br> |[0x800003dc]:KHMX8 ra, s7, s7<br> [0x800003e0]:sd ra, 0(s3)<br>       |
|   2|[0x80003220]<br>0xFBFBFFFF02020101|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_b6_val < 0 and rs2_b6_val < 0<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b5_val == 1<br> - rs2_b4_val == -33<br> - rs2_b2_val == -33<br> - rs2_b0_val == 32<br> - rs1_b5_val == 1<br> - rs1_b4_val == -33<br> - rs1_b2_val == -33<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000418]:KHMX8 fp, fp, fp<br> [0x8000041c]:sd fp, 16(s3)<br>      |
|   3|[0x80003230]<br>0x00FD00FEFF03FF00|- rs1 : x7<br> - rs2 : x18<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b7_val != rs2_b7_val<br> - rs1_b7_val < 0 and rs2_b7_val > 0<br> - rs1_b6_val != rs2_b6_val<br> - rs1_b5_val != rs2_b5_val<br> - rs1_b5_val < 0 and rs2_b5_val > 0<br> - rs1_b4_val != rs2_b4_val<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b6_val == 0<br> - rs2_b5_val == 85<br> - rs2_b4_val == -3<br> - rs2_b3_val == -3<br> - rs2_b2_val == 8<br> - rs2_b0_val == -5<br> - rs1_b7_val == -65<br> - rs1_b6_val == -86<br> - rs1_b5_val == -9<br> - rs1_b4_val == -2<br> - rs1_b1_val == 1<br> - rs1_b0_val == 2<br>                                                                                                                                                                       |[0x8000045c]:KHMX8 a1, t2, s2<br> [0x80000460]:sd a1, 32(s3)<br>      |
|   4|[0x80003240]<br>0x0200030100FE0000|- rs1 : x24<br> - rs2 : x20<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs1_b7_val < 0 and rs2_b7_val < 0<br> - rs1_b5_val > 0 and rs2_b5_val < 0<br> - rs1_b4_val < 0 and rs2_b4_val > 0<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b7_val == -33<br> - rs2_b6_val == -33<br> - rs2_b5_val == -1<br> - rs2_b4_val == 64<br> - rs2_b3_val == 32<br> - rs2_b2_val == 2<br> - rs2_b1_val == -128<br> - rs2_b0_val == 2<br> - rs1_b6_val == 0<br> - rs1_b4_val == -128<br> - rs1_b3_val == 16<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000049c]:KHMX8 s8, s8, s4<br> [0x800004a0]:sd s8, 48(s3)<br>      |
|   5|[0x80003250]<br>0xC00481F7042BFF02|- rs1 : x2<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_b7_val > 0 and rs2_b7_val < 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b6_val == -128<br> - rs2_b4_val == -128<br> - rs2_b2_val == -86<br> - rs2_b1_val == -33<br> - rs1_b7_val == 64<br> - rs1_b5_val == 127<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004e0]:KHMX8 t6, sp, t6<br> [0x800004e4]:sd t6, 64(s3)<br>      |
|   6|[0x80003260]<br>0x0000003901FF0000|- rs1 : x10<br> - rs2 : x5<br> - rd : x2<br> - rs1_b6_val > 0 and rs2_b6_val < 0<br> - rs1_b5_val < 0 and rs2_b5_val < 0<br> - rs2_b6_val == -1<br> - rs2_b5_val == -86<br> - rs2_b4_val == -5<br> - rs2_b3_val == 4<br> - rs2_b1_val == -3<br> - rs2_b0_val == 1<br> - rs1_b5_val == -2<br> - rs1_b4_val == -86<br> - rs1_b3_val == 127<br> - rs1_b1_val == 8<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000051c]:KHMX8 sp, a0, t0<br> [0x80000520]:sd sp, 80(s3)<br>      |
|   7|[0x80003270]<br>0x0508FFFF0504F700|- rs1 : x22<br> - rs2 : x14<br> - rd : x4<br> - rs2_b7_val == 16<br> - rs2_b6_val == 127<br> - rs2_b5_val == 8<br> - rs2_b3_val == -128<br> - rs2_b0_val == -17<br> - rs1_b6_val == 64<br> - rs1_b3_val == -65<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000558]:KHMX8 tp, s6, a4<br> [0x8000055c]:sd tp, 96(s3)<br>      |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x0<br> - rd : x25<br> - rs2_b7_val == 0<br> - rs2_b5_val == 0<br> - rs2_b4_val == 0<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b6_val == 85<br> - rs1_b5_val == -128<br> - rs1_b4_val == 64<br> - rs1_b3_val == -86<br> - rs1_b1_val == 32<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000059c]:KHMX8 s9, s2, zero<br> [0x800005a0]:sd s9, 112(s3)<br>   |
|   9|[0x80003290]<br>0x0000FDFF00540002|- rs1 : x11<br> - rs2 : x25<br> - rd : x6<br> - rs1_b6_val < 0 and rs2_b6_val > 0<br> - rs1_b4_val > 0 and rs2_b4_val > 0<br> - rs2_b7_val == -1<br> - rs2_b6_val == 1<br> - rs2_b5_val == -2<br> - rs2_b3_val == 127<br> - rs1_b7_val == 8<br> - rs1_b5_val == -5<br> - rs1_b4_val == 4<br> - rs1_b2_val == 85<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005d8]:KHMX8 t1, a1, s9<br> [0x800005dc]:sd t1, 128(s3)<br>     |
|  10|[0x800032a0]<br>0xDF00FF5600FFFCFD|- rs1 : x6<br> - rs2 : x2<br> - rd : x20<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b7_val == 8<br> - rs2_b5_val == -128<br> - rs2_b1_val == 16<br> - rs1_b7_val == 127<br> - rs1_b6_val == 4<br> - rs1_b5_val == 32<br> - rs1_b2_val == -2<br> - rs1_b1_val == 85<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000624]:KHMX8 s4, t1, sp<br> [0x80000628]:sd s4, 144(s3)<br>     |
|  11|[0x800032b0]<br>0x000000FFFDFFFFFF|- rs1 : x25<br> - rs2 : x17<br> - rd : x22<br> - rs1_b4_val > 0 and rs2_b4_val < 0<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b5_val == -3<br> - rs2_b0_val == 64<br> - rs1_b4_val == 32<br> - rs1_b3_val == -33<br> - rs1_b1_val == -2<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000660]:KHMX8 s6, s9, a7<br> [0x80000664]:sd s6, 160(s3)<br>     |
|  12|[0x800032c0]<br>0x0006FDFF01000000|- rs1 : x29<br> - rs2 : x3<br> - rd : x17<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs2_b7_val == -86<br> - rs2_b4_val == 4<br> - rs2_b3_val == -5<br> - rs2_b2_val == 32<br> - rs2_b0_val == 8<br> - rs1_b7_val == -5<br> - rs1_b6_val == -9<br> - rs1_b5_val == -65<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000069c]:KHMX8 a7, t4, gp<br> [0x800006a0]:sd a7, 176(s3)<br>     |
|  13|[0x800032d0]<br>0x05FF0004FEFF0000|- rs1 : x28<br> - rs2 : x15<br> - rd : x12<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs2_b6_val == 8<br> - rs2_b2_val == -2<br> - rs2_b0_val == -3<br> - rs1_b7_val == 85<br> - rs1_b6_val == -2<br> - rs1_b5_val == 0<br> - rs1_b3_val == 85<br> - rs1_b2_val == 2<br> - rs1_b1_val == -5<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800006e0]:KHMX8 a2, t3, a5<br> [0x800006e4]:sd a2, 192(s3)<br>     |
|  14|[0x800032e0]<br>0xFEEA0020FB000000|- rs1 : x31<br> - rs2 : x16<br> - rd : x5<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs2_b7_val == 85<br> - rs2_b6_val == -3<br> - rs2_b5_val == -65<br> - rs1_b6_val == -33<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000724]:KHMX8 t0, t6, a6<br> [0x80000728]:sd t0, 208(s3)<br>     |
|  15|[0x800032f0]<br>0x03F801FFFFFBF900|- rs1 : x9<br> - rs2 : x27<br> - rd : x13<br> - rs2_b7_val == 127<br> - rs2_b6_val == 64<br> - rs2_b5_val == -33<br> - rs2_b1_val == -2<br> - rs1_b5_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000770]:KHMX8 a3, s1, s11<br> [0x80000774]:sd a3, 224(s3)<br>    |
|  16|[0x80003300]<br>0x08FD0000FCFF00FC|- rs1 : x13<br> - rs2 : x6<br> - rd : x27<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs2_b7_val == -65<br> - rs2_b4_val == -2<br> - rs2_b1_val == 8<br> - rs2_b0_val == -9<br> - rs1_b7_val == -33<br> - rs1_b4_val == 1<br> - rs1_b2_val == -9<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800007c4]:KHMX8 s11, a3, t1<br> [0x800007c8]:sd s11, 0(sp)<br>     |
|  17|[0x80003310]<br>0xFF01F9000600FF21|- rs1 : x16<br> - rs2 : x9<br> - rd : x18<br> - rs2_b7_val == -17<br> - rs2_b3_val == -33<br> - rs2_b1_val == -65<br> - rs1_b5_val == 85<br> - rs1_b2_val == -3<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000808]:KHMX8 s2, a6, s1<br> [0x8000080c]:sd s2, 16(sp)<br>      |
|  18|[0x80003320]<br>0x00FF00D5FFFBFB10|- rs1 : x20<br> - rs2 : x4<br> - rd : x30<br> - rs2_b7_val == -9<br> - rs2_b3_val == 85<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000854]:KHMX8 t5, s4, tp<br> [0x80000858]:sd t5, 32(sp)<br>      |
|  19|[0x80003330]<br>0xFFFF03C6FFFF0100|- rs1 : x17<br> - rs2 : x19<br> - rd : x9<br> - rs2_b7_val == -5<br> - rs2_b4_val == 8<br> - rs2_b3_val == -2<br> - rs2_b0_val == 4<br> - rs1_b4_val == 85<br> - rs1_b3_val == -3<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000894]:KHMX8 s1, a7, s3<br> [0x80000898]:sd s1, 48(sp)<br>      |
|  20|[0x80003340]<br>0x0200000200000000|- rs1 : x30<br> - rs2 : x26<br> - rd : x10<br> - rs2_b7_val == -3<br> - rs2_b6_val == -5<br> - rs2_b4_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800008d0]:KHMX8 a0, t5, s10<br> [0x800008d4]:sd a0, 64(sp)<br>     |
|  21|[0x80003350]<br>0x0100EF01FF2A07FF|- rs1 : x5<br> - rs2 : x1<br> - rd : x19<br> - rs2_b7_val == -2<br> - rs2_b3_val == 64<br> - rs2_b0_val == -128<br> - rs1_b5_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000090c]:KHMX8 s3, t0, ra<br> [0x80000910]:sd s3, 80(sp)<br>      |
|  22|[0x80003360]<br>0x00FCFE00FF000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x3<br> - rs2_b7_val == -128<br> - rs2_b3_val == -86<br> - rs1_b5_val == 4<br> - rs1_b3_val == 1<br> - rs1_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000948]:KHMX8 gp, s11, t3<br> [0x8000094c]:sd gp, 96(sp)<br>     |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x0<br> - rs2_b7_val == 64<br> - rs2_b5_val == 4<br> - rs2_b4_val == -1<br> - rs2_b3_val == -1<br> - rs1_b6_val == -17<br> - rs1_b3_val == 8<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000988]:KHMX8 zero, a5, s5<br> [0x8000098c]:sd zero, 112(sp)<br> |
|  24|[0x80003380]<br>0x00FD00FF000110FF|- rs1 : x12<br> - rs2 : x13<br> - rd : x26<br> - rs2_b7_val == 32<br> - rs2_b1_val == -5<br> - rs2_b0_val == -33<br> - rs1_b7_val == -17<br> - rs1_b3_val == -17<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800009d4]:KHMX8 s10, a2, a3<br> [0x800009d8]:sd s10, 128(sp)<br>   |
|  25|[0x80003390]<br>0x00FFFFFEFBFC2000|- rs1 : x14<br> - rs2 : x30<br> - rd : x7<br> - rs2_b7_val == 4<br> - rs2_b6_val == 16<br> - rs2_b4_val == 16<br> - rs2_b2_val == 64<br> - rs1_b7_val == 4<br> - rs1_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000a18]:KHMX8 t2, a4, t5<br> [0x80000a1c]:sd t2, 144(sp)<br>     |
|  26|[0x800033a0]<br>0x000000FCFFFBFF02|- rs1 : x3<br> - rs2 : x10<br> - rd : x21<br> - rs2_b7_val == 1<br> - rs2_b6_val == -2<br> - rs2_b4_val == -17<br> - rs2_b2_val == -3<br> - rs1_b6_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a5c]:KHMX8 s5, gp, a0<br> [0x80000a60]:sd s5, 160(sp)<br>     |
|  27|[0x800033b0]<br>0x00000200FF000A00|- rs1 : x21<br> - rs2 : x22<br> - rd : x29<br> - rs2_b5_val == -5<br> - rs2_b1_val == 32<br> - rs1_b5_val == 16<br> - rs1_b3_val == -1<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a98]:KHMX8 t4, s5, s6<br> [0x80000a9c]:sd t4, 176(sp)<br>     |
|  28|[0x800033c0]<br>0xFDFFFF02FFFFFF20|- rs1 : x26<br> - rs2 : x11<br> - rd : x23<br> - rs2_b3_val == 1<br> - rs2_b1_val == 64<br> - rs1_b5_val == -3<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000adc]:KHMX8 s7, s10, a1<br> [0x80000ae0]:sd s7, 192(sp)<br>    |
|  29|[0x800033d0]<br>0x04EAFF1F000000FF|- rs1 : x1<br> - rs2 : x7<br> - rd : x16<br> - rs2_b6_val == -86<br> - rs2_b5_val == 64<br> - rs2_b1_val == -9<br> - rs1_b5_val == 64<br> - rs1_b3_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b20]:KHMX8 a6, ra, t2<br> [0x80000b24]:sd a6, 208(sp)<br>     |
|  30|[0x800033e0]<br>0xFD7EFD000201FEF7|- rs1 : x19<br> - rs2 : x12<br> - rd : x14<br> - rs2_b6_val == -17<br> - rs1_b7_val == 16<br> - rs1_b6_val == 127<br> - rs1_b5_val == 8<br> - rs1_b4_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000b6c]:KHMX8 a4, s3, a2<br> [0x80000b70]:sd a4, 224(sp)<br>     |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x24<br> - rd : x15<br> - rs2_b6_val == -9<br> - rs1_b7_val == 0<br> - rs1_b4_val == 0<br> - rs1_b2_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bb0]:KHMX8 a5, zero, s8<br> [0x80000bb4]:sd a5, 240(sp)<br>   |
|  32|[0x80003400]<br>0xFF00FF7E81E0F704|- rs1 : x4<br> - rs2 : x29<br> - rd : x28<br> - rs2_b5_val == 127<br> - rs2_b2_val == 127<br> - rs1_b6_val == 8<br> - rs1_b4_val == 127<br> - rs1_b3_val == -128<br> - rs1_b2_val == 64<br> - rs1_b1_val == 127<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000bf4]:KHMX8 t3, tp, t4<br> [0x80000bf8]:sd t3, 0(ra)<br>       |
|  33|[0x80003410]<br>0x007E001000FFFCFF|- rs1_b3_val == 4<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c40]:KHMX8 t6, t5, t4<br> [0x80000c44]:sd t6, 16(ra)<br>      |
|  34|[0x80003420]<br>0x0F030000F8FC00EA|- rs2_b4_val == -9<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c80]:KHMX8 t6, t5, t4<br> [0x80000c84]:sd t6, 32(ra)<br>      |
|  35|[0x80003430]<br>0x03FF0800070000FB|- rs1_b4_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000cc4]:KHMX8 t6, t5, t4<br> [0x80000cc8]:sd t6, 48(ra)<br>      |
|  36|[0x80003440]<br>0xFFFF00FF00060020|- rs1_b6_val == -3<br> - rs1_b4_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000d00]:KHMX8 t6, t5, t4<br> [0x80000d04]:sd t6, 64(ra)<br>      |
|  37|[0x80003450]<br>0x0400FF00FF0000FE|- rs1_b4_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d4c]:KHMX8 t6, t5, t4<br> [0x80000d50]:sd t6, 80(ra)<br>      |
|  38|[0x80003460]<br>0xFBFE05FF030A0F00|- rs2_b4_val == 127<br> - rs2_b0_val == 16<br> - rs1_b4_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d88]:KHMX8 t6, t5, t4<br> [0x80000d8c]:sd t6, 96(ra)<br>      |
|  39|[0x80003470]<br>0xFFFE00FE000000FF|- rs2_b2_val == -1<br> - rs1_b6_val == 2<br> - rs1_b4_val == 2<br> - rs1_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000dd4]:KHMX8 t6, t5, t4<br> [0x80000dd8]:sd t6, 112(ra)<br>     |
|  40|[0x80003480]<br>0x02FD0000FDFBFF00|- rs2_b6_val == -65<br> - rs2_b3_val == -65<br> - rs1_b1_val == -33<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e18]:KHMX8 t6, t5, t4<br> [0x80000e1c]:sd t6, 128(ra)<br>     |
|  41|[0x80003490]<br>0xFFFF05FF05FD40FE|- rs1_b7_val == 1<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e54]:KHMX8 t6, t5, t4<br> [0x80000e58]:sd t6, 144(ra)<br>     |
|  42|[0x800034a0]<br>0x0005007E00FEFF08|- rs2_b3_val == -9<br> - rs2_b1_val == 127<br> - rs1_b7_val == -3<br> - rs1_b3_val == -2<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ea0]:KHMX8 t6, t5, t4<br> [0x80000ea4]:sd t6, 160(ra)<br>     |
|  43|[0x800034b0]<br>0xFBFF00FF3F0400FF|- rs2_b1_val == 1<br> - rs1_b7_val == 32<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ee4]:KHMX8 t6, t5, t4<br> [0x80000ee8]:sd t6, 176(ra)<br>     |
|  44|[0x800034c0]<br>0x00FFFDFFFF0800FF|- rs2_b5_val == 2<br> - rs2_b3_val == -17<br> - rs1_b4_val == -1<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000f20]:KHMX8 t6, t5, t4<br> [0x80000f24]:sd t6, 192(ra)<br>     |
|  45|[0x800034d0]<br>0x0000E0FEFFFFFFFD|- rs2_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f5c]:KHMX8 t6, t5, t4<br> [0x80000f60]:sd t6, 208(ra)<br>     |
|  46|[0x800034e0]<br>0x01FEF8FDFD0000FF|- rs2_b1_val == -1<br> - rs1_b4_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000fa0]:KHMX8 t6, t5, t4<br> [0x80000fa4]:sd t6, 224(ra)<br>     |
|  47|[0x800034f0]<br>0xFF000400C60000FC|- rs2_b5_val == 16<br> - rs2_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000fe4]:KHMX8 t6, t5, t4<br> [0x80000fe8]:sd t6, 240(ra)<br>     |
|  48|[0x80003500]<br>0xFF00FF00FEFEE0FF|- rs2_b4_val == 2<br> - rs2_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001028]:KHMX8 t6, t5, t4<br> [0x8000102c]:sd t6, 256(ra)<br>     |
|  49|[0x80003510]<br>0x0000FCFF1100FFFF|- rs2_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001064]:KHMX8 t6, t5, t4<br> [0x80001068]:sd t6, 272(ra)<br>     |
|  50|[0x80003520]<br>0xFE00FBEFFF00F6FF|- rs2_b6_val == 4<br> - rs2_b2_val == -9<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010a8]:KHMX8 t6, t5, t4<br> [0x800010ac]:sd t6, 288(ra)<br>     |
|  51|[0x80003530]<br>0xFFFE00FFFF00FFF7|- rs2_b2_val == -5<br> - rs2_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800010f4]:KHMX8 t6, t5, t4<br> [0x800010f8]:sd t6, 304(ra)<br>     |
|  52|[0x80003540]<br>0x0700FFC10AFE0000|- rs2_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001138]:KHMX8 t6, t5, t4<br> [0x8000113c]:sd t6, 320(ra)<br>     |
|  53|[0x80003550]<br>0x01F800000001FEFF|- rs2_b2_val == 4<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001184]:KHMX8 t6, t5, t4<br> [0x80001188]:sd t6, 336(ra)<br>     |
|  54|[0x80003560]<br>0x0008FF040000FE00|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011c8]:KHMX8 t6, t5, t4<br> [0x800011cc]:sd t6, 352(ra)<br>     |
|  55|[0x80003570]<br>0x0003FF000400FFFA|- rs2_b1_val == 85<br> - rs1_b7_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000120c]:KHMX8 t6, t5, t4<br> [0x80001210]:sd t6, 368(ra)<br>     |
|  56|[0x80003580]<br>0x01FFF8F70002EFFD|- rs2_b6_val == 32<br> - rs2_b0_val == -65<br> - rs1_b3_val == 32<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001248]:KHMX8 t6, t5, t4<br> [0x8000124c]:sd t6, 384(ra)<br>     |
|  57|[0x80003590]<br>0xFB000000FFFFFDFD|- rs1_b7_val == -128<br> - rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000128c]:KHMX8 t6, t5, t4<br> [0x80001290]:sd t6, 400(ra)<br>     |
|  58|[0x800035a0]<br>0x00FB000000EF8100|- rs1_b6_val == -5<br> - rs1_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800012d0]:KHMX8 t6, t5, t4<br> [0x800012d4]:sd t6, 416(ra)<br>     |
|  59|[0x800035b0]<br>0xAB0000FF0100FDFE|- rs2_b6_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000131c]:KHMX8 t6, t5, t4<br> [0x80001320]:sd t6, 432(ra)<br>     |
|  60|[0x800035c0]<br>0xFFFFFDFFEAFF00FF|- rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001354]:KHMX8 t6, t5, t4<br> [0x80001358]:sd t6, 448(ra)<br>     |
|  61|[0x800035d0]<br>0xFF0A00FF03000056|- rs1_b0_val == -128<br> - rs2_b0_val == -2<br> - rs1_b7_val == -9<br> - rs1_b6_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001398]:KHMX8 t6, t5, t4<br> [0x8000139c]:sd t6, 464(ra)<br>     |
|  62|[0x800035e0]<br>0x00FFFF04FDFB1100|- rs1_b5_val == -17<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800013dc]:KHMX8 t6, t5, t4<br> [0x800013e0]:sd t6, 480(ra)<br>     |
|  63|[0x800035f0]<br>0x0000FF00FF100002|- rs2_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001410]:KHMX8 t6, t5, t4<br> [0x80001414]:sd t6, 496(ra)<br>     |
|  64|[0x80003600]<br>0xFA010000FA08FE00|- rs2_b1_val == 4<br> - rs1_b7_val == -86<br> - rs1_b6_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000144c]:KHMX8 t6, t5, t4<br> [0x80001450]:sd t6, 512(ra)<br>     |
|  65|[0x80003610]<br>0xFF2BFFFCFEFF0100|- rs2_b6_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001490]:KHMX8 t6, t5, t4<br> [0x80001494]:sd t6, 528(ra)<br>     |
|  66|[0x80003620]<br>0xFFF500FEFF0400FE|- rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800014d4]:KHMX8 t6, t5, t4<br> [0x800014d8]:sd t6, 544(ra)<br>     |
|  67|[0x80003630]<br>0xFEFF0004FFFFFF10|- rs1_b7_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001520]:KHMX8 t6, t5, t4<br> [0x80001524]:sd t6, 560(ra)<br>     |
|  68|[0x80003640]<br>0x00FFFF0000000800|- rs2_b5_val == 32<br> - rs2_b1_val == 2<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001564]:KHMX8 t6, t5, t4<br> [0x80001568]:sd t6, 576(ra)<br>     |
|  69|[0x80003660]<br>0xFF00FF040100FF00|- rs1_b6_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800015dc]:KHMX8 t6, t5, t4<br> [0x800015e0]:sd t6, 608(ra)<br>     |
|  70|[0x80003670]<br>0xFFFBAAFE00FCFF00|- rs2_b4_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001620]:KHMX8 t6, t5, t4<br> [0x80001624]:sd t6, 624(ra)<br>     |
|  71|[0x80003680]<br>0x000001FF02000000|- rs2_b5_val == -17<br> - rs2_b4_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000165c]:KHMX8 t6, t5, t4<br> [0x80001660]:sd t6, 640(ra)<br>     |
|  72|[0x80003690]<br>0x00FE00000400FFFE|- rs1_b6_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016a0]:KHMX8 t6, t5, t4<br> [0x800016a4]:sd t6, 656(ra)<br>     |
|  73|[0x800036a0]<br>0x0300FEFC0B08FB02|- rs1_b6_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016e4]:KHMX8 t6, t5, t4<br> [0x800016e8]:sd t6, 672(ra)<br>     |
|  74|[0x800036b0]<br>0xFFFFC60000000000|- rs2_b3_val == 8<br> - rs1_b5_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001720]:KHMX8 t6, t5, t4<br> [0x80001724]:sd t6, 688(ra)<br>     |
|  75|[0x800036c0]<br>0xFE0300F7FFFFFF00|- rs2_b4_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000175c]:KHMX8 t6, t5, t4<br> [0x80001760]:sd t6, 704(ra)<br>     |
|  76|[0x800036d0]<br>0x00FEFCFFFF0102FF|- rs2_b0_val == -86<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001798]:KHMX8 t6, t5, t4<br> [0x8000179c]:sd t6, 720(ra)<br>     |
|  77|[0x800036e0]<br>0x00EA000005002AFF|- rs2_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017dc]:KHMX8 t6, t5, t4<br> [0x800017e0]:sd t6, 736(ra)<br>     |
|  78|[0x800036f0]<br>0x01FC00015600FF05|- rs2_b5_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001820]:KHMX8 t6, t5, t4<br> [0x80001824]:sd t6, 752(ra)<br>     |
|  79|[0x80003710]<br>0xFFFEFF02AAEA01FF|- rs1_b5_val == 2<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018a4]:KHMX8 t6, t5, t4<br> [0x800018a8]:sd t6, 784(ra)<br>     |
