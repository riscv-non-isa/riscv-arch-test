
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b90')]      |
| SIG_REGION                | [('0x80003210', '0x800039e0', '250 dwords')]      |
| COV_LABELS                | kmmawt.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawt.u-01.S    |
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
      [0x80001698]:KMMAWT_U t6, t5, t4
      [0x8000169c]:sd t6, 1104(ra)
 -- Signature Address: 0x80003840 Data: 0xCDD0C591BD9A9F95
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 16384
      - rs2_h2_val == 16
      - rs1_w1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b7c]:KMMAWT_U t6, t5, t4
      [0x80001b80]:sd t6, 1504(ra)
 -- Signature Address: 0x800039d0 Data: 0xB1946892EB6E9781
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -257
      - rs2_h1_val == 64
      - rs2_h0_val == 8192
      - rs1_w1_val == 2
      - rs1_w0_val == 2097152






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawt.u', 'rs1 : x16', 'rs2 : x16', 'rd : x8', 'rs1 == rs2 != rd', 'rs2_h3_val == -33', 'rs2_h2_val == -17', 'rs2_h1_val == -16385', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800003c8]:KMMAWT_U fp, a6, a6
	-[0x800003cc]:sd fp, 0(tp)
Current Store : [0x800003d0] : sd a6, 8(tp) -- Store: [0x80003218]:0xFFDFFFEFBFFF0010




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x15', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h1_val == 64', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000040c]:KMMAWT_U a5, a5, a5
	-[0x80000410]:sd a5, 16(tp)
Current Store : [0x80000414] : sd a5, 24(tp) -- Store: [0x80003228]:0xC71C38E600410F3F




Last Coverpoint : ['rs1 : x22', 'rs2 : x1', 'rd : x19', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 8', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x8000043c]:KMMAWT_U s3, s6, ra
	-[0x80000440]:sd s3, 32(tp)
Current Store : [0x80000444] : sd s6, 40(tp) -- Store: [0x80003238]:0x00000005FFFFFFF8




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x31', 'rs1 == rd != rs2', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -16385', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000046c]:KMMAWT_U t6, t6, zero
	-[0x80000470]:sd t6, 48(tp)
Current Store : [0x80000474] : sd t6, 56(tp) -- Store: [0x80003248]:0xFFFFBFFF04000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x6', 'rd : x6', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == 32767', 'rs2_h1_val == -9', 'rs1_w1_val == 67108864', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800004a8]:KMMAWT_U t1, sp, t1
	-[0x800004ac]:sd t1, 64(tp)
Current Store : [0x800004b0] : sd sp, 72(tp) -- Store: [0x80003258]:0x04000000FFFF7FFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x12', 'rd : x24', 'rs2_h3_val == -8193', 'rs2_h2_val == -2049', 'rs2_h1_val == 8192', 'rs1_w1_val == 4', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800004e0]:KMMAWT_U s8, gp, a2
	-[0x800004e4]:sd s8, 80(tp)
Current Store : [0x800004e8] : sd gp, 88(tp) -- Store: [0x80003268]:0x00000004FDFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x24', 'rd : x30', 'rs2_h3_val == -4097', 'rs2_h1_val == -33', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000514]:KMMAWT_U t5, zero, s8
	-[0x80000518]:sd t5, 96(tp)
Current Store : [0x8000051c] : sd zero, 104(tp) -- Store: [0x80003278]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x3', 'rs2_h3_val == -2049', 'rs2_h1_val == -1', 'rs1_w1_val == -2049', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000548]:KMMAWT_U gp, t0, a7
	-[0x8000054c]:sd gp, 112(tp)
Current Store : [0x80000550] : sd t0, 120(tp) -- Store: [0x80003288]:0xFFFFF7FFFFFDFFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x7', 'rs2_h3_val == -1025', 'rs2_h2_val == -21846', 'rs2_h1_val == 16384', 'rs2_h0_val == -32768', 'rs1_w1_val == 16', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000574]:KMMAWT_U t2, s1, s9
	-[0x80000578]:sd t2, 128(tp)
Current Store : [0x8000057c] : sd s1, 136(tp) -- Store: [0x80003298]:0x0000001000000008




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x21', 'rs2_h3_val == -513', 'rs2_h0_val == -2049', 'rs1_w1_val == 4194304', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800005a8]:KMMAWT_U s5, a0, t5
	-[0x800005ac]:sd s5, 144(tp)
Current Store : [0x800005b0] : sd a0, 152(tp) -- Store: [0x800032a8]:0x00400000FFFFFEFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x14', 'rd : x0', 'rs2_h3_val == -257', 'rs2_h0_val == 8192', 'rs1_w1_val == 2', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800005d4]:KMMAWT_U zero, s2, a4
	-[0x800005d8]:sd zero, 160(tp)
Current Store : [0x800005dc] : sd s2, 168(tp) -- Store: [0x800032b8]:0x0000000200200000




Last Coverpoint : ['rs1 : x28', 'rs2 : x21', 'rd : x29', 'rs2_h3_val == -129', 'rs2_h1_val == -17', 'rs2_h0_val == 32', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000604]:KMMAWT_U t4, t3, s5
	-[0x80000608]:sd t4, 176(tp)
Current Store : [0x8000060c] : sd t3, 184(tp) -- Store: [0x800032c8]:0x8000000000000010




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rd : x1', 'rs2_h3_val == -65', 'rs2_h2_val == -16385', 'rs2_h1_val == 32', 'rs2_h0_val == 2048', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000634]:KMMAWT_U ra, s9, t4
	-[0x80000638]:sd ra, 192(tp)
Current Store : [0x8000063c] : sd s9, 200(tp) -- Store: [0x800032d8]:0x4000000000000400




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x27', 'rs2_h3_val == -17', 'rs2_h2_val == -1025', 'rs2_h1_val == -4097', 'rs2_h0_val == -129', 'rs1_w1_val == -9', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000658]:KMMAWT_U s11, s7, t3
	-[0x8000065c]:sd s11, 208(tp)
Current Store : [0x80000660] : sd s7, 216(tp) -- Store: [0x800032e8]:0xFFFFFFF708000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x3', 'rd : x25', 'rs2_h3_val == -9', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000680]:KMMAWT_U s9, s11, gp
	-[0x80000684]:sd s9, 224(tp)
Current Store : [0x80000688] : sd s11, 232(tp) -- Store: [0x800032f8]:0x0000040000000008




Last Coverpoint : ['rs1 : x24', 'rs2 : x11', 'rd : x10', 'rs2_h3_val == -5', 'rs2_h2_val == 2048', 'rs2_h0_val == 21845', 'rs1_w1_val == 256', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800006b0]:KMMAWT_U a0, s8, a1
	-[0x800006b4]:sd a0, 240(tp)
Current Store : [0x800006b8] : sd s8, 248(tp) -- Store: [0x80003308]:0x00000100FFFFFBFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x9', 'rs2_h3_val == -3', 'rs2_h0_val == 2', 'rs1_w1_val == 8', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800006ec]:KMMAWT_U s1, a1, s3
	-[0x800006f0]:sd s1, 0(gp)
Current Store : [0x800006f4] : sd a1, 8(gp) -- Store: [0x80003318]:0x00000008FFDFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x5', 'rd : x11', 'rs2_h3_val == -2', 'rs2_h1_val == 256', 'rs1_w1_val == -513', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000718]:KMMAWT_U a1, s3, t0
	-[0x8000071c]:sd a1, 16(gp)
Current Store : [0x80000720] : sd s3, 24(gp) -- Store: [0x80003328]:0xFFFFFDFF00000800




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x23', 'rs2_h3_val == -32768', 'rs2_h2_val == 1024', 'rs1_w1_val == -8193', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000754]:KMMAWT_U s7, s4, sp
	-[0x80000758]:sd s7, 32(gp)
Current Store : [0x8000075c] : sd s4, 40(gp) -- Store: [0x80003338]:0xFFFFDFFFFEFFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x4', 'rd : x28', 'rs2_h3_val == 16384', 'rs1_w1_val == -4097', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000784]:KMMAWT_U t3, t4, tp
	-[0x80000788]:sd t3, 48(gp)
Current Store : [0x8000078c] : sd t4, 56(gp) -- Store: [0x80003348]:0xFFFFEFFF00800000




Last Coverpoint : ['rs1 : x4', 'rs2 : x8', 'rd : x22', 'rs2_h3_val == 8192', 'rs2_h1_val == 32767', 'rs2_h0_val == -9', 'rs1_w1_val == -2097153', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800007b4]:KMMAWT_U s6, tp, fp
	-[0x800007b8]:sd s6, 64(gp)
Current Store : [0x800007bc] : sd tp, 72(gp) -- Store: [0x80003358]:0xFFDFFFFF00040000




Last Coverpoint : ['rs1 : x14', 'rs2 : x27', 'rd : x2', 'rs2_h3_val == 4096', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800007e4]:KMMAWT_U sp, a4, s11
	-[0x800007e8]:sd sp, 80(gp)
Current Store : [0x800007ec] : sd a4, 88(gp) -- Store: [0x80003368]:0xBFFFFFFFFFF7FFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x18', 'rd : x20', 'rs2_h3_val == 2048', 'rs2_h2_val == -8193', 'rs2_h1_val == 16', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000814]:KMMAWT_U s4, t1, s2
	-[0x80000818]:sd s4, 96(gp)
