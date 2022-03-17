
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a20')]      |
| SIG_REGION                | [('0x80003210', '0x80003c50', '328 dwords')]      |
| COV_LABELS                | kslra32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra32-01.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 367      |
| Total Signature Updates   | 326      |
| STAT1                     | 159      |
| STAT2                     | 4      |
| STAT3                     | 1     |
| STAT4                     | 163     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d88]:KSLRA32 t6, t5, t4
      [0x80000d8c]:sd t6, 848(a0)
 -- Signature Address: 0x80003670 Data: 0x8000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == -536870913
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014d0]:KSLRA32 t6, t5, t4
      [0x800014d4]:sd t6, 1712(a0)
 -- Signature Address: 0x800039d0 Data: 0x000000007FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 281474976710656
      - rs1_w1_val == 0
      - rs1_w0_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e8]:KSLRA32 t6, t5, t4
      [0x800019ec]:sd t6, 256(a0)
 -- Signature Address: 0x80003c30 Data: 0x0200000000000010
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -562949953421313
      - rs1_w1_val == 67108864
      - rs1_w0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a14]:KSLRA32 t6, t5, t4
      [0x80001a18]:sd t6, 272(a0)
 -- Signature Address: 0x80003c40 Data: 0x1FFFFFFF00001000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -8796093022209
      - rs1_w0_val == 8192






```

## Details of STAT3

```
[0x80001784]:KSLRA32 t6, t5, t4
[0x80001788]:addi a0, a0, 2032
[0x8000178c]:sd t6, 2032(a0)
[0x80001790]:sd t5, 2040(a0)
[0x80001794]:auipc a0, 2
[0x80001798]:addi a0, a0, 908
[0x8000179c]:lui t5, 983040
[0x800017a0]:addiw t5, t5, 4095
[0x800017a4]:lui t4, 16



