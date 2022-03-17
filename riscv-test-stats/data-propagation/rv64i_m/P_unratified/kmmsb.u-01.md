
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001db0')]      |
| SIG_REGION                | [('0x80003210', '0x80003bc0', '310 dwords')]      |
| COV_LABELS                | kmmsb.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmsb.u-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 310      |
| STAT1                     | 151      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 155     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d08]:KMMSB_U t6, t5, t4
      [0x80001d0c]:sd t6, 1936(ra)
 -- Signature Address: 0x80003b80 Data: 0x0090C25CE46EB3CF
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w1_val == 1048576
      - rs2_w0_val == -65537




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d2c]:KMMSB_U t6, t5, t4
      [0x80001d30]:sd t6, 1952(ra)
 -- Signature Address: 0x80003b90 Data: 0x0090C25BE46EB3D0
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w1_val == 1431655765
      - rs2_w0_val == 2
      - rs1_w1_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d60]:KMMSB_U t6, t5, t4
      [0x80001d64]:sd t6, 1968(ra)
 -- Signature Address: 0x80003ba0 Data: 0x0091C25BE46EB3D0
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -67108865
      - rs2_w0_val == -8193
      - rs1_w1_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d98]:KMMSB_U t6, t5, t4
      [0x80001d9c]:sd t6, 1984(ra)
 -- Signature Address: 0x80003bb0 Data: 0x00A1C25BE46EB3CE
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -4194305






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x10', 'rs2 : x10', 'rd : x11', 'rs1 == rs2 != rd', 'rs2_w1_val == 1048576', 'rs2_w0_val == -65537', 'rs1_w1_val == 1048576', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800003c4]:KMMSB_U a1, a0, a0
	-[0x800003c8]:sd a1, 0(t0)
Current Store : [0x800003cc] : sd a0, 8(t0) -- Store: [0x80003218]:0x00100000FFFEFFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800003e8]:KMMSB_U s1, s1, s1
	-[0x800003ec]:sd s1, 16(t0)
Current Store : [0x800003f0] : sd s1, 24(t0) -- Store: [0x80003228]:0x8E38E38DFFFFFFFA




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000040c]:KMMSB_U t2, a7, zero
	-[0x80000410]:sd t2, 32(t0)
Current Store : [0x80000414] : sd a7, 40(t0) -- Store: [0x80003238]:0x0000000280000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x21', 'rd : x6', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -67108865', 'rs1_w1_val == 4', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000438]:KMMSB_U t1, t1, s5
	-[0x8000043c]:sd t1, 48(t0)
Current Store : [0x80000440] : sd t1, 56(t0) -- Store: [0x80003248]:0x0000000200410000




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825', 'rs1_w1_val == 16384', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000458]:KMMSB_U fp, gp, fp
	-[0x8000045c]:sd fp, 64(t0)
Current Store : [0x80000460] : sd gp, 72(t0) -- Store: [0x80003258]:0x0000400000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x20', 'rs2_w1_val == -536870913', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x8000048c]:KMMSB_U s4, a5, a4
	-[0x80000490]:sd s4, 80(t0)
Current Store : [0x80000494] : sd a5, 88(t0) -- Store: [0x80003268]:0x00400000AAAAAAAB




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x12', 'rs2_w1_val == -268435457', 'rs2_w0_val == -2097153', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800004b8]:KMMSB_U a2, a1, s7
	-[0x800004bc]:sd a2, 96(t0)
Current Store : [0x800004c0] : sd a1, 104(t0) -- Store: [0x80003278]:0x5555555500000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x1', 'rs2_w1_val == -134217729']
Last Code Sequence : 
	-[0x800004e8]:KMMSB_U ra, t2, a6
	-[0x800004ec]:sd ra, 112(t0)
Current Store : [0x800004f0] : sd t2, 120(t0) -- Store: [0x80003288]:0x00000007FFFF4AFC




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x0', 'rs2_w1_val == -67108865', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x8000051c]:KMMSB_U zero, s10, s9
	-[0x80000520]:sd zero, 128(t0)
Current Store : [0x80000524] : sd s10, 136(t0) -- Store: [0x80003298]:0x004000000000B503




Last Coverpoint : ['rs1 : x12', 'rs2 : x30', 'rd : x4', 'rs2_w1_val == -33554433']
Last Code Sequence : 
	-[0x80000544]:KMMSB_U tp, a2, t5
	-[0x80000548]:sd tp, 144(t0)
Current Store : [0x8000054c] : sd a2, 152(t0) -- Store: [0x800032a8]:0xC000000000000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x28', 'rs2_w1_val == -16777217', 'rs2_w0_val == 2', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000570]:KMMSB_U t3, tp, s8
	-[0x80000574]:sd t3, 160(t0)
Current Store : [0x80000578] : sd tp, 168(t0) -- Store: [0x800032b8]:0x00000007FFBFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x26', 'rs2_w1_val == -8388609', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x800005a0]:KMMSB_U s10, s8, t6
	-[0x800005a4]:sd s10, 176(t0)
Current Store : [0x800005a8] : sd s8, 184(t0) -- Store: [0x800032c8]:0xFFFFFFF855555554




Last Coverpoint : ['rs1 : x0', 'rs2 : x3', 'rd : x2', 'rs2_w1_val == -4194305', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800005d8]:KMMSB_U sp, zero, gp
	-[0x800005dc]:sd sp, 192(t0)
Current Store : [0x800005e0] : sd zero, 200(t0) -- Store: [0x800032d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x17', 'rd : x23', 'rs2_w1_val == -2097153', 'rs2_w0_val == 4', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000604]:KMMSB_U s7, t4, a7
	-[0x80000608]:sd s7, 208(t0)
Current Store : [0x8000060c] : sd t4, 216(t0) -- Store: [0x800032e8]:0xFFFF4AFD7FFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x18', 'rd : x3', 'rs2_w1_val == -1048577']
Last Code Sequence : 
	-[0x80000628]:KMMSB_U gp, a4, s2
	-[0x8000062c]:sd gp, 224(t0)
Current Store : [0x80000630] : sd a4, 232(t0) -- Store: [0x800032f8]:0xAAAAAAAB00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x24', 'rs2_w1_val == -524289', 'rs2_w0_val == 8']
Last Code Sequence : 
	-[0x8000065c]:KMMSB_U s8, a3, t1
	-[0x80000660]:sd s8, 240(t0)
Current Store : [0x80000664] : sd a3, 248(t0) -- Store: [0x80003308]:0x33333332FFFEFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x25', 'rs2_w1_val == -262145', 'rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000068c]:KMMSB_U s9, s11, ra
	-[0x80000690]:sd s9, 0(gp)
Current Store : [0x80000694] : sd s11, 8(gp) -- Store: [0x80003318]:0x00400000FFFFFFFA




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x21', 'rs2_w1_val == -131073', 'rs1_w1_val == -4194305', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006b4]:KMMSB_U s5, s3, s6
	-[0x800006b8]:sd s5, 16(gp)
Current Store : [0x800006bc] : sd s3, 24(gp) -- Store: [0x80003328]:0xFFBFFFFF00000004




Last Coverpoint : ['rs1 : x18', 'rs2 : x29', 'rd : x30', 'rs2_w1_val == -65537', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800006e0]:KMMSB_U t5, s2, t4
	-[0x800006e4]:sd t5, 32(gp)
Current Store : [0x800006e8] : sd s2, 40(gp) -- Store: [0x80003338]:0xBFFFFFFFFDFFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x17', 'rs2_w1_val == -32769', 'rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000718]:KMMSB_U a7, s7, a2
	-[0x8000071c]:sd a7, 48(gp)
Current Store : [0x80000720] : sd s7, 56(gp) -- Store: [0x80003348]:0xFFFF4AFD33333334




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x29', 'rs2_w1_val == -16385', 'rs2_w0_val == -2049', 'rs1_w1_val == 268435456', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000748]:KMMSB_U t4, s9, a3
	-[0x8000074c]:sd t4, 64(gp)
Current Store : [0x80000750] : sd s9, 72(gp) -- Store: [0x80003358]:0x10000000FFFFFEFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x14', 'rs2_w1_val == -8193', 'rs2_w0_val == 4096', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000778]:KMMSB_U a4, s5, s4
	-[0x8000077c]:sd a4, 80(gp)
Current Store : [0x80000780] : sd s5, 88(gp) -- Store: [0x80003368]:0x1000000000020000




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x13', 'rs2_w1_val == -4097', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800007a4]:KMMSB_U a3, t0, a1
	-[0x800007a8]:sd a3, 96(gp)
Current Store : [0x800007ac] : sd t0, 104(gp) -- Store: [0x80003378]:0x0000002000000003




Last Coverpoint : ['rs1 : x28', 'rs2 : x7', 'rd : x10', 'rs2_w1_val == -2049', 'rs2_w0_val == 1', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800007d0]:KMMSB_U a0, t3, t2
	-[0x800007d4]:sd a0, 112(gp)
Current Store : [0x800007d8] : sd t3, 120(gp) -- Store: [0x80003388]:0xFFFDFFFFFFBFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x15', 'rs2_w1_val == -1025', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800007f8]:KMMSB_U a5, sp, s3
	-[0x800007fc]:sd a5, 128(gp)
Current Store : [0x80000800] : sd sp, 136(gp) -- Store: [0x80003398]:0xFFFF4AFD20000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x27', 'rd : x22', 'rs2_w1_val == -513', 'rs2_w0_val == -1048577', 'rs1_w1_val == -17', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000820]:KMMSB_U s6, t5, s11
	-[0x80000824]:sd s6, 144(gp)
Current Store : [0x80000828] : sd t5, 152(gp) -- Store: [0x800033a8]:0xFFFFFFEF00100000




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x5', 'rs2_w1_val == -257', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000844]:KMMSB_U t0, ra, s10
	-[0x80000848]:sd t0, 160(gp)
Current Store : [0x8000084c] : sd ra, 168(gp) -- Store: [0x800033b8]:0xFEFFFFFFC0000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x16', 'rs2_w1_val == -129', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000086c]:KMMSB_U a6, fp, tp
	-[0x80000870]:sd a6, 176(gp)
Current Store : [0x80000874] : sd fp, 184(gp) -- Store: [0x800033c8]:0x00000004AAAAAAAA




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x27', 'rs2_w1_val == -65', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000898]:KMMSB_U s11, a6, sp
	-[0x8000089c]:sd s11, 192(gp)
Current Store : [0x800008a0] : sd a6, 200(gp) -- Store: [0x800033d8]:0x00400000EFFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x5', 'rd : x31', 'rs2_w1_val == -33', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -536870913', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800008c4]:KMMSB_U t6, s6, t0
	-[0x800008c8]:sd t6, 208(gp)