Current Store : [0x8000081c] : sd t1, 104(gp) -- Store: [0x80003378]:0x0000008000000007




Last Coverpoint : ['rs1 : x21', 'rs2 : x23', 'rd : x14', 'rs2_h3_val == 1024', 'rs2_h0_val == 1', 'rs1_w1_val == -1', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000840]:KMMAWT_U a4, s5, s7
	-[0x80000844]:sd a4, 112(gp)
Current Store : [0x80000848] : sd s5, 120(gp) -- Store: [0x80003388]:0xFFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x17', 'rs2_h3_val == 512', 'rs2_h2_val == -32768', 'rs2_h1_val == 4', 'rs2_h0_val == 4096', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000086c]:KMMAWT_U a7, a3, s1
	-[0x80000870]:sd a7, 128(gp)
Current Store : [0x80000874] : sd a3, 136(gp) -- Store: [0x80003398]:0x00000010FFBFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x12', 'rs2_h3_val == 256', 'rs2_h2_val == 32', 'rs2_h1_val == -8193', 'rs2_h0_val == -4097', 'rs1_w1_val == 512', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000089c]:KMMAWT_U a2, a7, a0
	-[0x800008a0]:sd a2, 144(gp)
Current Store : [0x800008a4] : sd a7, 152(gp) -- Store: [0x800033a8]:0x00000200FFFFFDFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x26', 'rs2_h3_val == 128', 'rs2_h2_val == -257', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800008cc]:KMMAWT_U s10, t5, t2
	-[0x800008d0]:sd s10, 160(gp)
Current Store : [0x800008d4] : sd t5, 168(gp) -- Store: [0x800033b8]:0x00000006FFFFFFF7




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x13', 'rs2_h3_val == 64', 'rs2_h2_val == -2', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x800008f8]:KMMAWT_U a3, ra, t6
	-[0x800008fc]:sd a3, 176(gp)
Current Store : [0x80000900] : sd ra, 184(gp) -- Store: [0x800033c8]:0xFFFFFF7F00000010




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x18', 'rs2_h3_val == 32', 'rs2_h2_val == 256', 'rs2_h1_val == 128', 'rs2_h0_val == -16385', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80000928]:KMMAWT_U s2, a2, s10
	-[0x8000092c]:sd s2, 192(gp)
Current Store : [0x80000930] : sd a2, 200(gp) -- Store: [0x800033d8]:0xFFFFFFDF00040000




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x16', 'rs2_h3_val == 16', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000958]:KMMAWT_U a6, fp, s6
	-[0x8000095c]:sd a6, 208(gp)
Current Store : [0x80000960] : sd fp, 216(gp) -- Store: [0x800033e8]:0xFFFFFFBFFFBFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x4', 'rs2_h3_val == 8', 'rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80000998]:KMMAWT_U tp, t2, a3
	-[0x8000099c]:sd tp, 0(ra)
Current Store : [0x800009a0] : sd t2, 8(ra) -- Store: [0x800033f8]:0xC0000000FFBFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rd : x5', 'rs2_h3_val == 4', 'rs2_h2_val == 16384', 'rs2_h1_val == -2049', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800009c4]:KMMAWT_U t0, s10, s4
	-[0x800009c8]:sd t0, 16(ra)
Current Store : [0x800009cc] : sd s10, 24(ra) -- Store: [0x80003408]:0xFFFFEFFF00008000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -3', 'rs2_h0_val == 512', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800009f4]:KMMAWT_U t6, t5, t4
	-[0x800009f8]:sd t6, 32(ra)
Current Store : [0x800009fc] : sd t5, 40(ra) -- Store: [0x80003418]:0x0000000800000100




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000a24]:KMMAWT_U t6, t5, t4
	-[0x80000a28]:sd t6, 48(ra)
Current Store : [0x80000a2c] : sd t5, 56(ra) -- Store: [0x80003428]:0xC0000000FEFFFFFF




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == -65', 'rs1_w1_val == 262144', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a58]:KMMAWT_U t6, t5, t4
	-[0x80000a5c]:sd t6, 64(ra)
Current Store : [0x80000a60] : sd t5, 72(ra) -- Store: [0x80003438]:0x0004000055555555




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 512', 'rs1_w1_val == 524288', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000a8c]:KMMAWT_U t6, t5, t4
	-[0x80000a90]:sd t6, 80(ra)
Current Store : [0x80000a94] : sd t5, 88(ra) -- Store: [0x80003448]:0x00080000FFFBFFFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000abc]:KMMAWT_U t6, t5, t4
	-[0x80000ac0]:sd t6, 96(ra)
Current Store : [0x80000ac4] : sd t5, 104(ra) -- Store: [0x80003458]:0x0008000000000100




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h1_val == -513', 'rs1_w1_val == 131072', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000aec]:KMMAWT_U t6, t5, t4
	-[0x80000af0]:sd t6, 112(ra)
Current Store : [0x80000af4] : sd t5, 120(ra) -- Store: [0x80003468]:0x00020000FFFFFFBF




Last Coverpoint : ['rs2_h2_val == -513', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000b18]:KMMAWT_U t6, t5, t4
	-[0x80000b1c]:sd t6, 128(ra)
Current Store : [0x80000b20] : sd t5, 136(ra) -- Store: [0x80003478]:0xFFFFFFFBFFFFFFFA




Last Coverpoint : ['rs2_h1_val == 1024', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000b44]:KMMAWT_U t6, t5, t4
	-[0x80000b48]:sd t6, 144(ra)
Current Store : [0x80000b4c] : sd t5, 152(ra) -- Store: [0x80003488]:0x0000000300100000




Last Coverpoint : ['rs2_h3_val == 32767', 'rs1_w1_val == 8192', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b74]:KMMAWT_U t6, t5, t4
	-[0x80000b78]:sd t6, 160(ra)
Current Store : [0x80000b7c] : sd t5, 168(ra) -- Store: [0x80003498]:0x0000200000080000




Last Coverpoint : ['rs1_w1_val == 2048', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000ba4]:KMMAWT_U t6, t5, t4
	-[0x80000ba8]:sd t6, 176(ra)
Current Store : [0x80000bac] : sd t5, 184(ra) -- Store: [0x800034a8]:0x0000080000020000




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == -134217729', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000bdc]:KMMAWT_U t6, t5, t4
	-[0x80000be0]:sd t6, 192(ra)
Current Store : [0x80000be4] : sd t5, 200(ra) -- Store: [0x800034b8]:0xF7FFFFFF00010000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c08]:KMMAWT_U t6, t5, t4
	-[0x80000c0c]:sd t6, 208(ra)
Current Store : [0x80000c10] : sd t5, 216(ra) -- Store: [0x800034c8]:0xFFFFFFFA00004000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c38]:KMMAWT_U t6, t5, t4
	-[0x80000c3c]:sd t6, 224(ra)
Current Store : [0x80000c40] : sd t5, 232(ra) -- Store: [0x800034d8]:0x0000000200002000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000c5c]:KMMAWT_U t6, t5, t4
	-[0x80000c60]:sd t6, 240(ra)
Current Store : [0x80000c64] : sd t5, 248(ra) -- Store: [0x800034e8]:0x0000000400001000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c88]:KMMAWT_U t6, t5, t4
	-[0x80000c8c]:sd t6, 256(ra)
Current Store : [0x80000c90] : sd t5, 264(ra) -- Store: [0x800034f8]:0xFFFFFFF700000200




Last Coverpoint : ['rs2_h2_val == 8192', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000cb8]:KMMAWT_U t6, t5, t4
	-[0x80000cbc]:sd t6, 272(ra)
Current Store : [0x80000cc0] : sd t5, 280(ra) -- Store: [0x80003508]:0xFFFFFFF800000080




Last Coverpoint : ['rs2_h1_val == -2', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000ce8]:KMMAWT_U t6, t5, t4
	-[0x80000cec]:sd t6, 288(ra)
Current Store : [0x80000cf0] : sd t5, 296(ra) -- Store: [0x80003518]:0xFFFFFFFA00000040




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d18]:KMMAWT_U t6, t5, t4
	-[0x80000d1c]:sd t6, 304(ra)
Current Store : [0x80000d20] : sd t5, 312(ra) -- Store: [0x80003528]:0x4000000000000020




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d44]:KMMAWT_U t6, t5, t4
	-[0x80000d48]:sd t6, 320(ra)
Current Store : [0x80000d4c] : sd t5, 328(ra) -- Store: [0x80003538]:0xFFFFDFFF00000004




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_w1_val == 33554432', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d6c]:KMMAWT_U t6, t5, t4
	-[0x80000d70]:sd t6, 336(ra)
Current Store : [0x80000d74] : sd t5, 344(ra) -- Store: [0x80003548]:0x0200000000000002




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000d9c]:KMMAWT_U t6, t5, t4
	-[0x80000da0]:sd t6, 352(ra)
Current Store : [0x80000da4] : sd t5, 360(ra) -- Store: [0x80003558]:0x3FFFFFFF00000001




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000dc4]:KMMAWT_U t6, t5, t4
	-[0x80000dc8]:sd t6, 368(ra)
Current Store : [0x80000dcc] : sd t5, 376(ra) -- Store: [0x80003568]:0x0080000000000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000df0]:KMMAWT_U t6, t5, t4
	-[0x80000df4]:sd t6, 384(ra)
