
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
| SIG_REGION                | [('0x80003210', '0x80003ac0', '278 dwords')]      |
| COV_LABELS                | kmatt32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmatt32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 278      |
| STAT1                     | 137      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 139     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001654]:KMATT32 t6, t5, t4
      [0x80001658]:sd t6, 1360(sp)
 -- Signature Address: 0x80003940 Data: 0x36575B0B6B6E920C
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 4
      - rs2_w0_val == 65536
      - rs1_w1_val == 0
      - rs1_w0_val == -524289




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a40]:KMATT32 t6, t5, t4
      [0x80001a44]:sd t6, 1728(sp)
 -- Signature Address: 0x80003ab0 Data: 0x1A9EC46049683779
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -131073
      - rs1_w1_val == 4
      - rs1_w0_val == 2147483647






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmatt32', 'rs1 : x0', 'rs2 : x0', 'rd : x16', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w0_val == rs2_w0_val', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800003c4]:KMATT32 a6, zero, zero
	-[0x800003c8]:sd a6, 0(gp)
Current Store : [0x800003cc] : sd zero, 8(gp) -- Store: [0x80003218]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x31', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 268435456', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800003e0]:KMATT32 t6, t6, t6
	-[0x800003e4]:sd t6, 16(gp)
Current Store : [0x800003e8] : sd t6, 24(gp) -- Store: [0x80003228]:0x0000000710000031




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x5', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 64', 'rs2_w0_val == 8388608', 'rs1_w1_val == -257', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000404]:KMATT32 t0, fp, s1
	-[0x80000408]:sd t0, 32(gp)
Current Store : [0x8000040c] : sd fp, 40(gp) -- Store: [0x80003238]:0xFFFFFEFFFFFFFF7F




Last Coverpoint : ['rs1 : x22', 'rs2 : x26', 'rd : x22', 'rs1 == rd != rs2', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs2_w1_val == -8193', 'rs2_w0_val == 65536', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000428]:KMATT32 s6, s6, s10
	-[0x8000042c]:sd s6, 48(gp)
Current Store : [0x80000430] : sd s6, 56(gp) -- Store: [0x80003248]:0xFFFFFFFA0000C206




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -257', 'rs2_w0_val == -65', 'rs1_w1_val == 8192', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000044c]:KMATT32 s4, s5, s4
	-[0x80000450]:sd s4, 64(gp)
Current Store : [0x80000454] : sd s5, 72(gp) -- Store: [0x80003258]:0x0000200000040000




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x10', 'rs2_w0_val == 4194304', 'rs1_w1_val == -1', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000046c]:KMATT32 a0, a5, t3
	-[0x80000470]:sd a0, 80(gp)
Current Store : [0x80000474] : sd a5, 88(gp) -- Store: [0x80003268]:0xFFFFFFFF00400000




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x28', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x8000049c]:KMATT32 t3, sp, a2
	-[0x800004a0]:sd t3, 96(gp)
Current Store : [0x800004a4] : sd sp, 104(gp) -- Store: [0x80003278]:0x0000000700040000




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x12', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 134217728', 'rs1_w1_val == 262144', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800004c8]:KMATT32 a2, a6, a4
	-[0x800004cc]:sd a2, 112(gp)
Current Store : [0x800004d0] : sd a6, 120(gp) -- Store: [0x80003288]:0x0004000008000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x4', 'rd : x18', 'rs2_w1_val == 2147483647', 'rs1_w1_val == -2', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004ec]:KMATT32 s2, ra, tp
	-[0x800004f0]:sd s2, 128(gp)
Current Store : [0x800004f4] : sd ra, 136(gp) -- Store: [0x80003298]:0xFFFFFFFE02000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x24', 'rs2_w1_val == -1073741825', 'rs1_w1_val == 256', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000510]:KMATT32 s8, t3, s3
	-[0x80000514]:sd s8, 144(gp)
Current Store : [0x80000518] : sd t3, 152(gp) -- Store: [0x800032a8]:0x0000010000010000




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x30', 'rs2_w1_val == -536870913', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000534]:KMATT32 t5, a7, s2
	-[0x80000538]:sd t5, 160(gp)
Current Store : [0x8000053c] : sd a7, 168(gp) -- Store: [0x800032b8]:0x0000000300004000




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x23', 'rs2_w1_val == -268435457', 'rs2_w0_val == -262145', 'rs1_w1_val == -536870913', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000564]:KMATT32 s7, t4, t5
	-[0x80000568]:sd s7, 176(gp)
Current Store : [0x8000056c] : sd t4, 184(gp) -- Store: [0x800032c8]:0xDFFFFFFF40000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x6', 'rd : x11', 'rs2_w1_val == -134217729', 'rs2_w0_val == -257', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80000588]:KMATT32 a1, tp, t1
	-[0x8000058c]:sd a1, 192(gp)
Current Store : [0x80000590] : sd tp, 200(gp) -- Store: [0x800032d8]:0xFFFFFBFF00000200




Last Coverpoint : ['rs1 : x10', 'rs2 : x29', 'rd : x6', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -67108865', 'rs2_w0_val == -4194305', 'rs1_w1_val == -67108865', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800005bc]:KMATT32 t1, a0, t4
	-[0x800005c0]:sd t1, 208(gp)
Current Store : [0x800005c4] : sd a0, 216(gp) -- Store: [0x800032e8]:0xFBFFFFFFFFFF7FFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x16', 'rd : x27', 'rs2_w1_val == -33554433', 'rs2_w0_val == -8388609', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800005e8]:KMATT32 s11, s1, a6
	-[0x800005ec]:sd s11, 224(gp)
Current Store : [0x800005f0] : sd s1, 232(gp) -- Store: [0x800032f8]:0xFFFFFBFFFFFFFFDF




Last Coverpoint : ['rs1 : x27', 'rs2 : x22', 'rd : x21', 'rs2_w1_val == -16777217', 'rs2_w0_val == -2147483648', 'rs1_w1_val == -131073', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000618]:KMATT32 s5, s11, s6
	-[0x8000061c]:sd s5, 0(a6)
Current Store : [0x80000620] : sd s11, 8(a6) -- Store: [0x80003308]:0xFFFDFFFF00000080




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x7', 'rs2_w1_val == -8388609', 'rs1_w1_val == 131072', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000640]:KMATT32 t2, s8, a5
	-[0x80000644]:sd t2, 16(a6)
Current Store : [0x80000648] : sd s8, 24(a6) -- Store: [0x80003318]:0x00020000FFFFFFFE




Last Coverpoint : ['rs1 : x30', 'rs2 : x27', 'rd : x9', 'rs2_w1_val == -4194305', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000678]:KMATT32 s1, t5, s11
	-[0x8000067c]:sd s1, 32(a6)
Current Store : [0x80000680] : sd t5, 40(a6) -- Store: [0x80003328]:0x80000000FFFFDFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x24', 'rd : x29', 'rs2_w1_val == -2097153', 'rs2_w0_val == 16', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800006a0]:KMATT32 t4, s2, s8
	-[0x800006a4]:sd t4, 48(a6)
Current Store : [0x800006a8] : sd s2, 56(a6) -- Store: [0x80003338]:0x0002000000200000




Last Coverpoint : ['rs1 : x11', 'rs2 : x7', 'rd : x4', 'rs2_w1_val == -1048577', 'rs1_w1_val == 16', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006c8]:KMATT32 tp, a1, t2
	-[0x800006cc]:sd tp, 64(a6)
Current Store : [0x800006d0] : sd a1, 72(a6) -- Store: [0x80003348]:0x0000001000000004




Last Coverpoint : ['rs1 : x19', 'rs2 : x1', 'rd : x25', 'rs2_w1_val == -524289', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800006f4]:KMATT32 s9, s3, ra
	-[0x800006f8]:sd s9, 80(a6)
Current Store : [0x800006fc] : sd s3, 88(a6) -- Store: [0x80003358]:0xBFFFFFFF00000080




Last Coverpoint : ['rs1 : x7', 'rs2 : x10', 'rd : x15', 'rs2_w1_val == -262145', 'rs2_w0_val == 2', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000071c]:KMATT32 a5, t2, a0
	-[0x80000720]:sd a5, 96(a6)
Current Store : [0x80000724] : sd t2, 104(a6) -- Store: [0x80003368]:0x0000000100000003




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x0', 'rs2_w1_val == -131073', 'rs1_w1_val == 4', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000744]:KMATT32 zero, t1, a1
	-[0x80000748]:sd zero, 112(a6)
Current Store : [0x8000074c] : sd t1, 120(a6) -- Store: [0x80003378]:0x000000047FFFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x26', 'rs2_w1_val == -65537', 'rs2_w0_val == -3', 'rs1_w1_val == 16384', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000076c]:KMATT32 s10, a3, sp
	-[0x80000770]:sd s10, 128(a6)
Current Store : [0x80000774] : sd a3, 136(a6) -- Store: [0x80003388]:0x00004000FFFFFDFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rd : x13', 'rs2_w1_val == -32769', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000794]:KMATT32 a3, gp, s5
	-[0x80000798]:sd a3, 144(a6)
Current Store : [0x8000079c] : sd gp, 152(a6) -- Store: [0x80003398]:0xFFFFFFF8FBFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x8', 'rs2_w1_val == -16385', 'rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800007c0]:KMATT32 fp, a4, a7
	-[0x800007c4]:sd fp, 160(a6)
