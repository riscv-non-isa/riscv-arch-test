
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a00')]      |
| SIG_REGION                | [('0x80003210', '0x80003ab0', '276 dwords')]      |
| COV_LABELS                | ukcras32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukcras32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 276      |
| STAT1                     | 136      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 138     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015f0]:UKCRAS32 t6, t5, t4
      [0x800015f4]:sd t6, 1520(tp)
 -- Signature Address: 0x80003910 Data: 0x0020000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 268435456
      - rs2_w0_val == 2097152
      - rs1_w1_val == 0
      - rs1_w0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019ec]:UKCRAS32 t6, t5, t4
      [0x800019f0]:sd t6, 1920(tp)
 -- Signature Address: 0x80003aa0 Data: 0xFFFFFFFF00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukcras32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294836223
      - rs2_w0_val == 32768
      - rs1_w1_val == 4294965247
      - rs1_w0_val == 524288






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukcras32', 'rs1 : x4', 'rs2 : x4', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 1', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800003bc]:UKCRAS32 t0, tp, tp
	-[0x800003c0]:sd t0, 0(a2)
Current Store : [0x800003c4] : sd tp, 8(a2) -- Store: [0x80003218]:0x0000001200000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs2_w1_val == 2147483648', 'rs2_w0_val == 32', 'rs1_w1_val == 2147483648', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800003e4]:UKCRAS32 s11, s11, s11
	-[0x800003e8]:sd s11, 16(a2)
Current Store : [0x800003ec] : sd s11, 24(a2) -- Store: [0x80003228]:0x8000002000000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x19', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == 2097152', 'rs1_w1_val == 2048', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000040c]:UKCRAS32 a4, s2, s3
	-[0x80000410]:sd a4, 32(a2)
Current Store : [0x80000414] : sd s2, 40(a2) -- Store: [0x80003238]:0x0000080000200000




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x23', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 4278190079', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000444]:UKCRAS32 s7, s7, s9
	-[0x80000448]:sd s7, 48(a2)
Current Store : [0x8000044c] : sd s7, 56(a2) -- Store: [0x80003248]:0xFFFFFFFF55535555




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs1_w1_val == 1048576', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000478]:UKCRAS32 s10, s8, s10
	-[0x8000047c]:sd s10, 64(a2)
Current Store : [0x80000480] : sd s8, 72(a2) -- Store: [0x80003258]:0x00100000FFFFF7FF




Last Coverpoint : ['rs1 : x25', 'rs2 : x11', 'rd : x4', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x8000049c]:UKCRAS32 tp, s9, a1
	-[0x800004a0]:sd tp, 80(a2)
Current Store : [0x800004a4] : sd s9, 88(a2) -- Store: [0x80003268]:0x000000060000000D




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x15', 'rs2_w1_val == 3221225471', 'rs1_w1_val == 4294959103', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800004c4]:UKCRAS32 a5, t2, s1
	-[0x800004c8]:sd a5, 96(a2)
Current Store : [0x800004cc] : sd t2, 104(a2) -- Store: [0x80003278]:0xFFFFDFFF01000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x11', 'rs1_w0_val == 0', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4294967295', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800004f0]:UKCRAS32 a1, zero, s5
	-[0x800004f4]:sd a1, 112(a2)
Current Store : [0x800004f8] : sd zero, 120(a2) -- Store: [0x80003288]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x18', 'rs2_w1_val == 4026531839', 'rs1_w1_val == 4278190079']
Last Code Sequence : 
	-[0x8000051c]:UKCRAS32 s2, gp, a6
	-[0x80000520]:sd s2, 128(a2)
Current Store : [0x80000524] : sd gp, 136(a2) -- Store: [0x80003298]:0xFEFFFFFF00000009




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x19', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x80000554]:UKCRAS32 s3, a1, a0
	-[0x80000558]:sd s3, 144(a2)
Current Store : [0x8000055c] : sd a1, 152(a2) -- Store: [0x800032a8]:0xFFFFF7FF00000007




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x30', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 4293918719', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000058c]:UKCRAS32 t5, t3, sp
	-[0x80000590]:sd t5, 160(a2)
Current Store : [0x80000594] : sd t3, 168(a2) -- Store: [0x800032b8]:0xAAAAAAAA7FFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x8', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 33554432', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x800005b4]:UKCRAS32 fp, s10, t3
	-[0x800005b8]:sd fp, 176(a2)
Current Store : [0x800005bc] : sd s10, 184(a2) -- Store: [0x800032c8]:0xFFFFFFEF00200000




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x7', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800005e0]:UKCRAS32 t2, a5, ra
	-[0x800005e4]:sd t2, 192(a2)
Current Store : [0x800005e8] : sd a5, 200(a2) -- Store: [0x800032d8]:0x00000012FFFFFFFE




Last Coverpoint : ['rs1 : x19', 'rs2 : x7', 'rd : x17', 'rs2_w1_val == 4286578687', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80000610]:UKCRAS32 a7, s3, t2
	-[0x80000614]:sd a7, 208(a2)
Current Store : [0x80000618] : sd s3, 216(a2) -- Store: [0x800032e8]:0xFFFF7FFF0000000C




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rd : x10', 'rs2_w1_val == 4290772991', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000640]:UKCRAS32 a0, a7, s8
	-[0x80000644]:sd a0, 224(a2)
Current Store : [0x80000648] : sd a7, 232(a2) -- Store: [0x800032f8]:0xFFF7FFFF00100000




Last Coverpoint : ['rs1 : x6', 'rs2 : x31', 'rd : x9', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4160749567', 'rs1_w1_val == 2097152', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000066c]:UKCRAS32 s1, t1, t6
	-[0x80000670]:sd s1, 240(a2)
Current Store : [0x80000674] : sd t1, 248(a2) -- Store: [0x80003308]:0x00200000FFFFFBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x3', 'rs2_w1_val == 4293918719', 'rs2_w0_val == 4294967291', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000694]:UKCRAS32 gp, s6, t1
	-[0x80000698]:sd gp, 256(a2)
Current Store : [0x8000069c] : sd s6, 264(a2) -- Store: [0x80003318]:0x55555555FFFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x22', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x800006c4]:UKCRAS32 s6, t5, fp
	-[0x800006c8]:sd s6, 0(tp)
Current Store : [0x800006cc] : sd t5, 8(tp) -- Store: [0x80003328]:0xFFFFDFFF00000006




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rd : x20', 'rs2_w1_val == 4294705151', 'rs1_w1_val == 4294836223']
Last Code Sequence : 
	-[0x800006f0]:UKCRAS32 s4, s1, a7
	-[0x800006f4]:sd s4, 16(tp)
Current Store : [0x800006f8] : sd s1, 24(tp) -- Store: [0x80003338]:0xFFFDFFFF00000009




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x31', 'rs2_w1_val == 0', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000071c]:UKCRAS32 t6, s4, zero
	-[0x80000720]:sd t6, 32(tp)
Current Store : [0x80000724] : sd s4, 40(tp) -- Store: [0x80003348]:0xFFFFF7FF00080000




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x13', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 128', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000744]:UKCRAS32 a3, t6, t5
	-[0x80000748]:sd a3, 48(tp)
Current Store : [0x8000074c] : sd t6, 56(tp) -- Store: [0x80003358]:0x0002000000000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x29', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 32768', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x8000076c]:UKCRAS32 t4, a6, a4
	-[0x80000770]:sd t4, 64(tp)
Current Store : [0x80000774] : sd a6, 72(tp) -- Store: [0x80003368]:0x00008000FFFFFFF7




Last Coverpoint : ['rs1 : x14', 'rs2 : x12', 'rd : x21', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 16384', 'rs1_w1_val == 4160749567', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800007a8]:UKCRAS32 s5, a4, a2
	-[0x800007ac]:sd s5, 80(tp)
Current Store : [0x800007b0] : sd a4, 88(tp) -- Store: [0x80003378]:0xF7FFFFFF55555555




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x16', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 4294967263', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800007d4]:UKCRAS32 a6, fp, s6
	-[0x800007d8]:sd a6, 96(tp)
Current Store : [0x800007dc] : sd fp, 104(tp) -- Store: [0x80003388]:0x7FFFFFFF00002000




Last Coverpoint : ['rs1 : x21', 'rs2 : x3', 'rd : x1', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 4294967231', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800007f8]:UKCRAS32 ra, s5, gp
	-[0x800007fc]:sd ra, 112(tp)
Current Store : [0x80000800] : sd s5, 120(tp) -- Store: [0x80003398]:0x0000000100000013




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x2', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 4294966271', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000820]:UKCRAS32 sp, ra, a5
	-[0x80000824]:sd sp, 128(tp)
Current Store : [0x80000828] : sd ra, 136(tp) -- Store: [0x800033a8]:0xFFFFFBFF10000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rd : x28', 'rs2_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80000844]:UKCRAS32 t3, sp, s7
	-[0x80000848]:sd t3, 144(tp)
Current Store : [0x8000084c] : sd sp, 152(tp) -- Store: [0x800033b8]:0x000000067FFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x29', 'rd : x6', 'rs2_w1_val == 4294966783', 'rs2_w0_val == 134217728', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000868]:UKCRAS32 t1, a0, t4
	-[0x8000086c]:sd t1, 160(tp)
