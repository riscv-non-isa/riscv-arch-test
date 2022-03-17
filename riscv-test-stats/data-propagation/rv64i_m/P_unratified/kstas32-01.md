
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
| COV_LABELS                | kstas32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kstas32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 276      |
| STAT1                     | 135      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 138     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000194c]:KSTAS32 t6, t5, t4
      [0x80001950]:sd t6, 1840(t1)
 -- Signature Address: 0x80003a60 Data: 0xFFFFF81F80000000
 -- Redundant Coverpoints hit by the op
      - opcode : kstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -2049
      - rs2_w0_val == 33554432
      - rs1_w1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001978]:KSTAS32 t6, t5, t4
      [0x8000197c]:sd t6, 1856(t1)
 -- Signature Address: 0x80003a70 Data: 0x00001000EFFFEFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 2048
      - rs2_w0_val == 4096
      - rs1_w1_val == 2048
      - rs1_w0_val == -268435457




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019f0]:KSTAS32 t6, t5, t4
      [0x800019f4]:sd t6, 1904(t1)
 -- Signature Address: 0x80003aa0 Data: 0xFFFFE000FFF3FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -8193
      - rs2_w0_val == 524288
      - rs1_w1_val == 1
      - rs1_w0_val == -262145






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstas32', 'rs1 : x14', 'rs2 : x14', 'rd : x13', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -2049', 'rs2_w0_val == 33554432', 'rs1_w1_val == -2049', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800003b8]:KSTAS32 a3, a4, a4
	-[0x800003bc]:sd a3, 0(tp)
Current Store : [0x800003c0] : sd a4, 8(tp) -- Store: [0x80003218]:0xFFFFF7FF02000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x19', 'rd : x19', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 2048', 'rs2_w0_val == 4096', 'rs1_w1_val == 2048', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800003e4]:KSTAS32 s3, s3, s3
	-[0x800003e8]:sd s3, 16(tp)
Current Store : [0x800003ec] : sd s3, 24(tp) -- Store: [0x80003228]:0x0000100000000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x13', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == 16384', 'rs2_w0_val == 1048576', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000040c]:KSTAS32 t5, zero, a3
	-[0x80000410]:sd t5, 32(tp)
Current Store : [0x80000414] : sd zero, 40(tp) -- Store: [0x80003238]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x6', 'rd : x8', 'rs1 == rd != rs2', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -3', 'rs2_w0_val == -17', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000430]:KSTAS32 fp, fp, t1
	-[0x80000434]:sd fp, 48(tp)
Current Store : [0x80000438] : sd fp, 56(tp) -- Store: [0x80003248]:0xFFF7FFFC02000011




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 8', 'rs2_w0_val == -1025', 'rs1_w1_val == -131073', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000454]:KSTAS32 s4, a7, s4
	-[0x80000458]:sd s4, 64(tp)
Current Store : [0x8000045c] : sd a7, 72(tp) -- Store: [0x80003258]:0xFFFDFFFFFFFFFBFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x22', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 2097152', 'rs1_w1_val == -536870913', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000488]:KSTAS32 s6, s4, t4
	-[0x8000048c]:sd s6, 80(tp)
Current Store : [0x80000490] : sd s4, 88(tp) -- Store: [0x80003268]:0xDFFFFFFFFFBFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x27', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 16777216', 'rs1_w1_val == -33', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800004b8]:KSTAS32 s11, t3, s9
	-[0x800004bc]:sd s11, 96(tp)
Current Store : [0x800004c0] : sd t3, 104(tp) -- Store: [0x80003278]:0xFFFFFFDFFEFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x7', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -1431655766', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800004ec]:KSTAS32 t2, a0, ra
	-[0x800004f0]:sd t2, 112(tp)
Current Store : [0x800004f4] : sd a0, 120(tp) -- Store: [0x80003288]:0x0000000700008000




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x24', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 4', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000518]:KSTAS32 s8, ra, t6
	-[0x8000051c]:sd s8, 128(tp)
Current Store : [0x80000520] : sd ra, 136(tp) -- Store: [0x80003298]:0xC0000000FFFFFF7F




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x14', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -536870913', 'rs2_w0_val == 131072', 'rs1_w1_val == 128', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000544]:KSTAS32 a4, t1, a6
	-[0x80000548]:sd a4, 144(tp)
Current Store : [0x8000054c] : sd t1, 152(tp) -- Store: [0x800032a8]:0x00000080FFFFFEFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x11', 'rd : x16', 'rs2_w1_val == -268435457', 'rs2_w0_val == -4194305', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000574]:KSTAS32 a6, s11, a1
	-[0x80000578]:sd a6, 160(tp)
Current Store : [0x8000057c] : sd s11, 168(tp) -- Store: [0x800032b8]:0x00002000FFFFFF7F




Last Coverpoint : ['rs1 : x7', 'rs2 : x30', 'rd : x31', 'rs2_w1_val == -134217729', 'rs1_w1_val == -134217729', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800005a8]:KSTAS32 t6, t2, t5
	-[0x800005ac]:sd t6, 176(tp)
Current Store : [0x800005b0] : sd t2, 184(tp) -- Store: [0x800032c8]:0xF7FFFFFFFFDFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x22', 'rd : x17', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -67108865', 'rs2_w0_val == -134217729', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800005d8]:KSTAS32 a7, a3, s6
	-[0x800005dc]:sd a7, 192(tp)
Current Store : [0x800005e0] : sd a3, 200(tp) -- Store: [0x800032d8]:0xBFFFFFFF80000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x11', 'rs2_w1_val == -33554433', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000608]:KSTAS32 a1, a2, t0
	-[0x8000060c]:sd a1, 208(tp)
Current Store : [0x80000610] : sd a2, 216(tp) -- Store: [0x800032e8]:0xBFFFFFFFFFFEFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x27', 'rd : x18', 'rs2_w1_val == -16777217', 'rs2_w0_val == 536870912', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000638]:KSTAS32 s2, a6, s11
	-[0x8000063c]:sd s2, 224(tp)
Current Store : [0x80000640] : sd a6, 232(tp) -- Store: [0x800032f8]:0x55555555BFFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rd : x28', 'rs2_w1_val == -8388609', 'rs2_w0_val == 512', 'rs1_w1_val == 2097152', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000664]:KSTAS32 t3, s6, gp
	-[0x80000668]:sd t3, 240(tp)
Current Store : [0x8000066c] : sd s6, 248(tp) -- Store: [0x80003308]:0x00200000FFFFFFBF




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x6', 'rs2_w1_val == -4194305', 'rs2_w0_val == -536870913', 'rs1_w1_val == 131072', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000068c]:KSTAS32 t1, a5, t3
	-[0x80000690]:sd t1, 256(tp)
Current Store : [0x80000694] : sd a5, 264(tp) -- Store: [0x80003318]:0x0002000000000080




Last Coverpoint : ['rs1 : x2', 'rs2 : x21', 'rd : x15', 'rs2_w1_val == -2097153', 'rs2_w0_val == 65536', 'rs1_w1_val == 1', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800006b8]:KSTAS32 a5, sp, s5
	-[0x800006bc]:sd a5, 272(tp)
Current Store : [0x800006c0] : sd sp, 280(tp) -- Store: [0x80003328]:0x0000000100000020




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x12', 'rs2_w1_val == -1048577', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800006e8]:KSTAS32 a2, s9, s10
	-[0x800006ec]:sd a2, 0(t1)
Current Store : [0x800006f0] : sd s9, 8(t1) -- Store: [0x80003338]:0xFFFFFFF600000002




