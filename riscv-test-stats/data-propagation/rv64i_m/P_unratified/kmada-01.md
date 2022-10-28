
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b00')]      |
| SIG_REGION                | [('0x80003210', '0x800038a0', '210 dwords')]      |
| COV_LABELS                | kmada      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmada-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 210      |
| STAT1                     | 103      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 105     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013d8]:KMADA t6, t5, t4
      [0x800013dc]:sd t6, 864(gp)
 -- Signature Address: 0x80003690 Data: 0x59C5DB80ADED81CD
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -3
      - rs2_h0_val == 0
      - rs1_h3_val == -8193
      - rs1_h2_val == 32767
      - rs1_h1_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001af4]:KMADA t6, t5, t4
      [0x80001af8]:sd t6, 1376(gp)
 -- Signature Address: 0x80003890 Data: 0x59E6C7E78001DBF7
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -65
      - rs2_h1_val == -1025
      - rs1_h3_val == -3
      - rs1_h2_val == -9






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmada', 'rs1 : x3', 'rs2 : x3', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -21846', 'rs2_h0_val == 16384', 'rs1_h1_val == -21846', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800003cc]:KMADA a0, gp, gp
	-[0x800003d0]:sd a0, 0(t0)
Current Store : [0x800003d4] : sd gp, 8(t0) -- Store: [0x80003218]:0x0006FFF6AAAA4000




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == 128', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80000400]:KMADA t5, t5, t5
	-[0x80000404]:sd t5, 16(t0)
Current Store : [0x80000408] : sd t5, 24(t0) -- Store: [0x80003228]:0x000740B1D71CF8E4




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 128', 'rs2_h1_val == -5', 'rs1_h2_val == -3', 'rs1_h1_val == -513', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000043c]:KMADA t6, sp, s7
	-[0x80000440]:sd t6, 32(t0)
Current Store : [0x80000444] : sd sp, 40(t0) -- Store: [0x80003238]:0xC000FFFDFDFFFFFB




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x7', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -513', 'rs2_h2_val == -33', 'rs2_h1_val == 64', 'rs2_h0_val == 128', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x80000478]:KMADA t2, t2, a3
	-[0x8000047c]:sd t2, 48(t0)
Current Store : [0x80000480] : sd t2, 56(t0) -- Store: [0x80003248]:0xC07F412100070547




Last Coverpoint : ['rs1 : x25', 'rs2 : x21', 'rd : x21', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h2_val == 8', 'rs2_h1_val == -16385', 'rs2_h0_val == -5', 'rs1_h3_val == 32', 'rs1_h2_val == 8192', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004a8]:KMADA s5, s9, s5
	-[0x800004ac]:sd s5, 64(t0)
Current Store : [0x800004b0] : sd s9, 72(t0) -- Store: [0x80003258]:0x002020000005FEFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x25', 'rs2_h3_val == 512', 'rs2_h2_val == -65', 'rs2_h1_val == -32768', 'rs2_h0_val == -2049', 'rs1_h3_val == 64', 'rs1_h2_val == 32767', 'rs1_h1_val == -32768', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800004e4]:KMADA s9, s11, t3
	-[0x800004e8]:sd s9, 80(t0)
Current Store : [0x800004ec] : sd s11, 88(t0) -- Store: [0x80003268]:0x00407FFF8000FFF7




Last Coverpoint : ['rs1 : x22', 'rs2 : x26', 'rd : x17', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h2_val == -1025', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000514]:KMADA a7, s6, s10
	-[0x80000518]:sd a7, 96(t0)
Current Store : [0x8000051c] : sd s6, 104(t0) -- Store: [0x80003278]:0xC000FBFF80000080




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x23', 'rs2_h3_val == 8192', 'rs2_h2_val == 2', 'rs2_h0_val == 4', 'rs1_h3_val == -1', 'rs1_h2_val == 2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000550]:KMADA s7, t6, s9
	-[0x80000554]:sd s7, 112(t0)
Current Store : [0x80000558] : sd t6, 120(t0) -- Store: [0x80003288]:0xFFFF000200090004




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x2', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 8192', 'rs1_h1_val == 16384', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000588]:KMADA sp, ra, zero
	-[0x8000058c]:sd sp, 128(t0)
Current Store : [0x80000590] : sd ra, 136(t0) -- Store: [0x80003298]:0x2000FBFF40000020




Last Coverpoint : ['rs1 : x15', 'rs2 : x10', 'rd : x8', 'rs2_h3_val == 21845', 'rs2_h2_val == 16', 'rs2_h0_val == -129', 'rs1_h2_val == -257', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800005c4]:KMADA fp, a5, a0
	-[0x800005c8]:sd fp, 144(t0)
Current Store : [0x800005cc] : sd a5, 152(t0) -- Store: [0x800032a8]:0xC000FEFFFFF7FFFB




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x3', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 4096', 'rs2_h1_val == -2', 'rs2_h0_val == -2', 'rs1_h1_val == -3', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000600]:KMADA gp, s8, t6
	-[0x80000604]:sd gp, 160(t0)
Current Store : [0x80000608] : sd s8, 168(t0) -- Store: [0x800032b8]:0xFFFCFFFCFFFD0010




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x20', 'rs2_h3_val == -16385', 'rs2_h1_val == 128', 'rs2_h0_val == -9', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000063c]:KMADA s4, zero, s2
	-[0x80000640]:sd s4, 176(t0)
