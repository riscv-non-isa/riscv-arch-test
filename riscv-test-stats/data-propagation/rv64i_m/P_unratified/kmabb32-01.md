
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001910')]      |
| SIG_REGION                | [('0x80003210', '0x80003a70', '268 dwords')]      |
| COV_LABELS                | kmabb32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmabb32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 268      |
| STAT1                     | 129      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 134     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c80]:KMABB32 t6, t5, t4
      [0x80000c84]:sd t6, 608(tp)
 -- Signature Address: 0x80003570 Data: 0xFFFF7E2D7BB71CE2
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 16777216
      - rs2_w0_val == -33
      - rs1_w1_val == -9
      - rs1_w0_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb4]:KMABB32 t6, t5, t4
      [0x80000fb8]:sd t6, 944(tp)
 -- Signature Address: 0x800036c0 Data: 0x00227E4AAA0625BB
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 4194304
      - rs1_w1_val == -3
      - rs1_w0_val == -67108865




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001878]:KMABB32 t6, t5, t4
      [0x8000187c]:sd t6, 1824(tp)
 -- Signature Address: 0x80003a30 Data: 0x342B4D47C4E2BD52
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w0_val == 2048
      - rs1_w1_val == -4194305




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018d0]:KMABB32 t6, t5, t4
      [0x800018d4]:sd t6, 1856(tp)
 -- Signature Address: 0x80003a50 Data: 0x342C4D47F4EABD53
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -2049
      - rs2_w0_val == -524289
      - rs1_w1_val == 524288
      - rs1_w0_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018fc]:KMABB32 t6, t5, t4
      [0x80001900]:sd t6, 1872(tp)
 -- Signature Address: 0x80003a60 Data: 0x342C4E47F52EBD54
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -17
      - rs2_w0_val == -4194305
      - rs1_w1_val == -3
      - rs1_w0_val == -262145






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabb32', 'rs1 : x25', 'rs2 : x25', 'rd : x9', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2048', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800003c0]:KMABB32 s1, s9, s9
	-[0x800003c4]:sd s1, 0(t1)
Current Store : [0x800003c8] : sd s9, 8(t1) -- Store: [0x80003218]:0x0000000700000800




Last Coverpoint : ['rs1 : x4', 'rs2 : x4', 'rd : x4', 'rs1 == rs2 == rd', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -536870913', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800003e0]:KMABB32 tp, tp, tp
	-[0x800003e4]:sd tp, 16(t1)
Current Store : [0x800003e8] : sd tp, 24(t1) -- Store: [0x80003228]:0x0400000420000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x14', 'rd : x17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -8388609', 'rs2_w0_val == 134217728', 'rs1_w1_val == -8193', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000404]:KMABB32 a7, t2, a4
	-[0x80000408]:sd a7, 32(t1)
Current Store : [0x8000040c] : sd t2, 40(t1) -- Store: [0x80003238]:0xFFFFDFFFFFFFFFFE




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rd : x19', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -1025', 'rs2_w0_val == 1', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000428]:KMABB32 s3, s3, a7
	-[0x8000042c]:sd s3, 48(t1)
Current Store : [0x80000430] : sd s3, 56(t1) -- Store: [0x80003248]:0x00000040FFFFFFFC




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -17', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000454]:KMABB32 zero, sp, zero
	-[0x80000458]:sd zero, 64(t1)
Current Store : [0x8000045c] : sd sp, 72(t1) -- Store: [0x80003258]:0xFFFFFFEF00004000




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x14', 'rs2_w1_val == -16777217', 'rs2_w0_val == -16385', 'rs1_w1_val == -524289', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000484]:KMABB32 a4, gp, t4
	-[0x80000488]:sd a4, 80(t1)
Current Store : [0x8000048c] : sd gp, 88(t1) -- Store: [0x80003268]:0xFFF7FFFFFBFFFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x20', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 536870912', 'rs1_w1_val == 67108864', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800004b0]:KMABB32 s4, a5, a6
	-[0x800004b4]:sd s4, 96(t1)
Current Store : [0x800004b8] : sd a5, 104(t1) -- Store: [0x80003278]:0x0400000000000002




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x18', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 32768', 'rs1_w1_val == -67108865', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800004e0]:KMABB32 s2, a6, fp
	-[0x800004e4]:sd s2, 112(t1)
Current Store : [0x800004e8] : sd a6, 120(t1) -- Store: [0x80003288]:0xFBFFFFFF00000400




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x11', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -17', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000504]:KMABB32 a1, s2, s11
	-[0x80000508]:sd a1, 128(t1)
Current Store : [0x8000050c] : sd s2, 136(t1) -- Store: [0x80003298]:0x0000000900000100




