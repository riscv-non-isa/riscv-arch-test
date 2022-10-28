
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800018a0')]      |
| SIG_REGION                | [('0x80003210', '0x80003a50', '264 dwords')]      |
| COV_LABELS                | ukadd32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukadd32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 264      |
| STAT1                     | 131      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 132     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001890]:UKADD32 t6, t5, t4
      [0x80001894]:sd t6, 1808(gp)
 -- Signature Address: 0x80003a40 Data: 0xFFFFFFFFFFFFFC02
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294965247
      - rs2_w0_val == 4294966271
      - rs1_w1_val == 4294967279






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukadd32', 'rs1 : x0', 'rs2 : x0', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_w0_val == 0', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800003b8]:UKADD32 a7, zero, zero
	-[0x800003bc]:sd a7, 0(a2)
Current Store : [0x800003c0] : sd zero, 8(a2) -- Store: [0x80003218]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x5', 'rd : x5', 'rs1 == rs2 == rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 4096', 'rs1_w1_val == 4294959103', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800003e8]:UKADD32 t0, t0, t0
	-[0x800003ec]:sd t0, 16(a2)
Current Store : [0x800003f0] : sd t0, 24(a2) -- Store: [0x80003228]:0xFFFFFFFF00002000




Last Coverpoint : ['rs1 : x31', 'rs2 : x27', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 64', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4160749567', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000418]:UKADD32 s1, t6, s11
	-[0x8000041c]:sd s1, 32(a2)
Current Store : [0x80000420] : sd t6, 40(a2) -- Store: [0x80003238]:0xF7FFFFFFFFFFDFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x20', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 2097152', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000044c]:UKADD32 s4, s4, a6
	-[0x80000450]:sd s4, 48(a2)
Current Store : [0x80000454] : sd s4, 56(a2) -- Store: [0x80003248]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x11', 'rd : x11', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 512', 'rs1_w1_val == 2097152', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000478]:UKADD32 a1, gp, a1
	-[0x8000047c]:sd a1, 64(a2)
Current Store : [0x80000480] : sd gp, 72(a2) -- Store: [0x80003258]:0x00200000F7FFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x22', 'rd : x2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x800004a4]:UKADD32 sp, s7, s6
	-[0x800004a8]:sd sp, 80(a2)
Current Store : [0x800004ac] : sd s7, 88(a2) -- Store: [0x80003268]:0x0000001200000013




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x15', 'rs2_w1_val == 3221225471', 'rs1_w1_val == 2147483648', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800004d4]:UKADD32 a5, tp, s2
	-[0x800004d8]:sd a5, 96(a2)
Current Store : [0x800004dc] : sd tp, 104(a2) -- Store: [0x80003278]:0x8000000000200000




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x10', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4294967295', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800004f8]:UKADD32 a0, a4, s5
	-[0x800004fc]:sd a0, 112(a2)
Current Store : [0x80000500] : sd a4, 120(a2) -- Store: [0x80003288]:0x0000010000000007




Last Coverpoint : ['rs1 : x27', 'rs2 : x3', 'rd : x24', 'rs2_w1_val == 4026531839', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80000524]:UKADD32 s8, s11, gp
	-[0x80000528]:sd s8, 128(a2)
Current Store : [0x8000052c] : sd s11, 136(a2) -- Store: [0x80003298]:0xDFFFFFFF00000005




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x7', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 16384', 'rs1_w1_val == 16777216', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000554]:UKADD32 t2, s1, t5
	-[0x80000558]:sd t2, 144(a2)
Current Store : [0x8000055c] : sd s1, 152(a2) -- Store: [0x800032a8]:0x0100000000020000




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x3', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 131072', 'rs1_w1_val == 8388608', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000580]:UKADD32 gp, a6, a4
	-[0x80000584]:sd gp, 160(a2)
Current Store : [0x80000588] : sd a6, 168(a2) -- Store: [0x800032b8]:0x0080000000000400




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x14', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 3221225471', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800005a4]:UKADD32 a4, sp, s1
	-[0x800005a8]:sd a4, 176(a2)
Current Store : [0x800005ac] : sd sp, 184(a2) -- Store: [0x800032c8]:0x0000000980000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x6', 'rd : x13', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 4096', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800005d4]:UKADD32 a3, t2, t1
	-[0x800005d8]:sd a3, 192(a2)
Current Store : [0x800005dc] : sd t2, 200(a2) -- Store: [0x800032d8]:0x00001000FFFFFFF7




Last Coverpoint : ['rs1 : x29', 'rs2 : x7', 'rd : x31', 'rs2_w1_val == 4286578687', 'rs1_w1_val == 8192', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000600]:UKADD32 t6, t4, t2
	-[0x80000604]:sd t6, 208(a2)
Current Store : [0x80000608] : sd t4, 216(a2) -- Store: [0x800032e8]:0x00002000FF7FFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x23', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 64', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000628]:UKADD32 s7, s8, a7
	-[0x8000062c]:sd s7, 224(a2)
Current Store : [0x80000630] : sd s8, 232(a2) -- Store: [0x800032f8]:0x0000020000000006




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x1', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 2', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000650]:UKADD32 ra, t1, a0
	-[0x80000654]:sd ra, 240(a2)
Current Store : [0x80000658] : sd t1, 248(a2) -- Store: [0x80003308]:0xFFF7FFFFFFFFFFBF




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x19', 'rs2_w1_val == 4293918719', 'rs2_w0_val == 4294966271', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000674]:UKADD32 s3, a7, t4
	-[0x80000678]:sd s3, 256(a2)
Current Store : [0x8000067c] : sd a7, 264(a2) -- Store: [0x80003318]:0x000000067FFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x8', 'rd : x22', 'rs2_w1_val == 4294443007']
Last Code Sequence : 
	-[0x800006a0]:UKADD32 s6, s10, fp
	-[0x800006a4]:sd s6, 272(a2)
Current Store : [0x800006a8] : sd s10, 280(a2) -- Store: [0x80003328]:0xF7FFFFFF0000000F




Last Coverpoint : ['rs1 : x18', 'rs2 : x2', 'rd : x28', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4294967293', 'rs1_w1_val == 4194304', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800006cc]:UKADD32 t3, s2, sp
	-[0x800006d0]:sd t3, 0(gp)
Current Store : [0x800006d4] : sd s2, 8(gp) -- Store: [0x80003338]:0x0040000040000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x21', 'rs2_w1_val == 4294836223', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800006f0]:UKADD32 s5, s3, tp
	-[0x800006f4]:sd s5, 16(gp)
Current Store : [0x800006f8] : sd s3, 24(gp) -- Store: [0x80003348]:0x0000000CFDFFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rd : x6', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000728]:UKADD32 t1, ra, s7
	-[0x8000072c]:sd t1, 32(gp)
Current Store : [0x80000730] : sd ra, 40(gp) -- Store: [0x80003358]:0x00001000AAAAAAAA




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x4', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 3758096383', 'rs1_w1_val == 4294967231', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000750]:UKADD32 tp, t3, s3
	-[0x80000754]:sd tp, 48(gp)
Current Store : [0x80000758] : sd t3, 56(gp) -- Store: [0x80003368]:0xFFFFFFBF00000008




Last Coverpoint : ['rs1 : x13', 'rs2 : x25', 'rd : x18', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000774]:UKADD32 s2, a3, s9
	-[0x80000778]:sd s2, 64(gp)
Current Store : [0x8000077c] : sd a3, 72(gp) -- Store: [0x80003378]:0x0000001200000020




Last Coverpoint : ['rs1 : x11', 'rs2 : x13', 'rd : x8', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x800007a8]:UKADD32 fp, a1, a3
	-[0x800007ac]:sd fp, 80(gp)
Current Store : [0x800007b0] : sd a1, 88(gp) -- Store: [0x80003388]:0x00000012FFFDFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x0', 'rs2_w1_val == 4294965247', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x800007cc]:UKADD32 zero, s5, s8
	-[0x800007d0]:sd zero, 96(gp)
Current Store : [0x800007d4] : sd s5, 104(gp) -- Store: [0x80003398]:0xFFFFFFEF00000003




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x27', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 8', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800007f0]:UKADD32 s11, t5, s10
	-[0x800007f4]:sd s11, 112(gp)
Current Store : [0x800007f8] : sd t5, 120(gp) -- Store: [0x800033a8]:0x000200000000000F




Last Coverpoint : ['rs1 : x22', 'rs2 : x15', 'rd : x29', 'rs2_w1_val == 4294966783', 'rs2_w0_val == 4294967167', 'rs1_w1_val == 32768', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000818]:UKADD32 t4, s6, a5
	-[0x8000081c]:sd t4, 128(gp)
