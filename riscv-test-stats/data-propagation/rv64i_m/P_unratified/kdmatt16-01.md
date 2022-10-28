
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
| SIG_REGION                | [('0x80003210', '0x80003890', '208 dwords')]      |
| COV_LABELS                | kdmatt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmatt16-01.S    |
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
      [0x80000e08]:KDMATT16 t6, t5, t4
      [0x80000e0c]:sd t6, 432(t2)
 -- Signature Address: 0x800034f0 Data: 0x37FA0DEBEAB806FB
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -129
      - rs2_h2_val == -33
      - rs2_h0_val == -8193
      - rs1_h3_val == -1025
      - rs1_h2_val == 16
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013fc]:KDMATT16 t6, t5, t4
      [0x80001400]:sd t6, 864(t2)
 -- Signature Address: 0x800036a0 Data: 0x2B451F9FE9672C29
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -16385
      - rs2_h2_val == 256
      - rs2_h0_val == 0
      - rs1_h3_val == 1024
      - rs1_h2_val == -2
      - rs1_h1_val == 256
      - rs1_h0_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014dc]:KDMATT16 t6, t5, t4
      [0x800014e0]:sd t6, 928(t2)
 -- Signature Address: 0x800036e0 Data: 0x2B531291296A6C1D
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -8193
      - rs2_h2_val == -513
      - rs2_h1_val == -32768
      - rs2_h0_val == 8192
      - rs1_h3_val == -257
      - rs1_h2_val == 4096
      - rs1_h1_val == 0
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001544]:KDMATT16 t6, t5, t4
      [0x80001548]:sd t6, 960(t2)
 -- Signature Address: 0x80003700 Data: 0x2B5312B529646C2B
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 0
      - rs2_h2_val == 1
      - rs2_h1_val == -9
      - rs2_h0_val == -2
      - rs1_h2_val == 64
      - rs1_h1_val == 21845






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmatt16', 'rs1 : x24', 'rs2 : x24', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == -33', 'rs2_h0_val == -4097', 'rs1_h2_val == -33', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800003d0]:KDMATT16 zero, s8, s8
	-[0x800003d4]:sd zero, 0(sp)
Current Store : [0x800003d8] : sd s8, 8(sp) -- Store: [0x80003218]:0xFFFAFFDFC000EFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x7', 'rd : x7', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -21846', 'rs2_h0_val == 4', 'rs1_h1_val == -21846', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000040c]:KDMATT16 t2, t2, t2
	-[0x80000410]:sd t2, 16(sp)
Current Store : [0x80000414] : sd t2, 24(sp) -- Store: [0x80003228]:0x00060011E38E71CC




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x13', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h2_val == -2']
Last Code Sequence : 
	-[0x80000448]:KDMATT16 a3, t5, s1
	-[0x8000044c]:sd a3, 32(sp)
Current Store : [0x80000450] : sd t5, 40(sp) -- Store: [0x80003238]:0xFFF8FFDFC000FFFC




Last Coverpoint : ['rs1 : x27', 'rs2 : x29', 'rd : x27', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == -21846', 'rs2_h0_val == 4096', 'rs1_h3_val == 256', 'rs1_h2_val == -2049', 'rs1_h1_val == -129', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000480]:KDMATT16 s11, s11, t4
	-[0x80000484]:sd s11, 48(sp)
Current Store : [0x80000488] : sd s11, 56(sp) -- Store: [0x80003248]:0x00564BFFFF7F0C10




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs2_h2_val == -16385', 'rs1_h3_val == -1025', 'rs1_h2_val == -16385', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800004bc]:KDMATT16 s10, a1, s10
	-[0x800004c0]:sd s10, 64(sp)
Current Store : [0x800004c4] : sd a1, 72(sp) -- Store: [0x80003258]:0xFBFFBFFFF7FFFFFC




Last Coverpoint : ['rs1 : x31', 'rs2 : x23', 'rd : x30', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -3', 'rs2_h2_val == -21846', 'rs2_h0_val == -2', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800004f8]:KDMATT16 t5, t6, s7
	-[0x800004fc]:sd t5, 80(sp)
Current Store : [0x80000500] : sd t6, 88(sp) -- Store: [0x80003268]:0x0007000600060800




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rd : x3', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -17', 'rs2_h2_val == 1', 'rs2_h1_val == 512', 'rs2_h0_val == -3', 'rs1_h3_val == 2', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x8000052c]:KDMATT16 gp, a3, a0
	-[0x80000530]:sd gp, 96(sp)
Current Store : [0x80000534] : sd a3, 104(sp) -- Store: [0x80003278]:0x000208003FFFFFFC




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x15', 'rs2_h2_val == -9', 'rs2_h0_val == -65', 'rs1_h3_val == -8193', 'rs1_h2_val == 8192', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000570]:KDMATT16 a5, s6, s11
	-[0x80000574]:sd a5, 112(sp)
Current Store : [0x80000578] : sd s6, 120(sp) -- Store: [0x80003288]:0xDFFF2000AAAAFFFE




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x29', 'rs2_h3_val == -1025', 'rs2_h2_val == 256', 'rs2_h1_val == -9', 'rs1_h3_val == 32', 'rs1_h2_val == 128', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800005a4]:KDMATT16 t4, s7, a3
	-[0x800005a8]:sd t4, 128(sp)
Current Store : [0x800005ac] : sd s7, 136(sp) -- Store: [0x80003298]:0x0020008010000003




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x28', 'rs2_h3_val == 21845', 'rs2_h2_val == -129', 'rs2_h1_val == 0', 'rs2_h0_val == 21845', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005e0]:KDMATT16 t3, s9, fp
	-[0x800005e4]:sd t3, 144(sp)
Current Store : [0x800005e8] : sd s9, 152(sp) -- Store: [0x800032a8]:0x0020FFF600060200




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rd : x14', 'rs2_h3_val == 32767', 'rs2_h1_val == -5', 'rs2_h0_val == 1024', 'rs1_h3_val == 21845', 'rs1_h2_val == -513', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x8000061c]:KDMATT16 a4, tp, s3
	-[0x80000620]:sd a4, 160(sp)
Current Store : [0x80000624] : sd tp, 168(sp) -- Store: [0x800032b8]:0x5555FDFF02000005




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x25', 'rs2_h3_val == -16385', 'rs2_h0_val == -16385', 'rs1_h3_val == 8192', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000658]:KDMATT16 s9, s10, t3
	-[0x8000065c]:sd s9, 176(sp)
Current Store : [0x80000660] : sd s10, 184(sp) -- Store: [0x800032c8]:0x2000FDFFFDFF0004




Last Coverpoint : ['rs1 : x10', 'rs2 : x6', 'rd : x5', 'rs2_h3_val == -8193', 'rs2_h1_val == 2', 'rs2_h0_val == -257', 'rs1_h3_val == 64', 'rs1_h1_val == -65', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000694]:KDMATT16 t0, a0, t1
	-[0x80000698]:sd t0, 192(sp)
Current Store : [0x8000069c] : sd a0, 200(sp) -- Store: [0x800032d8]:0x0040F7FFFFBF0008




Last Coverpoint : ['rs1 : x8', 'rs2 : x5', 'rd : x20', 'rs2_h3_val == -4097', 'rs2_h1_val == 32', 'rs2_h0_val == -8193', 'rs1_h3_val == 16', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800006c8]:KDMATT16 s4, fp, t0
	-[0x800006cc]:sd s4, 208(sp)
Current Store : [0x800006d0] : sd fp, 216(sp) -- Store: [0x800032e8]:0x0010FDFF08000400




Last Coverpoint : ['rs1 : x21', 'rs2 : x31', 'rd : x6', 'rs2_h3_val == -2049', 'rs2_h2_val == -5', 'rs2_h0_val == -9', 'rs1_h3_val == 2048', 'rs1_h1_val == -5', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000704]:KDMATT16 t1, s5, t6
	-[0x80000708]:sd t1, 224(sp)
Current Store : [0x8000070c] : sd s5, 232(sp) -- Store: [0x800032f8]:0x0800FFF6FFFBFDFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x25', 'rd : x31', 'rs2_h3_val == -513', 'rs2_h2_val == 2', 'rs1_h1_val == 64', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000738]:KDMATT16 t6, gp, s9
	-[0x8000073c]:sd t6, 240(sp)
Current Store : [0x80000740] : sd gp, 248(sp) -- Store: [0x80003308]:0x0020FDFF00404000




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x23', 'rs2_h3_val == -257', 'rs1_h3_val == 128', 'rs1_h2_val == -2', 'rs1_h1_val == 2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000774]:KDMATT16 s7, a5, s6
	-[0x80000778]:sd s7, 256(sp)
