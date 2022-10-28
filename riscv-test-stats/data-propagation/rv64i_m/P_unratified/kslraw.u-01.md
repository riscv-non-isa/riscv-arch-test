
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a60')]      |
| SIG_REGION                | [('0x80003210', '0x80003ac0', '278 dwords')]      |
| COV_LABELS                | kslraw.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslraw.u-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 278      |
| STAT1                     | 137      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 139     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017b4]:KSLRAW_U t6, t5, t4
      [0x800017b8]:sd t6, 1664(t0)
 -- Signature Address: 0x800039b0 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 262144
      - rs2_w0_val == -65537
      - rs1_w1_val == 4294966783
      - rs1_w0_val == 4294901759




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a48]:KSLRAW_U t6, t5, t4
      [0x80001a4c]:sd t6, 1920(t0)
 -- Signature Address: 0x80003ab0 Data: 0x0000000010000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -33
      - rs2_w0_val == 1073741824
      - rs1_w1_val == 8192
      - rs1_w0_val == 268435456






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x29', 'rs2 : x29', 'rd : x20', 'rs1 == rs2 != rd', 'rs2_w1_val == -129', 'rs2_w0_val == -65537', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800003bc]:KSLRAW_U s4, t4, t4
	-[0x800003c0]:sd s4, 0(fp)
Current Store : [0x800003c4] : sd t4, 8(fp) -- Store: [0x80003218]:0xFFFFFF7FFFFEFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x31', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 16384', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800003e8]:KSLRAW_U t6, t6, t6
	-[0x800003ec]:sd t6, 16(fp)
Current Store : [0x800003f0] : sd t6, 24(fp) -- Store: [0x80003228]:0x0000000000004000




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -32769', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000418]:KSLRAW_U t3, s11, a5
	-[0x8000041c]:sd t3, 32(fp)
Current Store : [0x80000420] : sd s11, 40(fp) -- Store: [0x80003238]:0x0400000000000005




Last Coverpoint : ['rs1 : x18', 'rs2 : x12', 'rd : x18', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -257', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000440]:KSLRAW_U s2, s2, a2
	-[0x80000444]:sd s2, 48(fp)
Current Store : [0x80000448] : sd s2, 56(fp) -- Store: [0x80003248]:0xFFFFFFFFFF000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x22', 'rd : x22', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 536870912', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x8000046c]:KSLRAW_U s6, s5, s6
	-[0x80000470]:sd s6, 64(fp)
Current Store : [0x80000474] : sd s5, 72(fp) -- Store: [0x80003258]:0xFBFFFFFF0000000F




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rd : x17', 'rs2_w1_val == -536870913', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000498]:KSLRAW_U a7, s1, t1
	-[0x8000049c]:sd a7, 80(fp)
Current Store : [0x800004a0] : sd s1, 88(fp) -- Store: [0x80003268]:0x0000000E0000000C




Last Coverpoint : ['rs1 : x6', 'rs2 : x27', 'rd : x5', 'rs2_w1_val == -268435457', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800004cc]:KSLRAW_U t0, t1, s11
	-[0x800004d0]:sd t0, 96(fp)
Current Store : [0x800004d4] : sd t1, 104(fp) -- Store: [0x80003278]:0xFFFEFFFF00020000




Last Coverpoint : ['rs1 : x0', 'rs2 : x4', 'rd : x6', 'rs1_w0_val == 0', 'rs2_w1_val == -134217729', 'rs2_w0_val == -1', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800004f0]:KSLRAW_U t1, zero, tp
	-[0x800004f4]:sd t1, 112(fp)
Current Store : [0x800004f8] : sd zero, 120(fp) -- Store: [0x80003288]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x21', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 262144', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000520]:KSLRAW_U s5, gp, zero
	-[0x80000524]:sd s5, 128(fp)
Current Store : [0x80000528] : sd gp, 136(fp) -- Store: [0x80003298]:0x00040000FFFFFFFE




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x7', 'rs2_w1_val == -33554433', 'rs2_w0_val == -67108865', 'rs1_w1_val == 134217728', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000550]:KSLRAW_U t2, s4, t5
	-[0x80000554]:sd t2, 144(fp)
Current Store : [0x80000558] : sd s4, 152(fp) -- Store: [0x800032a8]:0x0800000000010000




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x19', 'rs2_w1_val == -16777217', 'rs2_w0_val == -131073', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000057c]:KSLRAW_U s3, a4, t2
	-[0x80000580]:sd s3, 160(fp)
Current Store : [0x80000584] : sd a4, 168(fp) -- Store: [0x800032b8]:0x0000000B00400000




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x1', 'rs2_w1_val == -8388609', 'rs2_w0_val == 1024', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800005a8]:KSLRAW_U ra, s7, gp
	-[0x800005ac]:sd ra, 176(fp)
Current Store : [0x800005b0] : sd s7, 184(fp) -- Store: [0x800032c8]:0xFFFFF7FFFFFFBFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x23', 'rs2_w1_val == -4194305', 'rs2_w0_val == 1', 'rs1_w1_val == 4294967291', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800005d4]:KSLRAW_U s7, t0, s5
	-[0x800005d8]:sd s7, 192(fp)
Current Store : [0x800005dc] : sd t0, 200(fp) -- Store: [0x800032d8]:0xFFFFFFFBFFFBFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x9', 'rs2_w1_val == -2097153', 'rs2_w0_val == 1048576', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80000600]:KSLRAW_U s1, ra, s4
	-[0x80000604]:sd s1, 208(fp)
Current Store : [0x80000608] : sd ra, 216(fp) -- Store: [0x800032e8]:0x0000001000400000




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x30', 'rs2_w1_val == -1048577', 'rs2_w0_val == 4', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000634]:KSLRAW_U t5, a5, t0
	-[0x80000638]:sd t5, 224(fp)
Current Store : [0x8000063c] : sd a5, 232(fp) -- Store: [0x800032f8]:0xFFFDFFFF55555555




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x25', 'rs2_w1_val == -524289', 'rs2_w0_val == -65', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x8000065c]:KSLRAW_U s9, s6, a1
	-[0x80000660]:sd s9, 240(fp)
Current Store : [0x80000664] : sd s6, 248(fp) -- Store: [0x80003308]:0xFEFFFFFF00000200




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x26', 'rs2_w1_val == -262145', 'rs2_w0_val == 65536', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000068c]:KSLRAW_U s10, sp, t3
	-[0x80000690]:sd s10, 256(fp)
Current Store : [0x80000694] : sd sp, 264(fp) -- Store: [0x80003318]:0x0400000000001000




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x2', 'rs2_w1_val == -131073', 'rs2_w0_val == -129', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800006b0]:KSLRAW_U sp, a3, a4
	-[0x800006b4]:sd sp, 272(fp)
Current Store : [0x800006b8] : sd a3, 280(fp) -- Store: [0x80003328]:0x000040000000000D




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rd : x24', 'rs2_w1_val == -65537', 'rs2_w0_val == 2048', 'rs1_w1_val == 512', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800006e8]:KSLRAW_U s8, s10, s3
	-[0x800006ec]:sd s8, 0(t0)
Current Store : [0x800006f0] : sd s10, 8(t0) -- Store: [0x80003338]:0x0000020000000010




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x16', 'rs2_w1_val == -32769', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000714]:KSLRAW_U a6, a2, sp
	-[0x80000718]:sd a6, 16(t0)
Current Store : [0x8000071c] : sd a2, 24(t0) -- Store: [0x80003348]:0x00000006FFEFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x11', 'rs2_w1_val == -16385', 'rs2_w0_val == 8', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x8000073c]:KSLRAW_U a1, t3, s9
	-[0x80000740]:sd a1, 32(t0)
Current Store : [0x80000744] : sd t3, 40(t0) -- Store: [0x80003358]:0x0200000000000006




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x3', 'rs2_w1_val == -8193', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000768]:KSLRAW_U gp, a7, s2
	-[0x8000076c]:sd gp, 48(t0)
Current Store : [0x80000770] : sd a7, 56(t0) -- Store: [0x80003368]:0x00002000FFFBFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x26', 'rd : x15', 'rs2_w1_val == -4097', 'rs2_w0_val == 8388608', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000788]:KSLRAW_U a5, s3, s10
	-[0x8000078c]:sd a5, 64(t0)
Current Store : [0x80000790] : sd s3, 72(t0) -- Store: [0x80003378]:0x0000000508000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x17', 'rd : x29', 'rs2_w1_val == -2049', 'rs2_w0_val == 524288', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800007a8]:KSLRAW_U t4, a1, a7
	-[0x800007ac]:sd t4, 80(t0)
Current Store : [0x800007b0] : sd a1, 88(t0) -- Store: [0x80003388]:0x0000000F02000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rd : x10', 'rs2_w1_val == -1025', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800007d0]:KSLRAW_U a0, t2, s7
	-[0x800007d4]:sd a0, 96(t0)
Current Store : [0x800007d8] : sd t2, 104(t0) -- Store: [0x80003398]:0x0000200004000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x14', 'rs2_w1_val == -513', 'rs2_w0_val == 131072', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800007f4]:KSLRAW_U a4, a6, a3
	-[0x800007f8]:sd a4, 112(t0)
Current Store : [0x800007fc] : sd a6, 120(t0) -- Store: [0x800033a8]:0x0000000200000200




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x13', 'rs2_w1_val == -257', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000828]:KSLRAW_U a3, a0, ra
	-[0x8000082c]:sd a3, 128(t0)
Current Store : [0x80000830] : sd a0, 136(t0) -- Store: [0x800033b8]:0x40000000FFFBFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x16', 'rd : x8', 'rs2_w1_val == -65', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80000854]:KSLRAW_U fp, s9, a6
	-[0x80000858]:sd fp, 144(t0)
