
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a50')]      |
| SIG_REGION                | [('0x80003210', '0x80003ad0', '280 dwords')]      |
| COV_LABELS                | kmsxda32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmsxda32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 280      |
| STAT1                     | 138      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 140     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e4]:KMSXDA32 t6, t5, t4
      [0x800019e8]:sd t6, 1760(sp)
 -- Signature Address: 0x80003aa0 Data: 0xFAACC0232C042C4E
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 16384
      - rs2_w0_val == -1431655766
      - rs1_w1_val == 16384
      - rs1_w0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a10]:KMSXDA32 t6, t5, t4
      [0x80001a14]:sd t6, 1776(sp)
 -- Signature Address: 0x80003ab0 Data: 0xFCACC0234C042C4A
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -134217729
      - rs2_w0_val == -134217729
      - rs1_w0_val == -3






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmsxda32', 'rs1 : x9', 'rs2 : x9', 'rd : x27', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 0', 'rs2_w0_val == -67108865', 'rs1_w1_val == 0', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800003bc]:KMSXDA32 s11, s1, s1
	-[0x800003c0]:sd s11, 0(t1)
Current Store : [0x800003c4] : sd s1, 8(t1) -- Store: [0x80003218]:0x00000000FBFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 16384', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 16384', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800003ec]:KMSXDA32 a4, a4, a4
	-[0x800003f0]:sd a4, 16(t1)
Current Store : [0x800003f4] : sd a4, 24(t1) -- Store: [0x80003228]:0x00006AAB5555AAAA




Last Coverpoint : ['rs1 : x29', 'rs2 : x3', 'rd : x5', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 2048', 'rs2_w0_val == 4194304', 'rs1_w1_val == -262145', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000414]:KMSXDA32 t0, t4, gp
	-[0x80000418]:sd t0, 32(t1)
Current Store : [0x8000041c] : sd t4, 40(t1) -- Store: [0x80003238]:0xFFFBFFFFFF7FFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rd : x10', 'rs1 == rd != rs2', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -9', 'rs2_w0_val == -16385', 'rs1_w1_val == -1', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000440]:KMSXDA32 a0, a0, a1
	-[0x80000444]:sd a0, 48(t1)
Current Store : [0x80000448] : sd a0, 56(t1) -- Store: [0x80003248]:0xFFFFFFFF00000FFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -32769', 'rs2_w0_val == 2048', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000470]:KMSXDA32 sp, ra, sp
	-[0x80000474]:sd sp, 64(t1)
Current Store : [0x80000478] : sd ra, 72(t1) -- Store: [0x80003258]:0x0000400000040000




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x7', 'rs2_w1_val == -8193', 'rs2_w0_val == 32768', 'rs1_w1_val == -33554433', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000049c]:KMSXDA32 t2, a3, tp
	-[0x800004a0]:sd t2, 80(t1)
Current Store : [0x800004a4] : sd a3, 88(t1) -- Store: [0x80003268]:0xFDFFFFFF00008000




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x21', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800004d4]:KMSXDA32 s5, t6, s2
	-[0x800004d8]:sd s5, 96(t1)
Current Store : [0x800004dc] : sd t6, 104(t1) -- Store: [0x80003278]:0xFFFFFFF600010000




Last Coverpoint : ['rs1 : x21', 'rs2 : x29', 'rd : x25', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 16777216', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000500]:KMSXDA32 s9, s5, t4
	-[0x80000504]:sd s9, 112(t1)
Current Store : [0x80000508] : sd s5, 120(t1) -- Store: [0x80003288]:0xFFFFFFFA00080000




Last Coverpoint : ['rs1 : x24', 'rs2 : x22', 'rd : x23', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -257', 'rs1_w1_val == -4097', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000524]:KMSXDA32 s7, s8, s6
	-[0x80000528]:sd s7, 128(t1)
Current Store : [0x8000052c] : sd s8, 136(t1) -- Store: [0x80003298]:0xFFFFEFFFFFFFFFFB




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x30', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 67108864', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000550]:KMSXDA32 t5, s9, a3
	-[0x80000554]:sd t5, 144(t1)
Current Store : [0x80000558] : sd s9, 152(t1) -- Store: [0x800032a8]:0xFFFDFFFF00000003




Last Coverpoint : ['rs1 : x15', 'rs2 : x24', 'rd : x28', 'rs2_w1_val == -536870913', 'rs1_w1_val == 512', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x8000057c]:KMSXDA32 t3, a5, s8
	-[0x80000580]:sd t3, 160(t1)
Current Store : [0x80000584] : sd a5, 168(t1) -- Store: [0x800032b8]:0x00000200FFFEFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x7', 'rd : x15', 'rs2_w1_val == -268435457', 'rs1_w1_val == -524289', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800005a4]:KMSXDA32 a5, a2, t2
	-[0x800005a8]:sd a5, 176(t1)
Current Store : [0x800005ac] : sd a2, 184(t1) -- Store: [0x800032c8]:0xFFF7FFFFFFFFFEFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x0', 'rs2_w1_val == -134217729', 'rs2_w0_val == -134217729', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800005d0]:KMSXDA32 zero, tp, a7
	-[0x800005d4]:sd zero, 192(t1)
Current Store : [0x800005d8] : sd tp, 200(t1) -- Store: [0x800032d8]:0x3FFFFFFFFFFFFFFD




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x22', 'rs2_w1_val == -67108865', 'rs2_w0_val == -513', 'rs1_w1_val == -17', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800005f0]:KMSXDA32 s6, s3, a6
	-[0x800005f4]:sd s6, 208(t1)
Current Store : [0x800005f8] : sd s3, 216(t1) -- Store: [0x800032e8]:0xFFFFFFEF40000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x0', 'rd : x31', 'rs2_w0_val == 0', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000620]:KMSXDA32 t6, s10, zero
	-[0x80000624]:sd t6, 0(t2)
Current Store : [0x80000628] : sd s10, 8(t2) -- Store: [0x800032f8]:0x80000000FFFFFFFA




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x9', 'rs2_w1_val == -16777217', 'rs2_w0_val == -8388609', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80000654]:KMSXDA32 s1, t5, t3
	-[0x80000658]:sd s1, 16(t2)
Current Store : [0x8000065c] : sd t5, 24(t2) -- Store: [0x80003308]:0xAAAAAAAA00040000




Last Coverpoint : ['rs1 : x18', 'rs2 : x10', 'rd : x11', 'rs2_w1_val == -8388609', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000680]:KMSXDA32 a1, s2, a0
	-[0x80000684]:sd a1, 32(t2)
Current Store : [0x80000688] : sd s2, 40(t2) -- Store: [0x80003318]:0xFFFF7FFFFBFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x31', 'rd : x20', 'rs2_w1_val == -4194305', 'rs2_w0_val == 268435456', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800006a8]:KMSXDA32 s4, s6, t6
	-[0x800006ac]:sd s4, 48(t2)
Current Store : [0x800006b0] : sd s6, 56(t2) -- Store: [0x80003328]:0xBFFFFFFF00000003




Last Coverpoint : ['rs1 : x8', 'rs2 : x5', 'rd : x6', 'rs2_w1_val == -2097153', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 536870912', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800006dc]:KMSXDA32 t1, fp, t0
	-[0x800006e0]:sd t1, 64(t2)
Current Store : [0x800006e4] : sd fp, 72(t2) -- Store: [0x80003338]:0x20000000FFFBFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rd : x4', 'rs2_w1_val == -1048577', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000700]:KMSXDA32 tp, gp, fp
	-[0x80000704]:sd tp, 80(t2)
Current Store : [0x80000708] : sd gp, 88(t2) -- Store: [0x80003348]:0x0000400000000100




Last Coverpoint : ['rs1 : x27', 'rs2 : x19', 'rd : x26', 'rs2_w1_val == -524289', 'rs1_w1_val == -129', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000724]:KMSXDA32 s10, s11, s3
	-[0x80000728]:sd s10, 96(t2)
Current Store : [0x8000072c] : sd s11, 104(t2) -- Store: [0x80003358]:0xFFFFFF7FFFFFFFFE




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x3', 'rs2_w1_val == -262145', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000074c]:KMSXDA32 gp, zero, a5
	-[0x80000750]:sd gp, 112(t2)
Current Store : [0x80000754] : sd zero, 120(t2) -- Store: [0x80003368]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x18', 'rs2_w1_val == -131073', 'rs2_w0_val == -33554433', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000076c]:KMSXDA32 s2, s4, s9
	-[0x80000770]:sd s2, 128(t2)
Current Store : [0x80000774] : sd s4, 136(t2) -- Store: [0x80003378]:0x0000000000000008




Last Coverpoint : ['rs1 : x2', 'rs2 : x21', 'rd : x13', 'rs2_w1_val == -65537', 'rs2_w0_val == -9', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000794]:KMSXDA32 a3, sp, s5
	-[0x80000798]:sd a3, 144(t2)
Current Store : [0x8000079c] : sd sp, 152(t2) -- Store: [0x80003388]:0x0800000000080000




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x8', 'rs2_w1_val == -16385', 'rs1_w1_val == -2097153', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800007b8]:KMSXDA32 fp, s7, a2
	-[0x800007bc]:sd fp, 160(t2)
Current Store : [0x800007c0] : sd s7, 168(t2) -- Store: [0x80003398]:0xFFDFFFFFFFFFFFF7




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x12', 'rs2_w1_val == -4097', 'rs2_w0_val == -2', 'rs1_w1_val == -2049', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800007dc]:KMSXDA32 a2, a7, ra
	-[0x800007e0]:sd a2, 176(t2)
Current Store : [0x800007e4] : sd a7, 184(t2) -- Store: [0x800033a8]:0xFFFFF7FF20000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x24', 'rs2_w1_val == -2049', 'rs2_w0_val == -8193', 'rs1_w1_val == 16', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000800]:KMSXDA32 s8, t1, s4
	-[0x80000804]:sd s8, 192(t2)
Current Store : [0x80000808] : sd t1, 200(t2) -- Store: [0x800033b8]:0x0000001010000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x17', 'rs2_w1_val == -1025', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000082c]:KMSXDA32 a7, a6, t5
	-[0x80000830]:sd a7, 0(sp)
Current Store : [0x80000834] : sd a6, 8(sp) -- Store: [0x800033c8]:0x0004000000000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rd : x1', 'rs2_w1_val == -513', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000085c]:KMSXDA32 ra, a1, s10
	-[0x80000860]:sd ra, 16(sp)
Current Store : [0x80000864] : sd a1, 24(sp) -- Store: [0x800033d8]:0x40000000FEFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rd : x29', 'rs2_w1_val == -257', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000880]:KMSXDA32 t4, t0, t1
	-[0x80000884]:sd t4, 32(sp)
Current Store : [0x80000888] : sd t0, 40(sp) -- Store: [0x800033e8]:0xFFFFFFFF00000006




Last Coverpoint : ['rs1 : x28', 'rs2 : x27', 'rd : x19', 'rs2_w1_val == -129', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800008a8]:KMSXDA32 s3, t3, s11
	-[0x800008ac]:sd s3, 48(sp)
Current Store : [0x800008b0] : sd t3, 56(sp) -- Store: [0x800033f8]:0x8000000000002000




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rd : x16', 'rs2_w1_val == -65', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800008d0]:KMSXDA32 a6, t2, s7
	-[0x800008d4]:sd a6, 64(sp)
Current Store : [0x800008d8] : sd t2, 72(sp) -- Store: [0x80003408]:0x00400000FFFFFFF7




Last Coverpoint : ['rs2_w1_val == -33', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800008f8]:KMSXDA32 t6, t5, t4
	-[0x800008fc]:sd t6, 80(sp)
Current Store : [0x80000900] : sd t5, 88(sp) -- Store: [0x80003418]:0x2000000000080000




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == -33', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000920]:KMSXDA32 t6, t5, t4
	-[0x80000924]:sd t6, 96(sp)
Current Store : [0x80000928] : sd t5, 104(sp) -- Store: [0x80003428]:0xFFFFFFDFFFFDFFFF




Last Coverpoint : ['rs2_w1_val == -5', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x8000094c]:KMSXDA32 t6, t5, t4
	-[0x80000950]:sd t6, 112(sp)
Current Store : [0x80000954] : sd t5, 120(sp) -- Store: [0x80003438]:0x55555555C0000000




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 536870912', 'rs1_w1_val == -3', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000970]:KMSXDA32 t6, t5, t4
	-[0x80000974]:sd t6, 128(sp)
Current Store : [0x80000978] : sd t5, 136(sp) -- Store: [0x80003448]:0xFFFFFFFDFFBFFFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80000998]:KMSXDA32 t6, t5, t4
	-[0x8000099c]:sd t6, 144(sp)
Current Store : [0x800009a0] : sd t5, 152(sp) -- Store: [0x80003458]:0x0000020000000800




Last Coverpoint : ['rs2_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800009bc]:KMSXDA32 t6, t5, t4
	-[0x800009c0]:sd t6, 160(sp)
Current Store : [0x800009c4] : sd t5, 168(sp) -- Store: [0x80003468]:0xFFF7FFFF00000005




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == -2049', 'rs1_w1_val == -4194305', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800009f0]:KMSXDA32 t6, t5, t4
	-[0x800009f4]:sd t6, 176(sp)
Current Store : [0x800009f8] : sd t5, 184(sp) -- Store: [0x80003478]:0xFFBFFFFF00000040




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -2147483648', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a18]:KMSXDA32 t6, t5, t4
	-[0x80000a1c]:sd t6, 192(sp)
Current Store : [0x80000a20] : sd t5, 200(sp) -- Store: [0x80003488]:0x00004000FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000a40]:KMSXDA32 t6, t5, t4
	-[0x80000a44]:sd t6, 208(sp)
Current Store : [0x80000a48] : sd t5, 216(sp) -- Store: [0x80003498]:0xFEFFFFFFFFFFFFF8




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w1_val == 134217728', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a64]:KMSXDA32 t6, t5, t4
	-[0x80000a68]:sd t6, 224(sp)
Current Store : [0x80000a6c] : sd t5, 232(sp) -- Store: [0x800034a8]:0xFFDFFFFF80000000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -524289', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a98]:KMSXDA32 t6, t5, t4
	-[0x80000a9c]:sd t6, 240(sp)
Current Store : [0x80000aa0] : sd t5, 248(sp) -- Store: [0x800034b8]:0x3FFFFFFF04000000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000ac4]:KMSXDA32 t6, t5, t4
	-[0x80000ac8]:sd t6, 256(sp)