Last Coverpoint : ['rs1 : x1', 'rs2 : x30', 'rd : x25', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 64', 'rs1_w1_val == -33', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000052c]:KMABB32 s9, ra, t5
	-[0x80000530]:sd s9, 144(t1)
Current Store : [0x80000534] : sd ra, 152(t1) -- Store: [0x800032a8]:0xFFFFFFDFFFFFFBFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x24', 'rs2_w1_val == -536870913', 'rs2_w0_val == 4', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000558]:KMABB32 s8, t3, s3
	-[0x8000055c]:sd s8, 160(t1)
Current Store : [0x80000560] : sd t3, 168(t1) -- Store: [0x800032b8]:0xBFFFFFFF00000200




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x13', 'rs2_w1_val == -268435457', 'rs2_w0_val == 4194304', 'rs1_w1_val == 16777216', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000580]:KMABB32 a3, s7, a2
	-[0x80000584]:sd a3, 176(t1)
Current Store : [0x80000588] : sd s7, 184(t1) -- Store: [0x800032c8]:0x0100000000000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rd : x15', 'rs2_w1_val == -134217729', 'rs2_w0_val == -9', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800005a4]:KMABB32 a5, a7, s8
	-[0x800005a8]:sd a5, 192(t1)
Current Store : [0x800005ac] : sd a7, 200(t1) -- Store: [0x800032d8]:0xFFFEFFFFFFFFFFF6




Last Coverpoint : ['rs1 : x26', 'rs2 : x5', 'rd : x16', 'rs2_w1_val == -67108865', 'rs2_w0_val == -1073741825', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800005cc]:KMABB32 a6, s10, t0
	-[0x800005d0]:sd a6, 208(t1)
Current Store : [0x800005d4] : sd s10, 216(t1) -- Store: [0x800032e8]:0x0002000000000003




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x5', 'rs2_w1_val == -33554433', 'rs2_w0_val == -67108865', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800005fc]:KMABB32 t0, t5, ra
	-[0x80000600]:sd t0, 224(t1)
Current Store : [0x80000604] : sd t5, 232(t1) -- Store: [0x800032f8]:0x0100000000040000




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x10', 'rs2_w1_val == -4194305', 'rs2_w0_val == -262145', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000062c]:KMABB32 a0, t0, t6
	-[0x80000630]:sd a0, 240(t1)
Current Store : [0x80000634] : sd t0, 248(t1) -- Store: [0x80003308]:0x55555555FFFFFFDF




Last Coverpoint : ['rs1 : x12', 'rs2 : x7', 'rd : x8', 'rs2_w1_val == -1048577', 'rs2_w0_val == -1048577', 'rs1_w1_val == 524288', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000660]:KMABB32 fp, a2, t2
	-[0x80000664]:sd fp, 0(tp)
Current Store : [0x80000668] : sd a2, 8(tp) -- Store: [0x80003318]:0x0008000020000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rd : x28', 'rs2_w1_val == -524289', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80000690]:KMABB32 t3, s8, s1
	-[0x80000694]:sd t3, 16(tp)
Current Store : [0x80000698] : sd s8, 24(tp) -- Store: [0x80003328]:0x3FFFFFFF00000100




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rd : x29', 'rs2_w1_val == -262145', 'rs2_w0_val == -257', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800006b0]:KMABB32 t4, t1, s10
	-[0x800006b4]:sd t4, 32(tp)
Current Store : [0x800006b8] : sd t1, 40(tp) -- Store: [0x80003338]:0xFFFFFFFC02000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x23', 'rs2_w1_val == -131073', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800006e0]:KMABB32 s7, s5, a0
	-[0x800006e4]:sd s7, 48(tp)
Current Store : [0x800006e8] : sd s5, 56(tp) -- Store: [0x80003348]:0xAAAAAAAAFBFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x12', 'rs2_w1_val == -65537', 'rs2_w0_val == 256', 'rs1_w1_val == -257', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000708]:KMABB32 a2, t6, a5
	-[0x8000070c]:sd a2, 64(tp)
Current Store : [0x80000710] : sd t6, 72(tp) -- Store: [0x80003358]:0xFFFFFEFF00100000




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rd : x31', 'rs2_w1_val == -32769']
Last Code Sequence : 
	-[0x80000738]:KMABB32 t6, s4, t1
	-[0x8000073c]:sd t6, 80(tp)
Current Store : [0x80000740] : sd s4, 88(tp) -- Store: [0x80003368]:0x01000000FFFFFFFE




Last Coverpoint : ['rs1 : x8', 'rs2 : x2', 'rd : x26', 'rs2_w1_val == -16385', 'rs2_w0_val == 262144', 'rs1_w1_val == -1025', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000075c]:KMABB32 s10, fp, sp
	-[0x80000760]:sd s10, 96(tp)
Current Store : [0x80000764] : sd fp, 104(tp) -- Store: [0x80003378]:0xFFFFFBFF00080000




Last Coverpoint : ['rs1 : x10', 'rs2 : x21', 'rd : x22', 'rs2_w1_val == -8193', 'rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80000784]:KMABB32 s6, a0, s5
	-[0x80000788]:sd s6, 112(tp)
Current Store : [0x8000078c] : sd a0, 120(tp) -- Store: [0x80003388]:0xFFFFBFFFFFFFFFDF




Last Coverpoint : ['rs1 : x14', 'rs2 : x13', 'rd : x21', 'rs2_w1_val == -4097', 'rs2_w0_val == -134217729', 'rs1_w1_val == -5', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800007ac]:KMABB32 s5, a4, a3
	-[0x800007b0]:sd s5, 128(tp)
Current Store : [0x800007b4] : sd a4, 136(tp) -- Store: [0x80003398]:0xFFFFFFFB00010000




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x7', 'rs2_w1_val == -2049', 'rs2_w0_val == -524289', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800007d8]:KMABB32 t2, zero, s7
	-[0x800007dc]:sd t2, 144(tp)
Current Store : [0x800007e0] : sd zero, 152(tp) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x1', 'rs2_w1_val == -513', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000800]:KMABB32 ra, a1, gp
	-[0x80000804]:sd ra, 160(tp)
Current Store : [0x80000808] : sd a1, 168(tp) -- Store: [0x800033b8]:0x10000000FFFFFFFC




Last Coverpoint : ['rs1 : x9', 'rs2 : x28', 'rd : x27', 'rs2_w1_val == -257', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000828]:KMABB32 s11, s1, t3
	-[0x8000082c]:sd s11, 176(tp)
Current Store : [0x80000830] : sd s1, 184(tp) -- Store: [0x800033c8]:0xFFFFFFF600000080




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x6', 'rs2_w1_val == -129', 'rs1_w1_val == 8', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000854]:KMABB32 t1, t4, s2
	-[0x80000858]:sd t1, 192(tp)
Current Store : [0x8000085c] : sd t4, 200(tp) -- Store: [0x800033d8]:0x00000008FFDFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x20', 'rd : x30', 'rs2_w1_val == -65', 'rs1_w1_val == 4', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000087c]:KMABB32 t5, a3, s4
	-[0x80000880]:sd t5, 208(tp)
Current Store : [0x80000884] : sd a3, 216(tp) -- Store: [0x800033e8]:0x00000004FEFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x11', 'rd : x2', 'rs2_w1_val == -33', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800008a0]:KMABB32 sp, s11, a1
	-[0x800008a4]:sd sp, 224(tp)
Current Store : [0x800008a8] : sd s11, 232(tp) -- Store: [0x800033f8]:0xFFFFFFDF00001000




Last Coverpoint : ['rs1 : x22', 'rs2_w1_val == -17', 'rs2_w0_val == -4194305', 'rs1_w1_val == -3', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800008cc]:KMABB32 zero, s6, a3
	-[0x800008d0]:sd zero, 240(tp)
Current Store : [0x800008d4] : sd s6, 248(tp) -- Store: [0x80003408]:0xFFFFFFFDFFFBFFFF




Last Coverpoint : ['rs2 : x22', 'rs2_w1_val == -9', 'rs1_w1_val == 134217728', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800008f4]:KMABB32 s5, t4, s6
	-[0x800008f8]:sd s5, 256(tp)
Current Store : [0x800008fc] : sd t4, 264(tp) -- Store: [0x80003418]:0x0800000000002000




Last Coverpoint : ['rd : x3', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -5', 'rs2_w0_val == 1048576', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000918]:KMABB32 gp, a1, a4
	-[0x8000091c]:sd gp, 272(tp)
Current Store : [0x80000920] : sd a1, 280(tp) -- Store: [0x80003428]:0x0040000080000000




Last Coverpoint : ['rs2_w1_val == -3']
Last Code Sequence : 
	-[0x80000940]:KMABB32 t6, t5, t4
	-[0x80000944]:sd t6, 288(tp)
Current Store : [0x80000948] : sd t5, 296(tp) -- Store: [0x80003438]:0x0040000000000400




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -33', 'rs1_w1_val == -32769', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000968]:KMABB32 t6, t5, t4
	-[0x8000096c]:sd t6, 304(tp)
Current Store : [0x80000970] : sd t5, 312(tp) -- Store: [0x80003448]:0xFFFF7FFF00000004




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == 1024', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x8000098c]:KMABB32 t6, t5, t4
	-[0x80000990]:sd t6, 320(tp)
Current Store : [0x80000994] : sd t5, 328(tp) -- Store: [0x80003458]:0x0000001000000007




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800009bc]:KMABB32 t6, t5, t4
	-[0x800009c0]:sd t6, 336(tp)
Current Store : [0x800009c4] : sd t5, 344(tp) -- Store: [0x80003468]:0xFFFFFFFB00000040




Last Coverpoint : ['rs2_w1_val == 536870912']
Last Code Sequence : 
	-[0x800009e0]:KMABB32 t6, t5, t4
	-[0x800009e4]:sd t6, 352(tp)
Current Store : [0x800009e8] : sd t5, 360(tp) -- Store: [0x80003478]:0xFFFEFFFF00000000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000a0c]:KMABB32 t6, t5, t4
	-[0x80000a10]:sd t6, 368(tp)
Current Store : [0x80000a14] : sd t5, 376(tp) -- Store: [0x80003488]:0x0400000000001000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -65', 'rs1_w1_val == 536870912', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a38]:KMABB32 t6, t5, t4
	-[0x80000a3c]:sd t6, 384(tp)
Current Store : [0x80000a40] : sd t5, 392(tp) -- Store: [0x80003498]:0x20000000FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000a6c]:KMABB32 t6, t5, t4
	-[0x80000a70]:sd t6, 400(tp)
Current Store : [0x80000a74] : sd t5, 408(tp) -- Store: [0x800034a8]:0x0000000200000080




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 4096', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000a94]:KMABB32 t6, t5, t4
	-[0x80000a98]:sd t6, 416(tp)
Current Store : [0x80000a9c] : sd t5, 424(tp) -- Store: [0x800034b8]:0x0000100000000008




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == -8388609', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000ac0]:KMABB32 t6, t5, t4
	-[0x80000ac4]:sd t6, 432(tp)
Current Store : [0x80000ac8] : sd t5, 440(tp) -- Store: [0x800034c8]:0xFF7FFFFFBFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000aec]:KMABB32 t6, t5, t4
	-[0x80000af0]:sd t6, 448(tp)
Current Store : [0x80000af4] : sd t5, 456(tp) -- Store: [0x800034d8]:0x04000000FFFFFFF9




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000b14]:KMABB32 t6, t5, t4
	-[0x80000b18]:sd t6, 464(tp)
Current Store : [0x80000b1c] : sd t5, 472(tp) -- Store: [0x800034e8]:0xFFFFFFDFFFFFFFFA




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == -268435457', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000b3c]:KMABB32 t6, t5, t4
	-[0x80000b40]:sd t6, 480(tp)
Current Store : [0x80000b44] : sd t5, 488(tp) -- Store: [0x800034f8]:0xEFFFFFFF01000000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80000b6c]:KMABB32 t6, t5, t4
	-[0x80000b70]:sd t6, 496(tp)
Current Store : [0x80000b74] : sd t5, 504(tp) -- Store: [0x80003508]:0xFFFFFFEF00000008




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 1', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000b90]:KMABB32 t6, t5, t4
	-[0x80000b94]:sd t6, 512(tp)
Current Store : [0x80000b98] : sd t5, 520(tp) -- Store: [0x80003518]:0x0000000100800000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 2', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000bb4]:KMABB32 t6, t5, t4
	-[0x80000bb8]:sd t6, 528(tp)
Current Store : [0x80000bbc] : sd t5, 536(tp) -- Store: [0x80003528]:0xFFFFFFF7FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000bdc]:KMABB32 t6, t5, t4
	-[0x80000be0]:sd t6, 544(tp)
Current Store : [0x80000be4] : sd t5, 552(tp) -- Store: [0x80003538]:0x0080000000400000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c04]:KMABB32 t6, t5, t4
	-[0x80000c08]:sd t6, 560(tp)
Current Store : [0x80000c0c] : sd t5, 568(tp) -- Store: [0x80003548]:0xFFFFFFFC00200000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c2c]:KMABB32 t6, t5, t4
	-[0x80000c30]:sd t6, 576(tp)