Current Store : [0x800007c8] : sd a4, 168(a6) -- Store: [0x800033a8]:0x00004000FFFFFFF9




Last Coverpoint : ['rs1 : x26', 'rs2 : x8', 'rd : x14', 'rs2_w1_val == -4097', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800007e4]:KMATT32 a4, s10, fp
	-[0x800007e8]:sd a4, 176(a6)
Current Store : [0x800007ec] : sd s10, 184(a6) -- Store: [0x800033b8]:0xFFFFFFF9FFFFFDFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x23', 'rd : x2', 'rs2_w1_val == -2049', 'rs2_w0_val == -2', 'rs1_w1_val == 2147483647', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000810]:KMATT32 sp, t0, s7
	-[0x80000814]:sd sp, 192(a6)
Current Store : [0x80000818] : sd t0, 200(a6) -- Store: [0x800033c8]:0x7FFFFFFFEFFFFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x3', 'rs2_w1_val == -1025', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000834]:KMATT32 gp, s9, t0
	-[0x80000838]:sd gp, 208(a6)
Current Store : [0x8000083c] : sd s9, 216(a6) -- Store: [0x800033d8]:0xFFFFFFF900800000




Last Coverpoint : ['rs1 : x12', 'rs2 : x3', 'rd : x17', 'rs2_w1_val == -513', 'rs2_w0_val == 524288', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x8000085c]:KMATT32 a7, a2, gp
	-[0x80000860]:sd a7, 224(a6)
Current Store : [0x80000864] : sd a2, 232(a6) -- Store: [0x800033e8]:0xEFFFFFFF00000003




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x19', 'rs2_w1_val == -129', 'rs2_w0_val == 512', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000888]:KMATT32 s3, s7, s9
	-[0x8000088c]:sd s3, 0(sp)
Current Store : [0x80000890] : sd s7, 8(sp) -- Store: [0x800033f8]:0x00000004FFFFFBFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x13', 'rd : x1', 'rs2_w1_val == -65', 'rs1_w1_val == 8388608', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800008ac]:KMATT32 ra, s4, a3
	-[0x800008b0]:sd ra, 16(sp)
Current Store : [0x800008b4] : sd s4, 24(sp) -- Store: [0x80003408]:0x0080000000000040




Last Coverpoint : ['rs2_w1_val == -33', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x800008d0]:KMATT32 t6, t5, t4
	-[0x800008d4]:sd t6, 32(sp)
Current Store : [0x800008d8] : sd t5, 40(sp) -- Store: [0x80003418]:0xFFFFFFEF00000003




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800008f8]:KMATT32 t6, t5, t4
	-[0x800008fc]:sd t6, 48(sp)
Current Store : [0x80000900] : sd t5, 56(sp) -- Store: [0x80003428]:0x1000000000200000




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == -65537', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000920]:KMATT32 t6, t5, t4
	-[0x80000924]:sd t6, 64(sp)
Current Store : [0x80000928] : sd t5, 72(sp) -- Store: [0x80003438]:0x0000000900000001




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == 536870912', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000940]:KMATT32 t6, t5, t4
	-[0x80000944]:sd t6, 80(sp)
Current Store : [0x80000948] : sd t5, 88(sp) -- Store: [0x80003448]:0x0000004000000004




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80000968]:KMATT32 t6, t5, t4
	-[0x8000096c]:sd t6, 96(sp)
Current Store : [0x80000970] : sd t5, 104(sp) -- Store: [0x80003458]:0x00000001FFFFFF7F




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -33', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000990]:KMATT32 t6, t5, t4
	-[0x80000994]:sd t6, 112(sp)
Current Store : [0x80000998] : sd t5, 120(sp) -- Store: [0x80003468]:0xFFFFFFF8FFFFF7FF




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == 8', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800009c0]:KMATT32 t6, t5, t4
	-[0x800009c4]:sd t6, 128(sp)
Current Store : [0x800009c8] : sd t5, 136(sp) -- Store: [0x80003478]:0xC0000000FFF7FFFF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 65536', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800009e8]:KMATT32 t6, t5, t4
	-[0x800009ec]:sd t6, 144(sp)
Current Store : [0x800009f0] : sd t5, 152(sp) -- Store: [0x80003488]:0x0001000000000400




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 32768', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000a18]:KMATT32 t6, t5, t4
	-[0x80000a1c]:sd t6, 160(sp)
Current Store : [0x80000a20] : sd t5, 168(sp) -- Store: [0x80003498]:0xFFF7FFFFFFFFF7FF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 8', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000a3c]:KMATT32 t6, t5, t4
	-[0x80000a40]:sd t6, 176(sp)
Current Store : [0x80000a44] : sd t5, 184(sp) -- Store: [0x800034a8]:0x0000000800000002




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 134217728', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000a7c]:KMATT32 t6, t5, t4
	-[0x80000a80]:sd t6, 192(sp)
Current Store : [0x80000a84] : sd t5, 200(sp) -- Store: [0x800034b8]:0x08000000AAAAAAAA




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000ab4]:KMATT32 t6, t5, t4
	-[0x80000ab8]:sd t6, 208(sp)
Current Store : [0x80000abc] : sd t5, 216(sp) -- Store: [0x800034c8]:0xEFFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 128', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000adc]:KMATT32 t6, t5, t4
	-[0x80000ae0]:sd t6, 224(sp)
Current Store : [0x80000ae4] : sd t5, 232(sp) -- Store: [0x800034d8]:0x00000080FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000b10]:KMATT32 t6, t5, t4
	-[0x80000b14]:sd t6, 240(sp)
Current Store : [0x80000b18] : sd t5, 248(sp) -- Store: [0x800034e8]:0x00001000FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000b38]:KMATT32 t6, t5, t4
	-[0x80000b3c]:sd t6, 256(sp)
Current Store : [0x80000b40] : sd t5, 264(sp) -- Store: [0x800034f8]:0x0000002000000400




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 1', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000b5c]:KMATT32 t6, t5, t4
	-[0x80000b60]:sd t6, 272(sp)
Current Store : [0x80000b64] : sd t5, 280(sp) -- Store: [0x80003508]:0xC000000000000100




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 2048', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000b90]:KMATT32 t6, t5, t4
	-[0x80000b94]:sd t6, 288(sp)
Current Store : [0x80000b98] : sd t5, 296(sp) -- Store: [0x80003518]:0x0000400000000800




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80000bb8]:KMATT32 t6, t5, t4
	-[0x80000bbc]:sd t6, 304(sp)
Current Store : [0x80000bc0] : sd t5, 312(sp) -- Store: [0x80003528]:0x0800000000000009




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000be4]:KMATT32 t6, t5, t4
	-[0x80000be8]:sd t6, 320(sp)
Current Store : [0x80000bec] : sd t5, 328(sp) -- Store: [0x80003538]:0x1000000000000020




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 1431655765', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000c14]:KMATT32 t6, t5, t4
	-[0x80000c18]:sd t6, 336(sp)
Current Store : [0x80000c1c] : sd t5, 344(sp) -- Store: [0x80003548]:0xFEFFFFFFFFFFFFFC




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -3', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c38]:KMATT32 t6, t5, t4
	-[0x80000c3c]:sd t6, 352(sp)
Current Store : [0x80000c40] : sd t5, 360(sp) -- Store: [0x80003558]:0xFFFFFFFD01000000




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w1_val == 67108864', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c58]:KMATT32 t6, t5, t4
	-[0x80000c5c]:sd t6, 368(sp)
Current Store : [0x80000c60] : sd t5, 376(sp) -- Store: [0x80003568]:0x0400000000100000




Last Coverpoint : ['rs2_w0_val == -8193', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c88]:KMATT32 t6, t5, t4
	-[0x80000c8c]:sd t6, 384(sp)
Current Store : [0x80000c90] : sd t5, 392(sp) -- Store: [0x80003578]:0x0000000100080000




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cb0]:KMATT32 t6, t5, t4
	-[0x80000cb4]:sd t6, 400(sp)
Current Store : [0x80000cb8] : sd t5, 408(sp) -- Store: [0x80003588]:0x0020000000020000




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ce4]:KMATT32 t6, t5, t4
	-[0x80000ce8]:sd t6, 416(sp)
Current Store : [0x80000cec] : sd t5, 424(sp) -- Store: [0x80003598]:0xDFFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -33', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d10]:KMATT32 t6, t5, t4
	-[0x80000d14]:sd t6, 432(sp)
Current Store : [0x80000d18] : sd t5, 440(sp) -- Store: [0x800035a8]:0xFFFFFFDF00002000




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d34]:KMATT32 t6, t5, t4
	-[0x80000d38]:sd t6, 448(sp)