Current Store : [0x80000acc] : sd t5, 264(sp) -- Store: [0x800034c8]:0xC000000020000000




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == -4097', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000af4]:KMSXDA32 t6, t5, t4
	-[0x80000af8]:sd t6, 272(sp)
Current Store : [0x80000afc] : sd t5, 280(sp) -- Store: [0x800034d8]:0xFFFFFFFBFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == -32769', 'rs1_w1_val == -134217729', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000b2c]:KMSXDA32 t6, t5, t4
	-[0x80000b30]:sd t6, 288(sp)
Current Store : [0x80000b34] : sd t5, 296(sp) -- Store: [0x800034e8]:0xF7FFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000b5c]:KMSXDA32 t6, t5, t4
	-[0x80000b60]:sd t6, 304(sp)
Current Store : [0x80000b64] : sd t5, 312(sp) -- Store: [0x800034f8]:0x0000004000000007




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 512', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000b7c]:KMSXDA32 t6, t5, t4
	-[0x80000b80]:sd t6, 320(sp)
Current Store : [0x80000b84] : sd t5, 328(sp) -- Store: [0x80003508]:0xFFFFFFFC02000000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == 2048', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000ba4]:KMSXDA32 t6, t5, t4
	-[0x80000ba8]:sd t6, 336(sp)
Current Store : [0x80000bac] : sd t5, 344(sp) -- Store: [0x80003518]:0x0000080000000001




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000bcc]:KMSXDA32 t6, t5, t4
	-[0x80000bd0]:sd t6, 352(sp)
Current Store : [0x80000bd4] : sd t5, 360(sp) -- Store: [0x80003528]:0xFBFFFFFF01000000




Last Coverpoint : ['rs2_w1_val == -33554433', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000bf4]:KMSXDA32 t6, t5, t4
	-[0x80000bf8]:sd t6, 368(sp)
Current Store : [0x80000bfc] : sd t5, 376(sp) -- Store: [0x80003538]:0x0000000600800000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == 128', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c1c]:KMSXDA32 t6, t5, t4
	-[0x80000c20]:sd t6, 384(sp)
Current Store : [0x80000c24] : sd t5, 392(sp) -- Store: [0x80003548]:0xC000000000400000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c50]:KMSXDA32 t6, t5, t4
	-[0x80000c54]:sd t6, 400(sp)
Current Store : [0x80000c58] : sd t5, 408(sp) -- Store: [0x80003558]:0x0000400000200000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 131072', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c74]:KMSXDA32 t6, t5, t4
	-[0x80000c78]:sd t6, 416(sp)
Current Store : [0x80000c7c] : sd t5, 424(sp) -- Store: [0x80003568]:0x0000000900100000




Last Coverpoint : ['rs2_w0_val == -33', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000ca0]:KMSXDA32 t6, t5, t4
	-[0x80000ca4]:sd t6, 432(sp)
Current Store : [0x80000ca8] : sd t5, 440(sp) -- Store: [0x80003578]:0x8000000000020000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cc4]:KMSXDA32 t6, t5, t4
	-[0x80000cc8]:sd t6, 448(sp)
Current Store : [0x80000ccc] : sd t5, 456(sp) -- Store: [0x80003588]:0xFFFFF7FF00004000




Last Coverpoint : ['rs2_w0_val == -262145', 'rs1_w1_val == -268435457', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cf4]:KMSXDA32 t6, t5, t4
	-[0x80000cf8]:sd t6, 464(sp)
Current Store : [0x80000cfc] : sd t5, 472(sp) -- Store: [0x80003598]:0xEFFFFFFF00001000




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == -513', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d18]:KMSXDA32 t6, t5, t4
	-[0x80000d1c]:sd t6, 480(sp)
Current Store : [0x80000d20] : sd t5, 488(sp) -- Store: [0x800035a8]:0xFFFFFDFF00000200




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d44]:KMSXDA32 t6, t5, t4
	-[0x80000d48]:sd t6, 496(sp)