Current Store : [0x800008cc] : sd s6, 216(gp) -- Store: [0x800033e8]:0xDFFFFFFF01000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rd : x18', 'rs2_w1_val == -17', 'rs1_w1_val == 8192', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800008fc]:KMMSB_U s2, s4, a5
	-[0x80000900]:sd s2, 0(ra)
Current Store : [0x80000904] : sd s4, 8(ra) -- Store: [0x800033f8]:0x0000200055555555




Last Coverpoint : ['rs1 : x31', 'rs2 : x28', 'rd : x19', 'rs2_w1_val == -9', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000924]:KMMSB_U s3, t6, t3
	-[0x80000928]:sd s3, 16(ra)
Current Store : [0x8000092c] : sd t6, 24(ra) -- Store: [0x80003408]:0xFFFFFFFE00100000




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000094c]:KMMSB_U t6, t5, t4
	-[0x80000950]:sd t6, 32(ra)
Current Store : [0x80000954] : sd t5, 40(ra) -- Store: [0x80003418]:0xFFFF4AFD20000000




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -262145', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000980]:KMMSB_U t6, t5, t4
	-[0x80000984]:sd t6, 48(ra)
Current Store : [0x80000988] : sd t5, 56(ra) -- Store: [0x80003428]:0xFFFF4AFDFFFFBFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x800009ac]:KMMSB_U t6, t5, t4
	-[0x800009b0]:sd t6, 64(ra)
Current Store : [0x800009b4] : sd t5, 72(ra) -- Store: [0x80003438]:0x0000002066666667




Last Coverpoint : ['rs2_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800009d4]:KMMSB_U t6, t5, t4
	-[0x800009d8]:sd t6, 80(ra)
Current Store : [0x800009dc] : sd t5, 88(ra) -- Store: [0x80003448]:0x0000B50300000007




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800009f8]:KMMSB_U t6, t5, t4
	-[0x800009fc]:sd t6, 96(ra)
Current Store : [0x80000a00] : sd t5, 104(ra) -- Store: [0x80003458]:0x0000000600000000




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 536870912', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000a24]:KMMSB_U t6, t5, t4
	-[0x80000a28]:sd t6, 112(ra)
Current Store : [0x80000a2c] : sd t5, 120(ra) -- Store: [0x80003468]:0xFFBFFFFFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x80000a54]:KMMSB_U t6, t5, t4
	-[0x80000a58]:sd t6, 128(ra)
Current Store : [0x80000a5c] : sd t5, 136(ra) -- Store: [0x80003478]:0x0000200000000004




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == 256', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000a84]:KMMSB_U t6, t5, t4
	-[0x80000a88]:sd t6, 144(ra)
Current Store : [0x80000a8c] : sd t5, 152(ra) -- Store: [0x80003488]:0x0000010000000200




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000ac4]:KMMSB_U t6, t5, t4
	-[0x80000ac8]:sd t6, 160(ra)
Current Store : [0x80000acc] : sd t5, 168(ra) -- Store: [0x80003498]:0x00080000FFFF4AFC




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000af0]:KMMSB_U t6, t5, t4
	-[0x80000af4]:sd t6, 176(ra)
Current Store : [0x80000af8] : sd t5, 184(ra) -- Store: [0x800034a8]:0x00080000FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000b18]:KMMSB_U t6, t5, t4
	-[0x80000b1c]:sd t6, 192(ra)
Current Store : [0x80000b20] : sd t5, 200(ra) -- Store: [0x800034b8]:0x0000000020000000




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 1073741824', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000b3c]:KMMSB_U t6, t5, t4
	-[0x80000b40]:sd t6, 208(ra)
Current Store : [0x80000b44] : sd t5, 216(ra) -- Store: [0x800034c8]:0xFFFFFFF600000008




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == -8193', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b64]:KMMSB_U t6, t5, t4
	-[0x80000b68]:sd t6, 224(ra)
Current Store : [0x80000b6c] : sd t5, 232(ra) -- Store: [0x800034d8]:0xFFFFDFFF00004000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 16384', 'rs1_w1_val == -16385', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000b8c]:KMMSB_U t6, t5, t4
	-[0x80000b90]:sd t6, 240(ra)
Current Store : [0x80000b94] : sd t5, 248(ra) -- Store: [0x800034e8]:0xFFFFBFFFFFFFFFFE




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80000bbc]:KMMSB_U t6, t5, t4
	-[0x80000bc0]:sd t6, 256(ra)
Current Store : [0x80000bc4] : sd t5, 264(ra) -- Store: [0x800034f8]:0x5555555680000000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 268435456', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80000be4]:KMMSB_U t6, t5, t4
	-[0x80000be8]:sd t6, 272(ra)
Current Store : [0x80000bec] : sd t5, 280(ra) -- Store: [0x80003508]:0xFDFFFFFF00000004




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000c18]:KMMSB_U t6, t5, t4
	-[0x80000c1c]:sd t6, 288(ra)
Current Store : [0x80000c20] : sd t5, 296(ra) -- Store: [0x80003518]:0x00000005FFFF4AFD




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == -2', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000c44]:KMMSB_U t6, t5, t4
	-[0x80000c48]:sd t6, 304(ra)
Current Store : [0x80000c4c] : sd t5, 312(ra) -- Store: [0x80003528]:0xAAAAAAAA00000002




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w1_val == 16', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000c68]:KMMSB_U t6, t5, t4
	-[0x80000c6c]:sd t6, 320(ra)
Current Store : [0x80000c70] : sd t5, 328(ra) -- Store: [0x80003538]:0x00000010DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == 67108864', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000c98]:KMMSB_U t6, t5, t4
	-[0x80000c9c]:sd t6, 336(ra)
Current Store : [0x80000ca0] : sd t5, 344(ra) -- Store: [0x80003548]:0x04000000F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 65536', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000cc0]:KMMSB_U t6, t5, t4
	-[0x80000cc4]:sd t6, 352(ra)
Current Store : [0x80000cc8] : sd t5, 360(ra) -- Store: [0x80003558]:0xFFFFFFBF55555554




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000ce8]:KMMSB_U t6, t5, t4
	-[0x80000cec]:sd t6, 368(ra)
Current Store : [0x80000cf0] : sd t5, 376(ra) -- Store: [0x80003568]:0x0000010055555555




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d10]:KMMSB_U t6, t5, t4
	-[0x80000d14]:sd t6, 384(ra)
Current Store : [0x80000d18] : sd t5, 392(ra) -- Store: [0x80003578]:0x4000000000000100




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000d38]:KMMSB_U t6, t5, t4
	-[0x80000d3c]:sd t6, 400(ra)
Current Store : [0x80000d40] : sd t5, 408(ra) -- Store: [0x80003588]:0xFFFFFFF800000006




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000d64]:KMMSB_U t6, t5, t4
	-[0x80000d68]:sd t6, 416(ra)
Current Store : [0x80000d6c] : sd t5, 424(ra) -- Store: [0x80003598]:0xAAAAAAAB00400000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 1024', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000d88]:KMMSB_U t6, t5, t4
	-[0x80000d8c]:sd t6, 432(ra)
Current Store : [0x80000d90] : sd t5, 440(ra) -- Store: [0x800035a8]:0xFFFFFFFD00400000




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80000db8]:KMMSB_U t6, t5, t4
	-[0x80000dbc]:sd t6, 448(ra)
Current Store : [0x80000dc0] : sd t5, 456(ra) -- Store: [0x800035b8]:0xFFFBFFFFFFFF4AFD




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80000de8]:KMMSB_U t6, t5, t4
	-[0x80000dec]:sd t6, 464(ra)
Current Store : [0x80000df0] : sd t5, 472(ra) -- Store: [0x800035c8]:0xDFFFFFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000e0c]:KMMSB_U t6, t5, t4
	-[0x80000e10]:sd t6, 480(ra)
Current Store : [0x80000e14] : sd t5, 488(ra) -- Store: [0x800035d8]:0x0000000000002000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000e34]:KMMSB_U t6, t5, t4
	-[0x80000e38]:sd t6, 496(ra)
Current Store : [0x80000e3c] : sd t5, 504(ra) -- Store: [0x800035e8]:0x0000000500001000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000e68]:KMMSB_U t6, t5, t4
	-[0x80000e6c]:sd t6, 512(ra)
Current Store : [0x80000e70] : sd t5, 520(ra) -- Store: [0x800035f8]:0x5555555400000800




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w1_val == 262144', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000e8c]:KMMSB_U t6, t5, t4
	-[0x80000e90]:sd t6, 528(ra)
Current Store : [0x80000e94] : sd t5, 536(ra) -- Store: [0x80003608]:0x0004000000000400




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000ea8]:KMMSB_U t6, t5, t4
	-[0x80000eac]:sd t6, 544(ra)
Current Store : [0x80000eb0] : sd t5, 552(ra) -- Store: [0x80003618]:0x0000001000000080




Last Coverpoint : ['rs1_w1_val == -32769', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000ed4]:KMMSB_U t6, t5, t4
	-[0x80000ed8]:sd t6, 560(ra)
Current Store : [0x80000edc] : sd t5, 568(ra) -- Store: [0x80003628]:0xFFFF7FFF00000040




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000f04]:KMMSB_U t6, t5, t4
	-[0x80000f08]:sd t6, 576(ra)
Current Store : [0x80000f0c] : sd t5, 584(ra) -- Store: [0x80003638]:0x0000000400000020




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000f30]:KMMSB_U t6, t5, t4
	-[0x80000f34]:sd t6, 592(ra)
Current Store : [0x80000f38] : sd t5, 600(ra) -- Store: [0x80003648]:0xFFFFFFBF00000010




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000f4c]:KMMSB_U t6, t5, t4
	-[0x80000f50]:sd t6, 608(ra)
Current Store : [0x80000f54] : sd t5, 616(ra) -- Store: [0x80003658]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000f7c]:KMMSB_U t6, t5, t4
	-[0x80000f80]:sd t6, 624(ra)
Current Store : [0x80000f84] : sd t5, 632(ra) -- Store: [0x80003668]:0x00000004FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000fa0]:KMMSB_U t6, t5, t4
	-[0x80000fa4]:sd t6, 640(ra)
Current Store : [0x80000fa8] : sd t5, 648(ra) -- Store: [0x80003678]:0x0008000000200000




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000fcc]:KMMSB_U t6, t5, t4
	-[0x80000fd0]:sd t6, 656(ra)
Current Store : [0x80000fd4] : sd t5, 664(ra) -- Store: [0x80003688]:0x00004000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000ff8]:KMMSB_U t6, t5, t4
	-[0x80000ffc]:sd t6, 672(ra)
Current Store : [0x80001000] : sd t5, 680(ra) -- Store: [0x80003698]:0xFFFF4AFC33333334




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001020]:KMMSB_U t6, t5, t4
	-[0x80001024]:sd t6, 688(ra)
