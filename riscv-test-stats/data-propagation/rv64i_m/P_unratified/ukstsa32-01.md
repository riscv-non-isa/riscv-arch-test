
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001af0')]      |
| SIG_REGION                | [('0x80003210', '0x80003ae0', '282 dwords')]      |
| COV_LABELS                | ukstsa32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukstsa32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 282      |
| STAT1                     | 137      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 141     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001078]:UKSTSA32 t6, t5, t4
      [0x8000107c]:sd t6, 928(fp)
 -- Signature Address: 0x800036d0 Data: 0x0020000000100011
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 1048576
      - rs1_w1_val == 2097152




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a48]:UKSTSA32 t6, t5, t4
      [0x80001a4c]:sd t6, 1904(fp)
 -- Signature Address: 0x80003aa0 Data: 0x00000000FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294950911
      - rs2_w0_val == 4294959103
      - rs1_w1_val == 4294950911
      - rs1_w0_val == 4227858431




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a70]:UKSTSA32 t6, t5, t4
      [0x80001a74]:sd t6, 1920(fp)
 -- Signature Address: 0x80003ab0 Data: 0x3FFFFFFFFFFFDFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 3221225471
      - rs2_w0_val == 4294959103
      - rs1_w1_val == 4294967294




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ae4]:UKSTSA32 t6, t5, t4
      [0x80001ae8]:sd t6, 1952(fp)
 -- Signature Address: 0x80003ad0 Data: 0x00000000FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294959103
      - rs2_w0_val == 4293918719
      - rs1_w1_val == 16384
      - rs1_w0_val == 2863311530






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukstsa32', 'rs1 : x14', 'rs2 : x14', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4294967279', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800003bc]:UKSTSA32 s9, a4, a4
	-[0x800003c0]:sd s9, 0(a1)
Current Store : [0x800003c4] : sd a4, 8(a1) -- Store: [0x80003218]:0xFFFFFFEFFFFFDFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs2_w1_val == 4294950911', 'rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x800003ec]:UKSTSA32 s8, s8, s8
	-[0x800003f0]:sd s8, 16(a1)
Current Store : [0x800003f4] : sd s8, 24(a1) -- Store: [0x80003228]:0x00000000FFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x28', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 16', 'rs2_w0_val == 128', 'rs1_w1_val == 131072', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000410]:UKSTSA32 a4, s2, t3
	-[0x80000414]:sd a4, 32(a1)
Current Store : [0x80000418] : sd s2, 40(a1) -- Store: [0x80003238]:0x0002000000000080




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x31', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 4', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000438]:UKSTSA32 t6, t6, s2
	-[0x8000043c]:sd t6, 48(a1)
Current Store : [0x80000440] : sd t6, 56(a1) -- Store: [0x80003248]:0x54555555FFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80000460]:UKSTSA32 a7, a0, a7
	-[0x80000464]:sd a7, 64(a1)
Current Store : [0x80000468] : sd a0, 72(a1) -- Store: [0x80003258]:0x0000001000000006




Last Coverpoint : ['rs1 : x13', 'rs2 : x8', 'rd : x22', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000484]:UKSTSA32 s6, a3, fp
	-[0x80000488]:sd s6, 80(a1)
Current Store : [0x8000048c] : sd a3, 88(a1) -- Store: [0x80003268]:0x0000000C00000012




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x0', 'rs1_w0_val == 0', 'rs2_w1_val == 3221225471', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x800004ac]:UKSTSA32 zero, s9, t5
	-[0x800004b0]:sd zero, 96(a1)
Current Store : [0x800004b4] : sd s9, 104(a1) -- Store: [0x80003278]:0xFFFFFFFE00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x4', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 134217728', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x800004e4]:UKSTSA32 tp, s4, t2
	-[0x800004e8]:sd tp, 112(a1)
Current Store : [0x800004ec] : sd s4, 120(a1) -- Store: [0x80003288]:0x08000000FFFDFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x13', 'rd : x20', 'rs2_w1_val == 4026531839', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000518]:UKSTSA32 s4, s10, a3
	-[0x8000051c]:sd s4, 128(a1)
Current Store : [0x80000520] : sd s10, 136(a1) -- Store: [0x80003298]:0xAAAAAAAAFEFFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x8', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 4294705151', 'rs1_w1_val == 524288', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000544]:UKSTSA32 fp, ra, t1
	-[0x80000548]:sd fp, 144(a1)
Current Store : [0x8000054c] : sd ra, 152(a1) -- Store: [0x800032a8]:0x0008000000000200




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x16', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 8', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000578]:UKSTSA32 a6, fp, a2
	-[0x8000057c]:sd a6, 160(a1)
Current Store : [0x80000580] : sd fp, 168(a1) -- Store: [0x800032b8]:0x00400000FFFFDFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x3', 'rd : x15', 'rs2_w1_val == 4261412863', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000059c]:UKSTSA32 a5, sp, gp
	-[0x800005a0]:sd a5, 176(a1)
Current Store : [0x800005a4] : sd sp, 184(a1) -- Store: [0x800032c8]:0x0000000200000011




Last Coverpoint : ['rs1 : x0', 'rs2 : x31', 'rd : x26', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800005dc]:UKSTSA32 s10, zero, t6
	-[0x800005e0]:sd s10, 192(a1)
Current Store : [0x800005e4] : sd zero, 200(a1) -- Store: [0x800032d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x23', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 524288', 'rs1_w1_val == 262144', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000060c]:UKSTSA32 s7, s3, s6
	-[0x80000610]:sd s7, 208(a1)
Current Store : [0x80000614] : sd s3, 216(a1) -- Store: [0x800032e8]:0x0004000000004000




Last Coverpoint : ['rs1 : x17', 'rs2 : x25', 'rd : x12', 'rs2_w1_val == 4290772991', 'rs1_w1_val == 268435456', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000638]:UKSTSA32 a2, a7, s9
	-[0x8000063c]:sd a2, 224(a1)
Current Store : [0x80000640] : sd a7, 232(a1) -- Store: [0x800032f8]:0x10000000FBFFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x19', 'rd : x9', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 32768', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000664]:UKSTSA32 s1, t2, s3
	-[0x80000668]:sd s1, 240(a1)
Current Store : [0x8000066c] : sd t2, 248(a1) -- Store: [0x80003308]:0x0000001201000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x4', 'rd : x19', 'rs2_w1_val == 4293918719', 'rs2_w0_val == 1048576', 'rs1_w1_val == 4294705151', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000694]:UKSTSA32 s3, t1, tp
	-[0x80000698]:sd s3, 256(a1)
Current Store : [0x8000069c] : sd t1, 264(a1) -- Store: [0x80003318]:0xFFFBFFFF00000040




Last Coverpoint : ['rs1 : x22', 'rs2 : x9', 'rd : x5', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800006c4]:UKSTSA32 t0, s6, s1
	-[0x800006c8]:sd t0, 272(a1)
Current Store : [0x800006cc] : sd s6, 280(a1) -- Store: [0x80003328]:0x00020000FFFFFFFE




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x6', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x800006fc]:UKSTSA32 t1, s5, a6
	-[0x80000700]:sd t1, 0(fp)
Current Store : [0x80000704] : sd s5, 8(fp) -- Store: [0x80003338]:0x08000000DFFFFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x5', 'rd : x13', 'rs2_w1_val == 4294836223', 'rs1_w1_val == 4294959103', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000724]:UKSTSA32 a3, a1, t0
	-[0x80000728]:sd a3, 16(fp)
Current Store : [0x8000072c] : sd a1, 24(fp) -- Store: [0x80003348]:0xFFFFDFFFFFFFFDFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x29', 'rs2_w1_val == 4294901759', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x8000074c]:UKSTSA32 t4, a6, s7
	-[0x80000750]:sd t4, 32(fp)
Current Store : [0x80000754] : sd a6, 40(fp) -- Store: [0x80003358]:0x0010000000000005




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x30', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 134217728', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000778]:UKSTSA32 t5, t4, s10
	-[0x8000077c]:sd t5, 48(fp)
Current Store : [0x80000780] : sd t4, 56(fp) -- Store: [0x80003368]:0x40000000FBFFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x10', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 16384', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800007ac]:UKSTSA32 a0, s7, zero
	-[0x800007b0]:sd a0, 64(fp)
Current Store : [0x800007b4] : sd s7, 72(fp) -- Store: [0x80003378]:0x00004000AAAAAAAA




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x3', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800007d4]:UKSTSA32 gp, a2, sp
	-[0x800007d8]:sd gp, 80(fp)
Current Store : [0x800007dc] : sd a2, 88(fp) -- Store: [0x80003388]:0xFFFDFFFF08000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x29', 'rd : x18', 'rs2_w1_val == 4294965247', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000800]:UKSTSA32 s2, s1, t4
	-[0x80000804]:sd s2, 96(fp)
Current Store : [0x80000808] : sd s1, 104(fp) -- Store: [0x80003398]:0xFFFFF7FFFFFFBFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x11', 'rd : x27', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 16777216', 'rs1_w1_val == 33554432', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000824]:UKSTSA32 s11, a5, a1
	-[0x80000828]:sd s11, 112(fp)