Current Store : [0x80000644] : sd zero, 184(t0) -- Store: [0x800032c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x22', 'rs2_h3_val == -8193', 'rs2_h1_val == -1025', 'rs2_h0_val == 1', 'rs1_h1_val == -4097', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000066c]:KMADA s6, s5, a4
	-[0x80000670]:sd s6, 192(t0)
Current Store : [0x80000674] : sd s5, 200(t0) -- Store: [0x800032d8]:0x00000000EFFFFF7F




Last Coverpoint : ['rs1 : x17', 'rs2 : x11', 'rd : x14', 'rs2_h3_val == -4097', 'rs2_h0_val == 32767', 'rs1_h3_val == -17', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800006a8]:KMADA a4, a7, a1
	-[0x800006ac]:sd a4, 208(t0)
Current Store : [0x800006b0] : sd a7, 216(t0) -- Store: [0x800032e8]:0xFFEF0007FFFDFFFD




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x9', 'rs2_h3_val == -2049', 'rs2_h1_val == -257', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800006e4]:KMADA s1, s7, s4
	-[0x800006e8]:sd s1, 224(t0)
Current Store : [0x800006ec] : sd s7, 232(t0) -- Store: [0x800032f8]:0xFFFAFFF9FDFF3FFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x7', 'rd : x19', 'rs2_h3_val == -1025', 'rs1_h3_val == 32767', 'rs1_h2_val == 32', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000728]:KMADA s3, s10, t2
	-[0x8000072c]:sd s3, 240(t0)
Current Store : [0x80000730] : sd s10, 248(t0) -- Store: [0x80003308]:0x7FFF00208000FFBF




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x12', 'rs2_h3_val == -257', 'rs2_h2_val == 8192', 'rs1_h3_val == -21846', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000764]:KMADA a2, a4, a7
	-[0x80000768]:sd a2, 256(t0)
Current Store : [0x8000076c] : sd a4, 264(t0) -- Store: [0x80003318]:0xAAAAFFFAFFF80008




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x4', 'rs2_h3_val == -129', 'rs2_h2_val == -8193', 'rs2_h0_val == -8193', 'rs1_h3_val == -33', 'rs1_h2_val == -8193', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000798]:KMADA tp, t4, t1
	-[0x8000079c]:sd tp, 272(t0)
Current Store : [0x800007a0] : sd t4, 280(t0) -- Store: [0x80003328]:0xFFDFDFFFFFFBFFFB




Last Coverpoint : ['rs1 : x10', 'rs2 : x9', 'rd : x0', 'rs2_h3_val == -65', 'rs1_h3_val == -3', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x800007d8]:KMADA zero, a0, s1
	-[0x800007dc]:sd zero, 0(gp)
Current Store : [0x800007e0] : sd a0, 8(gp) -- Store: [0x80003338]:0xFFFDFFF70009FFF8




Last Coverpoint : ['rs1 : x5', 'rs2 : x8', 'rd : x29', 'rs2_h3_val == -33', 'rs2_h2_val == 32767', 'rs2_h0_val == -65', 'rs1_h2_val == -1', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000808]:KMADA t4, t0, fp
	-[0x8000080c]:sd t4, 16(gp)
Current Store : [0x80000810] : sd t0, 24(gp) -- Store: [0x80003348]:0xFFFCFFFFFFF65555




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x11', 'rs2_h3_val == -17', 'rs1_h3_val == 512']
Last Code Sequence : 
	-[0x8000083c]:KMADA a1, a2, a5
	-[0x80000840]:sd a1, 32(gp)
Current Store : [0x80000844] : sd a2, 40(gp) -- Store: [0x80003358]:0x02003FFF00000004




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x1', 'rs2_h3_val == -9', 'rs2_h2_val == -16385', 'rs2_h1_val == -2049', 'rs1_h3_val == -4097', 'rs1_h2_val == 16', 'rs1_h1_val == -17', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000870]:KMADA ra, s1, t0
	-[0x80000874]:sd ra, 48(gp)
Current Store : [0x80000878] : sd s1, 56(gp) -- Store: [0x80003368]:0xEFFF0010FFEFFDFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x18', 'rs2_h3_val == -5', 'rs2_h0_val == -513', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800008ac]:KMADA s2, a3, s3
	-[0x800008b0]:sd s2, 64(gp)
Current Store : [0x800008b4] : sd a3, 72(gp) -- Store: [0x80003378]:0x00010002AAAAFDFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x1', 'rd : x15', 'rs2_h3_val == -3', 'rs2_h2_val == 16384', 'rs2_h1_val == -33', 'rs1_h3_val == 2048', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008e4]:KMADA a5, a1, ra
	-[0x800008e8]:sd a5, 80(gp)
Current Store : [0x800008ec] : sd a1, 88(gp) -- Store: [0x80003388]:0x0800000908000009




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x6', 'rs2_h3_val == -2', 'rs2_h1_val == 2', 'rs1_h1_val == -65', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000920]:KMADA t1, tp, a2
	-[0x80000924]:sd t1, 96(gp)
Current Store : [0x80000928] : sd tp, 104(gp) -- Store: [0x80003398]:0xAAAAFFFCFFBF7FFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x26', 'rs2_h3_val == -32768', 'rs2_h2_val == 256', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x8000095c]:KMADA s10, s2, s11
	-[0x80000960]:sd s10, 112(gp)
Current Store : [0x80000964] : sd s2, 120(gp) -- Store: [0x800033a8]:0xFFF8FFFA02000007




Last Coverpoint : ['rs1 : x16', 'rs2 : x4', 'rd : x13', 'rs2_h3_val == 16384', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000994]:KMADA a3, a6, tp
	-[0x80000998]:sd a3, 128(gp)
Current Store : [0x8000099c] : sd a6, 136(gp) -- Store: [0x800033b8]:0xFFF8002000407FFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x27', 'rs2_h3_val == 4096', 'rs2_h2_val == 4']
Last Code Sequence : 
	-[0x800009cc]:KMADA s11, s4, t4
	-[0x800009d0]:sd s11, 144(gp)
Current Store : [0x800009d4] : sd s4, 152(gp) -- Store: [0x800033c8]:0x0000FFF80800FFFB




Last Coverpoint : ['rs1 : x19', 'rs2 : x24', 'rd : x16', 'rs2_h3_val == 2048', 'rs1_h3_val == -8193', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a10]:KMADA a6, s3, s8
	-[0x80000a14]:sd a6, 160(gp)
Current Store : [0x80000a18] : sd s3, 168(gp) -- Store: [0x800033d8]:0xDFFFFFFFFDFF1000




Last Coverpoint : ['rs1 : x28', 'rs2 : x22', 'rd : x5', 'rs2_h3_val == 1024', 'rs2_h1_val == 256', 'rs2_h0_val == -257', 'rs1_h2_val == -4097', 'rs1_h1_val == -129', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000a54]:KMADA t0, t3, s6
	-[0x80000a58]:sd t0, 176(gp)
Current Store : [0x80000a5c] : sd t3, 184(gp) -- Store: [0x800033e8]:0xAAAAEFFFFF7FAAAA




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x24', 'rs2_h3_val == 256', 'rs2_h0_val == -16385', 'rs1_h2_val == -65', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000a90]:KMADA s8, fp, a6
	-[0x80000a94]:sd s8, 192(gp)
Current Store : [0x80000a98] : sd fp, 200(gp) -- Store: [0x800033f8]:0xFFFAFFBFDFFF0020




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x28', 'rs2_h3_val == 64', 'rs2_h1_val == 8192', 'rs1_h1_val == 1024', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000acc]:KMADA t3, t1, sp
	-[0x80000ad0]:sd t3, 208(gp)
Current Store : [0x80000ad4] : sd t1, 216(gp) -- Store: [0x80003408]:0xFFEFFFFC0400F7FF




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == 1', 'rs2_h0_val == 2048', 'rs1_h3_val == 2', 'rs1_h2_val == 1', 'rs1_h1_val == -2', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000b08]:KMADA t6, t5, t4
	-[0x80000b0c]:sd t6, 224(gp)
Current Store : [0x80000b10] : sd t5, 232(gp) -- Store: [0x80003418]:0x00020001FFFE0100




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h0_val == 1024', 'rs1_h2_val == 21845', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000b44]:KMADA t6, t5, t4
	-[0x80000b48]:sd t6, 240(gp)
Current Store : [0x80000b4c] : sd t5, 248(gp) -- Store: [0x80003428]:0xC0005555FFFF0004




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000b7c]:KMADA t6, t5, t4
	-[0x80000b80]:sd t6, 256(gp)
Current Store : [0x80000b84] : sd t5, 264(gp) -- Store: [0x80003438]:0xEFFF3FFF00074000




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h3_val == 16', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000bb8]:KMADA t6, t5, t4
	-[0x80000bbc]:sd t6, 272(gp)
Current Store : [0x80000bc0] : sd t5, 280(gp) -- Store: [0x80003448]:0x0010FFF700040005




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == 21845', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000bf4]:KMADA t6, t5, t4
	-[0x80000bf8]:sd t6, 288(gp)
Current Store : [0x80000bfc] : sd t5, 296(gp) -- Store: [0x80003458]:0xDFFF0009C0000009




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000c28]:KMADA t6, t5, t4
	-[0x80000c2c]:sd t6, 304(gp)