Current Store : [0x80000c34] : sd t5, 584(tp) -- Store: [0x80003558]:0x2000000000020000




Last Coverpoint : ['rs2_w0_val == -1025', 'rs1_w1_val == 1048576', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c54]:KMABB32 t6, t5, t4
	-[0x80000c58]:sd t6, 592(tp)
Current Store : [0x80000c5c] : sd t5, 600(tp) -- Store: [0x80003568]:0x0010000000008000




Last Coverpoint : ['opcode : kmabb32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 16777216', 'rs2_w0_val == -33', 'rs1_w1_val == -9', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000c80]:KMABB32 t6, t5, t4
	-[0x80000c84]:sd t6, 608(tp)
Current Store : [0x80000c88] : sd t5, 616(tp) -- Store: [0x80003578]:0xFFFFFFF700000800




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 8192', 'rs1_w1_val == 512', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000ca8]:KMABB32 t6, t5, t4
	-[0x80000cac]:sd t6, 624(tp)
Current Store : [0x80000cb0] : sd t5, 632(tp) -- Store: [0x80003588]:0x0000020000000020




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ccc]:KMABB32 t6, t5, t4
	-[0x80000cd0]:sd t6, 640(tp)
Current Store : [0x80000cd4] : sd t5, 648(tp) -- Store: [0x80003598]:0x0000000800000010




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w1_val == -65', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000cf4]:KMABB32 t6, t5, t4
	-[0x80000cf8]:sd t6, 656(tp)
Current Store : [0x80000cfc] : sd t5, 664(tp) -- Store: [0x800035a8]:0xFFFFFFBFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000d20]:KMABB32 t6, t5, t4
	-[0x80000d24]:sd t6, 672(tp)
Current Store : [0x80000d28] : sd t5, 680(tp) -- Store: [0x800035b8]:0xEFFFFFFF00000003




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000d48]:KMABB32 t6, t5, t4
	-[0x80000d4c]:sd t6, 688(tp)
Current Store : [0x80000d50] : sd t5, 696(tp) -- Store: [0x800035c8]:0x0000002000004000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -1', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000d78]:KMABB32 t6, t5, t4
	-[0x80000d7c]:sd t6, 704(tp)
Current Store : [0x80000d80] : sd t5, 712(tp) -- Store: [0x800035d8]:0xFFBFFFFF00008000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000da0]:KMABB32 t6, t5, t4
	-[0x80000da4]:sd t6, 720(tp)
Current Store : [0x80000da8] : sd t5, 728(tp) -- Store: [0x800035e8]:0xFFFFFF7F00001000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000dcc]:KMABB32 t6, t5, t4
	-[0x80000dd0]:sd t6, 736(tp)
Current Store : [0x80000dd4] : sd t5, 744(tp) -- Store: [0x800035f8]:0x80000000FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000df4]:KMABB32 t6, t5, t4
	-[0x80000df8]:sd t6, 752(tp)
Current Store : [0x80000dfc] : sd t5, 760(tp) -- Store: [0x80003608]:0xFFFFFFEF00200000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000e1c]:KMABB32 t6, t5, t4
	-[0x80000e20]:sd t6, 768(tp)
Current Store : [0x80000e24] : sd t5, 776(tp) -- Store: [0x80003618]:0xFFFFFF7FEFFFFFFF




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000e40]:KMABB32 t6, t5, t4
	-[0x80000e44]:sd t6, 784(tp)
Current Store : [0x80000e48] : sd t5, 792(tp) -- Store: [0x80003628]:0x0000100000000003




Last Coverpoint : ['rs2_w1_val == 256']
Last Code Sequence : 
	-[0x80000e70]:KMABB32 t6, t5, t4
	-[0x80000e74]:sd t6, 800(tp)
Current Store : [0x80000e78] : sd t5, 808(tp) -- Store: [0x80003638]:0x00100000FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000e98]:KMABB32 t6, t5, t4
	-[0x80000e9c]:sd t6, 816(tp)
Current Store : [0x80000ea0] : sd t5, 824(tp) -- Store: [0x80003648]:0xFFFFFFF600000080




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000ebc]:KMABB32 t6, t5, t4
	-[0x80000ec0]:sd t6, 832(tp)
Current Store : [0x80000ec4] : sd t5, 840(tp) -- Store: [0x80003658]:0xFFFFFFFEFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 32', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000ee0]:KMABB32 t6, t5, t4
	-[0x80000ee4]:sd t6, 848(tp)
Current Store : [0x80000ee8] : sd t5, 856(tp) -- Store: [0x80003668]:0xFFFFBFFFFFFFFFFB




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 1024', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000f0c]:KMABB32 t6, t5, t4
	-[0x80000f10]:sd t6, 864(tp)
Current Store : [0x80000f14] : sd t5, 872(tp) -- Store: [0x80003678]:0x00000400FFF7FFFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000f30]:KMABB32 t6, t5, t4
	-[0x80000f34]:sd t6, 880(tp)
Current Store : [0x80000f38] : sd t5, 888(tp) -- Store: [0x80003688]:0x4000000000000004




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 512', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000f54]:KMABB32 t6, t5, t4
	-[0x80000f58]:sd t6, 896(tp)
Current Store : [0x80000f5c] : sd t5, 904(tp) -- Store: [0x80003698]:0xFFFFFFF8FFFFFFEF




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80000f78]:KMABB32 t6, t5, t4
	-[0x80000f7c]:sd t6, 912(tp)
Current Store : [0x80000f80] : sd t5, 920(tp) -- Store: [0x800036a8]:0x0004000000000010




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000f98]:KMABB32 t6, t5, t4
	-[0x80000f9c]:sd t6, 928(tp)
Current Store : [0x80000fa0] : sd t5, 936(tp) -- Store: [0x800036b8]:0x0000004001000000




Last Coverpoint : ['opcode : kmabb32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 4194304', 'rs1_w1_val == -3', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000fb4]:KMABB32 t6, t5, t4
	-[0x80000fb8]:sd t6, 944(tp)
Current Store : [0x80000fbc] : sd t5, 952(tp) -- Store: [0x800036c8]:0xFFFFFFFDFBFFFFFF




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000fd8]:KMABB32 t6, t5, t4
	-[0x80000fdc]:sd t6, 960(tp)
Current Store : [0x80000fe0] : sd t5, 968(tp) -- Store: [0x800036d8]:0x02000000FFFFFFFF




Last Coverpoint : ['rs2_w0_val == -1431655766', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001014]:KMABB32 t6, t5, t4
	-[0x80001018]:sd t6, 976(tp)
Current Store : [0x8000101c] : sd t5, 984(tp) -- Store: [0x800036e8]:0x10000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000103c]:KMABB32 t6, t5, t4
	-[0x80001040]:sd t6, 992(tp)
Current Store : [0x80001044] : sd t5, 1000(tp) -- Store: [0x800036f8]:0xFFFFFFFB55555555




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000106c]:KMABB32 t6, t5, t4
	-[0x80001070]:sd t6, 1008(tp)
Current Store : [0x80001074] : sd t5, 1016(tp) -- Store: [0x80003708]:0x00040000AAAAAAAA




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800010a0]:KMABB32 t6, t5, t4
	-[0x800010a4]:sd t6, 1024(tp)
Current Store : [0x800010a8] : sd t5, 1032(tp) -- Store: [0x80003718]:0x00400000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == -8388609', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800010cc]:KMABB32 t6, t5, t4
	-[0x800010d0]:sd t6, 1040(tp)
Current Store : [0x800010d4] : sd t5, 1048(tp) -- Store: [0x80003728]:0x00000200FFFEFFFF




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x800010f4]:KMABB32 t6, t5, t4
	-[0x800010f8]:sd t6, 1056(tp)
Current Store : [0x800010fc] : sd t5, 1064(tp) -- Store: [0x80003738]:0x00000040FFFFFFF7




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001118]:KMABB32 t6, t5, t4
	-[0x8000111c]:sd t6, 1072(tp)
Current Store : [0x80001120] : sd t5, 1080(tp) -- Store: [0x80003748]:0x0000000000000002




Last Coverpoint : ['rs2_w0_val == -32769', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001140]:KMABB32 t6, t5, t4
	-[0x80001144]:sd t6, 1088(tp)
Current Store : [0x80001148] : sd t5, 1096(tp) -- Store: [0x80003758]:0x0100000004000000




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w1_val == -134217729', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000116c]:KMABB32 t6, t5, t4
	-[0x80001170]:sd t6, 1104(tp)
Current Store : [0x80001174] : sd t5, 1112(tp) -- Store: [0x80003768]:0xF7FFFFFF7FFFFFFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001194]:KMABB32 t6, t5, t4
	-[0x80001198]:sd t6, 1120(tp)
Current Store : [0x8000119c] : sd t5, 1128(tp) -- Store: [0x80003778]:0x0040000000200000




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800011bc]:KMABB32 t6, t5, t4
	-[0x800011c0]:sd t6, 1136(tp)