Current Store : [0x80000d4c] : sd t5, 504(sp) -- Store: [0x800035b8]:0xFDFFFFFF00000080




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d70]:KMSXDA32 t6, t5, t4
	-[0x80000d74]:sd t6, 512(sp)
Current Store : [0x80000d78] : sd t5, 520(sp) -- Store: [0x800035c8]:0xFFFBFFFF00000020




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d90]:KMSXDA32 t6, t5, t4
	-[0x80000d94]:sd t6, 528(sp)
Current Store : [0x80000d98] : sd t5, 536(sp) -- Store: [0x800035d8]:0x0020000000000010




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000db8]:KMSXDA32 t6, t5, t4
	-[0x80000dbc]:sd t6, 544(sp)
Current Store : [0x80000dc0] : sd t5, 552(sp) -- Store: [0x800035e8]:0xFBFFFFFF00000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000dec]:KMSXDA32 t6, t5, t4
	-[0x80000df0]:sd t6, 560(sp)
Current Store : [0x80000df4] : sd t5, 568(sp) -- Store: [0x800035f8]:0x5555555500000002




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e08]:KMSXDA32 t6, t5, t4
	-[0x80000e0c]:sd t6, 576(sp)
Current Store : [0x80000e10] : sd t5, 584(sp) -- Store: [0x80003608]:0x00000010FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 524288']
Last Code Sequence : 
	-[0x80000e38]:KMSXDA32 t6, t5, t4
	-[0x80000e3c]:sd t6, 592(sp)
Current Store : [0x80000e40] : sd t5, 600(sp) -- Store: [0x80003618]:0xFFFF7FFF00100000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000e60]:KMSXDA32 t6, t5, t4
	-[0x80000e64]:sd t6, 608(sp)
Current Store : [0x80000e68] : sd t5, 616(sp) -- Store: [0x80003628]:0x00080000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000e8c]:KMSXDA32 t6, t5, t4
	-[0x80000e90]:sd t6, 624(sp)
Current Store : [0x80000e94] : sd t5, 632(sp) -- Store: [0x80003638]:0x00000020AAAAAAAA




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80000eb8]:KMSXDA32 t6, t5, t4
	-[0x80000ebc]:sd t6, 640(sp)
Current Store : [0x80000ec0] : sd t5, 648(sp) -- Store: [0x80003648]:0xFFFFFEFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80000edc]:KMSXDA32 t6, t5, t4
	-[0x80000ee0]:sd t6, 656(sp)
Current Store : [0x80000ee4] : sd t5, 664(sp) -- Store: [0x80003658]:0x7FFFFFFF00000000




Last Coverpoint : ['rs2_w1_val == 1024']
Last Code Sequence : 
	-[0x80000f00]:KMSXDA32 t6, t5, t4
	-[0x80000f04]:sd t6, 672(sp)
Current Store : [0x80000f08] : sd t5, 680(sp) -- Store: [0x80003668]:0xFFFFFDFF00000002




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000f28]:KMSXDA32 t6, t5, t4
	-[0x80000f2c]:sd t6, 688(sp)
Current Store : [0x80000f30] : sd t5, 696(sp) -- Store: [0x80003678]:0x20000000FFFFFFFD




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000f50]:KMSXDA32 t6, t5, t4
	-[0x80000f54]:sd t6, 704(sp)
Current Store : [0x80000f58] : sd t5, 712(sp) -- Store: [0x80003688]:0x00010000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80000f74]:KMSXDA32 t6, t5, t4
	-[0x80000f78]:sd t6, 720(sp)
Current Store : [0x80000f7c] : sd t5, 728(sp) -- Store: [0x80003698]:0x00000004FFFFFFF9




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000f9c]:KMSXDA32 t6, t5, t4
	-[0x80000fa0]:sd t6, 736(sp)
Current Store : [0x80000fa4] : sd t5, 744(sp) -- Store: [0x800036a8]:0xFFFF7FFF00000020




Last Coverpoint : ['rs2_w1_val == 32']
Last Code Sequence : 
	-[0x80000fc0]:KMSXDA32 t6, t5, t4
	-[0x80000fc4]:sd t6, 752(sp)
Current Store : [0x80000fc8] : sd t5, 760(sp) -- Store: [0x800036b8]:0xFFFF7FFF40000000




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000fe4]:KMSXDA32 t6, t5, t4
	-[0x80000fe8]:sd t6, 768(sp)
Current Store : [0x80000fec] : sd t5, 776(sp) -- Store: [0x800036c8]:0x0400000000000200




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001010]:KMSXDA32 t6, t5, t4
	-[0x80001014]:sd t6, 784(sp)
Current Store : [0x80001018] : sd t5, 792(sp) -- Store: [0x800036d8]:0xFFFBFFFFFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000103c]:KMSXDA32 t6, t5, t4
	-[0x80001040]:sd t6, 800(sp)
Current Store : [0x80001044] : sd t5, 808(sp) -- Store: [0x800036e8]:0x00010000DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001068]:KMSXDA32 t6, t5, t4
	-[0x8000106c]:sd t6, 816(sp)
Current Store : [0x80001070] : sd t5, 824(sp) -- Store: [0x800036f8]:0xF7FFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000108c]:KMSXDA32 t6, t5, t4
	-[0x80001090]:sd t6, 832(sp)
Current Store : [0x80001094] : sd t5, 840(sp) -- Store: [0x80003708]:0x00000002FEFFFFFF




Last Coverpoint : ['rs2_w1_val == -1', 'rs2_w0_val == 32', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800010b0]:KMSXDA32 t6, t5, t4
	-[0x800010b4]:sd t6, 848(sp)
Current Store : [0x800010b8] : sd t5, 856(sp) -- Store: [0x80003718]:0x00000003FFFFFF7F




Last Coverpoint : ['rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800010cc]:KMSXDA32 t6, t5, t4
	-[0x800010d0]:sd t6, 864(sp)
Current Store : [0x800010d4] : sd t5, 872(sp) -- Store: [0x80003728]:0x0000000000000006




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w1_val == -1048577', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800010f0]:KMSXDA32 t6, t5, t4
	-[0x800010f4]:sd t6, 880(sp)
Current Store : [0x800010f8] : sd t5, 888(sp) -- Store: [0x80003738]:0xFFEFFFFFFFFFFFEF




Last Coverpoint : ['rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001118]:KMSXDA32 t6, t5, t4
	-[0x8000111c]:sd t6, 896(sp)
Current Store : [0x80001120] : sd t5, 904(sp) -- Store: [0x80003748]:0xFFFFFFDF00000001




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001144]:KMSXDA32 t6, t5, t4
	-[0x80001148]:sd t6, 912(sp)
Current Store : [0x8000114c] : sd t5, 920(sp) -- Store: [0x80003758]:0xFFFFFFDFFDFFFFFF




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80001170]:KMSXDA32 t6, t5, t4
	-[0x80001174]:sd t6, 928(sp)
Current Store : [0x80001178] : sd t5, 936(sp) -- Store: [0x80003768]:0xDFFFFFFFDFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800011a4]:KMSXDA32 t6, t5, t4
	-[0x800011a8]:sd t6, 944(sp)
Current Store : [0x800011ac] : sd t5, 952(sp) -- Store: [0x80003778]:0xAAAAAAAA3FFFFFFF




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800011c8]:KMSXDA32 t6, t5, t4
	-[0x800011cc]:sd t6, 960(sp)
Current Store : [0x800011d0] : sd t5, 968(sp) -- Store: [0x80003788]:0x0100000020000000




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800011ec]:KMSXDA32 t6, t5, t4
	-[0x800011f0]:sd t6, 976(sp)
Current Store : [0x800011f4] : sd t5, 984(sp) -- Store: [0x80003798]:0x0000400040000000




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001218]:KMSXDA32 t6, t5, t4
	-[0x8000121c]:sd t6, 992(sp)
Current Store : [0x80001220] : sd t5, 1000(sp) -- Store: [0x800037a8]:0x00000007FF7FFFFF




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001244]:KMSXDA32 t6, t5, t4
	-[0x80001248]:sd t6, 1008(sp)
Current Store : [0x8000124c] : sd t5, 1016(sp) -- Store: [0x800037b8]:0xAAAAAAAAFFFFFDFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001260]:KMSXDA32 t6, t5, t4
	-[0x80001264]:sd t6, 1024(sp)
Current Store : [0x80001268] : sd t5, 1032(sp) -- Store: [0x800037c8]:0x0000000000000001




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80001280]:KMSXDA32 t6, t5, t4
	-[0x80001284]:sd t6, 1040(sp)
Current Store : [0x80001288] : sd t5, 1048(sp) -- Store: [0x800037d8]:0x0000020080000000




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800012ac]:KMSXDA32 t6, t5, t4
	-[0x800012b0]:sd t6, 1056(sp)
Current Store : [0x800012b4] : sd t5, 1064(sp) -- Store: [0x800037e8]:0xFF7FFFFF00008000




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800012d4]:KMSXDA32 t6, t5, t4
	-[0x800012d8]:sd t6, 1072(sp)
Current Store : [0x800012dc] : sd t5, 1080(sp) -- Store: [0x800037f8]:0xFFFEFFFF01000000




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001300]:KMSXDA32 t6, t5, t4
	-[0x80001304]:sd t6, 1088(sp)