Current Store : [0x80000870] : sd a0, 168(tp) -- Store: [0x800033c8]:0x0020000000000010




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rd : x0', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 16', 'rs1_w1_val == 4293918719', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000890]:UKCRAS32 zero, a2, a3
	-[0x80000894]:sd zero, 176(tp)
Current Store : [0x80000898] : sd a2, 184(tp) -- Store: [0x800033d8]:0xFFEFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x25', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 8388608', 'rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x800008bc]:UKCRAS32 s9, t4, s2
	-[0x800008c0]:sd s9, 192(tp)
Current Store : [0x800008c4] : sd t4, 200(tp) -- Store: [0x800033e8]:0xBFFFFFFFFFFDFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x20', 'rd : x12', 'rs2_w1_val == 4294967231', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800008e4]:UKCRAS32 a2, t0, s4
	-[0x800008e8]:sd a2, 208(tp)
Current Store : [0x800008ec] : sd t0, 216(tp) -- Store: [0x800033f8]:0x0000001200010000




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rd : x24', 'rs2_w1_val == 4294967263', 'rs1_w1_val == 134217728', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000908]:UKCRAS32 s8, a3, t0
	-[0x8000090c]:sd s8, 224(tp)
Current Store : [0x80000910] : sd a3, 232(tp) -- Store: [0x80003408]:0x0800000000000002




Last Coverpoint : ['rs2_w1_val == 4294967279', 'rs2_w0_val == 4', 'rs1_w1_val == 64', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000930]:UKCRAS32 t6, t5, t4
	-[0x80000934]:sd t6, 240(tp)
Current Store : [0x80000938] : sd t5, 248(tp) -- Store: [0x80003418]:0x00000040FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80000954]:UKCRAS32 t6, t5, t4
	-[0x80000958]:sd t6, 256(tp)
Current Store : [0x8000095c] : sd t5, 264(tp) -- Store: [0x80003428]:0x0000000B00002000




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs1_w1_val == 262144', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000978]:UKCRAS32 t6, t5, t4
	-[0x8000097c]:sd t6, 272(tp)
Current Store : [0x80000980] : sd t5, 280(tp) -- Store: [0x80003438]:0x0004000000000040




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 1073741824', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000998]:UKCRAS32 t6, t5, t4
	-[0x8000099c]:sd t6, 288(tp)
Current Store : [0x800009a0] : sd t5, 296(tp) -- Store: [0x80003448]:0x00000012FFFFFFDF




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 4294967287', 'rs1_w1_val == 512', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800009c0]:UKCRAS32 t6, t5, t4
	-[0x800009c4]:sd t6, 304(tp)
Current Store : [0x800009c8] : sd t5, 312(tp) -- Store: [0x80003458]:0x00000200EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800009f0]:UKCRAS32 t6, t5, t4
	-[0x800009f4]:sd t6, 320(tp)
Current Store : [0x800009f8] : sd t5, 328(tp) -- Store: [0x80003468]:0x00040000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80000a18]:UKCRAS32 t6, t5, t4
	-[0x80000a1c]:sd t6, 336(tp)
Current Store : [0x80000a20] : sd t5, 344(tp) -- Store: [0x80003478]:0xFFFFFFFE00000000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 4', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000a48]:UKCRAS32 t6, t5, t4
	-[0x80000a4c]:sd t6, 352(tp)
Current Store : [0x80000a50] : sd t5, 360(tp) -- Store: [0x80003488]:0x00000004FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000a70]:UKCRAS32 t6, t5, t4
	-[0x80000a74]:sd t6, 368(tp)
Current Store : [0x80000a78] : sd t5, 376(tp) -- Store: [0x80003498]:0x00000012FFFFBFFF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 4227858431', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000aa4]:UKCRAS32 t6, t5, t4
	-[0x80000aa8]:sd t6, 384(tp)
Current Store : [0x80000aac] : sd t5, 392(tp) -- Store: [0x800034a8]:0xFBFFFFFFFDFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 16384', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000ad4]:UKCRAS32 t6, t5, t4
	-[0x80000ad8]:sd t6, 400(tp)
Current Store : [0x80000adc] : sd t5, 408(tp) -- Store: [0x800034b8]:0x0000400000000008




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000afc]:UKCRAS32 t6, t5, t4
	-[0x80000b00]:sd t6, 416(tp)
Current Store : [0x80000b04] : sd t5, 424(tp) -- Store: [0x800034c8]:0x00000040EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000b2c]:UKCRAS32 t6, t5, t4
	-[0x80000b30]:sd t6, 432(tp)
Current Store : [0x80000b34] : sd t5, 440(tp) -- Store: [0x800034d8]:0xFFFFFFEFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000b54]:UKCRAS32 t6, t5, t4
	-[0x80000b58]:sd t6, 448(tp)
Current Store : [0x80000b5c] : sd t5, 456(tp) -- Store: [0x800034e8]:0x80000000FFFFFFEF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 1048576', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000b7c]:UKCRAS32 t6, t5, t4
	-[0x80000b80]:sd t6, 464(tp)
Current Store : [0x80000b84] : sd t5, 472(tp) -- Store: [0x800034f8]:0x000001000000000F




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000ba8]:UKCRAS32 t6, t5, t4
	-[0x80000bac]:sd t6, 480(tp)
Current Store : [0x80000bb0] : sd t5, 488(tp) -- Store: [0x80003508]:0xFFEFFFFF00040000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 4294967293', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000bd0]:UKCRAS32 t6, t5, t4
	-[0x80000bd4]:sd t6, 496(tp)
Current Store : [0x80000bd8] : sd t5, 504(tp) -- Store: [0x80003518]:0xFFFFFFFD00001000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80000bfc]:UKCRAS32 t6, t5, t4
	-[0x80000c00]:sd t6, 512(tp)
Current Store : [0x80000c04] : sd t5, 520(tp) -- Store: [0x80003528]:0xFFDFFFFFFFEFFFFF




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c28]:UKCRAS32 t6, t5, t4
	-[0x80000c2c]:sd t6, 528(tp)
Current Store : [0x80000c30] : sd t5, 536(tp) -- Store: [0x80003538]:0x0000010000020000




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c58]:UKCRAS32 t6, t5, t4
	-[0x80000c5c]:sd t6, 544(tp)
Current Store : [0x80000c60] : sd t5, 552(tp) -- Store: [0x80003548]:0x0080000000008000




Last Coverpoint : ['rs1_w1_val == 67108864', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c80]:UKCRAS32 t6, t5, t4
	-[0x80000c84]:sd t6, 560(tp)
Current Store : [0x80000c88] : sd t5, 568(tp) -- Store: [0x80003558]:0x0400000000004000




Last Coverpoint : ['rs1_w1_val == 4294705151', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000cb4]:UKCRAS32 t6, t5, t4
	-[0x80000cb8]:sd t6, 576(tp)
Current Store : [0x80000cbc] : sd t5, 584(tp) -- Store: [0x80003568]:0xFFFBFFFF00000800




Last Coverpoint : ['rs1_w1_val == 1073741824', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cd8]:UKCRAS32 t6, t5, t4
	-[0x80000cdc]:sd t6, 592(tp)
Current Store : [0x80000ce0] : sd t5, 600(tp) -- Store: [0x80003578]:0x4000000000000400




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d04]:UKCRAS32 t6, t5, t4
	-[0x80000d08]:sd t6, 608(tp)
Current Store : [0x80000d0c] : sd t5, 616(tp) -- Store: [0x80003588]:0x5555555500000200




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 33554432', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d28]:UKCRAS32 t6, t5, t4
	-[0x80000d2c]:sd t6, 624(tp)
Current Store : [0x80000d30] : sd t5, 632(tp) -- Store: [0x80003598]:0x0200000000000100




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d54]:UKCRAS32 t6, t5, t4
	-[0x80000d58]:sd t6, 640(tp)
Current Store : [0x80000d5c] : sd t5, 648(tp) -- Store: [0x800035a8]:0x0800000000000080




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000d7c]:UKCRAS32 t6, t5, t4
	-[0x80000d80]:sd t6, 656(tp)
Current Store : [0x80000d84] : sd t5, 664(tp) -- Store: [0x800035b8]:0xFEFFFFFF00000020




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000db0]:UKCRAS32 t6, t5, t4
	-[0x80000db4]:sd t6, 672(tp)
Current Store : [0x80000db8] : sd t5, 680(tp) -- Store: [0x800035c8]:0xAAAAAAAA00000004




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000dd4]:UKCRAS32 t6, t5, t4
	-[0x80000dd8]:sd t6, 688(tp)
Current Store : [0x80000ddc] : sd t5, 696(tp) -- Store: [0x800035d8]:0x000000120000000C




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 524288', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000e08]:UKCRAS32 t6, t5, t4
	-[0x80000e0c]:sd t6, 704(tp)
Current Store : [0x80000e10] : sd t5, 712(tp) -- Store: [0x800035e8]:0x00080000FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000e2c]:UKCRAS32 t6, t5, t4
	-[0x80000e30]:sd t6, 720(tp)
