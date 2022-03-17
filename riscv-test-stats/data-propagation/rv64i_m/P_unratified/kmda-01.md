
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a50')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | kmda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmda-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 204      |
| STAT1                     | 98      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 102     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012cc]:KMDA t6, t5, t4
      [0x800012d0]:sd t6, 768(sp)
 -- Signature Address: 0x80003640 Data: 0xFFFEB7EF00020000
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == 8
      - rs2_h1_val == 8
      - rs2_h0_val == 0
      - rs1_h3_val == -8193
      - rs1_h2_val == -2049
      - rs1_h1_val == 16384
      - rs1_h0_val == 32767




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001788]:KMDA t6, t5, t4
      [0x8000178c]:sd t6, 1120(sp)
 -- Signature Address: 0x800037a0 Data: 0xFFFFF6A500000044
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -513
      - rs2_h2_val == -17
      - rs1_h1_val == -17
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019a4]:KMDA t6, t5, t4
      [0x800019a8]:sd t6, 1264(sp)
 -- Signature Address: 0x80003830 Data: 0xFBFFE00100010012
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 64
      - rs2_h2_val == -4097
      - rs2_h1_val == -3
      - rs2_h0_val == 8
      - rs1_h3_val == 64
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a10]:KMDA t6, t5, t4
      [0x80001a14]:sd t6, 1296(sp)
 -- Signature Address: 0x80003850 Data: 0x0000531000001C06
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
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
      - rs2_h3_val == -2049
      - rs2_h0_val == 2
      - rs1_h2_val == -129
      - rs1_h1_val == -1025
      - rs1_h0_val == -513






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmda', 'rs1 : x7', 'rs2 : x7', 'rd : x1', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 32', 'rs2_h0_val == -16385', 'rs1_h1_val == 32', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800003d0]:KMDA ra, t2, t2
	-[0x800003d4]:sd ra, 0(fp)
Current Store : [0x800003d8] : sd t2, 8(fp) -- Store: [0x80003218]:0x00053FFF0020BFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h2_val == -4097', 'rs2_h1_val == -3', 'rs2_h0_val == 8', 'rs1_h3_val == 64', 'rs1_h2_val == -4097', 'rs1_h1_val == -3', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000400]:KMDA t5, t5, t5
	-[0x80000404]:sd t5, 16(fp)
Current Store : [0x80000408] : sd t5, 24(fp) -- Store: [0x80003228]:0x0100300100000049




Last Coverpoint : ['rs1 : x0', 'rs2 : x31', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -32768', 'rs2_h2_val == 16384', 'rs2_h1_val == -17', 'rs2_h0_val == -32768', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000438]:KMDA s8, zero, t6
	-[0x8000043c]:sd s8, 32(fp)
Current Store : [0x80000440] : sd zero, 40(fp) -- Store: [0x80003238]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x21', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == 512', 'rs1_h3_val == 32767', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80000474]:KMDA s5, s5, a6
	-[0x80000478]:sd s5, 48(fp)
Current Store : [0x8000047c] : sd s5, 56(fp) -- Store: [0x80003248]:0xFF7BFE08FFFFFFE8




Last Coverpoint : ['rs1 : x20', 'rs2 : x27', 'rd : x27', 'rs2 == rd != rs1', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -16385', 'rs2_h2_val == -513', 'rs2_h1_val == 8192', 'rs2_h0_val == -65', 'rs1_h3_val == -65', 'rs1_h2_val == -8193', 'rs1_h1_val == -33', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800004b4]:KMDA s11, s4, s11
	-[0x800004b8]:sd s11, 64(fp)
Current Store : [0x800004bc] : sd s4, 72(fp) -- Store: [0x80003258]:0xFFBFDFFFFFDFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x11', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -2', 'rs2_h1_val == 16', 'rs2_h0_val == -21846', 'rs1_h3_val == 128', 'rs1_h2_val == -2049', 'rs1_h1_val == 16', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800004f0]:KMDA a1, a0, a3
	-[0x800004f4]:sd a1, 80(fp)
Current Store : [0x800004f8] : sd a0, 88(fp) -- Store: [0x80003268]:0x0080F7FF00100800




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x16', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h2_val == -129', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80000524]:KMDA a6, s7, t0
	-[0x80000528]:sd a6, 96(fp)
Current Store : [0x8000052c] : sd s7, 104(fp) -- Store: [0x80003278]:0x0005BFFF0003FFF8




Last Coverpoint : ['rs1 : x31', 'rs2 : x28', 'rd : x19', 'rs2_h3_val == -21846', 'rs2_h2_val == 1', 'rs2_h1_val == -8193', 'rs2_h0_val == 4', 'rs1_h3_val == -4097', 'rs1_h2_val == 16', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000568]:KMDA s3, t6, t3
	-[0x8000056c]:sd s3, 112(fp)
Current Store : [0x80000570] : sd t6, 120(fp) -- Store: [0x80003288]:0xEFFF00100003FBFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x2', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 16', 'rs2_h0_val == 16', 'rs1_h3_val == -8193', 'rs1_h1_val == -513', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800005a0]:KMDA sp, t3, tp
	-[0x800005a4]:sd sp, 128(fp)
Current Store : [0x800005a8] : sd t3, 136(fp) -- Store: [0x80003298]:0xDFFFFFF6FDFFFFFB




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x7', 'rs2_h3_val == 32767', 'rs1_h2_val == -65', 'rs1_h1_val == -9', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800005d8]:KMDA t2, gp, s7
	-[0x800005dc]:sd t2, 144(fp)
Current Store : [0x800005e0] : sd gp, 152(fp) -- Store: [0x800032a8]:0x0040FFBFFFF7FDFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x20', 'rs2_h3_val == -8193', 'rs2_h2_val == 32', 'rs2_h1_val == 2', 'rs2_h0_val == -4097', 'rs1_h3_val == 1', 'rs1_h2_val == 32', 'rs1_h1_val == 4096', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000060c]:KMDA s4, t1, s3
	-[0x80000610]:sd s4, 160(fp)
Current Store : [0x80000614] : sd t1, 168(fp) -- Store: [0x800032b8]:0x0001002010000002




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x13', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -4097', 'rs2_h2_val == -33', 'rs1_h2_val == 64', 'rs1_h1_val == 256', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000063c]:KMDA a3, a5, s10
	-[0x80000640]:sd a3, 176(fp)
Current Store : [0x80000644] : sd a5, 184(fp) -- Store: [0x800032c8]:0x0001004001000010




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x0', 'rs2_h3_val == -2049', 'rs2_h0_val == 2', 'rs1_h2_val == -129', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000670]:KMDA zero, s10, s9
	-[0x80000674]:sd zero, 192(fp)
Current Store : [0x80000678] : sd s10, 200(fp) -- Store: [0x800032d8]:0xFFF6FF7FFBFFFDFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x20', 'rd : x14', 'rs2_h3_val == -1025', 'rs2_h2_val == -1', 'rs2_h1_val == 0', 'rs2_h0_val == -513', 'rs1_h3_val == -257', 'rs1_h1_val == -65', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800006a8]:KMDA a4, a6, s4
	-[0x800006ac]:sd a4, 208(fp)