Current Store : [0x8000082c] : sd a5, 120(fp) -- Store: [0x800033a8]:0x0200000000000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x2', 'rs2_w1_val == 4294966783', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000854]:UKSTSA32 sp, t5, s4
	-[0x80000858]:sd sp, 128(fp)
Current Store : [0x8000085c] : sd t5, 136(fp) -- Store: [0x800033b8]:0x7FFFFFFF00100000




Last Coverpoint : ['rs1 : x4', 'rs2 : x27', 'rd : x11', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 1', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000878]:UKSTSA32 a1, tp, s11
	-[0x8000087c]:sd a1, 144(fp)
Current Store : [0x80000880] : sd tp, 152(fp) -- Store: [0x800033c8]:0xFFFFFEFF00200000




Last Coverpoint : ['rs1 : x3', 'rs2 : x1', 'rd : x28', 'rs2_w1_val == 4294967167', 'rs1_w1_val == 4294967263', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800008a0]:UKSTSA32 t3, gp, ra
	-[0x800008a4]:sd t3, 160(fp)
Current Store : [0x800008a8] : sd gp, 168(fp) -- Store: [0x800033d8]:0xFFFFFFDF00800000




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x7', 'rs2_w1_val == 4294967231', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800008c4]:UKSTSA32 t2, s11, a5
	-[0x800008c8]:sd t2, 176(fp)
Current Store : [0x800008cc] : sd s11, 184(fp) -- Store: [0x800033e8]:0xFFFFFFDFFFFFFFFB




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x21', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800008e8]:UKSTSA32 s5, t0, a0
	-[0x800008ec]:sd s5, 192(fp)
Current Store : [0x800008f0] : sd t0, 200(fp) -- Store: [0x800033f8]:0x0000000700040000




Last Coverpoint : ['rs1 : x28', 'rs2 : x21', 'rd : x1', 'rs2_w1_val == 4294967287', 'rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80000910]:UKSTSA32 ra, t3, s5
	-[0x80000914]:sd ra, 208(fp)
Current Store : [0x80000918] : sd t3, 216(fp) -- Store: [0x80003408]:0xFF7FFFFF00000012




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000934]:UKSTSA32 t6, t5, t4
	-[0x80000938]:sd t6, 224(fp)
Current Store : [0x8000093c] : sd t5, 232(fp) -- Store: [0x80003418]:0x0000000FFFFFFFEF




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000958]:UKSTSA32 t6, t5, t4
	-[0x8000095c]:sd t6, 240(fp)
Current Store : [0x80000960] : sd t5, 248(fp) -- Store: [0x80003428]:0x00000007FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000980]:UKSTSA32 t6, t5, t4
	-[0x80000984]:sd t6, 256(fp)
Current Store : [0x80000988] : sd t5, 264(fp) -- Store: [0x80003438]:0x00020000FFFFFFDF




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800009a4]:UKSTSA32 t6, t5, t4
	-[0x800009a8]:sd t6, 272(fp)
Current Store : [0x800009ac] : sd t5, 280(fp) -- Store: [0x80003448]:0xFFFFFFEFFDFFFFFF




Last Coverpoint : ['rs2_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800009d4]:UKSTSA32 t6, t5, t4
	-[0x800009d8]:sd t6, 288(fp)
Current Store : [0x800009dc] : sd t5, 296(fp) -- Store: [0x80003458]:0x0040000000000011




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 2']
Last Code Sequence : 
	-[0x800009f8]:UKSTSA32 t6, t5, t4
	-[0x800009fc]:sd t6, 304(fp)
Current Store : [0x80000a00] : sd t5, 312(fp) -- Store: [0x80003468]:0x0000000B0000000D




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 2097152', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000a28]:UKSTSA32 t6, t5, t4
	-[0x80000a2c]:sd t6, 320(fp)
Current Store : [0x80000a30] : sd t5, 328(fp) -- Store: [0x80003478]:0xFFFFDFFF00001000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4294934527', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x80000a5c]:UKSTSA32 t6, t5, t4
	-[0x80000a60]:sd t6, 336(fp)
Current Store : [0x80000a64] : sd t5, 344(fp) -- Store: [0x80003488]:0xFBFFFFFF01000000




Last Coverpoint : ['rs2_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000a90]:UKSTSA32 t6, t5, t4
	-[0x80000a94]:sd t6, 352(fp)
Current Store : [0x80000a98] : sd t5, 360(fp) -- Store: [0x80003498]:0x0000000200040000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80000abc]:UKSTSA32 t6, t5, t4
	-[0x80000ac0]:sd t6, 368(fp)
Current Store : [0x80000ac4] : sd t5, 376(fp) -- Store: [0x800034a8]:0x00040000BFFFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000ae8]:UKSTSA32 t6, t5, t4
	-[0x80000aec]:sd t6, 384(fp)
Current Store : [0x80000af0] : sd t5, 392(fp) -- Store: [0x800034b8]:0x0000080000200000




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000b14]:UKSTSA32 t6, t5, t4
	-[0x80000b18]:sd t6, 400(fp)
Current Store : [0x80000b1c] : sd t5, 408(fp) -- Store: [0x800034c8]:0x00000005FFFFBFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000b3c]:UKSTSA32 t6, t5, t4
	-[0x80000b40]:sd t6, 416(fp)
Current Store : [0x80000b44] : sd t5, 424(fp) -- Store: [0x800034d8]:0x0004000000800000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == 512', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b6c]:UKSTSA32 t6, t5, t4
	-[0x80000b70]:sd t6, 432(fp)
Current Store : [0x80000b74] : sd t5, 440(fp) -- Store: [0x800034e8]:0x0000020004000000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000b94]:UKSTSA32 t6, t5, t4
	-[0x80000b98]:sd t6, 448(fp)
Current Store : [0x80000b9c] : sd t5, 456(fp) -- Store: [0x800034f8]:0x0000040004000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 32', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000bbc]:UKSTSA32 t6, t5, t4
	-[0x80000bc0]:sd t6, 464(fp)
Current Store : [0x80000bc4] : sd t5, 472(fp) -- Store: [0x80003508]:0xFFF7FFFF00000400




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000be4]:UKSTSA32 t6, t5, t4
	-[0x80000be8]:sd t6, 480(fp)
Current Store : [0x80000bec] : sd t5, 488(fp) -- Store: [0x80003518]:0xFDFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000c10]:UKSTSA32 t6, t5, t4
	-[0x80000c14]:sd t6, 496(fp)
Current Store : [0x80000c18] : sd t5, 504(fp) -- Store: [0x80003528]:0xFFFBFFFF00000004




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 16777216', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000c40]:UKSTSA32 t6, t5, t4
	-[0x80000c44]:sd t6, 512(fp)
Current Store : [0x80000c48] : sd t5, 520(fp) -- Store: [0x80003538]:0x01000000FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 3221225471', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c74]:UKSTSA32 t6, t5, t4
	-[0x80000c78]:sd t6, 528(fp)
Current Store : [0x80000c7c] : sd t5, 536(fp) -- Store: [0x80003548]:0xBFFFFFFF00020000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000ca4]:UKSTSA32 t6, t5, t4
	-[0x80000ca8]:sd t6, 544(fp)
Current Store : [0x80000cac] : sd t5, 552(fp) -- Store: [0x80003558]:0xFBFFFFFF00010000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cd0]:UKSTSA32 t6, t5, t4
	-[0x80000cd4]:sd t6, 560(fp)
Current Store : [0x80000cd8] : sd t5, 568(fp) -- Store: [0x80003568]:0x4000000000008000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cf8]:UKSTSA32 t6, t5, t4
	-[0x80000cfc]:sd t6, 576(fp)
Current Store : [0x80000d00] : sd t5, 584(fp) -- Store: [0x80003578]:0xFFFFF7FF00002000




Last Coverpoint : ['rs1_w1_val == 8', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d20]:UKSTSA32 t6, t5, t4
	-[0x80000d24]:sd t6, 592(fp)
Current Store : [0x80000d28] : sd t5, 600(fp) -- Store: [0x80003588]:0x0000000800000800




Last Coverpoint : ['rs2_w0_val == 4278190079', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d44]:UKSTSA32 t6, t5, t4
	-[0x80000d48]:sd t6, 608(fp)
Current Store : [0x80000d4c] : sd t5, 616(fp) -- Store: [0x80003598]:0x0000400000000100




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d6c]:UKSTSA32 t6, t5, t4
	-[0x80000d70]:sd t6, 624(fp)
Current Store : [0x80000d74] : sd t5, 632(fp) -- Store: [0x800035a8]:0x0000000600000020




Last Coverpoint : ['rs1_w1_val == 4294967287', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d98]:UKSTSA32 t6, t5, t4
	-[0x80000d9c]:sd t6, 640(fp)
Current Store : [0x80000da0] : sd t5, 648(fp) -- Store: [0x800035b8]:0xFFFFFFF700000010




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000dc0]:UKSTSA32 t6, t5, t4
	-[0x80000dc4]:sd t6, 656(fp)
Current Store : [0x80000dc8] : sd t5, 664(fp) -- Store: [0x800035c8]:0xFFFFFF7F00000008




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000dec]:UKSTSA32 t6, t5, t4
	-[0x80000df0]:sd t6, 672(fp)
