
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001c40')]      |
| SIG_REGION                | [('0x80003210', '0x80003a10', '256 dwords')]      |
| COV_LABELS                | kmmawb.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawb.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 256      |
| STAT1                     | 125      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 128     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001364]:KMMAWB_U t6, t5, t4
      [0x80001368]:sd t6, 1024(fp)
 -- Signature Address: 0x80003710 Data: 0x0F5E55407FF96090
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 21845
      - rs2_h2_val == -1
      - rs2_h1_val == 4096
      - rs2_h0_val == 0
      - rs1_w1_val == -8193
      - rs1_w0_val == -131073




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bd0]:KMMAWB_U t6, t5, t4
      [0x80001bd4]:sd t6, 1744(fp)
 -- Signature Address: 0x800039e0 Data: 0xFD4B77BE7CEACDA8
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_h3_val == -65
      - rs2_h2_val == -129
      - rs2_h1_val == -33
      - rs2_h0_val == -33
      - rs1_w1_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001c30]:KMMAWB_U t6, t5, t4
      [0x80001c34]:sd t6, 1776(fp)
 -- Signature Address: 0x80003a00 Data: 0xFCCB78BE7CEACE28
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -129
      - rs2_h2_val == 32767
      - rs2_h1_val == 32
      - rs2_h0_val == 1
      - rs1_w1_val == -16777217
      - rs1_w0_val == 2






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x15', 'rs2 : x15', 'rd : x22', 'rs1 == rs2 != rd', 'rs2_h3_val == -65', 'rs2_h2_val == -129', 'rs2_h1_val == -33', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800003c8]:KMMAWB_U s6, a5, a5
	-[0x800003cc]:sd s6, 0(sp)
Current Store : [0x800003d0] : sd a5, 8(sp) -- Store: [0x80003218]:0xFFBFFF7FFFDFFFDF




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -65', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800003f8]:KMMAWB_U a4, a4, a4
	-[0x800003fc]:sd a4, 16(sp)
Current Store : [0x80000400] : sd a4, 24(sp) -- Store: [0x80003228]:0xAAC0AA540020FB9E




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 1', 'rs2_h1_val == 2', 'rs2_h0_val == 8', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000428]:KMMAWB_U a1, zero, s7
	-[0x8000042c]:sd a1, 32(sp)
Current Store : [0x80000430] : sd zero, 40(sp) -- Store: [0x80003238]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x20', 'rd : x19', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -257', 'rs2_h1_val == -129', 'rs2_h0_val == 16384', 'rs1_w1_val == 16384', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000454]:KMMAWB_U s3, s3, s4
	-[0x80000458]:sd s3, 48(sp)
Current Store : [0x8000045c] : sd s3, 56(sp) -- Store: [0x80003248]:0x00003FC000000500




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x9', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == 32767', 'rs2_h1_val == -2', 'rs2_h0_val == 2', 'rs1_w1_val == -16777217', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000048c]:KMMAWB_U s1, s10, s1
	-[0x80000490]:sd s1, 64(sp)
Current Store : [0x80000494] : sd s10, 72(sp) -- Store: [0x80003258]:0xFEFFFFFFFFEFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x26', 'rd : x16', 'rs2_h3_val == -8193', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x800004bc]:KMMAWB_U a6, s4, s10
	-[0x800004c0]:sd a6, 80(sp)
Current Store : [0x800004c4] : sd s4, 88(sp) -- Store: [0x80003268]:0xDFFFFFFFFFFFFFF9




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x8', 'rs2_h3_val == -4097', 'rs2_h2_val == 8', 'rs1_w1_val == 8', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800004f0]:KMMAWB_U fp, s2, s11
	-[0x800004f4]:sd fp, 96(sp)
Current Store : [0x800004f8] : sd s2, 104(sp) -- Store: [0x80003278]:0x00000008FF7FFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x5', 'rs2_h3_val == -2049', 'rs2_h2_val == 16384', 'rs2_h0_val == 4096', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000051c]:KMMAWB_U t0, t6, s6
	-[0x80000520]:sd t0, 112(sp)
Current Store : [0x80000524] : sd t6, 120(sp) -- Store: [0x80003288]:0x0000000100000009




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x25', 'rs2_h3_val == -1025', 'rs2_h2_val == -1', 'rs1_w1_val == 134217728', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000558]:KMMAWB_U s9, s6, fp
	-[0x8000055c]:sd s9, 128(sp)
Current Store : [0x80000560] : sd s6, 136(sp) -- Store: [0x80003298]:0x08000000FFFF7FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x29', 'rs2_h3_val == -513', 'rs2_h1_val == 1', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000588]:KMMAWB_U t4, t2, a3
	-[0x8000058c]:sd t4, 144(sp)
Current Store : [0x80000590] : sd t2, 152(sp) -- Store: [0x800032a8]:0x00000006FFFFFFFC




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x10', 'rs2_h3_val == -257', 'rs2_h1_val == 32767', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800005bc]:KMMAWB_U a0, ra, t6
	-[0x800005c0]:sd a0, 160(sp)
Current Store : [0x800005c4] : sd ra, 168(sp) -- Store: [0x800032b8]:0x00000003FFFDFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x11', 'rd : x0', 'rs2_h3_val == -129', 'rs2_h0_val == 1', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800005ec]:KMMAWB_U zero, gp, a1
	-[0x800005f0]:sd zero, 176(sp)
Current Store : [0x800005f4] : sd gp, 184(sp) -- Store: [0x800032c8]:0xFEFFFFFF00000002




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x13', 'rs2_h3_val == -33', 'rs2_h1_val == 8192', 'rs2_h0_val == -21846', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000061c]:KMMAWB_U a3, s11, t3
	-[0x80000620]:sd a3, 192(sp)
Current Store : [0x80000624] : sd s11, 200(sp) -- Store: [0x800032d8]:0x0000080000000003




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x20', 'rs2_h3_val == -17', 'rs2_h2_val == 128', 'rs2_h1_val == 128', 'rs2_h0_val == -9', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000650]:KMMAWB_U s4, s7, a2
	-[0x80000654]:sd s4, 208(sp)
Current Store : [0x80000658] : sd s7, 216(sp) -- Store: [0x800032e8]:0x00002000FFEFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rd : x26', 'rs2_h3_val == -9', 'rs2_h2_val == -2', 'rs2_h0_val == 512', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000680]:KMMAWB_U s10, fp, a7
	-[0x80000684]:sd s10, 224(sp)
Current Store : [0x80000688] : sd fp, 232(sp) -- Store: [0x800032f8]:0xFFFDFFFFFFFFFFFC




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x30', 'rs2_h3_val == -5', 'rs2_h2_val == 4', 'rs2_h1_val == -2049', 'rs1_w1_val == -2049', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800006b4]:KMMAWB_U t5, s9, tp
	-[0x800006b8]:sd t5, 240(sp)
Current Store : [0x800006bc] : sd s9, 248(sp) -- Store: [0x80003308]:0xFFFFF7FFFFFFBFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x2', 'rd : x6', 'rs2_h3_val == -3', 'rs2_h2_val == -513', 'rs2_h0_val == -4097', 'rs1_w1_val == 128', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800006f0]:KMMAWB_U t1, a7, sp
	-[0x800006f4]:sd t1, 0(fp)
Current Store : [0x800006f8] : sd a7, 8(fp) -- Store: [0x80003318]:0x00000080EFFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x0', 'rd : x18', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000718]:KMMAWB_U s2, a2, zero
	-[0x8000071c]:sd s2, 16(fp)
Current Store : [0x80000720] : sd a2, 24(fp) -- Store: [0x80003328]:0xFFFFFFFAFBFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x15', 'rs2_h3_val == -32768', 'rs2_h2_val == 21845', 'rs2_h1_val == 21845', 'rs2_h0_val == -1025', 'rs1_w1_val == 67108864', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000754]:KMMAWB_U a5, t5, ra
	-[0x80000758]:sd a5, 32(fp)
Current Store : [0x8000075c] : sd t5, 40(fp) -- Store: [0x80003338]:0x0400000000200000




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x17', 'rs2_h3_val == 16384', 'rs2_h1_val == -8193', 'rs2_h0_val == 21845', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000794]:KMMAWB_U a7, t3, s9
	-[0x80000798]:sd a7, 48(fp)
Current Store : [0x8000079c] : sd t3, 56(fp) -- Store: [0x80003348]:0x0400000000000800




Last Coverpoint : ['rs1 : x13', 'rs2 : x24', 'rd : x1', 'rs2_h3_val == 8192', 'rs2_h1_val == -9', 'rs2_h0_val == -2', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800007cc]:KMMAWB_U ra, a3, s8
	-[0x800007d0]:sd ra, 64(fp)
Current Store : [0x800007d4] : sd a3, 72(fp) -- Store: [0x80003358]:0xBFFFFFFF00008000




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rd : x21', 'rs2_h3_val == 4096', 'rs2_h0_val == 16', 'rs1_w1_val == 268435456', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000800]:KMMAWB_U s5, a1, t4
	-[0x80000804]:sd s5, 80(fp)
Current Store : [0x80000808] : sd a1, 88(fp) -- Store: [0x80003368]:0x1000000000002000




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x24', 'rs2_h3_val == 2048', 'rs2_h2_val == -4097', 'rs2_h1_val == 16', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000830]:KMMAWB_U s8, t4, t1
	-[0x80000834]:sd s8, 96(fp)