Current Store : [0x800006b0] : sd a6, 216(fp) -- Store: [0x800032e8]:0xFEFFF7FFFFBF2000




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x4', 'rs2_h3_val == -513', 'rs2_h2_val == 0', 'rs2_h1_val == 4096', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x800006dc]:KMDA tp, a4, ra
	-[0x800006e0]:sd tp, 224(fp)
Current Store : [0x800006e4] : sd a4, 232(fp) -- Store: [0x800032f8]:0x00807FFF0000FFF8




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x9', 'rs2_h3_val == -257', 'rs2_h1_val == 16384', 'rs2_h0_val == 32767', 'rs1_h2_val == -17', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000718]:KMDA s1, a1, sp
	-[0x8000071c]:sd s1, 240(fp)
Current Store : [0x80000720] : sd a1, 248(fp) -- Store: [0x80003308]:0x0005FFEFFFBFDFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x10', 'rd : x26', 'rs2_h3_val == -129', 'rs2_h0_val == 8192', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x8000074c]:KMDA s10, sp, a0
	-[0x80000750]:sd s10, 256(fp)
Current Store : [0x80000754] : sd sp, 264(fp) -- Store: [0x80003318]:0xFFFAFFFCAAAADFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x31', 'rs2_h3_val == -65', 'rs1_h3_val == 2', 'rs1_h2_val == 1', 'rs1_h1_val == 21845', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000788]:KMDA t6, t0, a7
	-[0x8000078c]:sd t6, 272(fp)
Current Store : [0x80000790] : sd t0, 280(fp) -- Store: [0x80003328]:0x0002000155550040




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x5', 'rs2_h3_val == -33', 'rs2_h1_val == -257', 'rs1_h3_val == -16385', 'rs1_h2_val == -33', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800007bc]:KMDA t0, a2, s6
	-[0x800007c0]:sd t0, 288(fp)
Current Store : [0x800007c4] : sd a2, 296(fp) -- Store: [0x80003338]:0xBFFFFFDFFEFF0040




Last Coverpoint : ['rs1 : x4', 'rs2 : x11', 'rd : x18', 'rs2_h3_val == -17', 'rs2_h2_val == -1025', 'rs1_h2_val == 4096', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800007fc]:KMDA s2, tp, a1
	-[0x80000800]:sd s2, 0(sp)
Current Store : [0x80000804] : sd tp, 8(sp) -- Store: [0x80003348]:0xFFFA10000800FFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x12', 'rd : x6', 'rs2_h3_val == -9', 'rs2_h2_val == 8192', 'rs1_h3_val == 8', 'rs1_h2_val == -5', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000834]:KMDA t1, s11, a2
	-[0x80000838]:sd t1, 16(sp)
Current Store : [0x8000083c] : sd s11, 24(sp) -- Store: [0x80003358]:0x0008FFFB0000FFFD




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rd : x8', 'rs2_h3_val == -5', 'rs1_h2_val == 4', 'rs1_h1_val == -2', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000870]:KMDA fp, s6, gp
	-[0x80000874]:sd fp, 32(sp)
Current Store : [0x80000878] : sd s6, 40(sp) -- Store: [0x80003368]:0x00060004FFFEF7FF




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x28', 'rs2_h3_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == -129', 'rs1_h2_val == 2', 'rs1_h1_val == -8193', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008a4]:KMDA t3, s9, zero
	-[0x800008a8]:sd t3, 48(sp)
Current Store : [0x800008ac] : sd s9, 56(sp) -- Store: [0x80003378]:0xFF7F0002DFFF7FFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x21', 'rd : x17', 'rs2_h3_val == -2', 'rs2_h1_val == -16385', 'rs2_h0_val == 2048', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x800008e0]:KMDA a7, t4, s5
	-[0x800008e4]:sd a7, 64(sp)
Current Store : [0x800008e8] : sd t4, 72(sp) -- Store: [0x80003388]:0xFFF600081000FFF6




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rd : x25', 'rs2_h3_val == 16384', 'rs2_h1_val == 4', 'rs1_h2_val == 2048', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x8000091c]:KMDA s9, ra, s2
	-[0x80000920]:sd s9, 80(sp)
Current Store : [0x80000924] : sd ra, 88(sp) -- Store: [0x80003398]:0xFF7F0800BFFF0040




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x3', 'rs2_h3_val == 8192', 'rs1_h1_val == 16384', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000958]:KMDA gp, s3, t4
	-[0x8000095c]:sd gp, 96(sp)
Current Store : [0x80000960] : sd s3, 104(sp) -- Store: [0x800033a8]:0x0040FF7F40001000




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x22', 'rs2_h3_val == 4096', 'rs2_h2_val == -257', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80000994]:KMDA s6, s8, a4
	-[0x80000998]:sd s6, 112(sp)
Current Store : [0x8000099c] : sd s8, 120(sp) -- Store: [0x800033b8]:0x00060040FFFE1000




Last Coverpoint : ['rs1 : x18', 'rs2 : x24', 'rd : x29', 'rs2_h3_val == 2048', 'rs2_h0_val == 4096', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800009cc]:KMDA t4, s2, s8
	-[0x800009d0]:sd t4, 128(sp)
Current Store : [0x800009d4] : sd s2, 136(sp) -- Store: [0x800033c8]:0x0040FF7F0001FFFB




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x12', 'rs2_h3_val == 1024', 'rs2_h1_val == 32767', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000a00]:KMDA a2, a7, s1
	-[0x80000a04]:sd a2, 144(sp)
Current Store : [0x80000a08] : sd a7, 152(sp) -- Store: [0x800033d8]:0x0009DFFF7FFFFFF8




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x23', 'rs2_h3_val == 512', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000a40]:KMDA s7, s1, fp
	-[0x80000a44]:sd s7, 160(sp)
Current Store : [0x80000a48] : sd s1, 168(sp) -- Store: [0x800033e8]:0xC0000001F7FF0002




Last Coverpoint : ['rs1 : x8', 'rs2 : x15', 'rd : x10', 'rs2_h3_val == 256', 'rs1_h3_val == 32', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000a78]:KMDA a0, fp, a5
	-[0x80000a7c]:sd a0, 176(sp)
Current Store : [0x80000a80] : sd fp, 184(sp) -- Store: [0x800033f8]:0x0020FF7F0008FFFA




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x15', 'rs2_h3_val == 128', 'rs2_h2_val == 2048', 'rs1_h2_val == -513', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000aa8]:KMDA a5, a3, t1
	-[0x80000aac]:sd a5, 192(sp)
Current Store : [0x80000ab0] : sd a3, 200(sp) -- Store: [0x80003408]:0xFFF6FDFFFFFFFFF9




Last Coverpoint : ['rs2_h3_val == 32', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80000ae0]:KMDA t6, t5, t4
	-[0x80000ae4]:sd t6, 208(sp)
Current Store : [0x80000ae8] : sd t5, 216(sp) -- Store: [0x80003418]:0xFFF9FFFE00070006




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -2049', 'rs2_h1_val == -2049', 'rs2_h0_val == 32', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000b1c]:KMDA t6, t5, t4
	-[0x80000b20]:sd t6, 224(sp)