Current Store : [0x80001028] : sd t5, 696(ra) -- Store: [0x800036a8]:0x3FFFFFFF00000040




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001054]:KMMSB_U t6, t5, t4
	-[0x80001058]:sd t6, 704(ra)
Current Store : [0x8000105c] : sd t5, 712(ra) -- Store: [0x800036b8]:0x8000000066666666




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 16777216', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000107c]:KMMSB_U t6, t5, t4
	-[0x80001080]:sd t6, 720(ra)
Current Store : [0x80001084] : sd t5, 728(ra) -- Store: [0x800036c8]:0x01000000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800010a4]:KMMSB_U t6, t5, t4
	-[0x800010a8]:sd t6, 736(ra)
Current Store : [0x800010ac] : sd t5, 744(ra) -- Store: [0x800036d8]:0x000000800000B504




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800010cc]:KMMSB_U t6, t5, t4
	-[0x800010d0]:sd t6, 752(ra)
Current Store : [0x800010d4] : sd t5, 760(ra) -- Store: [0x800036e8]:0xDFFFFFFF00000000




Last Coverpoint : ['rs2_w0_val == -1073741825', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800010f8]:KMMSB_U t6, t5, t4
	-[0x800010fc]:sd t6, 768(ra)
Current Store : [0x80001100] : sd t5, 776(ra) -- Store: [0x800036f8]:0xFFFFFBFF66666666




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001120]:KMMSB_U t6, t5, t4
	-[0x80001124]:sd t6, 784(ra)
Current Store : [0x80001128] : sd t5, 792(ra) -- Store: [0x80003708]:0x00000004FFFFFFFD




Last Coverpoint : ['rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001150]:KMMSB_U t6, t5, t4
	-[0x80001154]:sd t6, 800(ra)
Current Store : [0x80001158] : sd t5, 808(ra) -- Store: [0x80003718]:0x00100000C0000000




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x8000117c]:KMMSB_U t6, t5, t4
	-[0x80001180]:sd t6, 816(ra)
Current Store : [0x80001184] : sd t5, 824(ra) -- Store: [0x80003728]:0xFFFEFFFF00000001




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800011a0]:KMMSB_U t6, t5, t4
	-[0x800011a4]:sd t6, 832(ra)
Current Store : [0x800011a8] : sd t5, 840(ra) -- Store: [0x80003738]:0x00010000C0000000




Last Coverpoint : ['rs2_w0_val == -8388609', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800011c4]:KMMSB_U t6, t5, t4
	-[0x800011c8]:sd t6, 848(ra)
Current Store : [0x800011cc] : sd t5, 856(ra) -- Store: [0x80003748]:0x0080000000000000




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x800011e8]:KMMSB_U t6, t5, t4
	-[0x800011ec]:sd t6, 864(ra)
Current Store : [0x800011f0] : sd t5, 872(ra) -- Store: [0x80003758]:0x0000000080000000




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80001210]:KMMSB_U t6, t5, t4
	-[0x80001214]:sd t6, 880(ra)
Current Store : [0x80001218] : sd t5, 888(ra) -- Store: [0x80003768]:0xFFFFFFFA00200000




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001244]:KMMSB_U t6, t5, t4
	-[0x80001248]:sd t6, 896(ra)
Current Store : [0x8000124c] : sd t5, 904(ra) -- Store: [0x80003778]:0xFEFFFFFF00000040




Last Coverpoint : ['rs2_w0_val == -1025', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000126c]:KMMSB_U t6, t5, t4
	-[0x80001270]:sd t6, 912(ra)
Current Store : [0x80001274] : sd t5, 920(ra) -- Store: [0x80003788]:0xFFFFFFFE00008000




Last Coverpoint : ['rs2_w0_val == -257', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000129c]:KMMSB_U t6, t5, t4
	-[0x800012a0]:sd t6, 928(ra)
Current Store : [0x800012a4] : sd t5, 936(ra) -- Store: [0x80003798]:0xFFBFFFFFFFFBFFFF




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x800012cc]:KMMSB_U t6, t5, t4
	-[0x800012d0]:sd t6, 944(ra)
Current Store : [0x800012d4] : sd t5, 952(ra) -- Store: [0x800037a8]:0xAAAAAAAB3FFFFFFF




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800012ec]:KMMSB_U t6, t5, t4
	-[0x800012f0]:sd t6, 960(ra)
Current Store : [0x800012f4] : sd t5, 968(ra) -- Store: [0x800037b8]:0x0000000500000000




Last Coverpoint : ['rs2_w0_val == -33', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001314]:KMMSB_U t6, t5, t4
	-[0x80001318]:sd t6, 976(ra)
Current Store : [0x8000131c] : sd t5, 984(ra) -- Store: [0x800037c8]:0xFFFDFFFF02000000




Last Coverpoint : ['rs2_w0_val == -17']
Last Code Sequence : 
	-[0x8000133c]:KMMSB_U t6, t5, t4
	-[0x80001340]:sd t6, 992(ra)
Current Store : [0x80001344] : sd t5, 1000(ra) -- Store: [0x800037d8]:0x000000040000B504




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80001364]:KMMSB_U t6, t5, t4
	-[0x80001368]:sd t6, 1008(ra)
Current Store : [0x8000136c] : sd t5, 1016(ra) -- Store: [0x800037e8]:0xFFFFFFF601000000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x8000138c]:KMMSB_U t6, t5, t4
	-[0x80001390]:sd t6, 1024(ra)
Current Store : [0x80001394] : sd t5, 1032(ra) -- Store: [0x800037f8]:0xFFFFF7FF66666667




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800013b8]:KMMSB_U t6, t5, t4
	-[0x800013bc]:sd t6, 1040(ra)
Current Store : [0x800013c0] : sd t5, 1048(ra) -- Store: [0x80003808]:0xFFFFFFF8FFFFFFFA




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x800013d8]:KMMSB_U t6, t5, t4
	-[0x800013dc]:sd t6, 1056(ra)
Current Store : [0x800013e0] : sd t5, 1064(ra) -- Store: [0x80003818]:0x0000008000100000




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001408]:KMMSB_U t6, t5, t4
	-[0x8000140c]:sd t6, 1072(ra)
Current Store : [0x80001410] : sd t5, 1080(ra) -- Store: [0x80003828]:0x3333333400000003




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001430]:KMMSB_U t6, t5, t4
	-[0x80001434]:sd t6, 1088(ra)
Current Store : [0x80001438] : sd t5, 1096(ra) -- Store: [0x80003838]:0xFFFFEFFF00000020




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000145c]:KMMSB_U t6, t5, t4
	-[0x80001460]:sd t6, 1104(ra)
Current Store : [0x80001464] : sd t5, 1112(ra) -- Store: [0x80003848]:0x3333333400004000




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x80001480]:KMMSB_U t6, t5, t4
	-[0x80001484]:sd t6, 1120(ra)
Current Store : [0x80001488] : sd t5, 1128(ra) -- Store: [0x80003858]:0xFFFFFFF9FFFFFEFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x800014a8]:KMMSB_U t6, t5, t4
	-[0x800014ac]:sd t6, 1136(ra)
Current Store : [0x800014b0] : sd t5, 1144(ra) -- Store: [0x80003868]:0x0000000600000004




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800014dc]:KMMSB_U t6, t5, t4
	-[0x800014e0]:sd t6, 1152(ra)
Current Store : [0x800014e4] : sd t5, 1160(ra) -- Store: [0x80003878]:0x7FFFFFFF00000400




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001508]:KMMSB_U t6, t5, t4
	-[0x8000150c]:sd t6, 1168(ra)
Current Store : [0x80001510] : sd t5, 1176(ra) -- Store: [0x80003888]:0xEFFFFFFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80001534]:KMMSB_U t6, t5, t4
	-[0x80001538]:sd t6, 1184(ra)
Current Store : [0x8000153c] : sd t5, 1192(ra) -- Store: [0x80003898]:0xF7FFFFFF00000003




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001560]:KMMSB_U t6, t5, t4
	-[0x80001564]:sd t6, 1200(ra)
Current Store : [0x80001568] : sd t5, 1208(ra) -- Store: [0x800038a8]:0xFBFFFFFFFFFF4AFD




Last Coverpoint : ['rs1_w1_val == -8388609', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000158c]:KMMSB_U t6, t5, t4
	-[0x80001590]:sd t6, 1216(ra)
Current Store : [0x80001594] : sd t5, 1224(ra) -- Store: [0x800038b8]:0xFF7FFFFF00010000




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800015c0]:KMMSB_U t6, t5, t4
	-[0x800015c4]:sd t6, 1232(ra)
Current Store : [0x800015c8] : sd t5, 1240(ra) -- Store: [0x800038c8]:0xFFDFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800015e8]:KMMSB_U t6, t5, t4
	-[0x800015ec]:sd t6, 1248(ra)
Current Store : [0x800015f0] : sd t5, 1256(ra) -- Store: [0x800038d8]:0xFFEFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w1_val == -524289', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001610]:KMMSB_U t6, t5, t4
	-[0x80001614]:sd t6, 1264(ra)
Current Store : [0x80001618] : sd t5, 1272(ra) -- Store: [0x800038e8]:0xFFF7FFFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001644]:KMMSB_U t6, t5, t4
	-[0x80001648]:sd t6, 1280(ra)
Current Store : [0x8000164c] : sd t5, 1288(ra) -- Store: [0x800038f8]:0xFFFFFDFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001668]:KMMSB_U t6, t5, t4
	-[0x8000166c]:sd t6, 1296(ra)
Current Store : [0x80001670] : sd t5, 1304(ra) -- Store: [0x80003908]:0xFFFFFEFF00800000




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80001688]:KMMSB_U t6, t5, t4
	-[0x8000168c]:sd t6, 1312(ra)
Current Store : [0x80001690] : sd t5, 1320(ra) -- Store: [0x80003918]:0xFFFFFF7F00000000




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == -33', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800016b0]:KMMSB_U t6, t5, t4
	-[0x800016b4]:sd t6, 1328(ra)
Current Store : [0x800016b8] : sd t5, 1336(ra) -- Store: [0x80003928]:0xFFFFFFDFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800016d8]:KMMSB_U t6, t5, t4
	-[0x800016dc]:sd t6, 1344(ra)
Current Store : [0x800016e0] : sd t5, 1352(ra) -- Store: [0x80003938]:0xFFFFFFF7AAAAAAAB




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80001708]:KMMSB_U t6, t5, t4
	-[0x8000170c]:sd t6, 1360(ra)
Current Store : [0x80001710] : sd t5, 1368(ra) -- Store: [0x80003948]:0xFFFFFFFB00000005




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001730]:KMMSB_U t6, t5, t4
	-[0x80001734]:sd t6, 1376(ra)
Current Store : [0x80001738] : sd t5, 1384(ra) -- Store: [0x80003958]:0x2000000000800000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x8000175c]:KMMSB_U t6, t5, t4
	-[0x80001760]:sd t6, 1392(ra)