Current Store : [0x80000df8] : sd t5, 392(ra) -- Store: [0x80003578]:0x40000000FFFFFFFF




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000e30]:KMMAWT_U t6, t5, t4
	-[0x80000e34]:sd t6, 400(ra)
Current Store : [0x80000e38] : sd t5, 408(ra) -- Store: [0x80003588]:0xFFF7FFFFFFFBFFFF




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h1_val == 21845', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80000e60]:KMMAWT_U t6, t5, t4
	-[0x80000e64]:sd t6, 416(ra)
Current Store : [0x80000e68] : sd t5, 424(ra) -- Store: [0x80003598]:0xFFFEFFFF00100000




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000e98]:KMMAWT_U t6, t5, t4
	-[0x80000e9c]:sd t6, 432(ra)
Current Store : [0x80000ea0] : sd t5, 440(ra) -- Store: [0x800035a8]:0xFEFFFFFFFFFF7FFF




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h0_val == -1025', 'rs1_w1_val == -268435457', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000ed0]:KMMAWT_U t6, t5, t4
	-[0x80000ed4]:sd t6, 448(ra)
Current Store : [0x80000ed8] : sd t5, 456(ra) -- Store: [0x800035b8]:0xEFFFFFFFDFFFFFFF




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000efc]:KMMAWT_U t6, t5, t4
	-[0x80000f00]:sd t6, 464(ra)
Current Store : [0x80000f04] : sd t5, 472(ra) -- Store: [0x800035c8]:0xFFFFFFF7FFFFDFFF




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x80000f20]:KMMAWT_U t6, t5, t4
	-[0x80000f24]:sd t6, 480(ra)
Current Store : [0x80000f28] : sd t5, 488(ra) -- Store: [0x800035d8]:0xFFFFFFFA00000007




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_w1_val == 2147483647', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000f58]:KMMAWT_U t6, t5, t4
	-[0x80000f5c]:sd t6, 496(ra)
Current Store : [0x80000f60] : sd t5, 504(ra) -- Store: [0x800035e8]:0x7FFFFFFFFFFFF7FF




Last Coverpoint : ['rs2_h2_val == 16']
Last Code Sequence : 
	-[0x80000f88]:KMMAWT_U t6, t5, t4
	-[0x80000f8c]:sd t6, 512(ra)
Current Store : [0x80000f90] : sd t5, 520(ra) -- Store: [0x800035f8]:0xFFFFFFBF00004000




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h0_val == 16384', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000fbc]:KMMAWT_U t6, t5, t4
	-[0x80000fc0]:sd t6, 528(ra)
Current Store : [0x80000fc4] : sd t5, 536(ra) -- Store: [0x80003608]:0x00200000FFBFFFFF




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -21846', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000fec]:KMMAWT_U t6, t5, t4
	-[0x80000ff0]:sd t6, 544(ra)
Current Store : [0x80000ff4] : sd t5, 552(ra) -- Store: [0x80003618]:0xFFBFFFFFFFFFFEFF




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80001014]:KMMAWT_U t6, t5, t4
	-[0x80001018]:sd t6, 560(ra)
Current Store : [0x8000101c] : sd t5, 568(ra) -- Store: [0x80003628]:0xFFFFFFFE00100000




Last Coverpoint : ['rs2_h2_val == -1']
Last Code Sequence : 
	-[0x8000103c]:KMMAWT_U t6, t5, t4
	-[0x80001040]:sd t6, 576(ra)
Current Store : [0x80001044] : sd t5, 584(ra) -- Store: [0x80003638]:0xFFFFFFFA08000000




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001068]:KMMAWT_U t6, t5, t4
	-[0x8000106c]:sd t6, 592(ra)
Current Store : [0x80001070] : sd t5, 600(ra) -- Store: [0x80003648]:0xFFFFFFBFFFFFFFDF




Last Coverpoint : ['rs2_h1_val == -257', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800010a0]:KMMAWT_U t6, t5, t4
	-[0x800010a4]:sd t6, 608(ra)
Current Store : [0x800010a8] : sd t5, 616(ra) -- Store: [0x80003658]:0x7FFFFFFFBFFFFFFF




Last Coverpoint : ['rs2_h1_val == -3', 'rs2_h0_val == -33', 'rs1_w1_val == -536870913', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800010d8]:KMMAWT_U t6, t5, t4
	-[0x800010dc]:sd t6, 624(ra)
Current Store : [0x800010e0] : sd t5, 632(ra) -- Store: [0x80003668]:0xDFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80001108]:KMMAWT_U t6, t5, t4
	-[0x8000110c]:sd t6, 640(ra)
Current Store : [0x80001110] : sd t5, 648(ra) -- Store: [0x80003678]:0x0000000308000000




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001144]:KMMAWT_U t6, t5, t4
	-[0x80001148]:sd t6, 656(ra)
Current Store : [0x8000114c] : sd t5, 664(ra) -- Store: [0x80003688]:0x00020000FFFFFFBF




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000116c]:KMMAWT_U t6, t5, t4
	-[0x80001170]:sd t6, 672(ra)
Current Store : [0x80001174] : sd t5, 680(ra) -- Store: [0x80003698]:0xFFFFFFFF00000004




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800011a0]:KMMAWT_U t6, t5, t4
	-[0x800011a4]:sd t6, 688(ra)
Current Store : [0x800011a8] : sd t5, 696(ra) -- Store: [0x800036a8]:0xFEFFFFFFBFFFFFFF




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w1_val == -17', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800011d0]:KMMAWT_U t6, t5, t4
	-[0x800011d4]:sd t6, 704(ra)
Current Store : [0x800011d8] : sd t5, 712(ra) -- Store: [0x800036b8]:0xFFFFFFEF01000000




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800011f8]:KMMAWT_U t6, t5, t4
	-[0x800011fc]:sd t6, 720(ra)
Current Store : [0x80001200] : sd t5, 728(ra) -- Store: [0x800036c8]:0xFFFFFFFFFFFFFFF9




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x8000122c]:KMMAWT_U t6, t5, t4
	-[0x80001230]:sd t6, 736(ra)
Current Store : [0x80001234] : sd t5, 744(ra) -- Store: [0x800036d8]:0xAAAAAAAA00000008




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000125c]:KMMAWT_U t6, t5, t4
	-[0x80001260]:sd t6, 752(ra)
Current Store : [0x80001264] : sd t5, 760(ra) -- Store: [0x800036e8]:0xFBFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80001290]:KMMAWT_U t6, t5, t4
	-[0x80001294]:sd t6, 768(ra)
Current Store : [0x80001298] : sd t5, 776(ra) -- Store: [0x800036f8]:0xFDFFFFFF00000200




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800012c4]:KMMAWT_U t6, t5, t4
	-[0x800012c8]:sd t6, 784(ra)
Current Store : [0x800012cc] : sd t5, 792(ra) -- Store: [0x80003708]:0xFF7FFFFF00000008




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800012f4]:KMMAWT_U t6, t5, t4
	-[0x800012f8]:sd t6, 800(ra)
Current Store : [0x800012fc] : sd t5, 808(ra) -- Store: [0x80003718]:0xFFEFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80001324]:KMMAWT_U t6, t5, t4
	-[0x80001328]:sd t6, 816(ra)
Current Store : [0x8000132c] : sd t5, 824(ra) -- Store: [0x80003728]:0xFFFBFFFF40000000




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001364]:KMMAWT_U t6, t5, t4
	-[0x80001368]:sd t6, 832(ra)
Current Store : [0x8000136c] : sd t5, 840(ra) -- Store: [0x80003738]:0xFFFDFFFFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80001398]:KMMAWT_U t6, t5, t4
	-[0x8000139c]:sd t6, 848(ra)
Current Store : [0x800013a0] : sd t5, 856(ra) -- Store: [0x80003748]:0xFFFF7FFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800013c8]:KMMAWT_U t6, t5, t4
	-[0x800013cc]:sd t6, 864(ra)
Current Store : [0x800013d0] : sd t5, 872(ra) -- Store: [0x80003758]:0xFFFFFBFFFFFFFFF7




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x800013fc]:KMMAWT_U t6, t5, t4
	-[0x80001400]:sd t6, 880(ra)
Current Store : [0x80001404] : sd t5, 888(ra) -- Store: [0x80003768]:0xFFFFFEFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x8000142c]:KMMAWT_U t6, t5, t4
	-[0x80001430]:sd t6, 896(ra)
Current Store : [0x80001434] : sd t5, 904(ra) -- Store: [0x80003778]:0xFFFFFFFDBFFFFFFF




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000145c]:KMMAWT_U t6, t5, t4
	-[0x80001460]:sd t6, 912(ra)
Current Store : [0x80001464] : sd t5, 920(ra) -- Store: [0x80003788]:0x2000000000000080




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001484]:KMMAWT_U t6, t5, t4
	-[0x80001488]:sd t6, 928(ra)
Current Store : [0x8000148c] : sd t5, 936(ra) -- Store: [0x80003798]:0x1000000000000000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x800014b4]:KMMAWT_U t6, t5, t4
	-[0x800014b8]:sd t6, 944(ra)
Current Store : [0x800014bc] : sd t5, 952(ra) -- Store: [0x800037a8]:0x0800000000000001




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800014e0]:KMMAWT_U t6, t5, t4
	-[0x800014e4]:sd t6, 960(ra)