Current Store : [0x80000820] : sd s6, 136(gp) -- Store: [0x800033b8]:0x0000800000010000




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x26', 'rs2_w1_val == 4294967039', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000840]:UKADD32 s10, fp, a2
	-[0x80000844]:sd s10, 144(gp)
Current Store : [0x80000848] : sd fp, 152(gp) -- Store: [0x800033c8]:0x0000000F55555555




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x16', 'rs2_w1_val == 4294967167', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80000864]:UKADD32 a6, s9, s4
	-[0x80000868]:sd a6, 160(gp)
Current Store : [0x8000086c] : sd s9, 168(gp) -- Store: [0x800033d8]:0x0004000000000013




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x30', 'rs2_w1_val == 4294967231', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x8000088c]:UKADD32 t5, a5, t3
	-[0x80000890]:sd t5, 176(gp)
Current Store : [0x80000894] : sd a5, 184(gp) -- Store: [0x800033e8]:0x00000200FFFFEFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x1', 'rd : x25', 'rs2_w1_val == 4294967263', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800008ac]:UKADD32 s9, a2, ra
	-[0x800008b0]:sd s9, 192(gp)
Current Store : [0x800008b4] : sd a2, 200(gp) -- Store: [0x800033f8]:0x0000000000000800




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x12', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800008d4]:UKADD32 a2, a0, t6
	-[0x800008d8]:sd a2, 208(gp)
Current Store : [0x800008dc] : sd a0, 216(gp) -- Store: [0x80003408]:0xFFFFFFEF00008000




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs2_w0_val == 4', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800008fc]:UKADD32 t6, t5, t4
	-[0x80000900]:sd t6, 224(gp)
Current Store : [0x80000904] : sd t5, 232(gp) -- Store: [0x80003418]:0x7FFFFFFF00000008




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 32768', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000920]:UKADD32 t6, t5, t4
	-[0x80000924]:sd t6, 240(gp)
Current Store : [0x80000928] : sd t5, 248(gp) -- Store: [0x80003428]:0x0000400000000009




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 4294934527', 'rs1_w1_val == 128', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x8000094c]:UKADD32 t6, t5, t4
	-[0x80000950]:sd t6, 256(gp)
Current Store : [0x80000954] : sd t5, 264(gp) -- Store: [0x80003438]:0x00000080FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs1_w1_val == 2', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000970]:UKADD32 t6, t5, t4
	-[0x80000974]:sd t6, 272(gp)
Current Store : [0x80000978] : sd t5, 280(gp) -- Store: [0x80003448]:0x0000000200000200




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000998]:UKADD32 t6, t5, t4
	-[0x8000099c]:sd t6, 288(gp)
Current Store : [0x800009a0] : sd t5, 296(gp) -- Store: [0x80003458]:0x2000000000000006




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w1_val == 65536', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800009bc]:UKADD32 t6, t5, t4
	-[0x800009c0]:sd t6, 304(gp)
Current Store : [0x800009c4] : sd t5, 312(gp) -- Store: [0x80003468]:0x0001000000000001




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800009f0]:UKADD32 t6, t5, t4
	-[0x800009f4]:sd t6, 320(gp)
Current Store : [0x800009f8] : sd t5, 328(gp) -- Store: [0x80003478]:0x0020000010000000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4294705151', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80000a24]:UKADD32 t6, t5, t4
	-[0x80000a28]:sd t6, 336(gp)
Current Store : [0x80000a2c] : sd t5, 344(gp) -- Store: [0x80003488]:0xFFFF7FFF00000009




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 1073741824', 'rs1_w1_val == 2048', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000a4c]:UKADD32 t6, t5, t4
	-[0x80000a50]:sd t6, 352(gp)
Current Store : [0x80000a54] : sd t5, 360(gp) -- Store: [0x80003498]:0x00000800DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == 4294967039', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000a78]:UKADD32 t6, t5, t4
	-[0x80000a7c]:sd t6, 368(gp)
Current Store : [0x80000a80] : sd t5, 376(gp) -- Store: [0x800034a8]:0x1000000000001000




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000aa4]:UKADD32 t6, t5, t4
	-[0x80000aa8]:sd t6, 384(gp)
Current Store : [0x80000aac] : sd t5, 392(gp) -- Store: [0x800034b8]:0x00000000FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 4194304', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x80000acc]:UKADD32 t6, t5, t4
	-[0x80000ad0]:sd t6, 400(gp)
Current Store : [0x80000ad4] : sd t5, 408(gp) -- Store: [0x800034c8]:0xFBFFFFFF80000000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 32', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000aec]:UKADD32 t6, t5, t4
	-[0x80000af0]:sd t6, 416(gp)
Current Store : [0x80000af4] : sd t5, 424(gp) -- Store: [0x800034d8]:0x0000000D08000000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 536870912', 'rs1_w1_val == 4', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000b10]:UKADD32 t6, t5, t4
	-[0x80000b14]:sd t6, 432(gp)
Current Store : [0x80000b18] : sd t5, 440(gp) -- Store: [0x800034e8]:0x00000004FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80000b3c]:UKADD32 t6, t5, t4
	-[0x80000b40]:sd t6, 448(gp)
Current Store : [0x80000b44] : sd t5, 456(gp) -- Store: [0x800034f8]:0xFF7FFFFFDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000b68]:UKADD32 t6, t5, t4
	-[0x80000b6c]:sd t6, 464(gp)
Current Store : [0x80000b70] : sd t5, 472(gp) -- Store: [0x80003508]:0x20000000FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000b90]:UKADD32 t6, t5, t4
	-[0x80000b94]:sd t6, 480(gp)
Current Store : [0x80000b98] : sd t5, 488(gp) -- Store: [0x80003518]:0x0000000600400000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000bbc]:UKADD32 t6, t5, t4
	-[0x80000bc0]:sd t6, 496(gp)
Current Store : [0x80000bc4] : sd t5, 504(gp) -- Store: [0x80003528]:0xFFF7FFFFEFFFFFFF




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000be8]:UKADD32 t6, t5, t4
	-[0x80000bec]:sd t6, 512(gp)
Current Store : [0x80000bf0] : sd t5, 520(gp) -- Store: [0x80003538]:0x0000010000040000




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c0c]:UKADD32 t6, t5, t4
	-[0x80000c10]:sd t6, 528(gp)
Current Store : [0x80000c14] : sd t5, 536(gp) -- Store: [0x80003548]:0x0000000200004000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c30]:UKADD32 t6, t5, t4
	-[0x80000c34]:sd t6, 544(gp)
Current Store : [0x80000c38] : sd t5, 552(gp) -- Store: [0x80003558]:0x0000000E00002000




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000c54]:UKADD32 t6, t5, t4
	-[0x80000c58]:sd t6, 560(gp)
Current Store : [0x80000c5c] : sd t5, 568(gp) -- Store: [0x80003568]:0x8000000000000100




Last Coverpoint : ['rs2_w0_val == 4227858431', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000c78]:UKADD32 t6, t5, t4
	-[0x80000c7c]:sd t6, 576(gp)
Current Store : [0x80000c80] : sd t5, 584(gp) -- Store: [0x80003578]:0x0000000300000080




Last Coverpoint : ['rs1_w1_val == 4294967039', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c9c]:UKADD32 t6, t5, t4
	-[0x80000ca0]:sd t6, 592(gp)
Current Store : [0x80000ca4] : sd t5, 600(gp) -- Store: [0x80003588]:0xFFFFFEFF00000040




Last Coverpoint : ['rs1_w1_val == 1', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000cc4]:UKADD32 t6, t5, t4
	-[0x80000cc8]:sd t6, 608(gp)
Current Store : [0x80000ccc] : sd t5, 616(gp) -- Store: [0x80003598]:0x0000000100000010




Last Coverpoint : ['rs1_w1_val == 2863311530', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000cec]:UKADD32 t6, t5, t4
	-[0x80000cf0]:sd t6, 624(gp)
Current Store : [0x80000cf4] : sd t5, 632(gp) -- Store: [0x800035a8]:0xAAAAAAAA00000004




Last Coverpoint : ['rs2_w0_val == 4294901759', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d14]:UKADD32 t6, t5, t4
	-[0x80000d18]:sd t6, 640(gp)
Current Store : [0x80000d1c] : sd t5, 648(gp) -- Store: [0x800035b8]:0xFFFFFFEF00000002