Current Store : [0x8000085c] : sd s9, 152(t0) -- Store: [0x800033c8]:0x0000000AFFEFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x0', 'rs2_w1_val == -33', 'rs2_w0_val == 1073741824', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000874]:KSLRAW_U zero, tp, s8
	-[0x80000878]:sd zero, 160(t0)
Current Store : [0x8000087c] : sd tp, 168(t0) -- Store: [0x800033d8]:0x0000200010000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x4', 'rs2_w1_val == -17']
Last Code Sequence : 
	-[0x8000089c]:KSLRAW_U tp, t5, s1
	-[0x800008a0]:sd tp, 176(t0)
Current Store : [0x800008a4] : sd t5, 184(t0) -- Store: [0x800033e8]:0xFFFEFFFF0000000B




Last Coverpoint : ['rs1 : x8', 'rs2 : x10', 'rd : x27', 'rs2_w1_val == -9', 'rs2_w0_val == -8388609', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800008c8]:KSLRAW_U s11, fp, a0
	-[0x800008cc]:sd s11, 192(t0)
Current Store : [0x800008d0] : sd fp, 200(t0) -- Store: [0x800033f8]:0xFEFFFFFF00800000




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x12', 'rs2_w1_val == -5', 'rs2_w0_val == 33554432', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800008e8]:KSLRAW_U a2, s8, fp
	-[0x800008ec]:sd a2, 208(t0)
Current Store : [0x800008f0] : sd s8, 216(t0) -- Store: [0x80003408]:0x0000000AFFFFFDFF




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -4194305', 'rs1_w1_val == 1024', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000914]:KSLRAW_U t6, t5, t4
	-[0x80000918]:sd t6, 224(t0)
Current Store : [0x8000091c] : sd t5, 232(t0) -- Store: [0x80003418]:0x00000400FFBFFFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -268435457', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000938]:KSLRAW_U t6, t5, t4
	-[0x8000093c]:sd t6, 240(t0)
Current Store : [0x80000940] : sd t5, 248(t0) -- Store: [0x80003428]:0x0000000B01000000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w1_val == 8388608', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000964]:KSLRAW_U t6, t5, t4
	-[0x80000968]:sd t6, 256(t0)
Current Store : [0x8000096c] : sd t5, 264(t0) -- Store: [0x80003438]:0x00800000FFFFFFEF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 512', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000990]:KSLRAW_U t6, t5, t4
	-[0x80000994]:sd t6, 272(t0)
Current Store : [0x80000998] : sd t5, 280(t0) -- Store: [0x80003448]:0xFFFFBFFFFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800009b4]:KSLRAW_U t6, t5, t4
	-[0x800009b8]:sd t6, 288(t0)
Current Store : [0x800009bc] : sd t5, 296(t0) -- Store: [0x80003458]:0x0000001000000007




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800009e8]:KSLRAW_U t6, t5, t4
	-[0x800009ec]:sd t6, 304(t0)
Current Store : [0x800009f0] : sd t5, 312(t0) -- Store: [0x80003468]:0x02000000FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000a10]:KSLRAW_U t6, t5, t4
	-[0x80000a14]:sd t6, 320(t0)
Current Store : [0x80000a18] : sd t5, 328(t0) -- Store: [0x80003478]:0x0000000B0000000D




Last Coverpoint : ['rs2_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000a3c]:KSLRAW_U t6, t5, t4
	-[0x80000a40]:sd t6, 336(t0)
Current Store : [0x80000a44] : sd t5, 344(t0) -- Store: [0x80003488]:0x08000000FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80000a68]:KSLRAW_U t6, t5, t4
	-[0x80000a6c]:sd t6, 352(t0)
Current Store : [0x80000a70] : sd t5, 360(t0) -- Store: [0x80003498]:0xFFFFFFDF00000007




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000a88]:KSLRAW_U t6, t5, t4
	-[0x80000a8c]:sd t6, 368(t0)
Current Store : [0x80000a90] : sd t5, 376(t0) -- Store: [0x800034a8]:0x0000000600000008




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000aac]:KSLRAW_U t6, t5, t4
	-[0x80000ab0]:sd t6, 384(t0)
Current Store : [0x80000ab4] : sd t5, 392(t0) -- Store: [0x800034b8]:0x0000020020000000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 64', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000ad8]:KSLRAW_U t6, t5, t4
	-[0x80000adc]:sd t6, 400(t0)
Current Store : [0x80000ae0] : sd t5, 408(t0) -- Store: [0x800034c8]:0x00000040FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000b08]:KSLRAW_U t6, t5, t4
	-[0x80000b0c]:sd t6, 416(t0)
Current Store : [0x80000b10] : sd t5, 424(t0) -- Store: [0x800034d8]:0xFFFEFFFFFFFFF7FF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000b34]:KSLRAW_U t6, t5, t4
	-[0x80000b38]:sd t6, 432(t0)
Current Store : [0x80000b3c] : sd t5, 440(t0) -- Store: [0x800034e8]:0x0000000510000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000b5c]:KSLRAW_U t6, t5, t4
	-[0x80000b60]:sd t6, 448(t0)
Current Store : [0x80000b64] : sd t5, 456(t0) -- Store: [0x800034f8]:0x00100000FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80000b84]:KSLRAW_U t6, t5, t4
	-[0x80000b88]:sd t6, 464(t0)
Current Store : [0x80000b8c] : sd t5, 472(t0) -- Store: [0x80003508]:0xFFFF7FFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 4294967293', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ba8]:KSLRAW_U t6, t5, t4
	-[0x80000bac]:sd t6, 480(t0)
Current Store : [0x80000bb0] : sd t5, 488(t0) -- Store: [0x80003518]:0xFFFFFFFD00008000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000be4]:KSLRAW_U t6, t5, t4
	-[0x80000be8]:sd t6, 496(t0)
Current Store : [0x80000bec] : sd t5, 504(t0) -- Store: [0x80003528]:0x00200000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 2', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c08]:KSLRAW_U t6, t5, t4
	-[0x80000c0c]:sd t6, 512(t0)
Current Store : [0x80000c10] : sd t5, 520(t0) -- Store: [0x80003538]:0x0000200000080000




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000c30]:KSLRAW_U t6, t5, t4
	-[0x80000c34]:sd t6, 528(t0)
Current Store : [0x80000c38] : sd t5, 536(t0) -- Store: [0x80003548]:0x000000120000000E




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == -536870913', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80000c60]:KSLRAW_U t6, t5, t4
	-[0x80000c64]:sd t6, 544(t0)
Current Store : [0x80000c68] : sd t5, 552(t0) -- Store: [0x80003558]:0xDFFFFFFF00008000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c84]:KSLRAW_U t6, t5, t4
	-[0x80000c88]:sd t6, 560(t0)
Current Store : [0x80000c8c] : sd t5, 568(t0) -- Store: [0x80003568]:0x0020000000000040




Last Coverpoint : ['rs2_w0_val == -1073741825', 'rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80000cb4]:KSLRAW_U t6, t5, t4
	-[0x80000cb8]:sd t6, 576(t0)
Current Store : [0x80000cbc] : sd t5, 584(t0) -- Store: [0x80003578]:0xEFFFFFFF00004000




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w1_val == 131072', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cdc]:KSLRAW_U t6, t5, t4
	-[0x80000ce0]:sd t6, 592(t0)
Current Store : [0x80000ce4] : sd t5, 600(t0) -- Store: [0x80003588]:0x0002000000002000




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d04]:KSLRAW_U t6, t5, t4
	-[0x80000d08]:sd t6, 608(t0)
Current Store : [0x80000d0c] : sd t5, 616(t0) -- Store: [0x80003598]:0x0000000C00000800




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d28]:KSLRAW_U t6, t5, t4
	-[0x80000d2c]:sd t6, 624(t0)
Current Store : [0x80000d30] : sd t5, 632(t0) -- Store: [0x800035a8]:0x0000000D00000400




Last Coverpoint : ['rs2_w0_val == 1431655765', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d58]:KSLRAW_U t6, t5, t4
	-[0x80000d5c]:sd t6, 640(t0)
Current Store : [0x80000d60] : sd t5, 648(t0) -- Store: [0x800035b8]:0x0000020000000100




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d7c]:KSLRAW_U t6, t5, t4
	-[0x80000d80]:sd t6, 656(t0)
Current Store : [0x80000d84] : sd t5, 664(t0) -- Store: [0x800035c8]:0xFFFFFFFF00000080




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000da0]:KSLRAW_U t6, t5, t4
	-[0x80000da4]:sd t6, 672(t0)
Current Store : [0x80000da8] : sd t5, 680(t0) -- Store: [0x800035d8]:0x0000400000000020




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000dc4]:KSLRAW_U t6, t5, t4
	-[0x80000dc8]:sd t6, 688(t0)
Current Store : [0x80000dcc] : sd t5, 696(t0) -- Store: [0x800035e8]:0xFFFFFFDF00000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000dec]:KSLRAW_U t6, t5, t4
	-[0x80000df0]:sd t6, 704(t0)
Current Store : [0x80000df4] : sd t5, 712(t0) -- Store: [0x800035f8]:0x0000000F00000002




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e10]:KSLRAW_U t6, t5, t4
	-[0x80000e14]:sd t6, 720(t0)
Current Store : [0x80000e18] : sd t5, 728(t0) -- Store: [0x80003608]:0x0000200000000001




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000e38]:KSLRAW_U t6, t5, t4
	-[0x80000e3c]:sd t6, 736(t0)