Current Store : [0x80000df4] : sd t5, 680(fp) -- Store: [0x800035d8]:0xBFFFFFFF00000002




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 1024', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000e10]:UKSTSA32 t6, t5, t4
	-[0x80000e14]:sd t6, 688(fp)
Current Store : [0x80000e18] : sd t5, 696(fp) -- Store: [0x800035e8]:0x000000200000000E




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 2048', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000e48]:UKSTSA32 t6, t5, t4
	-[0x80000e4c]:sd t6, 704(fp)
Current Store : [0x80000e50] : sd t5, 712(fp) -- Store: [0x800035f8]:0x08000000FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000e70]:UKSTSA32 t6, t5, t4
	-[0x80000e74]:sd t6, 720(fp)
Current Store : [0x80000e78] : sd t5, 728(fp) -- Store: [0x80003608]:0xFFFBFFFFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000e94]:UKSTSA32 t6, t5, t4
	-[0x80000e98]:sd t6, 736(fp)
Current Store : [0x80000e9c] : sd t5, 744(fp) -- Store: [0x80003618]:0x000400000000000E




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000ec0]:UKSTSA32 t6, t5, t4
	-[0x80000ec4]:sd t6, 752(fp)
Current Store : [0x80000ec8] : sd t5, 760(fp) -- Store: [0x80003628]:0xFFFFFFEFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000ef0]:UKSTSA32 t6, t5, t4
	-[0x80000ef4]:sd t6, 768(fp)
Current Store : [0x80000ef8] : sd t5, 776(fp) -- Store: [0x80003638]:0x10000000FEFFFFFF




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000f14]:UKSTSA32 t6, t5, t4
	-[0x80000f18]:sd t6, 784(fp)
Current Store : [0x80000f1c] : sd t5, 792(fp) -- Store: [0x80003648]:0x0000080000400000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000f3c]:UKSTSA32 t6, t5, t4
	-[0x80000f40]:sd t6, 800(fp)
Current Store : [0x80000f44] : sd t5, 808(fp) -- Store: [0x80003658]:0x0002000000002000




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 2097152', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000f64]:UKSTSA32 t6, t5, t4
	-[0x80000f68]:sd t6, 816(fp)
Current Store : [0x80000f6c] : sd t5, 824(fp) -- Store: [0x80003668]:0x00200000FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80000f8c]:UKSTSA32 t6, t5, t4
	-[0x80000f90]:sd t6, 832(fp)
Current Store : [0x80000f94] : sd t5, 840(fp) -- Store: [0x80003678]:0xFFFFEFFF00000010




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w1_val == 4294966271', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000fb8]:UKSTSA32 t6, t5, t4
	-[0x80000fbc]:sd t6, 848(fp)
Current Store : [0x80000fc0] : sd t5, 856(fp) -- Store: [0x80003688]:0xFFFFFBFFFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000fe8]:UKSTSA32 t6, t5, t4
	-[0x80000fec]:sd t6, 864(fp)
Current Store : [0x80000ff0] : sd t5, 872(fp) -- Store: [0x80003698]:0x01000000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 4294967167', 'rs1_w1_val == 4294901759']
Last Code Sequence : 
	-[0x80001010]:UKSTSA32 t6, t5, t4
	-[0x80001014]:sd t6, 880(fp)
Current Store : [0x80001018] : sd t5, 888(fp) -- Store: [0x800036a8]:0xFFFEFFFF00000400




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80001038]:UKSTSA32 t6, t5, t4
	-[0x8000103c]:sd t6, 896(fp)
Current Store : [0x80001040] : sd t5, 904(fp) -- Store: [0x800036b8]:0x010000000000000C




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs2_w0_val == 64', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000105c]:UKSTSA32 t6, t5, t4
	-[0x80001060]:sd t6, 912(fp)
Current Store : [0x80001064] : sd t5, 920(fp) -- Store: [0x800036c8]:0xFEFFFFFFFFFFFFFD




Last Coverpoint : ['opcode : ukstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 1048576', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001078]:UKSTSA32 t6, t5, t4
	-[0x8000107c]:sd t6, 928(fp)
Current Store : [0x80001080] : sd t5, 936(fp) -- Store: [0x800036d8]:0x0020000000000011




Last Coverpoint : ['rs2_w0_val == 2863311530', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800010a8]:UKSTSA32 t6, t5, t4
	-[0x800010ac]:sd t6, 944(fp)
Current Store : [0x800010b0] : sd t5, 952(fp) -- Store: [0x800036e8]:0x0000000340000000




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800010c8]:UKSTSA32 t6, t5, t4
	-[0x800010cc]:sd t6, 960(fp)
Current Store : [0x800010d0] : sd t5, 968(fp) -- Store: [0x800036f8]:0x0000000502000000




Last Coverpoint : ['rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800010f0]:UKSTSA32 t6, t5, t4
	-[0x800010f4]:sd t6, 976(fp)
Current Store : [0x800010f8] : sd t5, 984(fp) -- Store: [0x80003708]:0xFFFFFFF7BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80001118]:UKSTSA32 t6, t5, t4
	-[0x8000111c]:sd t6, 992(fp)
Current Store : [0x80001120] : sd t5, 1000(fp) -- Store: [0x80003718]:0x0000000C0000000A




Last Coverpoint : ['rs2_w0_val == 4294443007', 'rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80001148]:UKSTSA32 t6, t5, t4
	-[0x8000114c]:sd t6, 1008(fp)
Current Store : [0x80001150] : sd t5, 1016(fp) -- Store: [0x80003728]:0xFFEFFFFF00000001




Last Coverpoint : ['rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80001170]:UKSTSA32 t6, t5, t4
	-[0x80001174]:sd t6, 1024(fp)
Current Store : [0x80001178] : sd t5, 1032(fp) -- Store: [0x80003738]:0xFFFFFEFFFFFFFFEF




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800011a4]:UKSTSA32 t6, t5, t4
	-[0x800011a8]:sd t6, 1040(fp)
Current Store : [0x800011ac] : sd t5, 1048(fp) -- Store: [0x80003748]:0xFFFFFEFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x800011c8]:UKSTSA32 t6, t5, t4
	-[0x800011cc]:sd t6, 1056(fp)
Current Store : [0x800011d0] : sd t5, 1064(fp) -- Store: [0x80003758]:0x2000000000000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800011f4]:UKSTSA32 t6, t5, t4
	-[0x800011f8]:sd t6, 1072(fp)
Current Store : [0x800011fc] : sd t5, 1080(fp) -- Store: [0x80003768]:0x00000400BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x8000121c]:UKSTSA32 t6, t5, t4
	-[0x80001220]:sd t6, 1088(fp)
Current Store : [0x80001224] : sd t5, 1096(fp) -- Store: [0x80003778]:0x7FFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 4294967295', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001244]:UKSTSA32 t6, t5, t4
	-[0x80001248]:sd t6, 1104(fp)
Current Store : [0x8000124c] : sd t5, 1112(fp) -- Store: [0x80003788]:0x100000007FFFFFFF




