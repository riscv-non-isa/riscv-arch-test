
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
| SIG_REGION                | [('0x80003210', '0x80003ab0', '276 dwords')]      |
| COV_LABELS                | ksubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ksubw-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 276      |
| STAT1                     | 133      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 138     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010ac]:KSUBW t6, t5, t4
      [0x800010b0]:sd t6, 1008(gp)
 -- Signature Address: 0x80003710 Data: 0xFFFFFFFFFFFEFFBF
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 64
      - rs1_w1_val == -33554433
      - rs1_w0_val == -65537




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001248]:KSUBW t6, t5, t4
      [0x8000124c]:sd t6, 1152(gp)
 -- Signature Address: 0x800037a0 Data: 0xFFFFFFFFBFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w1_val == -16385
      - rs2_w0_val == 0
      - rs1_w1_val == 256
      - rs1_w0_val == -1073741825




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015d8]:KSUBW t6, t5, t4
      [0x800015dc]:sd t6, 1504(gp)
 -- Signature Address: 0x80003900 Data: 0xFFFFFFFFE0000100
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -17
      - rs2_w0_val == 536870912
      - rs1_w1_val == 64
      - rs1_w0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e8]:KSUBW t6, t5, t4
      [0x800019ec]:sd t6, 1904(gp)
 -- Signature Address: 0x80003a90 Data: 0xFFFFFFFFDFFFFFF8
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 262144
      - rs2_w0_val == 536870912
      - rs1_w1_val == 262144




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a10]:KSUBW t6, t5, t4
      [0x80001a14]:sd t6, 1920(gp)
 -- Signature Address: 0x80003aa0 Data: 0x000000003FF00000
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -524289
      - rs2_w0_val == 1048576
      - rs1_w1_val == 2
      - rs1_w0_val == 1073741824






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksubw', 'rs1 : x21', 'rs2 : x21', 'rd : x31', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 64', 'rs2_w0_val == -1048577', 'rs1_w1_val == 64', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800003c4]:KSUBW t6, s5, s5
	-[0x800003c8]:sd t6, 0(t2)
Current Store : [0x800003cc] : sd s5, 8(t2) -- Store: [0x80003218]:0x00000040FFEFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x13', 'rs1 == rs2 == rd', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 262144', 'rs2_w0_val == 536870912', 'rs1_w1_val == 262144', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800003ec]:KSUBW a3, a3, a3
	-[0x800003f0]:sd a3, 16(t2)
Current Store : [0x800003f4] : sd a3, 24(t2) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs2_w1_val == -17', 'rs2_w0_val == 8', 'rs1_w1_val == -3', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000410]:KSUBW sp, a2, t0
	-[0x80000414]:sd sp, 32(t2)
Current Store : [0x80000418] : sd a2, 40(t2) -- Store: [0x80003238]:0xFFFFFFFD00000008




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x23', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -3', 'rs2_w0_val == -8388609', 'rs1_w1_val == 8', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000434]:KSUBW s7, s7, a6
	-[0x80000438]:sd s7, 48(t2)
Current Store : [0x8000043c] : sd s7, 56(t2) -- Store: [0x80003248]:0x0000000000808001




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -4097', 'rs1_w1_val == -4097', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000468]:KSUBW s10, t1, s10
	-[0x8000046c]:sd s10, 64(t2)
Current Store : [0x80000470] : sd t1, 72(t2) -- Store: [0x80003258]:0xFFFFEFFFFFF7FFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x17', 'rd : x9', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 16777216', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000494]:KSUBW s1, s4, a7
	-[0x80000498]:sd s1, 80(t2)
Current Store : [0x8000049c] : sd s4, 88(t2) -- Store: [0x80003268]:0x0000000900100000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x14', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs2_w1_val == 2147483647', 'rs1_w1_val == -32769', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800004bc]:KSUBW a4, s3, tp
	-[0x800004c0]:sd a4, 96(t2)
Current Store : [0x800004c4] : sd s3, 104(t2) -- Store: [0x80003278]:0xFFFF7FFFFFBFFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x22', 'rd : x1', 'rs2_w1_val == -1073741825', 'rs1_w1_val == 4', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800004e4]:KSUBW ra, gp, s6
	-[0x800004e8]:sd ra, 112(t2)
Current Store : [0x800004ec] : sd gp, 120(t2) -- Store: [0x80003288]:0x0000000400000004




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x30', 'rs1_w0_val == -2147483648', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -536870913', 'rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000508]:KSUBW t5, ra, s1
	-[0x8000050c]:sd t5, 128(t2)
Current Store : [0x80000510] : sd ra, 136(t2) -- Store: [0x80003298]:0xFFFFFFF980000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rd : x22', 'rs2_w1_val == -268435457', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000538]:KSUBW s6, a5, s7
	-[0x8000053c]:sd s6, 144(t2)
Current Store : [0x80000540] : sd a5, 152(t2) -- Store: [0x800032a8]:0x80000000EFFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x16', 'rs2_w1_val == -134217729', 'rs2_w0_val == 524288', 'rs1_w1_val == -67108865', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000056c]:KSUBW a6, t6, t5
	-[0x80000570]:sd a6, 160(t2)
Current Store : [0x80000574] : sd t6, 168(t2) -- Store: [0x800032b8]:0xFBFFFFFFFFFFBFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x24', 'rs2_w1_val == -67108865']
Last Code Sequence : 
	-[0x80000594]:KSUBW s8, t4, t6
	-[0x80000598]:sd s8, 176(t2)
Current Store : [0x8000059c] : sd t4, 184(t2) -- Store: [0x800032c8]:0x80000000FFFFFFFC




Last Coverpoint : ['rs1 : x17', 'rs2 : x3', 'rd : x4', 'rs2_w1_val == -33554433', 'rs2_w0_val == -262145', 'rs1_w1_val == -1', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800005bc]:KSUBW tp, a7, gp
	-[0x800005c0]:sd tp, 192(t2)
Current Store : [0x800005c4] : sd a7, 200(t2) -- Store: [0x800032d8]:0xFFFFFFFF04000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rd : x28', 'rs2_w1_val == -16777217', 'rs2_w0_val == 1073741824', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800005e4]:KSUBW t3, s11, a4
	-[0x800005e8]:sd t3, 208(t2)
Current Store : [0x800005ec] : sd s11, 216(t2) -- Store: [0x800032e8]:0xFFFBFFFF00000004




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x5', 'rs2_w1_val == -8388609', 'rs2_w0_val == 1024', 'rs1_w1_val == -16385', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000060c]:KSUBW t0, s10, s11
	-[0x80000610]:sd t0, 224(t2)
Current Store : [0x80000614] : sd s10, 232(t2) -- Store: [0x800032f8]:0xFFFFBFFF10000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x3', 'rs2_w1_val == -4194305', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000640]:KSUBW gp, t3, sp
	-[0x80000644]:sd gp, 240(t2)
Current Store : [0x80000648] : sd t3, 248(t2) -- Store: [0x80003308]:0xDFFFFFFF00100000




Last Coverpoint : ['rs1 : x16', 'rs2 : x10', 'rd : x8', 'rs2_w1_val == -2097153', 'rs2_w0_val == 128', 'rs1_w1_val == -65537', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000066c]:KSUBW fp, a6, a0
	-[0x80000670]:sd fp, 256(t2)
Current Store : [0x80000674] : sd a6, 264(t2) -- Store: [0x80003318]:0xFFFEFFFF00000020




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x7', 'rs2_w1_val == -1048577', 'rs2_w0_val == 16', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800006a8]:KSUBW t2, tp, t4
	-[0x800006ac]:sd t2, 0(gp)
Current Store : [0x800006b0] : sd tp, 8(gp) -- Store: [0x80003328]:0x00010000FFFFBFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x0', 'rd : x12', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 2', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800006d0]:KSUBW a2, a4, zero
	-[0x800006d4]:sd a2, 16(gp)
Current Store : [0x800006d8] : sd a4, 24(gp) -- Store: [0x80003338]:0x0000000240000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x8', 'rd : x0', 'rs2_w1_val == -262145', 'rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x800006f0]:KSUBW zero, s2, fp
	-[0x800006f4]:sd zero, 32(gp)
Current Store : [0x800006f8] : sd s2, 40(gp) -- Store: [0x80003348]:0xFFFFFFFA20000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x18', 'rs2_w1_val == -131073', 'rs2_w0_val == 8192', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000720]:KSUBW s2, sp, s3
	-[0x80000724]:sd s2, 48(gp)
Current Store : [0x80000728] : sd sp, 56(gp) -- Store: [0x80003358]:0x0800000000100000




Last Coverpoint : ['rs1 : x11', 'rs2 : x6', 'rd : x27', 'rs2_w1_val == -65537', 'rs2_w0_val == 256', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000748]:KSUBW s11, a1, t1
	-[0x8000074c]:sd s11, 64(gp)
