
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ba0')]      |
| SIG_REGION                | [('0x80003210', '0x80003b00', '286 dwords')]      |
| COV_LABELS                | kmmac.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmac.u-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 286      |
| STAT1                     | 142      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 143     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b60]:KMMAC_U t6, t5, t4
      [0x80001b64]:sd t6, 1984(ra)
 -- Signature Address: 0x80003ae0 Data: 0x0F8D5F203C2E165E
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -1025
      - rs1_w0_val == -32769






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x29', 'rs2 : x29', 'rd : x6', 'rs1 == rs2 != rd', 'rs2_w1_val == 4', 'rs2_w0_val == -9', 'rs1_w1_val == 4', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800003b8]:KMMAC_U t1, t4, t4
	-[0x800003bc]:sd t1, 0(sp)
Current Store : [0x800003c0] : sd t4, 8(sp) -- Store: [0x80003218]:0x00000004FFFFFFF7




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -3', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800003e4]:KMMAC_U s1, s1, s1
	-[0x800003e8]:sd s1, 16(sp)
Current Store : [0x800003ec] : sd s1, 24(sp) -- Store: [0x80003228]:0xC71C71C7FFFFFFFD




Last Coverpoint : ['rs1 : x22', 'rs2 : x20', 'rd : x17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000418]:KMMAC_U a7, s6, s4
	-[0x8000041c]:sd a7, 32(sp)
Current Store : [0x80000420] : sd s6, 40(sp) -- Store: [0x80003238]:0x66666666FFFFFFFD




Last Coverpoint : ['rs1 : x10', 'rs2 : x15', 'rd : x10', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 67108864', 'rs1_w1_val == -5', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000444]:KMMAC_U a0, a0, a5
	-[0x80000448]:sd a0, 48(sp)
Current Store : [0x8000044c] : sd a0, 56(sp) -- Store: [0x80003248]:0xFFFFFFF9FFFBEFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x11', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -2147483648', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80000470]:KMMAC_U a1, t1, a1
	-[0x80000474]:sd a1, 64(sp)
Current Store : [0x80000478] : sd t1, 72(sp) -- Store: [0x80003258]:0xFFFFFFEF0000B503




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rd : x3', 'rs2_w1_val == -536870913', 'rs1_w1_val == -536870913', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800004a0]:KMMAC_U gp, s3, fp
	-[0x800004a4]:sd gp, 80(sp)
Current Store : [0x800004a8] : sd s3, 88(sp) -- Store: [0x80003268]:0xDFFFFFFF00000800




Last Coverpoint : ['rs1 : x1', 'rs2 : x17', 'rd : x25', 'rs2_w1_val == -268435457', 'rs2_w0_val == 131072', 'rs1_w1_val == 128', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800004cc]:KMMAC_U s9, ra, a7
	-[0x800004d0]:sd s9, 96(sp)
Current Store : [0x800004d4] : sd ra, 104(sp) -- Store: [0x80003278]:0x0000008004000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x19', 'rs2_w1_val == -134217729', 'rs2_w0_val == -17', 'rs1_w1_val == -134217729', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800004f4]:KMMAC_U s3, fp, ra
	-[0x800004f8]:sd s3, 112(sp)
Current Store : [0x800004fc] : sd fp, 120(sp) -- Store: [0x80003288]:0xF7FFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x13', 'rd : x15', 'rs2_w1_val == -67108865', 'rs2_w0_val == -1025', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x8000051c]:KMMAC_U a5, s5, a3
	-[0x80000520]:sd a5, 128(sp)
Current Store : [0x80000524] : sd s5, 136(sp) -- Store: [0x80003298]:0x40000000FFFFFFF8




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x16', 'rs2_w1_val == -33554433', 'rs2_w0_val == -67108865', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000054c]:KMMAC_U a6, t2, t3
	-[0x80000550]:sd a6, 144(sp)
Current Store : [0x80000554] : sd t2, 152(sp) -- Store: [0x800032a8]:0xAAAAAAAB00000080




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x22', 'rs2_w1_val == -16777217', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000580]:KMMAC_U s6, a3, tp
	-[0x80000584]:sd s6, 160(sp)
Current Store : [0x80000588] : sd a3, 168(sp) -- Store: [0x800032b8]:0x3FFFFFFF33333332




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x4', 'rs2_w1_val == -8388609', 'rs2_w0_val == -262145', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800005ac]:KMMAC_U tp, zero, t5
	-[0x800005b0]:sd tp, 176(sp)
Current Store : [0x800005b4] : sd zero, 184(sp) -- Store: [0x800032c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x7', 'rs2_w1_val == -4194305', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800005dc]:KMMAC_U t2, t3, t0
	-[0x800005e0]:sd t2, 192(sp)
Current Store : [0x800005e4] : sd t3, 200(sp) -- Store: [0x800032d8]:0x55555555EFFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x26', 'rs2_w1_val == -2097153', 'rs2_w0_val == 134217728', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000608]:KMMAC_U s10, a2, a6
	-[0x8000060c]:sd s10, 208(sp)
Current Store : [0x80000610] : sd a2, 216(sp) -- Store: [0x800032e8]:0x6666666640000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x6', 'rd : x24', 'rs2_w1_val == -1048577', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80000634]:KMMAC_U s8, a6, t1
	-[0x80000638]:sd s8, 224(sp)
Current Store : [0x8000063c] : sd a6, 232(sp) -- Store: [0x800032f8]:0x0000000300000007




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rd : x1', 'rs2_w1_val == -524289', 'rs2_w0_val == 8388608', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000065c]:KMMAC_U ra, a5, s2
	-[0x80000660]:sd ra, 240(sp)
Current Store : [0x80000664] : sd a5, 248(sp) -- Store: [0x80003308]:0x33333333FFFFFDFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x3', 'rd : x14', 'rs2_w1_val == -262145', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000680]:KMMAC_U a4, t5, gp
	-[0x80000684]:sd a4, 256(sp)
Current Store : [0x80000688] : sd t5, 264(sp) -- Store: [0x80003318]:0x00000004FFFFFFFB




Last Coverpoint : ['rs1 : x2', 'rs2 : x21', 'rd : x23', 'rs2_w1_val == -131073']
Last Code Sequence : 
	-[0x800006b0]:KMMAC_U s7, sp, s5
	-[0x800006b4]:sd s7, 0(ra)
Current Store : [0x800006b8] : sd sp, 8(ra) -- Store: [0x80003328]:0x66666665FFFFFDFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x12', 'rd : x30', 'rs2_w1_val == -65537', 'rs2_w0_val == 1048576', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800006d8]:KMMAC_U t5, s10, a2
	-[0x800006dc]:sd t5, 16(ra)
Current Store : [0x800006e0] : sd s10, 24(ra) -- Store: [0x80003338]:0x33333333FFFFFF7F




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x12', 'rs2_w1_val == -32769', 'rs2_w0_val == 0', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800006f8]:KMMAC_U a2, t0, t6
	-[0x800006fc]:sd a2, 32(ra)
Current Store : [0x80000700] : sd t0, 40(ra) -- Store: [0x80003348]:0xFFFFFFF820000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rd : x2', 'rs2_w1_val == -16385', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x8000072c]:KMMAC_U sp, tp, s3
	-[0x80000730]:sd sp, 48(ra)
Current Store : [0x80000734] : sd tp, 56(ra) -- Store: [0x80003358]:0xFFFBFFFF66666666




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x5', 'rs2_w1_val == -8193', 'rs2_w0_val == 2097152', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000758]:KMMAC_U t0, a1, s7
	-[0x8000075c]:sd t0, 64(ra)
Current Store : [0x80000760] : sd a1, 72(ra) -- Store: [0x80003368]:0x3333333200008000




Last Coverpoint : ['rs1 : x25', 'rs2 : x27', 'rd : x20', 'rs2_w1_val == -4097', 'rs2_w0_val == -65', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000780]:KMMAC_U s4, s9, s11
	-[0x80000784]:sd s4, 80(ra)
Current Store : [0x80000788] : sd s9, 88(ra) -- Store: [0x80003378]:0x8000000000800000




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x21', 'rs2_w1_val == -2049', 'rs1_w1_val == -3', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800007a8]:KMMAC_U s5, t6, sp
	-[0x800007ac]:sd s5, 96(ra)
Current Store : [0x800007b0] : sd t6, 104(ra) -- Store: [0x80003388]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x0', 'rs2_w1_val == -1025', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800007d4]:KMMAC_U zero, s8, a4
	-[0x800007d8]:sd zero, 112(ra)
Current Store : [0x800007dc] : sd s8, 120(ra) -- Store: [0x80003398]:0x00000006FFFF7FFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x31', 'rs2_w1_val == -513', 'rs2_w0_val == -4097', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000800]:KMMAC_U t6, gp, t2
	-[0x80000804]:sd t6, 128(ra)
Current Store : [0x80000808] : sd gp, 136(ra) -- Store: [0x800033a8]:0x04000000FFFFFFF8




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x29', 'rs2_w1_val == -257', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000824]:KMMAC_U t4, s2, s9
	-[0x80000828]:sd t4, 144(ra)
Current Store : [0x8000082c] : sd s2, 152(ra) -- Store: [0x800033b8]:0xFFFF4AFD00400000




Last Coverpoint : ['rs1 : x20', 'rs2 : x26', 'rd : x28', 'rs2_w1_val == -129', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000850]:KMMAC_U t3, s4, s10
	-[0x80000854]:sd t3, 160(ra)
Current Store : [0x80000858] : sd s4, 168(ra) -- Store: [0x800033c8]:0x00004000FFFFFFF8




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x27', 'rs2_w1_val == -65', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -16777217', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000878]:KMMAC_U s11, a7, a0
	-[0x8000087c]:sd s11, 176(ra)
Current Store : [0x80000880] : sd a7, 184(ra) -- Store: [0x800033d8]:0xFEFFFFFF08000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x24', 'rd : x18', 'rs2_w1_val == -33', 'rs2_w0_val == 32', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800008a0]:KMMAC_U s2, s11, s8
	-[0x800008a4]:sd s2, 192(ra)
Current Store : [0x800008a8] : sd s11, 200(ra) -- Store: [0x800033e8]:0x0000004066666667




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x13', 'rs2_w1_val == 0', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800008c8]:KMMAC_U a3, s7, zero
	-[0x800008cc]:sd a3, 208(ra)
Current Store : [0x800008d0] : sd s7, 216(ra) -- Store: [0x800033f8]:0x0000002033333332




Last Coverpoint : ['rs1 : x14', 'rs2 : x22', 'rd : x8', 'rs2_w1_val == -9', 'rs2_w0_val == -513', 'rs1_w1_val == -129', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800008ec]:KMMAC_U fp, a4, s6
	-[0x800008f0]:sd fp, 224(ra)
Current Store : [0x800008f4] : sd a4, 232(ra) -- Store: [0x80003408]:0xFFFFFF7F00000040




Last Coverpoint : ['rs2_w1_val == -5', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000918]:KMMAC_U t6, t5, t4
	-[0x8000091c]:sd t6, 240(ra)
Current Store : [0x80000920] : sd t5, 248(ra) -- Store: [0x80003418]:0x80000000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == -3', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000940]:KMMAC_U t6, t5, t4
	-[0x80000944]:sd t6, 256(ra)
Current Store : [0x80000948] : sd t5, 264(ra) -- Store: [0x80003428]:0x3333333400020000




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 64', 'rs1_w1_val == -65', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000964]:KMMAC_U t6, t5, t4
	-[0x80000968]:sd t6, 272(ra)
Current Store : [0x8000096c] : sd t5, 280(ra) -- Store: [0x80003438]:0xFFFFFFBFFFFFFBFF




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000098c]:KMMAC_U t6, t5, t4
	-[0x80000990]:sd t6, 288(ra)