Last Coverpoint : ['rs1 : x23', 'rs2 : x17', 'rd : x1', 'rs2_w1_val == -524289', 'rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000718]:KSTAS32 ra, s7, a7
	-[0x8000071c]:sd ra, 16(t1)
Current Store : [0x80000720] : sd s7, 24(t1) -- Store: [0x80003348]:0x000000073FFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x24', 'rd : x23', 'rs2_w1_val == -262145', 'rs2_w0_val == 4194304', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x8000073c]:KSTAS32 s7, t0, s8
	-[0x80000740]:sd s7, 32(t1)
Current Store : [0x80000744] : sd t0, 40(t1) -- Store: [0x80003358]:0xEFFFFFFFFFFFFFFC




Last Coverpoint : ['rs1 : x11', 'rs2 : x15', 'rd : x25', 'rs2_w1_val == -131073', 'rs2_w0_val == -268435457', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000768]:KSTAS32 s9, a1, a5
	-[0x8000076c]:sd s9, 48(t1)
Current Store : [0x80000770] : sd a1, 56(t1) -- Store: [0x80003368]:0xF7FFFFFF00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x0', 'rd : x5', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000790]:KSTAS32 t0, s2, zero
	-[0x80000794]:sd t0, 64(t1)
Current Store : [0x80000798] : sd s2, 72(t1) -- Store: [0x80003378]:0xFFFFFF7F00000003




Last Coverpoint : ['rs1 : x26', 'rs2 : x8', 'rd : x4', 'rs2_w1_val == -32769', 'rs2_w0_val == -8193', 'rs1_w1_val == 4096', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800007c0]:KSTAS32 tp, s10, fp
	-[0x800007c4]:sd tp, 80(t1)
Current Store : [0x800007c8] : sd s10, 88(t1) -- Store: [0x80003388]:0x00001000FFEFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x4', 'rd : x3', 'rs2_w1_val == -16385', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800007e8]:KSTAS32 gp, t6, tp
	-[0x800007ec]:sd gp, 96(t1)
Current Store : [0x800007f0] : sd t6, 104(t1) -- Store: [0x80003398]:0xFFBFFFFFFFFFFFF6




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x0', 'rs2_w1_val == -8193', 'rs2_w0_val == 524288', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000810]:KSTAS32 zero, t5, s2
	-[0x80000814]:sd zero, 112(t1)
Current Store : [0x80000818] : sd t5, 120(t1) -- Store: [0x800033a8]:0x00000001FFFBFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rd : x21', 'rs2_w1_val == -4097', 'rs1_w1_val == 134217728', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000840]:KSTAS32 s5, tp, s7
	-[0x80000844]:sd s5, 128(t1)
Current Store : [0x80000848] : sd tp, 136(t1) -- Store: [0x800033b8]:0x08000000F7FFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x7', 'rd : x26', 'rs2_w1_val == -1025', 'rs2_w0_val == -1', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000868]:KSTAS32 s10, t4, t2
	-[0x8000086c]:sd s10, 144(t1)
Current Store : [0x80000870] : sd t4, 152(t1) -- Store: [0x800033c8]:0x00000005FFFFDFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x10', 'rs2_w1_val == -513', 'rs2_w0_val == -524289', 'rs1_w1_val == 32768', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000890]:KSTAS32 a0, s8, a2
	-[0x80000894]:sd a0, 160(t1)
Current Store : [0x80000898] : sd s8, 168(t1) -- Store: [0x800033d8]:0x0000800008000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x10', 'rd : x9', 'rs2_w1_val == -257', 'rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800008b4]:KSTAS32 s1, gp, a0
	-[0x800008b8]:sd s1, 176(t1)
Current Store : [0x800008bc] : sd gp, 184(t1) -- Store: [0x800033e8]:0xFFFFFFF800000002




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x29', 'rs2_w1_val == -129', 'rs1_w1_val == 16384', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008d8]:KSTAS32 t4, s1, sp
	-[0x800008dc]:sd t4, 192(t1)
Current Store : [0x800008e0] : sd s1, 200(t1) -- Store: [0x800033f8]:0x000040007FFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x9', 'rd : x2', 'rs2_w1_val == -65']
Last Code Sequence : 
	-[0x800008fc]:KSTAS32 sp, s5, s1
	-[0x80000900]:sd sp, 208(t1)
Current Store : [0x80000904] : sd s5, 216(t1) -- Store: [0x80003408]:0xFFFFFFF600000000




Last Coverpoint : ['rs2_w1_val == -33', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000924]:KSTAS32 t6, t5, t4
	-[0x80000928]:sd t6, 224(t1)
Current Store : [0x8000092c] : sd t5, 232(t1) -- Store: [0x80003418]:0x04000000BFFFFFFF




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == -2', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000950]:KSTAS32 t6, t5, t4
	-[0x80000954]:sd t6, 240(t1)
Current Store : [0x80000958] : sd t5, 248(t1) -- Store: [0x80003428]:0xFFFFFFFEAAAAAAAA




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000974]:KSTAS32 t6, t5, t4
	-[0x80000978]:sd t6, 256(t1)
Current Store : [0x8000097c] : sd t5, 264(t1) -- Store: [0x80003438]:0x55555555FFFFFF7F




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == -262145', 'rs1_w1_val == 262144', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009a0]:KSTAS32 t6, t5, t4
	-[0x800009a4]:sd t6, 272(t1)
Current Store : [0x800009a8] : sd t5, 280(t1) -- Store: [0x80003448]:0x00040000FFFFFFEF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -1048577', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800009cc]:KSTAS32 t6, t5, t4
	-[0x800009d0]:sd t6, 288(t1)
Current Store : [0x800009d4] : sd t5, 296(t1) -- Store: [0x80003458]:0x00000800FBFFFFFF




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == 1073741824', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009f8]:KSTAS32 t6, t5, t4
	-[0x800009fc]:sd t6, 304(t1)
Current Store : [0x80000a00] : sd t5, 312(t1) -- Store: [0x80003468]:0x04000000FFFFFFFD




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == -16385', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000a28]:KSTAS32 t6, t5, t4
	-[0x80000a2c]:sd t6, 320(t1)
Current Store : [0x80000a30] : sd t5, 328(t1) -- Store: [0x80003478]:0xFFFFFFFBFFFFFFFA




Last Coverpoint : ['rs2_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000a54]:KSTAS32 t6, t5, t4
	-[0x80000a58]:sd t6, 336(t1)
Current Store : [0x80000a5c] : sd t5, 344(t1) -- Store: [0x80003488]:0xFFFFF7FFF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000a78]:KSTAS32 t6, t5, t4
	-[0x80000a7c]:sd t6, 352(t1)
Current Store : [0x80000a80] : sd t5, 360(t1) -- Store: [0x80003498]:0xFFFFFFFDFFFFFFBF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80000a9c]:KSTAS32 t6, t5, t4
	-[0x80000aa0]:sd t6, 368(t1)
Current Store : [0x80000aa4] : sd t5, 376(t1) -- Store: [0x800034a8]:0xFFFFFBFF00000007




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -129', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000ac4]:KSTAS32 t6, t5, t4
	-[0x80000ac8]:sd t6, 384(t1)
Current Store : [0x80000acc] : sd t5, 392(t1) -- Store: [0x800034b8]:0xFFFFDFFF02000000




Last Coverpoint : ['rs2_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000ae4]:KSTAS32 t6, t5, t4
	-[0x80000ae8]:sd t6, 400(t1)
Current Store : [0x80000aec] : sd t5, 408(t1) -- Store: [0x800034c8]:0xFFFFFFFCFFFFFFFA




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000b18]:KSTAS32 t6, t5, t4
	-[0x80000b1c]:sd t6, 416(t1)
Current Store : [0x80000b20] : sd t5, 424(t1) -- Store: [0x800034d8]:0x04000000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == -8388609', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000b48]:KSTAS32 t6, t5, t4
	-[0x80000b4c]:sd t6, 432(t1)
Current Store : [0x80000b50] : sd t5, 440(t1) -- Store: [0x800034e8]:0x00001000FFFFBFFF




Last Coverpoint : ['rs2_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b74]:KSTAS32 t6, t5, t4
	-[0x80000b78]:sd t6, 448(t1)
Current Store : [0x80000b7c] : sd t5, 456(t1) -- Store: [0x800034f8]:0xFFFFFBFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 1431655765', 'rs1_w1_val == -9', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000ba4]:KSTAS32 t6, t5, t4
	-[0x80000ba8]:sd t6, 464(t1)
Current Store : [0x80000bac] : sd t5, 472(t1) -- Store: [0x80003508]:0xFFFFFFF7DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000bd4]:KSTAS32 t6, t5, t4
	-[0x80000bd8]:sd t6, 480(t1)
Current Store : [0x80000bdc] : sd t5, 488(t1) -- Store: [0x80003518]:0x0000000800001000




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000bfc]:KSTAS32 t6, t5, t4
	-[0x80000c00]:sd t6, 496(t1)
Current Store : [0x80000c04] : sd t5, 504(t1) -- Store: [0x80003528]:0x0000004001000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c24]:KSTAS32 t6, t5, t4
	-[0x80000c28]:sd t6, 512(t1)
Current Store : [0x80000c2c] : sd t5, 520(t1) -- Store: [0x80003538]:0xFFFDFFFF00800000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c48]:KSTAS32 t6, t5, t4
	-[0x80000c4c]:sd t6, 528(t1)
Current Store : [0x80000c50] : sd t5, 536(t1) -- Store: [0x80003548]:0x0002000000400000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w1_val == 16', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c70]:KSTAS32 t6, t5, t4
	-[0x80000c74]:sd t6, 544(t1)
Current Store : [0x80000c78] : sd t5, 552(t1) -- Store: [0x80003558]:0x0000001000200000




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c98]:KSTAS32 t6, t5, t4
	-[0x80000c9c]:sd t6, 560(t1)
Current Store : [0x80000ca0] : sd t5, 568(t1) -- Store: [0x80003568]:0x0010000000100000




Last Coverpoint : ['rs2_w1_val == -65537', 'rs2_w0_val == 262144', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000cbc]:KSTAS32 t6, t5, t4
	-[0x80000cc0]:sd t6, 576(t1)
Current Store : [0x80000cc4] : sd t5, 584(t1) -- Store: [0x80003578]:0xFFFFF7FF00080000




Last Coverpoint : ['rs1_w1_val == -65', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000ce4]:KSTAS32 t6, t5, t4
	-[0x80000ce8]:sd t6, 592(t1)