Current Store : [0x80000e34] : sd t5, 728(tp) -- Store: [0x800035f8]:0x0004000000000400




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000e5c]:UKCRAS32 t6, t5, t4
	-[0x80000e60]:sd t6, 736(tp)
Current Store : [0x80000e64] : sd t5, 744(tp) -- Store: [0x80003608]:0xAAAAAAAAFFDFFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000e8c]:UKCRAS32 t6, t5, t4
	-[0x80000e90]:sd t6, 752(tp)
Current Store : [0x80000e94] : sd t5, 760(tp) -- Store: [0x80003618]:0x0000000B00100000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000eb0]:UKCRAS32 t6, t5, t4
	-[0x80000eb4]:sd t6, 768(tp)
Current Store : [0x80000eb8] : sd t5, 776(tp) -- Store: [0x80003628]:0x010000000000000D




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000edc]:UKCRAS32 t6, t5, t4
	-[0x80000ee0]:sd t6, 784(tp)
Current Store : [0x80000ee4] : sd t5, 792(tp) -- Store: [0x80003638]:0xFFFEFFFFFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000f04]:UKCRAS32 t6, t5, t4
	-[0x80000f08]:sd t6, 800(tp)
Current Store : [0x80000f0c] : sd t5, 808(tp) -- Store: [0x80003648]:0x0000000DFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000f28]:UKCRAS32 t6, t5, t4
	-[0x80000f2c]:sd t6, 816(tp)
Current Store : [0x80000f30] : sd t5, 824(tp) -- Store: [0x80003658]:0xFFFF7FFF40000000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000f4c]:UKCRAS32 t6, t5, t4
	-[0x80000f50]:sd t6, 832(tp)
Current Store : [0x80000f54] : sd t5, 840(tp) -- Store: [0x80003668]:0x0000000C00000200




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 4294967039']
Last Code Sequence : 
	-[0x80000f6c]:UKCRAS32 t6, t5, t4
	-[0x80000f70]:sd t6, 848(tp)
Current Store : [0x80000f74] : sd t5, 856(tp) -- Store: [0x80003678]:0xFFFFFEFF00000200




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000f90]:UKCRAS32 t6, t5, t4
	-[0x80000f94]:sd t6, 864(tp)
Current Store : [0x80000f98] : sd t5, 872(tp) -- Store: [0x80003688]:0xF7FFFFFF00000001




Last Coverpoint : ['rs2_w1_val == 32']
Last Code Sequence : 
	-[0x80000fb4]:UKCRAS32 t6, t5, t4
	-[0x80000fb8]:sd t6, 880(tp)
Current Store : [0x80000fbc] : sd t5, 888(tp) -- Store: [0x80003698]:0x0000001300001000




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x80000fe4]:UKCRAS32 t6, t5, t4
	-[0x80000fe8]:sd t6, 896(tp)
Current Store : [0x80000fec] : sd t5, 904(tp) -- Store: [0x800036a8]:0xFFEFFFFF00000800




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001010]:UKCRAS32 t6, t5, t4
	-[0x80001014]:sd t6, 912(tp)
Current Store : [0x80001018] : sd t5, 920(tp) -- Store: [0x800036b8]:0xFFFF7FFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80001040]:UKCRAS32 t6, t5, t4
	-[0x80001044]:sd t6, 928(tp)
Current Store : [0x80001048] : sd t5, 936(tp) -- Store: [0x800036c8]:0x00080000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80001068]:UKCRAS32 t6, t5, t4
	-[0x8000106c]:sd t6, 944(tp)
Current Store : [0x80001070] : sd t5, 952(tp) -- Store: [0x800036d8]:0x08000000FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80001088]:UKCRAS32 t6, t5, t4
	-[0x8000108c]:sd t6, 960(tp)
Current Store : [0x80001090] : sd t5, 968(tp) -- Store: [0x800036e8]:0x0200000000000040




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x800010b0]:UKCRAS32 t6, t5, t4
	-[0x800010b4]:sd t6, 976(tp)
Current Store : [0x800010b8] : sd t5, 984(tp) -- Store: [0x800036f8]:0x00800000DFFFFFFF




Last Coverpoint : ['rs2_w0_val == 2863311530', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800010dc]:UKCRAS32 t6, t5, t4
	-[0x800010e0]:sd t6, 992(tp)
Current Store : [0x800010e4] : sd t5, 1000(tp) -- Store: [0x80003708]:0xFBFFFFFF00400000




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001104]:UKCRAS32 t6, t5, t4
	-[0x80001108]:sd t6, 1008(tp)
Current Store : [0x8000110c] : sd t5, 1016(tp) -- Store: [0x80003718]:0x00080000FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 3221225471', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001128]:UKCRAS32 t6, t5, t4
	-[0x8000112c]:sd t6, 1024(tp)
Current Store : [0x80001130] : sd t5, 1032(tp) -- Store: [0x80003728]:0x0000000B20000000




Last Coverpoint : ['rs2_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80001150]:UKCRAS32 t6, t5, t4
	-[0x80001154]:sd t6, 1040(tp)
Current Store : [0x80001158] : sd t5, 1048(tp) -- Store: [0x80003738]:0x0000000FFFFF7FFF




Last Coverpoint : ['rs2_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001178]:UKCRAS32 t6, t5, t4
	-[0x8000117c]:sd t6, 1056(tp)
Current Store : [0x80001180] : sd t5, 1064(tp) -- Store: [0x80003748]:0x0020000000020000




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x8000119c]:UKCRAS32 t6, t5, t4
	-[0x800011a0]:sd t6, 1072(tp)
Current Store : [0x800011a4] : sd t5, 1080(tp) -- Store: [0x80003758]:0x000000120000000C




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x800011cc]:UKCRAS32 t6, t5, t4
	-[0x800011d0]:sd t6, 1088(tp)
Current Store : [0x800011d4] : sd t5, 1096(tp) -- Store: [0x80003768]:0xFFFDFFFF00010000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800011f8]:UKCRAS32 t6, t5, t4
	-[0x800011fc]:sd t6, 1104(tp)
Current Store : [0x80001200] : sd t5, 1112(tp) -- Store: [0x80003778]:0x00040000FFEFFFFF




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80001220]:UKCRAS32 t6, t5, t4
	-[0x80001224]:sd t6, 1120(tp)
Current Store : [0x80001228] : sd t5, 1128(tp) -- Store: [0x80003788]:0x0000800000000006




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x80001248]:UKCRAS32 t6, t5, t4
	-[0x8000124c]:sd t6, 1136(tp)
Current Store : [0x80001250] : sd t5, 1144(tp) -- Store: [0x80003798]:0xFFFFFFFBFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80001270]:UKCRAS32 t6, t5, t4
	-[0x80001274]:sd t6, 1152(tp)
Current Store : [0x80001278] : sd t5, 1160(tp) -- Store: [0x800037a8]:0xEFFFFFFF10000000




Last Coverpoint : ['rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80001294]:UKCRAS32 t6, t5, t4
	-[0x80001298]:sd t6, 1168(tp)
Current Store : [0x8000129c] : sd t5, 1176(tp) -- Store: [0x800037b8]:0xFF7FFFFF40000000




Last Coverpoint : ['rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x800012c0]:UKCRAS32 t6, t5, t4
	-[0x800012c4]:sd t6, 1184(tp)
Current Store : [0x800012c8] : sd t5, 1192(tp) -- Store: [0x800037c8]:0xFFBFFFFF00000009




Last Coverpoint : ['rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x800012e8]:UKCRAS32 t6, t5, t4
	-[0x800012ec]:sd t6, 1200(tp)
Current Store : [0x800012f0] : sd t5, 1208(tp) -- Store: [0x800037d8]:0xFFFFBFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294963199', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x8000131c]:UKCRAS32 t6, t5, t4
	-[0x80001320]:sd t6, 1216(tp)
Current Store : [0x80001324] : sd t5, 1224(tp) -- Store: [0x800037e8]:0xFFFFEFFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 4294443007', 'rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x80001344]:UKCRAS32 t6, t5, t4
	-[0x80001348]:sd t6, 1232(tp)
Current Store : [0x8000134c] : sd t5, 1240(tp) -- Store: [0x800037f8]:0xFFFFFDFFFFFFFFDF




Last Coverpoint : ['rs1_w1_val == 4294967167']
Last Code Sequence : 
	-[0x8000136c]:UKCRAS32 t6, t5, t4
	-[0x80001370]:sd t6, 1248(tp)
Current Store : [0x80001374] : sd t5, 1256(tp) -- Store: [0x80003808]:0xFFFFFF7F00000006




Last Coverpoint : ['rs2_w0_val == 4294836223', 'rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x80001394]:UKCRAS32 t6, t5, t4
	-[0x80001398]:sd t6, 1264(tp)
Current Store : [0x8000139c] : sd t5, 1272(tp) -- Store: [0x80003818]:0xFFFFFFBF00000013




Last Coverpoint : ['rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x800013b8]:UKCRAS32 t6, t5, t4
	-[0x800013bc]:sd t6, 1280(tp)
Current Store : [0x800013c0] : sd t5, 1288(tp) -- Store: [0x80003828]:0xFFFFFFDFFFFFFEFF




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x800013dc]:UKCRAS32 t6, t5, t4
	-[0x800013e0]:sd t6, 1296(tp)
Current Store : [0x800013e4] : sd t5, 1304(tp) -- Store: [0x80003838]:0xFFFFFFF700020000




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001410]:UKCRAS32 t6, t5, t4
	-[0x80001414]:sd t6, 1312(tp)
Current Store : [0x80001418] : sd t5, 1320(tp) -- Store: [0x80003848]:0x20000000FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001434]:UKCRAS32 t6, t5, t4
	-[0x80001438]:sd t6, 1328(tp)
Current Store : [0x8000143c] : sd t5, 1336(tp) -- Store: [0x80003858]:0x1000000000000002




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001458]:UKCRAS32 t6, t5, t4
	-[0x8000145c]:sd t6, 1344(tp)