Current Store : [0x800014e8] : sd t5, 968(ra) -- Store: [0x800037b8]:0x0100000000100000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80001518]:KMMAWT_U t6, t5, t4
	-[0x8000151c]:sd t6, 976(ra)
Current Store : [0x80001520] : sd t5, 984(ra) -- Store: [0x800037c8]:0x0010000000000800




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001544]:KMMAWT_U t6, t5, t4
	-[0x80001548]:sd t6, 992(ra)
Current Store : [0x8000154c] : sd t5, 1000(ra) -- Store: [0x800037d8]:0x0001000000100000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w1_val == 32768', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001574]:KMMAWT_U t6, t5, t4
	-[0x80001578]:sd t6, 1008(ra)
Current Store : [0x8000157c] : sd t5, 1016(ra) -- Store: [0x800037e8]:0x0000800000400000




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800015a8]:KMMAWT_U t6, t5, t4
	-[0x800015ac]:sd t6, 1024(ra)
Current Store : [0x800015b0] : sd t5, 1032(ra) -- Store: [0x800037f8]:0x00004000FFFFFFDF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800015d8]:KMMAWT_U t6, t5, t4
	-[0x800015dc]:sd t6, 1040(ra)
Current Store : [0x800015e0] : sd t5, 1048(ra) -- Store: [0x80003808]:0x00001000FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001608]:KMMAWT_U t6, t5, t4
	-[0x8000160c]:sd t6, 1056(ra)
Current Store : [0x80001610] : sd t5, 1064(ra) -- Store: [0x80003818]:0x00000040FFFFFFF9




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x8000163c]:KMMAWT_U t6, t5, t4
	-[0x80001640]:sd t6, 1072(ra)
Current Store : [0x80001644] : sd t5, 1080(ra) -- Store: [0x80003828]:0x00000020FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001668]:KMMAWT_U t6, t5, t4
	-[0x8000166c]:sd t6, 1088(ra)
Current Store : [0x80001670] : sd t5, 1096(ra) -- Store: [0x80003838]:0x00000001FFBFFFFF




Last Coverpoint : ['opcode : kmmawt.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 16384', 'rs2_h2_val == 16', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80001698]:KMMAWT_U t6, t5, t4
	-[0x8000169c]:sd t6, 1104(ra)
Current Store : [0x800016a0] : sd t5, 1112(ra) -- Store: [0x80003848]:0x00000000FFFFFFF8




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800016cc]:KMMAWT_U t6, t5, t4
	-[0x800016d0]:sd t6, 1120(ra)
Current Store : [0x800016d4] : sd t5, 1128(ra) -- Store: [0x80003858]:0xFFF7FFFFEFFFFFFF




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800016f4]:KMMAWT_U t6, t5, t4
	-[0x800016f8]:sd t6, 1136(ra)
Current Store : [0x800016fc] : sd t5, 1144(ra) -- Store: [0x80003868]:0xFFFFFFF7EFFFFFFF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001728]:KMMAWT_U t6, t5, t4
	-[0x8000172c]:sd t6, 1152(ra)
Current Store : [0x80001730] : sd t5, 1160(ra) -- Store: [0x80003878]:0xFFFFFF7FF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000175c]:KMMAWT_U t6, t5, t4
	-[0x80001760]:sd t6, 1168(ra)
Current Store : [0x80001764] : sd t5, 1176(ra) -- Store: [0x80003888]:0xFFFFFFBFFBFFFFFF




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001790]:KMMAWT_U t6, t5, t4
	-[0x80001794]:sd t6, 1184(ra)
Current Store : [0x80001798] : sd t5, 1192(ra) -- Store: [0x80003898]:0x0000008000000800




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800017c0]:KMMAWT_U t6, t5, t4
	-[0x800017c4]:sd t6, 1200(ra)
Current Store : [0x800017c8] : sd t5, 1208(ra) -- Store: [0x800038a8]:0x0080000000000400




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800017f4]:KMMAWT_U t6, t5, t4
	-[0x800017f8]:sd t6, 1216(ra)
Current Store : [0x800017fc] : sd t5, 1224(ra) -- Store: [0x800038b8]:0x00000200FFFEFFFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001828]:KMMAWT_U t6, t5, t4
	-[0x8000182c]:sd t6, 1232(ra)
Current Store : [0x80001830] : sd t5, 1240(ra) -- Store: [0x800038c8]:0x00000002FFFFBFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001860]:KMMAWT_U t6, t5, t4
	-[0x80001864]:sd t6, 1248(ra)
Current Store : [0x80001868] : sd t5, 1256(ra) -- Store: [0x800038d8]:0xFFFEFFFFFFFFEFFF




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001898]:KMMAWT_U t6, t5, t4
	-[0x8000189c]:sd t6, 1264(ra)
Current Store : [0x800018a0] : sd t5, 1272(ra) -- Store: [0x800038e8]:0xEFFFFFFF00002000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800018cc]:KMMAWT_U t6, t5, t4
	-[0x800018d0]:sd t6, 1280(ra)
Current Store : [0x800018d4] : sd t5, 1288(ra) -- Store: [0x800038f8]:0x00004000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001900]:KMMAWT_U t6, t5, t4
	-[0x80001904]:sd t6, 1296(ra)
Current Store : [0x80001908] : sd t5, 1304(ra) -- Store: [0x80003908]:0x02000000FFFFFFEF




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001934]:KMMAWT_U t6, t5, t4
	-[0x80001938]:sd t6, 1312(ra)
Current Store : [0x8000193c] : sd t5, 1320(ra) -- Store: [0x80003918]:0x00200000FFFFFFFB




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x8000195c]:KMMAWT_U t6, t5, t4
	-[0x80001960]:sd t6, 1328(ra)
Current Store : [0x80001964] : sd t5, 1336(ra) -- Store: [0x80003928]:0xFFFFFFF900010000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x8000198c]:KMMAWT_U t6, t5, t4
	-[0x80001990]:sd t6, 1344(ra)
Current Store : [0x80001994] : sd t5, 1352(ra) -- Store: [0x80003938]:0x10000000FFFFFFFD




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800019b8]:KMMAWT_U t6, t5, t4
	-[0x800019bc]:sd t6, 1360(ra)
Current Store : [0x800019c0] : sd t5, 1368(ra) -- Store: [0x80003948]:0xFFFFFFF7FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800019e8]:KMMAWT_U t6, t5, t4
	-[0x800019ec]:sd t6, 1376(ra)
Current Store : [0x800019f0] : sd t5, 1384(ra) -- Store: [0x80003958]:0x0400000020000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a14]:KMMAWT_U t6, t5, t4
	-[0x80001a18]:sd t6, 1392(ra)
Current Store : [0x80001a1c] : sd t5, 1400(ra) -- Store: [0x80003968]:0xFFFEFFFF10000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001a44]:KMMAWT_U t6, t5, t4
	-[0x80001a48]:sd t6, 1408(ra)
Current Store : [0x80001a4c] : sd t5, 1416(ra) -- Store: [0x80003978]:0x0000010002000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001a78]:KMMAWT_U t6, t5, t4
	-[0x80001a7c]:sd t6, 1424(ra)
Current Store : [0x80001a80] : sd t5, 1432(ra) -- Store: [0x80003988]:0xFFFEFFFFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001aa8]:KMMAWT_U t6, t5, t4
	-[0x80001aac]:sd t6, 1440(ra)
Current Store : [0x80001ab0] : sd t5, 1448(ra) -- Store: [0x80003998]:0x3FFFFFFF80000000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001aec]:KMMAWT_U t6, t5, t4
	-[0x80001af0]:sd t6, 1456(ra)
Current Store : [0x80001af4] : sd t5, 1464(ra) -- Store: [0x800039a8]:0x5555555555555555




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x80001b1c]:KMMAWT_U t6, t5, t4
	-[0x80001b20]:sd t6, 1472(ra)
Current Store : [0x80001b24] : sd t5, 1480(ra) -- Store: [0x800039b8]:0xFFFFBFFF04000000




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001b50]:KMMAWT_U t6, t5, t4
	-[0x80001b54]:sd t6, 1488(ra)
Current Store : [0x80001b58] : sd t5, 1496(ra) -- Store: [0x800039c8]:0x00000200AAAAAAAA




Last Coverpoint : ['opcode : kmmawt.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -257', 'rs2_h1_val == 64', 'rs2_h0_val == 8192', 'rs1_w1_val == 2', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001b7c]:KMMAWT_U t6, t5, t4
	-[0x80001b80]:sd t6, 1504(ra)
Current Store : [0x80001b84] : sd t5, 1512(ra) -- Store: [0x800039d8]:0x0000000200200000





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