Current Store : [0x80000750] : sd a1, 72(gp) -- Store: [0x80003368]:0x00000000FFFFFFF9




Last Coverpoint : ['rs1 : x8', 'rs2 : x18', 'rd : x15', 'rs2_w1_val == -32769', 'rs2_w0_val == -8193', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000778]:KSUBW a5, fp, s2
	-[0x8000077c]:sd a5, 80(gp)
Current Store : [0x80000780] : sd fp, 88(gp) -- Store: [0x80003378]:0x00010000FFFFFFFD




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x19', 'rs2_w1_val == -16385', 'rs2_w0_val == 32', 'rs1_w1_val == 2048', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800007a0]:KSUBW s3, t2, t3
	-[0x800007a4]:sd s3, 96(gp)
Current Store : [0x800007a8] : sd t2, 104(gp) -- Store: [0x80003388]:0x0000080000000010




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x11', 'rs2_w1_val == -8193', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800007cc]:KSUBW a1, zero, a5
	-[0x800007d0]:sd a1, 112(gp)
Current Store : [0x800007d4] : sd zero, 120(gp) -- Store: [0x80003398]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x17', 'rs2_w1_val == -4097', 'rs2_w0_val == -16777217', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800007f8]:KSUBW a7, t5, ra
	-[0x800007fc]:sd a7, 128(gp)
Current Store : [0x80000800] : sd t5, 136(gp) -- Store: [0x800033a8]:0x80000000FFFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x20', 'rs2_w1_val == -2049', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000828]:KSUBW s4, t0, a1
	-[0x8000082c]:sd s4, 144(gp)
Current Store : [0x80000830] : sd t0, 152(gp) -- Store: [0x800033b8]:0xFFFBFFFF00004000




Last Coverpoint : ['rs1 : x24', 'rs2 : x20', 'rd : x21', 'rs2_w1_val == -1025', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000850]:KSUBW s5, s8, s4
	-[0x80000854]:sd s5, 160(gp)
Current Store : [0x80000858] : sd s8, 168(gp) -- Store: [0x800033c8]:0x00000008FFFFFFF8




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x6', 'rs2_w1_val == -513', 'rs2_w0_val == 512', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000087c]:KSUBW t1, s1, s9
	-[0x80000880]:sd t1, 176(gp)
Current Store : [0x80000884] : sd s1, 184(gp) -- Store: [0x800033d8]:0xAAAAAAAA00040000




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x29', 'rs2_w1_val == -257', 'rs2_w0_val == 2048', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800008a4]:KSUBW t4, s9, a2
	-[0x800008a8]:sd t4, 192(gp)
Current Store : [0x800008ac] : sd s9, 200(gp) -- Store: [0x800033e8]:0x0040000040000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x10', 'rs2_w1_val == -129', 'rs2_w0_val == -1', 'rs1_w1_val == 256', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800008c8]:KSUBW a0, s6, s8
	-[0x800008cc]:sd a0, 208(gp)
Current Store : [0x800008d0] : sd s6, 216(gp) -- Store: [0x800033f8]:0x00000100FFFFFF7F




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x25', 'rs2_w1_val == -65', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800008f8]:KSUBW s9, a0, t2
	-[0x800008fc]:sd s9, 224(gp)
Current Store : [0x80000900] : sd a0, 232(gp) -- Store: [0x80003408]:0x80000000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == -33', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000091c]:KSUBW t6, t5, t4
	-[0x80000920]:sd t6, 240(gp)
Current Store : [0x80000924] : sd t5, 248(gp) -- Store: [0x80003418]:0xFFFFFFFCBFFFFFFF




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == -1025', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000940]:KSUBW t6, t5, t4
	-[0x80000944]:sd t6, 256(gp)
Current Store : [0x80000948] : sd t5, 264(gp) -- Store: [0x80003428]:0x0080000000000008




Last Coverpoint : ['rs2_w1_val == -5', 'rs1_w1_val == 524288', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000964]:KSUBW t6, t5, t4
	-[0x80000968]:sd t6, 272(gp)
Current Store : [0x8000096c] : sd t5, 280(gp) -- Store: [0x80003438]:0x0008000000800000




Last Coverpoint : ['rs2_w1_val == -2', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000988]:KSUBW t6, t5, t4
	-[0x8000098c]:sd t6, 288(gp)
Current Store : [0x80000990] : sd t5, 296(gp) -- Store: [0x80003448]:0x0000000400200000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -65537', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800009bc]:KSUBW t6, t5, t4
	-[0x800009c0]:sd t6, 304(gp)
Current Store : [0x800009c4] : sd t5, 312(gp) -- Store: [0x80003458]:0x0100000000004000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 16384', 'rs1_w1_val == 16384', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800009f0]:KSUBW t6, t5, t4
	-[0x800009f4]:sd t6, 320(gp)
Current Store : [0x800009f8] : sd t5, 328(gp) -- Store: [0x80003468]:0x0000400055555555




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a18]:KSUBW t6, t5, t4
	-[0x80000a1c]:sd t6, 336(gp)
Current Store : [0x80000a20] : sd t5, 344(gp) -- Store: [0x80003478]:0xC000000080000000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == -268435457', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000a44]:KSUBW t6, t5, t4
	-[0x80000a48]:sd t6, 352(gp)
Current Store : [0x80000a4c] : sd t5, 360(gp) -- Store: [0x80003488]:0xEFFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -65', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000a7c]:KSUBW t6, t5, t4
	-[0x80000a80]:sd t6, 368(gp)
Current Store : [0x80000a84] : sd t5, 376(gp) -- Store: [0x80003498]:0xFFFFFFBFAAAAAAAA




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000aac]:KSUBW t6, t5, t4
	-[0x80000ab0]:sd t6, 384(gp)
Current Store : [0x80000ab4] : sd t5, 392(gp) -- Store: [0x800034a8]:0x0004000000080000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000ad8]:KSUBW t6, t5, t4
	-[0x80000adc]:sd t6, 400(gp)
Current Store : [0x80000ae0] : sd t5, 408(gp) -- Store: [0x800034b8]:0xFFFF7FFFFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000b04]:KSUBW t6, t5, t4
	-[0x80000b08]:sd t6, 416(gp)
Current Store : [0x80000b0c] : sd t5, 424(gp) -- Store: [0x800034c8]:0xFFFEFFFF00000003




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000b30]:KSUBW t6, t5, t4
	-[0x80000b34]:sd t6, 432(gp)
Current Store : [0x80000b38] : sd t5, 440(gp) -- Store: [0x800034d8]:0xFFFFFFF6FFFFEFFF




Last Coverpoint : ['rs2_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b60]:KSUBW t6, t5, t4
	-[0x80000b64]:sd t6, 448(gp)
Current Store : [0x80000b68] : sd t5, 456(gp) -- Store: [0x800034e8]:0x00000006FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 64', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000b8c]:KSUBW t6, t5, t4
	-[0x80000b90]:sd t6, 464(gp)
Current Store : [0x80000b94] : sd t5, 472(gp) -- Store: [0x800034f8]:0x3FFFFFFFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000bb4]:KSUBW t6, t5, t4
	-[0x80000bb8]:sd t6, 480(gp)
Current Store : [0x80000bbc] : sd t5, 488(gp) -- Store: [0x80003508]:0xFFFF7FFF40000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000bdc]:KSUBW t6, t5, t4
	-[0x80000be0]:sd t6, 496(gp)
Current Store : [0x80000be4] : sd t5, 504(gp) -- Store: [0x80003518]:0x0000100000004000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c04]:KSUBW t6, t5, t4
	-[0x80000c08]:sd t6, 512(gp)
Current Store : [0x80000c0c] : sd t5, 520(gp) -- Store: [0x80003528]:0x0800000000002000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 262144', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000c28]:KSUBW t6, t5, t4
	-[0x80000c2c]:sd t6, 528(gp)
Current Store : [0x80000c30] : sd t5, 536(gp) -- Store: [0x80003538]:0xFFFFFFF700008000




Last Coverpoint : ['rs2_w1_val == 32768']
Last Code Sequence : 
	-[0x80000c4c]:KSUBW t6, t5, t4
	-[0x80000c50]:sd t6, 544(gp)
Current Store : [0x80000c54] : sd t5, 552(gp) -- Store: [0x80003548]:0x0000000880000000




Last Coverpoint : ['rs2_w1_val == -524289', 'rs1_w1_val == -8388609', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c74]:KSUBW t6, t5, t4
	-[0x80000c78]:sd t6, 560(gp)
Current Store : [0x80000c7c] : sd t5, 568(gp) -- Store: [0x80003558]:0xFF7FFFFF02000000




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w1_val == -513', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c98]:KSUBW t6, t5, t4
	-[0x80000c9c]:sd t6, 576(gp)