Current Store : [0x80000994] : sd t5, 296(ra) -- Store: [0x80003448]:0x0000000602000000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800009b0]:KMMAC_U t6, t5, t4
	-[0x800009b4]:sd t6, 304(ra)
Current Store : [0x800009b8] : sd t5, 312(ra) -- Store: [0x80003458]:0x0010000000000040




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -268435457', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800009e0]:KMMAC_U t6, t5, t4
	-[0x800009e4]:sd t6, 320(ra)
Current Store : [0x800009e8] : sd t5, 328(ra) -- Store: [0x80003468]:0x00004000FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a18]:KMMAC_U t6, t5, t4
	-[0x80000a1c]:sd t6, 336(ra)
Current Store : [0x80000a20] : sd t5, 344(ra) -- Store: [0x80003478]:0x0000B505FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000a40]:KMMAC_U t6, t5, t4
	-[0x80000a44]:sd t6, 352(ra)
Current Store : [0x80000a48] : sd t5, 360(ra) -- Store: [0x80003488]:0xFFFF4AFDFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -536870913', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000a68]:KMMAC_U t6, t5, t4
	-[0x80000a6c]:sd t6, 368(ra)
Current Store : [0x80000a70] : sd t5, 376(ra) -- Store: [0x80003498]:0xFFFFFFF600000004




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80000a8c]:KMMAC_U t6, t5, t4
	-[0x80000a90]:sd t6, 384(ra)
Current Store : [0x80000a94] : sd t5, 392(ra) -- Store: [0x800034a8]:0xFFFFFDFFC0000000




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000ac4]:KMMAC_U t6, t5, t4
	-[0x80000ac8]:sd t6, 400(ra)
Current Store : [0x80000acc] : sd t5, 408(ra) -- Store: [0x800034b8]:0xFFFF4AFDFFFFFFF7




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == -524289', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000af4]:KMMAC_U t6, t5, t4
	-[0x80000af8]:sd t6, 416(ra)
Current Store : [0x80000afc] : sd t5, 424(ra) -- Store: [0x800034c8]:0xFFF7FFFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 16777216', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80000b1c]:KMMAC_U t6, t5, t4
	-[0x80000b20]:sd t6, 432(ra)
Current Store : [0x80000b24] : sd t5, 440(ra) -- Store: [0x800034d8]:0xFFDFFFFF3FFFFFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b54]:KMMAC_U t6, t5, t4
	-[0x80000b58]:sd t6, 448(ra)
Current Store : [0x80000b5c] : sd t5, 456(ra) -- Store: [0x800034e8]:0x0040000000000800




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b80]:KMMAC_U t6, t5, t4
	-[0x80000b84]:sd t6, 464(ra)
Current Store : [0x80000b88] : sd t5, 472(ra) -- Store: [0x800034f8]:0x00000004FFBFFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -257']
Last Code Sequence : 
	-[0x80000ba4]:KMMAC_U t6, t5, t4
	-[0x80000ba8]:sd t6, 480(ra)
Current Store : [0x80000bac] : sd t5, 488(ra) -- Store: [0x80003508]:0xFFFFFFF900000000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000bcc]:KMMAC_U t6, t5, t4
	-[0x80000bd0]:sd t6, 496(ra)
Current Store : [0x80000bd4] : sd t5, 504(ra) -- Store: [0x80003518]:0x00000002FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80000bec]:KMMAC_U t6, t5, t4
	-[0x80000bf0]:sd t6, 512(ra)
Current Store : [0x80000bf4] : sd t5, 520(ra) -- Store: [0x80003528]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536']
Last Code Sequence : 
	-[0x80000c10]:KMMAC_U t6, t5, t4
	-[0x80000c14]:sd t6, 528(ra)
Current Store : [0x80000c18] : sd t5, 536(ra) -- Store: [0x80003538]:0x33333333FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == -1048577', 'rs1_w1_val == 256', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000c38]:KMMAC_U t6, t5, t4
	-[0x80000c3c]:sd t6, 544(ra)
Current Store : [0x80000c40] : sd t5, 552(ra) -- Store: [0x80003548]:0x0000010000000001




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 16', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000c68]:KMMAC_U t6, t5, t4
	-[0x80000c6c]:sd t6, 560(ra)
Current Store : [0x80000c70] : sd t5, 568(ra) -- Store: [0x80003558]:0xFFBFFFFF66666666




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000c98]:KMMAC_U t6, t5, t4
	-[0x80000c9c]:sd t6, 576(ra)
Current Store : [0x80000ca0] : sd t5, 584(ra) -- Store: [0x80003568]:0xF7FFFFFF00008000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000cc0]:KMMAC_U t6, t5, t4
	-[0x80000cc4]:sd t6, 592(ra)
Current Store : [0x80000cc8] : sd t5, 600(ra) -- Store: [0x80003578]:0xFFFFFFFBFFFDFFFF




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w1_val == -1025', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ce8]:KMMAC_U t6, t5, t4
	-[0x80000cec]:sd t6, 608(ra)
Current Store : [0x80000cf0] : sd t5, 616(ra) -- Store: [0x80003588]:0xFFFFFBFF00002000




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d10]:KMMAC_U t6, t5, t4
	-[0x80000d14]:sd t6, 624(ra)
Current Store : [0x80000d18] : sd t5, 632(ra) -- Store: [0x80003598]:0xFFFBFFFF00001000




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == -8193', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d38]:KMMAC_U t6, t5, t4
	-[0x80000d3c]:sd t6, 640(ra)
Current Store : [0x80000d40] : sd t5, 648(ra) -- Store: [0x800035a8]:0xFFFFDFFF00000400




Last Coverpoint : ['rs2_w0_val == -129', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d54]:KMMAC_U t6, t5, t4
	-[0x80000d58]:sd t6, 656(ra)
Current Store : [0x80000d5c] : sd t5, 664(ra) -- Store: [0x800035b8]:0x0000000000000200




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == -134217729', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d80]:KMMAC_U t6, t5, t4
	-[0x80000d84]:sd t6, 672(ra)
Current Store : [0x80000d88] : sd t5, 680(ra) -- Store: [0x800035c8]:0xAAAAAAAA00000100




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000da8]:KMMAC_U t6, t5, t4
	-[0x80000dac]:sd t6, 688(ra)
Current Store : [0x80000db0] : sd t5, 696(ra) -- Store: [0x800035d8]:0x0000B50500000020




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000dd0]:KMMAC_U t6, t5, t4
	-[0x80000dd4]:sd t6, 704(ra)
Current Store : [0x80000dd8] : sd t5, 712(ra) -- Store: [0x800035e8]:0xFFFFFF7F00000010




Last Coverpoint : ['rs1_w1_val == 33554432', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000df8]:KMMAC_U t6, t5, t4
	-[0x80000dfc]:sd t6, 720(ra)
Current Store : [0x80000e00] : sd t5, 728(ra) -- Store: [0x800035f8]:0x0200000000000008




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e1c]:KMMAC_U t6, t5, t4
	-[0x80000e20]:sd t6, 736(ra)
Current Store : [0x80000e24] : sd t5, 744(ra) -- Store: [0x80003608]:0xC000000000000002




Last Coverpoint : ['rs2_w1_val == 1024']
Last Code Sequence : 
	-[0x80000e4c]:KMMAC_U t6, t5, t4
	-[0x80000e50]:sd t6, 752(ra)
Current Store : [0x80000e54] : sd t5, 760(ra) -- Store: [0x80003618]:0x0000B50400001000




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000e78]:KMMAC_U t6, t5, t4
	-[0x80000e7c]:sd t6, 768(ra)
Current Store : [0x80000e80] : sd t5, 776(ra) -- Store: [0x80003628]:0xBFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 16777216', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000ea0]:KMMAC_U t6, t5, t4
	-[0x80000ea4]:sd t6, 784(ra)
Current Store : [0x80000ea8] : sd t5, 792(ra) -- Store: [0x80003638]:0x01000000FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000ed4]:KMMAC_U t6, t5, t4
	-[0x80000ed8]:sd t6, 800(ra)
Current Store : [0x80000edc] : sd t5, 808(ra) -- Store: [0x80003648]:0x55555554FDFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -1', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000ef8]:KMMAC_U t6, t5, t4
	-[0x80000efc]:sd t6, 816(ra)