Current Store : [0x80000cec] : sd t5, 600(t1) -- Store: [0x80003588]:0xFFFFFFBF00040000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000d0c]:KSTAS32 t6, t5, t4
	-[0x80000d10]:sd t6, 608(t1)
Current Store : [0x80000d14] : sd t5, 616(t1) -- Store: [0x80003598]:0xFFFFFFF800020000




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000d34]:KSTAS32 t6, t5, t4
	-[0x80000d38]:sd t6, 624(t1)
Current Store : [0x80000d3c] : sd t5, 632(t1) -- Store: [0x800035a8]:0xFFFFFFEF00010000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000d5c]:KSTAS32 t6, t5, t4
	-[0x80000d60]:sd t6, 640(t1)
Current Store : [0x80000d64] : sd t5, 648(t1) -- Store: [0x800035b8]:0xFFFFFFBF00004000




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d84]:KSTAS32 t6, t5, t4
	-[0x80000d88]:sd t6, 656(t1)
Current Store : [0x80000d8c] : sd t5, 664(t1) -- Store: [0x800035c8]:0xFFFFFFF800002000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w1_val == -32769', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000db4]:KSTAS32 t6, t5, t4
	-[0x80000db8]:sd t6, 672(t1)
Current Store : [0x80000dbc] : sd t5, 680(t1) -- Store: [0x800035d8]:0xFFFF7FFF00000800




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000de0]:KSTAS32 t6, t5, t4
	-[0x80000de4]:sd t6, 688(t1)
Current Store : [0x80000de8] : sd t5, 696(t1) -- Store: [0x800035e8]:0x0002000000000400




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000e08]:KSTAS32 t6, t5, t4
	-[0x80000e0c]:sd t6, 704(t1)
Current Store : [0x80000e10] : sd t5, 712(t1) -- Store: [0x800035f8]:0x0000200000000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000e28]:KSTAS32 t6, t5, t4
	-[0x80000e2c]:sd t6, 720(t1)
Current Store : [0x80000e30] : sd t5, 728(t1) -- Store: [0x80003608]:0x0000000600000100




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e50]:KSTAS32 t6, t5, t4
	-[0x80000e54]:sd t6, 736(t1)
Current Store : [0x80000e58] : sd t5, 744(t1) -- Store: [0x80003618]:0xEFFFFFFF00000040




Last Coverpoint : ['rs1_w1_val == 65536', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e78]:KSTAS32 t6, t5, t4
	-[0x80000e7c]:sd t6, 752(t1)
Current Store : [0x80000e80] : sd t5, 760(t1) -- Store: [0x80003628]:0x0001000000000008




Last Coverpoint : ['rs1_w1_val == -16777217', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000ea0]:KSTAS32 t6, t5, t4
	-[0x80000ea4]:sd t6, 768(t1)
Current Store : [0x80000ea8] : sd t5, 776(t1) -- Store: [0x80003638]:0xFEFFFFFF00000004




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000ec8]:KSTAS32 t6, t5, t4
	-[0x80000ecc]:sd t6, 784(t1)
Current Store : [0x80000ed0] : sd t5, 792(t1) -- Store: [0x80003648]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000ef0]:KSTAS32 t6, t5, t4
	-[0x80000ef4]:sd t6, 800(t1)
Current Store : [0x80000ef8] : sd t5, 808(t1) -- Store: [0x80003658]:0xFFFFFF7FBFFFFFFF




Last Coverpoint : ['rs2_w1_val == 262144']
Last Code Sequence : 
	-[0x80000f20]:KSTAS32 t6, t5, t4
	-[0x80000f24]:sd t6, 816(t1)
Current Store : [0x80000f28] : sd t5, 824(t1) -- Store: [0x80003668]:0xEFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000f4c]:KSTAS32 t6, t5, t4
	-[0x80000f50]:sd t6, 832(t1)
Current Store : [0x80000f54] : sd t5, 840(t1) -- Store: [0x80003678]:0x00400000FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000f74]:KSTAS32 t6, t5, t4
	-[0x80000f78]:sd t6, 848(t1)
Current Store : [0x80000f7c] : sd t5, 856(t1) -- Store: [0x80003688]:0x40000000FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000f98]:KSTAS32 t6, t5, t4
	-[0x80000f9c]:sd t6, 864(t1)
Current Store : [0x80000fa0] : sd t5, 872(t1) -- Store: [0x80003698]:0xBFFFFFFFFFFFFFF7




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000fc0]:KSTAS32 t6, t5, t4
	-[0x80000fc4]:sd t6, 880(t1)
Current Store : [0x80000fc8] : sd t5, 888(t1) -- Store: [0x800036a8]:0x00000003F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000fe4]:KSTAS32 t6, t5, t4
	-[0x80000fe8]:sd t6, 896(t1)
Current Store : [0x80000fec] : sd t5, 904(t1) -- Store: [0x800036b8]:0xFFFFFFF800000007




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80001018]:KSTAS32 t6, t5, t4
	-[0x8000101c]:sd t6, 912(t1)
Current Store : [0x80001020] : sd t5, 920(t1) -- Store: [0x800036c8]:0x00008000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x8000103c]:KSTAS32 t6, t5, t4
	-[0x80001040]:sd t6, 928(t1)
Current Store : [0x80001044] : sd t5, 936(t1) -- Store: [0x800036d8]:0xFFFEFFFF80000000




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80001064]:KSTAS32 t6, t5, t4
	-[0x80001068]:sd t6, 944(t1)
Current Store : [0x8000106c] : sd t5, 952(t1) -- Store: [0x800036e8]:0xFFFFF7FFFFDFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -4097', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001090]:KSTAS32 t6, t5, t4
	-[0x80001094]:sd t6, 960(t1)
Current Store : [0x80001098] : sd t5, 968(t1) -- Store: [0x800036f8]:0x00000010FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 134217728', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800010ac]:KSTAS32 t6, t5, t4
	-[0x800010b0]:sd t6, 976(t1)
Current Store : [0x800010b4] : sd t5, 984(t1) -- Store: [0x80003708]:0xFFFFFF7F20000000




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x800010d0]:KSTAS32 t6, t5, t4
	-[0x800010d4]:sd t6, 992(t1)
Current Store : [0x800010d8] : sd t5, 1000(t1) -- Store: [0x80003718]:0x0000008000008000




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x800010ec]:KSTAS32 t6, t5, t4
	-[0x800010f0]:sd t6, 1008(t1)
Current Store : [0x800010f4] : sd t5, 1016(t1) -- Store: [0x80003728]:0xFFFFFFFE00800000




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80001118]:KSTAS32 t6, t5, t4
	-[0x8000111c]:sd t6, 1024(t1)
Current Store : [0x80001120] : sd t5, 1032(t1) -- Store: [0x80003738]:0x00001000FFFEFFFF




Last Coverpoint : ['rs1_w1_val == -1', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001138]:KSTAS32 t6, t5, t4
	-[0x8000113c]:sd t6, 1040(t1)
Current Store : [0x80001140] : sd t5, 1048(t1) -- Store: [0x80003748]:0xFFFFFFFF55555555




Last Coverpoint : ['rs2_w1_val == -1', 'rs2_w0_val == -131073', 'rs1_w1_val == 256', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x8000115c]:KSTAS32 t6, t5, t4
	-[0x80001160]:sd t6, 1056(t1)
Current Store : [0x80001164] : sd t5, 1064(t1) -- Store: [0x80003758]:0x00000100FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001188]:KSTAS32 t6, t5, t4
	-[0x8000118c]:sd t6, 1072(t1)
Current Store : [0x80001190] : sd t5, 1080(t1) -- Store: [0x80003768]:0x0000800080000000




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800011b8]:KSTAS32 t6, t5, t4
	-[0x800011bc]:sd t6, 1088(t1)
Current Store : [0x800011c0] : sd t5, 1096(t1) -- Store: [0x80003778]:0x80000000FFFFF7FF




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x800011e8]:KSTAS32 t6, t5, t4
	-[0x800011ec]:sd t6, 1104(t1)
Current Store : [0x800011f0] : sd t5, 1112(t1) -- Store: [0x80003788]:0x00080000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001214]:KSTAS32 t6, t5, t4
	-[0x80001218]:sd t6, 1120(t1)
Current Store : [0x8000121c] : sd t5, 1128(t1) -- Store: [0x80003798]:0x08000000DFFFFFFF




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000123c]:KSTAS32 t6, t5, t4
	-[0x80001240]:sd t6, 1136(t1)
Current Store : [0x80001244] : sd t5, 1144(t1) -- Store: [0x800037a8]:0x00004000FFFFFDFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001264]:KSTAS32 t6, t5, t4
	-[0x80001268]:sd t6, 1152(t1)
Current Store : [0x8000126c] : sd t5, 1160(t1) -- Store: [0x800037b8]:0xFFBFFFFF00000009




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80001288]:KSTAS32 t6, t5, t4
	-[0x8000128c]:sd t6, 1168(t1)
Current Store : [0x80001290] : sd t5, 1176(t1) -- Store: [0x800037c8]:0xFFFF7FFF20000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800012b4]:KSTAS32 t6, t5, t4
	-[0x800012b8]:sd t6, 1184(t1)