Last Coverpoint : ['rs2_w0_val == 4160749567', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000d3c]:UKADD32 t6, t5, t4
	-[0x80000d40]:sd t6, 656(gp)
Current Store : [0x80000d44] : sd t5, 664(gp) -- Store: [0x800035c8]:0x0000000EFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 1048576', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000d6c]:UKADD32 t6, t5, t4
	-[0x80000d70]:sd t6, 672(gp)
Current Store : [0x80000d74] : sd t5, 680(gp) -- Store: [0x800035d8]:0x00100000FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 268435456', 'rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x80000d94]:UKADD32 t6, t5, t4
	-[0x80000d98]:sd t6, 688(gp)
Current Store : [0x80000d9c] : sd t5, 696(gp) -- Store: [0x800035e8]:0xBFFFFFFF00000080




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000dbc]:UKADD32 t6, t5, t4
	-[0x80000dc0]:sd t6, 704(gp)
Current Store : [0x80000dc4] : sd t5, 712(gp) -- Store: [0x800035f8]:0x002000007FFFFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000de0]:UKADD32 t6, t5, t4
	-[0x80000de4]:sd t6, 720(gp)
Current Store : [0x80000de8] : sd t5, 728(gp) -- Store: [0x80003608]:0x0000000B00000011




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000e0c]:UKADD32 t6, t5, t4
	-[0x80000e10]:sd t6, 736(gp)
Current Store : [0x80000e14] : sd t5, 744(gp) -- Store: [0x80003618]:0xAAAAAAAA00000100




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000e34]:UKADD32 t6, t5, t4
	-[0x80000e38]:sd t6, 752(gp)
Current Store : [0x80000e3c] : sd t5, 760(gp) -- Store: [0x80003628]:0x00200000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000e5c]:UKADD32 t6, t5, t4
	-[0x80000e60]:sd t6, 768(gp)
Current Store : [0x80000e64] : sd t5, 776(gp) -- Store: [0x80003638]:0xFF7FFFFF0000000D




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000e84]:UKADD32 t6, t5, t4
	-[0x80000e88]:sd t6, 784(gp)
Current Store : [0x80000e8c] : sd t5, 792(gp) -- Store: [0x80003648]:0x0000000EFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000ea8]:UKADD32 t6, t5, t4
	-[0x80000eac]:sd t6, 800(gp)
Current Store : [0x80000eb0] : sd t5, 808(gp) -- Store: [0x80003658]:0x0000000500000006




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w1_val == 4026531839', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000ed4]:UKADD32 t6, t5, t4
	-[0x80000ed8]:sd t6, 816(gp)
Current Store : [0x80000edc] : sd t5, 824(gp) -- Store: [0x80003668]:0xEFFFFFFFFFFFBFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 32', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000efc]:UKADD32 t6, t5, t4
	-[0x80000f00]:sd t6, 832(gp)
Current Store : [0x80000f04] : sd t5, 840(gp) -- Store: [0x80003678]:0x00000020FFF7FFFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 67108864', 'rs1_w1_val == 4290772991', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000f1c]:UKADD32 t6, t5, t4
	-[0x80000f20]:sd t6, 848(gp)
Current Store : [0x80000f24] : sd t5, 856(gp) -- Store: [0x80003688]:0xFFBFFFFF04000000




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000f44]:UKADD32 t6, t5, t4
	-[0x80000f48]:sd t6, 864(gp)
Current Store : [0x80000f4c] : sd t5, 872(gp) -- Store: [0x80003698]:0xFFFFFFEF00000010




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000f70]:UKADD32 t6, t5, t4
	-[0x80000f74]:sd t6, 880(gp)
Current Store : [0x80000f78] : sd t5, 888(gp) -- Store: [0x800036a8]:0xF7FFFFFF0000000E




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80000f98]:UKADD32 t6, t5, t4
	-[0x80000f9c]:sd t6, 896(gp)
Current Store : [0x80000fa0] : sd t5, 904(gp) -- Store: [0x800036b8]:0x00000100FDFFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967295']
Last Code Sequence : 
	-[0x80000fc4]:UKADD32 t6, t5, t4
	-[0x80000fc8]:sd t6, 912(gp)
Current Store : [0x80000fcc] : sd t5, 920(gp) -- Store: [0x800036c8]:0xFF7FFFFF00040000




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x80000fec]:UKADD32 t6, t5, t4
	-[0x80000ff0]:sd t6, 928(gp)
Current Store : [0x80000ff4] : sd t5, 936(gp) -- Store: [0x800036d8]:0xFFFFFDFF00000001




Last Coverpoint : ['rs2_w0_val == 1431655765', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80001018]:UKADD32 t6, t5, t4
	-[0x8000101c]:sd t6, 944(gp)
Current Store : [0x80001020] : sd t5, 952(gp) -- Store: [0x800036e8]:0x00000007FFFFF7FF




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001040]:UKADD32 t6, t5, t4
	-[0x80001044]:sd t6, 960(gp)
Current Store : [0x80001048] : sd t5, 968(gp) -- Store: [0x800036f8]:0x0004000000010000




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000105c]:UKADD32 t6, t5, t4
	-[0x80001060]:sd t6, 976(gp)
Current Store : [0x80001064] : sd t5, 984(gp) -- Store: [0x80003708]:0xFFFFFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 4278190079', 'rs1_w1_val == 4294901759']
Last Code Sequence : 
	-[0x80001088]:UKADD32 t6, t5, t4
	-[0x8000108c]:sd t6, 992(gp)
Current Store : [0x80001090] : sd t5, 1000(gp) -- Store: [0x80003718]:0xFFFEFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 4290772991', 'rs1_w1_val == 134217728', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800010ac]:UKADD32 t6, t5, t4
	-[0x800010b0]:sd t6, 1008(gp)
Current Store : [0x800010b4] : sd t5, 1016(gp) -- Store: [0x80003728]:0x0800000000100000




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800010cc]:UKADD32 t6, t5, t4
	-[0x800010d0]:sd t6, 1024(gp)
Current Store : [0x800010d4] : sd t5, 1032(gp) -- Store: [0x80003738]:0x0000000502000000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800010f4]:UKADD32 t6, t5, t4
	-[0x800010f8]:sd t6, 1040(gp)
Current Store : [0x800010fc] : sd t5, 1048(gp) -- Store: [0x80003748]:0xFBFFFFFF0000000C




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001120]:UKADD32 t6, t5, t4
	-[0x80001124]:sd t6, 1056(gp)
Current Store : [0x80001128] : sd t5, 1064(gp) -- Store: [0x80003758]:0xFFFEFFFF00000008




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x80001148]:UKADD32 t6, t5, t4
	-[0x8000114c]:sd t6, 1072(gp)
Current Store : [0x80001150] : sd t5, 1080(gp) -- Store: [0x80003768]:0xFFFFF7FFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001174]:UKADD32 t6, t5, t4
	-[0x80001178]:sd t6, 1088(gp)
Current Store : [0x8000117c] : sd t5, 1096(gp) -- Store: [0x80003778]:0x02000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800011a8]:UKADD32 t6, t5, t4
	-[0x800011ac]:sd t6, 1104(gp)
Current Store : [0x800011b0] : sd t5, 1112(gp) -- Store: [0x80003788]:0x5555555500000004




Last Coverpoint : ['rs1_w1_val == 4261412863']
Last Code Sequence : 
	-[0x800011d0]:UKADD32 t6, t5, t4
	-[0x800011d4]:sd t6, 1120(gp)
Current Store : [0x800011d8] : sd t5, 1128(gp) -- Store: [0x80003798]:0xFDFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80001208]:UKADD32 t6, t5, t4
	-[0x8000120c]:sd t6, 1136(gp)
Current Store : [0x80001210] : sd t5, 1144(gp) -- Store: [0x800037a8]:0xFFDFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80001234]:UKADD32 t6, t5, t4
	-[0x80001238]:sd t6, 1152(gp)
Current Store : [0x8000123c] : sd t5, 1160(gp) -- Store: [0x800037b8]:0xFFEFFFFF00100000




Last Coverpoint : ['rs1_w1_val == 4294705151']
Last Code Sequence : 
	-[0x8000125c]:UKADD32 t6, t5, t4
	-[0x80001260]:sd t6, 1168(gp)
Current Store : [0x80001264] : sd t5, 1176(gp) -- Store: [0x800037c8]:0xFFFBFFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == 4294836223']
Last Code Sequence : 
	-[0x80001288]:UKADD32 t6, t5, t4
	-[0x8000128c]:sd t6, 1184(gp)
