
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001bd0')]      |
| SIG_REGION                | [('0x80003210', '0x800039e0', '250 dwords')]      |
| COV_LABELS                | kmmawb2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawb2.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 250      |
| STAT1                     | 123      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 125     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b84]:KMMAWB2_U t6, t5, t4
      [0x80001b88]:sd t6, 1680(ra)
 -- Signature Address: 0x800039c0 Data: 0xD444E8E512E70C61
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 4096
      - rs2_h1_val == -33
      - rs2_h0_val == 0
      - rs1_w1_val == -268435457
      - rs1_w0_val == -65537




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bbc]:KMMAWB2_U t6, t5, t4
      [0x80001bc0]:sd t6, 1696(ra)
 -- Signature Address: 0x800039d0 Data: 0xD444F0E512E70461
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 8
      - rs2_h1_val == 16384
      - rs2_h0_val == -32768
      - rs1_w1_val == -16777217
      - rs1_w0_val == 2048






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb2.u', 'rs1 : x29', 'rs2 : x29', 'rd : x30', 'rs1 == rs2 != rd', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800003c4]:KMMAWB2_U t5, t4, t4
	-[0x800003c8]:sd t5, 0(a1)
Current Store : [0x800003cc] : sd t4, 8(a1) -- Store: [0x80003218]:0xC0003FFF0003FFEF




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x13', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -33', 'rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80000400]:KMMAWB2_U a3, a3, a3
	-[0x80000404]:sd a3, 16(a1)
Current Store : [0x80000408] : sd a3, 24(a1) -- Store: [0x80003228]:0xAAC0FFC9EFFE5FFB




Last Coverpoint : ['rs1 : x22', 'rs2 : x16', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h1_val == 4096', 'rs2_h0_val == -21846', 'rs1_w1_val == 64', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000438]:KMMAWB2_U sp, s6, a6
	-[0x8000043c]:sd sp, 32(a1)
Current Store : [0x80000440] : sd s6, 40(a1) -- Store: [0x80003238]:0x00000040DFFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x8', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == 8', 'rs2_h0_val == -8193', 'rs1_w1_val == -67108865', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000468]:KMMAWB2_U fp, fp, tp
	-[0x8000046c]:sd fp, 48(a1)
Current Store : [0x80000470] : sd fp, 56(a1) -- Store: [0x80003248]:0xFBFFBFFFFFFFFFF3




Last Coverpoint : ['rs1 : x12', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_h3_val == -16385']
Last Code Sequence : 
	-[0x80000498]:KMMAWB2_U ra, a2, ra
	-[0x8000049c]:sd ra, 64(a1)
Current Store : [0x800004a0] : sd a2, 72(a1) -- Store: [0x80003258]:0xFFFFFFF9FFFFFFFC




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x21', 'rs2_h3_val == -8193', 'rs2_h1_val == -2049', 'rs1_w1_val == -33554433', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800004c4]:KMMAWB2_U s5, a6, s7
	-[0x800004c8]:sd s5, 80(a1)
Current Store : [0x800004cc] : sd a6, 88(a1) -- Store: [0x80003268]:0xFDFFFFFFFFFFFBFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x5', 'rd : x10', 'rs2_h3_val == -4097', 'rs2_h1_val == 16', 'rs2_h0_val == 32', 'rs1_w1_val == -2049', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800004f8]:KMMAWB2_U a0, t1, t0
	-[0x800004fc]:sd a0, 96(a1)
Current Store : [0x80000500] : sd t1, 104(a1) -- Store: [0x80003278]:0xFFFFF7FF00000040




Last Coverpoint : ['rs1 : x21', 'rs2 : x6', 'rd : x4', 'rs2_h3_val == -2049', 'rs2_h2_val == 2', 'rs2_h1_val == -1', 'rs1_w1_val == 256', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000528]:KMMAWB2_U tp, s5, t1
	-[0x8000052c]:sd tp, 112(a1)
Current Store : [0x80000530] : sd s5, 120(a1) -- Store: [0x80003288]:0x00000100FFFFFEFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x16', 'rs2_h3_val == -1025', 'rs2_h2_val == 512', 'rs1_w1_val == -1', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000554]:KMMAWB2_U a6, sp, a2
	-[0x80000558]:sd a6, 128(a1)
Current Store : [0x8000055c] : sd sp, 136(a1) -- Store: [0x80003298]:0xFFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x9', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -2097153', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000058c]:KMMAWB2_U s1, s8, zero
	-[0x80000590]:sd s1, 144(a1)
Current Store : [0x80000594] : sd s8, 152(a1) -- Store: [0x800032a8]:0xFFDFFFFF00080000




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x3', 'rs2_h3_val == -257', 'rs2_h1_val == -257', 'rs2_h0_val == 1', 'rs1_w1_val == 8192', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800005c0]:KMMAWB2_U gp, t0, a4
	-[0x800005c4]:sd gp, 160(a1)
Current Store : [0x800005c8] : sd t0, 168(a1) -- Store: [0x800032b8]:0x00002000FFFFFFFB




Last Coverpoint : ['rs1 : x4', 'rs2 : x22', 'rd : x17', 'rs2_h3_val == -129', 'rs2_h0_val == 64', 'rs1_w1_val == 0', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800005ec]:KMMAWB2_U a7, tp, s6
	-[0x800005f0]:sd a7, 176(a1)
Current Store : [0x800005f4] : sd tp, 184(a1) -- Store: [0x800032c8]:0x0000000000000800




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x28', 'rs2_h3_val == -65']
Last Code Sequence : 
	-[0x8000061c]:KMMAWB2_U t3, s9, t5
	-[0x80000620]:sd t3, 192(a1)
Current Store : [0x80000624] : sd s9, 200(a1) -- Store: [0x800032d8]:0xFFFFFFF9FFFFFFF8




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x23', 'rs2_h3_val == -33', 'rs2_h2_val == 4', 'rs2_h1_val == -21846', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000650]:KMMAWB2_U s7, t5, a0
	-[0x80000654]:sd s7, 208(a1)
Current Store : [0x80000658] : sd t5, 216(a1) -- Store: [0x800032e8]:0xFFFFDFFFBFFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x6', 'rs2_h3_val == -17', 'rs2_h1_val == 2048', 'rs1_w1_val == -513', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000684]:KMMAWB2_U t1, s10, s11
	-[0x80000688]:sd t1, 224(a1)
Current Store : [0x8000068c] : sd s10, 232(a1) -- Store: [0x800032f8]:0xFFFFFDFFFFBFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rd : x31', 'rs2_h3_val == -9', 'rs2_h2_val == -8193', 'rs2_h1_val == 512', 'rs2_h0_val == 16', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x800006ac]:KMMAWB2_U t6, a0, gp
	-[0x800006b0]:sd t6, 240(a1)
Current Store : [0x800006b4] : sd a0, 248(a1) -- Store: [0x80003308]:0xDFFFFFFFFFFFFFF6




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x22', 'rs2_h3_val == -5', 'rs2_h1_val == 16384', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800006d4]:KMMAWB2_U s6, ra, t2
	-[0x800006d8]:sd s6, 256(a1)
Current Store : [0x800006dc] : sd ra, 264(a1) -- Store: [0x80003318]:0x00000008FFFFFEFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x19', 'rs2_h3_val == -3', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000708]:KMMAWB2_U s3, t3, a5
	-[0x8000070c]:sd s3, 272(a1)
Current Store : [0x80000710] : sd t3, 280(a1) -- Store: [0x80003328]:0xFBFFFFFFFFDFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x29', 'rs2_h3_val == -2', 'rs2_h1_val == 32767', 'rs2_h0_val == -129', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000073c]:KMMAWB2_U t4, a7, s2
	-[0x80000740]:sd t4, 0(ra)
Current Store : [0x80000744] : sd a7, 8(ra) -- Store: [0x80003338]:0xF7FFFFFFDFFFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rd : x7', 'rs2_h3_val == -32768', 'rs2_h2_val == 8192', 'rs2_h1_val == 1', 'rs1_w1_val == 262144', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000076c]:KMMAWB2_U t2, s3, a7
	-[0x80000770]:sd t2, 16(ra)
Current Store : [0x80000774] : sd s3, 24(ra) -- Store: [0x80003348]:0x0004000020000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x25', 'rs2_h3_val == 16384', 'rs2_h2_val == -2', 'rs2_h0_val == -1', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800007a8]:KMMAWB2_U s9, gp, sp
	-[0x800007ac]:sd s9, 32(ra)
Current Store : [0x800007b0] : sd gp, 40(ra) -- Store: [0x80003358]:0x00002000FFFFBFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x26', 'rs2_h3_val == 8192', 'rs2_h0_val == 512', 'rs1_w1_val == -32769', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800007dc]:KMMAWB2_U s10, a4, a1
	-[0x800007e0]:sd s10, 48(ra)
Current Store : [0x800007e4] : sd a4, 56(ra) -- Store: [0x80003368]:0xFFFF7FFF00000080




Last Coverpoint : ['rs1 : x0', 'rs2 : x26', 'rd : x15', 'rs2_h3_val == 4096', 'rs2_h1_val == -33', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000810]:KMMAWB2_U a5, zero, s10
	-[0x80000814]:sd a5, 64(ra)
Current Store : [0x80000818] : sd zero, 72(ra) -- Store: [0x80003378]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x18', 'rs2_h3_val == 2048', 'rs2_h2_val == -2049', 'rs1_w1_val == 16777216', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000840]:KMMAWB2_U s2, s4, s1
	-[0x80000844]:sd s2, 80(ra)