Current Store : [0x80000d3c] : sd t5, 456(sp) -- Store: [0x800035b8]:0xFFFFFFF900001000




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d58]:KMATT32 t6, t5, t4
	-[0x80000d5c]:sd t6, 464(sp)
Current Store : [0x80000d60] : sd t5, 472(sp) -- Store: [0x800035c8]:0x0000002000000010




Last Coverpoint : ['rs2_w0_val == -513', 'rs1_w1_val == 524288', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d7c]:KMATT32 t6, t5, t4
	-[0x80000d80]:sd t6, 480(sp)
Current Store : [0x80000d84] : sd t5, 488(sp) -- Store: [0x800035d8]:0x0008000000000008




Last Coverpoint : ['rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x80000da0]:KMATT32 t6, t5, t4
	-[0x80000da4]:sd t6, 496(sp)
Current Store : [0x80000da8] : sd t5, 504(sp) -- Store: [0x800035e8]:0x0000008000000000




Last Coverpoint : ['rs2_w1_val == 65536']
Last Code Sequence : 
	-[0x80000dcc]:KMATT32 t6, t5, t4
	-[0x80000dd0]:sd t6, 512(sp)
Current Store : [0x80000dd4] : sd t5, 520(sp) -- Store: [0x800035f8]:0x7FFFFFFF00000002




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000df8]:KMATT32 t6, t5, t4
	-[0x80000dfc]:sd t6, 528(sp)
Current Store : [0x80000e00] : sd t5, 536(sp) -- Store: [0x80003608]:0x01000000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000e18]:KMATT32 t6, t5, t4
	-[0x80000e1c]:sd t6, 544(sp)
Current Store : [0x80000e20] : sd t5, 552(sp) -- Store: [0x80003618]:0xFFFFFEFFC0000000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 16777216', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80000e40]:KMATT32 t6, t5, t4
	-[0x80000e44]:sd t6, 560(sp)
Current Store : [0x80000e48] : sd t5, 568(sp) -- Store: [0x80003628]:0xFFFFEFFFFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000e6c]:KMATT32 t6, t5, t4
	-[0x80000e70]:sd t6, 576(sp)
Current Store : [0x80000e74] : sd t5, 584(sp) -- Store: [0x80003638]:0xFFF7FFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000e94]:KMATT32 t6, t5, t4
	-[0x80000e98]:sd t6, 592(sp)
Current Store : [0x80000e9c] : sd t5, 600(sp) -- Store: [0x80003648]:0x00800000FFFFFFFB




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000eb8]:KMATT32 t6, t5, t4
	-[0x80000ebc]:sd t6, 608(sp)
Current Store : [0x80000ec0] : sd t5, 616(sp) -- Store: [0x80003658]:0xFFFFFFFC00000009




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == -17', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000edc]:KMATT32 t6, t5, t4
	-[0x80000ee0]:sd t6, 624(sp)
Current Store : [0x80000ee4] : sd t5, 632(sp) -- Store: [0x80003668]:0x0000080000000007




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000f08]:KMATT32 t6, t5, t4
	-[0x80000f0c]:sd t6, 640(sp)
Current Store : [0x80000f10] : sd t5, 648(sp) -- Store: [0x80003678]:0x00000040F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -9', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000f30]:KMATT32 t6, t5, t4
	-[0x80000f34]:sd t6, 656(sp)
Current Store : [0x80000f38] : sd t5, 664(sp) -- Store: [0x80003688]:0x0000000855555555




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000f50]:KMATT32 t6, t5, t4
	-[0x80000f54]:sd t6, 672(sp)
Current Store : [0x80000f58] : sd t5, 680(sp) -- Store: [0x80003698]:0xFFFFFFFDFFFFFFBF




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x80000f6c]:KMATT32 t6, t5, t4
	-[0x80000f70]:sd t6, 688(sp)
Current Store : [0x80000f74] : sd t5, 696(sp) -- Store: [0x800036a8]:0x0000008040000000




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x80000f8c]:KMATT32 t6, t5, t4
	-[0x80000f90]:sd t6, 704(sp)
Current Store : [0x80000f94] : sd t5, 712(sp) -- Store: [0x800036b8]:0x0000001000400000




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80000fb4]:KMATT32 t6, t5, t4
	-[0x80000fb8]:sd t6, 720(sp)
Current Store : [0x80000fbc] : sd t5, 728(sp) -- Store: [0x800036c8]:0x0080000000200000




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80000fd4]:KMATT32 t6, t5, t4
	-[0x80000fd8]:sd t6, 736(sp)
Current Store : [0x80000fdc] : sd t5, 744(sp) -- Store: [0x800036d8]:0x0000001040000000




Last Coverpoint : ['rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000ff8]:KMATT32 t6, t5, t4
	-[0x80000ffc]:sd t6, 752(sp)
Current Store : [0x80001000] : sd t5, 760(sp) -- Store: [0x800036e8]:0xFFFFFFFE00000007




Last Coverpoint : ['rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001024]:KMATT32 t6, t5, t4
	-[0x80001028]:sd t6, 768(sp)
Current Store : [0x8000102c] : sd t5, 776(sp) -- Store: [0x800036f8]:0x00000800FFFFFF7F




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000104c]:KMATT32 t6, t5, t4
	-[0x80001050]:sd t6, 784(sp)
Current Store : [0x80001054] : sd t5, 792(sp) -- Store: [0x80003708]:0x00000400FFFFFFFF




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001078]:KMATT32 t6, t5, t4
	-[0x8000107c]:sd t6, 800(sp)
Current Store : [0x80001080] : sd t5, 808(sp) -- Store: [0x80003718]:0x00020000FFEFFFFF




Last Coverpoint : ['rs2_w0_val == -67108865', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x8000109c]:KMATT32 t6, t5, t4
	-[0x800010a0]:sd t6, 816(sp)
Current Store : [0x800010a4] : sd t5, 824(sp) -- Store: [0x80003728]:0x0000020008000000




Last Coverpoint : ['rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x800010c8]:KMATT32 t6, t5, t4
	-[0x800010cc]:sd t6, 832(sp)
Current Store : [0x800010d0] : sd t5, 840(sp) -- Store: [0x80003738]:0xDFFFFFFF00000010




Last Coverpoint : ['rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x800010f8]:KMATT32 t6, t5, t4
	-[0x800010fc]:sd t6, 848(sp)
Current Store : [0x80001100] : sd t5, 856(sp) -- Store: [0x80003748]:0x00010000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001124]:KMATT32 t6, t5, t4
	-[0x80001128]:sd t6, 864(sp)
Current Store : [0x8000112c] : sd t5, 872(sp) -- Store: [0x80003758]:0xFFFFFBFFFFFFFFBF




Last Coverpoint : ['rs2_w0_val == -1048577', 'rs1_w1_val == -1048577', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001154]:KMATT32 t6, t5, t4
	-[0x80001158]:sd t6, 880(sp)
Current Store : [0x8000115c] : sd t5, 888(sp) -- Store: [0x80003768]:0xFFEFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x8000117c]:KMATT32 t6, t5, t4
	-[0x80001180]:sd t6, 896(sp)
Current Store : [0x80001184] : sd t5, 904(sp) -- Store: [0x80003778]:0xFFFFFFFC00000007




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800011a4]:KMATT32 t6, t5, t4
	-[0x800011a8]:sd t6, 912(sp)
Current Store : [0x800011ac] : sd t5, 920(sp) -- Store: [0x80003788]:0x00000100FFFFEFFF




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800011d0]:KMATT32 t6, t5, t4
	-[0x800011d4]:sd t6, 928(sp)
Current Store : [0x800011d8] : sd t5, 936(sp) -- Store: [0x80003798]:0x0080000020000000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001200]:KMATT32 t6, t5, t4
	-[0x80001204]:sd t6, 944(sp)
Current Store : [0x80001208] : sd t5, 952(sp) -- Store: [0x800037a8]:0x00080000FFFEFFFF




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80001228]:KMATT32 t6, t5, t4
	-[0x8000122c]:sd t6, 960(sp)
Current Store : [0x80001230] : sd t5, 968(sp) -- Store: [0x800037b8]:0xFFFFFFFA55555555




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w1_val == -262145', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001250]:KMATT32 t6, t5, t4
	-[0x80001254]:sd t6, 976(sp)
Current Store : [0x80001258] : sd t5, 984(sp) -- Store: [0x800037c8]:0xFFFBFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000127c]:KMATT32 t6, t5, t4
	-[0x80001280]:sd t6, 992(sp)
Current Store : [0x80001284] : sd t5, 1000(sp) -- Store: [0x800037d8]:0xC000000002000000




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x800012a4]:KMATT32 t6, t5, t4
	-[0x800012a8]:sd t6, 1008(sp)
Current Store : [0x800012ac] : sd t5, 1016(sp) -- Store: [0x800037e8]:0xDFFFFFFF00000008




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x800012cc]:KMATT32 t6, t5, t4
	-[0x800012d0]:sd t6, 1024(sp)
Current Store : [0x800012d4] : sd t5, 1032(sp) -- Store: [0x800037f8]:0x0002000000040000




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80001300]:KMATT32 t6, t5, t4
	-[0x80001304]:sd t6, 1040(sp)
