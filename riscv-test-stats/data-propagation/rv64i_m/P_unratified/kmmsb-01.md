
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
| SIG_REGION                | [('0x80003210', '0x80003b90', '304 dwords')]      |
| COV_LABELS                | kmmsb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmsb-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 304      |
| STAT1                     | 151      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 152     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001da0]:KMMSB t6, t5, t4
      [0x80001da4]:sd t6, 1984(sp)
 -- Signature Address: 0x80003b80 Data: 0xA1735393B5FCECFC
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -262145
      - rs1_w1_val == -2147483648
      - rs1_w0_val == 1048576






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmsb', 'rs1 : x4', 'rs2 : x4', 'rd : x16', 'rs1 == rs2 != rd', 'rs2_w1_val == -5', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800003bc]:KMMSB a6, tp, tp
	-[0x800003c0]:sd a6, 0(s1)
Current Store : [0x800003c4] : sd tp, 8(s1) -- Store: [0x80003218]:0xFFFFFFFB00000003




Last Coverpoint : ['rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -9', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800003e8]:KMMSB t4, t4, t4
	-[0x800003ec]:sd t4, 16(s1)
Current Store : [0x800003f0] : sd t4, 24(s1) -- Store: [0x80003228]:0x8E38E38EFFFFFFF7




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rd : x21', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -8388609', 'rs1_w1_val == -268435457', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000418]:KMMSB s5, a3, t0
	-[0x8000041c]:sd s5, 32(s1)
Current Store : [0x80000420] : sd a3, 40(s1) -- Store: [0x80003238]:0xEFFFFFFFFFFFFFBF




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x1', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80000444]:KMMSB ra, ra, a5
	-[0x80000448]:sd ra, 48(s1)
Current Store : [0x8000044c] : sd ra, 56(s1) -- Store: [0x80003248]:0x0000000366666664




Last Coverpoint : ['rs1 : x8', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -17', 'rs1_w1_val == 4194304', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000046c]:KMMSB t3, fp, t3
	-[0x80000470]:sd t3, 64(s1)
Current Store : [0x80000474] : sd fp, 72(s1) -- Store: [0x80003258]:0x0040000000800000




Last Coverpoint : ['rs1 : x19', 'rs2 : x6', 'rd : x17', 'rs2_w1_val == -536870913', 'rs2_w0_val == -4097', 'rs1_w1_val == 32768', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000049c]:KMMSB a7, s3, t1
	-[0x800004a0]:sd a7, 80(s1)
Current Store : [0x800004a4] : sd s3, 88(s1) -- Store: [0x80003268]:0x00008000FFDFFFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x19', 'rs2_w1_val == -268435457', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800004cc]:KMMSB s3, t1, a6
	-[0x800004d0]:sd s3, 96(s1)
Current Store : [0x800004d4] : sd t1, 104(s1) -- Store: [0x80003278]:0xEFFFFFFF00001000




Last Coverpoint : ['rs1 : x27', 'rs2 : x11', 'rd : x24', 'rs2_w1_val == -134217729', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800004f8]:KMMSB s8, s11, a1
	-[0x800004fc]:sd s8, 112(s1)
Current Store : [0x80000500] : sd s11, 120(s1) -- Store: [0x80003288]:0xFFFF4AFDFFFFFEFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x11', 'rs2_w1_val == -67108865', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000528]:KMMSB a1, gp, sp
	-[0x8000052c]:sd a1, 128(s1)
Current Store : [0x80000530] : sd gp, 136(s1) -- Store: [0x80003298]:0x3333333300000005




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x26', 'rs2_w1_val == -33554433', 'rs2_w0_val == -1048577', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000554]:KMMSB s10, a6, s7
	-[0x80000558]:sd s10, 144(s1)
Current Store : [0x8000055c] : sd a6, 152(s1) -- Store: [0x800032a8]:0x00000000FFFFFFFC




Last Coverpoint : ['rs1 : x7', 'rs2 : x30', 'rd : x31', 'rs2_w1_val == -16777217', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000058c]:KMMSB t6, t2, t5
	-[0x80000590]:sd t6, 160(s1)
Current Store : [0x80000594] : sd t2, 168(s1) -- Store: [0x800032b8]:0x33333332FFFFFFF7




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x14', 'rs2_w1_val == -8388609', 'rs2_w0_val == 1024', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800005c0]:KMMSB a4, a2, t6
	-[0x800005c4]:sd a4, 176(s1)
Current Store : [0x800005c8] : sd a2, 184(s1) -- Store: [0x800032c8]:0x55555556FFEFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x21', 'rd : x10', 'rs2_w1_val == -4194305', 'rs2_w0_val == 16384', 'rs1_w1_val == 536870912', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800005ec]:KMMSB a0, sp, s5
	-[0x800005f0]:sd a0, 192(s1)
Current Store : [0x800005f4] : sd sp, 200(s1) -- Store: [0x800032d8]:0x2000000000000004




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x18', 'rs2_w1_val == -2097153', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000624]:KMMSB s2, s9, a4
	-[0x80000628]:sd s2, 208(s1)
Current Store : [0x8000062c] : sd s9, 216(s1) -- Store: [0x800032e8]:0x6666666501000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x6', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 8192', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000658]:KMMSB t1, a1, zero
	-[0x8000065c]:sd t1, 0(ra)
Current Store : [0x80000660] : sd a1, 8(ra) -- Store: [0x800032f8]:0x0000200004000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x5', 'rs2_w1_val == -524289', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000068c]:KMMSB t0, zero, s1
	-[0x80000690]:sd t0, 16(ra)
Current Store : [0x80000694] : sd zero, 24(ra) -- Store: [0x80003308]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x13', 'rd : x0', 'rs2_w1_val == -262145', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800006c0]:KMMSB zero, a4, a3
	-[0x800006c4]:sd zero, 32(ra)
Current Store : [0x800006c8] : sd a4, 40(ra) -- Store: [0x80003318]:0x8000000000100000




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x25', 'rs2_w1_val == -131073', 'rs2_w0_val == 4', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800006ec]:KMMSB s9, s5, s8
	-[0x800006f0]:sd s9, 48(ra)
Current Store : [0x800006f4] : sd s5, 56(ra) -- Store: [0x80003328]:0x00002000FFFBFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x7', 'rd : x27', 'rs2_w1_val == -65537', 'rs2_w0_val == 64', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80000720]:KMMSB s11, a5, t2
	-[0x80000724]:sd s11, 64(ra)
Current Store : [0x80000728] : sd a5, 72(ra) -- Store: [0x80003338]:0xFFDFFFFF33333333




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x30', 'rs2_w1_val == -32769', 'rs1_w1_val == -16385', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x8000074c]:KMMSB t5, a7, a0
	-[0x80000750]:sd t5, 80(ra)
Current Store : [0x80000754] : sd a7, 88(ra) -- Store: [0x80003348]:0xFFFFBFFFFFFFF7FF




Last Coverpoint : ['rs1 : x10', 'rs2 : x17', 'rd : x15', 'rs2_w1_val == -16385', 'rs1_w1_val == -32769', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000077c]:KMMSB a5, a0, a7
	-[0x80000780]:sd a5, 96(ra)
Current Store : [0x80000784] : sd a0, 104(ra) -- Store: [0x80003358]:0xFFFF7FFF00004000




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x4', 'rs2_w1_val == -8193', 'rs2_w0_val == 67108864', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000798]:KMMSB tp, s6, s11
	-[0x8000079c]:sd tp, 112(ra)
Current Store : [0x800007a0] : sd s6, 120(ra) -- Store: [0x80003368]:0x0000000002000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x2', 'rs2_w1_val == -4097', 'rs2_w0_val == 32', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x800007c8]:KMMSB sp, t6, s3
	-[0x800007cc]:sd sp, 128(ra)
Current Store : [0x800007d0] : sd t6, 136(ra) -- Store: [0x80003378]:0x02000000FFDFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x12', 'rd : x7', 'rs2_w1_val == -2049', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800007f0]:KMMSB t2, s10, a2
	-[0x800007f4]:sd t2, 144(ra)
Current Store : [0x800007f8] : sd s10, 152(ra) -- Store: [0x80003388]:0xFFFFFFF8FFFFFFFE




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x12', 'rs2_w1_val == -1025', 'rs2_w0_val == 128', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000810]:KMMSB a2, s1, s4
	-[0x80000814]:sd a2, 160(ra)
Current Store : [0x80000818] : sd s1, 168(ra) -- Store: [0x80003398]:0xFFFFFFFD02000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x3', 'rs2_w1_val == -513', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000834]:KMMSB gp, s4, s9
	-[0x80000838]:sd gp, 176(ra)
Current Store : [0x8000083c] : sd s4, 184(ra) -- Store: [0x800033a8]:0xFFFFFFF9FFFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x23', 'rs2_w1_val == -257', 'rs2_w0_val == -67108865', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000868]:KMMSB s7, t3, fp
	-[0x8000086c]:sd s7, 192(ra)
Current Store : [0x80000870] : sd t3, 200(ra) -- Store: [0x800033b8]:0x00001000AAAAAAAB




Last Coverpoint : ['rs1 : x24', 'rs2 : x3', 'rd : x13', 'rs2_w1_val == -129', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000089c]:KMMSB a3, s8, gp
	-[0x800008a0]:sd a3, 0(sp)
Current Store : [0x800008a4] : sd s8, 8(sp) -- Store: [0x800033c8]:0x5555555640000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x8', 'rs2_w1_val == -65', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008c8]:KMMSB fp, s2, s6
	-[0x800008cc]:sd fp, 16(sp)
Current Store : [0x800008d0] : sd s2, 24(sp) -- Store: [0x800033d8]:0x66666665FFFFFFFB




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x20', 'rs2_w1_val == -33', 'rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800008f0]:KMMSB s4, t0, s10
	-[0x800008f4]:sd s4, 32(sp)
Current Store : [0x800008f8] : sd t0, 40(sp) -- Store: [0x800033e8]:0x3FFFFFFF00000004




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x9', 'rs2_w1_val == -17']
Last Code Sequence : 
	-[0x80000924]:KMMSB s1, t5, s2
	-[0x80000928]:sd s1, 48(sp)
Current Store : [0x8000092c] : sd t5, 56(sp) -- Store: [0x800033f8]:0x00002000FFFF4AFC