Current Store : [0x80001290] : sd t5, 1192(gp) -- Store: [0x800037d8]:0xFFFDFFFF00000040




Last Coverpoint : ['rs1_w1_val == 4294950911', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800012b0]:UKADD32 t6, t5, t4
	-[0x800012b4]:sd t6, 1200(gp)
Current Store : [0x800012b8] : sd t5, 1208(gp) -- Store: [0x800037e8]:0xFFFFBFFFFFFFFEFF




Last Coverpoint : ['rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x800012d8]:UKADD32 t6, t5, t4
	-[0x800012dc]:sd t6, 1216(gp)
Current Store : [0x800012e0] : sd t5, 1224(gp) -- Store: [0x800037f8]:0xFFFFEFFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80001300]:UKADD32 t6, t5, t4
	-[0x80001304]:sd t6, 1232(gp)
Current Store : [0x80001308] : sd t5, 1240(gp) -- Store: [0x80003808]:0xFFFFFBFF80000000




Last Coverpoint : ['rs1_w1_val == 4294967167']
Last Code Sequence : 
	-[0x80001324]:UKADD32 t6, t5, t4
	-[0x80001328]:sd t6, 1248(gp)
Current Store : [0x8000132c] : sd t5, 1256(gp) -- Store: [0x80003818]:0xFFFFFF7FFFFFFFBF




Last Coverpoint : ['rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80001354]:UKADD32 t6, t5, t4
	-[0x80001358]:sd t6, 1264(gp)
Current Store : [0x8000135c] : sd t5, 1272(gp) -- Store: [0x80003828]:0xFFFFFFDF00000400




Last Coverpoint : ['rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x8000137c]:UKADD32 t6, t5, t4
	-[0x80001380]:sd t6, 1280(gp)
Current Store : [0x80001384] : sd t5, 1288(gp) -- Store: [0x80003838]:0xFFFFFFF7FFFDFFFF




Last Coverpoint : ['rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x800013a4]:UKADD32 t6, t5, t4
	-[0x800013a8]:sd t6, 1296(gp)
Current Store : [0x800013ac] : sd t5, 1304(gp) -- Store: [0x80003848]:0xFFFFFFFB00000011




Last Coverpoint : ['rs2_w0_val == 4293918719', 'rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x800013d4]:UKADD32 t6, t5, t4
	-[0x800013d8]:sd t6, 1312(gp)
Current Store : [0x800013dc] : sd t5, 1320(gp) -- Store: [0x80003858]:0xFFFFFFFDFFFFFFFD




Last Coverpoint : ['rs1_w1_val == 4294967294', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x800013f8]:UKADD32 t6, t5, t4
	-[0x800013fc]:sd t6, 1328(gp)
Current Store : [0x80001400] : sd t5, 1336(gp) -- Store: [0x80003868]:0xFFFFFFFEFFFFFFEF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001420]:UKADD32 t6, t5, t4
	-[0x80001424]:sd t6, 1344(gp)
Current Store : [0x80001428] : sd t5, 1352(gp) -- Store: [0x80003878]:0x4000000000000003




Last Coverpoint : ['rs1_w1_val == 67108864', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80001450]:UKADD32 t6, t5, t4
	-[0x80001454]:sd t6, 1360(gp)
Current Store : [0x80001458] : sd t5, 1368(gp) -- Store: [0x80003888]:0x04000000FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001474]:UKADD32 t6, t5, t4
	-[0x80001478]:sd t6, 1376(gp)
Current Store : [0x8000147c] : sd t5, 1384(gp) -- Store: [0x80003898]:0x0000040002000000




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 4294967294', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x8000149c]:UKADD32 t6, t5, t4
	-[0x800014a0]:sd t6, 1392(gp)
Current Store : [0x800014a4] : sd t5, 1400(gp) -- Store: [0x800038a8]:0x00000040FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800014c4]:UKADD32 t6, t5, t4
	-[0x800014c8]:sd t6, 1408(gp)
Current Store : [0x800014cc] : sd t5, 1416(gp) -- Store: [0x800038b8]:0x00000010FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800014e8]:UKADD32 t6, t5, t4
	-[0x800014ec]:sd t6, 1424(gp)
Current Store : [0x800014f0] : sd t5, 1432(gp) -- Store: [0x800038c8]:0x00000001BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80001518]:UKADD32 t6, t5, t4
	-[0x8000151c]:sd t6, 1440(gp)
Current Store : [0x80001520] : sd t5, 1448(gp) -- Store: [0x800038d8]:0x00000100FFDFFFFF




Last Coverpoint : ['rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80001544]:UKADD32 t6, t5, t4
	-[0x80001548]:sd t6, 1456(gp)
Current Store : [0x8000154c] : sd t5, 1464(gp) -- Store: [0x800038e8]:0xFFFF7FFF00000010




Last Coverpoint : ['rs1_w1_val == 524288', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001570]:UKADD32 t6, t5, t4
	-[0x80001574]:sd t6, 1472(gp)
Current Store : [0x80001578] : sd t5, 1480(gp) -- Store: [0x800038f8]:0x00080000FBFFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x8000159c]:UKADD32 t6, t5, t4
	-[0x800015a0]:sd t6, 1488(gp)
Current Store : [0x800015a4] : sd t5, 1496(gp) -- Store: [0x80003908]:0xAAAAAAAAFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 2147483648', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800015c8]:UKADD32 t6, t5, t4
	-[0x800015cc]:sd t6, 1504(gp)
Current Store : [0x800015d0] : sd t5, 1512(gp) -- Store: [0x80003918]:0x7FFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800015f0]:UKADD32 t6, t5, t4
	-[0x800015f4]:sd t6, 1520(gp)
Current Store : [0x800015f8] : sd t5, 1528(gp) -- Store: [0x80003928]:0xFFFFFFFBAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80001618]:UKADD32 t6, t5, t4
	-[0x8000161c]:sd t6, 1536(gp)
Current Store : [0x80001620] : sd t5, 1544(gp) -- Store: [0x80003938]:0x400000000000000F




Last Coverpoint : ['rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001640]:UKADD32 t6, t5, t4
	-[0x80001644]:sd t6, 1552(gp)
Current Store : [0x80001648] : sd t5, 1560(gp) -- Store: [0x80003948]:0x00000080AAAAAAAA




Last Coverpoint : ['rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80001664]:UKADD32 t6, t5, t4
	-[0x80001668]:sd t6, 1568(gp)
Current Store : [0x8000166c] : sd t5, 1576(gp) -- Store: [0x80003958]:0x000200000000000D




Last Coverpoint : ['rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001688]:UKADD32 t6, t5, t4
	-[0x8000168c]:sd t6, 1584(gp)
Current Store : [0x80001690] : sd t5, 1592(gp) -- Store: [0x80003968]:0x00000009BFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800016ac]:UKADD32 t6, t5, t4
	-[0x800016b0]:sd t6, 1600(gp)
Current Store : [0x800016b4] : sd t5, 1608(gp) -- Store: [0x80003978]:0xFFFFEFFFFFFFFDFF




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800016d0]:UKADD32 t6, t5, t4
	-[0x800016d4]:sd t6, 1616(gp)
Current Store : [0x800016d8] : sd t5, 1624(gp) -- Store: [0x80003988]:0xFFFFFFFEFFFFFF7F




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800016f4]:UKADD32 t6, t5, t4
	-[0x800016f8]:sd t6, 1632(gp)
Current Store : [0x800016fc] : sd t5, 1640(gp) -- Store: [0x80003998]:0xFFFFDFFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001724]:UKADD32 t6, t5, t4
	-[0x80001728]:sd t6, 1648(gp)
Current Store : [0x8000172c] : sd t5, 1656(gp) -- Store: [0x800039a8]:0x00100000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001748]:UKADD32 t6, t5, t4
	-[0x8000174c]:sd t6, 1664(gp)
Current Store : [0x80001750] : sd t5, 1672(gp) -- Store: [0x800039b8]:0x0000000CFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001764]:UKADD32 t6, t5, t4
	-[0x80001768]:sd t6, 1680(gp)
Current Store : [0x8000176c] : sd t5, 1688(gp) -- Store: [0x800039c8]:0xFFFFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001788]:UKADD32 t6, t5, t4
	-[0x8000178c]:sd t6, 1696(gp)
Current Store : [0x80001790] : sd t5, 1704(gp) -- Store: [0x800039d8]:0xFFFFFBFF20000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800017b0]:UKADD32 t6, t5, t4
	-[0x800017b4]:sd t6, 1712(gp)