Current Store : [0x80000f00] : sd t5, 824(ra) -- Store: [0x80003658]:0xFFFF7FFFFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000f24]:KMMAC_U t6, t5, t4
	-[0x80000f28]:sd t6, 832(ra)
Current Store : [0x80000f2c] : sd t5, 840(ra) -- Store: [0x80003668]:0xFFFFFFFD0000B503




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 2048', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000f4c]:KMMAC_U t6, t5, t4
	-[0x80000f50]:sd t6, 848(ra)
Current Store : [0x80000f54] : sd t5, 856(ra) -- Store: [0x80003678]:0xFFFF4AFD00100000




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80000f74]:KMMAC_U t6, t5, t4
	-[0x80000f78]:sd t6, 864(ra)
Current Store : [0x80000f7c] : sd t5, 872(ra) -- Store: [0x80003688]:0xFFFF7FFF00000001




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000f98]:KMMAC_U t6, t5, t4
	-[0x80000f9c]:sd t6, 880(ra)
Current Store : [0x80000fa0] : sd t5, 888(ra) -- Store: [0x80003698]:0x0000004020000000




Last Coverpoint : ['rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000fc4]:KMMAC_U t6, t5, t4
	-[0x80000fc8]:sd t6, 896(ra)
Current Store : [0x80000fcc] : sd t5, 904(ra) -- Store: [0x800036a8]:0x80000000FFFEFFFF




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80000fec]:KMMAC_U t6, t5, t4
	-[0x80000ff0]:sd t6, 912(ra)
Current Store : [0x80000ff4] : sd t5, 920(ra) -- Store: [0x800036b8]:0x3333333300000004




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001018]:KMMAC_U t6, t5, t4
	-[0x8000101c]:sd t6, 928(ra)
Current Store : [0x80001020] : sd t5, 936(ra) -- Store: [0x800036c8]:0xFFFFFFF900008000




Last Coverpoint : ['rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001048]:KMMAC_U t6, t5, t4
	-[0x8000104c]:sd t6, 944(ra)
Current Store : [0x80001050] : sd t5, 952(ra) -- Store: [0x800036d8]:0x00000040FFFFFFF8




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001078]:KMMAC_U t6, t5, t4
	-[0x8000107c]:sd t6, 960(ra)
Current Store : [0x80001080] : sd t5, 968(ra) -- Store: [0x800036e8]:0x0000000700000004




Last Coverpoint : ['rs2_w0_val == -4194305', 'rs1_w1_val == 65536', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800010ac]:KMMAC_U t6, t5, t4
	-[0x800010b0]:sd t6, 976(ra)
Current Store : [0x800010b4] : sd t5, 984(ra) -- Store: [0x800036f8]:0x00010000F7FFFFFF




Last Coverpoint : ['rs2_w0_val == -524289', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800010d4]:KMMAC_U t6, t5, t4
	-[0x800010d8]:sd t6, 992(ra)
Current Store : [0x800010dc] : sd t5, 1000(ra) -- Store: [0x80003708]:0x0000001000000020




Last Coverpoint : ['rs2_w0_val == -131073', 'rs1_w1_val == -2', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80001104]:KMMAC_U t6, t5, t4
	-[0x80001108]:sd t6, 1008(ra)
Current Store : [0x8000110c] : sd t5, 1016(ra) -- Store: [0x80003718]:0xFFFFFFFE00004000




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80001134]:KMMAC_U t6, t5, t4
	-[0x80001138]:sd t6, 1024(ra)
Current Store : [0x8000113c] : sd t5, 1032(ra) -- Store: [0x80003728]:0xFEFFFFFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001164]:KMMAC_U t6, t5, t4
	-[0x80001168]:sd t6, 1040(ra)
Current Store : [0x8000116c] : sd t5, 1048(ra) -- Store: [0x80003738]:0x00000080FFFFFFF8




Last Coverpoint : ['rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80001184]:KMMAC_U t6, t5, t4
	-[0x80001188]:sd t6, 1056(ra)
Current Store : [0x8000118c] : sd t5, 1064(ra) -- Store: [0x80003748]:0x0000000000000009




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800011b4]:KMMAC_U t6, t5, t4
	-[0x800011b8]:sd t6, 1072(ra)
Current Store : [0x800011bc] : sd t5, 1080(ra) -- Store: [0x80003758]:0xFFFBFFFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800011dc]:KMMAC_U t6, t5, t4
	-[0x800011e0]:sd t6, 1088(ra)
Current Store : [0x800011e4] : sd t5, 1096(ra) -- Store: [0x80003768]:0xFFFFFFF9FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800011fc]:KMMAC_U t6, t5, t4
	-[0x80001200]:sd t6, 1104(ra)
Current Store : [0x80001204] : sd t5, 1112(ra) -- Store: [0x80003778]:0x0000000600000100




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000121c]:KMMAC_U t6, t5, t4
	-[0x80001220]:sd t6, 1120(ra)
Current Store : [0x80001224] : sd t5, 1128(ra) -- Store: [0x80003788]:0x00400000FFFFFDFF




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001248]:KMMAC_U t6, t5, t4
	-[0x8000124c]:sd t6, 1136(ra)
Current Store : [0x80001250] : sd t5, 1144(ra) -- Store: [0x80003798]:0xFFFFFFF9FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80001274]:KMMAC_U t6, t5, t4
	-[0x80001278]:sd t6, 1152(ra)
Current Store : [0x8000127c] : sd t5, 1160(ra) -- Store: [0x800037a8]:0xFFFFFFFBAAAAAAAB




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001298]:KMMAC_U t6, t5, t4
	-[0x8000129c]:sd t6, 1168(ra)
Current Store : [0x800012a0] : sd t5, 1176(ra) -- Store: [0x800037b8]:0x5555555600000000




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x800012d4]:KMMAC_U t6, t5, t4
	-[0x800012d8]:sd t6, 1184(ra)
Current Store : [0x800012dc] : sd t5, 1192(ra) -- Store: [0x800037c8]:0x5555555555555556




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800012fc]:KMMAC_U t6, t5, t4
	-[0x80001300]:sd t6, 1200(ra)
Current Store : [0x80001304] : sd t5, 1208(ra) -- Store: [0x800037d8]:0x0000001000400000




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001328]:KMMAC_U t6, t5, t4
	-[0x8000132c]:sd t6, 1216(ra)
Current Store : [0x80001330] : sd t5, 1224(ra) -- Store: [0x800037e8]:0x7FFFFFFF00000006




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001354]:KMMAC_U t6, t5, t4
	-[0x80001358]:sd t6, 1232(ra)
Current Store : [0x8000135c] : sd t5, 1240(ra) -- Store: [0x800037f8]:0xEFFFFFFF00000003




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x8000137c]:KMMAC_U t6, t5, t4
	-[0x80001380]:sd t6, 1248(ra)
Current Store : [0x80001384] : sd t5, 1256(ra) -- Store: [0x80003808]:0xFBFFFFFF00000000




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x800013b0]:KMMAC_U t6, t5, t4
	-[0x800013b4]:sd t6, 1264(ra)
Current Store : [0x800013b8] : sd t5, 1272(ra) -- Store: [0x80003818]:0xFDFFFFFF66666667




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800013f0]:KMMAC_U t6, t5, t4
	-[0x800013f4]:sd t6, 1280(ra)
Current Store : [0x800013f8] : sd t5, 1288(ra) -- Store: [0x80003828]:0xFF7FFFFF33333334




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x8000142c]:KMMAC_U t6, t5, t4
	-[0x80001430]:sd t6, 1296(ra)
Current Store : [0x80001434] : sd t5, 1304(ra) -- Store: [0x80003838]:0xFFEFFFFF00000009




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001458]:KMMAC_U t6, t5, t4
	-[0x8000145c]:sd t6, 1312(ra)
Current Store : [0x80001460] : sd t5, 1320(ra) -- Store: [0x80003848]:0xFFFDFFFFFFFBFFFF




Last Coverpoint : ['rs1_w1_val == -65537', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001484]:KMMAC_U t6, t5, t4
	-[0x80001488]:sd t6, 1328(ra)
Current Store : [0x8000148c] : sd t5, 1336(ra) -- Store: [0x80003858]:0xFFFEFFFFFFFFDFFF




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x800014b4]:KMMAC_U t6, t5, t4
	-[0x800014b8]:sd t6, 1344(ra)
Current Store : [0x800014bc] : sd t5, 1352(ra) -- Store: [0x80003868]:0xFFFFBFFFFFFF4AFC




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x800014dc]:KMMAC_U t6, t5, t4
	-[0x800014e0]:sd t6, 1360(ra)
Current Store : [0x800014e4] : sd t5, 1368(ra) -- Store: [0x80003878]:0xFFFFEFFF00000002




Last Coverpoint : ['rs1_w1_val == -2049', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000150c]:KMMAC_U t6, t5, t4
	-[0x80001510]:sd t6, 1376(ra)
Current Store : [0x80001514] : sd t5, 1384(ra) -- Store: [0x80003888]:0xFFFFF7FFFFFFBFFF




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80001534]:KMMAC_U t6, t5, t4
	-[0x80001538]:sd t6, 1392(ra)
Current Store : [0x8000153c] : sd t5, 1400(ra) -- Store: [0x80003898]:0xFFFFFEFF00040000




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80001558]:KMMAC_U t6, t5, t4
	-[0x8000155c]:sd t6, 1408(ra)
Current Store : [0x80001560] : sd t5, 1416(ra) -- Store: [0x800038a8]:0xFFFFFFDFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x8000157c]:KMMAC_U t6, t5, t4
	-[0x80001580]:sd t6, 1424(ra)
Current Store : [0x80001584] : sd t5, 1432(ra) -- Store: [0x800038b8]:0xFFFFFFF7FFFFFFF9




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w1_val == 536870912', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800015a8]:KMMAC_U t6, t5, t4
	-[0x800015ac]:sd t6, 1440(ra)
Current Store : [0x800015b0] : sd t5, 1448(ra) -- Store: [0x800038c8]:0x2000000000080000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800015d0]:KMMAC_U t6, t5, t4
	-[0x800015d4]:sd t6, 1456(ra)
