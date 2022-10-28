
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001c30')]      |
| SIG_REGION                | [('0x80003210', '0x80003a10', '256 dwords')]      |
| COV_LABELS                | kmmawt2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawt2.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 256      |
| STAT1                     | 126      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 128     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001770]:KMMAWT2_U t6, t5, t4
      [0x80001774]:sd t6, 1200(ra)
 -- Signature Address: 0x80003880 Data: 0x750CEE2AB0436880
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -257
      - rs2_h1_val == 2048
      - rs2_h0_val == 4096
      - rs1_w1_val == 0
      - rs1_w0_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001c1c]:KMMAWT2_U t6, t5, t4
      [0x80001c20]:sd t6, 1584(ra)
 -- Signature Address: 0x80003a00 Data: 0x7E992635C9F39B63
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 512
      - rs2_h2_val == -129
      - rs2_h1_val == 2048
      - rs2_h0_val == 0
      - rs1_w1_val == -1431655766
      - rs1_w0_val == 1024






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x1', 'rs2 : x1', 'rd : x10', 'rs1 == rs2 != rd', 'rs2_h3_val == -9', 'rs2_h2_val == 32767', 'rs2_h1_val == -129', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800003c4]:KMMAWT2_U a0, ra, ra
	-[0x800003c8]:sd a0, 0(sp)
Current Store : [0x800003cc] : sd ra, 8(sp) -- Store: [0x80003218]:0xFFF77FFFFF7FF7FF




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -257', 'rs2_h1_val == -16385', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000400]:KMMAWT2_U s8, s8, s8
	-[0x80000404]:sd s8, 16(sp)
Current Store : [0x80000408] : sd s8, 24(sp) -- Store: [0x80003228]:0xE38EC6C6E0005556




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h1_val == 1024', 'rs2_h0_val == 8', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000430]:KMMAWT2_U s1, a4, s9
	-[0x80000434]:sd s1, 32(sp)
Current Store : [0x80000438] : sd a4, 40(sp) -- Store: [0x80003238]:0x0000100000000005




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x13', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == 4096', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000460]:KMMAWT2_U a3, a3, a2
	-[0x80000464]:sd a3, 48(sp)
Current Store : [0x80000468] : sd a3, 56(sp) -- Store: [0x80003248]:0x0000000A00002002




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rd : x6', 'rs2 == rd != rs1', 'rs2_h3_val == -16385']
Last Code Sequence : 
	-[0x80000490]:KMMAWT2_U t1, s1, t1
	-[0x80000494]:sd t1, 64(sp)
Current Store : [0x80000498] : sd s1, 72(sp) -- Store: [0x80003258]:0xFFFFFFF9FFFFFFFA




Last Coverpoint : ['rs1 : x21', 'rs2 : x18', 'rd : x19', 'rs2_h3_val == -8193', 'rs2_h1_val == 4', 'rs1_w1_val == 1048576', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800004c4]:KMMAWT2_U s3, s5, s2
	-[0x800004c8]:sd s3, 80(sp)
Current Store : [0x800004cc] : sd s5, 88(sp) -- Store: [0x80003268]:0x0010000000010000




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rd : x16', 'rs2_h3_val == -4097', 'rs2_h1_val == 32', 'rs2_h0_val == 64', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800004f8]:KMMAWT2_U a6, a5, t6
	-[0x800004fc]:sd a6, 96(sp)
Current Store : [0x80000500] : sd a5, 104(sp) -- Store: [0x80003278]:0xFFFFFBFF3FFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x16', 'rd : x31', 'rs2_h3_val == -2049', 'rs2_h2_val == 8', 'rs2_h1_val == -257', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000528]:KMMAWT2_U t6, t5, a6
	-[0x8000052c]:sd t6, 112(sp)
Current Store : [0x80000530] : sd t5, 120(sp) -- Store: [0x80003288]:0x00080000C0000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x11', 'rs2_h3_val == -1025', 'rs1_w1_val == -536870913', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000550]:KMMAWT2_U a1, tp, a7
	-[0x80000554]:sd a1, 128(sp)
Current Store : [0x80000558] : sd tp, 136(sp) -- Store: [0x80003298]:0xDFFFFFFFFFFFFFFD




Last Coverpoint : ['rs1 : x16', 'rs2 : x15', 'rd : x20', 'rs2_h3_val == -513', 'rs2_h2_val == -17', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000057c]:KMMAWT2_U s4, a6, a5
	-[0x80000580]:sd s4, 144(sp)
Current Store : [0x80000584] : sd a6, 152(sp) -- Store: [0x800032a8]:0xF7FFFFFF00000007




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x23', 'rs2_h3_val == -257', 'rs2_h2_val == 2048', 'rs2_h1_val == 512', 'rs2_h0_val == -1', 'rs1_w1_val == -1', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800005a8]:KMMAWT2_U s7, t4, s11
	-[0x800005ac]:sd s7, 160(sp)
Current Store : [0x800005b0] : sd t4, 168(sp) -- Store: [0x800032b8]:0xFFFFFFFFDFFFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x14', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -8388609', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800005dc]:KMMAWT2_U a4, s4, zero
	-[0x800005e0]:sd a4, 176(sp)
Current Store : [0x800005e4] : sd s4, 184(sp) -- Store: [0x800032c8]:0xFF7FFFFF00000008




Last Coverpoint : ['rs1 : x27', 'rs2 : x5', 'rd : x7', 'rs2_h3_val == -65', 'rs2_h2_val == 512', 'rs1_w1_val == -17', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000610]:KMMAWT2_U t2, s11, t0
	-[0x80000614]:sd t2, 192(sp)
Current Store : [0x80000618] : sd s11, 200(sp) -- Store: [0x800032d8]:0xFFFFFFEFFFDFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x26', 'rs2_h3_val == -33', 'rs2_h2_val == -5', 'rs2_h1_val == -21846', 'rs1_w1_val == -268435457', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000648]:KMMAWT2_U s10, s6, a0
	-[0x8000064c]:sd s10, 208(sp)
Current Store : [0x80000650] : sd s6, 216(sp) -- Store: [0x800032e8]:0xEFFFFFFFEFFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x1', 'rs2_h3_val == -17', 'rs2_h1_val == -33', 'rs2_h0_val == 32767', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000684]:KMMAWT2_U ra, t6, s3
	-[0x80000688]:sd ra, 0(a0)
Current Store : [0x8000068c] : sd t6, 8(a0) -- Store: [0x800032f8]:0x00000006AAAAAAAA




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x15', 'rs2_h3_val == -5', 'rs2_h1_val == -65', 'rs2_h0_val == -8193', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800006b4]:KMMAWT2_U a5, fp, t2
	-[0x800006b8]:sd a5, 16(a0)
Current Store : [0x800006bc] : sd fp, 24(a0) -- Store: [0x80003308]:0xFFFFFFFA00000080




Last Coverpoint : ['rs1 : x2', 'rs2 : x21', 'rd : x4', 'rs2_h3_val == -3', 'rs2_h2_val == 2', 'rs2_h1_val == -5', 'rs2_h0_val == 128', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800006e4]:KMMAWT2_U tp, sp, s5
	-[0x800006e8]:sd tp, 32(a0)
Current Store : [0x800006ec] : sd sp, 40(a0) -- Store: [0x80003318]:0x0000000900000002




Last Coverpoint : ['rs1 : x3', 'rs2 : x22', 'rd : x29', 'rs2_h3_val == -2', 'rs2_h2_val == -4097', 'rs2_h0_val == -2', 'rs1_w1_val == 134217728', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000718]:KMMAWT2_U t4, gp, s6
	-[0x8000071c]:sd t4, 48(a0)
Current Store : [0x80000720] : sd gp, 56(a0) -- Store: [0x80003328]:0x08000000FFFFFBFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x5', 'rs2_h3_val == -32768', 'rs2_h1_val == -4097', 'rs2_h0_val == -33', 'rs1_w1_val == 2', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000748]:KMMAWT2_U t0, s10, s1
	-[0x8000074c]:sd t0, 64(a0)
Current Store : [0x80000750] : sd s10, 72(a0) -- Store: [0x80003338]:0x0000000200100000




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x25', 'rs2_h3_val == 16384', 'rs2_h2_val == 1024', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000784]:KMMAWT2_U s9, a1, tp
	-[0x80000788]:sd s9, 80(a0)
Current Store : [0x8000078c] : sd a1, 88(a0) -- Store: [0x80003348]:0xFFFFFFF9FFFF7FFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x8', 'rs2_h3_val == 8192']
Last Code Sequence : 
	-[0x800007b8]:KMMAWT2_U fp, s7, a3
	-[0x800007bc]:sd fp, 96(a0)
Current Store : [0x800007c0] : sd s7, 104(a0) -- Store: [0x80003358]:0xC0000000FFFFFFFA




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x27', 'rs2_h3_val == 4096', 'rs2_h1_val == -3', 'rs2_h0_val == 512', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800007e8]:KMMAWT2_U s11, zero, t5
	-[0x800007ec]:sd s11, 112(a0)
Current Store : [0x800007f0] : sd zero, 120(a0) -- Store: [0x80003368]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x30', 'rs2_h3_val == 2048', 'rs2_h1_val == 8192', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x8000081c]:KMMAWT2_U t5, t1, s4
	-[0x80000820]:sd t5, 128(a0)
Current Store : [0x80000824] : sd t1, 136(a0) -- Store: [0x80003378]:0x55555555FFFFFFF9




Last Coverpoint : ['rs1 : x28', 'rs2 : x11', 'rd : x3', 'rs2_h3_val == 1024', 'rs2_h2_val == -513', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000848]:KMMAWT2_U gp, t3, a1
	-[0x8000084c]:sd gp, 144(a0)