Current Store : [0x80000e40] : sd t5, 744(t0) -- Store: [0x80003618]:0x0000000BFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == 128', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000e5c]:KSLRAW_U t6, t5, t4
	-[0x80000e60]:sd t6, 752(t0)
Current Store : [0x80000e64] : sd t5, 760(t0) -- Store: [0x80003628]:0x00000011FFFFFFDF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000e80]:KSLRAW_U t6, t5, t4
	-[0x80000e84]:sd t6, 768(t0)
Current Store : [0x80000e88] : sd t5, 776(t0) -- Store: [0x80003638]:0x0000040000100000




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000ea8]:KSLRAW_U t6, t5, t4
	-[0x80000eac]:sd t6, 784(t0)
Current Store : [0x80000eb0] : sd t5, 792(t0) -- Store: [0x80003648]:0x0008000008000000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 134217728', 'rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80000ec8]:KSLRAW_U t6, t5, t4
	-[0x80000ecc]:sd t6, 800(t0)
Current Store : [0x80000ed0] : sd t5, 808(t0) -- Store: [0x80003658]:0xFFFFFFF700000000




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000ef0]:KSLRAW_U t6, t5, t4
	-[0x80000ef4]:sd t6, 816(t0)
Current Store : [0x80000ef8] : sd t5, 824(t0) -- Store: [0x80003668]:0x0001000000010000




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == -1025', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000f1c]:KSLRAW_U t6, t5, t4
	-[0x80000f20]:sd t6, 832(t0)
Current Store : [0x80000f24] : sd t5, 840(t0) -- Store: [0x80003678]:0x5555555520000000




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000f40]:KSLRAW_U t6, t5, t4
	-[0x80000f44]:sd t6, 848(t0)
Current Store : [0x80000f48] : sd t5, 856(t0) -- Store: [0x80003688]:0x0000000B0000000B




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000f68]:KSLRAW_U t6, t5, t4
	-[0x80000f6c]:sd t6, 864(t0)
Current Store : [0x80000f70] : sd t5, 872(t0) -- Store: [0x80003698]:0x40000000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000f8c]:KSLRAW_U t6, t5, t4
	-[0x80000f90]:sd t6, 880(t0)
Current Store : [0x80000f94] : sd t5, 888(t0) -- Store: [0x800036a8]:0x00040000FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80000fb4]:KSLRAW_U t6, t5, t4
	-[0x80000fb8]:sd t6, 896(t0)
Current Store : [0x80000fbc] : sd t5, 904(t0) -- Store: [0x800036b8]:0xEFFFFFFF00400000




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x80000fe0]:KSLRAW_U t6, t5, t4
	-[0x80000fe4]:sd t6, 912(t0)
Current Store : [0x80000fe8] : sd t5, 920(t0) -- Store: [0x800036c8]:0xFFFFFDFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == -1', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x80001000]:KSLRAW_U t6, t5, t4
	-[0x80001004]:sd t6, 928(t0)
Current Store : [0x80001008] : sd t5, 936(t0) -- Store: [0x800036d8]:0x0000001200000200




Last Coverpoint : ['rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001030]:KSLRAW_U t6, t5, t4
	-[0x80001034]:sd t6, 944(t0)
Current Store : [0x80001038] : sd t5, 952(t0) -- Store: [0x800036e8]:0xFFFFFFFB00002000




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001050]:KSLRAW_U t6, t5, t4
	-[0x80001054]:sd t6, 960(t0)
Current Store : [0x80001058] : sd t5, 968(t0) -- Store: [0x800036f8]:0x0010000000000003




Last Coverpoint : ['rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001080]:KSLRAW_U t6, t5, t4
	-[0x80001084]:sd t6, 976(t0)
Current Store : [0x80001088] : sd t5, 984(t0) -- Store: [0x80003708]:0xFBFFFFFF00000008




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w1_val == 1', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800010a8]:KSLRAW_U t6, t5, t4
	-[0x800010ac]:sd t6, 992(t0)
Current Store : [0x800010b0] : sd t5, 1000(t0) -- Store: [0x80003718]:0x000000017FFFFFFF




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x800010d4]:KSLRAW_U t6, t5, t4
	-[0x800010d8]:sd t6, 1008(t0)
Current Store : [0x800010dc] : sd t5, 1016(t0) -- Store: [0x80003728]:0x0000000A00000100




Last Coverpoint : ['rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80001100]:KSLRAW_U t6, t5, t4
	-[0x80001104]:sd t6, 1024(t0)
Current Store : [0x80001108] : sd t5, 1032(t0) -- Store: [0x80003738]:0xFFFFFF7F00001000




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001128]:KSLRAW_U t6, t5, t4
	-[0x8000112c]:sd t6, 1040(t0)
Current Store : [0x80001130] : sd t5, 1048(t0) -- Store: [0x80003748]:0x0000000D00000002




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80001158]:KSLRAW_U t6, t5, t4
	-[0x8000115c]:sd t6, 1056(t0)
Current Store : [0x80001160] : sd t5, 1064(t0) -- Store: [0x80003758]:0x00000007FFFFFFDF




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80001180]:KSLRAW_U t6, t5, t4
	-[0x80001184]:sd t6, 1072(t0)
Current Store : [0x80001188] : sd t5, 1080(t0) -- Store: [0x80003768]:0xDFFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_w0_val == -513', 'rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x800011ac]:KSLRAW_U t6, t5, t4
	-[0x800011b0]:sd t6, 1088(t0)
Current Store : [0x800011b4] : sd t5, 1096(t0) -- Store: [0x80003778]:0xFFBFFFFF0000000A




Last Coverpoint : ['rs2_w0_val == -17']
Last Code Sequence : 
	-[0x800011d8]:KSLRAW_U t6, t5, t4
	-[0x800011dc]:sd t6, 1104(t0)
Current Store : [0x800011e0] : sd t5, 1112(t0) -- Store: [0x80003788]:0x02000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80001200]:KSLRAW_U t6, t5, t4
	-[0x80001204]:sd t6, 1120(t0)
Current Store : [0x80001208] : sd t5, 1128(t0) -- Store: [0x80003798]:0x00000013FFFDFFFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001224]:KSLRAW_U t6, t5, t4
	-[0x80001228]:sd t6, 1136(t0)
Current Store : [0x8000122c] : sd t5, 1144(t0) -- Store: [0x800037a8]:0x00000040FFFFFDFF




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80001250]:KSLRAW_U t6, t5, t4
	-[0x80001254]:sd t6, 1152(t0)
Current Store : [0x80001258] : sd t5, 1160(t0) -- Store: [0x800037b8]:0xAAAAAAAAFFFFFFFD




Last Coverpoint : ['rs1_w1_val == 2147483647', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x8000127c]:KSLRAW_U t6, t5, t4
	-[0x80001280]:sd t6, 1168(t0)
Current Store : [0x80001284] : sd t5, 1176(t0) -- Store: [0x800037c8]:0x7FFFFFFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x800012a8]:KSLRAW_U t6, t5, t4
	-[0x800012ac]:sd t6, 1184(t0)
Current Store : [0x800012b0] : sd t5, 1192(t0) -- Store: [0x800037d8]:0xBFFFFFFF00000007




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x800012d4]:KSLRAW_U t6, t5, t4
	-[0x800012d8]:sd t6, 1200(t0)
Current Store : [0x800012dc] : sd t5, 1208(t0) -- Store: [0x800037e8]:0xF7FFFFFF00000400




Last Coverpoint : ['rs1_w1_val == 4261412863']
Last Code Sequence : 
	-[0x80001308]:KSLRAW_U t6, t5, t4
	-[0x8000130c]:sd t6, 1216(t0)
Current Store : [0x80001310] : sd t5, 1224(t0) -- Store: [0x800037f8]:0xFDFFFFFF00004000




Last Coverpoint : ['rs1_w1_val == 4286578687', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80001334]:KSLRAW_U t6, t5, t4
	-[0x80001338]:sd t6, 1232(t0)
Current Store : [0x8000133c] : sd t5, 1240(t0) -- Store: [0x80003808]:0xFF7FFFFF00040000