Current Store : [0x80001308] : sd t5, 1096(sp) -- Store: [0x80003808]:0xFFFFBFFF00000003




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x8000132c]:KMSXDA32 t6, t5, t4
	-[0x80001330]:sd t6, 1104(sp)
Current Store : [0x80001334] : sd t5, 1112(sp) -- Store: [0x80003818]:0xFFFFDFFFFFFFFFFA




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001354]:KMSXDA32 t6, t5, t4
	-[0x80001358]:sd t6, 1120(sp)
Current Store : [0x8000135c] : sd t5, 1128(sp) -- Store: [0x80003828]:0xFFFFFBFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80001378]:KMSXDA32 t6, t5, t4
	-[0x8000137c]:sd t6, 1136(sp)
Current Store : [0x80001380] : sd t5, 1144(sp) -- Store: [0x80003838]:0xFFFFFFBF00040000




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800013a0]:KMSXDA32 t6, t5, t4
	-[0x800013a4]:sd t6, 1152(sp)
Current Store : [0x800013a8] : sd t5, 1160(sp) -- Store: [0x80003848]:0xFFFFFFF700000010




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x800013bc]:KMSXDA32 t6, t5, t4
	-[0x800013c0]:sd t6, 1168(sp)
Current Store : [0x800013c4] : sd t5, 1176(sp) -- Store: [0x80003858]:0xFFFFFFFEFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w1_val == 268435456', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800013e8]:KMSXDA32 t6, t5, t4
	-[0x800013ec]:sd t6, 1184(sp)
Current Store : [0x800013f0] : sd t5, 1192(sp) -- Store: [0x80003868]:0x10000000EFFFFFFF




Last Coverpoint : ['rs1_w1_val == 33554432', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001410]:KMSXDA32 t6, t5, t4
	-[0x80001414]:sd t6, 1200(sp)
Current Store : [0x80001418] : sd t5, 1208(sp) -- Store: [0x80003878]:0x02000000FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80001438]:KMSXDA32 t6, t5, t4
	-[0x8000143c]:sd t6, 1216(sp)
Current Store : [0x80001440] : sd t5, 1224(sp) -- Store: [0x80003888]:0x00800000FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80001468]:KMSXDA32 t6, t5, t4
	-[0x8000146c]:sd t6, 1232(sp)
Current Store : [0x80001470] : sd t5, 1240(sp) -- Store: [0x80003898]:0x0010000000008000




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80001498]:KMSXDA32 t6, t5, t4
	-[0x8000149c]:sd t6, 1248(sp)
Current Store : [0x800014a0] : sd t5, 1256(sp) -- Store: [0x800038a8]:0x00020000FFFDFFFF




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800014c8]:KMSXDA32 t6, t5, t4
	-[0x800014cc]:sd t6, 1264(sp)
Current Store : [0x800014d0] : sd t5, 1272(sp) -- Store: [0x800038b8]:0x0000800000200000




Last Coverpoint : ['rs2_w0_val == -17', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014ec]:KMSXDA32 t6, t5, t4
	-[0x800014f0]:sd t6, 1280(sp)
Current Store : [0x800014f4] : sd t5, 1288(sp) -- Store: [0x800038c8]:0x0000200000200000




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001514]:KMSXDA32 t6, t5, t4
	-[0x80001518]:sd t6, 1296(sp)
Current Store : [0x8000151c] : sd t5, 1304(sp) -- Store: [0x800038d8]:0x00001000FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001540]:KMSXDA32 t6, t5, t4
	-[0x80001544]:sd t6, 1312(sp)
Current Store : [0x80001548] : sd t5, 1320(sp) -- Store: [0x800038e8]:0x00000400FFFEFFFF




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x8000156c]:KMSXDA32 t6, t5, t4
	-[0x80001570]:sd t6, 1328(sp)
Current Store : [0x80001574] : sd t5, 1336(sp) -- Store: [0x800038f8]:0x00000100FBFFFFFF




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001598]:KMSXDA32 t6, t5, t4
	-[0x8000159c]:sd t6, 1344(sp)
Current Store : [0x800015a0] : sd t5, 1352(sp) -- Store: [0x80003908]:0x0000008000000005




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800015c8]:KMSXDA32 t6, t5, t4
	-[0x800015cc]:sd t6, 1360(sp)
Current Store : [0x800015d0] : sd t5, 1368(sp) -- Store: [0x80003918]:0x00000008FFFFFFFB




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800015ec]:KMSXDA32 t6, t5, t4
	-[0x800015f0]:sd t6, 1376(sp)
Current Store : [0x800015f4] : sd t5, 1384(sp) -- Store: [0x80003928]:0x00000001FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001614]:KMSXDA32 t6, t5, t4
	-[0x80001618]:sd t6, 1392(sp)
Current Store : [0x8000161c] : sd t5, 1400(sp) -- Store: [0x80003938]:0x040000007FFFFFFF




Last Coverpoint : ['rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001640]:KMSXDA32 t6, t5, t4
	-[0x80001644]:sd t6, 1408(sp)
Current Store : [0x80001648] : sd t5, 1416(sp) -- Store: [0x80003948]:0xFFFF7FFF00000004




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001668]:KMSXDA32 t6, t5, t4
	-[0x8000166c]:sd t6, 1424(sp)
Current Store : [0x80001670] : sd t5, 1432(sp) -- Store: [0x80003958]:0xFFFFFFF8BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001690]:KMSXDA32 t6, t5, t4
	-[0x80001694]:sd t6, 1440(sp)
Current Store : [0x80001698] : sd t5, 1448(sp) -- Store: [0x80003968]:0x00000100FFFFFF7F




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x800016b8]:KMSXDA32 t6, t5, t4
	-[0x800016bc]:sd t6, 1456(sp)
Current Store : [0x800016c0] : sd t5, 1464(sp) -- Store: [0x80003978]:0xFFFFFFFCFBFFFFFF




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x800016e4]:KMSXDA32 t6, t5, t4
	-[0x800016e8]:sd t6, 1472(sp)
Current Store : [0x800016ec] : sd t5, 1480(sp) -- Store: [0x80003988]:0x3FFFFFFFFFFFFFFA




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000171c]:KMSXDA32 t6, t5, t4
	-[0x80001720]:sd t6, 1488(sp)
Current Store : [0x80001724] : sd t5, 1496(sp) -- Store: [0x80003998]:0xFFFFFDFFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001748]:KMSXDA32 t6, t5, t4
	-[0x8000174c]:sd t6, 1504(sp)
Current Store : [0x80001750] : sd t5, 1512(sp) -- Store: [0x800039a8]:0xFFFFFFFCFFF7FFFF




Last Coverpoint : ['rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80001770]:KMSXDA32 t6, t5, t4
	-[0x80001774]:sd t6, 1520(sp)
Current Store : [0x80001778] : sd t5, 1528(sp) -- Store: [0x800039b8]:0x00000020F7FFFFFF




Last Coverpoint : ['rs2_w0_val == -129', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80001798]:KMSXDA32 t6, t5, t4
	-[0x8000179c]:sd t6, 1536(sp)
Current Store : [0x800017a0] : sd t5, 1544(sp) -- Store: [0x800039c8]:0xFF7FFFFF00000400




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800017c8]:KMSXDA32 t6, t5, t4
	-[0x800017cc]:sd t6, 1552(sp)
Current Store : [0x800017d0] : sd t5, 1560(sp) -- Store: [0x800039d8]:0xFFFF7FFFFFFF7FFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800017f4]:KMSXDA32 t6, t5, t4
	-[0x800017f8]:sd t6, 1568(sp)
Current Store : [0x800017fc] : sd t5, 1576(sp) -- Store: [0x800039e8]:0xFFFFFFFCFFFFBFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001824]:KMSXDA32 t6, t5, t4
	-[0x80001828]:sd t6, 1584(sp)
Current Store : [0x8000182c] : sd t5, 1592(sp) -- Store: [0x800039f8]:0xBFFFFFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000184c]:KMSXDA32 t6, t5, t4
	-[0x80001850]:sd t6, 1600(sp)
Current Store : [0x80001854] : sd t5, 1608(sp) -- Store: [0x80003a08]:0x00000100FFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001878]:KMSXDA32 t6, t5, t4
	-[0x8000187c]:sd t6, 1616(sp)
Current Store : [0x80001880] : sd t5, 1624(sp) -- Store: [0x80003a18]:0xFFFFFFF9FFFFF7FF




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800018a8]:KMSXDA32 t6, t5, t4
	-[0x800018ac]:sd t6, 1632(sp)
Current Store : [0x800018b0] : sd t5, 1640(sp) -- Store: [0x80003a28]:0x04000000FFFFDFFF




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800018d0]:KMSXDA32 t6, t5, t4
	-[0x800018d4]:sd t6, 1648(sp)
Current Store : [0x800018d8] : sd t5, 1656(sp) -- Store: [0x80003a38]:0x00800000FFFFFBFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800018f4]:KMSXDA32 t6, t5, t4
	-[0x800018f8]:sd t6, 1664(sp)
Current Store : [0x800018fc] : sd t5, 1672(sp) -- Store: [0x80003a48]:0x00000400FFFFFFDF




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001918]:KMSXDA32 t6, t5, t4
	-[0x8000191c]:sd t6, 1680(sp)
Current Store : [0x80001920] : sd t5, 1688(sp) -- Store: [0x80003a58]:0xFFFFFFFA08000000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001944]:KMSXDA32 t6, t5, t4
	-[0x80001948]:sd t6, 1696(sp)