Current Store : [0x800011c4] : sd t5, 1144(tp) -- Store: [0x80003788]:0x00000005FFEFFFFF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800011dc]:KMABB32 t6, t5, t4
	-[0x800011e0]:sd t6, 1152(tp)
Current Store : [0x800011e4] : sd t5, 1160(tp) -- Store: [0x80003798]:0x7FFFFFFFFFFFFFF9




Last Coverpoint : ['rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80001204]:KMABB32 t6, t5, t4
	-[0x80001208]:sd t6, 1168(tp)
Current Store : [0x8000120c] : sd t5, 1176(tp) -- Store: [0x800037a8]:0xDFFFFFFF00000400




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80001228]:KMABB32 t6, t5, t4
	-[0x8000122c]:sd t6, 1184(tp)
Current Store : [0x80001230] : sd t5, 1192(tp) -- Store: [0x800037b8]:0xFDFFFFFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80001258]:KMABB32 t6, t5, t4
	-[0x8000125c]:sd t6, 1200(tp)
Current Store : [0x80001260] : sd t5, 1208(tp) -- Store: [0x800037c8]:0xFEFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x8000127c]:KMABB32 t6, t5, t4
	-[0x80001280]:sd t6, 1216(tp)
Current Store : [0x80001284] : sd t5, 1224(tp) -- Store: [0x800037d8]:0xFFDFFFFF00002000




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x800012a8]:KMABB32 t6, t5, t4
	-[0x800012ac]:sd t6, 1232(tp)
Current Store : [0x800012b0] : sd t5, 1240(tp) -- Store: [0x800037e8]:0xFFEFFFFF00000040




Last Coverpoint : ['rs1_w1_val == -262145', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800012d4]:KMABB32 t6, t5, t4
	-[0x800012d8]:sd t6, 1248(tp)
Current Store : [0x800012dc] : sd t5, 1256(tp) -- Store: [0x800037f8]:0xFFFBFFFFFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -131073', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001300]:KMABB32 t6, t5, t4
	-[0x80001304]:sd t6, 1264(tp)
Current Store : [0x80001308] : sd t5, 1272(tp) -- Store: [0x80003808]:0xFFFDFFFFFFFFBFFF




Last Coverpoint : ['rs2_w0_val == -129', 'rs1_w1_val == -4097', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001324]:KMABB32 t6, t5, t4
	-[0x80001328]:sd t6, 1280(tp)
Current Store : [0x8000132c] : sd t5, 1288(tp) -- Store: [0x80003818]:0xFFFFEFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80001350]:KMABB32 t6, t5, t4
	-[0x80001354]:sd t6, 1296(tp)
Current Store : [0x80001358] : sd t5, 1304(tp) -- Store: [0x80003828]:0xFFFFF7FFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001378]:KMABB32 t6, t5, t4
	-[0x8000137c]:sd t6, 1312(tp)
Current Store : [0x80001380] : sd t5, 1320(tp) -- Store: [0x80003838]:0xFFFFFDFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x8000139c]:KMABB32 t6, t5, t4
	-[0x800013a0]:sd t6, 1328(tp)
Current Store : [0x800013a4] : sd t5, 1336(tp) -- Store: [0x80003848]:0x0020000000000001




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800013c4]:KMABB32 t6, t5, t4
	-[0x800013c8]:sd t6, 1344(tp)
Current Store : [0x800013cc] : sd t5, 1352(tp) -- Store: [0x80003858]:0x00010000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800013ec]:KMABB32 t6, t5, t4
	-[0x800013f0]:sd t6, 1360(tp)
Current Store : [0x800013f4] : sd t5, 1368(tp) -- Store: [0x80003868]:0x0000800000000020




Last Coverpoint : ['rs2_w0_val == -2097153', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80001418]:KMABB32 t6, t5, t4
	-[0x8000141c]:sd t6, 1376(tp)
Current Store : [0x80001420] : sd t5, 1384(tp) -- Store: [0x80003878]:0x0000400000000005




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x8000143c]:KMABB32 t6, t5, t4
	-[0x80001440]:sd t6, 1392(tp)
Current Store : [0x80001444] : sd t5, 1400(tp) -- Store: [0x80003888]:0x0000200000100000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80001464]:KMABB32 t6, t5, t4
	-[0x80001468]:sd t6, 1408(tp)
Current Store : [0x8000146c] : sd t5, 1416(tp) -- Store: [0x80003898]:0x00000800FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x8000148c]:KMABB32 t6, t5, t4
	-[0x80001490]:sd t6, 1424(tp)
Current Store : [0x80001494] : sd t5, 1432(tp) -- Store: [0x800038a8]:0x0000010004000000




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800014b8]:KMABB32 t6, t5, t4
	-[0x800014bc]:sd t6, 1440(tp)
Current Store : [0x800014c0] : sd t5, 1448(tp) -- Store: [0x800038b8]:0x0000008000000800




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x800014e0]:KMABB32 t6, t5, t4
	-[0x800014e4]:sd t6, 1456(tp)
Current Store : [0x800014e8] : sd t5, 1464(tp) -- Store: [0x800038c8]:0xFFFFFFFF00002000




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001508]:KMABB32 t6, t5, t4
	-[0x8000150c]:sd t6, 1472(tp)
Current Store : [0x80001510] : sd t5, 1480(tp) -- Store: [0x800038d8]:0xFFFDFFFFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80001530]:KMABB32 t6, t5, t4
	-[0x80001534]:sd t6, 1488(tp)
Current Store : [0x80001538] : sd t5, 1496(tp) -- Store: [0x800038e8]:0x0000080000000200




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80001560]:KMABB32 t6, t5, t4
	-[0x80001564]:sd t6, 1504(tp)
Current Store : [0x80001568] : sd t5, 1512(tp) -- Store: [0x800038f8]:0x0000000100000009




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001584]:KMABB32 t6, t5, t4
	-[0x80001588]:sd t6, 1520(tp)
Current Store : [0x8000158c] : sd t5, 1528(tp) -- Store: [0x80003908]:0xFFFFFFFC00040000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800015b0]:KMABB32 t6, t5, t4
	-[0x800015b4]:sd t6, 1536(tp)
Current Store : [0x800015b8] : sd t5, 1544(tp) -- Store: [0x80003918]:0x3FFFFFFFFF7FFFFF




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x800015e4]:KMABB32 t6, t5, t4
	-[0x800015e8]:sd t6, 1552(tp)
Current Store : [0x800015ec] : sd t5, 1560(tp) -- Store: [0x80003928]:0x00080000F7FFFFFF




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80001608]:KMABB32 t6, t5, t4
	-[0x8000160c]:sd t6, 1568(tp)
Current Store : [0x80001610] : sd t5, 1576(tp) -- Store: [0x80003938]:0xFFFDFFFF00080000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001634]:KMABB32 t6, t5, t4
	-[0x80001638]:sd t6, 1584(tp)
Current Store : [0x8000163c] : sd t5, 1592(tp) -- Store: [0x80003948]:0xFF7FFFFFFFFDFFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001660]:KMABB32 t6, t5, t4
	-[0x80001664]:sd t6, 1600(tp)
Current Store : [0x80001668] : sd t5, 1608(tp) -- Store: [0x80003958]:0xFFFFDFFFFFFFDFFF




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001690]:KMABB32 t6, t5, t4
	-[0x80001694]:sd t6, 1616(tp)
Current Store : [0x80001698] : sd t5, 1624(tp) -- Store: [0x80003968]:0xFFFFBFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800016b8]:KMABB32 t6, t5, t4
	-[0x800016bc]:sd t6, 1632(tp)
Current Store : [0x800016c0] : sd t5, 1640(tp) -- Store: [0x80003978]:0x0100000000080000




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800016dc]:KMABB32 t6, t5, t4
	-[0x800016e0]:sd t6, 1648(tp)
Current Store : [0x800016e4] : sd t5, 1656(tp) -- Store: [0x80003988]:0xFDFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800016fc]:KMABB32 t6, t5, t4
	-[0x80001700]:sd t6, 1664(tp)
Current Store : [0x80001704] : sd t5, 1672(tp) -- Store: [0x80003998]:0xFFFFFF7F80000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000172c]:KMABB32 t6, t5, t4
	-[0x80001730]:sd t6, 1680(tp)
Current Store : [0x80001734] : sd t5, 1688(tp) -- Store: [0x800039a8]:0xDFFFFFFFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001750]:KMABB32 t6, t5, t4
	-[0x80001754]:sd t6, 1696(tp)
Current Store : [0x80001758] : sd t5, 1704(tp) -- Store: [0x800039b8]:0xFFFFFFFCFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001770]:KMABB32 t6, t5, t4
	-[0x80001774]:sd t6, 1712(tp)
Current Store : [0x80001778] : sd t5, 1720(tp) -- Store: [0x800039c8]:0xFFFFFFFA00004000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001794]:KMABB32 t6, t5, t4
	-[0x80001798]:sd t6, 1728(tp)