Current Store : [0x80000b24] : sd t5, 232(sp) -- Store: [0x80003428]:0xFEFF0002FFEF0006




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == 8', 'rs2_h0_val == 512', 'rs1_h2_val == -32768', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000b58]:KMDA t6, t5, t4
	-[0x80000b5c]:sd t6, 240(sp)
Current Store : [0x80000b60] : sd t5, 248(sp) -- Store: [0x80003438]:0x00028000FF7F0008




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 128', 'rs2_h1_val == -9', 'rs2_h0_val == -129', 'rs1_h3_val == 21845', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x80000b94]:KMDA t6, t5, t4
	-[0x80000b98]:sd t6, 256(sp)
Current Store : [0x80000b9c] : sd t5, 264(sp) -- Store: [0x80003448]:0x5555FFFF00200007




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h3_val == 4096', 'rs1_h2_val == 1024', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000bd0]:KMDA t6, t5, t4
	-[0x80000bd4]:sd t6, 272(sp)
Current Store : [0x80000bd8] : sd t5, 280(sp) -- Store: [0x80003458]:0x10000400FFFB0040




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80000c0c]:KMDA t6, t5, t4
	-[0x80000c10]:sd t6, 288(sp)
Current Store : [0x80000c14] : sd t5, 296(sp) -- Store: [0x80003468]:0x0002FFF7FFFD0006




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -21846', 'rs2_h1_val == -513', 'rs1_h3_val == -2049', 'rs1_h2_val == 8192', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c48]:KMDA t6, t5, t4
	-[0x80000c4c]:sd t6, 304(sp)
Current Store : [0x80000c50] : sd t5, 312(sp) -- Store: [0x80003478]:0xF7FF20008000FBFF




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h3_val == -17', 'rs1_h2_val == -3', 'rs1_h1_val == 8192', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000c7c]:KMDA t6, t5, t4
	-[0x80000c80]:sd t6, 320(sp)
Current Store : [0x80000c84] : sd t5, 328(sp) -- Store: [0x80003488]:0xFFEFFFFD20000080




Last Coverpoint : ['rs1_h3_val == -32768', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000cc0]:KMDA t6, t5, t4
	-[0x80000cc4]:sd t6, 336(sp)
Current Store : [0x80000cc8] : sd t5, 344(sp) -- Store: [0x80003498]:0x8000FFFA0400BFFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h2_val == 16384', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000cfc]:KMDA t6, t5, t4
	-[0x80000d00]:sd t6, 352(sp)
Current Store : [0x80000d04] : sd t5, 360(sp) -- Store: [0x800034a8]:0x800040000080DFFF




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000d30]:KMDA t6, t5, t4
	-[0x80000d34]:sd t6, 368(sp)
Current Store : [0x80000d38] : sd t5, 376(sp) -- Store: [0x800034b8]:0x0001FFFC0040F7FF




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h1_val == -129', 'rs2_h0_val == -1', 'rs1_h1_val == 4', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000d68]:KMDA t6, t5, t4
	-[0x80000d6c]:sd t6, 384(sp)
Current Store : [0x80000d70] : sd t5, 392(sp) -- Store: [0x800034c8]:0x0007000800040001




Last Coverpoint : ['rs2_h2_val == 32767', 'rs1_h1_val == 2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000da8]:KMDA t6, t5, t4
	-[0x80000dac]:sd t6, 400(sp)
Current Store : [0x80000db0] : sd t5, 408(sp) -- Store: [0x800034d8]:0xFFFC00000002FF7F




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000ddc]:KMDA t6, t5, t4
	-[0x80000de0]:sd t6, 416(sp)
Current Store : [0x80000de4] : sd t5, 424(sp) -- Store: [0x800034e8]:0x000800077FFFAAAA




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h3_val == 512', 'rs1_h1_val == 512', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e1c]:KMDA t6, t5, t4
	-[0x80000e20]:sd t6, 432(sp)
Current Store : [0x80000e24] : sd t5, 440(sp) -- Store: [0x800034f8]:0x0200000802005555




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e60]:KMDA t6, t5, t4
	-[0x80000e64]:sd t6, 448(sp)
Current Store : [0x80000e68] : sd t5, 456(sp) -- Store: [0x80003508]:0xDFFFFFF6FFBFEFFF




Last Coverpoint : ['rs1_h2_val == 128', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000e9c]:KMDA t6, t5, t4
	-[0x80000ea0]:sd t6, 464(sp)
Current Store : [0x80000ea4] : sd t5, 472(sp) -- Store: [0x80003518]:0x000500800008FEFF




Last Coverpoint : ['rs2_h1_val == -4097', 'rs2_h0_val == 16384', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000ed4]:KMDA t6, t5, t4
	-[0x80000ed8]:sd t6, 480(sp)
Current Store : [0x80000edc] : sd t5, 488(sp) -- Store: [0x80003528]:0x000500050004FFBF




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h1_val == -65', 'rs2_h0_val == -5', 'rs1_h3_val == -9', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000f08]:KMDA t6, t5, t4
	-[0x80000f0c]:sd t6, 496(sp)
Current Store : [0x80000f10] : sd t5, 504(sp) -- Store: [0x80003538]:0xFFF700020002FFDF




Last Coverpoint : ['rs1_h3_val == -5', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000f3c]:KMDA t6, t5, t4
	-[0x80000f40]:sd t6, 512(sp)
Current Store : [0x80000f44] : sd t5, 520(sp) -- Store: [0x80003548]:0xFFFBFFFE0200FFEF




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000f7c]:KMDA t6, t5, t4
	-[0x80000f80]:sd t6, 528(sp)
Current Store : [0x80000f84] : sd t5, 536(sp) -- Store: [0x80003558]:0x0005BFFF0400FFF7




Last Coverpoint : ['rs2_h3_val == -3', 'rs2_h2_val == -65', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000fb4]:KMDA t6, t5, t4
	-[0x80000fb8]:sd t6, 544(sp)
Current Store : [0x80000fbc] : sd t5, 552(sp) -- Store: [0x80003568]:0x0009FFDF10004000




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == 256', 'rs2_h0_val == 128', 'rs1_h2_val == -257', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000fe8]:KMDA t6, t5, t4
	-[0x80000fec]:sd t6, 560(sp)
Current Store : [0x80000ff0] : sd t5, 568(sp) -- Store: [0x80003578]:0xC000FEFF40000400




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80001020]:KMDA t6, t5, t4
	-[0x80001024]:sd t6, 576(sp)
Current Store : [0x80001028] : sd t5, 584(sp) -- Store: [0x80003588]:0x00054000FFFD0003




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x8000105c]:KMDA t6, t5, t4
	-[0x80001060]:sd t6, 592(sp)
Current Store : [0x80001064] : sd t5, 600(sp) -- Store: [0x80003598]:0x20002000FFFB0010




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h1_val == -2', 'rs2_h0_val == -8193', 'rs1_h3_val == -513']
Last Code Sequence : 
	-[0x80001090]:KMDA t6, t5, t4
	-[0x80001094]:sd t6, 608(sp)
Current Store : [0x80001098] : sd t5, 616(sp) -- Store: [0x800035a8]:0xFDFF0020FFFFFDFF




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h3_val == 16', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800010cc]:KMDA t6, t5, t4
	-[0x800010d0]:sd t6, 624(sp)