Current Store : [0x8000077c] : sd a5, 264(sp) -- Store: [0x80003318]:0x0080FFFE00020020




Last Coverpoint : ['rs1 : x1', 'rs2 : x14', 'rd : x8', 'rs2_h3_val == -129', 'rs1_h2_val == -17']
Last Code Sequence : 
	-[0x800007b0]:KDMATT16 fp, ra, a4
	-[0x800007b4]:sd fp, 272(sp)
Current Store : [0x800007b8] : sd ra, 280(sp) -- Store: [0x80003328]:0xC000FFEF0009FFFE




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x4', 'rs2_h3_val == -65', 'rs1_h2_val == -3', 'rs1_h1_val == 16384', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800007f4]:KDMATT16 tp, a7, s4
	-[0x800007f8]:sd tp, 288(sp)
Current Store : [0x800007fc] : sd a7, 296(sp) -- Store: [0x80003338]:0x5555FFFD4000FFBF




Last Coverpoint : ['rs1 : x29', 'rs2 : x16', 'rd : x12', 'rs2_h3_val == -33', 'rs2_h1_val == -8193', 'rs1_h2_val == 512', 'rs1_h1_val == -3', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000838]:KDMATT16 a2, t4, a6
	-[0x8000083c]:sd a2, 0(t2)
Current Store : [0x80000840] : sd t4, 8(t2) -- Store: [0x80003348]:0xFFF80200FFFD0001




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x11', 'rs2_h3_val == -9', 'rs1_h3_val == -2049', 'rs1_h2_val == 16384', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000870]:KDMATT16 a1, t3, sp
	-[0x80000874]:sd a1, 16(t2)
Current Store : [0x80000878] : sd t3, 24(t2) -- Store: [0x80003358]:0xF7FF400000044000




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x16', 'rs2_h3_val == -5', 'rs2_h2_val == 8192', 'rs2_h1_val == -65', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008a4]:KDMATT16 a6, s3, a2
	-[0x800008a8]:sd a6, 32(t2)
Current Store : [0x800008ac] : sd s3, 40(t2) -- Store: [0x80003368]:0x0007FFEF00057FFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rd : x10', 'rs2_h3_val == -2', 'rs2_h1_val == 16', 'rs1_h2_val == 32', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800008dc]:KDMATT16 a0, sp, tp
	-[0x800008e0]:sd a0, 48(t2)
Current Store : [0x800008e4] : sd sp, 56(t2) -- Store: [0x80003378]:0xFFFC0020FFFBFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x1', 'rs2_h3_val == -32768', 'rs2_h2_val == -32768', 'rs2_h1_val == -2', 'rs2_h0_val == -21846', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000910]:KDMATT16 ra, zero, s5
	-[0x80000914]:sd ra, 64(t2)
Current Store : [0x80000918] : sd zero, 72(t2) -- Store: [0x80003388]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x17', 'rs2_h3_val == 16384', 'rs2_h2_val == -17', 'rs2_h1_val == -1025', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x8000094c]:KDMATT16 a7, t0, ra
	-[0x80000950]:sd a7, 80(t2)
Current Store : [0x80000954] : sd t0, 88(t2) -- Store: [0x80003398]:0x0080100000040200




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rd : x22', 'rs2_h3_val == 8192', 'rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80000988]:KDMATT16 s6, s1, a7
	-[0x8000098c]:sd s6, 96(t2)
Current Store : [0x80000990] : sd s1, 104(t2) -- Store: [0x800033a8]:0xFBFFFFF900077FFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x18', 'rs2_h3_val == 4096', 'rs2_h1_val == 64', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800009c4]:KDMATT16 s2, s4, t5
	-[0x800009c8]:sd s2, 112(t2)
Current Store : [0x800009cc] : sd s4, 120(t2) -- Store: [0x800033b8]:0x00400007FFDF0003




Last Coverpoint : ['rs1 : x14', 'rs2 : x0', 'rd : x9', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80000a00]:KDMATT16 s1, a4, zero
	-[0x80000a04]:sd s1, 128(t2)
Current Store : [0x80000a08] : sd a4, 136(t2) -- Store: [0x800033c8]:0x00040006C0004000




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x19', 'rs2_h3_val == 1024', 'rs1_h3_val == -513', 'rs1_h1_val == 16', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000a3c]:KDMATT16 s3, t1, a1
	-[0x80000a40]:sd s3, 144(t2)
Current Store : [0x80000a44] : sd t1, 152(t2) -- Store: [0x800033d8]:0xFDFFFFFD0010FFFB




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x24', 'rs2_h3_val == 512', 'rs2_h2_val == 21845', 'rs2_h0_val == -1', 'rs1_h3_val == 512', 'rs1_h2_val == 256', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000a78]:KDMATT16 s8, a6, gp
	-[0x80000a7c]:sd s8, 160(t2)
Current Store : [0x80000a80] : sd a6, 168(t2) -- Store: [0x800033e8]:0x02000100AAAAFFEF




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x2', 'rs2_h3_val == 256', 'rs2_h1_val == -2049', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x80000ab4]:KDMATT16 sp, s2, a5
	-[0x80000ab8]:sd sp, 176(t2)
Current Store : [0x80000abc] : sd s2, 184(t2) -- Store: [0x800033f8]:0xFEFFFFFC0040FFFC