Current Store : [0x80001764] : sd t5, 1400(ra) -- Store: [0x80003968]:0x0800000000100000




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x8000178c]:KMMSB_U t6, t5, t4
	-[0x80001790]:sd t6, 1408(ra)
Current Store : [0x80001794] : sd t5, 1416(ra) -- Store: [0x80003978]:0x02000000FFFFFFFA




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800017b8]:KMMSB_U t6, t5, t4
	-[0x800017bc]:sd t6, 1424(ra)
Current Store : [0x800017c0] : sd t5, 1432(ra) -- Store: [0x80003988]:0x0020000000000040




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800017e0]:KMMSB_U t6, t5, t4
	-[0x800017e4]:sd t6, 1440(ra)
Current Store : [0x800017e8] : sd t5, 1448(ra) -- Store: [0x80003998]:0x0002000020000000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x8000180c]:KMMSB_U t6, t5, t4
	-[0x80001810]:sd t6, 1456(ra)
Current Store : [0x80001814] : sd t5, 1464(ra) -- Store: [0x800039a8]:0x00008000AAAAAAAA




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x8000182c]:KMMSB_U t6, t5, t4
	-[0x80001830]:sd t6, 1472(ra)
Current Store : [0x80001834] : sd t5, 1480(ra) -- Store: [0x800039b8]:0x0000100000000004




Last Coverpoint : ['rs2_w1_val == 1431655765', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000185c]:KMMSB_U t6, t5, t4
	-[0x80001860]:sd t6, 1488(ra)
Current Store : [0x80001864] : sd t5, 1496(ra) -- Store: [0x800039c8]:0x0000040000000004




Last Coverpoint : ['rs1_w1_val == 512', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001884]:KMMSB_U t6, t5, t4
	-[0x80001888]:sd t6, 1504(ra)
Current Store : [0x8000188c] : sd t5, 1512(ra) -- Store: [0x800039d8]:0x00000200FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800018a8]:KMMSB_U t6, t5, t4
	-[0x800018ac]:sd t6, 1520(ra)
Current Store : [0x800018b0] : sd t5, 1528(ra) -- Store: [0x800039e8]:0x0000004000008000




Last Coverpoint : ['rs1_w1_val == 2048', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800018d4]:KMMSB_U t6, t5, t4
	-[0x800018d8]:sd t6, 1536(ra)
Current Store : [0x800018dc] : sd t5, 1544(ra) -- Store: [0x800039f8]:0x00000800FFF7FFFF




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800018fc]:KMMSB_U t6, t5, t4
	-[0x80001900]:sd t6, 1552(ra)
Current Store : [0x80001904] : sd t5, 1560(ra) -- Store: [0x80003a08]:0x0000000800000080




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001938]:KMMSB_U t6, t5, t4
	-[0x8000193c]:sd t6, 1568(ra)
Current Store : [0x80001940] : sd t5, 1576(ra) -- Store: [0x80003a18]:0x0000000133333333




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001958]:KMMSB_U t6, t5, t4
	-[0x8000195c]:sd t6, 1584(ra)
Current Store : [0x80001960] : sd t5, 1592(ra) -- Store: [0x80003a28]:0xFFFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001988]:KMMSB_U t6, t5, t4
	-[0x8000198c]:sd t6, 1600(ra)
Current Store : [0x80001990] : sd t5, 1608(ra) -- Store: [0x80003a38]:0xFF7FFFFFBFFFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800019c0]:KMMSB_U t6, t5, t4
	-[0x800019c4]:sd t6, 1616(ra)
Current Store : [0x800019c8] : sd t5, 1624(ra) -- Store: [0x80003a48]:0x55555554FBFFFFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800019e8]:KMMSB_U t6, t5, t4
	-[0x800019ec]:sd t6, 1632(ra)
Current Store : [0x800019f0] : sd t5, 1640(ra) -- Store: [0x80003a58]:0x00000200FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001a14]:KMMSB_U t6, t5, t4
	-[0x80001a18]:sd t6, 1648(ra)
Current Store : [0x80001a1c] : sd t5, 1656(ra) -- Store: [0x80003a68]:0x00000005FFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001a48]:KMMSB_U t6, t5, t4
	-[0x80001a4c]:sd t6, 1664(ra)
Current Store : [0x80001a50] : sd t5, 1672(ra) -- Store: [0x80003a78]:0x08000000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001a74]:KMMSB_U t6, t5, t4
	-[0x80001a78]:sd t6, 1680(ra)
Current Store : [0x80001a7c] : sd t5, 1688(ra) -- Store: [0x80003a88]:0x08000000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001a94]:KMMSB_U t6, t5, t4
	-[0x80001a98]:sd t6, 1696(ra)
Current Store : [0x80001a9c] : sd t5, 1704(ra) -- Store: [0x80003a98]:0xFFBFFFFFFFFFFFBF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001ac0]:KMMSB_U t6, t5, t4
	-[0x80001ac4]:sd t6, 1712(ra)
Current Store : [0x80001ac8] : sd t5, 1720(ra) -- Store: [0x80003aa8]:0x00002000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001ae4]:KMMSB_U t6, t5, t4
	-[0x80001ae8]:sd t6, 1728(ra)
Current Store : [0x80001aec] : sd t5, 1736(ra) -- Store: [0x80003ab8]:0x00000010FFFFFFEF




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001b0c]:KMMSB_U t6, t5, t4
	-[0x80001b10]:sd t6, 1744(ra)
Current Store : [0x80001b14] : sd t5, 1752(ra) -- Store: [0x80003ac8]:0x00000080FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001b40]:KMMSB_U t6, t5, t4
	-[0x80001b44]:sd t6, 1760(ra)
Current Store : [0x80001b48] : sd t5, 1768(ra) -- Store: [0x80003ad8]:0x08000000FFFFFFFB




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001b64]:KMMSB_U t6, t5, t4
	-[0x80001b68]:sd t6, 1776(ra)
Current Store : [0x80001b6c] : sd t5, 1784(ra) -- Store: [0x80003ae8]:0x0000000740000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001b80]:KMMSB_U t6, t5, t4
	-[0x80001b84]:sd t6, 1792(ra)
Current Store : [0x80001b88] : sd t5, 1800(ra) -- Store: [0x80003af8]:0x0000000010000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001bac]:KMMSB_U t6, t5, t4
	-[0x80001bb0]:sd t6, 1808(ra)
Current Store : [0x80001bb4] : sd t5, 1816(ra) -- Store: [0x80003b08]:0x3333333208000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001bd4]:KMMSB_U t6, t5, t4
	-[0x80001bd8]:sd t6, 1824(ra)
Current Store : [0x80001bdc] : sd t5, 1832(ra) -- Store: [0x80003b18]:0xFFFEFFFF04000000




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80001c04]:KMMSB_U t6, t5, t4
	-[0x80001c08]:sd t6, 1840(ra)
Current Store : [0x80001c0c] : sd t5, 1848(ra) -- Store: [0x80003b28]:0xFFFFBFFF00000007




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80001c28]:KMMSB_U t6, t5, t4
	-[0x80001c2c]:sd t6, 1856(ra)
Current Store : [0x80001c30] : sd t5, 1864(ra) -- Store: [0x80003b38]:0x0000020000200000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001c58]:KMMSB_U t6, t5, t4
	-[0x80001c5c]:sd t6, 1872(ra)
Current Store : [0x80001c60] : sd t5, 1880(ra) -- Store: [0x80003b48]:0xFFFFBFFF00080000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80001c84]:KMMSB_U t6, t5, t4
	-[0x80001c88]:sd t6, 1888(ra)
Current Store : [0x80001c8c] : sd t5, 1896(ra) -- Store: [0x80003b58]:0xC000000000040000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80001cb4]:KMMSB_U t6, t5, t4
	-[0x80001cb8]:sd t6, 1904(ra)
Current Store : [0x80001cbc] : sd t5, 1912(ra) -- Store: [0x80003b68]:0x0000B50566666666




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80001cdc]:KMMSB_U t6, t5, t4
	-[0x80001ce0]:sd t6, 1920(ra)
Current Store : [0x80001ce4] : sd t5, 1928(ra) -- Store: [0x80003b78]:0xFFFFFFFD00000020




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w1_val == 1048576', 'rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80001d08]:KMMSB_U t6, t5, t4
	-[0x80001d0c]:sd t6, 1936(ra)
Current Store : [0x80001d10] : sd t5, 1944(ra) -- Store: [0x80003b88]:0xFFFFFFF680000000




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 2', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001d2c]:KMMSB_U t6, t5, t4
	-[0x80001d30]:sd t6, 1952(ra)
Current Store : [0x80001d34] : sd t5, 1960(ra) -- Store: [0x80003b98]:0x0000000280000000




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -67108865', 'rs2_w0_val == -8193', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001d60]:KMMSB_U t6, t5, t4
	-[0x80001d64]:sd t6, 1968(ra)
Current Store : [0x80001d68] : sd t5, 1976(ra) -- Store: [0x80003ba8]:0x004000000000B503




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001d98]:KMMSB_U t6, t5, t4
	-[0x80001d9c]:sd t6, 1984(ra)
Current Store : [0x80001da0] : sd t5, 1992(ra) -- Store: [0x80003bb8]:0x3FFFFFFF66666665





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