Current Store : [0x80000848] : sd s4, 88(ra) -- Store: [0x80003388]:0x0100000000000400




Last Coverpoint : ['rs1 : x9', 'rs2 : x19', 'rd : x24', 'rs2_h3_val == 1024', 'rs2_h0_val == -2', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000086c]:KMMAWB2_U s8, s1, s3
	-[0x80000870]:sd s8, 96(ra)
Current Store : [0x80000874] : sd s1, 104(ra) -- Store: [0x80003398]:0xFFFFFFFC00800000




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x11', 'rs2_h3_val == 512', 'rs2_h2_val == 16384', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x8000089c]:KMMAWB2_U a1, s7, s4
	-[0x800008a0]:sd a1, 112(ra)
Current Store : [0x800008a4] : sd s7, 120(ra) -- Store: [0x800033a8]:0x0100000000000040




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x5', 'rs2_h3_val == 256', 'rs2_h1_val == 64', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x800008cc]:KMMAWB2_U t0, s11, s5
	-[0x800008d0]:sd t0, 128(ra)
Current Store : [0x800008d4] : sd s11, 136(ra) -- Store: [0x800033b8]:0x0200000000000003




Last Coverpoint : ['rs1 : x11', 'rs2 : x8', 'rd : x12', 'rs2_h3_val == 128', 'rs2_h1_val == -513', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x800008fc]:KMMAWB2_U a2, a1, fp
	-[0x80000900]:sd a2, 144(ra)
Current Store : [0x80000904] : sd a1, 152(ra) -- Store: [0x800033c8]:0xFFEFFFFF00080000




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x20', 'rs2_h3_val == 64', 'rs2_h2_val == -65', 'rs2_h1_val == -65', 'rs2_h0_val == -65', 'rs1_w1_val == -9', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000092c]:KMMAWB2_U s4, s2, t6
	-[0x80000930]:sd s4, 160(ra)
Current Store : [0x80000934] : sd s2, 168(ra) -- Store: [0x800033d8]:0xFFFFFFF700200000




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x14', 'rs2_h3_val == 32', 'rs2_h2_val == 16', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000968]:KMMAWB2_U a4, a5, t3
	-[0x8000096c]:sd a4, 176(ra)
Current Store : [0x80000970] : sd a5, 184(ra) -- Store: [0x800033e8]:0x00200000FFFFBFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x24', 'rd : x27', 'rs2_h3_val == 16', 'rs2_h2_val == 256']
Last Code Sequence : 
	-[0x8000099c]:KMMAWB2_U s11, t2, s8
	-[0x800009a0]:sd s11, 192(ra)
Current Store : [0x800009a4] : sd t2, 200(ra) -- Store: [0x800033f8]:0xFFFFFFF900000800




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x0', 'rs2_h3_val == 8', 'rs2_h0_val == -32768', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800009d4]:KMMAWB2_U zero, t6, s9
	-[0x800009d8]:sd zero, 208(ra)
Current Store : [0x800009dc] : sd t6, 216(ra) -- Store: [0x80003408]:0xFEFFFFFF00000800




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h1_val == 256', 'rs1_w1_val == -4194305', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000a08]:KMMAWB2_U t6, t5, t4
	-[0x80000a0c]:sd t6, 224(ra)
Current Store : [0x80000a10] : sd t5, 232(ra) -- Store: [0x80003418]:0xFFBFFFFFEFFFFFFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -16385', 'rs2_h1_val == -2', 'rs1_w1_val == 65536', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a38]:KMMAWB2_U t6, t5, t4
	-[0x80000a3c]:sd t6, 240(ra)
Current Store : [0x80000a40] : sd t5, 248(ra) -- Store: [0x80003428]:0x00010000FFFFFFF7




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 32', 'rs1_w1_val == 1024', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000a68]:KMMAWB2_U t6, t5, t4
	-[0x80000a6c]:sd t6, 256(ra)
Current Store : [0x80000a70] : sd t5, 264(ra) -- Store: [0x80003438]:0x00000400FFFF7FFF




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000a98]:KMMAWB2_U t6, t5, t4
	-[0x80000a9c]:sd t6, 272(ra)
Current Store : [0x80000aa0] : sd t5, 280(ra) -- Store: [0x80003448]:0x0000040000004000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 128', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000ac4]:KMMAWB2_U t6, t5, t4
	-[0x80000ac8]:sd t6, 288(ra)
Current Store : [0x80000acc] : sd t5, 296(ra) -- Store: [0x80003458]:0xFFF7FFFF00000080




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_w1_val == 1048576', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000b00]:KMMAWB2_U t6, t5, t4
	-[0x80000b04]:sd t6, 304(ra)
Current Store : [0x80000b08] : sd t5, 312(ra) -- Store: [0x80003468]:0x00100000AAAAAAAA




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h0_val == -16385', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000b28]:KMMAWB2_U t6, t5, t4
	-[0x80000b2c]:sd t6, 320(ra)
Current Store : [0x80000b30] : sd t5, 328(ra) -- Store: [0x80003478]:0x0000000001000000




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == -32768', 'rs1_w1_val == 268435456', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000b5c]:KMMAWB2_U t6, t5, t4
	-[0x80000b60]:sd t6, 336(ra)
Current Store : [0x80000b64] : sd t5, 344(ra) -- Store: [0x80003488]:0x10000000FFFFFFFD




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h0_val == 2', 'rs1_w1_val == -65', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000b8c]:KMMAWB2_U t6, t5, t4
	-[0x80000b90]:sd t6, 352(ra)
Current Store : [0x80000b94] : sd t5, 360(ra) -- Store: [0x80003498]:0xFFFFFFBF08000000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == -8193', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000bb8]:KMMAWB2_U t6, t5, t4
	-[0x80000bbc]:sd t6, 368(ra)
Current Store : [0x80000bc0] : sd t5, 376(ra) -- Store: [0x800034a8]:0xFFFDFFFF00000007




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000be4]:KMMAWB2_U t6, t5, t4
	-[0x80000be8]:sd t6, 384(ra)
Current Store : [0x80000bec] : sd t5, 392(ra) -- Store: [0x800034b8]:0xFFFFFFFA00100000




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_w1_val == -5', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c14]:KMMAWB2_U t6, t5, t4
	-[0x80000c18]:sd t6, 400(ra)
Current Store : [0x80000c1c] : sd t5, 408(ra) -- Store: [0x800034c8]:0xFFFFFFFB00040000




Last Coverpoint : ['rs2_h1_val == -17', 'rs2_h0_val == -513', 'rs1_w1_val == 4194304', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c44]:KMMAWB2_U t6, t5, t4
	-[0x80000c48]:sd t6, 416(ra)
Current Store : [0x80000c4c] : sd t5, 424(ra) -- Store: [0x800034d8]:0x0040000000020000




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h1_val == 4', 'rs2_h0_val == 256', 'rs1_w1_val == 536870912', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c78]:KMMAWB2_U t6, t5, t4
	-[0x80000c7c]:sd t6, 432(ra)
Current Store : [0x80000c80] : sd t5, 440(ra) -- Store: [0x800034e8]:0x2000000000010000




Last Coverpoint : ['rs2_h2_val == -513', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cb0]:KMMAWB2_U t6, t5, t4
	-[0x80000cb4]:sd t6, 448(ra)
Current Store : [0x80000cb8] : sd t5, 456(ra) -- Store: [0x800034f8]:0xFDFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -16385', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ce8]:KMMAWB2_U t6, t5, t4
	-[0x80000cec]:sd t6, 464(ra)
Current Store : [0x80000cf0] : sd t5, 472(ra) -- Store: [0x80003508]:0xFFFFBFFF00002000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d18]:KMMAWB2_U t6, t5, t4
	-[0x80000d1c]:sd t6, 480(ra)
Current Store : [0x80000d20] : sd t5, 488(ra) -- Store: [0x80003518]:0x3FFFFFFF00001000




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d48]:KMMAWB2_U t6, t5, t4
	-[0x80000d4c]:sd t6, 496(ra)
Current Store : [0x80000d50] : sd t5, 504(ra) -- Store: [0x80003528]:0x0000200000000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d7c]:KMMAWB2_U t6, t5, t4
	-[0x80000d80]:sd t6, 512(ra)
Current Store : [0x80000d84] : sd t5, 520(ra) -- Store: [0x80003538]:0xFFDFFFFF00000100




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_w1_val == -8388609', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000dac]:KMMAWB2_U t6, t5, t4
	-[0x80000db0]:sd t6, 528(ra)
Current Store : [0x80000db4] : sd t5, 536(ra) -- Store: [0x80003548]:0xFF7FFFFF00000020




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ddc]:KMMAWB2_U t6, t5, t4
	-[0x80000de0]:sd t6, 544(ra)
Current Store : [0x80000de4] : sd t5, 552(ra) -- Store: [0x80003558]:0x0000000500000010




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_w1_val == 67108864', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e0c]:KMMAWB2_U t6, t5, t4
	-[0x80000e10]:sd t6, 560(ra)
Current Store : [0x80000e14] : sd t5, 568(ra) -- Store: [0x80003568]:0x0400000000000008




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e34]:KMMAWB2_U t6, t5, t4
	-[0x80000e38]:sd t6, 576(ra)