Last Coverpoint : ['rs1 : x23', 'rs2 : x1', 'rd : x22', 'rs2_w1_val == -9', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x8000094c]:KMMSB s6, s7, ra
	-[0x80000950]:sd s6, 64(sp)
Current Store : [0x80000954] : sd s7, 72(sp) -- Store: [0x80003408]:0xFFFF4AFDFFFFFFEF




Last Coverpoint : ['rs2_w1_val == -3']
Last Code Sequence : 
	-[0x80000974]:KMMSB t6, t5, t4
	-[0x80000978]:sd t6, 80(sp)
Current Store : [0x8000097c] : sd t5, 88(sp) -- Store: [0x80003418]:0xFFFF7FFF00000004




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -4194305', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80000998]:KMMSB t6, t5, t4
	-[0x8000099c]:sd t6, 96(sp)
Current Store : [0x800009a0] : sd t5, 104(sp) -- Store: [0x80003428]:0xFFFEFFFFC0000000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800009c4]:KMMSB t6, t5, t4
	-[0x800009c8]:sd t6, 112(sp)
Current Store : [0x800009cc] : sd t5, 120(sp) -- Store: [0x80003438]:0xFFFFFBFF00001000




Last Coverpoint : ['rs2_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800009ec]:KMMSB t6, t5, t4
	-[0x800009f0]:sd t6, 128(sp)
Current Store : [0x800009f4] : sd t5, 136(sp) -- Store: [0x80003448]:0xFFFFFFF60000B503




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w1_val == -8388609', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000a14]:KMMSB t6, t5, t4
	-[0x80000a18]:sd t6, 144(sp)
Current Store : [0x80000a1c] : sd t5, 152(sp) -- Store: [0x80003458]:0xFF7FFFFFFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == -2097153', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000a48]:KMMSB t6, t5, t4
	-[0x80000a4c]:sd t6, 160(sp)
Current Store : [0x80000a50] : sd t5, 168(sp) -- Store: [0x80003468]:0xFFF7FFFF00100000




Last Coverpoint : ['rs2_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000a80]:KMMSB t6, t5, t4
	-[0x80000a84]:sd t6, 176(sp)
Current Store : [0x80000a88] : sd t5, 184(sp) -- Store: [0x80003478]:0x6666666533333333




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000aac]:KMMSB t6, t5, t4
	-[0x80000ab0]:sd t6, 192(sp)
Current Store : [0x80000ab4] : sd t5, 200(sp) -- Store: [0x80003488]:0x0000010000000004




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000ad8]:KMMSB t6, t5, t4
	-[0x80000adc]:sd t6, 208(sp)
Current Store : [0x80000ae0] : sd t5, 216(sp) -- Store: [0x80003498]:0x55555554FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80000af0]:KMMSB t6, t5, t4
	-[0x80000af4]:sd t6, 224(sp)
Current Store : [0x80000af8] : sd t5, 232(sp) -- Store: [0x800034a8]:0xFFFFFFFFFFFFFFBF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80000b14]:KMMSB t6, t5, t4
	-[0x80000b18]:sd t6, 240(sp)
Current Store : [0x80000b1c] : sd t5, 248(sp) -- Store: [0x800034b8]:0xFFFFF7FF00000003




Last Coverpoint : ['rs2_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b40]:KMMSB t6, t5, t4
	-[0x80000b44]:sd t6, 256(sp)
Current Store : [0x80000b48] : sd t5, 264(sp) -- Store: [0x800034c8]:0xFFFF4AFCFFFFFFFE




Last Coverpoint : ['rs2_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000b64]:KMMSB t6, t5, t4
	-[0x80000b68]:sd t6, 272(sp)
Current Store : [0x80000b6c] : sd t5, 280(sp) -- Store: [0x800034d8]:0xFFFFFFF6FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000b8c]:KMMSB t6, t5, t4
	-[0x80000b90]:sd t6, 288(sp)
Current Store : [0x80000b94] : sd t5, 296(sp) -- Store: [0x800034e8]:0x00008000FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 268435456', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000bb0]:KMMSB t6, t5, t4
	-[0x80000bb4]:sd t6, 304(sp)
Current Store : [0x80000bb8] : sd t5, 312(sp) -- Store: [0x800034f8]:0xFFFFFFBFFFFFFFF6




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == -4097', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000bdc]:KMMSB t6, t5, t4
	-[0x80000be0]:sd t6, 320(sp)
Current Store : [0x80000be4] : sd t5, 328(sp) -- Store: [0x80003508]:0xFFFFEFFF00000040




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000c08]:KMMSB t6, t5, t4
	-[0x80000c0c]:sd t6, 336(sp)
Current Store : [0x80000c10] : sd t5, 344(sp) -- Store: [0x80003518]:0xFFFFFFFBFFFF4AFC




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000c34]:KMMSB t6, t5, t4
	-[0x80000c38]:sd t6, 352(sp)
Current Store : [0x80000c3c] : sd t5, 360(sp) -- Store: [0x80003528]:0x10000000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 32768']
Last Code Sequence : 
	-[0x80000c68]:KMMSB t6, t5, t4
	-[0x80000c6c]:sd t6, 368(sp)
Current Store : [0x80000c70] : sd t5, 376(sp) -- Store: [0x80003538]:0x10000000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000c94]:KMMSB t6, t5, t4
	-[0x80000c98]:sd t6, 384(sp)
Current Store : [0x80000c9c] : sd t5, 392(sp) -- Store: [0x80003548]:0x5555555420000000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000cbc]:KMMSB t6, t5, t4
	-[0x80000cc0]:sd t6, 400(sp)
Current Store : [0x80000cc4] : sd t5, 408(sp) -- Store: [0x80003558]:0x0000000600000002




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 2', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000cec]:KMMSB t6, t5, t4
	-[0x80000cf0]:sd t6, 416(sp)
Current Store : [0x80000cf4] : sd t5, 424(sp) -- Store: [0x80003568]:0x00000002FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000d28]:KMMSB t6, t5, t4
	-[0x80000d2c]:sd t6, 432(sp)
Current Store : [0x80000d30] : sd t5, 440(sp) -- Store: [0x80003578]:0x0000B503FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80000d54]:KMMSB t6, t5, t4
	-[0x80000d58]:sd t6, 448(sp)
Current Store : [0x80000d5c] : sd t5, 456(sp) -- Store: [0x80003588]:0x6666666720000000




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000d80]:KMMSB t6, t5, t4
	-[0x80000d84]:sd t6, 464(sp)
Current Store : [0x80000d88] : sd t5, 472(sp) -- Store: [0x80003598]:0x00100000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == -8193', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000dac]:KMMSB t6, t5, t4
	-[0x80000db0]:sd t6, 480(sp)
Current Store : [0x80000db4] : sd t5, 488(sp) -- Store: [0x800035a8]:0xFFFFDFFFFFFDFFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000dd8]:KMMSB t6, t5, t4
	-[0x80000ddc]:sd t6, 496(sp)
Current Store : [0x80000de0] : sd t5, 504(sp) -- Store: [0x800035b8]:0xAAAAAAABFFFFFFFA




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80000e00]:KMMSB t6, t5, t4
	-[0x80000e04]:sd t6, 512(sp)
Current Store : [0x80000e08] : sd t5, 520(sp) -- Store: [0x800035c8]:0xF7FFFFFF00800000




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 1048576', 'rs1_w1_val == 67108864', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000e24]:KMMSB t6, t5, t4
	-[0x80000e28]:sd t6, 528(sp)
Current Store : [0x80000e2c] : sd t5, 536(sp) -- Store: [0x800035d8]:0x0400000000000020




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000e48]:KMMSB t6, t5, t4
	-[0x80000e4c]:sd t6, 544(sp)
Current Store : [0x80000e50] : sd t5, 552(sp) -- Store: [0x800035e8]:0x0000000700002000




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000e68]:KMMSB t6, t5, t4
	-[0x80000e6c]:sd t6, 560(sp)
Current Store : [0x80000e70] : sd t5, 568(sp) -- Store: [0x800035f8]:0x5555555500000400




Last Coverpoint : ['rs1_w1_val == 524288', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000e8c]:KMMSB t6, t5, t4
	-[0x80000e90]:sd t6, 576(sp)
Current Store : [0x80000e94] : sd t5, 584(sp) -- Store: [0x80003608]:0x0008000000000200




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w1_val == -536870913', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000ec0]:KMMSB t6, t5, t4
	-[0x80000ec4]:sd t6, 592(sp)
Current Store : [0x80000ec8] : sd t5, 600(sp) -- Store: [0x80003618]:0xDFFFFFFF00000100




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000ee8]:KMMSB t6, t5, t4
	-[0x80000eec]:sd t6, 608(sp)
Current Store : [0x80000ef0] : sd t5, 616(sp) -- Store: [0x80003628]:0x0000004000000080




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000f0c]:KMMSB t6, t5, t4
	-[0x80000f10]:sd t6, 624(sp)
Current Store : [0x80000f14] : sd t5, 632(sp) -- Store: [0x80003638]:0xFFFFFBFF00000010




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000f48]:KMMSB t6, t5, t4
	-[0x80000f4c]:sd t6, 640(sp)
Current Store : [0x80000f50] : sd t5, 648(sp) -- Store: [0x80003648]:0xFDFFFFFF00000008




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000f70]:KMMSB t6, t5, t4
	-[0x80000f74]:sd t6, 656(sp)
Current Store : [0x80000f78] : sd t5, 664(sp) -- Store: [0x80003658]:0x3333333200000001




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80000f90]:KMMSB t6, t5, t4
	-[0x80000f94]:sd t6, 672(sp)
Current Store : [0x80000f98] : sd t5, 680(sp) -- Store: [0x80003668]:0x0000000100000000




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000fc0]:KMMSB t6, t5, t4
	-[0x80000fc4]:sd t6, 688(sp)
Current Store : [0x80000fc8] : sd t5, 696(sp) -- Store: [0x80003678]:0x0000B505FFFF4AFC




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x80000fe8]:KMMSB t6, t5, t4
	-[0x80000fec]:sd t6, 704(sp)
Current Store : [0x80000ff0] : sd t5, 712(sp) -- Store: [0x80003688]:0x3333333400000040




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000100c]:KMMSB t6, t5, t4
	-[0x80001010]:sd t6, 720(sp)
Current Store : [0x80001014] : sd t5, 728(sp) -- Store: [0x80003698]:0x0000000200008000




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80001030]:KMMSB t6, t5, t4
	-[0x80001034]:sd t6, 736(sp)