Current Store : [0x800015d8] : sd t5, 1464(ra) -- Store: [0x800038d8]:0x1000000000000009




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001604]:KMMAC_U t6, t5, t4
	-[0x80001608]:sd t6, 1472(ra)
Current Store : [0x8000160c] : sd t5, 1480(ra) -- Store: [0x800038e8]:0x08000000FFFF4AFC




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001634]:KMMAC_U t6, t5, t4
	-[0x80001638]:sd t6, 1488(ra)
Current Store : [0x8000163c] : sd t5, 1496(ra) -- Store: [0x800038f8]:0x00800000FF7FFFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001658]:KMMAC_U t6, t5, t4
	-[0x8000165c]:sd t6, 1504(ra)
Current Store : [0x80001660] : sd t5, 1512(ra) -- Store: [0x80003908]:0x0020000000000002




Last Coverpoint : ['rs1_w1_val == 524288', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001680]:KMMAC_U t6, t5, t4
	-[0x80001684]:sd t6, 1520(ra)
Current Store : [0x80001688] : sd t5, 1528(ra) -- Store: [0x80003918]:0x00080000FFF7FFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800016ac]:KMMAC_U t6, t5, t4
	-[0x800016b0]:sd t6, 1536(ra)
Current Store : [0x800016b4] : sd t5, 1544(ra) -- Store: [0x80003928]:0x0000040000000003




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800016d4]:KMMAC_U t6, t5, t4
	-[0x800016d8]:sd t6, 1552(ra)
Current Store : [0x800016dc] : sd t5, 1560(ra) -- Store: [0x80003938]:0x0000020000000020




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800016fc]:KMMAC_U t6, t5, t4
	-[0x80001700]:sd t6, 1568(ra)
Current Store : [0x80001704] : sd t5, 1576(ra) -- Store: [0x80003948]:0x0000000800002000




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80001728]:KMMAC_U t6, t5, t4
	-[0x8000172c]:sd t6, 1584(ra)
Current Store : [0x80001730] : sd t5, 1592(ra) -- Store: [0x80003958]:0x00000800BFFFFFFF




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001754]:KMMAC_U t6, t5, t4
	-[0x80001758]:sd t6, 1600(ra)
Current Store : [0x8000175c] : sd t5, 1608(ra) -- Store: [0x80003968]:0x000000010000B503




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001780]:KMMAC_U t6, t5, t4
	-[0x80001784]:sd t6, 1616(ra)
Current Store : [0x80001788] : sd t5, 1624(ra) -- Store: [0x80003978]:0x0000000255555555




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x800017a8]:KMMAC_U t6, t5, t4
	-[0x800017ac]:sd t6, 1632(ra)
Current Store : [0x800017b0] : sd t5, 1640(ra) -- Store: [0x80003988]:0xFFFFFFF7FFFFFFFD




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800017d4]:KMMAC_U t6, t5, t4
	-[0x800017d8]:sd t6, 1648(ra)
Current Store : [0x800017dc] : sd t5, 1656(ra) -- Store: [0x80003998]:0x800000007FFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001804]:KMMAC_U t6, t5, t4
	-[0x80001808]:sd t6, 1664(ra)
Current Store : [0x8000180c] : sd t5, 1672(ra) -- Store: [0x800039a8]:0x00000020DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80001834]:KMMAC_U t6, t5, t4
	-[0x80001838]:sd t6, 1680(ra)
Current Store : [0x8000183c] : sd t5, 1688(ra) -- Store: [0x800039b8]:0xFFFFFFF8FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001850]:KMMAC_U t6, t5, t4
	-[0x80001854]:sd t6, 1696(ra)
Current Store : [0x80001858] : sd t5, 1704(ra) -- Store: [0x800039c8]:0xFFFFFFFAFEFFFFFF




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001880]:KMMAC_U t6, t5, t4
	-[0x80001884]:sd t6, 1712(ra)
Current Store : [0x80001888] : sd t5, 1720(ra) -- Store: [0x800039d8]:0x0000200000800000




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800018ac]:KMMAC_U t6, t5, t4
	-[0x800018b0]:sd t6, 1728(ra)
Current Store : [0x800018b4] : sd t5, 1736(ra) -- Store: [0x800039e8]:0xFFFFFFFC00200000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800018e4]:KMMAC_U t6, t5, t4
	-[0x800018e8]:sd t6, 1744(ra)
Current Store : [0x800018ec] : sd t5, 1752(ra) -- Store: [0x800039f8]:0xFFF7FFFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001914]:KMMAC_U t6, t5, t4
	-[0x80001918]:sd t6, 1760(ra)
Current Store : [0x8000191c] : sd t5, 1768(ra) -- Store: [0x80003a08]:0xFFFF7FFFFFFFF7FF




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001948]:KMMAC_U t6, t5, t4
	-[0x8000194c]:sd t6, 1776(ra)
Current Store : [0x80001950] : sd t5, 1784(ra) -- Store: [0x80003a18]:0x0000B505FFFFFFBF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001970]:KMMAC_U t6, t5, t4
	-[0x80001974]:sd t6, 1792(ra)
Current Store : [0x80001978] : sd t5, 1800(ra) -- Store: [0x80003a28]:0xFFFFFFFDFFFFFFEF




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800019a4]:KMMAC_U t6, t5, t4
	-[0x800019a8]:sd t6, 1808(ra)
Current Store : [0x800019ac] : sd t5, 1816(ra) -- Store: [0x80003a38]:0x0002000033333333




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800019cc]:KMMAC_U t6, t5, t4
	-[0x800019d0]:sd t6, 1824(ra)
Current Store : [0x800019d4] : sd t5, 1832(ra) -- Store: [0x80003a48]:0x0000B50310000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800019f0]:KMMAC_U t6, t5, t4
	-[0x800019f4]:sd t6, 1840(ra)
Current Store : [0x800019f8] : sd t5, 1848(ra) -- Store: [0x80003a58]:0xFFFFFFEF01000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80001a20]:KMMAC_U t6, t5, t4
	-[0x80001a24]:sd t6, 1856(ra)
Current Store : [0x80001a28] : sd t5, 1864(ra) -- Store: [0x80003a68]:0x00400000FFFF4AFD




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001a48]:KMMAC_U t6, t5, t4
	-[0x80001a4c]:sd t6, 1872(ra)
Current Store : [0x80001a50] : sd t5, 1880(ra) -- Store: [0x80003a78]:0x00040000FFFFFFFA




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001a68]:KMMAC_U t6, t5, t4
	-[0x80001a6c]:sd t6, 1888(ra)
Current Store : [0x80001a70] : sd t5, 1896(ra) -- Store: [0x80003a88]:0x0000800000000000




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80001a90]:KMMAC_U t6, t5, t4
	-[0x80001a94]:sd t6, 1904(ra)
Current Store : [0x80001a98] : sd t5, 1912(ra) -- Store: [0x80003a98]:0xFFFFFFFB33333332




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80001abc]:KMMAC_U t6, t5, t4
	-[0x80001ac0]:sd t6, 1920(ra)
Current Store : [0x80001ac4] : sd t5, 1928(ra) -- Store: [0x80003aa8]:0xFFFF4AFC00010000




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001ae4]:KMMAC_U t6, t5, t4
	-[0x80001ae8]:sd t6, 1936(ra)
Current Store : [0x80001aec] : sd t5, 1944(ra) -- Store: [0x80003ab8]:0x0000100000000008




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80001b14]:KMMAC_U t6, t5, t4
	-[0x80001b18]:sd t6, 1952(ra)
Current Store : [0x80001b1c] : sd t5, 1960(ra) -- Store: [0x80003ac8]:0xFFFF7FFF33333334




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001b34]:KMMAC_U t6, t5, t4
	-[0x80001b38]:sd t6, 1968(ra)
Current Store : [0x80001b3c] : sd t5, 1976(ra) -- Store: [0x80003ad8]:0x0000004080000000




Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -1025', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001b60]:KMMAC_U t6, t5, t4
	-[0x80001b64]:sd t6, 1984(ra)
Current Store : [0x80001b68] : sd t5, 1992(ra) -- Store: [0x80003ae8]:0x00000006FFFF7FFF




Last Coverpoint : ['rs2_w1_val == -17']
Last Code Sequence : 
	-[0x80001b88]:KMMAC_U t6, t5, t4
	-[0x80001b8c]:sd t6, 2000(ra)
Current Store : [0x80001b90] : sd t5, 2008(ra) -- Store: [0x80003af8]:0x0000002033333332





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