Current Store : [0x800017b8] : sd t5, 1720(gp) -- Store: [0x800039e8]:0xFFFBFFFF00000011




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800017d4]:UKADD32 t6, t5, t4
	-[0x800017d8]:sd t6, 1728(gp)
Current Store : [0x800017dc] : sd t5, 1736(gp) -- Store: [0x800039f8]:0x0000001100000005




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001808]:UKADD32 t6, t5, t4
	-[0x8000180c]:sd t6, 1744(gp)
Current Store : [0x80001810] : sd t5, 1752(gp) -- Store: [0x80003a08]:0xDFFFFFFF01000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000182c]:UKADD32 t6, t5, t4
	-[0x80001830]:sd t6, 1760(gp)
Current Store : [0x80001834] : sd t5, 1768(gp) -- Store: [0x80003a18]:0x0000000C00800000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000184c]:UKADD32 t6, t5, t4
	-[0x80001850]:sd t6, 1776(gp)
Current Store : [0x80001854] : sd t5, 1784(gp) -- Store: [0x80003a28]:0xFFFFFFFD00080000




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x8000186c]:UKADD32 t6, t5, t4
	-[0x80001870]:sd t6, 1792(gp)
Current Store : [0x80001874] : sd t5, 1800(gp) -- Store: [0x80003a38]:0x0000000800000000