Current Store : [0x80000838] : sd t4, 104(fp) -- Store: [0x80003378]:0x00000005BFFFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x18', 'rd : x31', 'rs2_h3_val == 1024', 'rs2_h1_val == 2048', 'rs2_h0_val == -8193', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000870]:KMMAWB_U t6, sp, s2
	-[0x80000874]:sd t6, 112(fp)
Current Store : [0x80000878] : sd sp, 120(fp) -- Store: [0x80003388]:0x00400000FFFFBFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x10', 'rd : x2', 'rs2_h3_val == 512', 'rs2_h0_val == -3', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x8000089c]:KMMAWB_U sp, s8, a0
	-[0x800008a0]:sd sp, 128(fp)
Current Store : [0x800008a4] : sd s8, 136(fp) -- Store: [0x80003398]:0xFFFF7FFFBFFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x7', 'rs2_h3_val == 256', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x800008cc]:KMMAWB_U t2, tp, s5
	-[0x800008d0]:sd t2, 144(fp)
Current Store : [0x800008d4] : sd tp, 152(fp) -- Store: [0x800033a8]:0xFDFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x23', 'rs2_h3_val == 128', 'rs2_h0_val == -257', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008fc]:KMMAWB_U s7, a0, t2
	-[0x80000900]:sd s7, 160(fp)
Current Store : [0x80000904] : sd a0, 168(fp) -- Store: [0x800033b8]:0x000000057FFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x3', 'rd : x28', 'rs2_h3_val == 64', 'rs2_h0_val == -65', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x8000092c]:KMMAWB_U t3, t0, gp
	-[0x80000930]:sd t3, 176(fp)
Current Store : [0x80000934] : sd t0, 184(fp) -- Store: [0x800033c8]:0x0080000000000003




Last Coverpoint : ['rs1 : x9', 'rs2 : x19', 'rd : x12', 'rs2_h3_val == 32', 'rs2_h2_val == -21846', 'rs2_h1_val == 16384', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000960]:KMMAWB_U a2, s1, s3
	-[0x80000964]:sd a2, 192(fp)
Current Store : [0x80000968] : sd s1, 200(fp) -- Store: [0x800033d8]:0xDFFFFFFF00200000




Last Coverpoint : ['rs1 : x21', 'rs2 : x5', 'rd : x4', 'rs2_h3_val == 16', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000990]:KMMAWB_U tp, s5, t0
	-[0x80000994]:sd tp, 208(fp)
Current Store : [0x80000998] : sd s5, 216(fp) -- Store: [0x800033e8]:0xFFFFFFFA00000020




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x3', 'rs2_h3_val == 8', 'rs2_h1_val == 8', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800009cc]:KMMAWB_U gp, t1, a6
	-[0x800009d0]:sd gp, 224(fp)
Current Store : [0x800009d4] : sd t1, 232(fp) -- Store: [0x800033f8]:0xC0000000FFFBFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x27', 'rs2_h3_val == 4', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800009fc]:KMMAWB_U s11, a6, t5
	-[0x80000a00]:sd s11, 240(fp)
Current Store : [0x80000a04] : sd a6, 248(fp) -- Store: [0x80003408]:0xFFFEFFFFFFFFFFF9




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 8192', 'rs1_w1_val == 2097152', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a34]:KMMAWB_U t6, t5, t4
	-[0x80000a38]:sd t6, 256(fp)
Current Store : [0x80000a3c] : sd t5, 264(fp) -- Store: [0x80003418]:0x0020000055555555




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000a68]:KMMAWB_U t6, t5, t4
	-[0x80000a6c]:sd t6, 272(fp)
Current Store : [0x80000a70] : sd t5, 280(fp) -- Store: [0x80003428]:0x00000100FFFFBFFF




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000a98]:KMMAWB_U t6, t5, t4
	-[0x80000a9c]:sd t6, 288(fp)
Current Store : [0x80000aa0] : sd t5, 296(fp) -- Store: [0x80003438]:0x3FFFFFFF00000001




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h1_val == -5', 'rs2_h0_val == -16385', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000ac4]:KMMAWB_U t6, t5, t4
	-[0x80000ac8]:sd t6, 304(fp)
Current Store : [0x80000acc] : sd t5, 312(fp) -- Store: [0x80003448]:0xFFFFFFFDFFFDFFFF




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000afc]:KMMAWB_U t6, t5, t4
	-[0x80000b00]:sd t6, 320(fp)
Current Store : [0x80000b04] : sd t5, 328(fp) -- Store: [0x80003458]:0x0010000000000800




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == 1024', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000b28]:KMMAWB_U t6, t5, t4
	-[0x80000b2c]:sd t6, 336(fp)
Current Store : [0x80000b30] : sd t5, 344(fp) -- Store: [0x80003468]:0x0000000902000000




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80000b50]:KMMAWB_U t6, t5, t4
	-[0x80000b54]:sd t6, 352(fp)
Current Store : [0x80000b58] : sd t5, 360(fp) -- Store: [0x80003478]:0xFFFFFFFFC0000000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == 4096', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b84]:KMMAWB_U t6, t5, t4
	-[0x80000b88]:sd t6, 368(fp)
Current Store : [0x80000b8c] : sd t5, 376(fp) -- Store: [0x80003488]:0x0800000004000000




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000bbc]:KMMAWB_U t6, t5, t4
	-[0x80000bc0]:sd t6, 384(fp)
Current Store : [0x80000bc4] : sd t5, 392(fp) -- Store: [0x80003498]:0x04000000FEFFFFFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_w1_val == -9', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000bf0]:KMMAWB_U t6, t5, t4
	-[0x80000bf4]:sd t6, 400(fp)
Current Store : [0x80000bf8] : sd t5, 408(fp) -- Store: [0x800034a8]:0xFFFFFFF7FFFFDFFF




Last Coverpoint : ['rs2_h2_val == -9']
Last Code Sequence : 
	-[0x80000c20]:KMMAWB_U t6, t5, t4
	-[0x80000c24]:sd t6, 416(fp)
Current Store : [0x80000c28] : sd t5, 424(fp) -- Store: [0x800034b8]:0x0080000000000005




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 4', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c54]:KMMAWB_U t6, t5, t4
	-[0x80000c58]:sd t6, 432(fp)
Current Store : [0x80000c5c] : sd t5, 440(fp) -- Store: [0x800034c8]:0x8000000000080000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w1_val == -4194305', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c8c]:KMMAWB_U t6, t5, t4
	-[0x80000c90]:sd t6, 448(fp)
Current Store : [0x80000c94] : sd t5, 456(fp) -- Store: [0x800034d8]:0xFFBFFFFF00040000




Last Coverpoint : ['rs2_h1_val == -257', 'rs2_h0_val == 64', 'rs1_w1_val == -1048577', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cc4]:KMMAWB_U t6, t5, t4
	-[0x80000cc8]:sd t6, 464(fp)
Current Store : [0x80000ccc] : sd t5, 472(fp) -- Store: [0x800034e8]:0xFFEFFFFF00020000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000cf4]:KMMAWB_U t6, t5, t4
	-[0x80000cf8]:sd t6, 480(fp)
Current Store : [0x80000cfc] : sd t5, 488(fp) -- Store: [0x800034f8]:0x0000000100010000




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_w1_val == 64', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000d24]:KMMAWB_U t6, t5, t4
	-[0x80000d28]:sd t6, 496(fp)
Current Store : [0x80000d2c] : sd t5, 504(fp) -- Store: [0x80003508]:0x0000004000004000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d54]:KMMAWB_U t6, t5, t4
	-[0x80000d58]:sd t6, 512(fp)
Current Store : [0x80000d5c] : sd t5, 520(fp) -- Store: [0x80003518]:0x0000000300001000




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d80]:KMMAWB_U t6, t5, t4
	-[0x80000d84]:sd t6, 528(fp)
Current Store : [0x80000d88] : sd t5, 536(fp) -- Store: [0x80003528]:0x0000000600000200




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w1_val == -33', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000da8]:KMMAWB_U t6, t5, t4
	-[0x80000dac]:sd t6, 544(fp)
Current Store : [0x80000db0] : sd t5, 552(fp) -- Store: [0x80003538]:0xFFFFFFDF00000100




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000dd8]:KMMAWB_U t6, t5, t4
	-[0x80000ddc]:sd t6, 560(fp)
Current Store : [0x80000de0] : sd t5, 568(fp) -- Store: [0x80003548]:0x0000004000000080




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h1_val == -32768', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e08]:KMMAWB_U t6, t5, t4
	-[0x80000e0c]:sd t6, 576(fp)
Current Store : [0x80000e10] : sd t5, 584(fp) -- Store: [0x80003558]:0x0080000000000040




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000e38]:KMMAWB_U t6, t5, t4
	-[0x80000e3c]:sd t6, 592(fp)
Current Store : [0x80000e40] : sd t5, 600(fp) -- Store: [0x80003568]:0xFFFFFFF600000010




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e64]:KMMAWB_U t6, t5, t4
	-[0x80000e68]:sd t6, 608(fp)
Current Store : [0x80000e6c] : sd t5, 616(fp) -- Store: [0x80003578]:0xFFFFFFFC00000008




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e98]:KMMAWB_U t6, t5, t4
	-[0x80000e9c]:sd t6, 624(fp)
Current Store : [0x80000ea0] : sd t5, 632(fp) -- Store: [0x80003588]:0xFFFF7FFF00000004




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000ebc]:KMMAWB_U t6, t5, t4
	-[0x80000ec0]:sd t6, 640(fp)