Current Store : [0x80001460] : sd t5, 1352(tp) -- Store: [0x80003868]:0x004000000000000D




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001484]:UKCRAS32 t6, t5, t4
	-[0x80001488]:sd t6, 1360(tp)
Current Store : [0x8000148c] : sd t5, 1368(tp) -- Store: [0x80003878]:0x00010000FFFFFFEF




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014a8]:UKCRAS32 t6, t5, t4
	-[0x800014ac]:sd t6, 1376(tp)
Current Store : [0x800014b0] : sd t5, 1384(tp) -- Store: [0x80003888]:0x0000200000000000




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800014d0]:UKCRAS32 t6, t5, t4
	-[0x800014d4]:sd t6, 1392(tp)
Current Store : [0x800014d8] : sd t5, 1400(tp) -- Store: [0x80003898]:0x0000100000000006




Last Coverpoint : ['rs2_w1_val == 4294836223', 'rs1_w1_val == 1024', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800014f8]:UKCRAS32 t6, t5, t4
	-[0x800014fc]:sd t6, 1408(tp)
Current Store : [0x80001500] : sd t5, 1416(tp) -- Store: [0x800038a8]:0x00000400FFFBFFFF




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000151c]:UKCRAS32 t6, t5, t4
	-[0x80001520]:sd t6, 1424(tp)
Current Store : [0x80001524] : sd t5, 1432(tp) -- Store: [0x800038b8]:0x0000008000004000




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x8000153c]:UKCRAS32 t6, t5, t4
	-[0x80001540]:sd t6, 1440(tp)
Current Store : [0x80001544] : sd t5, 1448(tp) -- Store: [0x800038c8]:0x0000002000000000




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80001568]:UKCRAS32 t6, t5, t4
	-[0x8000156c]:sd t6, 1456(tp)
Current Store : [0x80001570] : sd t5, 1464(tp) -- Store: [0x800038d8]:0x00000010FFBFFFFF




Last Coverpoint : ['rs1_w1_val == 8', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001588]:UKCRAS32 t6, t5, t4
	-[0x8000158c]:sd t6, 1472(tp)
Current Store : [0x80001590] : sd t5, 1480(tp) -- Store: [0x800038e8]:0x0000000808000000




Last Coverpoint : ['rs2_w0_val == 4294967167', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800015ac]:UKCRAS32 t6, t5, t4
	-[0x800015b0]:sd t6, 1488(tp)
Current Store : [0x800015b4] : sd t5, 1496(tp) -- Store: [0x800038f8]:0x0000000200002000




Last Coverpoint : ['rs1_w1_val == 4294967295']
Last Code Sequence : 
	-[0x800015d0]:UKCRAS32 t6, t5, t4
	-[0x800015d4]:sd t6, 1504(tp)
Current Store : [0x800015d8] : sd t5, 1512(tp) -- Store: [0x80003908]:0xFFFFFFFFFF7FFFFF




Last Coverpoint : ['opcode : ukcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 268435456', 'rs2_w0_val == 2097152', 'rs1_w1_val == 0', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800015f0]:UKCRAS32 t6, t5, t4
	-[0x800015f4]:sd t6, 1520(tp)
Current Store : [0x800015f8] : sd t5, 1528(tp) -- Store: [0x80003918]:0x0000000000000004




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80001614]:UKCRAS32 t6, t5, t4
	-[0x80001618]:sd t6, 1536(tp)
Current Store : [0x8000161c] : sd t5, 1544(tp) -- Store: [0x80003928]:0x04000000BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80001634]:UKCRAS32 t6, t5, t4
	-[0x80001638]:sd t6, 1552(tp)
Current Store : [0x8000163c] : sd t5, 1560(tp) -- Store: [0x80003938]:0xFFFFFFFFFFFFFEFF




Last Coverpoint : ['rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001660]:UKCRAS32 t6, t5, t4
	-[0x80001664]:sd t6, 1568(tp)
Current Store : [0x80001668] : sd t5, 1576(tp) -- Store: [0x80003948]:0xFFFFDFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80001690]:UKCRAS32 t6, t5, t4
	-[0x80001694]:sd t6, 1584(tp)
Current Store : [0x80001698] : sd t5, 1592(tp) -- Store: [0x80003958]:0x00000080FEFFFFFF




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800016bc]:UKCRAS32 t6, t5, t4
	-[0x800016c0]:sd t6, 1600(tp)
Current Store : [0x800016c4] : sd t5, 1608(tp) -- Store: [0x80003968]:0xFFFFFFEF00000100




Last Coverpoint : ['rs2_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800016e4]:UKCRAS32 t6, t5, t4
	-[0x800016e8]:sd t6, 1616(tp)
Current Store : [0x800016ec] : sd t5, 1624(tp) -- Store: [0x80003978]:0xFFFFF7FFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80001718]:UKCRAS32 t6, t5, t4
	-[0x8000171c]:sd t6, 1632(tp)
Current Store : [0x80001720] : sd t5, 1640(tp) -- Store: [0x80003988]:0x01000000FFF7FFFF




Last Coverpoint : ['rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000173c]:UKCRAS32 t6, t5, t4
	-[0x80001740]:sd t6, 1648(tp)
Current Store : [0x80001744] : sd t5, 1656(tp) -- Store: [0x80003998]:0x0000000300400000




Last Coverpoint : ['rs2_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80001764]:UKCRAS32 t6, t5, t4
	-[0x80001768]:sd t6, 1664(tp)
Current Store : [0x8000176c] : sd t5, 1672(tp) -- Store: [0x800039a8]:0xFFFFFFDFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967279', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80001790]:UKCRAS32 t6, t5, t4
	-[0x80001794]:sd t6, 1680(tp)
Current Store : [0x80001798] : sd t5, 1688(tp) -- Store: [0x800039b8]:0xF7FFFFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800017bc]:UKCRAS32 t6, t5, t4
	-[0x800017c0]:sd t6, 1696(tp)
Current Store : [0x800017c4] : sd t5, 1704(tp) -- Store: [0x800039c8]:0xFFFFEFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800017e4]:UKCRAS32 t6, t5, t4
	-[0x800017e8]:sd t6, 1712(tp)
Current Store : [0x800017ec] : sd t5, 1720(tp) -- Store: [0x800039d8]:0x0000000CFFEFFFFF




Last Coverpoint : ['rs2_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80001804]:UKCRAS32 t6, t5, t4
	-[0x80001808]:sd t6, 1728(tp)
Current Store : [0x8000180c] : sd t5, 1736(tp) -- Store: [0x800039e8]:0x00000010DFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001828]:UKCRAS32 t6, t5, t4
	-[0x8000182c]:sd t6, 1744(tp)
Current Store : [0x80001830] : sd t5, 1752(tp) -- Store: [0x800039f8]:0xBFFFFFFFFFFFFF7F




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80001854]:UKCRAS32 t6, t5, t4
	-[0x80001858]:sd t6, 1760(tp)
Current Store : [0x8000185c] : sd t5, 1768(tp) -- Store: [0x80003a08]:0x01000000FFFFFFBF




Last Coverpoint : ['rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001880]:UKCRAS32 t6, t5, t4
	-[0x80001884]:sd t6, 1776(tp)
Current Store : [0x80001888] : sd t5, 1784(tp) -- Store: [0x80003a18]:0x00008000FFFFFFFB




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800018ac]:UKCRAS32 t6, t5, t4
	-[0x800018b0]:sd t6, 1792(tp)
Current Store : [0x800018b4] : sd t5, 1800(tp) -- Store: [0x80003a28]:0x00040000FFFFFFFD




Last Coverpoint : ['rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800018d0]:UKCRAS32 t6, t5, t4
	-[0x800018d4]:sd t6, 1808(tp)
Current Store : [0x800018d8] : sd t5, 1816(tp) -- Store: [0x80003a38]:0x0000001180000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800018f8]:UKCRAS32 t6, t5, t4
	-[0x800018fc]:sd t6, 1824(tp)
Current Store : [0x80001900] : sd t5, 1832(tp) -- Store: [0x80003a48]:0xFDFFFFFF04000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001918]:UKCRAS32 t6, t5, t4
	-[0x8000191c]:sd t6, 1840(tp)
Current Store : [0x80001920] : sd t5, 1848(tp) -- Store: [0x80003a58]:0x0000000202000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80001940]:UKCRAS32 t6, t5, t4
	-[0x80001944]:sd t6, 1856(tp)