Current Store : [0x80001038] : sd t5, 744(sp) -- Store: [0x800036a8]:0x0200000000000003




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 8', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001054]:KMMSB t6, t5, t4
	-[0x80001058]:sd t6, 752(sp)
Current Store : [0x8000105c] : sd t5, 760(sp) -- Store: [0x800036b8]:0x00000006BFFFFFFF




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000107c]:KMMSB t6, t5, t4
	-[0x80001080]:sd t6, 768(sp)
Current Store : [0x80001084] : sd t5, 776(sp) -- Store: [0x800036c8]:0xFFFFDFFF00080000




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800010b8]:KMMSB t6, t5, t4
	-[0x800010bc]:sd t6, 784(sp)
Current Store : [0x800010c0] : sd t5, 792(sp) -- Store: [0x800036d8]:0x0020000066666665




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800010e4]:KMMSB t6, t5, t4
	-[0x800010e8]:sd t6, 800(sp)
Current Store : [0x800010ec] : sd t5, 808(sp) -- Store: [0x800036e8]:0xFFFFFFBF00000800




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80001118]:KMMSB t6, t5, t4
	-[0x8000111c]:sd t6, 816(sp)
Current Store : [0x80001120] : sd t5, 824(sp) -- Store: [0x800036f8]:0x6666666600010000




Last Coverpoint : ['rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001138]:KMMSB t6, t5, t4
	-[0x8000113c]:sd t6, 832(sp)
Current Store : [0x80001140] : sd t5, 840(sp) -- Store: [0x80003708]:0x0000000500000000




Last Coverpoint : ['rs2_w0_val == -524289', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001168]:KMMSB t6, t5, t4
	-[0x8000116c]:sd t6, 848(sp)
Current Store : [0x80001170] : sd t5, 856(sp) -- Store: [0x80003718]:0xFFFDFFFFFFFDFFFF




Last Coverpoint : ['rs2_w0_val == -262145', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001194]:KMMSB t6, t5, t4
	-[0x80001198]:sd t6, 864(sp)
Current Store : [0x8000119c] : sd t5, 872(sp) -- Store: [0x80003728]:0x0000002000000007




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x800011c8]:KMMSB t6, t5, t4
	-[0x800011cc]:sd t6, 880(sp)
Current Store : [0x800011d0] : sd t5, 888(sp) -- Store: [0x80003738]:0x00000004FFFEFFFF




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x800011fc]:KMMSB t6, t5, t4
	-[0x80001200]:sd t6, 896(sp)
Current Store : [0x80001204] : sd t5, 904(sp) -- Store: [0x80003748]:0xEFFFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x8000122c]:KMMSB t6, t5, t4
	-[0x80001230]:sd t6, 912(sp)
Current Store : [0x80001234] : sd t5, 920(sp) -- Store: [0x80003758]:0xAAAAAAAA80000000




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x8000125c]:KMMSB t6, t5, t4
	-[0x80001260]:sd t6, 928(sp)
Current Store : [0x80001264] : sd t5, 936(sp) -- Store: [0x80003768]:0xFFFF4AFC00000000




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x8000128c]:KMMSB t6, t5, t4
	-[0x80001290]:sd t6, 944(sp)
Current Store : [0x80001294] : sd t5, 952(sp) -- Store: [0x80003778]:0xDFFFFFFFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == -2049', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800012bc]:KMMSB t6, t5, t4
	-[0x800012c0]:sd t6, 960(sp)
Current Store : [0x800012c4] : sd t5, 968(sp) -- Store: [0x80003788]:0x0002000000000003




Last Coverpoint : ['rs2_w0_val == -513', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800012e4]:KMMSB t6, t5, t4
	-[0x800012e8]:sd t6, 976(sp)
Current Store : [0x800012ec] : sd t5, 984(sp) -- Store: [0x80003798]:0x0200000000040000




Last Coverpoint : ['rs2_w0_val == -257', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001318]:KMMSB t6, t5, t4
	-[0x8000131c]:sd t6, 992(sp)
Current Store : [0x80001320] : sd t5, 1000(sp) -- Store: [0x800037a8]:0x0000B50555555555




Last Coverpoint : ['rs2_w0_val == -65', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001348]:KMMSB t6, t5, t4
	-[0x8000134c]:sd t6, 1008(sp)
Current Store : [0x80001350] : sd t5, 1016(sp) -- Store: [0x800037b8]:0x10000000FEFFFFFF




Last Coverpoint : ['rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80001370]:KMMSB t6, t5, t4
	-[0x80001374]:sd t6, 1024(sp)
Current Store : [0x80001378] : sd t5, 1032(sp) -- Store: [0x800037c8]:0x00400000FFFFFFFF




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x8000139c]:KMMSB t6, t5, t4
	-[0x800013a0]:sd t6, 1040(sp)
Current Store : [0x800013a4] : sd t5, 1048(sp) -- Store: [0x800037d8]:0xFFFF4AFDBFFFFFFF




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800013c8]:KMMSB t6, t5, t4
	-[0x800013cc]:sd t6, 1056(sp)
Current Store : [0x800013d0] : sd t5, 1064(sp) -- Store: [0x800037e8]:0x00100000FFFFDFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800013e0]:KMMSB t6, t5, t4
	-[0x800013e4]:sd t6, 1072(sp)
Current Store : [0x800013e8] : sd t5, 1080(sp) -- Store: [0x800037f8]:0x000000000000B503




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001404]:KMMSB t6, t5, t4
	-[0x80001408]:sd t6, 1088(sp)
Current Store : [0x8000140c] : sd t5, 1096(sp) -- Store: [0x80003808]:0xFFFFDFFFFFFFFFFF




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80001428]:KMMSB t6, t5, t4
	-[0x8000142c]:sd t6, 1104(sp)
Current Store : [0x80001430] : sd t5, 1112(sp) -- Store: [0x80003818]:0xFFFFFFDFFFFFFFBF




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80001458]:KMMSB t6, t5, t4
	-[0x8000145c]:sd t6, 1120(sp)
Current Store : [0x80001460] : sd t5, 1128(sp) -- Store: [0x80003828]:0x3FFFFFFFFFFEFFFF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001494]:KMMSB t6, t5, t4
	-[0x80001498]:sd t6, 1136(sp)
Current Store : [0x8000149c] : sd t5, 1144(sp) -- Store: [0x80003838]:0x7FFFFFFF00000010




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800014cc]:KMMSB t6, t5, t4
	-[0x800014d0]:sd t6, 1152(sp)
Current Store : [0x800014d4] : sd t5, 1160(sp) -- Store: [0x80003848]:0xBFFFFFFFAAAAAAAB




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001500]:KMMSB t6, t5, t4
	-[0x80001504]:sd t6, 1168(sp)
Current Store : [0x80001508] : sd t5, 1176(sp) -- Store: [0x80003858]:0xFBFFFFFF66666665




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80001530]:KMMSB t6, t5, t4
	-[0x80001534]:sd t6, 1184(sp)
Current Store : [0x80001538] : sd t5, 1192(sp) -- Store: [0x80003868]:0xFEFFFFFF00001000




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001560]:KMMSB t6, t5, t4
	-[0x80001564]:sd t6, 1200(sp)
Current Store : [0x80001568] : sd t5, 1208(sp) -- Store: [0x80003878]:0xFFBFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001598]:KMMSB t6, t5, t4
	-[0x8000159c]:sd t6, 1216(sp)
Current Store : [0x800015a0] : sd t5, 1224(sp) -- Store: [0x80003888]:0xFFEFFFFF00000040




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800015cc]:KMMSB t6, t5, t4
	-[0x800015d0]:sd t6, 1232(sp)
Current Store : [0x800015d4] : sd t5, 1240(sp) -- Store: [0x80003898]:0xFFFBFFFFFFFFF7FF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800015f0]:KMMSB t6, t5, t4
	-[0x800015f4]:sd t6, 1248(sp)
Current Store : [0x800015f8] : sd t5, 1256(sp) -- Store: [0x800038a8]:0xFFFFFDFFFFFFFBFF




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80001618]:KMMSB t6, t5, t4
	-[0x8000161c]:sd t6, 1264(sp)
Current Store : [0x80001620] : sd t5, 1272(sp) -- Store: [0x800038b8]:0xFFFFFEFF00002000




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80001640]:KMMSB t6, t5, t4
	-[0x80001644]:sd t6, 1280(sp)
Current Store : [0x80001648] : sd t5, 1288(sp) -- Store: [0x800038c8]:0xFFFFFF7FFFFFDFFF




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001668]:KMMSB t6, t5, t4
	-[0x8000166c]:sd t6, 1296(sp)
Current Store : [0x80001670] : sd t5, 1304(sp) -- Store: [0x800038d8]:0xFFFFFFEFFFFF7FFF




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x8000169c]:KMMSB t6, t5, t4
	-[0x800016a0]:sd t6, 1312(sp)
Current Store : [0x800016a4] : sd t5, 1320(sp) -- Store: [0x800038e8]:0xFFFFFFF7FFFF7FFF




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x800016bc]:KMMSB t6, t5, t4
	-[0x800016c0]:sd t6, 1328(sp)
Current Store : [0x800016c4] : sd t5, 1336(sp) -- Store: [0x800038f8]:0xFFFFFFFE3FFFFFFF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800016e8]:KMMSB t6, t5, t4
	-[0x800016ec]:sd t6, 1344(sp)
Current Store : [0x800016f0] : sd t5, 1352(sp) -- Store: [0x80003908]:0x4000000080000000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001718]:KMMSB t6, t5, t4
	-[0x8000171c]:sd t6, 1360(sp)
Current Store : [0x80001720] : sd t5, 1368(sp) -- Store: [0x80003918]:0x08000000FEFFFFFF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x8000173c]:KMMSB t6, t5, t4
	-[0x80001740]:sd t6, 1376(sp)
Current Store : [0x80001744] : sd t5, 1384(sp) -- Store: [0x80003928]:0x0100000000000008




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x8000176c]:KMMSB t6, t5, t4
	-[0x80001770]:sd t6, 1392(sp)
Current Store : [0x80001774] : sd t5, 1400(sp) -- Store: [0x80003938]:0x00800000FFFF4AFC




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800017a0]:KMMSB t6, t5, t4
	-[0x800017a4]:sd t6, 1408(sp)