Current Store : [0x80000ca0] : sd t5, 584(gp) -- Store: [0x80003568]:0xFFFFFDFF01000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000cbc]:KSUBW t6, t5, t4
	-[0x80000cc0]:sd t6, 592(gp)
Current Store : [0x80000cc4] : sd t5, 600(gp) -- Store: [0x80003578]:0xFFFFFFF800400000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cdc]:KSUBW t6, t5, t4
	-[0x80000ce0]:sd t6, 608(gp)
Current Store : [0x80000ce4] : sd t5, 616(gp) -- Store: [0x80003588]:0xFFFFFFF800020000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000d08]:KSUBW t6, t5, t4
	-[0x80000d0c]:sd t6, 624(gp)
Current Store : [0x80000d10] : sd t5, 632(gp) -- Store: [0x80003598]:0xAAAAAAAA00010000




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d34]:KSUBW t6, t5, t4
	-[0x80000d38]:sd t6, 640(gp)
Current Store : [0x80000d3c] : sd t5, 648(gp) -- Store: [0x800035a8]:0xFFFF7FFF00001000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 8388608', 'rs1_w1_val == 16', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d5c]:KSUBW t6, t5, t4
	-[0x80000d60]:sd t6, 656(gp)
Current Store : [0x80000d64] : sd t5, 664(gp) -- Store: [0x800035b8]:0x0000001000000800




Last Coverpoint : ['rs2_w0_val == -16385', 'rs1_w1_val == 32768', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d88]:KSUBW t6, t5, t4
	-[0x80000d8c]:sd t6, 672(gp)
Current Store : [0x80000d90] : sd t5, 680(gp) -- Store: [0x800035c8]:0x0000800000000400




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000dac]:KSUBW t6, t5, t4
	-[0x80000db0]:sd t6, 688(gp)
Current Store : [0x80000db4] : sd t5, 696(gp) -- Store: [0x800035d8]:0x0000800000000200




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w1_val == 128', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000dd0]:KSUBW t6, t5, t4
	-[0x80000dd4]:sd t6, 704(gp)
Current Store : [0x80000dd8] : sd t5, 712(gp) -- Store: [0x800035e8]:0x0000008000000100




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000df8]:KSUBW t6, t5, t4
	-[0x80000dfc]:sd t6, 720(gp)
Current Store : [0x80000e00] : sd t5, 728(gp) -- Store: [0x800035f8]:0xFDFFFFFF00000080




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e1c]:KSUBW t6, t5, t4
	-[0x80000e20]:sd t6, 736(gp)
Current Store : [0x80000e24] : sd t5, 744(gp) -- Store: [0x80003608]:0x0000000800000040




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e40]:KSUBW t6, t5, t4
	-[0x80000e44]:sd t6, 752(gp)
Current Store : [0x80000e48] : sd t5, 760(gp) -- Store: [0x80003618]:0x0000400000000002




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e64]:KSUBW t6, t5, t4
	-[0x80000e68]:sd t6, 768(gp)
Current Store : [0x80000e6c] : sd t5, 776(gp) -- Store: [0x80003628]:0xFFFFFFFD00000001




Last Coverpoint : ['rs2_w0_val == -1073741825', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000e88]:KSUBW t6, t5, t4
	-[0x80000e8c]:sd t6, 784(gp)
Current Store : [0x80000e90] : sd t5, 792(gp) -- Store: [0x80003638]:0x0000002000000000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80000eac]:KSUBW t6, t5, t4
	-[0x80000eb0]:sd t6, 800(gp)
Current Store : [0x80000eb4] : sd t5, 808(gp) -- Store: [0x80003648]:0xFFFFFFDF00000004




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000ed8]:KSUBW t6, t5, t4
	-[0x80000edc]:sd t6, 816(gp)
Current Store : [0x80000ee0] : sd t5, 824(gp) -- Store: [0x80003658]:0xC0000000FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000f08]:KSUBW t6, t5, t4
	-[0x80000f0c]:sd t6, 832(gp)
Current Store : [0x80000f10] : sd t5, 840(gp) -- Store: [0x80003668]:0xBFFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000f30]:KSUBW t6, t5, t4
	-[0x80000f34]:sd t6, 848(gp)
Current Store : [0x80000f38] : sd t5, 856(gp) -- Store: [0x80003678]:0x0000008000400000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000f58]:KSUBW t6, t5, t4
	-[0x80000f5c]:sd t6, 864(gp)
Current Store : [0x80000f60] : sd t5, 872(gp) -- Store: [0x80003688]:0x0400000000020000




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 268435456', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000f80]:KSUBW t6, t5, t4
	-[0x80000f84]:sd t6, 880(gp)
Current Store : [0x80000f88] : sd t5, 888(gp) -- Store: [0x80003698]:0x001000003FFFFFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000fa8]:KSUBW t6, t5, t4
	-[0x80000fac]:sd t6, 896(gp)
Current Store : [0x80000fb0] : sd t5, 904(gp) -- Store: [0x800036a8]:0x00000080FFF7FFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000fd0]:KSUBW t6, t5, t4
	-[0x80000fd4]:sd t6, 912(gp)
Current Store : [0x80000fd8] : sd t5, 920(gp) -- Store: [0x800036b8]:0x000000087FFFFFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000ff8]:KSUBW t6, t5, t4
	-[0x80000ffc]:sd t6, 928(gp)
Current Store : [0x80001000] : sd t5, 936(gp) -- Store: [0x800036c8]:0xFFFFEFFFEFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001020]:KSUBW t6, t5, t4
	-[0x80001024]:sd t6, 944(gp)
Current Store : [0x80001028] : sd t5, 952(gp) -- Store: [0x800036d8]:0x08000000FFFFFFFB




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001044]:KSUBW t6, t5, t4
	-[0x80001048]:sd t6, 960(gp)
Current Store : [0x8000104c] : sd t5, 968(gp) -- Store: [0x800036e8]:0x00000001EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80001068]:KSUBW t6, t5, t4
	-[0x8000106c]:sd t6, 976(gp)
Current Store : [0x80001070] : sd t5, 984(gp) -- Store: [0x800036f8]:0xEFFFFFFFFFFFFFFC




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001088]:KSUBW t6, t5, t4
	-[0x8000108c]:sd t6, 992(gp)
Current Store : [0x80001090] : sd t5, 1000(gp) -- Store: [0x80003708]:0x0000000400000009




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 64', 'rs1_w1_val == -33554433', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800010ac]:KSUBW t6, t5, t4
	-[0x800010b0]:sd t6, 1008(gp)
Current Store : [0x800010b4] : sd t5, 1016(gp) -- Store: [0x80003718]:0xFDFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 1431655765', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800010dc]:KSUBW t6, t5, t4
	-[0x800010e0]:sd t6, 1024(gp)
Current Store : [0x800010e4] : sd t5, 1032(gp) -- Store: [0x80003728]:0xFFF7FFFF00400000




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000110c]:KSUBW t6, t5, t4
	-[0x80001110]:sd t6, 1040(gp)
Current Store : [0x80001114] : sd t5, 1048(gp) -- Store: [0x80003738]:0xFFF7FFFFFFFBFFFF




Last Coverpoint : ['rs2_w0_val == -67108865', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001140]:KSUBW t6, t5, t4
	-[0x80001144]:sd t6, 1056(gp)
Current Store : [0x80001148] : sd t5, 1064(gp) -- Store: [0x80003748]:0x00800000FFFDFFFF




Last Coverpoint : ['rs2_w0_val == -33554433', 'rs1_w1_val == 131072', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001170]:KSUBW t6, t5, t4
	-[0x80001174]:sd t6, 1072(gp)
Current Store : [0x80001178] : sd t5, 1080(gp) -- Store: [0x80003758]:0x00020000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000119c]:KSUBW t6, t5, t4
	-[0x800011a0]:sd t6, 1088(gp)
Current Store : [0x800011a4] : sd t5, 1096(gp) -- Store: [0x80003768]:0x00001000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800011d0]:KSUBW t6, t5, t4
	-[0x800011d4]:sd t6, 1104(gp)
Current Store : [0x800011d8] : sd t5, 1112(gp) -- Store: [0x80003778]:0x55555555F7FFFFFF




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800011fc]:KSUBW t6, t5, t4
	-[0x80001200]:sd t6, 1120(gp)
Current Store : [0x80001204] : sd t5, 1128(gp) -- Store: [0x80003788]:0x00000020FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80001224]:KSUBW t6, t5, t4
	-[0x80001228]:sd t6, 1136(gp)
Current Store : [0x8000122c] : sd t5, 1144(gp) -- Store: [0x80003798]:0x00000020FFFFEFFF




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == -16385', 'rs2_w0_val == 0', 'rs1_w1_val == 256', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001248]:KSUBW t6, t5, t4
	-[0x8000124c]:sd t6, 1152(gp)