Current Store : [0x80001308] : sd t5, 1048(sp) -- Store: [0x80003808]:0xAAAAAAAAFFFFDFFF




Last Coverpoint : ['rs1_w1_val == 1431655765', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80001328]:KMATT32 t6, t5, t4
	-[0x8000132c]:sd t6, 1056(sp)
Current Store : [0x80001330] : sd t5, 1064(sp) -- Store: [0x80003818]:0x55555555FFFFFEFF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000135c]:KMATT32 t6, t5, t4
	-[0x80001360]:sd t6, 1072(sp)
Current Store : [0x80001364] : sd t5, 1080(sp) -- Store: [0x80003828]:0xF7FFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x8000138c]:KMATT32 t6, t5, t4
	-[0x80001390]:sd t6, 1088(sp)
Current Store : [0x80001394] : sd t5, 1096(sp) -- Store: [0x80003838]:0xFDFFFFFF01000000




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800013b0]:KMATT32 t6, t5, t4
	-[0x800013b4]:sd t6, 1104(sp)
Current Store : [0x800013b8] : sd t5, 1112(sp) -- Store: [0x80003848]:0xFF7FFFFF10000000




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800013d4]:KMATT32 t6, t5, t4
	-[0x800013d8]:sd t6, 1120(sp)
Current Store : [0x800013dc] : sd t5, 1128(sp) -- Store: [0x80003858]:0xFFBFFFFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800013fc]:KMATT32 t6, t5, t4
	-[0x80001400]:sd t6, 1136(sp)
Current Store : [0x80001404] : sd t5, 1144(sp) -- Store: [0x80003868]:0xFFDFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x8000142c]:KMATT32 t6, t5, t4
	-[0x80001430]:sd t6, 1152(sp)
Current Store : [0x80001434] : sd t5, 1160(sp) -- Store: [0x80003878]:0xFFFEFFFF00000000




Last Coverpoint : ['rs1_w1_val == -32769', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001460]:KMATT32 t6, t5, t4
	-[0x80001464]:sd t6, 1168(sp)
Current Store : [0x80001468] : sd t5, 1176(sp) -- Store: [0x80003888]:0xFFFF7FFFFEFFFFFF




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x8000148c]:KMATT32 t6, t5, t4
	-[0x80001490]:sd t6, 1184(sp)
Current Store : [0x80001494] : sd t5, 1192(sp) -- Store: [0x80003898]:0xFFFFBFFFFFFFDFFF




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800014bc]:KMATT32 t6, t5, t4
	-[0x800014c0]:sd t6, 1200(sp)
Current Store : [0x800014c4] : sd t5, 1208(sp) -- Store: [0x800038a8]:0xFFFFDFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800014e0]:KMATT32 t6, t5, t4
	-[0x800014e4]:sd t6, 1216(sp)
Current Store : [0x800014e8] : sd t5, 1224(sp) -- Store: [0x800038b8]:0xFFFFF7FF00200000




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80001508]:KMATT32 t6, t5, t4
	-[0x8000150c]:sd t6, 1232(sp)
Current Store : [0x80001510] : sd t5, 1240(sp) -- Store: [0x800038c8]:0xFFFFFDFF00000009




Last Coverpoint : ['rs1_w1_val == -129', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000152c]:KMATT32 t6, t5, t4
	-[0x80001530]:sd t6, 1248(sp)
Current Store : [0x80001534] : sd t5, 1256(sp) -- Store: [0x800038d8]:0xFFFFFF7FDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80001554]:KMATT32 t6, t5, t4
	-[0x80001558]:sd t6, 1264(sp)
Current Store : [0x8000155c] : sd t5, 1272(sp) -- Store: [0x800038e8]:0xFFFFFFBFEFFFFFFF




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x8000157c]:KMATT32 t6, t5, t4
	-[0x80001580]:sd t6, 1280(sp)
Current Store : [0x80001584] : sd t5, 1288(sp) -- Store: [0x800038f8]:0x0040000000200000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800015a8]:KMATT32 t6, t5, t4
	-[0x800015ac]:sd t6, 1296(sp)
Current Store : [0x800015b0] : sd t5, 1304(sp) -- Store: [0x80003908]:0x0010000000000400




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800015dc]:KMATT32 t6, t5, t4
	-[0x800015e0]:sd t6, 1312(sp)
Current Store : [0x800015e4] : sd t5, 1320(sp) -- Store: [0x80003918]:0x00008000AAAAAAAA




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001604]:KMATT32 t6, t5, t4
	-[0x80001608]:sd t6, 1328(sp)
Current Store : [0x8000160c] : sd t5, 1336(sp) -- Store: [0x80003928]:0x02000000FFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000162c]:KMATT32 t6, t5, t4
	-[0x80001630]:sd t6, 1344(sp)
Current Store : [0x80001634] : sd t5, 1352(sp) -- Store: [0x80003938]:0x0000000200000400




Last Coverpoint : ['opcode : kmatt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 4', 'rs2_w0_val == 65536', 'rs1_w1_val == 0', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001654]:KMATT32 t6, t5, t4
	-[0x80001658]:sd t6, 1360(sp)
Current Store : [0x8000165c] : sd t5, 1368(sp) -- Store: [0x80003948]:0x00000000FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001680]:KMATT32 t6, t5, t4
	-[0x80001684]:sd t6, 1376(sp)
Current Store : [0x80001688] : sd t5, 1384(sp) -- Store: [0x80003958]:0xFDFFFFFFBFFFFFFF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800016ac]:KMATT32 t6, t5, t4
	-[0x800016b0]:sd t6, 1392(sp)
Current Store : [0x800016b4] : sd t5, 1400(sp) -- Store: [0x80003968]:0x400000003FFFFFFF




Last Coverpoint : ['rs1_w1_val == -5', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800016d8]:KMATT32 t6, t5, t4
	-[0x800016dc]:sd t6, 1408(sp)
Current Store : [0x800016e0] : sd t5, 1416(sp) -- Store: [0x80003978]:0xFFFFFFFBFDFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001708]:KMATT32 t6, t5, t4
	-[0x8000170c]:sd t6, 1424(sp)
Current Store : [0x80001710] : sd t5, 1432(sp) -- Store: [0x80003988]:0x00000100FF7FFFFF




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000172c]:KMATT32 t6, t5, t4
	-[0x80001730]:sd t6, 1440(sp)
Current Store : [0x80001734] : sd t5, 1448(sp) -- Store: [0x80003998]:0x00000100FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001760]:KMATT32 t6, t5, t4
	-[0x80001764]:sd t6, 1456(sp)
Current Store : [0x80001768] : sd t5, 1464(sp) -- Store: [0x800039a8]:0x0100000000020000




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000178c]:KMATT32 t6, t5, t4
	-[0x80001790]:sd t6, 1472(sp)
Current Store : [0x80001794] : sd t5, 1480(sp) -- Store: [0x800039b8]:0x20000000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800017bc]:KMATT32 t6, t5, t4
	-[0x800017c0]:sd t6, 1488(sp)
Current Store : [0x800017c4] : sd t5, 1496(sp) -- Store: [0x800039c8]:0xFFDFFFFFFFDFFFFF




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x800017e4]:KMATT32 t6, t5, t4
	-[0x800017e8]:sd t6, 1504(sp)
Current Store : [0x800017ec] : sd t5, 1512(sp) -- Store: [0x800039d8]:0x00000008FBFFFFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000180c]:KMATT32 t6, t5, t4
	-[0x80001810]:sd t6, 1520(sp)
Current Store : [0x80001814] : sd t5, 1528(sp) -- Store: [0x800039e8]:0xFFFFFEFFFFFBFFFF




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001840]:KMATT32 t6, t5, t4
	-[0x80001844]:sd t6, 1536(sp)
Current Store : [0x80001848] : sd t5, 1544(sp) -- Store: [0x800039f8]:0x40000000FFFDFFFF




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000186c]:KMATT32 t6, t5, t4
	-[0x80001870]:sd t6, 1552(sp)
Current Store : [0x80001874] : sd t5, 1560(sp) -- Store: [0x80003a08]:0xDFFFFFFF00008000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001898]:KMATT32 t6, t5, t4
	-[0x8000189c]:sd t6, 1568(sp)
Current Store : [0x800018a0] : sd t5, 1576(sp) -- Store: [0x80003a18]:0x00000005FFFFBFFF




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800018c0]:KMATT32 t6, t5, t4
	-[0x800018c4]:sd t6, 1584(sp)
Current Store : [0x800018c8] : sd t5, 1592(sp) -- Store: [0x80003a28]:0x0000000800000009




Last Coverpoint : ['rs1_w1_val == -9', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800018f0]:KMATT32 t6, t5, t4
	-[0x800018f4]:sd t6, 1600(sp)
Current Store : [0x800018f8] : sd t5, 1608(sp) -- Store: [0x80003a38]:0xFFFFFFF704000000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001910]:KMATT32 t6, t5, t4
	-[0x80001914]:sd t6, 1616(sp)