Current Store : [0x80000850] : sd t3, 152(a0) -- Store: [0x80003388]:0xFF7FFFFFEFFFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x8', 'rd : x0', 'rs2_h3_val == 512', 'rs2_h2_val == -129', 'rs2_h1_val == 2048', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000870]:KMMAWT2_U zero, t2, fp
	-[0x80000874]:sd zero, 160(a0)
Current Store : [0x80000878] : sd t2, 168(a0) -- Store: [0x80003398]:0xAAAAAAAA00000400




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x2', 'rs2_h3_val == 256', 'rs2_h2_val == -21846', 'rs2_h1_val == 2', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800008a0]:KMMAWT2_U sp, s3, t4
	-[0x800008a4]:sd sp, 176(a0)
Current Store : [0x800008a8] : sd s3, 184(a0) -- Store: [0x800033a8]:0xFFFFFFFC00000004




Last Coverpoint : ['rs1 : x5', 'rs2 : x23', 'rd : x12', 'rs2_h3_val == 128', 'rs2_h0_val == 21845', 'rs1_w1_val == -2', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008d0]:KMMAWT2_U a2, t0, s7
	-[0x800008d4]:sd a2, 192(a0)
Current Store : [0x800008d8] : sd t0, 200(a0) -- Store: [0x800033b8]:0xFFFFFFFEFFFFFFFB




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x17', 'rs2_h3_val == 64', 'rs2_h2_val == 64', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000900]:KMMAWT2_U a7, s9, a4
	-[0x80000904]:sd a7, 208(a0)
Current Store : [0x80000908] : sd s9, 216(a0) -- Store: [0x800033c8]:0xFFFFFFBFDFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x22', 'rs2_h3_val == 32', 'rs2_h1_val == 4096', 'rs2_h0_val == -17', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000940]:KMMAWT2_U s6, a0, t3
	-[0x80000944]:sd s6, 0(ra)
Current Store : [0x80000948] : sd a0, 8(ra) -- Store: [0x800033d8]:0xAAAAAAAA20000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x21', 'rs2_h3_val == 16', 'rs2_h2_val == -65', 'rs2_h1_val == -8193', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000968]:KMMAWT2_U s5, a2, sp
	-[0x8000096c]:sd s5, 16(ra)
Current Store : [0x80000970] : sd a2, 24(ra) -- Store: [0x800033e8]:0x0000000240000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x26', 'rd : x18', 'rs2_h3_val == 8', 'rs2_h1_val == 21845', 'rs2_h0_val == -513', 'rs1_w1_val == -33', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000099c]:KMMAWT2_U s2, a7, s10
	-[0x800009a0]:sd s2, 32(ra)
Current Store : [0x800009a4] : sd a7, 40(ra) -- Store: [0x800033f8]:0xFFFFFFDFFBFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x28', 'rs2_h3_val == 4', 'rs2_h2_val == -1025', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800009c8]:KMMAWT2_U t3, s2, gp
	-[0x800009cc]:sd t3, 48(ra)
Current Store : [0x800009d0] : sd s2, 56(ra) -- Store: [0x80003408]:0x0000004000000003




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 16', 'rs2_h1_val == -1025', 'rs1_w1_val == -2097153', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800009f0]:KMMAWT2_U t6, t5, t4
	-[0x800009f4]:sd t6, 64(ra)
Current Store : [0x800009f8] : sd t5, 72(ra) -- Store: [0x80003418]:0xFFDFFFFF10000000




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == 128', 'rs1_w1_val == -16385', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a20]:KMMAWT2_U t6, t5, t4
	-[0x80000a24]:sd t6, 80(ra)
Current Store : [0x80000a28] : sd t5, 88(ra) -- Store: [0x80003428]:0xFFFFBFFFFFFFFFFE




Last Coverpoint : ['rs1_w1_val == 256', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000a4c]:KMMAWT2_U t6, t5, t4
	-[0x80000a50]:sd t6, 96(ra)
Current Store : [0x80000a54] : sd t5, 104(ra) -- Store: [0x80003438]:0x00000100F7FFFFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == 4096', 'rs1_w1_val == 268435456', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000a7c]:KMMAWT2_U t6, t5, t4
	-[0x80000a80]:sd t6, 112(ra)
Current Store : [0x80000a84] : sd t5, 120(ra) -- Store: [0x80003448]:0x10000000FFEFFFFF




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80000aac]:KMMAWT2_U t6, t5, t4
	-[0x80000ab0]:sd t6, 128(ra)
Current Store : [0x80000ab4] : sd t5, 136(ra) -- Store: [0x80003458]:0xFFFFFFDF00000003




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == 32767', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000ae4]:KMMAWT2_U t6, t5, t4
	-[0x80000ae8]:sd t6, 144(ra)
Current Store : [0x80000aec] : sd t5, 152(ra) -- Store: [0x80003468]:0xFFFFDFFF00000400




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000b1c]:KMMAWT2_U t6, t5, t4
	-[0x80000b20]:sd t6, 160(ra)
Current Store : [0x80000b24] : sd t5, 168(ra) -- Store: [0x80003478]:0xFFFFBFFFFFFFDFFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == 256', 'rs1_w1_val == -65537', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000b4c]:KMMAWT2_U t6, t5, t4
	-[0x80000b50]:sd t6, 176(ra)
Current Store : [0x80000b54] : sd t5, 184(ra) -- Store: [0x80003488]:0xFFFEFFFF01000000




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000b80]:KMMAWT2_U t6, t5, t4
	-[0x80000b84]:sd t6, 192(ra)
Current Store : [0x80000b88] : sd t5, 200(ra) -- Store: [0x80003498]:0x08000000FFFFFFFB




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == 4194304', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000bb4]:KMMAWT2_U t6, t5, t4
	-[0x80000bb8]:sd t6, 208(ra)
Current Store : [0x80000bbc] : sd t5, 216(ra) -- Store: [0x800034a8]:0x0040000000200000




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000be8]:KMMAWT2_U t6, t5, t4
	-[0x80000bec]:sd t6, 224(ra)
Current Store : [0x80000bf0] : sd t5, 232(ra) -- Store: [0x800034b8]:0xFFEFFFFF00080000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w1_val == -131073', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c20]:KMMAWT2_U t6, t5, t4
	-[0x80000c24]:sd t6, 240(ra)
Current Store : [0x80000c28] : sd t5, 248(ra) -- Store: [0x800034c8]:0xFFFDFFFF00040000




Last Coverpoint : ['rs1_w1_val == 16777216', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c54]:KMMAWT2_U t6, t5, t4
	-[0x80000c58]:sd t6, 256(ra)
Current Store : [0x80000c5c] : sd t5, 264(ra) -- Store: [0x800034d8]:0x0100000000020000




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_w1_val == 512', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c7c]:KMMAWT2_U t6, t5, t4
	-[0x80000c80]:sd t6, 272(ra)
Current Store : [0x80000c84] : sd t5, 280(ra) -- Store: [0x800034e8]:0x0000020000008000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cac]:KMMAWT2_U t6, t5, t4
	-[0x80000cb0]:sd t6, 288(ra)
Current Store : [0x80000cb4] : sd t5, 296(ra) -- Store: [0x800034f8]:0xFFFFFFF900004000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cdc]:KMMAWT2_U t6, t5, t4
	-[0x80000ce0]:sd t6, 304(ra)
Current Store : [0x80000ce4] : sd t5, 312(ra) -- Store: [0x80003508]:0xFFFFFFFC00001000




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d14]:KMMAWT2_U t6, t5, t4
	-[0x80000d18]:sd t6, 320(ra)
Current Store : [0x80000d1c] : sd t5, 328(ra) -- Store: [0x80003518]:0x0000200000000800




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d40]:KMMAWT2_U t6, t5, t4
	-[0x80000d44]:sd t6, 336(ra)
Current Store : [0x80000d48] : sd t5, 344(ra) -- Store: [0x80003528]:0xFFFFFFDF00000200




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w1_val == 1', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d68]:KMMAWT2_U t6, t5, t4
	-[0x80000d6c]:sd t6, 352(ra)
Current Store : [0x80000d70] : sd t5, 360(ra) -- Store: [0x80003538]:0x0000000100000100




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d98]:KMMAWT2_U t6, t5, t4
	-[0x80000d9c]:sd t6, 368(ra)
Current Store : [0x80000da0] : sd t5, 376(ra) -- Store: [0x80003548]:0xC000000000000040




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000dc8]:KMMAWT2_U t6, t5, t4
	-[0x80000dcc]:sd t6, 384(ra)
Current Store : [0x80000dd0] : sd t5, 392(ra) -- Store: [0x80003558]:0x0040000000000020




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h1_val == 16384', 'rs1_w1_val == 128', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000df8]:KMMAWT2_U t6, t5, t4
	-[0x80000dfc]:sd t6, 400(ra)
Current Store : [0x80000e00] : sd t5, 408(ra) -- Store: [0x80003568]:0x0000008000000010




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e20]:KMMAWT2_U t6, t5, t4
	-[0x80000e24]:sd t6, 416(ra)
Current Store : [0x80000e28] : sd t5, 424(ra) -- Store: [0x80003578]:0x0000000900000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000e4c]:KMMAWT2_U t6, t5, t4
	-[0x80000e50]:sd t6, 432(ra)
Current Store : [0x80000e54] : sd t5, 440(ra) -- Store: [0x80003588]:0xDFFFFFFF00000000




Last Coverpoint : ['rs1_w1_val == -4097', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e74]:KMMAWT2_U t6, t5, t4
	-[0x80000e78]:sd t6, 448(ra)