Current Store : [0x80001250] : sd t5, 1160(gp) -- Store: [0x800037a8]:0x00000100BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -131073', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001278]:KSUBW t6, t5, t4
	-[0x8000127c]:sd t6, 1168(gp)
Current Store : [0x80001280] : sd t5, 1176(gp) -- Store: [0x800037b8]:0x7FFFFFFFFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x800012a8]:KSUBW t6, t5, t4
	-[0x800012ac]:sd t6, 1184(gp)
Current Store : [0x800012b0] : sd t5, 1192(gp) -- Store: [0x800037c8]:0xF7FFFFFF00000005




Last Coverpoint : ['rs2_w0_val == -524289', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800012d0]:KSUBW t6, t5, t4
	-[0x800012d4]:sd t6, 1200(gp)
Current Store : [0x800012d8] : sd t5, 1208(gp) -- Store: [0x800037d8]:0xFEFFFFFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800012fc]:KSUBW t6, t5, t4
	-[0x80001300]:sd t6, 1216(gp)
Current Store : [0x80001304] : sd t5, 1224(gp) -- Store: [0x800037e8]:0xFFBFFFFFFFFFEFFF




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x8000133c]:KSUBW t6, t5, t4
	-[0x80001340]:sd t6, 1232(gp)
Current Store : [0x80001344] : sd t5, 1240(gp) -- Store: [0x800037f8]:0xFFDFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001364]:KSUBW t6, t5, t4
	-[0x80001368]:sd t6, 1248(gp)
Current Store : [0x8000136c] : sd t5, 1256(gp) -- Store: [0x80003808]:0xFFEFFFFFBFFFFFFF




Last Coverpoint : ['rs2_w0_val == -257', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001390]:KSUBW t6, t5, t4
	-[0x80001394]:sd t6, 1264(gp)
Current Store : [0x80001398] : sd t5, 1272(gp) -- Store: [0x80003818]:0xFFFDFFFF00040000




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800013bc]:KSUBW t6, t5, t4
	-[0x800013c0]:sd t6, 1280(gp)
Current Store : [0x800013c4] : sd t5, 1288(gp) -- Store: [0x80003828]:0xFFFFDFFF00000020




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800013e0]:KSUBW t6, t5, t4
	-[0x800013e4]:sd t6, 1296(gp)
Current Store : [0x800013e8] : sd t5, 1304(gp) -- Store: [0x80003838]:0xFFFFF7FF20000000




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001404]:KSUBW t6, t5, t4
	-[0x80001408]:sd t6, 1312(gp)
Current Store : [0x8000140c] : sd t5, 1320(gp) -- Store: [0x80003848]:0xFFFFFBFF00040000




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80001430]:KSUBW t6, t5, t4
	-[0x80001434]:sd t6, 1328(gp)
Current Store : [0x80001438] : sd t5, 1336(gp) -- Store: [0x80003858]:0xFFFFFEFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80001458]:KSUBW t6, t5, t4
	-[0x8000145c]:sd t6, 1344(gp)
Current Store : [0x80001460] : sd t5, 1352(gp) -- Store: [0x80003868]:0xFFFFFF7FFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -17']
Last Code Sequence : 
	-[0x8000147c]:KSUBW t6, t5, t4
	-[0x80001480]:sd t6, 1360(gp)
Current Store : [0x80001484] : sd t5, 1368(gp) -- Store: [0x80003878]:0xFFFFFFEF00000007




Last Coverpoint : ['rs2_w0_val == -129', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800014a0]:KSUBW t6, t5, t4
	-[0x800014a4]:sd t6, 1376(gp)
Current Store : [0x800014a8] : sd t5, 1384(gp) -- Store: [0x80003888]:0xFFFFFFFB20000000




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x800014c4]:KSUBW t6, t5, t4
	-[0x800014c8]:sd t6, 1392(gp)
Current Store : [0x800014cc] : sd t5, 1400(gp) -- Store: [0x80003898]:0xFFFFFFFE00000002




Last Coverpoint : ['rs1_w1_val == 1073741824', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800014f4]:KSUBW t6, t5, t4
	-[0x800014f8]:sd t6, 1408(gp)
Current Store : [0x800014fc] : sd t5, 1416(gp) -- Store: [0x800038a8]:0x40000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 536870912', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001520]:KSUBW t6, t5, t4
	-[0x80001524]:sd t6, 1424(gp)
Current Store : [0x80001528] : sd t5, 1432(gp) -- Store: [0x800038b8]:0x20000000FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001548]:KSUBW t6, t5, t4
	-[0x8000154c]:sd t6, 1440(gp)
Current Store : [0x80001550] : sd t5, 1448(gp) -- Store: [0x800038c8]:0x0020000000001000




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001570]:KSUBW t6, t5, t4
	-[0x80001574]:sd t6, 1456(gp)
Current Store : [0x80001578] : sd t5, 1464(gp) -- Store: [0x800038d8]:0x0000200004000000




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001594]:KSUBW t6, t5, t4
	-[0x80001598]:sd t6, 1472(gp)
Current Store : [0x8000159c] : sd t5, 1480(gp) -- Store: [0x800038e8]:0x0000040000000003




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800015b8]:KSUBW t6, t5, t4
	-[0x800015bc]:sd t6, 1488(gp)
Current Store : [0x800015c0] : sd t5, 1496(gp) -- Store: [0x800038f8]:0x00000200FFFFFFFB




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -17', 'rs2_w0_val == 536870912', 'rs1_w1_val == 64', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800015d8]:KSUBW t6, t5, t4
	-[0x800015dc]:sd t6, 1504(gp)
Current Store : [0x800015e0] : sd t5, 1512(gp) -- Store: [0x80003908]:0x0000004000000100




Last Coverpoint : ['rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001604]:KSUBW t6, t5, t4
	-[0x80001608]:sd t6, 1520(gp)
Current Store : [0x8000160c] : sd t5, 1528(gp) -- Store: [0x80003918]:0xFFDFFFFF00000200




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001634]:KSUBW t6, t5, t4
	-[0x80001638]:sd t6, 1536(gp)
Current Store : [0x8000163c] : sd t5, 1544(gp) -- Store: [0x80003928]:0x40000000DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80001664]:KSUBW t6, t5, t4
	-[0x80001668]:sd t6, 1552(gp)
Current Store : [0x8000166c] : sd t5, 1560(gp) -- Store: [0x80003938]:0xFFFFF7FFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001690]:KSUBW t6, t5, t4
	-[0x80001694]:sd t6, 1568(gp)
Current Store : [0x80001698] : sd t5, 1576(gp) -- Store: [0x80003948]:0x01000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x800016c4]:KSUBW t6, t5, t4
	-[0x800016c8]:sd t6, 1584(gp)
Current Store : [0x800016cc] : sd t5, 1592(gp) -- Store: [0x80003958]:0xFFFBFFFF00004000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800016f0]:KSUBW t6, t5, t4
	-[0x800016f4]:sd t6, 1600(gp)
Current Store : [0x800016f8] : sd t5, 1608(gp) -- Store: [0x80003968]:0xFFFFFFF8FF7FFFFF




Last Coverpoint : ['rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x8000171c]:KSUBW t6, t5, t4
	-[0x80001720]:sd t6, 1616(gp)
Current Store : [0x80001724] : sd t5, 1624(gp) -- Store: [0x80003978]:0x0800000000400000




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80001744]:KSUBW t6, t5, t4
	-[0x80001748]:sd t6, 1632(gp)
Current Store : [0x8000174c] : sd t5, 1640(gp) -- Store: [0x80003988]:0xFFFDFFFF00000002




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001774]:KSUBW t6, t5, t4
	-[0x80001778]:sd t6, 1648(gp)
Current Store : [0x8000177c] : sd t5, 1656(gp) -- Store: [0x80003998]:0x10000000DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000179c]:KSUBW t6, t5, t4
	-[0x800017a0]:sd t6, 1664(gp)
Current Store : [0x800017a4] : sd t5, 1672(gp) -- Store: [0x800039a8]:0x00000009FFFFDFFF




Last Coverpoint : ['rs2_w0_val == -17']
Last Code Sequence : 
	-[0x800017cc]:KSUBW t6, t5, t4
	-[0x800017d0]:sd t6, 1680(gp)
Current Store : [0x800017d4] : sd t5, 1688(gp) -- Store: [0x800039b8]:0xEFFFFFFF00002000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800017f4]:KSUBW t6, t5, t4
	-[0x800017f8]:sd t6, 1696(gp)
Current Store : [0x800017fc] : sd t5, 1704(gp) -- Store: [0x800039c8]:0x00000005FFFFFBFF




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x80001818]:KSUBW t6, t5, t4
	-[0x8000181c]:sd t6, 1712(gp)