Current Store : [0x80000c30] : sd t5, 312(gp) -- Store: [0x80003468]:0xEFFF555520000010




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h3_val == -9', 'rs1_h1_val == 4096', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000c5c]:KMADA t6, t5, t4
	-[0x80000c60]:sd t6, 320(gp)
Current Store : [0x80000c64] : sd t5, 328(gp) -- Store: [0x80003478]:0xFFF7FBFF1000FFEF




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == 16384', 'rs1_h3_val == 256', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c98]:KMADA t6, t5, t4
	-[0x80000c9c]:sd t6, 336(gp)
Current Store : [0x80000ca0] : sd t5, 344(gp) -- Store: [0x80003488]:0x010020000100FFEF




Last Coverpoint : ['rs2_h1_val == 32767', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000ccc]:KMADA t6, t5, t4
	-[0x80000cd0]:sd t6, 352(gp)
Current Store : [0x80000cd4] : sd t5, 360(gp) -- Store: [0x80003498]:0xFFF9002000200010




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h2_val == 4', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d00]:KMADA t6, t5, t4
	-[0x80000d04]:sd t6, 368(gp)
Current Store : [0x80000d08] : sd t5, 376(gp) -- Store: [0x800034a8]:0x020000040010FEFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h0_val == -4097', 'rs1_h2_val == 8', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d3c]:KMADA t6, t5, t4
	-[0x80000d40]:sd t6, 384(gp)
Current Store : [0x80000d44] : sd t5, 392(gp) -- Store: [0x800034b8]:0x001000080008FFBF




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_h2_val == -16385', 'rs1_h1_val == 2', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000d78]:KMADA t6, t5, t4
	-[0x80000d7c]:sd t6, 400(gp)
Current Store : [0x80000d80] : sd t5, 408(gp) -- Store: [0x800034c8]:0xFFF8BFFF00020040




Last Coverpoint : ['rs1_h3_val == 4', 'rs1_h2_val == -129', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000dac]:KMADA t6, t5, t4
	-[0x80000db0]:sd t6, 416(gp)
Current Store : [0x80000db4] : sd t5, 424(gp) -- Store: [0x800034d8]:0x0004FF7F0001C000




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h2_val == 64', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000de0]:KMADA t6, t5, t4
	-[0x80000de4]:sd t6, 432(gp)
Current Store : [0x80000de8] : sd t5, 440(gp) -- Store: [0x800034e8]:0x00100040DFFFBFFF




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h3_val == -1025', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e14]:KMADA t6, t5, t4
	-[0x80000e18]:sd t6, 448(gp)
Current Store : [0x80000e1c] : sd t5, 456(gp) -- Store: [0x800034f8]:0xFBFF0020FFF6DFFF




Last Coverpoint : ['rs1_h2_val == -32768', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e50]:KMADA t6, t5, t4
	-[0x80000e54]:sd t6, 464(gp)
Current Store : [0x80000e58] : sd t5, 472(gp) -- Store: [0x80003508]:0x000280001000EFFF




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e8c]:KMADA t6, t5, t4
	-[0x80000e90]:sd t6, 480(gp)
Current Store : [0x80000e94] : sd t5, 488(gp) -- Store: [0x80003518]:0x0020DFFFDFFFFBFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == -2049', 'rs2_h1_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000eb4]:KMADA t6, t5, t4
	-[0x80000eb8]:sd t6, 496(gp)
Current Store : [0x80000ebc] : sd t5, 504(gp) -- Store: [0x80003528]:0xFFFDEFFF3FFFFFDF




Last Coverpoint : ['rs2_h3_val == -21846', 'rs2_h2_val == -257', 'rs2_h1_val == -3', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000ef0]:KMADA t6, t5, t4
	-[0x80000ef4]:sd t6, 512(gp)
Current Store : [0x80000ef8] : sd t5, 520(gp) -- Store: [0x80003538]:0xFFFCFFFC4000FFFE




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f28]:KMADA t6, t5, t4
	-[0x80000f2c]:sd t6, 528(gp)
Current Store : [0x80000f30] : sd t5, 536(gp) -- Store: [0x80003548]:0xFBFF000600072000




Last Coverpoint : ['rs1_h2_val == 256', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000f64]:KMADA t6, t5, t4
	-[0x80000f68]:sd t6, 544(gp)
Current Store : [0x80000f6c] : sd t5, 552(gp) -- Store: [0x80003558]:0xFFF90100FFF60800




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000fa0]:KMADA t6, t5, t4
	-[0x80000fa4]:sd t6, 560(gp)
Current Store : [0x80000fa8] : sd t5, 568(gp) -- Store: [0x80003568]:0x00030020EFFF0400




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h2_val == -5', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000fd0]:KMADA t6, t5, t4
	-[0x80000fd4]:sd t6, 576(gp)
Current Store : [0x80000fd8] : sd t5, 584(gp) -- Store: [0x80003578]:0x0001FFFBFFF80200




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001004]:KMADA t6, t5, t4
	-[0x80001008]:sd t6, 592(gp)
Current Store : [0x8000100c] : sd t5, 600(gp) -- Store: [0x80003588]:0x00000020FFFE0002




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == 8192', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001034]:KMADA t6, t5, t4
	-[0x80001038]:sd t6, 608(gp)
Current Store : [0x8000103c] : sd t5, 616(gp) -- Store: [0x80003598]:0x0005000020000001




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x8000106c]:KMADA t6, t5, t4
	-[0x80001070]:sd t6, 624(gp)
Current Store : [0x80001074] : sd t5, 632(gp) -- Store: [0x800035a8]:0x2000FDFF00050000




Last Coverpoint : ['rs1_h2_val == 1024', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800010a4]:KMADA t6, t5, t4
	-[0x800010a8]:sd t6, 640(gp)
Current Store : [0x800010ac] : sd t5, 648(gp) -- Store: [0x800035b8]:0x3FFF04000010FFFF




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x800010d8]:KMADA t6, t5, t4
	-[0x800010dc]:sd t6, 656(gp)
Current Store : [0x800010e0] : sd t5, 664(gp) -- Store: [0x800035c8]:0x00070080FFF90040




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80001114]:KMADA t6, t5, t4
	-[0x80001118]:sd t6, 672(gp)
Current Store : [0x8000111c] : sd t5, 680(gp) -- Store: [0x800035d8]:0xFBFFBFFF0003FFDF




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h1_val == 4', 'rs2_h0_val == 64', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001150]:KMADA t6, t5, t4
	-[0x80001154]:sd t6, 688(gp)
Current Store : [0x80001158] : sd t5, 696(gp) -- Store: [0x800035e8]:0x000140002000BFFF




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x8000118c]:KMADA t6, t5, t4
	-[0x80001190]:sd t6, 704(gp)
Current Store : [0x80001194] : sd t5, 712(gp) -- Store: [0x800035f8]:0xBFFFDFFFFFFA0006




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800011c8]:KMADA t6, t5, t4
	-[0x800011cc]:sd t6, 720(gp)
Current Store : [0x800011d0] : sd t5, 728(gp) -- Store: [0x80003608]:0x7FFF0004FFFBFFDF




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -17', 'rs1_h3_val == 128']
Last Code Sequence : 
	-[0x80001204]:KMADA t6, t5, t4
	-[0x80001208]:sd t6, 736(gp)
Current Store : [0x8000120c] : sd t5, 744(gp) -- Store: [0x80003618]:0x0080FFF6AAAA0009




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001240]:KMADA t6, t5, t4
	-[0x80001244]:sd t6, 752(gp)