Current Store : [0x80001948] : sd t5, 1864(tp) -- Store: [0x80003a68]:0xFFFFFFEFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x8000196c]:UKCRAS32 t6, t5, t4
	-[0x80001970]:sd t6, 1872(tp)
Current Store : [0x80001974] : sd t5, 1880(tp) -- Store: [0x80003a78]:0xFBFFFFFF00000011




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001994]:UKCRAS32 t6, t5, t4
	-[0x80001998]:sd t6, 1888(tp)
Current Store : [0x8000199c] : sd t5, 1896(tp) -- Store: [0x80003a88]:0x8000000000800000




Last Coverpoint : ['rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x800019c0]:UKCRAS32 t6, t5, t4
	-[0x800019c4]:sd t6, 1904(tp)
Current Store : [0x800019c8] : sd t5, 1912(tp) -- Store: [0x80003a98]:0xDFFFFFFF00001000




Last Coverpoint : ['opcode : ukcras32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294836223', 'rs2_w0_val == 32768', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800019ec]:UKCRAS32 t6, t5, t4
	-[0x800019f0]:sd t6, 1920(tp)
Current Store : [0x800019f4] : sd t5, 1928(tp) -- Store: [0x80003aa8]:0xFFFFF7FF00080000





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

|s.no|            signature             |                                                                                                                                   coverpoints                                                                                                                                   |                                  code                                   |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000001300000000|- opcode : ukcras32<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 1<br> - rs1_w0_val == 1<br> |[0x800003bc]:UKCRAS32 t0, tp, tp<br> [0x800003c0]:sd t0, 0(a2)<br>       |
|   2|[0x80003220]<br>0x8000002000000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 2147483648<br> - rs2_w0_val == 32<br> - rs1_w1_val == 2147483648<br> - rs1_w0_val == 32<br>                                                                                                |[0x800003e4]:UKCRAS32 s11, s11, s11<br> [0x800003e8]:sd s11, 16(a2)<br>  |
|   3|[0x80003230]<br>0x0020080000000000|- rs1 : x18<br> - rs2 : x19<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 2097152<br>                               |[0x8000040c]:UKCRAS32 a4, s2, s3<br> [0x80000410]:sd a4, 32(a2)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFF55535555|- rs1 : x23<br> - rs2 : x25<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 4278190079<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4294836223<br>           |[0x80000444]:UKCRAS32 s7, s7, s9<br> [0x80000448]:sd s7, 48(a2)<br>      |
|   5|[0x80003250]<br>0x00100005AAAAA2AA|- rs1 : x24<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4294965247<br>                                                                                                                  |[0x80000478]:UKCRAS32 s10, s8, s10<br> [0x8000047c]:sd s10, 64(a2)<br>   |
|   6|[0x80003260]<br>0xFFFFFFFF00000000|- rs1 : x25<br> - rs2 : x11<br> - rd : x4<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 4294967294<br>                                                                                                                                                                      |[0x8000049c]:UKCRAS32 tp, s9, a1<br> [0x800004a0]:sd tp, 80(a2)<br>      |
|   7|[0x80003270]<br>0xFFFFE01F00000000|- rs1 : x7<br> - rs2 : x9<br> - rd : x15<br> - rs2_w1_val == 3221225471<br> - rs1_w1_val == 4294959103<br> - rs1_w0_val == 16777216<br>                                                                                                                                          |[0x800004c4]:UKCRAS32 a5, t2, s1<br> [0x800004c8]:sd a5, 96(a2)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFF00000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x11<br> - rs1_w0_val == 0<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4294967295<br> - rs1_w1_val == 0<br>                                                                                                                          |[0x800004f0]:UKCRAS32 a1, zero, s5<br> [0x800004f4]:sd a1, 112(a2)<br>   |
|   9|[0x80003290]<br>0xFF00000A00000000|- rs1 : x3<br> - rs2 : x16<br> - rd : x18<br> - rs2_w1_val == 4026531839<br> - rs1_w1_val == 4278190079<br>                                                                                                                                                                      |[0x8000051c]:UKCRAS32 s2, gp, a6<br> [0x80000520]:sd s2, 128(a2)<br>     |
|  10|[0x800032a0]<br>0xFFFFFFFF00000000|- rs1 : x11<br> - rs2 : x10<br> - rd : x19<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 4294965247<br>                                                                                                                                      |[0x80000554]:UKCRAS32 s3, a1, a0<br> [0x80000558]:sd s3, 144(a2)<br>     |
|  11|[0x800032b0]<br>0xFFFFFFFF00000000|- rs1 : x28<br> - rs2 : x2<br> - rd : x30<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4293918719<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 2147483647<br>                                                                                                        |[0x8000058c]:UKCRAS32 t5, t3, sp<br> [0x80000590]:sd t5, 160(a2)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFF00000000|- rs1 : x26<br> - rs2 : x28<br> - rd : x8<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 4294967279<br>                                                                                                                                         |[0x800005b4]:UKCRAS32 fp, s10, t3<br> [0x800005b8]:sd fp, 176(a2)<br>    |
|  13|[0x800032d0]<br>0xFFFF001100FFFFFF|- rs1 : x15<br> - rs2 : x1<br> - rd : x7<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 4294967294<br>                                                                                                                                        |[0x800005e0]:UKCRAS32 t2, a5, ra<br> [0x800005e4]:sd t2, 192(a2)<br>     |
|  14|[0x800032e0]<br>0xFFFFFFFF00000000|- rs1 : x19<br> - rs2 : x7<br> - rd : x17<br> - rs2_w1_val == 4286578687<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                                      |[0x80000610]:UKCRAS32 a7, s3, t2<br> [0x80000614]:sd a7, 208(a2)<br>     |
|  15|[0x800032f0]<br>0xFFF8000500000000|- rs1 : x17<br> - rs2 : x24<br> - rd : x10<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 1048576<br>                                                                                                                                         |[0x80000640]:UKCRAS32 a0, a7, s8<br> [0x80000644]:sd a0, 224(a2)<br>     |
|  16|[0x80003300]<br>0xF81FFFFF001FFC00|- rs1 : x6<br> - rs2 : x31<br> - rd : x9<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4160749567<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4294966271<br>                                                                                                            |[0x8000066c]:UKCRAS32 s1, t1, t6<br> [0x80000670]:sd s1, 240(a2)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFF00100000|- rs1 : x22<br> - rs2 : x6<br> - rd : x3<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 4294967291<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 4294967295<br>                                                                                                         |[0x80000694]:UKCRAS32 gp, s6, t1<br> [0x80000698]:sd gp, 256(a2)<br>     |
|  18|[0x80003320]<br>0xFFFFDFFF00000000|- rs1 : x30<br> - rs2 : x8<br> - rd : x22<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 0<br>                                                                                                                                                                               |[0x800006c4]:UKCRAS32 s6, t5, fp<br> [0x800006c8]:sd s6, 0(tp)<br>       |
|  19|[0x80003330]<br>0xFFFE000B00000000|- rs1 : x9<br> - rs2 : x17<br> - rd : x20<br> - rs2_w1_val == 4294705151<br> - rs1_w1_val == 4294836223<br>                                                                                                                                                                      |[0x800006f0]:UKCRAS32 s4, s1, a7<br> [0x800006f4]:sd s4, 16(tp)<br>      |
|  20|[0x80003340]<br>0xFFFFF7FF00080000|- rs1 : x20<br> - rs2 : x0<br> - rd : x31<br> - rs2_w1_val == 0<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                   |[0x8000071c]:UKCRAS32 t6, s4, zero<br> [0x80000720]:sd t6, 32(tp)<br>    |
|  21|[0x80003350]<br>0x0002008000000000|- rs1 : x31<br> - rs2 : x30<br> - rd : x13<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 128<br> - rs1_w1_val == 131072<br>                                                                                                                                                 |[0x80000744]:UKCRAS32 a3, t6, t5<br> [0x80000748]:sd a3, 48(tp)<br>      |
|  22|[0x80003360]<br>0xFFFFFFFF00007FF8|- rs1 : x16<br> - rs2 : x14<br> - rd : x29<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 4294967287<br>                                                                                                            |[0x8000076c]:UKCRAS32 t4, a6, a4<br> [0x80000770]:sd t4, 64(tp)<br>      |
|  23|[0x80003370]<br>0xF8003FFF00000000|- rs1 : x14<br> - rs2 : x12<br> - rd : x21<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 4160749567<br> - rs1_w0_val == 1431655765<br>                                                                                                            |[0x800007a8]:UKCRAS32 s5, a4, a2<br> [0x800007ac]:sd s5, 80(tp)<br>      |
|  24|[0x80003380]<br>0xFFFFFFFF00000000|- rs1 : x8<br> - rs2 : x22<br> - rd : x16<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 4294967263<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 8192<br>                                                                                                              |[0x800007d4]:UKCRAS32 a6, fp, s6<br> [0x800007d8]:sd a6, 96(tp)<br>      |
|  25|[0x80003390]<br>0xFFFFFFC000000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x1<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4294967231<br> - rs1_w1_val == 1<br>                                                                                                                                                 |[0x800007f8]:UKCRAS32 ra, s5, gp<br> [0x800007fc]:sd ra, 112(tp)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFF00000000|- rs1 : x1<br> - rs2 : x15<br> - rd : x2<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 268435456<br>                                                                                                          |[0x80000820]:UKCRAS32 sp, ra, a5<br> [0x80000824]:sd sp, 128(tp)<br>     |
|  27|[0x800033b0]<br>0x0000001500000000|- rs1 : x2<br> - rs2 : x23<br> - rd : x28<br> - rs2_w1_val == 4294966271<br>                                                                                                                                                                                                     |[0x80000844]:UKCRAS32 t3, sp, s7<br> [0x80000848]:sd t3, 144(tp)<br>     |
|  28|[0x800033c0]<br>0x0820000000000000|- rs1 : x10<br> - rs2 : x29<br> - rd : x6<br> - rs2_w1_val == 4294966783<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 16<br>                                                                                                                                                |[0x80000868]:UKCRAS32 t1, a0, t4<br> [0x8000086c]:sd t1, 160(tp)<br>     |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x13<br> - rd : x0<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 16<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 4160749567<br>                                                                                                                |[0x80000890]:UKCRAS32 zero, a2, a3<br> [0x80000894]:sd zero, 176(tp)<br> |
|  30|[0x800033e0]<br>0xC07FFFFF00000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x25<br> - rs2_w1_val == 4294967167<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 3221225471<br>                                                                                                                                         |[0x800008bc]:UKCRAS32 s9, t4, s2<br> [0x800008c0]:sd s9, 192(tp)<br>     |
|  31|[0x800033f0]<br>0xFFC0001100000000|- rs1 : x5<br> - rs2 : x20<br> - rd : x12<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 65536<br>                                                                                                                                            |[0x800008e4]:UKCRAS32 a2, t0, s4<br> [0x800008e8]:sd a2, 208(tp)<br>     |
|  32|[0x80003400]<br>0x0800001100000000|- rs1 : x13<br> - rs2 : x5<br> - rd : x24<br> - rs2_w1_val == 4294967263<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 2<br>                                                                                                                                                 |[0x80000908]:UKCRAS32 s8, a3, t0<br> [0x8000090c]:sd s8, 224(tp)<br>     |
|  33|[0x80003410]<br>0x0000004400000000|- rs2_w1_val == 4294967279<br> - rs2_w0_val == 4<br> - rs1_w1_val == 64<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                       |[0x80000930]:UKCRAS32 t6, t5, t4<br> [0x80000934]:sd t6, 240(tp)<br>     |
|  34|[0x80003420]<br>0x0000001900000000|- rs2_w1_val == 4294967287<br>                                                                                                                                                                                                                                                   |[0x80000954]:UKCRAS32 t6, t5, t4<br> [0x80000958]:sd t6, 256(tp)<br>     |
|  35|[0x80003430]<br>0x0024000000000000|- rs2_w1_val == 4294967291<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                 |[0x80000978]:UKCRAS32 t6, t5, t4<br> [0x8000097c]:sd t6, 272(tp)<br>     |
|  36|[0x80003440]<br>0x4000001200000000|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                                     |[0x80000998]:UKCRAS32 t6, t5, t4<br> [0x8000099c]:sd t6, 288(tp)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFF00000000|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 4294967287<br> - rs1_w1_val == 512<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                             |[0x800009c0]:UKCRAS32 t6, t5, t4<br> [0x800009c4]:sd t6, 304(tp)<br>     |
|  38|[0x80003460]<br>0xFFE3FFFFBFFFFEFF|- rs2_w1_val == 1073741824<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                    |[0x800009f0]:UKCRAS32 t6, t5, t4<br> [0x800009f4]:sd t6, 320(tp)<br>     |
|  39|[0x80003470]<br>0xFFFFFFFF00000000|- rs2_w1_val == 536870912<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 4294967294<br>                                                                                                                                                                                      |[0x80000a18]:UKCRAS32 t6, t5, t4<br> [0x80000a1c]:sd t6, 336(tp)<br>     |
|  40|[0x80003480]<br>0xFF800003EF7FFFFF|- rs2_w1_val == 268435456<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                |[0x80000a48]:UKCRAS32 t6, t5, t4<br> [0x80000a4c]:sd t6, 352(tp)<br>     |
|  41|[0x80003490]<br>0x0000001DF7FFBFFF|- rs2_w1_val == 134217728<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                     |[0x80000a70]:UKCRAS32 t6, t5, t4<br> [0x80000a74]:sd t6, 368(tp)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFFF9FFFFFF|- rs2_w1_val == 67108864<br> - rs1_w1_val == 4227858431<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                       |[0x80000aa4]:UKCRAS32 t6, t5, t4<br> [0x80000aa8]:sd t6, 384(tp)<br>     |
|  43|[0x800034b0]<br>0xFFF03FFF00000000|- rs2_w1_val == 33554432<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                     |[0x80000ad4]:UKCRAS32 t6, t5, t4<br> [0x80000ad8]:sd t6, 400(tp)<br>     |
|  44|[0x800034c0]<br>0x01000040EEFFFFFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 16777216<br>                                                                                                                                                                                                                        |[0x80000afc]:UKCRAS32 t6, t5, t4<br> [0x80000b00]:sd t6, 416(tp)<br>     |
|  45|[0x800034d0]<br>0xFFFFFFFFFF7FDFFF|- rs2_w1_val == 8388608<br> - rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                       |[0x80000b2c]:UKCRAS32 t6, t5, t4<br> [0x80000b30]:sd t6, 432(tp)<br>     |
|  46|[0x800034e0]<br>0x80000009FFBFFFEF|- rs2_w1_val == 4194304<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                       |[0x80000b54]:UKCRAS32 t6, t5, t4<br> [0x80000b58]:sd t6, 448(tp)<br>     |
|  47|[0x800034f0]<br>0x0010010000000000|- rs2_w1_val == 2097152<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                  |[0x80000b7c]:UKCRAS32 t6, t5, t4<br> [0x80000b80]:sd t6, 464(tp)<br>     |
|  48|[0x80003500]<br>0xFFF0000500000000|- rs2_w1_val == 1048576<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                           |[0x80000ba8]:UKCRAS32 t6, t5, t4<br> [0x80000bac]:sd t6, 480(tp)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFF00000000|- rs2_w1_val == 524288<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                               |[0x80000bd0]:UKCRAS32 t6, t5, t4<br> [0x80000bd4]:sd t6, 496(tp)<br>     |
|  50|[0x80003520]<br>0xFFE0000BFFEBFFFF|- rs2_w1_val == 262144<br> - rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                        |[0x80000bfc]:UKCRAS32 t6, t5, t4<br> [0x80000c00]:sd t6, 512(tp)<br>     |
|  51|[0x80003530]<br>0xFFE000FF00000000|- rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                       |[0x80000c28]:UKCRAS32 t6, t5, t4<br> [0x80000c2c]:sd t6, 528(tp)<br>     |
|  52|[0x80003540]<br>0xFFFFFFFF00000000|- rs1_w1_val == 8388608<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                            |[0x80000c58]:UKCRAS32 t6, t5, t4<br> [0x80000c5c]:sd t6, 544(tp)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFF00000000|- rs1_w1_val == 67108864<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                           |[0x80000c80]:UKCRAS32 t6, t5, t4<br> [0x80000c84]:sd t6, 560(tp)<br>     |
|  54|[0x80003560]<br>0xFFFFFFFF000007F7|- rs1_w1_val == 4294705151<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                          |[0x80000cb4]:UKCRAS32 t6, t5, t4<br> [0x80000cb8]:sd t6, 576(tp)<br>     |
|  55|[0x80003570]<br>0x4000001000000000|- rs1_w1_val == 1073741824<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                          |[0x80000cd8]:UKCRAS32 t6, t5, t4<br> [0x80000cdc]:sd t6, 592(tp)<br>     |
|  56|[0x80003580]<br>0x5555559500000000|- rs2_w0_val == 64<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                   |[0x80000d04]:UKCRAS32 t6, t5, t4<br> [0x80000d08]:sd t6, 608(tp)<br>     |
|  57|[0x80003590]<br>0x02000011000000F0|- rs2_w1_val == 16<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                      |[0x80000d28]:UKCRAS32 t6, t5, t4<br> [0x80000d2c]:sd t6, 624(tp)<br>     |
|  58|[0x800035a0]<br>0x0800100000000000|- rs2_w0_val == 4096<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                 |[0x80000d54]:UKCRAS32 t6, t5, t4<br> [0x80000d58]:sd t6, 640(tp)<br>     |
|  59|[0x800035b0]<br>0xFFFFFFFF00000000|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                    |[0x80000d7c]:UKCRAS32 t6, t5, t4<br> [0x80000d80]:sd t6, 656(tp)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFF00000000|- rs1_w0_val == 4<br>                                                                                                                                                                                                                                                            |[0x80000db0]:UKCRAS32 t6, t5, t4<br> [0x80000db4]:sd t6, 672(tp)<br>     |
|  61|[0x800035d0]<br>0x0000001B00000000|- rs2_w1_val == 131072<br>                                                                                                                                                                                                                                                       |[0x80000dd4]:UKCRAS32 t6, t5, t4<br> [0x80000dd8]:sd t6, 688(tp)<br>     |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFE7FFF|- rs2_w1_val == 65536<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                              |[0x80000e08]:UKCRAS32 t6, t5, t4<br> [0x80000e0c]:sd t6, 704(tp)<br>     |
|  63|[0x800035f0]<br>0x0044000000000000|- rs2_w1_val == 32768<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                            |[0x80000e2c]:UKCRAS32 t6, t5, t4<br> [0x80000e30]:sd t6, 720(tp)<br>     |
|  64|[0x80003600]<br>0xAAAAAAB4FFDFBFFF|- rs2_w1_val == 16384<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                         |[0x80000e5c]:UKCRAS32 t6, t5, t4<br> [0x80000e60]:sd t6, 736(tp)<br>     |
|  65|[0x80003610]<br>0xFFFFF00A000FE000|- rs2_w1_val == 8192<br> - rs2_w0_val == 4294963199<br>                                                                                                                                                                                                                          |[0x80000e8c]:UKCRAS32 t6, t5, t4<br> [0x80000e90]:sd t6, 752(tp)<br>     |
|  66|[0x80003620]<br>0x0100000100000000|- rs2_w1_val == 4096<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                            |[0x80000eb0]:UKCRAS32 t6, t5, t4<br> [0x80000eb4]:sd t6, 768(tp)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFFFFBFF7FF|- rs2_w1_val == 2048<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                           |[0x80000edc]:UKCRAS32 t6, t5, t4<br> [0x80000ee0]:sd t6, 784(tp)<br>     |
|  68|[0x80003640]<br>0x0020000DFFF7FBFF|- rs2_w1_val == 1024<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                          |[0x80000f04]:UKCRAS32 t6, t5, t4<br> [0x80000f08]:sd t6, 800(tp)<br>     |
|  69|[0x80003650]<br>0xFFFF800C3FFFFE00|- rs2_w1_val == 512<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                           |[0x80000f28]:UKCRAS32 t6, t5, t4<br> [0x80000f2c]:sd t6, 816(tp)<br>     |
|  70|[0x80003660]<br>0x0000800C00000100|- rs2_w1_val == 256<br> - rs2_w0_val == 32768<br>                                                                                                                                                                                                                                |[0x80000f4c]:UKCRAS32 t6, t5, t4<br> [0x80000f50]:sd t6, 832(tp)<br>     |
|  71|[0x80003670]<br>0xFFFFFFFF00000180|- rs2_w1_val == 128<br> - rs1_w1_val == 4294967039<br>                                                                                                                                                                                                                           |[0x80000f6c]:UKCRAS32 t6, t5, t4<br> [0x80000f70]:sd t6, 848(tp)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFF00000000|- rs2_w1_val == 64<br> - rs2_w0_val == 268435456<br>                                                                                                                                                                                                                             |[0x80000f90]:UKCRAS32 t6, t5, t4<br> [0x80000f94]:sd t6, 864(tp)<br>     |
|  73|[0x80003690]<br>0x0000001A00000FE0|- rs2_w1_val == 32<br>                                                                                                                                                                                                                                                           |[0x80000fb4]:UKCRAS32 t6, t5, t4<br> [0x80000fb8]:sd t6, 880(tp)<br>     |
|  74|[0x800036a0]<br>0xFFFFFFFF000007F8|- rs2_w1_val == 8<br>                                                                                                                                                                                                                                                            |[0x80000fe4]:UKCRAS32 t6, t5, t4<br> [0x80000fe8]:sd t6, 896(tp)<br>     |
|  75|[0x800036b0]<br>0xFFFF9FFFFFFFDFFB|- rs2_w1_val == 4<br> - rs2_w0_val == 8192<br>                                                                                                                                                                                                                                   |[0x80001010]:UKCRAS32 t6, t5, t4<br> [0x80001014]:sd t6, 912(tp)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFDFFD|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                            |[0x80001040]:UKCRAS32 t6, t5, t4<br> [0x80001044]:sd t6, 928(tp)<br>     |
|  77|[0x800036d0]<br>0x08000001FFFFFDFE|- rs2_w1_val == 1<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                             |[0x80001068]:UKCRAS32 t6, t5, t4<br> [0x8000106c]:sd t6, 944(tp)<br>     |
|  78|[0x800036e0]<br>0xFFFFFFFF00000000|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 4294934527<br>                                                                                                                                                                                                                    |[0x80001088]:UKCRAS32 t6, t5, t4<br> [0x8000108c]:sd t6, 960(tp)<br>     |
|  79|[0x800036f0]<br>0xF07FFFFFDFFFFFFF|- rs2_w0_val == 4026531839<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                    |[0x800010b0]:UKCRAS32 t6, t5, t4<br> [0x800010b4]:sd t6, 976(tp)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFF003FFFF2|- rs2_w0_val == 2863311530<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                       |[0x800010dc]:UKCRAS32 t6, t5, t4<br> [0x800010e0]:sd t6, 992(tp)<br>     |
|  81|[0x80003710]<br>0x8007FFFFFFBFFFFB|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                   |[0x80001104]:UKCRAS32 t6, t5, t4<br> [0x80001108]:sd t6, 1008(tp)<br>    |
|  82|[0x80003720]<br>0xC000000A00000000|- rs2_w0_val == 3221225471<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                     |[0x80001128]:UKCRAS32 t6, t5, t4<br> [0x8000112c]:sd t6, 1024(tp)<br>    |
|  83|[0x80003730]<br>0xE000000EFFFF7FFB|- rs2_w0_val == 3758096383<br>                                                                                                                                                                                                                                                   |[0x80001150]:UKCRAS32 t6, t5, t4<br> [0x80001154]:sd t6, 1040(tp)<br>    |
|  84|[0x80003740]<br>0xFC1FFFFF00000000|- rs2_w0_val == 4227858431<br>                                                                                                                                                                                                                                                   |[0x80001178]:UKCRAS32 t6, t5, t4<br> [0x8000117c]:sd t6, 1056(tp)<br>    |
|  85|[0x80003750]<br>0x0000041200000000|- rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                         |[0x8000119c]:UKCRAS32 t6, t5, t4<br> [0x800011a0]:sd t6, 1072(tp)<br>    |
|  86|[0x80003760]<br>0xFFFE01FF00000000|- rs2_w0_val == 512<br>                                                                                                                                                                                                                                                          |[0x800011cc]:UKCRAS32 t6, t5, t4<br> [0x800011d0]:sd t6, 1088(tp)<br>    |
|  87|[0x80003770]<br>0x000401000FF00000|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                          |[0x800011f8]:UKCRAS32 t6, t5, t4<br> [0x800011fc]:sd t6, 1104(tp)<br>    |
|  88|[0x80003780]<br>0x0000800800000000|- rs2_w0_val == 8<br>                                                                                                                                                                                                                                                            |[0x80001220]:UKCRAS32 t6, t5, t4<br> [0x80001224]:sd t6, 1120(tp)<br>    |
|  89|[0x80003790]<br>0xFFFFFFFD00000FE0|- rs2_w0_val == 2<br> - rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                             |[0x80001248]:UKCRAS32 t6, t5, t4<br> [0x8000124c]:sd t6, 1136(tp)<br>    |
|  90|[0x800037a0]<br>0xF001FFFF00000000|- rs2_w0_val == 131072<br> - rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                        |[0x80001270]:UKCRAS32 t6, t5, t4<br> [0x80001274]:sd t6, 1152(tp)<br>    |
|  91|[0x800037b0]<br>0xFF80000F00000000|- rs1_w1_val == 4286578687<br>                                                                                                                                                                                                                                                   |[0x80001294]:UKCRAS32 t6, t5, t4<br> [0x80001298]:sd t6, 1168(tp)<br>    |
|  92|[0x800037c0]<br>0xFFFFFFFF00000000|- rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                                   |[0x800012c0]:UKCRAS32 t6, t5, t4<br> [0x800012c4]:sd t6, 1184(tp)<br>    |
|  93|[0x800037d0]<br>0xFFFFC1FF00000000|- rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                                   |[0x800012e8]:UKCRAS32 t6, t5, t4<br> [0x800012ec]:sd t6, 1200(tp)<br>    |
|  94|[0x800037e0]<br>0xFFFFF01000000000|- rs1_w1_val == 4294963199<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                    |[0x8000131c]:UKCRAS32 t6, t5, t4<br> [0x80001320]:sd t6, 1216(tp)<br>    |
|  95|[0x800037f0]<br>0xFFFFFFFFFFFFFFDD|- rs2_w0_val == 4294443007<br> - rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                    |[0x80001344]:UKCRAS32 t6, t5, t4<br> [0x80001348]:sd t6, 1232(tp)<br>    |
|  96|[0x80003800]<br>0xFFFFFFFF00000001|- rs1_w1_val == 4294967167<br>                                                                                                                                                                                                                                                   |[0x8000136c]:UKCRAS32 t6, t5, t4<br> [0x80001370]:sd t6, 1248(tp)<br>    |
|  97|[0x80003810]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294836223<br> - rs1_w1_val == 4294967231<br>                                                                                                                                                                                                                    |[0x80001394]:UKCRAS32 t6, t5, t4<br> [0x80001398]:sd t6, 1264(tp)<br>    |
|  98|[0x80003820]<br>0xFFFFFFFFFFFEFEFF|- rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                   |[0x800013b8]:UKCRAS32 t6, t5, t4<br> [0x800013bc]:sd t6, 1280(tp)<br>    |
|  99|[0x80003830]<br>0xFFFFFFFF00000000|- rs2_w0_val == 524288<br> - rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                        |[0x800013dc]:UKCRAS32 t6, t5, t4<br> [0x800013e0]:sd t6, 1296(tp)<br>    |
| 100|[0x80003840]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294950911<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                     |[0x80001410]:UKCRAS32 t6, t5, t4<br> [0x80001414]:sd t6, 1312(tp)<br>    |
| 101|[0x80003850]<br>0x1002000000000000|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                    |[0x80001434]:UKCRAS32 t6, t5, t4<br> [0x80001438]:sd t6, 1328(tp)<br>    |
| 102|[0x80003860]<br>0x0040000E00000001|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                      |[0x80001458]:UKCRAS32 t6, t5, t4<br> [0x8000145c]:sd t6, 1344(tp)<br>    |
| 103|[0x80003870]<br>0x0001000E3FFFFFF0|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                        |[0x80001484]:UKCRAS32 t6, t5, t4<br> [0x80001488]:sd t6, 1360(tp)<br>    |
| 104|[0x80003880]<br>0xFFFFFFFF00000000|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                         |[0x800014a8]:UKCRAS32 t6, t5, t4<br> [0x800014ac]:sd t6, 1376(tp)<br>    |
| 105|[0x80003890]<br>0x0008100000000000|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                         |[0x800014d0]:UKCRAS32 t6, t5, t4<br> [0x800014d4]:sd t6, 1392(tp)<br>    |
| 106|[0x800038a0]<br>0x0800040000000000|- rs2_w1_val == 4294836223<br> - rs1_w1_val == 1024<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                                           |[0x800014f8]:UKCRAS32 t6, t5, t4<br> [0x800014fc]:sd t6, 1408(tp)<br>    |
| 107|[0x800038b0]<br>0x0000008400000000|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                                          |[0x8000151c]:UKCRAS32 t6, t5, t4<br> [0x80001520]:sd t6, 1424(tp)<br>    |
| 108|[0x800038c0]<br>0x8000001F00000000|- rs1_w1_val == 32<br>                                                                                                                                                                                                                                                           |[0x8000153c]:UKCRAS32 t6, t5, t4<br> [0x80001540]:sd t6, 1440(tp)<br>    |
| 109|[0x800038d0]<br>0x0000001E00000000|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                           |[0x80001568]:UKCRAS32 t6, t5, t4<br> [0x8000156c]:sd t6, 1456(tp)<br>    |
| 110|[0x800038e0]<br>0x0000200807FFFFF6|- rs1_w1_val == 8<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                              |[0x80001588]:UKCRAS32 t6, t5, t4<br> [0x8000158c]:sd t6, 1472(tp)<br>    |
| 111|[0x800038f0]<br>0xFFFFFF8100000000|- rs2_w0_val == 4294967167<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                             |[0x800015ac]:UKCRAS32 t6, t5, t4<br> [0x800015b0]:sd t6, 1488(tp)<br>    |
| 112|[0x80003900]<br>0xFFFFFFFFFF7FFFF0|- rs1_w1_val == 4294967295<br>                                                                                                                                                                                                                                                   |[0x800015d0]:UKCRAS32 t6, t5, t4<br> [0x800015d4]:sd t6, 1504(tp)<br>    |
| 113|[0x80003920]<br>0x08000000BFFFFFF1|- rs2_w0_val == 67108864<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                      |[0x80001614]:UKCRAS32 t6, t5, t4<br> [0x80001618]:sd t6, 1536(tp)<br>    |
| 114|[0x80003930]<br>0xFFFFFFFFFFFFDEFF|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                                                                                   |[0x80001634]:UKCRAS32 t6, t5, t4<br> [0x80001638]:sd t6, 1552(tp)<br>    |
| 115|[0x80003940]<br>0xFFFFFFFFFBFFFFF4|- rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                                   |[0x80001660]:UKCRAS32 t6, t5, t4<br> [0x80001664]:sd t6, 1568(tp)<br>    |
| 116|[0x80003950]<br>0xFFFF807F07000000|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                   |[0x80001690]:UKCRAS32 t6, t5, t4<br> [0x80001694]:sd t6, 1584(tp)<br>    |
| 117|[0x80003960]<br>0xFFFFFFFF00000000|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                       |[0x800016bc]:UKCRAS32 t6, t5, t4<br> [0x800016c0]:sd t6, 1600(tp)<br>    |
| 118|[0x80003970]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294959103<br>                                                                                                                                                                                                                                                   |[0x800016e4]:UKCRAS32 t6, t5, t4<br> [0x800016e8]:sd t6, 1616(tp)<br>    |
| 119|[0x80003980]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294965247<br>                                                                                                                                                                                                                                                   |[0x80001718]:UKCRAS32 t6, t5, t4<br> [0x8000171c]:sd t6, 1632(tp)<br>    |
| 120|[0x80003990]<br>0xFFFFFE02003FFFF0|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                                                                                   |[0x8000173c]:UKCRAS32 t6, t5, t4<br> [0x80001740]:sd t6, 1648(tp)<br>    |
| 121|[0x800039a0]<br>0xFFFFFFFFF7FFBFFF|- rs2_w0_val == 4294967039<br>                                                                                                                                                                                                                                                   |[0x80001764]:UKCRAS32 t6, t5, t4<br> [0x80001768]:sd t6, 1664(tp)<br>    |
| 122|[0x800039b0]<br>0xFFFFFFFFFFFEFFBF|- rs2_w0_val == 4294967279<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                    |[0x80001790]:UKCRAS32 t6, t5, t4<br> [0x80001794]:sd t6, 1680(tp)<br>    |
| 123|[0x800039c0]<br>0xFFFFF005FFFFEF7F|- rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                   |[0x800017bc]:UKCRAS32 t6, t5, t4<br> [0x800017c0]:sd t6, 1696(tp)<br>    |
| 124|[0x800039d0]<br>0xFFFFFFFFFFEFFFFA|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                                                                   |[0x800017e4]:UKCRAS32 t6, t5, t4<br> [0x800017e8]:sd t6, 1712(tp)<br>    |
| 125|[0x800039e0]<br>0x8000001000000000|- rs2_w0_val == 2147483648<br>                                                                                                                                                                                                                                                   |[0x80001804]:UKCRAS32 t6, t5, t4<br> [0x80001808]:sd t6, 1728(tp)<br>    |
| 126|[0x800039f0]<br>0xC000000EFFFFFF6F|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                   |[0x80001828]:UKCRAS32 t6, t5, t4<br> [0x8000182c]:sd t6, 1744(tp)<br>    |
| 127|[0x80003a00]<br>0x010004000001FFC0|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                   |[0x80001854]:UKCRAS32 t6, t5, t4<br> [0x80001858]:sd t6, 1760(tp)<br>    |
| 128|[0x80003a10]<br>0x0000800B000007FC|- rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                   |[0x80001880]:UKCRAS32 t6, t5, t4<br> [0x80001884]:sd t6, 1776(tp)<br>    |
| 129|[0x80003a20]<br>0x55595555FFFFFFEC|- rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                   |[0x800018ac]:UKCRAS32 t6, t5, t4<br> [0x800018b0]:sd t6, 1792(tp)<br>    |
| 130|[0x80003a30]<br>0xFFFC00107FFFFFF6|- rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                                   |[0x800018d0]:UKCRAS32 t6, t5, t4<br> [0x800018d4]:sd t6, 1808(tp)<br>    |
| 131|[0x80003a40]<br>0xFE00000C00000000|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                     |[0x800018f8]:UKCRAS32 t6, t5, t4<br> [0x800018fc]:sd t6, 1824(tp)<br>    |
| 132|[0x80003a50]<br>0x0000200201FFFFF3|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                     |[0x80001918]:UKCRAS32 t6, t5, t4<br> [0x8000191c]:sd t6, 1840(tp)<br>    |
| 133|[0x80003a60]<br>0xFFFFFFFFFEFFDFFF|- rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                        |[0x80001940]:UKCRAS32 t6, t5, t4<br> [0x80001944]:sd t6, 1856(tp)<br>    |
| 134|[0x80003a70]<br>0xFC0007FF00000000|- rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                         |[0x8000196c]:UKCRAS32 t6, t5, t4<br> [0x80001970]:sd t6, 1872(tp)<br>    |
| 135|[0x80003a80]<br>0x8000002000000000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                      |[0x80001994]:UKCRAS32 t6, t5, t4<br> [0x80001998]:sd t6, 1888(tp)<br>    |
| 136|[0x80003a90]<br>0xFFFFFFFF00000000|- rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                   |[0x800019c0]:UKCRAS32 t6, t5, t4<br> [0x800019c4]:sd t6, 1904(tp)<br>    |