|s.no|            signature             |                                                                                     coverpoints                                                                                      |                                  code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000080003000|- opcode : kmmac.u<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 4<br> - rs2_w0_val == -9<br> - rs1_w1_val == 4<br> - rs1_w0_val == -9<br> |[0x800003b8]:KMMAC_U t1, t4, t4<br> [0x800003bc]:sd t1, 0(sp)<br>       |
|   2|[0x80003220]<br>0xC71C71C7FFFFFFFD|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -3<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -3<br>      |[0x800003e4]:KMMAC_U s1, s1, s1<br> [0x800003e8]:sd s1, 16(sp)<br>      |
|   3|[0x80003230]<br>0xE0D0210FBEADFEED|- rs1 : x22<br> - rs2 : x20<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -2097153<br>                              |[0x80000418]:KMMAC_U a7, s6, s4<br> [0x8000041c]:sd a7, 32(sp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFF9FFFBEFFF|- rs1 : x10<br> - rs2 : x15<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == -5<br> - rs1_w0_val == -262145<br>  |[0x80000444]:KMMAC_U a0, a0, a5<br> [0x80000448]:sd a0, 48(sp)<br>      |
|   5|[0x80003250]<br>0xC000000380000000|- rs1 : x6<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -17<br>                          |[0x80000470]:KMMAC_U a1, t1, a1<br> [0x80000474]:sd a1, 64(sp)<br>      |
|   6|[0x80003260]<br>0x7FFFFFFF7FBB6BAB|- rs1 : x19<br> - rs2 : x8<br> - rd : x3<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 2048<br>                                                   |[0x800004a0]:KMMAC_U gp, s3, fp<br> [0x800004a4]:sd gp, 80(sp)<br>      |
|   7|[0x80003270]<br>0xEDBEADF6EDBEB5FE|- rs1 : x1<br> - rs2 : x17<br> - rd : x25<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 128<br> - rs1_w0_val == 67108864<br>                          |[0x800004cc]:KMMAC_U s9, ra, a7<br> [0x800004d0]:sd s9, 96(sp)<br>      |
|   8|[0x80003280]<br>0xE03FFFFF00000804|- rs1 : x8<br> - rs2 : x1<br> - rd : x19<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -17<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -1073741825<br>                    |[0x800004f4]:KMMAC_U s3, fp, ra<br> [0x800004f8]:sd s3, 112(sp)<br>     |
|   9|[0x80003290]<br>0x7EFFFFFF04000000|- rs1 : x21<br> - rs2 : x13<br> - rd : x15<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 1073741824<br>                                                 |[0x8000051c]:KMMAC_U a5, s5, a3<br> [0x80000520]:sd a5, 128(sp)<br>     |
|  10|[0x800032a0]<br>0x7E06A8867D5BFDD9|- rs1 : x7<br> - rs2 : x28<br> - rd : x16<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 128<br>                                                     |[0x8000054c]:KMMAC_U a6, t2, t3<br> [0x80000550]:sd a6, 144(sp)<br>     |
|  11|[0x800032b0]<br>0x66266666FFFFFFF6|- rs1 : x13<br> - rs2 : x4<br> - rd : x22<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -33<br>                                                                                   |[0x80000580]:KMMAC_U s6, a3, tp<br> [0x80000584]:sd s6, 160(sp)<br>     |
|  12|[0x800032c0]<br>0xFEFFFFFFFFFFFFDF|- rs1 : x0<br> - rs2 : x30<br> - rd : x4<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                     |[0x800005ac]:KMMAC_U tp, zero, t5<br> [0x800005b0]:sd tp, 176(sp)<br>   |
|  13|[0x800032d0]<br>0xAA95555500000080|- rs1 : x28<br> - rs2 : x5<br> - rd : x7<br> - rs2_w1_val == -4194305<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -268435457<br>                                               |[0x800005dc]:KMMAC_U t2, t3, t0<br> [0x800005e0]:sd t2, 192(sp)<br>     |
|  14|[0x800032e0]<br>0x76D28A3278DF56FF|- rs1 : x12<br> - rs2 : x16<br> - rd : x26<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 1073741824<br>                                              |[0x80000608]:KMMAC_U s10, a2, a6<br> [0x8000060c]:sd s10, 208(sp)<br>   |
|  15|[0x800032f0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : x16<br> - rs2 : x6<br> - rd : x24<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -32769<br>                                                                                 |[0x80000634]:KMMAC_U s8, a6, t1<br> [0x80000638]:sd s8, 224(sp)<br>     |
|  16|[0x80003300]<br>0xF7FE6665FFFFFFEE|- rs1 : x15<br> - rs2 : x18<br> - rd : x1<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 8388608<br> - rs1_w0_val == -513<br>                                                        |[0x8000065c]:KMMAC_U ra, a5, s2<br> [0x80000660]:sd ra, 240(sp)<br>     |
|  17|[0x80003310]<br>0xF56FF76DF56FF76D|- rs1 : x30<br> - rs2 : x3<br> - rd : x14<br> - rs2_w1_val == -262145<br> - rs1_w0_val == -5<br>                                                                                      |[0x80000680]:KMMAC_U a4, t5, gp<br> [0x80000684]:sd a4, 256(sp)<br>     |
|  18|[0x80003320]<br>0xB6F9EB2EB6FAB7FB|- rs1 : x2<br> - rs2 : x21<br> - rd : x23<br> - rs2_w1_val == -131073<br>                                                                                                             |[0x800006b0]:KMMAC_U s7, sp, s5<br> [0x800006b4]:sd s7, 0(ra)<br>       |
|  19|[0x80003330]<br>0xFFFFCCD1FFFFFFFB|- rs1 : x26<br> - rs2 : x12<br> - rd : x30<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 1048576<br> - rs1_w0_val == -129<br>                                                        |[0x800006d8]:KMMAC_U t5, s10, a2<br> [0x800006dc]:sd t5, 16(ra)<br>     |
|  20|[0x80003340]<br>0xFFFEFFFF00100000|- rs1 : x5<br> - rs2 : x31<br> - rd : x12<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 0<br> - rs1_w0_val == 536870912<br>                                                          |[0x800006f8]:KMMAC_U a2, t0, t6<br> [0x800006fc]:sd a2, 32(ra)<br>      |
|  21|[0x80003350]<br>0x6666666619999798|- rs1 : x4<br> - rs2 : x19<br> - rd : x2<br> - rs2_w1_val == -16385<br> - rs1_w1_val == -262145<br>                                                                                   |[0x8000072c]:KMMAC_U sp, tp, s3<br> [0x80000730]:sd sp, 48(ra)<br>      |
|  22|[0x80003360]<br>0xFFFFF99120000010|- rs1 : x11<br> - rs2 : x23<br> - rd : x5<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == 32768<br>                                                         |[0x80000758]:KMMAC_U t0, a1, s7<br> [0x8000075c]:sd t0, 64(ra)<br>      |
|  23|[0x80003370]<br>0x55555D56FFDFFFFF|- rs1 : x25<br> - rs2 : x27<br> - rd : x20<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -65<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 8388608<br>                          |[0x80000780]:KMMAC_U s4, s9, s11<br> [0x80000784]:sd s4, 80(ra)<br>     |
|  24|[0x80003380]<br>0xFFFDFFFFFFFFFFDF|- rs1 : x31<br> - rs2 : x2<br> - rd : x21<br> - rs2_w1_val == -2049<br> - rs1_w1_val == -3<br> - rs1_w0_val == -1<br>                                                                 |[0x800007a8]:KMMAC_U s5, t6, sp<br> [0x800007ac]:sd s5, 96(ra)<br>      |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x14<br> - rd : x0<br> - rs2_w1_val == -1025<br> - rs1_w0_val == -32769<br>                                                                                    |[0x800007d4]:KMMAC_U zero, s8, a4<br> [0x800007d8]:sd zero, 112(ra)<br> |
|  26|[0x800033a0]<br>0xFFFFFFF5FFFFFFFF|- rs1 : x3<br> - rs2 : x7<br> - rd : x31<br> - rs2_w1_val == -513<br> - rs2_w0_val == -4097<br> - rs1_w1_val == 67108864<br>                                                          |[0x80000800]:KMMAC_U t6, gp, t2<br> [0x80000804]:sd t6, 128(ra)<br>     |
|  27|[0x800033b0]<br>0x00000004FFFFFFF7|- rs1 : x18<br> - rs2 : x25<br> - rd : x29<br> - rs2_w1_val == -257<br> - rs1_w0_val == 4194304<br>                                                                                   |[0x80000824]:KMMAC_U t4, s2, s9<br> [0x80000828]:sd t4, 144(ra)<br>     |
|  28|[0x800033c0]<br>0x55555555EFFFFFFF|- rs1 : x20<br> - rs2 : x26<br> - rd : x28<br> - rs2_w1_val == -129<br> - rs1_w1_val == 16384<br>                                                                                     |[0x80000850]:KMMAC_U t3, s4, s10<br> [0x80000854]:sd t3, 160(ra)<br>    |
|  29|[0x800033d0]<br>0xFFFFEFFFFD555514|- rs1 : x17<br> - rs2 : x10<br> - rd : x27<br> - rs2_w1_val == -65<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 134217728<br>                    |[0x80000878]:KMMAC_U s11, a7, a0<br> [0x8000087c]:sd s11, 176(ra)<br>   |
|  30|[0x800033e0]<br>0xFFFF4AFD0040000D|- rs1 : x27<br> - rs2 : x24<br> - rd : x18<br> - rs2_w1_val == -33<br> - rs2_w0_val == 32<br> - rs1_w1_val == 64<br>                                                                  |[0x800008a0]:KMMAC_U s2, s11, s8<br> [0x800008a4]:sd s2, 192(ra)<br>    |
|  31|[0x800033f0]<br>0x3FFFFFFF33333332|- rs1 : x23<br> - rs2 : x0<br> - rd : x13<br> - rs2_w1_val == 0<br> - rs1_w1_val == 32<br>                                                                                            |[0x800008c8]:KMMAC_U a3, s7, zero<br> [0x800008cc]:sd a3, 208(ra)<br>   |
|  32|[0x80003400]<br>0xF7FFFFFFBFFFFFFF|- rs1 : x14<br> - rs2 : x22<br> - rd : x8<br> - rs2_w1_val == -9<br> - rs2_w0_val == -513<br> - rs1_w1_val == -129<br> - rs1_w0_val == 64<br>                                         |[0x800008ec]:KMMAC_U fp, a4, s6<br> [0x800008f0]:sd fp, 224(ra)<br>     |
|  33|[0x80003410]<br>0xFFFFFFF8FFFFFF98|- rs2_w1_val == -5<br> - rs1_w0_val == -257<br>                                                                                                                                       |[0x80000918]:KMMAC_U t6, t5, t4<br> [0x8000091c]:sd t6, 240(ra)<br>     |
|  34|[0x80003420]<br>0xFFFFFFF7FFFFFF98|- rs2_w1_val == -3<br> - rs1_w0_val == 131072<br>                                                                                                                                     |[0x80000940]:KMMAC_U t6, t5, t4<br> [0x80000944]:sd t6, 256(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFF7FFFFFF98|- rs2_w1_val == -2<br> - rs2_w0_val == 64<br> - rs1_w1_val == -65<br> - rs1_w0_val == -1025<br>                                                                                       |[0x80000964]:KMMAC_U t6, t5, t4<br> [0x80000968]:sd t6, 272(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFF4FF7FFF98|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 33554432<br>                                                                                          |[0x8000098c]:KMMAC_U t6, t5, t4<br> [0x80000990]:sd t6, 288(ra)<br>     |
|  37|[0x80003450]<br>0x0003FFF4FF7FFF98|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 1048576<br>                                                                                                                            |[0x800009b0]:KMMAC_U t6, t5, t4<br> [0x800009b4]:sd t6, 304(ra)<br>     |
|  38|[0x80003460]<br>0x000407F4FF800F98|- rs2_w1_val == 536870912<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -65537<br>                                                                                               |[0x800009e0]:KMMAC_U t6, t5, t4<br> [0x800009e4]:sd t6, 320(ra)<br>     |
|  39|[0x80003470]<br>0x00041344FF800F98|- rs2_w1_val == 268435456<br> - rs1_w0_val == -2<br>                                                                                                                                  |[0x80000a18]:KMMAC_U t6, t5, t4<br> [0x80000a1c]:sd t6, 336(ra)<br>     |
|  40|[0x80003480]<br>0x00040D9CFF800F98|- rs2_w1_val == 134217728<br> - rs1_w0_val == -4194305<br>                                                                                                                            |[0x80000a40]:KMMAC_U t6, t5, t4<br> [0x80000a44]:sd t6, 352(ra)<br>     |
|  41|[0x80003490]<br>0x00040D9CFF800F97|- rs2_w1_val == 67108864<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 4<br>                                                                                                     |[0x80000a68]:KMMAC_U t6, t5, t4<br> [0x80000a6c]:sd t6, 368(ra)<br>     |
|  42|[0x800034a0]<br>0x00040D980F800F97|- rs2_w1_val == 33554432<br> - rs1_w1_val == -513<br>                                                                                                                                 |[0x80000a8c]:KMMAC_U t6, t5, t4<br> [0x80000a90]:sd t6, 384(ra)<br>     |
|  43|[0x800034b0]<br>0x00040CE30F800F9A|- rs2_w1_val == 16777216<br>                                                                                                                                                          |[0x80000ac4]:KMMAC_U t6, t5, t4<br> [0x80000ac8]:sd t6, 400(ra)<br>     |
|  44|[0x800034c0]<br>0x000408E30F800F9A|- rs2_w1_val == 8388608<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -33<br>                                                                                                       |[0x80000af4]:KMMAC_U t6, t5, t4<br> [0x80000af8]:sd t6, 416(ra)<br>     |
|  45|[0x800034d0]<br>0x000400E30FC00F9A|- rs2_w1_val == 4194304<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == -2097153<br>                                                                                                 |[0x80000b1c]:KMMAC_U t6, t5, t4<br> [0x80000b20]:sd t6, 432(ra)<br>     |
|  46|[0x800034e0]<br>0x000408E30FC00F9A|- rs2_w1_val == 2097152<br> - rs1_w1_val == 4194304<br>                                                                                                                               |[0x80000b54]:KMMAC_U t6, t5, t4<br> [0x80000b58]:sd t6, 448(ra)<br>     |
|  47|[0x800034f0]<br>0x000408E30FC00E9A|- rs2_w1_val == 1048576<br> - rs2_w0_val == 262144<br>                                                                                                                                |[0x80000b80]:KMMAC_U t6, t5, t4<br> [0x80000b84]:sd t6, 464(ra)<br>     |
|  48|[0x80003500]<br>0x000408E30FC00E9A|- rs2_w1_val == 524288<br> - rs2_w0_val == -257<br>                                                                                                                                   |[0x80000ba4]:KMMAC_U t6, t5, t4<br> [0x80000ba8]:sd t6, 480(ra)<br>     |
|  49|[0x80003510]<br>0x000408E30FC00D9A|- rs2_w1_val == 262144<br> - rs1_w1_val == 2<br>                                                                                                                                      |[0x80000bcc]:KMMAC_U t6, t5, t4<br> [0x80000bd0]:sd t6, 496(ra)<br>     |
|  50|[0x80003520]<br>0x000408E30FC00D9A|- rs2_w1_val == 131072<br> - rs1_w1_val == -1<br>                                                                                                                                     |[0x80000bec]:KMMAC_U t6, t5, t4<br> [0x80000bf0]:sd t6, 512(ra)<br>     |
|  51|[0x80003530]<br>0x00043C160FC00D9A|- rs2_w1_val == 65536<br>                                                                                                                                                             |[0x80000c10]:KMMAC_U t6, t5, t4<br> [0x80000c14]:sd t6, 528(ra)<br>     |
|  52|[0x80003540]<br>0x00043C160FC00D9A|- rs2_w1_val == 32768<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 256<br> - rs1_w0_val == 1<br>                                                                                  |[0x80000c38]:KMMAC_U t6, t5, t4<br> [0x80000c3c]:sd t6, 544(ra)<br>     |
|  53|[0x80003550]<br>0x00043C060FC00DA0|- rs2_w1_val == 16384<br> - rs2_w0_val == 16<br> - rs1_w1_val == -4194305<br>                                                                                                         |[0x80000c68]:KMMAC_U t6, t5, t4<br> [0x80000c6c]:sd t6, 560(ra)<br>     |
|  54|[0x80003560]<br>0x00043B060FC00DA0|- rs2_w1_val == 8192<br>                                                                                                                                                              |[0x80000c98]:KMMAC_U t6, t5, t4<br> [0x80000c9c]:sd t6, 576(ra)<br>     |
|  55|[0x80003570]<br>0x00043B060FC00DA0|- rs2_w1_val == 4096<br> - rs1_w0_val == -131073<br>                                                                                                                                  |[0x80000cc0]:KMMAC_U t6, t5, t4<br> [0x80000cc4]:sd t6, 592(ra)<br>     |
|  56|[0x80003580]<br>0x00043B060FC00D80|- rs2_w0_val == -16777217<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 8192<br>                                                                                                      |[0x80000ce8]:KMMAC_U t6, t5, t4<br> [0x80000cec]:sd t6, 608(ra)<br>     |
|  57|[0x80003590]<br>0x00043B060FC00E80|- rs2_w0_val == 268435456<br> - rs1_w0_val == 4096<br>                                                                                                                                |[0x80000d10]:KMMAC_U t6, t5, t4<br> [0x80000d14]:sd t6, 624(ra)<br>     |
|  58|[0x800035a0]<br>0x00043AE60FC00E80|- rs2_w0_val == 256<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 1024<br>                                                                                                            |[0x80000d38]:KMMAC_U t6, t5, t4<br> [0x80000d3c]:sd t6, 640(ra)<br>     |
|  59|[0x800035b0]<br>0x00043AE60FC00E80|- rs2_w0_val == -129<br> - rs1_w0_val == 512<br>                                                                                                                                      |[0x80000d54]:KMMAC_U t6, t5, t4<br> [0x80000d58]:sd t6, 656(ra)<br>     |
|  60|[0x800035c0]<br>0x0004383B0FC00E78|- rs2_w1_val == 2048<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 256<br>                                                                                                       |[0x80000d80]:KMMAC_U t6, t5, t4<br> [0x80000d84]:sd t6, 672(ra)<br>     |
|  61|[0x800035d0]<br>0x000438300FC00E78|- rs1_w0_val == 32<br>                                                                                                                                                                |[0x80000da8]:KMMAC_U t6, t5, t4<br> [0x80000dac]:sd t6, 688(ra)<br>     |
|  62|[0x800035e0]<br>0x000438300FC00E7E|- rs2_w1_val == 128<br> - rs1_w0_val == 16<br>                                                                                                                                        |[0x80000dd0]:KMMAC_U t6, t5, t4<br> [0x80000dd4]:sd t6, 704(ra)<br>     |
|  63|[0x800035f0]<br>0x0003F8300FC00E7E|- rs1_w1_val == 33554432<br> - rs1_w0_val == 8<br>                                                                                                                                    |[0x80000df8]:KMMAC_U t6, t5, t4<br> [0x80000dfc]:sd t6, 720(ra)<br>     |
|  64|[0x80003600]<br>0xFF03F8300FC00E7E|- rs1_w0_val == 2<br>                                                                                                                                                                 |[0x80000e1c]:KMMAC_U t6, t5, t4<br> [0x80000e20]:sd t6, 736(ra)<br>     |
|  65|[0x80003610]<br>0xFF03F8300FC00E7E|- rs2_w1_val == 1024<br>                                                                                                                                                              |[0x80000e4c]:KMMAC_U t6, t5, t4<br> [0x80000e50]:sd t6, 752(ra)<br>     |
|  66|[0x80003620]<br>0xFF03F7B00FC00E7E|- rs2_w1_val == 512<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -1048577<br>                                                                                                  |[0x80000e78]:KMMAC_U t6, t5, t4<br> [0x80000e7c]:sd t6, 768(ra)<br>     |
|  67|[0x80003630]<br>0xFF03F7B10FC00E7E|- rs2_w1_val == 256<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -2097153<br>                                                                                                     |[0x80000ea0]:KMMAC_U t6, t5, t4<br> [0x80000ea4]:sd t6, 784(ra)<br>     |
|  68|[0x80003640]<br>0xFF03F7C60FC00FE8|- rs2_w1_val == 64<br> - rs1_w0_val == -33554433<br>                                                                                                                                  |[0x80000ed4]:KMMAC_U t6, t5, t4<br> [0x80000ed8]:sd t6, 800(ra)<br>     |
|  69|[0x80003650]<br>0xFF03F7C60FC00FE8|- rs2_w1_val == 32<br> - rs2_w0_val == -1<br> - rs1_w1_val == -32769<br>                                                                                                              |[0x80000ef8]:KMMAC_U t6, t5, t4<br> [0x80000efc]:sd t6, 816(ra)<br>     |
|  70|[0x80003660]<br>0xFF03F7C60FC00F33|- rs2_w1_val == 16<br>                                                                                                                                                                |[0x80000f24]:KMMAC_U t6, t5, t4<br> [0x80000f28]:sd t6, 832(ra)<br>     |
|  71|[0x80003670]<br>0xFF03F7C60FC00F34|- rs2_w1_val == 8<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 1048576<br>                                                                                                            |[0x80000f4c]:KMMAC_U t6, t5, t4<br> [0x80000f50]:sd t6, 848(ra)<br>     |
|  72|[0x80003680]<br>0xFF03F7C60FC00F34|- rs2_w1_val == 2<br>                                                                                                                                                                 |[0x80000f74]:KMMAC_U t6, t5, t4<br> [0x80000f78]:sd t6, 864(ra)<br>     |
|  73|[0x80003690]<br>0xFF03F7C60FC00B34|- rs2_w1_val == 1<br> - rs2_w0_val == -8193<br>                                                                                                                                       |[0x80000f98]:KMMAC_U t6, t5, t4<br> [0x80000f9c]:sd t6, 880(ra)<br>     |
|  74|[0x800036a0]<br>0xFF03F7C60FBFB5DE|- rs2_w0_val == 1431655765<br>                                                                                                                                                        |[0x80000fc4]:KMMAC_U t6, t5, t4<br> [0x80000fc8]:sd t6, 896(ra)<br>     |
|  75|[0x800036b0]<br>0xFF03F7C60FBFB5DF|- rs2_w1_val == -1<br>                                                                                                                                                                |[0x80000fec]:KMMAC_U t6, t5, t4<br> [0x80000ff0]:sd t6, 912(ra)<br>     |
|  76|[0x800036c0]<br>0xFF03F7CA0FBFF5DF|- rs2_w0_val == 2147483647<br>                                                                                                                                                        |[0x80001018]:KMMAC_U t6, t5, t4<br> [0x8000101c]:sd t6, 928(ra)<br>     |
|  77|[0x800036d0]<br>0xFF03F7B50FBFF5DF|- rs2_w0_val == -33554433<br>                                                                                                                                                         |[0x80001048]:KMMAC_U t6, t5, t4<br> [0x8000104c]:sd t6, 944(ra)<br>     |
|  78|[0x800036e0]<br>0xFF03F7B60FBFF5DF|- rs2_w0_val == -8388609<br>                                                                                                                                                          |[0x80001078]:KMMAC_U t6, t5, t4<br> [0x8000107c]:sd t6, 960(ra)<br>     |
|  79|[0x800036f0]<br>0xFF042AE90FC1F5DF|- rs2_w0_val == -4194305<br> - rs1_w1_val == 65536<br> - rs1_w0_val == -134217729<br>                                                                                                 |[0x800010ac]:KMMAC_U t6, t5, t4<br> [0x800010b0]:sd t6, 976(ra)<br>     |
|  80|[0x80003700]<br>0xFF042AE90FC1F5DF|- rs2_w0_val == -524289<br> - rs1_w1_val == 16<br>                                                                                                                                    |[0x800010d4]:KMMAC_U t6, t5, t4<br> [0x800010d8]:sd t6, 992(ra)<br>     |
|  81|[0x80003710]<br>0xFF042AE80FC1F5DE|- rs2_w0_val == -131073<br> - rs1_w1_val == -2<br> - rs1_w0_val == 16384<br>                                                                                                          |[0x80001104]:KMMAC_U t6, t5, t4<br> [0x80001108]:sd t6, 1008(ra)<br>    |
|  82|[0x80003720]<br>0xFF59803E0FC1F5DE|- rs2_w0_val == -65537<br>                                                                                                                                                            |[0x80001134]:KMMAC_U t6, t5, t4<br> [0x80001138]:sd t6, 1024(ra)<br>    |
|  83|[0x80003730]<br>0xFF59803F0FC1F5DE|- rs2_w0_val == -16385<br>                                                                                                                                                            |[0x80001164]:KMMAC_U t6, t5, t4<br> [0x80001168]:sd t6, 1040(ra)<br>    |
|  84|[0x80003740]<br>0xFF59803F0FC1F5DE|- rs2_w0_val == -2049<br>                                                                                                                                                             |[0x80001184]:KMMAC_U t6, t5, t4<br> [0x80001188]:sd t6, 1056(ra)<br>    |
|  85|[0x80003750]<br>0xFF59803F0FC1F5E0|- rs2_w0_val == -5<br> - rs1_w0_val == -1431655766<br>                                                                                                                                |[0x800011b4]:KMMAC_U t6, t5, t4<br> [0x800011b8]:sd t6, 1072(ra)<br>    |
|  86|[0x80003760]<br>0xFF59803F0FC1F5E0|- rs2_w0_val == -2<br>                                                                                                                                                                |[0x800011dc]:KMMAC_U t6, t5, t4<br> [0x800011e0]:sd t6, 1088(ra)<br>    |
|  87|[0x80003770]<br>0xFF59803F0FC1F620|- rs2_w0_val == 1073741824<br>                                                                                                                                                        |[0x800011fc]:KMMAC_U t6, t5, t4<br> [0x80001200]:sd t6, 1104(ra)<br>    |
|  88|[0x80003780]<br>0xFF59803F0FC1F5E0|- rs2_w0_val == 536870912<br>                                                                                                                                                         |[0x8000121c]:KMMAC_U t6, t5, t4<br> [0x80001220]:sd t6, 1120(ra)<br>    |
|  89|[0x80003790]<br>0xFF59803D0FC1F5E0|- rs2_w0_val == 33554432<br>                                                                                                                                                          |[0x80001248]:KMMAC_U t6, t5, t4<br> [0x8000124c]:sd t6, 1136(ra)<br>    |
|  90|[0x800037a0]<br>0xFF59803D0FC1F5DD|- rs2_w0_val == 8<br>                                                                                                                                                                 |[0x80001274]:KMMAC_U t6, t5, t4<br> [0x80001278]:sd t6, 1152(ra)<br>    |
|  91|[0x800037b0]<br>0xFF59803F0FC1F5DD|- rs2_w0_val == 4<br>                                                                                                                                                                 |[0x80001298]:KMMAC_U t6, t5, t4<br> [0x8000129c]:sd t6, 1168(ra)<br>    |
|  92|[0x800037c0]<br>0x14AED5940FC1F5DE|- rs2_w0_val == 2<br>                                                                                                                                                                 |[0x800012d4]:KMMAC_U t6, t5, t4<br> [0x800012d8]:sd t6, 1184(ra)<br>    |
|  93|[0x800037d0]<br>0x14AED58F0FC1F5DE|- rs2_w0_val == 1<br>                                                                                                                                                                 |[0x800012fc]:KMMAC_U t6, t5, t4<br> [0x80001300]:sd t6, 1200(ra)<br>    |
|  94|[0x800037e0]<br>0x14AED58E0FC1F5DE|- rs1_w1_val == 2147483647<br>                                                                                                                                                        |[0x80001328]:KMMAC_U t6, t5, t4<br> [0x8000132c]:sd t6, 1216(ra)<br>    |
|  95|[0x800037f0]<br>0x14AED58E0FC1F5DE|- rs1_w1_val == -268435457<br>                                                                                                                                                        |[0x80001354]:KMMAC_U t6, t5, t4<br> [0x80001358]:sd t6, 1232(ra)<br>    |
|  96|[0x80003800]<br>0x14AED5920FC1F5DE|- rs1_w1_val == -67108865<br>                                                                                                                                                         |[0x8000137c]:KMMAC_U t6, t5, t4<br> [0x80001380]:sd t6, 1248(ra)<br>    |
|  97|[0x80003810]<br>0x14AFD5920FC1F5DE|- rs1_w1_val == -33554433<br>                                                                                                                                                         |[0x800013b0]:KMMAC_U t6, t5, t4<br> [0x800013b4]:sd t6, 1264(ra)<br>    |
|  98|[0x80003820]<br>0x14AFD53719FF6682|- rs1_w1_val == -8388609<br>                                                                                                                                                          |[0x800013f0]:KMMAC_U t6, t5, t4<br> [0x800013f4]:sd t6, 1280(ra)<br>    |
|  99|[0x80003830]<br>0x14AA7FE119FF667F|- rs1_w1_val == -1048577<br>                                                                                                                                                          |[0x8000142c]:KMMAC_U t6, t5, t4<br> [0x80001430]:sd t6, 1296(ra)<br>    |
| 100|[0x80003840]<br>0x14AA7FE119FF667E|- rs2_w0_val == 8192<br> - rs1_w1_val == -131073<br>                                                                                                                                  |[0x80001458]:KMMAC_U t6, t5, t4<br> [0x8000145c]:sd t6, 1312(ra)<br>    |
| 101|[0x80003850]<br>0x14AA8FE119FF667E|- rs1_w1_val == -65537<br> - rs1_w0_val == -8193<br>                                                                                                                                  |[0x80001484]:KMMAC_U t6, t5, t4<br> [0x80001488]:sd t6, 1328(ra)<br>    |
| 102|[0x80003860]<br>0x14AA8FE119FF1E16|- rs1_w1_val == -16385<br>                                                                                                                                                            |[0x800014b4]:KMMAC_U t6, t5, t4<br> [0x800014b8]:sd t6, 1344(ra)<br>    |
| 103|[0x80003870]<br>0x14AA8FE119FF1E16|- rs1_w1_val == -4097<br>                                                                                                                                                             |[0x800014dc]:KMMAC_U t6, t5, t4<br> [0x800014e0]:sd t6, 1360(ra)<br>    |
| 104|[0x80003880]<br>0x14AA8CAD19FF1E15|- rs1_w1_val == -2049<br> - rs1_w0_val == -16385<br>                                                                                                                                  |[0x8000150c]:KMMAC_U t6, t5, t4<br> [0x80001510]:sd t6, 1376(ra)<br>    |
| 105|[0x80003890]<br>0x14AA8CA519FF1E15|- rs1_w1_val == -257<br> - rs1_w0_val == 262144<br>                                                                                                                                   |[0x80001534]:KMMAC_U t6, t5, t4<br> [0x80001538]:sd t6, 1392(ra)<br>    |
| 106|[0x800038a0]<br>0x14AA8CA519FF1E15|- rs1_w1_val == -33<br>                                                                                                                                                               |[0x80001558]:KMMAC_U t6, t5, t4<br> [0x8000155c]:sd t6, 1408(ra)<br>    |
| 107|[0x800038b0]<br>0x14AA8CA519FF1E15|- rs1_w1_val == -9<br>                                                                                                                                                                |[0x8000157c]:KMMAC_U t6, t5, t4<br> [0x80001580]:sd t6, 1424(ra)<br>    |
| 108|[0x800038c0]<br>0x0CAA8CA519FF1E17|- rs2_w0_val == 16384<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 524288<br>                                                                                                    |[0x800015a8]:KMMAC_U t6, t5, t4<br> [0x800015ac]:sd t6, 1440(ra)<br>    |
| 109|[0x800038d0]<br>0x0CEA8CA519FF1E17|- rs2_w0_val == 524288<br> - rs1_w1_val == 268435456<br>                                                                                                                              |[0x800015d0]:KMMAC_U t6, t5, t4<br> [0x800015d4]:sd t6, 1456(ra)<br>    |
| 110|[0x800038e0]<br>0x0F95375019FF1E17|- rs1_w1_val == 134217728<br>                                                                                                                                                         |[0x80001604]:KMMAC_U t6, t5, t4<br> [0x80001608]:sd t6, 1472(ra)<br>    |
| 111|[0x800038f0]<br>0x0F95374E19FF2017|- rs1_w1_val == 8388608<br> - rs1_w0_val == -8388609<br>                                                                                                                              |[0x80001634]:KMMAC_U t6, t5, t4<br> [0x80001638]:sd t6, 1488(ra)<br>    |
| 112|[0x80003900]<br>0x0F95374E19FF2017|- rs1_w1_val == 2097152<br>                                                                                                                                                           |[0x80001658]:KMMAC_U t6, t5, t4<br> [0x8000165c]:sd t6, 1504(ra)<br>    |
| 113|[0x80003910]<br>0x0F95374E19FF2017|- rs1_w1_val == 524288<br> - rs1_w0_val == -524289<br>                                                                                                                                |[0x80001680]:KMMAC_U t6, t5, t4<br> [0x80001684]:sd t6, 1520(ra)<br>    |
| 114|[0x80003920]<br>0x0F95374A19FF2017|- rs1_w1_val == 1024<br>                                                                                                                                                              |[0x800016ac]:KMMAC_U t6, t5, t4<br> [0x800016b0]:sd t6, 1536(ra)<br>    |
| 115|[0x80003930]<br>0x0F95374A19FF2017|- rs1_w1_val == 512<br>                                                                                                                                                               |[0x800016d4]:KMMAC_U t6, t5, t4<br> [0x800016d8]:sd t6, 1552(ra)<br>    |
| 116|[0x80003940]<br>0x0F95374919FF2017|- rs1_w1_val == 8<br>                                                                                                                                                                 |[0x800016fc]:KMMAC_U t6, t5, t4<br> [0x80001700]:sd t6, 1568(ra)<br>    |
| 117|[0x80003950]<br>0x0F9539F419FF2016|- rs1_w1_val == 2048<br>                                                                                                                                                              |[0x80001728]:KMMAC_U t6, t5, t4<br> [0x8000172c]:sd t6, 1584(ra)<br>    |
| 118|[0x80003960]<br>0x0F9539F419FF5C6C|- rs1_w1_val == 1<br>                                                                                                                                                                 |[0x80001754]:KMMAC_U t6, t5, t4<br> [0x80001758]:sd t6, 1600(ra)<br>    |
| 119|[0x80003970]<br>0x0F9539F43C217E8E|- rs1_w0_val == 1431655765<br>                                                                                                                                                        |[0x80001780]:KMMAC_U t6, t5, t4<br> [0x80001784]:sd t6, 1616(ra)<br>    |
| 120|[0x80003980]<br>0x0F9539F13C217E8E|- rs2_w0_val == 512<br>                                                                                                                                                               |[0x800017a8]:KMMAC_U t6, t5, t4<br> [0x800017ac]:sd t6, 1632(ra)<br>    |
| 121|[0x80003990]<br>0x0F8D39F13C217E91|- rs1_w0_val == 2147483647<br>                                                                                                                                                        |[0x800017d4]:KMMAC_U t6, t5, t4<br> [0x800017d8]:sd t6, 1648(ra)<br>    |
| 122|[0x800039a0]<br>0x0F8D39F13C2167F0|- rs1_w0_val == -536870913<br>                                                                                                                                                        |[0x80001804]:KMMAC_U t6, t5, t4<br> [0x80001808]:sd t6, 1664(ra)<br>    |
| 123|[0x800039b0]<br>0x0F8D39EE3C216870|- rs1_w0_val == -67108865<br>                                                                                                                                                         |[0x80001834]:KMMAC_U t6, t5, t4<br> [0x80001838]:sd t6, 1680(ra)<br>    |
| 124|[0x800039c0]<br>0x0F8D39EE3C2167F0|- rs2_w0_val == 32768<br> - rs1_w0_val == -16777217<br>                                                                                                                               |[0x80001850]:KMMAC_U t6, t5, t4<br> [0x80001854]:sd t6, 1696(ra)<br>    |
| 125|[0x800039d0]<br>0x0F8D39EE3C216795|- rs1_w1_val == 8192<br>                                                                                                                                                              |[0x80001880]:KMMAC_U t6, t5, t4<br> [0x80001884]:sd t6, 1712(ra)<br>    |
| 126|[0x800039e0]<br>0x0F8D39EE3C216797|- rs2_w0_val == 4096<br> - rs1_w0_val == 2097152<br>                                                                                                                                  |[0x800018ac]:KMMAC_U t6, t5, t4<br> [0x800018b0]:sd t6, 1728(ra)<br>    |
| 127|[0x800039f0]<br>0x0F8D39F43C216241|- rs1_w0_val == -4097<br>                                                                                                                                                             |[0x800018e4]:KMMAC_U t6, t5, t4<br> [0x800018e8]:sd t6, 1744(ra)<br>    |
| 128|[0x80003a00]<br>0x0F8D39F43C216241|- rs1_w0_val == -2049<br>                                                                                                                                                             |[0x80001914]:KMMAC_U t6, t5, t4<br> [0x80001918]:sd t6, 1760(ra)<br>    |
| 129|[0x80003a10]<br>0x0F8D39F43C216241|- rs1_w0_val == -65<br>                                                                                                                                                               |[0x80001948]:KMMAC_U t6, t5, t4<br> [0x8000194c]:sd t6, 1776(ra)<br>    |
| 130|[0x80003a20]<br>0x0F8D39F43C216241|- rs1_w0_val == -17<br>                                                                                                                                                               |[0x80001970]:KMMAC_U t6, t5, t4<br> [0x80001974]:sd t6, 1792(ra)<br>    |
| 131|[0x80003a30]<br>0x0F8D41F43C2E2F0E|- rs2_w0_val == 4194304<br> - rs1_w1_val == 131072<br>                                                                                                                                |[0x800019a4]:KMMAC_U t6, t5, t4<br> [0x800019a8]:sd t6, 1808(ra)<br>    |
| 132|[0x80003a40]<br>0x0F8D3F203C2E2F0E|- rs1_w0_val == 268435456<br>                                                                                                                                                         |[0x800019cc]:KMMAC_U t6, t5, t4<br> [0x800019d0]:sd t6, 1824(ra)<br>    |
| 133|[0x80003a50]<br>0x0F8D3F203C2E2F0D|- rs1_w0_val == 16777216<br>                                                                                                                                                          |[0x800019f0]:KMMAC_U t6, t5, t4<br> [0x800019f4]:sd t6, 1840(ra)<br>    |
| 134|[0x80003a60]<br>0x0F8D3F203C2E2F0C|- rs2_w0_val == 65536<br>                                                                                                                                                             |[0x80001a20]:KMMAC_U t6, t5, t4<br> [0x80001a24]:sd t6, 1856(ra)<br>    |
| 135|[0x80003a70]<br>0x0F8D3F203C2E2F0C|- rs1_w1_val == 262144<br>                                                                                                                                                            |[0x80001a48]:KMMAC_U t6, t5, t4<br> [0x80001a4c]:sd t6, 1872(ra)<br>    |
| 136|[0x80003a80]<br>0x0F8D3F203C2E2F0C|- rs1_w1_val == 32768<br>                                                                                                                                                             |[0x80001a68]:KMMAC_U t6, t5, t4<br> [0x80001a6c]:sd t6, 1888(ra)<br>    |
| 137|[0x80003a90]<br>0x0F8D3F203C2E2FD9|- rs2_w0_val == 1024<br>                                                                                                                                                              |[0x80001a90]:KMMAC_U t6, t5, t4<br> [0x80001a94]:sd t6, 1904(ra)<br>    |
| 138|[0x80003aa0]<br>0x0F8D3F203C2E2FD9|- rs1_w0_val == 65536<br>                                                                                                                                                             |[0x80001abc]:KMMAC_U t6, t5, t4<br> [0x80001ac0]:sd t6, 1920(ra)<br>    |
| 139|[0x80003ab0]<br>0x0F8D3F203C2E2FD9|- rs1_w1_val == 4096<br>                                                                                                                                                              |[0x80001ae4]:KMMAC_U t6, t5, t4<br> [0x80001ae8]:sd t6, 1936(ra)<br>    |
| 140|[0x80003ac0]<br>0x0F8D5F203C2E2FF3|- rs2_w0_val == 128<br>                                                                                                                                                               |[0x80001b14]:KMMAC_U t6, t5, t4<br> [0x80001b18]:sd t6, 1952(ra)<br>    |
| 141|[0x80003ad0]<br>0x0F8D5F203C2E2FF8|- rs1_w0_val == -2147483648<br>                                                                                                                                                       |[0x80001b34]:KMMAC_U t6, t5, t4<br> [0x80001b38]:sd t6, 1968(ra)<br>    |
| 142|[0x80003af0]<br>0x0F8D5F203C2E7CC4|- rs2_w1_val == -17<br>                                                                                                                                                               |[0x80001b88]:KMMAC_U t6, t5, t4<br> [0x80001b8c]:sd t6, 2000(ra)<br>    |