Current Store : [0x80001248] : sd t5, 760(gp) -- Store: [0x80003628]:0x0010FFF77FFF0200




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80001278]:KMADA t6, t5, t4
	-[0x8000127c]:sd t6, 768(gp)
Current Store : [0x80001280] : sd t5, 776(gp) -- Store: [0x80003638]:0xFFF6DFFF0005FFFE




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800012b0]:KMADA t6, t5, t4
	-[0x800012b4]:sd t6, 784(gp)
Current Store : [0x800012b8] : sd t5, 792(gp) -- Store: [0x80003648]:0x00050001FFF6FEFF




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h0_val == 256', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800012f4]:KMADA t6, t5, t4
	-[0x800012f8]:sd t6, 800(gp)
Current Store : [0x800012fc] : sd t5, 808(gp) -- Store: [0x80003658]:0x7FFF020002005555




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x8000132c]:KMADA t6, t5, t4
	-[0x80001330]:sd t6, 816(gp)
Current Store : [0x80001334] : sd t5, 824(gp) -- Store: [0x80003668]:0x7FFFAAAAFFFA4000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h3_val == -5']
Last Code Sequence : 
	-[0x80001368]:KMADA t6, t5, t4
	-[0x8000136c]:sd t6, 832(gp)
Current Store : [0x80001370] : sd t5, 840(gp) -- Store: [0x80003678]:0xFFFBFFFA0100FFDF




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80001398]:KMADA t6, t5, t4
	-[0x8000139c]:sd t6, 848(gp)
Current Store : [0x800013a0] : sd t5, 856(gp) -- Store: [0x80003688]:0xFFF7555500108000




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -3', 'rs2_h0_val == 0', 'rs1_h3_val == -8193', 'rs1_h2_val == 32767', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800013d8]:KMADA t6, t5, t4
	-[0x800013dc]:sd t6, 864(gp)
Current Store : [0x800013e0] : sd t5, 872(gp) -- Store: [0x80003698]:0xDFFF7FFF0800FFF6




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h3_val == 16384', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000140c]:KMADA t6, t5, t4
	-[0x80001410]:sd t6, 880(gp)
Current Store : [0x80001414] : sd t5, 888(gp) -- Store: [0x800036a8]:0x4000FFFDFFDFFFFC




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80001444]:KMADA t6, t5, t4
	-[0x80001448]:sd t6, 896(gp)
Current Store : [0x8000144c] : sd t5, 904(gp) -- Store: [0x800036b8]:0x5555FFDFFFFD3FFF




Last Coverpoint : ['rs2_h2_val == -5', 'rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x8000147c]:KMADA t6, t5, t4
	-[0x80001480]:sd t6, 912(gp)
Current Store : [0x80001484] : sd t5, 920(gp) -- Store: [0x800036c8]:0xF7FF555500073FFF




Last Coverpoint : ['rs1_h3_val == -513']
Last Code Sequence : 
	-[0x800014b4]:KMADA t6, t5, t4
	-[0x800014b8]:sd t6, 928(gp)
Current Store : [0x800014bc] : sd t5, 936(gp) -- Store: [0x800036d8]:0xFDFFFFFCFFFDFFEF




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x800014f8]:KMADA t6, t5, t4
	-[0x800014fc]:sd t6, 944(gp)
Current Store : [0x80001500] : sd t5, 952(gp) -- Store: [0x800036e8]:0xFEFFFFFA0008FDFF




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001534]:KMADA t6, t5, t4
	-[0x80001538]:sd t6, 960(gp)
Current Store : [0x8000153c] : sd t5, 968(gp) -- Store: [0x800036f8]:0x0400FFF6AAAAFFF7




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80001564]:KMADA t6, t5, t4
	-[0x80001568]:sd t6, 976(gp)
Current Store : [0x8000156c] : sd t5, 984(gp) -- Store: [0x80003708]:0x0007000300800010




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x800015a8]:KMADA t6, t5, t4
	-[0x800015ac]:sd t6, 992(gp)
Current Store : [0x800015b0] : sd t5, 1000(gp) -- Store: [0x80003718]:0xF7FF0080EFFF0400




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x800015e4]:KMADA t6, t5, t4
	-[0x800015e8]:sd t6, 1008(gp)
Current Store : [0x800015ec] : sd t5, 1016(gp) -- Store: [0x80003728]:0x0008BFFF0800FFBF




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80001620]:KMADA t6, t5, t4
	-[0x80001624]:sd t6, 1024(gp)
Current Store : [0x80001628] : sd t5, 1032(gp) -- Store: [0x80003738]:0x2000FFDFDFFFEFFF




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x8000165c]:KMADA t6, t5, t4
	-[0x80001660]:sd t6, 1040(gp)
Current Store : [0x80001664] : sd t5, 1048(gp) -- Store: [0x80003748]:0xFBFF100008008000




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x80001698]:KMADA t6, t5, t4
	-[0x8000169c]:sd t6, 1056(gp)
Current Store : [0x800016a0] : sd t5, 1064(gp) -- Store: [0x80003758]:0x08000006C0007FFF




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x800016d0]:KMADA t6, t5, t4
	-[0x800016d4]:sd t6, 1072(gp)
Current Store : [0x800016d8] : sd t5, 1080(gp) -- Store: [0x80003768]:0xFFFD00000040FFFB




Last Coverpoint : ['rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80001710]:KMADA t6, t5, t4
	-[0x80001714]:sd t6, 1088(gp)
Current Store : [0x80001718] : sd t5, 1096(gp) -- Store: [0x80003778]:0xF7FFF7FFFFDF8000




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001754]:KMADA t6, t5, t4
	-[0x80001758]:sd t6, 1104(gp)
Current Store : [0x8000175c] : sd t5, 1112(gp) -- Store: [0x80003788]:0x0800FFFC55550002




Last Coverpoint : ['rs2_h1_val == 1024', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80001788]:KMADA t6, t5, t4
	-[0x8000178c]:sd t6, 1120(gp)
Current Store : [0x80001790] : sd t5, 1128(gp) -- Store: [0x80003798]:0x800000400020FFFD




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x800017c0]:KMADA t6, t5, t4
	-[0x800017c4]:sd t6, 1136(gp)
Current Store : [0x800017c8] : sd t5, 1144(gp) -- Store: [0x800037a8]:0x0006FFFE0002C000




Last Coverpoint : ['rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800017f8]:KMADA t6, t5, t4
	-[0x800017fc]:sd t6, 1152(gp)
Current Store : [0x80001800] : sd t5, 1160(gp) -- Store: [0x800037b8]:0x3FFF0800FFFC0006




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000182c]:KMADA t6, t5, t4
	-[0x80001830]:sd t6, 1168(gp)
Current Store : [0x80001834] : sd t5, 1176(gp) -- Store: [0x800037c8]:0x80000005F7FFFEFF




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001854]:KMADA t6, t5, t4
	-[0x80001858]:sd t6, 1184(gp)
Current Store : [0x8000185c] : sd t5, 1192(gp) -- Store: [0x800037d8]:0xFFFFFFF9FEFF8000




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80001888]:KMADA t6, t5, t4
	-[0x8000188c]:sd t6, 1200(gp)
Current Store : [0x80001890] : sd t5, 1208(gp) -- Store: [0x800037e8]:0xFFF9AAAA0080FFFB