Last Coverpoint : ['rs1 : x12', 'rs2 : x18', 'rd : x21', 'rs2_h3_val == 128', 'rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x80000aec]:KDMATT16 s5, a2, s2
	-[0x80000af0]:sd s5, 192(t2)
Current Store : [0x80000af4] : sd a2, 200(t2) -- Store: [0x80003408]:0xFFF6C00000030008




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h0_val == 16', 'rs1_h2_val == -5', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000b20]:KDMATT16 t6, t5, t4
	-[0x80000b24]:sd t6, 208(t2)
Current Store : [0x80000b28] : sd t5, 216(t2) -- Store: [0x80003418]:0x0007FFFB0100FFFA




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 32767', 'rs2_h1_val == -513', 'rs2_h0_val == -5', 'rs1_h3_val == -21846', 'rs1_h2_val == -32768', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000b54]:KDMATT16 t6, t5, t4
	-[0x80000b58]:sd t6, 224(t2)
Current Store : [0x80000b5c] : sd t5, 232(t2) -- Store: [0x80003428]:0xAAAA8000FFFAFFDF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == -33', 'rs1_h3_val == -17']
Last Code Sequence : 
	-[0x80000b8c]:KDMATT16 t6, t5, t4
	-[0x80000b90]:sd t6, 240(t2)
Current Store : [0x80000b94] : sd t5, 248(t2) -- Store: [0x80003438]:0xFFEFF7FFFFFB0009




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -513', 'rs2_h1_val == -32768', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x80000bc0]:KDMATT16 t6, t5, t4
	-[0x80000bc4]:sd t6, 256(t2)
Current Store : [0x80000bc8] : sd t5, 264(t2) -- Store: [0x80003448]:0xAAAAEFFF0006FDFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == -32768', 'rs1_h2_val == -8193', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000bf8]:KDMATT16 t6, t5, t4
	-[0x80000bfc]:sd t6, 272(t2)
Current Store : [0x80000c00] : sd t5, 280(t2) -- Store: [0x80003458]:0x0005DFFF55550008




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -1025', 'rs2_h1_val == -3', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x80000c30]:KDMATT16 t6, t5, t4
	-[0x80000c34]:sd t6, 288(t2)
Current Store : [0x80000c38] : sd t5, 296(t2) -- Store: [0x80003468]:0x0002FFBFFFFCFFBF




Last Coverpoint : ['rs2_h2_val == 16', 'rs1_h1_val == -2', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000c64]:KDMATT16 t6, t5, t4
	-[0x80000c68]:sd t6, 304(t2)
Current Store : [0x80000c6c] : sd t5, 312(t2) -- Store: [0x80003478]:0x01008000FFFEF7FF




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h3_val == 1024', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c94]:KDMATT16 t6, t5, t4
	-[0x80000c98]:sd t6, 320(t2)
Current Store : [0x80000c9c] : sd t5, 328(t2) -- Store: [0x80003488]:0x0400DFFF80000007




Last Coverpoint : ['rs1_h2_val == 16', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000cc0]:KDMATT16 t6, t5, t4
	-[0x80000cc4]:sd t6, 336(t2)
Current Store : [0x80000cc8] : sd t5, 344(t2) -- Store: [0x80003498]:0x0080001020000004




Last Coverpoint : ['rs1_h3_val == -32768', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000cf4]:KDMATT16 t6, t5, t4
	-[0x80000cf8]:sd t6, 352(t2)
Current Store : [0x80000cfc] : sd t5, 360(t2) -- Store: [0x800034a8]:0x8000FDFF04000003




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000d2c]:KDMATT16 t6, t5, t4
	-[0x80000d30]:sd t6, 368(t2)
Current Store : [0x80000d34] : sd t5, 376(t2) -- Store: [0x800034b8]:0xC000010000800006




Last Coverpoint : ['rs1_h2_val == 8', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000d5c]:KDMATT16 t6, t5, t4
	-[0x80000d60]:sd t6, 384(t2)
Current Store : [0x80000d64] : sd t5, 392(t2) -- Store: [0x800034c8]:0x0006000800200020




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_h3_val == -3', 'rs1_h2_val == 64', 'rs1_h1_val == 8', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000d8c]:KDMATT16 t6, t5, t4
	-[0x80000d90]:sd t6, 400(t2)
Current Store : [0x80000d94] : sd t5, 408(t2) -- Store: [0x800034d8]:0xFFFD004000080002




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == 8192', 'rs1_h3_val == -16385', 'rs1_h2_val == -1', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000dcc]:KDMATT16 t6, t5, t4
	-[0x80000dd0]:sd t6, 416(t2)
Current Store : [0x80000dd4] : sd t5, 424(t2) -- Store: [0x800034e8]:0xBFFFFFFF00014000




Last Coverpoint : ['opcode : kdmatt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -129', 'rs2_h2_val == -33', 'rs2_h0_val == -8193', 'rs1_h3_val == -1025', 'rs1_h2_val == 16', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000e08]:KDMATT16 t6, t5, t4
	-[0x80000e0c]:sd t6, 432(t2)
Current Store : [0x80000e10] : sd t5, 440(t2) -- Store: [0x800034f8]:0xFBFF00100000FFFC




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == 32', 'rs1_h3_val == -4097', 'rs1_h2_val == -129', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000e3c]:KDMATT16 t6, t5, t4
	-[0x80000e40]:sd t6, 448(t2)
Current Store : [0x80000e44] : sd t5, 456(t2) -- Store: [0x80003508]:0xEFFFFF7FFFFFFFDF




Last Coverpoint : ['rs1_h3_val == 8', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000e74]:KDMATT16 t6, t5, t4
	-[0x80000e78]:sd t6, 464(t2)
Current Store : [0x80000e7c] : sd t5, 472(t2) -- Store: [0x80003518]:0x00080200FFF6AAAA




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000eb4]:KDMATT16 t6, t5, t4
	-[0x80000eb8]:sd t6, 480(t2)
Current Store : [0x80000ebc] : sd t5, 488(t2) -- Store: [0x80003528]:0x0004FFEF00055555




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h2_val == 32767', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000eec]:KDMATT16 t6, t5, t4
	-[0x80000ef0]:sd t6, 496(t2)
Current Store : [0x80000ef4] : sd t5, 504(t2) -- Store: [0x80003538]:0xBFFF7FFFFFDFBFFF




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h1_val == 1', 'rs2_h0_val == 512', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000f28]:KDMATT16 t6, t5, t4
	-[0x80000f2c]:sd t6, 512(t2)
Current Store : [0x80000f30] : sd t5, 520(t2) -- Store: [0x80003548]:0xDFFF0080FFF6DFFF




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80000f60]:KDMATT16 t6, t5, t4
	-[0x80000f64]:sd t6, 528(t2)
Current Store : [0x80000f68] : sd t5, 536(t2) -- Store: [0x80003558]:0xFFFE10000005EFFF




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h0_val == 2048', 'rs1_h1_val == -257', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000fa4]:KDMATT16 t6, t5, t4
	-[0x80000fa8]:sd t6, 544(t2)
Current Store : [0x80000fac] : sd t5, 552(t2) -- Store: [0x80003568]:0x0100FFDFFEFFFBFF




Last Coverpoint : ['rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000fdc]:KDMATT16 t6, t5, t4
	-[0x80000fe0]:sd t6, 560(t2)
Current Store : [0x80000fe4] : sd t5, 568(t2) -- Store: [0x80003578]:0x008000000000FEFF




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80001018]:KDMATT16 t6, t5, t4
	-[0x8000101c]:sd t6, 576(t2)
Current Store : [0x80001020] : sd t5, 584(t2) -- Store: [0x80003588]:0x3FFFFFEF0040FF7F




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80001050]:KDMATT16 t6, t5, t4
	-[0x80001054]:sd t6, 592(t2)
Current Store : [0x80001058] : sd t5, 600(t2) -- Store: [0x80003598]:0xFFFA08000010FFF7




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000108c]:KDMATT16 t6, t5, t4
	-[0x80001090]:sd t6, 608(t2)
Current Store : [0x80001094] : sd t5, 616(t2) -- Store: [0x800035a8]:0x000700092000FFFD




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h3_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800010c4]:KDMATT16 t6, t5, t4
	-[0x800010c8]:sd t6, 624(t2)
Current Store : [0x800010cc] : sd t5, 632(t2) -- Store: [0x800035b8]:0xFFFF000900402000




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800010f4]:KDMATT16 t6, t5, t4
	-[0x800010f8]:sd t6, 640(t2)
Current Store : [0x800010fc] : sd t5, 648(t2) -- Store: [0x800035c8]:0x00803FFF02001000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001128]:KDMATT16 t6, t5, t4
	-[0x8000112c]:sd t6, 656(t2)
Current Store : [0x80001130] : sd t5, 664(t2) -- Store: [0x800035d8]:0x0010400080000080




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h3_val == -33', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001168]:KDMATT16 t6, t5, t4
	-[0x8000116c]:sd t6, 672(t2)
Current Store : [0x80001170] : sd t5, 680(t2) -- Store: [0x800035e8]:0xFFDFEFFFFFFD0040




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x800011a4]:KDMATT16 t6, t5, t4
	-[0x800011a8]:sd t6, 688(t2)