Last Coverpoint : ['rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x8000135c]:KSLRAW_U t6, t5, t4
	-[0x80001360]:sd t6, 1248(t0)
Current Store : [0x80001364] : sd t5, 1256(t0) -- Store: [0x80003818]:0xFFDFFFFF00000012




Last Coverpoint : ['rs1_w1_val == 4293918719', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001388]:KSLRAW_U t6, t5, t4
	-[0x8000138c]:sd t6, 1264(t0)
Current Store : [0x80001390] : sd t5, 1272(t0) -- Store: [0x80003828]:0xFFEFFFFF00200000




Last Coverpoint : ['rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x800013b0]:KSLRAW_U t6, t5, t4
	-[0x800013b4]:sd t6, 1280(t0)
Current Store : [0x800013b8] : sd t5, 1288(t0) -- Store: [0x80003838]:0xFFF7FFFF00000800




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w1_val == 4294705151', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800013d4]:KSLRAW_U t6, t5, t4
	-[0x800013d8]:sd t6, 1296(t0)
Current Store : [0x800013dc] : sd t5, 1304(t0) -- Store: [0x80003848]:0xFFFBFFFFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x80001408]:KSLRAW_U t6, t5, t4
	-[0x8000140c]:sd t6, 1312(t0)
Current Store : [0x80001410] : sd t5, 1320(t0) -- Store: [0x80003858]:0xFFFFDFFF00004000




Last Coverpoint : ['rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x8000143c]:KSLRAW_U t6, t5, t4
	-[0x80001440]:sd t6, 1328(t0)
Current Store : [0x80001444] : sd t5, 1336(t0) -- Store: [0x80003868]:0xFFFFEFFFFFFFEFFF




Last Coverpoint : ['rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80001460]:KSLRAW_U t6, t5, t4
	-[0x80001464]:sd t6, 1344(t0)
Current Store : [0x80001468] : sd t5, 1352(t0) -- Store: [0x80003878]:0xFFFFFBFF0000000B




Last Coverpoint : ['rs1_w1_val == 4294967039']
Last Code Sequence : 
	-[0x80001488]:KSLRAW_U t6, t5, t4
	-[0x8000148c]:sd t6, 1360(t0)
Current Store : [0x80001490] : sd t5, 1368(t0) -- Store: [0x80003888]:0xFFFFFEFF00020000




Last Coverpoint : ['rs1_w1_val == 4294967231', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800014bc]:KSLRAW_U t6, t5, t4
	-[0x800014c0]:sd t6, 1376(t0)
Current Store : [0x800014c4] : sd t5, 1384(t0) -- Store: [0x80003898]:0xFFFFFFBFFF7FFFFF




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x800014e0]:KSLRAW_U t6, t5, t4
	-[0x800014e4]:sd t6, 1392(t0)
Current Store : [0x800014e8] : sd t5, 1400(t0) -- Store: [0x800038a8]:0xFFFFFFEF00000008




Last Coverpoint : ['rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001504]:KSLRAW_U t6, t5, t4
	-[0x80001508]:sd t6, 1408(t0)
Current Store : [0x8000150c] : sd t5, 1416(t0) -- Store: [0x800038b8]:0xFFFFFFFEFFFFFFEF




Last Coverpoint : ['rs1_w1_val == 2147483648', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80001538]:KSLRAW_U t6, t5, t4
	-[0x8000153c]:sd t6, 1424(t0)
Current Store : [0x80001540] : sd t5, 1432(t0) -- Store: [0x800038c8]:0x8000000080000000




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001560]:KSLRAW_U t6, t5, t4
	-[0x80001564]:sd t6, 1440(t0)
Current Store : [0x80001568] : sd t5, 1448(t0) -- Store: [0x800038d8]:0x2000000000000009




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80001598]:KSLRAW_U t6, t5, t4
	-[0x8000159c]:sd t6, 1456(t0)
Current Store : [0x800015a0] : sd t5, 1464(t0) -- Store: [0x800038e8]:0x10000000FEFFFFFF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800015c4]:KSLRAW_U t6, t5, t4
	-[0x800015c8]:sd t6, 1472(t0)
Current Store : [0x800015cc] : sd t5, 1480(t0) -- Store: [0x800038f8]:0x01000000FFFFFFFF




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800015e8]:KSLRAW_U t6, t5, t4
	-[0x800015ec]:sd t6, 1488(t0)
Current Store : [0x800015f0] : sd t5, 1496(t0) -- Store: [0x80003908]:0x00000100FFFFFFFE




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001610]:KSLRAW_U t6, t5, t4
	-[0x80001614]:sd t6, 1504(t0)
Current Store : [0x80001618] : sd t5, 1512(t0) -- Store: [0x80003918]:0x0000008000000009




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001638]:KSLRAW_U t6, t5, t4
	-[0x8000163c]:sd t6, 1520(t0)
Current Store : [0x80001640] : sd t5, 1528(t0) -- Store: [0x80003928]:0x0000002000200000




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001660]:KSLRAW_U t6, t5, t4
	-[0x80001664]:sd t6, 1536(t0)
Current Store : [0x80001668] : sd t5, 1544(t0) -- Store: [0x80003938]:0x0000000800000006




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001688]:KSLRAW_U t6, t5, t4
	-[0x8000168c]:sd t6, 1552(t0)
Current Store : [0x80001690] : sd t5, 1560(t0) -- Store: [0x80003948]:0x00000004FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800016b0]:KSLRAW_U t6, t5, t4
	-[0x800016b4]:sd t6, 1568(t0)
Current Store : [0x800016b8] : sd t5, 1576(t0) -- Store: [0x80003958]:0x00000000FFFFFFBF




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800016e0]:KSLRAW_U t6, t5, t4
	-[0x800016e4]:sd t6, 1584(t0)
Current Store : [0x800016e8] : sd t5, 1592(t0) -- Store: [0x80003968]:0x00020000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80001704]:KSLRAW_U t6, t5, t4
	-[0x80001708]:sd t6, 1600(t0)
Current Store : [0x8000170c] : sd t5, 1608(t0) -- Store: [0x80003978]:0xFFEFFFFFBFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x8000172c]:KSLRAW_U t6, t5, t4
	-[0x80001730]:sd t6, 1616(t0)
Current Store : [0x80001734] : sd t5, 1624(t0) -- Store: [0x80003988]:0x00004000EFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80001750]:KSLRAW_U t6, t5, t4
	-[0x80001754]:sd t6, 1632(t0)
Current Store : [0x80001758] : sd t5, 1640(t0) -- Store: [0x80003998]:0x00000008F7FFFFFF




Last Coverpoint : ['rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80001780]:KSLRAW_U t6, t5, t4
	-[0x80001784]:sd t6, 1648(t0)
Current Store : [0x80001788] : sd t5, 1656(t0) -- Store: [0x800039a8]:0x00000009FFF7FFFF




Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 262144', 'rs2_w0_val == -65537', 'rs1_w1_val == 4294966783', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800017b4]:KSLRAW_U t6, t5, t4
	-[0x800017b8]:sd t6, 1664(t0)
Current Store : [0x800017bc] : sd t5, 1672(t0) -- Store: [0x800039b8]:0xFFFFFDFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800017e4]:KSLRAW_U t6, t5, t4
	-[0x800017e8]:sd t6, 1680(t0)
Current Store : [0x800017ec] : sd t5, 1688(t0) -- Store: [0x800039c8]:0x08000000FFFF7FFF




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000180c]:KSLRAW_U t6, t5, t4
	-[0x80001810]:sd t6, 1696(t0)
Current Store : [0x80001814] : sd t5, 1704(t0) -- Store: [0x800039d8]:0xFFFFFFEFFFFFFBFF




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001830]:KSLRAW_U t6, t5, t4
	-[0x80001834]:sd t6, 1712(t0)
Current Store : [0x80001838] : sd t5, 1720(t0) -- Store: [0x800039e8]:0x00080000FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 4194304', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80001858]:KSLRAW_U t6, t5, t4
	-[0x8000185c]:sd t6, 1728(t0)
Current Store : [0x80001860] : sd t5, 1736(t0) -- Store: [0x800039f8]:0x00400000FFFFFFF7




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001884]:KSLRAW_U t6, t5, t4
	-[0x80001888]:sd t6, 1744(t0)
Current Store : [0x8000188c] : sd t5, 1752(t0) -- Store: [0x80003a08]:0xDFFFFFFFFFFFBFFF




Last Coverpoint : ['rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800018a8]:KSLRAW_U t6, t5, t4
	-[0x800018ac]:sd t6, 1760(t0)
Current Store : [0x800018b0] : sd t5, 1768(t0) -- Store: [0x80003a18]:0x0000000AFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800018d0]:KSLRAW_U t6, t5, t4
	-[0x800018d4]:sd t6, 1776(t0)
Current Store : [0x800018d8] : sd t5, 1784(t0) -- Store: [0x80003a28]:0x00000006F7FFFFFF




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800018f0]:KSLRAW_U t6, t5, t4
	-[0x800018f4]:sd t6, 1792(t0)
Current Store : [0x800018f8] : sd t5, 1800(t0) -- Store: [0x80003a38]:0xFFFFEFFF40000000




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000191c]:KSLRAW_U t6, t5, t4
	-[0x80001920]:sd t6, 1808(t0)
Current Store : [0x80001924] : sd t5, 1816(t0) -- Store: [0x80003a48]:0x00000010FFFFEFFF




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80001950]:KSLRAW_U t6, t5, t4
	-[0x80001954]:sd t6, 1824(t0)
Current Store : [0x80001958] : sd t5, 1832(t0) -- Store: [0x80003a58]:0xFFFEFFFFFFFFBFFF




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000197c]:KSLRAW_U t6, t5, t4
	-[0x80001980]:sd t6, 1840(t0)
Current Store : [0x80001984] : sd t5, 1848(t0) -- Store: [0x80003a68]:0x0000080000100000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800019b0]:KSLRAW_U t6, t5, t4
	-[0x800019b4]:sd t6, 1856(t0)
Current Store : [0x800019b8] : sd t5, 1864(t0) -- Store: [0x80003a78]:0x00008000FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800019d0]:KSLRAW_U t6, t5, t4
	-[0x800019d4]:sd t6, 1872(t0)
Current Store : [0x800019d8] : sd t5, 1880(t0) -- Store: [0x80003a88]:0x00001000FFFFFDFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800019f8]:KSLRAW_U t6, t5, t4
	-[0x800019fc]:sd t6, 1888(t0)
Current Store : [0x80001a00] : sd t5, 1896(t0) -- Store: [0x80003a98]:0x0000008000000100