Current Store : [0x8000194c] : sd t5, 1704(sp) -- Store: [0x80003a68]:0xDFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001968]:KMSXDA32 t6, t5, t4
	-[0x8000196c]:sd t6, 1712(sp)
Current Store : [0x80001970] : sd t5, 1720(sp) -- Store: [0x80003a78]:0xFFFFFFF900000003




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001990]:KMSXDA32 t6, t5, t4
	-[0x80001994]:sd t6, 1728(sp)
Current Store : [0x80001998] : sd t5, 1736(sp) -- Store: [0x80003a88]:0x00010000FFFFFFEF




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800019b4]:KMSXDA32 t6, t5, t4
	-[0x800019b8]:sd t6, 1744(sp)
Current Store : [0x800019bc] : sd t5, 1752(sp) -- Store: [0x80003a98]:0x0001000000000004




Last Coverpoint : ['opcode : kmsxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 16384', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 16384', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800019e4]:KMSXDA32 t6, t5, t4
	-[0x800019e8]:sd t6, 1760(sp)
Current Store : [0x800019ec] : sd t5, 1768(sp) -- Store: [0x80003aa8]:0x0000400000000400




Last Coverpoint : ['opcode : kmsxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -134217729', 'rs2_w0_val == -134217729', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001a10]:KMSXDA32 t6, t5, t4
	-[0x80001a14]:sd t6, 1776(sp)
Current Store : [0x80001a18] : sd t5, 1784(sp) -- Store: [0x80003ab8]:0x3FFFFFFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001a38]:KMSXDA32 t6, t5, t4
	-[0x80001a3c]:sd t6, 1792(sp)
Current Store : [0x80001a40] : sd t5, 1800(sp) -- Store: [0x80003ac8]:0x0000004055555555





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