Current Store : [0x80000ec4] : sd t5, 648(fp) -- Store: [0x80003598]:0x0000080000000000




Last Coverpoint : ['rs1_w1_val == 33554432', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000ef0]:KMMAWB_U t6, t5, t4
	-[0x80000ef4]:sd t6, 656(fp)
Current Store : [0x80000ef8] : sd t5, 664(fp) -- Store: [0x800035a8]:0x02000000FFFFFFFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000f24]:KMMAWB_U t6, t5, t4
	-[0x80000f28]:sd t6, 672(fp)
Current Store : [0x80000f2c] : sd t5, 680(fp) -- Store: [0x800035b8]:0x04000000FFFFFEFF




Last Coverpoint : ['rs2_h2_val == 4096']
Last Code Sequence : 
	-[0x80000f54]:KMMAWB_U t6, t5, t4
	-[0x80000f58]:sd t6, 688(fp)
Current Store : [0x80000f5c] : sd t5, 696(fp) -- Store: [0x800035c8]:0xFFFF7FFF00000080




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80000f84]:KMMAWB_U t6, t5, t4
	-[0x80000f88]:sd t6, 704(fp)
Current Store : [0x80000f8c] : sd t5, 712(fp) -- Store: [0x800035d8]:0xFFFFFFEFFFFFFFF9




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_w1_val == 536870912', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000fbc]:KMMAWB_U t6, t5, t4
	-[0x80000fc0]:sd t6, 720(fp)
Current Store : [0x80000fc4] : sd t5, 728(fp) -- Store: [0x800035e8]:0x20000000DFFFFFFF




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000fe8]:KMMAWB_U t6, t5, t4
	-[0x80000fec]:sd t6, 736(fp)
Current Store : [0x80000ff0] : sd t5, 744(fp) -- Store: [0x800035f8]:0xFFBFFFFFFFFFFFFD




Last Coverpoint : ['rs2_h2_val == 16']
Last Code Sequence : 
	-[0x80001018]:KMMAWB_U t6, t5, t4
	-[0x8000101c]:sd t6, 752(fp)
Current Store : [0x80001020] : sd t5, 760(fp) -- Store: [0x80003608]:0x0000008000000001




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x80001040]:KMMAWB_U t6, t5, t4
	-[0x80001044]:sd t6, 768(fp)
Current Store : [0x80001048] : sd t5, 776(fp) -- Store: [0x80003618]:0x00000005FFFFFFF9




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80001074]:KMMAWB_U t6, t5, t4
	-[0x80001078]:sd t6, 784(fp)
Current Store : [0x8000107c] : sd t5, 792(fp) -- Store: [0x80003628]:0xFFFEFFFF00000003




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x800010a0]:KMMAWB_U t6, t5, t4
	-[0x800010a4]:sd t6, 800(fp)
Current Store : [0x800010a8] : sd t5, 808(fp) -- Store: [0x80003638]:0xFFFFFEFFFFFFBFFF




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800010d0]:KMMAWB_U t6, t5, t4
	-[0x800010d4]:sd t6, 816(fp)
Current Store : [0x800010d8] : sd t5, 824(fp) -- Store: [0x80003648]:0x00000003FFFFFFFB




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800010f8]:KMMAWB_U t6, t5, t4
	-[0x800010fc]:sd t6, 832(fp)
Current Store : [0x80001100] : sd t5, 840(fp) -- Store: [0x80003658]:0xFFFFFFF73FFFFFFF




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001138]:KMMAWB_U t6, t5, t4
	-[0x8000113c]:sd t6, 848(fp)
Current Store : [0x80001140] : sd t5, 856(fp) -- Store: [0x80003668]:0x00002000FFFFEFFF




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001168]:KMMAWB_U t6, t5, t4
	-[0x8000116c]:sd t6, 864(fp)
Current Store : [0x80001170] : sd t5, 872(fp) -- Store: [0x80003678]:0x0000100000000007




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x8000119c]:KMMAWB_U t6, t5, t4
	-[0x800011a0]:sd t6, 880(fp)
Current Store : [0x800011a4] : sd t5, 888(fp) -- Store: [0x80003688]:0x00001000FFFFFFBF




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800011cc]:KMMAWB_U t6, t5, t4
	-[0x800011d0]:sd t6, 896(fp)
Current Store : [0x800011d4] : sd t5, 904(fp) -- Store: [0x80003698]:0x0010000001000000




Last Coverpoint : ['rs2_h1_val == 256', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80001204]:KMMAWB_U t6, t5, t4
	-[0x80001208]:sd t6, 912(fp)
Current Store : [0x8000120c] : sd t5, 920(fp) -- Store: [0x800036a8]:0xFFFFFF7FFFFFFFF6




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80001234]:KMMAWB_U t6, t5, t4
	-[0x80001238]:sd t6, 928(fp)
Current Store : [0x8000123c] : sd t5, 936(fp) -- Store: [0x800036b8]:0x0000001000004000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w1_val == -268435457', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001270]:KMMAWB_U t6, t5, t4
	-[0x80001274]:sd t6, 944(fp)
Current Store : [0x80001278] : sd t5, 952(fp) -- Store: [0x800036c8]:0xEFFFFFFFFFDFFFFF




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800012a0]:KMMAWB_U t6, t5, t4
	-[0x800012a4]:sd t6, 960(fp)
Current Store : [0x800012a8] : sd t5, 968(fp) -- Store: [0x800036d8]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == -8193', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800012d0]:KMMAWB_U t6, t5, t4
	-[0x800012d4]:sd t6, 976(fp)
Current Store : [0x800012d8] : sd t5, 984(fp) -- Store: [0x800036e8]:0xFFFFDFFFFFFFFFEF




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001304]:KMMAWB_U t6, t5, t4
	-[0x80001308]:sd t6, 992(fp)
Current Store : [0x8000130c] : sd t5, 1000(fp) -- Store: [0x800036f8]:0xC0000000FFFFFFF6




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_w1_val == -524289', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001334]:KMMAWB_U t6, t5, t4
	-[0x80001338]:sd t6, 1008(fp)
Current Store : [0x8000133c] : sd t5, 1016(fp) -- Store: [0x80003708]:0xFFF7FFFFFFFFFF7F




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == -1', 'rs2_h1_val == 4096', 'rs2_h0_val == 0', 'rs1_w1_val == -8193', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001364]:KMMAWB_U t6, t5, t4
	-[0x80001368]:sd t6, 1024(fp)
Current Store : [0x8000136c] : sd t5, 1032(fp) -- Store: [0x80003718]:0xFFFFDFFFFFFDFFFF




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001398]:KMMAWB_U t6, t5, t4
	-[0x8000139c]:sd t6, 1040(fp)
Current Store : [0x800013a0] : sd t5, 1048(fp) -- Store: [0x80003728]:0x40000000FFFFFDFF




Last Coverpoint : ['rs1_w1_val == -1431655766', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800013cc]:KMMAWB_U t6, t5, t4
	-[0x800013d0]:sd t6, 1056(fp)
Current Store : [0x800013d4] : sd t5, 1064(fp) -- Store: [0x80003738]:0xAAAAAAAA10000000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001404]:KMMAWB_U t6, t5, t4
	-[0x80001408]:sd t6, 1072(fp)
Current Store : [0x8000140c] : sd t5, 1080(fp) -- Store: [0x80003748]:0x55555555FFEFFFFF




Last Coverpoint : ['rs2_h3_val == -2', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001434]:KMMAWB_U t6, t5, t4
	-[0x80001438]:sd t6, 1088(fp)
Current Store : [0x8000143c] : sd t5, 1096(fp) -- Store: [0x80003758]:0x7FFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80001474]:KMMAWB_U t6, t5, t4
	-[0x80001478]:sd t6, 1104(fp)
Current Store : [0x8000147c] : sd t5, 1112(fp) -- Store: [0x80003768]:0xF7FFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x800014ac]:KMMAWB_U t6, t5, t4
	-[0x800014b0]:sd t6, 1120(fp)
Current Store : [0x800014b4] : sd t5, 1128(fp) -- Store: [0x80003778]:0xFBFFFFFFFFFFEFFF




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800014e4]:KMMAWB_U t6, t5, t4
	-[0x800014e8]:sd t6, 1136(fp)
Current Store : [0x800014ec] : sd t5, 1144(fp) -- Store: [0x80003788]:0xFF7FFFFFFFFF7FFF




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80001510]:KMMAWB_U t6, t5, t4
	-[0x80001514]:sd t6, 1152(fp)
Current Store : [0x80001518] : sd t5, 1160(fp) -- Store: [0x80003798]:0xFFDFFFFF00000200




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80001540]:KMMAWB_U t6, t5, t4
	-[0x80001544]:sd t6, 1168(fp)
Current Store : [0x80001548] : sd t5, 1176(fp) -- Store: [0x800037a8]:0xFFFBFFFF10000000




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001568]:KMMAWB_U t6, t5, t4
	-[0x8000156c]:sd t6, 1184(fp)
Current Store : [0x80001570] : sd t5, 1192(fp) -- Store: [0x800037b8]:0xFFFFBFFF00080000




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x800015a8]:KMMAWB_U t6, t5, t4
	-[0x800015ac]:sd t6, 1200(fp)
Current Store : [0x800015b0] : sd t5, 1208(fp) -- Store: [0x800037c8]:0xFFFFEFFF00001000




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800015d8]:KMMAWB_U t6, t5, t4
	-[0x800015dc]:sd t6, 1216(fp)