Current Store : [0x80000e3c] : sd t5, 584(ra) -- Store: [0x80003578]:0xFFFFFFF600000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e64]:KMMAWB2_U t6, t5, t4
	-[0x80000e68]:sd t6, 592(ra)
Current Store : [0x80000e6c] : sd t5, 600(ra) -- Store: [0x80003588]:0xFFFFFFFB00000002




Last Coverpoint : ['rs1_w1_val == 134217728', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e94]:KMMAWB2_U t6, t5, t4
	-[0x80000e98]:sd t6, 608(ra)
Current Store : [0x80000e9c] : sd t5, 616(ra) -- Store: [0x80003598]:0x0800000000000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000ec0]:KMMAWB2_U t6, t5, t4
	-[0x80000ec4]:sd t6, 624(ra)
Current Store : [0x80000ec8] : sd t5, 632(ra) -- Store: [0x800035a8]:0x0080000000000000




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h1_val == 128', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000ee8]:KMMAWB2_U t6, t5, t4
	-[0x80000eec]:sd t6, 640(ra)
Current Store : [0x80000ef0] : sd t5, 648(ra) -- Store: [0x800035b8]:0x3FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_w1_val == 16', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000f18]:KMMAWB2_U t6, t5, t4
	-[0x80000f1c]:sd t6, 656(ra)
Current Store : [0x80000f20] : sd t5, 664(ra) -- Store: [0x800035c8]:0x00000010FFFFFDFF




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h0_val == -9', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000f4c]:KMMAWB2_U t6, t5, t4
	-[0x80000f50]:sd t6, 672(ra)
Current Store : [0x80000f54] : sd t5, 680(ra) -- Store: [0x800035d8]:0xFFFFFFFEAAAAAAAA




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80000f78]:KMMAWB2_U t6, t5, t4
	-[0x80000f7c]:sd t6, 688(ra)
Current Store : [0x80000f80] : sd t5, 696(ra) -- Store: [0x800035e8]:0xF7FFFFFFDFFFFFFF




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x80000fa0]:KMMAWB2_U t6, t5, t4
	-[0x80000fa4]:sd t6, 704(ra)
Current Store : [0x80000fa8] : sd t5, 712(ra) -- Store: [0x800035f8]:0xFFEFFFFFFFFFFDFF




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000fd0]:KMMAWB2_U t6, t5, t4
	-[0x80000fd4]:sd t6, 720(ra)
Current Store : [0x80000fd8] : sd t5, 728(ra) -- Store: [0x80003608]:0xFFFFFFBF00000020




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80001000]:KMMAWB2_U t6, t5, t4
	-[0x80001004]:sd t6, 736(ra)
Current Store : [0x80001008] : sd t5, 744(ra) -- Store: [0x80003618]:0xFFFFFFDFBFFFFFFF




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x80001038]:KMMAWB2_U t6, t5, t4
	-[0x8000103c]:sd t6, 752(ra)
Current Store : [0x80001040] : sd t5, 760(ra) -- Store: [0x80003628]:0xF7FFFFFF00010000




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == 2', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001068]:KMMAWB2_U t6, t5, t4
	-[0x8000106c]:sd t6, 768(ra)
Current Store : [0x80001070] : sd t5, 776(ra) -- Store: [0x80003638]:0x0020000000000080




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80001098]:KMMAWB2_U t6, t5, t4
	-[0x8000109c]:sd t6, 784(ra)
Current Store : [0x800010a0] : sd t5, 792(ra) -- Store: [0x80003648]:0xFFFFFFFEEFFFFFFF




Last Coverpoint : ['rs2_h2_val == 1', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x800010c8]:KMMAWB2_U t6, t5, t4
	-[0x800010cc]:sd t6, 800(ra)
Current Store : [0x800010d0] : sd t5, 808(ra) -- Store: [0x80003658]:0xFFFFFFEF00010000




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800010f8]:KMMAWB2_U t6, t5, t4
	-[0x800010fc]:sd t6, 816(ra)
Current Store : [0x80001100] : sd t5, 824(ra) -- Store: [0x80003668]:0x0000400000000020




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80001128]:KMMAWB2_U t6, t5, t4
	-[0x8000112c]:sd t6, 832(ra)
Current Store : [0x80001130] : sd t5, 840(ra) -- Store: [0x80003678]:0x00000010FFDFFFFF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000115c]:KMMAWB2_U t6, t5, t4
	-[0x80001160]:sd t6, 848(ra)
Current Store : [0x80001164] : sd t5, 856(ra) -- Store: [0x80003688]:0xFFF7FFFF00100000




Last Coverpoint : ['rs2_h1_val == -1025', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001190]:KMMAWB2_U t6, t5, t4
	-[0x80001194]:sd t6, 864(ra)
Current Store : [0x80001198] : sd t5, 872(ra) -- Store: [0x80003698]:0xDFFFFFFF00000040




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800011c0]:KMMAWB2_U t6, t5, t4
	-[0x800011c4]:sd t6, 880(ra)
Current Store : [0x800011c8] : sd t5, 888(ra) -- Store: [0x800036a8]:0xFFFEFFFF08000000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800011ec]:KMMAWB2_U t6, t5, t4
	-[0x800011f0]:sd t6, 896(ra)
Current Store : [0x800011f4] : sd t5, 904(ra) -- Store: [0x800036b8]:0xFFFFFFF808000000




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80001220]:KMMAWB2_U t6, t5, t4
	-[0x80001224]:sd t6, 912(ra)
Current Store : [0x80001228] : sd t5, 920(ra) -- Store: [0x800036c8]:0xAAAAAAAAFFFFFFF6




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001250]:KMMAWB2_U t6, t5, t4
	-[0x80001254]:sd t6, 928(ra)
Current Store : [0x80001258] : sd t5, 936(ra) -- Store: [0x800036d8]:0x5555555500000005




Last Coverpoint : ['rs1_w1_val == 2147483647', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001288]:KMMAWB2_U t6, t5, t4
	-[0x8000128c]:sd t6, 944(ra)
Current Store : [0x80001290] : sd t5, 952(ra) -- Store: [0x800036e8]:0x7FFFFFFFFEFFFFFF




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800012c0]:KMMAWB2_U t6, t5, t4
	-[0x800012c4]:sd t6, 960(ra)
Current Store : [0x800012c8] : sd t5, 968(ra) -- Store: [0x800036f8]:0xBFFFFFFF00010000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800012ec]:KMMAWB2_U t6, t5, t4
	-[0x800012f0]:sd t6, 976(ra)
Current Store : [0x800012f4] : sd t5, 984(ra) -- Store: [0x80003708]:0xFFFBFFFF00000020




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001320]:KMMAWB2_U t6, t5, t4
	-[0x80001324]:sd t6, 992(ra)
Current Store : [0x80001328] : sd t5, 1000(ra) -- Store: [0x80003718]:0xFFFFEFFFFFFF7FFF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001350]:KMMAWB2_U t6, t5, t4
	-[0x80001354]:sd t6, 1008(ra)
Current Store : [0x80001358] : sd t5, 1016(ra) -- Store: [0x80003728]:0xFFFFFBFF00000003




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001384]:KMMAWB2_U t6, t5, t4
	-[0x80001388]:sd t6, 1024(ra)
Current Store : [0x8000138c] : sd t5, 1032(ra) -- Store: [0x80003738]:0xFFFFFEFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x800013b4]:KMMAWB2_U t6, t5, t4
	-[0x800013b8]:sd t6, 1040(ra)
Current Store : [0x800013bc] : sd t5, 1048(ra) -- Store: [0x80003748]:0xFFFFFF7FFFFFFDFF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800013e0]:KMMAWB2_U t6, t5, t4
	-[0x800013e4]:sd t6, 1056(ra)
Current Store : [0x800013e8] : sd t5, 1064(ra) -- Store: [0x80003758]:0xFFFFFFFD80000000




Last Coverpoint : ['rs2_h3_val == -513', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001418]:KMMAWB2_U t6, t5, t4
	-[0x8000141c]:sd t6, 1072(ra)
Current Store : [0x80001420] : sd t5, 1080(ra) -- Store: [0x80003768]:0x80000000FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001450]:KMMAWB2_U t6, t5, t4
	-[0x80001454]:sd t6, 1088(ra)
Current Store : [0x80001458] : sd t5, 1096(ra) -- Store: [0x80003778]:0x400000003FFFFFFF




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001484]:KMMAWB2_U t6, t5, t4
	-[0x80001488]:sd t6, 1104(ra)
Current Store : [0x8000148c] : sd t5, 1112(ra) -- Store: [0x80003788]:0x0008000000001000




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800014b4]:KMMAWB2_U t6, t5, t4
	-[0x800014b8]:sd t6, 1120(ra)
Current Store : [0x800014bc] : sd t5, 1128(ra) -- Store: [0x80003798]:0x0002000000080000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800014dc]:KMMAWB2_U t6, t5, t4
	-[0x800014e0]:sd t6, 1136(ra)
Current Store : [0x800014e4] : sd t5, 1144(ra) -- Store: [0x800037a8]:0x0000800000000004




Last Coverpoint : ['rs1_w1_val == 4096', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001504]:KMMAWB2_U t6, t5, t4
	-[0x80001508]:sd t6, 1152(ra)
Current Store : [0x8000150c] : sd t5, 1160(ra) -- Store: [0x800037b8]:0x0000100000400000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_w1_val == 2048', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001538]:KMMAWB2_U t6, t5, t4
	-[0x8000153c]:sd t6, 1168(ra)