|s.no|            signature             |                                                                                                                                                                      coverpoints                                                                                                                                                                      |                                  code                                   |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBB6FAB7FBB6FAB7F|- opcode : kmsxda32<br> - rs1 : x9<br> - rs2 : x9<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 0<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 0<br> - rs1_w0_val == -67108865<br>                                              |[0x800003bc]:KMSXDA32 s11, s1, s1<br> [0x800003c0]:sd s11, 0(t1)<br>     |
|   2|[0x80003220]<br>0x00006AAB5555AAAA|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 16384<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -1431655766<br>                                                                                                                      |[0x800003ec]:KMSXDA32 a4, a4, a4<br> [0x800003f0]:sd a4, 16(t1)<br>      |
|   3|[0x80003230]<br>0x0000010480400B90|- rs1 : x29<br> - rs2 : x3<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2048<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -8388609<br> |[0x80000414]:KMSXDA32 t0, t4, gp<br> [0x80000418]:sd t0, 32(t1)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFF00000FFF|- rs1 : x10<br> - rs2 : x11<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -9<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -1<br> - rs1_w0_val == 2048<br>                                                                                                |[0x80000440]:KMSXDA32 a0, a0, a1<br> [0x80000444]:sd a0, 48(t1)<br>      |
|   5|[0x80003250]<br>0xFFFF8000FE040800|- rs1 : x1<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 262144<br>                                                                                                                      |[0x80000470]:KMSXDA32 sp, ra, sp<br> [0x80000474]:sd sp, 64(t1)<br>      |
|   6|[0x80003260]<br>0xB7FBB7FAC7FCB6FA|- rs1 : x13<br> - rs2 : x4<br> - rd : x7<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 32768<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                               |[0x8000049c]:KMSXDA32 t2, a3, tp<br> [0x800004a0]:sd t2, 80(t1)<br>      |
|   7|[0x80003270]<br>0xDBEB354786963540|- rs1 : x31<br> - rs2 : x18<br> - rd : x21<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                |[0x800004d4]:KMSXDA32 s5, t6, s2<br> [0x800004d8]:sd s5, 96(t1)<br>      |
|   8|[0x80003280]<br>0xEDBC03544916ADFE|- rs1 : x21<br> - rs2 : x29<br> - rd : x25<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                  |[0x80000500]:KMSXDA32 s9, s5, t4<br> [0x80000504]:sd s9, 112(t1)<br>     |
|   9|[0x80003290]<br>0xB6FAB7FE36EAA6F5|- rs1 : x24<br> - rs2 : x22<br> - rd : x23<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -257<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                |[0x80000524]:KMSXDA32 s7, s8, s6<br> [0x80000528]:sd s7, 128(t1)<br>     |
|  10|[0x800032a0]<br>0xF76DFD70BB6DF572|- rs1 : x25<br> - rs2 : x13<br> - rd : x30<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == -131073<br>                                                                                                                                                                                                                |[0x80000550]:KMSXDA32 t5, s9, a3<br> [0x80000554]:sd t5, 144(t1)<br>     |
|  11|[0x800032b0]<br>0xDDB7B5BFBDB6C9BE|- rs1 : x15<br> - rs2 : x24<br> - rd : x28<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == 512<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                       |[0x8000057c]:KMSXDA32 t3, a5, s8<br> [0x80000580]:sd t3, 160(t1)<br>     |
|  12|[0x800032c0]<br>0x000001F0F016FF01|- rs1 : x12<br> - rs2 : x7<br> - rd : x15<br> - rs2_w1_val == -268435457<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                      |[0x800005a4]:KMSXDA32 a5, a2, t2<br> [0x800005a8]:sd a5, 176(t1)<br>     |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x17<br> - rd : x0<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                      |[0x800005d0]:KMSXDA32 zero, tp, a7<br> [0x800005d4]:sd zero, 192(t1)<br> |
|  14|[0x800032e0]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x16<br> - rd : x22<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -513<br> - rs1_w1_val == -17<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                           |[0x800005f0]:KMSXDA32 s6, s3, a6<br> [0x800005f4]:sd s6, 208(t1)<br>     |
|  15|[0x800032f0]<br>0xFFFFFFF600010000|- rs1 : x26<br> - rs2 : x0<br> - rd : x31<br> - rs2_w0_val == 0<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                    |[0x80000620]:KMSXDA32 t6, s10, zero<br> [0x80000624]:sd t6, 0(t2)<br>    |
|  16|[0x80003300]<br>0xFFD55955FBAEAAA9|- rs1 : x30<br> - rs2 : x28<br> - rd : x9<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == -1431655766<br>                                                                                                                                                                                                               |[0x80000654]:KMSXDA32 s1, t5, t3<br> [0x80000658]:sd s1, 16(t2)<br>      |
|  17|[0x80003310]<br>0xFFFE0077FC7FBFFE|- rs1 : x18<br> - rs2 : x10<br> - rd : x11<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == -32769<br>                                                                                                                                                                                                                                                 |[0x80000680]:KMSXDA32 a1, s2, a0<br> [0x80000684]:sd a1, 32(t2)<br>      |
|  18|[0x80003320]<br>0xBBD5BFDDC895BFE0|- rs1 : x22<br> - rs2 : x31<br> - rd : x20<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                                                              |[0x800006a8]:KMSXDA32 s4, s6, t6<br> [0x800006ac]:sd s4, 48(t2)<br>      |
|  19|[0x80003330]<br>0xEFFFFF809FDC320F|- rs1 : x8<br> - rs2 : x5<br> - rd : x6<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                      |[0x800006dc]:KMSXDA32 t1, fp, t0<br> [0x800006e0]:sd t1, 64(t2)<br>      |
|  20|[0x80003340]<br>0x40001000100000FD|- rs1 : x3<br> - rs2 : x8<br> - rd : x4<br> - rs2_w1_val == -1048577<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                       |[0x80000700]:KMSXDA32 tp, gp, fp<br> [0x80000704]:sd tp, 80(t2)<br>      |
|  21|[0x80003350]<br>0x80000000FFEFFDF4|- rs1 : x27<br> - rs2 : x19<br> - rd : x26<br> - rs2_w1_val == -524289<br> - rs1_w1_val == -129<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                             |[0x80000724]:KMSXDA32 s10, s11, s3<br> [0x80000728]:sd s10, 96(t2)<br>   |
|  22|[0x80003360]<br>0x0000400000000100|- rs1 : x0<br> - rs2 : x15<br> - rd : x3<br> - rs2_w1_val == -262145<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                                         |[0x8000074c]:KMSXDA32 gp, zero, a5<br> [0x80000750]:sd gp, 112(t2)<br>   |
|  23|[0x80003370]<br>0xFFFF7FFFFC100007|- rs1 : x20<br> - rs2 : x25<br> - rd : x18<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                         |[0x8000076c]:KMSXDA32 s2, s4, s9<br> [0x80000770]:sd s2, 128(t2)<br>     |
|  24|[0x80003380]<br>0xC00000074C080000|- rs1 : x2<br> - rs2 : x21<br> - rd : x13<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -9<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                          |[0x80000794]:KMSXDA32 a3, sp, s5<br> [0x80000798]:sd a3, 144(t2)<br>     |
|  25|[0x80003390]<br>0xFFEFFFFF9FDDBEF6|- rs1 : x23<br> - rs2 : x12<br> - rd : x8<br> - rs2_w1_val == -16385<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                           |[0x800007b8]:KMSXDA32 fp, s7, a2<br> [0x800007bc]:sd fp, 160(t2)<br>     |
|  26|[0x800033a0]<br>0xFFFFC2001FFFEEFD|- rs1 : x17<br> - rs2 : x1<br> - rd : x12<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -2<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                 |[0x800007dc]:KMSXDA32 a2, a7, ra<br> [0x800007e0]:sd a2, 176(t2)<br>     |
|  27|[0x800033b0]<br>0xE000007F10020016|- rs1 : x6<br> - rs2 : x20<br> - rd : x24<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -8193<br> - rs1_w1_val == 16<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                 |[0x80000800]:KMSXDA32 s8, t1, s4<br> [0x80000804]:sd s8, 192(t2)<br>     |
|  28|[0x800033c0]<br>0xFFFEF7FF20040000|- rs1 : x16<br> - rs2 : x30<br> - rd : x17<br> - rs2_w1_val == -1025<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                    |[0x8000082c]:KMSXDA32 a7, a6, t5<br> [0x80000830]:sd a7, 0(sp)<br>       |
|  29|[0x800033d0]<br>0x00FFEFFE3EFFFDFD|- rs1 : x11<br> - rs2 : x26<br> - rd : x1<br> - rs2_w1_val == -513<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                    |[0x8000085c]:KMSXDA32 ra, a1, s10<br> [0x80000860]:sd ra, 16(sp)<br>     |
|  30|[0x800033e0]<br>0x5555555501040606|- rs1 : x5<br> - rs2 : x6<br> - rd : x29<br> - rs2_w1_val == -257<br> - rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                       |[0x80000880]:KMSXDA32 t4, t0, t1<br> [0x80000884]:sd t4, 32(sp)<br>      |
|  31|[0x800033f0]<br>0x0018000000101FFC|- rs1 : x28<br> - rs2 : x27<br> - rd : x19<br> - rs2_w1_val == -129<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                       |[0x800008a8]:KMSXDA32 s3, t3, s11<br> [0x800008ac]:sd s3, 48(sp)<br>     |
|  32|[0x80003400]<br>0x0003FFFFFE3FFDB7|- rs1 : x7<br> - rs2 : x23<br> - rd : x16<br> - rs2_w1_val == -65<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                      |[0x800008d0]:KMSXDA32 a6, t2, s7<br> [0x800008d4]:sd a6, 64(sp)<br>      |
|  33|[0x80003410]<br>0xFFC0000731080000|- rs2_w1_val == -33<br> - rs2_w0_val == -65<br>                                                                                                                                                                                                                                                                                                        |[0x800008f8]:KMSXDA32 t6, t5, t4<br> [0x800008fc]:sd t6, 80(sp)<br>      |
|  34|[0x80003420]<br>0xFFC00017B0E5FFCE|- rs2_w1_val == -17<br> - rs1_w1_val == -33<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                            |[0x80000920]:KMSXDA32 t6, t5, t4<br> [0x80000924]:sd t6, 96(sp)<br>      |
|  35|[0x80003430]<br>0xFFC00014C63B5525|- rs2_w1_val == -5<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                  |[0x8000094c]:KMSXDA32 t6, t5, t4<br> [0x80000950]:sd t6, 112(sp)<br>     |
|  36|[0x80003440]<br>0xFFC00015257B5522|- rs2_w1_val == -3<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -3<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                               |[0x80000970]:KMSXDA32 t6, t5, t4<br> [0x80000974]:sd t6, 128(sp)<br>     |
|  37|[0x80003450]<br>0xFFC00015257B6322|- rs2_w1_val == -2<br> - rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                           |[0x80000998]:KMSXDA32 t6, t5, t4<br> [0x8000099c]:sd t6, 144(sp)<br>     |
|  38|[0x80003460]<br>0xFFC00017A57B6322|- rs2_w1_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                        |[0x800009bc]:KMSXDA32 t6, t5, t4<br> [0x800009c0]:sd t6, 160(sp)<br>     |
|  39|[0x80003470]<br>0xFFC00005A53B5B21|- rs2_w1_val == 1073741824<br> - rs2_w0_val == -2049<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                           |[0x800009f0]:KMSXDA32 t6, t5, t4<br> [0x800009f4]:sd t6, 176(sp)<br>     |
|  40|[0x80003480]<br>0xFFC02045C53B5B21|- rs2_w1_val == 536870912<br> - rs2_w0_val == -2147483648<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                 |[0x80000a18]:KMSXDA32 t6, t5, t4<br> [0x80000a1c]:sd t6, 192(sp)<br>     |
|  41|[0x80003490]<br>0xFFC02045443B5A20|- rs2_w1_val == 268435456<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                                                            |[0x80000a40]:KMSXDA32 t6, t5, t4<br> [0x80000a44]:sd t6, 208(sp)<br>     |
|  42|[0x800034a0]<br>0x03C02045C43B5E20|- rs1_w0_val == -2147483648<br> - rs2_w1_val == 134217728<br> - rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                 |[0x80000a64]:KMSXDA32 t6, t5, t4<br> [0x80000a68]:sd t6, 224(sp)<br>     |
|  43|[0x800034b0]<br>0x03B2204604335E1F|- rs2_w1_val == 67108864<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                  |[0x80000a98]:KMSXDA32 t6, t5, t4<br> [0x80000a9c]:sd t6, 240(sp)<br>     |
|  44|[0x800034c0]<br>0xFF722045C4335E1F|- rs2_w1_val == 33554432<br> - rs2_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                            |[0x80000ac4]:KMSXDA32 t6, t5, t4<br> [0x80000ac8]:sd t6, 256(sp)<br>     |
|  45|[0x800034d0]<br>0xFF732045C5330E1A|- rs2_w1_val == 16777216<br> - rs2_w0_val == -4097<br> - rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                          |[0x80000af4]:KMSXDA32 t6, t5, t4<br> [0x80000af8]:sd t6, 272(sp)<br>     |
|  46|[0x800034e0]<br>0xFF732445BDB28E19|- rs2_w1_val == 8388608<br> - rs2_w0_val == -32769<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                     |[0x80000b2c]:KMSXDA32 t6, t5, t4<br> [0x80000b30]:sd t6, 288(sp)<br>     |
|  47|[0x800034f0]<br>0xFF732430669D38D9|- rs2_w1_val == 4194304<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                     |[0x80000b5c]:KMSXDA32 t6, t5, t4<br> [0x80000b60]:sd t6, 304(sp)<br>     |
|  48|[0x80003500]<br>0xFF72E430669D40D9|- rs2_w1_val == 2097152<br> - rs2_w0_val == 512<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                       |[0x80000b7c]:KMSXDA32 t6, t5, t4<br> [0x80000b80]:sd t6, 320(sp)<br>     |
|  49|[0x80003510]<br>0xFF72E4B0668D48D9|- rs2_w1_val == 1048576<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                             |[0x80000ba4]:KMSXDA32 t6, t5, t4<br> [0x80000ba8]:sd t6, 336(sp)<br>     |
|  50|[0x80003520]<br>0xFE6AE4B0268D48D9|- rs1_w1_val == -67108865<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                             |[0x80000bcc]:KMSXDA32 t6, t5, t4<br> [0x80000bd0]:sd t6, 352(sp)<br>     |
|  51|[0x80003530]<br>0xFE6BE4AEA70D48DF|- rs2_w1_val == -33554433<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                              |[0x80000bf4]:KMSXDA32 t6, t5, t4<br> [0x80000bf8]:sd t6, 368(sp)<br>     |
|  52|[0x80003540]<br>0xFE6BE4CAA70D48DF|- rs2_w1_val == 4096<br> - rs2_w0_val == 128<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                           |[0x80000c1c]:KMSXDA32 t6, t5, t4<br> [0x80000c20]:sd t6, 384(sp)<br>     |
|  53|[0x80003550]<br>0xFE6BBF7551B808DF|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x80000c50]:KMSXDA32 t6, t5, t4<br> [0x80000c54]:sd t6, 400(sp)<br>     |
|  54|[0x80003560]<br>0xFE6BBF6D51A608DF|- rs2_w1_val == 32768<br> - rs2_w0_val == 131072<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                       |[0x80000c74]:KMSXDA32 t6, t5, t4<br> [0x80000c78]:sd t6, 416(sp)<br>     |
|  55|[0x80003570]<br>0xFE6B3F5CD1A608DF|- rs2_w0_val == -33<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                     |[0x80000ca0]:KMSXDA32 t6, t5, t4<br> [0x80000ca4]:sd t6, 432(sp)<br>     |
|  56|[0x80003580]<br>0xFE6B3F4CD1C60CDF|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                              |[0x80000cc4]:KMSXDA32 t6, t5, t4<br> [0x80000cc8]:sd t6, 448(sp)<br>     |
|  57|[0x80003590]<br>0xFE6AFF4CC1C28CDE|- rs2_w0_val == -262145<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                    |[0x80000cf4]:KMSXDA32 t6, t5, t4<br> [0x80000cf8]:sd t6, 464(sp)<br>     |
|  58|[0x800035a0]<br>0xFE6AFF4CC1C2A6E6|- rs2_w0_val == 8<br> - rs1_w1_val == -513<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                 |[0x80000d18]:KMSXDA32 t6, t5, t4<br> [0x80000d1c]:sd t6, 480(sp)<br>     |
|  59|[0x800035b0]<br>0xFE6AFF50C1CAA966|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                |[0x80000d44]:KMSXDA32 t6, t5, t4<br> [0x80000d48]:sd t6, 496(sp)<br>     |
|  60|[0x800035c0]<br>0xFE6AFF50A1B2A960|- rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000d70]:KMSXDA32 t6, t5, t4<br> [0x80000d74]:sd t6, 512(sp)<br>     |
|  61|[0x800035d0]<br>0xFE68FF50A1B2A900|- rs1_w1_val == 2097152<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                     |[0x80000d90]:KMSXDA32 t6, t5, t4<br> [0x80000d94]:sd t6, 528(sp)<br>     |
|  62|[0x800035e0]<br>0xFE68FF507DC2A8FB|- rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000db8]:KMSXDA32 t6, t5, t4<br> [0x80000dbc]:sd t6, 544(sp)<br>     |
|  63|[0x800035f0]<br>0xFE6A54A6186BFE50|- rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000dec]:KMSXDA32 t6, t5, t4<br> [0x80000df0]:sd t6, 560(sp)<br>     |
|  64|[0x80003600]<br>0xFE6A54A6186BFDD0|- rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000e08]:KMSXDA32 t6, t5, t4<br> [0x80000e0c]:sd t6, 576(sp)<br>     |
|  65|[0x80003610]<br>0xFE6A5426146B75CF|- rs2_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                             |[0x80000e38]:KMSXDA32 t6, t5, t4<br> [0x80000e3c]:sd t6, 592(sp)<br>     |
|  66|[0x80003620]<br>0xFE6C5426186F75CF|- rs2_w1_val == 262144<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                  |[0x80000e60]:KMSXDA32 t6, t5, t4<br> [0x80000e64]:sd t6, 608(sp)<br>     |
|  67|[0x80003630]<br>0xFE6CFED0C31BB5EF|- rs2_w1_val == 131072<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                                      |[0x80000e8c]:KMSXDA32 t6, t5, t4<br> [0x80000e90]:sd t6, 624(sp)<br>     |
|  68|[0x80003640]<br>0xFE6CFED4C31CABE5|- rs2_w1_val == 65536<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                                                                                                                     |[0x80000eb8]:KMSXDA32 t6, t5, t4<br> [0x80000ebc]:sd t6, 640(sp)<br>     |
|  69|[0x80003650]<br>0xF66CFED4D31CABE5|- rs2_w1_val == 8192<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                                |[0x80000edc]:KMSXDA32 t6, t5, t4<br> [0x80000ee0]:sd t6, 656(sp)<br>     |
|  70|[0x80003660]<br>0xF66CFDD4531CA3E5|- rs2_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                               |[0x80000f00]:KMSXDA32 t6, t5, t4<br> [0x80000f04]:sd t6, 672(sp)<br>     |
|  71|[0x80003670]<br>0xFE6CFDD4531CA9E5|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                |[0x80000f28]:KMSXDA32 t6, t5, t4<br> [0x80000f2c]:sd t6, 688(sp)<br>     |
|  72|[0x80003680]<br>0xFE6CBDD4531DADE5|- rs2_w1_val == 256<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                      |[0x80000f50]:KMSXDA32 t6, t5, t4<br> [0x80000f54]:sd t6, 704(sp)<br>     |
|  73|[0x80003690]<br>0xFE6CBDD4531DB569|- rs2_w1_val == 128<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                                          |[0x80000f74]:KMSXDA32 t6, t5, t4<br> [0x80000f78]:sd t6, 720(sp)<br>     |
|  74|[0x800036a0]<br>0xFE6CBDD4731DED69|- rs2_w1_val == 64<br> - rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                       |[0x80000f9c]:KMSXDA32 t6, t5, t4<br> [0x80000fa0]:sd t6, 736(sp)<br>     |
|  75|[0x800036b0]<br>0xFE6CFDCCF31D6D68|- rs2_w1_val == 32<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000fc0]:KMSXDA32 t6, t5, t4<br> [0x80000fc4]:sd t6, 752(sp)<br>     |
|  76|[0x800036c0]<br>0xFE6CFBCCF31D4D68|- rs2_w1_val == 16<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                    |[0x80000fe4]:KMSXDA32 t6, t5, t4<br> [0x80000fe8]:sd t6, 768(sp)<br>     |
|  77|[0x800036d0]<br>0xFE6CFB4CF4F94D6F|- rs2_w1_val == 8<br> - rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                     |[0x80001010]:KMSXDA32 t6, t5, t4<br> [0x80001014]:sd t6, 784(sp)<br>     |
|  78|[0x800036e0]<br>0xFE6CFB6D74FA4D73|- rs2_w1_val == 4<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                   |[0x8000103c]:KMSXDA32 t6, t5, t4<br> [0x80001040]:sd t6, 800(sp)<br>     |
|  79|[0x800036f0]<br>0xFE6CFB6D4CFA4D6E|- rs2_w1_val == 2<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                   |[0x80001068]:KMSXDA32 t6, t5, t4<br> [0x8000106c]:sd t6, 816(sp)<br>     |
|  80|[0x80003700]<br>0xFE6CFB6D4DFA4D65|- rs2_w1_val == 1<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                            |[0x8000108c]:KMSXDA32 t6, t5, t4<br> [0x80001090]:sd t6, 832(sp)<br>     |
|  81|[0x80003710]<br>0xFE6CFB6D4DFA4C84|- rs2_w1_val == -1<br> - rs2_w0_val == 32<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                 |[0x800010b0]:KMSXDA32 t6, t5, t4<br> [0x800010b4]:sd t6, 848(sp)<br>     |
|  82|[0x80003720]<br>0xFE6CFB6D4DFA4D4A|- rs2_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                        |[0x800010cc]:KMSXDA32 t6, t5, t4<br> [0x800010d0]:sd t6, 864(sp)<br>     |
|  83|[0x80003730]<br>0xFE6AFB6D2DEA4DE2|- rs2_w0_val == -536870913<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                    |[0x800010f0]:KMSXDA32 t6, t5, t4<br> [0x800010f4]:sd t6, 880(sp)<br>     |
|  84|[0x80003740]<br>0xFE6AFB6D0CEA5DC2|- rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                                          |[0x80001118]:KMSXDA32 t6, t5, t4<br> [0x8000111c]:sd t6, 896(sp)<br>     |
|  85|[0x80003750]<br>0xFE6B7B6D0D4B5DC2|- rs2_w0_val == 65536<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                |[0x80001144]:KMSXDA32 t6, t5, t4<br> [0x80001148]:sd t6, 912(sp)<br>     |
|  86|[0x80003760]<br>0xFE6B7F4CED4B7CC1|- rs2_w0_val == 8192<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                                                                                |[0x80001170]:KMSXDA32 t6, t5, t4<br> [0x80001174]:sd t6, 928(sp)<br>     |
|  87|[0x80003770]<br>0xFE6B74A242A11CC1|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                               |[0x800011a4]:KMSXDA32 t6, t5, t4<br> [0x800011a8]:sd t6, 944(sp)<br>     |
|  88|[0x80003780]<br>0xFE6B73A142A11CC1|- rs2_w0_val == 256<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                   |[0x800011c8]:KMSXDA32 t6, t5, t4<br> [0x800011cc]:sd t6, 960(sp)<br>     |
|  89|[0x80003790]<br>0xFDEB73A142911CC1|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                 |[0x800011ec]:KMSXDA32 t6, t5, t4<br> [0x800011f0]:sd t6, 976(sp)<br>     |
|  90|[0x800037a0]<br>0xFDEB6BA142011C50|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001218]:KMSXDA32 t6, t5, t4<br> [0x8000121c]:sd t6, 992(sp)<br>     |
|  91|[0x800037b0]<br>0xFDEB6BA293546FA7|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001244]:KMSXDA32 t6, t5, t4<br> [0x80001248]:sd t6, 1008(sp)<br>    |
|  92|[0x800037c0]<br>0xFDEB6BA29353EFA7|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001260]:KMSXDA32 t6, t5, t4<br> [0x80001264]:sd t6, 1024(sp)<br>    |
|  93|[0x800037d0]<br>0xFDDB6BA21353F1A7|- rs2_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001280]:KMSXDA32 t6, t5, t4<br> [0x80001284]:sd t6, 1040(sp)<br>    |
|  94|[0x800037e0]<br>0xFDDB6BA2114F71A3|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                                           |[0x800012ac]:KMSXDA32 t6, t5, t4<br> [0x800012b0]:sd t6, 1056(sp)<br>    |
|  95|[0x800037f0]<br>0xFE5B73A2194F71A3|- rs2_w0_val == 134217728<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                               |[0x800012d4]:KMSXDA32 t6, t5, t4<br> [0x800012d8]:sd t6, 1072(sp)<br>    |
|  96|[0x80003800]<br>0xFE5B72A2148F31A2|- rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                                                             |[0x80001300]:KMSXDA32 t6, t5, t4<br> [0x80001304]:sd t6, 1088(sp)<br>    |
|  97|[0x80003810]<br>0xFE5B72A2110F019B|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                              |[0x8000132c]:KMSXDA32 t6, t5, t4<br> [0x80001330]:sd t6, 1104(sp)<br>    |
|  98|[0x80003820]<br>0xFE5B72A4114F119F|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                                              |[0x80001354]:KMSXDA32 t6, t5, t4<br> [0x80001358]:sd t6, 1120(sp)<br>    |
|  99|[0x80003830]<br>0xFE5B74A4115310DC|- rs2_w0_val == -3<br> - rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                                                         |[0x80001378]:KMSXDA32 t6, t5, t4<br> [0x8000137c]:sd t6, 1136(sp)<br>    |
| 100|[0x80003840]<br>0xFE5B74A1D152F0D3|- rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                 |[0x800013a0]:KMSXDA32 t6, t5, t4<br> [0x800013a4]:sd t6, 1152(sp)<br>    |
| 101|[0x80003850]<br>0xFE5B74A1D152F0DB|- rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                                 |[0x800013bc]:KMSXDA32 t6, t5, t4<br> [0x800013c0]:sd t6, 1168(sp)<br>    |
| 102|[0x80003860]<br>0xFA6B74A1D252F0DB|- rs2_w0_val == 1073741824<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                            |[0x800013e8]:KMSXDA32 t6, t5, t4<br> [0x800013ec]:sd t6, 1184(sp)<br>    |
| 103|[0x80003870]<br>0xFA6B74A1C251EC9A|- rs1_w1_val == 33554432<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                                   |[0x80001410]:KMSXDA32 t6, t5, t4<br> [0x80001414]:sd t6, 1200(sp)<br>    |
| 104|[0x80003880]<br>0xFA6B34A1C1D1EC96|- rs2_w0_val == 8388608<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                |[0x80001438]:KMSXDA32 t6, t5, t4<br> [0x8000143c]:sd t6, 1216(sp)<br>    |
| 105|[0x80003890]<br>0xFA6B3CA3C1E26C96|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                                            |[0x80001468]:KMSXDA32 t6, t5, t4<br> [0x8000146c]:sd t6, 1232(sp)<br>    |
| 106|[0x800038a0]<br>0xFA6B3CA5C1636C96|- rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                             |[0x80001498]:KMSXDA32 t6, t5, t4<br> [0x8000149c]:sd t6, 1248(sp)<br>    |
| 107|[0x800038b0]<br>0xFA6B3CA3C563EC96|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                              |[0x800014c8]:KMSXDA32 t6, t5, t4<br> [0x800014cc]:sd t6, 1264(sp)<br>    |
| 108|[0x800038c0]<br>0xFA6B3CA3A5660C96|- rs2_w0_val == -17<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                       |[0x800014ec]:KMSXDA32 t6, t5, t4<br> [0x800014f0]:sd t6, 1280(sp)<br>    |
| 109|[0x800038d0]<br>0xFA6B3C93A5662CD6|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                               |[0x80001514]:KMSXDA32 t6, t5, t4<br> [0x80001518]:sd t6, 1296(sp)<br>    |
| 110|[0x800038e0]<br>0xFA6B3C93A76B30DB|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                               |[0x80001540]:KMSXDA32 t6, t5, t4<br> [0x80001544]:sd t6, 1312(sp)<br>    |
| 111|[0x800038f0]<br>0xFA6B3E93A76BB1DB|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                |[0x8000156c]:KMSXDA32 t6, t5, t4<br> [0x80001570]:sd t6, 1328(sp)<br>    |
| 112|[0x80003900]<br>0xFA6B3E54E76BB260|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                                |[0x80001598]:KMSXDA32 t6, t5, t4<br> [0x8000159c]:sd t6, 1344(sp)<br>    |
| 113|[0x80003910]<br>0xFA6B3E5692161D09|- rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                  |[0x800015c8]:KMSXDA32 t6, t5, t4<br> [0x800015cc]:sd t6, 1360(sp)<br>    |
| 114|[0x80003920]<br>0xFA6B3E5692161D1D|- rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                  |[0x800015ec]:KMSXDA32 t6, t5, t4<br> [0x800015f0]:sd t6, 1376(sp)<br>    |
| 115|[0x80003930]<br>0xFA6F3E5796161D1B|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                         |[0x80001614]:KMSXDA32 t6, t5, t4<br> [0x80001618]:sd t6, 1392(sp)<br>    |
| 116|[0x80003940]<br>0xFA6F3E3795E59D1E|- rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                                           |[0x80001640]:KMSXDA32 t6, t5, t4<br> [0x80001644]:sd t6, 1408(sp)<br>    |
| 117|[0x80003950]<br>0xFA6F463795E5BB16|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                        |[0x80001668]:KMSXDA32 t6, t5, t4<br> [0x8000166c]:sd t6, 1424(sp)<br>    |
| 118|[0x80003960]<br>0xFA6F4637A6E7BC16|- rs2_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                                           |[0x80001690]:KMSXDA32 t6, t5, t4<br> [0x80001694]:sd t6, 1440(sp)<br>    |
| 119|[0x80003970]<br>0xFA6F463792DFBC0D|- rs2_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                            |[0x800016b8]:KMSXDA32 t6, t5, t4<br> [0x800016bc]:sd t6, 1456(sp)<br>    |
| 120|[0x80003980]<br>0xFA6F863AD2DEBC06|- rs2_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                                             |[0x800016e4]:KMSXDA32 t6, t5, t4<br> [0x800016e8]:sd t6, 1472(sp)<br>    |
| 121|[0x80003990]<br>0xFA6FA6E5D3DEBB5B|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                           |[0x8000171c]:KMSXDA32 t6, t5, t4<br> [0x80001720]:sd t6, 1488(sp)<br>    |
| 122|[0x800039a0]<br>0xFA6CFC3AD3D96645|- rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                                            |[0x80001748]:KMSXDA32 t6, t5, t4<br> [0x8000174c]:sd t6, 1504(sp)<br>    |
| 123|[0x800039b0]<br>0xFA6CFD3AD3DA0665|- rs2_w0_val == -1025<br>                                                                                                                                                                                                                                                                                                                              |[0x80001770]:KMSXDA32 t6, t5, t4<br> [0x80001774]:sd t6, 1520(sp)<br>    |
| 124|[0x800039c0]<br>0xFA6CFD3A935A25E4|- rs2_w0_val == -129<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                      |[0x80001798]:KMSXDA32 t6, t5, t4<br> [0x8000179c]:sd t6, 1536(sp)<br>    |
| 125|[0x800039d0]<br>0xFA6CD28F9357D08A|- rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                             |[0x800017c8]:KMSXDA32 t6, t5, t4<br> [0x800017cc]:sd t6, 1552(sp)<br>    |
| 126|[0x800039e0]<br>0xFA6CCA8F73579091|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                             |[0x800017f4]:KMSXDA32 t6, t5, t4<br> [0x800017f8]:sd t6, 1568(sp)<br>    |
| 127|[0x800039f0]<br>0xFA6CCA9DB3D7908A|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                              |[0x80001824]:KMSXDA32 t6, t5, t4<br> [0x80001828]:sd t6, 1584(sp)<br>    |
| 128|[0x80003a00]<br>0xFA6CCA9DB3D56069|- rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                                              |[0x8000184c]:KMSXDA32 t6, t5, t4<br> [0x80001850]:sd t6, 1600(sp)<br>    |
| 129|[0x80003a10]<br>0xFA6CCAA5B4D54462|- rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                                              |[0x80001878]:KMSXDA32 t6, t5, t4<br> [0x8000187c]:sd t6, 1616(sp)<br>    |
| 130|[0x80003a20]<br>0xFA6CCAA5C8D60468|- rs2_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                                 |[0x800018a8]:KMSXDA32 t6, t5, t4<br> [0x800018ac]:sd t6, 1632(sp)<br>    |
| 131|[0x80003a30]<br>0xFA6CAAA5C8D1FF67|- rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                                                                                              |[0x800018d0]:KMSXDA32 t6, t5, t4<br> [0x800018d4]:sd t6, 1648(sp)<br>    |
| 132|[0x80003a40]<br>0xFA6CAAA5C8CE07A7|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                |[0x800018f4]:KMSXDA32 t6, t5, t4<br> [0x800018f8]:sd t6, 1664(sp)<br>    |
| 133|[0x80003a50]<br>0xFA6CAAE5D0CE0807|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                                          |[0x80001918]:KMSXDA32 t6, t5, t4<br> [0x8000191c]:sd t6, 1680(sp)<br>    |
| 134|[0x80003a60]<br>0xFAACAAE5D6CE0847|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                           |[0x80001944]:KMSXDA32 t6, t5, t4<br> [0x80001948]:sd t6, 1696(sp)<br>    |
| 135|[0x80003a70]<br>0xFAACAAE5D7AE684A|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x80001968]:KMSXDA32 t6, t5, t4<br> [0x8000196c]:sd t6, 1712(sp)<br>    |
| 136|[0x80003a80]<br>0xFAACAAD5D7AEAC4A|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                            |[0x80001990]:KMSXDA32 t6, t5, t4<br> [0x80001994]:sd t6, 1728(sp)<br>    |
| 137|[0x80003a90]<br>0xFAACAACDD7AEAC4E|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                             |[0x800019b4]:KMSXDA32 t6, t5, t4<br> [0x800019b8]:sd t6, 1744(sp)<br>    |
| 138|[0x80003ac0]<br>0xFCAE1577F6AD819F|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                         |[0x80001a38]:KMSXDA32 t6, t5, t4<br> [0x80001a3c]:sd t6, 1792(sp)<br>    |