Current Store : [0x800017a8] : sd t5, 1416(sp) -- Store: [0x80003948]:0x0004000066666666




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800017cc]:KMMSB t6, t5, t4
	-[0x800017d0]:sd t6, 1424(sp)
Current Store : [0x800017d4] : sd t5, 1432(sp) -- Store: [0x80003958]:0x00010000FFFFFFF8




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800017fc]:KMMSB t6, t5, t4
	-[0x80001800]:sd t6, 1440(sp)
Current Store : [0x80001804] : sd t5, 1448(sp) -- Store: [0x80003968]:0x00004000FFFF4AFC




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000182c]:KMMSB t6, t5, t4
	-[0x80001830]:sd t6, 1456(sp)
Current Store : [0x80001834] : sd t5, 1464(sp) -- Store: [0x80003978]:0x00000800FFFFFFFA




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001860]:KMMSB t6, t5, t4
	-[0x80001864]:sd t6, 1472(sp)
Current Store : [0x80001868] : sd t5, 1480(sp) -- Store: [0x80003988]:0x0000040000080000




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001884]:KMMSB t6, t5, t4
	-[0x80001888]:sd t6, 1488(sp)
Current Store : [0x8000188c] : sd t5, 1496(sp) -- Store: [0x80003998]:0x00000200FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 128', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800018ac]:KMMSB t6, t5, t4
	-[0x800018b0]:sd t6, 1504(sp)
Current Store : [0x800018b4] : sd t5, 1512(sp) -- Store: [0x800039a8]:0x00000080FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800018d8]:KMMSB t6, t5, t4
	-[0x800018dc]:sd t6, 1520(sp)
Current Store : [0x800018e0] : sd t5, 1528(sp) -- Store: [0x800039b8]:0x0000001000000020




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800018f8]:KMMSB t6, t5, t4
	-[0x800018fc]:sd t6, 1536(sp)
Current Store : [0x80001900] : sd t5, 1544(sp) -- Store: [0x800039c8]:0x0000000800000000




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000192c]:KMMSB t6, t5, t4
	-[0x80001930]:sd t6, 1552(sp)
Current Store : [0x80001934] : sd t5, 1560(sp) -- Store: [0x800039d8]:0xBFFFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001954]:KMMSB t6, t5, t4
	-[0x80001958]:sd t6, 1568(sp)
Current Store : [0x8000195c] : sd t5, 1576(sp) -- Store: [0x800039e8]:0x0000B5047FFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000197c]:KMMSB t6, t5, t4
	-[0x80001980]:sd t6, 1584(sp)
Current Store : [0x80001984] : sd t5, 1592(sp) -- Store: [0x800039f8]:0x00000000DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800019a8]:KMMSB t6, t5, t4
	-[0x800019ac]:sd t6, 1600(sp)
Current Store : [0x800019b0] : sd t5, 1608(sp) -- Store: [0x80003a08]:0xFDFFFFFFEFFFFFFF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800019d4]:KMMSB t6, t5, t4
	-[0x800019d8]:sd t6, 1616(sp)
Current Store : [0x800019dc] : sd t5, 1624(sp) -- Store: [0x80003a18]:0x00400000F7FFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80001a04]:KMMSB t6, t5, t4
	-[0x80001a08]:sd t6, 1632(sp)
Current Store : [0x80001a0c] : sd t5, 1640(sp) -- Store: [0x80003a28]:0x00000009FBFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001a30]:KMMSB t6, t5, t4
	-[0x80001a34]:sd t6, 1648(sp)
Current Store : [0x80001a38] : sd t5, 1656(sp) -- Store: [0x80003a38]:0x20000000FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001a5c]:KMMSB t6, t5, t4
	-[0x80001a60]:sd t6, 1664(sp)
Current Store : [0x80001a64] : sd t5, 1672(sp) -- Store: [0x80003a48]:0x00000007FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001a8c]:KMMSB t6, t5, t4
	-[0x80001a90]:sd t6, 1680(sp)
Current Store : [0x80001a94] : sd t5, 1688(sp) -- Store: [0x80003a58]:0xFFFFFFBFFBFFFFFF




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001ab8]:KMMSB t6, t5, t4
	-[0x80001abc]:sd t6, 1696(sp)
Current Store : [0x80001ac0] : sd t5, 1704(sp) -- Store: [0x80003a68]:0x00000100FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001ae4]:KMMSB t6, t5, t4
	-[0x80001ae8]:sd t6, 1712(sp)
Current Store : [0x80001aec] : sd t5, 1720(sp) -- Store: [0x80003a78]:0x08000000FFFFFDFF




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001b04]:KMMSB t6, t5, t4
	-[0x80001b08]:sd t6, 1728(sp)
Current Store : [0x80001b0c] : sd t5, 1736(sp) -- Store: [0x80003a88]:0x0000000400000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001b34]:KMMSB t6, t5, t4
	-[0x80001b38]:sd t6, 1744(sp)
Current Store : [0x80001b3c] : sd t5, 1752(sp) -- Store: [0x80003a98]:0xFFFFFFF9FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001b54]:KMMSB t6, t5, t4
	-[0x80001b58]:sd t6, 1760(sp)
Current Store : [0x80001b5c] : sd t5, 1768(sp) -- Store: [0x80003aa8]:0xFFFF4AFD02000000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001b74]:KMMSB t6, t5, t4
	-[0x80001b78]:sd t6, 1776(sp)
Current Store : [0x80001b7c] : sd t5, 1784(sp) -- Store: [0x80003ab8]:0xFFFFFFFB00000005




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001b9c]:KMMSB t6, t5, t4
	-[0x80001ba0]:sd t6, 1792(sp)
Current Store : [0x80001ba4] : sd t5, 1800(sp) -- Store: [0x80003ac8]:0x00000005FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001bc4]:KMMSB t6, t5, t4
	-[0x80001bc8]:sd t6, 1808(sp)
Current Store : [0x80001bcc] : sd t5, 1816(sp) -- Store: [0x80003ad8]:0x000000080000B503




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001bf0]:KMMSB t6, t5, t4
	-[0x80001bf4]:sd t6, 1824(sp)
Current Store : [0x80001bf8] : sd t5, 1832(sp) -- Store: [0x80003ae8]:0xFFFFFFDF10000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001c20]:KMMSB t6, t5, t4
	-[0x80001c24]:sd t6, 1840(sp)
Current Store : [0x80001c28] : sd t5, 1848(sp) -- Store: [0x80003af8]:0x0004000008000000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80001c48]:KMMSB t6, t5, t4
	-[0x80001c4c]:sd t6, 1856(sp)
Current Store : [0x80001c50] : sd t5, 1864(sp) -- Store: [0x80003b08]:0x0040000000020000




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80001c6c]:KMMSB t6, t5, t4
	-[0x80001c70]:sd t6, 1872(sp)
Current Store : [0x80001c74] : sd t5, 1880(sp) -- Store: [0x80003b18]:0x0000000600000004




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001c9c]:KMMSB t6, t5, t4
	-[0x80001ca0]:sd t6, 1888(sp)
Current Store : [0x80001ca4] : sd t5, 1896(sp) -- Store: [0x80003b28]:0xFFFF4AFC00400000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001cc4]:KMMSB t6, t5, t4
	-[0x80001cc8]:sd t6, 1904(sp)
Current Store : [0x80001ccc] : sd t5, 1912(sp) -- Store: [0x80003b38]:0x1000000000200000




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001cec]:KMMSB t6, t5, t4
	-[0x80001cf0]:sd t6, 1920(sp)
Current Store : [0x80001cf4] : sd t5, 1928(sp) -- Store: [0x80003b48]:0xFFDFFFFF00000040




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80001d1c]:KMMSB t6, t5, t4
	-[0x80001d20]:sd t6, 1936(sp)
Current Store : [0x80001d24] : sd t5, 1944(sp) -- Store: [0x80003b58]:0xBFFFFFFFFFFFDFFF




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80001d40]:KMMSB t6, t5, t4
	-[0x80001d44]:sd t6, 1952(sp)
Current Store : [0x80001d48] : sd t5, 1960(sp) -- Store: [0x80003b68]:0xFFFFFFF700000100