|s.no|            signature             |                                                                                                coverpoints                                                                                                |                                  code                                   |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xAB7FBA6FAB7FBB6E|- opcode : kmmsb.u<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 1048576<br> - rs2_w0_val == -65537<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == -65537<br> |[0x800003c4]:KMMSB_U a1, a0, a0<br> [0x800003c8]:sd a1, 0(t0)<br>        |
|   2|[0x80003220]<br>0x8E38E38DFFFFFFFA|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs1_w1_val == -1431655766<br>                                                                         |[0x800003e8]:KMMSB_U s1, s1, s1<br> [0x800003ec]:sd s1, 16(t0)<br>       |
|   3|[0x80003230]<br>0xB7FBB6FAB7FBB6FA|- rs1 : x17<br> - rs2 : x0<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 2<br>               |[0x8000040c]:KMMSB_U t2, a7, zero<br> [0x80000410]:sd t2, 32(t0)<br>     |
|   4|[0x80003240]<br>0x0000000200410000|- rs1 : x6<br> - rs2 : x21<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4194304<br>                         |[0x80000438]:KMMSB_U t1, t1, s5<br> [0x8000043c]:sd t1, 48(t0)<br>       |
|   5|[0x80003250]<br>0xC0000FFFFFFFFFF6|- rs1 : x3<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 0<br>                                                         |[0x80000458]:KMMSB_U fp, gp, fp<br> [0x8000045c]:sd fp, 64(t0)<br>       |
|   6|[0x80003260]<br>0xB7DDBFDDB7D5BFE0|- rs1 : x15<br> - rs2 : x14<br> - rd : x20<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == 4194304<br>                                                                                                  |[0x8000048c]:KMMSB_U s4, a5, a4<br> [0x80000490]:sd s4, 80(t0)<br>       |
|   7|[0x80003270]<br>0xDB15330DD5BFDDB7|- rs1 : x11<br> - rs2 : x23<br> - rd : x12<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == 1431655765<br>                                                                  |[0x800004b8]:KMMSB_U a2, a1, s7<br> [0x800004bc]:sd a2, 96(t0)<br>       |
|   8|[0x80003280]<br>0xFEEDBEADFEEDBEAD|- rs1 : x7<br> - rs2 : x16<br> - rd : x1<br> - rs2_w1_val == -134217729<br>                                                                                                                                |[0x800004e8]:KMMSB_U ra, t2, a6<br> [0x800004ec]:sd ra, 112(t0)<br>      |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x0<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -8193<br>                                                                                                      |[0x8000051c]:KMMSB_U zero, s10, s9<br> [0x80000520]:sd zero, 128(t0)<br> |
|  10|[0x800032a0]<br>0xBF5DB7D5BFDDB7D5|- rs1 : x12<br> - rs2 : x30<br> - rd : x4<br> - rs2_w1_val == -33554433<br>                                                                                                                                |[0x80000544]:KMMSB_U tp, a2, t5<br> [0x80000548]:sd tp, 144(t0)<br>      |
|  11|[0x800032b0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : x4<br> - rs2 : x24<br> - rd : x28<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 2<br> - rs1_w0_val == -4194305<br>                                                                             |[0x80000570]:KMMSB_U t3, tp, s8<br> [0x80000574]:sd t3, 160(t0)<br>      |
|  12|[0x800032c0]<br>0x0040000000560A59|- rs1 : x24<br> - rs2 : x31<br> - rd : x26<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -16777217<br>                                                                                                  |[0x800005a0]:KMMSB_U s10, s8, t6<br> [0x800005a4]:sd s10, 176(t0)<br>    |
|  13|[0x800032d0]<br>0xFF76DF56FF76DF56|- rs1 : x0<br> - rs2 : x3<br> - rd : x2<br> - rs2_w1_val == -4194305<br> - rs1_w1_val == 0<br>                                                                                                             |[0x800005d8]:KMMSB_U sp, zero, gp<br> [0x800005dc]:sd sp, 192(t0)<br>    |
|  14|[0x800032e0]<br>0xEFFFFFE8FFDFFFFD|- rs1 : x29<br> - rs2 : x17<br> - rd : x23<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 4<br> - rs1_w0_val == 2147483647<br>                                                                           |[0x80000604]:KMMSB_U s7, t4, a7<br> [0x80000608]:sd s7, 208(t0)<br>      |
|  15|[0x800032f0]<br>0xFFBAAAA900000005|- rs1 : x14<br> - rs2 : x18<br> - rd : x3<br> - rs2_w1_val == -1048577<br>                                                                                                                                 |[0x80000628]:KMMSB_U gp, a4, s2<br> [0x8000062c]:sd gp, 224(t0)<br>      |
|  16|[0x80003300]<br>0x0001999255555554|- rs1 : x13<br> - rs2 : x6<br> - rd : x24<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 8<br>                                                                                                            |[0x8000065c]:KMMSB_U s8, a3, t1<br> [0x80000660]:sd s8, 240(t0)<br>      |
|  17|[0x80003310]<br>0xFC0000FFFFFFDFFF|- rs1 : x27<br> - rs2 : x1<br> - rd : x25<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 8388608<br>                                                                                                      |[0x8000068c]:KMMSB_U s9, s11, ra<br> [0x80000690]:sd s9, 0(gp)<br>       |
|  18|[0x80003320]<br>0x7FFFFF7FFC000000|- rs1 : x19<br> - rs2 : x22<br> - rd : x21<br> - rs2_w1_val == -131073<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 4<br>                                                                              |[0x800006b4]:KMMSB_U s5, s3, s6<br> [0x800006b8]:sd s5, 16(gp)<br>       |
|  19|[0x80003330]<br>0xFDFFBFFFFFDFFFFF|- rs1 : x18<br> - rs2 : x29<br> - rd : x30<br> - rs2_w1_val == -65537<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -33554433<br>                                                                    |[0x800006e0]:KMMSB_U t5, s2, t4<br> [0x800006e4]:sd t5, 32(gp)<br>       |
|  20|[0x80003340]<br>0xFFDFFFFFFFFFF99E|- rs1 : x23<br> - rs2 : x12<br> - rd : x17<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 8192<br>                                                                                                         |[0x80000718]:KMMSB_U a7, s7, a2<br> [0x8000071c]:sd a7, 48(gp)<br>       |
|  21|[0x80003350]<br>0xFFFF03FFFFFFFFFA|- rs1 : x25<br> - rs2 : x13<br> - rd : x29<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -257<br>                                                 |[0x80000748]:KMMSB_U t4, s9, a3<br> [0x8000074c]:sd t4, 64(gp)<br>       |
|  22|[0x80003360]<br>0xAAAAACAB00000000|- rs1 : x21<br> - rs2 : x20<br> - rd : x14<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 4096<br> - rs1_w0_val == 131072<br>                                                                               |[0x80000778]:KMMSB_U a4, s5, s4<br> [0x8000077c]:sd a4, 80(gp)<br>       |
|  23|[0x80003370]<br>0xFFFFBFFFFFFFF7FF|- rs1 : x5<br> - rs2 : x11<br> - rd : x13<br> - rs2_w1_val == -4097<br> - rs1_w1_val == 32<br>                                                                                                             |[0x800007a4]:KMMSB_U a3, t0, a1<br> [0x800007a8]:sd a3, 96(gp)<br>       |
|  24|[0x80003380]<br>0x00100000FFFEFFFF|- rs1 : x28<br> - rs2 : x7<br> - rd : x10<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 1<br> - rs1_w1_val == -131073<br>                                                                                  |[0x800007d0]:KMMSB_U a0, t3, t2<br> [0x800007d4]:sd a0, 112(gp)<br>      |
|  25|[0x80003390]<br>0x00400000AAAAC14B|- rs1 : x2<br> - rs2 : x19<br> - rd : x15<br> - rs2_w1_val == -1025<br> - rs1_w0_val == 536870912<br>                                                                                                      |[0x800007f8]:KMMSB_U a5, sp, s3<br> [0x800007fc]:sd a5, 128(gp)<br>      |
|  26|[0x800033a0]<br>0xFFFDFFFFC0000100|- rs1 : x30<br> - rs2 : x27<br> - rd : x22<br> - rs2_w1_val == -513<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == -17<br> - rs1_w0_val == 1048576<br>                                                   |[0x80000820]:KMMSB_U s6, t5, s11<br> [0x80000824]:sd s6, 144(gp)<br>     |
|  27|[0x800033b0]<br>0x0000001F00000001|- rs1 : x1<br> - rs2 : x26<br> - rd : x5<br> - rs2_w1_val == -257<br> - rs1_w1_val == -16777217<br>                                                                                                        |[0x80000844]:KMMSB_U t0, ra, s10<br> [0x80000848]:sd t0, 160(gp)<br>     |
|  28|[0x800033c0]<br>0xF7FFFFFFFFFF4AFE|- rs1 : x8<br> - rs2 : x4<br> - rd : x16<br> - rs2_w1_val == -129<br> - rs1_w0_val == -1431655766<br>                                                                                                      |[0x8000086c]:KMMSB_U a6, fp, tp<br> [0x80000870]:sd a6, 176(gp)<br>      |
|  29|[0x800033d0]<br>0xFFFFFDFF05455555|- rs1 : x16<br> - rs2 : x2<br> - rd : x27<br> - rs2_w1_val == -65<br> - rs1_w0_val == -268435457<br>                                                                                                       |[0x80000898]:KMMSB_U s11, a6, sp<br> [0x8000089c]:sd s11, 192(gp)<br>    |
|  30|[0x800033e0]<br>0xFF7FFFFBFF555554|- rs1 : x22<br> - rs2 : x5<br> - rd : x31<br> - rs2_w1_val == -33<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 16777216<br>                                          |[0x800008c4]:KMMSB_U t6, s6, t0<br> [0x800008c8]:sd t6, 208(gp)<br>      |
|  31|[0x800033f0]<br>0xBFFFFFFFE8AAAAAA|- rs1 : x20<br> - rs2 : x15<br> - rd : x18<br> - rs2_w1_val == -17<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 1431655765<br>                                                                             |[0x800008fc]:KMMSB_U s2, s4, a5<br> [0x80000900]:sd s2, 0(ra)<br>        |
|  32|[0x80003400]<br>0xFFFFFBFF0004A051|- rs1 : x31<br> - rs2 : x28<br> - rd : x19<br> - rs2_w1_val == -9<br> - rs1_w1_val == -2<br>                                                                                                               |[0x80000924]:KMMSB_U s3, t6, t3<br> [0x80000928]:sd s3, 16(ra)<br>       |
|  33|[0x80003410]<br>0xFFFFFFFEF5655555|- rs2_w1_val == -5<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                      |[0x8000094c]:KMMSB_U t6, t5, t4<br> [0x80000950]:sd t6, 32(ra)<br>       |
|  34|[0x80003420]<br>0xFFFFFFFEF5655554|- rs2_w1_val == -3<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -16385<br>                                                                                                                              |[0x80000980]:KMMSB_U t6, t5, t4<br> [0x80000984]:sd t6, 48(ra)<br>       |
|  35|[0x80003430]<br>0xFFFFFFFEF5655BBB|- rs2_w1_val == -2<br> - rs2_w0_val == -4097<br>                                                                                                                                                           |[0x800009ac]:KMMSB_U t6, t5, t4<br> [0x800009b0]:sd t6, 64(ra)<br>       |
|  36|[0x80003440]<br>0x00005A7FF5655BBB|- rs2_w1_val == -2147483648<br>                                                                                                                                                                            |[0x800009d4]:KMMSB_U t6, t5, t4<br> [0x800009d8]:sd t6, 80(ra)<br>       |
|  37|[0x80003450]<br>0x00005A7DF5655BBB|- rs2_w1_val == 1073741824<br> - rs2_w0_val == -513<br>                                                                                                                                                    |[0x800009f8]:KMMSB_U t6, t5, t4<br> [0x800009fc]:sd t6, 96(ra)<br>       |
|  38|[0x80003460]<br>0x00085A7DF5855BBB|- rs2_w1_val == 536870912<br> - rs2_w0_val == 536870912<br> - rs1_w0_val == -16777217<br>                                                                                                                  |[0x80000a24]:KMMSB_U t6, t5, t4<br> [0x80000a28]:sd t6, 112(ra)<br>      |
|  39|[0x80003470]<br>0x0008587DF5855BBB|- rs2_w1_val == 268435456<br> - rs2_w0_val == -524289<br>                                                                                                                                                  |[0x80000a54]:KMMSB_U t6, t5, t4<br> [0x80000a58]:sd t6, 128(ra)<br>      |
|  40|[0x80003480]<br>0x00085875F5855BBB|- rs2_w1_val == 134217728<br> - rs1_w1_val == 256<br> - rs1_w0_val == 512<br>                                                                                                                              |[0x80000a84]:KMMSB_U t6, t5, t4<br> [0x80000a88]:sd t6, 144(ra)<br>      |
|  41|[0x80003490]<br>0x00083875F5851F64|- rs2_w1_val == 67108864<br> - rs1_w1_val == 524288<br>                                                                                                                                                    |[0x80000ac4]:KMMSB_U t6, t5, t4<br> [0x80000ac8]:sd t6, 160(ra)<br>      |
|  42|[0x800034a0]<br>0x00082875F5851F64|- rs2_w1_val == 33554432<br> - rs1_w0_val == -32769<br>                                                                                                                                                    |[0x80000af0]:KMMSB_U t6, t5, t4<br> [0x80000af4]:sd t6, 176(ra)<br>      |
|  43|[0x800034b0]<br>0x00082875F5853F64|- rs2_w1_val == 16777216<br>                                                                                                                                                                               |[0x80000b18]:KMMSB_U t6, t5, t4<br> [0x80000b1c]:sd t6, 192(ra)<br>      |
|  44|[0x800034c0]<br>0x00082875F5853F62|- rs2_w1_val == 8388608<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 8<br>                                                                                                                           |[0x80000b3c]:KMMSB_U t6, t5, t4<br> [0x80000b40]:sd t6, 208(ra)<br>      |
|  45|[0x800034d0]<br>0x0008287DF5853F62|- rs2_w1_val == 4194304<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 16384<br>                                                                                                                            |[0x80000b64]:KMMSB_U t6, t5, t4<br> [0x80000b68]:sd t6, 224(ra)<br>      |
|  46|[0x800034e0]<br>0x00082885F5853F62|- rs2_w1_val == 2097152<br> - rs2_w0_val == 16384<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -2<br>                                                                                                    |[0x80000b8c]:KMMSB_U t6, t5, t4<br> [0x80000b90]:sd t6, 240(ra)<br>      |
|  47|[0x800034f0]<br>0x00057DDAF5853F61|- rs2_w1_val == 524288<br> - rs2_w0_val == -1<br>                                                                                                                                                          |[0x80000bbc]:KMMSB_U t6, t5, t4<br> [0x80000bc0]:sd t6, 256(ra)<br>      |
|  48|[0x80003500]<br>0x000585DAF5853F61|- rs2_w1_val == 262144<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -33554433<br>                                                                                                                     |[0x80000be4]:KMMSB_U t6, t5, t4<br> [0x80000be8]:sd t6, 272(ra)<br>      |
|  49|[0x80003510]<br>0x000585DAF585030B|- rs2_w1_val == 131072<br>                                                                                                                                                                                 |[0x80000c18]:KMMSB_U t6, t5, t4<br> [0x80000c1c]:sd t6, 288(ra)<br>      |
|  50|[0x80003520]<br>0x0005DB2FF585030B|- rs2_w1_val == 65536<br> - rs2_w0_val == -2<br> - rs1_w0_val == 2<br>                                                                                                                                     |[0x80000c44]:KMMSB_U t6, t5, t4<br> [0x80000c48]:sd t6, 304(ra)<br>      |
|  51|[0x80003530]<br>0x0005DB2FF585030C|- rs2_w1_val == 32768<br> - rs1_w1_val == 16<br> - rs1_w0_val == -536870913<br>                                                                                                                            |[0x80000c68]:KMMSB_U t6, t5, t4<br> [0x80000c6c]:sd t6, 320(ra)<br>      |
|  52|[0x80003540]<br>0x0005DA2FF785030C|- rs2_w1_val == 16384<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -134217729<br>                                                                                                                      |[0x80000c98]:KMMSB_U t6, t5, t4<br> [0x80000c9c]:sd t6, 336(ra)<br>      |
|  53|[0x80003550]<br>0x0005DA2FF784ADB7|- rs2_w1_val == 8192<br> - rs2_w0_val == 65536<br> - rs1_w1_val == -65<br>                                                                                                                                 |[0x80000cc0]:KMMSB_U t6, t5, t4<br> [0x80000cc4]:sd t6, 352(ra)<br>      |
|  54|[0x80003560]<br>0x0005DA2FF784ADB7|- rs2_w1_val == 4096<br>                                                                                                                                                                                   |[0x80000ce8]:KMMSB_U t6, t5, t4<br> [0x80000cec]:sd t6, 368(ra)<br>      |
|  55|[0x80003570]<br>0x0005D82FF784ADB7|- rs2_w1_val == 2048<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 256<br>                                                                                                                            |[0x80000d10]:KMMSB_U t6, t5, t4<br> [0x80000d14]:sd t6, 384(ra)<br>      |
|  56|[0x80003580]<br>0x0005D82FF784ADB7|- rs2_w1_val == 1024<br> - rs2_w0_val == -4194305<br>                                                                                                                                                      |[0x80000d38]:KMMSB_U t6, t5, t4<br> [0x80000d3c]:sd t6, 400(ra)<br>      |
|  57|[0x80003590]<br>0x0005D8DAF7842DB7|- rs2_w1_val == 512<br> - rs2_w0_val == 33554432<br>                                                                                                                                                       |[0x80000d64]:KMMSB_U t6, t5, t4<br> [0x80000d68]:sd t6, 416(ra)<br>      |
|  58|[0x800035a0]<br>0x0005D8DAF7842DB6|- rs2_w1_val == 256<br> - rs2_w0_val == 1024<br> - rs1_w1_val == -3<br>                                                                                                                                    |[0x80000d88]:KMMSB_U t6, t5, t4<br> [0x80000d8c]:sd t6, 432(ra)<br>      |
|  59|[0x800035b0]<br>0x0005D8DAF7846A0C|- rs2_w1_val == 128<br> - rs1_w1_val == -262145<br>                                                                                                                                                        |[0x80000db8]:KMMSB_U t6, t5, t4<br> [0x80000dbc]:sd t6, 448(ra)<br>      |
|  60|[0x800035c0]<br>0x0005D8E2F7846A0B|- rs2_w1_val == 64<br>                                                                                                                                                                                     |[0x80000de8]:KMMSB_U t6, t5, t4<br> [0x80000dec]:sd t6, 464(ra)<br>      |
|  61|[0x800035d0]<br>0x0005D8E2F7846A0B|- rs1_w0_val == 8192<br>                                                                                                                                                                                   |[0x80000e0c]:KMMSB_U t6, t5, t4<br> [0x80000e10]:sd t6, 480(ra)<br>      |
|  62|[0x800035e0]<br>0x0005D8E2F784660B|- rs1_w0_val == 4096<br>                                                                                                                                                                                   |[0x80000e34]:KMMSB_U t6, t5, t4<br> [0x80000e38]:sd t6, 496(ra)<br>      |
|  63|[0x800035f0]<br>0x0005D8E0F7846360|- rs1_w0_val == 2048<br>                                                                                                                                                                                   |[0x80000e68]:KMMSB_U t6, t5, t4<br> [0x80000e6c]:sd t6, 512(ra)<br>      |
|  64|[0x80003600]<br>0x0005D8E0F7846360|- rs2_w0_val == -9<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 1024<br>                                                                                                                                 |[0x80000e8c]:KMMSB_U t6, t5, t4<br> [0x80000e90]:sd t6, 528(ra)<br>      |
|  65|[0x80003610]<br>0x0005D8E0F7846350|- rs1_w0_val == 128<br>                                                                                                                                                                                    |[0x80000ea8]:KMMSB_U t6, t5, t4<br> [0x80000eac]:sd t6, 544(ra)<br>      |
|  66|[0x80003620]<br>0x0005D4E0F7846350|- rs1_w1_val == -32769<br> - rs1_w0_val == 64<br>                                                                                                                                                          |[0x80000ed4]:KMMSB_U t6, t5, t4<br> [0x80000ed8]:sd t6, 560(ra)<br>      |
|  67|[0x80003630]<br>0x0005D4E0F784635B|- rs1_w0_val == 32<br>                                                                                                                                                                                     |[0x80000f04]:KMMSB_U t6, t5, t4<br> [0x80000f08]:sd t6, 576(ra)<br>      |
|  68|[0x80003640]<br>0x0005D4CAF784635B|- rs2_w0_val == 4194304<br> - rs1_w0_val == 16<br>                                                                                                                                                         |[0x80000f30]:KMMSB_U t6, t5, t4<br> [0x80000f34]:sd t6, 592(ra)<br>      |
|  69|[0x80003650]<br>0x0005D4CAF784635B|- rs2_w0_val == 524288<br> - rs1_w0_val == 1<br>                                                                                                                                                           |[0x80000f4c]:KMMSB_U t6, t5, t4<br> [0x80000f50]:sd t6, 608(ra)<br>      |
|  70|[0x80003660]<br>0x0005D4CAF784635B|- rs1_w0_val == -1<br>                                                                                                                                                                                     |[0x80000f7c]:KMMSB_U t6, t5, t4<br> [0x80000f80]:sd t6, 624(ra)<br>      |
|  71|[0x80003670]<br>0x0005D4CAF784635B|- rs2_w1_val == 32<br> - rs1_w0_val == 2097152<br>                                                                                                                                                         |[0x80000fa0]:KMMSB_U t6, t5, t4<br> [0x80000fa4]:sd t6, 640(ra)<br>      |
|  72|[0x80003680]<br>0x0005D4CAF784635B|- rs2_w1_val == 16<br>                                                                                                                                                                                     |[0x80000fcc]:KMMSB_U t6, t5, t4<br> [0x80000fd0]:sd t6, 656(ra)<br>      |
|  73|[0x80003690]<br>0x0005D4CAF5EAC9C1|- rs2_w1_val == 8<br> - rs2_w0_val == 134217728<br>                                                                                                                                                        |[0x80000ff8]:KMMSB_U t6, t5, t4<br> [0x80000ffc]:sd t6, 672(ra)<br>      |
|  74|[0x800036a0]<br>0x0005D4C9F5EAC9C1|- rs2_w1_val == 4<br> - rs2_w0_val == 64<br>                                                                                                                                                               |[0x80001020]:KMMSB_U t6, t5, t4<br> [0x80001024]:sd t6, 688(ra)<br>      |
|  75|[0x800036b0]<br>0x0005D4CAF5D13027|- rs2_w1_val == 2<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                      |[0x80001054]:KMMSB_U t6, t5, t4<br> [0x80001058]:sd t6, 704(ra)<br>      |
|  76|[0x800036c0]<br>0x0005D4CAF5D13027|- rs2_w1_val == 1<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -1025<br>                                                                                                                               |[0x8000107c]:KMMSB_U t6, t5, t4<br> [0x80001080]:sd t6, 720(ra)<br>      |
|  77|[0x800036d0]<br>0x0005D4CAF5D13027|- rs2_w1_val == -1<br> - rs1_w1_val == 128<br>                                                                                                                                                             |[0x800010a4]:KMMSB_U t6, t5, t4<br> [0x800010a8]:sd t6, 736(ra)<br>      |
|  78|[0x800036e0]<br>0x0025D4CAF5D13027|- rs2_w0_val == 2147483647<br>                                                                                                                                                                             |[0x800010cc]:KMMSB_U t6, t5, t4<br> [0x800010d0]:sd t6, 752(ra)<br>      |
|  79|[0x800036f0]<br>0x0025D4CA0F6AC9C1|- rs2_w0_val == -1073741825<br> - rs1_w1_val == -1025<br>                                                                                                                                                  |[0x800010f8]:KMMSB_U t6, t5, t4<br> [0x800010fc]:sd t6, 768(ra)<br>      |
|  80|[0x80003700]<br>0x0025D4CA0F6AC9C1|- rs2_w0_val == -536870913<br> - rs1_w0_val == -3<br>                                                                                                                                                      |[0x80001120]:KMMSB_U t6, t5, t4<br> [0x80001124]:sd t6, 784(ra)<br>      |
|  81|[0x80003710]<br>0x001F6E640B6AC9C1|- rs2_w0_val == -268435457<br>                                                                                                                                                                             |[0x80001150]:KMMSB_U t6, t5, t4<br> [0x80001154]:sd t6, 800(ra)<br>      |
|  82|[0x80003720]<br>0x001F6EA40B6AC9C1|- rs2_w0_val == -134217729<br> - rs1_w1_val == -65537<br>                                                                                                                                                  |[0x8000117c]:KMMSB_U t6, t5, t4<br> [0x80001180]:sd t6, 816(ra)<br>      |
|  83|[0x80003730]<br>0x001F6EA40AEAC9C1|- rs2_w0_val == -33554433<br> - rs1_w1_val == 65536<br>                                                                                                                                                    |[0x800011a0]:KMMSB_U t6, t5, t4<br> [0x800011a4]:sd t6, 832(ra)<br>      |
|  84|[0x80003740]<br>0x001F6EA50AEAC9C1|- rs2_w0_val == -8388609<br> - rs1_w1_val == 8388608<br>                                                                                                                                                   |[0x800011c4]:KMMSB_U t6, t5, t4<br> [0x800011c8]:sd t6, 848(ra)<br>      |
|  85|[0x80003750]<br>0x001F6EA50AE9C9C0|- rs2_w0_val == -131073<br>                                                                                                                                                                                |[0x800011e8]:KMMSB_U t6, t5, t4<br> [0x800011ec]:sd t6, 864(ra)<br>      |
|  86|[0x80003760]<br>0x001F6EA50AE9C9D0|- rs2_w0_val == -32769<br>                                                                                                                                                                                 |[0x80001210]:KMMSB_U t6, t5, t4<br> [0x80001214]:sd t6, 880(ra)<br>      |
|  87|[0x80003770]<br>0x001F8EA50AE9C9D0|- rs2_w0_val == -16385<br>                                                                                                                                                                                 |[0x80001244]:KMMSB_U t6, t5, t4<br> [0x80001248]:sd t6, 896(ra)<br>      |
|  88|[0x80003780]<br>0x001F8EA50AE9C9D0|- rs2_w0_val == -1025<br> - rs1_w0_val == 32768<br>                                                                                                                                                        |[0x8000126c]:KMMSB_U t6, t5, t4<br> [0x80001270]:sd t6, 912(ra)<br>      |
|  89|[0x80003790]<br>0x001FCEA50AE9C9D0|- rs2_w0_val == -257<br> - rs1_w0_val == -262145<br>                                                                                                                                                       |[0x8000129c]:KMMSB_U t6, t5, t4<br> [0x800012a0]:sd t6, 928(ra)<br>      |
|  90|[0x800037a0]<br>0x001FCEA60AE9C9F0|- rs2_w0_val == -129<br>                                                                                                                                                                                   |[0x800012cc]:KMMSB_U t6, t5, t4<br> [0x800012d0]:sd t6, 944(ra)<br>      |
|  91|[0x800037b0]<br>0x001FCEA60AE9C9F0|- rs2_w0_val == -65<br>                                                                                                                                                                                    |[0x800012ec]:KMMSB_U t6, t5, t4<br> [0x800012f0]:sd t6, 960(ra)<br>      |
|  92|[0x800037c0]<br>0x001FCEAE0AE9C9F0|- rs2_w0_val == -33<br> - rs1_w0_val == 33554432<br>                                                                                                                                                       |[0x80001314]:KMMSB_U t6, t5, t4<br> [0x80001318]:sd t6, 976(ra)<br>      |
|  93|[0x800037d0]<br>0x001FCEAE0AE9C9F0|- rs2_w0_val == -17<br>                                                                                                                                                                                    |[0x8000133c]:KMMSB_U t6, t5, t4<br> [0x80001340]:sd t6, 992(ra)<br>      |
|  94|[0x800037e0]<br>0x001FCEAE0AE9C9F0|- rs2_w0_val == -5<br>                                                                                                                                                                                     |[0x80001364]:KMMSB_U t6, t5, t4<br> [0x80001368]:sd t6, 1008(ra)<br>     |
|  95|[0x800037f0]<br>0x001FCEAE0AE9C9F1|- rs2_w0_val == -3<br> - rs1_w1_val == -2049<br>                                                                                                                                                           |[0x8000138c]:KMMSB_U t6, t5, t4<br> [0x80001390]:sd t6, 1024(ra)<br>     |
|  96|[0x80003800]<br>0x001FCEB10AE9C9EE|- rs2_w0_val == -2147483648<br>                                                                                                                                                                            |[0x800013b8]:KMMSB_U t6, t5, t4<br> [0x800013bc]:sd t6, 1040(ra)<br>     |
|  97|[0x80003810]<br>0x001FCEB10AE989EE|- rs2_w0_val == 67108864<br>                                                                                                                                                                               |[0x800013d8]:KMMSB_U t6, t5, t4<br> [0x800013dc]:sd t6, 1056(ra)<br>     |
|  98|[0x80003820]<br>0xF5E25E0D0AE989EE|- rs2_w0_val == 16777216<br>                                                                                                                                                                               |[0x80001408]:KMMSB_U t6, t5, t4<br> [0x8000140c]:sd t6, 1072(ra)<br>     |
|  99|[0x80003830]<br>0xF5E25E0D0AE989EE|- rs2_w0_val == 2097152<br> - rs1_w1_val == -4097<br>                                                                                                                                                      |[0x80001430]:KMMSB_U t6, t5, t4<br> [0x80001434]:sd t6, 1088(ra)<br>     |
| 100|[0x80003840]<br>0xF5E25E0F0AE989EA|- rs2_w0_val == 1048576<br>                                                                                                                                                                                |[0x8000145c]:KMMSB_U t6, t5, t4<br> [0x80001460]:sd t6, 1104(ra)<br>     |
| 101|[0x80003850]<br>0xF5E25E0F0AE989EA|- rs2_w0_val == 32<br>                                                                                                                                                                                     |[0x80001480]:KMMSB_U t6, t5, t4<br> [0x80001484]:sd t6, 1120(ra)<br>     |
| 102|[0x80003860]<br>0xF5E25E0D0AE989EA|- rs2_w0_val == 16<br>                                                                                                                                                                                     |[0x800014a8]:KMMSB_U t6, t5, t4<br> [0x800014ac]:sd t6, 1136(ra)<br>     |
| 103|[0x80003870]<br>0xF5E2B88F0AE9891D|- rs1_w1_val == 2147483647<br>                                                                                                                                                                             |[0x800014dc]:KMMSB_U t6, t5, t4<br> [0x800014e0]:sd t6, 1152(ra)<br>     |
| 104|[0x80003880]<br>0xF5E2B88F0AE9891D|- rs1_w1_val == -268435457<br>                                                                                                                                                                             |[0x80001508]:KMMSB_U t6, t5, t4<br> [0x8000150c]:sd t6, 1168(ra)<br>     |
| 105|[0x80003890]<br>0xF5E2D88F0AE9891D|- rs1_w1_val == -134217729<br>                                                                                                                                                                             |[0x80001534]:KMMSB_U t6, t5, t4<br> [0x80001538]:sd t6, 1184(ra)<br>     |
| 106|[0x800038a0]<br>0xF5E2D98F0AE9891E|- rs1_w1_val == -67108865<br>                                                                                                                                                                              |[0x80001560]:KMMSB_U t6, t5, t4<br> [0x80001564]:sd t6, 1200(ra)<br>     |
| 107|[0x800038b0]<br>0xF5E2DD8F0AE9891E|- rs1_w1_val == -8388609<br> - rs1_w0_val == 65536<br>                                                                                                                                                     |[0x8000158c]:KMMSB_U t6, t5, t4<br> [0x80001590]:sd t6, 1216(ra)<br>     |
| 108|[0x800038c0]<br>0xF5F2DD8F0AE9891A|- rs1_w1_val == -2097153<br>                                                                                                                                                                               |[0x800015c0]:KMMSB_U t6, t5, t4<br> [0x800015c4]:sd t6, 1232(ra)<br>     |
| 109|[0x800038d0]<br>0xF5F2DD8F0AE9891A|- rs1_w1_val == -1048577<br> - rs1_w0_val == -8388609<br>                                                                                                                                                  |[0x800015e8]:KMMSB_U t6, t5, t4<br> [0x800015ec]:sd t6, 1248(ra)<br>     |
| 110|[0x800038e0]<br>0xF5F2FD8F0AE9891A|- rs1_w1_val == -524289<br> - rs1_w0_val == -513<br>                                                                                                                                                       |[0x80001610]:KMMSB_U t6, t5, t4<br> [0x80001614]:sd t6, 1264(ra)<br>     |
| 111|[0x800038f0]<br>0xF5F2FD8F0AE98903|- rs1_w1_val == -513<br> - rs1_w0_val == -2097153<br>                                                                                                                                                      |[0x80001644]:KMMSB_U t6, t5, t4<br> [0x80001648]:sd t6, 1280(ra)<br>     |
| 112|[0x80003900]<br>0xF5F2FD8F0AE98903|- rs1_w1_val == -257<br> - rs1_w0_val == 8388608<br>                                                                                                                                                       |[0x80001668]:KMMSB_U t6, t5, t4<br> [0x8000166c]:sd t6, 1296(ra)<br>     |
| 113|[0x80003910]<br>0xF5F2FD8F0AE98903|- rs1_w1_val == -129<br>                                                                                                                                                                                   |[0x80001688]:KMMSB_U t6, t5, t4<br> [0x8000168c]:sd t6, 1312(ra)<br>     |
| 114|[0x80003920]<br>0xF5F2FD8F0AE98903|- rs2_w0_val == 512<br> - rs1_w1_val == -33<br> - rs1_w0_val == -131073<br>                                                                                                                                |[0x800016b0]:KMMSB_U t6, t5, t4<br> [0x800016b4]:sd t6, 1328(ra)<br>     |
| 115|[0x80003930]<br>0xF5F2FD8F0AE987AD|- rs1_w1_val == -9<br>                                                                                                                                                                                     |[0x800016d8]:KMMSB_U t6, t5, t4<br> [0x800016dc]:sd t6, 1344(ra)<br>     |
| 116|[0x80003940]<br>0xF5F2FD8F0AE987AC|- rs1_w1_val == -5<br>                                                                                                                                                                                     |[0x80001708]:KMMSB_U t6, t5, t4<br> [0x8000170c]:sd t6, 1360(ra)<br>     |
| 117|[0x80003950]<br>0xF5F2FD8E0AE987A4|- rs1_w1_val == 536870912<br>                                                                                                                                                                              |[0x80001730]:KMMSB_U t6, t5, t4<br> [0x80001734]:sd t6, 1376(ra)<br>     |
| 118|[0x80003960]<br>0xF5F303360AE587A4|- rs1_w1_val == 134217728<br>                                                                                                                                                                              |[0x8000175c]:KMMSB_U t6, t5, t4<br> [0x80001760]:sd t6, 1392(ra)<br>     |
| 119|[0x80003970]<br>0xF5F2FF360AE587A4|- rs1_w1_val == 33554432<br>                                                                                                                                                                               |[0x8000178c]:KMMSB_U t6, t5, t4<br> [0x80001790]:sd t6, 1408(ra)<br>     |
| 120|[0x80003980]<br>0xF5F2FEB60AE587A4|- rs2_w0_val == 2048<br> - rs1_w1_val == 2097152<br>                                                                                                                                                       |[0x800017b8]:KMMSB_U t6, t5, t4<br> [0x800017bc]:sd t6, 1424(ra)<br>     |
| 121|[0x80003990]<br>0xF5F2FEB50AE587A6|- rs1_w1_val == 131072<br>                                                                                                                                                                                 |[0x800017e0]:KMMSB_U t6, t5, t4<br> [0x800017e4]:sd t6, 1440(ra)<br>     |
| 122|[0x800039a0]<br>0xF5F2FEB50AE587A6|- rs1_w1_val == 32768<br>                                                                                                                                                                                  |[0x8000180c]:KMMSB_U t6, t5, t4<br> [0x80001810]:sd t6, 1456(ra)<br>     |
| 123|[0x800039b0]<br>0xF5F2FEB50AE587A6|- rs1_w1_val == 4096<br>                                                                                                                                                                                   |[0x8000182c]:KMMSB_U t6, t5, t4<br> [0x80001830]:sd t6, 1472(ra)<br>     |
| 124|[0x800039c0]<br>0xF5F2FD600AE587A6|- rs2_w1_val == 1431655765<br> - rs1_w1_val == 1024<br>                                                                                                                                                    |[0x8000185c]:KMMSB_U t6, t5, t4<br> [0x80001860]:sd t6, 1488(ra)<br>     |
| 125|[0x800039d0]<br>0xF5F2FD600AE58726|- rs1_w1_val == 512<br> - rs1_w0_val == -8193<br>                                                                                                                                                          |[0x80001884]:KMMSB_U t6, t5, t4<br> [0x80001888]:sd t6, 1504(ra)<br>     |
| 126|[0x800039e0]<br>0xF5F2FD600AE57726|- rs1_w1_val == 64<br>                                                                                                                                                                                     |[0x800018a8]:KMMSB_U t6, t5, t4<br> [0x800018ac]:sd t6, 1520(ra)<br>     |
| 127|[0x800039f0]<br>0xF5F2FD610AE57726|- rs1_w1_val == 2048<br> - rs1_w0_val == -524289<br>                                                                                                                                                       |[0x800018d4]:KMMSB_U t6, t5, t4<br> [0x800018d8]:sd t6, 1536(ra)<br>     |
| 128|[0x80003a00]<br>0xF5F2FD5F0AE57706|- rs1_w1_val == 8<br>                                                                                                                                                                                      |[0x800018fc]:KMMSB_U t6, t5, t4<br> [0x80001900]:sd t6, 1552(ra)<br>     |
| 129|[0x80003a10]<br>0xF5F2FD5FF9D465F5|- rs1_w1_val == 1<br>                                                                                                                                                                                      |[0x80001938]:KMMSB_U t6, t5, t4<br> [0x8000193c]:sd t6, 1568(ra)<br>     |
| 130|[0x80003a20]<br>0xF5F2FD5FF9D465F5|- rs1_w1_val == -1<br>                                                                                                                                                                                     |[0x80001958]:KMMSB_U t6, t5, t4<br> [0x8000195c]:sd t6, 1584(ra)<br>     |
| 131|[0x80003a30]<br>0xF6263093F9D485F5|- rs2_w0_val == 32768<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                  |[0x80001988]:KMMSB_U t6, t5, t4<br> [0x8000198c]:sd t6, 1600(ra)<br>     |
| 132|[0x80003a40]<br>0x00D0DB3EF9D489F5|- rs1_w0_val == -67108865<br>                                                                                                                                                                              |[0x800019c0]:KMMSB_U t6, t5, t4<br> [0x800019c4]:sd t6, 1616(ra)<br>     |
| 133|[0x80003a50]<br>0x00D0DB3EF9D489F5|- rs1_w0_val == -1048577<br>                                                                                                                                                                               |[0x800019e8]:KMMSB_U t6, t5, t4<br> [0x800019ec]:sd t6, 1632(ra)<br>     |
| 134|[0x80003a60]<br>0x00D0DB3EF9D489F5|- rs1_w0_val == -4097<br>                                                                                                                                                                                  |[0x80001a14]:KMMSB_U t6, t5, t4<br> [0x80001a18]:sd t6, 1648(ra)<br>     |
| 135|[0x80003a70]<br>0x00D0D596F9D489F4|- rs1_w0_val == -2049<br>                                                                                                                                                                                  |[0x80001a48]:KMMSB_U t6, t5, t4<br> [0x80001a4c]:sd t6, 1664(ra)<br>     |
| 136|[0x80003a80]<br>0x037B8041F9D489F4|- rs1_w0_val == -129<br>                                                                                                                                                                                   |[0x80001a74]:KMMSB_U t6, t5, t4<br> [0x80001a78]:sd t6, 1680(ra)<br>     |
| 137|[0x80003a90]<br>0x037B8041F9D489FC|- rs1_w0_val == -65<br>                                                                                                                                                                                    |[0x80001a94]:KMMSB_U t6, t5, t4<br> [0x80001a98]:sd t6, 1696(ra)<br>     |
| 138|[0x80003aa0]<br>0x037B8AECF9D489FC|- rs1_w0_val == -33<br>                                                                                                                                                                                    |[0x80001ac0]:KMMSB_U t6, t5, t4<br> [0x80001ac4]:sd t6, 1712(ra)<br>     |
| 139|[0x80003ab0]<br>0x037B8AECF9D489FC|- rs1_w0_val == -17<br>                                                                                                                                                                                    |[0x80001ae4]:KMMSB_U t6, t5, t4<br> [0x80001ae8]:sd t6, 1728(ra)<br>     |
| 140|[0x80003ac0]<br>0x037B8AECF9D489FC|- rs1_w0_val == -9<br>                                                                                                                                                                                     |[0x80001b0c]:KMMSB_U t6, t5, t4<br> [0x80001b10]:sd t6, 1744(ra)<br>     |
| 141|[0x80003ad0]<br>0x00D0E041F9D489FC|- rs1_w0_val == -5<br>                                                                                                                                                                                     |[0x80001b40]:KMMSB_U t6, t5, t4<br> [0x80001b44]:sd t6, 1760(ra)<br>     |
| 142|[0x80003ae0]<br>0x00D0E041E47F34A6|- rs1_w0_val == 1073741824<br>                                                                                                                                                                             |[0x80001b64]:KMMSB_U t6, t5, t4<br> [0x80001b68]:sd t6, 1776(ra)<br>     |
| 143|[0x80003af0]<br>0x00D0E041E47F3466|- rs1_w0_val == 268435456<br>                                                                                                                                                                              |[0x80001b80]:KMMSB_U t6, t5, t4<br> [0x80001b84]:sd t6, 1792(ra)<br>     |
| 144|[0x80003b00]<br>0x00D0AD0EE46F3466|- rs1_w0_val == 134217728<br>                                                                                                                                                                              |[0x80001bac]:KMMSB_U t6, t5, t4<br> [0x80001bb0]:sd t6, 1808(ra)<br>     |
| 145|[0x80003b10]<br>0x00D0AD0DE46F3466|- rs1_w0_val == 67108864<br>                                                                                                                                                                               |[0x80001bd4]:KMMSB_U t6, t5, t4<br> [0x80001bd8]:sd t6, 1824(ra)<br>     |
| 146|[0x80003b20]<br>0x00D0AD05E46F3466|- rs2_w0_val == 262144<br>                                                                                                                                                                                 |[0x80001c04]:KMMSB_U t6, t5, t4<br> [0x80001c08]:sd t6, 1840(ra)<br>     |
| 147|[0x80003b30]<br>0x00D0AD05E46F3426|- rs2_w0_val == 131072<br>                                                                                                                                                                                 |[0x80001c28]:KMMSB_U t6, t5, t4<br> [0x80001c2c]:sd t6, 1856(ra)<br>     |
| 148|[0x80003b40]<br>0x00D0C25BE46F3436|- rs1_w0_val == 524288<br>                                                                                                                                                                                 |[0x80001c58]:KMMSB_U t6, t5, t4<br> [0x80001c5c]:sd t6, 1872(ra)<br>     |
| 149|[0x80003b50]<br>0x0090C25BE46F3436|- rs1_w0_val == 262144<br>                                                                                                                                                                                 |[0x80001c84]:KMMSB_U t6, t5, t4<br> [0x80001c88]:sd t6, 1888(ra)<br>     |
| 150|[0x80003b60]<br>0x0090C25BE46F33D0|- rs2_w0_val == 256<br>                                                                                                                                                                                    |[0x80001cb4]:KMMSB_U t6, t5, t4<br> [0x80001cb8]:sd t6, 1904(ra)<br>     |
| 151|[0x80003b70]<br>0x0090C25CE46F33D0|- rs2_w0_val == 128<br>                                                                                                                                                                                    |[0x80001cdc]:KMMSB_U t6, t5, t4<br> [0x80001ce0]:sd t6, 1920(ra)<br>     |