Current Store : [0x800010d4] : sd t5, 632(sp) -- Store: [0x800035b8]:0x001001000000FFFA




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001104]:KMDA t6, t5, t4
	-[0x80001108]:sd t6, 640(sp)
Current Store : [0x8000110c] : sd t5, 648(sp) -- Store: [0x800035c8]:0x001020000400FFBF




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -17', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x80001140]:KMDA t6, t5, t4
	-[0x80001144]:sd t6, 656(sp)
Current Store : [0x80001148] : sd t5, 664(sp) -- Store: [0x800035d8]:0xFFFD00051000FFFB




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80001170]:KMDA t6, t5, t4
	-[0x80001174]:sd t6, 672(sp)
Current Store : [0x80001178] : sd t5, 680(sp) -- Store: [0x800035e8]:0xDFFF000900101000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x800011ac]:KMDA t6, t5, t4
	-[0x800011b0]:sd t6, 688(sp)
Current Store : [0x800011b4] : sd t5, 696(sp) -- Store: [0x800035f8]:0xFDFFEFFF0001EFFF




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800011e0]:KMDA t6, t5, t4
	-[0x800011e4]:sd t6, 704(sp)
Current Store : [0x800011e8] : sd t5, 712(sp) -- Store: [0x80003608]:0x0000FFDFC000FFF9




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001214]:KMDA t6, t5, t4
	-[0x80001218]:sd t6, 720(sp)
Current Store : [0x8000121c] : sd t5, 728(sp) -- Store: [0x80003618]:0xBFFF00070005BFFF




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80001250]:KMDA t6, t5, t4
	-[0x80001254]:sd t6, 736(sp)
Current Store : [0x80001258] : sd t5, 744(sp) -- Store: [0x80003628]:0xEFFF00200007F7FF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x8000128c]:KMDA t6, t5, t4
	-[0x80001290]:sd t6, 752(sp)
Current Store : [0x80001294] : sd t5, 760(sp) -- Store: [0x80003638]:0x3FFFFFEFFFFE3FFF




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 8', 'rs2_h1_val == 8', 'rs2_h0_val == 0', 'rs1_h3_val == -8193', 'rs1_h2_val == -2049', 'rs1_h1_val == 16384', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800012cc]:KMDA t6, t5, t4
	-[0x800012d0]:sd t6, 768(sp)
Current Store : [0x800012d4] : sd t5, 776(sp) -- Store: [0x80003648]:0xDFFFF7FF40007FFF




Last Coverpoint : ['rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80001308]:KMDA t6, t5, t4
	-[0x8000130c]:sd t6, 784(sp)
Current Store : [0x80001310] : sd t5, 792(sp) -- Store: [0x80003658]:0xAAAA7FFF00800040




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001334]:KMDA t6, t5, t4
	-[0x80001338]:sd t6, 800(sp)
Current Store : [0x8000133c] : sd t5, 808(sp) -- Store: [0x80003668]:0x0001FFFA00800200




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001370]:KMDA t6, t5, t4
	-[0x80001374]:sd t6, 816(sp)
Current Store : [0x80001378] : sd t5, 824(sp) -- Store: [0x80003678]:0xBFFFFFEF00400100




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x800013ac]:KMDA t6, t5, t4
	-[0x800013b0]:sd t6, 832(sp)
Current Store : [0x800013b4] : sd t5, 840(sp) -- Store: [0x80003688]:0x0400FEFF0020FEFF




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x800013d4]:KMDA t6, t5, t4
	-[0x800013d8]:sd t6, 848(sp)
Current Store : [0x800013dc] : sd t5, 856(sp) -- Store: [0x80003698]:0x0008200000200006




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x80001410]:KMDA t6, t5, t4
	-[0x80001414]:sd t6, 864(sp)
Current Store : [0x80001418] : sd t5, 872(sp) -- Store: [0x800036a8]:0x0100F7FFFFBFFFF9




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80001444]:KMDA t6, t5, t4
	-[0x80001448]:sd t6, 880(sp)
Current Store : [0x8000144c] : sd t5, 888(sp) -- Store: [0x800036b8]:0x0004002002000009




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80001478]:KMDA t6, t5, t4
	-[0x8000147c]:sd t6, 896(sp)
Current Store : [0x80001480] : sd t5, 904(sp) -- Store: [0x800036c8]:0xFDFFFFF8DFFFFEFF




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x800014b4]:KMDA t6, t5, t4
	-[0x800014b8]:sd t6, 912(sp)
Current Store : [0x800014bc] : sd t5, 920(sp) -- Store: [0x800036d8]:0xFFFF0400FBFF0080




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x800014f0]:KMDA t6, t5, t4
	-[0x800014f4]:sd t6, 928(sp)
Current Store : [0x800014f8] : sd t5, 936(sp) -- Store: [0x800036e8]:0x0400AAAAFFF7EFFF




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x8000152c]:KMDA t6, t5, t4
	-[0x80001530]:sd t6, 944(sp)
Current Store : [0x80001534] : sd t5, 952(sp) -- Store: [0x800036f8]:0x00045555FFF8FFFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 4096']
Last Code Sequence : 
	-[0x80001560]:KMDA t6, t5, t4
	-[0x80001564]:sd t6, 960(sp)
Current Store : [0x80001568] : sd t5, 968(sp) -- Store: [0x80003708]:0xFFF7FFF620000010




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80001598]:KMDA t6, t5, t4
	-[0x8000159c]:sd t6, 976(sp)
Current Store : [0x800015a0] : sd t5, 984(sp) -- Store: [0x80003718]:0xFFFBFBFF00090200




Last Coverpoint : ['rs2_h2_val == 4']
Last Code Sequence : 
	-[0x800015cc]:KMDA t6, t5, t4
	-[0x800015d0]:sd t6, 992(sp)
Current Store : [0x800015d4] : sd t5, 1000(sp) -- Store: [0x80003728]:0xFFF9FFEFFDFFFFF6




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80001608]:KMDA t6, t5, t4
	-[0x8000160c]:sd t6, 1008(sp)
Current Store : [0x80001610] : sd t5, 1016(sp) -- Store: [0x80003738]:0x020000013FFF0010




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001644]:KMDA t6, t5, t4
	-[0x80001648]:sd t6, 1024(sp)
Current Store : [0x8000164c] : sd t5, 1032(sp) -- Store: [0x80003748]:0x001002007FFF5555




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80001674]:KMDA t6, t5, t4
	-[0x80001678]:sd t6, 1040(sp)
Current Store : [0x8000167c] : sd t5, 1048(sp) -- Store: [0x80003758]:0xFFF9FFFEBFFF0020




Last Coverpoint : ['rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x800016ac]:KMDA t6, t5, t4
	-[0x800016b0]:sd t6, 1056(sp)
Current Store : [0x800016b4] : sd t5, 1064(sp) -- Store: [0x80003768]:0xFBFF00800006C000




Last Coverpoint : ['rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800016e8]:KMDA t6, t5, t4
	-[0x800016ec]:sd t6, 1072(sp)
Current Store : [0x800016f0] : sd t5, 1080(sp) -- Store: [0x80003778]:0x3FFFFBFFFFF70006




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001718]:KMDA t6, t5, t4
	-[0x8000171c]:sd t6, 1088(sp)
Current Store : [0x80001720] : sd t5, 1096(sp) -- Store: [0x80003788]:0x0020000102000004




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x80001750]:KMDA t6, t5, t4
	-[0x80001754]:sd t6, 1104(sp)