Last Coverpoint : ['rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80001270]:UKSTSA32 t6, t5, t4
	-[0x80001274]:sd t6, 1120(fp)
Current Store : [0x80001278] : sd t5, 1128(fp) -- Store: [0x80003798]:0xDFFFFFFF00020000




Last Coverpoint : ['rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x8000129c]:UKSTSA32 t6, t5, t4
	-[0x800012a0]:sd t6, 1136(fp)
Current Store : [0x800012a4] : sd t5, 1144(fp) -- Store: [0x800037a8]:0xEFFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x800012c8]:UKSTSA32 t6, t5, t4
	-[0x800012cc]:sd t6, 1152(fp)
Current Store : [0x800012d0] : sd t5, 1160(fp) -- Store: [0x800037b8]:0xF7FFFFFF0000000D




Last Coverpoint : ['rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x800012f0]:UKSTSA32 t6, t5, t4
	-[0x800012f4]:sd t6, 1168(fp)
Current Store : [0x800012f8] : sd t5, 1176(fp) -- Store: [0x800037c8]:0xFFBFFFFF00000011




Last Coverpoint : ['rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80001314]:UKSTSA32 t6, t5, t4
	-[0x80001318]:sd t6, 1184(fp)
Current Store : [0x8000131c] : sd t5, 1192(fp) -- Store: [0x800037d8]:0xFFDFFFFF04000000




Last Coverpoint : ['rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80001338]:UKSTSA32 t6, t5, t4
	-[0x8000133c]:sd t6, 1200(fp)
Current Store : [0x80001340] : sd t5, 1208(fp) -- Store: [0x800037e8]:0xFFFF7FFF01000000




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x80001360]:UKSTSA32 t6, t5, t4
	-[0x80001364]:sd t6, 1216(fp)
Current Store : [0x80001368] : sd t5, 1224(fp) -- Store: [0x800037f8]:0xFFFFFDFF0000000C




Last Coverpoint : ['rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x8000138c]:UKSTSA32 t6, t5, t4
	-[0x80001390]:sd t6, 1232(fp)
Current Store : [0x80001394] : sd t5, 1240(fp) -- Store: [0x80003808]:0xFFFFFFBFFFFDFFFF




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x800013b8]:UKSTSA32 t6, t5, t4
	-[0x800013bc]:sd t6, 1248(fp)
Current Store : [0x800013c0] : sd t5, 1256(fp) -- Store: [0x80003818]:0xFFFFFFFB00000005




Last Coverpoint : ['rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x800013dc]:UKSTSA32 t6, t5, t4
	-[0x800013e0]:sd t6, 1264(fp)
Current Store : [0x800013e4] : sd t5, 1272(fp) -- Store: [0x80003828]:0xFFFFFFFD0000000C




Last Coverpoint : ['rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x80001404]:UKSTSA32 t6, t5, t4
	-[0x80001408]:sd t6, 1280(fp)
Current Store : [0x8000140c] : sd t5, 1288(fp) -- Store: [0x80003838]:0x80000000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 67108864', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x8000142c]:UKSTSA32 t6, t5, t4
	-[0x80001430]:sd t6, 1296(fp)
Current Store : [0x80001434] : sd t5, 1304(fp) -- Store: [0x80003848]:0x04000000FFFFFEFF




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x8000145c]:UKSTSA32 t6, t5, t4
	-[0x80001460]:sd t6, 1312(fp)
Current Store : [0x80001464] : sd t5, 1320(fp) -- Store: [0x80003858]:0x00800000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001484]:UKSTSA32 t6, t5, t4
	-[0x80001488]:sd t6, 1328(fp)
Current Store : [0x8000148c] : sd t5, 1336(fp) -- Store: [0x80003868]:0x00010000FFFFFFEF




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800014a8]:UKSTSA32 t6, t5, t4
	-[0x800014ac]:sd t6, 1344(fp)
Current Store : [0x800014b0] : sd t5, 1352(fp) -- Store: [0x80003878]:0x0000800000040000




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014d0]:UKSTSA32 t6, t5, t4
	-[0x800014d4]:sd t6, 1360(fp)
Current Store : [0x800014d8] : sd t5, 1368(fp) -- Store: [0x80003888]:0x00002000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800014f4]:UKSTSA32 t6, t5, t4
	-[0x800014f8]:sd t6, 1376(fp)
Current Store : [0x800014fc] : sd t5, 1384(fp) -- Store: [0x80003898]:0x000010000000000E




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x8000151c]:UKSTSA32 t6, t5, t4
	-[0x80001520]:sd t6, 1392(fp)
Current Store : [0x80001524] : sd t5, 1400(fp) -- Store: [0x800038a8]:0x0000010000000002




Last Coverpoint : ['rs1_w1_val == 128', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x8000154c]:UKSTSA32 t6, t5, t4
	-[0x80001550]:sd t6, 1408(fp)
Current Store : [0x80001554] : sd t5, 1416(fp) -- Store: [0x800038b8]:0x00000080FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 4294959103', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001574]:UKSTSA32 t6, t5, t4
	-[0x80001578]:sd t6, 1424(fp)
Current Store : [0x8000157c] : sd t5, 1432(fp) -- Store: [0x800038c8]:0x0000000400000009




Last Coverpoint : ['rs2_w0_val == 4294967287', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000159c]:UKSTSA32 t6, t5, t4
	-[0x800015a0]:sd t6, 1440(fp)
Current Store : [0x800015a4] : sd t5, 1448(fp) -- Store: [0x800038d8]:0x00000001FFFFFFDF




Last Coverpoint : ['rs1_w1_val == 4294967295']
Last Code Sequence : 
	-[0x800015bc]:UKSTSA32 t6, t5, t4
	-[0x800015c0]:sd t6, 1456(fp)
Current Store : [0x800015c4] : sd t5, 1464(fp) -- Store: [0x800038e8]:0xFFFFFFFFFFFFFF7F




Last Coverpoint : ['rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800015e4]:UKSTSA32 t6, t5, t4
	-[0x800015e8]:sd t6, 1472(fp)
Current Store : [0x800015ec] : sd t5, 1480(fp) -- Store: [0x800038f8]:0x00000000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001624]:UKSTSA32 t6, t5, t4
	-[0x80001628]:sd t6, 1488(fp)
Current Store : [0x8000162c] : sd t5, 1496(fp) -- Store: [0x80003908]:0x0800000055555555




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80001648]:UKSTSA32 t6, t5, t4
	-[0x8000164c]:sd t6, 1504(fp)
Current Store : [0x80001650] : sd t5, 1512(fp) -- Store: [0x80003918]:0x00000002F7FFFFFF




Last Coverpoint : ['rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x8000166c]:UKSTSA32 t6, t5, t4
	-[0x80001670]:sd t6, 1520(fp)
Current Store : [0x80001674] : sd t5, 1528(fp) -- Store: [0x80003928]:0xFFFFFFFFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800016a0]:UKSTSA32 t6, t5, t4
	-[0x800016a4]:sd t6, 1536(fp)
Current Store : [0x800016a8] : sd t5, 1544(fp) -- Store: [0x80003938]:0xFFFFFFFBFFDFFFFF




Last Coverpoint : ['rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800016d8]:UKSTSA32 t6, t5, t4
	-[0x800016dc]:sd t6, 1552(fp)
Current Store : [0x800016e0] : sd t5, 1560(fp) -- Store: [0x80003948]:0xFBFFFFFF00002000




Last Coverpoint : ['rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80001700]:UKSTSA32 t6, t5, t4
	-[0x80001704]:sd t6, 1568(fp)
Current Store : [0x80001708] : sd t5, 1576(fp) -- Store: [0x80003958]:0xFFFFFFBFFFF7FFFF




Last Coverpoint : ['rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000172c]:UKSTSA32 t6, t5, t4
	-[0x80001730]:sd t6, 1584(fp)
Current Store : [0x80001734] : sd t5, 1592(fp) -- Store: [0x80003968]:0xFFFBFFFF00000100




Last Coverpoint : ['rs2_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80001754]:UKSTSA32 t6, t5, t4
	-[0x80001758]:sd t6, 1600(fp)
Current Store : [0x8000175c] : sd t5, 1608(fp) -- Store: [0x80003978]:0x00000013FFF7FFFF




Last Coverpoint : ['rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80001780]:UKSTSA32 t6, t5, t4
	-[0x80001784]:sd t6, 1616(fp)
Current Store : [0x80001788] : sd t5, 1624(fp) -- Store: [0x80003988]:0x00000080FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800017a8]:UKSTSA32 t6, t5, t4
	-[0x800017ac]:sd t6, 1632(fp)
Current Store : [0x800017b0] : sd t5, 1640(fp) -- Store: [0x80003998]:0x0800000000000011




Last Coverpoint : ['rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800017d4]:UKSTSA32 t6, t5, t4
	-[0x800017d8]:sd t6, 1648(fp)
Current Store : [0x800017dc] : sd t5, 1656(fp) -- Store: [0x800039a8]:0x00020000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800017f4]:UKSTSA32 t6, t5, t4
	-[0x800017f8]:sd t6, 1664(fp)
Current Store : [0x800017fc] : sd t5, 1672(fp) -- Store: [0x800039b8]:0x0000000DFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 4294967293', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001818]:UKSTSA32 t6, t5, t4
	-[0x8000181c]:sd t6, 1680(fp)
Current Store : [0x80001820] : sd t5, 1688(fp) -- Store: [0x800039c8]:0x0020000010000000




Last Coverpoint : ['rs2_w0_val == 4294967294', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000183c]:UKSTSA32 t6, t5, t4
	-[0x80001840]:sd t6, 1696(fp)
Current Store : [0x80001844] : sd t5, 1704(fp) -- Store: [0x800039d8]:0x0000010020000000




Last Coverpoint : ['rs2_w0_val == 2147483648']
Last Code Sequence : 
	-[0x8000185c]:UKSTSA32 t6, t5, t4
	-[0x80001860]:sd t6, 1712(fp)
Current Store : [0x80001864] : sd t5, 1720(fp) -- Store: [0x800039e8]:0x00000003FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001888]:UKSTSA32 t6, t5, t4
	-[0x8000188c]:sd t6, 1728(fp)
Current Store : [0x80001890] : sd t5, 1736(fp) -- Store: [0x800039f8]:0x00002000FFFFBFFF




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800018b0]:UKSTSA32 t6, t5, t4
	-[0x800018b4]:sd t6, 1744(fp)
Current Store : [0x800018b8] : sd t5, 1752(fp) -- Store: [0x80003a08]:0x00004000FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800018e4]:UKSTSA32 t6, t5, t4
	-[0x800018e8]:sd t6, 1760(fp)
Current Store : [0x800018ec] : sd t5, 1768(fp) -- Store: [0x80003a18]:0x00020000FFFFF7FF




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001908]:UKSTSA32 t6, t5, t4
	-[0x8000190c]:sd t6, 1776(fp)
Current Store : [0x80001910] : sd t5, 1784(fp) -- Store: [0x80003a28]:0x0800000004000000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000192c]:UKSTSA32 t6, t5, t4
	-[0x80001930]:sd t6, 1792(fp)