Current Store : [0x80000e7c] : sd t5, 456(ra) -- Store: [0x80003598]:0xFFFFEFFFFFFFFFFF




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000ea4]:KMMAWT2_U t6, t5, t4
	-[0x80000ea8]:sd t6, 464(ra)
Current Store : [0x80000eac] : sd t5, 472(ra) -- Store: [0x800035a8]:0xFFFFFBFFFF7FFFFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000edc]:KMMAWT2_U t6, t5, t4
	-[0x80000ee0]:sd t6, 480(ra)
Current Store : [0x80000ee4] : sd t5, 488(ra) -- Store: [0x800035b8]:0xFF7FFFFFFFEFFFFF




Last Coverpoint : ['rs2_h3_val == -129', 'rs2_h2_val == -2', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000f10]:KMMAWT2_U t6, t5, t4
	-[0x80000f14]:sd t6, 496(ra)
Current Store : [0x80000f18] : sd t5, 504(ra) -- Store: [0x800035c8]:0x40000000C0000000




Last Coverpoint : ['rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x80000f44]:KMMAWT2_U t6, t5, t4
	-[0x80000f48]:sd t6, 512(ra)
Current Store : [0x80000f4c] : sd t5, 520(ra) -- Store: [0x800035d8]:0x0100000000001000




Last Coverpoint : ['rs2_h2_val == 8192']
Last Code Sequence : 
	-[0x80000f70]:KMMAWT2_U t6, t5, t4
	-[0x80000f74]:sd t6, 528(ra)
Current Store : [0x80000f78] : sd t5, 536(ra) -- Store: [0x800035e8]:0xFFFFFFFF00000006




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80000fa0]:KMMAWT2_U t6, t5, t4
	-[0x80000fa4]:sd t6, 544(ra)
Current Store : [0x80000fa8] : sd t5, 552(ra) -- Store: [0x800035f8]:0xFFFFFFF6FFFFFFFD




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h1_val == -513', 'rs1_w1_val == 33554432', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000fd8]:KMMAWT2_U t6, t5, t4
	-[0x80000fdc]:sd t6, 560(ra)
Current Store : [0x80000fe0] : sd t5, 568(ra) -- Store: [0x80003608]:0x02000000FFFFF7FF




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == 2048', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001008]:KMMAWT2_U t6, t5, t4
	-[0x8000100c]:sd t6, 576(ra)
Current Store : [0x80001010] : sd t5, 584(ra) -- Store: [0x80003618]:0xFFEFFFFF08000000




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h1_val == -2049', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80001038]:KMMAWT2_U t6, t5, t4
	-[0x8000103c]:sd t6, 592(ra)
Current Store : [0x80001040] : sd t5, 600(ra) -- Store: [0x80003628]:0xFFFFFBFF00000008




Last Coverpoint : ['rs2_h1_val == -17']
Last Code Sequence : 
	-[0x8000105c]:KMMAWT2_U t6, t5, t4
	-[0x80001060]:sd t6, 608(ra)
Current Store : [0x80001064] : sd t5, 616(ra) -- Store: [0x80003638]:0xFFFFFFFF00000000




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001088]:KMMAWT2_U t6, t5, t4
	-[0x8000108c]:sd t6, 624(ra)
Current Store : [0x80001090] : sd t5, 632(ra) -- Store: [0x80003648]:0x00000008FFFFFFFE




Last Coverpoint : ['rs2_h1_val == -2']
Last Code Sequence : 
	-[0x800010b8]:KMMAWT2_U t6, t5, t4
	-[0x800010bc]:sd t6, 640(ra)
Current Store : [0x800010c0] : sd t5, 648(ra) -- Store: [0x80003658]:0x000000033FFFFFFF




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800010ec]:KMMAWT2_U t6, t5, t4
	-[0x800010f0]:sd t6, 656(ra)
Current Store : [0x800010f4] : sd t5, 664(ra) -- Store: [0x80003668]:0xFFDFFFFFFF7FFFFF




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x8000111c]:KMMAWT2_U t6, t5, t4
	-[0x80001120]:sd t6, 672(ra)
Current Store : [0x80001124] : sd t5, 680(ra) -- Store: [0x80003678]:0x00000001FBFFFFFF




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80001144]:KMMAWT2_U t6, t5, t4
	-[0x80001148]:sd t6, 688(ra)
Current Store : [0x8000114c] : sd t5, 696(ra) -- Store: [0x80003688]:0xFFFFFDFF00040000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001178]:KMMAWT2_U t6, t5, t4
	-[0x8000117c]:sd t6, 704(ra)
Current Store : [0x80001180] : sd t5, 712(ra) -- Store: [0x80003698]:0x00010000FFFFFFFD




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800011a4]:KMMAWT2_U t6, t5, t4
	-[0x800011a8]:sd t6, 720(ra)
Current Store : [0x800011ac] : sd t5, 728(ra) -- Store: [0x800036a8]:0x0000000700000002




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800011d4]:KMMAWT2_U t6, t5, t4
	-[0x800011d8]:sd t6, 736(ra)
Current Store : [0x800011dc] : sd t5, 744(ra) -- Store: [0x800036b8]:0x0010000008000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001204]:KMMAWT2_U t6, t5, t4
	-[0x80001208]:sd t6, 752(ra)
Current Store : [0x8000120c] : sd t5, 760(ra) -- Store: [0x800036c8]:0xFFFFFDFF00400000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001230]:KMMAWT2_U t6, t5, t4
	-[0x80001234]:sd t6, 768(ra)
Current Store : [0x80001238] : sd t5, 776(ra) -- Store: [0x800036d8]:0x0000004040000000




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_w1_val == 16', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001258]:KMMAWT2_U t6, t5, t4
	-[0x8000125c]:sd t6, 784(ra)
Current Store : [0x80001260] : sd t5, 792(ra) -- Store: [0x800036e8]:0x00000010FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001290]:KMMAWT2_U t6, t5, t4
	-[0x80001294]:sd t6, 800(ra)
Current Store : [0x80001298] : sd t5, 808(ra) -- Store: [0x800036f8]:0x7FFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800012c8]:KMMAWT2_U t6, t5, t4
	-[0x800012cc]:sd t6, 816(ra)
Current Store : [0x800012d0] : sd t5, 824(ra) -- Store: [0x80003708]:0xBFFFFFFF3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x800012fc]:KMMAWT2_U t6, t5, t4
	-[0x80001300]:sd t6, 832(ra)
Current Store : [0x80001304] : sd t5, 840(ra) -- Store: [0x80003718]:0xFBFFFFFF00000001




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80001334]:KMMAWT2_U t6, t5, t4
	-[0x80001338]:sd t6, 848(ra)
Current Store : [0x8000133c] : sd t5, 856(ra) -- Store: [0x80003728]:0xFDFFFFFF00040000




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80001364]:KMMAWT2_U t6, t5, t4
	-[0x80001368]:sd t6, 864(ra)
Current Store : [0x8000136c] : sd t5, 872(ra) -- Store: [0x80003738]:0xFEFFFFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001394]:KMMAWT2_U t6, t5, t4
	-[0x80001398]:sd t6, 880(ra)
Current Store : [0x8000139c] : sd t5, 888(ra) -- Store: [0x80003748]:0xFFBFFFFFEFFFFFFF




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800013c0]:KMMAWT2_U t6, t5, t4
	-[0x800013c4]:sd t6, 896(ra)
Current Store : [0x800013c8] : sd t5, 904(ra) -- Store: [0x80003758]:0xFFFBFFFF00400000




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800013f8]:KMMAWT2_U t6, t5, t4
	-[0x800013fc]:sd t6, 912(ra)
Current Store : [0x80001400] : sd t5, 920(ra) -- Store: [0x80003768]:0xFFFF7FFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x8000141c]:KMMAWT2_U t6, t5, t4
	-[0x80001420]:sd t6, 928(ra)
Current Store : [0x80001424] : sd t5, 936(ra) -- Store: [0x80003778]:0xFFFFF7FF00008000




Last Coverpoint : ['rs1_w1_val == -129', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000144c]:KMMAWT2_U t6, t5, t4
	-[0x80001450]:sd t6, 944(ra)
Current Store : [0x80001454] : sd t5, 952(ra) -- Store: [0x80003788]:0xFFFFFF7F55555555




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80001478]:KMMAWT2_U t6, t5, t4
	-[0x8000147c]:sd t6, 960(ra)
Current Store : [0x80001480] : sd t5, 968(ra) -- Store: [0x80003798]:0xFFFFFFF700000002




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800014b0]:KMMAWT2_U t6, t5, t4
	-[0x800014b4]:sd t6, 976(ra)
Current Store : [0x800014b8] : sd t5, 984(ra) -- Store: [0x800037a8]:0xFFFFFFFB00000004




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800014e0]:KMMAWT2_U t6, t5, t4
	-[0x800014e4]:sd t6, 992(ra)
Current Store : [0x800014e8] : sd t5, 1000(ra) -- Store: [0x800037b8]:0xFFFFFFFD00020000




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001524]:KMMAWT2_U t6, t5, t4
	-[0x80001528]:sd t6, 1008(ra)
Current Store : [0x8000152c] : sd t5, 1016(ra) -- Store: [0x800037c8]:0x80000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000155c]:KMMAWT2_U t6, t5, t4
	-[0x80001560]:sd t6, 1024(ra)
Current Store : [0x80001564] : sd t5, 1032(ra) -- Store: [0x800037d8]:0x20000000FF7FFFFF




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001594]:KMMAWT2_U t6, t5, t4
	-[0x80001598]:sd t6, 1040(ra)
Current Store : [0x8000159c] : sd t5, 1048(ra) -- Store: [0x800037e8]:0x04000000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800015c0]:KMMAWT2_U t6, t5, t4
	-[0x800015c4]:sd t6, 1056(ra)