Last Coverpoint : ['rs2_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001a28]:KSLRAW_U t6, t5, t4
	-[0x80001a2c]:sd t6, 1904(t0)
Current Store : [0x80001a30] : sd t5, 1912(t0) -- Store: [0x80003aa8]:0x00040000FFFFFFFE




Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -33', 'rs2_w0_val == 1073741824', 'rs1_w1_val == 8192', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a48]:KSLRAW_U t6, t5, t4
	-[0x80001a4c]:sd t6, 1920(t0)
Current Store : [0x80001a50] : sd t5, 1928(t0) -- Store: [0x80003ab8]:0x0000200010000000





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

|s.no|            signature             |                                                                                                  coverpoints                                                                                                   |                                  code                                   |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFF8000|- opcode : kslraw.u<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -129<br> - rs2_w0_val == -65537<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 4294901759<br> |[0x800003bc]:KSLRAW_U s4, t4, t4<br> [0x800003c0]:sd s4, 0(fp)<br>       |
|   2|[0x80003220]<br>0x0000000000004000|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 16384<br>                        |[0x800003e8]:KSLRAW_U t6, t6, t6<br> [0x800003ec]:sd t6, 16(fp)<br>      |
|   3|[0x80003230]<br>0x0000000000000003|- rs1 : x27<br> - rs2 : x15<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -32769<br> - rs1_w1_val == 67108864<br>                             |[0x80000418]:KSLRAW_U t3, s11, a5<br> [0x8000041c]:sd t3, 32(fp)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFFFF000000|- rs1 : x18<br> - rs2 : x12<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -257<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 4261412863<br>                     |[0x80000440]:KSLRAW_U s2, s2, a2<br> [0x80000444]:sd s2, 48(fp)<br>      |
|   5|[0x80003250]<br>0x000000000000000F|- rs1 : x21<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 4227858431<br>                                              |[0x8000046c]:KSLRAW_U s6, s5, s6<br> [0x80000470]:sd s6, 64(fp)<br>      |
|   6|[0x80003260]<br>0x0000000000000006|- rs1 : x9<br> - rs2 : x6<br> - rd : x17<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -16777217<br>                                                                                                       |[0x80000498]:KSLRAW_U a7, s1, t1<br> [0x8000049c]:sd a7, 80(fp)<br>      |
|   7|[0x80003270]<br>0x0000000000010000|- rs1 : x6<br> - rs2 : x27<br> - rd : x5<br> - rs2_w1_val == -268435457<br> - rs1_w0_val == 131072<br>                                                                                                          |[0x800004cc]:KSLRAW_U t0, t1, s11<br> [0x800004d0]:sd t0, 96(fp)<br>     |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x4<br> - rd : x6<br> - rs1_w0_val == 0<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -1<br> - rs1_w1_val == 0<br>                                                                   |[0x800004f0]:KSLRAW_U t1, zero, tp<br> [0x800004f4]:sd t1, 112(fp)<br>   |
|   9|[0x80003290]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x3<br> - rs2 : x0<br> - rd : x21<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 4294967294<br>                                                              |[0x80000520]:KSLRAW_U s5, gp, zero<br> [0x80000524]:sd s5, 128(fp)<br>   |
|  10|[0x800032a0]<br>0x0000000000008000|- rs1 : x20<br> - rs2 : x30<br> - rd : x7<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 65536<br>                                               |[0x80000550]:KSLRAW_U t2, s4, t5<br> [0x80000554]:sd t2, 144(fp)<br>     |
|  11|[0x800032b0]<br>0x0000000000200000|- rs1 : x14<br> - rs2 : x7<br> - rd : x19<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 4194304<br>                                                                             |[0x8000057c]:KSLRAW_U s3, a4, t2<br> [0x80000580]:sd s3, 160(fp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFBFFF|- rs1 : x23<br> - rs2 : x3<br> - rd : x1<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 4294950911<br>                                                |[0x800005a8]:KSLRAW_U ra, s7, gp<br> [0x800005ac]:sd ra, 176(fp)<br>     |
|  13|[0x800032d0]<br>0xFFFFFFFFFFF7FFFE|- rs1 : x5<br> - rs2 : x21<br> - rd : x23<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 1<br> - rs1_w1_val == 4294967291<br> - rs1_w0_val == 4294705151<br>                                                  |[0x800005d4]:KSLRAW_U s7, t0, s5<br> [0x800005d8]:sd s7, 192(fp)<br>     |
|  14|[0x800032e0]<br>0x0000000000400000|- rs1 : x1<br> - rs2 : x20<br> - rd : x9<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 16<br>                                                                                    |[0x80000600]:KSLRAW_U s1, ra, s4<br> [0x80000604]:sd s1, 208(fp)<br>     |
|  15|[0x800032f0]<br>0x000000007FFFFFFF|- rs1 : x15<br> - rs2 : x5<br> - rd : x30<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 1431655765<br>                                                  |[0x80000634]:KSLRAW_U t5, a5, t0<br> [0x80000638]:sd t5, 224(fp)<br>     |
|  16|[0x80003300]<br>0x0000000000000100|- rs1 : x22<br> - rs2 : x11<br> - rd : x25<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -65<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 512<br>                                                       |[0x8000065c]:KSLRAW_U s9, s6, a1<br> [0x80000660]:sd s9, 240(fp)<br>     |
|  17|[0x80003310]<br>0x0000000000001000|- rs1 : x2<br> - rs2 : x28<br> - rd : x26<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 65536<br> - rs1_w0_val == 4096<br>                                                                                    |[0x8000068c]:KSLRAW_U s10, sp, t3<br> [0x80000690]:sd s10, 256(fp)<br>   |
|  18|[0x80003320]<br>0x0000000000000007|- rs1 : x13<br> - rs2 : x14<br> - rd : x2<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -129<br> - rs1_w1_val == 16384<br>                                                                                    |[0x800006b0]:KSLRAW_U sp, a3, a4<br> [0x800006b4]:sd sp, 272(fp)<br>     |
|  19|[0x80003330]<br>0x0000000000000010|- rs1 : x26<br> - rs2 : x19<br> - rd : x24<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 512<br> - rs1_w0_val == 16<br>                                                               |[0x800006e8]:KSLRAW_U s8, s10, s3<br> [0x800006ec]:sd s8, 0(t0)<br>      |
|  20|[0x80003340]<br>0xFFFFFFFFFDFFFFE0|- rs1 : x12<br> - rs2 : x2<br> - rd : x16<br> - rs2_w1_val == -32769<br> - rs1_w0_val == 4293918719<br>                                                                                                         |[0x80000714]:KSLRAW_U a6, a2, sp<br> [0x80000718]:sd a6, 16(t0)<br>      |
|  21|[0x80003350]<br>0x0000000000000600|- rs1 : x28<br> - rs2 : x25<br> - rd : x11<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 8<br> - rs1_w1_val == 33554432<br>                                                                                    |[0x8000073c]:KSLRAW_U a1, t3, s9<br> [0x80000740]:sd a1, 32(t0)<br>      |
|  22|[0x80003360]<br>0xFFFFFFFFFFFE0000|- rs1 : x17<br> - rs2 : x18<br> - rd : x3<br> - rs2_w1_val == -8193<br> - rs1_w1_val == 8192<br>                                                                                                                |[0x80000768]:KSLRAW_U gp, a7, s2<br> [0x8000076c]:sd gp, 48(t0)<br>      |
|  23|[0x80003370]<br>0x0000000008000000|- rs1 : x19<br> - rs2 : x26<br> - rd : x15<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 8388608<br> - rs1_w0_val == 134217728<br>                                                                              |[0x80000788]:KSLRAW_U a5, s3, s10<br> [0x8000078c]:sd a5, 64(t0)<br>     |
|  24|[0x80003380]<br>0x0000000002000000|- rs1 : x11<br> - rs2 : x17<br> - rd : x29<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 524288<br> - rs1_w0_val == 33554432<br>                                                                                |[0x800007a8]:KSLRAW_U t4, a1, a7<br> [0x800007ac]:sd t4, 80(t0)<br>      |
|  25|[0x80003390]<br>0x0000000002000000|- rs1 : x7<br> - rs2 : x23<br> - rd : x10<br> - rs2_w1_val == -1025<br> - rs1_w0_val == 67108864<br>                                                                                                            |[0x800007d0]:KSLRAW_U a0, t2, s7<br> [0x800007d4]:sd a0, 96(t0)<br>      |
|  26|[0x800033a0]<br>0x0000000000000200|- rs1 : x16<br> - rs2 : x13<br> - rd : x14<br> - rs2_w1_val == -513<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 2<br>                                                                                        |[0x800007f4]:KSLRAW_U a4, a6, a3<br> [0x800007f8]:sd a4, 112(t0)<br>     |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFE0000|- rs1 : x10<br> - rs2 : x1<br> - rd : x13<br> - rs2_w1_val == -257<br> - rs1_w1_val == 1073741824<br>                                                                                                           |[0x80000828]:KSLRAW_U a3, a0, ra<br> [0x8000082c]:sd a3, 128(t0)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFFFFF80000|- rs1 : x25<br> - rs2 : x16<br> - rd : x8<br> - rs2_w1_val == -65<br> - rs2_w0_val == -2049<br>                                                                                                                 |[0x80000854]:KSLRAW_U fp, s9, a6<br> [0x80000858]:sd fp, 144(t0)<br>     |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x24<br> - rd : x0<br> - rs2_w1_val == -33<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 268435456<br>                                                                               |[0x80000874]:KSLRAW_U zero, tp, s8<br> [0x80000878]:sd zero, 160(t0)<br> |
|  30|[0x800033e0]<br>0x0000000000000001|- rs1 : x30<br> - rs2 : x9<br> - rd : x4<br> - rs2_w1_val == -17<br>                                                                                                                                            |[0x8000089c]:KSLRAW_U tp, t5, s1<br> [0x800008a0]:sd tp, 176(t0)<br>     |
|  31|[0x800033f0]<br>0x0000000000400000|- rs1 : x8<br> - rs2 : x10<br> - rd : x27<br> - rs2_w1_val == -9<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 8388608<br>                                                                                   |[0x800008c8]:KSLRAW_U s11, fp, a0<br> [0x800008cc]:sd s11, 192(t0)<br>   |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFDFF|- rs1 : x24<br> - rs2 : x8<br> - rd : x12<br> - rs2_w1_val == -5<br> - rs2_w0_val == 33554432<br> - rs1_w0_val == 4294966783<br>                                                                                |[0x800008e8]:KSLRAW_U a2, s8, fp<br> [0x800008ec]:sd a2, 208(t0)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFFFFE00000|- rs2_w1_val == -3<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 1024<br> - rs1_w0_val == 4290772991<br>                                                                                                     |[0x80000914]:KSLRAW_U t6, t5, t4<br> [0x80000918]:sd t6, 224(t0)<br>     |
|  34|[0x80003420]<br>0x0000000000800000|- rs2_w1_val == -2<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 16777216<br>                                                                                                                              |[0x80000938]:KSLRAW_U t6, t5, t4<br> [0x8000093c]:sd t6, 240(t0)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFEF|- rs2_w1_val == -2147483648<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 4294967279<br>                                                                                                                      |[0x80000964]:KSLRAW_U t6, t5, t4<br> [0x80000968]:sd t6, 256(t0)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFEFFF|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 512<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 4294963199<br>                                                                                            |[0x80000990]:KSLRAW_U t6, t5, t4<br> [0x80000994]:sd t6, 272(t0)<br>     |
|  37|[0x80003450]<br>0x0000000000000007|- rs2_w1_val == 536870912<br> - rs2_w0_val == 64<br>                                                                                                                                                            |[0x800009b4]:KSLRAW_U t6, t5, t4<br> [0x800009b8]:sd t6, 288(t0)<br>     |
|  38|[0x80003460]<br>0xFFFFFFFFFFFFFC00|- rs2_w1_val == 268435456<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                    |[0x800009e8]:KSLRAW_U t6, t5, t4<br> [0x800009ec]:sd t6, 304(t0)<br>     |
|  39|[0x80003470]<br>0x000000000000000D|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4096<br>                                                                                                                                                          |[0x80000a10]:KSLRAW_U t6, t5, t4<br> [0x80000a14]:sd t6, 320(t0)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFFFE|- rs2_w1_val == 67108864<br>                                                                                                                                                                                    |[0x80000a3c]:KSLRAW_U t6, t5, t4<br> [0x80000a40]:sd t6, 336(t0)<br>     |
|  41|[0x80003490]<br>0x0000000000000004|- rs2_w1_val == 33554432<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                     |[0x80000a68]:KSLRAW_U t6, t5, t4<br> [0x80000a6c]:sd t6, 352(t0)<br>     |
|  42|[0x800034a0]<br>0x0000000000000008|- rs2_w1_val == 16777216<br> - rs1_w0_val == 8<br>                                                                                                                                                              |[0x80000a88]:KSLRAW_U t6, t5, t4<br> [0x80000a8c]:sd t6, 368(t0)<br>     |
|  43|[0x800034b0]<br>0x0000000020000000|- rs2_w1_val == 8388608<br> - rs1_w0_val == 536870912<br>                                                                                                                                                       |[0x80000aac]:KSLRAW_U t6, t5, t4<br> [0x80000ab0]:sd t6, 384(t0)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFDFFF|- rs2_w1_val == 4194304<br> - rs1_w1_val == 64<br> - rs1_w0_val == 4294959103<br>                                                                                                                               |[0x80000ad8]:KSLRAW_U t6, t5, t4<br> [0x80000adc]:sd t6, 400(t0)<br>     |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFFF7FF|- rs2_w1_val == 2097152<br> - rs2_w0_val == 4194304<br>                                                                                                                                                         |[0x80000b08]:KSLRAW_U t6, t5, t4<br> [0x80000b0c]:sd t6, 416(t0)<br>     |
|  46|[0x800034e0]<br>0x0000000008000000|- rs2_w1_val == 1048576<br> - rs2_w0_val == -1048577<br>                                                                                                                                                        |[0x80000b34]:KSLRAW_U t6, t5, t4<br> [0x80000b38]:sd t6, 432(t0)<br>     |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFF7FC0|- rs2_w1_val == 524288<br> - rs1_w1_val == 1048576<br>                                                                                                                                                          |[0x80000b5c]:KSLRAW_U t6, t5, t4<br> [0x80000b60]:sd t6, 448(t0)<br>     |
|  48|[0x80003500]<br>0xFFFFFFFFFFEFFFFF|- rs2_w1_val == 262144<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                       |[0x80000b84]:KSLRAW_U t6, t5, t4<br> [0x80000b88]:sd t6, 464(t0)<br>     |
|  49|[0x80003510]<br>0x0000000000008000|- rs2_w1_val == 131072<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 32768<br>                                                                                                                             |[0x80000ba8]:KSLRAW_U t6, t5, t4<br> [0x80000bac]:sd t6, 480(t0)<br>     |
|  50|[0x80003520]<br>0xFFFFFFFFFFFFF000|- rs2_w1_val == 65536<br> - rs1_w1_val == 2097152<br>                                                                                                                                                           |[0x80000be4]:KSLRAW_U t6, t5, t4<br> [0x80000be8]:sd t6, 496(t0)<br>     |
|  51|[0x80003530]<br>0x0000000000200000|- rs2_w1_val == 32768<br> - rs2_w0_val == 2<br> - rs1_w0_val == 524288<br>                                                                                                                                      |[0x80000c08]:KSLRAW_U t6, t5, t4<br> [0x80000c0c]:sd t6, 512(t0)<br>     |
|  52|[0x80003540]<br>0x0000000000000007|- rs2_w1_val == 16384<br>                                                                                                                                                                                       |[0x80000c30]:KSLRAW_U t6, t5, t4<br> [0x80000c34]:sd t6, 528(t0)<br>     |
|  53|[0x80003550]<br>0x0000000000004000|- rs2_w1_val == 8192<br> - rs2_w0_val == -536870913<br> - rs1_w1_val == 3758096383<br>                                                                                                                          |[0x80000c60]:KSLRAW_U t6, t5, t4<br> [0x80000c64]:sd t6, 544(t0)<br>     |
|  54|[0x80003560]<br>0x0000000000000200|- rs2_w1_val == 4096<br> - rs1_w0_val == 64<br>                                                                                                                                                                 |[0x80000c84]:KSLRAW_U t6, t5, t4<br> [0x80000c88]:sd t6, 560(t0)<br>     |
|  55|[0x80003570]<br>0x0000000000002000|- rs2_w0_val == -1073741825<br> - rs1_w1_val == 4026531839<br>                                                                                                                                                  |[0x80000cb4]:KSLRAW_U t6, t5, t4<br> [0x80000cb8]:sd t6, 576(t0)<br>     |
|  56|[0x80003580]<br>0x0000000000000000|- rs2_w0_val == 32<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 8192<br>                                                                                                                                      |[0x80000cdc]:KSLRAW_U t6, t5, t4<br> [0x80000ce0]:sd t6, 592(t0)<br>     |
|  57|[0x80003590]<br>0x0000000000000800|- rs2_w1_val == 16<br> - rs1_w0_val == 2048<br>                                                                                                                                                                 |[0x80000d04]:KSLRAW_U t6, t5, t4<br> [0x80000d08]:sd t6, 608(t0)<br>     |
|  58|[0x800035a0]<br>0x0000000000000400|- rs1_w0_val == 1024<br>                                                                                                                                                                                        |[0x80000d28]:KSLRAW_U t6, t5, t4<br> [0x80000d2c]:sd t6, 624(t0)<br>     |
|  59|[0x800035b0]<br>0x0000000020000000|- rs2_w0_val == 1431655765<br> - rs1_w0_val == 256<br>                                                                                                                                                          |[0x80000d58]:KSLRAW_U t6, t5, t4<br> [0x80000d5c]:sd t6, 640(t0)<br>     |
|  60|[0x800035c0]<br>0x0000000000000080|- rs2_w0_val == 256<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 128<br>                                                                                                                                  |[0x80000d7c]:KSLRAW_U t6, t5, t4<br> [0x80000d80]:sd t6, 656(t0)<br>     |
|  61|[0x800035d0]<br>0x0000000000000020|- rs1_w0_val == 32<br>                                                                                                                                                                                          |[0x80000da0]:KSLRAW_U t6, t5, t4<br> [0x80000da4]:sd t6, 672(t0)<br>     |
|  62|[0x800035e0]<br>0x0000000000000002|- rs1_w0_val == 4<br>                                                                                                                                                                                           |[0x80000dc4]:KSLRAW_U t6, t5, t4<br> [0x80000dc8]:sd t6, 688(t0)<br>     |
|  63|[0x800035f0]<br>0x0000000000000080|- rs1_w0_val == 2<br>                                                                                                                                                                                           |[0x80000dec]:KSLRAW_U t6, t5, t4<br> [0x80000df0]:sd t6, 704(t0)<br>     |
|  64|[0x80003600]<br>0x0000000000000001|- rs1_w0_val == 1<br>                                                                                                                                                                                           |[0x80000e10]:KSLRAW_U t6, t5, t4<br> [0x80000e14]:sd t6, 720(t0)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFFFFFFFFC0|- rs1_w0_val == 4294967295<br>                                                                                                                                                                                  |[0x80000e38]:KSLRAW_U t6, t5, t4<br> [0x80000e3c]:sd t6, 736(t0)<br>     |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFFDF|- rs2_w1_val == 2048<br> - rs2_w0_val == 128<br> - rs1_w0_val == 4294967263<br>                                                                                                                                 |[0x80000e5c]:KSLRAW_U t6, t5, t4<br> [0x80000e60]:sd t6, 752(t0)<br>     |
|  67|[0x80003630]<br>0x0000000000000400|- rs2_w1_val == 1024<br> - rs1_w0_val == 1048576<br>                                                                                                                                                            |[0x80000e80]:KSLRAW_U t6, t5, t4<br> [0x80000e84]:sd t6, 768(t0)<br>     |
|  68|[0x80003640]<br>0x0000000004000000|- rs2_w1_val == 512<br> - rs1_w1_val == 524288<br>                                                                                                                                                              |[0x80000ea8]:KSLRAW_U t6, t5, t4<br> [0x80000eac]:sd t6, 784(t0)<br>     |
|  69|[0x80003650]<br>0x0000000000000000|- rs2_w1_val == 256<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 4294967287<br>                                                                                                                            |[0x80000ec8]:KSLRAW_U t6, t5, t4<br> [0x80000ecc]:sd t6, 800(t0)<br>     |
|  70|[0x80003660]<br>0x0000000000008000|- rs2_w1_val == 128<br> - rs1_w1_val == 65536<br>                                                                                                                                                               |[0x80000ef0]:KSLRAW_U t6, t5, t4<br> [0x80000ef4]:sd t6, 816(t0)<br>     |
|  71|[0x80003670]<br>0x0000000010000000|- rs2_w1_val == 64<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 1431655765<br>                                                                                                                                 |[0x80000f1c]:KSLRAW_U t6, t5, t4<br> [0x80000f20]:sd t6, 832(t0)<br>     |
|  72|[0x80003680]<br>0x000000007FFFFFFF|- rs2_w1_val == 32<br> - rs2_w0_val == -33<br>                                                                                                                                                                  |[0x80000f40]:KSLRAW_U t6, t5, t4<br> [0x80000f44]:sd t6, 848(t0)<br>     |
|  73|[0x80003690]<br>0xFFFFFFFFFFFFBFC0|- rs2_w1_val == 8<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                            |[0x80000f68]:KSLRAW_U t6, t5, t4<br> [0x80000f6c]:sd t6, 864(t0)<br>     |
|  74|[0x800036a0]<br>0xFFFFFFFFFFDFFFFF|- rs2_w1_val == 4<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                            |[0x80000f8c]:KSLRAW_U t6, t5, t4<br> [0x80000f90]:sd t6, 880(t0)<br>     |
|  75|[0x800036b0]<br>0x0000000000020000|- rs2_w1_val == 2<br> - rs2_w0_val == -5<br>                                                                                                                                                                    |[0x80000fb4]:KSLRAW_U t6, t5, t4<br> [0x80000fb8]:sd t6, 896(t0)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFF000|- rs2_w1_val == 1<br> - rs1_w1_val == 4294966783<br>                                                                                                                                                            |[0x80000fe0]:KSLRAW_U t6, t5, t4<br> [0x80000fe4]:sd t6, 912(t0)<br>     |
|  77|[0x800036d0]<br>0x0000000000000100|- rs2_w1_val == -1<br> - rs2_w0_val == -524289<br>                                                                                                                                                              |[0x80001000]:KSLRAW_U t6, t5, t4<br> [0x80001004]:sd t6, 928(t0)<br>     |
|  78|[0x800036e0]<br>0x0000000000000000|- rs2_w0_val == -1431655766<br>                                                                                                                                                                                 |[0x80001030]:KSLRAW_U t6, t5, t4<br> [0x80001034]:sd t6, 944(t0)<br>     |
|  79|[0x800036f0]<br>0x0000000000000002|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                  |[0x80001050]:KSLRAW_U t6, t5, t4<br> [0x80001054]:sd t6, 960(t0)<br>     |
|  80|[0x80003700]<br>0x0000000000000004|- rs2_w0_val == -134217729<br>                                                                                                                                                                                  |[0x80001080]:KSLRAW_U t6, t5, t4<br> [0x80001084]:sd t6, 976(t0)<br>     |
|  81|[0x80003710]<br>0x0000000040000000|- rs2_w0_val == -33554433<br> - rs1_w1_val == 1<br> - rs1_w0_val == 2147483647<br>                                                                                                                              |[0x800010a8]:KSLRAW_U t6, t5, t4<br> [0x800010ac]:sd t6, 992(t0)<br>     |
|  82|[0x80003720]<br>0x0000000000000080|- rs2_w0_val == -2097153<br>                                                                                                                                                                                    |[0x800010d4]:KSLRAW_U t6, t5, t4<br> [0x800010d8]:sd t6, 1008(t0)<br>    |
|  83|[0x80003730]<br>0x0000000000000800|- rs2_w0_val == -262145<br>                                                                                                                                                                                     |[0x80001100]:KSLRAW_U t6, t5, t4<br> [0x80001104]:sd t6, 1024(t0)<br>    |
|  84|[0x80003740]<br>0x0000000000000001|- rs2_w0_val == -16385<br>                                                                                                                                                                                      |[0x80001128]:KSLRAW_U t6, t5, t4<br> [0x8000112c]:sd t6, 1040(t0)<br>    |
|  85|[0x80003750]<br>0xFFFFFFFFFFFFFFF0|- rs2_w0_val == -8193<br>                                                                                                                                                                                       |[0x80001158]:KSLRAW_U t6, t5, t4<br> [0x8000115c]:sd t6, 1056(t0)<br>    |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFF80|- rs2_w0_val == -4097<br>                                                                                                                                                                                       |[0x80001180]:KSLRAW_U t6, t5, t4<br> [0x80001184]:sd t6, 1072(t0)<br>    |
|  87|[0x80003770]<br>0x0000000000000005|- rs2_w0_val == -513<br> - rs1_w1_val == 4290772991<br>                                                                                                                                                         |[0x800011ac]:KSLRAW_U t6, t5, t4<br> [0x800011b0]:sd t6, 1088(t0)<br>    |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFF00|- rs2_w0_val == -17<br>                                                                                                                                                                                         |[0x800011d8]:KSLRAW_U t6, t5, t4<br> [0x800011dc]:sd t6, 1104(t0)<br>    |
|  89|[0x80003790]<br>0xFFFFFFFFFFFFFF00|- rs2_w0_val == -9<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                           |[0x80001200]:KSLRAW_U t6, t5, t4<br> [0x80001204]:sd t6, 1120(t0)<br>    |
|  90|[0x800037a0]<br>0xFFFFFFFFFDFF0000|- rs2_w0_val == 16<br>                                                                                                                                                                                          |[0x80001224]:KSLRAW_U t6, t5, t4<br> [0x80001228]:sd t6, 1136(t0)<br>    |
|  91|[0x800037b0]<br>0x0000000000000000|- rs1_w0_val == 4294967293<br>                                                                                                                                                                                  |[0x80001250]:KSLRAW_U t6, t5, t4<br> [0x80001254]:sd t6, 1152(t0)<br>    |
|  92|[0x800037c0]<br>0xFFFFFFFF80000000|- rs1_w1_val == 2147483647<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                   |[0x8000127c]:KSLRAW_U t6, t5, t4<br> [0x80001280]:sd t6, 1168(t0)<br>    |
|  93|[0x800037d0]<br>0x0000000000000007|- rs1_w1_val == 3221225471<br>                                                                                                                                                                                  |[0x800012a8]:KSLRAW_U t6, t5, t4<br> [0x800012ac]:sd t6, 1184(t0)<br>    |
|  94|[0x800037e0]<br>0x0000000000000200|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                  |[0x800012d4]:KSLRAW_U t6, t5, t4<br> [0x800012d8]:sd t6, 1200(t0)<br>    |
|  95|[0x800037f0]<br>0x0000000000002000|- rs1_w1_val == 4261412863<br>                                                                                                                                                                                  |[0x80001308]:KSLRAW_U t6, t5, t4<br> [0x8000130c]:sd t6, 1216(t0)<br>    |
|  96|[0x80003800]<br>0x0000000000040000|- rs1_w1_val == 4286578687<br> - rs1_w0_val == 262144<br>                                                                                                                                                       |[0x80001334]:KSLRAW_U t6, t5, t4<br> [0x80001338]:sd t6, 1232(t0)<br>    |
|  97|[0x80003810]<br>0x0000000000000012|- rs1_w1_val == 4292870143<br>                                                                                                                                                                                  |[0x8000135c]:KSLRAW_U t6, t5, t4<br> [0x80001360]:sd t6, 1248(t0)<br>    |
|  98|[0x80003820]<br>0x000000007FFFFFFF|- rs1_w1_val == 4293918719<br> - rs1_w0_val == 2097152<br>                                                                                                                                                      |[0x80001388]:KSLRAW_U t6, t5, t4<br> [0x8000138c]:sd t6, 1264(t0)<br>    |
|  99|[0x80003830]<br>0x0000000000000400|- rs1_w1_val == 4294443007<br>                                                                                                                                                                                  |[0x800013b0]:KSLRAW_U t6, t5, t4<br> [0x800013b4]:sd t6, 1280(t0)<br>    |
| 100|[0x80003840]<br>0xFFFFFFFFFBFFFFFF|- rs2_w0_val == -2147483648<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 4227858431<br>                                                                                                                   |[0x800013d4]:KSLRAW_U t6, t5, t4<br> [0x800013d8]:sd t6, 1296(t0)<br>    |
| 101|[0x80003850]<br>0x0000000000002000|- rs1_w1_val == 4294959103<br>                                                                                                                                                                                  |[0x80001408]:KSLRAW_U t6, t5, t4<br> [0x8000140c]:sd t6, 1312(t0)<br>    |
| 102|[0x80003860]<br>0xFFFFFFFFFFFFEFFF|- rs1_w1_val == 4294963199<br>                                                                                                                                                                                  |[0x8000143c]:KSLRAW_U t6, t5, t4<br> [0x80001440]:sd t6, 1328(t0)<br>    |
| 103|[0x80003870]<br>0x0000000000000580|- rs1_w1_val == 4294966271<br>                                                                                                                                                                                  |[0x80001460]:KSLRAW_U t6, t5, t4<br> [0x80001464]:sd t6, 1344(t0)<br>    |
| 104|[0x80003880]<br>0x0000000000200000|- rs1_w1_val == 4294967039<br>                                                                                                                                                                                  |[0x80001488]:KSLRAW_U t6, t5, t4<br> [0x8000148c]:sd t6, 1360(t0)<br>    |
| 105|[0x80003890]<br>0xFFFFFFFFFFC00000|- rs1_w1_val == 4294967231<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                   |[0x800014bc]:KSLRAW_U t6, t5, t4<br> [0x800014c0]:sd t6, 1376(t0)<br>    |
| 106|[0x800038a0]<br>0x0000000000000002|- rs2_w0_val == -2<br> - rs1_w1_val == 4294967279<br>                                                                                                                                                           |[0x800014e0]:KSLRAW_U t6, t5, t4<br> [0x800014e4]:sd t6, 1392(t0)<br>    |
| 107|[0x800038b0]<br>0x0000000000000000|- rs1_w1_val == 4294967294<br>                                                                                                                                                                                  |[0x80001504]:KSLRAW_U t6, t5, t4<br> [0x80001508]:sd t6, 1408(t0)<br>    |
| 108|[0x800038c0]<br>0xFFFFFFFFC0000000|- rs1_w1_val == 2147483648<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                   |[0x80001538]:KSLRAW_U t6, t5, t4<br> [0x8000153c]:sd t6, 1424(t0)<br>    |
| 109|[0x800038d0]<br>0x0000000001200000|- rs1_w1_val == 536870912<br>                                                                                                                                                                                   |[0x80001560]:KSLRAW_U t6, t5, t4<br> [0x80001564]:sd t6, 1440(t0)<br>    |
| 110|[0x800038e0]<br>0xFFFFFFFFFFFFFFFC|- rs1_w1_val == 268435456<br> - rs1_w0_val == 4278190079<br>                                                                                                                                                    |[0x80001598]:KSLRAW_U t6, t5, t4<br> [0x8000159c]:sd t6, 1456(t0)<br>    |
| 111|[0x800038f0]<br>0xFFFFFFFFFFFFFFFE|- rs1_w1_val == 16777216<br>                                                                                                                                                                                    |[0x800015c4]:KSLRAW_U t6, t5, t4<br> [0x800015c8]:sd t6, 1472(t0)<br>    |
| 112|[0x80003900]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 256<br>                                                                                                                                                                                         |[0x800015e8]:KSLRAW_U t6, t5, t4<br> [0x800015ec]:sd t6, 1488(t0)<br>    |
| 113|[0x80003910]<br>0x0000000000000009|- rs2_w0_val == 8192<br> - rs1_w1_val == 128<br>                                                                                                                                                                |[0x80001610]:KSLRAW_U t6, t5, t4<br> [0x80001614]:sd t6, 1504(t0)<br>    |
| 114|[0x80003920]<br>0x0000000000040000|- rs2_w0_val == -3<br> - rs1_w1_val == 32<br>                                                                                                                                                                   |[0x80001638]:KSLRAW_U t6, t5, t4<br> [0x8000163c]:sd t6, 1520(t0)<br>    |
| 115|[0x80003930]<br>0x0000000000000000|- rs1_w1_val == 8<br>                                                                                                                                                                                           |[0x80001660]:KSLRAW_U t6, t5, t4<br> [0x80001664]:sd t6, 1536(t0)<br>    |
| 116|[0x80003940]<br>0xFFFFFFFFFFFDFFFF|- rs1_w1_val == 4<br>                                                                                                                                                                                           |[0x80001688]:KSLRAW_U t6, t5, t4<br> [0x8000168c]:sd t6, 1552(t0)<br>    |
| 117|[0x80003950]<br>0xFFFFFFFFFFFFFFE0|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                  |[0x800016b0]:KSLRAW_U t6, t5, t4<br> [0x800016b4]:sd t6, 1568(t0)<br>    |
| 118|[0x80003960]<br>0xFFFFFFFFAAAAAAAA|- rs1_w0_val == 2863311530<br>                                                                                                                                                                                  |[0x800016e0]:KSLRAW_U t6, t5, t4<br> [0x800016e4]:sd t6, 1584(t0)<br>    |
| 119|[0x80003970]<br>0xFFFFFFFFBFFFFFFF|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                  |[0x80001704]:KSLRAW_U t6, t5, t4<br> [0x80001708]:sd t6, 1600(t0)<br>    |
| 120|[0x80003980]<br>0xFFFFFFFFEFFFFFFF|- rs1_w0_val == 4026531839<br>                                                                                                                                                                                  |[0x8000172c]:KSLRAW_U t6, t5, t4<br> [0x80001730]:sd t6, 1616(t0)<br>    |
| 121|[0x80003990]<br>0xFFFFFFFF80000000|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                  |[0x80001750]:KSLRAW_U t6, t5, t4<br> [0x80001754]:sd t6, 1632(t0)<br>    |
| 122|[0x800039a0]<br>0xFFFFFFFFFFFC0000|- rs1_w0_val == 4294443007<br>                                                                                                                                                                                  |[0x80001780]:KSLRAW_U t6, t5, t4<br> [0x80001784]:sd t6, 1648(t0)<br>    |
| 123|[0x800039c0]<br>0xFFFFFFFFFFFF7FFF|- rs2_w0_val == 268435456<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                    |[0x800017e4]:KSLRAW_U t6, t5, t4<br> [0x800017e8]:sd t6, 1680(t0)<br>    |
| 124|[0x800039d0]<br>0xFFFFFFFFFFFFFE00|- rs1_w0_val == 4294966271<br>                                                                                                                                                                                  |[0x8000180c]:KSLRAW_U t6, t5, t4<br> [0x80001810]:sd t6, 1696(t0)<br>    |
| 125|[0x800039e0]<br>0xFFFFFFFFFFFFFF7F|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                  |[0x80001830]:KSLRAW_U t6, t5, t4<br> [0x80001834]:sd t6, 1712(t0)<br>    |
| 126|[0x800039f0]<br>0xFFFFFFFFFFFFFFDC|- rs1_w1_val == 4194304<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                      |[0x80001858]:KSLRAW_U t6, t5, t4<br> [0x8000185c]:sd t6, 1728(t0)<br>    |
| 127|[0x80003a00]<br>0xFFFFFFFFFFFFBFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                                    |[0x80001884]:KSLRAW_U t6, t5, t4<br> [0x80001888]:sd t6, 1744(t0)<br>    |
| 128|[0x80003a10]<br>0xFFFFFFFFFFFFFFFB|- rs1_w0_val == 4294967291<br>                                                                                                                                                                                  |[0x800018a8]:KSLRAW_U t6, t5, t4<br> [0x800018ac]:sd t6, 1760(t0)<br>    |
| 129|[0x80003a20]<br>0xFFFFFFFFF7FFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                                    |[0x800018d0]:KSLRAW_U t6, t5, t4<br> [0x800018d4]:sd t6, 1776(t0)<br>    |
| 130|[0x80003a30]<br>0x0000000040000000|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                  |[0x800018f0]:KSLRAW_U t6, t5, t4<br> [0x800018f4]:sd t6, 1792(t0)<br>    |
| 131|[0x80003a40]<br>0xFFFFFFFFFFFFEFFF|- rs2_w0_val == 2097152<br>                                                                                                                                                                                     |[0x8000191c]:KSLRAW_U t6, t5, t4<br> [0x80001920]:sd t6, 1808(t0)<br>    |
| 132|[0x80003a50]<br>0xFFFFFFFFFFFFBFFF|- rs2_w0_val == 262144<br>                                                                                                                                                                                      |[0x80001950]:KSLRAW_U t6, t5, t4<br> [0x80001954]:sd t6, 1824(t0)<br>    |
| 133|[0x80003a60]<br>0x0000000000080000|- rs1_w1_val == 2048<br>                                                                                                                                                                                        |[0x8000197c]:KSLRAW_U t6, t5, t4<br> [0x80001980]:sd t6, 1840(t0)<br>    |
| 134|[0x80003a70]<br>0xFFFFFFFFFFF7FFE0|- rs1_w1_val == 32768<br>                                                                                                                                                                                       |[0x800019b0]:KSLRAW_U t6, t5, t4<br> [0x800019b4]:sd t6, 1856(t0)<br>    |
| 135|[0x80003a80]<br>0xFFFFFFFFFFFFFDFF|- rs1_w1_val == 4096<br>                                                                                                                                                                                        |[0x800019d0]:KSLRAW_U t6, t5, t4<br> [0x800019d4]:sd t6, 1872(t0)<br>    |
| 136|[0x80003a90]<br>0x0000000000000100|- rs2_w0_val == 32768<br>                                                                                                                                                                                       |[0x800019f8]:KSLRAW_U t6, t5, t4<br> [0x800019fc]:sd t6, 1888(t0)<br>    |
| 137|[0x80003aa0]<br>0xFFFFFFFFFFFFFFFE|- rs2_w1_val == -67108865<br>                                                                                                                                                                                   |[0x80001a28]:KSLRAW_U t6, t5, t4<br> [0x80001a2c]:sd t6, 1904(t0)<br>    |