Current Store : [0x800012bc] : sd t5, 1192(t1) -- Store: [0x800037d8]:0xDFFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800012e8]:KSTAS32 t6, t5, t4
	-[0x800012ec]:sd t6, 1200(t1)
Current Store : [0x800012f0] : sd t5, 1208(t1) -- Store: [0x800037e8]:0xAAAAAAAAFEFFFFFF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001310]:KSTAS32 t6, t5, t4
	-[0x80001314]:sd t6, 1216(t1)
Current Store : [0x80001318] : sd t5, 1224(t1) -- Store: [0x800037f8]:0x7FFFFFFF00000003




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x8000133c]:KSTAS32 t6, t5, t4
	-[0x80001340]:sd t6, 1232(t1)
Current Store : [0x80001344] : sd t5, 1240(t1) -- Store: [0x80003808]:0xFBFFFFFF00010000




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x8000136c]:KSTAS32 t6, t5, t4
	-[0x80001370]:sd t6, 1248(t1)
Current Store : [0x80001374] : sd t5, 1256(t1) -- Store: [0x80003818]:0xFDFFFFFF00001000




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80001390]:KSTAS32 t6, t5, t4
	-[0x80001394]:sd t6, 1264(t1)
Current Store : [0x80001398] : sd t5, 1272(t1) -- Store: [0x80003828]:0xFF7FFFFF00200000




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800013b4]:KSTAS32 t6, t5, t4
	-[0x800013b8]:sd t6, 1280(t1)
Current Store : [0x800013bc] : sd t5, 1288(t1) -- Store: [0x80003838]:0xFFDFFFFFC0000000




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800013e0]:KSTAS32 t6, t5, t4
	-[0x800013e4]:sd t6, 1296(t1)
Current Store : [0x800013e8] : sd t5, 1304(t1) -- Store: [0x80003848]:0xFFEFFFFF04000000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x8000140c]:KSTAS32 t6, t5, t4
	-[0x80001410]:sd t6, 1312(t1)
Current Store : [0x80001414] : sd t5, 1320(t1) -- Store: [0x80003858]:0xFFFBFFFF00001000




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001438]:KSTAS32 t6, t5, t4
	-[0x8000143c]:sd t6, 1328(t1)
Current Store : [0x80001440] : sd t5, 1336(t1) -- Store: [0x80003868]:0xFFFFEFFF00000080




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80001464]:KSTAS32 t6, t5, t4
	-[0x80001468]:sd t6, 1344(t1)
Current Store : [0x8000146c] : sd t5, 1352(t1) -- Store: [0x80003878]:0xFFFFFDFF02000000




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x8000148c]:KSTAS32 t6, t5, t4
	-[0x80001490]:sd t6, 1360(t1)
Current Store : [0x80001494] : sd t5, 1368(t1) -- Store: [0x80003888]:0xFFFFFEFF00001000




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x800014b8]:KSTAS32 t6, t5, t4
	-[0x800014bc]:sd t6, 1376(t1)
Current Store : [0x800014c0] : sd t5, 1384(t1) -- Store: [0x80003898]:0x20000000FFFFFFFD




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800014e4]:KSTAS32 t6, t5, t4
	-[0x800014e8]:sd t6, 1392(t1)
Current Store : [0x800014ec] : sd t5, 1400(t1) -- Store: [0x800038a8]:0x10000000FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001510]:KSTAS32 t6, t5, t4
	-[0x80001514]:sd t6, 1408(t1)
Current Store : [0x80001518] : sd t5, 1416(t1) -- Store: [0x800038b8]:0x02000000FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x8000153c]:KSTAS32 t6, t5, t4
	-[0x80001540]:sd t6, 1424(t1)
Current Store : [0x80001544] : sd t5, 1432(t1) -- Store: [0x800038c8]:0x0100000000001000




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001560]:KSTAS32 t6, t5, t4
	-[0x80001564]:sd t6, 1440(t1)
Current Store : [0x80001568] : sd t5, 1448(t1) -- Store: [0x800038d8]:0x0000040000000003




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001588]:KSTAS32 t6, t5, t4
	-[0x8000158c]:sd t6, 1456(t1)
Current Store : [0x80001590] : sd t5, 1464(t1) -- Store: [0x800038e8]:0x0000020000008000




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800015b0]:KSTAS32 t6, t5, t4
	-[0x800015b4]:sd t6, 1472(t1)
Current Store : [0x800015b8] : sd t5, 1480(t1) -- Store: [0x800038f8]:0x00000003FFFFFFF7




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x800015d8]:KSTAS32 t6, t5, t4
	-[0x800015dc]:sd t6, 1488(t1)
Current Store : [0x800015e0] : sd t5, 1496(t1) -- Store: [0x80003908]:0x0000000400000800




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800015fc]:KSTAS32 t6, t5, t4
	-[0x80001600]:sd t6, 1504(t1)
Current Store : [0x80001604] : sd t5, 1512(t1) -- Store: [0x80003918]:0x00000002FFFFFFEF




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x8000161c]:KSTAS32 t6, t5, t4
	-[0x80001620]:sd t6, 1520(t1)
Current Store : [0x80001624] : sd t5, 1528(t1) -- Store: [0x80003928]:0x0000000000000002




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001648]:KSTAS32 t6, t5, t4
	-[0x8000164c]:sd t6, 1536(t1)
Current Store : [0x80001650] : sd t5, 1544(t1) -- Store: [0x80003938]:0x00000100EFFFFFFF




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001670]:KSTAS32 t6, t5, t4
	-[0x80001674]:sd t6, 1552(t1)
Current Store : [0x80001678] : sd t5, 1560(t1) -- Store: [0x80003948]:0xFFFBFFFFFFFFFFF8




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001698]:KSTAS32 t6, t5, t4
	-[0x8000169c]:sd t6, 1568(t1)
Current Store : [0x800016a0] : sd t5, 1576(t1) -- Store: [0x80003958]:0x00040000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x800016bc]:KSTAS32 t6, t5, t4
	-[0x800016c0]:sd t6, 1584(t1)
Current Store : [0x800016c4] : sd t5, 1592(t1) -- Store: [0x80003968]:0xFFFFFFBFC0000000




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x800016ec]:KSTAS32 t6, t5, t4
	-[0x800016f0]:sd t6, 1600(t1)
Current Store : [0x800016f4] : sd t5, 1608(t1) -- Store: [0x80003978]:0x10000000DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001720]:KSTAS32 t6, t5, t4
	-[0x80001724]:sd t6, 1616(t1)
Current Store : [0x80001728] : sd t5, 1624(t1) -- Store: [0x80003988]:0x00000800FF7FFFFF




Last Coverpoint : ['rs2_w0_val == -2049', 'rs1_w1_val == 32', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001754]:KSTAS32 t6, t5, t4
	-[0x80001758]:sd t6, 1632(t1)
Current Store : [0x8000175c] : sd t5, 1640(t1) -- Store: [0x80003998]:0x00000020FFF7FFFF




Last Coverpoint : ['rs2_w0_val == -513', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001778]:KSTAS32 t6, t5, t4
	-[0x8000177c]:sd t6, 1648(t1)
Current Store : [0x80001780] : sd t5, 1656(t1) -- Store: [0x800039a8]:0x3FFFFFFFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800017a4]:KSTAS32 t6, t5, t4
	-[0x800017a8]:sd t6, 1664(t1)
Current Store : [0x800017ac] : sd t5, 1672(t1) -- Store: [0x800039b8]:0xFFF7FFFFFFFDFFFF




Last Coverpoint : ['rs2_w0_val == -257']
Last Code Sequence : 
	-[0x800017c8]:KSTAS32 t6, t5, t4
	-[0x800017cc]:sd t6, 1680(t1)
Current Store : [0x800017d0] : sd t5, 1688(t1) -- Store: [0x800039c8]:0xFFFFFFF9FFFFFFFC




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800017e8]:KSTAS32 t6, t5, t4
	-[0x800017ec]:sd t6, 1696(t1)
Current Store : [0x800017f0] : sd t5, 1704(t1) -- Store: [0x800039d8]:0x0000000240000000




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x8000180c]:KSTAS32 t6, t5, t4
	-[0x80001810]:sd t6, 1712(t1)
Current Store : [0x80001814] : sd t5, 1720(t1) -- Store: [0x800039e8]:0x0002000000800000




Last Coverpoint : ['rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80001834]:KSTAS32 t6, t5, t4
	-[0x80001838]:sd t6, 1728(t1)
Current Store : [0x8000183c] : sd t5, 1736(t1) -- Store: [0x800039f8]:0xFFFFFFF6FFEFFFFF




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80001858]:KSTAS32 t6, t5, t4
	-[0x8000185c]:sd t6, 1744(t1)
Current Store : [0x80001860] : sd t5, 1752(t1) -- Store: [0x80003a08]:0xFFFFFEFF00004000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001880]:KSTAS32 t6, t5, t4
	-[0x80001884]:sd t6, 1760(t1)