Current Store : [0x80001540] : sd t5, 1176(ra) -- Store: [0x800037c8]:0x00000800FFFEFFFF




Last Coverpoint : ['rs1_w1_val == 512', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000156c]:KMMAWB2_U t6, t5, t4
	-[0x80001570]:sd t6, 1184(ra)
Current Store : [0x80001574] : sd t5, 1192(ra) -- Store: [0x800037d8]:0x00000200FBFFFFFF




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000159c]:KMMAWB2_U t6, t5, t4
	-[0x800015a0]:sd t6, 1200(ra)
Current Store : [0x800015a4] : sd t5, 1208(ra) -- Store: [0x800037e8]:0x000000803FFFFFFF




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800015cc]:KMMAWB2_U t6, t5, t4
	-[0x800015d0]:sd t6, 1216(ra)
Current Store : [0x800015d4] : sd t5, 1224(ra) -- Store: [0x800037f8]:0x0000002000020000




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x800015f8]:KMMAWB2_U t6, t5, t4
	-[0x800015fc]:sd t6, 1232(ra)
Current Store : [0x80001600] : sd t5, 1240(ra) -- Store: [0x80003808]:0x0000000400000800




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001624]:KMMAWB2_U t6, t5, t4
	-[0x80001628]:sd t6, 1248(ra)
Current Store : [0x8000162c] : sd t5, 1256(ra) -- Store: [0x80003818]:0x0000000200008000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001654]:KMMAWB2_U t6, t5, t4
	-[0x80001658]:sd t6, 1264(ra)
Current Store : [0x8000165c] : sd t5, 1272(ra) -- Store: [0x80003828]:0x00000001FFFEFFFF




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000168c]:KMMAWB2_U t6, t5, t4
	-[0x80001690]:sd t6, 1280(ra)
Current Store : [0x80001694] : sd t5, 1288(ra) -- Store: [0x80003838]:0xDFFFFFFF55555555




Last Coverpoint : ['rs2_h1_val == -9']
Last Code Sequence : 
	-[0x800016c0]:KMMAWB2_U t6, t5, t4
	-[0x800016c4]:sd t6, 1296(ra)
Current Store : [0x800016c8] : sd t5, 1304(ra) -- Store: [0x80003848]:0x0400000000001000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800016ec]:KMMAWB2_U t6, t5, t4
	-[0x800016f0]:sd t6, 1312(ra)
Current Store : [0x800016f4] : sd t5, 1320(ra) -- Store: [0x80003858]:0x008000007FFFFFFF




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001720]:KMMAWB2_U t6, t5, t4
	-[0x80001724]:sd t6, 1328(ra)
Current Store : [0x80001728] : sd t5, 1336(ra) -- Store: [0x80003868]:0x00080000FFFFFFBF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001750]:KMMAWB2_U t6, t5, t4
	-[0x80001754]:sd t6, 1344(ra)
Current Store : [0x80001758] : sd t5, 1352(ra) -- Store: [0x80003878]:0xFFFFFFF9F7FFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000178c]:KMMAWB2_U t6, t5, t4
	-[0x80001790]:sd t6, 1360(ra)
Current Store : [0x80001794] : sd t5, 1368(ra) -- Store: [0x80003888]:0x20000000FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800017bc]:KMMAWB2_U t6, t5, t4
	-[0x800017c0]:sd t6, 1376(ra)
Current Store : [0x800017c4] : sd t5, 1384(ra) -- Store: [0x80003898]:0x00020000FF7FFFFF




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800017ec]:KMMAWB2_U t6, t5, t4
	-[0x800017f0]:sd t6, 1392(ra)
Current Store : [0x800017f4] : sd t5, 1400(ra) -- Store: [0x800038a8]:0xFFFBFFFFC0000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x8000181c]:KMMAWB2_U t6, t5, t4
	-[0x80001820]:sd t6, 1408(ra)
Current Store : [0x80001824] : sd t5, 1416(ra) -- Store: [0x800038b8]:0xFFFFFFF9FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80001850]:KMMAWB2_U t6, t5, t4
	-[0x80001854]:sd t6, 1424(ra)
Current Store : [0x80001858] : sd t5, 1432(ra) -- Store: [0x800038c8]:0xFFFFFFFDFFFBFFFF




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x8000188c]:KMMAWB2_U t6, t5, t4
	-[0x80001890]:sd t6, 1440(ra)
Current Store : [0x80001894] : sd t5, 1448(ra) -- Store: [0x800038d8]:0x55555555FEFFFFFF




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800018c4]:KMMAWB2_U t6, t5, t4
	-[0x800018c8]:sd t6, 1456(ra)
Current Store : [0x800018cc] : sd t5, 1464(ra) -- Store: [0x800038e8]:0xFFEFFFFFFFFDFFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800018fc]:KMMAWB2_U t6, t5, t4
	-[0x80001900]:sd t6, 1472(ra)
Current Store : [0x80001904] : sd t5, 1480(ra) -- Store: [0x800038f8]:0xFDFFFFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001930]:KMMAWB2_U t6, t5, t4
	-[0x80001934]:sd t6, 1488(ra)
Current Store : [0x80001938] : sd t5, 1496(ra) -- Store: [0x80003908]:0xFFFFFFF8FFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001964]:KMMAWB2_U t6, t5, t4
	-[0x80001968]:sd t6, 1504(ra)
Current Store : [0x8000196c] : sd t5, 1512(ra) -- Store: [0x80003918]:0x00000007FFFFF7FF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001994]:KMMAWB2_U t6, t5, t4
	-[0x80001998]:sd t6, 1520(ra)
Current Store : [0x8000199c] : sd t5, 1528(ra) -- Store: [0x80003928]:0x00001000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800019c8]:KMMAWB2_U t6, t5, t4
	-[0x800019cc]:sd t6, 1536(ra)
Current Store : [0x800019d0] : sd t5, 1544(ra) -- Store: [0x80003938]:0x55555555FFFFFFDF




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800019fc]:KMMAWB2_U t6, t5, t4
	-[0x80001a00]:sd t6, 1552(ra)
Current Store : [0x80001a04] : sd t5, 1560(ra) -- Store: [0x80003948]:0xFFFBFFFF00000200




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001a30]:KMMAWB2_U t6, t5, t4
	-[0x80001a34]:sd t6, 1568(ra)
Current Store : [0x80001a38] : sd t5, 1576(ra) -- Store: [0x80003958]:0xEFFFFFFF00000009




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001a5c]:KMMAWB2_U t6, t5, t4
	-[0x80001a60]:sd t6, 1584(ra)
Current Store : [0x80001a64] : sd t5, 1592(ra) -- Store: [0x80003968]:0x55555555FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a90]:KMMAWB2_U t6, t5, t4
	-[0x80001a94]:sd t6, 1600(ra)
Current Store : [0x80001a98] : sd t5, 1608(ra) -- Store: [0x80003978]:0x4000000010000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001ac0]:KMMAWB2_U t6, t5, t4
	-[0x80001ac4]:sd t6, 1616(ra)
Current Store : [0x80001ac8] : sd t5, 1624(ra) -- Store: [0x80003988]:0xFFFFDFFF04000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001aec]:KMMAWB2_U t6, t5, t4
	-[0x80001af0]:sd t6, 1632(ra)
Current Store : [0x80001af4] : sd t5, 1640(ra) -- Store: [0x80003998]:0x0000000602000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001b18]:KMMAWB2_U t6, t5, t4
	-[0x80001b1c]:sd t6, 1648(ra)
Current Store : [0x80001b20] : sd t5, 1656(ra) -- Store: [0x800039a8]:0xFFFFFFF640000000