Current Store : [0x800015e0] : sd t5, 1224(fp) -- Store: [0x800037d8]:0xFFFFFBFF00080000




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80001604]:KMMAWB_U t6, t5, t4
	-[0x80001608]:sd t6, 1232(fp)
Current Store : [0x8000160c] : sd t5, 1240(fp) -- Store: [0x800037e8]:0xFFFFFDFF00000000




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80001634]:KMMAWB_U t6, t5, t4
	-[0x80001638]:sd t6, 1248(fp)
Current Store : [0x8000163c] : sd t5, 1256(fp) -- Store: [0x800037f8]:0xFFFFFFBFFFFFFFEF




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x8000165c]:KMMAWB_U t6, t5, t4
	-[0x80001660]:sd t6, 1264(fp)
Current Store : [0x80001664] : sd t5, 1272(fp) -- Store: [0x80003808]:0xFFFFFFFBFFFFFFFA




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001694]:KMMAWB_U t6, t5, t4
	-[0x80001698]:sd t6, 1280(fp)
Current Store : [0x8000169c] : sd t5, 1288(fp) -- Store: [0x80003818]:0x00040000FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800016c4]:KMMAWB_U t6, t5, t4
	-[0x800016c8]:sd t6, 1296(fp)
Current Store : [0x800016cc] : sd t5, 1304(fp) -- Store: [0x80003828]:0x000200007FFFFFFF




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800016f4]:KMMAWB_U t6, t5, t4
	-[0x800016f8]:sd t6, 1312(fp)
Current Store : [0x800016fc] : sd t5, 1320(fp) -- Store: [0x80003838]:0x0001000000000002




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001724]:KMMAWB_U t6, t5, t4
	-[0x80001728]:sd t6, 1328(fp)
Current Store : [0x8000172c] : sd t5, 1336(fp) -- Store: [0x80003848]:0x0008000000000006




Last Coverpoint : ['rs1_w1_val == 32768', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001754]:KMMAWB_U t6, t5, t4
	-[0x80001758]:sd t6, 1344(fp)
Current Store : [0x8000175c] : sd t5, 1352(fp) -- Store: [0x80003858]:0x0000800008000000




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001784]:KMMAWB_U t6, t5, t4
	-[0x80001788]:sd t6, 1360(fp)
Current Store : [0x8000178c] : sd t5, 1368(fp) -- Store: [0x80003868]:0x00000400FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800017bc]:KMMAWB_U t6, t5, t4
	-[0x800017c0]:sd t6, 1376(fp)
Current Store : [0x800017c4] : sd t5, 1384(fp) -- Store: [0x80003878]:0x0000020000000200




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800017ec]:KMMAWB_U t6, t5, t4
	-[0x800017f0]:sd t6, 1392(fp)
Current Store : [0x800017f4] : sd t5, 1400(fp) -- Store: [0x80003888]:0x0000002000000003




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x8000181c]:KMMAWB_U t6, t5, t4
	-[0x80001820]:sd t6, 1408(fp)
Current Store : [0x80001824] : sd t5, 1416(fp) -- Store: [0x80003898]:0x00000004FFFFFFFB




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001848]:KMMAWB_U t6, t5, t4
	-[0x8000184c]:sd t6, 1424(fp)
Current Store : [0x80001850] : sd t5, 1432(fp) -- Store: [0x800038a8]:0x0000000200000006




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000186c]:KMMAWB_U t6, t5, t4
	-[0x80001870]:sd t6, 1440(fp)
Current Store : [0x80001874] : sd t5, 1448(fp) -- Store: [0x800038b8]:0x0000000000400000




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000189c]:KMMAWB_U t6, t5, t4
	-[0x800018a0]:sd t6, 1456(fp)
Current Store : [0x800018a4] : sd t5, 1464(fp) -- Store: [0x800038c8]:0x00000100AAAAAAAA




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x800018c4]:KMMAWB_U t6, t5, t4
	-[0x800018c8]:sd t6, 1472(fp)
Current Store : [0x800018cc] : sd t5, 1480(fp) -- Store: [0x800038d8]:0xFFFFFEFFFFFFFFBF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800018f0]:KMMAWB_U t6, t5, t4
	-[0x800018f4]:sd t6, 1488(fp)
Current Store : [0x800018f8] : sd t5, 1496(fp) -- Store: [0x800038e8]:0xFFFFDFFFF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001920]:KMMAWB_U t6, t5, t4
	-[0x80001924]:sd t6, 1504(fp)
Current Store : [0x80001928] : sd t5, 1512(fp) -- Store: [0x800038f8]:0xFFFDFFFFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001954]:KMMAWB_U t6, t5, t4
	-[0x80001958]:sd t6, 1520(fp)
Current Store : [0x8000195c] : sd t5, 1528(fp) -- Store: [0x80003908]:0x00000004FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001988]:KMMAWB_U t6, t5, t4
	-[0x8000198c]:sd t6, 1536(fp)
Current Store : [0x80001990] : sd t5, 1544(fp) -- Store: [0x80003918]:0xFFFFFBFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800019bc]:KMMAWB_U t6, t5, t4
	-[0x800019c0]:sd t6, 1552(fp)
Current Store : [0x800019c4] : sd t5, 1560(fp) -- Store: [0x80003928]:0xFFFFFF7FFFFFF7FF




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800019ec]:KMMAWB_U t6, t5, t4
	-[0x800019f0]:sd t6, 1568(fp)
Current Store : [0x800019f4] : sd t5, 1576(fp) -- Store: [0x80003938]:0x00000002FFFDFFFF




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80001a18]:KMMAWB_U t6, t5, t4
	-[0x80001a1c]:sd t6, 1584(fp)
Current Store : [0x80001a20] : sd t5, 1592(fp) -- Store: [0x80003948]:0xFFFFFFEFFFFFFBFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001a48]:KMMAWB_U t6, t5, t4
	-[0x80001a4c]:sd t6, 1600(fp)
Current Store : [0x80001a50] : sd t5, 1608(fp) -- Store: [0x80003958]:0x00000009FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80001a74]:KMMAWB_U t6, t5, t4
	-[0x80001a78]:sd t6, 1616(fp)
Current Store : [0x80001a7c] : sd t5, 1624(fp) -- Store: [0x80003968]:0xFFFFFFFE80000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001aa0]:KMMAWB_U t6, t5, t4
	-[0x80001aa4]:sd t6, 1632(fp)
Current Store : [0x80001aa8] : sd t5, 1640(fp) -- Store: [0x80003978]:0x00000010FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001ac8]:KMMAWB_U t6, t5, t4
	-[0x80001acc]:sd t6, 1648(fp)
Current Store : [0x80001ad0] : sd t5, 1656(fp) -- Store: [0x80003988]:0xFFFFFFFFFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001af4]:KMMAWB_U t6, t5, t4
	-[0x80001af8]:sd t6, 1664(fp)
Current Store : [0x80001afc] : sd t5, 1672(fp) -- Store: [0x80003998]:0xFFFFFFFF40000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001b1c]:KMMAWB_U t6, t5, t4
	-[0x80001b20]:sd t6, 1680(fp)
Current Store : [0x80001b24] : sd t5, 1688(fp) -- Store: [0x800039a8]:0xFFEFFFFF20000000




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001b4c]:KMMAWB_U t6, t5, t4
	-[0x80001b50]:sd t6, 1696(fp)
Current Store : [0x80001b54] : sd t5, 1704(fp) -- Store: [0x800039b8]:0x0100000000000009




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001b78]:KMMAWB_U t6, t5, t4
	-[0x80001b7c]:sd t6, 1712(fp)
Current Store : [0x80001b80] : sd t5, 1720(fp) -- Store: [0x800039c8]:0xFFEFFFFFFDFFFFFF




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001ba0]:KMMAWB_U t6, t5, t4
	-[0x80001ba4]:sd t6, 1728(fp)
Current Store : [0x80001ba8] : sd t5, 1736(fp) -- Store: [0x800039d8]:0xFFFFFFF700800000




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_h3_val == -65', 'rs2_h2_val == -129', 'rs2_h1_val == -33', 'rs2_h0_val == -33', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80001bd0]:KMMAWB_U t6, t5, t4
	-[0x80001bd4]:sd t6, 1744(fp)
Current Store : [0x80001bd8] : sd t5, 1752(fp) -- Store: [0x800039e8]:0xDFFFFFFF80000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001c00]:KMMAWB_U t6, t5, t4
	-[0x80001c04]:sd t6, 1760(fp)
Current Store : [0x80001c08] : sd t5, 1768(fp) -- Store: [0x800039f8]:0x0000001000100000




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -129', 'rs2_h2_val == 32767', 'rs2_h1_val == 32', 'rs2_h0_val == 1', 'rs1_w1_val == -16777217', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80001c30]:KMMAWB_U t6, t5, t4
	-[0x80001c34]:sd t6, 1776(fp)
Current Store : [0x80001c38] : sd t5, 1784(fp) -- Store: [0x80003a08]:0xFEFFFFFF00000002





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