Current Store : [0x800015c8] : sd t5, 1064(ra) -- Store: [0x800037f8]:0x0080000080000000




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800015f0]:KMMAWT2_U t6, t5, t4
	-[0x800015f4]:sd t6, 1072(ra)
Current Store : [0x800015f8] : sd t5, 1080(ra) -- Store: [0x80003808]:0x0020000008000000




Last Coverpoint : ['rs1_w1_val == 262144', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001624]:KMMAWT2_U t6, t5, t4
	-[0x80001628]:sd t6, 1088(ra)
Current Store : [0x8000162c] : sd t5, 1096(ra) -- Store: [0x80003818]:0x00040000FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 131072', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001654]:KMMAWT2_U t6, t5, t4
	-[0x80001658]:sd t6, 1104(ra)
Current Store : [0x8000165c] : sd t5, 1112(ra) -- Store: [0x80003828]:0x0002000002000000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001688]:KMMAWT2_U t6, t5, t4
	-[0x8000168c]:sd t6, 1120(ra)
Current Store : [0x80001690] : sd t5, 1128(ra) -- Store: [0x80003838]:0x0000800000001000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_w1_val == 16384', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800016bc]:KMMAWT2_U t6, t5, t4
	-[0x800016c0]:sd t6, 1136(ra)
Current Store : [0x800016c4] : sd t5, 1144(ra) -- Store: [0x80003848]:0x00004000FFF7FFFF




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800016ec]:KMMAWT2_U t6, t5, t4
	-[0x800016f0]:sd t6, 1152(ra)
Current Store : [0x800016f4] : sd t5, 1160(ra) -- Store: [0x80003858]:0x0000080000002000




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001714]:KMMAWT2_U t6, t5, t4
	-[0x80001718]:sd t6, 1168(ra)
Current Store : [0x8000171c] : sd t5, 1176(ra) -- Store: [0x80003868]:0x0000040000008000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001744]:KMMAWT2_U t6, t5, t4
	-[0x80001748]:sd t6, 1184(ra)
Current Store : [0x8000174c] : sd t5, 1192(ra) -- Store: [0x80003878]:0x0000000400000006




Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -257', 'rs2_h1_val == 2048', 'rs2_h0_val == 4096', 'rs1_w1_val == 0', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001770]:KMMAWT2_U t6, t5, t4
	-[0x80001774]:sd t6, 1200(ra)
Current Store : [0x80001778] : sd t5, 1208(ra) -- Store: [0x80003888]:0x00000000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800017a8]:KMMAWT2_U t6, t5, t4
	-[0x800017ac]:sd t6, 1216(ra)
Current Store : [0x800017b0] : sd t5, 1224(ra) -- Store: [0x80003898]:0x7FFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800017e0]:KMMAWT2_U t6, t5, t4
	-[0x800017e4]:sd t6, 1232(ra)
Current Store : [0x800017e8] : sd t5, 1240(ra) -- Store: [0x800038a8]:0x3FFFFFFFBFFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001810]:KMMAWT2_U t6, t5, t4
	-[0x80001814]:sd t6, 1248(ra)
Current Store : [0x80001818] : sd t5, 1256(ra) -- Store: [0x800038b8]:0x00000005FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000183c]:KMMAWT2_U t6, t5, t4
	-[0x80001840]:sd t6, 1264(ra)
Current Store : [0x80001844] : sd t5, 1272(ra) -- Store: [0x800038c8]:0x00100000FEFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001874]:KMMAWT2_U t6, t5, t4
	-[0x80001878]:sd t6, 1280(ra)
Current Store : [0x8000187c] : sd t5, 1288(ra) -- Store: [0x800038d8]:0xF7FFFFFFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800018ac]:KMMAWT2_U t6, t5, t4
	-[0x800018b0]:sd t6, 1296(ra)
Current Store : [0x800018b4] : sd t5, 1304(ra) -- Store: [0x800038e8]:0x55555555FFFBFFFF




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800018dc]:KMMAWT2_U t6, t5, t4
	-[0x800018e0]:sd t6, 1312(ra)
Current Store : [0x800018e4] : sd t5, 1320(ra) -- Store: [0x800038f8]:0xFFFFFFFAFFFDFFFF




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001908]:KMMAWT2_U t6, t5, t4
	-[0x8000190c]:sd t6, 1328(ra)
Current Store : [0x80001910] : sd t5, 1336(ra) -- Store: [0x80003908]:0xFFFFF7FFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000193c]:KMMAWT2_U t6, t5, t4
	-[0x80001940]:sd t6, 1344(ra)
Current Store : [0x80001944] : sd t5, 1352(ra) -- Store: [0x80003918]:0xFFFFFFF7FFFFBFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001974]:KMMAWT2_U t6, t5, t4
	-[0x80001978]:sd t6, 1360(ra)
Current Store : [0x8000197c] : sd t5, 1368(ra) -- Store: [0x80003928]:0x00800000FFFFEFFF




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800019b0]:KMMAWT2_U t6, t5, t4
	-[0x800019b4]:sd t6, 1376(ra)
Current Store : [0x800019b8] : sd t5, 1384(ra) -- Store: [0x80003938]:0xFFFFF7FFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800019dc]:KMMAWT2_U t6, t5, t4
	-[0x800019e0]:sd t6, 1392(ra)
Current Store : [0x800019e4] : sd t5, 1400(ra) -- Store: [0x80003948]:0x00000001FFFFFDFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80001a0c]:KMMAWT2_U t6, t5, t4
	-[0x80001a10]:sd t6, 1408(ra)
Current Store : [0x80001a14] : sd t5, 1416(ra) -- Store: [0x80003958]:0xAAAAAAAAFFFFFEFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001a3c]:KMMAWT2_U t6, t5, t4
	-[0x80001a40]:sd t6, 1424(ra)
Current Store : [0x80001a44] : sd t5, 1432(ra) -- Store: [0x80003968]:0xFFFFFFF8FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001a64]:KMMAWT2_U t6, t5, t4
	-[0x80001a68]:sd t6, 1440(ra)
Current Store : [0x80001a6c] : sd t5, 1448(ra) -- Store: [0x80003978]:0xFDFFFFFFFFFFFFEF




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001a94]:KMMAWT2_U t6, t5, t4
	-[0x80001a98]:sd t6, 1456(ra)
Current Store : [0x80001a9c] : sd t5, 1464(ra) -- Store: [0x80003988]:0xFFFDFFFFFFFFFFF7




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001ac0]:KMMAWT2_U t6, t5, t4
	-[0x80001ac4]:sd t6, 1472(ra)
Current Store : [0x80001ac8] : sd t5, 1480(ra) -- Store: [0x80003998]:0xFFFFFFFE04000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001af0]:KMMAWT2_U t6, t5, t4
	-[0x80001af4]:sd t6, 1488(ra)
Current Store : [0x80001af8] : sd t5, 1496(ra) -- Store: [0x800039a8]:0xFFFFFBFF00008000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001b20]:KMMAWT2_U t6, t5, t4
	-[0x80001b24]:sd t6, 1504(ra)
Current Store : [0x80001b28] : sd t5, 1512(ra) -- Store: [0x800039b8]:0x0000100000800000




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80001b5c]:KMMAWT2_U t6, t5, t4
	-[0x80001b60]:sd t6, 1520(ra)
Current Store : [0x80001b64] : sd t5, 1528(ra) -- Store: [0x800039c8]:0x3FFFFFFF55555555




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001b88]:KMMAWT2_U t6, t5, t4
	-[0x80001b8c]:sd t6, 1536(ra)
Current Store : [0x80001b90] : sd t5, 1544(ra) -- Store: [0x800039d8]:0x0000002080000000




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80001bc4]:KMMAWT2_U t6, t5, t4
	-[0x80001bc8]:sd t6, 1552(ra)
Current Store : [0x80001bcc] : sd t5, 1560(ra) -- Store: [0x800039e8]:0xFFFFFEFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80001bf4]:KMMAWT2_U t6, t5, t4
	-[0x80001bf8]:sd t6, 1568(ra)
Current Store : [0x80001bfc] : sd t5, 1576(ra) -- Store: [0x800039f8]:0xFFF7FFFFFFFFFFFD




Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 512', 'rs2_h2_val == -129', 'rs2_h1_val == 2048', 'rs2_h0_val == 0', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80001c1c]:KMMAWT2_U t6, t5, t4
	-[0x80001c20]:sd t6, 1584(ra)
Current Store : [0x80001c24] : sd t5, 1592(ra) -- Store: [0x80003a08]:0xAAAAAAAA00000400





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