Last Coverpoint : ['rs2_h1_val == -65']
Last Code Sequence : 
	-[0x800018c0]:KMADA t6, t5, t4
	-[0x800018c4]:sd t6, 1216(gp)
Current Store : [0x800018c8] : sd t5, 1224(gp) -- Store: [0x800037f8]:0xFFF7FBFFFFFF0080




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800018fc]:KMADA t6, t5, t4
	-[0x80001900]:sd t6, 1232(gp)
Current Store : [0x80001904] : sd t5, 1240(gp) -- Store: [0x80003808]:0xFF7F00050006FFF8




Last Coverpoint : ['rs1_h3_val == -65']
Last Code Sequence : 
	-[0x80001930]:KMADA t6, t5, t4
	-[0x80001934]:sd t6, 1248(gp)
Current Store : [0x80001938] : sd t5, 1256(gp) -- Store: [0x80003818]:0xFFBF00090009FFEF




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001964]:KMADA t6, t5, t4
	-[0x80001968]:sd t6, 1264(gp)
Current Store : [0x8000196c] : sd t5, 1272(gp) -- Store: [0x80003828]:0xFFFDFFDFBFFF7FFF




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x800019a0]:KMADA t6, t5, t4
	-[0x800019a4]:sd t6, 1280(gp)
Current Store : [0x800019a8] : sd t5, 1288(gp) -- Store: [0x80003838]:0xFDFF0007FFF75555




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800019d8]:KMADA t6, t5, t4
	-[0x800019dc]:sd t6, 1296(gp)
Current Store : [0x800019e0] : sd t5, 1304(gp) -- Store: [0x80003848]:0xFFEF0004FBFFC000




Last Coverpoint : ['rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80001a18]:KMADA t6, t5, t4
	-[0x80001a1c]:sd t6, 1312(gp)
Current Store : [0x80001a20] : sd t5, 1320(gp) -- Store: [0x80003858]:0xFFFEBFFF01005555




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001a54]:KMADA t6, t5, t4
	-[0x80001a58]:sd t6, 1328(gp)
Current Store : [0x80001a5c] : sd t5, 1336(gp) -- Store: [0x80003868]:0x10000040FFF7EFFF




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001a88]:KMADA t6, t5, t4
	-[0x80001a8c]:sd t6, 1344(gp)
Current Store : [0x80001a90] : sd t5, 1352(gp) -- Store: [0x80003878]:0x0800555520000020




Last Coverpoint : ['rs1_h2_val == -17']
Last Code Sequence : 
	-[0x80001abc]:KMADA t6, t5, t4
	-[0x80001ac0]:sd t6, 1360(gp)
Current Store : [0x80001ac4] : sd t5, 1368(gp) -- Store: [0x80003888]:0x0002FFEF00808000




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -65', 'rs2_h1_val == -1025', 'rs1_h3_val == -3', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001af4]:KMADA t6, t5, t4
	-[0x80001af8]:sd t6, 1376(gp)
Current Store : [0x80001afc] : sd t5, 1384(gp) -- Store: [0x80003898]:0xFFFDFFF70009FFF8





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