|s.no|            signature             |                                                                                                            coverpoints                                                                                                             |                                  code                                   |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x6DF590376DF57417|- opcode : kmmawb.u<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -65<br> - rs2_h2_val == -129<br> - rs2_h1_val == -33<br> - rs2_h0_val == -33<br>                                      |[0x800003c8]:KMMAWB_U s6, a5, a5<br> [0x800003cc]:sd s6, 0(sp)<br>       |
|   2|[0x80003220]<br>0xAAC0AA540020FB9E|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -65<br> - rs2_h1_val == 32<br>                                                                                     |[0x800003f8]:KMMAWB_U a4, a4, a4<br> [0x800003fc]:sd a4, 16(sp)<br>      |
|   3|[0x80003230]<br>0xAB7FBB6FAB7FBB6F|- rs1 : x0<br> - rs2 : x23<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 1<br> - rs2_h1_val == 2<br> - rs2_h0_val == 8<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br> |[0x80000428]:KMMAWB_U a1, zero, s7<br> [0x8000042c]:sd a1, 32(sp)<br>    |
|   4|[0x80003240]<br>0x00003FC000000500|- rs1 : x19<br> - rs2 : x20<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -257<br> - rs2_h1_val == -129<br> - rs2_h0_val == 16384<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 1024<br>      |[0x80000454]:KMMAWB_U s3, s3, s4<br> [0x80000458]:sd s3, 48(sp)<br>      |
|   5|[0x80003250]<br>0xBF7F80FFFFFDFFE2|- rs1 : x26<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -2<br> - rs2_h0_val == 2<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -1048577<br>    |[0x8000048c]:KMMAWB_U s1, s10, s1<br> [0x80000490]:sd s1, 64(sp)<br>     |
|   6|[0x80003260]<br>0x7D5B1DDB7D5BFDDB|- rs1 : x20<br> - rs2 : x26<br> - rd : x16<br> - rs2_h3_val == -8193<br> - rs1_w1_val == -536870913<br>                                                                                                                             |[0x800004bc]:KMMAWB_U a6, s4, s10<br> [0x800004c0]:sd a6, 80(sp)<br>     |
|   7|[0x80003270]<br>0x5BFDDB7D5BDDDBFD|- rs1 : x18<br> - rs2 : x27<br> - rd : x8<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 8<br> - rs1_w1_val == 8<br> - rs1_w0_val == -8388609<br>                                                                                    |[0x800004f0]:KMMAWB_U fp, s2, s11<br> [0x800004f4]:sd fp, 96(sp)<br>     |
|   8|[0x80003280]<br>0x0000000080000391|- rs1 : x31<br> - rs2 : x22<br> - rd : x5<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 16384<br> - rs2_h0_val == 4096<br> - rs1_w1_val == 1<br>                                                                                    |[0x8000051c]:KMMAWB_U t0, t6, s6<br> [0x80000520]:sd t0, 112(sp)<br>     |
|   9|[0x80003290]<br>0xEDBEA5FEEDBEAE02|- rs1 : x22<br> - rs2 : x8<br> - rd : x25<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -1<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -32769<br>                                                                             |[0x80000558]:KMMAWB_U s9, s6, fp<br> [0x8000055c]:sd s9, 128(sp)<br>     |
|  10|[0x800032a0]<br>0xEEDBEADFEEDBEADF|- rs1 : x7<br> - rs2 : x13<br> - rd : x29<br> - rs2_h3_val == -513<br> - rs2_h1_val == 1<br> - rs2_h0_val == -17<br>                                                                                                                |[0x80000588]:KMMAWB_U t4, t2, a3<br> [0x8000058c]:sd t4, 144(sp)<br>     |
|  11|[0x800032b0]<br>0xFFFFFFFF000001FA|- rs1 : x1<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == -257<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -131073<br>                                                                                                        |[0x800005bc]:KMMAWB_U a0, ra, t6<br> [0x800005c0]:sd a0, 160(sp)<br>     |
|  12|[0x800032c0]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x11<br> - rd : x0<br> - rs2_h3_val == -129<br> - rs2_h0_val == 1<br> - rs1_w0_val == 2<br>                                                                                                                   |[0x800005ec]:KMMAWB_U zero, gp, a1<br> [0x800005f0]:sd zero, 176(sp)<br> |
|  13|[0x800032d0]<br>0xFDFEFFFB0001FFEE|- rs1 : x27<br> - rs2 : x28<br> - rd : x13<br> - rs2_h3_val == -33<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -21846<br> - rs1_w1_val == 2048<br>                                                                                 |[0x8000061c]:KMMAWB_U a3, s11, t3<br> [0x80000620]:sd a3, 192(sp)<br>    |
|  14|[0x800032e0]<br>0xE000000F00000089|- rs1 : x23<br> - rs2 : x12<br> - rd : x20<br> - rs2_h3_val == -17<br> - rs2_h2_val == 128<br> - rs2_h1_val == 128<br> - rs2_h0_val == -9<br> - rs1_w1_val == 8192<br>                                                              |[0x80000650]:KMMAWB_U s4, s7, a2<br> [0x80000654]:sd s4, 208(sp)<br>     |
|  15|[0x800032f0]<br>0xDFFF000B00060002|- rs1 : x8<br> - rs2 : x17<br> - rd : x26<br> - rs2_h3_val == -9<br> - rs2_h2_val == -2<br> - rs2_h0_val == 512<br> - rs1_w1_val == -131073<br>                                                                                     |[0x80000680]:KMMAWB_U s10, fp, a7<br> [0x80000684]:sd s10, 224(sp)<br>   |
|  16|[0x80003300]<br>0xF76DF56FF76E0AC5|- rs1 : x25<br> - rs2 : x4<br> - rd : x30<br> - rs2_h3_val == -5<br> - rs2_h2_val == 4<br> - rs2_h1_val == -2049<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -16385<br>                                                           |[0x800006b4]:KMMAWB_U t5, s9, tp<br> [0x800006b8]:sd t5, 240(sp)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFF81004000|- rs1 : x17<br> - rs2 : x2<br> - rd : x6<br> - rs2_h3_val == -3<br> - rs2_h2_val == -513<br> - rs2_h0_val == -4097<br> - rs1_w1_val == 128<br> - rs1_w0_val == -268435457<br>                                                       |[0x800006f0]:KMMAWB_U t1, a7, sp<br> [0x800006f4]:sd t1, 0(fp)<br>       |
|  18|[0x80003320]<br>0x00000008FF7FFFFF|- rs1 : x12<br> - rs2 : x0<br> - rd : x18<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == -67108865<br>                                                                 |[0x80000718]:KMMAWB_U s2, a2, zero<br> [0x8000071c]:sd s2, 16(fp)<br>    |
|  19|[0x80003330]<br>0x0115537FFFDF7FBF|- rs1 : x30<br> - rs2 : x1<br> - rd : x15<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -1025<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 2097152<br>                     |[0x80000754]:KMMAWB_U a5, t5, ra<br> [0x80000758]:sd a5, 32(fp)<br>      |
|  20|[0x80003340]<br>0xFFFDFC80F00002AA|- rs1 : x28<br> - rs2 : x25<br> - rd : x17<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 2048<br>                                                                               |[0x80000794]:KMMAWB_U a7, t3, s9<br> [0x80000798]:sd a7, 48(fp)<br>      |
|  21|[0x80003350]<br>0x800000005555FBFE|- rs1 : x13<br> - rs2 : x24<br> - rd : x1<br> - rs2_h3_val == 8192<br> - rs2_h1_val == -9<br> - rs2_h0_val == -2<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 32768<br>                                                      |[0x800007cc]:KMMAWB_U ra, a3, s8<br> [0x800007d0]:sd ra, 64(fp)<br>      |
|  22|[0x80003360]<br>0xDBEA3FEEDBEADFF0|- rs1 : x11<br> - rs2 : x29<br> - rd : x21<br> - rs2_h3_val == 4096<br> - rs2_h0_val == 16<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 8192<br>                                                                               |[0x80000800]:KMMAWB_U s5, a1, t4<br> [0x80000804]:sd s5, 80(fp)<br>      |
|  23|[0x80003370]<br>0x2000000900003FFE|- rs1 : x29<br> - rs2 : x6<br> - rd : x24<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 16<br> - rs1_w0_val == -1073741825<br>                                                                             |[0x80000830]:KMMAWB_U s8, t4, t1<br> [0x80000834]:sd s8, 96(fp)<br>      |
|  24|[0x80003380]<br>0xFEFFC0407FFF0803|- rs1 : x2<br> - rs2 : x18<br> - rd : x31<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -8193<br> - rs1_w1_val == 4194304<br>                                                                               |[0x80000870]:KMMAWB_U t6, sp, s2<br> [0x80000874]:sd t6, 112(fp)<br>     |
|  25|[0x80003390]<br>0x0040200000007FFF|- rs1 : x24<br> - rs2 : x10<br> - rd : x2<br> - rs2_h3_val == 512<br> - rs2_h0_val == -3<br> - rs1_w1_val == -32769<br>                                                                                                             |[0x8000089c]:KMMAWB_U sp, s8, a0<br> [0x800008a0]:sd sp, 128(fp)<br>     |
|  26|[0x800033a0]<br>0xFFFFFE06FBFFFFFC|- rs1 : x4<br> - rs2 : x21<br> - rd : x7<br> - rs2_h3_val == 256<br> - rs1_w1_val == -33554433<br>                                                                                                                                  |[0x800008cc]:KMMAWB_U t2, tp, s5<br> [0x800008d0]:sd t2, 144(fp)<br>     |
|  27|[0x800033b0]<br>0x00002000FF6F7FFF|- rs1 : x10<br> - rs2 : x7<br> - rd : x23<br> - rs2_h3_val == 128<br> - rs2_h0_val == -257<br> - rs1_w0_val == 2147483647<br>                                                                                                       |[0x800008fc]:KMMAWB_U s7, a0, t2<br> [0x80000900]:sd s7, 160(fp)<br>     |
|  28|[0x800033c0]<br>0x0420000000000800|- rs1 : x5<br> - rs2 : x3<br> - rd : x28<br> - rs2_h3_val == 64<br> - rs2_h0_val == -65<br> - rs1_w1_val == 8388608<br>                                                                                                             |[0x8000092c]:KMMAWB_U t3, t0, gp<br> [0x80000930]:sd t3, 176(fp)<br>     |
|  29|[0x800033d0]<br>0x0AAABFFAFBFEFFDF|- rs1 : x9<br> - rs2 : x19<br> - rd : x12<br> - rs2_h3_val == 32<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -2049<br>                                                                                 |[0x80000960]:KMMAWB_U a2, s1, s3<br> [0x80000964]:sd a2, 192(fp)<br>     |
|  30|[0x800033e0]<br>0xFDFFFFFFBFFFFFFF|- rs1 : x21<br> - rs2 : x5<br> - rd : x4<br> - rs2_h3_val == 16<br> - rs1_w0_val == 32<br>                                                                                                                                          |[0x80000990]:KMMAWB_U tp, s5, t0<br> [0x80000994]:sd tp, 208(fp)<br>     |
|  31|[0x800033f0]<br>0x00424000C000FFB7|- rs1 : x6<br> - rs2 : x16<br> - rd : x3<br> - rs2_h3_val == 8<br> - rs2_h1_val == 8<br> - rs1_w0_val == -262145<br>                                                                                                                |[0x800009cc]:KMMAWB_U gp, t1, a6<br> [0x800009d0]:sd gp, 224(fp)<br>     |
|  32|[0x80003400]<br>0x000007F700000003|- rs1 : x16<br> - rs2 : x30<br> - rd : x27<br> - rs2_h3_val == 4<br> - rs1_w1_val == -65537<br>                                                                                                                                     |[0x800009fc]:KMMAWB_U s11, a6, t5<br> [0x80000a00]:sd s11, 240(fp)<br>   |
|  33|[0x80003410]<br>0xFF03C0407FF40803|- rs2_h3_val == 2<br> - rs2_h2_val == 8192<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 1431655765<br>                                                                                                                           |[0x80000a34]:KMMAWB_U t6, t5, t4<br> [0x80000a38]:sd t6, 256(fp)<br>     |
|  34|[0x80003420]<br>0xFF03C0407FF40802|- rs2_h3_val == 1<br> - rs1_w1_val == 256<br>                                                                                                                                                                                       |[0x80000a68]:KMMAWB_U t6, t5, t4<br> [0x80000a6c]:sd t6, 272(fp)<br>     |
|  35|[0x80003430]<br>0xFF0380407FF40802|- rs2_h1_val == -17<br> - rs1_w0_val == 1<br>                                                                                                                                                                                       |[0x80000a98]:KMMAWB_U t6, t5, t4<br> [0x80000a9c]:sd t6, 288(fp)<br>     |
|  36|[0x80003440]<br>0xFF0380407FF48804|- rs2_h3_val == -1<br> - rs2_h1_val == -5<br> - rs2_h0_val == -16385<br> - rs1_w1_val == -3<br>                                                                                                                                     |[0x80000ac4]:KMMAWB_U t6, t5, t4<br> [0x80000ac8]:sd t6, 304(fp)<br>     |
|  37|[0x80003450]<br>0xFEFF80307FF48704|- rs2_h2_val == -16385<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                              |[0x80000afc]:KMMAWB_U t6, t5, t4<br> [0x80000b00]:sd t6, 320(fp)<br>     |
|  38|[0x80003460]<br>0xFEFF802F7FF48B04|- rs2_h2_val == -8193<br> - rs2_h1_val == 1024<br> - rs1_w0_val == 33554432<br>                                                                                                                                                     |[0x80000b28]:KMMAWB_U t6, t5, t4<br> [0x80000b2c]:sd t6, 336(fp)<br>     |
|  39|[0x80003470]<br>0xFEFF802F7FFFFFFF|- rs2_h2_val == -2049<br> - rs1_w1_val == -1<br>                                                                                                                                                                                    |[0x80000b50]:KMMAWB_U t6, t5, t4<br> [0x80000b54]:sd t6, 352(fp)<br>     |
|  40|[0x80003480]<br>0xFEDF782F7FFEFBFF|- rs2_h2_val == -1025<br> - rs2_h1_val == 4096<br> - rs1_w0_val == 67108864<br>                                                                                                                                                     |[0x80000b84]:KMMAWB_U t6, t5, t4<br> [0x80000b88]:sd t6, 368(fp)<br>     |
|  41|[0x80003490]<br>0xFEDEF42F7FFF04FF|- rs2_h2_val == -33<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                               |[0x80000bbc]:KMMAWB_U t6, t5, t4<br> [0x80000bc0]:sd t6, 384(fp)<br>     |
|  42|[0x800034a0]<br>0xFEDEF42F7FFF04FE|- rs2_h2_val == -17<br> - rs1_w1_val == -9<br> - rs1_w0_val == -8193<br>                                                                                                                                                            |[0x80000bf0]:KMMAWB_U t6, t5, t4<br> [0x80000bf4]:sd t6, 400(fp)<br>     |
|  43|[0x800034b0]<br>0xFEDEEFAF7FFF04FE|- rs2_h2_val == -9<br>                                                                                                                                                                                                              |[0x80000c20]:KMMAWB_U t6, t5, t4<br> [0x80000c24]:sd t6, 416(fp)<br>     |
|  44|[0x800034c0]<br>0xFECEEFAF7FFC5A4E|- rs2_h2_val == 32<br> - rs2_h1_val == 4<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 524288<br>                                                                                                                             |[0x80000c54]:KMMAWB_U t6, t5, t4<br> [0x80000c58]:sd t6, 432(fp)<br>     |
|  45|[0x800034d0]<br>0xFEDEEFAF7FFC5A5E|- rs2_h0_val == 4<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 262144<br>                                                                                                                                                       |[0x80000c8c]:KMMAWB_U t6, t5, t4<br> [0x80000c90]:sd t6, 448(fp)<br>     |
|  46|[0x800034e0]<br>0xFEDEEF1F7FFC5ADE|- rs2_h1_val == -257<br> - rs2_h0_val == 64<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 131072<br>                                                                                                                             |[0x80000cc4]:KMMAWB_U t6, t5, t4<br> [0x80000cc8]:sd t6, 464(fp)<br>     |
|  47|[0x800034f0]<br>0xFEDEEF1F7FFC1ADD|- rs1_w0_val == 65536<br>                                                                                                                                                                                                           |[0x80000cf4]:KMMAWB_U t6, t5, t4<br> [0x80000cf8]:sd t6, 480(fp)<br>     |
|  48|[0x80003500]<br>0xFEDEEF1F7FFC1AD5|- rs2_h2_val == 64<br> - rs1_w1_val == 64<br> - rs1_w0_val == 16384<br>                                                                                                                                                             |[0x80000d24]:KMMAWB_U t6, t5, t4<br> [0x80000d28]:sd t6, 496(fp)<br>     |
|  49|[0x80003510]<br>0xFEDEEF207FFC1A95|- rs1_w0_val == 4096<br>                                                                                                                                                                                                            |[0x80000d54]:KMMAWB_U t6, t5, t4<br> [0x80000d58]:sd t6, 512(fp)<br>     |
|  50|[0x80003520]<br>0xFEDEEF207FFC1995|- rs2_h0_val == -32768<br> - rs1_w0_val == 512<br>                                                                                                                                                                                  |[0x80000d80]:KMMAWB_U t6, t5, t4<br> [0x80000d84]:sd t6, 528(fp)<br>     |
|  51|[0x80003530]<br>0xFEDEEF207FFC1995|- rs2_h0_val == -5<br> - rs1_w1_val == -33<br> - rs1_w0_val == 256<br>                                                                                                                                                              |[0x80000da8]:KMMAWB_U t6, t5, t4<br> [0x80000dac]:sd t6, 544(fp)<br>     |
|  52|[0x80003540]<br>0xFEDEEF207FFC1994|- rs2_h2_val == 256<br> - rs1_w0_val == 128<br>                                                                                                                                                                                     |[0x80000dd8]:KMMAWB_U t6, t5, t4<br> [0x80000ddc]:sd t6, 560(fp)<br>     |
|  53|[0x80003550]<br>0xFEDEECA07FFC1994|- rs2_h2_val == -5<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 64<br>                                                                                                                                                            |[0x80000e08]:KMMAWB_U t6, t5, t4<br> [0x80000e0c]:sd t6, 576(fp)<br>     |
|  54|[0x80003560]<br>0xFEDEECA07FFC1994|- rs1_w0_val == 16<br>                                                                                                                                                                                                              |[0x80000e38]:KMMAWB_U t6, t5, t4<br> [0x80000e3c]:sd t6, 592(fp)<br>     |
|  55|[0x80003570]<br>0xFEDEEC9F7FFC1994|- rs1_w0_val == 8<br>                                                                                                                                                                                                               |[0x80000e64]:KMMAWB_U t6, t5, t4<br> [0x80000e68]:sd t6, 608(fp)<br>     |
|  56|[0x80003580]<br>0xFEDEEC9C7FFC1994|- rs1_w0_val == 4<br>                                                                                                                                                                                                               |[0x80000e98]:KMMAWB_U t6, t5, t4<br> [0x80000e9c]:sd t6, 624(fp)<br>     |
|  57|[0x80003590]<br>0xFEDEE89C7FFC1994|- rs2_h2_val == -32768<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                 |[0x80000ebc]:KMMAWB_U t6, t5, t4<br> [0x80000ec0]:sd t6, 640(fp)<br>     |
|  58|[0x800035a0]<br>0xFEDF289C7FFC1994|- rs1_w1_val == 33554432<br> - rs1_w0_val == -1<br>                                                                                                                                                                                 |[0x80000ef0]:KMMAWB_U t6, t5, t4<br> [0x80000ef4]:sd t6, 656(fp)<br>     |
|  59|[0x800035b0]<br>0xFEDF1C9C7FFC199C|- rs2_h2_val == -3<br> - rs1_w0_val == -257<br>                                                                                                                                                                                     |[0x80000f24]:KMMAWB_U t6, t5, t4<br> [0x80000f28]:sd t6, 672(fp)<br>     |
|  60|[0x800035c0]<br>0xFEDF149C7FFC197C|- rs2_h2_val == 4096<br>                                                                                                                                                                                                            |[0x80000f54]:KMMAWB_U t6, t5, t4<br> [0x80000f58]:sd t6, 688(fp)<br>     |
|  61|[0x800035d0]<br>0xFEDF149B7FFC197C|- rs2_h2_val == 2048<br> - rs1_w1_val == -17<br>                                                                                                                                                                                    |[0x80000f84]:KMMAWB_U t6, t5, t4<br> [0x80000f88]:sd t6, 704(fp)<br>     |
|  62|[0x800035e0]<br>0xFF5F149B7FFB997C|- rs2_h2_val == 1024<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == -536870913<br>                                                                                                                                               |[0x80000fbc]:KMMAWB_U t6, t5, t4<br> [0x80000fc0]:sd t6, 720(fp)<br>     |
|  63|[0x800035f0]<br>0xFF5E949B7FFB997C|- rs2_h2_val == 512<br> - rs1_w0_val == -3<br>                                                                                                                                                                                      |[0x80000fe8]:KMMAWB_U t6, t5, t4<br> [0x80000fec]:sd t6, 736(fp)<br>     |
|  64|[0x80003600]<br>0xFF5E949B7FFB997C|- rs2_h2_val == 16<br>                                                                                                                                                                                                              |[0x80001018]:KMMAWB_U t6, t5, t4<br> [0x8000101c]:sd t6, 752(fp)<br>     |
|  65|[0x80003610]<br>0xFF5E949B7FFB997C|- rs2_h2_val == 2<br>                                                                                                                                                                                                               |[0x80001040]:KMMAWB_U t6, t5, t4<br> [0x80001044]:sd t6, 768(fp)<br>     |
|  66|[0x80003620]<br>0xFF5E94A27FFB997B|- rs2_h1_val == -21846<br>                                                                                                                                                                                                          |[0x80001074]:KMMAWB_U t6, t5, t4<br> [0x80001078]:sd t6, 784(fp)<br>     |
|  67|[0x80003630]<br>0xFF5E94A27FFB997E|- rs2_h1_val == -16385<br> - rs1_w1_val == -257<br>                                                                                                                                                                                 |[0x800010a0]:KMMAWB_U t6, t5, t4<br> [0x800010a4]:sd t6, 800(fp)<br>     |
|  68|[0x80003640]<br>0xFF5E94A27FFB997E|- rs2_h1_val == -4097<br> - rs1_w0_val == -5<br>                                                                                                                                                                                    |[0x800010d0]:KMMAWB_U t6, t5, t4<br> [0x800010d4]:sd t6, 816(fp)<br>     |
|  69|[0x80003650]<br>0xFF5E94A47FFA597E|- rs2_h1_val == -1025<br>                                                                                                                                                                                                           |[0x800010f8]:KMMAWB_U t6, t5, t4<br> [0x800010fc]:sd t6, 832(fp)<br>     |
|  70|[0x80003660]<br>0xFF5E94E47FFA587E|- rs2_h1_val == -513<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                  |[0x80001138]:KMMAWB_U t6, t5, t4<br> [0x8000113c]:sd t6, 848(fp)<br>     |
|  71|[0x80003670]<br>0xFF5E94E47FFA5880|- rs2_h1_val == -65<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                    |[0x80001168]:KMMAWB_U t6, t5, t4<br> [0x8000116c]:sd t6, 864(fp)<br>     |
|  72|[0x80003680]<br>0xFF5E95047FFA5890|- rs2_h1_val == -3<br> - rs1_w0_val == -65<br>                                                                                                                                                                                      |[0x8000119c]:KMMAWB_U t6, t5, t4<br> [0x800011a0]:sd t6, 880(fp)<br>     |
|  73|[0x80003690]<br>0xFF5EA5047FFA6890|- rs2_h1_val == 512<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                |[0x800011cc]:KMMAWB_U t6, t5, t4<br> [0x800011d0]:sd t6, 896(fp)<br>     |
|  74|[0x800036a0]<br>0xFF5EA5007FFA6890|- rs2_h1_val == 256<br> - rs1_w1_val == -129<br>                                                                                                                                                                                    |[0x80001204]:KMMAWB_U t6, t5, t4<br> [0x80001208]:sd t6, 912(fp)<br>     |
|  75|[0x800036b0]<br>0xFF5EA5007FFA6090|- rs2_h1_val == 64<br> - rs1_w1_val == 16<br>                                                                                                                                                                                       |[0x80001234]:KMMAWB_U t6, t5, t4<br> [0x80001238]:sd t6, 928(fp)<br>     |
|  76|[0x800036c0]<br>0xFF5E55007FF96090|- rs2_h0_val == 2048<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -2097153<br>                                                                                                                                                |[0x80001270]:KMMAWB_U t6, t5, t4<br> [0x80001274]:sd t6, 944(fp)<br>     |
|  77|[0x800036d0]<br>0xFF5E55007FF96090|- rs2_h0_val == 1024<br>                                                                                                                                                                                                            |[0x800012a0]:KMMAWB_U t6, t5, t4<br> [0x800012a4]:sd t6, 960(fp)<br>     |
|  78|[0x800036e0]<br>0xFF5E55007FF96090|- rs2_h0_val == 256<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -17<br>                                                                                                                                                           |[0x800012d0]:KMMAWB_U t6, t5, t4<br> [0x800012d4]:sd t6, 976(fp)<br>     |
|  79|[0x800036f0]<br>0x0F5E55007FF96090|- rs2_h0_val == 128<br>                                                                                                                                                                                                             |[0x80001304]:KMMAWB_U t6, t5, t4<br> [0x80001308]:sd t6, 992(fp)<br>     |
|  80|[0x80003700]<br>0x0F5E55407FF96090|- rs2_h0_val == 32<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -129<br>                                                                                                                                                         |[0x80001334]:KMMAWB_U t6, t5, t4<br> [0x80001338]:sd t6, 1008(fp)<br>    |
|  81|[0x80003720]<br>0xFA08D5407FF96090|- rs2_h0_val == -1<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -513<br>                                                                                                                                                      |[0x80001398]:KMMAWB_U t6, t5, t4<br> [0x8000139c]:sd t6, 1040(fp)<br>    |
|  82|[0x80003730]<br>0xFA0E7FEB7FFFFFFF|- rs1_w1_val == -1431655766<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                       |[0x800013cc]:KMMAWB_U t6, t5, t4<br> [0x800013d0]:sd t6, 1056(fp)<br>    |
|  83|[0x80003740]<br>0xFF63D5407FFFFFFF|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                      |[0x80001404]:KMMAWB_U t6, t5, t4<br> [0x80001408]:sd t6, 1072(fp)<br>    |
|  84|[0x80003750]<br>0xFD6355407F7F7FFF|- rs2_h3_val == -2<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                               |[0x80001434]:KMMAWB_U t6, t5, t4<br> [0x80001438]:sd t6, 1088(fp)<br>    |
|  85|[0x80003760]<br>0xFD6385407FFF83FF|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                      |[0x80001474]:KMMAWB_U t6, t5, t4<br> [0x80001478]:sd t6, 1104(fp)<br>    |
|  86|[0x80003770]<br>0xFD4385407FFF83FF|- rs1_w1_val == -67108865<br>                                                                                                                                                                                                       |[0x800014ac]:KMMAWB_U t6, t5, t4<br> [0x800014b0]:sd t6, 1120(fp)<br>    |
|  87|[0x80003780]<br>0xFD4375407FFF43FF|- rs2_h0_val == 32767<br> - rs1_w1_val == -8388609<br>                                                                                                                                                                              |[0x800014e4]:KMMAWB_U t6, t5, t4<br> [0x800014e8]:sd t6, 1136(fp)<br>    |
|  88|[0x80003790]<br>0xFD3B75407FFF43FB|- rs2_h0_val == -513<br> - rs1_w1_val == -2097153<br>                                                                                                                                                                               |[0x80001510]:KMMAWB_U t6, t5, t4<br> [0x80001514]:sd t6, 1152(fp)<br>    |
|  89|[0x800037a0]<br>0xFD3B75C47BFF33FB|- rs1_w1_val == -262145<br>                                                                                                                                                                                                         |[0x80001540]:KMMAWB_U t6, t5, t4<br> [0x80001544]:sd t6, 1168(fp)<br>    |
|  90|[0x800037b0]<br>0xFD3B75BC7BFF33DB|- rs1_w1_val == -16385<br>                                                                                                                                                                                                          |[0x80001568]:KMMAWB_U t6, t5, t4<br> [0x8000156c]:sd t6, 1184(fp)<br>    |
|  91|[0x800037c0]<br>0xFD3B75BC7BFF335B|- rs1_w1_val == -4097<br>                                                                                                                                                                                                           |[0x800015a8]:KMMAWB_U t6, t5, t4<br> [0x800015ac]:sd t6, 1200(fp)<br>    |
|  92|[0x800037d0]<br>0xFD3B763C7BFF2B53|- rs1_w1_val == -1025<br>                                                                                                                                                                                                           |[0x800015d8]:KMMAWB_U t6, t5, t4<br> [0x800015dc]:sd t6, 1216(fp)<br>    |
|  93|[0x800037e0]<br>0xFD3B763C7BFF2B53|- rs1_w1_val == -513<br>                                                                                                                                                                                                            |[0x80001604]:KMMAWB_U t6, t5, t4<br> [0x80001608]:sd t6, 1232(fp)<br>    |
|  94|[0x800037f0]<br>0xFD3B763C7BFF2B53|- rs1_w1_val == -65<br>                                                                                                                                                                                                             |[0x80001634]:KMMAWB_U t6, t5, t4<br> [0x80001638]:sd t6, 1248(fp)<br>    |
|  95|[0x80003800]<br>0xFD3B763A7BFF2B53|- rs1_w1_val == -5<br>                                                                                                                                                                                                              |[0x8000165c]:KMMAWB_U t6, t5, t4<br> [0x80001660]:sd t6, 1264(fp)<br>    |
|  96|[0x80003810]<br>0xFD3B763E7BFF1B53|- rs1_w1_val == 262144<br>                                                                                                                                                                                                          |[0x80001694]:KMMAWB_U t6, t5, t4<br> [0x80001698]:sd t6, 1280(fp)<br>    |
|  97|[0x80003820]<br>0xFD3B76487C1F1B53|- rs1_w1_val == 131072<br>                                                                                                                                                                                                          |[0x800016c4]:KMMAWB_U t6, t5, t4<br> [0x800016c8]:sd t6, 1296(fp)<br>    |
|  98|[0x80003830]<br>0xFD3B763F7C1F1B53|- rs1_w1_val == 65536<br>                                                                                                                                                                                                           |[0x800016f4]:KMMAWB_U t6, t5, t4<br> [0x800016f8]:sd t6, 1312(fp)<br>    |
|  99|[0x80003840]<br>0xFD3B76777C1F1B53|- rs1_w1_val == 524288<br>                                                                                                                                                                                                          |[0x80001724]:KMMAWB_U t6, t5, t4<br> [0x80001728]:sd t6, 1328(fp)<br>    |
| 100|[0x80003850]<br>0xFD3B56777C5F1B53|- rs1_w1_val == 32768<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                             |[0x80001754]:KMMAWB_U t6, t5, t4<br> [0x80001758]:sd t6, 1344(fp)<br>    |
| 101|[0x80003860]<br>0xFD3B56777C5F1B53|- rs1_w1_val == 1024<br>                                                                                                                                                                                                            |[0x80001784]:KMMAWB_U t6, t5, t4<br> [0x80001788]:sd t6, 1360(fp)<br>    |
| 102|[0x80003870]<br>0xFD3B55F77C5F1BFE|- rs1_w1_val == 512<br>                                                                                                                                                                                                             |[0x800017bc]:KMMAWB_U t6, t5, t4<br> [0x800017c0]:sd t6, 1376(fp)<br>    |
| 103|[0x80003880]<br>0xFD3B55F77C5F1BFE|- rs1_w1_val == 32<br>                                                                                                                                                                                                              |[0x800017ec]:KMMAWB_U t6, t5, t4<br> [0x800017f0]:sd t6, 1392(fp)<br>    |
| 104|[0x80003890]<br>0xFD3B55F77C5F1BFE|- rs1_w1_val == 4<br>                                                                                                                                                                                                               |[0x8000181c]:KMMAWB_U t6, t5, t4<br> [0x80001820]:sd t6, 1408(fp)<br>    |
| 105|[0x800038a0]<br>0xFD3B55F77C5F1BFE|- rs1_w1_val == 2<br>                                                                                                                                                                                                               |[0x80001848]:KMMAWB_U t6, t5, t4<br> [0x8000184c]:sd t6, 1424(fp)<br>    |
| 106|[0x800038b0]<br>0xFD3B55F77C5F2BFE|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                         |[0x8000186c]:KMMAWB_U t6, t5, t4<br> [0x80001870]:sd t6, 1440(fp)<br>    |
| 107|[0x800038c0]<br>0xFD3B55F77D0A2BFE|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                     |[0x8000189c]:KMMAWB_U t6, t5, t4<br> [0x800018a0]:sd t6, 1456(fp)<br>    |
| 108|[0x800038d0]<br>0xFD3B55F37D0A2BFE|- rs2_h0_val == -129<br>                                                                                                                                                                                                            |[0x800018c4]:KMMAWB_U t6, t5, t4<br> [0x800018c8]:sd t6, 1472(fp)<br>    |
| 109|[0x800038e0]<br>0xFD3B55F27D082BFE|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                      |[0x800018f0]:KMMAWB_U t6, t5, t4<br> [0x800018f4]:sd t6, 1488(fp)<br>    |
| 110|[0x800038f0]<br>0xFD3B5DF47CF82BFE|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                        |[0x80001920]:KMMAWB_U t6, t5, t4<br> [0x80001924]:sd t6, 1504(fp)<br>    |
| 111|[0x80003900]<br>0xFD3B5DF47CF82C06|- rs1_w0_val == -524289<br>                                                                                                                                                                                                         |[0x80001954]:KMMAWB_U t6, t5, t4<br> [0x80001958]:sd t6, 1520(fp)<br>    |
| 112|[0x80003910]<br>0xFD3B5DF47CF82C09|- rs1_w0_val == -65537<br>                                                                                                                                                                                                          |[0x80001988]:KMMAWB_U t6, t5, t4<br> [0x8000198c]:sd t6, 1536(fp)<br>    |
| 113|[0x80003920]<br>0xFD3B5DF27CF82C29|- rs1_w0_val == -2049<br>                                                                                                                                                                                                           |[0x800019bc]:KMMAWB_U t6, t5, t4<br> [0x800019c0]:sd t6, 1552(fp)<br>    |
| 114|[0x80003930]<br>0xFD3B5DF37CF8AC29|- rs2_h1_val == -1<br>                                                                                                                                                                                                              |[0x800019ec]:KMMAWB_U t6, t5, t4<br> [0x800019f0]:sd t6, 1568(fp)<br>    |
| 115|[0x80003940]<br>0xFD3B5DED7CF8ABA9|- rs1_w0_val == -1025<br>                                                                                                                                                                                                           |[0x80001a18]:KMMAWB_U t6, t5, t4<br> [0x80001a1c]:sd t6, 1584(fp)<br>    |
| 116|[0x80003950]<br>0xFD3B5DED7CF8ABA9|- rs1_w0_val == -33<br>                                                                                                                                                                                                             |[0x80001a48]:KMMAWB_U t6, t5, t4<br> [0x80001a4c]:sd t6, 1600(fp)<br>    |
| 117|[0x80003960]<br>0xFD3B5DEE7CFB2BA9|- rs1_w0_val == -2147483648<br> - rs1_w1_val == -2<br>                                                                                                                                                                              |[0x80001a74]:KMMAWB_U t6, t5, t4<br> [0x80001a78]:sd t6, 1616(fp)<br>    |
| 118|[0x80003970]<br>0xFD3B5DED7CFB2BA9|- rs1_w0_val == -9<br>                                                                                                                                                                                                              |[0x80001aa0]:KMMAWB_U t6, t5, t4<br> [0x80001aa4]:sd t6, 1632(fp)<br>    |
| 119|[0x80003980]<br>0xFD3B5DEE7CFB2BA9|- rs1_w0_val == -2<br>                                                                                                                                                                                                              |[0x80001ac8]:KMMAWB_U t6, t5, t4<br> [0x80001acc]:sd t6, 1648(fp)<br>    |
| 120|[0x80003990]<br>0xFD3B5DEE7CF9ABA9|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                      |[0x80001af4]:KMMAWB_U t6, t5, t4<br> [0x80001af8]:sd t6, 1664(fp)<br>    |
| 121|[0x800039a0]<br>0xFD3B59EE7CD98BA9|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                       |[0x80001b1c]:KMMAWB_U t6, t5, t4<br> [0x80001b20]:sd t6, 1680(fp)<br>    |
| 122|[0x800039b0]<br>0xFD3B57EE7CD98BA8|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                        |[0x80001b4c]:KMMAWB_U t6, t5, t4<br> [0x80001b50]:sd t6, 1696(fp)<br>    |
| 123|[0x800039c0]<br>0xFD3B57BE7CDA0DA8|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                       |[0x80001b78]:KMMAWB_U t6, t5, t4<br> [0x80001b7c]:sd t6, 1712(fp)<br>    |
| 124|[0x800039d0]<br>0xFD3B57BE7CDA4DA8|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                         |[0x80001ba0]:KMMAWB_U t6, t5, t4<br> [0x80001ba4]:sd t6, 1728(fp)<br>    |
| 125|[0x800039f0]<br>0xFD4B77BE7CEACE28|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                         |[0x80001c00]:KMMAWB_U t6, t5, t4<br> [0x80001c04]:sd t6, 1760(fp)<br>    |