Last Coverpoint : ['rs2_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001d6c]:KMMSB t6, t5, t4
	-[0x80001d70]:sd t6, 1968(sp)
Current Store : [0x80001d74] : sd t5, 1976(sp) -- Store: [0x80003b78]:0x0000200004000000




Last Coverpoint : ['opcode : kmmsb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -262145', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001da0]:KMMSB t6, t5, t4
	-[0x80001da4]:sd t6, 1984(sp)
Current Store : [0x80001da8] : sd t5, 1992(sp) -- Store: [0x80003b88]:0x8000000000100000





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

|s.no|            signature             |                                                                                                  coverpoints                                                                                                  |                                code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7D5BFDDB7D5BFDDB|- opcode : kmmsb<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -5<br> - rs1_w1_val == -5<br>                                                                         |[0x800003bc]:KMMSB a6, tp, tp<br> [0x800003c0]:sd a6, 0(s1)<br>      |
|   2|[0x80003220]<br>0x8E38E38EFFFFFFF7|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -9<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -9<br>                            |[0x800003e8]:KMMSB t4, t4, t4<br> [0x800003ec]:sd t4, 16(s1)<br>     |
|   3|[0x80003230]<br>0xE1403544DBEADFEE|- rs1 : x13<br> - rs2 : x5<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -65<br> |[0x80000418]:KMMSB s5, a3, t0<br> [0x8000041c]:sd s5, 32(s1)<br>     |
|   4|[0x80003240]<br>0x0000000366666664|- rs1 : x1<br> - rs2 : x15<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == 4<br>                                                                                       |[0x80000444]:KMMSB ra, ra, a5<br> [0x80000448]:sd ra, 48(s1)<br>     |
|   5|[0x80003250]<br>0xC0100000FFFFFFF0|- rs1 : x8<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -17<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 8388608<br>                           |[0x8000046c]:KMMSB t3, fp, t3<br> [0x80000470]:sd t3, 64(s1)<br>     |
|   6|[0x80003260]<br>0xBEAE0EEEBEADFEEB|- rs1 : x19<br> - rs2 : x6<br> - rd : x17<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -4097<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -2097153<br>                                                  |[0x8000049c]:KMMSB a7, s3, t1<br> [0x800004a0]:sd a7, 80(s1)<br>     |
|   7|[0x80003270]<br>0xFF008000FFDFFFFF|- rs1 : x6<br> - rs2 : x16<br> - rd : x19<br> - rs2_w1_val == -268435457<br> - rs1_w0_val == 4096<br>                                                                                                          |[0x800004cc]:KMMSB s3, t1, a6<br> [0x800004d0]:sd s3, 96(s1)<br>     |
|   8|[0x80003280]<br>0xDB7D5655DB7D5BFE|- rs1 : x27<br> - rs2 : x11<br> - rd : x24<br> - rs2_w1_val == -134217729<br> - rs1_w0_val == -257<br>                                                                                                         |[0x800004f8]:KMMSB s8, s11, a1<br> [0x800004fc]:sd s8, 112(s1)<br>   |
|   9|[0x80003290]<br>0xF8CCCCCC00000006|- rs1 : x3<br> - rs2 : x2<br> - rd : x11<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 262144<br>                                                                                                          |[0x80000528]:KMMSB a1, gp, sp<br> [0x8000052c]:sd a1, 128(s1)<br>    |
|  10|[0x800032a0]<br>0x76DF56FF76DF56FF|- rs1 : x16<br> - rs2 : x23<br> - rd : x26<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 0<br>                                                                                |[0x80000554]:KMMSB s10, a6, s7<br> [0x80000558]:sd s10, 144(s1)<br>  |
|  11|[0x800032b0]<br>0xFBEA2DEBFBB6FABA|- rs1 : x7<br> - rs2 : x30<br> - rd : x31<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 1431655765<br>                                                                                                     |[0x8000058c]:KMMSB t6, t2, t5<br> [0x80000590]:sd t6, 160(s1)<br>    |
|  12|[0x800032c0]<br>0xF59AA219F56FF76E|- rs1 : x12<br> - rs2 : x31<br> - rd : x14<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 1024<br> - rs1_w0_val == -1048577<br>                                                                              |[0x800005c0]:KMMSB a4, a2, t6<br> [0x800005c4]:sd a4, 176(s1)<br>    |
|  13|[0x800032d0]<br>0x0008000100000200|- rs1 : x2<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 4<br>                                                       |[0x800005ec]:KMMSB a0, sp, s5<br> [0x800005f0]:sd a0, 192(s1)<br>    |
|  14|[0x800032e0]<br>0xDF63CC44DF56FEC1|- rs1 : x25<br> - rs2 : x14<br> - rd : x18<br> - rs2_w1_val == -2097153<br> - rs1_w0_val == 16777216<br>                                                                                                       |[0x80000624]:KMMSB s2, s9, a4<br> [0x80000628]:sd s2, 208(s1)<br>    |
|  15|[0x800032f0]<br>0xEFFFFFFF00001000|- rs1 : x11<br> - rs2 : x0<br> - rd : x6<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 67108864<br>                                                                 |[0x80000658]:KMMSB t1, a1, zero<br> [0x8000065c]:sd t1, 0(ra)<br>    |
|  16|[0x80003300]<br>0x55555555FF7FFFFF|- rs1 : x0<br> - rs2 : x9<br> - rd : x5<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 0<br>                                                                                  |[0x8000068c]:KMMSB t0, zero, s1<br> [0x80000690]:sd t0, 16(ra)<br>   |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x0<br> - rs2_w1_val == -262145<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 1048576<br>                                                                          |[0x800006c0]:KMMSB zero, a4, a3<br> [0x800006c4]:sd zero, 32(ra)<br> |
|  18|[0x80003320]<br>0x6666666601000001|- rs1 : x21<br> - rs2 : x24<br> - rd : x25<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 4<br> - rs1_w0_val == -262145<br>                                                                                   |[0x800006ec]:KMMSB s9, s5, s8<br> [0x800006f0]:sd s9, 48(ra)<br>     |
|  19|[0x80003330]<br>0xFFFF4ADDFFFFFEF3|- rs1 : x15<br> - rs2 : x7<br> - rd : x27<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 64<br> - rs1_w1_val == -2097153<br>                                                                                   |[0x80000720]:KMMSB s11, a5, t2<br> [0x80000724]:sd s11, 64(ra)<br>   |
|  20|[0x80003340]<br>0xFEFFFFFF55555556|- rs1 : x17<br> - rs2 : x10<br> - rd : x30<br> - rs2_w1_val == -32769<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -2049<br>                                                                                 |[0x8000074c]:KMMSB t5, a7, a0<br> [0x80000750]:sd t5, 80(ra)<br>     |
|  21|[0x80003350]<br>0xFFDFFFFF33333338|- rs1 : x10<br> - rs2 : x17<br> - rd : x15<br> - rs2_w1_val == -16385<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 16384<br>                                                                                 |[0x8000077c]:KMMSB a5, a0, a7<br> [0x80000780]:sd a5, 96(ra)<br>     |
|  22|[0x80003360]<br>0xFFFFFFFBFFF80003|- rs1 : x22<br> - rs2 : x27<br> - rd : x4<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 67108864<br> - rs1_w0_val == 33554432<br>                                                                              |[0x80000798]:KMMSB tp, s6, s11<br> [0x8000079c]:sd tp, 112(ra)<br>   |
|  23|[0x80003370]<br>0x2000002100000005|- rs1 : x31<br> - rs2 : x19<br> - rd : x2<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 32<br> - rs1_w1_val == 33554432<br>                                                                                    |[0x800007c8]:KMMSB sp, t6, s3<br> [0x800007cc]:sd sp, 128(ra)<br>    |
|  24|[0x80003380]<br>0xFFFEFFFF00000041|- rs1 : x26<br> - rs2 : x12<br> - rd : x7<br> - rs2_w1_val == -2049<br> - rs1_w0_val == -2<br>                                                                                                                 |[0x800007f0]:KMMSB t2, s10, a2<br> [0x800007f4]:sd t2, 144(ra)<br>   |
|  25|[0x80003390]<br>0xFFFFF7FF00000003|- rs1 : x9<br> - rs2 : x20<br> - rd : x12<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 128<br> - rs1_w1_val == -3<br>                                                                                         |[0x80000810]:KMMSB a2, s1, s4<br> [0x80000814]:sd a2, 160(ra)<br>    |
|  26|[0x800033a0]<br>0x3333333300000005|- rs1 : x20<br> - rs2 : x25<br> - rd : x3<br> - rs2_w1_val == -513<br> - rs1_w0_val == -1<br>                                                                                                                  |[0x80000834]:KMMSB gp, s4, s9<br> [0x80000838]:sd gp, 176(ra)<br>    |
|  27|[0x800033b0]<br>0xFE000000FE9AAAAA|- rs1 : x28<br> - rs2 : x8<br> - rd : x23<br> - rs2_w1_val == -257<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 4096<br>                                                                                  |[0x80000868]:KMMSB s7, t3, fp<br> [0x8000086c]:sd s7, 192(ra)<br>    |
|  28|[0x800033c0]<br>0xFFFC002B66666667|- rs1 : x24<br> - rs2 : x3<br> - rd : x13<br> - rs2_w1_val == -129<br> - rs1_w0_val == 1073741824<br>                                                                                                          |[0x8000089c]:KMMSB a3, s8, gp<br> [0x800008a0]:sd a3, 0(sp)<br>      |
|  29|[0x800033d0]<br>0xFFFFFF19FC000000|- rs1 : x18<br> - rs2 : x22<br> - rd : x8<br> - rs2_w1_val == -65<br> - rs1_w0_val == -5<br>                                                                                                                   |[0x800008c8]:KMMSB fp, s2, s6<br> [0x800008cc]:sd fp, 16(sp)<br>     |
|  30|[0x800033e0]<br>0x0000000200000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x20<br> - rs2_w1_val == -33<br> - rs2_w0_val == -134217729<br>                                                                                                           |[0x800008f0]:KMMSB s4, t0, s10<br> [0x800008f4]:sd s4, 32(sp)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFFE01FFC3AA|- rs1 : x30<br> - rs2 : x18<br> - rd : x9<br> - rs2_w1_val == -17<br>                                                                                                                                          |[0x80000924]:KMMSB s1, t5, s2<br> [0x80000928]:sd s1, 48(sp)<br>     |
|  32|[0x80003400]<br>0xFFFFFFBF0000B504|- rs1 : x23<br> - rs2 : x1<br> - rd : x22<br> - rs2_w1_val == -9<br> - rs1_w0_val == -17<br>                                                                                                                   |[0x8000094c]:KMMSB s6, s7, ra<br> [0x80000950]:sd s6, 64(sp)<br>     |
|  33|[0x80003410]<br>0x02000000FFDFFFFF|- rs2_w1_val == -3<br>                                                                                                                                                                                         |[0x80000974]:KMMSB t6, t5, t4<br> [0x80000978]:sd t6, 80(sp)<br>     |
|  34|[0x80003420]<br>0x02000000FFCFFFFF|- rs2_w1_val == -2<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == -65537<br>                                                                                                                                 |[0x80000998]:KMMSB t6, t5, t4<br> [0x8000099c]:sd t6, 96(sp)<br>     |
|  35|[0x80003430]<br>0x01FFFE00FFD00080|- rs2_w1_val == -2147483648<br> - rs1_w1_val == -1025<br>                                                                                                                                                      |[0x800009c4]:KMMSB t6, t5, t4<br> [0x800009c8]:sd t6, 112(sp)<br>    |
|  36|[0x80003440]<br>0x01FFFE03FFD00080|- rs2_w1_val == 1073741824<br>                                                                                                                                                                                 |[0x800009ec]:KMMSB t6, t5, t4<br> [0x800009f0]:sd t6, 128(sp)<br>    |
|  37|[0x80003450]<br>0x020FFE04FFD00080|- rs2_w1_val == 536870912<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -4097<br>                                                                                                                           |[0x80000a14]:KMMSB t6, t5, t4<br> [0x80000a18]:sd t6, 144(sp)<br>    |
|  38|[0x80003460]<br>0x02107E05FFD00281|- rs2_w1_val == 268435456<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == -524289<br>                                                                                                                         |[0x80000a48]:KMMSB t6, t5, t4<br> [0x80000a4c]:sd t6, 160(sp)<br>    |
|  39|[0x80003470]<br>0xFEDD4AD2FFD00281|- rs2_w1_val == 134217728<br>                                                                                                                                                                                  |[0x80000a80]:KMMSB t6, t5, t4<br> [0x80000a84]:sd t6, 176(sp)<br>    |
|  40|[0x80003480]<br>0xFEDD4ACEFFD00281|- rs2_w1_val == 67108864<br> - rs1_w1_val == 256<br>                                                                                                                                                           |[0x80000aac]:KMMSB t6, t5, t4<br> [0x80000ab0]:sd t6, 192(sp)<br>    |
|  41|[0x80003490]<br>0xFE32A024FFD00281|- rs2_w1_val == 33554432<br> - rs1_w0_val == -1025<br>                                                                                                                                                         |[0x80000ad8]:KMMSB t6, t5, t4<br> [0x80000adc]:sd t6, 208(sp)<br>    |
|  42|[0x800034a0]<br>0xFE32A025FFD00281|- rs2_w1_val == 16777216<br> - rs1_w1_val == -1<br>                                                                                                                                                            |[0x80000af0]:KMMSB t6, t5, t4<br> [0x80000af4]:sd t6, 224(sp)<br>    |
|  43|[0x800034b0]<br>0xFE32A02AFFD00281|- rs2_w1_val == 8388608<br> - rs1_w1_val == -2049<br>                                                                                                                                                          |[0x80000b14]:KMMSB t6, t5, t4<br> [0x80000b18]:sd t6, 240(sp)<br>    |
|  44|[0x800034c0]<br>0xFE32A058FFD00281|- rs2_w1_val == 4194304<br>                                                                                                                                                                                    |[0x80000b40]:KMMSB t6, t5, t4<br> [0x80000b44]:sd t6, 256(sp)<br>    |
|  45|[0x800034d0]<br>0xFE32A059FFD00282|- rs2_w1_val == 2097152<br>                                                                                                                                                                                    |[0x80000b64]:KMMSB t6, t5, t4<br> [0x80000b68]:sd t6, 272(sp)<br>    |
|  46|[0x800034e0]<br>0xFE32A051FFD00283|- rs2_w1_val == 1048576<br> - rs1_w0_val == -8388609<br>                                                                                                                                                       |[0x80000b8c]:KMMSB t6, t5, t4<br> [0x80000b90]:sd t6, 288(sp)<br>    |
|  47|[0x800034f0]<br>0xFE32A052FFD00284|- rs2_w1_val == 524288<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -65<br>                                                                                                                               |[0x80000bb0]:KMMSB t6, t5, t4<br> [0x80000bb4]:sd t6, 304(sp)<br>    |
|  48|[0x80003500]<br>0xFE32A053FFD00287|- rs2_w1_val == 262144<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 64<br>                                                                                                                                    |[0x80000bdc]:KMMSB t6, t5, t4<br> [0x80000be0]:sd t6, 320(sp)<br>    |
|  49|[0x80003510]<br>0xFE32A054FFD00287|- rs2_w1_val == 131072<br>                                                                                                                                                                                     |[0x80000c08]:KMMSB t6, t5, t4<br> [0x80000c0c]:sd t6, 336(sp)<br>    |
|  50|[0x80003520]<br>0xFE329054FFD00287|- rs2_w1_val == 65536<br> - rs1_w1_val == 268435456<br>                                                                                                                                                        |[0x80000c34]:KMMSB t6, t5, t4<br> [0x80000c38]:sd t6, 352(sp)<br>    |
|  51|[0x80003530]<br>0xFE328854FFD002DD|- rs2_w1_val == 32768<br>                                                                                                                                                                                      |[0x80000c68]:KMMSB t6, t5, t4<br> [0x80000c6c]:sd t6, 368(sp)<br>    |
|  52|[0x80003540]<br>0xFE3272FFFFD002DD|- rs2_w1_val == 16384<br> - rs1_w0_val == 536870912<br>                                                                                                                                                        |[0x80000c94]:KMMSB t6, t5, t4<br> [0x80000c98]:sd t6, 384(sp)<br>    |
|  53|[0x80003550]<br>0xFE3272FFFFD002DE|- rs2_w1_val == 8192<br> - rs1_w0_val == 2<br>                                                                                                                                                                 |[0x80000cbc]:KMMSB t6, t5, t4<br> [0x80000cc0]:sd t6, 400(sp)<br>    |
|  54|[0x80003560]<br>0xFE3272FFFFD002B3|- rs2_w1_val == 4096<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == 2<br> - rs1_w0_val == -129<br>                                                                                                        |[0x80000cec]:KMMSB t6, t5, t4<br> [0x80000cf0]:sd t6, 416(sp)<br>    |
|  55|[0x80003570]<br>0xFE3272FFFFD035E7|- rs2_w1_val == 2048<br> - rs1_w0_val == -65537<br>                                                                                                                                                            |[0x80000d28]:KMMSB t6, t5, t4<br> [0x80000d2c]:sd t6, 432(sp)<br>    |
|  56|[0x80003580]<br>0xFE327166FFD035E8|- rs2_w1_val == 1024<br> - rs2_w0_val == -5<br>                                                                                                                                                                |[0x80000d54]:KMMSB t6, t5, t4<br> [0x80000d58]:sd t6, 448(sp)<br>    |
|  57|[0x80003590]<br>0xFE327166FFD035E7|- rs2_w1_val == 512<br> - rs1_w1_val == 1048576<br>                                                                                                                                                            |[0x80000d80]:KMMSB t6, t5, t4<br> [0x80000d84]:sd t6, 464(sp)<br>    |
|  58|[0x800035a0]<br>0xFE327167FFCF8B3C|- rs2_w1_val == 256<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -131073<br>                                                                                                                                  |[0x80000dac]:KMMSB t6, t5, t4<br> [0x80000db0]:sd t6, 480(sp)<br>    |
|  59|[0x800035b0]<br>0xFE327192FFCF8B3E|- rs2_w1_val == 128<br>                                                                                                                                                                                        |[0x80000dd8]:KMMSB t6, t5, t4<br> [0x80000ddc]:sd t6, 496(sp)<br>    |
|  60|[0x800035c0]<br>0xFE327195FFCF8B3F|- rs2_w1_val == 64<br> - rs1_w1_val == -134217729<br>                                                                                                                                                          |[0x80000e00]:KMMSB t6, t5, t4<br> [0x80000e04]:sd t6, 512(sp)<br>    |
|  61|[0x800035d0]<br>0xFE327195FFCF8B3F|- rs2_w1_val == 32<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 32<br>                                                                                                         |[0x80000e24]:KMMSB t6, t5, t4<br> [0x80000e28]:sd t6, 528(sp)<br>    |
|  62|[0x800035e0]<br>0xFE327195FFCF8B3F|- rs2_w0_val == 512<br> - rs1_w0_val == 8192<br>                                                                                                                                                               |[0x80000e48]:KMMSB t6, t5, t4<br> [0x80000e4c]:sd t6, 544(sp)<br>    |
|  63|[0x800035f0]<br>0xFE327195FFCF8B3E|- rs2_w0_val == 4194304<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 1024<br>                                                                                                                            |[0x80000e68]:KMMSB t6, t5, t4<br> [0x80000e6c]:sd t6, 560(sp)<br>    |
|  64|[0x80003600]<br>0xFE327196FFCF8B3E|- rs1_w1_val == 524288<br> - rs1_w0_val == 512<br>                                                                                                                                                             |[0x80000e8c]:KMMSB t6, t5, t4<br> [0x80000e90]:sd t6, 576(sp)<br>    |
|  65|[0x80003610]<br>0xF387C6EBFFCF8B40|- rs2_w0_val == -16777217<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 256<br>                                                                                                                           |[0x80000ec0]:KMMSB t6, t5, t4<br> [0x80000ec4]:sd t6, 592(sp)<br>    |
|  66|[0x80003620]<br>0xF387C6ECFFCF8B41|- rs1_w1_val == 64<br> - rs1_w0_val == 128<br>                                                                                                                                                                 |[0x80000ee8]:KMMSB t6, t5, t4<br> [0x80000eec]:sd t6, 608(sp)<br>    |
|  67|[0x80003630]<br>0xF387C6EDFFCF8B41|- rs2_w0_val == 1<br> - rs1_w0_val == 16<br>                                                                                                                                                                   |[0x80000f0c]:KMMSB t6, t5, t4<br> [0x80000f10]:sd t6, 624(sp)<br>    |
|  68|[0x80003640]<br>0xF3EE2D54FFCF8B3F|- rs1_w1_val == -33554433<br> - rs1_w0_val == 8<br>                                                                                                                                                            |[0x80000f48]:KMMSB t6, t5, t4<br> [0x80000f4c]:sd t6, 640(sp)<br>    |
|  69|[0x80003650]<br>0xE7216088FFCF8B40|- rs1_w0_val == 1<br>                                                                                                                                                                                          |[0x80000f70]:KMMSB t6, t5, t4<br> [0x80000f74]:sd t6, 656(sp)<br>    |
|  70|[0x80003660]<br>0xE7216089FFCF8B40|- rs2_w0_val == -2<br> - rs1_w1_val == 1<br>                                                                                                                                                                   |[0x80000f90]:KMMSB t6, t5, t4<br> [0x80000f94]:sd t6, 672(sp)<br>    |
|  71|[0x80003670]<br>0xE7216089FFCF8B41|- rs2_w1_val == 16<br>                                                                                                                                                                                         |[0x80000fc0]:KMMSB t6, t5, t4<br> [0x80000fc4]:sd t6, 688(sp)<br>    |
|  72|[0x80003680]<br>0xE7216088FFCF8B42|- rs2_w1_val == 8<br> - rs2_w0_val == -129<br>                                                                                                                                                                 |[0x80000fe8]:KMMSB t6, t5, t4<br> [0x80000fec]:sd t6, 704(sp)<br>    |
|  73|[0x80003690]<br>0xE7216088FFCF8B40|- rs2_w1_val == 4<br> - rs1_w0_val == 32768<br>                                                                                                                                                                |[0x8000100c]:KMMSB t6, t5, t4<br> [0x80001010]:sd t6, 720(sp)<br>    |
|  74|[0x800036a0]<br>0xE7216088FFCF8B41|- rs2_w1_val == 2<br> - rs2_w0_val == -1025<br>                                                                                                                                                                |[0x80001030]:KMMSB t6, t5, t4<br> [0x80001034]:sd t6, 736(sp)<br>    |
|  75|[0x800036b0]<br>0xE7216088FFCF8B44|- rs2_w1_val == 1<br> - rs2_w0_val == 8<br> - rs1_w0_val == -1073741825<br>                                                                                                                                    |[0x80001054]:KMMSB t6, t5, t4<br> [0x80001058]:sd t6, 752(sp)<br>    |
|  76|[0x800036c0]<br>0xE7216088FFCDF1AB|- rs2_w1_val == -1<br> - rs1_w0_val == 524288<br>                                                                                                                                                              |[0x8000107c]:KMMSB t6, t5, t4<br> [0x80001080]:sd t6, 768(sp)<br>    |
|  77|[0x800036d0]<br>0xE71493BCCC9ABE79|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 2097152<br>                                                                                                                                                     |[0x800010b8]:KMMSB t6, t5, t4<br> [0x800010bc]:sd t6, 784(sp)<br>    |
|  78|[0x800036e0]<br>0xE71493BCCC9ABF7A|- rs2_w0_val == -536870913<br> - rs1_w0_val == 2048<br>                                                                                                                                                        |[0x800010e4]:KMMSB t6, t5, t4<br> [0x800010e8]:sd t6, 800(sp)<br>    |
|  79|[0x800036f0]<br>0xCD7AFA23CC9ACF7B|- rs2_w0_val == -268435457<br> - rs1_w0_val == 65536<br>                                                                                                                                                       |[0x80001118]:KMMSB t6, t5, t4<br> [0x8000111c]:sd t6, 816(sp)<br>    |
|  80|[0x80003700]<br>0xCD7AFA23CC9ACF7B|- rs2_w0_val == -33554433<br>                                                                                                                                                                                  |[0x80001138]:KMMSB t6, t5, t4<br> [0x8000113c]:sd t6, 832(sp)<br>    |
|  81|[0x80003710]<br>0xCD7AFA24CC9ACF6B|- rs2_w0_val == -524289<br> - rs1_w1_val == -131073<br>                                                                                                                                                        |[0x80001168]:KMMSB t6, t5, t4<br> [0x8000116c]:sd t6, 848(sp)<br>    |
|  82|[0x80003720]<br>0xCD7AFA25CC9ACF6C|- rs2_w0_val == -262145<br> - rs1_w1_val == 32<br>                                                                                                                                                             |[0x80001194]:KMMSB t6, t5, t4<br> [0x80001198]:sd t6, 864(sp)<br>    |
|  83|[0x80003730]<br>0xCD7AFA25CC9ACF6A|- rs2_w0_val == -131073<br>                                                                                                                                                                                    |[0x800011c8]:KMMSB t6, t5, t4<br> [0x800011cc]:sd t6, 880(sp)<br>    |
|  84|[0x80003740]<br>0xCB7AFA25CC9ACEEA|- rs2_w0_val == -65537<br>                                                                                                                                                                                     |[0x800011fc]:KMMSB t6, t5, t4<br> [0x80001200]:sd t6, 896(sp)<br>    |
|  85|[0x80003750]<br>0xCB7AFA27CC9A8EEA|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -32769<br>                                                                                                                                                     |[0x8000122c]:KMMSB t6, t5, t4<br> [0x80001230]:sd t6, 912(sp)<br>    |
|  86|[0x80003760]<br>0xCB7AFA27CC9A8EEA|- rs2_w0_val == -16385<br>                                                                                                                                                                                     |[0x8000125c]:KMMSB t6, t5, t4<br> [0x80001260]:sd t6, 928(sp)<br>    |
|  87|[0x80003770]<br>0xCB7B10C8CC9A8EEA|- rs2_w0_val == -8193<br>                                                                                                                                                                                      |[0x8000128c]:KMMSB t6, t5, t4<br> [0x80001290]:sd t6, 944(sp)<br>    |
|  88|[0x80003780]<br>0xCB7B10C7CC9A8EEB|- rs2_w0_val == -2049<br> - rs1_w1_val == 131072<br>                                                                                                                                                           |[0x800012bc]:KMMSB t6, t5, t4<br> [0x800012c0]:sd t6, 960(sp)<br>    |
|  89|[0x80003790]<br>0xCB7B10C8CC9A8EEC|- rs2_w0_val == -513<br> - rs1_w0_val == 262144<br>                                                                                                                                                            |[0x800012e4]:KMMSB t6, t5, t4<br> [0x800012e8]:sd t6, 976(sp)<br>    |
|  90|[0x800037a0]<br>0xCB7AC860CC9A8F42|- rs2_w0_val == -257<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                        |[0x80001318]:KMMSB t6, t5, t4<br> [0x8000131c]:sd t6, 992(sp)<br>    |
|  91|[0x800037b0]<br>0xCB7AD3B1CC9A8F42|- rs2_w0_val == -65<br> - rs1_w0_val == -16777217<br>                                                                                                                                                          |[0x80001348]:KMMSB t6, t5, t4<br> [0x8000134c]:sd t6, 1008(sp)<br>   |
|  92|[0x800037c0]<br>0xCB7AD3D2CC9A8F42|- rs2_w0_val == -33<br>                                                                                                                                                                                        |[0x80001370]:KMMSB t6, t5, t4<br> [0x80001374]:sd t6, 1024(sp)<br>   |
|  93|[0x800037d0]<br>0xCB7B1029CC9A8F42|- rs2_w0_val == -3<br>                                                                                                                                                                                         |[0x8000139c]:KMMSB t6, t5, t4<br> [0x800013a0]:sd t6, 1040(sp)<br>   |
|  94|[0x800037e0]<br>0xCB7B102ACC9A7F42|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -8193<br>                                                                                                                                                      |[0x800013c8]:KMMSB t6, t5, t4<br> [0x800013cc]:sd t6, 1056(sp)<br>   |
|  95|[0x800037f0]<br>0xCB7B102ACC9A5202|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                 |[0x800013e0]:KMMSB t6, t5, t4<br> [0x800013e4]:sd t6, 1072(sp)<br>   |
|  96|[0x80003800]<br>0xCB7B102BCC9A5203|- rs2_w0_val == 16<br>                                                                                                                                                                                         |[0x80001404]:KMMSB t6, t5, t4<br> [0x80001408]:sd t6, 1088(sp)<br>   |
|  97|[0x80003810]<br>0xCB7B102CCC9A5204|- rs2_w0_val == 2<br> - rs1_w1_val == -33<br>                                                                                                                                                                  |[0x80001428]:KMMSB t6, t5, t4<br> [0x8000142c]:sd t6, 1104(sp)<br>   |
|  98|[0x80003820]<br>0xCB7A902DCC9A5204|- rs2_w0_val == -1<br>                                                                                                                                                                                         |[0x80001458]:KMMSB t6, t5, t4<br> [0x8000145c]:sd t6, 1120(sp)<br>   |
|  99|[0x80003830]<br>0x98475CFACC9A520A|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                 |[0x80001494]:KMMSB t6, t5, t4<br> [0x80001498]:sd t6, 1136(sp)<br>   |
| 100|[0x80003840]<br>0x984764FBCC9A5760|- rs2_w0_val == 4096<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                       |[0x800014cc]:KMMSB t6, t5, t4<br> [0x800014d0]:sd t6, 1152(sp)<br>   |
| 101|[0x80003850]<br>0x985764FCCC9A5747|- rs1_w1_val == -67108865<br>                                                                                                                                                                                  |[0x80001500]:KMMSB t6, t5, t4<br> [0x80001504]:sd t6, 1168(sp)<br>   |
| 102|[0x80003860]<br>0x985764FDCC9A5748|- rs1_w1_val == -16777217<br>                                                                                                                                                                                  |[0x80001530]:KMMSB t6, t5, t4<br> [0x80001534]:sd t6, 1184(sp)<br>   |
| 103|[0x80003870]<br>0x986CBA53CC9A5749|- rs1_w1_val == -4194305<br>                                                                                                                                                                                   |[0x80001560]:KMMSB t6, t5, t4<br> [0x80001564]:sd t6, 1200(sp)<br>   |
| 104|[0x80003880]<br>0x986CDA54CC9A5734|- rs1_w1_val == -1048577<br>                                                                                                                                                                                   |[0x80001598]:KMMSB t6, t5, t4<br> [0x8000159c]:sd t6, 1216(sp)<br>   |
| 105|[0x80003890]<br>0x986BDA54CC9A5734|- rs1_w1_val == -262145<br>                                                                                                                                                                                    |[0x800015cc]:KMMSB t6, t5, t4<br> [0x800015d0]:sd t6, 1232(sp)<br>   |
| 106|[0x800038a0]<br>0x986BDA54CC9A5735|- rs2_w0_val == 2097152<br> - rs1_w1_val == -513<br>                                                                                                                                                           |[0x800015f0]:KMMSB t6, t5, t4<br> [0x800015f4]:sd t6, 1248(sp)<br>   |
| 107|[0x800038b0]<br>0x986BDA54CC9A5736|- rs1_w1_val == -257<br>                                                                                                                                                                                       |[0x80001618]:KMMSB t6, t5, t4<br> [0x8000161c]:sd t6, 1264(sp)<br>   |
| 108|[0x800038c0]<br>0x986BDA54CC9A5736|- rs1_w1_val == -129<br>                                                                                                                                                                                       |[0x80001640]:KMMSB t6, t5, t4<br> [0x80001644]:sd t6, 1280(sp)<br>   |
| 109|[0x800038d0]<br>0x986BDA55CC9A3736|- rs1_w1_val == -17<br> - rs1_w0_val == -32769<br>                                                                                                                                                             |[0x80001668]:KMMSB t6, t5, t4<br> [0x8000166c]:sd t6, 1296(sp)<br>   |
| 110|[0x800038e0]<br>0x986BDA55CC9A50D0|- rs1_w1_val == -9<br>                                                                                                                                                                                         |[0x8000169c]:KMMSB t6, t5, t4<br> [0x800016a0]:sd t6, 1312(sp)<br>   |
| 111|[0x800038f0]<br>0x986BDA55D49A50D1|- rs1_w1_val == -2<br>                                                                                                                                                                                         |[0x800016bc]:KMMSB t6, t5, t4<br> [0x800016c0]:sd t6, 1328(sp)<br>   |
| 112|[0x80003900]<br>0xA06BDA56D49A50D4|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                 |[0x800016e8]:KMMSB t6, t5, t4<br> [0x800016ec]:sd t6, 1344(sp)<br>   |
| 113|[0x80003910]<br>0xA06BDA36D4CD8408|- rs1_w1_val == 134217728<br>                                                                                                                                                                                  |[0x80001718]:KMMSB t6, t5, t4<br> [0x8000171c]:sd t6, 1360(sp)<br>   |
| 114|[0x80003920]<br>0xA06BDA36D4CD8409|- rs1_w1_val == 16777216<br>                                                                                                                                                                                   |[0x8000173c]:KMMSB t6, t5, t4<br> [0x80001740]:sd t6, 1376(sp)<br>   |
| 115|[0x80003930]<br>0xA06BD836D4CD840A|- rs1_w1_val == 8388608<br>                                                                                                                                                                                    |[0x8000176c]:KMMSB t6, t5, t4<br> [0x80001770]:sd t6, 1392(sp)<br>   |
| 116|[0x80003940]<br>0xA06BD839D4CD8409|- rs1_w1_val == 262144<br>                                                                                                                                                                                     |[0x800017a0]:KMMSB t6, t5, t4<br> [0x800017a4]:sd t6, 1408(sp)<br>   |
| 117|[0x80003950]<br>0xA06BD83AD4CD840A|- rs1_w1_val == 65536<br>                                                                                                                                                                                      |[0x800017cc]:KMMSB t6, t5, t4<br> [0x800017d0]:sd t6, 1424(sp)<br>   |
| 118|[0x80003960]<br>0xA06BD83AD4CD840B|- rs1_w1_val == 16384<br>                                                                                                                                                                                      |[0x800017fc]:KMMSB t6, t5, t4<br> [0x80001800]:sd t6, 1440(sp)<br>   |
| 119|[0x80003970]<br>0xA06BD6A1D4CD840C|- rs2_w0_val == 8388608<br> - rs1_w1_val == 2048<br>                                                                                                                                                           |[0x8000182c]:KMMSB t6, t5, t4<br> [0x80001830]:sd t6, 1456(sp)<br>   |
| 120|[0x80003980]<br>0xA06BD5A1D4CAD962|- rs1_w1_val == 1024<br>                                                                                                                                                                                       |[0x80001860]:KMMSB t6, t5, t4<br> [0x80001864]:sd t6, 1472(sp)<br>   |
| 121|[0x80003990]<br>0xA06BD5A2D4CAD962|- rs1_w1_val == 512<br>                                                                                                                                                                                        |[0x80001884]:KMMSB t6, t5, t4<br> [0x80001888]:sd t6, 1488(sp)<br>   |
| 122|[0x800039a0]<br>0xA06BD5A2D4CAD963|- rs1_w1_val == 128<br> - rs1_w0_val == -16385<br>                                                                                                                                                             |[0x800018ac]:KMMSB t6, t5, t4<br> [0x800018b0]:sd t6, 1504(sp)<br>   |
| 123|[0x800039b0]<br>0xA06BD5A3D4CAD964|- rs1_w1_val == 16<br>                                                                                                                                                                                         |[0x800018d8]:KMMSB t6, t5, t4<br> [0x800018dc]:sd t6, 1520(sp)<br>   |
| 124|[0x800039c0]<br>0xA06BD5A3D4CAD964|- rs1_w1_val == 8<br>                                                                                                                                                                                          |[0x800018f8]:KMMSB t6, t5, t4<br> [0x800018fc]:sd t6, 1536(sp)<br>   |
| 125|[0x800039d0]<br>0xA06B55A3D4CAD962|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                |[0x8000192c]:KMMSB t6, t5, t4<br> [0x80001930]:sd t6, 1552(sp)<br>   |
| 126|[0x800039e0]<br>0xA06B5439B4CAD963|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                 |[0x80001954]:KMMSB t6, t5, t4<br> [0x80001958]:sd t6, 1568(sp)<br>   |
| 127|[0x800039f0]<br>0xA06B5439B4CAD968|- rs1_w0_val == -536870913<br>                                                                                                                                                                                 |[0x8000197c]:KMMSB t6, t5, t4<br> [0x80001980]:sd t6, 1584(sp)<br>   |
| 128|[0x80003a00]<br>0xA073543AB4CAD948|- rs1_w0_val == -268435457<br>                                                                                                                                                                                 |[0x800019a8]:KMMSB t6, t5, t4<br> [0x800019ac]:sd t6, 1600(sp)<br>   |
| 129|[0x80003a10]<br>0xA075543BB4CAD94B|- rs1_w0_val == -134217729<br>                                                                                                                                                                                 |[0x800019d4]:KMMSB t6, t5, t4<br> [0x800019d8]:sd t6, 1616(sp)<br>   |
| 130|[0x80003a20]<br>0xA075543CB6202EA1|- rs1_w0_val == -67108865<br>                                                                                                                                                                                  |[0x80001a04]:KMMSB t6, t5, t4<br> [0x80001a08]:sd t6, 1632(sp)<br>   |
| 131|[0x80003a30]<br>0xA175543DB6202EA1|- rs1_w0_val == -33554433<br>                                                                                                                                                                                  |[0x80001a30]:KMMSB t6, t5, t4<br> [0x80001a34]:sd t6, 1648(sp)<br>   |
| 132|[0x80003a40]<br>0xA175543DB6202EA0|- rs1_w0_val == -4194305<br>                                                                                                                                                                                   |[0x80001a5c]:KMMSB t6, t5, t4<br> [0x80001a60]:sd t6, 1664(sp)<br>   |
| 133|[0x80003a50]<br>0xA175542DB62030A1|- rs2_w0_val == 32768<br>                                                                                                                                                                                      |[0x80001a8c]:KMMSB t6, t5, t4<br> [0x80001a90]:sd t6, 1680(sp)<br>   |
| 134|[0x80003a60]<br>0xA175540DB62030AA|- rs2_w0_val == 65536<br> - rs1_w0_val == -524289<br>                                                                                                                                                          |[0x80001ab8]:KMMSB t6, t5, t4<br> [0x80001abc]:sd t6, 1696(sp)<br>   |
| 135|[0x80003a70]<br>0xA175540EB6202FFF|- rs1_w0_val == -513<br>                                                                                                                                                                                       |[0x80001ae4]:KMMSB t6, t5, t4<br> [0x80001ae8]:sd t6, 1712(sp)<br>   |
| 136|[0x80003a80]<br>0xA175540FB6202FFF|- rs2_w0_val == 536870912<br>                                                                                                                                                                                  |[0x80001b04]:KMMSB t6, t5, t4<br> [0x80001b08]:sd t6, 1728(sp)<br>   |
| 137|[0x80003a90]<br>0xA175540DB6202FFF|- rs1_w0_val == -33<br>                                                                                                                                                                                        |[0x80001b34]:KMMSB t6, t5, t4<br> [0x80001b38]:sd t6, 1744(sp)<br>   |
| 138|[0x80003aa0]<br>0xA175540EB6102FFF|- rs2_w0_val == 134217728<br>                                                                                                                                                                                  |[0x80001b54]:KMMSB t6, t5, t4<br> [0x80001b58]:sd t6, 1760(sp)<br>   |
| 139|[0x80003ab0]<br>0xA175540EB6102FFF|- rs2_w0_val == 33554432<br>                                                                                                                                                                                   |[0x80001b74]:KMMSB t6, t5, t4<br> [0x80001b78]:sd t6, 1776(sp)<br>   |
| 140|[0x80003ac0]<br>0xA175540FB6103000|- rs1_w0_val == -3<br>                                                                                                                                                                                         |[0x80001b9c]:KMMSB t6, t5, t4<br> [0x80001ba0]:sd t6, 1792(sp)<br>   |
| 141|[0x80003ad0]<br>0xA1755410B6102F4B|- rs2_w0_val == 16777216<br>                                                                                                                                                                                   |[0x80001bc4]:KMMSB t6, t5, t4<br> [0x80001bc8]:sd t6, 1808(sp)<br>   |
| 142|[0x80003ae0]<br>0xA1755410B61023FB|- rs1_w0_val == 268435456<br>                                                                                                                                                                                  |[0x80001bf0]:KMMSB t6, t5, t4<br> [0x80001bf4]:sd t6, 1824(sp)<br>   |
| 143|[0x80003af0]<br>0xA1755413B610243C|- rs1_w0_val == 134217728<br>                                                                                                                                                                                  |[0x80001c20]:KMMSB t6, t5, t4<br> [0x80001c24]:sd t6, 1840(sp)<br>   |
| 144|[0x80003b00]<br>0xA1755393B610242C|- rs2_w0_val == 524288<br> - rs1_w0_val == 131072<br>                                                                                                                                                          |[0x80001c48]:KMMSB t6, t5, t4<br> [0x80001c4c]:sd t6, 1856(sp)<br>   |
| 145|[0x80003b10]<br>0xA1755394B610242C|- rs2_w0_val == 131072<br>                                                                                                                                                                                     |[0x80001c6c]:KMMSB t6, t5, t4<br> [0x80001c70]:sd t6, 1872(sp)<br>   |
| 146|[0x80003b20]<br>0xA1755395B6035760|- rs1_w0_val == 4194304<br>                                                                                                                                                                                    |[0x80001c9c]:KMMSB t6, t5, t4<br> [0x80001ca0]:sd t6, 1888(sp)<br>   |
| 147|[0x80003b30]<br>0xA1755396B6035761|- rs1_w0_val == 2097152<br>                                                                                                                                                                                    |[0x80001cc4]:KMMSB t6, t5, t4<br> [0x80001cc8]:sd t6, 1904(sp)<br>   |
| 148|[0x80003b40]<br>0xA1755397B6035761|- rs2_w0_val == 8192<br>                                                                                                                                                                                       |[0x80001cec]:KMMSB t6, t5, t4<br> [0x80001cf0]:sd t6, 1920(sp)<br>   |
| 149|[0x80003b50]<br>0xA175538FB6035762|- rs2_w0_val == 2048<br>                                                                                                                                                                                       |[0x80001d1c]:KMMSB t6, t5, t4<br> [0x80001d20]:sd t6, 1936(sp)<br>   |
| 150|[0x80003b60]<br>0xA1755390B6035762|- rs2_w0_val == 256<br>                                                                                                                                                                                        |[0x80001d40]:KMMSB t6, t5, t4<br> [0x80001d44]:sd t6, 1952(sp)<br>   |
| 151|[0x80003b70]<br>0xA1755393B6035362|- rs2_w1_val == -1048577<br>                                                                                                                                                                                   |[0x80001d6c]:KMMSB t6, t5, t4<br> [0x80001d70]:sd t6, 1968(sp)<br>   |