Current Store : [0x800011ac] : sd t5, 696(t2) -- Store: [0x800035f8]:0x5555FDFF0004FF7F




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h2_val == 1', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800011d4]:KDMATT16 t6, t5, t4
	-[0x800011d8]:sd t6, 704(t2)
Current Store : [0x800011dc] : sd t5, 712(t2) -- Store: [0x80003608]:0x00060001FF7F0010




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h3_val == -5']
Last Code Sequence : 
	-[0x80001210]:KDMATT16 t6, t5, t4
	-[0x80001214]:sd t6, 720(t2)
Current Store : [0x80001218] : sd t5, 728(t2) -- Store: [0x80003618]:0xFFFBFFF902003FFF




Last Coverpoint : ['rs2_h1_val == -17', 'rs2_h0_val == -513', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001244]:KDMATT16 t6, t5, t4
	-[0x80001248]:sd t6, 736(t2)
Current Store : [0x8000124c] : sd t5, 744(t2) -- Store: [0x80003628]:0x00075555FDFFFFFD




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80001280]:KDMATT16 t6, t5, t4
	-[0x80001284]:sd t6, 752(t2)
Current Store : [0x80001288] : sd t5, 760(t2) -- Store: [0x80003638]:0xBFFF20000010FFDF




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800012b8]:KDMATT16 t6, t5, t4
	-[0x800012bc]:sd t6, 768(t2)
Current Store : [0x800012c0] : sd t5, 776(t2) -- Store: [0x80003648]:0xDFFFFF7FFFF60200




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800012ec]:KDMATT16 t6, t5, t4
	-[0x800012f0]:sd t6, 784(t2)
Current Store : [0x800012f4] : sd t5, 792(t2) -- Store: [0x80003658]:0xFFFCFFF600080006




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001320]:KDMATT16 t6, t5, t4
	-[0x80001324]:sd t6, 800(t2)
Current Store : [0x80001328] : sd t5, 808(t2) -- Store: [0x80003668]:0xFFF8FFF940000400




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80001354]:KDMATT16 t6, t5, t4
	-[0x80001358]:sd t6, 816(t2)
Current Store : [0x8000135c] : sd t5, 824(t2) -- Store: [0x80003678]:0x3FFFFFFAFFFAFFDF




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001390]:KDMATT16 t6, t5, t4
	-[0x80001394]:sd t6, 832(t2)
Current Store : [0x80001398] : sd t5, 840(t2) -- Store: [0x80003688]:0x00060040EFFFAAAA




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800013c4]:KDMATT16 t6, t5, t4
	-[0x800013c8]:sd t6, 848(t2)
Current Store : [0x800013cc] : sd t5, 856(t2) -- Store: [0x80003698]:0x55550001FFEFFFFB




Last Coverpoint : ['opcode : kdmatt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -16385', 'rs2_h2_val == 256', 'rs2_h0_val == 0', 'rs1_h3_val == 1024', 'rs1_h2_val == -2', 'rs1_h1_val == 256', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800013fc]:KDMATT16 t6, t5, t4
	-[0x80001400]:sd t6, 864(t2)
Current Store : [0x80001404] : sd t5, 872(t2) -- Store: [0x800036a8]:0x0400FFFE0100FFFE




Last Coverpoint : ['rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x8000143c]:KDMATT16 t6, t5, t4
	-[0x80001440]:sd t6, 880(t2)
Current Store : [0x80001444] : sd t5, 888(t2) -- Store: [0x800036b8]:0x7FFFFFF63FFF0020




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h3_val == -129', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001470]:KDMATT16 t6, t5, t4
	-[0x80001474]:sd t6, 896(t2)
Current Store : [0x80001478] : sd t5, 904(t2) -- Store: [0x800036c8]:0xFF7FFF7F7FFFFFFA




Last Coverpoint : ['rs1_h3_val == -65']
Last Code Sequence : 
	-[0x800014b0]:KDMATT16 t6, t5, t4
	-[0x800014b4]:sd t6, 912(t2)
Current Store : [0x800014b8] : sd t5, 920(t2) -- Store: [0x800036d8]:0xFFBFFFFFFFFF0020




Last Coverpoint : ['opcode : kdmatt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -8193', 'rs2_h2_val == -513', 'rs2_h1_val == -32768', 'rs2_h0_val == 8192', 'rs1_h3_val == -257', 'rs1_h2_val == 4096', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800014dc]:KDMATT16 t6, t5, t4
	-[0x800014e0]:sd t6, 928(t2)
Current Store : [0x800014e4] : sd t5, 936(t2) -- Store: [0x800036e8]:0xFEFF100000000000




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80001510]:KDMATT16 t6, t5, t4
	-[0x80001514]:sd t6, 944(t2)
Current Store : [0x80001518] : sd t5, 952(t2) -- Store: [0x800036f8]:0xFFF77FFFFFFCFDFF




Last Coverpoint : ['opcode : kdmatt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 0', 'rs2_h2_val == 1', 'rs2_h1_val == -9', 'rs2_h0_val == -2', 'rs1_h2_val == 64', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001544]:KDMATT16 t6, t5, t4
	-[0x80001548]:sd t6, 960(t2)
Current Store : [0x8000154c] : sd t5, 968(t2) -- Store: [0x80003708]:0xFFF9004055550009




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80001578]:KDMATT16 t6, t5, t4
	-[0x8000157c]:sd t6, 976(t2)
Current Store : [0x80001580] : sd t5, 984(t2) -- Store: [0x80003718]:0x000700100001FEFF




Last Coverpoint : ['rs2_h2_val == -4097', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x800015b4]:KDMATT16 t6, t5, t4
	-[0x800015b8]:sd t6, 992(t2)
Current Store : [0x800015bc] : sd t5, 1000(t2) -- Store: [0x80003728]:0x40007FFFFFFF0200




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x800015e0]:KDMATT16 t6, t5, t4
	-[0x800015e4]:sd t6, 1008(t2)
Current Store : [0x800015e8] : sd t5, 1016(t2) -- Store: [0x80003738]:0x00000001FFFF0004




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001618]:KDMATT16 t6, t5, t4
	-[0x8000161c]:sd t6, 1024(t2)
Current Store : [0x80001620] : sd t5, 1032(t2) -- Store: [0x80003748]:0xFFF8800000020020




Last Coverpoint : ['rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80001654]:KDMATT16 t6, t5, t4
	-[0x80001658]:sd t6, 1040(t2)
Current Store : [0x8000165c] : sd t5, 1048(t2) -- Store: [0x80003758]:0x0001FF7F0004EFFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x8000168c]:KDMATT16 t6, t5, t4
	-[0x80001690]:sd t6, 1056(t2)
Current Store : [0x80001694] : sd t5, 1064(t2) -- Store: [0x80003768]:0xFFDF0400FFF64000




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x800016b8]:KDMATT16 t6, t5, t4
	-[0x800016bc]:sd t6, 1072(t2)
Current Store : [0x800016c0] : sd t5, 1080(t2) -- Store: [0x80003778]:0x0000AAAA40000002




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x800016ec]:KDMATT16 t6, t5, t4
	-[0x800016f0]:sd t6, 1088(t2)
Current Store : [0x800016f4] : sd t5, 1096(t2) -- Store: [0x80003788]:0x00205555FFFC0010




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80001728]:KDMATT16 t6, t5, t4
	-[0x8000172c]:sd t6, 1104(t2)
Current Store : [0x80001730] : sd t5, 1112(t2) -- Store: [0x80003798]:0xFBFFFBFF00090003




Last Coverpoint : ['rs1_h2_val == -257', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000176c]:KDMATT16 t6, t5, t4
	-[0x80001770]:sd t6, 1120(t2)