```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra32', 'rs1 : x23', 'rs2 : x23', 'rd : x2', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800003cc]:KSLRA32 sp, s7, s7
	-[0x800003d0]:sd sp, 0(fp)
Current Store : [0x800003d4] : sd s7, 8(fp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x26', 'rs2 : x26', 'rd : x26', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_w1_val == 2147483647', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800003f4]:KSLRA32 s10, s10, s10
	-[0x800003f8]:sd s10, 16(fp)
Current Store : [0x800003fc] : sd s10, 24(fp) -- Store: [0x80003228]:0x3FFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -4611686018427387905', 'rs1_w1_val == 512', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000041c]:KSLRA32 t5, a5, a4
	-[0x80000420]:sd t5, 32(fp)
Current Store : [0x80000424] : sd a5, 40(fp) -- Store: [0x80003238]:0x00000200AAAAAAAA




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rd : x1', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_w1_val == 4194304', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000444]:KSLRA32 ra, ra, s2
	-[0x80000448]:sd ra, 48(fp)
Current Store : [0x8000044c] : sd ra, 56(fp) -- Store: [0x80003248]:0x00200000FFFFFFFB




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rd : x24', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_w1_val == 2097152', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000046c]:KSLRA32 s8, a0, s8
	-[0x80000470]:sd s8, 64(fp)
Current Store : [0x80000474] : sd a0, 72(fp) -- Store: [0x80003258]:0x0020000000100000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x15', 'rs2_val == -576460752303423489', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000494]:KSLRA32 a5, s5, a1
	-[0x80000498]:sd a5, 80(fp)
Current Store : [0x8000049c] : sd s5, 88(fp) -- Store: [0x80003268]:0x00400000FFFFFBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x16', 'rs2_val == -288230376151711745', 'rs1_w1_val == 8', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800004b4]:KSLRA32 a6, s6, s11
	-[0x800004b8]:sd a6, 96(fp)
Current Store : [0x800004bc] : sd s6, 104(fp) -- Store: [0x80003278]:0x0000000840000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x18', 'rs2_val == -144115188075855873', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800004d8]:KSLRA32 s2, s3, a0
	-[0x800004dc]:sd s2, 112(fp)
Current Store : [0x800004e0] : sd s3, 120(fp) -- Store: [0x80003288]:0x4000000000000040




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x31', 'rs2_val == -72057594037927937', 'rs1_w1_val == 32', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000500]:KSLRA32 t6, a7, s4
	-[0x80000504]:sd t6, 128(fp)
Current Store : [0x80000508] : sd a7, 136(fp) -- Store: [0x80003298]:0x00000020FFFFDFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x27', 'rs2_val == -36028797018963969']
Last Code Sequence : 
	-[0x80000524]:KSLRA32 s11, a3, s3
	-[0x80000528]:sd s11, 144(fp)
Current Store : [0x8000052c] : sd a3, 152(fp) -- Store: [0x800032a8]:0x00000020FFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x0', 'rd : x7', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000540]:KSLRA32 t2, s2, zero
	-[0x80000544]:sd t2, 160(fp)
Current Store : [0x80000548] : sd s2, 168(fp) -- Store: [0x800032b8]:0x0100000040000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x16', 'rd : x21', 'rs2_val == -9007199254740993', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000568]:KSLRA32 s5, a4, a6
	-[0x8000056c]:sd s5, 176(fp)
Current Store : [0x80000570] : sd a4, 184(fp) -- Store: [0x800032c8]:0x4000000000002000




Last Coverpoint : ['rs1 : x7', 'rs2 : x17', 'rd : x13', 'rs2_val == -4503599627370497', 'rs1_w1_val == -16777217', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000590]:KSLRA32 a3, t2, a7
	-[0x80000594]:sd a3, 192(fp)
Current Store : [0x80000598] : sd t2, 200(fp) -- Store: [0x800032d8]:0xFEFFFFFF00000200




Last Coverpoint : ['rs1 : x4', 'rs2 : x15', 'rd : x10', 'rs2_val == -2251799813685249', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800005c0]:KSLRA32 a0, tp, a5
	-[0x800005c4]:sd a0, 208(fp)
Current Store : [0x800005c8] : sd tp, 216(fp) -- Store: [0x800032e8]:0xFFFDFFFF55555555




Last Coverpoint : ['rs1 : x12', 'rs2 : x9', 'rd : x20', 'rs2_val == -1125899906842625', 'rs1_w1_val == 131072', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800005e8]:KSLRA32 s4, a2, s1
	-[0x800005ec]:sd s4, 224(fp)
Current Store : [0x800005f0] : sd a2, 232(fp) -- Store: [0x800032f8]:0x00020000FFF7FFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x14', 'rs2_val == -562949953421313', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000060c]:KSLRA32 a4, zero, t5
	-[0x80000610]:sd a4, 240(fp)
Current Store : [0x80000614] : sd zero, 248(fp) -- Store: [0x80003308]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x5', 'rd : x3', 'rs2_val == -281474976710657', 'rs1_w1_val == 8388608', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000638]:KSLRA32 gp, t1, t0
	-[0x8000063c]:sd gp, 256(fp)
Current Store : [0x80000640] : sd t1, 264(fp) -- Store: [0x80003318]:0x00800000FFDFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x12', 'rs2_val == -140737488355329', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000670]:KSLRA32 a2, t4, sp
	-[0x80000674]:sd a2, 0(a0)
Current Store : [0x80000678] : sd t4, 8(a0) -- Store: [0x80003328]:0xC0000000FFFFF7FF




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x5', 'rs2_val == -70368744177665', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000694]:KSLRA32 t0, s9, a2
	-[0x80000698]:sd t0, 16(a0)
Current Store : [0x8000069c] : sd s9, 24(a0) -- Store: [0x80003338]:0xBFFFFFFFFFFFFFF9




Last Coverpoint : ['rs1 : x9', 'rs2 : x21', 'rd : x8', 'rs2_val == -35184372088833', 'rs1_w1_val == -65', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800006b8]:KSLRA32 fp, s1, s5
	-[0x800006bc]:sd fp, 32(a0)
Current Store : [0x800006c0] : sd s1, 40(a0) -- Store: [0x80003348]:0xFFFFFFBF7FFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x6', 'rs2_val == -17592186044417', 'rs1_w1_val == 16384', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800006e0]:KSLRA32 t1, fp, ra
	-[0x800006e4]:sd t1, 48(a0)
Current Store : [0x800006e8] : sd fp, 56(a0) -- Store: [0x80003358]:0x00004000DFFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x29', 'rd : x0', 'rs2_val == -8796093022209']
Last Code Sequence : 
	-[0x8000070c]:KSLRA32 zero, s11, t4
	-[0x80000710]:sd zero, 64(a0)
Current Store : [0x80000714] : sd s11, 72(a0) -- Store: [0x80003368]:0x3FFFFFFF00002000




Last Coverpoint : ['rs1 : x30', 'rs2 : x3', 'rd : x25', 'rs2_val == -4398046511105', 'rs1_w1_val == -134217729', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000734]:KSLRA32 s9, t5, gp
	-[0x80000738]:sd s9, 80(a0)
Current Store : [0x8000073c] : sd t5, 88(a0) -- Store: [0x80003378]:0xF7FFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x17', 'rs2_val == -2199023255553', 'rs1_w1_val == 268435456', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000075c]:KSLRA32 a7, sp, s6
	-[0x80000760]:sd a7, 96(a0)
Current Store : [0x80000764] : sd sp, 104(a0) -- Store: [0x80003388]:0x1000000000800000




Last Coverpoint : ['rs1 : x11', 'rs2 : x25', 'rd : x28', 'rs2_val == -1099511627777', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000784]:KSLRA32 t3, a1, s9
	-[0x80000788]:sd t3, 112(a0)
Current Store : [0x8000078c] : sd a1, 120(a0) -- Store: [0x80003398]:0x00000200FF7FFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x7', 'rd : x4', 'rs2_val == -549755813889', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800007a8]:KSLRA32 tp, t6, t2
	-[0x800007ac]:sd tp, 128(a0)
Current Store : [0x800007b0] : sd t6, 136(a0) -- Store: [0x800033a8]:0x0000000500000004




Last Coverpoint : ['rs1 : x3', 'rs2 : x28', 'rd : x9', 'rs2_val == -274877906945', 'rs1_w1_val == 256', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800007cc]:KSLRA32 s1, gp, t3
	-[0x800007d0]:sd s1, 144(a0)
Current Store : [0x800007d4] : sd gp, 152(a0) -- Store: [0x800033b8]:0x0000010000000020




Last Coverpoint : ['rs1 : x20', 'rs2 : x13', 'rd : x23', 'rs2_val == -137438953473', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800007f0]:KSLRA32 s7, s4, a3
	-[0x800007f4]:sd s7, 160(a0)
Current Store : [0x800007f8] : sd s4, 168(a0) -- Store: [0x800033c8]:0xFFFFFFFD00000040




Last Coverpoint : ['rs1 : x16', 'rs2 : x4', 'rd : x22', 'rs2_val == -68719476737', 'rs1_w1_val == -536870913', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000814]:KSLRA32 s6, a6, tp
	-[0x80000818]:sd s6, 176(a0)
Current Store : [0x8000081c] : sd a6, 184(a0) -- Store: [0x800033d8]:0xDFFFFFFFFFFFFFBF




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x11', 'rs2_val == -34359738369', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000083c]:KSLRA32 a1, t0, t6
	-[0x80000840]:sd a1, 192(a0)
Current Store : [0x80000844] : sd t0, 200(a0) -- Store: [0x800033e8]:0x04000000FFFFFFF8




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x19', 'rs2_val == -17179869185', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000864]:KSLRA32 s3, s8, fp
	-[0x80000868]:sd s3, 208(a0)
Current Store : [0x8000086c] : sd s8, 216(a0) -- Store: [0x800033f8]:0xFFFFDFFF00000040




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x29', 'rs2_val == -8589934593', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000088c]:KSLRA32 t4, t3, t1
	-[0x80000890]:sd t4, 224(a0)
Current Store : [0x80000894] : sd t3, 232(a0) -- Store: [0x80003408]:0x0002000000001000




Last Coverpoint : ['rs2_val == -4294967297', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800008bc]:KSLRA32 t6, t5, t4
	-[0x800008c0]:sd t6, 240(a0)
Current Store : [0x800008c4] : sd t5, 248(a0) -- Store: [0x80003418]:0x10000000FFFFBFFF




Last Coverpoint : ['rs2_val == -2147483649', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800008e0]:KSLRA32 t6, t5, t4
	-[0x800008e4]:sd t6, 256(a0)
Current Store : [0x800008e8] : sd t5, 264(a0) -- Store: [0x80003428]:0x0000800000800000




Last Coverpoint : ['rs2_val == -1073741825']
Last Code Sequence : 
	-[0x80000900]:KSLRA32 t6, t5, t4
	-[0x80000904]:sd t6, 272(a0)
Current Store : [0x80000908] : sd t5, 280(a0) -- Store: [0x80003438]:0x0000000900000200




Last Coverpoint : ['rs2_val == -536870913']
Last Code Sequence : 
	-[0x80000924]:KSLRA32 t6, t5, t4
	-[0x80000928]:sd t6, 288(a0)
Current Store : [0x8000092c] : sd t5, 296(a0) -- Store: [0x80003448]:0xFFFFFFF9FF7FFFFF




Last Coverpoint : ['rs2_val == -268435457']
Last Code Sequence : 
	-[0x80000948]:KSLRA32 t6, t5, t4
	-[0x8000094c]:sd t6, 304(a0)
Current Store : [0x80000950] : sd t5, 312(a0) -- Store: [0x80003458]:0x0000000555555555




Last Coverpoint : ['rs2_val == -134217729', 'rs1_w1_val == 65536', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000968]:KSLRA32 t6, t5, t4
	-[0x8000096c]:sd t6, 320(a0)
Current Store : [0x80000970] : sd t5, 328(a0) -- Store: [0x80003468]:0x0001000000000400




Last Coverpoint : ['rs2_val == -67108865']
Last Code Sequence : 
	-[0x80000984]:KSLRA32 t6, t5, t4
	-[0x80000988]:sd t6, 336(a0)
Current Store : [0x8000098c] : sd t5, 344(a0) -- Store: [0x80003478]:0xFFFFFFF640000000




Last Coverpoint : ['rs2_val == -33554433']
Last Code Sequence : 
	-[0x800009a4]:KSLRA32 t6, t5, t4
	-[0x800009a8]:sd t6, 352(a0)
Current Store : [0x800009ac] : sd t5, 360(a0) -- Store: [0x80003488]:0xFFFFFFFD00000006




Last Coverpoint : ['rs2_val == -16777217', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800009c4]:KSLRA32 t6, t5, t4
	-[0x800009c8]:sd t6, 368(a0)
Current Store : [0x800009cc] : sd t5, 376(a0) -- Store: [0x80003498]:0x0000004000000020




Last Coverpoint : ['rs2_val == -8388609', 'rs1_w1_val == 16', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800009e8]:KSLRA32 t6, t5, t4
	-[0x800009ec]:sd t6, 384(a0)
Current Store : [0x800009f0] : sd t5, 392(a0) -- Store: [0x800034a8]:0x00000010FFBFFFFF




Last Coverpoint : ['rs2_val == -4194305', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80000a08]:KSLRA32 t6, t5, t4
	-[0x80000a0c]:sd t6, 400(a0)
Current Store : [0x80000a10] : sd t5, 408(a0) -- Store: [0x800034b8]:0xFFEFFFFFFFFFFFF7




Last Coverpoint : ['rs2_val == -2097153', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000a28]:KSLRA32 t6, t5, t4
	-[0x80000a2c]:sd t6, 416(a0)
Current Store : [0x80000a30] : sd t5, 424(a0) -- Store: [0x800034c8]:0x0000002000000080




Last Coverpoint : ['rs2_val == -1048577', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80000a4c]:KSLRA32 t6, t5, t4
	-[0x80000a50]:sd t6, 432(a0)
Current Store : [0x80000a54] : sd t5, 440(a0) -- Store: [0x800034d8]:0xFDFFFFFF00000005




Last Coverpoint : ['rs2_val == -524289', 'rs1_w1_val == -67108865', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000a70]:KSLRA32 t6, t5, t4
	-[0x80000a74]:sd t6, 448(a0)
Current Store : [0x80000a78] : sd t5, 456(a0) -- Store: [0x800034e8]:0xFBFFFFFF00000100




Last Coverpoint : ['rs2_val == -262145', 'rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80000a98]:KSLRA32 t6, t5, t4
	-[0x80000a9c]:sd t6, 464(a0)
Current Store : [0x80000aa0] : sd t5, 472(a0) -- Store: [0x800034f8]:0xFF7FFFFFFFFFF7FF




Last Coverpoint : ['rs2_val == -131073', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000abc]:KSLRA32 t6, t5, t4
	-[0x80000ac0]:sd t6, 480(a0)
Current Store : [0x80000ac4] : sd t5, 488(a0) -- Store: [0x80003508]:0x0040000000400000




Last Coverpoint : ['rs2_val == -65537', 'rs1_w1_val == -65537', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000ae0]:KSLRA32 t6, t5, t4
	-[0x80000ae4]:sd t6, 496(a0)
Current Store : [0x80000ae8] : sd t5, 504(a0) -- Store: [0x80003518]:0xFFFEFFFFFDFFFFFF




Last Coverpoint : ['rs2_val == -32769', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80000b00]:KSLRA32 t6, t5, t4
	-[0x80000b04]:sd t6, 512(a0)
Current Store : [0x80000b08] : sd t5, 520(a0) -- Store: [0x80003528]:0xFFFFFFDF00000006




Last Coverpoint : ['rs2_val == -16385']
Last Code Sequence : 
	-[0x80000b20]:KSLRA32 t6, t5, t4
	-[0x80000b24]:sd t6, 528(a0)
Current Store : [0x80000b28] : sd t5, 536(a0) -- Store: [0x80003538]:0x0040000040000000




Last Coverpoint : ['rs2_val == -8193']
Last Code Sequence : 
	-[0x80000b40]:KSLRA32 t6, t5, t4
	-[0x80000b44]:sd t6, 544(a0)
Current Store : [0x80000b48] : sd t5, 552(a0) -- Store: [0x80003548]:0xFEFFFFFFFFFFFFF9




Last Coverpoint : ['rs2_val == -4097', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000b68]:KSLRA32 t6, t5, t4
	-[0x80000b6c]:sd t6, 560(a0)
Current Store : [0x80000b70] : sd t5, 568(a0) -- Store: [0x80003558]:0xFEFFFFFF00010000




Last Coverpoint : ['rs2_val == -2049', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000b8c]:KSLRA32 t6, t5, t4
	-[0x80000b90]:sd t6, 576(a0)
Current Store : [0x80000b94] : sd t5, 584(a0) -- Store: [0x80003568]:0x00000080FFFFDFFF




Last Coverpoint : ['rs2_val == -1025', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000bac]:KSLRA32 t6, t5, t4
	-[0x80000bb0]:sd t6, 592(a0)
Current Store : [0x80000bb4] : sd t5, 600(a0) -- Store: [0x80003578]:0x00000800FFFFFFF7




Last Coverpoint : ['rs2_val == -513']
Last Code Sequence : 
	-[0x80000bc8]:KSLRA32 t6, t5, t4
	-[0x80000bcc]:sd t6, 608(a0)
Current Store : [0x80000bd0] : sd t5, 616(a0) -- Store: [0x80003588]:0xFDFFFFFFC0000000




Last Coverpoint : ['rs2_val == -257', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000bf0]:KSLRA32 t6, t5, t4
	-[0x80000bf4]:sd t6, 624(a0)
Current Store : [0x80000bf8] : sd t5, 632(a0) -- Store: [0x80003598]:0x01000000FFFF7FFF




Last Coverpoint : ['rs2_val == -129', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80000c0c]:KSLRA32 t6, t5, t4
	-[0x80000c10]:sd t6, 640(a0)
Current Store : [0x80000c14] : sd t5, 648(a0) -- Store: [0x800035a8]:0xFFFFFFEF00000080




Last Coverpoint : ['rs2_val == -65', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000c2c]:KSLRA32 t6, t5, t4
	-[0x80000c30]:sd t6, 656(a0)
Current Store : [0x80000c34] : sd t5, 664(a0) -- Store: [0x800035b8]:0x40000000FFFFFDFF




Last Coverpoint : ['rs2_val == -33']
Last Code Sequence : 
	-[0x80000c4c]:KSLRA32 t6, t5, t4
	-[0x80000c50]:sd t6, 672(a0)
Current Store : [0x80000c54] : sd t5, 680(a0) -- Store: [0x800035c8]:0xFF7FFFFF00000004




Last Coverpoint : ['rs2_val == -17']
Last Code Sequence : 
	-[0x80000c68]:KSLRA32 t6, t5, t4
	-[0x80000c6c]:sd t6, 688(a0)
Current Store : [0x80000c70] : sd t5, 696(a0) -- Store: [0x800035d8]:0xFFFFFFEF00010000




Last Coverpoint : ['rs2_val == -9']
Last Code Sequence : 
	-[0x80000c84]:KSLRA32 t6, t5, t4
	-[0x80000c88]:sd t6, 704(a0)
Current Store : [0x80000c8c] : sd t5, 712(a0) -- Store: [0x800035e8]:0x0000000500000020




Last Coverpoint : ['rs2_val == -5', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000ca0]:KSLRA32 t6, t5, t4
	-[0x80000ca4]:sd t6, 720(a0)
Current Store : [0x80000ca8] : sd t5, 728(a0) -- Store: [0x800035f8]:0x0000000200000400




Last Coverpoint : ['rs2_val == -3', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000cbc]:KSLRA32 t6, t5, t4
	-[0x80000cc0]:sd t6, 736(a0)
Current Store : [0x80000cc4] : sd t5, 744(a0) -- Store: [0x80003608]:0x0000080000000001




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x80000cdc]:KSLRA32 t6, t5, t4
	-[0x80000ce0]:sd t6, 752(a0)
Current Store : [0x80000ce4] : sd t5, 760(a0) -- Store: [0x80003618]:0x00000003FFBFFFFF




Last Coverpoint : ['rs2_val == -9223372036854775808', 'rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80000cf4]:KSLRA32 t6, t5, t4
	-[0x80000cf8]:sd t6, 768(a0)
Current Store : [0x80000cfc] : sd t5, 776(a0) -- Store: [0x80003628]:0xFFFFFFFFC0000000




Last Coverpoint : ['rs2_val == 4611686018427387904', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000d18]:KSLRA32 t6, t5, t4
	-[0x80000d1c]:sd t6, 784(a0)
Current Store : [0x80000d20] : sd t5, 792(a0) -- Store: [0x80003638]:0xFBFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_val == 262144', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d34]:KSLRA32 t6, t5, t4
	-[0x80000d38]:sd t6, 800(a0)
Current Store : [0x80000d3c] : sd t5, 808(a0) -- Store: [0x80003648]:0xC000000000000010




Last Coverpoint : ['rs2_val == 8192', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d50]:KSLRA32 t6, t5, t4
	-[0x80000d54]:sd t6, 816(a0)
Current Store : [0x80000d58] : sd t5, 824(a0) -- Store: [0x80003658]:0x0000000600000008




Last Coverpoint : ['rs2_val == 4194304', 'rs1_w1_val == -5', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d6c]:KSLRA32 t6, t5, t4
	-[0x80000d70]:sd t6, 832(a0)
Current Store : [0x80000d74] : sd t5, 840(a0) -- Store: [0x80003668]:0xFFFFFFFB00000002




Last Coverpoint : ['opcode : kslra32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == -536870913', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000d88]:KSLRA32 t6, t5, t4
	-[0x80000d8c]:sd t6, 848(a0)
Current Store : [0x80000d90] : sd t5, 856(a0) -- Store: [0x80003678]:0xDFFFFFFF00000000




Last Coverpoint : ['rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000dc0]:KSLRA32 t6, t5, t4
	-[0x80000dc4]:sd t6, 864(a0)
Current Store : [0x80000dc8] : sd t5, 872(a0) -- Store: [0x80003688]:0xFFFFFFF8FDFFFFFF




Last Coverpoint : ['rs2_val == 2305843009213693952', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000de0]:KSLRA32 t6, t5, t4
	-[0x80000de4]:sd t6, 880(a0)
Current Store : [0x80000de8] : sd t5, 888(a0) -- Store: [0x80003698]:0x0200000000000080




Last Coverpoint : ['rs2_val == 1152921504606846976', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000e00]:KSLRA32 t6, t5, t4
	-[0x80000e04]:sd t6, 896(a0)
Current Store : [0x80000e08] : sd t5, 904(a0) -- Store: [0x800036a8]:0xFFFFFFF8FBFFFFFF




Last Coverpoint : ['rs2_val == 576460752303423488', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000e2c]:KSLRA32 t6, t5, t4
	-[0x80000e30]:sd t6, 912(a0)
Current Store : [0x80000e34] : sd t5, 920(a0) -- Store: [0x800036b8]:0x00002000FFFFBFFF




Last Coverpoint : ['rs2_val == 288230376151711744']
Last Code Sequence : 
	-[0x80000e48]:KSLRA32 t6, t5, t4
	-[0x80000e4c]:sd t6, 928(a0)
Current Store : [0x80000e50] : sd t5, 936(a0) -- Store: [0x800036c8]:0xFFFFFFFFFDFFFFFF




Last Coverpoint : ['rs2_val == 144115188075855872', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000e6c]:KSLRA32 t6, t5, t4
	-[0x80000e70]:sd t6, 944(a0)
Current Store : [0x80000e74] : sd t5, 952(a0) -- Store: [0x800036d8]:0xFFFF7FFF00000009




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x80000e8c]:KSLRA32 t6, t5, t4
	-[0x80000e90]:sd t6, 960(a0)
Current Store : [0x80000e94] : sd t5, 968(a0) -- Store: [0x800036e8]:0x00000007FFFFFFF8




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x80000eac]:KSLRA32 t6, t5, t4
	-[0x80000eb0]:sd t6, 976(a0)
Current Store : [0x80000eb4] : sd t5, 984(a0) -- Store: [0x800036f8]:0x0000008000000080




Last Coverpoint : ['rs2_val == 18014398509481984', 'rs1_w1_val == -16385', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000ecc]:KSLRA32 t6, t5, t4
	-[0x80000ed0]:sd t6, 992(a0)
Current Store : [0x80000ed4] : sd t5, 1000(a0) -- Store: [0x80003708]:0xFFFFBFFF00200000




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80000ef0]:KSLRA32 t6, t5, t4
	-[0x80000ef4]:sd t6, 1008(a0)
Current Store : [0x80000ef8] : sd t5, 1016(a0) -- Store: [0x80003718]:0x3FFFFFFF00200000




Last Coverpoint : ['rs2_val == 4503599627370496', 'rs1_w1_val == -2', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000f14]:KSLRA32 t6, t5, t4
	-[0x80000f18]:sd t6, 1024(a0)
Current Store : [0x80000f1c] : sd t5, 1032(a0) -- Store: [0x80003728]:0xFFFFFFFEFFFBFFFF




Last Coverpoint : ['rs2_val == 2251799813685248', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000f34]:KSLRA32 t6, t5, t4
	-[0x80000f38]:sd t6, 1040(a0)
Current Store : [0x80000f3c] : sd t5, 1048(a0) -- Store: [0x80003738]:0xFFFFFFFEFFFFFFFB




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x80000f54]:KSLRA32 t6, t5, t4
	-[0x80000f58]:sd t6, 1056(a0)
Current Store : [0x80000f5c] : sd t5, 1064(a0) -- Store: [0x80003748]:0x0000000600000004




Last Coverpoint : ['rs2_val == 562949953421312', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000f74]:KSLRA32 t6, t5, t4
	-[0x80000f78]:sd t6, 1072(a0)
Current Store : [0x80000f7c] : sd t5, 1080(a0) -- Store: [0x80003758]:0xFFEFFFFFFFFFFFEF




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80000f98]:KSLRA32 t6, t5, t4
	-[0x80000f9c]:sd t6, 1088(a0)
Current Store : [0x80000fa0] : sd t5, 1096(a0) -- Store: [0x80003768]:0xFFEFFFFFFF7FFFFF




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80000fb8]:KSLRA32 t6, t5, t4
	-[0x80000fbc]:sd t6, 1104(a0)
Current Store : [0x80000fc0] : sd t5, 1112(a0) -- Store: [0x80003778]:0x0000010000000004




Last Coverpoint : ['rs2_val == 70368744177664', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000fdc]:KSLRA32 t6, t5, t4
	-[0x80000fe0]:sd t6, 1120(a0)
Current Store : [0x80000fe4] : sd t5, 1128(a0) -- Store: [0x80003788]:0x000800003FFFFFFF




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x80001000]:KSLRA32 t6, t5, t4
	-[0x80001004]:sd t6, 1136(a0)
Current Store : [0x80001008] : sd t5, 1144(a0) -- Store: [0x80003798]:0x7FFFFFFF40000000




Last Coverpoint : ['rs2_val == 17592186044416']
Last Code Sequence : 
	-[0x80001024]:KSLRA32 t6, t5, t4
	-[0x80001028]:sd t6, 1152(a0)
Current Store : [0x8000102c] : sd t5, 1160(a0) -- Store: [0x800037a8]:0x010000007FFFFFFF




Last Coverpoint : ['rs2_val == 8796093022208', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80001048]:KSLRA32 t6, t5, t4
	-[0x8000104c]:sd t6, 1168(a0)
Current Store : [0x80001050] : sd t5, 1176(a0) -- Store: [0x800037b8]:0xAAAAAAAA00000001




Last Coverpoint : ['rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x8000106c]:KSLRA32 t6, t5, t4
	-[0x80001070]:sd t6, 1184(a0)
Current Store : [0x80001074] : sd t5, 1192(a0) -- Store: [0x800037c8]:0x00000100FFFFDFFF




Last Coverpoint : ['rs2_val == 2199023255552', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x8000108c]:KSLRA32 t6, t5, t4
	-[0x80001090]:sd t6, 1200(a0)
Current Store : [0x80001094] : sd t5, 1208(a0) -- Store: [0x800037d8]:0xFFFFF7FF40000000




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x800010b0]:KSLRA32 t6, t5, t4
	-[0x800010b4]:sd t6, 1216(a0)
Current Store : [0x800010b8] : sd t5, 1224(a0) -- Store: [0x800037e8]:0xFDFFFFFF00400000




Last Coverpoint : ['rs2_val == 549755813888', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800010d4]:KSLRA32 t6, t5, t4
	-[0x800010d8]:sd t6, 1232(a0)
Current Store : [0x800010dc] : sd t5, 1240(a0) -- Store: [0x800037f8]:0xFFBFFFFF00000005




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800010f8]:KSLRA32 t6, t5, t4
	-[0x800010fc]:sd t6, 1248(a0)
Current Store : [0x80001100] : sd t5, 1256(a0) -- Store: [0x80003808]:0xFFBFFFFF00000006




Last Coverpoint : ['rs2_val == 137438953472']
Last Code Sequence : 
	-[0x80001120]:KSLRA32 t6, t5, t4
	-[0x80001124]:sd t6, 1264(a0)
Current Store : [0x80001128] : sd t5, 1272(a0) -- Store: [0x80003818]:0xFDFFFFFFFDFFFFFF




Last Coverpoint : ['rs2_val == 68719476736', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80001140]:KSLRA32 t6, t5, t4
	-[0x80001144]:sd t6, 1280(a0)
Current Store : [0x80001148] : sd t5, 1288(a0) -- Store: [0x80003828]:0xFFFFFFF900004000




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001160]:KSLRA32 t6, t5, t4
	-[0x80001164]:sd t6, 1296(a0)
Current Store : [0x80001168] : sd t5, 1304(a0) -- Store: [0x80003838]:0xFFEFFFFFFFFFFDFF




Last Coverpoint : ['rs2_val == 17179869184', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80001184]:KSLRA32 t6, t5, t4
	-[0x80001188]:sd t6, 1312(a0)
Current Store : [0x8000118c] : sd t5, 1320(a0) -- Store: [0x80003848]:0x0020000000020000




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800011a8]:KSLRA32 t6, t5, t4
	-[0x800011ac]:sd t6, 1328(a0)
Current Store : [0x800011b0] : sd t5, 1336(a0) -- Store: [0x80003858]:0x00000009FFDFFFFF




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x800011cc]:KSLRA32 t6, t5, t4
	-[0x800011d0]:sd t6, 1344(a0)
Current Store : [0x800011d4] : sd t5, 1352(a0) -- Store: [0x80003868]:0xFFFFFFFDFFFBFFFF




Last Coverpoint : ['rs2_val == 2147483648', 'rs1_w1_val == 4', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800011e8]:KSLRA32 t6, t5, t4
	-[0x800011ec]:sd t6, 1360(a0)
Current Store : [0x800011f0] : sd t5, 1368(a0) -- Store: [0x80003878]:0x0000000420000000




Last Coverpoint : ['rs2_val == 1073741824', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001208]:KSLRA32 t6, t5, t4
	-[0x8000120c]:sd t6, 1376(a0)
Current Store : [0x80001210] : sd t5, 1384(a0) -- Store: [0x80003888]:0xF7FFFFFF01000000




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80001224]:KSLRA32 t6, t5, t4
	-[0x80001228]:sd t6, 1392(a0)
Current Store : [0x8000122c] : sd t5, 1400(a0) -- Store: [0x80003898]:0x0000000300000080




Last Coverpoint : ['rs2_val == 268435456', 'rs1_w1_val == -257', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001240]:KSLRA32 t6, t5, t4
	-[0x80001244]:sd t6, 1408(a0)
Current Store : [0x80001248] : sd t5, 1416(a0) -- Store: [0x800038a8]:0xFFFFFEFF04000000




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80001260]:KSLRA32 t6, t5, t4
	-[0x80001264]:sd t6, 1424(a0)
Current Store : [0x80001268] : sd t5, 1432(a0) -- Store: [0x800038b8]:0x55555555FFFFFFF6




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001284]:KSLRA32 t6, t5, t4
	-[0x80001288]:sd t6, 1440(a0)
Current Store : [0x8000128c] : sd t5, 1448(a0) -- Store: [0x800038c8]:0x00008000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800012a8]:KSLRA32 t6, t5, t4
	-[0x800012ac]:sd t6, 1456(a0)
Current Store : [0x800012b0] : sd t5, 1464(a0) -- Store: [0x800038d8]:0xFFDFFFFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800012c8]:KSLRA32 t6, t5, t4
	-[0x800012cc]:sd t6, 1472(a0)
Current Store : [0x800012d0] : sd t5, 1480(a0) -- Store: [0x800038e8]:0xFFF7FFFFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800012f0]:KSLRA32 t6, t5, t4
	-[0x800012f4]:sd t6, 1488(a0)
Current Store : [0x800012f8] : sd t5, 1496(a0) -- Store: [0x800038f8]:0xFFFBFFFF00000200




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001314]:KSLRA32 t6, t5, t4
	-[0x80001318]:sd t6, 1504(a0)
Current Store : [0x8000131c] : sd t5, 1512(a0) -- Store: [0x80003908]:0xFFFFEFFFFFFF7FFF




Last Coverpoint : ['rs2_val == 8388608', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001334]:KSLRA32 t6, t5, t4
	-[0x80001338]:sd t6, 1520(a0)
Current Store : [0x8000133c] : sd t5, 1528(a0) -- Store: [0x80003918]:0xFFFFFBFFFFF7FFFF




Last Coverpoint : ['rs2_val == 32', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000135c]:KSLRA32 t6, t5, t4
	-[0x80001360]:sd t6, 1536(a0)
Current Store : [0x80001364] : sd t5, 1544(a0) -- Store: [0x80003928]:0x0004000055555555




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x8000137c]:KSLRA32 t6, t5, t4
	-[0x80001380]:sd t6, 1552(a0)
Current Store : [0x80001384] : sd t5, 1560(a0) -- Store: [0x80003938]:0xFFFFFDFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x800013a0]:KSLRA32 t6, t5, t4
	-[0x800013a4]:sd t6, 1568(a0)
Current Store : [0x800013a8] : sd t5, 1576(a0) -- Store: [0x80003948]:0xFFFFFF7F00010000




Last Coverpoint : ['rs1_w1_val == -9', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800013c4]:KSLRA32 t6, t5, t4
	-[0x800013c8]:sd t6, 1584(a0)
Current Store : [0x800013cc] : sd t5, 1592(a0) -- Store: [0x80003958]:0xFFFFFFF7FFFDFFFF




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x800013e0]:KSLRA32 t6, t5, t4
	-[0x800013e4]:sd t6, 1600(a0)
Current Store : [0x800013e8] : sd t5, 1608(a0) -- Store: [0x80003968]:0x0000001000002000




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001408]:KSLRA32 t6, t5, t4
	-[0x8000140c]:sd t6, 1616(a0)
Current Store : [0x80001410] : sd t5, 1624(a0) -- Store: [0x80003978]:0x800000003FFFFFFF




Last Coverpoint : ['rs2_val == 4096', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001428]:KSLRA32 t6, t5, t4
	-[0x8000142c]:sd t6, 1632(a0)
Current Store : [0x80001430] : sd t5, 1640(a0) -- Store: [0x80003988]:0x2000000000002000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001448]:KSLRA32 t6, t5, t4
	-[0x8000144c]:sd t6, 1648(a0)
Current Store : [0x80001450] : sd t5, 1656(a0) -- Store: [0x80003998]:0x0800000000000005




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001478]:KSLRA32 t6, t5, t4
	-[0x8000147c]:sd t6, 1664(a0)
Current Store : [0x80001480] : sd t5, 1672(a0) -- Store: [0x800039a8]:0x00100000FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001498]:KSLRA32 t6, t5, t4
	-[0x8000149c]:sd t6, 1680(a0)
Current Store : [0x800014a0] : sd t5, 1688(a0) -- Store: [0x800039b8]:0x00001000FF7FFFFF




Last Coverpoint : ['rs2_val == 524288', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800014b4]:KSLRA32 t6, t5, t4
	-[0x800014b8]:sd t6, 1696(a0)
Current Store : [0x800014bc] : sd t5, 1704(a0) -- Store: [0x800039c8]:0x00000400FFFFFFFC




Last Coverpoint : ['opcode : kslra32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 281474976710656', 'rs1_w1_val == 0', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800014d0]:KSLRA32 t6, t5, t4
	-[0x800014d4]:sd t6, 1712(a0)
Current Store : [0x800014d8] : sd t5, 1720(a0) -- Store: [0x800039d8]:0x000000007FFFFFFF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800014f4]:KSLRA32 t6, t5, t4
	-[0x800014f8]:sd t6, 1728(a0)
Current Store : [0x800014fc] : sd t5, 1736(a0) -- Store: [0x800039e8]:0xFFEFFFFFF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001514]:KSLRA32 t6, t5, t4
	-[0x80001518]:sd t6, 1744(a0)
Current Store : [0x8000151c] : sd t5, 1752(a0) -- Store: [0x800039f8]:0xFFFF7FFFFEFFFFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001538]:KSLRA32 t6, t5, t4
	-[0x8000153c]:sd t6, 1760(a0)
Current Store : [0x80001540] : sd t5, 1768(a0) -- Store: [0x80003a08]:0x00000000FFFEFFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000155c]:KSLRA32 t6, t5, t4
	-[0x80001560]:sd t6, 1776(a0)
Current Store : [0x80001564] : sd t5, 1784(a0) -- Store: [0x80003a18]:0xFFFFFFF9FFFFEFFF




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x8000157c]:KSLRA32 t6, t5, t4
	-[0x80001580]:sd t6, 1792(a0)
Current Store : [0x80001584] : sd t5, 1800(a0) -- Store: [0x80003a28]:0x7FFFFFFF01000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800015b4]:KSLRA32 t6, t5, t4
	-[0x800015b8]:sd t6, 1808(a0)
Current Store : [0x800015bc] : sd t5, 1816(a0) -- Store: [0x80003a38]:0xFBFFFFFFFFFFFEFF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800015d8]:KSLRA32 t6, t5, t4
	-[0x800015dc]:sd t6, 1824(a0)
Current Store : [0x800015e0] : sd t5, 1832(a0) -- Store: [0x80003a48]:0xFF7FFFFFFFFFFF7F




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800015fc]:KSLRA32 t6, t5, t4
	-[0x80001600]:sd t6, 1840(a0)
Current Store : [0x80001604] : sd t5, 1848(a0) -- Store: [0x80003a58]:0x00080000FFFFFFDF




Last Coverpoint : ['rs2_val == 134217728', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80001620]:KSLRA32 t6, t5, t4
	-[0x80001624]:sd t6, 1856(a0)
Current Store : [0x80001628] : sd t5, 1864(a0) -- Store: [0x80003a68]:0xFEFFFFFF00008000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001644]:KSLRA32 t6, t5, t4
	-[0x80001648]:sd t6, 1872(a0)
Current Store : [0x8000164c] : sd t5, 1880(a0) -- Store: [0x80003a78]:0x00000009FFFFFFFD




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x80001664]:KSLRA32 t6, t5, t4
	-[0x80001668]:sd t6, 1888(a0)
Current Store : [0x8000166c] : sd t5, 1896(a0) -- Store: [0x80003a88]:0x00100000FFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001680]:KSLRA32 t6, t5, t4
	-[0x80001684]:sd t6, 1904(a0)
Current Store : [0x80001688] : sd t5, 1912(a0) -- Store: [0x80003a98]:0xF7FFFFFF80000000




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x8000169c]:KSLRA32 t6, t5, t4
	-[0x800016a0]:sd t6, 1920(a0)
Current Store : [0x800016a4] : sd t5, 1928(a0) -- Store: [0x80003aa8]:0xFEFFFFFF00000000




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800016b8]:KSLRA32 t6, t5, t4
	-[0x800016bc]:sd t6, 1936(a0)
Current Store : [0x800016c0] : sd t5, 1944(a0) -- Store: [0x80003ab8]:0xFFFFFFFBFFFFFFFA




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800016dc]:KSLRA32 t6, t5, t4
	-[0x800016e0]:sd t6, 1952(a0)
Current Store : [0x800016e4] : sd t5, 1960(a0) -- Store: [0x80003ac8]:0xFF7FFFFF10000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800016fc]:KSLRA32 t6, t5, t4
	-[0x80001700]:sd t6, 1968(a0)
Current Store : [0x80001704] : sd t5, 1976(a0) -- Store: [0x80003ad8]:0x0080000008000000




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80001718]:KSLRA32 t6, t5, t4
	-[0x8000171c]:sd t6, 1984(a0)
Current Store : [0x80001720] : sd t5, 1992(a0) -- Store: [0x80003ae8]:0x0000000300000020




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x8000173c]:KSLRA32 t6, t5, t4
	-[0x80001740]:sd t6, 2000(a0)
Current Store : [0x80001744] : sd t5, 2008(a0) -- Store: [0x80003af8]:0xFFEFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000175c]:KSLRA32 t6, t5, t4
	-[0x80001760]:sd t6, 2016(a0)
Current Store : [0x80001764] : sd t5, 2024(a0) -- Store: [0x80003b08]:0xFFFEFFFF02000000




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x800017a8]:KSLRA32 t6, t5, t4
	-[0x800017ac]:sd t6, 0(a0)
Current Store : [0x800017b0] : sd t5, 8(a0) -- Store: [0x80003b28]:0xFFFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x800017cc]:KSLRA32 t6, t5, t4
	-[0x800017d0]:sd t6, 0(a0)
Current Store : [0x800017d4] : sd t5, 8(a0) -- Store: [0x80003b38]:0x0000020000000005




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x800017e8]:KSLRA32 t6, t5, t4
	-[0x800017ec]:sd t6, 16(a0)
Current Store : [0x800017f0] : sd t5, 24(a0) -- Store: [0x80003b48]:0xC000000000000007




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001808]:KSLRA32 t6, t5, t4
	-[0x8000180c]:sd t6, 32(a0)
Current Store : [0x80001810] : sd t5, 40(a0) -- Store: [0x80003b58]:0x0020000000080000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80001824]:KSLRA32 t6, t5, t4
	-[0x80001828]:sd t6, 48(a0)
Current Store : [0x8000182c] : sd t5, 56(a0) -- Store: [0x80003b68]:0xFFFFF7FF00040000




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80001844]:KSLRA32 t6, t5, t4
	-[0x80001848]:sd t6, 64(a0)
Current Store : [0x8000184c] : sd t5, 72(a0) -- Store: [0x80003b78]:0xFFFFFBFFFFFFFFFE




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80001860]:KSLRA32 t6, t5, t4
	-[0x80001864]:sd t6, 80(a0)
Current Store : [0x80001868] : sd t5, 88(a0) -- Store: [0x80003b88]:0x00000080FFFFFFEF




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x8000187c]:KSLRA32 t6, t5, t4
	-[0x80001880]:sd t6, 96(a0)
Current Store : [0x80001884] : sd t5, 104(a0) -- Store: [0x80003b98]:0x0000000600040000




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x8000189c]:KSLRA32 t6, t5, t4
	-[0x800018a0]:sd t6, 112(a0)
Current Store : [0x800018a4] : sd t5, 120(a0) -- Store: [0x80003ba8]:0x00004000FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800018c4]:KSLRA32 t6, t5, t4
	-[0x800018c8]:sd t6, 128(a0)
Current Store : [0x800018cc] : sd t5, 136(a0) -- Store: [0x80003bb8]:0x0000080000000800




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x800018e0]:KSLRA32 t6, t5, t4
	-[0x800018e4]:sd t6, 144(a0)
Current Store : [0x800018e8] : sd t5, 152(a0) -- Store: [0x80003bc8]:0xFFFFFFFB00800000




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001900]:KSLRA32 t6, t5, t4
	-[0x80001904]:sd t6, 160(a0)
Current Store : [0x80001908] : sd t5, 168(a0) -- Store: [0x80003bd8]:0xFFFFFFFBFFEFFFFF




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001928]:KSLRA32 t6, t5, t4
	-[0x8000192c]:sd t6, 176(a0)
Current Store : [0x80001930] : sd t5, 184(a0) -- Store: [0x80003be8]:0x01000000FFFFF7FF




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80001944]:KSLRA32 t6, t5, t4
	-[0x80001948]:sd t6, 192(a0)
Current Store : [0x8000194c] : sd t5, 200(a0) -- Store: [0x80003bf8]:0x0010000000800000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001978]:KSLRA32 t6, t5, t4
	-[0x8000197c]:sd t6, 208(a0)
Current Store : [0x80001980] : sd t5, 216(a0) -- Store: [0x80003c08]:0x0000000101000000




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x800019a0]:KSLRA32 t6, t5, t4
	-[0x800019a4]:sd t6, 224(a0)
Current Store : [0x800019a8] : sd t5, 232(a0) -- Store: [0x80003c18]:0xEFFFFFFF00800000




Last Coverpoint : ['rs2_val == -18014398509481985']
Last Code Sequence : 
	-[0x800019c4]:KSLRA32 t6, t5, t4
	-[0x800019c8]:sd t6, 240(a0)
Current Store : [0x800019cc] : sd t5, 248(a0) -- Store: [0x80003c28]:0x0100000040000000




Last Coverpoint : ['opcode : kslra32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -562949953421313', 'rs1_w1_val == 67108864', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800019e8]:KSLRA32 t6, t5, t4
	-[0x800019ec]:sd t6, 256(a0)
Current Store : [0x800019f0] : sd t5, 264(a0) -- Store: [0x80003c38]:0x0400000000000020




Last Coverpoint : ['opcode : kslra32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -8796093022209', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80001a14]:KSLRA32 t6, t5, t4
	-[0x80001a18]:sd t6, 272(a0)
Current Store : [0x80001a1c] : sd t5, 280(a0) -- Store: [0x80003c48]:0x3FFFFFFF00002000





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

|s.no|            signature             |                                                                                          coverpoints                                                                                          |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFFFFF7FFFFFFF|- opcode : kslra32<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 1431655765<br> |[0x800003cc]:KSLRA32 sp, s7, s7<br> [0x800003d0]:sd sp, 0(fp)<br>       |
|   2|[0x80003220]<br>0x3FFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -1<br>                               |[0x800003f4]:KSLRA32 s10, s10, s10<br> [0x800003f8]:sd s10, 16(fp)<br>  |
|   3|[0x80003230]<br>0x00000100D5555555|- rs1 : x15<br> - rs2 : x14<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -4611686018427387905<br> - rs1_w1_val == 512<br> - rs1_w0_val == -1431655766<br>     |[0x8000041c]:KSLRA32 t5, a5, a4<br> [0x80000420]:sd t5, 32(fp)<br>      |
|   4|[0x80003240]<br>0x00200000FFFFFFFB|- rs1 : x1<br> - rs2 : x18<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -9<br>                                   |[0x80000444]:KSLRA32 ra, ra, s2<br> [0x80000448]:sd ra, 48(fp)<br>      |
|   5|[0x80003250]<br>0x0010000000080000|- rs1 : x10<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 1048576<br>                            |[0x8000046c]:KSLRA32 s8, a0, s8<br> [0x80000470]:sd s8, 64(fp)<br>      |
|   6|[0x80003260]<br>0x00200000FFFFFDFF|- rs1 : x21<br> - rs2 : x11<br> - rd : x15<br> - rs2_val == -576460752303423489<br> - rs1_w0_val == -1025<br>                                                                                  |[0x80000494]:KSLRA32 a5, s5, a1<br> [0x80000498]:sd a5, 80(fp)<br>      |
|   7|[0x80003270]<br>0x0000000420000000|- rs1 : x22<br> - rs2 : x27<br> - rd : x16<br> - rs2_val == -288230376151711745<br> - rs1_w1_val == 8<br> - rs1_w0_val == 1073741824<br>                                                       |[0x800004b4]:KSLRA32 a6, s6, s11<br> [0x800004b8]:sd a6, 96(fp)<br>     |
|   8|[0x80003280]<br>0x2000000000000020|- rs1 : x19<br> - rs2 : x10<br> - rd : x18<br> - rs2_val == -144115188075855873<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 64<br>                                                      |[0x800004d8]:KSLRA32 s2, s3, a0<br> [0x800004dc]:sd s2, 112(fp)<br>     |
|   9|[0x80003290]<br>0x00000010FFFFEFFF|- rs1 : x17<br> - rs2 : x20<br> - rd : x31<br> - rs2_val == -72057594037927937<br> - rs1_w1_val == 32<br> - rs1_w0_val == -8193<br>                                                            |[0x80000500]:KSLRA32 t6, a7, s4<br> [0x80000504]:sd t6, 128(fp)<br>     |
|  10|[0x800032a0]<br>0x00000010FFFFFFFF|- rs1 : x13<br> - rs2 : x19<br> - rd : x27<br> - rs2_val == -36028797018963969<br>                                                                                                             |[0x80000524]:KSLRA32 s11, a3, s3<br> [0x80000528]:sd s11, 144(fp)<br>   |
|  11|[0x800032b0]<br>0x0100000040000000|- rs1 : x18<br> - rs2 : x0<br> - rd : x7<br> - rs1_w1_val == 16777216<br>                                                                                                                      |[0x80000540]:KSLRA32 t2, s2, zero<br> [0x80000544]:sd t2, 160(fp)<br>   |
|  12|[0x800032c0]<br>0x2000000000001000|- rs1 : x14<br> - rs2 : x16<br> - rd : x21<br> - rs2_val == -9007199254740993<br> - rs1_w0_val == 8192<br>                                                                                     |[0x80000568]:KSLRA32 s5, a4, a6<br> [0x8000056c]:sd s5, 176(fp)<br>     |
|  13|[0x800032d0]<br>0xFF7FFFFF00000100|- rs1 : x7<br> - rs2 : x17<br> - rd : x13<br> - rs2_val == -4503599627370497<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 512<br>                                                         |[0x80000590]:KSLRA32 a3, t2, a7<br> [0x80000594]:sd a3, 192(fp)<br>     |
|  14|[0x800032e0]<br>0xFFFEFFFF2AAAAAAA|- rs1 : x4<br> - rs2 : x15<br> - rd : x10<br> - rs2_val == -2251799813685249<br> - rs1_w1_val == -131073<br>                                                                                   |[0x800005c0]:KSLRA32 a0, tp, a5<br> [0x800005c4]:sd a0, 208(fp)<br>     |
|  15|[0x800032f0]<br>0x00010000FFFBFFFF|- rs1 : x12<br> - rs2 : x9<br> - rd : x20<br> - rs2_val == -1125899906842625<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -524289<br>                                                        |[0x800005e8]:KSLRA32 s4, a2, s1<br> [0x800005ec]:sd s4, 224(fp)<br>     |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x30<br> - rd : x14<br> - rs2_val == -562949953421313<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                    |[0x8000060c]:KSLRA32 a4, zero, t5<br> [0x80000610]:sd a4, 240(fp)<br>   |
|  17|[0x80003310]<br>0x00400000FFEFFFFF|- rs1 : x6<br> - rs2 : x5<br> - rd : x3<br> - rs2_val == -281474976710657<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -2097153<br>                                                         |[0x80000638]:KSLRA32 gp, t1, t0<br> [0x8000063c]:sd gp, 256(fp)<br>     |
|  18|[0x80003320]<br>0xE0000000FFFFFBFF|- rs1 : x29<br> - rs2 : x2<br> - rd : x12<br> - rs2_val == -140737488355329<br> - rs1_w0_val == -2049<br>                                                                                      |[0x80000670]:KSLRA32 a2, t4, sp<br> [0x80000674]:sd a2, 0(a0)<br>       |
|  19|[0x80003330]<br>0xDFFFFFFFFFFFFFFC|- rs1 : x25<br> - rs2 : x12<br> - rd : x5<br> - rs2_val == -70368744177665<br> - rs1_w1_val == -1073741825<br>                                                                                 |[0x80000694]:KSLRA32 t0, s9, a2<br> [0x80000698]:sd t0, 16(a0)<br>      |
|  20|[0x80003340]<br>0xFFFFFFDF3FFFFFFF|- rs1 : x9<br> - rs2 : x21<br> - rd : x8<br> - rs2_val == -35184372088833<br> - rs1_w1_val == -65<br> - rs1_w0_val == 2147483647<br>                                                           |[0x800006b8]:KSLRA32 fp, s1, s5<br> [0x800006bc]:sd fp, 32(a0)<br>      |
|  21|[0x80003350]<br>0x00002000EFFFFFFF|- rs1 : x8<br> - rs2 : x1<br> - rd : x6<br> - rs2_val == -17592186044417<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -536870913<br>                                                          |[0x800006e0]:KSLRA32 t1, fp, ra<br> [0x800006e4]:sd t1, 48(a0)<br>      |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x29<br> - rd : x0<br> - rs2_val == -8796093022209<br>                                                                                                                  |[0x8000070c]:KSLRA32 zero, s11, t4<br> [0x80000710]:sd zero, 64(a0)<br> |
|  23|[0x80003370]<br>0xFBFFFFFFDFFFFFFF|- rs1 : x30<br> - rs2 : x3<br> - rd : x25<br> - rs2_val == -4398046511105<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -1073741825<br>                                                   |[0x80000734]:KSLRA32 s9, t5, gp<br> [0x80000738]:sd s9, 80(a0)<br>      |
|  24|[0x80003380]<br>0x0800000000400000|- rs1 : x2<br> - rs2 : x22<br> - rd : x17<br> - rs2_val == -2199023255553<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 8388608<br>                                                        |[0x8000075c]:KSLRA32 a7, sp, s6<br> [0x80000760]:sd a7, 96(a0)<br>      |
|  25|[0x80003390]<br>0x00000100FFBFFFFF|- rs1 : x11<br> - rs2 : x25<br> - rd : x28<br> - rs2_val == -1099511627777<br> - rs1_w0_val == -8388609<br>                                                                                    |[0x80000784]:KSLRA32 t3, a1, s9<br> [0x80000788]:sd t3, 112(a0)<br>     |
|  26|[0x800033a0]<br>0x0000000200000002|- rs1 : x31<br> - rs2 : x7<br> - rd : x4<br> - rs2_val == -549755813889<br> - rs1_w0_val == 4<br>                                                                                              |[0x800007a8]:KSLRA32 tp, t6, t2<br> [0x800007ac]:sd tp, 128(a0)<br>     |
|  27|[0x800033b0]<br>0x0000008000000010|- rs1 : x3<br> - rs2 : x28<br> - rd : x9<br> - rs2_val == -274877906945<br> - rs1_w1_val == 256<br> - rs1_w0_val == 32<br>                                                                     |[0x800007cc]:KSLRA32 s1, gp, t3<br> [0x800007d0]:sd s1, 144(a0)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFE00000020|- rs1 : x20<br> - rs2 : x13<br> - rd : x23<br> - rs2_val == -137438953473<br> - rs1_w1_val == -3<br>                                                                                           |[0x800007f0]:KSLRA32 s7, s4, a3<br> [0x800007f4]:sd s7, 160(a0)<br>     |
|  29|[0x800033d0]<br>0xEFFFFFFFFFFFFFDF|- rs1 : x16<br> - rs2 : x4<br> - rd : x22<br> - rs2_val == -68719476737<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -65<br>                                                             |[0x80000814]:KSLRA32 s6, a6, tp<br> [0x80000818]:sd s6, 176(a0)<br>     |
|  30|[0x800033e0]<br>0x02000000FFFFFFFC|- rs1 : x5<br> - rs2 : x31<br> - rd : x11<br> - rs2_val == -34359738369<br> - rs1_w1_val == 67108864<br>                                                                                       |[0x8000083c]:KSLRA32 a1, t0, t6<br> [0x80000840]:sd a1, 192(a0)<br>     |
|  31|[0x800033f0]<br>0xFFFFEFFF00000020|- rs1 : x24<br> - rs2 : x8<br> - rd : x19<br> - rs2_val == -17179869185<br> - rs1_w1_val == -8193<br>                                                                                          |[0x80000864]:KSLRA32 s3, s8, fp<br> [0x80000868]:sd s3, 208(a0)<br>     |
|  32|[0x80003400]<br>0x0001000000000800|- rs1 : x28<br> - rs2 : x6<br> - rd : x29<br> - rs2_val == -8589934593<br> - rs1_w0_val == 4096<br>                                                                                            |[0x8000088c]:KSLRA32 t4, t3, t1<br> [0x80000890]:sd t4, 224(a0)<br>     |
|  33|[0x80003410]<br>0x08000000FFFFDFFF|- rs2_val == -4294967297<br> - rs1_w0_val == -16385<br>                                                                                                                                        |[0x800008bc]:KSLRA32 t6, t5, t4<br> [0x800008c0]:sd t6, 240(a0)<br>     |
|  34|[0x80003420]<br>0x0000400000400000|- rs2_val == -2147483649<br> - rs1_w1_val == 32768<br>                                                                                                                                         |[0x800008e0]:KSLRA32 t6, t5, t4<br> [0x800008e4]:sd t6, 256(a0)<br>     |
|  35|[0x80003430]<br>0x0000000400000100|- rs2_val == -1073741825<br>                                                                                                                                                                   |[0x80000900]:KSLRA32 t6, t5, t4<br> [0x80000904]:sd t6, 272(a0)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFCFFBFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                    |[0x80000924]:KSLRA32 t6, t5, t4<br> [0x80000928]:sd t6, 288(a0)<br>     |
|  37|[0x80003450]<br>0x000000022AAAAAAA|- rs2_val == -268435457<br>                                                                                                                                                                    |[0x80000948]:KSLRA32 t6, t5, t4<br> [0x8000094c]:sd t6, 304(a0)<br>     |
|  38|[0x80003460]<br>0x0000800000000200|- rs2_val == -134217729<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 1024<br>                                                                                                                 |[0x80000968]:KSLRA32 t6, t5, t4<br> [0x8000096c]:sd t6, 320(a0)<br>     |
|  39|[0x80003470]<br>0xFFFFFFFB20000000|- rs2_val == -67108865<br>                                                                                                                                                                     |[0x80000984]:KSLRA32 t6, t5, t4<br> [0x80000988]:sd t6, 336(a0)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFE00000003|- rs2_val == -33554433<br>                                                                                                                                                                     |[0x800009a4]:KSLRA32 t6, t5, t4<br> [0x800009a8]:sd t6, 352(a0)<br>     |
|  41|[0x80003490]<br>0x0000002000000010|- rs2_val == -16777217<br> - rs1_w1_val == 64<br>                                                                                                                                              |[0x800009c4]:KSLRA32 t6, t5, t4<br> [0x800009c8]:sd t6, 368(a0)<br>     |
|  42|[0x800034a0]<br>0x00000008FFDFFFFF|- rs2_val == -8388609<br> - rs1_w1_val == 16<br> - rs1_w0_val == -4194305<br>                                                                                                                  |[0x800009e8]:KSLRA32 t6, t5, t4<br> [0x800009ec]:sd t6, 384(a0)<br>     |
|  43|[0x800034b0]<br>0xFFF7FFFFFFFFFFFB|- rs2_val == -4194305<br> - rs1_w1_val == -1048577<br>                                                                                                                                         |[0x80000a08]:KSLRA32 t6, t5, t4<br> [0x80000a0c]:sd t6, 400(a0)<br>     |
|  44|[0x800034c0]<br>0x0000001000000040|- rs2_val == -2097153<br> - rs1_w0_val == 128<br>                                                                                                                                              |[0x80000a28]:KSLRA32 t6, t5, t4<br> [0x80000a2c]:sd t6, 416(a0)<br>     |
|  45|[0x800034d0]<br>0xFEFFFFFF00000002|- rs2_val == -1048577<br> - rs1_w1_val == -33554433<br>                                                                                                                                        |[0x80000a4c]:KSLRA32 t6, t5, t4<br> [0x80000a50]:sd t6, 432(a0)<br>     |
|  46|[0x800034e0]<br>0xFDFFFFFF00000080|- rs2_val == -524289<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 256<br>                                                                                                                 |[0x80000a70]:KSLRA32 t6, t5, t4<br> [0x80000a74]:sd t6, 448(a0)<br>     |
|  47|[0x800034f0]<br>0xFFBFFFFFFFFFFBFF|- rs2_val == -262145<br> - rs1_w1_val == -8388609<br>                                                                                                                                          |[0x80000a98]:KSLRA32 t6, t5, t4<br> [0x80000a9c]:sd t6, 464(a0)<br>     |
|  48|[0x80003500]<br>0x0020000000200000|- rs2_val == -131073<br> - rs1_w0_val == 4194304<br>                                                                                                                                           |[0x80000abc]:KSLRA32 t6, t5, t4<br> [0x80000ac0]:sd t6, 480(a0)<br>     |
|  49|[0x80003510]<br>0xFFFF7FFFFEFFFFFF|- rs2_val == -65537<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -33554433<br>                                                                                                               |[0x80000ae0]:KSLRA32 t6, t5, t4<br> [0x80000ae4]:sd t6, 496(a0)<br>     |
|  50|[0x80003520]<br>0xFFFFFFEF00000003|- rs2_val == -32769<br> - rs1_w1_val == -33<br>                                                                                                                                                |[0x80000b00]:KSLRA32 t6, t5, t4<br> [0x80000b04]:sd t6, 512(a0)<br>     |
|  51|[0x80003530]<br>0x0020000020000000|- rs2_val == -16385<br>                                                                                                                                                                        |[0x80000b20]:KSLRA32 t6, t5, t4<br> [0x80000b24]:sd t6, 528(a0)<br>     |
|  52|[0x80003540]<br>0xFF7FFFFFFFFFFFFC|- rs2_val == -8193<br>                                                                                                                                                                         |[0x80000b40]:KSLRA32 t6, t5, t4<br> [0x80000b44]:sd t6, 544(a0)<br>     |
|  53|[0x80003550]<br>0xFF7FFFFF00008000|- rs2_val == -4097<br> - rs1_w0_val == 65536<br>                                                                                                                                               |[0x80000b68]:KSLRA32 t6, t5, t4<br> [0x80000b6c]:sd t6, 560(a0)<br>     |
|  54|[0x80003560]<br>0x00000040FFFFEFFF|- rs2_val == -2049<br> - rs1_w1_val == 128<br>                                                                                                                                                 |[0x80000b8c]:KSLRA32 t6, t5, t4<br> [0x80000b90]:sd t6, 576(a0)<br>     |
|  55|[0x80003570]<br>0x00000400FFFFFFFB|- rs2_val == -1025<br> - rs1_w1_val == 2048<br>                                                                                                                                                |[0x80000bac]:KSLRA32 t6, t5, t4<br> [0x80000bb0]:sd t6, 592(a0)<br>     |
|  56|[0x80003580]<br>0xFEFFFFFFE0000000|- rs2_val == -513<br>                                                                                                                                                                          |[0x80000bc8]:KSLRA32 t6, t5, t4<br> [0x80000bcc]:sd t6, 608(a0)<br>     |
|  57|[0x80003590]<br>0x00800000FFFFBFFF|- rs2_val == -257<br> - rs1_w0_val == -32769<br>                                                                                                                                               |[0x80000bf0]:KSLRA32 t6, t5, t4<br> [0x80000bf4]:sd t6, 624(a0)<br>     |
|  58|[0x800035a0]<br>0xFFFFFFF700000040|- rs2_val == -129<br> - rs1_w1_val == -17<br>                                                                                                                                                  |[0x80000c0c]:KSLRA32 t6, t5, t4<br> [0x80000c10]:sd t6, 640(a0)<br>     |
|  59|[0x800035b0]<br>0x20000000FFFFFEFF|- rs2_val == -65<br> - rs1_w0_val == -513<br>                                                                                                                                                  |[0x80000c2c]:KSLRA32 t6, t5, t4<br> [0x80000c30]:sd t6, 656(a0)<br>     |
|  60|[0x800035c0]<br>0x800000007FFFFFFF|- rs2_val == -33<br>                                                                                                                                                                           |[0x80000c4c]:KSLRA32 t6, t5, t4<br> [0x80000c50]:sd t6, 672(a0)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFF00000000|- rs2_val == -17<br>                                                                                                                                                                           |[0x80000c68]:KSLRA32 t6, t5, t4<br> [0x80000c6c]:sd t6, 688(a0)<br>     |
|  62|[0x800035e0]<br>0x0000000000000000|- rs2_val == -9<br>                                                                                                                                                                            |[0x80000c84]:KSLRA32 t6, t5, t4<br> [0x80000c88]:sd t6, 704(a0)<br>     |
|  63|[0x800035f0]<br>0x0000000000000020|- rs2_val == -5<br> - rs1_w1_val == 2<br>                                                                                                                                                      |[0x80000ca0]:KSLRA32 t6, t5, t4<br> [0x80000ca4]:sd t6, 720(a0)<br>     |
|  64|[0x80003600]<br>0x0000010000000000|- rs2_val == -3<br> - rs1_w0_val == 1<br>                                                                                                                                                      |[0x80000cbc]:KSLRA32 t6, t5, t4<br> [0x80000cc0]:sd t6, 736(a0)<br>     |
|  65|[0x80003610]<br>0x00000000FFEFFFFF|- rs2_val == -2<br>                                                                                                                                                                            |[0x80000cdc]:KSLRA32 t6, t5, t4<br> [0x80000ce0]:sd t6, 752(a0)<br>     |
|  66|[0x80003620]<br>0xFFFFFFFFC0000000|- rs2_val == -9223372036854775808<br> - rs1_w1_val == -1<br>                                                                                                                                   |[0x80000cf4]:KSLRA32 t6, t5, t4<br> [0x80000cf8]:sd t6, 768(a0)<br>     |
|  67|[0x80003630]<br>0xFBFFFFFFEFFFFFFF|- rs2_val == 4611686018427387904<br> - rs1_w0_val == -268435457<br>                                                                                                                            |[0x80000d18]:KSLRA32 t6, t5, t4<br> [0x80000d1c]:sd t6, 784(a0)<br>     |
|  68|[0x80003640]<br>0xC000000000000010|- rs2_val == 262144<br> - rs1_w0_val == 16<br>                                                                                                                                                 |[0x80000d34]:KSLRA32 t6, t5, t4<br> [0x80000d38]:sd t6, 800(a0)<br>     |
|  69|[0x80003650]<br>0x0000000600000008|- rs2_val == 8192<br> - rs1_w0_val == 8<br>                                                                                                                                                    |[0x80000d50]:KSLRA32 t6, t5, t4<br> [0x80000d54]:sd t6, 816(a0)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFB00000002|- rs2_val == 4194304<br> - rs1_w1_val == -5<br> - rs1_w0_val == 2<br>                                                                                                                          |[0x80000d6c]:KSLRA32 t6, t5, t4<br> [0x80000d70]:sd t6, 832(a0)<br>     |
|  71|[0x80003680]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -6148914691236517206<br>                                                                                                                                                          |[0x80000dc0]:KSLRA32 t6, t5, t4<br> [0x80000dc4]:sd t6, 864(a0)<br>     |
|  72|[0x80003690]<br>0x0200000000000080|- rs2_val == 2305843009213693952<br> - rs1_w1_val == 33554432<br>                                                                                                                              |[0x80000de0]:KSLRA32 t6, t5, t4<br> [0x80000de4]:sd t6, 880(a0)<br>     |
|  73|[0x800036a0]<br>0xFFFFFFF8FBFFFFFF|- rs2_val == 1152921504606846976<br> - rs1_w0_val == -67108865<br>                                                                                                                             |[0x80000e00]:KSLRA32 t6, t5, t4<br> [0x80000e04]:sd t6, 896(a0)<br>     |
|  74|[0x800036b0]<br>0x00002000FFFFBFFF|- rs2_val == 576460752303423488<br> - rs1_w1_val == 8192<br>                                                                                                                                   |[0x80000e2c]:KSLRA32 t6, t5, t4<br> [0x80000e30]:sd t6, 912(a0)<br>     |
|  75|[0x800036c0]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == 288230376151711744<br>                                                                                                                                                            |[0x80000e48]:KSLRA32 t6, t5, t4<br> [0x80000e4c]:sd t6, 928(a0)<br>     |
|  76|[0x800036d0]<br>0xFFFF7FFF00000009|- rs2_val == 144115188075855872<br> - rs1_w1_val == -32769<br>                                                                                                                                 |[0x80000e6c]:KSLRA32 t6, t5, t4<br> [0x80000e70]:sd t6, 944(a0)<br>     |
|  77|[0x800036e0]<br>0x00000007FFFFFFF8|- rs2_val == 72057594037927936<br>                                                                                                                                                             |[0x80000e8c]:KSLRA32 t6, t5, t4<br> [0x80000e90]:sd t6, 960(a0)<br>     |
|  78|[0x800036f0]<br>0x0000008000000080|- rs2_val == 36028797018963968<br>                                                                                                                                                             |[0x80000eac]:KSLRA32 t6, t5, t4<br> [0x80000eb0]:sd t6, 976(a0)<br>     |
|  79|[0x80003700]<br>0xFFFFBFFF00200000|- rs2_val == 18014398509481984<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 2097152<br>                                                                                                      |[0x80000ecc]:KSLRA32 t6, t5, t4<br> [0x80000ed0]:sd t6, 992(a0)<br>     |
|  80|[0x80003710]<br>0x3FFFFFFF00200000|- rs2_val == 9007199254740992<br>                                                                                                                                                              |[0x80000ef0]:KSLRA32 t6, t5, t4<br> [0x80000ef4]:sd t6, 1008(a0)<br>    |
|  81|[0x80003720]<br>0xFFFFFFFEFFFBFFFF|- rs2_val == 4503599627370496<br> - rs1_w1_val == -2<br> - rs1_w0_val == -262145<br>                                                                                                           |[0x80000f14]:KSLRA32 t6, t5, t4<br> [0x80000f18]:sd t6, 1024(a0)<br>    |
|  82|[0x80003730]<br>0xFFFFFFFEFFFFFFFB|- rs2_val == 2251799813685248<br> - rs1_w0_val == -5<br>                                                                                                                                       |[0x80000f34]:KSLRA32 t6, t5, t4<br> [0x80000f38]:sd t6, 1040(a0)<br>    |
|  83|[0x80003740]<br>0x0000000600000004|- rs2_val == 1125899906842624<br>                                                                                                                                                              |[0x80000f54]:KSLRA32 t6, t5, t4<br> [0x80000f58]:sd t6, 1056(a0)<br>    |
|  84|[0x80003750]<br>0xFFEFFFFFFFFFFFEF|- rs2_val == 562949953421312<br> - rs1_w0_val == -17<br>                                                                                                                                       |[0x80000f74]:KSLRA32 t6, t5, t4<br> [0x80000f78]:sd t6, 1072(a0)<br>    |
|  85|[0x80003760]<br>0xFFEFFFFFFF7FFFFF|- rs2_val == 281474976710656<br>                                                                                                                                                               |[0x80000f98]:KSLRA32 t6, t5, t4<br> [0x80000f9c]:sd t6, 1088(a0)<br>    |
|  86|[0x80003770]<br>0x0000010000000004|- rs2_val == 140737488355328<br>                                                                                                                                                               |[0x80000fb8]:KSLRA32 t6, t5, t4<br> [0x80000fbc]:sd t6, 1104(a0)<br>    |
|  87|[0x80003780]<br>0x000800003FFFFFFF|- rs2_val == 70368744177664<br> - rs1_w1_val == 524288<br>                                                                                                                                     |[0x80000fdc]:KSLRA32 t6, t5, t4<br> [0x80000fe0]:sd t6, 1120(a0)<br>    |
|  88|[0x80003790]<br>0x7FFFFFFF40000000|- rs2_val == 35184372088832<br>                                                                                                                                                                |[0x80001000]:KSLRA32 t6, t5, t4<br> [0x80001004]:sd t6, 1136(a0)<br>    |
|  89|[0x800037a0]<br>0x010000007FFFFFFF|- rs2_val == 17592186044416<br>                                                                                                                                                                |[0x80001024]:KSLRA32 t6, t5, t4<br> [0x80001028]:sd t6, 1152(a0)<br>    |
|  90|[0x800037b0]<br>0xAAAAAAAA00000001|- rs2_val == 8796093022208<br> - rs1_w1_val == -1431655766<br>                                                                                                                                 |[0x80001048]:KSLRA32 t6, t5, t4<br> [0x8000104c]:sd t6, 1168(a0)<br>    |
|  91|[0x800037c0]<br>0x00000100FFFFDFFF|- rs2_val == 4398046511104<br>                                                                                                                                                                 |[0x8000106c]:KSLRA32 t6, t5, t4<br> [0x80001070]:sd t6, 1184(a0)<br>    |
|  92|[0x800037d0]<br>0xFFFFF7FF40000000|- rs2_val == 2199023255552<br> - rs1_w1_val == -2049<br>                                                                                                                                       |[0x8000108c]:KSLRA32 t6, t5, t4<br> [0x80001090]:sd t6, 1200(a0)<br>    |
|  93|[0x800037e0]<br>0xFDFFFFFF00400000|- rs2_val == 1099511627776<br>                                                                                                                                                                 |[0x800010b0]:KSLRA32 t6, t5, t4<br> [0x800010b4]:sd t6, 1216(a0)<br>    |
|  94|[0x800037f0]<br>0xFFBFFFFF00000005|- rs2_val == 549755813888<br> - rs1_w1_val == -4194305<br>                                                                                                                                     |[0x800010d4]:KSLRA32 t6, t5, t4<br> [0x800010d8]:sd t6, 1232(a0)<br>    |
|  95|[0x80003800]<br>0xFFBFFFFF00000006|- rs2_val == 274877906944<br>                                                                                                                                                                  |[0x800010f8]:KSLRA32 t6, t5, t4<br> [0x800010fc]:sd t6, 1248(a0)<br>    |
|  96|[0x80003810]<br>0xFDFFFFFFFDFFFFFF|- rs2_val == 137438953472<br>                                                                                                                                                                  |[0x80001120]:KSLRA32 t6, t5, t4<br> [0x80001124]:sd t6, 1264(a0)<br>    |
|  97|[0x80003820]<br>0xFFFFFFF900004000|- rs2_val == 68719476736<br> - rs1_w0_val == 16384<br>                                                                                                                                         |[0x80001140]:KSLRA32 t6, t5, t4<br> [0x80001144]:sd t6, 1280(a0)<br>    |
|  98|[0x80003830]<br>0xFFEFFFFFFFFFFDFF|- rs2_val == 34359738368<br>                                                                                                                                                                   |[0x80001160]:KSLRA32 t6, t5, t4<br> [0x80001164]:sd t6, 1296(a0)<br>    |
|  99|[0x80003840]<br>0x0020000000020000|- rs2_val == 17179869184<br> - rs1_w0_val == 131072<br>                                                                                                                                        |[0x80001184]:KSLRA32 t6, t5, t4<br> [0x80001188]:sd t6, 1312(a0)<br>    |
| 100|[0x80003850]<br>0x00000009FFDFFFFF|- rs2_val == 8589934592<br>                                                                                                                                                                    |[0x800011a8]:KSLRA32 t6, t5, t4<br> [0x800011ac]:sd t6, 1328(a0)<br>    |
| 101|[0x80003860]<br>0xFFFFFFFDFFFBFFFF|- rs2_val == 4294967296<br>                                                                                                                                                                    |[0x800011cc]:KSLRA32 t6, t5, t4<br> [0x800011d0]:sd t6, 1344(a0)<br>    |
| 102|[0x80003870]<br>0x0000000420000000|- rs2_val == 2147483648<br> - rs1_w1_val == 4<br> - rs1_w0_val == 536870912<br>                                                                                                                |[0x800011e8]:KSLRA32 t6, t5, t4<br> [0x800011ec]:sd t6, 1360(a0)<br>    |
| 103|[0x80003880]<br>0xF7FFFFFF01000000|- rs2_val == 1073741824<br> - rs1_w0_val == 16777216<br>                                                                                                                                       |[0x80001208]:KSLRA32 t6, t5, t4<br> [0x8000120c]:sd t6, 1376(a0)<br>    |
| 104|[0x80003890]<br>0x0000000300000080|- rs2_val == 536870912<br>                                                                                                                                                                     |[0x80001224]:KSLRA32 t6, t5, t4<br> [0x80001228]:sd t6, 1392(a0)<br>    |
| 105|[0x800038a0]<br>0xFFFFFEFF04000000|- rs2_val == 268435456<br> - rs1_w1_val == -257<br> - rs1_w0_val == 67108864<br>                                                                                                               |[0x80001240]:KSLRA32 t6, t5, t4<br> [0x80001244]:sd t6, 1408(a0)<br>    |
| 106|[0x800038b0]<br>0x7FFFFFFFFFFFFFEC|- rs2_val == 1<br>                                                                                                                                                                             |[0x80001260]:KSLRA32 t6, t5, t4<br> [0x80001264]:sd t6, 1424(a0)<br>    |
| 107|[0x800038c0]<br>0x00008000FFFFFFFE|- rs1_w0_val == -2<br>                                                                                                                                                                         |[0x80001284]:KSLRA32 t6, t5, t4<br> [0x80001288]:sd t6, 1440(a0)<br>    |
| 108|[0x800038d0]<br>0xFFEFFFFFFFFFFFFE|- rs1_w1_val == -2097153<br>                                                                                                                                                                   |[0x800012a8]:KSLRA32 t6, t5, t4<br> [0x800012ac]:sd t6, 1456(a0)<br>    |
| 109|[0x800038e0]<br>0xFFFBFFFFFFFFFFFD|- rs1_w1_val == -524289<br>                                                                                                                                                                    |[0x800012c8]:KSLRA32 t6, t5, t4<br> [0x800012cc]:sd t6, 1472(a0)<br>    |
| 110|[0x800038f0]<br>0xFFFDFFFF00000100|- rs1_w1_val == -262145<br>                                                                                                                                                                    |[0x800012f0]:KSLRA32 t6, t5, t4<br> [0x800012f4]:sd t6, 1488(a0)<br>    |
| 111|[0x80003900]<br>0xFFFFEFFFFFFF7FFF|- rs1_w1_val == -4097<br>                                                                                                                                                                      |[0x80001314]:KSLRA32 t6, t5, t4<br> [0x80001318]:sd t6, 1504(a0)<br>    |
| 112|[0x80003910]<br>0xFFFFFBFFFFF7FFFF|- rs2_val == 8388608<br> - rs1_w1_val == -1025<br>                                                                                                                                             |[0x80001334]:KSLRA32 t6, t5, t4<br> [0x80001338]:sd t6, 1520(a0)<br>    |
| 113|[0x80003920]<br>0x0000000000000000|- rs2_val == 32<br> - rs1_w1_val == 262144<br>                                                                                                                                                 |[0x8000135c]:KSLRA32 t6, t5, t4<br> [0x80001360]:sd t6, 1536(a0)<br>    |
| 114|[0x80003930]<br>0xFFFFFDFFFFFFFDFF|- rs1_w1_val == -513<br>                                                                                                                                                                       |[0x8000137c]:KSLRA32 t6, t5, t4<br> [0x80001380]:sd t6, 1552(a0)<br>    |
| 115|[0x80003940]<br>0xFFFFFFBF00008000|- rs1_w1_val == -129<br>                                                                                                                                                                       |[0x800013a0]:KSLRA32 t6, t5, t4<br> [0x800013a4]:sd t6, 1568(a0)<br>    |
| 116|[0x80003950]<br>0xFFFFFFF7FFFDFFFF|- rs1_w1_val == -9<br> - rs1_w0_val == -131073<br>                                                                                                                                             |[0x800013c4]:KSLRA32 t6, t5, t4<br> [0x800013c8]:sd t6, 1584(a0)<br>    |
| 117|[0x80003960]<br>0x0000001000002000|- rs2_val == 64<br>                                                                                                                                                                            |[0x800013e0]:KSLRA32 t6, t5, t4<br> [0x800013e4]:sd t6, 1600(a0)<br>    |
| 118|[0x80003970]<br>0x800000003FFFFFFF|- rs1_w1_val == -2147483648<br>                                                                                                                                                                |[0x80001408]:KSLRA32 t6, t5, t4<br> [0x8000140c]:sd t6, 1616(a0)<br>    |
| 119|[0x80003980]<br>0x2000000000002000|- rs2_val == 4096<br> - rs1_w1_val == 536870912<br>                                                                                                                                            |[0x80001428]:KSLRA32 t6, t5, t4<br> [0x8000142c]:sd t6, 1632(a0)<br>    |
| 120|[0x80003990]<br>0x0800000000000005|- rs1_w1_val == 134217728<br>                                                                                                                                                                  |[0x80001448]:KSLRA32 t6, t5, t4<br> [0x8000144c]:sd t6, 1648(a0)<br>    |
| 121|[0x800039a0]<br>0x00080000FFF7FFFF|- rs1_w1_val == 1048576<br> - rs1_w0_val == -1048577<br>                                                                                                                                       |[0x80001478]:KSLRA32 t6, t5, t4<br> [0x8000147c]:sd t6, 1664(a0)<br>    |
| 122|[0x800039b0]<br>0x00001000FF7FFFFF|- rs1_w1_val == 4096<br>                                                                                                                                                                       |[0x80001498]:KSLRA32 t6, t5, t4<br> [0x8000149c]:sd t6, 1680(a0)<br>    |
| 123|[0x800039c0]<br>0x00000400FFFFFFFC|- rs2_val == 524288<br> - rs1_w1_val == 1024<br>                                                                                                                                               |[0x800014b4]:KSLRA32 t6, t5, t4<br> [0x800014b8]:sd t6, 1696(a0)<br>    |
| 124|[0x800039e0]<br>0xFFEFFFFFF7FFFFFF|- rs1_w0_val == -134217729<br>                                                                                                                                                                 |[0x800014f4]:KSLRA32 t6, t5, t4<br> [0x800014f8]:sd t6, 1728(a0)<br>    |
| 125|[0x800039f0]<br>0xFFFFBFFFFF7FFFFF|- rs1_w0_val == -16777217<br>                                                                                                                                                                  |[0x80001514]:KSLRA32 t6, t5, t4<br> [0x80001518]:sd t6, 1744(a0)<br>    |
| 126|[0x80003a00]<br>0x00000000FFFEFFFF|- rs1_w0_val == -65537<br>                                                                                                                                                                     |[0x80001538]:KSLRA32 t6, t5, t4<br> [0x8000153c]:sd t6, 1760(a0)<br>    |
| 127|[0x80003a10]<br>0xFFFFFFF9FFFFEFFF|- rs1_w0_val == -4097<br>                                                                                                                                                                      |[0x8000155c]:KSLRA32 t6, t5, t4<br> [0x80001560]:sd t6, 1776(a0)<br>    |
| 128|[0x80003a20]<br>0x7FFFFFFF01000000|- rs2_val == 512<br>                                                                                                                                                                           |[0x8000157c]:KSLRA32 t6, t5, t4<br> [0x80001580]:sd t6, 1792(a0)<br>    |
| 129|[0x80003a30]<br>0x80000000DFE00000|- rs1_w0_val == -257<br>                                                                                                                                                                       |[0x800015b4]:KSLRA32 t6, t5, t4<br> [0x800015b8]:sd t6, 1808(a0)<br>    |
| 130|[0x80003a40]<br>0xFFBFFFFFFFFFFFBF|- rs1_w0_val == -129<br>                                                                                                                                                                       |[0x800015d8]:KSLRA32 t6, t5, t4<br> [0x800015dc]:sd t6, 1824(a0)<br>    |
| 131|[0x80003a50]<br>0x00040000FFFFFFEF|- rs1_w0_val == -33<br>                                                                                                                                                                        |[0x800015fc]:KSLRA32 t6, t5, t4<br> [0x80001600]:sd t6, 1840(a0)<br>    |
| 132|[0x80003a60]<br>0xFEFFFFFF00008000|- rs2_val == 134217728<br> - rs1_w0_val == 32768<br>                                                                                                                                           |[0x80001620]:KSLRA32 t6, t5, t4<br> [0x80001624]:sd t6, 1856(a0)<br>    |
| 133|[0x80003a70]<br>0x00000004FFFFFFFE|- rs1_w0_val == -3<br>                                                                                                                                                                         |[0x80001644]:KSLRA32 t6, t5, t4<br> [0x80001648]:sd t6, 1872(a0)<br>    |
| 134|[0x80003a80]<br>0x00100000FFBFFFFF|- rs2_val == 67108864<br>                                                                                                                                                                      |[0x80001664]:KSLRA32 t6, t5, t4<br> [0x80001668]:sd t6, 1888(a0)<br>    |
| 135|[0x80003a90]<br>0xFFF7FFFFFF800000|- rs1_w0_val == -2147483648<br>                                                                                                                                                                |[0x80001680]:KSLRA32 t6, t5, t4<br> [0x80001684]:sd t6, 1904(a0)<br>    |
| 136|[0x80003aa0]<br>0xFEFFFFFF00000000|- rs2_val == 33554432<br>                                                                                                                                                                      |[0x8000169c]:KSLRA32 t6, t5, t4<br> [0x800016a0]:sd t6, 1920(a0)<br>    |
| 137|[0x80003ab0]<br>0xFFFFFFFBFFFFFFFA|- rs2_val == 16777216<br>                                                                                                                                                                      |[0x800016b8]:KSLRA32 t6, t5, t4<br> [0x800016bc]:sd t6, 1936(a0)<br>    |
| 138|[0x80003ac0]<br>0xFFBFFFFF08000000|- rs1_w0_val == 268435456<br>                                                                                                                                                                  |[0x800016dc]:KSLRA32 t6, t5, t4<br> [0x800016e0]:sd t6, 1952(a0)<br>    |
| 139|[0x80003ad0]<br>0x0080000008000000|- rs1_w0_val == 134217728<br>                                                                                                                                                                  |[0x800016fc]:KSLRA32 t6, t5, t4<br> [0x80001700]:sd t6, 1968(a0)<br>    |
| 140|[0x80003ae0]<br>0x0000000300000020|- rs2_val == 2097152<br>                                                                                                                                                                       |[0x80001718]:KSLRA32 t6, t5, t4<br> [0x8000171c]:sd t6, 1984(a0)<br>    |
| 141|[0x80003af0]<br>0xFFEFFFFFFFDFFFFF|- rs2_val == 1048576<br>                                                                                                                                                                       |[0x8000173c]:KSLRA32 t6, t5, t4<br> [0x80001740]:sd t6, 2000(a0)<br>    |
| 142|[0x80003b00]<br>0xFFFEFFFF02000000|- rs1_w0_val == 33554432<br>                                                                                                                                                                   |[0x8000175c]:KSLRA32 t6, t5, t4<br> [0x80001760]:sd t6, 2016(a0)<br>    |
| 143|[0x80003b20]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 65536<br>                                                                                                                                                                         |[0x800017a8]:KSLRA32 t6, t5, t4<br> [0x800017ac]:sd t6, 0(a0)<br>       |
| 144|[0x80003b30]<br>0x0000020000000005|- rs2_val == 32768<br>                                                                                                                                                                         |[0x800017cc]:KSLRA32 t6, t5, t4<br> [0x800017d0]:sd t6, 0(a0)<br>       |
| 145|[0x80003b40]<br>0xC000000000000007|- rs2_val == 16384<br>                                                                                                                                                                         |[0x800017e8]:KSLRA32 t6, t5, t4<br> [0x800017ec]:sd t6, 16(a0)<br>      |
| 146|[0x80003b50]<br>0x0010000000040000|- rs1_w0_val == 524288<br>                                                                                                                                                                     |[0x80001808]:KSLRA32 t6, t5, t4<br> [0x8000180c]:sd t6, 32(a0)<br>      |
| 147|[0x80003b60]<br>0xFFFFF7FF00040000|- rs1_w0_val == 262144<br>                                                                                                                                                                     |[0x80001824]:KSLRA32 t6, t5, t4<br> [0x80001828]:sd t6, 48(a0)<br>      |
| 148|[0x80003b70]<br>0xFFFFFBFFFFFFFFFE|- rs2_val == 2048<br>                                                                                                                                                                          |[0x80001844]:KSLRA32 t6, t5, t4<br> [0x80001848]:sd t6, 64(a0)<br>      |
| 149|[0x80003b80]<br>0x00000080FFFFFFEF|- rs2_val == 1024<br>                                                                                                                                                                          |[0x80001860]:KSLRA32 t6, t5, t4<br> [0x80001864]:sd t6, 80(a0)<br>      |
| 150|[0x80003b90]<br>0x0000000600040000|- rs2_val == 256<br>                                                                                                                                                                           |[0x8000187c]:KSLRA32 t6, t5, t4<br> [0x80001880]:sd t6, 96(a0)<br>      |
| 151|[0x80003ba0]<br>0x00004000FFFDFFFF|- rs2_val == 128<br>                                                                                                                                                                           |[0x8000189c]:KSLRA32 t6, t5, t4<br> [0x800018a0]:sd t6, 112(a0)<br>     |
| 152|[0x80003bb0]<br>0x0000080000000800|- rs1_w0_val == 2048<br>                                                                                                                                                                       |[0x800018c4]:KSLRA32 t6, t5, t4<br> [0x800018c8]:sd t6, 128(a0)<br>     |
| 153|[0x80003bc0]<br>0xFFFB00007FFFFFFF|- rs2_val == 16<br>                                                                                                                                                                            |[0x800018e0]:KSLRA32 t6, t5, t4<br> [0x800018e4]:sd t6, 144(a0)<br>     |
| 154|[0x80003bd0]<br>0xFFFFFB00EFFFFF00|- rs2_val == 8<br>                                                                                                                                                                             |[0x80001900]:KSLRA32 t6, t5, t4<br> [0x80001904]:sd t6, 160(a0)<br>     |
| 155|[0x80003be0]<br>0x10000000FFFF7FF0|- rs2_val == 4<br>                                                                                                                                                                             |[0x80001928]:KSLRA32 t6, t5, t4<br> [0x8000192c]:sd t6, 176(a0)<br>     |
| 156|[0x80003bf0]<br>0x0040000002000000|- rs2_val == 2<br>                                                                                                                                                                             |[0x80001944]:KSLRA32 t6, t5, t4<br> [0x80001948]:sd t6, 192(a0)<br>     |
| 157|[0x80003c00]<br>0x002000007FFFFFFF|- rs1_w1_val == 1<br>                                                                                                                                                                          |[0x80001978]:KSLRA32 t6, t5, t4<br> [0x8000197c]:sd t6, 208(a0)<br>     |
| 158|[0x80003c10]<br>0xF7FFFFFF00400000|- rs1_w1_val == -268435457<br>                                                                                                                                                                 |[0x800019a0]:KSLRA32 t6, t5, t4<br> [0x800019a4]:sd t6, 224(a0)<br>     |
| 159|[0x80003c20]<br>0x0080000020000000|- rs2_val == -18014398509481985<br>                                                                                                                                                            |[0x800019c4]:KSLRA32 t6, t5, t4<br> [0x800019c8]:sd t6, 240(a0)<br>     |