|s.no|            signature             |                                                                                             coverpoints                                                                                              |                                   code                                   |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000009900008308|- opcode : kmmawt2.u<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -9<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -129<br> - rs2_h0_val == -2049<br>      |[0x800003c4]:KMMAWT2_U a0, ra, ra<br> [0x800003c8]:sd a0, 0(sp)<br>       |
|   2|[0x80003220]<br>0xE38EC6C6E0005556|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -257<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -21846<br>                       |[0x80000400]:KMMAWT2_U s8, s8, s8<br> [0x80000404]:sd s8, 16(sp)<br>      |
|   3|[0x80003230]<br>0xADFEF869ADFEEDBE|- rs1 : x14<br> - rs2 : x25<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 8<br> - rs1_w1_val == 4096<br>         |[0x80000430]:KMMAWT2_U s1, a4, s9<br> [0x80000434]:sd s1, 32(sp)<br>      |
|   4|[0x80003240]<br>0x0000000A00002002|- rs1 : x13<br> - rs2 : x12<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 4096<br> - rs1_w0_val == 8192<br>                                                     |[0x80000460]:KMMAWT2_U a3, a3, a2<br> [0x80000464]:sd a3, 48(sp)<br>      |
|   5|[0x80003250]<br>0xC00000000005AAAA|- rs1 : x9<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br>                                                                                                         |[0x80000490]:KMMAWT2_U t1, s1, t1<br> [0x80000494]:sd t1, 64(sp)<br>      |
|   6|[0x80003260]<br>0x6FA77F9B6FAB7FC3|- rs1 : x21<br> - rs2 : x18<br> - rd : x19<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 4<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 65536<br>                                                  |[0x800004c4]:KMMAWT2_U s3, s5, s2<br> [0x800004c8]:sd s3, 80(sp)<br>      |
|   7|[0x80003270]<br>0x7D5BFE5B7D6BFDDB|- rs1 : x15<br> - rs2 : x31<br> - rd : x16<br> - rs2_h3_val == -4097<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_w1_val == -1025<br>                                                      |[0x800004f8]:KMMAWT2_U a6, a5, t6<br> [0x800004fc]:sd a6, 96(sp)<br>      |
|   8|[0x80003280]<br>0xEFFF7FEA00A08040|- rs1 : x30<br> - rs2 : x16<br> - rd : x31<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 8<br> - rs2_h1_val == -257<br> - rs1_w1_val == 524288<br>                                                    |[0x80000528]:KMMAWT2_U t6, t5, a6<br> [0x8000052c]:sd t6, 112(sp)<br>     |
|   9|[0x80003290]<br>0xAC7FFB6FAB7FBB6E|- rs1 : x4<br> - rs2 : x17<br> - rd : x11<br> - rs2_h3_val == -1025<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -3<br>                                                                         |[0x80000550]:KMMAWT2_U a1, tp, a7<br> [0x80000554]:sd a1, 128(sp)<br>     |
|  10|[0x800032a0]<br>0xB7F5CFDDB7D5BFE0|- rs1 : x16<br> - rs2 : x15<br> - rd : x20<br> - rs2_h3_val == -513<br> - rs2_h2_val == -17<br> - rs1_w1_val == -134217729<br>                                                                        |[0x8000057c]:KMMAWT2_U s4, a6, a5<br> [0x80000580]:sd s4, 144(sp)<br>     |
|  11|[0x800032b0]<br>0xB6FAB7FBB67AB7FB|- rs1 : x29<br> - rs2 : x27<br> - rd : x23<br> - rs2_h3_val == -257<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 512<br> - rs2_h0_val == -1<br> - rs1_w1_val == -1<br> - rs1_w0_val == -536870913<br> |[0x800005a8]:KMMAWT2_U s7, t4, s11<br> [0x800005ac]:sd s7, 160(sp)<br>    |
|  12|[0x800032c0]<br>0x0000100000000005|- rs1 : x20<br> - rs2 : x0<br> - rd : x14<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 8<br>              |[0x800005dc]:KMMAWT2_U a4, s4, zero<br> [0x800005e0]:sd a4, 176(sp)<br>   |
|  13|[0x800032d0]<br>0xB7FBB6FAB7FBB5BA|- rs1 : x27<br> - rs2 : x5<br> - rd : x7<br> - rs2_h3_val == -65<br> - rs2_h2_val == 512<br> - rs1_w1_val == -17<br> - rs1_w0_val == -2097153<br>                                                     |[0x80000610]:KMMAWT2_U t2, s11, t0<br> [0x80000614]:sd t2, 192(sp)<br>    |
|  14|[0x800032e0]<br>0x76E376FF7FFFFFFF|- rs1 : x22<br> - rs2 : x10<br> - rd : x26<br> - rs2_h3_val == -33<br> - rs2_h2_val == -5<br> - rs2_h1_val == -21846<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -268435457<br>                |[0x80000648]:KMMAWT2_U s10, s6, a0<br> [0x8000064c]:sd s10, 208(sp)<br>   |
|  15|[0x800032f0]<br>0xFFF77FFFFF95F7FF|- rs1 : x31<br> - rs2 : x19<br> - rd : x1<br> - rs2_h3_val == -17<br> - rs2_h1_val == -33<br> - rs2_h0_val == 32767<br> - rs1_w0_val == -1431655766<br>                                               |[0x80000684]:KMMAWT2_U ra, t6, s3<br> [0x80000688]:sd ra, 0(a0)<br>       |
|  16|[0x80003300]<br>0xFDFFFFEF3FFFFFFC|- rs1 : x8<br> - rs2 : x7<br> - rd : x15<br> - rs2_h3_val == -5<br> - rs2_h1_val == -65<br> - rs2_h0_val == -8193<br> - rs1_w0_val == 128<br>                                                         |[0x800006b4]:KMMAWT2_U a5, fp, t2<br> [0x800006b8]:sd a5, 16(a0)<br>      |
|  17|[0x80003310]<br>0xDFFFFFFFFFFFFFFD|- rs1 : x2<br> - rs2 : x21<br> - rd : x4<br> - rs2_h3_val == -3<br> - rs2_h2_val == 2<br> - rs2_h1_val == -5<br> - rs2_h0_val == 128<br> - rs1_w0_val == 2<br>                                        |[0x800006e4]:KMMAWT2_U tp, sp, s5<br> [0x800006e8]:sd tp, 32(a0)<br>      |
|  18|[0x80003320]<br>0xFFFFDFFFDFFFFFEF|- rs1 : x3<br> - rs2 : x22<br> - rd : x29<br> - rs2_h3_val == -2<br> - rs2_h2_val == -4097<br> - rs2_h0_val == -2<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -1025<br>                         |[0x80000718]:KMMAWT2_U t4, gp, s6<br> [0x8000071c]:sd t4, 48(a0)<br>      |
|  19|[0x80003330]<br>0xFFBF01FE0003FFDA|- rs1 : x26<br> - rs2 : x9<br> - rd : x5<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -33<br> - rs1_w1_val == 2<br> - rs1_w0_val == 1048576<br>                           |[0x80000748]:KMMAWT2_U t0, s10, s1<br> [0x8000074c]:sd t0, 64(a0)<br>     |
|  20|[0x80003340]<br>0x5555BFFD03FFC009|- rs1 : x11<br> - rs2 : x4<br> - rd : x25<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 1024<br> - rs1_w0_val == -32769<br>                                                                           |[0x80000784]:KMMAWT2_U s9, a1, tp<br> [0x80000788]:sd s9, 80(a0)<br>      |
|  21|[0x80003350]<br>0xEFFFFFFA00000080|- rs1 : x23<br> - rs2 : x13<br> - rd : x8<br> - rs2_h3_val == 8192<br>                                                                                                                                |[0x800007b8]:KMMAWT2_U fp, s7, a3<br> [0x800007bc]:sd fp, 96(a0)<br>      |
|  22|[0x80003360]<br>0xFFFFFFEFFFDFFFFF|- rs1 : x0<br> - rs2 : x30<br> - rd : x27<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -3<br> - rs2_h0_val == 512<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                     |[0x800007e8]:KMMAWT2_U s11, zero, t5<br> [0x800007ec]:sd s11, 112(a0)<br> |
|  23|[0x80003370]<br>0x1555555BFFFD01FE|- rs1 : x6<br> - rs2 : x20<br> - rd : x30<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 8192<br> - rs1_w1_val == 1431655765<br>                                                                        |[0x8000081c]:KMMAWT2_U t5, t1, s4<br> [0x80000820]:sd t5, 128(a0)<br>     |
|  24|[0x80003380]<br>0x07FC0000F8001BFF|- rs1 : x28<br> - rs2 : x11<br> - rd : x3<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -513<br> - rs2_h0_val == -65<br>                                                                               |[0x80000848]:KMMAWT2_U gp, t3, a1<br> [0x8000084c]:sd gp, 144(a0)<br>     |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x8<br> - rd : x0<br> - rs2_h3_val == 512<br> - rs2_h2_val == -129<br> - rs2_h1_val == 2048<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 1024<br>                        |[0x80000870]:KMMAWT2_U zero, t2, fp<br> [0x80000874]:sd zero, 160(a0)<br> |
|  26|[0x800033a0]<br>0x0000000900000002|- rs1 : x19<br> - rs2 : x29<br> - rd : x2<br> - rs2_h3_val == 256<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 2<br> - rs1_w0_val == 4<br>                                                          |[0x800008a0]:KMMAWT2_U sp, s3, t4<br> [0x800008a4]:sd sp, 176(a0)<br>     |
|  27|[0x800033b0]<br>0x7FFF10000009000A|- rs1 : x5<br> - rs2 : x23<br> - rd : x12<br> - rs2_h3_val == 128<br> - rs2_h0_val == 21845<br> - rs1_w1_val == -2<br> - rs1_w0_val == -5<br>                                                         |[0x800008d0]:KMMAWT2_U a2, t0, s7<br> [0x800008d4]:sd a2, 192(a0)<br>     |
|  28|[0x800033c0]<br>0xFBFFFFF830003FFA|- rs1 : x25<br> - rs2 : x14<br> - rd : x17<br> - rs2_h3_val == 64<br> - rs2_h2_val == 64<br> - rs1_w1_val == -65<br>                                                                                  |[0x80000900]:KMMAWT2_U a7, s9, a4<br> [0x80000904]:sd a7, 208(a0)<br>     |
|  29|[0x800033d0]<br>0xFFE99AAA0600FFFE|- rs1 : x10<br> - rs2 : x28<br> - rd : x22<br> - rs2_h3_val == 32<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -17<br> - rs1_w0_val == 536870912<br>                                                  |[0x80000940]:KMMAWT2_U s6, a0, t3<br> [0x80000944]:sd s6, 0(ra)<br>       |
|  30|[0x800033e0]<br>0xFFFD0002EFFA8080|- rs1 : x12<br> - rs2 : x2<br> - rd : x21<br> - rs2_h3_val == 16<br> - rs2_h2_val == -65<br> - rs2_h1_val == -8193<br> - rs1_w0_val == 1073741824<br>                                                 |[0x80000968]:KMMAWT2_U s5, a2, sp<br> [0x8000096c]:sd s5, 16(ra)<br>      |
|  31|[0x800033f0]<br>0xDFFFFFF9FD5A57F5|- rs1 : x17<br> - rs2 : x26<br> - rd : x18<br> - rs2_h3_val == 8<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -513<br> - rs1_w1_val == -33<br> - rs1_w0_val == -67108865<br>                         |[0x8000099c]:KMMAWT2_U s2, a7, s10<br> [0x800009a0]:sd s2, 32(ra)<br>     |
|  32|[0x80003400]<br>0x0020FFF81000FFEF|- rs1 : x18<br> - rs2 : x3<br> - rd : x28<br> - rs2_h3_val == 4<br> - rs2_h2_val == -1025<br> - rs1_w1_val == 64<br>                                                                                  |[0x800009c8]:KMMAWT2_U t3, s2, gp<br> [0x800009cc]:sd t3, 48(ra)<br>      |
|  33|[0x80003410]<br>0xFFFFFF86AA2A8AAA|- rs2_h3_val == 2<br> - rs2_h2_val == 16<br> - rs2_h1_val == -1025<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 268435456<br>                                                                     |[0x800009f0]:KMMAWT2_U t6, t5, t4<br> [0x800009f4]:sd t6, 64(ra)<br>      |
|  34|[0x80003420]<br>0xFFFFFF85AA2A8AAA|- rs2_h3_val == 1<br> - rs2_h1_val == 128<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -2<br>                                                                                                       |[0x80000a20]:KMMAWT2_U t6, t5, t4<br> [0x80000a24]:sd t6, 80(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFF85AA2ABAAA|- rs1_w1_val == 256<br> - rs1_w0_val == -134217729<br>                                                                                                                                                |[0x80000a4c]:KMMAWT2_U t6, t5, t4<br> [0x80000a50]:sd t6, 96(ra)<br>      |
|  36|[0x80003440]<br>0xFFFFDF85AA2AB9EA|- rs2_h3_val == -1<br> - rs2_h0_val == 4096<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -1048577<br>                                                                                            |[0x80000a7c]:KMMAWT2_U t6, t5, t4<br> [0x80000a80]:sd t6, 112(ra)<br>     |
|  37|[0x80003450]<br>0xFFFFDF85AA2AB9EA|- rs2_h2_val == 21845<br>                                                                                                                                                                             |[0x80000aac]:KMMAWT2_U t6, t5, t4<br> [0x80000ab0]:sd t6, 128(ra)<br>     |
|  38|[0x80003460]<br>0xFFFFFF86AA2ABDEA|- rs2_h2_val == -16385<br> - rs2_h1_val == 32767<br> - rs1_w1_val == -8193<br>                                                                                                                        |[0x80000ae4]:KMMAWT2_U t6, t5, t4<br> [0x80000ae8]:sd t6, 144(ra)<br>     |
|  39|[0x80003470]<br>0xFFFFFF81AA2ABDE8|- rs2_h2_val == -8193<br> - rs1_w0_val == -8193<br>                                                                                                                                                   |[0x80000b1c]:KMMAWT2_U t6, t5, t4<br> [0x80000b20]:sd t6, 160(ra)<br>     |
|  40|[0x80003480]<br>0xFFFFFF75AA2CBDE8|- rs2_h2_val == -2049<br> - rs2_h1_val == 256<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 16777216<br>                                                                                             |[0x80000b4c]:KMMAWT2_U t6, t5, t4<br> [0x80000b50]:sd t6, 176(ra)<br>     |
|  41|[0x80003490]<br>0x01FFFF75AA2CBDE8|- rs2_h2_val == -33<br> - rs2_h0_val == -4097<br>                                                                                                                                                     |[0x80000b80]:KMMAWT2_U t6, t5, t4<br> [0x80000b84]:sd t6, 192(ra)<br>     |
|  42|[0x800034a0]<br>0x01FFFDF5AA2C7DA8|- rs2_h0_val == 256<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 2097152<br>                                                                                                                       |[0x80000bb4]:KMMAWT2_U t6, t5, t4<br> [0x80000bb8]:sd t6, 208(ra)<br>     |
|  43|[0x800034b0]<br>0x01FFFD35AA2C7DC8|- rs1_w1_val == -1048577<br> - rs1_w0_val == 524288<br>                                                                                                                                               |[0x80000be8]:KMMAWT2_U t6, t5, t4<br> [0x80000bec]:sd t6, 224(ra)<br>     |
|  44|[0x800034c0]<br>0x02000139AA2C7DD0|- rs2_h1_val == 1<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 262144<br>                                                                                                                          |[0x80000c20]:KMMAWT2_U t6, t5, t4<br> [0x80000c24]:sd t6, 240(ra)<br>     |
|  45|[0x800034d0]<br>0x02FFFF39AA2C7DC4|- rs1_w1_val == 16777216<br> - rs1_w0_val == 131072<br>                                                                                                                                               |[0x80000c54]:KMMAWT2_U t6, t5, t4<br> [0x80000c58]:sd t6, 256(ra)<br>     |
|  46|[0x800034e0]<br>0x02FFFF38AA2C85C4|- rs2_h2_val == -32768<br> - rs1_w1_val == 512<br> - rs1_w0_val == 32768<br>                                                                                                                          |[0x80000c7c]:KMMAWT2_U t6, t5, t4<br> [0x80000c80]:sd t6, 272(ra)<br>     |
|  47|[0x800034f0]<br>0x02FFFF38AA2C85C6|- rs2_h0_val == 1024<br> - rs1_w0_val == 16384<br>                                                                                                                                                    |[0x80000cac]:KMMAWT2_U t6, t5, t4<br> [0x80000cb0]:sd t6, 288(ra)<br>     |
|  48|[0x80003500]<br>0x02FFFF3BAA2C7DC6|- rs1_w0_val == 4096<br>                                                                                                                                                                              |[0x80000cdc]:KMMAWT2_U t6, t5, t4<br> [0x80000ce0]:sd t6, 304(ra)<br>     |
|  49|[0x80003510]<br>0x02FFFF39AA2C7DC6|- rs1_w1_val == 8192<br> - rs1_w0_val == 2048<br>                                                                                                                                                     |[0x80000d14]:KMMAWT2_U t6, t5, t4<br> [0x80000d18]:sd t6, 320(ra)<br>     |
|  50|[0x80003520]<br>0x02FFFF41AA2C7DC2|- rs1_w0_val == 512<br>                                                                                                                                                                               |[0x80000d40]:KMMAWT2_U t6, t5, t4<br> [0x80000d44]:sd t6, 336(ra)<br>     |
|  51|[0x80003530]<br>0x02FFFF41AA2C7DBA|- rs2_h0_val == -5<br> - rs1_w1_val == 1<br> - rs1_w0_val == 256<br>                                                                                                                                  |[0x80000d68]:KMMAWT2_U t6, t5, t4<br> [0x80000d6c]:sd t6, 352(ra)<br>     |
|  52|[0x80003540]<br>0x04007F41AA2C7D8F|- rs1_w0_val == 64<br>                                                                                                                                                                                |[0x80000d98]:KMMAWT2_U t6, t5, t4<br> [0x80000d9c]:sd t6, 368(ra)<br>     |
|  53|[0x80003550]<br>0x04007B41AA2C7D8F|- rs1_w0_val == 32<br>                                                                                                                                                                                |[0x80000dc8]:KMMAWT2_U t6, t5, t4<br> [0x80000dcc]:sd t6, 384(ra)<br>     |
|  54|[0x80003560]<br>0x04007B41AA2C7D97|- rs2_h2_val == 128<br> - rs2_h1_val == 16384<br> - rs1_w1_val == 128<br> - rs1_w0_val == 16<br>                                                                                                      |[0x80000df8]:KMMAWT2_U t6, t5, t4<br> [0x80000dfc]:sd t6, 400(ra)<br>     |
|  55|[0x80003570]<br>0x04007B41AA2C7D97|- rs2_h0_val == -129<br> - rs1_w0_val == 1<br>                                                                                                                                                        |[0x80000e20]:KMMAWT2_U t6, t5, t4<br> [0x80000e24]:sd t6, 416(ra)<br>     |
|  56|[0x80003580]<br>0x0401FB41AA2C7D97|- rs2_h0_val == 8192<br>                                                                                                                                                                              |[0x80000e4c]:KMMAWT2_U t6, t5, t4<br> [0x80000e50]:sd t6, 432(ra)<br>     |
|  57|[0x80003590]<br>0x0401FB42AA2C7D98|- rs1_w1_val == -4097<br> - rs1_w0_val == -1<br>                                                                                                                                                      |[0x80000e74]:KMMAWT2_U t6, t5, t4<br> [0x80000e78]:sd t6, 448(ra)<br>     |
|  58|[0x800035a0]<br>0x0401FB42AA2C8298|- rs2_h2_val == -9<br> - rs1_w0_val == -8388609<br>                                                                                                                                                   |[0x80000ea4]:KMMAWT2_U t6, t5, t4<br> [0x80000ea8]:sd t6, 464(ra)<br>     |
|  59|[0x800035b0]<br>0x0402FC42AA2C8378|- rs2_h2_val == -3<br> - rs2_h0_val == 2<br>                                                                                                                                                          |[0x80000edc]:KMMAWT2_U t6, t5, t4<br> [0x80000ee0]:sd t6, 480(ra)<br>     |
|  60|[0x800035c0]<br>0x03C27C42AA1C8378|- rs2_h3_val == -129<br> - rs2_h2_val == -2<br> - rs1_w1_val == 1073741824<br>                                                                                                                        |[0x80000f10]:KMMAWT2_U t6, t5, t4<br> [0x80000f14]:sd t6, 496(ra)<br>     |
|  61|[0x800035d0]<br>0x04027C42AA1C8388|- rs2_h2_val == 16384<br>                                                                                                                                                                             |[0x80000f44]:KMMAWT2_U t6, t5, t4<br> [0x80000f48]:sd t6, 512(ra)<br>     |
|  62|[0x800035e0]<br>0x04027C42AA1C8388|- rs2_h2_val == 8192<br>                                                                                                                                                                              |[0x80000f70]:KMMAWT2_U t6, t5, t4<br> [0x80000f74]:sd t6, 528(ra)<br>     |
|  63|[0x800035f0]<br>0x04027C42AA1C8388|- rs2_h2_val == 32<br>                                                                                                                                                                                |[0x80000fa0]:KMMAWT2_U t6, t5, t4<br> [0x80000fa4]:sd t6, 544(ra)<br>     |
|  64|[0x80003600]<br>0x02027C42AA1C83A8|- rs2_h2_val == 4<br> - rs2_h1_val == -513<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -2049<br>                                                                                                 |[0x80000fd8]:KMMAWT2_U t6, t5, t4<br> [0x80000fdc]:sd t6, 560(ra)<br>     |
|  65|[0x80003610]<br>0x02027A42AA1CF3A8|- rs2_h2_val == 1<br> - rs2_h0_val == 2048<br> - rs1_w0_val == 134217728<br>                                                                                                                          |[0x80001008]:KMMAWT2_U t6, t5, t4<br> [0x8000100c]:sd t6, 576(ra)<br>     |
|  66|[0x80003620]<br>0x02027A3AAA1CF3A7|- rs2_h2_val == -1<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 4<br>                                                                                                                                |[0x80001038]:KMMAWT2_U t6, t5, t4<br> [0x8000103c]:sd t6, 592(ra)<br>     |
|  67|[0x80003630]<br>0x02027A3AAA1CF3A7|- rs2_h1_val == -17<br>                                                                                                                                                                               |[0x8000105c]:KMMAWT2_U t6, t5, t4<br> [0x80001060]:sd t6, 608(ra)<br>     |
|  68|[0x80003640]<br>0x02027A3AAA1CF3A7|- rs2_h1_val == -9<br> - rs1_w1_val == 8<br>                                                                                                                                                          |[0x80001088]:KMMAWT2_U t6, t5, t4<br> [0x8000108c]:sd t6, 624(ra)<br>     |
|  69|[0x80003650]<br>0x02027A3AAA1BF3A7|- rs2_h1_val == -2<br>                                                                                                                                                                                |[0x800010b8]:KMMAWT2_U t6, t5, t4<br> [0x800010bc]:sd t6, 640(ra)<br>     |
|  70|[0x80003660]<br>0x0202793AAA9BF3A8|- rs2_h1_val == -32768<br>                                                                                                                                                                            |[0x800010ec]:KMMAWT2_U t6, t5, t4<br> [0x800010f0]:sd t6, 656(ra)<br>     |
|  71|[0x80003670]<br>0x0202793AAA99F3A8|- rs2_h1_val == 64<br>                                                                                                                                                                                |[0x8000111c]:KMMAWT2_U t6, t5, t4<br> [0x80001120]:sd t6, 672(ra)<br>     |
|  72|[0x80003680]<br>0x0202793AAA99F428|- rs2_h1_val == 16<br> - rs1_w1_val == -513<br>                                                                                                                                                       |[0x80001144]:KMMAWT2_U t6, t5, t4<br> [0x80001148]:sd t6, 688(ra)<br>     |
|  73|[0x80003690]<br>0x02027538AA99F428|- rs2_h1_val == 8<br> - rs1_w1_val == 65536<br>                                                                                                                                                       |[0x80001178]:KMMAWT2_U t6, t5, t4<br> [0x8000117c]:sd t6, 704(ra)<br>     |
|  74|[0x800036a0]<br>0x02027538AA99F428|- rs2_h0_val == 16384<br>                                                                                                                                                                             |[0x800011a4]:KMMAWT2_U t6, t5, t4<br> [0x800011a8]:sd t6, 720(ra)<br>     |
|  75|[0x800036b0]<br>0x02027618AFEF4428|- rs2_h0_val == 32<br>                                                                                                                                                                                |[0x800011d4]:KMMAWT2_U t6, t5, t4<br> [0x800011d8]:sd t6, 736(ra)<br>     |
|  76|[0x800036c0]<br>0x02027617B00F43A8|- rs2_h0_val == -16385<br> - rs1_w0_val == 4194304<br>                                                                                                                                                |[0x80001204]:KMMAWT2_U t6, t5, t4<br> [0x80001208]:sd t6, 752(ra)<br>     |
|  77|[0x800036d0]<br>0x02027657B010C3A8|- rs2_h0_val == 16<br>                                                                                                                                                                                |[0x80001230]:KMMAWT2_U t6, t5, t4<br> [0x80001234]:sd t6, 768(ra)<br>     |
|  78|[0x800036e0]<br>0x02027657B010C3A6|- rs2_h0_val == 1<br> - rs1_w1_val == 16<br> - rs1_w0_val == -65<br>                                                                                                                                  |[0x80001258]:KMMAWT2_U t6, t5, t4<br> [0x8000125c]:sd t6, 784(ra)<br>     |
|  79|[0x800036f0]<br>0x22027657B010C3A9|- rs1_w1_val == 2147483647<br>                                                                                                                                                                        |[0x80001290]:KMMAWT2_U t6, t5, t4<br> [0x80001294]:sd t6, 800(ra)<br>     |
|  80|[0x80003700]<br>0x21FEF657B00043A9|- rs1_w1_val == -1073741825<br>                                                                                                                                                                       |[0x800012c8]:KMMAWT2_U t6, t5, t4<br> [0x800012cc]:sd t6, 816(ra)<br>     |
|  81|[0x80003710]<br>0x21FEFE57B00043A9|- rs1_w1_val == -67108865<br>                                                                                                                                                                         |[0x800012fc]:KMMAWT2_U t6, t5, t4<br> [0x80001300]:sd t6, 832(ra)<br>     |
|  82|[0x80003720]<br>0x21BEFE57AFFC43A9|- rs1_w1_val == -33554433<br>                                                                                                                                                                         |[0x80001334]:KMMAWT2_U t6, t5, t4<br> [0x80001338]:sd t6, 848(ra)<br>     |
|  83|[0x80003730]<br>0x21C10057AFFC43CA|- rs1_w1_val == -16777217<br>                                                                                                                                                                         |[0x80001364]:KMMAWT2_U t6, t5, t4<br> [0x80001368]:sd t6, 864(ra)<br>     |
|  84|[0x80003740]<br>0x21C0FF57AFFBE3CA|- rs1_w1_val == -4194305<br>                                                                                                                                                                          |[0x80001394]:KMMAWT2_U t6, t5, t4<br> [0x80001398]:sd t6, 880(ra)<br>     |
|  85|[0x80003750]<br>0x21C0FF47AFFBD34A|- rs1_w1_val == -262145<br>                                                                                                                                                                           |[0x800013c0]:KMMAWT2_U t6, t5, t4<br> [0x800013c4]:sd t6, 896(ra)<br>     |
|  86|[0x80003760]<br>0x21C11F48AFFBD34C|- rs1_w1_val == -32769<br>                                                                                                                                                                            |[0x800013f8]:KMMAWT2_U t6, t5, t4<br> [0x800013fc]:sd t6, 912(ra)<br>     |
|  87|[0x80003770]<br>0x21C11F48AFFBDB4C|- rs1_w1_val == -2049<br>                                                                                                                                                                             |[0x8000141c]:KMMAWT2_U t6, t5, t4<br> [0x80001420]:sd t6, 928(ra)<br>     |
|  88|[0x80003780]<br>0x21C11F46AFF930A1|- rs1_w1_val == -129<br> - rs1_w0_val == 1431655765<br>                                                                                                                                               |[0x8000144c]:KMMAWT2_U t6, t5, t4<br> [0x80001450]:sd t6, 944(ra)<br>     |
|  89|[0x80003790]<br>0x21C11F46AFF930A1|- rs1_w1_val == -9<br>                                                                                                                                                                                |[0x80001478]:KMMAWT2_U t6, t5, t4<br> [0x8000147c]:sd t6, 960(ra)<br>     |
|  90|[0x800037a0]<br>0x21C11F49AFF930A1|- rs1_w1_val == -5<br>                                                                                                                                                                                |[0x800014b0]:KMMAWT2_U t6, t5, t4<br> [0x800014b4]:sd t6, 976(ra)<br>     |
|  91|[0x800037b0]<br>0x21C11F48AFF830A1|- rs1_w1_val == -3<br>                                                                                                                                                                                |[0x800014e0]:KMMAWT2_U t6, t5, t4<br> [0x800014e4]:sd t6, 992(ra)<br>     |
|  92|[0x800037c0]<br>0x77171F48AFF83091|- rs1_w1_val == -2147483648<br>                                                                                                                                                                       |[0x80001524]:KMMAWT2_U t6, t5, t4<br> [0x80001528]:sd t6, 1008(ra)<br>    |
|  93|[0x800037d0]<br>0x7516DF48AFF83891|- rs1_w1_val == 536870912<br>                                                                                                                                                                         |[0x8000155c]:KMMAWT2_U t6, t5, t4<br> [0x80001560]:sd t6, 1024(ra)<br>    |
|  94|[0x800037e0]<br>0x75170F48AFF03891|- rs1_w1_val == 67108864<br>                                                                                                                                                                          |[0x80001594]:KMMAWT2_U t6, t5, t4<br> [0x80001598]:sd t6, 1040(ra)<br>    |
|  95|[0x800037f0]<br>0x7516EE48B0013891|- rs1_w0_val == -2147483648<br> - rs1_w1_val == 8388608<br>                                                                                                                                           |[0x800015c0]:KMMAWT2_U t6, t5, t4<br> [0x800015c4]:sd t6, 1056(ra)<br>    |
|  96|[0x80003800]<br>0x750EEE08AFFF2891|- rs1_w1_val == 2097152<br>                                                                                                                                                                           |[0x800015f0]:KMMAWT2_U t6, t5, t4<br> [0x800015f4]:sd t6, 1072(ra)<br>    |
|  97|[0x80003810]<br>0x750CEE00AFFF2891|- rs1_w1_val == 262144<br> - rs1_w0_val == -129<br>                                                                                                                                                   |[0x80001624]:KMMAWT2_U t6, t5, t4<br> [0x80001628]:sd t6, 1088(ra)<br>    |
|  98|[0x80003820]<br>0x750CEE24B03F2891|- rs1_w1_val == 131072<br> - rs1_w0_val == 33554432<br>                                                                                                                                               |[0x80001654]:KMMAWT2_U t6, t5, t4<br> [0x80001658]:sd t6, 1104(ra)<br>    |
|  99|[0x80003830]<br>0x750CEE1AB03F2890|- rs1_w1_val == 32768<br>                                                                                                                                                                             |[0x80001688]:KMMAWT2_U t6, t5, t4<br> [0x8000168c]:sd t6, 1120(ra)<br>    |
| 100|[0x80003840]<br>0x750CEE2AB0432891|- rs2_h2_val == 256<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -524289<br>                                                                                                                         |[0x800016bc]:KMMAWT2_U t6, t5, t4<br> [0x800016c0]:sd t6, 1136(ra)<br>    |
| 101|[0x80003850]<br>0x750CEE2AB0432889|- rs1_w1_val == 2048<br>                                                                                                                                                                              |[0x800016ec]:KMMAWT2_U t6, t5, t4<br> [0x800016f0]:sd t6, 1152(ra)<br>    |
| 102|[0x80003860]<br>0x750CEE2AB0436888|- rs1_w1_val == 1024<br>                                                                                                                                                                              |[0x80001714]:KMMAWT2_U t6, t5, t4<br> [0x80001718]:sd t6, 1168(ra)<br>    |
| 103|[0x80003870]<br>0x750CEE2AB0436888|- rs2_h0_val == -3<br> - rs1_w1_val == 4<br>                                                                                                                                                          |[0x80001744]:KMMAWT2_U t6, t5, t4<br> [0x80001748]:sd t6, 1184(ra)<br>    |
| 104|[0x80003890]<br>0x7504EE2AB0466880|- rs1_w0_val == 2147483647<br>                                                                                                                                                                        |[0x800017a8]:KMMAWT2_U t6, t5, t4<br> [0x800017ac]:sd t6, 1216(ra)<br>    |
| 105|[0x800038a0]<br>0x7FFFFFFFB846E880|- rs1_w0_val == -1073741825<br>                                                                                                                                                                       |[0x800017e0]:KMMAWT2_U t6, t5, t4<br> [0x800017e4]:sd t6, 1232(ra)<br>    |
| 106|[0x800038b0]<br>0x7FFFFFFFB8470880|- rs1_w0_val == -33554433<br>                                                                                                                                                                         |[0x80001810]:KMMAWT2_U t6, t5, t4<br> [0x80001814]:sd t6, 1248(ra)<br>    |
| 107|[0x800038c0]<br>0x7FFDFFDFB8C70881|- rs1_w0_val == -16777217<br>                                                                                                                                                                         |[0x8000183c]:KMMAWT2_U t6, t5, t4<br> [0x80001840]:sd t6, 1264(ra)<br>    |
| 108|[0x800038d0]<br>0x7FFE4FDFB8C6E881|- rs1_w0_val == -4194305<br>                                                                                                                                                                          |[0x80001874]:KMMAWT2_U t6, t5, t4<br> [0x80001878]:sd t6, 1280(ra)<br>    |
| 109|[0x800038e0]<br>0x7FFFFFFFB8C6E881|- rs1_w0_val == -262145<br>                                                                                                                                                                           |[0x800018ac]:KMMAWT2_U t6, t5, t4<br> [0x800018b0]:sd t6, 1296(ra)<br>    |
| 110|[0x800038f0]<br>0x7FFFFFFFB8C6E081|- rs2_h0_val == -257<br> - rs1_w0_val == -131073<br>                                                                                                                                                  |[0x800018dc]:KMMAWT2_U t6, t5, t4<br> [0x800018e0]:sd t6, 1312(ra)<br>    |
| 111|[0x80003900]<br>0x7FFFFFFFB8C6E06F|- rs2_h0_val == -9<br> - rs1_w0_val == -65537<br>                                                                                                                                                     |[0x80001908]:KMMAWT2_U t6, t5, t4<br> [0x8000190c]:sd t6, 1328(ra)<br>    |
| 112|[0x80003910]<br>0x7FFFFFFFB8C6E0F0|- rs1_w0_val == -16385<br>                                                                                                                                                                            |[0x8000193c]:KMMAWT2_U t6, t5, t4<br> [0x80001940]:sd t6, 1344(ra)<br>    |
| 113|[0x80003920]<br>0x7FFFFFFFB8C6E0EF|- rs1_w0_val == -4097<br>                                                                                                                                                                             |[0x80001974]:KMMAWT2_U t6, t5, t4<br> [0x80001978]:sd t6, 1360(ra)<br>    |
| 114|[0x80003930]<br>0x7FFFFFFFB8C78B9A|- rs2_h1_val == -1<br>                                                                                                                                                                                |[0x800019b0]:KMMAWT2_U t6, t5, t4<br> [0x800019b4]:sd t6, 1376(ra)<br>    |
| 115|[0x80003940]<br>0x7FFFFFFFB8C78B9A|- rs1_w0_val == -513<br>                                                                                                                                                                              |[0x800019dc]:KMMAWT2_U t6, t5, t4<br> [0x800019e0]:sd t6, 1392(ra)<br>    |
| 116|[0x80003950]<br>0x7FFFFFFFB8C78B9A|- rs1_w0_val == -257<br>                                                                                                                                                                              |[0x80001a0c]:KMMAWT2_U t6, t5, t4<br> [0x80001a10]:sd t6, 1408(ra)<br>    |
| 117|[0x80003960]<br>0x7FFFFFFFB8C78B84|- rs1_w0_val == -33<br>                                                                                                                                                                               |[0x80001a3c]:KMMAWT2_U t6, t5, t4<br> [0x80001a40]:sd t6, 1424(ra)<br>    |
| 118|[0x80003970]<br>0x7FFFFBFFB8C78B73|- rs1_w0_val == -17<br>                                                                                                                                                                               |[0x80001a64]:KMMAWT2_U t6, t5, t4<br> [0x80001a68]:sd t6, 1440(ra)<br>    |
| 119|[0x80003980]<br>0x7FFFFBDFB8C78B73|- rs1_w0_val == -9<br>                                                                                                                                                                                |[0x80001a94]:KMMAWT2_U t6, t5, t4<br> [0x80001a98]:sd t6, 1456(ra)<br>    |
| 120|[0x80003990]<br>0x7FFFFBDFB8C7AB73|- rs1_w0_val == 67108864<br>                                                                                                                                                                          |[0x80001ac0]:KMMAWT2_U t6, t5, t4<br> [0x80001ac4]:sd t6, 1472(ra)<br>    |
| 121|[0x800039a0]<br>0x7FFFFBDFB8C7AB77|- rs2_h0_val == -1025<br>                                                                                                                                                                             |[0x80001af0]:KMMAWT2_U t6, t5, t4<br> [0x80001af4]:sd t6, 1488(ra)<br>    |
| 122|[0x800039b0]<br>0x7FFFFADFB8C7B077|- rs1_w0_val == 8388608<br>                                                                                                                                                                           |[0x80001b20]:KMMAWT2_U t6, t5, t4<br> [0x80001b24]:sd t6, 1504(ra)<br>    |
| 123|[0x800039c0]<br>0x7FEF7ADFB9725B22|- rs2_h0_val == -32768<br>                                                                                                                                                                            |[0x80001b5c]:KMMAWT2_U t6, t5, t4<br> [0x80001b60]:sd t6, 1520(ra)<br>    |
| 124|[0x800039d0]<br>0x7FEF7ADFB9F35B22|- rs1_w1_val == 32<br>                                                                                                                                                                                |[0x80001b88]:KMMAWT2_U t6, t5, t4<br> [0x80001b8c]:sd t6, 1536(ra)<br>    |
| 125|[0x800039e0]<br>0x7FEF7B8AC9F39B23|- rs1_w1_val == -257<br>                                                                                                                                                                              |[0x80001bc4]:KMMAWT2_U t6, t5, t4<br> [0x80001bc8]:sd t6, 1552(ra)<br>    |
| 126|[0x800039f0]<br>0x7FEE7B8AC9F39B23|- rs1_w1_val == -524289<br>                                                                                                                                                                           |[0x80001bf4]:KMMAWT2_U t6, t5, t4<br> [0x80001bf8]:sd t6, 1568(ra)<br>    |