Current Store : [0x80001820] : sd t5, 1720(gp) -- Store: [0x800039d8]:0x0000080000000009




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001840]:KSUBW t6, t5, t4
	-[0x80001844]:sd t6, 1728(gp)
Current Store : [0x80001848] : sd t5, 1736(gp) -- Store: [0x800039e8]:0x00800000FFFFFDFF




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x80001864]:KSUBW t6, t5, t4
	-[0x80001868]:sd t6, 1744(gp)
Current Store : [0x8000186c] : sd t5, 1752(gp) -- Store: [0x800039f8]:0x0080000000000006




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000188c]:KSUBW t6, t5, t4
	-[0x80001890]:sd t6, 1760(gp)
Current Store : [0x80001894] : sd t5, 1768(gp) -- Store: [0x80003a08]:0x00001000FFFFFEFF




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800018b0]:KSUBW t6, t5, t4
	-[0x800018b4]:sd t6, 1776(gp)
Current Store : [0x800018b8] : sd t5, 1784(gp) -- Store: [0x80003a18]:0xFFF7FFFFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800018d4]:KSUBW t6, t5, t4
	-[0x800018d8]:sd t6, 1792(gp)
Current Store : [0x800018dc] : sd t5, 1800(gp) -- Store: [0x80003a28]:0xFFFFFDFFFFFFFFEF




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800018f8]:KSUBW t6, t5, t4
	-[0x800018fc]:sd t6, 1808(gp)
Current Store : [0x80001900] : sd t5, 1816(gp) -- Store: [0x80003a38]:0xDFFFFFFFFFFFFFF7




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001924]:KSUBW t6, t5, t4
	-[0x80001928]:sd t6, 1824(gp)
Current Store : [0x8000192c] : sd t5, 1832(gp) -- Store: [0x80003a48]:0xFF7FFFFFFFDFFFFF




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001948]:KSUBW t6, t5, t4
	-[0x8000194c]:sd t6, 1840(gp)
Current Store : [0x80001950] : sd t5, 1848(gp) -- Store: [0x80003a58]:0xFFFBFFFFFFFFFEFF




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001970]:KSUBW t6, t5, t4
	-[0x80001974]:sd t6, 1856(gp)
Current Store : [0x80001978] : sd t5, 1864(gp) -- Store: [0x80003a68]:0x00000003FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001998]:KSUBW t6, t5, t4
	-[0x8000199c]:sd t6, 1872(gp)
Current Store : [0x800019a0] : sd t5, 1880(gp) -- Store: [0x80003a78]:0x0200000000000100




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800019c0]:KSUBW t6, t5, t4
	-[0x800019c4]:sd t6, 1888(gp)
Current Store : [0x800019c8] : sd t5, 1896(gp) -- Store: [0x80003a88]:0x1000000008000000




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 262144', 'rs2_w0_val == 536870912', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800019e8]:KSUBW t6, t5, t4
	-[0x800019ec]:sd t6, 1904(gp)
Current Store : [0x800019f0] : sd t5, 1912(gp) -- Store: [0x80003a98]:0x00040000FFFFFFF8




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -524289', 'rs2_w0_val == 1048576', 'rs1_w1_val == 2', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001a10]:KSUBW t6, t5, t4
	-[0x80001a14]:sd t6, 1920(gp)
Current Store : [0x80001a18] : sd t5, 1928(gp) -- Store: [0x80003aa8]:0x0000000240000000





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