Current Store : [0x80001918] : sd t5, 1624(sp) -- Store: [0x80003a48]:0xFFFFFEFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001940]:KMATT32 t6, t5, t4
	-[0x80001944]:sd t6, 1632(sp)
Current Store : [0x80001948] : sd t5, 1640(sp) -- Store: [0x80003a58]:0x00000001FFFFFFEF




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001964]:KMATT32 t6, t5, t4
	-[0x80001968]:sd t6, 1648(sp)
Current Store : [0x8000196c] : sd t5, 1656(sp) -- Store: [0x80003a68]:0xFFFFF7FF00000200




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001990]:KMATT32 t6, t5, t4
	-[0x80001994]:sd t6, 1664(sp)
Current Store : [0x80001998] : sd t5, 1672(sp) -- Store: [0x80003a78]:0x00000100FFDFFFFF




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x800019b8]:KMATT32 t6, t5, t4
	-[0x800019bc]:sd t6, 1680(sp)
Current Store : [0x800019c0] : sd t5, 1688(sp) -- Store: [0x80003a88]:0x00800000FFFFFFFB




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800019ec]:KMATT32 t6, t5, t4
	-[0x800019f0]:sd t6, 1696(sp)
Current Store : [0x800019f4] : sd t5, 1704(sp) -- Store: [0x80003a98]:0x00800000FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001a18]:KMATT32 t6, t5, t4
	-[0x80001a1c]:sd t6, 1712(sp)
Current Store : [0x80001a20] : sd t5, 1720(sp) -- Store: [0x80003aa8]:0x7FFFFFFF80000000




Last Coverpoint : ['opcode : kmatt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -131073', 'rs1_w1_val == 4', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001a40]:KMATT32 t6, t5, t4
	-[0x80001a44]:sd t6, 1728(sp)
Current Store : [0x80001a48] : sd t5, 1736(sp) -- Store: [0x80003ab8]:0x000000047FFFFFFF





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