|s.no|            signature             |                                                                                                                                                                                                                                          coverpoints                                                                                                                                                                                                                                          |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000000882C723AE4|- opcode : kmada<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 16384<br> |[0x800003cc]:KMADA a0, gp, gp<br> [0x800003d0]:sd a0, 0(t0)<br>      |
|   2|[0x80003220]<br>0x000740B1D71CF8E4|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == 128<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                          |[0x80000400]:KMADA t5, t5, t5<br> [0x80000404]:sd t5, 16(t0)<br>     |
|   3|[0x80003230]<br>0xFB96FAA2FBB7049E|- rs1 : x2<br> - rs2 : x23<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 128<br> - rs2_h1_val == -5<br> - rs1_h2_val == -3<br> - rs1_h1_val == -513<br> - rs1_h0_val == -5<br>                          |[0x8000043c]:KMADA t6, sp, s7<br> [0x80000440]:sd t6, 32(t0)<br>     |
|   4|[0x80003240]<br>0xC07F412100070547|- rs1 : x7<br> - rs2 : x13<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -513<br> - rs2_h2_val == -33<br> - rs2_h1_val == 64<br> - rs2_h0_val == 128<br> - rs1_h3_val == -16385<br>                                                                                                                                                                         |[0x80000478]:KMADA t2, t2, a3<br> [0x8000047c]:sd t2, 48(t0)<br>     |
|   5|[0x80003250]<br>0xFFFCFF88BFFEC4FB|- rs1 : x25<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h2_val == 8<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -5<br> - rs1_h3_val == 32<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -257<br>                                                                                                                                                                                         |[0x800004a8]:KMADA s5, s9, s5<br> [0x800004ac]:sd s5, 64(t0)<br>     |
|   6|[0x80003260]<br>0x0000204140064708|- rs1 : x27<br> - rs2 : x28<br> - rd : x25<br> - rs2_h3_val == 512<br> - rs2_h2_val == -65<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -2049<br> - rs1_h3_val == 64<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                         |[0x800004e4]:KMADA s9, s11, t3<br> [0x800004e8]:sd s9, 80(t0)<br>    |
|   7|[0x80003270]<br>0xBEACC30EBEADFEED|- rs1 : x22<br> - rs2 : x26<br> - rd : x17<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h2_val == -1025<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000514]:KMADA a7, s6, s10<br> [0x80000518]:sd a7, 96(t0)<br>    |
|   8|[0x80003280]<br>0x007FE00BFFFAFFD7|- rs1 : x31<br> - rs2 : x25<br> - rd : x23<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 2<br> - rs2_h0_val == 4<br> - rs1_h3_val == -1<br> - rs1_h2_val == 2<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                         |[0x80000550]:KMADA s7, t6, s9<br> [0x80000554]:sd s7, 112(t0)<br>    |
|   9|[0x80003290]<br>0xC000FFFDFDFFFFFB|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 8192<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                  |[0x80000588]:KMADA sp, ra, zero<br> [0x8000058c]:sd sp, 128(t0)<br>  |
|  10|[0x800032a0]<br>0x46A88B6D5C001E0B|- rs1 : x15<br> - rs2 : x10<br> - rd : x8<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 16<br> - rs2_h0_val == -129<br> - rs1_h2_val == -257<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                        |[0x800005c4]:KMADA fp, a5, a0<br> [0x800005c8]:sd fp, 144(t0)<br>    |
|  11|[0x800032b0]<br>0x0004BFFAAAAA3FE6|- rs1 : x24<br> - rs2 : x31<br> - rd : x3<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -2<br> - rs2_h0_val == -2<br> - rs1_h1_val == -3<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                           |[0x80000600]:KMADA gp, s8, t6<br> [0x80000604]:sd gp, 160(t0)<br>    |
|  12|[0x800032c0]<br>0xB7D5BFDDB7D5BFDD|- rs1 : x0<br> - rs2 : x18<br> - rd : x20<br> - rs2_h3_val == -16385<br> - rs2_h1_val == 128<br> - rs2_h0_val == -9<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                |[0x8000063c]:KMADA s4, zero, s2<br> [0x80000640]:sd s4, 176(t0)<br>  |
|  13|[0x800032d0]<br>0xC000FBFF80401400|- rs1 : x21<br> - rs2 : x14<br> - rd : x22<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                    |[0x8000066c]:KMADA s6, s5, a4<br> [0x80000670]:sd s6, 192(t0)<br>    |
|  14|[0x800032e0]<br>0xE0000FAAFBFD8004|- rs1 : x17<br> - rs2 : x11<br> - rd : x14<br> - rs2_h3_val == -4097<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -17<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                              |[0x800006a8]:KMADA a4, a7, a1<br> [0x800006ac]:sd a4, 208(t0)<br>    |
|  15|[0x800032f0]<br>0xADFF1D85AE80EEBF|- rs1 : x23<br> - rs2 : x20<br> - rd : x9<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -257<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800006e4]:KMADA s1, s7, s4<br> [0x800006e8]:sd s1, 224(t0)<br>    |
|  16|[0x80003300]<br>0x6DAB049C7FFFFFFF|- rs1 : x26<br> - rs2 : x7<br> - rd : x19<br> - rs2_h3_val == -1025<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 32<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000728]:KMADA s3, s10, t2<br> [0x8000072c]:sd s3, 240(t0)<br>   |
|  17|[0x80003310]<br>0xD614C90DD5C3D9AF|- rs1 : x14<br> - rs2 : x17<br> - rd : x12<br> - rs2_h3_val == -257<br> - rs2_h2_val == 8192<br> - rs1_h3_val == -21846<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000764]:KMADA a2, a4, a7<br> [0x80000768]:sd a2, 256(t0)<br>    |
|  18|[0x80003320]<br>0xC3DE0877BFDE57FD|- rs1 : x29<br> - rs2 : x6<br> - rd : x4<br> - rs2_h3_val == -129<br> - rs2_h2_val == -8193<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -33<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                             |[0x80000798]:KMADA tp, t4, t1<br> [0x8000079c]:sd tp, 272(t0)<br>    |
|  19|[0x80003330]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x0<br> - rs2_h3_val == -65<br> - rs1_h3_val == -3<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800007d8]:KMADA zero, a0, s1<br> [0x800007dc]:sd zero, 0(gp)<br>  |
|  20|[0x80003340]<br>0xFFDF6084FFE65F70|- rs1 : x5<br> - rs2 : x8<br> - rd : x29<br> - rs2_h3_val == -33<br> - rs2_h2_val == 32767<br> - rs2_h0_val == -65<br> - rs1_h2_val == -1<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                        |[0x80000808]:KMADA t4, t0, fp<br> [0x8000080c]:sd t4, 16(gp)<br>     |
|  21|[0x80003350]<br>0xF01FDD5F000081FF|- rs1 : x12<br> - rs2 : x15<br> - rd : x11<br> - rs2_h3_val == -17<br> - rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000083c]:KMADA a1, a2, a5<br> [0x80000840]:sd a1, 32(gp)<br>     |
|  22|[0x80003360]<br>0x1FFD8BF840010A72|- rs1 : x9<br> - rs2 : x5<br> - rd : x1<br> - rs2_h3_val == -9<br> - rs2_h2_val == -16385<br> - rs2_h1_val == -2049<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 16<br> - rs1_h1_val == -17<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                      |[0x80000870]:KMADA ra, s1, t0<br> [0x80000874]:sd ra, 48(gp)<br>     |
|  23|[0x80003370]<br>0xBFFF5FFA00885954|- rs1 : x13<br> - rs2 : x19<br> - rd : x18<br> - rs2_h3_val == -5<br> - rs2_h0_val == -513<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x800008ac]:KMADA s2, a3, s3<br> [0x800008b0]:sd s2, 64(gp)<br>     |
|  24|[0x80003380]<br>0xFFF128800004F8A4|- rs1 : x11<br> - rs2 : x1<br> - rd : x15<br> - rs2_h3_val == -3<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -33<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                       |[0x800008e4]:KMADA a5, a1, ra<br> [0x800008e8]:sd a5, 80(gp)<br>     |
|  25|[0x80003390]<br>0xFF7F8AAFFFF8DF7F|- rs1 : x4<br> - rs2 : x12<br> - rd : x6<br> - rs2_h3_val == -2<br> - rs2_h1_val == 2<br> - rs1_h1_val == -65<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                    |[0x80000920]:KMADA t1, tp, a2<br> [0x80000924]:sd t1, 96(gp)<br>     |
|  26|[0x800033a0]<br>0x7FFFFFFF80000000|- rs1 : x18<br> - rs2 : x27<br> - rd : x26<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 256<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x8000095c]:KMADA s10, s2, s11<br> [0x80000960]:sd s10, 112(gp)<br> |
|  27|[0x800033b0]<br>0xFFFF0002CAAA3F40|- rs1 : x16<br> - rs2 : x4<br> - rd : x13<br> - rs2_h3_val == 16384<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000994]:KMADA a3, a6, tp<br> [0x80000998]:sd a3, 128(gp)<br>    |
|  28|[0x800033c0]<br>0x800000E0FC0107FF|- rs1 : x20<br> - rs2 : x29<br> - rd : x27<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800009cc]:KMADA s11, s4, t4<br> [0x800009d0]:sd s11, 144(gp)<br>  |
|  29|[0x800033d0]<br>0xFEF7F841FFD07A00|- rs1 : x19<br> - rs2 : x24<br> - rd : x16<br> - rs2_h3_val == 2048<br> - rs1_h3_val == -8193<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000a10]:KMADA a6, s3, s8<br> [0x80000a14]:sd a6, 160(gp)<br>    |
|  30|[0x800033e0]<br>0xFDA257FFF8552A15|- rs1 : x28<br> - rs2 : x22<br> - rd : x5<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 256<br> - rs2_h0_val == -257<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -129<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                          |[0x80000a54]:KMADA t0, t3, s6<br> [0x80000a58]:sd t0, 176(gp)<br>    |
|  31|[0x800033f0]<br>0x08010240F8781BE0|- rs1 : x8<br> - rs2 : x16<br> - rd : x24<br> - rs2_h3_val == 256<br> - rs2_h0_val == -16385<br> - rs1_h2_val == -65<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000a90]:KMADA s8, fp, a6<br> [0x80000a94]:sd s8, 192(gp)<br>    |
|  32|[0x80003400]<br>0xAAAAE7BF01FFF2AB|- rs1 : x6<br> - rs2 : x2<br> - rd : x28<br> - rs2_h3_val == 64<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000acc]:KMADA t3, t1, sp<br> [0x80000ad0]:sd t3, 208(gp)<br>    |
|  33|[0x80003410]<br>0x7FFF104100071000|- rs2_h3_val == 32<br> - rs2_h2_val == 1<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 2<br> - rs1_h2_val == 1<br> - rs1_h1_val == -2<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                               |[0x80000b08]:KMADA t6, t5, t4<br> [0x80000b0c]:sd t6, 224(gp)<br>    |
|  34|[0x80003420]<br>0x75501AEC0006E001|- rs2_h3_val == 16<br> - rs2_h0_val == 1024<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b44]:KMADA t6, t5, t4<br> [0x80000b48]:sd t6, 240(gp)<br>    |
|  35|[0x80003430]<br>0x75539AD4FF069FD7|- rs2_h3_val == 8<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b7c]:KMADA t6, t5, t4<br> [0x80000b80]:sd t6, 256(gp)<br>    |
|  36|[0x80003440]<br>0x75539AE7FF069FAE|- rs2_h3_val == 4<br> - rs1_h3_val == 16<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000bb8]:KMADA t6, t5, t4<br> [0x80000bbc]:sd t6, 272(gp)<br>    |
|  37|[0x80003450]<br>0x75511AE5E9B160CE|- rs2_h3_val == 2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bf4]:KMADA t6, t5, t4<br> [0x80000bf8]:sd t6, 288(gp)<br>    |
|  38|[0x80003460]<br>0x58DF975DE9B1612E|- rs2_h2_val == -21846<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c28]:KMADA t6, t5, t4<br> [0x80000c2c]:sd t6, 304(gp)<br>    |
|  39|[0x80003470]<br>0x58D79593E9715183|- rs2_h2_val == 512<br> - rs1_h3_val == -9<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c5c]:KMADA t6, t5, t4<br> [0x80000c60]:sd t6, 320(gp)<br>    |
|  40|[0x80003480]<br>0x59B79493E9B150EA|- rs2_h2_val == 2048<br> - rs2_h1_val == 16384<br> - rs1_h3_val == 256<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c98]:KMADA t6, t5, t4<br> [0x80000c9c]:sd t6, 336(gp)<br>    |
|  41|[0x80003490]<br>0x59B793CFE9C1513A|- rs2_h1_val == 32767<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000ccc]:KMADA t6, t5, t4<br> [0x80000cd0]:sd t6, 352(gp)<br>    |
|  42|[0x800034a0]<br>0x59B7B5CFE9C155AE|- rs2_h3_val == 1<br> - rs1_h2_val == 4<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d00]:KMADA t6, t5, t4<br> [0x80000d04]:sd t6, 368(gp)<br>    |
|  43|[0x800034b0]<br>0x59B737BFE9C565FF|- rs2_h2_val == 64<br> - rs2_h0_val == -4097<br> - rs1_h2_val == 8<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d3c]:KMADA t6, t5, t4<br> [0x80000d40]:sd t6, 384(gp)<br>    |
|  44|[0x800034c0]<br>0x59B6B7C3E9C567AD|- rs2_h1_val == -9<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 2<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d78]:KMADA t6, t5, t4<br> [0x80000d7c]:sd t6, 400(gp)<br>    |
|  45|[0x800034d0]<br>0x59763800E9BD678C|- rs1_h3_val == 4<br> - rs1_h2_val == -129<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000dac]:KMADA t6, t5, t4<br> [0x80000db0]:sd t6, 416(gp)<br>    |
|  46|[0x800034e0]<br>0x59663760EEBDEB8E|- rs2_h1_val == -8193<br> - rs1_h2_val == 64<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000de0]:KMADA t6, t5, t4<br> [0x80000de4]:sd t6, 432(gp)<br>    |
|  47|[0x800034f0]<br>0x59643660EEBF3FA2|- rs2_h1_val == -513<br> - rs1_h3_val == -1025<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e14]:KMADA t6, t5, t4<br> [0x80000e18]:sd t6, 448(gp)<br>    |
|  48|[0x80003500]<br>0x59665660EEBD9F82|- rs1_h2_val == -32768<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e50]:KMADA t6, t5, t4<br> [0x80000e54]:sd t6, 464(gp)<br>    |
|  49|[0x80003510]<br>0x5964163EEDE81A2E|- rs2_h0_val == 21845<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e8c]:KMADA t6, t5, t4<br> [0x80000e90]:sd t6, 480(gp)<br>    |
|  50|[0x80003520]<br>0x59E42E42EDE7DB58|- rs2_h3_val == -1<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000eb4]:KMADA t6, t5, t4<br> [0x80000eb8]:sd t6, 496(gp)<br>    |
|  51|[0x80003530]<br>0x59E5879EEDE71B6C|- rs2_h3_val == -21846<br> - rs2_h2_val == -257<br> - rs2_h1_val == -3<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ef0]:KMADA t6, t5, t4<br> [0x80000ef4]:sd t6, 512(gp)<br>    |
|  52|[0x80003540]<br>0x59E5078AEDE54612|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f28]:KMADA t6, t5, t4<br> [0x80000f2c]:sd t6, 528(gp)<br>    |
|  53|[0x80003550]<br>0x59ED07D0EE05461C|- rs1_h2_val == 256<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f64]:KMADA t6, t5, t4<br> [0x80000f68]:sd t6, 544(gp)<br>    |
|  54|[0x80003560]<br>0x59F4EFCDEE0DA622|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000fa0]:KMADA t6, t5, t4<br> [0x80000fa4]:sd t6, 560(gp)<br>    |
|  55|[0x80003570]<br>0x59F46FCDED62FA12|- rs2_h0_val == -21846<br> - rs1_h2_val == -5<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000fd0]:KMADA t6, t5, t4<br> [0x80000fd4]:sd t6, 576(gp)<br>    |
|  56|[0x80003580]<br>0x59FF1A6DED6424BC|- rs2_h2_val == 21845<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001004]:KMADA t6, t5, t4<br> [0x80001008]:sd t6, 592(gp)<br>    |
|  57|[0x80003590]<br>0x59FF1A77EDA444BC|- rs2_h1_val == 512<br> - rs2_h0_val == 8192<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001034]:KMADA t6, t5, t4<br> [0x80001038]:sd t6, 608(gp)<br>    |
|  58|[0x800035a0]<br>0x59FFBA67EDA44467|- rs2_h1_val == -17<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000106c]:KMADA t6, t5, t4<br> [0x80001070]:sd t6, 624(gp)<br>    |
|  59|[0x800035b0]<br>0x5B00BA63EDA444FE|- rs1_h2_val == 1024<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800010a4]:KMADA t6, t5, t4<br> [0x800010a8]:sd t6, 640(gp)<br>    |
|  60|[0x800035c0]<br>0x5B00CA63EDBB5A45|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010d8]:KMADA t6, t5, t4<br> [0x800010dc]:sd t6, 656(gp)<br>    |
|  61|[0x800035d0]<br>0x5F00FE5DEDC65A76|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001114]:KMADA t6, t5, t4<br> [0x80001118]:sd t6, 672(gp)<br>    |
|  62|[0x800035e0]<br>0x5F00FE5DEDB6DA36|- rs2_h2_val == -1<br> - rs2_h1_val == 4<br> - rs2_h0_val == 64<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001150]:KMADA t6, t5, t4<br> [0x80001154]:sd t6, 688(gp)<br>    |
|  63|[0x800035f0]<br>0x5F41E061EDB6D9FA|- rs2_h2_val == -513<br> - rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000118c]:KMADA t6, t5, t4<br> [0x80001190]:sd t6, 704(gp)<br>    |
|  64|[0x80003600]<br>0x5EC161A2EDB53392|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011c8]:KMADA t6, t5, t4<br> [0x800011cc]:sd t6, 720(gp)<br>    |
|  65|[0x80003610]<br>0x5EC1A148EDAFDD99|- rs2_h1_val == 16<br> - rs2_h0_val == -17<br> - rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001204]:KMADA t6, t5, t4<br> [0x80001208]:sd t6, 736(gp)<br>    |
|  66|[0x80003620]<br>0x5EC19F98ADB05799|- rs2_h0_val == -3<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001240]:KMADA t6, t5, t4<br> [0x80001244]:sd t6, 752(gp)<br>    |
|  67|[0x80003630]<br>0x5EC73FE3ADB158D9|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001278]:KMADA t6, t5, t4<br> [0x8000127c]:sd t6, 768(gp)<br>    |
|  68|[0x80003640]<br>0x5EC8EA85ADA148ED|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800012b0]:KMADA t6, t5, t4<br> [0x800012b4]:sd t6, 784(gp)<br>    |
|  69|[0x80003650]<br>0x59C87286ADF29BED|- rs2_h2_val == -32768<br> - rs2_h0_val == 256<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800012f4]:KMADA t6, t5, t4<br> [0x800012f8]:sd t6, 800(gp)<br>    |
|  70|[0x80003660]<br>0x59CA1D24ADF69BD5|- rs2_h0_val == 16<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000132c]:KMADA t6, t5, t4<br> [0x80001330]:sd t6, 816(gp)<br>    |
|  71|[0x80003670]<br>0x59CA30C9ADEE99CD|- rs2_h0_val == 8<br> - rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001368]:KMADA t6, t5, t4<br> [0x8000136c]:sd t6, 832(gp)<br>    |
|  72|[0x80003680]<br>0x59CA1B7FADED99CD|- rs1_h0_val == -32768<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001398]:KMADA t6, t5, t4<br> [0x8000139c]:sd t6, 848(gp)<br>    |
|  73|[0x800036a0]<br>0x59C91B80ADF1A1F2|- rs2_h0_val == -1<br> - rs1_h3_val == 16384<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000140c]:KMADA t6, t5, t4<br> [0x80001410]:sd t6, 880(gp)<br>    |
|  74|[0x800036b0]<br>0x5B1E70CABDF221F5|- rs1_h3_val == 21845<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001444]:KMADA t6, t5, t4<br> [0x80001448]:sd t6, 896(gp)<br>    |
|  75|[0x800036c0]<br>0x571C4E22BDF1A9EF|- rs2_h2_val == -5<br> - rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000147c]:KMADA t6, t5, t4<br> [0x80001480]:sd t6, 912(gp)<br>    |
|  76|[0x800036d0]<br>0x571A5228BDFA29E0|- rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800014b4]:KMADA t6, t5, t4<br> [0x800014b8]:sd t6, 928(gp)<br>    |
|  77|[0x800036e0]<br>0x575A922EBDFAEC21|- rs2_h1_val == 2048<br> - rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014f8]:KMADA t6, t5, t4<br> [0x800014fc]:sd t6, 944(gp)<br>    |
|  78|[0x800036f0]<br>0x575A7E6AA189086F|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001534]:KMADA t6, t5, t4<br> [0x80001538]:sd t6, 960(gp)<br>    |
|  79|[0x80003700]<br>0x575A722FA189035F|- rs2_h2_val == -1025<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001564]:KMADA t6, t5, t4<br> [0x80001568]:sd t6, 976(gp)<br>    |
|  80|[0x80003710]<br>0x571A29AFA0899F69|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015a8]:KMADA t6, t5, t4<br> [0x800015ac]:sd t6, 992(gp)<br>    |
|  81|[0x80003720]<br>0x571B61ACA089B749|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015e4]:KMADA t6, t5, t4<br> [0x800015e8]:sd t6, 1008(gp)<br>   |
|  82|[0x80003730]<br>0x571B43DDA0C9AB49|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001620]:KMADA t6, t5, t4<br> [0x80001624]:sd t6, 1024(gp)<br>   |
|  83|[0x80003740]<br>0x571A93D5C0C9BB49|- rs2_h2_val == -9<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000165c]:KMADA t6, t5, t4<br> [0x80001660]:sd t6, 1040(gp)<br>   |
|  84|[0x80003750]<br>0x579A93C390C99B4A|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001698]:KMADA t6, t5, t4<br> [0x8000169c]:sd t6, 1056(gp)<br>   |
|  85|[0x80003760]<br>0x579A954690B44FCF|- rs2_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800016d0]:KMADA t6, t5, t4<br> [0x800016d4]:sd t6, 1072(gp)<br>   |
|  86|[0x80003770]<br>0x539A154694B48DCF|- rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001710]:KMADA t6, t5, t4<br> [0x80001714]:sd t6, 1088(gp)<br>   |
|  87|[0x80003780]<br>0x53AA054694B3E345|- rs2_h2_val == 1024<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001754]:KMADA t6, t5, t4<br> [0x80001758]:sd t6, 1104(gp)<br>   |
|  88|[0x80003790]<br>0x53AD050694B4632A|- rs2_h1_val == 1024<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001788]:KMADA t6, t5, t4<br> [0x8000178c]:sd t6, 1120(gp)<br>   |
|  89|[0x800037a0]<br>0x53B004F29474642A|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800017c0]:KMADA t6, t5, t4<br> [0x800017c4]:sd t6, 1136(gp)<br>   |
|  90|[0x800037b0]<br>0x53BDC4FB947465A2|- rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800017f8]:KMADA t6, t5, t4<br> [0x800017fc]:sd t6, 1152(gp)<br>   |
|  91|[0x800037c0]<br>0x57BE44E294F49EC4|- rs2_h1_val == -4097<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000182c]:KMADA t6, t5, t4<br> [0x80001830]:sd t6, 1168(gp)<br>   |
|  92|[0x800037d0]<br>0x57BE28E880000000|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001854]:KMADA t6, t5, t4<br> [0x80001858]:sd t6, 1184(gp)<br>   |
|  93|[0x800037e0]<br>0x57C028F380000000|- rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001888]:KMADA t6, t5, t4<br> [0x8000188c]:sd t6, 1200(gp)<br>   |
|  94|[0x800037f0]<br>0x57C0B8FC800000C1|- rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800018c0]:KMADA t6, t5, t4<br> [0x800018c4]:sd t6, 1216(gp)<br>   |
|  95|[0x80003800]<br>0x57C098E4800001D1|- rs2_h1_val == 32<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018fc]:KMADA t6, t5, t4<br> [0x80001900]:sd t6, 1232(gp)<br>   |
|  96|[0x80003810]<br>0x57C0D8C480000000|- rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001930]:KMADA t6, t5, t4<br> [0x80001934]:sd t6, 1248(gp)<br>   |
|  97|[0x80003820]<br>0x57C0D4AA8000FFFE|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001964]:KMADA t6, t5, t4<br> [0x80001968]:sd t6, 1264(gp)<br>   |
|  98|[0x80003830]<br>0x57C2D96B80000000|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800019a0]:KMADA t6, t5, t4<br> [0x800019a4]:sd t6, 1280(gp)<br>   |
|  99|[0x80003840]<br>0x57C2D9BF82806401|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800019d8]:KMADA t6, t5, t4<br> [0x800019dc]:sd t6, 1296(gp)<br>   |
| 100|[0x80003850]<br>0x57C3D9C497D9A401|- rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001a18]:KMADA t6, t5, t4<br> [0x80001a1c]:sd t6, 1312(gp)<br>   |
| 101|[0x80003860]<br>0x59C3DBC497DA13D2|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001a54]:KMADA t6, t5, t4<br> [0x80001a58]:sd t6, 1328(gp)<br>   |
| 102|[0x80003870]<br>0x59E4866E97D913B2|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001a88]:KMADA t6, t5, t4<br> [0x80001a8c]:sd t6, 1344(gp)<br>   |
| 103|[0x80003880]<br>0x59E4872480000000|- rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001abc]:KMADA t6, t5, t4<br> [0x80001ac0]:sd t6, 1360(gp)<br>   |