|s.no|            signature             |                                                                                                                                                                   coverpoints                                                                                                                                                                   |                                code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ksubw<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 64<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 64<br> - rs1_w0_val == -1048577<br> |[0x800003c4]:KSUBW t6, s5, s5<br> [0x800003c8]:sd t6, 0(t2)<br>      |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 262144<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 536870912<br>                                                                                                                  |[0x800003ec]:KSUBW a3, a3, a3<br> [0x800003f0]:sd a3, 16(t2)<br>     |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x5<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs2_w1_val == -17<br> - rs2_w0_val == 8<br> - rs1_w1_val == -3<br> - rs1_w0_val == 8<br>                                                                                     |[0x80000410]:KSUBW sp, a2, t0<br> [0x80000414]:sd sp, 32(t2)<br>     |
|   4|[0x80003240]<br>0x0000000000808001|- rs1 : x23<br> - rs2 : x16<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -3<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == 8<br> - rs1_w0_val == 32768<br>                                                         |[0x80000434]:KSUBW s7, s7, a6<br> [0x80000438]:sd s7, 48(t2)<br>     |
|   5|[0x80003250]<br>0xFFFFFFFFFFF81000|- rs1 : x6<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -4097<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -524289<br>                                                                                                                                                             |[0x80000468]:KSUBW s10, t1, s10<br> [0x8000046c]:sd s10, 64(t2)<br>  |
|   6|[0x80003260]<br>0xFFFFFFFFFF100000|- rs1 : x20<br> - rs2 : x17<br> - rd : x9<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                            |[0x80000494]:KSUBW s1, s4, a7<br> [0x80000498]:sd s1, 80(t2)<br>     |
|   7|[0x80003270]<br>0xFFFFFFFFFFC00009|- rs1 : x19<br> - rs2 : x4<br> - rd : x14<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                     |[0x800004bc]:KSUBW a4, s3, tp<br> [0x800004c0]:sd a4, 96(t2)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x3<br> - rs2 : x22<br> - rd : x1<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                         |[0x800004e4]:KSUBW ra, gp, s6<br> [0x800004e8]:sd ra, 112(t2)<br>    |
|   9|[0x80003290]<br>0xFFFFFFFF80000000|- rs1 : x1<br> - rs2 : x9<br> - rd : x30<br> - rs1_w0_val == -2147483648<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 2<br>                                                                                                                                                                        |[0x80000508]:KSUBW t5, ra, s1<br> [0x8000050c]:sd t5, 128(t2)<br>    |
|  10|[0x800032a0]<br>0xFFFFFFFFEFFFFFF8|- rs1 : x15<br> - rs2 : x23<br> - rd : x22<br> - rs2_w1_val == -268435457<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                     |[0x80000538]:KSUBW s6, a5, s7<br> [0x8000053c]:sd s6, 144(t2)<br>    |
|  11|[0x800032b0]<br>0xFFFFFFFFFFF7BFFF|- rs1 : x31<br> - rs2 : x30<br> - rd : x16<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == 524288<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                |[0x8000056c]:KSUBW a6, t6, t5<br> [0x80000570]:sd a6, 160(t2)<br>    |
|  12|[0x800032c0]<br>0x0000000000000004|- rs1 : x29<br> - rs2 : x31<br> - rd : x24<br> - rs2_w1_val == -67108865<br>                                                                                                                                                                                                                                                                     |[0x80000594]:KSUBW s8, t4, t6<br> [0x80000598]:sd s8, 176(t2)<br>    |
|  13|[0x800032d0]<br>0x0000000004040001|- rs1 : x17<br> - rs2 : x3<br> - rd : x4<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -262145<br> - rs1_w1_val == -1<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                       |[0x800005bc]:KSUBW tp, a7, gp<br> [0x800005c0]:sd tp, 192(t2)<br>    |
|  14|[0x800032e0]<br>0xFFFFFFFFC0000004|- rs1 : x27<br> - rs2 : x14<br> - rd : x28<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                                          |[0x800005e4]:KSUBW t3, s11, a4<br> [0x800005e8]:sd t3, 208(t2)<br>   |
|  15|[0x800032f0]<br>0x000000000FFFFC00|- rs1 : x26<br> - rs2 : x27<br> - rd : x5<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 1024<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                     |[0x8000060c]:KSUBW t0, s10, s11<br> [0x80000610]:sd t0, 224(t2)<br>  |
|  16|[0x80003300]<br>0x0000000000900001|- rs1 : x28<br> - rs2 : x2<br> - rd : x3<br> - rs2_w1_val == -4194305<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                         |[0x80000640]:KSUBW gp, t3, sp<br> [0x80000644]:sd gp, 240(t2)<br>    |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFFFA0|- rs1 : x16<br> - rs2 : x10<br> - rd : x8<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 128<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 32<br>                                                                                                                                                                                             |[0x8000066c]:KSUBW fp, a6, a0<br> [0x80000670]:sd fp, 256(t2)<br>    |
|  18|[0x80003320]<br>0xFFFFFFFFFFFFBFEF|- rs1 : x4<br> - rs2 : x29<br> - rd : x7<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 16<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                       |[0x800006a8]:KSUBW t2, tp, t4<br> [0x800006ac]:sd t2, 0(gp)<br>      |
|  19|[0x80003330]<br>0x0000000040000000|- rs1 : x14<br> - rs2 : x0<br> - rd : x12<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 2<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                   |[0x800006d0]:KSUBW a2, a4, zero<br> [0x800006d4]:sd a2, 16(gp)<br>   |
|  20|[0x80003340]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x8<br> - rd : x0<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                             |[0x800006f0]:KSUBW zero, s2, fp<br> [0x800006f4]:sd zero, 32(gp)<br> |
|  21|[0x80003350]<br>0x00000000000FE000|- rs1 : x2<br> - rs2 : x19<br> - rd : x18<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                 |[0x80000720]:KSUBW s2, sp, s3<br> [0x80000724]:sd s2, 48(gp)<br>     |
|  22|[0x80003360]<br>0xFFFFFFFFFFFFFEF9|- rs1 : x11<br> - rs2 : x6<br> - rd : x27<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 256<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                                           |[0x80000748]:KSUBW s11, a1, t1<br> [0x8000074c]:sd s11, 64(gp)<br>   |
|  23|[0x80003370]<br>0x0000000000001FFE|- rs1 : x8<br> - rs2 : x18<br> - rd : x15<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -8193<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                        |[0x80000778]:KSUBW a5, fp, s2<br> [0x8000077c]:sd a5, 80(gp)<br>     |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFFFF0|- rs1 : x7<br> - rs2 : x28<br> - rd : x19<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 32<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                  |[0x800007a0]:KSUBW s3, t2, t3<br> [0x800007a4]:sd s3, 96(gp)<br>     |
|  25|[0x80003390]<br>0xFFFFFFFFFFFFFC00|- rs1 : x0<br> - rs2 : x15<br> - rd : x11<br> - rs2_w1_val == -8193<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                                    |[0x800007cc]:KSUBW a1, zero, a5<br> [0x800007d0]:sd a1, 112(gp)<br>  |
|  26|[0x800033a0]<br>0x0000000001000000|- rs1 : x30<br> - rs2 : x1<br> - rd : x17<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                     |[0x800007f8]:KSUBW a7, t5, ra<br> [0x800007fc]:sd a7, 128(gp)<br>    |
|  27|[0x800033b0]<br>0xFFFFFFFF80004001|- rs1 : x5<br> - rs2 : x11<br> - rd : x20<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                 |[0x80000828]:KSUBW s4, t0, a1<br> [0x8000082c]:sd s4, 144(gp)<br>    |
|  28|[0x800033c0]<br>0x000000000FFFFFF9|- rs1 : x24<br> - rs2 : x20<br> - rd : x21<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -268435457<br>                                                                                                                                                                                                                                          |[0x80000850]:KSUBW s5, s8, s4<br> [0x80000854]:sd s5, 160(gp)<br>    |
|  29|[0x800033d0]<br>0x000000000003FE00|- rs1 : x9<br> - rs2 : x25<br> - rd : x6<br> - rs2_w1_val == -513<br> - rs2_w0_val == 512<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                         |[0x8000087c]:KSUBW t1, s1, s9<br> [0x80000880]:sd t1, 176(gp)<br>    |
|  30|[0x800033e0]<br>0x000000003FFFF800|- rs1 : x25<br> - rs2 : x12<br> - rd : x29<br> - rs2_w1_val == -257<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                     |[0x800008a4]:KSUBW t4, s9, a2<br> [0x800008a8]:sd t4, 192(gp)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFFFF80|- rs1 : x22<br> - rs2 : x24<br> - rd : x10<br> - rs2_w1_val == -129<br> - rs2_w0_val == -1<br> - rs1_w1_val == 256<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                  |[0x800008c8]:KSUBW a0, s6, s8<br> [0x800008cc]:sd a0, 208(gp)<br>    |
|  32|[0x80003400]<br>0xFFFFFFFFFFF00040|- rs1 : x10<br> - rs2 : x7<br> - rd : x25<br> - rs2_w1_val == -65<br> - rs2_w0_val == -65<br>                                                                                                                                                                                                                                                    |[0x800008f8]:KSUBW s9, a0, t2<br> [0x800008fc]:sd s9, 224(gp)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFFC0000009|- rs2_w1_val == -33<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                          |[0x8000091c]:KSUBW t6, t5, t4<br> [0x80000920]:sd t6, 240(gp)<br>    |
|  34|[0x80003420]<br>0x0000000000000409|- rs2_w1_val == -9<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                     |[0x80000940]:KSUBW t6, t5, t4<br> [0x80000944]:sd t6, 256(gp)<br>    |
|  35|[0x80003430]<br>0x0000000000800041|- rs2_w1_val == -5<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                    |[0x80000964]:KSUBW t6, t5, t4<br> [0x80000968]:sd t6, 272(gp)<br>    |
|  36|[0x80003440]<br>0x00000000001FFFF8|- rs2_w1_val == -2<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                               |[0x80000988]:KSUBW t6, t5, t4<br> [0x8000098c]:sd t6, 288(gp)<br>    |
|  37|[0x80003450]<br>0x0000000000014001|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -65537<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                          |[0x800009bc]:KSUBW t6, t5, t4<br> [0x800009c0]:sd t6, 304(gp)<br>    |
|  38|[0x80003460]<br>0x0000000055551555|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                |[0x800009f0]:KSUBW t6, t5, t4<br> [0x800009f4]:sd t6, 320(gp)<br>    |
|  39|[0x80003470]<br>0xFFFFFFFF80000000|- rs2_w1_val == 536870912<br> - rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                        |[0x80000a18]:KSUBW t6, t5, t4<br> [0x80000a1c]:sd t6, 336(gp)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFFFFFEFFF8|- rs2_w1_val == 268435456<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                          |[0x80000a44]:KSUBW t6, t5, t4<br> [0x80000a48]:sd t6, 352(gp)<br>    |
|  41|[0x80003490]<br>0x0000000000000000|- rs2_w1_val == 134217728<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -65<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                            |[0x80000a7c]:KSUBW t6, t5, t4<br> [0x80000a80]:sd t6, 368(gp)<br>    |
|  42|[0x800034a0]<br>0x000000000007F800|- rs2_w1_val == 67108864<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                          |[0x80000aac]:KSUBW t6, t5, t4<br> [0x80000ab0]:sd t6, 384(gp)<br>    |
|  43|[0x800034b0]<br>0xFFFFFFFFFFC00020|- rs2_w1_val == 33554432<br> - rs2_w0_val == -33<br>                                                                                                                                                                                                                                                                                             |[0x80000ad8]:KSUBW t6, t5, t4<br> [0x80000adc]:sd t6, 400(gp)<br>    |
|  44|[0x800034c0]<br>0xFFFFFFFF80000004|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                     |[0x80000b04]:KSUBW t6, t5, t4<br> [0x80000b08]:sd t6, 416(gp)<br>    |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFFF007|- rs2_w1_val == 8388608<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                            |[0x80000b30]:KSUBW t6, t5, t4<br> [0x80000b34]:sd t6, 432(gp)<br>    |
|  46|[0x800034e0]<br>0x0000000000000FFD|- rs2_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                      |[0x80000b60]:KSUBW t6, t5, t4<br> [0x80000b64]:sd t6, 448(gp)<br>    |
|  47|[0x800034f0]<br>0xFFFFFFFFFEFFFFBF|- rs2_w1_val == 2097152<br> - rs2_w0_val == 64<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                 |[0x80000b8c]:KSUBW t6, t5, t4<br> [0x80000b90]:sd t6, 464(gp)<br>    |
|  48|[0x80003500]<br>0x0000000040000009|- rs2_w1_val == 1048576<br> - rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                                               |[0x80000bb4]:KSUBW t6, t5, t4<br> [0x80000bb8]:sd t6, 480(gp)<br>    |
|  49|[0x80003510]<br>0x0000000001004001|- rs2_w1_val == 524288<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x80000bdc]:KSUBW t6, t5, t4<br> [0x80000be0]:sd t6, 496(gp)<br>    |
|  50|[0x80003520]<br>0xFFFFFFFFFFE02000|- rs2_w1_val == 131072<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                              |[0x80000c04]:KSUBW t6, t5, t4<br> [0x80000c08]:sd t6, 512(gp)<br>    |
|  51|[0x80003530]<br>0xFFFFFFFFFFFC8000|- rs2_w1_val == 65536<br> - rs2_w0_val == 262144<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                      |[0x80000c28]:KSUBW t6, t5, t4<br> [0x80000c2c]:sd t6, 528(gp)<br>    |
|  52|[0x80003540]<br>0xFFFFFFFF80000000|- rs2_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                        |[0x80000c4c]:KSUBW t6, t5, t4<br> [0x80000c50]:sd t6, 544(gp)<br>    |
|  53|[0x80003550]<br>0x0000000001FFFFFD|- rs2_w1_val == -524289<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                            |[0x80000c74]:KSUBW t6, t5, t4<br> [0x80000c78]:sd t6, 560(gp)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFFF9000000|- rs2_w0_val == 134217728<br> - rs1_w1_val == -513<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                              |[0x80000c98]:KSUBW t6, t5, t4<br> [0x80000c9c]:sd t6, 576(gp)<br>    |
|  55|[0x80003570]<br>0x00000000003FFF80|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                      |[0x80000cbc]:KSUBW t6, t5, t4<br> [0x80000cc0]:sd t6, 592(gp)<br>    |
|  56|[0x80003580]<br>0xFFFFFFFFF8020000|- rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                       |[0x80000cdc]:KSUBW t6, t5, t4<br> [0x80000ce0]:sd t6, 608(gp)<br>    |
|  57|[0x80003590]<br>0x000000000000FFF7|- rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                        |[0x80000d08]:KSUBW t6, t5, t4<br> [0x80000d0c]:sd t6, 624(gp)<br>    |
|  58|[0x800035a0]<br>0x0000000008001001|- rs2_w0_val == -134217729<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                          |[0x80000d34]:KSUBW t6, t5, t4<br> [0x80000d38]:sd t6, 640(gp)<br>    |
|  59|[0x800035b0]<br>0xFFFFFFFFFF800800|- rs2_w1_val == 256<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                              |[0x80000d5c]:KSUBW t6, t5, t4<br> [0x80000d60]:sd t6, 656(gp)<br>    |
|  60|[0x800035c0]<br>0x0000000000004401|- rs2_w0_val == -16385<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                    |[0x80000d88]:KSUBW t6, t5, t4<br> [0x80000d8c]:sd t6, 672(gp)<br>    |
|  61|[0x800035d0]<br>0x000000000000020A|- rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                          |[0x80000dac]:KSUBW t6, t5, t4<br> [0x80000db0]:sd t6, 688(gp)<br>    |
|  62|[0x800035e0]<br>0x00000000000000F8|- rs2_w1_val == -1<br> - rs1_w1_val == 128<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                           |[0x80000dd0]:KSUBW t6, t5, t4<br> [0x80000dd4]:sd t6, 704(gp)<br>    |
|  63|[0x800035f0]<br>0x0000000000000000|- rs1_w1_val == -33554433<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                            |[0x80000df8]:KSUBW t6, t5, t4<br> [0x80000dfc]:sd t6, 720(gp)<br>    |
|  64|[0x80003600]<br>0x0000000000000045|- rs2_w0_val == -5<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                    |[0x80000e1c]:KSUBW t6, t5, t4<br> [0x80000e20]:sd t6, 736(gp)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFFFFFFFFFE|- rs2_w0_val == 4<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                      |[0x80000e40]:KSUBW t6, t5, t4<br> [0x80000e44]:sd t6, 752(gp)<br>    |
|  66|[0x80003620]<br>0x0000000000000008|- rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                            |[0x80000e64]:KSUBW t6, t5, t4<br> [0x80000e68]:sd t6, 768(gp)<br>    |
|  67|[0x80003630]<br>0x0000000040000001|- rs2_w0_val == -1073741825<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                           |[0x80000e88]:KSUBW t6, t5, t4<br> [0x80000e8c]:sd t6, 784(gp)<br>    |
|  68|[0x80003640]<br>0xFFFFFFFFFFFFFF84|- rs2_w1_val == 16384<br> - rs1_w1_val == -33<br>                                                                                                                                                                                                                                                                                                |[0x80000eac]:KSUBW t6, t5, t4<br> [0x80000eb0]:sd t6, 800(gp)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFFFFDFFFBF|- rs2_w1_val == 8192<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                            |[0x80000ed8]:KSUBW t6, t5, t4<br> [0x80000edc]:sd t6, 816(gp)<br>    |
|  70|[0x80003660]<br>0x000000003FF80000|- rs2_w1_val == 4096<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                                                                         |[0x80000f08]:KSUBW t6, t5, t4<br> [0x80000f0c]:sd t6, 832(gp)<br>    |
|  71|[0x80003670]<br>0x0000000000600001|- rs2_w1_val == 2048<br> - rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                            |[0x80000f30]:KSUBW t6, t5, t4<br> [0x80000f34]:sd t6, 848(gp)<br>    |
|  72|[0x80003680]<br>0x0000000000020021|- rs2_w1_val == 1024<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                            |[0x80000f58]:KSUBW t6, t5, t4<br> [0x80000f5c]:sd t6, 864(gp)<br>    |
|  73|[0x80003690]<br>0x000000002FFFFFFF|- rs2_w1_val == 512<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                |[0x80000f80]:KSUBW t6, t5, t4<br> [0x80000f84]:sd t6, 880(gp)<br>    |
|  74|[0x800036a0]<br>0xFFFFFFFFFFE7FFFF|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                          |[0x80000fa8]:KSUBW t6, t5, t4<br> [0x80000fac]:sd t6, 896(gp)<br>    |
|  75|[0x800036b0]<br>0x000000007FFFFFFF|- rs2_w1_val == 32<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                            |[0x80000fd0]:KSUBW t6, t5, t4<br> [0x80000fd4]:sd t6, 912(gp)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFFEFFEFFFF|- rs2_w1_val == 16<br> - rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                 |[0x80000ff8]:KSUBW t6, t5, t4<br> [0x80000ffc]:sd t6, 928(gp)<br>    |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFFF3|- rs2_w1_val == 8<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                                     |[0x80001020]:KSUBW t6, t5, t4<br> [0x80001024]:sd t6, 944(gp)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFFFF0000040|- rs2_w1_val == 4<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                      |[0x80001044]:KSUBW t6, t5, t4<br> [0x80001048]:sd t6, 960(gp)<br>    |
|  79|[0x800036f0]<br>0x0000000000000006|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                            |[0x80001068]:KSUBW t6, t5, t4<br> [0x8000106c]:sd t6, 976(gp)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFFFFC00009|- rs2_w1_val == 1<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                |[0x80001088]:KSUBW t6, t5, t4<br> [0x8000108c]:sd t6, 992(gp)<br>    |
|  81|[0x80003720]<br>0xFFFFFFFFAAEAAAAB|- rs2_w0_val == 1431655765<br> - rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                                                       |[0x800010dc]:KSUBW t6, t5, t4<br> [0x800010e0]:sd t6, 1024(gp)<br>   |
|  82|[0x80003730]<br>0x000000001FFC0000|- rs2_w0_val == -536870913<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                       |[0x8000110c]:KSUBW t6, t5, t4<br> [0x80001110]:sd t6, 1040(gp)<br>   |
|  83|[0x80003740]<br>0x0000000003FE0000|- rs2_w0_val == -67108865<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                        |[0x80001140]:KSUBW t6, t5, t4<br> [0x80001144]:sd t6, 1056(gp)<br>   |
|  84|[0x80003750]<br>0x0000000001FF8000|- rs2_w0_val == -33554433<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                              |[0x80001170]:KSUBW t6, t5, t4<br> [0x80001174]:sd t6, 1072(gp)<br>   |
|  85|[0x80003760]<br>0xFFFFFFFFFFFDFFDF|- rs2_w0_val == 131072<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                               |[0x8000119c]:KSUBW t6, t5, t4<br> [0x800011a0]:sd t6, 1088(gp)<br>   |
|  86|[0x80003770]<br>0xFFFFFFFFF7FF7FFF|- rs2_w0_val == 32768<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                          |[0x800011d0]:KSUBW t6, t5, t4<br> [0x800011d4]:sd t6, 1104(gp)<br>   |
|  87|[0x80003780]<br>0xFFFFFFFFFFFF6FFF|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                         |[0x800011fc]:KSUBW t6, t5, t4<br> [0x80001200]:sd t6, 1120(gp)<br>   |
|  88|[0x80003790]<br>0xFFFFFFFFFFFFEFFE|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                            |[0x80001224]:KSUBW t6, t5, t4<br> [0x80001228]:sd t6, 1136(gp)<br>   |
|  89|[0x800037b0]<br>0xFFFFFFFFFFC20000|- rs2_w0_val == -131073<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                       |[0x80001278]:KSUBW t6, t5, t4<br> [0x8000127c]:sd t6, 1168(gp)<br>   |
|  90|[0x800037c0]<br>0xFFFFFFFFFFFF8005|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                                                                                   |[0x800012a8]:KSUBW t6, t5, t4<br> [0x800012ac]:sd t6, 1184(gp)<br>   |
|  91|[0x800037d0]<br>0x000000000007FFFD|- rs2_w0_val == -524289<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                                                        |[0x800012d0]:KSUBW t6, t5, t4<br> [0x800012d4]:sd t6, 1200(gp)<br>   |
|  92|[0x800037e0]<br>0xFFFFFFFFDFFFEFFF|- rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                                                     |[0x800012fc]:KSUBW t6, t5, t4<br> [0x80001300]:sd t6, 1216(gp)<br>   |
|  93|[0x800037f0]<br>0x0000000000000000|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                     |[0x8000133c]:KSUBW t6, t5, t4<br> [0x80001340]:sd t6, 1232(gp)<br>   |
|  94|[0x80003800]<br>0xFFFFFFFFBFFFDFFF|- rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                                                                     |[0x80001364]:KSUBW t6, t5, t4<br> [0x80001368]:sd t6, 1248(gp)<br>   |
|  95|[0x80003810]<br>0x0000000000040101|- rs2_w0_val == -257<br> - rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                                             |[0x80001390]:KSUBW t6, t5, t4<br> [0x80001394]:sd t6, 1264(gp)<br>   |
|  96|[0x80003820]<br>0x0000000000000017|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                        |[0x800013bc]:KSUBW t6, t5, t4<br> [0x800013c0]:sd t6, 1280(gp)<br>   |
|  97|[0x80003830]<br>0x000000001FFFFF80|- rs1_w1_val == -2049<br>                                                                                                                                                                                                                                                                                                                        |[0x800013e0]:KSUBW t6, t5, t4<br> [0x800013e4]:sd t6, 1296(gp)<br>   |
|  98|[0x80003840]<br>0x000000000003E000|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                                        |[0x80001404]:KSUBW t6, t5, t4<br> [0x80001408]:sd t6, 1312(gp)<br>   |
|  99|[0x80003850]<br>0xFFFFFFFFFFF7FFDF|- rs1_w1_val == -257<br>                                                                                                                                                                                                                                                                                                                         |[0x80001430]:KSUBW t6, t5, t4<br> [0x80001434]:sd t6, 1328(gp)<br>   |
| 100|[0x80003860]<br>0xFFFFFFFFFFB7FFFF|- rs1_w1_val == -129<br>                                                                                                                                                                                                                                                                                                                         |[0x80001458]:KSUBW t6, t5, t4<br> [0x8000145c]:sd t6, 1344(gp)<br>   |
| 101|[0x80003870]<br>0xFFFFFFFFF0000007|- rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                                                          |[0x8000147c]:KSUBW t6, t5, t4<br> [0x80001480]:sd t6, 1360(gp)<br>   |
| 102|[0x80003880]<br>0x0000000020000081|- rs2_w0_val == -129<br> - rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                                                  |[0x800014a0]:KSUBW t6, t5, t4<br> [0x800014a4]:sd t6, 1376(gp)<br>   |
| 103|[0x80003890]<br>0xFFFFFFFFFFFFFF82|- rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                           |[0x800014c4]:KSUBW t6, t5, t4<br> [0x800014c8]:sd t6, 1392(gp)<br>   |
| 104|[0x800038a0]<br>0xFFFFFFFFFFFFF803|- rs1_w1_val == 1073741824<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                         |[0x800014f4]:KSUBW t6, t5, t4<br> [0x800014f8]:sd t6, 1408(gp)<br>   |
| 105|[0x800038b0]<br>0x00000000000003C0|- rs1_w1_val == 536870912<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                            |[0x80001520]:KSUBW t6, t5, t4<br> [0x80001524]:sd t6, 1424(gp)<br>   |
| 106|[0x800038c0]<br>0x0000000010001001|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                      |[0x80001548]:KSUBW t6, t5, t4<br> [0x8000154c]:sd t6, 1440(gp)<br>   |
| 107|[0x800038d0]<br>0x0000000003FFFF80|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                         |[0x80001570]:KSUBW t6, t5, t4<br> [0x80001574]:sd t6, 1456(gp)<br>   |
| 108|[0x800038e0]<br>0x0000000040000003|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                         |[0x80001594]:KSUBW t6, t5, t4<br> [0x80001598]:sd t6, 1472(gp)<br>   |
| 109|[0x800038f0]<br>0xFFFFFFFFFFFFFFF3|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                          |[0x800015b8]:KSUBW t6, t5, t4<br> [0x800015bc]:sd t6, 1488(gp)<br>   |
| 110|[0x80003910]<br>0x0000000000400201|- rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                                     |[0x80001604]:KSUBW t6, t5, t4<br> [0x80001608]:sd t6, 1520(gp)<br>   |
| 111|[0x80003920]<br>0xFFFFFFFFE0000006|- rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                                   |[0x80001634]:KSUBW t6, t5, t4<br> [0x80001638]:sd t6, 1536(gp)<br>   |
| 112|[0x80003930]<br>0xFFFFFFFFFC100000|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                                    |[0x80001664]:KSUBW t6, t5, t4<br> [0x80001668]:sd t6, 1552(gp)<br>   |
| 113|[0x80003940]<br>0xFFFFFFFFFE000020|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                    |[0x80001690]:KSUBW t6, t5, t4<br> [0x80001694]:sd t6, 1568(gp)<br>   |
| 114|[0x80003950]<br>0x000000000000C001|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                       |[0x800016c4]:KSUBW t6, t5, t4<br> [0x800016c8]:sd t6, 1584(gp)<br>   |
| 115|[0x80003960]<br>0xFFFFFFFFFF7DFFFF|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                     |[0x800016f0]:KSUBW t6, t5, t4<br> [0x800016f4]:sd t6, 1600(gp)<br>   |
| 116|[0x80003970]<br>0x0000000000400801|- rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                                        |[0x8000171c]:KSUBW t6, t5, t4<br> [0x80001720]:sd t6, 1616(gp)<br>   |
| 117|[0x80003980]<br>0x0000000000000203|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                         |[0x80001744]:KSUBW t6, t5, t4<br> [0x80001748]:sd t6, 1632(gp)<br>   |
| 118|[0x80003990]<br>0xFFFFFFFFE0004000|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                    |[0x80001774]:KSUBW t6, t5, t4<br> [0x80001778]:sd t6, 1648(gp)<br>   |
| 119|[0x800039a0]<br>0xFFFFFFFFFFFFDFBF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                        |[0x8000179c]:KSUBW t6, t5, t4<br> [0x800017a0]:sd t6, 1664(gp)<br>   |
| 120|[0x800039b0]<br>0x0000000000002011|- rs2_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                          |[0x800017cc]:KSUBW t6, t5, t4<br> [0x800017d0]:sd t6, 1680(gp)<br>   |
| 121|[0x800039c0]<br>0xFFFFFFFFFFFFFC40|- rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                                                                                        |[0x800017f4]:KSUBW t6, t5, t4<br> [0x800017f8]:sd t6, 1696(gp)<br>   |
| 122|[0x800039d0]<br>0x000000000000000C|- rs2_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                           |[0x80001818]:KSUBW t6, t5, t4<br> [0x8000181c]:sd t6, 1712(gp)<br>   |
| 123|[0x800039e0]<br>0xFFFFFFFFFFDFFDFF|- rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                         |[0x80001840]:KSUBW t6, t5, t4<br> [0x80001844]:sd t6, 1728(gp)<br>   |
| 124|[0x800039f0]<br>0x0000000000000008|- rs2_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                           |[0x80001864]:KSUBW t6, t5, t4<br> [0x80001868]:sd t6, 1744(gp)<br>   |
| 125|[0x80003a00]<br>0x0000000000000000|- rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                         |[0x8000188c]:KSUBW t6, t5, t4<br> [0x80001890]:sd t6, 1760(gp)<br>   |
| 126|[0x80003a10]<br>0x000000007FDFFFFF|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                  |[0x800018b0]:KSUBW t6, t5, t4<br> [0x800018b4]:sd t6, 1776(gp)<br>   |
| 127|[0x80003a20]<br>0xFFFFFFFFDFFFFFEF|- rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                          |[0x800018d4]:KSUBW t6, t5, t4<br> [0x800018d8]:sd t6, 1792(gp)<br>   |
| 128|[0x80003a30]<br>0x0000000000000078|- rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                           |[0x800018f8]:KSUBW t6, t5, t4<br> [0x800018fc]:sd t6, 1808(gp)<br>   |
| 129|[0x80003a40]<br>0xFFFFFFFFFBDFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                     |[0x80001924]:KSUBW t6, t5, t4<br> [0x80001928]:sd t6, 1824(gp)<br>   |
| 130|[0x80003a50]<br>0xFFFFFFFFFDFFFEFF|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                     |[0x80001948]:KSUBW t6, t5, t4<br> [0x8000194c]:sd t6, 1840(gp)<br>   |
| 131|[0x80003a60]<br>0x0000000000007FFF|- rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                           |[0x80001970]:KSUBW t6, t5, t4<br> [0x80001974]:sd t6, 1856(gp)<br>   |
| 132|[0x80003a70]<br>0xFFFFFFFFFFE00100|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                     |[0x80001998]:KSUBW t6, t5, t4<br> [0x8000199c]:sd t6, 1872(gp)<br>   |
| 133|[0x80003a80]<br>0x0000000008000081|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                                    |[0x800019c0]:KSUBW t6, t5, t4<br> [0x800019c4]:sd t6, 1888(gp)<br>   |