Current Store : [0x80001758] : sd t5, 1112(sp) -- Store: [0x80003798]:0xF7FF008000060010




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -513', 'rs2_h2_val == -17', 'rs1_h1_val == -17', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001788]:KMDA t6, t5, t4
	-[0x8000178c]:sd t6, 1120(sp)
Current Store : [0x80001790] : sd t5, 1128(sp) -- Store: [0x800037a8]:0x0005FFF6FFEF0000




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800017c4]:KMDA t6, t5, t4
	-[0x800017c8]:sd t6, 1136(sp)
Current Store : [0x800017cc] : sd t5, 1144(sp) -- Store: [0x800037b8]:0x3FFFFFDFEFFFEFFF




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80001804]:KMDA t6, t5, t4
	-[0x80001808]:sd t6, 1152(sp)
Current Store : [0x8000180c] : sd t5, 1160(sp) -- Store: [0x800037c8]:0x00090002FFBF0007




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001850]:KMDA t6, t5, t4
	-[0x80001854]:sd t6, 1168(sp)
Current Store : [0x80001858] : sd t5, 1176(sp) -- Store: [0x800037d8]:0xC0003FFFDFFF0001




Last Coverpoint : ['rs1_h3_val == -2']
Last Code Sequence : 
	-[0x8000188c]:KMDA t6, t5, t4
	-[0x80001890]:sd t6, 1184(sp)
Current Store : [0x80001894] : sd t5, 1192(sp) -- Store: [0x800037e8]:0xFFFE00080002FF7F




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800018c8]:KMDA t6, t5, t4
	-[0x800018cc]:sd t6, 1200(sp)
Current Store : [0x800018d0] : sd t5, 1208(sp) -- Store: [0x800037f8]:0xFFF7000200030003




Last Coverpoint : ['rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80001904]:KMDA t6, t5, t4
	-[0x80001908]:sd t6, 1216(sp)
Current Store : [0x8000190c] : sd t5, 1224(sp) -- Store: [0x80003808]:0x4000F7FFC000FFFD




Last Coverpoint : ['rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x8000193c]:KMDA t6, t5, t4
	-[0x80001940]:sd t6, 1232(sp)
Current Store : [0x80001944] : sd t5, 1240(sp) -- Store: [0x80003818]:0x0800FFF600030003




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001974]:KMDA t6, t5, t4
	-[0x80001978]:sd t6, 1248(sp)
Current Store : [0x8000197c] : sd t5, 1256(sp) -- Store: [0x80003828]:0xFFDFFF7F55558000




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h2_val == -4097', 'rs2_h1_val == -3', 'rs2_h0_val == 8', 'rs1_h3_val == 64', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800019a4]:KMDA t6, t5, t4
	-[0x800019a8]:sd t6, 1264(sp)
Current Store : [0x800019ac] : sd t5, 1272(sp) -- Store: [0x80003838]:0x00403FFFFFFA2000




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800019dc]:KMDA t6, t5, t4
	-[0x800019e0]:sd t6, 1280(sp)
Current Store : [0x800019e4] : sd t5, 1288(sp) -- Store: [0x80003848]:0xBFFF40000200FFFE




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -2049', 'rs2_h0_val == 2', 'rs1_h2_val == -129', 'rs1_h1_val == -1025', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80001a10]:KMDA t6, t5, t4
	-[0x80001a14]:sd t6, 1296(sp)
Current Store : [0x80001a18] : sd t5, 1304(sp) -- Store: [0x80003858]:0xFFF6FF7FFBFFFDFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001a44]:KMDA t6, t5, t4
	-[0x80001a48]:sd t6, 1312(sp)
Current Store : [0x80001a4c] : sd t5, 1320(sp) -- Store: [0x80003868]:0xFF7F0002DFFF7FFF





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