|s.no|            signature             |                                                                                                     coverpoints                                                                                                     |                                  code                                   |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x5BFDDF9D6BFE5B7A|- opcode : kmmawt.u<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -33<br> - rs2_h2_val == -17<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16<br>                       |[0x800003c8]:KMMAWT_U fp, a6, a6<br> [0x800003cc]:sd fp, 0(tp)<br>       |
|   2|[0x80003220]<br>0xC71C38E600410F3F|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 64<br> - rs2_h0_val == -257<br>                                                                     |[0x8000040c]:KMMAWT_U a5, a5, a5<br> [0x80000410]:sd a5, 16(tp)<br>      |
|   3|[0x80003230]<br>0x6FAB7FBD6FAB7FBB|- rs1 : x22<br> - rs2 : x1<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 8<br> - rs2_h0_val == -21846<br>                                               |[0x8000043c]:KMMAWT_U s3, s6, ra<br> [0x80000440]:sd s3, 32(tp)<br>      |
|   4|[0x80003240]<br>0xFFFFBFFF04000000|- rs1 : x31<br> - rs2 : x0<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 67108864<br> |[0x8000046c]:KMMAWT_U t6, t6, zero<br> [0x80000470]:sd t6, 48(tp)<br>    |
|   5|[0x80003250]<br>0xBEFF7BFFFFF70008|- rs1 : x2<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -9<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -32769<br>               |[0x800004a8]:KMMAWT_U t1, sp, t1<br> [0x800004ac]:sd t1, 64(tp)<br>      |
|   6|[0x80003260]<br>0xDB7D5BFCDB3D5BFD|- rs1 : x3<br> - rs2 : x12<br> - rd : x24<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -2049<br> - rs2_h1_val == 8192<br> - rs1_w1_val == 4<br> - rs1_w0_val == -33554433<br>                                       |[0x800004e0]:KMMAWT_U s8, gp, a2<br> [0x800004e4]:sd s8, 80(tp)<br>      |
|   7|[0x80003270]<br>0xF76DF56FF76DF56F|- rs1 : x0<br> - rs2 : x24<br> - rd : x30<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -33<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                          |[0x80000514]:KMMAWT_U t5, zero, s8<br> [0x80000518]:sd t5, 96(tp)<br>    |
|   8|[0x80003280]<br>0x00000044FE000001|- rs1 : x5<br> - rs2 : x17<br> - rd : x3<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -1<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -131073<br>                                                                  |[0x80000548]:KMMAWT_U gp, t0, a7<br> [0x8000054c]:sd gp, 112(tp)<br>     |
|   9|[0x80003290]<br>0xB7FBB6FAB7FBB6FC|- rs1 : x9<br> - rs2 : x25<br> - rd : x7<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -32768<br> - rs1_w1_val == 16<br> - rs1_w0_val == 8<br>                  |[0x80000574]:KMMAWT_U t2, s1, s9<br> [0x80000578]:sd t2, 128(tp)<br>     |
|  10|[0x800032a0]<br>0xDBEA5FAEDBEADFEE|- rs1 : x10<br> - rs2 : x30<br> - rd : x21<br> - rs2_h3_val == -513<br> - rs2_h0_val == -2049<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -257<br>                                                               |[0x800005a8]:KMMAWT_U s5, a0, t5<br> [0x800005ac]:sd s5, 144(tp)<br>     |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x14<br> - rd : x0<br> - rs2_h3_val == -257<br> - rs2_h0_val == 8192<br> - rs1_w1_val == 2<br> - rs1_w0_val == 2097152<br>                                                                    |[0x800005d4]:KMMAWT_U zero, s2, a4<br> [0x800005d8]:sd zero, 160(tp)<br> |
|  12|[0x800032c0]<br>0xEF1C6ADFEEDBEADF|- rs1 : x28<br> - rs2 : x21<br> - rd : x29<br> - rs2_h3_val == -129<br> - rs2_h1_val == -17<br> - rs2_h0_val == 32<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 16<br>                                        |[0x80000604]:KMMAWT_U t4, t3, s5<br> [0x80000608]:sd t4, 176(tp)<br>     |
|  13|[0x800032d0]<br>0x5544C008FFFCAAAB|- rs1 : x25<br> - rs2 : x29<br> - rd : x1<br> - rs2_h3_val == -65<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2048<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 1024<br>             |[0x80000634]:KMMAWT_U ra, s9, t4<br> [0x80000638]:sd ra, 192(tp)<br>     |
|  14|[0x800032e0]<br>0xBB6FAB7FBAEFA37F|- rs1 : x23<br> - rs2 : x28<br> - rd : x27<br> - rs2_h3_val == -17<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -129<br> - rs1_w1_val == -9<br> - rs1_w0_val == 134217728<br>             |[0x80000658]:KMMAWT_U s11, s7, t3<br> [0x8000065c]:sd s11, 208(tp)<br>   |
|  15|[0x800032f0]<br>0x4000000000000400|- rs1 : x27<br> - rs2 : x3<br> - rd : x25<br> - rs2_h3_val == -9<br> - rs1_w1_val == 1024<br>                                                                                                                        |[0x80000680]:KMMAWT_U s9, s11, gp<br> [0x80000684]:sd s9, 224(tp)<br>    |
|  16|[0x80003300]<br>0x00400000FFFFFEFF|- rs1 : x24<br> - rs2 : x11<br> - rd : x10<br> - rs2_h3_val == -5<br> - rs2_h2_val == 2048<br> - rs2_h0_val == 21845<br> - rs1_w1_val == 256<br> - rs1_w0_val == -1025<br>                                           |[0x800006b0]:KMMAWT_U a0, s8, a1<br> [0x800006b4]:sd a0, 240(tp)<br>     |
|  17|[0x80003310]<br>0x00000010FFFFFF48|- rs1 : x11<br> - rs2 : x19<br> - rd : x9<br> - rs2_h3_val == -3<br> - rs2_h0_val == 2<br> - rs1_w1_val == 8<br> - rs1_w0_val == -2097153<br>                                                                        |[0x800006ec]:KMMAWT_U s1, a1, s3<br> [0x800006f0]:sd s1, 0(gp)<br>       |
|  18|[0x80003320]<br>0x00000008FFE00007|- rs1 : x19<br> - rs2 : x5<br> - rd : x11<br> - rs2_h3_val == -2<br> - rs2_h1_val == 256<br> - rs1_w1_val == -513<br> - rs1_w0_val == 2048<br>                                                                       |[0x80000718]:KMMAWT_U a1, s3, t0<br> [0x8000071c]:sd a1, 16(gp)<br>      |
|  19|[0x80003330]<br>0x00000FF808100100|- rs1 : x20<br> - rs2 : x2<br> - rd : x23<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 1024<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -16777217<br>                                                            |[0x80000754]:KMMAWT_U s7, s4, sp<br> [0x80000758]:sd s7, 32(gp)<br>      |
|  20|[0x80003340]<br>0xFFEFF7FFEFFFFD7F|- rs1 : x29<br> - rs2 : x4<br> - rd : x28<br> - rs2_h3_val == 16384<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 8388608<br>                                                                                        |[0x80000784]:KMMAWT_U t3, t4, tp<br> [0x80000788]:sd t3, 48(gp)<br>      |
|  21|[0x80003350]<br>0xFFFC00050001FFF4|- rs1 : x4<br> - rs2 : x8<br> - rd : x22<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -9<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 262144<br>                                       |[0x800007b4]:KMMAWT_U s6, tp, fp<br> [0x800007b8]:sd s6, 64(gp)<br>      |
|  22|[0x80003360]<br>0x80000000EFFD0020|- rs1 : x14<br> - rs2 : x27<br> - rd : x2<br> - rs2_h3_val == 4096<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -524289<br>                                                                                   |[0x800007e4]:KMMAWT_U sp, a4, s11<br> [0x800007e8]:sd sp, 80(gp)<br>     |
|  23|[0x80003370]<br>0xFFFFE003FEFFFFFF|- rs1 : x6<br> - rs2 : x18<br> - rd : x20<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 16<br> - rs1_w1_val == 128<br>                                                                      |[0x80000814]:KMMAWT_U s4, t1, s2<br> [0x80000818]:sd s4, 96(gp)<br>      |
|  24|[0x80003380]<br>0xBFFFFFFFFFF9BFFF|- rs1 : x21<br> - rs2 : x23<br> - rd : x14<br> - rs2_h3_val == 1024<br> - rs2_h0_val == 1<br> - rs1_w1_val == -1<br> - rs1_w0_val == -1073741825<br>                                                                 |[0x80000840]:KMMAWT_U a4, s5, s7<br> [0x80000844]:sd a4, 112(gp)<br>     |
|  25|[0x80003390]<br>0xF7FFF7FFFFFF3EFF|- rs1 : x13<br> - rs2 : x9<br> - rd : x17<br> - rs2_h3_val == 512<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 4<br> - rs2_h0_val == 4096<br> - rs1_w0_val == -4194305<br>                                         |[0x8000086c]:KMMAWT_U a7, a3, s1<br> [0x80000870]:sd a7, 128(gp)<br>     |
|  26|[0x800033a0]<br>0xDFFFF80120010038|- rs1 : x17<br> - rs2 : x10<br> - rd : x12<br> - rs2_h3_val == 256<br> - rs2_h2_val == 32<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -4097<br> - rs1_w1_val == 512<br> - rs1_w0_val == -513<br>                   |[0x8000089c]:KMMAWT_U a2, a7, a0<br> [0x800008a0]:sd a2, 144(gp)<br>     |
|  27|[0x800033b0]<br>0x76DF56FF76DF56FB|- rs1 : x30<br> - rs2 : x7<br> - rd : x26<br> - rs2_h3_val == 128<br> - rs2_h2_val == -257<br> - rs1_w0_val == -9<br>                                                                                                |[0x800008cc]:KMMAWT_U s10, t5, t2<br> [0x800008d0]:sd s10, 160(gp)<br>   |
|  28|[0x800033c0]<br>0x00000010FFBFFFFD|- rs1 : x1<br> - rs2 : x31<br> - rd : x13<br> - rs2_h3_val == 64<br> - rs2_h2_val == -2<br> - rs1_w1_val == -129<br>                                                                                                 |[0x800008f8]:KMMAWT_U a3, ra, t6<br> [0x800008fc]:sd a3, 176(gp)<br>     |
|  29|[0x800033d0]<br>0x0800DFFF001101F6|- rs1 : x12<br> - rs2 : x26<br> - rd : x18<br> - rs2_h3_val == 32<br> - rs2_h2_val == 256<br> - rs2_h1_val == 128<br> - rs2_h0_val == -16385<br> - rs1_w1_val == -33<br>                                             |[0x80000928]:KMMAWT_U s2, a2, s10<br> [0x8000092c]:sd s2, 192(gp)<br>    |
|  30|[0x800033e0]<br>0xFFDFFFEFBFFF0210|- rs1 : x8<br> - rs2 : x22<br> - rd : x16<br> - rs2_h3_val == 16<br> - rs1_w1_val == -65<br>                                                                                                                         |[0x80000958]:KMMAWT_U a6, fp, s6<br> [0x8000095c]:sd a6, 208(gp)<br>     |
|  31|[0x800033f0]<br>0xFFDDFFFF00042040|- rs1 : x7<br> - rs2 : x13<br> - rd : x4<br> - rs2_h3_val == 8<br> - rs2_h1_val == -129<br>                                                                                                                          |[0x80000998]:KMMAWT_U tp, t2, a3<br> [0x8000099c]:sd tp, 0(ra)<br>       |
|  32|[0x80003400]<br>0xFFFEC00000FFFC06|- rs1 : x26<br> - rs2 : x20<br> - rd : x5<br> - rs2_h3_val == 4<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -2049<br> - rs1_w0_val == 32768<br>                                                                    |[0x800009c4]:KMMAWT_U t0, s10, s4<br> [0x800009c8]:sd t0, 16(ra)<br>     |
|  33|[0x80003410]<br>0x0040FFFEDFFF8000|- rs2_h3_val == 2<br> - rs2_h2_val == -3<br> - rs2_h0_val == 512<br> - rs1_w0_val == 256<br>                                                                                                                         |[0x800009f4]:KMMAWT_U t6, t5, t4<br> [0x800009f8]:sd t6, 32(ra)<br>      |
|  34|[0x80003420]<br>0x0040BFFEDFFFC100|- rs2_h3_val == 1<br> - rs2_h1_val == -65<br>                                                                                                                                                                        |[0x80000a24]:KMMAWT_U t6, t5, t4<br> [0x80000a28]:sd t6, 48(ra)<br>      |
|  35|[0x80003430]<br>0x0040BFFEE0011655|- rs2_h2_val == 1<br> - rs2_h0_val == -65<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 1431655765<br>                                                                                                              |[0x80000a58]:KMMAWT_U t6, t5, t4<br> [0x80000a5c]:sd t6, 64(ra)<br>      |
|  36|[0x80003440]<br>0x0040BFF6E0021659|- rs2_h3_val == -1<br> - rs2_h2_val == 512<br> - rs1_w1_val == 524288<br> - rs1_w0_val == -262145<br>                                                                                                                |[0x80000a8c]:KMMAWT_U t6, t5, t4<br> [0x80000a90]:sd t6, 80(ra)<br>      |
|  37|[0x80003450]<br>0x0040DFF6E0021659|- rs2_h2_val == 21845<br> - rs2_h1_val == 8<br>                                                                                                                                                                      |[0x80000abc]:KMMAWT_U t6, t5, t4<br> [0x80000ac0]:sd t6, 96(ra)<br>      |
|  38|[0x80003460]<br>0x0040DFFCE002165A|- rs2_h2_val == -4097<br> - rs2_h1_val == -513<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -65<br>                                                                                                                |[0x80000aec]:KMMAWT_U t6, t5, t4<br> [0x80000af0]:sd t6, 112(ra)<br>     |
|  39|[0x80003470]<br>0x0040DFFCE002165A|- rs2_h2_val == -513<br> - rs1_w1_val == -5<br>                                                                                                                                                                      |[0x80000b18]:KMMAWT_U t6, t5, t4<br> [0x80000b1c]:sd t6, 128(ra)<br>     |
|  40|[0x80003480]<br>0x0040DFFBE002565A|- rs2_h1_val == 1024<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                 |[0x80000b44]:KMMAWT_U t6, t5, t4<br> [0x80000b48]:sd t6, 144(ra)<br>     |
|  41|[0x80003490]<br>0x0040EFFBE00256A2|- rs2_h3_val == 32767<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 524288<br>                                                                                                                                        |[0x80000b74]:KMMAWT_U t6, t5, t4<br> [0x80000b78]:sd t6, 160(ra)<br>     |
|  42|[0x800034a0]<br>0x0040EFFBE00256A2|- rs1_w1_val == 2048<br> - rs1_w0_val == 131072<br>                                                                                                                                                                  |[0x80000ba4]:KMMAWT_U t6, t5, t4<br> [0x80000ba8]:sd t6, 176(ra)<br>     |
|  43|[0x800034b0]<br>0x0240F7FBE002569B|- rs2_h0_val == 256<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 65536<br>                                                                                                                                     |[0x80000bdc]:KMMAWT_U t6, t5, t4<br> [0x80000be0]:sd t6, 192(ra)<br>     |
|  44|[0x800034c0]<br>0x0240F7FBE00256AB|- rs1_w0_val == 16384<br>                                                                                                                                                                                            |[0x80000c08]:KMMAWT_U t6, t5, t4<br> [0x80000c0c]:sd t6, 208(ra)<br>     |
|  45|[0x800034d0]<br>0x0240F7FBE00256AB|- rs2_h1_val == 2<br> - rs1_w0_val == 8192<br>                                                                                                                                                                       |[0x80000c38]:KMMAWT_U t6, t5, t4<br> [0x80000c3c]:sd t6, 224(ra)<br>     |
|  46|[0x800034e0]<br>0x0240F7FBE00256B3|- rs1_w0_val == 4096<br>                                                                                                                                                                                             |[0x80000c5c]:KMMAWT_U t6, t5, t4<br> [0x80000c60]:sd t6, 240(ra)<br>     |
|  47|[0x800034f0]<br>0x0240F7FBE00256B3|- rs2_h1_val == 1<br> - rs1_w0_val == 512<br>                                                                                                                                                                        |[0x80000c88]:KMMAWT_U t6, t5, t4<br> [0x80000c8c]:sd t6, 256(ra)<br>     |
|  48|[0x80003500]<br>0x0240F7FBE00256F3|- rs2_h2_val == 8192<br> - rs1_w0_val == 128<br>                                                                                                                                                                     |[0x80000cb8]:KMMAWT_U t6, t5, t4<br> [0x80000cbc]:sd t6, 272(ra)<br>     |
|  49|[0x80003510]<br>0x0240F7FDE00256F3|- rs2_h1_val == -2<br> - rs1_w0_val == 64<br>                                                                                                                                                                        |[0x80000ce8]:KMMAWT_U t6, t5, t4<br> [0x80000cec]:sd t6, 288(ra)<br>     |
|  50|[0x80003520]<br>0x0260F7FDE00256F3|- rs1_w0_val == 32<br>                                                                                                                                                                                               |[0x80000d18]:KMMAWT_U t6, t5, t4<br> [0x80000d1c]:sd t6, 304(ra)<br>     |
|  51|[0x80003530]<br>0x0260F7FEE00256F2|- rs1_w0_val == 4<br>                                                                                                                                                                                                |[0x80000d44]:KMMAWT_U t6, t5, t4<br> [0x80000d48]:sd t6, 320(ra)<br>     |
|  52|[0x80003540]<br>0x0260F7FEE00256F2|- rs2_h1_val == -5<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 2<br>                                                                                                                                            |[0x80000d6c]:KMMAWT_U t6, t5, t4<br> [0x80000d70]:sd t6, 336(ra)<br>     |
|  53|[0x80003550]<br>0x025F37FEE00256F2|- rs2_h0_val == -8193<br> - rs1_w0_val == 1<br>                                                                                                                                                                      |[0x80000d9c]:KMMAWT_U t6, t5, t4<br> [0x80000da0]:sd t6, 352(ra)<br>     |
|  54|[0x80003560]<br>0x023F377EE00256F2|- rs1_w1_val == 8388608<br>                                                                                                                                                                                          |[0x80000dc4]:KMMAWT_U t6, t5, t4<br> [0x80000dc8]:sd t6, 368(ra)<br>     |
|  55|[0x80003570]<br>0x0240377EE00256F2|- rs1_w0_val == -1<br>                                                                                                                                                                                               |[0x80000df0]:KMMAWT_U t6, t5, t4<br> [0x80000df4]:sd t6, 384(ra)<br>     |
|  56|[0x80003580]<br>0x023D8CD6E00276F6|- rs2_h2_val == -129<br> - rs1_w1_val == -524289<br>                                                                                                                                                                 |[0x80000e30]:KMMAWT_U t6, t5, t4<br> [0x80000e34]:sd t6, 400(ra)<br>     |
|  57|[0x80003590]<br>0x023D8C56E007CC46|- rs2_h2_val == -65<br> - rs2_h1_val == 21845<br> - rs1_w1_val == -65537<br>                                                                                                                                         |[0x80000e60]:KMMAWT_U t6, t5, t4<br> [0x80000e64]:sd t6, 416(ra)<br>     |
|  58|[0x800035a0]<br>0x023D9556E007CC4B|- rs2_h2_val == -33<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                |[0x80000e98]:KMMAWT_U t6, t5, t4<br> [0x80000e9c]:sd t6, 432(ra)<br>     |
|  59|[0x800035b0]<br>0xFE3DA556E0070C4B|- rs2_h2_val == -9<br> - rs2_h0_val == -1025<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -536870913<br>                                                                                                       |[0x80000ed0]:KMMAWT_U t6, t5, t4<br> [0x80000ed4]:sd t6, 448(ra)<br>     |
|  60|[0x800035c0]<br>0xFE3DA556E0070BCB|- rs2_h2_val == 4096<br> - rs1_w0_val == -8193<br>                                                                                                                                                                   |[0x80000efc]:KMMAWT_U t6, t5, t4<br> [0x80000f00]:sd t6, 464(ra)<br>     |
|  61|[0x800035d0]<br>0xFE3DA556E0070BCB|- rs2_h2_val == 128<br>                                                                                                                                                                                              |[0x80000f20]:KMMAWT_U t6, t5, t4<br> [0x80000f24]:sd t6, 480(ra)<br>     |
|  62|[0x800035e0]<br>0xFC3D2556E0070CCB|- rs2_h2_val == 64<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -2049<br>                                                                                                                                      |[0x80000f58]:KMMAWT_U t6, t5, t4<br> [0x80000f5c]:sd t6, 496(ra)<br>     |
|  63|[0x800035f0]<br>0xFC3D2556E0070CCA|- rs2_h2_val == 16<br>                                                                                                                                                                                               |[0x80000f88]:KMMAWT_U t6, t5, t4<br> [0x80000f8c]:sd t6, 512(ra)<br>     |
|  64|[0x80003600]<br>0xFC3D24F6E0070B4A|- rs2_h2_val == 4<br> - rs2_h0_val == 16384<br> - rs1_w1_val == 2097152<br>                                                                                                                                          |[0x80000fbc]:KMMAWT_U t6, t5, t4<br> [0x80000fc0]:sd t6, 528(ra)<br>     |
|  65|[0x80003610]<br>0xFC3CE4F6E0070BA0|- rs2_h2_val == 2<br> - rs2_h1_val == -21846<br> - rs1_w1_val == -4194305<br>                                                                                                                                        |[0x80000fec]:KMMAWT_U t6, t5, t4<br> [0x80000ff0]:sd t6, 544(ra)<br>     |
|  66|[0x80003620]<br>0xFC3CE4F6E0030BA0|- rs1_w1_val == -2<br>                                                                                                                                                                                               |[0x80001014]:KMMAWT_U t6, t5, t4<br> [0x80001018]:sd t6, 560(ra)<br>     |
|  67|[0x80003630]<br>0xFC3CE4F6E002D3A0|- rs2_h2_val == -1<br>                                                                                                                                                                                               |[0x8000103c]:KMMAWT_U t6, t5, t4<br> [0x80001040]:sd t6, 576(ra)<br>     |
|  68|[0x80003640]<br>0xFC3CE4F6E002D3A1|- rs2_h1_val == -1025<br> - rs1_w0_val == -33<br>                                                                                                                                                                    |[0x80001068]:KMMAWT_U t6, t5, t4<br> [0x8000106c]:sd t6, 592(ra)<br>     |
|  69|[0x80003650]<br>0xF83C64F6E04313A1|- rs2_h1_val == -257<br> - rs2_h0_val == -17<br>                                                                                                                                                                     |[0x800010a0]:KMMAWT_U t6, t5, t4<br> [0x800010a4]:sd t6, 608(ra)<br>     |
|  70|[0x80003660]<br>0xF84084F6E04313D1|- rs2_h1_val == -3<br> - rs2_h0_val == -33<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -1048577<br>                                                                                                           |[0x800010d8]:KMMAWT_U t6, t5, t4<br> [0x800010dc]:sd t6, 624(ra)<br>     |
|  71|[0x80003670]<br>0xF84084F5DD9863D1|- rs2_h0_val == 1024<br>                                                                                                                                                                                             |[0x80001108]:KMMAWT_U t6, t5, t4<br> [0x8000110c]:sd t6, 640(ra)<br>     |
|  72|[0x80003680]<br>0xF84104F3DD9863D3|- rs2_h0_val == 128<br>                                                                                                                                                                                              |[0x80001144]:KMMAWT_U t6, t5, t4<br> [0x80001148]:sd t6, 656(ra)<br>     |
|  73|[0x80003690]<br>0xF84104F3DD9863D4|- rs2_h0_val == 64<br>                                                                                                                                                                                               |[0x8000116c]:KMMAWT_U t6, t5, t4<br> [0x80001170]:sd t6, 672(ra)<br>     |
|  74|[0x800036a0]<br>0xF84205F3DD9923D4|- rs2_h0_val == 8<br>                                                                                                                                                                                                |[0x800011a0]:KMMAWT_U t6, t5, t4<br> [0x800011a4]:sd t6, 688(ra)<br>     |
|  75|[0x800036b0]<br>0xF84205F3DD98E2D4|- rs2_h0_val == 4<br> - rs1_w1_val == -17<br> - rs1_w0_val == 16777216<br>                                                                                                                                           |[0x800011d0]:KMMAWT_U t6, t5, t4<br> [0x800011d4]:sd t6, 704(ra)<br>     |
|  76|[0x800036c0]<br>0xF84205F3DD98E2D4|- rs2_h0_val == -1<br>                                                                                                                                                                                               |[0x800011f8]:KMMAWT_U t6, t5, t4<br> [0x800011fc]:sd t6, 720(ra)<br>     |
|  77|[0x800036d0]<br>0xCD97B09DDD98E2D4|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                      |[0x8000122c]:KMMAWT_U t6, t5, t4<br> [0x80001230]:sd t6, 736(ra)<br>     |
|  78|[0x800036e0]<br>0xCD17B09DBD98E2D4|- rs1_w1_val == -67108865<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                         |[0x8000125c]:KMMAWT_U t6, t5, t4<br> [0x80001260]:sd t6, 752(ra)<br>     |
|  79|[0x800036f0]<br>0xCD17AC9DBD98E254|- rs1_w1_val == -33554433<br>                                                                                                                                                                                        |[0x80001290]:KMMAWT_U t6, t5, t4<br> [0x80001294]:sd t6, 768(ra)<br>     |
|  80|[0x80003700]<br>0xCD17AD9DBD98E254|- rs1_w1_val == -8388609<br>                                                                                                                                                                                         |[0x800012c4]:KMMAWT_U t6, t5, t4<br> [0x800012c8]:sd t6, 784(ra)<br>     |
|  81|[0x80003710]<br>0xCD17AE0DBD96E254|- rs1_w1_val == -1048577<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                          |[0x800012f4]:KMMAWT_U t6, t5, t4<br> [0x800012f8]:sd t6, 800(ra)<br>     |
|  82|[0x80003720]<br>0xCD17AE51BD9EE254|- rs1_w1_val == -262145<br>                                                                                                                                                                                          |[0x80001324]:KMMAWT_U t6, t5, t4<br> [0x80001328]:sd t6, 816(ra)<br>     |
|  83|[0x80003730]<br>0xCD18AE52BD9E6254|- rs1_w1_val == -131073<br>                                                                                                                                                                                          |[0x80001364]:KMMAWT_U t6, t5, t4<br> [0x80001368]:sd t6, 832(ra)<br>     |
|  84|[0x80003740]<br>0xCD18AED3BD9E5A54|- rs1_w1_val == -32769<br>                                                                                                                                                                                           |[0x80001398]:KMMAWT_U t6, t5, t4<br> [0x8000139c]:sd t6, 848(ra)<br>     |
|  85|[0x80003750]<br>0xCD18ADD3BD9E5A54|- rs1_w1_val == -1025<br>                                                                                                                                                                                            |[0x800013c8]:KMMAWT_U t6, t5, t4<br> [0x800013cc]:sd t6, 864(ra)<br>     |
|  86|[0x80003760]<br>0xCD18ADD3BD9E1A54|- rs1_w1_val == -257<br>                                                                                                                                                                                             |[0x800013fc]:KMMAWT_U t6, t5, t4<br> [0x80001400]:sd t6, 880(ra)<br>     |
|  87|[0x80003770]<br>0xCD18ADD5BD9E9A54|- rs1_w1_val == -3<br>                                                                                                                                                                                               |[0x8000142c]:KMMAWT_U t6, t5, t4<br> [0x80001430]:sd t6, 896(ra)<br>     |
|  88|[0x80003780]<br>0xCE18ADD5BD9E9A55|- rs2_h1_val == 512<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                |[0x8000145c]:KMMAWT_U t6, t5, t4<br> [0x80001460]:sd t6, 912(ra)<br>     |
|  89|[0x80003790]<br>0xCE109DD5BD9E9A55|- rs1_w1_val == 268435456<br>                                                                                                                                                                                        |[0x80001484]:KMMAWT_U t6, t5, t4<br> [0x80001488]:sd t6, 928(ra)<br>     |
|  90|[0x800037a0]<br>0xCDD095D5BD9E9A55|- rs1_w1_val == 134217728<br>                                                                                                                                                                                        |[0x800014b4]:KMMAWT_U t6, t5, t4<br> [0x800014b8]:sd t6, 944(ra)<br>     |
|  91|[0x800037b0]<br>0xCDD09AD5BD9C9A45|- rs1_w1_val == 16777216<br>                                                                                                                                                                                         |[0x800014e0]:KMMAWT_U t6, t5, t4<br> [0x800014e4]:sd t6, 960(ra)<br>     |
|  92|[0x800037c0]<br>0xCDD09AE5BD9C9A05|- rs1_w1_val == 1048576<br>                                                                                                                                                                                          |[0x80001518]:KMMAWT_U t6, t5, t4<br> [0x8000151c]:sd t6, 976(ra)<br>     |
|  93|[0x800037d0]<br>0xCDD09AE6BD9C9A95|- rs1_w1_val == 65536<br>                                                                                                                                                                                            |[0x80001544]:KMMAWT_U t6, t5, t4<br> [0x80001548]:sd t6, 992(ra)<br>     |
|  94|[0x800037e0]<br>0xCDD0C591BD9C9B55|- rs2_h0_val == -3<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 4194304<br>                                                                                                                                         |[0x80001574]:KMMAWT_U t6, t5, t4<br> [0x80001578]:sd t6, 1008(ra)<br>    |
|  95|[0x800037f0]<br>0xCDD0C591BD9C9B55|- rs1_w1_val == 16384<br>                                                                                                                                                                                            |[0x800015a8]:KMMAWT_U t6, t5, t4<br> [0x800015ac]:sd t6, 1024(ra)<br>    |
|  96|[0x80003800]<br>0xCDD0C58FBD9C9B55|- rs1_w1_val == 4096<br>                                                                                                                                                                                             |[0x800015d8]:KMMAWT_U t6, t5, t4<br> [0x800015dc]:sd t6, 1040(ra)<br>    |
|  97|[0x80003810]<br>0xCDD0C591BD9C9B55|- rs1_w1_val == 64<br>                                                                                                                                                                                               |[0x80001608]:KMMAWT_U t6, t5, t4<br> [0x8000160c]:sd t6, 1056(ra)<br>    |
|  98|[0x80003820]<br>0xCDD0C591BD9A9B55|- rs1_w1_val == 32<br>                                                                                                                                                                                               |[0x8000163c]:KMMAWT_U t6, t5, t4<br> [0x80001640]:sd t6, 1072(ra)<br>    |
|  99|[0x80003830]<br>0xCDD0C591BD9A9F95|- rs1_w1_val == 1<br>                                                                                                                                                                                                |[0x80001668]:KMMAWT_U t6, t5, t4<br> [0x8000166c]:sd t6, 1088(ra)<br>    |
| 100|[0x80003850]<br>0xCDD0C511C2EFFF95|- rs2_h0_val == -5<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                |[0x800016cc]:KMMAWT_U t6, t5, t4<br> [0x800016d0]:sd t6, 1120(ra)<br>    |
| 101|[0x80003860]<br>0xCDD0C511CAEFFF96|- rs2_h1_val == -32768<br>                                                                                                                                                                                           |[0x800016f4]:KMMAWT_U t6, t5, t4<br> [0x800016f8]:sd t6, 1136(ra)<br>    |
| 102|[0x80003870]<br>0xCDD0C501CACFFF96|- rs1_w0_val == -134217729<br>                                                                                                                                                                                       |[0x80001728]:KMMAWT_U t6, t5, t4<br> [0x8000172c]:sd t6, 1152(ra)<br>    |
| 103|[0x80003880]<br>0xCDD0C502CACFE396|- rs1_w0_val == -67108865<br>                                                                                                                                                                                        |[0x8000175c]:KMMAWT_U t6, t5, t4<br> [0x80001760]:sd t6, 1168(ra)<br>    |
| 104|[0x80003890]<br>0xCDD0C502CACFE416|- rs2_h1_val == 4096<br>                                                                                                                                                                                             |[0x80001790]:KMMAWT_U t6, t5, t4<br> [0x80001794]:sd t6, 1184(ra)<br>    |
| 105|[0x800038a0]<br>0xCDD0D502CACFE436|- rs2_h1_val == 2048<br>                                                                                                                                                                                             |[0x800017c0]:KMMAWT_U t6, t5, t4<br> [0x800017c4]:sd t6, 1200(ra)<br>    |
| 106|[0x800038b0]<br>0xCDD0D4E2CACFE43B|- rs1_w0_val == -65537<br>                                                                                                                                                                                           |[0x800017f4]:KMMAWT_U t6, t5, t4<br> [0x800017f8]:sd t6, 1216(ra)<br>    |
| 107|[0x800038c0]<br>0xCDD0D4E2CACFE63B|- rs1_w0_val == -16385<br>                                                                                                                                                                                           |[0x80001828]:KMMAWT_U t6, t5, t4<br> [0x8000182c]:sd t6, 1232(ra)<br>    |
| 108|[0x800038d0]<br>0xCDD0D2E2CACFE63B|- rs1_w0_val == -4097<br>                                                                                                                                                                                            |[0x80001860]:KMMAWT_U t6, t5, t4<br> [0x80001864]:sd t6, 1248(ra)<br>    |
| 109|[0x800038e0]<br>0xCDCED2E2CACFE63C|- rs2_h0_val == 32767<br>                                                                                                                                                                                            |[0x80001898]:KMMAWT_U t6, t5, t4<br> [0x8000189c]:sd t6, 1264(ra)<br>    |
| 110|[0x800038f0]<br>0xCDCECAE2CACFE63D|- rs1_w0_val == -129<br>                                                                                                                                                                                             |[0x800018cc]:KMMAWT_U t6, t5, t4<br> [0x800018d0]:sd t6, 1280(ra)<br>    |
| 111|[0x80003900]<br>0xCCCECAE2CACFE63D|- rs1_w0_val == -17<br>                                                                                                                                                                                              |[0x80001900]:KMMAWT_U t6, t5, t4<br> [0x80001904]:sd t6, 1296(ra)<br>    |
| 112|[0x80003910]<br>0xCCCEC8C2CACFE63D|- rs2_h0_val == -2<br> - rs1_w0_val == -5<br>                                                                                                                                                                        |[0x80001934]:KMMAWT_U t6, t5, t4<br> [0x80001938]:sd t6, 1312(ra)<br>    |
| 113|[0x80003920]<br>0xCCCEC8C2CACFE62C|- rs2_h0_val == -513<br>                                                                                                                                                                                             |[0x8000195c]:KMMAWT_U t6, t5, t4<br> [0x80001960]:sd t6, 1328(ra)<br>    |
| 114|[0x80003930]<br>0xCD0EC8C2CACFE62C|- rs1_w0_val == -3<br>                                                                                                                                                                                               |[0x8000198c]:KMMAWT_U t6, t5, t4<br> [0x80001990]:sd t6, 1344(ra)<br>    |
| 115|[0x80003940]<br>0xCD0EC8C0CACFE62C|- rs1_w0_val == -2<br>                                                                                                                                                                                               |[0x800019b8]:KMMAWT_U t6, t5, t4<br> [0x800019bc]:sd t6, 1360(ra)<br>    |
| 116|[0x80003950]<br>0xCE0EC8C0CAD7E62C|- rs1_w0_val == 536870912<br>                                                                                                                                                                                        |[0x800019e8]:KMMAWT_U t6, t5, t4<br> [0x800019ec]:sd t6, 1376(ra)<br>    |
| 117|[0x80003960]<br>0xCE0EC8C2CBD7E62C|- rs1_w0_val == 268435456<br>                                                                                                                                                                                        |[0x80001a14]:KMMAWT_U t6, t5, t4<br> [0x80001a18]:sd t6, 1392(ra)<br>    |
| 118|[0x80003970]<br>0xCE0EC8C2CB2D3A2C|- rs1_w0_val == 33554432<br>                                                                                                                                                                                         |[0x80001a44]:KMMAWT_U t6, t5, t4<br> [0x80001a48]:sd t6, 1408(ra)<br>    |
| 119|[0x80003980]<br>0xCE0EC8B2CB4D3A2C|- rs1_w0_val == -8388609<br>                                                                                                                                                                                         |[0x80001a78]:KMMAWT_U t6, t5, t4<br> [0x80001a7c]:sd t6, 1424(ra)<br>    |
| 120|[0x80003990]<br>0xCE0688B2EB4DBA2C|- rs1_w0_val == -2147483648<br>                                                                                                                                                                                      |[0x80001aa8]:KMMAWT_U t6, t5, t4<br> [0x80001aac]:sd t6, 1440(ra)<br>    |
| 121|[0x800039a0]<br>0xB19488B2EB630F81|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                       |[0x80001aec]:KMMAWT_U t6, t5, t4<br> [0x80001af0]:sd t6, 1456(ra)<br>    |
| 122|[0x800039b0]<br>0xB19468B2EB638F81|- rs2_h2_val == -5<br>                                                                                                                                                                                               |[0x80001b1c]:KMMAWT_U t6, t5, t4<br> [0x80001b20]:sd t6, 1472(ra)<br>    |
| 123|[0x800039c0]<br>0xB1946892EB6E8F81|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                      |[0x80001b50]:KMMAWT_U t6, t5, t4<br> [0x80001b54]:sd t6, 1488(ra)<br>    |