|s.no|            signature             |                                                                                                                                                                 coverpoints                                                                                                                                                                 |                                  code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7D5BFDDB7D5BFDDB|- opcode : kmatt32<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w0_val == rs2_w0_val<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                             |[0x800003c4]:KMATT32 a6, zero, zero<br> [0x800003c8]:sd a6, 0(gp)<br>   |
|   2|[0x80003220]<br>0x0000000710000031|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 268435456<br> - rs1_w0_val == 268435456<br>                                                                                                                            |[0x800003e0]:KMATT32 t6, t6, t6<br> [0x800003e4]:sd t6, 16(gp)<br>      |
|   3|[0x80003230]<br>0x000000007FFFC350|- rs1 : x8<br> - rs2 : x9<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 64<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == -257<br> - rs1_w0_val == -129<br> |[0x80000404]:KMATT32 t0, fp, s1<br> [0x80000408]:sd t0, 32(gp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFA0000C206|- rs1 : x22<br> - rs2 : x26<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 65536<br> - rs1_w0_val == 512<br>                                                                                                                                                    |[0x80000428]:KMATT32 s6, s6, s10<br> [0x8000042c]:sd s6, 48(gp)<br>     |
|   5|[0x80003250]<br>0xFFFFFEFFFFDFDFBF|- rs1 : x21<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -257<br> - rs2_w0_val == -65<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 262144<br>                                                                                   |[0x8000044c]:KMATT32 s4, s5, s4<br> [0x80000450]:sd s4, 64(gp)<br>      |
|   6|[0x80003260]<br>0x0000000000000206|- rs1 : x15<br> - rs2 : x28<br> - rd : x10<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -1<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                |[0x8000046c]:KMATT32 a0, a5, t3<br> [0x80000470]:sd a0, 80(gp)<br>      |
|   7|[0x80003270]<br>0xFFFFFFF7AAEAAAA6|- rs1 : x2<br> - rs2 : x12<br> - rd : x28<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -131073<br>                                                                                                                                                                                                                                    |[0x8000049c]:KMATT32 t3, sp, a2<br> [0x800004a0]:sd t3, 96(gp)<br>      |
|   8|[0x80003280]<br>0xAAAC00005551FFFF|- rs1 : x16<br> - rs2 : x14<br> - rd : x12<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                         |[0x800004c8]:KMATT32 a2, a6, a4<br> [0x800004cc]:sd a2, 112(gp)<br>     |
|   9|[0x80003290]<br>0xDF56FF75DF56FF78|- rs1 : x1<br> - rs2 : x4<br> - rd : x18<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == -2<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                              |[0x800004ec]:KMATT32 s2, ra, tp<br> [0x800004f0]:sd s2, 128(gp)<br>     |
|  10|[0x800032a0]<br>0xDB7D5BBDDB7D5AFD|- rs1 : x28<br> - rs2 : x19<br> - rd : x24<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 256<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                             |[0x80000510]:KMATT32 s8, t3, s3<br> [0x80000514]:sd s8, 144(gp)<br>     |
|  11|[0x800032b0]<br>0xF76DF56F976DF56C|- rs1 : x17<br> - rs2 : x18<br> - rd : x30<br> - rs2_w1_val == -536870913<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                      |[0x80000534]:KMATT32 t5, a7, s2<br> [0x80000538]:sd t5, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xB8FAB7FBE6FAB7FC|- rs1 : x29<br> - rs2 : x30<br> - rd : x23<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -262145<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                      |[0x80000564]:KMATT32 s7, t4, t5<br> [0x80000568]:sd s7, 176(gp)<br>     |
|  13|[0x800032d0]<br>0xAB7FBB8FB37FBF70|- rs1 : x4<br> - rs2 : x6<br> - rd : x11<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -257<br> - rs1_w1_val == -1025<br>                                                                                                                                                                                                               |[0x80000588]:KMATT32 a1, tp, t1<br> [0x8000058c]:sd a1, 192(gp)<br>     |
|  14|[0x800032e0]<br>0xF810000007FFFF00|- rs1 : x10<br> - rs2 : x29<br> - rd : x6<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -32769<br>                                                                                                                                    |[0x800005bc]:KMATT32 t1, a0, t4<br> [0x800005c0]:sd t1, 208(gp)<br>     |
|  15|[0x800032f0]<br>0xBB6FAB87BD6FAF80|- rs1 : x9<br> - rs2 : x16<br> - rd : x27<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                             |[0x800005e8]:KMATT32 s11, s1, a6<br> [0x800005ec]:sd s11, 224(gp)<br>   |
|  16|[0x80003300]<br>0x0000220001060001|- rs1 : x27<br> - rs2 : x22<br> - rd : x21<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 128<br>                                                                                                                                                                             |[0x80000618]:KMATT32 s5, s11, s6<br> [0x8000061c]:sd s5, 0(a6)<br>      |
|  17|[0x80003310]<br>0xB7FBB5FAB7F9B6FA|- rs1 : x24<br> - rs2 : x15<br> - rd : x7<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                 |[0x80000640]:KMATT32 t2, s8, a5<br> [0x80000644]:sd t2, 16(a6)<br>      |
|  18|[0x80003320]<br>0x001FFC007FFFFFDF|- rs1 : x30<br> - rs2 : x27<br> - rd : x9<br> - rs2_w1_val == -4194305<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                         |[0x80000678]:KMATT32 s1, t5, s11<br> [0x8000067c]:sd s1, 32(a6)<br>     |
|  19|[0x80003330]<br>0xFBFFFFBFFFBDFFFF|- rs1 : x18<br> - rs2 : x24<br> - rd : x29<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 16<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                               |[0x800006a0]:KMATT32 t4, s2, s8<br> [0x800006a4]:sd t4, 48(a6)<br>      |
|  20|[0x80003340]<br>0xFFFFFBFEFF0001F0|- rs1 : x11<br> - rs2 : x7<br> - rd : x4<br> - rs2_w1_val == -1048577<br> - rs1_w1_val == 16<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                       |[0x800006c8]:KMATT32 tp, a1, t2<br> [0x800006cc]:sd tp, 64(a6)<br>      |
|  21|[0x80003350]<br>0xEDC0ADFF2DC6ADFF|- rs1 : x19<br> - rs2 : x1<br> - rd : x25<br> - rs2_w1_val == -524289<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                    |[0x800006f4]:KMATT32 s9, s3, ra<br> [0x800006f8]:sd s9, 80(a6)<br>      |
|  22|[0x80003360]<br>0xFF7FFFFFFFFBFFF8|- rs1 : x7<br> - rs2 : x10<br> - rd : x15<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 2<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                        |[0x8000071c]:KMATT32 a5, t2, a0<br> [0x80000720]:sd a5, 96(a6)<br>      |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x11<br> - rd : x0<br> - rs2_w1_val == -131073<br> - rs1_w1_val == 4<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                |[0x80000744]:KMATT32 zero, t1, a1<br> [0x80000748]:sd zero, 112(a6)<br> |
|  24|[0x80003380]<br>0xFFFFDFFEC000C000|- rs1 : x13<br> - rs2 : x2<br> - rd : x26<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -3<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -513<br>                                                                                                                                                                                           |[0x8000076c]:KMATT32 s10, a3, sp<br> [0x80000770]:sd s10, 128(a6)<br>   |
|  25|[0x80003390]<br>0x000040010003FE07|- rs1 : x3<br> - rs2 : x21<br> - rd : x13<br> - rs2_w1_val == -32769<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                       |[0x80000794]:KMATT32 a3, gp, s5<br> [0x80000798]:sd a3, 144(a6)<br>     |
|  26|[0x800033a0]<br>0xFFFFFEFFEFFFBF7F|- rs1 : x14<br> - rs2 : x17<br> - rd : x8<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 256<br>                                                                                                                                                                                                                                             |[0x800007c0]:KMATT32 fp, a4, a7<br> [0x800007c4]:sd fp, 160(a6)<br>     |
|  27|[0x800033b0]<br>0x0000400100007000|- rs1 : x26<br> - rs2 : x8<br> - rd : x14<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 262144<br>                                                                                                                                                                                                                                           |[0x800007e4]:KMATT32 a4, s10, fp<br> [0x800007e8]:sd a4, 176(a6)<br>    |
|  28|[0x800033c0]<br>0xFFFEFBFF800007FE|- rs1 : x5<br> - rs2 : x23<br> - rd : x2<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -2<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                  |[0x80000810]:KMATT32 sp, t0, s7<br> [0x80000814]:sd sp, 192(a6)<br>     |
|  29|[0x800033d0]<br>0xFFFFFFF8FC001C06|- rs1 : x25<br> - rs2 : x5<br> - rd : x3<br> - rs2_w1_val == -1025<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                           |[0x80000834]:KMATT32 gp, s9, t0<br> [0x80000838]:sd gp, 208(a6)<br>     |
|  30|[0x800033e0]<br>0xFFFFC01F10000301|- rs1 : x12<br> - rs2 : x3<br> - rd : x17<br> - rs2_w1_val == -513<br> - rs2_w0_val == 524288<br> - rs1_w1_val == -268435457<br>                                                                                                                                                                                                             |[0x8000085c]:KMATT32 a7, a2, gp<br> [0x80000860]:sd a7, 224(a6)<br>     |
|  31|[0x800033f0]<br>0xBFFFFFFEFFFFFE7C|- rs1 : x23<br> - rs2 : x25<br> - rd : x19<br> - rs2_w1_val == -129<br> - rs2_w0_val == 512<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                    |[0x80000888]:KMATT32 s3, s7, s9<br> [0x8000088c]:sd s3, 0(sp)<br>       |
|  32|[0x80003400]<br>0xFFF7FFFEDF800005|- rs1 : x20<br> - rs2 : x13<br> - rd : x1<br> - rs2_w1_val == -65<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                     |[0x800008ac]:KMATT32 ra, s4, a3<br> [0x800008b0]:sd ra, 16(sp)<br>      |
|  33|[0x80003410]<br>0x0000000710000262|- rs2_w1_val == -33<br> - rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                              |[0x800008d0]:KMATT32 t6, t5, t4<br> [0x800008d4]:sd t6, 32(sp)<br>      |
|  34|[0x80003420]<br>0x0000000600000262|- rs2_w1_val == -17<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                        |[0x800008f8]:KMATT32 t6, t5, t4<br> [0x800008fc]:sd t6, 48(sp)<br>      |
|  35|[0x80003430]<br>0x0000000600000211|- rs2_w1_val == -9<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                      |[0x80000920]:KMATT32 t6, t5, t4<br> [0x80000924]:sd t6, 64(sp)<br>      |
|  36|[0x80003440]<br>0x00000006000000D1|- rs2_w1_val == -5<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                  |[0x80000940]:KMATT32 t6, t5, t4<br> [0x80000944]:sd t6, 80(sp)<br>      |
|  37|[0x80003450]<br>0x00000006000000CE|- rs2_w1_val == -3<br> - rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                                             |[0x80000968]:KMATT32 t6, t5, t4<br> [0x8000096c]:sd t6, 96(sp)<br>      |
|  38|[0x80003460]<br>0x00000006000000DE|- rs2_w1_val == -2<br> - rs2_w0_val == -33<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                     |[0x80000990]:KMATT32 t6, t5, t4<br> [0x80000994]:sd t6, 112(sp)<br>     |
|  39|[0x80003470]<br>0x20000006000000DE|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 8<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                            |[0x800009c0]:KMATT32 t6, t5, t4<br> [0x800009c4]:sd t6, 128(sp)<br>     |
|  40|[0x80003480]<br>0x20004006000000DE|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                            |[0x800009e8]:KMATT32 t6, t5, t4<br> [0x800009ec]:sd t6, 144(sp)<br>     |
|  41|[0x80003490]<br>0x1FFF4005E00000DE|- rs2_w1_val == 536870912<br> - rs2_w0_val == 32768<br> - rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                          |[0x80000a18]:KMATT32 t6, t5, t4<br> [0x80000a1c]:sd t6, 160(sp)<br>     |
|  42|[0x800034a0]<br>0x1FFF4006600000DE|- rs2_w1_val == 268435456<br> - rs1_w1_val == 8<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                    |[0x80000a3c]:KMATT32 t6, t5, t4<br> [0x80000a40]:sd t6, 176(sp)<br>     |
|  43|[0x800034b0]<br>0x201F4006600000DE|- rs2_w1_val == 67108864<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                   |[0x80000a7c]:KMATT32 t6, t5, t4<br> [0x80000a80]:sd t6, 192(sp)<br>     |
|  44|[0x800034c0]<br>0x1FFF40065E0000DE|- rs2_w1_val == 33554432<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                  |[0x80000ab4]:KMATT32 t6, t5, t4<br> [0x80000ab8]:sd t6, 208(sp)<br>     |
|  45|[0x800034d0]<br>0x1FFF4006DE0000DE|- rs2_w1_val == 16777216<br> - rs1_w1_val == 128<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                  |[0x80000adc]:KMATT32 t6, t5, t4<br> [0x80000ae0]:sd t6, 224(sp)<br>     |
|  46|[0x800034e0]<br>0x1FFF400EDE0000DE|- rs2_w1_val == 8388608<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                         |[0x80000b10]:KMATT32 t6, t5, t4<br> [0x80000b14]:sd t6, 240(sp)<br>     |
|  47|[0x800034f0]<br>0x1FFF400EE60000DE|- rs2_w1_val == 4194304<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                           |[0x80000b38]:KMATT32 t6, t5, t4<br> [0x80000b3c]:sd t6, 256(sp)<br>     |
|  48|[0x80003500]<br>0x1FF7400EE60000DE|- rs2_w1_val == 2097152<br> - rs2_w0_val == 1<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                    |[0x80000b5c]:KMATT32 t6, t5, t4<br> [0x80000b60]:sd t6, 272(sp)<br>     |
|  49|[0x80003510]<br>0x1FF74012E60000DE|- rs2_w1_val == 1048576<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                |[0x80000b90]:KMATT32 t6, t5, t4<br> [0x80000b94]:sd t6, 288(sp)<br>     |
|  50|[0x80003520]<br>0x1FF78012E60000DE|- rs2_w1_val == 524288<br> - rs2_w0_val == -1025<br>                                                                                                                                                                                                                                                                                         |[0x80000bb8]:KMATT32 t6, t5, t4<br> [0x80000bbc]:sd t6, 304(sp)<br>     |
|  51|[0x80003530]<br>0x1FF7C012E60000DE|- rs2_w1_val == 262144<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                            |[0x80000be4]:KMATT32 t6, t5, t4<br> [0x80000be8]:sd t6, 320(sp)<br>     |
|  52|[0x80003540]<br>0x1FF7BE12E5FE00DE|- rs2_w1_val == 131072<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                      |[0x80000c14]:KMATT32 t6, t5, t4<br> [0x80000c18]:sd t6, 336(sp)<br>     |
|  53|[0x80003550]<br>0x1FF7BE12E5FE00D8|- rs2_w1_val == 2<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -3<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                    |[0x80000c38]:KMATT32 t6, t5, t4<br> [0x80000c3c]:sd t6, 352(sp)<br>     |
|  54|[0x80003560]<br>0x1FF7BE12E5FE00D8|- rs2_w0_val == 1024<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                            |[0x80000c58]:KMATT32 t6, t5, t4<br> [0x80000c5c]:sd t6, 368(sp)<br>     |
|  55|[0x80003570]<br>0x1FF7BE133B53562D|- rs2_w0_val == -8193<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                         |[0x80000c88]:KMATT32 t6, t5, t4<br> [0x80000c8c]:sd t6, 384(sp)<br>     |
|  56|[0x80003580]<br>0x1FF7CE133B53562D|- rs1_w1_val == 2097152<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                       |[0x80000cb0]:KMATT32 t6, t5, t4<br> [0x80000cb4]:sd t6, 400(sp)<br>     |
|  57|[0x80003590]<br>0x1FF9CE135B63562E|- rs2_w0_val == 16384<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                          |[0x80000ce4]:KMATT32 t6, t5, t4<br> [0x80000ce8]:sd t6, 416(sp)<br>     |
|  58|[0x800035a0]<br>0x1FF9CE177B63564F|- rs1_w1_val == -33<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x80000d10]:KMATT32 t6, t5, t4<br> [0x80000d14]:sd t6, 432(sp)<br>     |
|  59|[0x800035b0]<br>0x1FF9CE177B631E4F|- rs2_w1_val == 2048<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                            |[0x80000d34]:KMATT32 t6, t5, t4<br> [0x80000d38]:sd t6, 448(sp)<br>     |
|  60|[0x800035c0]<br>0x1FF9CE177B631F0F|- rs2_w0_val == 2147483647<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                        |[0x80000d58]:KMATT32 t6, t5, t4<br> [0x80000d5c]:sd t6, 464(sp)<br>     |
|  61|[0x800035d0]<br>0x1FF9CD977B5B1F0F|- rs2_w0_val == -513<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                    |[0x80000d7c]:KMATT32 t6, t5, t4<br> [0x80000d80]:sd t6, 480(sp)<br>     |
|  62|[0x800035e0]<br>0x1FF9CD977C5B1F0F|- rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                                  |[0x80000da0]:KMATT32 t6, t5, t4<br> [0x80000da4]:sd t6, 496(sp)<br>     |
|  63|[0x800035f0]<br>0x1FFA4D977C5A1F0F|- rs2_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                    |[0x80000dcc]:KMATT32 t6, t5, t4<br> [0x80000dd0]:sd t6, 512(sp)<br>     |
|  64|[0x80003600]<br>0x1FFA4E177C5A1F0F|- rs2_w1_val == 32768<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                       |[0x80000df8]:KMATT32 t6, t5, t4<br> [0x80000dfc]:sd t6, 528(sp)<br>     |
|  65|[0x80003610]<br>0x1FFA4E177C19DF0F|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x80000e18]:KMATT32 t6, t5, t4<br> [0x80000e1c]:sd t6, 544(sp)<br>     |
|  66|[0x80003620]<br>0x1FFA4E177A19BF0F|- rs2_w1_val == 8192<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == -4097<br>                                                                                                                                                                                                                                                              |[0x80000e40]:KMATT32 t6, t5, t4<br> [0x80000e44]:sd t6, 560(sp)<br>     |
|  67|[0x80003630]<br>0x1FFA4E16FA19AF0F|- rs2_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x80000e6c]:KMATT32 t6, t5, t4<br> [0x80000e70]:sd t6, 576(sp)<br>     |
|  68|[0x80003640]<br>0x1FFA4E18FA19AF0F|- rs2_w1_val == 1024<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                              |[0x80000e94]:KMATT32 t6, t5, t4<br> [0x80000e98]:sd t6, 592(sp)<br>     |
|  69|[0x80003650]<br>0x1FFA4E18FA19A70F|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x80000eb8]:KMATT32 t6, t5, t4<br> [0x80000ebc]:sd t6, 608(sp)<br>     |
|  70|[0x80003660]<br>0x1FFA4E18FA21A70F|- rs2_w1_val == 256<br> - rs2_w0_val == -17<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                     |[0x80000edc]:KMATT32 t6, t5, t4<br> [0x80000ee0]:sd t6, 624(sp)<br>     |
|  71|[0x80003670]<br>0x1FFA4E18FA21C70F|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                      |[0x80000f08]:KMATT32 t6, t5, t4<br> [0x80000f0c]:sd t6, 640(sp)<br>     |
|  72|[0x80003680]<br>0x1FFA4E18FA21C80F|- rs2_w1_val == 32<br> - rs2_w0_val == -9<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                 |[0x80000f30]:KMATT32 t6, t5, t4<br> [0x80000f34]:sd t6, 656(sp)<br>     |
|  73|[0x80003690]<br>0x1FFA4E18FA21C7DF|- rs2_w1_val == 16<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                               |[0x80000f50]:KMATT32 t6, t5, t4<br> [0x80000f54]:sd t6, 672(sp)<br>     |
|  74|[0x800036a0]<br>0x1FFA4E18FA21CBDF|- rs2_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x80000f6c]:KMATT32 t6, t5, t4<br> [0x80000f70]:sd t6, 688(sp)<br>     |
|  75|[0x800036b0]<br>0x1FFA4E18FA21CC1F|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                        |[0x80000f8c]:KMATT32 t6, t5, t4<br> [0x80000f90]:sd t6, 704(sp)<br>     |
|  76|[0x800036c0]<br>0x1FFA4E18FAA1CC1F|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000fb4]:KMATT32 t6, t5, t4<br> [0x80000fb8]:sd t6, 720(sp)<br>     |
|  77|[0x800036d0]<br>0x1FFA4E18FAA1CC0F|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000fd4]:KMATT32 t6, t5, t4<br> [0x80000fd8]:sd t6, 736(sp)<br>     |
|  78|[0x800036e0]<br>0x1FFA4E18FAA1CC51|- rs2_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                              |[0x80000ff8]:KMATT32 t6, t5, t4<br> [0x80000ffc]:sd t6, 752(sp)<br>     |
|  79|[0x800036f0]<br>0x1FFA4E18FA81C451|- rs2_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                               |[0x80001024]:KMATT32 t6, t5, t4<br> [0x80001028]:sd t6, 768(sp)<br>     |
|  80|[0x80003700]<br>0x1FFA4E190A81C451|- rs2_w0_val == -268435457<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                      |[0x8000104c]:KMATT32 t6, t5, t4<br> [0x80001050]:sd t6, 784(sp)<br>     |
|  81|[0x80003710]<br>0x1FFA4E190C81C451|- rs2_w0_val == -134217729<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                  |[0x80001078]:KMATT32 t6, t5, t4<br> [0x8000107c]:sd t6, 800(sp)<br>     |
|  82|[0x80003720]<br>0x1FFA4E190C81C051|- rs2_w0_val == -67108865<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                        |[0x8000109c]:KMATT32 t6, t5, t4<br> [0x800010a0]:sd t6, 816(sp)<br>     |
|  83|[0x80003730]<br>0x1FFA4A190C81A051|- rs2_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                |[0x800010c8]:KMATT32 t6, t5, t4<br> [0x800010cc]:sd t6, 832(sp)<br>     |
|  84|[0x80003740]<br>0x1FFA4E190C81A051|- rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                                |[0x800010f8]:KMATT32 t6, t5, t4<br> [0x800010fc]:sd t6, 848(sp)<br>     |
|  85|[0x80003750]<br>0x1FFA4E150B81A051|- rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                 |[0x80001124]:KMATT32 t6, t5, t4<br> [0x80001128]:sd t6, 864(sp)<br>     |
|  86|[0x80003760]<br>0x1FFA4E350B93A052|- rs2_w0_val == -1048577<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                         |[0x80001154]:KMATT32 t6, t5, t4<br> [0x80001158]:sd t6, 880(sp)<br>     |
|  87|[0x80003770]<br>0x1FFA4E350B93A07A|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                   |[0x8000117c]:KMATT32 t6, t5, t4<br> [0x80001180]:sd t6, 896(sp)<br>     |
|  88|[0x80003780]<br>0x1FFA4E350BA3A07A|- rs2_w0_val == 131072<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                         |[0x800011a4]:KMATT32 t6, t5, t4<br> [0x800011a8]:sd t6, 912(sp)<br>     |
|  89|[0x80003790]<br>0x1FFA4DF50B23A07A|- rs2_w0_val == 8192<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                       |[0x800011d0]:KMATT32 t6, t5, t4<br> [0x800011d4]:sd t6, 928(sp)<br>     |
|  90|[0x800037a0]<br>0x1FFA4DF50B6BA07A|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x80001200]:KMATT32 t6, t5, t4<br> [0x80001204]:sd t6, 944(sp)<br>     |
|  91|[0x800037b0]<br>0x1FFA4DF50B6B887A|- rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                      |[0x80001228]:KMATT32 t6, t5, t4<br> [0x8000122c]:sd t6, 960(sp)<br>     |
|  92|[0x800037c0]<br>0x1FFA4DF50B8F8883|- rs2_w0_val == 64<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                              |[0x80001250]:KMATT32 t6, t5, t4<br> [0x80001254]:sd t6, 976(sp)<br>     |
|  93|[0x800037d0]<br>0x20024DF54B8F8883|- rs2_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x8000127c]:KMATT32 t6, t5, t4<br> [0x80001280]:sd t6, 992(sp)<br>     |
|  94|[0x800037e0]<br>0x20024DF4AB8F887E|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                        |[0x800012a4]:KMATT32 t6, t5, t4<br> [0x800012a8]:sd t6, 1008(sp)<br>    |
|  95|[0x800037f0]<br>0x20024DECAB8D887E|- rs2_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x800012cc]:KMATT32 t6, t5, t4<br> [0x800012d0]:sd t6, 1024(sp)<br>    |
|  96|[0x80003800]<br>0x3557A34280E2DDD4|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                                                                                              |[0x80001300]:KMATT32 t6, t5, t4<br> [0x80001304]:sd t6, 1040(sp)<br>    |
|  97|[0x80003810]<br>0x3557A3412B8D8880|- rs1_w1_val == 1431655765<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                      |[0x80001328]:KMATT32 t6, t5, t4<br> [0x8000132c]:sd t6, 1056(sp)<br>    |
|  98|[0x80003820]<br>0x3657A341538D8881|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                                                                               |[0x8000135c]:KMATT32 t6, t5, t4<br> [0x80001360]:sd t6, 1072(sp)<br>    |
|  99|[0x80003830]<br>0x3657A541558E8882|- rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                                                                                                |[0x8000138c]:KMATT32 t6, t5, t4<br> [0x80001390]:sd t6, 1088(sp)<br>    |
| 100|[0x80003840]<br>0x3657A541598E888A|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                                 |[0x800013b0]:KMATT32 t6, t5, t4<br> [0x800013b4]:sd t6, 1104(sp)<br>    |
| 101|[0x80003850]<br>0x36572541578E888A|- rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                                                 |[0x800013d4]:KMATT32 t6, t5, t4<br> [0x800013d8]:sd t6, 1120(sp)<br>    |
| 102|[0x80003860]<br>0x36572541178E868A|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                                 |[0x800013fc]:KMATT32 t6, t5, t4<br> [0x80001400]:sd t6, 1136(sp)<br>    |
| 103|[0x80003870]<br>0x36572341158E868A|- rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                                   |[0x8000142c]:KMATT32 t6, t5, t4<br> [0x80001430]:sd t6, 1152(sp)<br>    |
| 104|[0x80003880]<br>0x36572341118E7E8A|- rs1_w1_val == -32769<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                     |[0x80001460]:KMATT32 t6, t5, t4<br> [0x80001464]:sd t6, 1168(sp)<br>    |
| 105|[0x80003890]<br>0x3657235111CEBE8B|- rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                                                   |[0x8000148c]:KMATT32 t6, t5, t4<br> [0x80001490]:sd t6, 1184(sp)<br>    |
| 106|[0x800038a0]<br>0x365722D10DCEBE8B|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                    |[0x800014bc]:KMATT32 t6, t5, t4<br> [0x800014c0]:sd t6, 1200(sp)<br>    |
| 107|[0x800038b0]<br>0x365722D00DAEBE8B|- rs1_w1_val == -2049<br>                                                                                                                                                                                                                                                                                                                    |[0x800014e0]:KMATT32 t6, t5, t4<br> [0x800014e4]:sd t6, 1216(sp)<br>    |
| 108|[0x800038c0]<br>0x365723102DAEC08C|- rs1_w1_val == -513<br>                                                                                                                                                                                                                                                                                                                     |[0x80001508]:KMATT32 t6, t5, t4<br> [0x8000150c]:sd t6, 1232(sp)<br>    |
| 109|[0x800038d0]<br>0x365723102DAF018D|- rs1_w1_val == -129<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                      |[0x8000152c]:KMATT32 t6, t5, t4<br> [0x80001530]:sd t6, 1248(sp)<br>    |
| 110|[0x800038e0]<br>0x365723102DAF120E|- rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                                                                      |[0x80001554]:KMATT32 t6, t5, t4<br> [0x80001558]:sd t6, 1264(sp)<br>    |
| 111|[0x800038f0]<br>0x3657230FED6F120E|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                  |[0x8000157c]:KMATT32 t6, t5, t4<br> [0x80001580]:sd t6, 1280(sp)<br>    |
| 112|[0x80003900]<br>0x3657630FED6F120E|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                                  |[0x800015a8]:KMATT32 t6, t5, t4<br> [0x800015ac]:sd t6, 1296(sp)<br>    |
| 113|[0x80003910]<br>0x36575B0FED6E920E|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                    |[0x800015dc]:KMATT32 t6, t5, t4<br> [0x800015e0]:sd t6, 1312(sp)<br>    |
| 114|[0x80003920]<br>0x36575B0BEB6E920E|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                 |[0x80001604]:KMATT32 t6, t5, t4<br> [0x80001608]:sd t6, 1328(sp)<br>    |
| 115|[0x80003930]<br>0x36575B0B6B6E920C|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x8000162c]:KMATT32 t6, t5, t4<br> [0x80001630]:sd t6, 1344(sp)<br>    |
| 116|[0x80003950]<br>0x36575B0B776E9212|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                              |[0x80001680]:KMATT32 t6, t5, t4<br> [0x80001684]:sd t6, 1376(sp)<br>    |
| 117|[0x80003960]<br>0x16575B0B776E9212|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                               |[0x800016ac]:KMATT32 t6, t5, t4<br> [0x800016b0]:sd t6, 1392(sp)<br>    |
| 118|[0x80003970]<br>0x16575B09CCC3E769|- rs1_w1_val == -5<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                         |[0x800016d8]:KMATT32 t6, t5, t4<br> [0x800016dc]:sd t6, 1408(sp)<br>    |
| 119|[0x80003980]<br>0x16575B09C8C3E669|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                 |[0x80001708]:KMATT32 t6, t5, t4<br> [0x8000170c]:sd t6, 1424(sp)<br>    |
| 120|[0x80003990]<br>0x16575B09C8C3ED69|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                 |[0x8000172c]:KMATT32 t6, t5, t4<br> [0x80001730]:sd t6, 1440(sp)<br>    |
| 121|[0x800039a0]<br>0x16ACB05F1DC3ED69|- rs2_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                   |[0x80001760]:KMATT32 t6, t5, t4<br> [0x80001764]:sd t6, 1456(sp)<br>    |
| 122|[0x800039b0]<br>0x169CB05EFDC3ED69|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                |[0x8000178c]:KMATT32 t6, t5, t4<br> [0x80001790]:sd t6, 1472(sp)<br>    |
| 123|[0x800039c0]<br>0x169CB45EFE03ED6A|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                 |[0x800017bc]:KMATT32 t6, t5, t4<br> [0x800017c0]:sd t6, 1488(sp)<br>    |
| 124|[0x800039d0]<br>0x169CB45EFE03F16A|- rs2_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                                    |[0x800017e4]:KMATT32 t6, t5, t4<br> [0x800017e8]:sd t6, 1504(sp)<br>    |
| 125|[0x800039e0]<br>0x169CB45EFDFBE96A|- rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                                                  |[0x8000180c]:KMATT32 t6, t5, t4<br> [0x80001810]:sd t6, 1520(sp)<br>    |
| 126|[0x800039f0]<br>0x169EB45EFDFBE96A|- rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                  |[0x80001840]:KMATT32 t6, t5, t4<br> [0x80001844]:sd t6, 1536(sp)<br>    |
| 127|[0x80003a00]<br>0x169EB4601DFBE973|- rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                     |[0x8000186c]:KMATT32 t6, t5, t4<br> [0x80001870]:sd t6, 1552(sp)<br>    |
| 128|[0x80003a10]<br>0x169EB4601DE7E96E|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                   |[0x80001898]:KMATT32 t6, t5, t4<br> [0x8000189c]:sd t6, 1568(sp)<br>    |
| 129|[0x80003a20]<br>0x169EB4601DEFE96E|- rs2_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                       |[0x800018c0]:KMATT32 t6, t5, t4<br> [0x800018c4]:sd t6, 1584(sp)<br>    |
| 130|[0x80003a30]<br>0x169EB45FF9EFE96E|- rs1_w1_val == -9<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                          |[0x800018f0]:KMATT32 t6, t5, t4<br> [0x800018f4]:sd t6, 1600(sp)<br>    |
| 131|[0x80003a40]<br>0x169EB45FF9EFEF74|- rs2_w0_val == 1073741824<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                        |[0x80001910]:KMATT32 t6, t5, t4<br> [0x80001914]:sd t6, 1616(sp)<br>    |
| 132|[0x80003a50]<br>0x169EB46039EFEF74|- rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                                                      |[0x80001940]:KMATT32 t6, t5, t4<br> [0x80001944]:sd t6, 1632(sp)<br>    |
| 133|[0x80003a60]<br>0x169EB46039F0377D|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                 |[0x80001964]:KMATT32 t6, t5, t4<br> [0x80001968]:sd t6, 1648(sp)<br>    |
| 134|[0x80003a70]<br>0x169EB46059F0377D|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                  |[0x80001990]:KMATT32 t6, t5, t4<br> [0x80001994]:sd t6, 1664(sp)<br>    |
| 135|[0x80003a80]<br>0x169EB4605170377D|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                  |[0x800019b8]:KMATT32 t6, t5, t4<br> [0x800019bc]:sd t6, 1680(sp)<br>    |
| 136|[0x80003a90]<br>0x169EC4605170377D|- rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x800019ec]:KMATT32 t6, t5, t4<br> [0x800019f0]:sd t6, 1696(sp)<br>    |
| 137|[0x80003aa0]<br>0x1A9EC4604970377D|- rs1_w0_val == -2147483648<br> - rs2_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                |[0x80001a18]:KMATT32 t6, t5, t4<br> [0x80001a1c]:sd t6, 1712(sp)<br>    |