Current Store : [0x80001888] : sd t5, 1768(t1) -- Store: [0x80003a18]:0xFFFFFEFFFFFFFFDF




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800018b4]:KSTAS32 t6, t5, t4
	-[0x800018b8]:sd t6, 1776(t1)
Current Store : [0x800018bc] : sd t5, 1784(t1) -- Store: [0x80003a28]:0x00800000FFFFEFFF




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800018e0]:KSTAS32 t6, t5, t4
	-[0x800018e4]:sd t6, 1792(t1)
Current Store : [0x800018e8] : sd t5, 1800(t1) -- Store: [0x80003a38]:0x0800000010000000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001908]:KSTAS32 t6, t5, t4
	-[0x8000190c]:sd t6, 1808(t1)
Current Store : [0x80001910] : sd t5, 1816(t1) -- Store: [0x80003a48]:0x00008000FFFBFFFF




Last Coverpoint : ['rs2_w0_val == -9']
Last Code Sequence : 
	-[0x8000192c]:KSTAS32 t6, t5, t4
	-[0x80001930]:sd t6, 1824(t1)
Current Store : [0x80001934] : sd t5, 1832(t1) -- Store: [0x80003a58]:0xFFFFFFFABFFFFFFF




Last Coverpoint : ['opcode : kstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -2049', 'rs2_w0_val == 33554432', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x8000194c]:KSTAS32 t6, t5, t4
	-[0x80001950]:sd t6, 1840(t1)
Current Store : [0x80001954] : sd t5, 1848(t1) -- Store: [0x80003a68]:0x0000002080000000




Last Coverpoint : ['opcode : kstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 2048', 'rs2_w0_val == 4096', 'rs1_w1_val == 2048', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001978]:KSTAS32 t6, t5, t4
	-[0x8000197c]:sd t6, 1856(t1)
Current Store : [0x80001980] : sd t5, 1864(t1) -- Store: [0x80003a78]:0x00000800EFFFFFFF




Last Coverpoint : ['rs1_w1_val == -16385', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800019a0]:KSTAS32 t6, t5, t4
	-[0x800019a4]:sd t6, 1872(t1)
Current Store : [0x800019a8] : sd t5, 1880(t1) -- Store: [0x80003a88]:0xFFFFBFFF00000010




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800019c8]:KSTAS32 t6, t5, t4
	-[0x800019cc]:sd t6, 1888(t1)
Current Store : [0x800019d0] : sd t5, 1896(t1) -- Store: [0x80003a98]:0xFFFFFF7F00000003




Last Coverpoint : ['opcode : kstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -8193', 'rs2_w0_val == 524288', 'rs1_w1_val == 1', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800019f0]:KSTAS32 t6, t5, t4
	-[0x800019f4]:sd t6, 1904(t1)
Current Store : [0x800019f8] : sd t5, 1912(t1) -- Store: [0x80003aa8]:0x00000001FFFBFFFF





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