Current Store : [0x8000179c] : sd t5, 1736(tp) -- Store: [0x800039d8]:0xBFFFFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800017b4]:KMABB32 t6, t5, t4
	-[0x800017b8]:sd t6, 1744(tp)
Current Store : [0x800017bc] : sd t5, 1752(tp) -- Store: [0x800039e8]:0x00000004FFDFFFFF




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800017d8]:KMABB32 t6, t5, t4
	-[0x800017dc]:sd t6, 1760(tp)
Current Store : [0x800017e0] : sd t5, 1768(tp) -- Store: [0x800039f8]:0x0000000940000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001800]:KMABB32 t6, t5, t4
	-[0x80001804]:sd t6, 1776(tp)
Current Store : [0x80001808] : sd t5, 1784(tp) -- Store: [0x80003a08]:0x0100000010000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001828]:KMABB32 t6, t5, t4
	-[0x8000182c]:sd t6, 1792(tp)
Current Store : [0x80001830] : sd t5, 1800(tp) -- Store: [0x80003a18]:0x0000100008000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80001850]:KMABB32 t6, t5, t4
	-[0x80001854]:sd t6, 1808(tp)
Current Store : [0x80001858] : sd t5, 1816(tp) -- Store: [0x80003a28]:0x0000040000000020




Last Coverpoint : ['opcode : kmabb32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 2048', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001878]:KMABB32 t6, t5, t4
	-[0x8000187c]:sd t6, 1824(tp)
Current Store : [0x80001880] : sd t5, 1832(tp) -- Store: [0x80003a38]:0xFFBFFFFF80000000




Last Coverpoint : ['rs2_w1_val == -2097153']
Last Code Sequence : 
	-[0x800018a4]:KMABB32 t6, t5, t4
	-[0x800018a8]:sd t6, 1840(tp)
Current Store : [0x800018ac] : sd t5, 1848(tp) -- Store: [0x80003a48]:0xFFFFFFEF00004000




Last Coverpoint : ['opcode : kmabb32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -2049', 'rs2_w0_val == -524289', 'rs1_w1_val == 524288', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800018d0]:KMABB32 t6, t5, t4
	-[0x800018d4]:sd t6, 1856(tp)
Current Store : [0x800018d8] : sd t5, 1864(tp) -- Store: [0x80003a58]:0x00080000DFFFFFFF




Last Coverpoint : ['opcode : kmabb32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -17', 'rs2_w0_val == -4194305', 'rs1_w1_val == -3', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800018fc]:KMABB32 t6, t5, t4
	-[0x80001900]:sd t6, 1872(tp)
Current Store : [0x80001904] : sd t5, 1880(tp) -- Store: [0x80003a68]:0xFFFFFFFDFFFBFFFF





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