Last Coverpoint : ['opcode : ukadd32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x80001890]:UKADD32 t6, t5, t4
	-[0x80001894]:sd t6, 1808(gp)
Current Store : [0x80001898] : sd t5, 1816(gp) -- Store: [0x80003a48]:0xFFFFFFEF00000003





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

|s.no|            signature             |                                                                                                                                                         coverpoints                                                                                                                                                         |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ukadd32<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_w0_val == 0<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 0<br>                                                                                                                                           |[0x800003b8]:UKADD32 a7, zero, zero<br> [0x800003bc]:sd a7, 0(a2)<br>  |
|   2|[0x80003220]<br>0xFFFFFFFF00002000|- rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 4294959103<br> - rs1_w0_val == 4096<br> |[0x800003e8]:UKADD32 t0, t0, t0<br> [0x800003ec]:sd t0, 16(a2)<br>     |
|   3|[0x80003230]<br>0xF800003FFFFFFFFF|- rs1 : x31<br> - rs2 : x27<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 64<br> - rs2_w0_val == 4294959103<br> - rs1_w1_val == 4160749567<br> - rs1_w0_val == 4294959103<br>                                         |[0x80000418]:UKADD32 s1, t6, s11<br> [0x8000041c]:sd s1, 32(a2)<br>    |
|   4|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x16<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 4294901759<br>                                                          |[0x8000044c]:UKADD32 s4, s4, a6<br> [0x80000450]:sd s4, 48(a2)<br>     |
|   5|[0x80003250]<br>0x55755555F80001FF|- rs1 : x3<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 512<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4160749567<br>                                                                                                                                       |[0x80000478]:UKADD32 a1, gp, a1<br> [0x8000047c]:sd a1, 64(a2)<br>     |
|   6|[0x80003260]<br>0x8000001100100013|- rs1 : x23<br> - rs2 : x22<br> - rd : x2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 1048576<br>                                                                                                                                                                                                                     |[0x800004a4]:UKADD32 sp, s7, s6<br> [0x800004a8]:sd sp, 80(a2)<br>     |
|   7|[0x80003270]<br>0xFFFFFFFF00201000|- rs1 : x4<br> - rs2 : x18<br> - rd : x15<br> - rs2_w1_val == 3221225471<br> - rs1_w1_val == 2147483648<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                      |[0x800004d4]:UKADD32 a5, tp, s2<br> [0x800004d8]:sd a5, 96(a2)<br>     |
|   8|[0x80003280]<br>0xE00000FFFFFFFFFF|- rs1 : x14<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4294967295<br> - rs1_w1_val == 256<br>                                                                                                                                                                                         |[0x800004f8]:UKADD32 a0, a4, s5<br> [0x800004fc]:sd a0, 112(a2)<br>    |
|   9|[0x80003290]<br>0xFFFFFFFF00000010|- rs1 : x27<br> - rs2 : x3<br> - rd : x24<br> - rs2_w1_val == 4026531839<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                  |[0x80000524]:UKADD32 s8, s11, gp<br> [0x80000528]:sd s8, 128(a2)<br>   |
|  10|[0x800032a0]<br>0xF8FFFFFF00024000|- rs1 : x9<br> - rs2 : x30<br> - rd : x7<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 131072<br>                                                                                                                                                                |[0x80000554]:UKADD32 t2, s1, t5<br> [0x80000558]:sd t2, 144(a2)<br>    |
|  11|[0x800032b0]<br>0xFC7FFFFF00020400|- rs1 : x16<br> - rs2 : x14<br> - rd : x3<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 1024<br>                                                                                                                                                                 |[0x80000580]:UKADD32 gp, a6, a4<br> [0x80000584]:sd gp, 160(a2)<br>    |
|  12|[0x800032c0]<br>0xFE000008FFFFFFFF|- rs1 : x2<br> - rs2 : x9<br> - rd : x14<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 3221225471<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                                                    |[0x800005a4]:UKADD32 a4, sp, s1<br> [0x800005a8]:sd a4, 176(a2)<br>    |
|  13|[0x800032d0]<br>0xFF000FFFFFFFFFFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x13<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                           |[0x800005d4]:UKADD32 a3, t2, t1<br> [0x800005d8]:sd a3, 192(a2)<br>    |
|  14|[0x800032e0]<br>0xFF801FFFFFFFFFFF|- rs1 : x29<br> - rs2 : x7<br> - rd : x31<br> - rs2_w1_val == 4286578687<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                         |[0x80000600]:UKADD32 t6, t4, t2<br> [0x80000604]:sd t6, 208(a2)<br>    |
|  15|[0x800032f0]<br>0xFFC001FF00000046|- rs1 : x24<br> - rs2 : x17<br> - rd : x23<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 64<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                 |[0x80000628]:UKADD32 s7, s8, a7<br> [0x8000062c]:sd s7, 224(a2)<br>    |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFFFC1|- rs1 : x6<br> - rs2 : x10<br> - rd : x1<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 2<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                              |[0x80000650]:UKADD32 ra, t1, a0<br> [0x80000654]:sd ra, 240(a2)<br>    |
|  17|[0x80003310]<br>0xFFF00005FFFFFFFF|- rs1 : x17<br> - rs2 : x29<br> - rd : x19<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 4294966271<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                  |[0x80000674]:UKADD32 s3, a7, t4<br> [0x80000678]:sd s3, 256(a2)<br>    |
|  18|[0x80003320]<br>0xFFFFFFFF00000011|- rs1 : x26<br> - rs2 : x8<br> - rd : x22<br> - rs2_w1_val == 4294443007<br>                                                                                                                                                                                                                                                 |[0x800006a0]:UKADD32 s6, s10, fp<br> [0x800006a4]:sd s6, 272(a2)<br>   |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rs2 : x2<br> - rd : x28<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294967293<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                       |[0x800006cc]:UKADD32 t3, s2, sp<br> [0x800006d0]:sd t3, 0(gp)<br>      |
|  20|[0x80003340]<br>0xFFFE000BFFFFFFFF|- rs1 : x19<br> - rs2 : x4<br> - rd : x21<br> - rs2_w1_val == 4294836223<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                  |[0x800006f0]:UKADD32 s5, s3, tp<br> [0x800006f4]:sd s5, 16(gp)<br>     |
|  21|[0x80003350]<br>0xFFFF0FFFFFFFFFFF|- rs1 : x1<br> - rs2 : x23<br> - rd : x6<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                    |[0x80000728]:UKADD32 t1, ra, s7<br> [0x8000072c]:sd t1, 32(gp)<br>     |
|  22|[0x80003360]<br>0xFFFFFFFFE0000007|- rs1 : x28<br> - rs2 : x19<br> - rd : x4<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 3758096383<br> - rs1_w1_val == 4294967231<br> - rs1_w0_val == 8<br>                                                                                                                                                             |[0x80000750]:UKADD32 tp, t3, s3<br> [0x80000754]:sd tp, 48(gp)<br>     |
|  23|[0x80003370]<br>0xFFFFC011FFFFFFDF|- rs1 : x13<br> - rs2 : x25<br> - rd : x18<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 32<br>                                                                                                                                                                                          |[0x80000774]:UKADD32 s2, a3, s9<br> [0x80000778]:sd s2, 64(gp)<br>     |
|  24|[0x80003380]<br>0xFFFFF011FFFFFFFF|- rs1 : x11<br> - rs2 : x13<br> - rd : x8<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                   |[0x800007a8]:UKADD32 fp, a1, a3<br> [0x800007ac]:sd fp, 80(gp)<br>     |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x24<br> - rd : x0<br> - rs2_w1_val == 4294965247<br> - rs1_w1_val == 4294967279<br>                                                                                                                                                                                                                  |[0x800007cc]:UKADD32 zero, s5, s8<br> [0x800007d0]:sd zero, 96(gp)<br> |
|  26|[0x800033a0]<br>0xFFFFFFFF00000017|- rs1 : x30<br> - rs2 : x26<br> - rd : x27<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 8<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                               |[0x800007f0]:UKADD32 s11, t5, s10<br> [0x800007f4]:sd s11, 112(gp)<br> |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x15<br> - rd : x29<br> - rs2_w1_val == 4294966783<br> - rs2_w0_val == 4294967167<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 65536<br>                                                                                                                                                             |[0x80000818]:UKADD32 t4, s6, a5<br> [0x8000081c]:sd t4, 128(gp)<br>    |
|  28|[0x800033c0]<br>0xFFFFFF0EFFFFFFFF|- rs1 : x8<br> - rs2 : x12<br> - rd : x26<br> - rs2_w1_val == 4294967039<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                  |[0x80000840]:UKADD32 s10, fp, a2<br> [0x80000844]:sd s10, 144(gp)<br>  |
|  29|[0x800033d0]<br>0xFFFFFFFF0000001F|- rs1 : x25<br> - rs2 : x20<br> - rd : x16<br> - rs2_w1_val == 4294967167<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                     |[0x80000864]:UKADD32 a6, s9, s4<br> [0x80000868]:sd a6, 160(gp)<br>    |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFF005|- rs1 : x15<br> - rs2 : x28<br> - rd : x30<br> - rs2_w1_val == 4294967231<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                 |[0x8000088c]:UKADD32 t5, a5, t3<br> [0x80000890]:sd t5, 176(gp)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFDF00000805|- rs1 : x12<br> - rs2 : x1<br> - rd : x25<br> - rs2_w1_val == 4294967263<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                        |[0x800008ac]:UKADD32 s9, a2, ra<br> [0x800008b0]:sd s9, 192(gp)<br>    |
|  32|[0x80003400]<br>0xFFFFFFFFFF807FFF|- rs1 : x10<br> - rs2 : x31<br> - rd : x12<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                       |[0x800008d4]:UKADD32 a2, a0, t6<br> [0x800008d8]:sd a2, 208(gp)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFF0000000C|- rs2_w1_val == 4294967287<br> - rs2_w0_val == 4<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                          |[0x800008fc]:UKADD32 t6, t5, t4<br> [0x80000900]:sd t6, 224(gp)<br>    |
|  34|[0x80003420]<br>0xFFFFFFFF00008009|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 32768<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                           |[0x80000920]:UKADD32 t6, t5, t4<br> [0x80000924]:sd t6, 240(gp)<br>    |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 4294934527<br> - rs1_w1_val == 128<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                                                         |[0x8000094c]:UKADD32 t6, t5, t4<br> [0x80000950]:sd t6, 256(gp)<br>    |
|  36|[0x80003440]<br>0x800000020000020E|- rs2_w1_val == 2147483648<br> - rs1_w1_val == 2<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                 |[0x80000970]:UKADD32 t6, t5, t4<br> [0x80000974]:sd t6, 272(gp)<br>    |
|  37|[0x80003450]<br>0x60000000FFFFFF85|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                 |[0x80000998]:UKADD32 t6, t5, t4<br> [0x8000099c]:sd t6, 288(gp)<br>    |
|  38|[0x80003460]<br>0x2001000000000006|- rs2_w1_val == 536870912<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                |[0x800009bc]:UKADD32 t6, t5, t4<br> [0x800009c0]:sd t6, 304(gp)<br>    |
|  39|[0x80003470]<br>0x10200000BAAAAAAA|- rs2_w1_val == 268435456<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                  |[0x800009f0]:UKADD32 t6, t5, t4<br> [0x800009f4]:sd t6, 320(gp)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFFFFFC0008|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4294705151<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                                                                                                  |[0x80000a24]:UKADD32 t6, t5, t4<br> [0x80000a28]:sd t6, 336(gp)<br>    |
|  41|[0x80003490]<br>0x04000800FFFFFFFF|- rs2_w1_val == 67108864<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                          |[0x80000a4c]:UKADD32 t6, t5, t4<br> [0x80000a50]:sd t6, 352(gp)<br>    |
|  42|[0x800034a0]<br>0x12000000FFFFFFFF|- rs2_w1_val == 33554432<br> - rs2_w0_val == 4294967039<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                    |[0x80000a78]:UKADD32 t6, t5, t4<br> [0x80000a7c]:sd t6, 368(gp)<br>    |
|  43|[0x800034b0]<br>0x01000000FFFFFFFF|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                 |[0x80000aa4]:UKADD32 t6, t5, t4<br> [0x80000aa8]:sd t6, 384(gp)<br>    |
|  44|[0x800034c0]<br>0xFC7FFFFF80400000|- rs2_w1_val == 8388608<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                                       |[0x80000acc]:UKADD32 t6, t5, t4<br> [0x80000ad0]:sd t6, 400(gp)<br>    |
|  45|[0x800034d0]<br>0x0040000D08000020|- rs2_w1_val == 4194304<br> - rs2_w0_val == 32<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                             |[0x80000aec]:UKADD32 t6, t5, t4<br> [0x80000af0]:sd t6, 416(gp)<br>    |
|  46|[0x800034e0]<br>0x00200004FFFFFFFF|- rs2_w1_val == 2097152<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                                               |[0x80000b10]:UKADD32 t6, t5, t4<br> [0x80000b14]:sd t6, 432(gp)<br>    |
|  47|[0x800034f0]<br>0xFF8FFFFFFFFFFFFF|- rs2_w1_val == 1048576<br> - rs1_w1_val == 4286578687<br>                                                                                                                                                                                                                                                                   |[0x80000b3c]:UKADD32 t6, t5, t4<br> [0x80000b40]:sd t6, 448(gp)<br>    |
|  48|[0x80003500]<br>0x20080000FF8003FF|- rs2_w1_val == 524288<br> - rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                          |[0x80000b68]:UKADD32 t6, t5, t4<br> [0x80000b6c]:sd t6, 464(gp)<br>    |
|  49|[0x80003510]<br>0x0004000600408000|- rs2_w1_val == 262144<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                       |[0x80000b90]:UKADD32 t6, t5, t4<br> [0x80000b94]:sd t6, 480(gp)<br>    |
|  50|[0x80003520]<br>0xFFF9FFFFFFFFFFFF|- rs2_w1_val == 131072<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                    |[0x80000bbc]:UKADD32 t6, t5, t4<br> [0x80000bc0]:sd t6, 496(gp)<br>    |
|  51|[0x80003530]<br>0xFE0000FF00050000|- rs2_w0_val == 65536<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                         |[0x80000be8]:UKADD32 t6, t5, t4<br> [0x80000bec]:sd t6, 512(gp)<br>    |
|  52|[0x80003540]<br>0xFFFFFC0100804000|- rs2_w0_val == 8388608<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                        |[0x80000c0c]:UKADD32 t6, t5, t4<br> [0x80000c10]:sd t6, 528(gp)<br>    |
|  53|[0x80003550]<br>0x0000040E00402000|- rs2_w1_val == 1024<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                            |[0x80000c30]:UKADD32 t6, t5, t4<br> [0x80000c34]:sd t6, 544(gp)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFF00000113|- rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                      |[0x80000c54]:UKADD32 t6, t5, t4<br> [0x80000c58]:sd t6, 560(gp)<br>    |
|  55|[0x80003570]<br>0xFFFFFFFFFC00007F|- rs2_w0_val == 4227858431<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                       |[0x80000c78]:UKADD32 t6, t5, t4<br> [0x80000c7c]:sd t6, 576(gp)<br>    |
|  56|[0x80003580]<br>0xFFFFFF0600000049|- rs1_w1_val == 4294967039<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                        |[0x80000c9c]:UKADD32 t6, t5, t4<br> [0x80000ca0]:sd t6, 592(gp)<br>    |
|  57|[0x80003590]<br>0x4000000140000010|- rs1_w1_val == 1<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                 |[0x80000cc4]:UKADD32 t6, t5, t4<br> [0x80000cc8]:sd t6, 608(gp)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFFFFC3|- rs1_w1_val == 2863311530<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                         |[0x80000cec]:UKADD32 t6, t5, t4<br> [0x80000cf0]:sd t6, 624(gp)<br>    |
|  59|[0x800035b0]<br>0xFFFFFFFAFFFF0001|- rs2_w0_val == 4294901759<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                         |[0x80000d14]:UKADD32 t6, t5, t4<br> [0x80000d18]:sd t6, 640(gp)<br>    |
|  60|[0x800035c0]<br>0x0008000EFFFFFFFF|- rs2_w0_val == 4160749567<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                |[0x80000d3c]:UKADD32 t6, t5, t4<br> [0x80000d40]:sd t6, 656(gp)<br>    |
|  61|[0x800035d0]<br>0x00110000FFFF801F|- rs2_w1_val == 65536<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                                         |[0x80000d6c]:UKADD32 t6, t5, t4<br> [0x80000d70]:sd t6, 672(gp)<br>    |
|  62|[0x800035e0]<br>0xC0007FFF10000080|- rs2_w1_val == 32768<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 3221225471<br>                                                                                                                                                                                                                                       |[0x80000d94]:UKADD32 t6, t5, t4<br> [0x80000d98]:sd t6, 688(gp)<br>    |
|  63|[0x800035f0]<br>0x002040008FFFFFFF|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                    |[0x80000dbc]:UKADD32 t6, t5, t4<br> [0x80000dc0]:sd t6, 704(gp)<br>    |
|  64|[0x80003600]<br>0x0000200B02000011|- rs2_w1_val == 8192<br> - rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                        |[0x80000de0]:UKADD32 t6, t5, t4<br> [0x80000de4]:sd t6, 720(gp)<br>    |
|  65|[0x80003610]<br>0xAAAABAAAFFFE00FF|- rs2_w1_val == 4096<br> - rs2_w0_val == 4294836223<br>                                                                                                                                                                                                                                                                      |[0x80000e0c]:UKADD32 t6, t5, t4<br> [0x80000e10]:sd t6, 736(gp)<br>    |
|  66|[0x80003620]<br>0x00200800FFFFFC0E|- rs2_w1_val == 2048<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                                                                                                                                      |[0x80000e34]:UKADD32 t6, t5, t4<br> [0x80000e38]:sd t6, 752(gp)<br>    |
|  67|[0x80003630]<br>0xFF8001FF0000001C|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                      |[0x80000e5c]:UKADD32 t6, t5, t4<br> [0x80000e60]:sd t6, 768(gp)<br>    |
|  68|[0x80003640]<br>0x0000010EFFF0FFFF|- rs2_w1_val == 256<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                       |[0x80000e84]:UKADD32 t6, t5, t4<br> [0x80000e88]:sd t6, 784(gp)<br>    |
|  69|[0x80003650]<br>0x000000850000000A|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                      |[0x80000ea8]:UKADD32 t6, t5, t4<br> [0x80000eac]:sd t6, 800(gp)<br>    |
|  70|[0x80003660]<br>0xF000001FFFFFC001|- rs2_w1_val == 32<br> - rs1_w1_val == 4026531839<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                         |[0x80000ed4]:UKADD32 t6, t5, t4<br> [0x80000ed8]:sd t6, 816(gp)<br>    |
|  71|[0x80003670]<br>0x00000030FFF80012|- rs2_w1_val == 16<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                                                 |[0x80000efc]:UKADD32 t6, t5, t4<br> [0x80000f00]:sd t6, 832(gp)<br>    |
|  72|[0x80003680]<br>0xFFC0000708000000|- rs2_w1_val == 8<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 4290772991<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                               |[0x80000f1c]:UKADD32 t6, t5, t4<br> [0x80000f20]:sd t6, 848(gp)<br>    |
|  73|[0x80003690]<br>0xFFFFFFF3FFFFF80F|- rs2_w1_val == 4<br> - rs2_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                         |[0x80000f44]:UKADD32 t6, t5, t4<br> [0x80000f48]:sd t6, 864(gp)<br>    |
|  74|[0x800036a0]<br>0xF80000010000080E|- rs2_w1_val == 2<br> - rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                                               |[0x80000f70]:UKADD32 t6, t5, t4<br> [0x80000f74]:sd t6, 880(gp)<br>    |
|  75|[0x800036b0]<br>0x00000101FE0FFFFF|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                        |[0x80000f98]:UKADD32 t6, t5, t4<br> [0x80000f9c]:sd t6, 896(gp)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFF00048000|- rs2_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                                               |[0x80000fc4]:UKADD32 t6, t5, t4<br> [0x80000fc8]:sd t6, 912(gp)<br>    |
|  77|[0x800036d0]<br>0xFFFFFDFFFFFFF000|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                               |[0x80000fec]:UKADD32 t6, t5, t4<br> [0x80000ff0]:sd t6, 928(gp)<br>    |
|  78|[0x800036e0]<br>0x0000000AFFFFFFFF|- rs2_w0_val == 1431655765<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                |[0x80001018]:UKADD32 t6, t5, t4<br> [0x8000101c]:sd t6, 944(gp)<br>    |
|  79|[0x800036f0]<br>0x0004000B8000FFFF|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                               |[0x80001040]:UKADD32 t6, t5, t4<br> [0x80001044]:sd t6, 960(gp)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4026531839<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                 |[0x8000105c]:UKADD32 t6, t5, t4<br> [0x80001060]:sd t6, 976(gp)<br>    |
|  81|[0x80003710]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4278190079<br> - rs1_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                |[0x80001088]:UKADD32 t6, t5, t4<br> [0x8000108c]:sd t6, 992(gp)<br>    |
|  82|[0x80003720]<br>0xFFFFFFFFFFCFFFFF|- rs2_w0_val == 4290772991<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                     |[0x800010ac]:UKADD32 t6, t5, t4<br> [0x800010b0]:sd t6, 1008(gp)<br>   |
|  83|[0x80003730]<br>0x0000040502000100|- rs2_w0_val == 256<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                         |[0x800010cc]:UKADD32 t6, t5, t4<br> [0x800010d0]:sd t6, 1024(gp)<br>   |
|  84|[0x80003740]<br>0xFFFFFFFF0000008C|- rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                      |[0x800010f4]:UKADD32 t6, t5, t4<br> [0x800010f8]:sd t6, 1040(gp)<br>   |
|  85|[0x80003750]<br>0xFFFFFFFF00000018|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                       |[0x80001120]:UKADD32 t6, t5, t4<br> [0x80001124]:sd t6, 1056(gp)<br>   |
|  86|[0x80003760]<br>0xFFFFF9FFFE000000|- rs2_w0_val == 1<br> - rs1_w1_val == 4294965247<br>                                                                                                                                                                                                                                                                         |[0x80001148]:UKADD32 t6, t5, t4<br> [0x8000114c]:sd t6, 1072(gp)<br>   |
|  87|[0x80003770]<br>0x04000000FFFFF7FF|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                 |[0x80001174]:UKADD32 t6, t5, t4<br> [0x80001178]:sd t6, 1088(gp)<br>   |
|  88|[0x80003780]<br>0xFFFFFFFFAAAAAAAE|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                               |[0x800011a8]:UKADD32 t6, t5, t4<br> [0x800011ac]:sd t6, 1104(gp)<br>   |
|  89|[0x80003790]<br>0xFE00000A00000111|- rs1_w1_val == 4261412863<br>                                                                                                                                                                                                                                                                                               |[0x800011d0]:UKADD32 t6, t5, t4<br> [0x800011d4]:sd t6, 1120(gp)<br>   |
|  90|[0x800037a0]<br>0xFFE3FFFFFFFFFFFF|- rs2_w0_val == 4294950911<br> - rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                                                                |[0x80001208]:UKADD32 t6, t5, t4<br> [0x8000120c]:sd t6, 1136(gp)<br>   |
|  91|[0x800037b0]<br>0xFFFFFFFF04100000|- rs1_w1_val == 4293918719<br>                                                                                                                                                                                                                                                                                               |[0x80001234]:UKADD32 t6, t5, t4<br> [0x80001238]:sd t6, 1152(gp)<br>   |
|  92|[0x800037c0]<br>0xFFFC000FFFFFFFFF|- rs1_w1_val == 4294705151<br>                                                                                                                                                                                                                                                                                               |[0x8000125c]:UKADD32 t6, t5, t4<br> [0x80001260]:sd t6, 1168(gp)<br>   |
|  93|[0x800037d0]<br>0xFFFFFFFF00000044|- rs1_w1_val == 4294836223<br>                                                                                                                                                                                                                                                                                               |[0x80001288]:UKADD32 t6, t5, t4<br> [0x8000128c]:sd t6, 1184(gp)<br>   |
|  94|[0x800037e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294950911<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                |[0x800012b0]:UKADD32 t6, t5, t4<br> [0x800012b4]:sd t6, 1200(gp)<br>   |
|  95|[0x800037f0]<br>0xFFFFFFFFFE00000F|- rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                                               |[0x800012d8]:UKADD32 t6, t5, t4<br> [0x800012dc]:sd t6, 1216(gp)<br>   |
|  96|[0x80003800]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294966271<br>                                                                                                                                                                                                                                                                                               |[0x80001300]:UKADD32 t6, t5, t4<br> [0x80001304]:sd t6, 1232(gp)<br>   |
|  97|[0x80003810]<br>0xFFFFFF88FFFFFFFF|- rs1_w1_val == 4294967167<br>                                                                                                                                                                                                                                                                                               |[0x80001324]:UKADD32 t6, t5, t4<br> [0x80001328]:sd t6, 1248(gp)<br>   |
|  98|[0x80003820]<br>0xFFFFFFFFFFFFF3FF|- rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                                               |[0x80001354]:UKADD32 t6, t5, t4<br> [0x80001358]:sd t6, 1264(gp)<br>   |
|  99|[0x80003830]<br>0xFFFFFFFFFFFE3FFF|- rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                                                                                               |[0x8000137c]:UKADD32 t6, t5, t4<br> [0x80001380]:sd t6, 1280(gp)<br>   |
| 100|[0x80003840]<br>0xFFFFFFFFFFFFFFD0|- rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                                                                                               |[0x800013a4]:UKADD32 t6, t5, t4<br> [0x800013a8]:sd t6, 1296(gp)<br>   |
| 101|[0x80003850]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4293918719<br> - rs1_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                |[0x800013d4]:UKADD32 t6, t5, t4<br> [0x800013d8]:sd t6, 1312(gp)<br>   |
| 102|[0x80003860]<br>0xFFFFFFFFFFFFFFFC|- rs1_w1_val == 4294967294<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                |[0x800013f8]:UKADD32 t6, t5, t4<br> [0x800013fc]:sd t6, 1328(gp)<br>   |
| 103|[0x80003870]<br>0xFFFFFFFFFFFFF002|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                               |[0x80001420]:UKADD32 t6, t5, t4<br> [0x80001424]:sd t6, 1344(gp)<br>   |
| 104|[0x80003880]<br>0xFFFFFFFFFFE0000E|- rs1_w1_val == 67108864<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                  |[0x80001450]:UKADD32 t6, t5, t4<br> [0x80001454]:sd t6, 1360(gp)<br>   |
| 105|[0x80003890]<br>0x0000040602000001|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                     |[0x80001474]:UKADD32 t6, t5, t4<br> [0x80001478]:sd t6, 1376(gp)<br>   |
| 106|[0x800038a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 4294967294<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                         |[0x8000149c]:UKADD32 t6, t5, t4<br> [0x800014a0]:sd t6, 1392(gp)<br>   |
| 107|[0x800038b0]<br>0x00000090FFFFFFFF|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                                                       |[0x800014c4]:UKADD32 t6, t5, t4<br> [0x800014c8]:sd t6, 1408(gp)<br>   |
| 108|[0x800038c0]<br>0xFFFFFF00C0000007|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                               |[0x800014e8]:UKADD32 t6, t5, t4<br> [0x800014ec]:sd t6, 1424(gp)<br>   |
| 109|[0x800038d0]<br>0x02000100FFFFFFFF|- rs2_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                               |[0x80001518]:UKADD32 t6, t5, t4<br> [0x8000151c]:sd t6, 1440(gp)<br>   |
| 110|[0x800038e0]<br>0xFFFFFFFFFFF8000F|- rs2_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                                               |[0x80001544]:UKADD32 t6, t5, t4<br> [0x80001548]:sd t6, 1456(gp)<br>   |
| 111|[0x800038f0]<br>0xFFE7FFFFFC000001|- rs1_w1_val == 524288<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                    |[0x80001570]:UKADD32 t6, t5, t4<br> [0x80001574]:sd t6, 1472(gp)<br>   |
| 112|[0x80003900]<br>0xAAAAAAB9FFFFFFFF|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                               |[0x8000159c]:UKADD32 t6, t5, t4<br> [0x800015a0]:sd t6, 1488(gp)<br>   |
| 113|[0x80003910]<br>0x9FFFFFFFFFFFFFFF|- rs2_w0_val == 2147483648<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                                                                                |[0x800015c8]:UKADD32 t6, t5, t4<br> [0x800015cc]:sd t6, 1504(gp)<br>   |
| 114|[0x80003920]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                               |[0x800015f0]:UKADD32 t6, t5, t4<br> [0x800015f4]:sd t6, 1520(gp)<br>   |
| 115|[0x80003930]<br>0x60000000FFFFFFEE|- rs2_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                               |[0x80001618]:UKADD32 t6, t5, t4<br> [0x8000161c]:sd t6, 1536(gp)<br>   |
| 116|[0x80003940]<br>0x8000007FFFFFFFFF|- rs2_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                               |[0x80001640]:UKADD32 t6, t5, t4<br> [0x80001644]:sd t6, 1552(gp)<br>   |
| 117|[0x80003950]<br>0x00020001FFFFFFFF|- rs2_w0_val == 4294967287<br>                                                                                                                                                                                                                                                                                               |[0x80001664]:UKADD32 t6, t5, t4<br> [0x80001668]:sd t6, 1568(gp)<br>   |
| 118|[0x80003960]<br>0xFFE00008FFFFFFFF|- rs2_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                               |[0x80001688]:UKADD32 t6, t5, t4<br> [0x8000168c]:sd t6, 1584(gp)<br>   |
| 119|[0x80003970]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                               |[0x800016ac]:UKADD32 t6, t5, t4<br> [0x800016b0]:sd t6, 1600(gp)<br>   |
| 120|[0x80003980]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                                               |[0x800016d0]:UKADD32 t6, t5, t4<br> [0x800016d4]:sd t6, 1616(gp)<br>   |
| 121|[0x80003990]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                               |[0x800016f4]:UKADD32 t6, t5, t4<br> [0x800016f8]:sd t6, 1632(gp)<br>   |
| 122|[0x800039a0]<br>0x00180000FFFFFFFF|- rs2_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                |[0x80001724]:UKADD32 t6, t5, t4<br> [0x80001728]:sd t6, 1648(gp)<br>   |
| 123|[0x800039b0]<br>0x0000001EFFFFFFFF|- rs2_w0_val == 8192<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                      |[0x80001748]:UKADD32 t6, t5, t4<br> [0x8000174c]:sd t6, 1664(gp)<br>   |
| 124|[0x800039c0]<br>0xFFFFFFFFABAAAAAA|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                 |[0x80001764]:UKADD32 t6, t5, t4<br> [0x80001768]:sd t6, 1680(gp)<br>   |
| 125|[0x800039d0]<br>0xFFFFFFFF21000000|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                |[0x80001788]:UKADD32 t6, t5, t4<br> [0x8000178c]:sd t6, 1696(gp)<br>   |
| 126|[0x800039e0]<br>0xFFFC000900080011|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                   |[0x800017b0]:UKADD32 t6, t5, t4<br> [0x800017b4]:sd t6, 1712(gp)<br>   |
| 127|[0x800039f0]<br>0x0000002200040005|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                   |[0x800017d4]:UKADD32 t6, t5, t4<br> [0x800017d8]:sd t6, 1728(gp)<br>   |
| 128|[0x80003a00]<br>0xEFFFFFFFFFFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                 |[0x80001808]:UKADD32 t6, t5, t4<br> [0x8000180c]:sd t6, 1744(gp)<br>   |
| 129|[0x80003a10]<br>0x0000001901000000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                  |[0x8000182c]:UKADD32 t6, t5, t4<br> [0x80001830]:sd t6, 1760(gp)<br>   |
| 130|[0x80003a20]<br>0xFFFFFFFF00080000|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                   |[0x8000184c]:UKADD32 t6, t5, t4<br> [0x80001850]:sd t6, 1776(gp)<br>   |
| 131|[0x80003a30]<br>0xFFFFFFFFBFFFFFFF|- rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                        |[0x8000186c]:UKADD32 t6, t5, t4<br> [0x80001870]:sd t6, 1792(gp)<br>   |