|s.no|            signature             |                                                                                                                                                                       coverpoints                                                                                                                                                                       |                                  code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFEFFE00000000|- opcode : kstas32<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 33554432<br> |[0x800003b8]:KSTAS32 a3, a4, a4<br> [0x800003bc]:sd a3, 0(tp)<br>       |
|   2|[0x80003220]<br>0x0000100000000000|- rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 2048<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 4096<br>                                                                                                                                        |[0x800003e4]:KSTAS32 s3, s3, s3<br> [0x800003e8]:sd s3, 16(tp)<br>      |
|   3|[0x80003230]<br>0x00004000FFF00000|- rs1 : x0<br> - rs2 : x13<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w0_val != rs2_w0_val<br> - rs2_w1_val == 16384<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                              |[0x8000040c]:KSTAS32 t5, zero, a3<br> [0x80000410]:sd t5, 32(tp)<br>    |
|   4|[0x80003240]<br>0xFFF7FFFC02000011|- rs1 : x8<br> - rs2 : x6<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -3<br> - rs2_w0_val == -17<br> - rs1_w1_val == -524289<br>                                                                                                                                                                    |[0x80000430]:KSTAS32 fp, fp, t1<br> [0x80000434]:sd fp, 48(tp)<br>      |
|   5|[0x80003250]<br>0xFFFE000700000000|- rs1 : x17<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 8<br> - rs2_w0_val == -1025<br> - rs1_w1_val == -131073<br> - rs1_w0_val == -1025<br>                                                                                              |[0x80000454]:KSTAS32 s4, a7, s4<br> [0x80000458]:sd s4, 64(tp)<br>      |
|   6|[0x80003260]<br>0x8AAAAAA9FF9FFFFF|- rs1 : x20<br> - rs2 : x29<br> - rd : x22<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -4194305<br>                                                                                                                                           |[0x80000488]:KSTAS32 s6, s4, t4<br> [0x8000048c]:sd s6, 80(tp)<br>      |
|   7|[0x80003270]<br>0x55555534FDFFFFFF|- rs1 : x28<br> - rs2 : x25<br> - rd : x27<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == -33<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                         |[0x800004b8]:KSTAS32 s11, t3, s9<br> [0x800004bc]:sd s11, 96(tp)<br>    |
|   8|[0x80003280]<br>0x7FFFFFFF5555D556|- rs1 : x10<br> - rs2 : x1<br> - rd : x7<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                    |[0x800004ec]:KSTAS32 t2, a0, ra<br> [0x800004f0]:sd t2, 112(tp)<br>     |
|   9|[0x80003290]<br>0x80000000FFFFFF7B|- rs1 : x1<br> - rs2 : x31<br> - rd : x24<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 4<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                             |[0x80000518]:KSTAS32 s8, ra, t6<br> [0x8000051c]:sd s8, 128(tp)<br>     |
|  10|[0x800032a0]<br>0xE000007FFFFDFEFF|- rs1 : x6<br> - rs2 : x16<br> - rd : x14<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 128<br> - rs1_w0_val == -257<br>                                                                                                                                                         |[0x80000544]:KSTAS32 a4, t1, a6<br> [0x80000548]:sd a4, 144(tp)<br>     |
|  11|[0x800032b0]<br>0xF0001FFF003FFF80|- rs1 : x27<br> - rs2 : x11<br> - rd : x16<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                      |[0x80000574]:KSTAS32 a6, s11, a1<br> [0x80000578]:sd a6, 160(tp)<br>    |
|  12|[0x800032c0]<br>0xEFFFFFFEFFDFEFFF|- rs1 : x7<br> - rs2 : x30<br> - rd : x31<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                 |[0x800005a8]:KSTAS32 t6, t2, t5<br> [0x800005ac]:sd t6, 176(tp)<br>     |
|  13|[0x800032d0]<br>0xBBFFFFFE88000001|- rs1 : x13<br> - rs2 : x22<br> - rd : x17<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                              |[0x800005d8]:KSTAS32 a7, a3, s6<br> [0x800005dc]:sd a7, 192(tp)<br>     |
|  14|[0x800032e0]<br>0xBDFFFFFEFEFEFFFF|- rs1 : x12<br> - rs2 : x5<br> - rd : x11<br> - rs2_w1_val == -33554433<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                   |[0x80000608]:KSTAS32 a1, a2, t0<br> [0x8000060c]:sd a1, 208(tp)<br>     |
|  15|[0x800032f0]<br>0x545555549FFFFFFF|- rs1 : x16<br> - rs2 : x27<br> - rd : x18<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                |[0x80000638]:KSTAS32 s2, a6, s11<br> [0x8000063c]:sd s2, 224(tp)<br>    |
|  16|[0x80003300]<br>0xFF9FFFFFFFFFFDBF|- rs1 : x22<br> - rs2 : x3<br> - rd : x28<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 512<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                   |[0x80000664]:KSTAS32 t3, s6, gp<br> [0x80000668]:sd t3, 240(tp)<br>     |
|  17|[0x80003310]<br>0xFFC1FFFF20000081|- rs1 : x15<br> - rs2 : x28<br> - rd : x6<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -536870913<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 128<br>                                                                                                                                                                                             |[0x8000068c]:KSTAS32 t1, a5, t3<br> [0x80000690]:sd t1, 256(tp)<br>     |
|  18|[0x80003320]<br>0xFFE00000FFFF0020|- rs1 : x2<br> - rs2 : x21<br> - rd : x15<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 1<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                        |[0x800006b8]:KSTAS32 a5, sp, s5<br> [0x800006bc]:sd a5, 272(tp)<br>     |
|  19|[0x80003330]<br>0xFFEFFFF500400003|- rs1 : x25<br> - rs2 : x26<br> - rd : x12<br> - rs2_w1_val == -1048577<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                        |[0x800006e8]:KSTAS32 a2, s9, s10<br> [0x800006ec]:sd a2, 0(t1)<br>      |
|  20|[0x80003340]<br>0xFFF800063FFFF7FF|- rs1 : x23<br> - rs2 : x17<br> - rd : x1<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                       |[0x80000718]:KSTAS32 ra, s7, a7<br> [0x8000071c]:sd ra, 16(t1)<br>      |
|  21|[0x80003350]<br>0xEFFBFFFEFFBFFFFC|- rs1 : x5<br> - rs2 : x24<br> - rd : x23<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -268435457<br>                                                                                                                                                                                                                     |[0x8000073c]:KSTAS32 s7, t0, s8<br> [0x80000740]:sd s7, 32(t1)<br>      |
|  22|[0x80003360]<br>0xF7FDFFFE10000002|- rs1 : x11<br> - rs2 : x15<br> - rd : x25<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                          |[0x80000768]:KSTAS32 s9, a1, a5<br> [0x8000076c]:sd s9, 48(t1)<br>      |
|  23|[0x80003370]<br>0xFFFFFF7F00000003|- rs1 : x18<br> - rs2 : x0<br> - rd : x5<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -129<br>                                                                                                                                                                                                                                        |[0x80000790]:KSTAS32 t0, s2, zero<br> [0x80000794]:sd t0, 64(t1)<br>    |
|  24|[0x80003380]<br>0xFFFF8FFFFFF02000|- rs1 : x26<br> - rs2 : x8<br> - rd : x4<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -8193<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                  |[0x800007c0]:KSTAS32 tp, s10, fp<br> [0x800007c4]:sd tp, 80(t1)<br>     |
|  25|[0x80003390]<br>0xFFBFBFFE3FFFFFF7|- rs1 : x31<br> - rs2 : x4<br> - rd : x3<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                     |[0x800007e8]:KSTAS32 gp, t6, tp<br> [0x800007ec]:sd gp, 96(t1)<br>      |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x18<br> - rd : x0<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 524288<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                           |[0x80000810]:KSTAS32 zero, t5, s2<br> [0x80000814]:sd zero, 112(t1)<br> |
|  27|[0x800033b0]<br>0x07FFEFFF38000000|- rs1 : x4<br> - rs2 : x23<br> - rd : x21<br> - rs2_w1_val == -4097<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                     |[0x80000840]:KSTAS32 s5, tp, s7<br> [0x80000844]:sd s5, 128(t1)<br>     |
|  28|[0x800033c0]<br>0xFFFFFC04FFFFE000|- rs1 : x29<br> - rs2 : x7<br> - rd : x26<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -1<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                 |[0x80000868]:KSTAS32 s10, t4, t2<br> [0x8000086c]:sd s10, 144(t1)<br>   |
|  29|[0x800033d0]<br>0x00007DFF08080001|- rs1 : x24<br> - rs2 : x12<br> - rd : x10<br> - rs2_w1_val == -513<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                              |[0x80000890]:KSTAS32 a0, s8, a2<br> [0x80000894]:sd a0, 160(t1)<br>     |
|  30|[0x800033e0]<br>0xFFFFFEF7FFFFC002|- rs1 : x3<br> - rs2 : x10<br> - rd : x9<br> - rs2_w1_val == -257<br> - rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                          |[0x800008b4]:KSTAS32 s1, gp, a0<br> [0x800008b8]:sd s1, 176(t1)<br>     |
|  31|[0x800033f0]<br>0x00003F7F7FFFFFFF|- rs1 : x9<br> - rs2 : x2<br> - rd : x29<br> - rs2_w1_val == -129<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                           |[0x800008d8]:KSTAS32 t4, s1, sp<br> [0x800008dc]:sd t4, 192(t1)<br>     |
|  32|[0x80003400]<br>0xFFFFFFB508000001|- rs1 : x21<br> - rs2 : x9<br> - rd : x2<br> - rs2_w1_val == -65<br>                                                                                                                                                                                                                                                                                     |[0x800008fc]:KSTAS32 sp, s5, s1<br> [0x80000900]:sd sp, 208(t1)<br>     |
|  33|[0x80003410]<br>0x03FFFFDFBFEFFFFF|- rs2_w1_val == -33<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                     |[0x80000924]:KSTAS32 t6, t5, t4<br> [0x80000928]:sd t6, 224(t1)<br>     |
|  34|[0x80003420]<br>0xFFFFFFED00000000|- rs2_w1_val == -17<br> - rs1_w1_val == -2<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                           |[0x80000950]:KSTAS32 t6, t5, t4<br> [0x80000954]:sd t6, 240(t1)<br>     |
|  35|[0x80003430]<br>0x5555554C7FFFFF7F|- rs2_w1_val == -9<br> - rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                   |[0x80000974]:KSTAS32 t6, t5, t4<br> [0x80000978]:sd t6, 256(t1)<br>     |
|  36|[0x80003440]<br>0x0003FFFB0003FFF0|- rs2_w1_val == -5<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                    |[0x800009a0]:KSTAS32 t6, t5, t4<br> [0x800009a4]:sd t6, 272(t1)<br>     |
|  37|[0x80003450]<br>0x000007FEFC100000|- rs2_w1_val == -2<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                        |[0x800009cc]:KSTAS32 t6, t5, t4<br> [0x800009d0]:sd t6, 288(t1)<br>     |
|  38|[0x80003460]<br>0x84000000BFFFFFFD|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                    |[0x800009f8]:KSTAS32 t6, t5, t4<br> [0x800009fc]:sd t6, 304(t1)<br>     |
|  39|[0x80003470]<br>0x3FFFFFFB00003FFB|- rs2_w1_val == 1073741824<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                         |[0x80000a28]:KSTAS32 t6, t5, t4<br> [0x80000a2c]:sd t6, 320(t1)<br>     |
|  40|[0x80003480]<br>0x1FFFF7FFF5FFFFFF|- rs2_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                            |[0x80000a54]:KSTAS32 t6, t5, t4<br> [0x80000a58]:sd t6, 336(t1)<br>     |
|  41|[0x80003490]<br>0x0FFFFFFDFFFFFFBA|- rs2_w1_val == 268435456<br> - rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                                                     |[0x80000a78]:KSTAS32 t6, t5, t4<br> [0x80000a7c]:sd t6, 352(t1)<br>     |
|  42|[0x800034a0]<br>0x07FFFBFF00000003|- rs2_w1_val == 134217728<br> - rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                  |[0x80000a9c]:KSTAS32 t6, t5, t4<br> [0x80000aa0]:sd t6, 368(t1)<br>     |
|  43|[0x800034b0]<br>0x03FFDFFF02000081|- rs2_w1_val == 67108864<br> - rs2_w0_val == -129<br> - rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                          |[0x80000ac4]:KSTAS32 t6, t5, t4<br> [0x80000ac8]:sd t6, 384(t1)<br>     |
|  44|[0x800034c0]<br>0x01FFFFFCFFFFFFFA|- rs2_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                             |[0x80000ae4]:KSTAS32 t6, t5, t4<br> [0x80000ae8]:sd t6, 400(t1)<br>     |
|  45|[0x800034d0]<br>0x05000000FFFFBFFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                    |[0x80000b18]:KSTAS32 t6, t5, t4<br> [0x80000b1c]:sd t6, 416(t1)<br>     |
|  46|[0x800034e0]<br>0x00801000007FC000|- rs2_w1_val == 8388608<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                      |[0x80000b48]:KSTAS32 t6, t5, t4<br> [0x80000b4c]:sd t6, 432(t1)<br>     |
|  47|[0x800034f0]<br>0x003FFBFFFFFFE005|- rs2_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                              |[0x80000b74]:KSTAS32 t6, t5, t4<br> [0x80000b78]:sd t6, 448(t1)<br>     |
|  48|[0x80003500]<br>0x001FFFF78AAAAAAA|- rs2_w1_val == 2097152<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == -9<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                         |[0x80000ba4]:KSTAS32 t6, t5, t4<br> [0x80000ba8]:sd t6, 464(t1)<br>     |
|  49|[0x80003510]<br>0x00100008AAAABAAB|- rs2_w1_val == 1048576<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                        |[0x80000bd4]:KSTAS32 t6, t5, t4<br> [0x80000bd8]:sd t6, 480(t1)<br>     |
|  50|[0x80003520]<br>0x00200040C1000001|- rs1_w1_val == 64<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                      |[0x80000bfc]:KSTAS32 t6, t5, t4<br> [0x80000c00]:sd t6, 496(t1)<br>     |
|  51|[0x80003530]<br>0xFFFDFFF6AB2AAAAB|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                              |[0x80000c24]:KSTAS32 t6, t5, t4<br> [0x80000c28]:sd t6, 512(t1)<br>     |
|  52|[0x80003540]<br>0xFFF1FFFF00400081|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                              |[0x80000c48]:KSTAS32 t6, t5, t4<br> [0x80000c4c]:sd t6, 528(t1)<br>     |
|  53|[0x80003550]<br>0x0000801000280001|- rs2_w1_val == 32768<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                             |[0x80000c70]:KSTAS32 t6, t5, t4<br> [0x80000c74]:sd t6, 544(t1)<br>     |
|  54|[0x80003560]<br>0x000FFFF940100001|- rs1_w1_val == 1048576<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                  |[0x80000c98]:KSTAS32 t6, t5, t4<br> [0x80000c9c]:sd t6, 560(t1)<br>     |
|  55|[0x80003570]<br>0xFFFEF7FE00040000|- rs2_w1_val == -65537<br> - rs2_w0_val == 262144<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                         |[0x80000cbc]:KSTAS32 t6, t5, t4<br> [0x80000cc0]:sd t6, 576(t1)<br>     |
|  56|[0x80003580]<br>0xFFFFFFAE00042001|- rs1_w1_val == -65<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                       |[0x80000ce4]:KSTAS32 t6, t5, t4<br> [0x80000ce8]:sd t6, 592(t1)<br>     |
|  57|[0x80003590]<br>0xF7FFFFF70001FE00|- rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                               |[0x80000d0c]:KSTAS32 t6, t5, t4<br> [0x80000d10]:sd t6, 608(t1)<br>     |
|  58|[0x800035a0]<br>0x00007FEF0000E000|- rs1_w1_val == -17<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                        |[0x80000d34]:KSTAS32 t6, t5, t4<br> [0x80000d38]:sd t6, 624(t1)<br>     |
|  59|[0x800035b0]<br>0x00007FBF08004001|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                |[0x80000d5c]:KSTAS32 t6, t5, t4<br> [0x80000d60]:sd t6, 640(t1)<br>     |
|  60|[0x800035c0]<br>0x0000007800001800|- rs2_w1_val == 128<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                         |[0x80000d84]:KSTAS32 t6, t5, t4<br> [0x80000d88]:sd t6, 656(t1)<br>     |
|  61|[0x800035d0]<br>0xFFFF7FF600000803|- rs2_w0_val == -3<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                               |[0x80000db4]:KSTAS32 t6, t5, t4<br> [0x80000db8]:sd t6, 672(t1)<br>     |
|  62|[0x800035e0]<br>0xFC01FFFF00040401|- rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000de0]:KSTAS32 t6, t5, t4<br> [0x80000de4]:sd t6, 688(t1)<br>     |
|  63|[0x800035f0]<br>0xC0001FFFFF000200|- rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000e08]:KSTAS32 t6, t5, t4<br> [0x80000e0c]:sd t6, 704(t1)<br>     |
|  64|[0x80003600]<br>0xFFFFFFFE40000100|- rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000e28]:KSTAS32 t6, t5, t4<br> [0x80000e2c]:sd t6, 720(t1)<br>     |
|  65|[0x80003610]<br>0xF000007FFFFC0040|- rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000e50]:KSTAS32 t6, t5, t4<br> [0x80000e54]:sd t6, 736(t1)<br>     |
|  66|[0x80003620]<br>0x0000FEFF5555555E|- rs1_w1_val == 65536<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                          |[0x80000e78]:KSTAS32 t6, t5, t4<br> [0x80000e7c]:sd t6, 752(t1)<br>     |
|  67|[0x80003630]<br>0xFF3FFFFFFFFFFFFB|- rs1_w1_val == -16777217<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                      |[0x80000ea0]:KSTAS32 t6, t5, t4<br> [0x80000ea4]:sd t6, 768(t1)<br>     |
|  68|[0x80003640]<br>0x00007FFD20000000|- rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000ec8]:KSTAS32 t6, t5, t4<br> [0x80000ecc]:sd t6, 784(t1)<br>     |
|  69|[0x80003650]<br>0x0007FF7FC1000000|- rs2_w1_val == 524288<br> - rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                 |[0x80000ef0]:KSTAS32 t6, t5, t4<br> [0x80000ef4]:sd t6, 800(t1)<br>     |
|  70|[0x80003660]<br>0xF003FFFFFFEFDFFF|- rs2_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                                               |[0x80000f20]:KSTAS32 t6, t5, t4<br> [0x80000f24]:sd t6, 816(t1)<br>     |
|  71|[0x80003670]<br>0x00420000BFDFFFFF|- rs2_w1_val == 131072<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                   |[0x80000f4c]:KSTAS32 t6, t5, t4<br> [0x80000f50]:sd t6, 832(t1)<br>     |
|  72|[0x80003680]<br>0x40010000FFDFFFFE|- rs2_w1_val == 65536<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                          |[0x80000f74]:KSTAS32 t6, t5, t4<br> [0x80000f78]:sd t6, 848(t1)<br>     |
|  73|[0x80003690]<br>0xC0001FFFFFFFFFEE|- rs2_w1_val == 8192<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                          |[0x80000f98]:KSTAS32 t6, t5, t4<br> [0x80000f9c]:sd t6, 864(t1)<br>     |
|  74|[0x800036a0]<br>0x00001003FC000000|- rs2_w1_val == 4096<br> - rs2_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                   |[0x80000fc0]:KSTAS32 t6, t5, t4<br> [0x80000fc4]:sd t6, 880(t1)<br>     |
|  75|[0x800036b0]<br>0x000003F800000005|- rs2_w1_val == 1024<br> - rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                           |[0x80000fe4]:KSTAS32 t6, t5, t4<br> [0x80000fe8]:sd t6, 896(t1)<br>     |
|  76|[0x800036c0]<br>0x000082001FFFE000|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001018]:KSTAS32 t6, t5, t4<br> [0x8000101c]:sd t6, 912(t1)<br>     |
|  77|[0x800036d0]<br>0xFFFF00FF80000000|- rs2_w1_val == 256<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                       |[0x8000103c]:KSTAS32 t6, t5, t4<br> [0x80001040]:sd t6, 928(t1)<br>     |
|  78|[0x800036e0]<br>0xFFFFF83FFFDDFFFF|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001064]:KSTAS32 t6, t5, t4<br> [0x80001068]:sd t6, 944(t1)<br>     |
|  79|[0x800036f0]<br>0x0000003000000800|- rs2_w1_val == 32<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                               |[0x80001090]:KSTAS32 t6, t5, t4<br> [0x80001094]:sd t6, 960(t1)<br>     |
|  80|[0x80003700]<br>0xFFFFFF8F18000000|- rs2_w1_val == 16<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                       |[0x800010ac]:KSTAS32 t6, t5, t4<br> [0x800010b0]:sd t6, 976(t1)<br>     |
|  81|[0x80003710]<br>0x0000008420008001|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                                    |[0x800010d0]:KSTAS32 t6, t5, t4<br> [0x800010d4]:sd t6, 992(t1)<br>     |
|  82|[0x80003720]<br>0x00000000FF800000|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                    |[0x800010ec]:KSTAS32 t6, t5, t4<br> [0x800010f0]:sd t6, 1008(t1)<br>    |
|  83|[0x80003730]<br>0x0000100100030000|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001118]:KSTAS32 t6, t5, t4<br> [0x8000111c]:sd t6, 1024(t1)<br>    |
|  84|[0x80003740]<br>0xFFFFFFFF4D555555|- rs1_w1_val == -1<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                    |[0x80001138]:KSTAS32 t6, t5, t4<br> [0x8000113c]:sd t6, 1040(t1)<br>    |
|  85|[0x80003750]<br>0x000000FF00018000|- rs2_w1_val == -1<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 256<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                    |[0x8000115c]:KSTAS32 t6, t5, t4<br> [0x80001160]:sd t6, 1056(t1)<br>    |
|  86|[0x80003760]<br>0xFFE07FFF80000000|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                |[0x80001188]:KSTAS32 t6, t5, t4<br> [0x8000118c]:sd t6, 1072(t1)<br>    |
|  87|[0x80003770]<br>0x80000000FFFFF6FF|- rs2_w0_val == 256<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                                                                  |[0x800011b8]:KSTAS32 t6, t5, t4<br> [0x800011bc]:sd t6, 1088(t1)<br>    |
|  88|[0x80003780]<br>0x0007FFFFFFFF7F7F|- rs2_w0_val == 128<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                       |[0x800011e8]:KSTAS32 t6, t5, t4<br> [0x800011ec]:sd t6, 1104(t1)<br>    |
|  89|[0x80003790]<br>0x07BFFFFFDFFFFFBF|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001214]:KSTAS32 t6, t5, t4<br> [0x80001218]:sd t6, 1120(t1)<br>    |
|  90|[0x800037a0]<br>0x00008000FFFFFDDF|- rs2_w0_val == 32<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                          |[0x8000123c]:KSTAS32 t6, t5, t4<br> [0x80001240]:sd t6, 1136(t1)<br>    |
|  91|[0x800037b0]<br>0xFFC00003FFFFFFF9|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001264]:KSTAS32 t6, t5, t4<br> [0x80001268]:sd t6, 1152(t1)<br>    |
|  92|[0x800037c0]<br>0xBFFF7FFF1FFFFFF8|- rs2_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001288]:KSTAS32 t6, t5, t4<br> [0x8000128c]:sd t6, 1168(t1)<br>    |
|  93|[0x800037d0]<br>0x1FFFFFFE7FFFFFFE|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                    |[0x800012b4]:KSTAS32 t6, t5, t4<br> [0x800012b8]:sd t6, 1184(t1)<br>    |
|  94|[0x800037e0]<br>0xAAAAAAA4FF001000|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                          |[0x800012e8]:KSTAS32 t6, t5, t4<br> [0x800012ec]:sd t6, 1200(t1)<br>    |
|  95|[0x800037f0]<br>0x7FFFFFFFFFFFFE03|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                           |[0x80001310]:KSTAS32 t6, t5, t4<br> [0x80001314]:sd t6, 1216(t1)<br>    |
|  96|[0x80003800]<br>0xFBFFFFF80000FFFB|- rs1_w1_val == -67108865<br>                                                                                                                                                                                                                                                                                                                            |[0x8000133c]:KSTAS32 t6, t5, t4<br> [0x80001340]:sd t6, 1232(t1)<br>    |
|  97|[0x80003810]<br>0xFDFFFFFC00041001|- rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                                                                                                            |[0x8000136c]:KSTAS32 t6, t5, t4<br> [0x80001370]:sd t6, 1248(t1)<br>    |
|  98|[0x80003820]<br>0xFF7FFFFE40200001|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                                             |[0x80001390]:KSTAS32 t6, t5, t4<br> [0x80001394]:sd t6, 1264(t1)<br>    |
|  99|[0x80003830]<br>0xFFE00000C0000401|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                             |[0x800013b4]:KSTAS32 t6, t5, t4<br> [0x800013b8]:sd t6, 1280(t1)<br>    |
| 100|[0x80003840]<br>0x1FEFFFFF24000001|- rs1_w1_val == -1048577<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                |[0x800013e0]:KSTAS32 t6, t5, t4<br> [0x800013e4]:sd t6, 1296(t1)<br>    |
| 101|[0x80003850]<br>0xFFFBFFF800001011|- rs1_w1_val == -262145<br>                                                                                                                                                                                                                                                                                                                              |[0x8000140c]:KSTAS32 t6, t5, t4<br> [0x80001410]:sd t6, 1312(t1)<br>    |
| 102|[0x80003860]<br>0x0FFFEFFF00000087|- rs1_w1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                |[0x80001438]:KSTAS32 t6, t5, t4<br> [0x8000143c]:sd t6, 1328(t1)<br>    |
| 103|[0x80003870]<br>0xBFFFFDFE02020001|- rs1_w1_val == -513<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001464]:KSTAS32 t6, t5, t4<br> [0x80001468]:sd t6, 1344(t1)<br>    |
| 104|[0x80003880]<br>0x001FFEFFFFFFF000|- rs1_w1_val == -257<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000148c]:KSTAS32 t6, t5, t4<br> [0x80001490]:sd t6, 1360(t1)<br>    |
| 105|[0x80003890]<br>0x40000000000003FE|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                            |[0x800014b8]:KSTAS32 t6, t5, t4<br> [0x800014bc]:sd t6, 1376(t1)<br>    |
| 106|[0x800038a0]<br>0x0FFFFBFFFFDF7FFF|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                            |[0x800014e4]:KSTAS32 t6, t5, t4<br> [0x800014e8]:sd t6, 1392(t1)<br>    |
| 107|[0x800038b0]<br>0x02000007FFFFF3FF|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                             |[0x80001510]:KSTAS32 t6, t5, t4<br> [0x80001514]:sd t6, 1408(t1)<br>    |
| 108|[0x800038c0]<br>0x0100800008001001|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                             |[0x8000153c]:KSTAS32 t6, t5, t4<br> [0x80001540]:sd t6, 1424(t1)<br>    |
| 109|[0x800038d0]<br>0x00200400FC000003|- rs2_w0_val == 67108864<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                    |[0x80001560]:KSTAS32 t6, t5, t4<br> [0x80001564]:sd t6, 1440(t1)<br>    |
| 110|[0x800038e0]<br>0x0002020000088001|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001588]:KSTAS32 t6, t5, t4<br> [0x8000158c]:sd t6, 1456(t1)<br>    |
| 111|[0x800038f0]<br>0x0004000380000000|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                           |[0x800015b0]:KSTAS32 t6, t5, t4<br> [0x800015b4]:sd t6, 1472(t1)<br>    |
| 112|[0x80003900]<br>0x0000000200800801|- rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                                    |[0x800015d8]:KSTAS32 t6, t5, t4<br> [0x800015dc]:sd t6, 1488(t1)<br>    |
| 113|[0x80003910]<br>0x0000000AFFFFFFF7|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                    |[0x800015fc]:KSTAS32 t6, t5, t4<br> [0x80001600]:sd t6, 1504(t1)<br>    |
| 114|[0x80003920]<br>0xC000000000000004|- rs2_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000161c]:KSTAS32 t6, t5, t4<br> [0x80001620]:sd t6, 1520(t1)<br>    |
| 115|[0x80003930]<br>0xFFC000FFF2000000|- rs2_w0_val == -33554433<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                             |[0x80001648]:KSTAS32 t6, t5, t4<br> [0x8000164c]:sd t6, 1536(t1)<br>    |
| 116|[0x80003940]<br>0xFFFB7FFE001FFFF9|- rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                             |[0x80001670]:KSTAS32 t6, t5, t4<br> [0x80001674]:sd t6, 1552(t1)<br>    |
| 117|[0x80003950]<br>0x000C0000FDFFFFF7|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                            |[0x80001698]:KSTAS32 t6, t5, t4<br> [0x8000169c]:sd t6, 1568(t1)<br>    |
| 118|[0x80003960]<br>0xFFFFFFC6C0010001|- rs2_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                                               |[0x800016bc]:KSTAS32 t6, t5, t4<br> [0x800016c0]:sd t6, 1584(t1)<br>    |
| 119|[0x80003970]<br>0x10000004E0008000|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                               |[0x800016ec]:KSTAS32 t6, t5, t4<br> [0x800016f0]:sd t6, 1600(t1)<br>    |
| 120|[0x80003980]<br>0xFFFF07FFFF7FF7FF|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                             |[0x80001720]:KSTAS32 t6, t5, t4<br> [0x80001724]:sd t6, 1616(t1)<br>    |
| 121|[0x80003990]<br>0x10000020FFF80800|- rs2_w0_val == -2049<br> - rs1_w1_val == 32<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                             |[0x80001754]:KSTAS32 t6, t5, t4<br> [0x80001758]:sd t6, 1632(t1)<br>    |
| 122|[0x800039a0]<br>0x3FFFFFBE000001FC|- rs2_w0_val == -513<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                                          |[0x80001778]:KSTAS32 t6, t5, t4<br> [0x8000177c]:sd t6, 1648(t1)<br>    |
| 123|[0x800039b0]<br>0xFFF801FFFFFDFFFC|- rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                              |[0x800017a4]:KSTAS32 t6, t5, t4<br> [0x800017a8]:sd t6, 1664(t1)<br>    |
| 124|[0x800039c0]<br>0xFFFBFFF8000000FD|- rs2_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                                 |[0x800017c8]:KSTAS32 t6, t5, t4<br> [0x800017cc]:sd t6, 1680(t1)<br>    |
| 125|[0x800039d0]<br>0xFFFFFC013F800000|- rs2_w0_val == 8388608<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                               |[0x800017e8]:KSTAS32 t6, t5, t4<br> [0x800017ec]:sd t6, 1696(t1)<br>    |
| 126|[0x800039e0]<br>0x0002000500800041|- rs2_w0_val == -65<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000180c]:KSTAS32 t6, t5, t4<br> [0x80001810]:sd t6, 1712(t1)<br>    |
| 127|[0x800039f0]<br>0xFFFFFFB5FFF00020|- rs2_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001834]:KSTAS32 t6, t5, t4<br> [0x80001838]:sd t6, 1728(t1)<br>    |
| 128|[0x80003a00]<br>0xFFFFFF0000004005|- rs2_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001858]:KSTAS32 t6, t5, t4<br> [0x8000185c]:sd t6, 1744(t1)<br>    |
| 129|[0x80003a10]<br>0xFFFFFEFF0001FFE0|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001880]:KSTAS32 t6, t5, t4<br> [0x80001884]:sd t6, 1760(t1)<br>    |
| 130|[0x80003a20]<br>0x008000100001F000|- rs1_w1_val == 8388608<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                    |[0x800018b4]:KSTAS32 t6, t5, t4<br> [0x800018b8]:sd t6, 1776(t1)<br>    |
| 131|[0x80003a30]<br>0x077FFFFF0FFFFFFF|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                            |[0x800018e0]:KSTAS32 t6, t5, t4<br> [0x800018e4]:sd t6, 1792(t1)<br>    |
| 132|[0x80003a40]<br>0x00010000EFFBFFFF|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                            |[0x80001908]:KSTAS32 t6, t5, t4<br> [0x8000190c]:sd t6, 1808(t1)<br>    |
| 133|[0x80003a50]<br>0x00000001C0000008|- rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000192c]:KSTAS32 t6, t5, t4<br> [0x80001930]:sd t6, 1824(t1)<br>    |
| 134|[0x80003a80]<br>0xFFFFFFFFFFF00010|- rs1_w1_val == -16385<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                        |[0x800019a0]:KSTAS32 t6, t5, t4<br> [0x800019a4]:sd t6, 1872(t1)<br>    |
| 135|[0x80003a90]<br>0xFFFEFF7EFFFFFC03|- rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                 |[0x800019c8]:KSTAS32 t6, t5, t4<br> [0x800019cc]:sd t6, 1888(t1)<br>    |