Last Coverpoint : ['rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80001b50]:KMMAWB2_U t6, t5, t4
	-[0x80001b54]:sd t6, 1664(ra)
Current Store : [0x80001b58] : sd t5, 1672(ra) -- Store: [0x800039b8]:0xFFDFFFFF00080000




Last Coverpoint : ['opcode : kmmawb2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 4096', 'rs2_h1_val == -33', 'rs2_h0_val == 0', 'rs1_w1_val == -268435457', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001b84]:KMMAWB2_U t6, t5, t4
	-[0x80001b88]:sd t6, 1680(ra)
Current Store : [0x80001b8c] : sd t5, 1688(ra) -- Store: [0x800039c8]:0xEFFFFFFFFFFEFFFF




Last Coverpoint : ['opcode : kmmawb2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 8', 'rs2_h1_val == 16384', 'rs2_h0_val == -32768', 'rs1_w1_val == -16777217', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80001bbc]:KMMAWB2_U t6, t5, t4
	-[0x80001bc0]:sd t6, 1696(ra)
Current Store : [0x80001bc4] : sd t5, 1704(ra) -- Store: [0x800039d8]:0xFEFFFFFF00000800





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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                           |                                   code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xD76E956EF76DF4E7|- opcode : kmmawb2.u<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_h0_val == -17<br>                                                                                                          |[0x800003c4]:KMMAWB2_U t5, t4, t4<br> [0x800003c8]:sd t5, 0(a1)<br>       |
|   2|[0x80003220]<br>0xAAC0FFC9EFFE5FFB|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -33<br> - rs2_h1_val == -4097<br>                                                                              |[0x80000400]:KMMAWB2_U a3, a3, a3<br> [0x80000404]:sd a3, 16(a1)<br>      |
|   3|[0x80003230]<br>0xFF76DF5614CC5F57|- rs1 : x22<br> - rs2 : x16<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -21846<br> - rs1_w1_val == 64<br> - rs1_w0_val == -536870913<br> |[0x80000438]:KMMAWB2_U sp, s6, a6<br> [0x8000043c]:sd sp, 32(a1)<br>      |
|   4|[0x80003240]<br>0xFBFFBFFFFFFFFFF3|- rs1 : x8<br> - rs2 : x4<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 8<br> - rs2_h0_val == -8193<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -17<br>                              |[0x80000468]:KMMAWB2_U fp, fp, tp<br> [0x8000046c]:sd fp, 48(a1)<br>      |
|   5|[0x80003250]<br>0xBFFF00080003FFFA|- rs1 : x12<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br>                                                                                                                                  |[0x80000498]:KMMAWB2_U ra, a2, ra<br> [0x8000049c]:sd ra, 64(a1)<br>      |
|   6|[0x80003260]<br>0xDBEB63EEDBEADFEE|- rs1 : x16<br> - rs2 : x23<br> - rd : x21<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -2049<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -1025<br>                                                                      |[0x800004c4]:KMMAWB2_U s5, a6, s7<br> [0x800004c8]:sd s5, 80(a1)<br>      |
|   7|[0x80003270]<br>0x0000000000000200|- rs1 : x6<br> - rs2 : x5<br> - rd : x10<br> - rs2_h3_val == -4097<br> - rs2_h1_val == 16<br> - rs2_h0_val == 32<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 64<br>                                                           |[0x800004f8]:KMMAWB2_U a0, t1, t0<br> [0x800004fc]:sd a0, 96(a1)<br>      |
|   8|[0x80003280]<br>0x7FFF00080007DFFF|- rs1 : x21<br> - rs2 : x6<br> - rd : x4<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 2<br> - rs2_h1_val == -1<br> - rs1_w1_val == 256<br> - rs1_w0_val == -257<br>                                                            |[0x80000528]:KMMAWB2_U tp, s5, t1<br> [0x8000052c]:sd tp, 112(a1)<br>     |
|   9|[0x80003290]<br>0xFDFFFFFF0001FBFF|- rs1 : x2<br> - rs2 : x12<br> - rd : x16<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 512<br> - rs1_w1_val == -1<br> - rs1_w0_val == -1073741825<br>                                                                          |[0x80000554]:KMMAWB2_U a6, sp, a2<br> [0x80000558]:sd a6, 128(a1)<br>     |
|  10|[0x800032a0]<br>0xADFEEDBEADFEEDBE|- rs1 : x24<br> - rs2 : x0<br> - rd : x9<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 524288<br>                                    |[0x8000058c]:KMMAWB2_U s1, s8, zero<br> [0x80000590]:sd s1, 144(a1)<br>   |
|  11|[0x800032b0]<br>0x7FBB6FAC7FBB6FAB|- rs1 : x5<br> - rs2 : x14<br> - rd : x3<br> - rs2_h3_val == -257<br> - rs2_h1_val == -257<br> - rs2_h0_val == 1<br> - rs1_w1_val == 8192<br> - rs1_w0_val == -5<br>                                                            |[0x800005c0]:KMMAWB2_U gp, t0, a4<br> [0x800005c4]:sd gp, 160(a1)<br>     |
|  12|[0x800032c0]<br>0xBEADFEEDBEADFEF1|- rs1 : x4<br> - rs2 : x22<br> - rd : x17<br> - rs2_h3_val == -129<br> - rs2_h0_val == 64<br> - rs1_w1_val == 0<br> - rs1_w0_val == 2048<br>                                                                                    |[0x800005ec]:KMMAWB2_U a7, tp, s6<br> [0x800005f0]:sd a7, 176(a1)<br>     |
|  13|[0x800032d0]<br>0xDDB7D5BFDDB7D5C4|- rs1 : x25<br> - rs2 : x30<br> - rd : x28<br> - rs2_h3_val == -65<br>                                                                                                                                                          |[0x8000061c]:KMMAWB2_U t3, s9, t5<br> [0x80000620]:sd t3, 192(a1)<br>     |
|  14|[0x800032e0]<br>0xDFFFFFDEF804FFF8|- rs1 : x30<br> - rs2 : x10<br> - rd : x23<br> - rs2_h3_val == -33<br> - rs2_h2_val == 4<br> - rs2_h1_val == -21846<br> - rs1_w1_val == -8193<br>                                                                               |[0x80000650]:KMMAWB2_U s7, t5, a0<br> [0x80000654]:sd s7, 208(a1)<br>     |
|  15|[0x800032f0]<br>0xF7FEFF020029AB0A|- rs1 : x26<br> - rs2 : x27<br> - rd : x6<br> - rs2_h3_val == -17<br> - rs2_h1_val == 2048<br> - rs1_w1_val == -513<br> - rs1_w0_val == -4194305<br>                                                                            |[0x80000684]:KMMAWB2_U t1, s10, s11<br> [0x80000688]:sd t1, 224(a1)<br>   |
|  16|[0x80003300]<br>0x03B73AB7FBB6FAB7|- rs1 : x10<br> - rs2 : x3<br> - rd : x31<br> - rs2_h3_val == -9<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 512<br> - rs2_h0_val == 16<br> - rs1_w1_val == -536870913<br>                                                    |[0x800006ac]:KMMAWB2_U t6, a0, gp<br> [0x800006b0]:sd t6, 240(a1)<br>     |
|  17|[0x80003310]<br>0xFF7FC000FFF80040|- rs1 : x1<br> - rs2 : x7<br> - rd : x22<br> - rs2_h3_val == -5<br> - rs2_h1_val == 16384<br> - rs1_w1_val == 8<br>                                                                                                             |[0x800006d4]:KMMAWB2_U s6, ra, t2<br> [0x800006d8]:sd s6, 256(a1)<br>     |
|  18|[0x80003320]<br>0x6FAB4FBB6FBB7FBC|- rs1 : x28<br> - rs2 : x15<br> - rd : x19<br> - rs2_h3_val == -3<br> - rs1_w0_val == -2097153<br>                                                                                                                              |[0x80000708]:KMMAWB2_U s3, t3, a5<br> [0x8000070c]:sd s3, 272(a1)<br>     |
|  19|[0x80003330]<br>0xBFE03FFF00243FEF|- rs1 : x17<br> - rs2 : x18<br> - rd : x29<br> - rs2_h3_val == -2<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -129<br> - rs1_w1_val == -134217729<br>                                                                         |[0x8000073c]:KMMAWB2_U t4, a7, s2<br> [0x80000740]:sd t4, 0(ra)<br>       |
|  20|[0x80003340]<br>0xFFFC020040018006|- rs1 : x19<br> - rs2 : x17<br> - rd : x7<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 1<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 536870912<br>                                                |[0x8000076c]:KMMAWB2_U t2, s3, a7<br> [0x80000770]:sd t2, 16(ra)<br>      |
|  21|[0x80003350]<br>0xFFFFFFF9FFFFFFF9|- rs1 : x3<br> - rs2 : x2<br> - rd : x25<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -2<br> - rs2_h0_val == -1<br> - rs1_w0_val == -16385<br>                                                                                 |[0x800007a8]:KMMAWB2_U s9, gp, sp<br> [0x800007ac]:sd s9, 32(ra)<br>      |
|  22|[0x80003360]<br>0xFFFFFDFCFFC00001|- rs1 : x14<br> - rs2 : x11<br> - rd : x26<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 512<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 128<br>                                                                              |[0x800007dc]:KMMAWB2_U s10, a4, a1<br> [0x800007e0]:sd s10, 48(ra)<br>    |
|  23|[0x80003370]<br>0xFFFD0006FFFFC000|- rs1 : x0<br> - rs2 : x26<br> - rd : x15<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -33<br> - rs1_w0_val == 0<br>                                                                                                            |[0x80000810]:KMMAWB2_U a5, zero, s10<br> [0x80000814]:sd a5, 64(ra)<br>   |
|  24|[0x80003380]<br>0xFFEE00007FFFFF81|- rs1 : x20<br> - rs2 : x9<br> - rd : x18<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -2049<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 1024<br>                                                                          |[0x80000840]:KMMAWB2_U s2, s4, s1<br> [0x80000844]:sd s2, 80(ra)<br>      |
|  25|[0x80003390]<br>0xFFDFFFFF0007FE00|- rs1 : x9<br> - rs2 : x19<br> - rd : x24<br> - rs2_h3_val == 1024<br> - rs2_h0_val == -2<br> - rs1_w0_val == 8388608<br>                                                                                                       |[0x8000086c]:KMMAWB2_U s8, s1, s3<br> [0x80000870]:sd s8, 96(ra)<br>      |
|  26|[0x800033a0]<br>0x2080000300010200|- rs1 : x23<br> - rs2 : x20<br> - rd : x11<br> - rs2_h3_val == 512<br> - rs2_h2_val == 16384<br> - rs2_h0_val == -3<br>                                                                                                         |[0x8000089c]:KMMAWB2_U a1, s7, s4<br> [0x800008a0]:sd a1, 112(ra)<br>     |
|  27|[0x800033b0]<br>0x00002C00FFFFFFFC|- rs1 : x27<br> - rs2 : x21<br> - rd : x5<br> - rs2_h3_val == 256<br> - rs2_h1_val == 64<br> - rs1_w1_val == 33554432<br>                                                                                                       |[0x800008cc]:KMMAWB2_U t0, s11, s5<br> [0x800008d0]:sd t0, 128(ra)<br>    |
|  28|[0x800033c0]<br>0xFBF70200FFFAFF9C|- rs1 : x11<br> - rs2 : x8<br> - rd : x12<br> - rs2_h3_val == 128<br> - rs2_h1_val == -513<br> - rs1_w1_val == -1048577<br>                                                                                                     |[0x800008fc]:KMMAWB2_U a2, a1, fp<br> [0x80000900]:sd a2, 144(ra)<br>     |
|  29|[0x800033d0]<br>0x02004000FFFCEFBD|- rs1 : x18<br> - rs2 : x31<br> - rd : x20<br> - rs2_h3_val == 64<br> - rs2_h2_val == -65<br> - rs2_h1_val == -65<br> - rs2_h0_val == -65<br> - rs1_w1_val == -9<br> - rs1_w0_val == 2097152<br>                                |[0x8000092c]:KMMAWB2_U s4, s2, t6<br> [0x80000930]:sd s4, 160(ra)<br>     |
|  30|[0x800033e0]<br>0xFFFF83FF000000C1|- rs1 : x15<br> - rs2 : x28<br> - rd : x14<br> - rs2_h3_val == 32<br> - rs2_h2_val == 16<br> - rs1_w1_val == 2097152<br>                                                                                                        |[0x80000968]:KMMAWB2_U a4, a5, t3<br> [0x8000096c]:sd a4, 176(ra)<br>     |
|  31|[0x800033f0]<br>0x0200000000000003|- rs1 : x7<br> - rs2 : x24<br> - rd : x27<br> - rs2_h3_val == 16<br> - rs2_h2_val == 256<br>                                                                                                                                    |[0x8000099c]:KMMAWB2_U s11, t2, s8<br> [0x800009a0]:sd s11, 192(ra)<br>   |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x25<br> - rd : x0<br> - rs2_h3_val == 8<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -16777217<br>                                                                                                    |[0x800009d4]:KMMAWB2_U zero, t6, s9<br> [0x800009d8]:sd zero, 208(ra)<br> |
|  33|[0x80003410]<br>0xFEFFFE7F0AAAC801|- rs2_h3_val == 4<br> - rs2_h1_val == 256<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -268435457<br>                                                                                                                       |[0x80000a08]:KMMAWB2_U t6, t5, t4<br> [0x80000a0c]:sd t6, 224(ra)<br>     |
|  34|[0x80003420]<br>0xFEFF7E7D0AAAC807|- rs2_h3_val == 2<br> - rs2_h2_val == -16385<br> - rs2_h1_val == -2<br> - rs1_w1_val == 65536<br> - rs1_w0_val == -9<br>                                                                                                        |[0x80000a38]:KMMAWB2_U t6, t5, t4<br> [0x80000a3c]:sd t6, 240(ra)<br>     |
|  35|[0x80003430]<br>0xFEFF7E7E0AAB4808|- rs2_h3_val == 1<br> - rs2_h2_val == 32<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -32769<br>                                                                                                                                |[0x80000a68]:KMMAWB2_U t6, t5, t4<br> [0x80000a6c]:sd t6, 256(ra)<br>     |
|  36|[0x80003440]<br>0xFEFF7E3E0AAB4408|- rs2_h0_val == -2049<br> - rs1_w0_val == 16384<br>                                                                                                                                                                             |[0x80000a98]:KMMAWB2_U t6, t5, t4<br> [0x80000a9c]:sd t6, 272(ra)<br>     |
|  37|[0x80003450]<br>0xFEFF763E0AAB4408|- rs2_h3_val == -1<br> - rs2_h2_val == 128<br> - rs1_w1_val == -524289<br>                                                                                                                                                      |[0x80000ac4]:KMMAWB2_U t6, t5, t4<br> [0x80000ac8]:sd t6, 288(ra)<br>     |
|  38|[0x80003460]<br>0xFEF4CB7E0AAFEEB3|- rs2_h2_val == -21846<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == -1431655766<br>                                                                                                                                          |[0x80000b00]:KMMAWB2_U t6, t5, t4<br> [0x80000b04]:sd t6, 304(ra)<br>     |
|  39|[0x80003470]<br>0xFEF4CB7E0A2FECB3|- rs2_h2_val == 21845<br> - rs2_h0_val == -16385<br> - rs1_w0_val == 16777216<br>                                                                                                                                               |[0x80000b28]:KMMAWB2_U t6, t5, t4<br> [0x80000b2c]:sd t6, 320(ra)<br>     |
|  40|[0x80003480]<br>0x0EF4AB7E0A2FECB3|- rs2_h2_val == 32767<br> - rs2_h1_val == -32768<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -3<br>                                                                                                                       |[0x80000b5c]:KMMAWB2_U t6, t5, t4<br> [0x80000b60]:sd t6, 336(ra)<br>     |
|  41|[0x80003490]<br>0x0EF4AB860A300CB3|- rs2_h2_val == -4097<br> - rs2_h0_val == 2<br> - rs1_w1_val == -65<br> - rs1_w0_val == 134217728<br>                                                                                                                           |[0x80000b8c]:KMMAWB2_U t6, t5, t4<br> [0x80000b90]:sd t6, 352(ra)<br>     |
|  42|[0x800034a0]<br>0x0EF4BB8A0A300CB3|- rs2_h2_val == -1025<br> - rs2_h1_val == -8193<br> - rs1_w1_val == -131073<br>                                                                                                                                                 |[0x80000bb8]:KMMAWB2_U t6, t5, t4<br> [0x80000bbc]:sd t6, 368(ra)<br>     |
|  43|[0x800034b0]<br>0x0EF4BB8A0A300B73|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                     |[0x80000be4]:KMMAWB2_U t6, t5, t4<br> [0x80000be8]:sd t6, 384(ra)<br>     |
|  44|[0x800034c0]<br>0x0EF4BB8A0A2F8B6B|- rs2_h0_val == -4097<br> - rs1_w1_val == -5<br> - rs1_w0_val == 262144<br>                                                                                                                                                     |[0x80000c14]:KMMAWB2_U t6, t5, t4<br> [0x80000c18]:sd t6, 400(ra)<br>     |
|  45|[0x800034d0]<br>0x0EECBB0A0A2F8367|- rs2_h1_val == -17<br> - rs2_h0_val == -513<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 131072<br>                                                                                                                         |[0x80000c44]:KMMAWB2_U t6, t5, t4<br> [0x80000c48]:sd t6, 416(ra)<br>     |
|  46|[0x800034e0]<br>0x0EE87B0A0A2F8567|- rs2_h2_val == -17<br> - rs2_h1_val == 4<br> - rs2_h0_val == 256<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 65536<br>                                                                                                   |[0x80000c78]:KMMAWB2_U t6, t5, t4<br> [0x80000c7c]:sd t6, 432(ra)<br>     |
|  47|[0x800034f0]<br>0x0EF07F0A0A2F856E|- rs2_h2_val == -513<br> - rs1_w0_val == 32768<br>                                                                                                                                                                              |[0x80000cb0]:KMMAWB2_U t6, t5, t4<br> [0x80000cb4]:sd t6, 448(ra)<br>     |
|  48|[0x80003500]<br>0x0EF07F0F0A2F756E|- rs1_w1_val == -16385<br> - rs1_w0_val == 8192<br>                                                                                                                                                                             |[0x80000ce8]:KMMAWB2_U t6, t5, t4<br> [0x80000cec]:sd t6, 464(ra)<br>     |
|  49|[0x80003510]<br>0x06EFFF0F0A2F75EE|- rs2_h0_val == 1024<br> - rs1_w0_val == 4096<br>                                                                                                                                                                               |[0x80000d18]:KMMAWB2_U t6, t5, t4<br> [0x80000d1c]:sd t6, 480(ra)<br>     |
|  50|[0x80003520]<br>0x06EFFF110A2F75EE|- rs2_h1_val == -129<br> - rs1_w0_val == 512<br>                                                                                                                                                                                |[0x80000d48]:KMMAWB2_U t6, t5, t4<br> [0x80000d4c]:sd t6, 496(ra)<br>     |
|  51|[0x80003530]<br>0x06F1FF510A2F75EA|- rs1_w0_val == 256<br>                                                                                                                                                                                                         |[0x80000d7c]:KMMAWB2_U t6, t5, t4<br> [0x80000d80]:sd t6, 512(ra)<br>     |
|  52|[0x80003540]<br>0x06F200510A2F75EA|- rs2_h2_val == -1<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 32<br>                                                                                                                                                      |[0x80000dac]:KMMAWB2_U t6, t5, t4<br> [0x80000db0]:sd t6, 528(ra)<br>     |
|  53|[0x80003550]<br>0x06F200510A2F75EA|- rs2_h0_val == -33<br> - rs1_w0_val == 16<br>                                                                                                                                                                                  |[0x80000ddc]:KMMAWB2_U t6, t5, t4<br> [0x80000de0]:sd t6, 544(ra)<br>     |
|  54|[0x80003560]<br>0x06F280510A2F75EA|- rs2_h1_val == 8<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 8<br>                                                                                                                                                        |[0x80000e0c]:KMMAWB2_U t6, t5, t4<br> [0x80000e10]:sd t6, 560(ra)<br>     |
|  55|[0x80003570]<br>0x06F280560A2F75EA|- rs2_h0_val == 128<br> - rs1_w0_val == 4<br>                                                                                                                                                                                   |[0x80000e34]:KMMAWB2_U t6, t5, t4<br> [0x80000e38]:sd t6, 576(ra)<br>     |
|  56|[0x80003580]<br>0x06F280560A2F75EB|- rs1_w0_val == 2<br>                                                                                                                                                                                                           |[0x80000e64]:KMMAWB2_U t6, t5, t4<br> [0x80000e68]:sd t6, 592(ra)<br>     |
|  57|[0x80003590]<br>0x06D270560A2F75EB|- rs1_w1_val == 134217728<br> - rs1_w0_val == 1<br>                                                                                                                                                                             |[0x80000e94]:KMMAWB2_U t6, t5, t4<br> [0x80000e98]:sd t6, 608(ra)<br>     |
|  58|[0x800035a0]<br>0x06D279560A2F75EB|- rs2_h0_val == 4<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                               |[0x80000ec0]:KMMAWB2_U t6, t5, t4<br> [0x80000ec4]:sd t6, 624(ra)<br>     |
|  59|[0x800035b0]<br>0x06D0F9560A2F75EB|- rs2_h2_val == -3<br> - rs2_h1_val == 128<br> - rs1_w0_val == -1<br>                                                                                                                                                           |[0x80000ee8]:KMMAWB2_U t6, t5, t4<br> [0x80000eec]:sd t6, 640(ra)<br>     |
|  60|[0x800035c0]<br>0x06D0F9560A2F74EB|- rs2_h2_val == -257<br> - rs1_w1_val == 16<br> - rs1_w0_val == -513<br>                                                                                                                                                        |[0x80000f18]:KMMAWB2_U t6, t5, t4<br> [0x80000f1c]:sd t6, 656(ra)<br>     |
|  61|[0x800035d0]<br>0x06D0F9560A3574EB|- rs2_h2_val == -129<br> - rs2_h0_val == -9<br> - rs1_w1_val == -2<br>                                                                                                                                                          |[0x80000f4c]:KMMAWB2_U t6, t5, t4<br> [0x80000f50]:sd t6, 672(ra)<br>     |
|  62|[0x800035e0]<br>0x06D1895609B574EB|- rs2_h2_val == -9<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                 |[0x80000f78]:KMMAWB2_U t6, t5, t4<br> [0x80000f7c]:sd t6, 688(ra)<br>     |
|  63|[0x800035f0]<br>0x06D189F609B5750B|- rs2_h2_val == -5<br>                                                                                                                                                                                                          |[0x80000fa0]:KMMAWB2_U t6, t5, t4<br> [0x80000fa4]:sd t6, 704(ra)<br>     |
|  64|[0x80003600]<br>0x06D18A3709B5750C|- rs2_h2_val == -32768<br> - rs2_h1_val == 21845<br>                                                                                                                                                                            |[0x80000fd0]:KMMAWB2_U t6, t5, t4<br> [0x80000fd4]:sd t6, 720(ra)<br>     |
|  65|[0x80003610]<br>0x06D18A3308B5750C|- rs2_h2_val == 4096<br> - rs1_w1_val == -33<br>                                                                                                                                                                                |[0x80001000]:KMMAWB2_U t6, t5, t4<br> [0x80001004]:sd t6, 736(ra)<br>     |
|  66|[0x80003620]<br>0x06518A3308B5F50A|- rs2_h2_val == 2048<br>                                                                                                                                                                                                        |[0x80001038]:KMMAWB2_U t6, t5, t4<br> [0x8000103c]:sd t6, 752(ra)<br>     |
|  67|[0x80003630]<br>0x06528A3308B5F506|- rs2_h2_val == 1024<br> - rs2_h1_val == 2<br> - rs2_h0_val == -1025<br>                                                                                                                                                        |[0x80001068]:KMMAWB2_U t6, t5, t4<br> [0x8000106c]:sd t6, 768(ra)<br>     |
|  68|[0x80003640]<br>0x06528A3308B4D506|- rs2_h2_val == 64<br>                                                                                                                                                                                                          |[0x80001098]:KMMAWB2_U t6, t5, t4<br> [0x8000109c]:sd t6, 784(ra)<br>     |
|  69|[0x80003650]<br>0x06528A3308B4D4FE|- rs2_h2_val == 1<br> - rs1_w1_val == -17<br>                                                                                                                                                                                   |[0x800010c8]:KMMAWB2_U t6, t5, t4<br> [0x800010cc]:sd t6, 800(ra)<br>     |
|  70|[0x80003660]<br>0x06526A3308B4D4FE|- rs2_h1_val == -16385<br> - rs1_w1_val == 16384<br>                                                                                                                                                                            |[0x800010f8]:KMMAWB2_U t6, t5, t4<br> [0x800010fc]:sd t6, 816(ra)<br>     |
|  71|[0x80003670]<br>0x06526A3308A4D4FE|- rs2_h0_val == 16384<br>                                                                                                                                                                                                       |[0x80001128]:KMMAWB2_U t6, t5, t4<br> [0x8000112c]:sd t6, 832(ra)<br>     |
|  72|[0x80003680]<br>0x06527A4308A8D4FE|- rs2_h0_val == 8192<br>                                                                                                                                                                                                        |[0x8000115c]:KMMAWB2_U t6, t5, t4<br> [0x80001160]:sd t6, 848(ra)<br>     |
|  73|[0x80003690]<br>0x06503A4308A8D506|- rs2_h1_val == -1025<br> - rs2_h0_val == 4096<br>                                                                                                                                                                              |[0x80001190]:KMMAWB2_U t6, t5, t4<br> [0x80001194]:sd t6, 864(ra)<br>     |
|  74|[0x800036a0]<br>0x065039430928D506|- rs2_h0_val == 2048<br> - rs1_w1_val == -65537<br>                                                                                                                                                                             |[0x800011c0]:KMMAWB2_U t6, t5, t4<br> [0x800011c4]:sd t6, 880(ra)<br>     |
|  75|[0x800036b0]<br>0x0650394309295506|- rs2_h0_val == 8<br>                                                                                                                                                                                                           |[0x800011ec]:KMMAWB2_U t6, t5, t4<br> [0x800011f0]:sd t6, 896(ra)<br>     |
|  76|[0x800036c0]<br>0x06FB8E9809295506|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                 |[0x80001220]:KMMAWB2_U t6, t5, t4<br> [0x80001224]:sd t6, 912(ra)<br>     |
|  77|[0x800036d0]<br>0xDC50E3EE09295504|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                  |[0x80001250]:KMMAWB2_U t6, t5, t4<br> [0x80001254]:sd t6, 928(ra)<br>     |
|  78|[0x800036e0]<br>0xDC4AE3EE09296904|- rs1_w1_val == 2147483647<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                    |[0x80001288]:KMMAWB2_U t6, t5, t4<br> [0x8000128c]:sd t6, 944(ra)<br>     |
|  79|[0x800036f0]<br>0xDC5363EE09296B04|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                                 |[0x800012c0]:KMMAWB2_U t6, t5, t4<br> [0x800012c4]:sd t6, 960(ra)<br>     |
|  80|[0x80003700]<br>0xDC5363FE09296B04|- rs1_w1_val == -262145<br>                                                                                                                                                                                                     |[0x800012ec]:KMMAWB2_U t6, t5, t4<br> [0x800012f0]:sd t6, 976(ra)<br>     |
|  81|[0x80003710]<br>0xDC535BFE09296D05|- rs1_w1_val == -4097<br>                                                                                                                                                                                                       |[0x80001320]:KMMAWB2_U t6, t5, t4<br> [0x80001324]:sd t6, 992(ra)<br>     |
|  82|[0x80003720]<br>0xDC535BFE09296D05|- rs1_w1_val == -1025<br>                                                                                                                                                                                                       |[0x80001350]:KMMAWB2_U t6, t5, t4<br> [0x80001354]:sd t6, 1008(ra)<br>    |
|  83|[0x80003730]<br>0xDC535C3E09316D26|- rs1_w1_val == -257<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                           |[0x80001384]:KMMAWB2_U t6, t5, t4<br> [0x80001388]:sd t6, 1024(ra)<br>    |
|  84|[0x80003740]<br>0xDC535C3E09316D26|- rs1_w1_val == -129<br>                                                                                                                                                                                                        |[0x800013b4]:KMMAWB2_U t6, t5, t4<br> [0x800013b8]:sd t6, 1040(ra)<br>    |
|  85|[0x80003750]<br>0xDC535C3E05316D26|- rs1_w0_val == -2147483648<br> - rs1_w1_val == -3<br>                                                                                                                                                                          |[0x800013e0]:KMMAWB2_U t6, t5, t4<br> [0x800013e4]:sd t6, 1056(ra)<br>    |
|  86|[0x80003760]<br>0xDC545C3E05316E46|- rs2_h3_val == -513<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                        |[0x80001418]:KMMAWB2_U t6, t5, t4<br> [0x8000141c]:sd t6, 1072(ra)<br>    |
|  87|[0x80003770]<br>0xDC575C3E05346E46|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                  |[0x80001450]:KMMAWB2_U t6, t5, t4<br> [0x80001454]:sd t6, 1088(ra)<br>    |
|  88|[0x80003780]<br>0xDC575C8E05347E46|- rs2_h0_val == 32767<br> - rs1_w1_val == 524288<br>                                                                                                                                                                            |[0x80001484]:KMMAWB2_U t6, t5, t4<br> [0x80001488]:sd t6, 1104(ra)<br>    |
|  89|[0x80003790]<br>0xDC575C0A05347636|- rs1_w1_val == 131072<br>                                                                                                                                                                                                      |[0x800014b4]:KMMAWB2_U t6, t5, t4<br> [0x800014b8]:sd t6, 1120(ra)<br>    |
|  90|[0x800037a0]<br>0xDC575B8905347636|- rs1_w1_val == 32768<br>                                                                                                                                                                                                       |[0x800014dc]:KMMAWB2_U t6, t5, t4<br> [0x800014e0]:sd t6, 1136(ra)<br>    |
|  91|[0x800037b0]<br>0xDC576389053475B6|- rs1_w1_val == 4096<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                            |[0x80001504]:KMMAWB2_U t6, t5, t4<br> [0x80001508]:sd t6, 1152(ra)<br>    |
|  92|[0x800037c0]<br>0xDC57638D0533CB0B|- rs2_h0_val == 21845<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -65537<br>                                                                                                                                                   |[0x80001538]:KMMAWB2_U t6, t5, t4<br> [0x8000153c]:sd t6, 1168(ra)<br>    |
|  93|[0x800037d0]<br>0xDC57638D0534030B|- rs1_w1_val == 512<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                           |[0x8000156c]:KMMAWB2_U t6, t5, t4<br> [0x80001570]:sd t6, 1184(ra)<br>    |
|  94|[0x800037e0]<br>0xDC57638D1534030B|- rs1_w1_val == 128<br>                                                                                                                                                                                                         |[0x8000159c]:KMMAWB2_U t6, t5, t4<br> [0x800015a0]:sd t6, 1200(ra)<br>    |
|  95|[0x800037f0]<br>0xDC57638D15340B0B|- rs1_w1_val == 32<br>                                                                                                                                                                                                          |[0x800015cc]:KMMAWB2_U t6, t5, t4<br> [0x800015d0]:sd t6, 1216(ra)<br>    |
|  96|[0x80003800]<br>0xDC57638D15340B0B|- rs1_w1_val == 4<br>                                                                                                                                                                                                           |[0x800015f8]:KMMAWB2_U t6, t5, t4<br> [0x800015fc]:sd t6, 1232(ra)<br>    |
|  97|[0x80003810]<br>0xDC57638D15341B0B|- rs1_w1_val == 2<br>                                                                                                                                                                                                           |[0x80001624]:KMMAWB2_U t6, t5, t4<br> [0x80001628]:sd t6, 1248(ra)<br>    |
|  98|[0x80003820]<br>0xDC57638D15331B0C|- rs1_w1_val == 1<br>                                                                                                                                                                                                           |[0x80001654]:KMMAWB2_U t6, t5, t4<br> [0x80001658]:sd t6, 1264(ra)<br>    |
|  99|[0x80003830]<br>0xDC56A38D152DC5B7|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                  |[0x8000168c]:KMMAWB2_U t6, t5, t4<br> [0x80001690]:sd t6, 1280(ra)<br>    |
| 100|[0x80003840]<br>0xDC56538D152DC5B5|- rs2_h1_val == -9<br>                                                                                                                                                                                                          |[0x800016c0]:KMMAWB2_U t6, t5, t4<br> [0x800016c4]:sd t6, 1296(ra)<br>    |
| 101|[0x80003850]<br>0xDC56738D1527C5B5|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                  |[0x800016ec]:KMMAWB2_U t6, t5, t4<br> [0x800016f0]:sd t6, 1312(ra)<br>    |
| 102|[0x80003860]<br>0xDC5E737D1527C5B5|- rs2_h1_val == -3<br> - rs1_w0_val == -65<br>                                                                                                                                                                                  |[0x80001720]:KMMAWB2_U t6, t5, t4<br> [0x80001724]:sd t6, 1328(ra)<br>    |
| 103|[0x80003870]<br>0xDC5E737B1527D5B5|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                  |[0x80001750]:KMMAWB2_U t6, t5, t4<br> [0x80001754]:sd t6, 1344(ra)<br>    |
| 104|[0x80003880]<br>0xDC5A337B1727D5B6|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                   |[0x8000178c]:KMMAWB2_U t6, t5, t4<br> [0x80001790]:sd t6, 1360(ra)<br>    |
| 105|[0x80003890]<br>0xDC5A537B16E7D5B6|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                    |[0x800017bc]:KMMAWB2_U t6, t5, t4<br> [0x800017c0]:sd t6, 1376(ra)<br>    |
| 106|[0x800038a0]<br>0xDC5B538316EBD5B6|- rs2_h1_val == 1024<br>                                                                                                                                                                                                        |[0x800017ec]:KMMAWB2_U t6, t5, t4<br> [0x800017f0]:sd t6, 1392(ra)<br>    |
| 107|[0x800038b0]<br>0xDC5B538416E9D5B6|- rs1_w0_val == -524289<br>                                                                                                                                                                                                     |[0x8000181c]:KMMAWB2_U t6, t5, t4<br> [0x80001820]:sd t6, 1408(ra)<br>    |
| 108|[0x800038c0]<br>0xDC5B538416E995B6|- rs1_w0_val == -262145<br>                                                                                                                                                                                                     |[0x80001850]:KMMAWB2_U t6, t5, t4<br> [0x80001854]:sd t6, 1424(ra)<br>    |
| 109|[0x800038d0]<br>0xDC57FE2F16EA97B6|- rs2_h1_val == 32<br>                                                                                                                                                                                                          |[0x8000188c]:KMMAWB2_U t6, t5, t4<br> [0x80001890]:sd t6, 1440(ra)<br>    |
| 110|[0x800038e0]<br>0xDC57BE2F16EA97DE|- rs1_w0_val == -131073<br>                                                                                                                                                                                                     |[0x800018c4]:KMMAWB2_U t6, t5, t4<br> [0x800018c8]:sd t6, 1456(ra)<br>    |
| 111|[0x800038f0]<br>0xDC47BE2F16EAA7DF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                       |[0x800018fc]:KMMAWB2_U t6, t5, t4<br> [0x80001900]:sd t6, 1472(ra)<br>    |
| 112|[0x80003900]<br>0xDC47BE2F16EAA7EF|- rs1_w0_val == -4097<br>                                                                                                                                                                                                       |[0x80001930]:KMMAWB2_U t6, t5, t4<br> [0x80001934]:sd t6, 1488(ra)<br>    |
| 113|[0x80003910]<br>0xDC47BE3616EAA7F0|- rs1_w0_val == -2049<br>                                                                                                                                                                                                       |[0x80001964]:KMMAWB2_U t6, t5, t4<br> [0x80001968]:sd t6, 1504(ra)<br>    |
| 114|[0x80003920]<br>0xDC47BE3416EAA871|- rs1_w0_val == -129<br>                                                                                                                                                                                                        |[0x80001994]:KMMAWB2_U t6, t5, t4<br> [0x80001998]:sd t6, 1520(ra)<br>    |
| 115|[0x80003930]<br>0xDC4B138916EAA871|- rs1_w0_val == -33<br>                                                                                                                                                                                                         |[0x800019c8]:KMMAWB2_U t6, t5, t4<br> [0x800019cc]:sd t6, 1536(ra)<br>    |
| 116|[0x80003940]<br>0xDC4AF38916EAA871|- rs2_h0_val == -5<br>                                                                                                                                                                                                          |[0x800019fc]:KMMAWB2_U t6, t5, t4<br> [0x80001a00]:sd t6, 1552(ra)<br>    |
| 117|[0x80003950]<br>0xD44B138916EAA871|- rs2_h0_val == -257<br> - rs1_w1_val == -268435457<br>                                                                                                                                                                         |[0x80001a30]:KMMAWB2_U t6, t5, t4<br> [0x80001a34]:sd t6, 1568(ra)<br>    |
| 118|[0x80003960]<br>0xD44468DE16EAA871|- rs1_w0_val == -2<br>                                                                                                                                                                                                          |[0x80001a5c]:KMMAWB2_U t6, t5, t4<br> [0x80001a60]:sd t6, 1584(ra)<br>    |
| 119|[0x80003970]<br>0xD44468DE12EA8871|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                   |[0x80001a90]:KMMAWB2_U t6, t5, t4<br> [0x80001a94]:sd t6, 1600(ra)<br>    |
| 120|[0x80003980]<br>0xD44468DF12EA9071|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                    |[0x80001ac0]:KMMAWB2_U t6, t5, t4<br> [0x80001ac4]:sd t6, 1616(ra)<br>    |
| 121|[0x80003990]<br>0xD44468E512EA0C71|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                    |[0x80001aec]:KMMAWB2_U t6, t5, t4<br> [0x80001af0]:sd t6, 1632(ra)<br>    |
| 122|[0x800039a0]<br>0xD44468E512EB0C71|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                  |[0x80001b18]:KMMAWB2_U t6, t5, t4<br> [0x80001b1c]:sd t6, 1648(ra)<br>    |
| 123|[0x800039b0]<br>0xD443E8E512E70C61|- rs2_h1_val == -5<br>                                                                                                                                                                                                          |[0x80001b50]:KMMAWB2_U t6, t5, t4<br> [0x80001b54]:sd t6, 1664(ra)<br>    |