|s.no|            signature             |                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                      |                                 code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0FFF801A10008401|- opcode : kmda<br> - rs1 : x7<br> - rs2 : x7<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 32<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 32<br> - rs1_h0_val == -16385<br> |[0x800003d0]:KMDA ra, t2, t2<br> [0x800003d4]:sd ra, 0(fp)<br>        |
|   2|[0x80003220]<br>0x0100300100000049|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 64<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -3<br> - rs2_h0_val == 8<br> - rs1_h3_val == 64<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8<br>                                                                                              |[0x80000400]:KMDA t5, t5, t5<br> [0x80000404]:sd t5, 16(fp)<br>       |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -17<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                |[0x80000438]:KMDA s8, zero, t6<br> [0x8000043c]:sd s8, 32(fp)<br>     |
|   4|[0x80003240]<br>0xFF7BFE08FFFFFFE8|- rs1 : x21<br> - rs2 : x16<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h2_val == 512<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                             |[0x80000474]:KMDA s5, s5, a6<br> [0x80000478]:sd s5, 48(fp)<br>       |
|   5|[0x80003250]<br>0x00506242FFFBE041|- rs1 : x20<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -513<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -65<br> - rs1_h3_val == -65<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -33<br> - rs1_h0_val == -1<br>                                                                                                                            |[0x800004b4]:KMDA s11, s4, s11<br> [0x800004b8]:sd s11, 64(fp)<br>    |
|   6|[0x80003260]<br>0x00001482FD555100|- rs1 : x10<br> - rs2 : x13<br> - rd : x11<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == -2<br> - rs2_h1_val == 16<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 128<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 16<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                      |[0x800004f0]:KMDA a1, a0, a3<br> [0x800004f4]:sd a1, 80(fp)<br>       |
|   7|[0x80003270]<br>0x00204059FFFFFFDD|- rs1 : x23<br> - rs2 : x5<br> - rd : x16<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h2_val == -129<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000524]:KMDA a6, s7, t0<br> [0x80000528]:sd a6, 96(fp)<br>       |
|   8|[0x80003280]<br>0x0555B566FFFF8FF9|- rs1 : x31<br> - rs2 : x28<br> - rd : x19<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 1<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 4<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 16<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                             |[0x80000568]:KMDA s3, t6, t3<br> [0x8000056c]:sd s3, 112(fp)<br>      |
|   9|[0x80003290]<br>0xF5550A0BFFBFDFB0|- rs1 : x28<br> - rs2 : x4<br> - rd : x2<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 16<br> - rs2_h0_val == 16<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -513<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                 |[0x800005a0]:KMDA sp, t3, tp<br> [0x800005a4]:sd sp, 128(fp)<br>      |
|  10|[0x800032a0]<br>0x0020820101007EE0|- rs1 : x3<br> - rs2 : x23<br> - rd : x7<br> - rs2_h3_val == 32767<br> - rs1_h2_val == -65<br> - rs1_h1_val == -9<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                         |[0x800005d8]:KMDA t2, gp, s7<br> [0x800005dc]:sd t2, 144(fp)<br>      |
|  11|[0x800032b0]<br>0xFFFFE3FFFFFFFFFE|- rs1 : x6<br> - rs2 : x19<br> - rd : x20<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 32<br> - rs2_h1_val == 2<br> - rs2_h0_val == -4097<br> - rs1_h3_val == 1<br> - rs1_h2_val == 32<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                             |[0x8000060c]:KMDA s4, t1, s3<br> [0x80000610]:sd s4, 160(fp)<br>      |
|  12|[0x800032c0]<br>0xFFFFE7BFFFF7EF00|- rs1 : x15<br> - rs2 : x26<br> - rd : x13<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -33<br> - rs1_h2_val == 64<br> - rs1_h1_val == 256<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                         |[0x8000063c]:KMDA a3, a5, s10<br> [0x80000640]:sd a3, 176(fp)<br>     |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x0<br> - rs2_h3_val == -2049<br> - rs2_h0_val == 2<br> - rs1_h2_val == -129<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000670]:KMDA zero, s10, s9<br> [0x80000674]:sd zero, 192(fp)<br> |
|  14|[0x800032e0]<br>0x00040D02FFBFE000|- rs1 : x16<br> - rs2 : x20<br> - rd : x14<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -1<br> - rs2_h1_val == 0<br> - rs2_h0_val == -513<br> - rs1_h3_val == -257<br> - rs1_h1_val == -65<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                               |[0x800006a8]:KMDA a4, a6, s4<br> [0x800006ac]:sd a4, 208(fp)<br>      |
|  15|[0x800032f0]<br>0xFFFEFF80FFFFFFF0|- rs1 : x14<br> - rs2 : x1<br> - rd : x4<br> - rs2_h3_val == -513<br> - rs2_h2_val == 0<br> - rs2_h1_val == 4096<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                         |[0x800006dc]:KMDA tp, a4, ra<br> [0x800006e0]:sd tp, 224(fp)<br>      |
|  16|[0x80003300]<br>0x00001D0CEFEF6001|- rs1 : x11<br> - rs2 : x2<br> - rd : x9<br> - rs2_h3_val == -257<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 32767<br> - rs1_h2_val == -17<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                            |[0x80000718]:KMDA s1, a1, sp<br> [0x8000071c]:sd s1, 240(fp)<br>      |
|  17|[0x80003310]<br>0x00010306FBFF3554|- rs1 : x2<br> - rs2 : x10<br> - rd : x26<br> - rs2_h3_val == -129<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                             |[0x8000074c]:KMDA s10, sp, a0<br> [0x80000750]:sd s10, 256(fp)<br>    |
|  18|[0x80003320]<br>0xFFFFFEFD000101BF|- rs1 : x5<br> - rs2 : x17<br> - rd : x31<br> - rs2_h3_val == -65<br> - rs1_h3_val == 2<br> - rs1_h2_val == 1<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x80000788]:KMDA t6, t0, a7<br> [0x8000078c]:sd t6, 272(fp)<br>      |
|  19|[0x80003330]<br>0x00083C010000FF81|- rs1 : x12<br> - rs2 : x22<br> - rd : x5<br> - rs2_h3_val == -33<br> - rs2_h1_val == -257<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -33<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                             |[0x800007bc]:KMDA t0, a2, s6<br> [0x800007c0]:sd t0, 288(fp)<br>      |
|  20|[0x80003340]<br>0xFFBFF066FFFFAFFE|- rs1 : x4<br> - rs2 : x11<br> - rd : x18<br> - rs2_h3_val == -17<br> - rs2_h2_val == -1025<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                      |[0x800007fc]:KMDA s2, tp, a1<br> [0x80000800]:sd s2, 0(sp)<br>        |
|  21|[0x80003350]<br>0xFFFF5FB8FFFFA000|- rs1 : x27<br> - rs2 : x12<br> - rd : x6<br> - rs2_h3_val == -9<br> - rs2_h2_val == 8192<br> - rs1_h3_val == 8<br> - rs1_h2_val == -5<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                      |[0x80000834]:KMDA t1, s11, a2<br> [0x80000838]:sd t1, 16(sp)<br>      |
|  22|[0x80003360]<br>0xFFFFFFDAFFFF81F2|- rs1 : x22<br> - rs2 : x3<br> - rd : x8<br> - rs2_h3_val == -5<br> - rs1_h2_val == 4<br> - rs1_h1_val == -2<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000870]:KMDA fp, s6, gp<br> [0x80000874]:sd fp, 32(sp)<br>       |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x28<br> - rs2_h3_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -129<br> - rs1_h2_val == 2<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                           |[0x800008a4]:KMDA t3, s9, zero<br> [0x800008a8]:sd t3, 48(sp)<br>     |
|  24|[0x80003380]<br>0xFFFFFFDCFBFFA000|- rs1 : x29<br> - rs2 : x21<br> - rd : x17<br> - rs2_h3_val == -2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 2048<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                        |[0x800008e0]:KMDA a7, t4, s5<br> [0x800008e4]:sd a7, 64(sp)<br>       |
|  25|[0x80003390]<br>0xFFE00800FFFF03FC|- rs1 : x1<br> - rs2 : x18<br> - rd : x25<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 4<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000091c]:KMDA s9, ra, s2<br> [0x80000920]:sd s9, 80(sp)<br>       |
|  26|[0x800033a0]<br>0x0007F7F00EFFB000|- rs1 : x19<br> - rs2 : x29<br> - rd : x3<br> - rs2_h3_val == 8192<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000958]:KMDA gp, s3, t4<br> [0x8000095c]:sd gp, 96(sp)<br>       |
|  27|[0x800033b0]<br>0x00001FC002000802|- rs1 : x24<br> - rs2 : x14<br> - rd : x22<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -257<br> - rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000994]:KMDA s6, s8, a4<br> [0x80000998]:sd s6, 112(sp)<br>      |
|  28|[0x800033c0]<br>0x00020387FFFFAFF6|- rs1 : x18<br> - rs2 : x24<br> - rd : x29<br> - rs2_h3_val == 2048<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x800009cc]:KMDA t4, s2, s8<br> [0x800009d0]:sd t4, 128(sp)<br>      |
|  29|[0x800033d0]<br>0xFFC022004001AAB1|- rs1 : x17<br> - rs2 : x9<br> - rd : x12<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000a00]:KMDA a2, a7, s1<br> [0x80000a04]:sd a2, 144(sp)<br>      |
|  30|[0x800033e0]<br>0xFF80000500004C08|- rs1 : x9<br> - rs2 : x8<br> - rd : x23<br> - rs2_h3_val == 512<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a40]:KMDA s7, s1, fp<br> [0x80000a44]:sd s7, 160(sp)<br>      |
|  31|[0x800033f0]<br>0x00001F7FFFFF4000|- rs1 : x8<br> - rs2 : x15<br> - rd : x10<br> - rs2_h3_val == 256<br> - rs1_h3_val == 32<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000a78]:KMDA a0, fp, a5<br> [0x80000a7c]:sd a0, 176(sp)<br>      |
|  32|[0x80003400]<br>0xFFEFF300FFFFFF8B|- rs1 : x13<br> - rs2 : x6<br> - rd : x15<br> - rs2_h3_val == 128<br> - rs2_h2_val == 2048<br> - rs1_h2_val == -513<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000aa8]:KMDA a5, a3, t1<br> [0x80000aac]:sd a5, 192(sp)<br>      |
|  33|[0x80003410]<br>0xFFFF7F20FFFFA01D|- rs2_h3_val == 32<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ae0]:KMDA t6, t5, t4<br> [0x80000ae4]:sd t6, 208(sp)<br>      |
|  34|[0x80003420]<br>0xFFFFDFEE000088D1|- rs2_h3_val == 16<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 32<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000b1c]:KMDA t6, t5, t4<br> [0x80000b20]:sd t6, 224(sp)<br>      |
|  35|[0x80003430]<br>0xFFFC0010FFBF9081|- rs2_h3_val == 8<br> - rs2_h2_val == 8<br> - rs2_h0_val == 512<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000b58]:KMDA t6, t5, t4<br> [0x80000b5c]:sd t6, 240(sp)<br>      |
|  36|[0x80003440]<br>0x000154D4FFFFFB59|- rs2_h3_val == 4<br> - rs2_h2_val == 128<br> - rs2_h1_val == -9<br> - rs2_h0_val == -129<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000b94]:KMDA t6, t5, t4<br> [0x80000b98]:sd t6, 256(sp)<br>      |
|  37|[0x80003450]<br>0xFFFFD000FFFFBF20|- rs2_h0_val == -257<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bd0]:KMDA t6, t5, t4<br> [0x80000bd4]:sd t6, 272(sp)<br>      |
|  38|[0x80003460]<br>0xFFFFFFC700023FFD|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c0c]:KMDA t6, t5, t4<br> [0x80000c10]:sd t6, 288(sp)<br>      |
|  39|[0x80003470]<br>0xF55537FF01006FFC|- rs2_h3_val == 1<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -513<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                |[0x80000c48]:KMDA t6, t5, t4<br> [0x80000c4c]:sd t6, 304(sp)<br>      |
|  40|[0x80003480]<br>0xFFFA556100201F80|- rs2_h1_val == 1<br> - rs1_h3_val == -17<br> - rs1_h2_val == -3<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x80000c7c]:KMDA t6, t5, t4<br> [0x80000c80]:sd t6, 320(sp)<br>      |
|  41|[0x80003490]<br>0xFC00000600805A01|- rs1_h3_val == -32768<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000cc0]:KMDA t6, t5, t4<br> [0x80000cc4]:sd t6, 336(sp)<br>      |
|  42|[0x800034a0]<br>0x1554C000EFFFA481|- rs2_h2_val == 21845<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000cfc]:KMDA t6, t5, t4<br> [0x80000d00]:sd t6, 352(sp)<br>      |
|  43|[0x800034b0]<br>0x00020000FF7FF180|- rs2_h2_val == -32768<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d30]:KMDA t6, t5, t4<br> [0x80000d34]:sd t6, 368(sp)<br>      |
|  44|[0x800034c0]<br>0x00000DE8FFFFFDFB|- rs2_h2_val == -3<br> - rs2_h1_val == -129<br> - rs2_h0_val == -1<br> - rs1_h1_val == 4<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d68]:KMDA t6, t5, t4<br> [0x80000d6c]:sd t6, 384(sp)<br>      |
|  45|[0x800034d0]<br>0xFFFF000400007DFA|- rs2_h2_val == 32767<br> - rs1_h1_val == 2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000da8]:KMDA t6, t5, t4<br> [0x80000dac]:sd t6, 400(sp)<br>      |
|  46|[0x800034e0]<br>0xFFFFFEF12AA78007|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ddc]:KMDA t6, t5, t4<br> [0x80000de0]:sd t6, 416(sp)<br>      |
|  47|[0x800034f0]<br>0xFFFEFDB8FFFE9AAC|- rs2_h2_val == -9<br> - rs1_h3_val == 512<br> - rs1_h1_val == 512<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e1c]:KMDA t6, t5, t4<br> [0x80000e20]:sd t6, 432(sp)<br>      |
|  48|[0x80003500]<br>0x0800650BFFC20441|- rs2_h0_val == 1024<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e60]:KMDA t6, t5, t4<br> [0x80000e64]:sd t6, 448(sp)<br>      |
|  49|[0x80003510]<br>0xFFFF80C0FFFCFDF8|- rs1_h2_val == 128<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e9c]:KMDA t6, t5, t4<br> [0x80000ea0]:sd t6, 464(sp)<br>      |
|  50|[0x80003520]<br>0xFFFFFE1BFFEF7FFC|- rs2_h1_val == -4097<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000ed4]:KMDA t6, t5, t4<br> [0x80000ed8]:sd t6, 480(sp)<br>      |
|  51|[0x80003530]<br>0x0000025A00000023|- rs2_h2_val == 256<br> - rs2_h1_val == -65<br> - rs2_h0_val == -5<br> - rs1_h3_val == -9<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x80000f08]:KMDA t6, t5, t4<br> [0x80000f0c]:sd t6, 496(sp)<br>      |
|  52|[0x80003540]<br>0xFFFFFFD4FFFDFE77|- rs1_h3_val == -5<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f3c]:KMDA t6, t5, t4<br> [0x80000f40]:sd t6, 512(sp)<br>      |
|  53|[0x80003550]<br>0x00001FFE015552E0|- rs2_h1_val == 21845<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f7c]:KMDA t6, t5, t4<br> [0x80000f80]:sd t6, 528(sp)<br>      |
|  54|[0x80003560]<br>0x00000846EAA97000|- rs2_h3_val == -3<br> - rs2_h2_val == -65<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000fb4]:KMDA t6, t5, t4<br> [0x80000fb8]:sd t6, 544(sp)<br>      |
|  55|[0x80003570]<br>0x00013DFE00420000|- rs2_h2_val == 2<br> - rs2_h1_val == 256<br> - rs2_h0_val == 128<br> - rs1_h2_val == -257<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000fe8]:KMDA t6, t5, t4<br> [0x80000fec]:sd t6, 560(sp)<br>      |
|  56|[0x80003580]<br>0xEFFFBFD3FFFFD000|- rs2_h2_val == -16385<br> - rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001020]:KMDA t6, t5, t4<br> [0x80001024]:sd t6, 576(sp)<br>      |
|  57|[0x80003590]<br>0x0012000000055555|- rs2_h0_val == 21845<br> - rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000105c]:KMDA t6, t5, t4<br> [0x80001060]:sd t6, 592(sp)<br>      |
|  58|[0x800035a0]<br>0xFFF7FB6000402203|- rs2_h2_val == -5<br> - rs2_h1_val == -2<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001090]:KMDA t6, t5, t4<br> [0x80001094]:sd t6, 608(sp)<br>      |
|  59|[0x800035b0]<br>0x0000FFD000003006|- rs2_h0_val == -2049<br> - rs1_h3_val == 16<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800010cc]:KMDA t6, t5, t4<br> [0x800010d0]:sd t6, 624(sp)<br>      |
|  60|[0x800035c0]<br>0xFFFF7FA000010441|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001104]:KMDA t6, t5, t4<br> [0x80001108]:sd t6, 640(sp)<br>      |
|  61|[0x800035d0]<br>0x000002FE00008055|- rs2_h1_val == 8<br> - rs2_h0_val == -17<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001140]:KMDA t6, t5, t4<br> [0x80001144]:sd t6, 656(sp)<br>      |
|  62|[0x800035e0]<br>0xFFFE0038FFFB6FF0|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001170]:KMDA t6, t5, t4<br> [0x80001174]:sd t6, 672(sp)<br>      |
|  63|[0x800035f0]<br>0xFFFF0FF800002FFC|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800011ac]:KMDA t6, t5, t4<br> [0x800011b0]:sd t6, 688(sp)<br>      |
|  64|[0x80003600]<br>0x00000063F000400E|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800011e0]:KMDA t6, t5, t4<br> [0x800011e4]:sd t6, 704(sp)<br>      |
|  65|[0x80003610]<br>0x0001C000FFBFFECE|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001214]:KMDA t6, t5, t4<br> [0x80001218]:sd t6, 720(sp)<br>      |
|  66|[0x80003620]<br>0x00010FB1FFFDFF8F|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001250]:KMDA t6, t5, t4<br> [0x80001254]:sd t6, 736(sp)<br>      |
|  67|[0x80003630]<br>0x0100049100004001|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000128c]:KMDA t6, t5, t4<br> [0x80001290]:sd t6, 752(sp)<br>      |
|  68|[0x80003650]<br>0xE2AA6557FFFFEDC0|- rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001308]:KMDA t6, t5, t4<br> [0x8000130c]:sd t6, 784(sp)<br>      |
|  69|[0x80003660]<br>0x00000027003FF380|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001334]:KMDA t6, t5, t4<br> [0x80001338]:sd t6, 800(sp)<br>      |
|  70|[0x80003670]<br>0xFFFC1562005D5500|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001370]:KMDA t6, t5, t4<br> [0x80001374]:sd t6, 816(sp)<br>      |
|  71|[0x80003680]<br>0x00007AFB00010261|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013ac]:KMDA t6, t5, t4<br> [0x800013b0]:sd t6, 832(sp)<br>      |
|  72|[0x80003690]<br>0xFBFFE02800004000|- rs2_h2_val == -8193<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013d4]:KMDA t6, t5, t4<br> [0x800013d8]:sd t6, 848(sp)<br>      |
|  73|[0x800036a0]<br>0xFFDFBB000001C1CE|- rs2_h2_val == 1024<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001410]:KMDA t6, t5, t4<br> [0x80001414]:sd t6, 864(sp)<br>      |
|  74|[0x800036b0]<br>0x000100C0FFF80700|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001444]:KMDA t6, t5, t4<br> [0x80001448]:sd t6, 880(sp)<br>      |
|  75|[0x800036c0]<br>0xFFDFF0880002A192|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001478]:KMDA t6, t5, t4<br> [0x8000147c]:sd t6, 896(sp)<br>      |
|  76|[0x800036d0]<br>0x00FFFF800032B081|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800014b4]:KMDA t6, t5, t4<br> [0x800014b8]:sd t6, 912(sp)<br>      |
|  77|[0x800036e0]<br>0xFFFFFC00007F8801|- rs2_h3_val == -1<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800014f0]:KMDA t6, t5, t4<br> [0x800014f4]:sd t6, 928(sp)<br>      |
|  78|[0x800036f0]<br>0xFFFF00190000002A|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000152c]:KMDA t6, t5, t4<br> [0x80001530]:sd t6, 944(sp)<br>      |
|  79|[0x80003700]<br>0xFFFF5FEEF7FFE040|- rs2_h3_val == 2<br> - rs2_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001560]:KMDA t6, t5, t4<br> [0x80001564]:sd t6, 960(sp)<br>      |
|  80|[0x80003710]<br>0x00000433FF000240|- rs2_h1_val == 64<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001598]:KMDA t6, t5, t4<br> [0x8000159c]:sd t6, 976(sp)<br>      |
|  81|[0x80003720]<br>0xFFFFF8BC0000080E|- rs2_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800015cc]:KMDA t6, t5, t4<br> [0x800015d0]:sd t6, 992(sp)<br>      |
|  82|[0x80003730]<br>0xFFFFB2AAEAAAD506|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001608]:KMDA t6, t5, t4<br> [0x8000160c]:sd t6, 1008(sp)<br>     |
|  83|[0x80003740]<br>0x00000A10F8028FFE|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001644]:KMDA t6, t5, t4<br> [0x80001648]:sd t6, 1024(sp)<br>     |
|  84|[0x80003750]<br>0x000001C5F7FFE000|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001674]:KMDA t6, t5, t4<br> [0x80001678]:sd t6, 1040(sp)<br>     |
|  85|[0x80003760]<br>0xFF77DF8000204600|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016ac]:KMDA t6, t5, t4<br> [0x800016b0]:sd t6, 1056(sp)<br>     |
|  86|[0x80003770]<br>0x000123F400000039|- rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800016e8]:KMDA t6, t5, t4<br> [0x800016ec]:sd t6, 1072(sp)<br>     |
|  87|[0x80003780]<br>0x00077FE0FFFF0200|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001718]:KMDA t6, t5, t4<br> [0x8000171c]:sd t6, 1088(sp)<br>     |
|  88|[0x80003790]<br>0x00080681FFF50000|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001750]:KMDA t6, t5, t4<br> [0x80001754]:sd t6, 1104(sp)<br>     |
|  89|[0x800037b0]<br>0x00FFFCC6FDFFCFFF|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017c4]:KMDA t6, t5, t4<br> [0x800017c8]:sd t6, 1136(sp)<br>     |
|  90|[0x800037c0]<br>0xFFFB7F7EFFFC3800|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001804]:KMDA t6, t5, t4<br> [0x80001808]:sd t6, 1152(sp)<br>     |
|  91|[0x800037d0]<br>0x27FFE000FF7FA6AA|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001850]:KMDA t6, t5, t4<br> [0x80001854]:sd t6, 1168(sp)<br>     |
|  92|[0x800037e0]<br>0x0000002AFFFDFC02|- rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000188c]:KMDA t6, t5, t4<br> [0x80001890]:sd t6, 1184(sp)<br>     |
|  93|[0x800037f0]<br>0xFFFFFFE10000C17D|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018c8]:KMDA t6, t5, t4<br> [0x800018cc]:sd t6, 1200(sp)<br>     |
|  94|[0x80003800]<br>0x0001C00004004003|- rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001904]:KMDA t6, t5, t4<br> [0x80001908]:sd t6, 1216(sp)<br>     |
|  95|[0x80003810]<br>0xFFFFF14AFFFE9800|- rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000193c]:KMDA t6, t5, t4<br> [0x80001940]:sd t6, 1232(sp)<br>     |
|  96|[0x80003820]<br>0xFFDFBFDC200B2AA0|- rs1_h0_val == -32768<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001974]:KMDA t6, t5, t4<br> [0x80001978]:sd t6, 1248(sp)<br>     |
|  97|[0x80003840]<br>0x300080000000DE00|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800019dc]:KMDA t6, t5, t4<br> [0x800019e0]:sd t6, 1280(sp)<br>     |
|  98|[0x80003860]<br>0x0000020303EFC022|- rs2_h2_val == 64<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001a44]:KMDA t6, t5, t4<br> [0x80001a48]:sd t6, 1312(sp)<br>     |