Current Store : [0x80001774] : sd t5, 1128(t2) -- Store: [0x800037a8]:0x2000FEFFDFFF0003




Last Coverpoint : ['rs2_h3_val == 2048', 'rs2_h2_val == -1']
Last Code Sequence : 
	-[0x800017b0]:KDMATT16 t6, t5, t4
	-[0x800017b4]:sd t6, 1136(t2)
Current Store : [0x800017b8] : sd t5, 1144(t2) -- Store: [0x800037b8]:0xFFF6FFFF00020400




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x800017e8]:KDMATT16 t6, t5, t4
	-[0x800017ec]:sd t6, 1152(t2)
Current Store : [0x800017f0] : sd t5, 1160(t2) -- Store: [0x800037c8]:0x0002FDFFFFF8FFEF




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x8000181c]:KDMATT16 t6, t5, t4
	-[0x80001820]:sd t6, 1168(t2)
Current Store : [0x80001824] : sd t5, 1176(t2) -- Store: [0x800037d8]:0x0001AAAA00070001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h2_val == 8', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001854]:KDMATT16 t6, t5, t4
	-[0x80001858]:sd t6, 1184(t2)
Current Store : [0x8000185c] : sd t5, 1192(t2) -- Store: [0x800037e8]:0x8000C000FFF98000




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80001890]:KDMATT16 t6, t5, t4
	-[0x80001894]:sd t6, 1200(t2)
Current Store : [0x80001898] : sd t5, 1208(t2) -- Store: [0x800037f8]:0xFFFB020004000800




Last Coverpoint : ['rs1_h2_val == 4']
Last Code Sequence : 
	-[0x800018cc]:KDMATT16 t6, t5, t4
	-[0x800018d0]:sd t6, 1216(t2)
Current Store : [0x800018d4] : sd t5, 1224(t2) -- Store: [0x80003808]:0xC00000040010BFFF




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001900]:KDMATT16 t6, t5, t4
	-[0x80001904]:sd t6, 1232(t2)
Current Store : [0x80001908] : sd t5, 1240(t2) -- Store: [0x80003818]:0xFDFF2000C0000200




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x8000193c]:KDMATT16 t6, t5, t4
	-[0x80001940]:sd t6, 1248(t2)
Current Store : [0x80001944] : sd t5, 1256(t2) -- Store: [0x80003828]:0xEFFF00020800FFFE




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80001980]:KDMATT16 t6, t5, t4
	-[0x80001984]:sd t6, 1264(t2)
Current Store : [0x80001988] : sd t5, 1272(t2) -- Store: [0x80003838]:0x3FFF0007DFFF0040




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x800019ac]:KDMATT16 t6, t5, t4
	-[0x800019b0]:sd t6, 1280(t2)
Current Store : [0x800019b4] : sd t5, 1288(t2) -- Store: [0x80003848]:0xEFFFFFF73FFFFFF8




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x800019e4]:KDMATT16 t6, t5, t4
	-[0x800019e8]:sd t6, 1296(t2)
Current Store : [0x800019ec] : sd t5, 1304(t2) -- Store: [0x80003858]:0x1000FFFDC000FFFA




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001a20]:KDMATT16 t6, t5, t4
	-[0x80001a24]:sd t6, 1312(t2)
Current Store : [0x80001a28] : sd t5, 1320(t2) -- Store: [0x80003868]:0xC0000080FFF70010




Last Coverpoint : ['rs1_h1_val == -1025', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001a5c]:KDMATT16 t6, t5, t4
	-[0x80001a60]:sd t6, 1328(t2)
Current Store : [0x80001a64] : sd t5, 1336(t2) -- Store: [0x80003878]:0x0005FFF8FBFF0100




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001a90]:KDMATT16 t6, t5, t4
	-[0x80001a94]:sd t6, 1344(t2)
Current Store : [0x80001a98] : sd t5, 1352(t2) -- Store: [0x80003888]:0xFFFFFFBFBFFF0400





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