Current Store : [0x80001934] : sd t5, 1800(fp) -- Store: [0x80003a38]:0xFFFEFFFFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80001950]:UKSTSA32 t6, t5, t4
	-[0x80001954]:sd t6, 1808(fp)
Current Store : [0x80001958] : sd t5, 1816(fp) -- Store: [0x80003a48]:0x0000000080000000




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x8000197c]:UKSTSA32 t6, t5, t4
	-[0x80001980]:sd t6, 1824(fp)
Current Store : [0x80001984] : sd t5, 1832(fp) -- Store: [0x80003a58]:0xFFFFFFBF00040000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x800019a4]:UKSTSA32 t6, t5, t4
	-[0x800019a8]:sd t6, 1840(fp)
Current Store : [0x800019ac] : sd t5, 1848(fp) -- Store: [0x80003a68]:0xFEFFFFFF00000020




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800019cc]:UKSTSA32 t6, t5, t4
	-[0x800019d0]:sd t6, 1856(fp)
Current Store : [0x800019d4] : sd t5, 1864(fp) -- Store: [0x80003a78]:0xFFFF7FFF00000003




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800019f4]:UKSTSA32 t6, t5, t4
	-[0x800019f8]:sd t6, 1872(fp)
Current Store : [0x800019fc] : sd t5, 1880(fp) -- Store: [0x80003a88]:0xFFFEFFFF00080000




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001a18]:UKSTSA32 t6, t5, t4
	-[0x80001a1c]:sd t6, 1888(fp)
Current Store : [0x80001a20] : sd t5, 1896(fp) -- Store: [0x80003a98]:0x0000004000000000




Last Coverpoint : ['opcode : ukstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001a48]:UKSTSA32 t6, t5, t4
	-[0x80001a4c]:sd t6, 1904(fp)
Current Store : [0x80001a50] : sd t5, 1912(fp) -- Store: [0x80003aa8]:0xFFFFBFFFFBFFFFFF




Last Coverpoint : ['opcode : ukstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 3221225471', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001a70]:UKSTSA32 t6, t5, t4
	-[0x80001a74]:sd t6, 1920(fp)
Current Store : [0x80001a78] : sd t5, 1928(fp) -- Store: [0x80003ab8]:0xFFFFFFFE00000000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001ab0]:UKSTSA32 t6, t5, t4
	-[0x80001ab4]:sd t6, 1936(fp)
Current Store : [0x80001ab8] : sd t5, 1944(fp) -- Store: [0x80003ac8]:0x555555557FFFFFFF




Last Coverpoint : ['opcode : ukstsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 4293918719', 'rs1_w1_val == 16384', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80001ae4]:UKSTSA32 t6, t5, t4
	-[0x80001ae8]:sd t6, 1952(fp)
Current Store : [0x80001aec] : sd t5, 1960(fp) -- Store: [0x80003ad8]:0x00004000AAAAAAAA





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