|s.no|            signature             |                                                                                                                                                                     coverpoints                                                                                                                                                                      |                                  code                                   |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xADFEEDBEAE3EEDBE|- opcode : kmabb32<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 2048<br>                                                           |[0x800003c0]:KMABB32 s1, s9, s9<br> [0x800003c4]:sd s1, 0(t1)<br>        |
|   2|[0x80003220]<br>0x0400000420000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                              |[0x800003e0]:KMABB32 tp, tp, tp<br> [0x800003e4]:sd tp, 16(t1)<br>       |
|   3|[0x80003230]<br>0xBEADFEEDAEADFEED|- rs1 : x7<br> - rs2 : x14<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -2<br> |[0x80000404]:KMABB32 a7, t2, a4<br> [0x80000408]:sd a7, 32(t1)<br>       |
|   4|[0x80003240]<br>0x00000040FFFFFFFC|- rs1 : x19<br> - rs2 : x17<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 1<br> - rs1_w1_val == 64<br>                                                                                                                                                                  |[0x80000428]:KMABB32 s3, s3, a7<br> [0x8000042c]:sd s3, 48(t1)<br>       |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -17<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                      |[0x80000454]:KMABB32 zero, sp, zero<br> [0x80000458]:sd zero, 64(t1)<br> |
|   6|[0x80003260]<br>0xFF8000FF0C004001|- rs1 : x3<br> - rs2 : x29<br> - rd : x14<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                      |[0x80000484]:KMABB32 a4, gp, t4<br> [0x80000488]:sd a4, 80(t1)<br>       |
|   7|[0x80003270]<br>0xB7D5BFDDF7D5BFDD|- rs1 : x15<br> - rs2 : x16<br> - rd : x20<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 2<br>                                                                                                                                                                                       |[0x800004b0]:KMABB32 s4, a5, a6<br> [0x800004b4]:sd s4, 96(t1)<br>       |
|   8|[0x80003280]<br>0xDF56FF76E156FF76|- rs1 : x16<br> - rs2 : x8<br> - rd : x18<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 32768<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 1024<br>                                                                                                                                                 |[0x800004e0]:KMABB32 s2, a6, fp<br> [0x800004e4]:sd s2, 112(t1)<br>      |
|   9|[0x80003290]<br>0xAB7FBB6FAB7FAA6F|- rs1 : x18<br> - rs2 : x27<br> - rd : x11<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -17<br> - rs1_w0_val == 256<br>                                                                                                                                                                                 |[0x80000504]:KMABB32 a1, s2, s11<br> [0x80000508]:sd a1, 128(t1)<br>     |
|  10|[0x800032a0]<br>0x00000006FFFF07C0|- rs1 : x1<br> - rs2 : x30<br> - rd : x25<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 64<br> - rs1_w1_val == -33<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                |[0x8000052c]:KMABB32 s9, ra, t5<br> [0x80000530]:sd s9, 144(t1)<br>      |
|  11|[0x800032b0]<br>0xDB7D5BFDDB7D63FD|- rs1 : x28<br> - rs2 : x19<br> - rd : x24<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 4<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 512<br>                                                                                                                                                                                           |[0x80000558]:KMABB32 s8, t3, s3<br> [0x8000055c]:sd s8, 160(t1)<br>      |
|  12|[0x800032c0]<br>0xEADFEEDBEB1FEEDB|- rs1 : x23<br> - rs2 : x12<br> - rd : x13<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 1<br>                                                                                                                                                                                          |[0x80000580]:KMABB32 a3, s7, a2<br> [0x80000584]:sd a3, 176(t1)<br>      |
|  13|[0x800032d0]<br>0x040000000000005C|- rs1 : x17<br> - rs2 : x24<br> - rd : x15<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -9<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                       |[0x800005a4]:KMABB32 a5, a7, s8<br> [0x800005a8]:sd a5, 192(t1)<br>      |
|  14|[0x800032e0]<br>0xFBFFFFFE400003FD|- rs1 : x26<br> - rs2 : x5<br> - rd : x16<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                |[0x800005cc]:KMABB32 a6, s10, t0<br> [0x800005d0]:sd a6, 208(t1)<br>     |
|  15|[0x800032f0]<br>0xFBFFEFFFBFFBFFFF|- rs1 : x30<br> - rs2 : x1<br> - rd : x5<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                   |[0x800005fc]:KMABB32 t0, t5, ra<br> [0x80000600]:sd t0, 224(t1)<br>      |
|  16|[0x80003300]<br>0x0000000000840221|- rs1 : x5<br> - rs2 : x31<br> - rd : x10<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -33<br>                                                                                                                                                                                         |[0x8000062c]:KMABB32 a0, t0, t6<br> [0x80000630]:sd a0, 240(t1)<br>      |
|  17|[0x80003310]<br>0x55535554E0008000|- rs1 : x12<br> - rs2 : x7<br> - rd : x8<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                       |[0x80000660]:KMABB32 fp, a2, t2<br> [0x80000664]:sd fp, 0(tp)<br>        |
|  18|[0x80003320]<br>0xBFFFFFFEFFF00100|- rs1 : x24<br> - rs2 : x9<br> - rd : x28<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -4097<br>                                                                                                                                                                                                                                                   |[0x80000690]:KMABB32 t3, s8, s1<br> [0x80000694]:sd t3, 16(tp)<br>       |
|  19|[0x80003330]<br>0xFEFFFFFDFDFFBFFF|- rs1 : x6<br> - rs2 : x26<br> - rd : x29<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -257<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                       |[0x800006b0]:KMABB32 t4, t1, s10<br> [0x800006b4]:sd t4, 32(tp)<br>      |
|  20|[0x80003340]<br>0x00FEFFFFFFC00001|- rs1 : x21<br> - rs2 : x10<br> - rd : x23<br> - rs2_w1_val == -131073<br> - rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                            |[0x800006e0]:KMABB32 s7, s5, a0<br> [0x800006e4]:sd s7, 48(tp)<br>       |
|  21|[0x80003350]<br>0x0008000030000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x12<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 256<br> - rs1_w1_val == -257<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                |[0x80000708]:KMABB32 a2, t6, a5<br> [0x8000070c]:sd a2, 64(tp)<br>       |
|  22|[0x80003360]<br>0xFFFFFEFF00102002|- rs1 : x20<br> - rs2 : x6<br> - rd : x31<br> - rs2_w1_val == -32769<br>                                                                                                                                                                                                                                                                              |[0x80000738]:KMABB32 t6, s4, t1<br> [0x8000073c]:sd t6, 80(tp)<br>       |
|  23|[0x80003370]<br>0xFFFC001FFFFFFEFF|- rs1 : x8<br> - rs2 : x2<br> - rd : x26<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 262144<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                               |[0x8000075c]:KMABB32 s10, fp, sp<br> [0x80000760]:sd s10, 96(tp)<br>     |
|  24|[0x80003380]<br>0x6DF56FF7F1F57018|- rs1 : x10<br> - rs2 : x21<br> - rd : x22<br> - rs2_w1_val == -8193<br> - rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                   |[0x80000784]:KMABB32 s6, a0, s5<br> [0x80000788]:sd s6, 112(tp)<br>      |
|  25|[0x80003390]<br>0xFFFFD7FFFBFEFFFF|- rs1 : x14<br> - rs2 : x13<br> - rd : x21<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == -5<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                              |[0x800007ac]:KMABB32 s5, a4, a3<br> [0x800007b0]:sd s5, 128(tp)<br>      |
|  26|[0x800033a0]<br>0xFFEFFFFFFFEFFFFF|- rs1 : x0<br> - rs2 : x23<br> - rd : x7<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                        |[0x800007d8]:KMABB32 t2, zero, s7<br> [0x800007dc]:sd t2, 144(tp)<br>    |
|  27|[0x800033b0]<br>0xFDFFFFFFFC000043|- rs1 : x11<br> - rs2 : x3<br> - rd : x1<br> - rs2_w1_val == -513<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                   |[0x80000800]:KMABB32 ra, a1, gp<br> [0x80000804]:sd ra, 160(tp)<br>      |
|  28|[0x800033c0]<br>0x7FFFFFFFFDFFFF6F|- rs1 : x9<br> - rs2 : x28<br> - rd : x27<br> - rs2_w1_val == -257<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                        |[0x80000828]:KMABB32 s11, s1, t3<br> [0x8000082c]:sd s11, 176(tp)<br>    |
|  29|[0x800033d0]<br>0x00000000041FF000|- rs1 : x29<br> - rs2 : x18<br> - rd : x6<br> - rs2_w1_val == -129<br> - rs1_w1_val == 8<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                             |[0x80000854]:KMABB32 t1, t4, s2<br> [0x80000858]:sd t1, 192(tp)<br>      |
|  30|[0x800033e0]<br>0x0100040001080001|- rs1 : x13<br> - rs2 : x20<br> - rd : x30<br> - rs2_w1_val == -65<br> - rs1_w1_val == 4<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                            |[0x8000087c]:KMABB32 t5, a3, s4<br> [0x80000880]:sd t5, 208(tp)<br>      |
|  31|[0x800033f0]<br>0xFFFFC3FF0003F000|- rs1 : x27<br> - rs2 : x11<br> - rd : x2<br> - rs2_w1_val == -33<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                        |[0x800008a0]:KMABB32 sp, s11, a1<br> [0x800008a4]:sd sp, 224(tp)<br>     |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x22<br> - rs2_w1_val == -17<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == -3<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                               |[0x800008cc]:KMABB32 zero, s6, a3<br> [0x800008d0]:sd zero, 240(tp)<br>  |
|  33|[0x80003410]<br>0xFFFFD3FFFBFEDFFF|- rs2 : x22<br> - rs2_w1_val == -9<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                         |[0x800008f4]:KMABB32 s5, t4, s6<br> [0x800008f8]:sd s5, 256(tp)<br>      |
|  34|[0x80003420]<br>0xFFF7FDFFFFFFFFEF|- rd : x3<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -5<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                          |[0x80000918]:KMABB32 gp, a1, a4<br> [0x8000091c]:sd gp, 272(tp)<br>      |
|  35|[0x80003430]<br>0xFFFFFEFEF0101C02|- rs2_w1_val == -3<br>                                                                                                                                                                                                                                                                                                                                |[0x80000940]:KMABB32 t6, t5, t4<br> [0x80000944]:sd t6, 288(tp)<br>      |
|  36|[0x80003440]<br>0xFFFFFEFEF0101B7E|- rs2_w1_val == -2<br> - rs2_w0_val == -33<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                       |[0x80000968]:KMABB32 t6, t5, t4<br> [0x8000096c]:sd t6, 304(tp)<br>      |
|  37|[0x80003450]<br>0xFFFFFEFEF010377E|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                       |[0x8000098c]:KMABB32 t6, t5, t4<br> [0x80000990]:sd t6, 320(tp)<br>      |
|  38|[0x80003460]<br>0xFFFFFEFEEE10373E|- rs2_w1_val == 1073741824<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                 |[0x800009bc]:KMABB32 t6, t5, t4<br> [0x800009c0]:sd t6, 336(tp)<br>      |
|  39|[0x80003470]<br>0xFFFFFEFEEE10373E|- rs2_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                         |[0x800009e0]:KMABB32 t6, t5, t4<br> [0x800009e4]:sd t6, 352(tp)<br>      |
|  40|[0x80003480]<br>0xFFFFFEFF0E10373E|- rs2_w1_val == 268435456<br> - rs2_w0_val == 131072<br>                                                                                                                                                                                                                                                                                              |[0x80000a0c]:KMABB32 t6, t5, t4<br> [0x80000a10]:sd t6, 368(tp)<br>      |
|  41|[0x80003490]<br>0xFFFFFEFF0E103987|- rs2_w1_val == 134217728<br> - rs2_w0_val == -65<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                            |[0x80000a38]:KMABB32 t6, t5, t4<br> [0x80000a3c]:sd t6, 384(tp)<br>      |
|  42|[0x800034a0]<br>0xFFFFFF29B8BAE407|- rs2_w1_val == 67108864<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                     |[0x80000a6c]:KMABB32 t6, t5, t4<br> [0x80000a70]:sd t6, 400(tp)<br>      |
|  43|[0x800034b0]<br>0xFFFFFF29B8DAE407|- rs2_w1_val == 33554432<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                           |[0x80000a94]:KMABB32 t6, t5, t4<br> [0x80000a98]:sd t6, 416(tp)<br>      |
|  44|[0x800034c0]<br>0xFFFF7F29B8D8E407|- rs2_w1_val == 16777216<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                             |[0x80000ac0]:KMABB32 t6, t5, t4<br> [0x80000ac4]:sd t6, 432(tp)<br>      |
|  45|[0x800034d0]<br>0xFFFF7F29B8D8E4EE|- rs2_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                           |[0x80000aec]:KMABB32 t6, t5, t4<br> [0x80000af0]:sd t6, 448(tp)<br>      |
|  46|[0x800034e0]<br>0xFFFF7F29B818E4EE|- rs2_w1_val == 4194304<br> - rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                               |[0x80000b14]:KMABB32 t6, t5, t4<br> [0x80000b18]:sd t6, 464(tp)<br>      |
|  47|[0x800034f0]<br>0xFFFF7F2DB818E4EE|- rs2_w1_val == 2097152<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                               |[0x80000b3c]:KMABB32 t6, t5, t4<br> [0x80000b40]:sd t6, 480(tp)<br>      |
|  48|[0x80003500]<br>0xFFFF7F2DB818A4E6|- rs2_w1_val == 1048576<br> - rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                 |[0x80000b6c]:KMABB32 t6, t5, t4<br> [0x80000b70]:sd t6, 496(tp)<br>      |
|  49|[0x80003510]<br>0xFFFF7F2DB618A4E6|- rs2_w1_val == 524288<br> - rs1_w1_val == 1<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                          |[0x80000b90]:KMABB32 t6, t5, t4<br> [0x80000b94]:sd t6, 512(tp)<br>      |
|  50|[0x80003520]<br>0xFFFF7F2DB618A4E2|- rs2_w1_val == 262144<br> - rs2_w0_val == 2<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                               |[0x80000bb4]:KMABB32 t6, t5, t4<br> [0x80000bb8]:sd t6, 528(tp)<br>      |
|  51|[0x80003530]<br>0xFFFF7F2D75D8A4E2|- rs1_w1_val == 8388608<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                               |[0x80000bdc]:KMABB32 t6, t5, t4<br> [0x80000be0]:sd t6, 544(tp)<br>      |
|  52|[0x80003540]<br>0xFFFF7E2D75B8A4E2|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                           |[0x80000c04]:KMABB32 t6, t5, t4<br> [0x80000c08]:sd t6, 560(tp)<br>      |
|  53|[0x80003550]<br>0xFFFF7E2D7DB8A4E2|- rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                            |[0x80000c2c]:KMABB32 t6, t5, t4<br> [0x80000c30]:sd t6, 576(tp)<br>      |
|  54|[0x80003560]<br>0xFFFF7E2D7BB824E2|- rs2_w0_val == -1025<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                       |[0x80000c54]:KMABB32 t6, t5, t4<br> [0x80000c58]:sd t6, 592(tp)<br>      |
|  55|[0x80003580]<br>0xFFFF7E2D7BBB1CE2|- rs2_w1_val == 32768<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 512<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                     |[0x80000ca8]:KMABB32 t6, t5, t4<br> [0x80000cac]:sd t6, 624(tp)<br>      |
|  56|[0x80003590]<br>0xFFFF7E2D7BBB1CF2|- rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                |[0x80000ccc]:KMABB32 t6, t5, t4<br> [0x80000cd0]:sd t6, 640(tp)<br>      |
|  57|[0x800035a0]<br>0xFFFF7E2D7B3B1CF2|- rs2_w0_val == 8388608<br> - rs1_w1_val == -65<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                            |[0x80000cf4]:KMABB32 t6, t5, t4<br> [0x80000cf8]:sd t6, 656(tp)<br>      |
|  58|[0x800035b0]<br>0xFFFF7E2D7B471CF2|- rs2_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                            |[0x80000d20]:KMABB32 t6, t5, t4<br> [0x80000d24]:sd t6, 672(tp)<br>      |
|  59|[0x800035c0]<br>0xFFFF7E2D7B3EDCF2|- rs2_w1_val == 65536<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                                      |[0x80000d48]:KMABB32 t6, t5, t4<br> [0x80000d4c]:sd t6, 688(tp)<br>      |
|  60|[0x800035d0]<br>0xFFFF7E2D7B3E5CF2|- rs2_w1_val == 16384<br> - rs2_w0_val == -1<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                         |[0x80000d78]:KMABB32 t6, t5, t4<br> [0x80000d7c]:sd t6, 704(tp)<br>      |
|  61|[0x800035e0]<br>0xFFFF7E2D3B3E4CF2|- rs2_w1_val == 8192<br> - rs1_w1_val == -129<br>                                                                                                                                                                                                                                                                                                     |[0x80000da0]:KMABB32 t6, t5, t4<br> [0x80000da4]:sd t6, 720(tp)<br>      |
|  62|[0x800035f0]<br>0xFFFF7E2D3B3E4CF2|- rs2_w1_val == 4096<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                    |[0x80000dcc]:KMABB32 t6, t5, t4<br> [0x80000dd0]:sd t6, 736(tp)<br>      |
|  63|[0x80003600]<br>0xFFFF7E2D391E4CF2|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                              |[0x80000df4]:KMABB32 t6, t5, t4<br> [0x80000df8]:sd t6, 752(tp)<br>      |
|  64|[0x80003610]<br>0xFFFF7E2D091E4CEF|- rs2_w1_val == 1024<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                               |[0x80000e1c]:KMABB32 t6, t5, t4<br> [0x80000e20]:sd t6, 768(tp)<br>      |
|  65|[0x80003620]<br>0xFFFF7E2E891E4CEC|- rs2_w1_val == 512<br> - rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                |[0x80000e40]:KMABB32 t6, t5, t4<br> [0x80000e44]:sd t6, 784(tp)<br>      |
|  66|[0x80003630]<br>0xFFFF7E2E893E58ED|- rs2_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                               |[0x80000e70]:KMABB32 t6, t5, t4<br> [0x80000e74]:sd t6, 800(tp)<br>      |
|  67|[0x80003640]<br>0xFFFF7E2E893A586D|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                               |[0x80000e98]:KMABB32 t6, t5, t4<br> [0x80000e9c]:sd t6, 816(tp)<br>      |
|  68|[0x80003650]<br>0x001F7E2EAA3A586E|- rs2_w1_val == 64<br> - rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                         |[0x80000ebc]:KMABB32 t6, t5, t4<br> [0x80000ec0]:sd t6, 832(tp)<br>      |
|  69|[0x80003660]<br>0x001F7E2EAA3A57CE|- rs2_w1_val == 32<br> - rs2_w0_val == 32<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                  |[0x80000ee0]:KMABB32 t6, t5, t4<br> [0x80000ee4]:sd t6, 848(tp)<br>      |
|  70|[0x80003670]<br>0x001F7E4EAA4657CF|- rs2_w1_val == 16<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                           |[0x80000f0c]:KMABB32 t6, t5, t4<br> [0x80000f10]:sd t6, 864(tp)<br>      |
|  71|[0x80003680]<br>0x001F7E4EAA4647CB|- rs2_w1_val == 8<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                  |[0x80000f30]:KMABB32 t6, t5, t4<br> [0x80000f34]:sd t6, 880(tp)<br>      |
|  72|[0x80003690]<br>0x001F7E4EAA4625CB|- rs2_w1_val == 4<br> - rs2_w0_val == 512<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                 |[0x80000f54]:KMABB32 t6, t5, t4<br> [0x80000f58]:sd t6, 896(tp)<br>      |
|  73|[0x800036a0]<br>0x001F7E4AAA4625BB|- rs2_w1_val == 2<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                      |[0x80000f78]:KMABB32 t6, t5, t4<br> [0x80000f7c]:sd t6, 912(tp)<br>      |
|  74|[0x800036b0]<br>0x00237E4AAA4625BB|- rs2_w1_val == 1<br> - rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                    |[0x80000f98]:KMABB32 t6, t5, t4<br> [0x80000f9c]:sd t6, 928(tp)<br>      |
|  75|[0x800036d0]<br>0x00227E4AAA0625BB|- rs2_w1_val == -1<br> - rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                   |[0x80000fd8]:KMABB32 t6, t5, t4<br> [0x80000fdc]:sd t6, 960(tp)<br>      |
|  76|[0x800036e0]<br>0x00CD28F5AB5B7B11|- rs2_w0_val == -1431655766<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                         |[0x80001014]:KMABB32 t6, t5, t4<br> [0x80001018]:sd t6, 976(tp)<br>      |
|  77|[0x800036f0]<br>0xFB77D3A0060625BC|- rs2_w0_val == -268435457<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                         |[0x8000103c]:KMABB32 t6, t5, t4<br> [0x80001040]:sd t6, 992(tp)<br>      |
|  78|[0x80003700]<br>0xFC227E4B075B7B12|- rs2_w0_val == -33554433<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                         |[0x8000106c]:KMABB32 t6, t5, t4<br> [0x80001070]:sd t6, 1008(tp)<br>     |
|  79|[0x80003710]<br>0xFC227ECB085BFB13|- rs2_w0_val == -16777217<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                                                              |[0x800010a0]:KMABB32 t6, t5, t4<br> [0x800010a4]:sd t6, 1024(tp)<br>     |
|  80|[0x80003720]<br>0xFC227F4B08DCFB14|- rs2_w0_val == -8388609<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                               |[0x800010cc]:KMABB32 t6, t5, t4<br> [0x800010d0]:sd t6, 1040(tp)<br>     |
|  81|[0x80003730]<br>0xFC227F4B08D3FB14|- rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                             |[0x800010f4]:KMABB32 t6, t5, t4<br> [0x800010f8]:sd t6, 1056(tp)<br>     |
|  82|[0x80003740]<br>0xFC227F4B08D41B14|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                              |[0x80001118]:KMABB32 t6, t5, t4<br> [0x8000111c]:sd t6, 1072(tp)<br>     |
|  83|[0x80003750]<br>0xFC227D4B04D41B14|- rs2_w0_val == -32769<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                               |[0x80001140]:KMABB32 t6, t5, t4<br> [0x80001144]:sd t6, 1088(tp)<br>     |
|  84|[0x80003760]<br>0xFC227D8B04D41A94|- rs2_w0_val == 128<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                 |[0x8000116c]:KMABB32 t6, t5, t4<br> [0x80001170]:sd t6, 1104(tp)<br>     |
|  85|[0x80003770]<br>0xFC227D8B06D41A94|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                |[0x80001194]:KMABB32 t6, t5, t4<br> [0x80001198]:sd t6, 1120(tp)<br>     |
|  86|[0x80003780]<br>0xFC227D8B06541A8C|- rs2_w0_val == 8<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                    |[0x800011bc]:KMABB32 t6, t5, t4<br> [0x800011c0]:sd t6, 1136(tp)<br>     |
|  87|[0x80003790]<br>0xFC227D8B09D41A93|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                        |[0x800011dc]:KMABB32 t6, t5, t4<br> [0x800011e0]:sd t6, 1152(tp)<br>     |
|  88|[0x800037a0]<br>0xFC227D8B09D3F293|- rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                                                                                                        |[0x80001204]:KMABB32 t6, t5, t4<br> [0x80001208]:sd t6, 1168(tp)<br>     |
|  89|[0x800037b0]<br>0xFC227D8B09D3F273|- rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                                                                                                         |[0x80001228]:KMABB32 t6, t5, t4<br> [0x8000122c]:sd t6, 1184(tp)<br>     |
|  90|[0x800037c0]<br>0xFA227D8A8DD3F274|- rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                                                                                         |[0x80001258]:KMABB32 t6, t5, t4<br> [0x8000125c]:sd t6, 1200(tp)<br>     |
|  91|[0x800037d0]<br>0xFA227D8A8DD51274|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                          |[0x8000127c]:KMABB32 t6, t5, t4<br> [0x80001280]:sd t6, 1216(tp)<br>     |
|  92|[0x800037e0]<br>0xFA227D9A8DD51234|- rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                                                                          |[0x800012a8]:KMABB32 t6, t5, t4<br> [0x800012ac]:sd t6, 1232(tp)<br>     |
|  93|[0x800037f0]<br>0xFA227E9A8E191235|- rs1_w1_val == -262145<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                              |[0x800012d4]:KMABB32 t6, t5, t4<br> [0x800012d8]:sd t6, 1248(tp)<br>     |
|  94|[0x80003800]<br>0xFA227F9A92195236|- rs1_w1_val == -131073<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                |[0x80001300]:KMABB32 t6, t5, t4<br> [0x80001304]:sd t6, 1264(tp)<br>     |
|  95|[0x80003810]<br>0xFA227F9A921972F7|- rs2_w0_val == -129<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                            |[0x80001324]:KMABB32 t6, t5, t4<br> [0x80001328]:sd t6, 1280(tp)<br>     |
|  96|[0x80003820]<br>0xFA227F9A121972D7|- rs1_w1_val == -2049<br>                                                                                                                                                                                                                                                                                                                             |[0x80001350]:KMABB32 t6, t5, t4<br> [0x80001354]:sd t6, 1296(tp)<br>     |
|  97|[0x80003830]<br>0xFA227F9A1219B4F8|- rs1_w1_val == -513<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                     |[0x80001378]:KMABB32 t6, t5, t4<br> [0x8000137c]:sd t6, 1312(tp)<br>     |
|  98|[0x80003840]<br>0xFA227F9A1219B4EE|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                           |[0x8000139c]:KMABB32 t6, t5, t4<br> [0x800013a0]:sd t6, 1328(tp)<br>     |
|  99|[0x80003850]<br>0xFA227F9A2619B4F8|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                             |[0x800013c4]:KMABB32 t6, t5, t4<br> [0x800013c8]:sd t6, 1344(tp)<br>     |
| 100|[0x80003860]<br>0xFA227F9A2599B4D8|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                             |[0x800013ec]:KMABB32 t6, t5, t4<br> [0x800013f0]:sd t6, 1360(tp)<br>     |
| 101|[0x80003870]<br>0xFA227F9A24F9B4D3|- rs2_w0_val == -2097153<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                |[0x80001418]:KMABB32 t6, t5, t4<br> [0x8000141c]:sd t6, 1376(tp)<br>     |
| 102|[0x80003880]<br>0xFA22BF9A24F9B4D3|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                              |[0x8000143c]:KMABB32 t6, t5, t4<br> [0x80001440]:sd t6, 1392(tp)<br>     |
| 103|[0x80003890]<br>0xFA22BF9A24FA74D6|- rs2_w0_val == -3<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                       |[0x80001464]:KMABB32 t6, t5, t4<br> [0x80001468]:sd t6, 1408(tp)<br>     |
| 104|[0x800038a0]<br>0xF9A2BF9A20FA74D6|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                               |[0x8000148c]:KMABB32 t6, t5, t4<br> [0x80001490]:sd t6, 1424(tp)<br>     |
| 105|[0x800038b0]<br>0xF9A2BF9A20DA6CD6|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                               |[0x800014b8]:KMABB32 t6, t5, t4<br> [0x800014bc]:sd t6, 1440(tp)<br>     |
| 106|[0x800038c0]<br>0xF9A2BF9E20DA6CD6|- rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                |[0x800014e0]:KMABB32 t6, t5, t4<br> [0x800014e4]:sd t6, 1456(tp)<br>     |
| 107|[0x800038d0]<br>0xF9A2B79E20D96CD6|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                                        |[0x80001508]:KMABB32 t6, t5, t4<br> [0x8000150c]:sd t6, 1472(tp)<br>     |
| 108|[0x800038e0]<br>0xF9A2B79E1CD96AD6|- rs2_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                           |[0x80001530]:KMABB32 t6, t5, t4<br> [0x80001534]:sd t6, 1488(tp)<br>     |
| 109|[0x800038f0]<br>0xF9A2B79E1CD06ACD|- rs2_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                                            |[0x80001560]:KMABB32 t6, t5, t4<br> [0x80001564]:sd t6, 1504(tp)<br>     |
| 110|[0x80003900]<br>0xF9A2BF9E1CD06ACD|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                          |[0x80001584]:KMABB32 t6, t5, t4<br> [0x80001588]:sd t6, 1520(tp)<br>     |
| 111|[0x80003910]<br>0xF9A0BF9E18D06ACD|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                          |[0x800015b0]:KMABB32 t6, t5, t4<br> [0x800015b4]:sd t6, 1536(tp)<br>     |
| 112|[0x80003920]<br>0xF9A0C09E20D08ACE|- rs2_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                             |[0x800015e4]:KMABB32 t6, t5, t4<br> [0x800015e8]:sd t6, 1552(tp)<br>     |
| 113|[0x80003930]<br>0xF9A0C09E10C88ACE|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                              |[0x80001608]:KMABB32 t6, t5, t4<br> [0x8000160c]:sd t6, 1568(tp)<br>     |
| 114|[0x80003940]<br>0xF9A0C49E12CA8ACF|- rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                           |[0x80001634]:KMABB32 t6, t5, t4<br> [0x80001638]:sd t6, 1584(tp)<br>     |
| 115|[0x80003950]<br>0xF9A0C49E10CA7ACF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                             |[0x80001660]:KMABB32 t6, t5, t4<br> [0x80001664]:sd t6, 1600(tp)<br>     |
| 116|[0x80003960]<br>0xF9A0C49E0CCA3ACF|- rs2_w0_val == 16384<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                   |[0x80001690]:KMABB32 t6, t5, t4<br> [0x80001694]:sd t6, 1616(tp)<br>     |
| 117|[0x80003970]<br>0xF9A0C49E0CA23ACF|- rs2_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                                |[0x800016b8]:KMABB32 t6, t5, t4<br> [0x800016bc]:sd t6, 1632(tp)<br>     |
| 118|[0x80003980]<br>0xF9A0C49E0CA23CD1|- rs2_w0_val == -2<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                                       |[0x800016dc]:KMABB32 t6, t5, t4<br> [0x800016e0]:sd t6, 1648(tp)<br>     |
| 119|[0x80003990]<br>0x39A0C49E0CA23CD1|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                       |[0x800016fc]:KMABB32 t6, t5, t4<br> [0x80001700]:sd t6, 1664(tp)<br>     |
| 120|[0x800039a0]<br>0x39A0C49E0CE2BD52|- rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                              |[0x8000172c]:KMABB32 t6, t5, t4<br> [0x80001730]:sd t6, 1680(tp)<br>     |
| 121|[0x800039b0]<br>0x3990C49DCCE2BD52|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                        |[0x80001750]:KMABB32 t6, t5, t4<br> [0x80001754]:sd t6, 1696(tp)<br>     |
| 122|[0x800039c0]<br>0x3990C89DCCE2BD52|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                         |[0x80001770]:KMABB32 t6, t5, t4<br> [0x80001774]:sd t6, 1712(tp)<br>     |
| 123|[0x800039d0]<br>0x3990C89D6CE2BD52|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                                |[0x80001794]:KMABB32 t6, t5, t4<br> [0x80001798]:sd t6, 1728(tp)<br>     |
| 124|[0x800039e0]<br>0x3990A89D6BE2BD52|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                                          |[0x800017b4]:KMABB32 t6, t5, t4<br> [0x800017b8]:sd t6, 1744(tp)<br>     |
| 125|[0x800039f0]<br>0x3980A89D2BE2BD52|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                        |[0x800017d8]:KMABB32 t6, t5, t4<br> [0x800017dc]:sd t6, 1760(tp)<br>     |
| 126|[0x80003a00]<br>0x342B5347CBE2BD52|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                         |[0x80001800]:KMABB32 t6, t5, t4<br> [0x80001804]:sd t6, 1776(tp)<br>     |
| 127|[0x80003a10]<br>0x342B5147C3E2BD52|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                                         |[0x80001828]:KMABB32 t6, t5, t4<br> [0x8000182c]:sd t6, 1792(tp)<br>     |
| 128|[0x80003a20]<br>0x342B5147C4E2BD52|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                            |[0x80001850]:KMABB32 t6, t5, t4<br> [0x80001854]:sd t6, 1808(tp)<br>     |
| 129|[0x80003a40]<br>0x342B4D47D4E2BD52|- rs2_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                          |[0x800018a4]:KMABB32 t6, t5, t4<br> [0x800018a8]:sd t6, 1840(tp)<br>     |