|s.no|            signature             |                                                                                                                                                                                                                                         coverpoints                                                                                                                                                                                                                                         |                                 code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : kdmatt16<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -33<br> - rs2_h0_val == -4097<br> - rs1_h2_val == -33<br> - rs1_h0_val == -4097<br> |[0x800003d0]:KDMATT16 zero, s8, s8<br> [0x800003d4]:sd zero, 0(sp)<br> |
|   2|[0x80003220]<br>0x00060011E38E71CC|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                         |[0x8000040c]:KDMATT16 t2, t2, t2<br> [0x80000410]:sd t2, 16(sp)<br>    |
|   3|[0x80003230]<br>0xEADFEADBCAE06EDB|- rs1 : x30<br> - rs2 : x9<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 64<br> - rs2_h2_val == -2<br>                                                                                                |[0x80000448]:KDMATT16 a3, t5, s1<br> [0x8000044c]:sd a3, 32(sp)<br>    |
|   4|[0x80003240]<br>0x00564BFFFF7F0C10|- rs1 : x27<br> - rs2 : x29<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == -21846<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 256<br> - rs1_h2_val == -2049<br> - rs1_h1_val == -129<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                |[0x80000480]:KDMATT16 s11, s11, t4<br> [0x80000484]:sd s11, 48(sp)<br> |
|   5|[0x80003250]<br>0x000597F50002CFFD|- rs1 : x11<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs2_h2_val == -16385<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                              |[0x800004bc]:KDMATT16 s10, a1, s10<br> [0x800004c0]:sd s10, 64(sp)<br> |
|   6|[0x80003260]<br>0xFFF8FFB5BFFDFFFC|- rs1 : x31<br> - rs2 : x23<br> - rd : x30<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -3<br> - rs2_h2_val == -21846<br> - rs2_h0_val == -2<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                     |[0x800004f8]:KDMATT16 t5, t6, s7<br> [0x800004fc]:sd t5, 80(sp)<br>    |
|   7|[0x80003270]<br>0x7FBB6F677FFFFFFF|- rs1 : x13<br> - rs2 : x10<br> - rd : x3<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -17<br> - rs2_h2_val == 1<br> - rs2_h1_val == 512<br> - rs2_h0_val == -3<br> - rs1_h3_val == 2<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                    |[0x8000052c]:KDMATT16 gp, a3, a0<br> [0x80000530]:sd gp, 96(sp)<br>    |
|   8|[0x80003280]<br>0xFAB6BBAC339C6D7E|- rs1 : x22<br> - rs2 : x27<br> - rd : x15<br> - rs2_h2_val == -9<br> - rs2_h0_val == -65<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                      |[0x80000570]:KDMATT16 a5, s6, s11<br> [0x80000574]:sd a5, 112(sp)<br>  |
|   9|[0x80003290]<br>0xAAA8FFC7FFF6F000|- rs1 : x23<br> - rs2 : x13<br> - rd : x29<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 256<br> - rs2_h1_val == -9<br> - rs1_h3_val == 32<br> - rs1_h2_val == 128<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x800005a4]:KDMATT16 t4, s7, a3<br> [0x800005a8]:sd t4, 128(sp)<br>   |
|  10|[0x800032a0]<br>0xDDCD2AFFDDB7D5BF|- rs1 : x25<br> - rs2 : x8<br> - rd : x28<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -129<br> - rs2_h1_val == 0<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                     |[0x800005e0]:KDMATT16 t3, s9, fp<br> [0x800005e4]:sd t3, 144(sp)<br>   |
|  11|[0x800032b0]<br>0x4AC44CC3F56FE36D|- rs1 : x4<br> - rs2 : x19<br> - rd : x14<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -5<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -513<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                           |[0x8000061c]:KDMATT16 a4, tp, s3<br> [0x80000620]:sd a4, 160(sp)<br>   |
|  12|[0x800032c0]<br>0xF020BFF600062A14|- rs1 : x26<br> - rs2 : x28<br> - rd : x25<br> - rs2_h3_val == -16385<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 8192<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000658]:KDMATT16 s9, s10, t3<br> [0x8000065c]:sd s9, 176(sp)<br>  |
|  13|[0x800032d0]<br>0xFFEFFF808000028C|- rs1 : x10<br> - rs2 : x6<br> - rd : x5<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 2<br> - rs2_h0_val == -257<br> - rs1_h3_val == 64<br> - rs1_h1_val == -65<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                   |[0x80000694]:KDMATT16 t0, a0, t1<br> [0x80000698]:sd t0, 192(sp)<br>   |
|  14|[0x800032e0]<br>0xB7D3BFBDB7D7BFDD|- rs1 : x8<br> - rs2 : x5<br> - rd : x20<br> - rs2_h3_val == -4097<br> - rs2_h1_val == 32<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 16<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                      |[0x800006c8]:KDMATT16 s4, fp, t0<br> [0x800006cc]:sd s4, 208(sp)<br>   |
|  15|[0x800032f0]<br>0xDF7EF0060002FDBF|- rs1 : x21<br> - rs2 : x31<br> - rd : x6<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -5<br> - rs2_h0_val == -9<br> - rs1_h3_val == 2048<br> - rs1_h1_val == -5<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                               |[0x80000704]:KDMATT16 t1, s5, t6<br> [0x80000708]:sd t1, 224(sp)<br>   |
|  16|[0x80003300]<br>0xF7FF7FBB00210477|- rs1 : x3<br> - rs2 : x25<br> - rd : x31<br> - rs2_h3_val == -513<br> - rs2_h2_val == 2<br> - rs1_h1_val == 64<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000738]:KDMATT16 t6, gp, s9<br> [0x8000073c]:sd t6, 240(sp)<br>   |
|  17|[0x80003310]<br>0x001EFF8010000017|- rs1 : x15<br> - rs2 : x22<br> - rd : x23<br> - rs2_h3_val == -257<br> - rs1_h3_val == 128<br> - rs1_h2_val == -2<br> - rs1_h1_val == 2<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                          |[0x80000774]:KDMATT16 s7, a5, s6<br> [0x80000778]:sd s7, 256(sp)<br>   |
|  18|[0x80003320]<br>0x00517DFF08000382|- rs1 : x1<br> - rs2 : x14<br> - rd : x8<br> - rs2_h3_val == -129<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800007b0]:KDMATT16 fp, ra, a4<br> [0x800007b4]:sd fp, 272(sp)<br>   |
|  19|[0x80003330]<br>0x552AA8D501FC0005|- rs1 : x17<br> - rs2 : x20<br> - rd : x4<br> - rs2_h3_val == -65<br> - rs1_h2_val == -3<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                               |[0x800007f4]:KDMATT16 tp, a7, s4<br> [0x800007f8]:sd tp, 288(sp)<br>   |
|  20|[0x80003340]<br>0xD5BFDFC7D5C09DBD|- rs1 : x29<br> - rs2 : x16<br> - rd : x12<br> - rs2_h3_val == -33<br> - rs2_h1_val == -8193<br> - rs1_h2_val == 512<br> - rs1_h1_val == -3<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000838]:KDMATT16 a2, t4, a6<br> [0x8000083c]:sd a2, 0(t2)<br>     |
|  21|[0x80003350]<br>0xFC005011F7FFFFD4|- rs1 : x28<br> - rs2 : x2<br> - rd : x11<br> - rs2_h3_val == -9<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000870]:KDMATT16 a1, t3, sp<br> [0x80000874]:sd a1, 16(t2)<br>    |
|  22|[0x80003360]<br>0xFFDFFFB3DFFF52CB|- rs1 : x19<br> - rs2 : x12<br> - rd : x16<br> - rs2_h3_val == -5<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -65<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                             |[0x800008a4]:KDMATT16 a6, s3, a2<br> [0x800008a8]:sd a6, 32(t2)<br>    |
|  23|[0x80003370]<br>0x0040F80FFFBEFF68|- rs1 : x2<br> - rs2 : x4<br> - rd : x10<br> - rs2_h3_val == -2<br> - rs2_h1_val == 16<br> - rs1_h2_val == 32<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800008dc]:KDMATT16 a0, sp, tp<br> [0x800008e0]:sd a0, 48(t2)<br>    |
|  24|[0x80003380]<br>0xC000FFEF0009FFFE|- rs1 : x0<br> - rs2 : x21<br> - rd : x1<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -2<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                 |[0x80000910]:KDMATT16 ra, zero, s5<br> [0x80000914]:sd ra, 64(t2)<br>  |
|  25|[0x80003390]<br>0x5595FFFD4000DFB7|- rs1 : x5<br> - rs2 : x1<br> - rd : x17<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -17<br> - rs2_h1_val == -1025<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                            |[0x8000094c]:KDMATT16 a7, t0, ra<br> [0x80000950]:sd a7, 80(t2)<br>    |
|  26|[0x800033a0]<br>0xFDFFBFF80005FF6A|- rs1 : x9<br> - rs2 : x17<br> - rd : x22<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000988]:KDMATT16 s6, s1, a7<br> [0x8000098c]:sd s6, 96(t2)<br>    |
|  27|[0x800033b0]<br>0xDF5EFF76DF56EEF6|- rs1 : x20<br> - rs2 : x30<br> - rd : x18<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 64<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800009c4]:KDMATT16 s2, s4, t5<br> [0x800009c8]:sd s2, 112(t2)<br>   |
|  28|[0x800033c0]<br>0xFBFFFFF900077FFF|- rs1 : x14<br> - rs2 : x0<br> - rd : x9<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000a00]:KDMATT16 s1, a4, zero<br> [0x80000a04]:sd s1, 128(t2)<br> |
|  29|[0x800033d0]<br>0xFFF7F7EF00057F7F|- rs1 : x6<br> - rs2 : x11<br> - rd : x19<br> - rs2_h3_val == 1024<br> - rs1_h3_val == -513<br> - rs1_h1_val == 16<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000a3c]:KDMATT16 s3, t1, a1<br> [0x80000a40]:sd s3, 144(t2)<br>   |
|  30|[0x800033e0]<br>0x0002FFDFC004455B|- rs1 : x16<br> - rs2 : x3<br> - rd : x24<br> - rs2_h3_val == 512<br> - rs2_h2_val == 21845<br> - rs2_h0_val == -1<br> - rs1_h3_val == 512<br> - rs1_h2_val == 256<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                               |[0x80000a78]:KDMATT16 s8, a6, gp<br> [0x80000a7c]:sd s8, 160(t2)<br>   |
|  31|[0x800033f0]<br>0xFFF9FE20FFF7FF7F|- rs1 : x18<br> - rs2 : x15<br> - rd : x2<br> - rs2_h3_val == 256<br> - rs2_h1_val == -2049<br> - rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ab4]:KDMATT16 sp, s2, a5<br> [0x80000ab8]:sd sp, 176(t2)<br>   |
|  32|[0x80003400]<br>0x80007600FFFEAA8C|- rs1 : x12<br> - rs2 : x18<br> - rd : x21<br> - rs2_h3_val == 128<br> - rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000aec]:KDMATT16 s5, a2, s2<br> [0x80000af0]:sd s5, 192(t2)<br>   |
|  33|[0x80003410]<br>0xF7FF817B00210477|- rs2_h3_val == 32<br> - rs2_h0_val == 16<br> - rs1_h2_val == -5<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b20]:KDMATT16 t6, t5, t4<br> [0x80000b24]:sd t6, 208(t2)<br>   |
|  34|[0x80003420]<br>0xF7F4D6BB00211C83|- rs2_h3_val == 16<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -513<br> - rs2_h0_val == -5<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -32768<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                               |[0x80000b54]:KDMATT16 t6, t5, t4<br> [0x80000b58]:sd t6, 224(t2)<br>   |
|  35|[0x80003430]<br>0xF7F4D5AB00211C29|- rs2_h3_val == 8<br> - rs2_h0_val == -33<br> - rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b8c]:KDMATT16 t6, t5, t4<br> [0x80000b90]:sd t6, 240(t2)<br>   |
|  36|[0x80003440]<br>0xF7F22AFB001B1C29|- rs2_h3_val == 4<br> - rs2_h2_val == -513<br> - rs2_h1_val == -32768<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000bc0]:KDMATT16 t6, t5, t4<br> [0x80000bc4]:sd t6, 256(t2)<br>   |
|  37|[0x80003450]<br>0xF7F22B0FEAC5317F|- rs2_h3_val == 2<br> - rs2_h0_val == -32768<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bf8]:KDMATT16 t6, t5, t4<br> [0x80000bfc]:sd t6, 272(t2)<br>   |
|  38|[0x80003460]<br>0xF7F22B13EAC53197|- rs2_h3_val == 1<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -3<br> - rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000c30]:KDMATT16 t6, t5, t4<br> [0x80000c34]:sd t6, 288(t2)<br>   |
|  39|[0x80003470]<br>0xF7F24B13EAC5419B|- rs2_h2_val == 16<br> - rs1_h1_val == -2<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c64]:KDMATT16 t6, t5, t4<br> [0x80000c68]:sd t6, 304(t2)<br>   |
|  40|[0x80003480]<br>0xF7F28313EAC8419B|- rs2_h0_val == -1025<br> - rs1_h3_val == 1024<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c94]:KDMATT16 t6, t5, t4<br> [0x80000c98]:sd t6, 320(t2)<br>   |
|  41|[0x80003490]<br>0xF7F27913EAB8019B|- rs1_h2_val == 16<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cc0]:KDMATT16 t6, t5, t4<br> [0x80000cc4]:sd t6, 336(t2)<br>   |
|  42|[0x800034a0]<br>0xF7F17913EAB7C19B|- rs1_h3_val == -32768<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000cf4]:KDMATT16 t6, t5, t4<br> [0x80000cf8]:sd t6, 352(t2)<br>   |
|  43|[0x800034b0]<br>0xF7F4F913EAB7C79B|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d2c]:KDMATT16 t6, t5, t4<br> [0x80000d30]:sd t6, 368(t2)<br>   |
|  44|[0x800034c0]<br>0xF7F50513EAB7C71B|- rs1_h2_val == 8<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d5c]:KDMATT16 t6, t5, t4<br> [0x80000d60]:sd t6, 384(t2)<br>   |
|  45|[0x800034d0]<br>0xF7F504E9EAB7C6FB|- rs2_h2_val == -8193<br> - rs1_h3_val == -3<br> - rs1_h2_val == 64<br> - rs1_h1_val == 8<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d8c]:KDMATT16 t6, t5, t4<br> [0x80000d90]:sd t6, 400(t2)<br>   |
|  46|[0x800034e0]<br>0x37F604E9EAB806FB|- rs2_h2_val == 1024<br> - rs2_h1_val == 8192<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -1<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000dcc]:KDMATT16 t6, t5, t4<br> [0x80000dd0]:sd t6, 416(t2)<br>   |
|  47|[0x80003500]<br>0x2FF9ADEDEAB805FB|- rs2_h1_val == 128<br> - rs2_h0_val == 32<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -129<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e3c]:KDMATT16 t6, t5, t4<br> [0x80000e40]:sd t6, 448(t2)<br>   |
|  48|[0x80003510]<br>0x2FF9A5DDEAB80637|- rs1_h3_val == 8<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e74]:KDMATT16 t6, t5, t4<br> [0x80000e78]:sd t6, 464(t2)<br>   |
|  49|[0x80003520]<br>0x2FF6FB2DEAB7F22D|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000eb4]:KDMATT16 t6, t5, t4<br> [0x80000eb8]:sd t6, 480(t2)<br>   |
|  50|[0x80003530]<br>0x2DF6F32DEAB7F0A1|- rs2_h0_val == 16384<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000eec]:KDMATT16 t6, t5, t4<br> [0x80000ef0]:sd t6, 496(t2)<br>   |
|  51|[0x80003540]<br>0x2DF2F30DEAB7F08D|- rs2_h2_val == -257<br> - rs2_h1_val == 1<br> - rs2_h0_val == 512<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f28]:KDMATT16 t6, t5, t4<br> [0x80000f2c]:sd t6, 512(t2)<br>   |
|  52|[0x80003550]<br>0x2DF2F329EAB7F051|- rs2_h2_val == 4096<br> - rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000f60]:KDMATT16 t6, t5, t4<br> [0x80000f64]:sd t6, 528(t2)<br>   |
|  53|[0x80003560]<br>0x2E72F129EABFFA53|- rs2_h2_val == 128<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -257<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000fa4]:KDMATT16 t6, t5, t4<br> [0x80000fa8]:sd t6, 544(t2)<br>   |
|  54|[0x80003570]<br>0x2E72E829EABFFA53|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000fdc]:KDMATT16 t6, t5, t4<br> [0x80000fe0]:sd t6, 560(t2)<br>   |
|  55|[0x80003580]<br>0x2E92E7A9EAAFF9D3|- rs2_h0_val == 2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001018]:KDMATT16 t6, t5, t4<br> [0x8000101c]:sd t6, 576(t2)<br>   |
|  56|[0x80003590]<br>0x2E98E7A9EAB039D3|- rs2_h2_val == 512<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001050]:KDMATT16 t6, t5, t4<br> [0x80001054]:sd t6, 592(t2)<br>   |
|  57|[0x800035a0]<br>0x2E98E77FE9AFF9D3|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000108c]:KDMATT16 t6, t5, t4<br> [0x80001090]:sd t6, 608(t2)<br>   |
|  58|[0x800035b0]<br>0x2E98E793E9AFFDD3|- rs2_h1_val == 8<br> - rs1_h3_val == -1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800010c4]:KDMATT16 t6, t5, t4<br> [0x800010c8]:sd t6, 624(t2)<br>   |
|  59|[0x800035c0]<br>0x2E98E593E9AFFDD3|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800010f4]:KDMATT16 t6, t5, t4<br> [0x800010f8]:sd t6, 640(t2)<br>   |
|  60|[0x800035d0]<br>0x2E8E3AD3E9ACFDD3|- rs2_h0_val == -2049<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001128]:KDMATT16 t6, t5, t4<br> [0x8000112c]:sd t6, 656(t2)<br>   |
|  61|[0x800035e0]<br>0x2E8DB6D3E9AAFDD5|- rs2_h1_val == 21845<br> - rs1_h3_val == -33<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001168]:KDMATT16 t6, t5, t4<br> [0x8000116c]:sd t6, 672(t2)<br>   |
|  62|[0x800035f0]<br>0x2E986173E9AAFDF5|- rs2_h1_val == 4<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800011a4]:KDMATT16 t6, t5, t4<br> [0x800011a8]:sd t6, 688(t2)<br>   |
|  63|[0x80003600]<br>0x2E98611FE9AAFEF7|- rs2_h1_val == -1<br> - rs1_h2_val == 1<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011d4]:KDMATT16 t6, t5, t4<br> [0x800011d8]:sd t6, 704(t2)<br>   |
|  64|[0x80003610]<br>0x2E987529E98AFAF7|- rs2_h0_val == 32767<br> - rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001210]:KDMATT16 t6, t5, t4<br> [0x80001214]:sd t6, 720(t2)<br>   |
|  65|[0x80003620]<br>0x2E98051BE98B3F19|- rs2_h1_val == -17<br> - rs2_h0_val == -513<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001244]:KDMATT16 t6, t5, t4<br> [0x80001248]:sd t6, 736(t2)<br>   |
|  66|[0x80003630]<br>0x2E958511E98B3FB9|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001280]:KDMATT16 t6, t5, t4<br> [0x80001284]:sd t6, 752(t2)<br>   |
|  67|[0x80003640]<br>0x2EB5C613E98B2BB9|- rs2_h1_val == 256<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800012b8]:KDMATT16 t6, t5, t4<br> [0x800012bc]:sd t6, 768(t2)<br>   |
|  68|[0x80003650]<br>0x2EB5C5D3E98B2C29|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800012ec]:KDMATT16 t6, t5, t4<br> [0x800012f0]:sd t6, 784(t2)<br>   |
|  69|[0x80003660]<br>0x2EB5A5D3E9872C29|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001320]:KDMATT16 t6, t5, t4<br> [0x80001324]:sd t6, 800(t2)<br>   |
|  70|[0x80003670]<br>0x2E952655E9872029|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001354]:KDMATT16 t6, t5, t4<br> [0x80001358]:sd t6, 816(t2)<br>   |
|  71|[0x80003680]<br>0x2E9B2649E9671E29|- rs2_h0_val == 8<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001390]:KDMATT16 t6, t5, t4<br> [0x80001394]:sd t6, 832(t2)<br>   |
|  72|[0x80003690]<br>0x2D45279FE9671E29|- rs2_h0_val == 1<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013c4]:KDMATT16 t6, t5, t4<br> [0x800013c8]:sd t6, 848(t2)<br>   |
|  73|[0x800036b0]<br>0x2B3E1FADE96AAC1B|- rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000143c]:KDMATT16 t6, t5, t4<br> [0x80001440]:sd t6, 880(t2)<br>   |
|  74|[0x800036c0]<br>0x2B3E25B9296A2C1B|- rs2_h1_val == 16384<br> - rs1_h3_val == -129<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001470]:KDMATT16 t6, t5, t4<br> [0x80001474]:sd t6, 896(t2)<br>   |
|  75|[0x800036d0]<br>0x2B12D08F296A6C1D|- rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800014b0]:KDMATT16 t6, t5, t4<br> [0x800014b4]:sd t6, 912(t2)<br>   |
|  76|[0x800036f0]<br>0x2B5312B5296A6C25|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001510]:KDMATT16 t6, t5, t4<br> [0x80001514]:sd t6, 944(t2)<br>   |
|  77|[0x80003710]<br>0x2B5312A729646BE9|- rs2_h3_val == -1<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001578]:KDMATT16 t6, t5, t4<br> [0x8000157c]:sd t6, 976(t2)<br>   |
|  78|[0x80003720]<br>0x2B4E12A729656BE9|- rs2_h2_val == -4097<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015b4]:KDMATT16 t6, t5, t4<br> [0x800015b8]:sd t6, 992(t2)<br>   |
|  79|[0x80003730]<br>0x2B4E12A72965EBEB|- rs2_h2_val == -2049<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800015e0]:KDMATT16 t6, t5, t4<br> [0x800015e4]:sd t6, 1008(t2)<br>  |
|  80|[0x80003740]<br>0x2B4E52B72965EBF7|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001618]:KDMATT16 t6, t5, t4<br> [0x8000161c]:sd t6, 1024(t2)<br>  |
|  81|[0x80003750]<br>0x2B4E56B72965EBD7|- rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001654]:KDMATT16 t6, t5, t4<br> [0x80001658]:sd t6, 1040(t2)<br>  |
|  82|[0x80003760]<br>0x2B4EDAF92965EA97|- rs2_h2_val == -3<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000168c]:KDMATT16 t6, t5, t4<br> [0x80001690]:sd t6, 1056(t2)<br>  |
|  83|[0x80003770]<br>0x2B4EDAF927656A97|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800016b8]:KDMATT16 t6, t5, t4<br> [0x800016bc]:sd t6, 1072(t2)<br>  |
|  84|[0x80003780]<br>0x2B4EDCF927616A9F|- rs2_h2_val == 2048<br> - rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800016ec]:KDMATT16 t6, t5, t4<br> [0x800016f0]:sd t6, 1088(t2)<br>  |
|  85|[0x80003790]<br>0x2B8EF4FB2761FA9F|- rs2_h1_val == 2048<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001728]:KDMATT16 t6, t5, t4<br> [0x8000172c]:sd t6, 1104(t2)<br>  |
|  86|[0x800037a0]<br>0x338EF4FB26E1F69F|- rs1_h2_val == -257<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000176c]:KDMATT16 t6, t5, t4<br> [0x80001770]:sd t6, 1120(t2)<br>  |
|  87|[0x800037b0]<br>0x338E54FB26E1EE9B|- rs2_h3_val == 2048<br> - rs2_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017b0]:KDMATT16 t6, t5, t4<br> [0x800017b4]:sd t6, 1136(t2)<br>  |
|  88|[0x800037c0]<br>0x338E551B26E2EEAB|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017e8]:KDMATT16 t6, t5, t4<br> [0x800017ec]:sd t6, 1152(t2)<br>  |
|  89|[0x800037d0]<br>0x338E550726E2E09D|- rs2_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000181c]:KDMATT16 t6, t5, t4<br> [0x80001820]:sd t6, 1168(t2)<br>  |
|  90|[0x800037e0]<br>0x438F550726E2A89D|- rs1_h0_val == -32768<br> - rs2_h2_val == 8<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001854]:KDMATT16 t6, t5, t4<br> [0x80001858]:sd t6, 1184(t2)<br>  |
|  91|[0x800037f0]<br>0x438F555726DEA09D|- rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001890]:KDMATT16 t6, t5, t4<br> [0x80001894]:sd t6, 1200(t2)<br>  |
|  92|[0x80003800]<br>0x4390D55726D3F5DD|- rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800018cc]:KDMATT16 t6, t5, t4<br> [0x800018d0]:sd t6, 1216(t2)<br>  |
|  93|[0x80003810]<br>0x4390B5471ED3F5DD|- rs2_h2_val == 4<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001900]:KDMATT16 t6, t5, t4<br> [0x80001904]:sd t6, 1232(t2)<br>  |
|  94|[0x80003820]<br>0x438CB5071EF3F5DD|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000193c]:KDMATT16 t6, t5, t4<br> [0x80001940]:sd t6, 1248(t2)<br>  |
|  95|[0x80003830]<br>0x438FB4FB1EFC361F|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001980]:KDMATT16 t6, t5, t4<br> [0x80001984]:sd t6, 1264(t2)<br>  |
|  96|[0x80003840]<br>0x4393D53DFEFCB61F|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800019ac]:KDMATT16 t6, t5, t4<br> [0x800019b0]:sd t6, 1280(t2)<br>  |
|  97|[0x80003850]<br>0x4393753DFEF8361F|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800019e4]:KDMATT16 t6, t5, t4<br> [0x800019e8]:sd t6, 1296(t2)<br>  |
|  98|[0x80003860]<br>0x4395753DFEF84831|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001a20]:KDMATT16 t6, t5, t4<br> [0x80001a24]:sd t6, 1312(t2)<br>  |
|  99|[0x80003870]<br>0x4395756F01A3A2DD|- rs1_h1_val == -1025<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001a5c]:KDMATT16 t6, t5, t4<br> [0x80001a60]:sd t6, 1328(t2)<br>  |
| 100|[0x80003880]<br>0x4396756F01A4A2E1|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001a90]:KDMATT16 t6, t5, t4<br> [0x80001a94]:sd t6, 1344(t2)<br>  |