|s.no|            signature             |                                                                                                                                                                            coverpoints                                                                                                                                                                             |                                  code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000FFFFFFFF|- opcode : ukstsa32<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 4294959103<br> - rs1_w1_val == 4294967279<br> - rs1_w0_val == 4294959103<br> |[0x800003bc]:UKSTSA32 s9, a4, a4<br> [0x800003c0]:sd s9, 0(a1)<br>       |
|   2|[0x80003220]<br>0x00000000FFFFFFFF|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 4294950911<br> - rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                 |[0x800003ec]:UKSTSA32 s8, s8, s8<br> [0x800003f0]:sd s8, 16(a1)<br>      |
|   3|[0x80003230]<br>0x0001FFF000000100|- rs1 : x18<br> - rs2 : x28<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 16<br> - rs2_w0_val == 128<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 128<br>                                                                                                 |[0x80000410]:UKSTSA32 a4, s2, t3<br> [0x80000414]:sd a4, 32(a1)<br>      |
|   4|[0x80003240]<br>0x54555555FFFFFFFF|- rs1 : x31<br> - rs2 : x18<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 4294967295<br>                                                                                                       |[0x80000438]:UKSTSA32 t6, t6, s2<br> [0x8000043c]:sd t6, 48(a1)<br>      |
|   5|[0x80003250]<br>0x000000000000000D|- rs1 : x10<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs1_w1_val == 16<br>                                                                                                                                                                                                                                         |[0x80000460]:UKSTSA32 a7, a0, a7<br> [0x80000464]:sd a7, 64(a1)<br>      |
|   6|[0x80003260]<br>0x00000000FFFFFFD1|- rs1 : x13<br> - rs2 : x8<br> - rd : x22<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 4294967231<br>                                                                                                                                                                                                                                                         |[0x80000484]:UKSTSA32 s6, a3, fp<br> [0x80000488]:sd s6, 80(a1)<br>      |
|   7|[0x80003270]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x30<br> - rd : x0<br> - rs1_w0_val == 0<br> - rs2_w1_val == 3221225471<br> - rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                   |[0x800004ac]:UKSTSA32 zero, s9, t5<br> [0x800004b0]:sd zero, 96(a1)<br>  |
|   8|[0x80003280]<br>0x00000000FFFFFFFF|- rs1 : x20<br> - rs2 : x7<br> - rd : x4<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                             |[0x800004e4]:UKSTSA32 tp, s4, t2<br> [0x800004e8]:sd tp, 112(a1)<br>     |
|   9|[0x80003290]<br>0x00000000FF000009|- rs1 : x26<br> - rs2 : x13<br> - rd : x20<br> - rs2_w1_val == 4026531839<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                         |[0x80000518]:UKSTSA32 s4, s10, a3<br> [0x8000051c]:sd s4, 128(a1)<br>    |
|  10|[0x800032a0]<br>0x00000000FFFC01FF|- rs1 : x1<br> - rs2 : x6<br> - rd : x8<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4294705151<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                        |[0x80000544]:UKSTSA32 fp, ra, t1<br> [0x80000548]:sd fp, 144(a1)<br>     |
|  11|[0x800032b0]<br>0x00000000FFFFE007|- rs1 : x8<br> - rs2 : x12<br> - rd : x16<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 8<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                      |[0x80000578]:UKSTSA32 a6, fp, a2<br> [0x8000057c]:sd a6, 160(a1)<br>     |
|  12|[0x800032c0]<br>0x00000000FFFFFFD0|- rs1 : x2<br> - rs2 : x3<br> - rd : x15<br> - rs2_w1_val == 4261412863<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                   |[0x8000059c]:UKSTSA32 a5, sp, gp<br> [0x800005a0]:sd a5, 176(a1)<br>     |
|  13|[0x800032d0]<br>0x0000000055555555|- rs1 : x0<br> - rs2 : x31<br> - rd : x26<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                                                   |[0x800005dc]:UKSTSA32 s10, zero, t6<br> [0x800005e0]:sd s10, 192(a1)<br> |
|  14|[0x800032e0]<br>0x0000000000084000|- rs1 : x19<br> - rs2 : x22<br> - rd : x23<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                       |[0x8000060c]:UKSTSA32 s7, s3, s6<br> [0x80000610]:sd s7, 208(a1)<br>     |
|  15|[0x800032f0]<br>0x00000000FFFFFFFF|- rs1 : x17<br> - rs2 : x25<br> - rd : x12<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                          |[0x80000638]:UKSTSA32 a2, a7, s9<br> [0x8000063c]:sd a2, 224(a1)<br>     |
|  16|[0x80003300]<br>0x0000000001008000|- rs1 : x7<br> - rs2 : x19<br> - rd : x9<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 32768<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                  |[0x80000664]:UKSTSA32 s1, t2, s3<br> [0x80000668]:sd s1, 240(a1)<br>     |
|  17|[0x80003310]<br>0x000C000000100040|- rs1 : x6<br> - rs2 : x4<br> - rd : x19<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                       |[0x80000694]:UKSTSA32 s3, t1, tp<br> [0x80000698]:sd s3, 256(a1)<br>     |
|  18|[0x80003320]<br>0x00000000FFFFFFFF|- rs1 : x22<br> - rs2 : x9<br> - rd : x5<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                           |[0x800006c4]:UKSTSA32 t0, s6, s1<br> [0x800006c8]:sd t0, 272(a1)<br>     |
|  19|[0x80003330]<br>0x00000000FFFFFFFF|- rs1 : x21<br> - rs2 : x16<br> - rd : x6<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                          |[0x800006fc]:UKSTSA32 t1, s5, a6<br> [0x80000700]:sd t1, 0(fp)<br>       |
|  20|[0x80003340]<br>0x0001E000FFFFFFFF|- rs1 : x11<br> - rs2 : x5<br> - rd : x13<br> - rs2_w1_val == 4294836223<br> - rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                          |[0x80000724]:UKSTSA32 a3, a1, t0<br> [0x80000728]:sd a3, 16(fp)<br>      |
|  21|[0x80003350]<br>0x000000000000000C|- rs1 : x16<br> - rs2 : x23<br> - rd : x29<br> - rs2_w1_val == 4294901759<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                           |[0x8000074c]:UKSTSA32 t4, a6, s7<br> [0x80000750]:sd t4, 32(fp)<br>      |
|  22|[0x80003360]<br>0x00000000FFFFFFFF|- rs1 : x29<br> - rs2 : x26<br> - rd : x30<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                          |[0x80000778]:UKSTSA32 t5, t4, s10<br> [0x8000077c]:sd t5, 48(fp)<br>     |
|  23|[0x80003370]<br>0x00004000AAAAAAAA|- rs1 : x23<br> - rs2 : x0<br> - rd : x10<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                  |[0x800007ac]:UKSTSA32 a0, s7, zero<br> [0x800007b0]:sd a0, 64(fp)<br>    |
|  24|[0x80003380]<br>0x00000000FFFFFFFF|- rs1 : x12<br> - rs2 : x2<br> - rd : x3<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                             |[0x800007d4]:UKSTSA32 gp, a2, sp<br> [0x800007d8]:sd gp, 80(fp)<br>      |
|  25|[0x80003390]<br>0x00000000FFFFC00C|- rs1 : x9<br> - rs2 : x29<br> - rd : x18<br> - rs2_w1_val == 4294965247<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                          |[0x80000800]:UKSTSA32 s2, s1, t4<br> [0x80000804]:sd s2, 96(fp)<br>      |
|  26|[0x800033a0]<br>0x0000000001000001|- rs1 : x15<br> - rs2 : x11<br> - rd : x27<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                       |[0x80000824]:UKSTSA32 s11, a5, a1<br> [0x80000828]:sd s11, 112(fp)<br>   |
|  27|[0x800033b0]<br>0x00000000FFEFFFFF|- rs1 : x30<br> - rs2 : x20<br> - rd : x2<br> - rs2_w1_val == 4294966783<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                              |[0x80000854]:UKSTSA32 sp, t5, s4<br> [0x80000858]:sd sp, 128(fp)<br>     |
|  28|[0x800033c0]<br>0x0000000000200001|- rs1 : x4<br> - rs2 : x27<br> - rd : x11<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 1<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                       |[0x80000878]:UKSTSA32 a1, tp, s11<br> [0x8000087c]:sd a1, 144(fp)<br>    |
|  29|[0x800033d0]<br>0x00000060FFFFFFFF|- rs1 : x3<br> - rs2 : x1<br> - rd : x28<br> - rs2_w1_val == 4294967167<br> - rs1_w1_val == 4294967263<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                              |[0x800008a0]:UKSTSA32 t3, gp, ra<br> [0x800008a4]:sd t3, 160(fp)<br>     |
|  30|[0x800033e0]<br>0x00000020FFFFFFFF|- rs1 : x27<br> - rs2 : x15<br> - rd : x7<br> - rs2_w1_val == 4294967231<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                         |[0x800008c4]:UKSTSA32 t2, s11, a5<br> [0x800008c8]:sd t2, 176(fp)<br>    |
|  31|[0x800033f0]<br>0x00000000E003FFFF|- rs1 : x5<br> - rs2 : x10<br> - rd : x21<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                              |[0x800008e8]:UKSTSA32 s5, t0, a0<br> [0x800008ec]:sd s5, 192(fp)<br>     |
|  32|[0x80003400]<br>0x0000000000100012|- rs1 : x28<br> - rs2 : x21<br> - rd : x1<br> - rs2_w1_val == 4294967287<br> - rs1_w1_val == 4286578687<br>                                                                                                                                                                                                                                                         |[0x80000910]:UKSTSA32 ra, t3, s5<br> [0x80000914]:sd ra, 208(fp)<br>     |
|  33|[0x80003410]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967291<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                                       |[0x80000934]:UKSTSA32 t6, t5, t4<br> [0x80000938]:sd t6, 224(fp)<br>     |
|  34|[0x80003420]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                       |[0x80000958]:UKSTSA32 t6, t5, t4<br> [0x8000095c]:sd t6, 240(fp)<br>     |
|  35|[0x80003430]<br>0x00000000FFFFFFE9|- rs2_w1_val == 4294967294<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                       |[0x80000980]:UKSTSA32 t6, t5, t4<br> [0x80000984]:sd t6, 256(fp)<br>     |
|  36|[0x80003440]<br>0x7FFFFFEFFDFFFFFF|- rs2_w1_val == 2147483648<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                                                                                       |[0x800009a4]:UKSTSA32 t6, t5, t4<br> [0x800009a8]:sd t6, 272(fp)<br>     |
|  37|[0x80003450]<br>0x00000000FFFFE010|- rs2_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                      |[0x800009d4]:UKSTSA32 t6, t5, t4<br> [0x800009d8]:sd t6, 288(fp)<br>     |
|  38|[0x80003460]<br>0x000000000000000F|- rs2_w1_val == 536870912<br> - rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                 |[0x800009f8]:UKSTSA32 t6, t5, t4<br> [0x800009fc]:sd t6, 304(fp)<br>     |
|  39|[0x80003470]<br>0xEFFFDFFF00201000|- rs2_w1_val == 268435456<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                  |[0x80000a28]:UKSTSA32 t6, t5, t4<br> [0x80000a2c]:sd t6, 320(fp)<br>     |
|  40|[0x80003480]<br>0xF3FFFFFFFFFFFFFF|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4294934527<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                                                                         |[0x80000a5c]:UKSTSA32 t6, t5, t4<br> [0x80000a60]:sd t6, 336(fp)<br>     |
|  41|[0x80003490]<br>0x0000000055595555|- rs2_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000a90]:UKSTSA32 t6, t5, t4<br> [0x80000a94]:sd t6, 352(fp)<br>     |
|  42|[0x800034a0]<br>0x00000000C0FFFFFF|- rs2_w1_val == 33554432<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                                         |[0x80000abc]:UKSTSA32 t6, t5, t4<br> [0x80000ac0]:sd t6, 368(fp)<br>     |
|  43|[0x800034b0]<br>0x00000000FFDFFFFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                |[0x80000ae8]:UKSTSA32 t6, t5, t4<br> [0x80000aec]:sd t6, 384(fp)<br>     |
|  44|[0x800034c0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 8388608<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                             |[0x80000b14]:UKSTSA32 t6, t5, t4<br> [0x80000b18]:sd t6, 400(fp)<br>     |
|  45|[0x800034d0]<br>0x00000000FC7FFFFF|- rs2_w1_val == 4194304<br> - rs2_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                                                          |[0x80000b3c]:UKSTSA32 t6, t5, t4<br> [0x80000b40]:sd t6, 416(fp)<br>     |
|  46|[0x800034e0]<br>0x0000000059555555|- rs2_w1_val == 2097152<br> - rs1_w1_val == 512<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                    |[0x80000b6c]:UKSTSA32 t6, t5, t4<br> [0x80000b70]:sd t6, 432(fp)<br>     |
|  47|[0x800034f0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 1048576<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                 |[0x80000b94]:UKSTSA32 t6, t5, t4<br> [0x80000b98]:sd t6, 448(fp)<br>     |
|  48|[0x80003500]<br>0xFFEFFFFF00000420|- rs2_w1_val == 524288<br> - rs2_w0_val == 32<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                           |[0x80000bbc]:UKSTSA32 t6, t5, t4<br> [0x80000bc0]:sd t6, 464(fp)<br>     |
|  49|[0x80003510]<br>0xFDFBFFFFF000000B|- rs2_w1_val == 262144<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                            |[0x80000be4]:UKSTSA32 t6, t5, t4<br> [0x80000be8]:sd t6, 480(fp)<br>     |
|  50|[0x80003520]<br>0xFFF9FFFFFFFFFFF3|- rs2_w1_val == 131072<br> - rs2_w0_val == 4294967279<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                     |[0x80000c10]:UKSTSA32 t6, t5, t4<br> [0x80000c14]:sd t6, 496(fp)<br>     |
|  51|[0x80003530]<br>0x00FF0000FFF0000B|- rs2_w1_val == 65536<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                               |[0x80000c40]:UKSTSA32 t6, t5, t4<br> [0x80000c44]:sd t6, 512(fp)<br>     |
|  52|[0x80003540]<br>0x00000000FFFFFFFF|- rs1_w1_val == 3221225471<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                           |[0x80000c74]:UKSTSA32 t6, t5, t4<br> [0x80000c78]:sd t6, 528(fp)<br>     |
|  53|[0x80003550]<br>0x3C00000000010013|- rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000ca4]:UKSTSA32 t6, t5, t4<br> [0x80000ca8]:sd t6, 544(fp)<br>     |
|  54|[0x80003560]<br>0x3000000000208000|- rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000cd0]:UKSTSA32 t6, t5, t4<br> [0x80000cd4]:sd t6, 560(fp)<br>     |
|  55|[0x80003570]<br>0xFFBFF7FFFFFFFFFF|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000cf8]:UKSTSA32 t6, t5, t4<br> [0x80000cfc]:sd t6, 576(fp)<br>     |
|  56|[0x80003580]<br>0x000000000000080E|- rs1_w1_val == 8<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                                      |[0x80000d20]:UKSTSA32 t6, t5, t4<br> [0x80000d24]:sd t6, 592(fp)<br>     |
|  57|[0x80003590]<br>0x00003FFDFF0000FF|- rs2_w0_val == 4278190079<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                              |[0x80000d44]:UKSTSA32 t6, t5, t4<br> [0x80000d48]:sd t6, 608(fp)<br>     |
|  58|[0x800035a0]<br>0x00000000FFFFE01F|- rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000d6c]:UKSTSA32 t6, t5, t4<br> [0x80000d70]:sd t6, 624(fp)<br>     |
|  59|[0x800035b0]<br>0x0FFFFFF8FFFFE00F|- rs1_w1_val == 4294967287<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                               |[0x80000d98]:UKSTSA32 t6, t5, t4<br> [0x80000d9c]:sd t6, 640(fp)<br>     |
|  60|[0x800035c0]<br>0xFFFFFF7BFFC00007|- rs2_w1_val == 4<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                          |[0x80000dc0]:UKSTSA32 t6, t5, t4<br> [0x80000dc4]:sd t6, 656(fp)<br>     |
|  61|[0x800035d0]<br>0x00000000F0000001|- rs2_w0_val == 4026531839<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                |[0x80000dec]:UKSTSA32 t6, t5, t4<br> [0x80000df0]:sd t6, 672(fp)<br>     |
|  62|[0x800035e0]<br>0x000000000000040E|- rs2_w1_val == 32768<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                           |[0x80000e10]:UKSTSA32 t6, t5, t4<br> [0x80000e14]:sd t6, 688(fp)<br>     |
|  63|[0x800035f0]<br>0x07FFC000FFFC07FF|- rs2_w1_val == 16384<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                   |[0x80000e48]:UKSTSA32 t6, t5, t4<br> [0x80000e4c]:sd t6, 704(fp)<br>     |
|  64|[0x80003600]<br>0xFFFBDFFFFF000012|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000e70]:UKSTSA32 t6, t5, t4<br> [0x80000e74]:sd t6, 720(fp)<br>     |
|  65|[0x80003610]<br>0x0003F00000000021|- rs2_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000e94]:UKSTSA32 t6, t5, t4<br> [0x80000e98]:sd t6, 736(fp)<br>     |
|  66|[0x80003620]<br>0xFFFFF7EFFFFFFFFF|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000ec0]:UKSTSA32 t6, t5, t4<br> [0x80000ec4]:sd t6, 752(fp)<br>     |
|  67|[0x80003630]<br>0x0FFFFC00FFFFFFFF|- rs2_w1_val == 1024<br> - rs2_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                                                             |[0x80000ef0]:UKSTSA32 t6, t5, t4<br> [0x80000ef4]:sd t6, 768(fp)<br>     |
|  68|[0x80003640]<br>0x000006000040000E|- rs2_w1_val == 512<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                 |[0x80000f14]:UKSTSA32 t6, t5, t4<br> [0x80000f18]:sd t6, 784(fp)<br>     |
|  69|[0x80003650]<br>0x0001FF0000802000|- rs2_w1_val == 256<br> - rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                 |[0x80000f3c]:UKSTSA32 t6, t5, t4<br> [0x80000f40]:sd t6, 800(fp)<br>     |
|  70|[0x80003660]<br>0x001FFF80FFFFFFFF|- rs2_w1_val == 128<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                                                                                                                                                  |[0x80000f64]:UKSTSA32 t6, t5, t4<br> [0x80000f68]:sd t6, 816(fp)<br>     |
|  71|[0x80003670]<br>0xFFFFEFBFFFFFFFFF|- rs2_w1_val == 64<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                                                               |[0x80000f8c]:UKSTSA32 t6, t5, t4<br> [0x80000f90]:sd t6, 832(fp)<br>     |
|  72|[0x80003680]<br>0xFFFFFBDFFFFFFFFF|- rs2_w1_val == 32<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                                |[0x80000fb8]:UKSTSA32 t6, t5, t4<br> [0x80000fbc]:sd t6, 848(fp)<br>     |
|  73|[0x80003690]<br>0x00FFFFF8FFF01FFF|- rs2_w1_val == 8<br> - rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                      |[0x80000fe8]:UKSTSA32 t6, t5, t4<br> [0x80000fec]:sd t6, 864(fp)<br>     |
|  74|[0x800036a0]<br>0xFFFEFFFDFFFFFFFF|- rs2_w1_val == 2<br> - rs2_w0_val == 4294967167<br> - rs1_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                                 |[0x80001010]:UKSTSA32 t6, t5, t4<br> [0x80001014]:sd t6, 880(fp)<br>     |
|  75|[0x800036b0]<br>0x00FFFFFFFFFFE00B|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                               |[0x80001038]:UKSTSA32 t6, t5, t4<br> [0x8000103c]:sd t6, 896(fp)<br>     |
|  76|[0x800036c0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 64<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                |[0x8000105c]:UKSTSA32 t6, t5, t4<br> [0x80001060]:sd t6, 912(fp)<br>     |
|  77|[0x800036e0]<br>0x00000000EAAAAAAA|- rs2_w0_val == 2863311530<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                       |[0x800010a8]:UKSTSA32 t6, t5, t4<br> [0x800010ac]:sd t6, 944(fp)<br>     |
|  78|[0x800036f0]<br>0x0000000081FFFFFF|- rs2_w0_val == 2147483647<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                         |[0x800010c8]:UKSTSA32 t6, t5, t4<br> [0x800010cc]:sd t6, 960(fp)<br>     |
|  79|[0x80003700]<br>0xFF7FFFF7FFFFFFFF|- rs2_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                                                                      |[0x800010f0]:UKSTSA32 t6, t5, t4<br> [0x800010f4]:sd t6, 976(fp)<br>     |
|  80|[0x80003710]<br>0x00000000F8000009|- rs2_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001118]:UKSTSA32 t6, t5, t4<br> [0x8000111c]:sd t6, 992(fp)<br>     |
|  81|[0x80003720]<br>0x7FF00000FFF80000|- rs2_w0_val == 4294443007<br> - rs1_w1_val == 4293918719<br>                                                                                                                                                                                                                                                                                                       |[0x80001148]:UKSTSA32 t6, t5, t4<br> [0x8000114c]:sd t6, 1008(fp)<br>    |
|  82|[0x80003730]<br>0xFFFFF6FFFFFFFFFF|- rs2_w0_val == 4294836223<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001170]:UKSTSA32 t6, t5, t4<br> [0x80001174]:sd t6, 1024(fp)<br>    |
|  83|[0x80003740]<br>0xFFFBFEFFFFFFFFFF|- rs2_w0_val == 4294950911<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                       |[0x800011a4]:UKSTSA32 t6, t5, t4<br> [0x800011a8]:sd t6, 1040(fp)<br>    |
|  84|[0x80003750]<br>0x1FFC000000000201|- rs2_w0_val == 512<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                               |[0x800011c8]:UKSTSA32 t6, t5, t4<br> [0x800011cc]:sd t6, 1056(fp)<br>    |
|  85|[0x80003760]<br>0x00000000C00000FF|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                             |[0x800011f4]:UKSTSA32 t6, t5, t4<br> [0x800011f8]:sd t6, 1072(fp)<br>    |
|  86|[0x80003770]<br>0x0000000000000110|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                              |[0x8000121c]:UKSTSA32 t6, t5, t4<br> [0x80001220]:sd t6, 1088(fp)<br>    |
|  87|[0x80003780]<br>0x0FFFFFF5FFFFFFFF|- rs2_w0_val == 4294967295<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                       |[0x80001244]:UKSTSA32 t6, t5, t4<br> [0x80001248]:sd t6, 1104(fp)<br>    |
|  88|[0x80003790]<br>0x0000000008020000|- rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001270]:UKSTSA32 t6, t5, t4<br> [0x80001274]:sd t6, 1120(fp)<br>    |
|  89|[0x800037a0]<br>0x000000000000800C|- rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000129c]:UKSTSA32 t6, t5, t4<br> [0x800012a0]:sd t6, 1136(fp)<br>    |
|  90|[0x800037b0]<br>0xF7FEFFFFFFFFFFFF|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                      |[0x800012c8]:UKSTSA32 t6, t5, t4<br> [0x800012cc]:sd t6, 1152(fp)<br>    |
|  91|[0x800037c0]<br>0xFFBFBFFF01000011|- rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                                                                                                                      |[0x800012f0]:UKSTSA32 t6, t5, t4<br> [0x800012f4]:sd t6, 1168(fp)<br>    |
|  92|[0x800037d0]<br>0x00000000FFFFFFFF|- rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001314]:UKSTSA32 t6, t5, t4<br> [0x80001318]:sd t6, 1184(fp)<br>    |
|  93|[0x800037e0]<br>0xFFFF7FEF01000009|- rs1_w1_val == 4294934527<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001338]:UKSTSA32 t6, t5, t4<br> [0x8000133c]:sd t6, 1200(fp)<br>    |
|  94|[0x800037f0]<br>0x00000E0000000019|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001360]:UKSTSA32 t6, t5, t4<br> [0x80001364]:sd t6, 1216(fp)<br>    |
|  95|[0x80003800]<br>0xFFFFFFB6FFFFFFFF|- rs1_w1_val == 4294967231<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000138c]:UKSTSA32 t6, t5, t4<br> [0x80001390]:sd t6, 1232(fp)<br>    |
|  96|[0x80003810]<br>0x07FFFFFC00004005|- rs2_w0_val == 16384<br> - rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                                                                                                            |[0x800013b8]:UKSTSA32 t6, t5, t4<br> [0x800013bc]:sd t6, 1248(fp)<br>    |
|  97|[0x80003820]<br>0x00000006FFFFFFCB|- rs1_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                                      |[0x800013dc]:UKSTSA32 t6, t5, t4<br> [0x800013e0]:sd t6, 1264(fp)<br>    |
|  98|[0x80003830]<br>0x7FF00000FFFFFFFF|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001404]:UKSTSA32 t6, t5, t4<br> [0x80001408]:sd t6, 1280(fp)<br>    |
|  99|[0x80003840]<br>0x03FFFFEDFFFFFF07|- rs1_w1_val == 67108864<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                         |[0x8000142c]:UKSTSA32 t6, t5, t4<br> [0x80001430]:sd t6, 1296(fp)<br>    |
| 100|[0x80003850]<br>0x00000000FFFFFFFF|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000145c]:UKSTSA32 t6, t5, t4<br> [0x80001460]:sd t6, 1312(fp)<br>    |
| 101|[0x80003860]<br>0x0000FF00FFFFFFFF|- rs2_w0_val == 262144<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                |[0x80001484]:UKSTSA32 t6, t5, t4<br> [0x80001488]:sd t6, 1328(fp)<br>    |
| 102|[0x80003870]<br>0x00000000FFFFFFFF|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                           |[0x800014a8]:UKSTSA32 t6, t5, t4<br> [0x800014ac]:sd t6, 1344(fp)<br>    |
| 103|[0x80003880]<br>0x00001FF2FFFFFFFF|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                            |[0x800014d0]:UKSTSA32 t6, t5, t4<br> [0x800014d4]:sd t6, 1360(fp)<br>    |
| 104|[0x80003890]<br>0x00000FFC0010000E|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                            |[0x800014f4]:UKSTSA32 t6, t5, t4<br> [0x800014f8]:sd t6, 1376(fp)<br>    |
| 105|[0x800038a0]<br>0x000000F655555557|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                             |[0x8000151c]:UKSTSA32 t6, t5, t4<br> [0x80001520]:sd t6, 1392(fp)<br>    |
| 106|[0x800038b0]<br>0x00000000FFFFFFFF|- rs1_w1_val == 128<br> - rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                                                              |[0x8000154c]:UKSTSA32 t6, t5, t4<br> [0x80001550]:sd t6, 1408(fp)<br>    |
| 107|[0x800038c0]<br>0x0000000000000049|- rs2_w1_val == 4294959103<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                |[0x80001574]:UKSTSA32 t6, t5, t4<br> [0x80001578]:sd t6, 1424(fp)<br>    |
| 108|[0x800038d0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967287<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                |[0x8000159c]:UKSTSA32 t6, t5, t4<br> [0x800015a0]:sd t6, 1440(fp)<br>    |
| 109|[0x800038e0]<br>0xFFFFFFF0FFFFFFFF|- rs1_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                                                                                      |[0x800015bc]:UKSTSA32 t6, t5, t4<br> [0x800015c0]:sd t6, 1456(fp)<br>    |
| 110|[0x800038f0]<br>0x00000000FF800012|- rs1_w0_val == 4286578687<br>                                                                                                                                                                                                                                                                                                                                      |[0x800015e4]:UKSTSA32 t6, t5, t4<br> [0x800015e8]:sd t6, 1472(fp)<br>    |
| 111|[0x80003900]<br>0x00000000FFFFFFFF|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001624]:UKSTSA32 t6, t5, t4<br> [0x80001628]:sd t6, 1488(fp)<br>    |
| 112|[0x80003910]<br>0x00000000F800000B|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001648]:UKSTSA32 t6, t5, t4<br> [0x8000164c]:sd t6, 1504(fp)<br>    |
| 113|[0x80003920]<br>0xFFFFFFDFFFFFFFFF|- rs1_w0_val == 4290772991<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000166c]:UKSTSA32 t6, t5, t4<br> [0x80001670]:sd t6, 1520(fp)<br>    |
| 114|[0x80003930]<br>0xFFFF7FFBFFFFFFFF|- rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                      |[0x800016a0]:UKSTSA32 t6, t5, t4<br> [0x800016a4]:sd t6, 1536(fp)<br>    |
| 115|[0x80003940]<br>0xFBFEFFFFFFFFFFFF|- rs2_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                                                                                      |[0x800016d8]:UKSTSA32 t6, t5, t4<br> [0x800016dc]:sd t6, 1552(fp)<br>    |
| 116|[0x80003950]<br>0xFFFFFFB3FFF803FF|- rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001700]:UKSTSA32 t6, t5, t4<br> [0x80001704]:sd t6, 1568(fp)<br>    |
| 117|[0x80003960]<br>0xFFFB7FFFFFFFFEFF|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000172c]:UKSTSA32 t6, t5, t4<br> [0x80001730]:sd t6, 1584(fp)<br>    |
| 118|[0x80003970]<br>0x0000000EFFFFFFFF|- rs2_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001754]:UKSTSA32 t6, t5, t4<br> [0x80001758]:sd t6, 1600(fp)<br>    |
| 119|[0x80003980]<br>0x00000000FFFFFFFF|- rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001780]:UKSTSA32 t6, t5, t4<br> [0x80001784]:sd t6, 1616(fp)<br>    |
| 120|[0x80003990]<br>0x00000000FFFFFFF0|- rs2_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017a8]:UKSTSA32 t6, t5, t4<br> [0x800017ac]:sd t6, 1632(fp)<br>    |
| 121|[0x800039a0]<br>0x00000000FFFFF7FF|- rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017d4]:UKSTSA32 t6, t5, t4<br> [0x800017d8]:sd t6, 1648(fp)<br>    |
| 122|[0x800039b0]<br>0x00000000FFFFFFFF|- rs1_w0_val == 4294966271<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017f4]:UKSTSA32 t6, t5, t4<br> [0x800017f8]:sd t6, 1664(fp)<br>    |
| 123|[0x800039c0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967293<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                        |[0x80001818]:UKSTSA32 t6, t5, t4<br> [0x8000181c]:sd t6, 1680(fp)<br>    |
| 124|[0x800039d0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                        |[0x8000183c]:UKSTSA32 t6, t5, t4<br> [0x80001840]:sd t6, 1696(fp)<br>    |
| 125|[0x800039e0]<br>0x00000002FFFFFFFF|- rs2_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000185c]:UKSTSA32 t6, t5, t4<br> [0x80001860]:sd t6, 1712(fp)<br>    |
| 126|[0x800039f0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001888]:UKSTSA32 t6, t5, t4<br> [0x8000188c]:sd t6, 1728(fp)<br>    |
| 127|[0x80003a00]<br>0x00000000FFFFFFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                                                                        |[0x800018b0]:UKSTSA32 t6, t5, t4<br> [0x800018b4]:sd t6, 1744(fp)<br>    |
| 128|[0x80003a10]<br>0x00000000FFFFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                                       |[0x800018e4]:UKSTSA32 t6, t5, t4<br> [0x800018e8]:sd t6, 1760(fp)<br>    |
| 129|[0x80003a20]<br>0x07FFFFFC08000000|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                        |[0x80001908]:UKSTSA32 t6, t5, t4<br> [0x8000190c]:sd t6, 1776(fp)<br>    |
| 130|[0x80003a30]<br>0x00000000FFFFFFFF|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000192c]:UKSTSA32 t6, t5, t4<br> [0x80001930]:sd t6, 1792(fp)<br>    |
| 131|[0x80003a40]<br>0x0000000080004000|- rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001950]:UKSTSA32 t6, t5, t4<br> [0x80001954]:sd t6, 1808(fp)<br>    |
| 132|[0x80003a50]<br>0x0FFFFFC000060000|- rs2_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000197c]:UKSTSA32 t6, t5, t4<br> [0x80001980]:sd t6, 1824(fp)<br>    |
| 133|[0x80003a60]<br>0xFEFFFFFC00010020|- rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                                           |[0x800019a4]:UKSTSA32 t6, t5, t4<br> [0x800019a8]:sd t6, 1840(fp)<br>    |
| 134|[0x80003a70]<br>0xFFFF7FEE00001003|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                            |[0x800019cc]:UKSTSA32 t6, t5, t4<br> [0x800019d0]:sd t6, 1856(fp)<br>    |
| 135|[0x80003a80]<br>0x03FF000004080000|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                                          |[0x800019f4]:UKSTSA32 t6, t5, t4<br> [0x800019f8]:sd t6, 1872(fp)<br>    |
| 136|[0x80003a90]<br>0x00000000FFFFDFFF|- rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                              |[0x80001a18]:UKSTSA32 t6, t5, t4<br> [0x80001a1c]:sd t6, 1888(fp)<br>    |
| 137|[0x80003ac0]<br>0x00000000D5555554|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001ab0]:UKSTSA32 t6, t5, t4<br> [0x80001ab4]:sd t6, 1936(fp)<br>    |
