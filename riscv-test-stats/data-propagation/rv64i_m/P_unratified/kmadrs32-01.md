
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a80')]      |
| SIG_REGION                | [('0x80003210', '0x80003ad0', '280 dwords')]      |
| COV_LABELS                | kmadrs32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmadrs32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 280      |
| STAT1                     | 136      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 140     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010fc]:KMADRS32 t6, t5, t4
      [0x80001100]:sd t6, 1008(ra)
 -- Signature Address: 0x80003710 Data: 0xEE8F616CD771CEF3
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 8388608
      - rs1_w0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000158c]:KMADRS32 t6, t5, t4
      [0x80001590]:sd t6, 1456(ra)
 -- Signature Address: 0x800038d0 Data: 0x07ACB4E58C15C619
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 8
      - rs1_w1_val == 8
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015fc]:KMADRS32 t6, t5, t4
      [0x80001600]:sd t6, 1504(ra)
 -- Signature Address: 0x80003900 Data: 0x07ACB265BA0D871B
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == -8193
      - rs2_w0_val == -4194305
      - rs1_w1_val == 0
      - rs1_w0_val == 524288




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a08]:KMADRS32 t6, t5, t4
      [0x80001a0c]:sd t6, 1920(ra)
 -- Signature Address: 0x80003aa0 Data: 0x2DE1E718E2C4D753
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 8192
      - rs2_w0_val == 262144
      - rs1_w1_val == 8192
      - rs1_w0_val == -2049






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmadrs32', 'rs1 : x1', 'rs2 : x1', 'rd : x19', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 8', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800003bc]:KMADRS32 s3, ra, ra
	-[0x800003c0]:sd s3, 0(s1)
Current Store : [0x800003c4] : sd ra, 8(s1) -- Store: [0x80003218]:0x00000008FFFFFFF8




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 8192', 'rs2_w0_val == 262144', 'rs1_w1_val == 8192', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800003ec]:KMADRS32 a4, a4, a4
	-[0x800003f0]:sd a4, 16(s1)
Current Store : [0x800003f4] : sd a4, 24(s1) -- Store: [0x80003228]:0x0000200FFC040000




Last Coverpoint : ['rs1 : x26', 'rs2 : x21', 'rd : x17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == -2097153', 'rs2_w0_val == 536870912', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000414]:KMADRS32 a7, s10, s5
	-[0x80000418]:sd a7, 32(s1)
Current Store : [0x8000041c] : sd s10, 40(s1) -- Store: [0x80003238]:0xFEFFFFFF00000005




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x13', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -5', 'rs2_w0_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000430]:KMADRS32 a3, a3, tp
	-[0x80000434]:sd a3, 48(s1)
Current Store : [0x80000438] : sd a3, 56(s1) -- Store: [0x80003248]:0x000000060000001E




Last Coverpoint : ['rs1 : x12', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_w1_val == 0', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000458]:KMADRS32 zero, a2, zero
	-[0x8000045c]:sd zero, 64(s1)
Current Store : [0x80000460] : sd a2, 72(s1) -- Store: [0x80003258]:0xFFFFFFFB3FFFFFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x22', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == 16', 'rs1_w1_val == 16384', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000484]:KMADRS32 s6, t1, t2
	-[0x80000488]:sd s6, 80(s1)
Current Store : [0x8000048c] : sd t1, 88(s1) -- Store: [0x80003268]:0x00004000EFFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x12', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -2', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800004b0]:KMADRS32 a2, t3, t0
	-[0x800004b4]:sd a2, 96(s1)
Current Store : [0x800004b8] : sd t3, 104(s1) -- Store: [0x80003278]:0x40000000FFFFFFF9




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rd : x20', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -65537', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004d8]:KMADRS32 s4, s6, gp
	-[0x800004dc]:sd s4, 112(s1)
Current Store : [0x800004e0] : sd s6, 120(s1) -- Store: [0x80003288]:0x0000000602000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x27', 'rd : x25', 'rs2_w1_val == -1073741825', 'rs1_w1_val == 32768', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000508]:KMADRS32 s9, sp, s11
	-[0x8000050c]:sd s9, 128(s1)
Current Store : [0x80000510] : sd sp, 136(s1) -- Store: [0x80003298]:0x00008000FFFFFBFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x10', 'rs2_w1_val == -536870913', 'rs2_w0_val == 512', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000530]:KMADRS32 a0, s8, a2
	-[0x80000534]:sd a0, 144(s1)
Current Store : [0x80000538] : sd s8, 152(s1) -- Store: [0x800032a8]:0xFFBFFFFF00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x5', 'rs2_w1_val == -268435457', 'rs2_w0_val == -33554433', 'rs1_w1_val == -33', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000560]:KMADRS32 t0, a1, s6
	-[0x80000564]:sd t0, 160(s1)
Current Store : [0x80000568] : sd a1, 168(s1) -- Store: [0x800032b8]:0xFFFFFFDFFDFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x23', 'rs2_w1_val == -134217729', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000590]:KMADRS32 s7, fp, s3
	-[0x80000594]:sd s7, 176(s1)
Current Store : [0x80000598] : sd fp, 184(s1) -- Store: [0x800032c8]:0xFFBFFFFFFFFFBFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x1', 'rs2_w1_val == -67108865', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800005bc]:KMADRS32 ra, a6, s10
	-[0x800005c0]:sd ra, 192(s1)
Current Store : [0x800005c4] : sd a6, 200(s1) -- Store: [0x800032d8]:0x00008000FFFFFF7F




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x24', 'rs2_w1_val == -33554433', 'rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800005e4]:KMADRS32 s8, gp, s7
	-[0x800005e8]:sd s8, 208(s1)
Current Store : [0x800005ec] : sd gp, 216(s1) -- Store: [0x800032e8]:0xFFFFFFF8FFFFFFFC




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x26', 'rs2_w1_val == -16777217', 'rs2_w0_val == 33554432', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000610]:KMADRS32 s10, s4, t5
	-[0x80000614]:sd s10, 224(s1)
Current Store : [0x80000618] : sd s4, 232(s1) -- Store: [0x800032f8]:0x00800000EFFFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x2', 'rd : x6', 'rs2_w1_val == -8388609', 'rs2_w0_val == 4', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000638]:KMADRS32 t1, a7, sp
	-[0x8000063c]:sd t1, 240(s1)
Current Store : [0x80000640] : sd a7, 248(s1) -- Store: [0x80003308]:0x0000010000000006




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x7', 'rs2_w1_val == -4194305', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000660]:KMADRS32 t2, a5, t3
	-[0x80000664]:sd t2, 256(s1)
Current Store : [0x80000668] : sd a5, 264(s1) -- Store: [0x80003318]:0xFFFFFFF8C0000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x3', 'rs2_w1_val == -1048577', 'rs2_w0_val == -8388609', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000690]:KMADRS32 gp, s2, s9
	-[0x80000694]:sd gp, 0(ra)
Current Store : [0x80000698] : sd s2, 8(ra) -- Store: [0x80003328]:0xFFFFFFF600400000




Last Coverpoint : ['rs1 : x19', 'rs2 : x9', 'rd : x31', 'rs2_w1_val == -524289', 'rs2_w0_val == -129', 'rs1_w1_val == 262144', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800006b4]:KMADRS32 t6, s3, s1
	-[0x800006b8]:sd t6, 16(ra)
Current Store : [0x800006bc] : sd s3, 24(ra) -- Store: [0x80003338]:0x0004000010000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x27', 'rs2_w1_val == -262145', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800006ec]:KMADRS32 s11, zero, a1
	-[0x800006f0]:sd s11, 32(ra)
Current Store : [0x800006f4] : sd zero, 40(ra) -- Store: [0x80003348]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x21', 'rs2_w1_val == -131073', 'rs2_w0_val == 128', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000718]:KMADRS32 s5, s7, t1
	-[0x8000071c]:sd s5, 48(ra)
Current Store : [0x80000720] : sd s7, 56(ra) -- Store: [0x80003358]:0x00004000FF7FFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rd : x16', 'rs2_w1_val == -65537', 'rs2_w0_val == -4097', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000744]:KMADRS32 a6, t5, a5
	-[0x80000748]:sd a6, 64(ra)
Current Store : [0x8000074c] : sd t5, 72(ra) -- Store: [0x80003368]:0x0004000000000400




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x8', 'rs2_w1_val == -32769', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x8000076c]:KMADRS32 fp, a0, a6
	-[0x80000770]:sd fp, 80(ra)
Current Store : [0x80000774] : sd a0, 88(ra) -- Store: [0x80003378]:0xFFEFFFFF00400000




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x30', 'rs2_w1_val == -16385', 'rs2_w0_val == -5', 'rs1_w1_val == -1', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x8000078c]:KMADRS32 t5, t0, a3
	-[0x80000790]:sd t5, 96(ra)
Current Store : [0x80000794] : sd t0, 104(ra) -- Store: [0x80003388]:0xFFFFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x29', 'rd : x15', 'rs2_w1_val == -8193', 'rs2_w0_val == 64', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800007b4]:KMADRS32 a5, t2, t4
	-[0x800007b8]:sd a5, 112(ra)
Current Store : [0x800007bc] : sd t2, 120(ra) -- Store: [0x80003398]:0x00000005FFFFFFBF




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x11', 'rs2_w1_val == -4097', 'rs2_w0_val == -257', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800007dc]:KMADRS32 a1, t4, a0
	-[0x800007e0]:sd a1, 128(ra)
Current Store : [0x800007e4] : sd t4, 136(ra) -- Store: [0x800033a8]:0xFFDFFFFF3FFFFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x29', 'rs2_w1_val == -2049', 'rs1_w1_val == -2049', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000804]:KMADRS32 t4, s9, s4
	-[0x80000808]:sd t4, 144(ra)
Current Store : [0x8000080c] : sd s9, 152(ra) -- Store: [0x800033b8]:0xFFFFF7FFFFFF7FFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x28', 'rs2_w1_val == -1025', 'rs1_w1_val == 16777216', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000830]:KMADRS32 t3, tp, a7
	-[0x80000834]:sd t3, 160(ra)
Current Store : [0x80000838] : sd tp, 168(ra) -- Store: [0x800033c8]:0x0100000000000800




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rd : x2', 'rs2_w1_val == -513', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 4096', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000085c]:KMADRS32 sp, s11, t6
	-[0x80000860]:sd sp, 176(ra)
Current Store : [0x80000864] : sd s11, 184(ra) -- Store: [0x800033d8]:0x00001000FFFFFFFE




Last Coverpoint : ['rs1 : x21', 'rs2 : x8', 'rd : x9', 'rs2_w1_val == -257', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -4097', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000880]:KMADRS32 s1, s5, fp
	-[0x80000884]:sd s1, 192(ra)
Current Store : [0x80000888] : sd s5, 200(ra) -- Store: [0x800033e8]:0xFFFFEFFF08000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rd : x4', 'rs2_w1_val == -129']
Last Code Sequence : 
	-[0x800008a8]:KMADRS32 tp, s1, s2
	-[0x800008ac]:sd tp, 208(ra)
Current Store : [0x800008b0] : sd s1, 216(ra) -- Store: [0x800033f8]:0x0000000900000006




Last Coverpoint : ['rs1 : x31', 'rs2 : x24', 'rd : x18', 'rs2_w1_val == -65', 'rs2_w0_val == 8388608', 'rs1_w1_val == -8193', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800008cc]:KMADRS32 s2, t6, s8
	-[0x800008d0]:sd s2, 224(ra)
Current Store : [0x800008d4] : sd t6, 232(ra) -- Store: [0x80003408]:0xFFFFDFFF00080000




Last Coverpoint : ['rs2_w1_val == -33']
Last Code Sequence : 
	-[0x800008ec]:KMADRS32 t6, t5, t4
	-[0x800008f0]:sd t6, 240(ra)
Current Store : [0x800008f4] : sd t5, 248(ra) -- Store: [0x80003418]:0xFFFFFFF900000000




Last Coverpoint : ['rs2_w1_val == -17']
Last Code Sequence : 
	-[0x80000914]:KMADRS32 t6, t5, t4
	-[0x80000918]:sd t6, 256(ra)
Current Store : [0x8000091c] : sd t5, 264(ra) -- Store: [0x80003428]:0xFFFFFFFF00000006




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == 65536', 'rs1_w1_val == 512', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000093c]:KMADRS32 t6, t5, t4
	-[0x80000940]:sd t6, 272(ra)
Current Store : [0x80000944] : sd t5, 280(ra) -- Store: [0x80003438]:0x00000200FFFFDFFF




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == -67108865', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000968]:KMADRS32 t6, t5, t4
	-[0x8000096c]:sd t6, 288(ra)
Current Store : [0x80000970] : sd t5, 296(ra) -- Store: [0x80003448]:0x7FFFFFFF7FFFFFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs1_w1_val == -524289', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000990]:KMADRS32 t6, t5, t4
	-[0x80000994]:sd t6, 304(ra)
Current Store : [0x80000998] : sd t5, 312(ra) -- Store: [0x80003458]:0xFFF7FFFF00000080




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x800009cc]:KMADRS32 t6, t5, t4
	-[0x800009d0]:sd t6, 320(ra)
Current Store : [0x800009d4] : sd t5, 328(ra) -- Store: [0x80003468]:0xDFFFFFFF00040000




Last Coverpoint : ['rs1_w1_val < 0 and rs2_w1_val > 0', 'rs2_w1_val == 1073741824', 'rs1_w1_val == -8388609', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a04]:KMADRS32 t6, t5, t4
	-[0x80000a08]:sd t6, 336(ra)
Current Store : [0x80000a0c] : sd t5, 344(ra) -- Store: [0x80003478]:0xFF7FFFFF55555555




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w1_val == 33554432', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000a2c]:KMADRS32 t6, t5, t4
	-[0x80000a30]:sd t6, 352(ra)
Current Store : [0x80000a34] : sd t5, 360(ra) -- Store: [0x80003488]:0x0200000000000100




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000a64]:KMADRS32 t6, t5, t4
	-[0x80000a68]:sd t6, 368(ra)
Current Store : [0x80000a6c] : sd t5, 376(ra) -- Store: [0x80003498]:0x00080000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -4194305', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000a90]:KMADRS32 t6, t5, t4
	-[0x80000a94]:sd t6, 384(ra)
Current Store : [0x80000a98] : sd t5, 392(ra) -- Store: [0x800034a8]:0x000000807FFFFFFF




Last Coverpoint : ['rs2_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000ac4]:KMADRS32 t6, t5, t4
	-[0x80000ac8]:sd t6, 400(ra)
Current Store : [0x80000acc] : sd t5, 408(ra) -- Store: [0x800034b8]:0xDFFFFFFF00400000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 2097152', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000b00]:KMADRS32 t6, t5, t4
	-[0x80000b04]:sd t6, 416(ra)
Current Store : [0x80000b08] : sd t5, 424(ra) -- Store: [0x800034c8]:0x00200000FFBFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == -9', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80000b34]:KMADRS32 t6, t5, t4
	-[0x80000b38]:sd t6, 432(ra)
Current Store : [0x80000b3c] : sd t5, 440(ra) -- Store: [0x800034d8]:0xAAAAAAAAF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == -9', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000b5c]:KMADRS32 t6, t5, t4
	-[0x80000b60]:sd t6, 448(ra)
Current Store : [0x80000b64] : sd t5, 456(ra) -- Store: [0x800034e8]:0xFFFFFFF700008000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000b88]:KMADRS32 t6, t5, t4
	-[0x80000b8c]:sd t6, 464(ra)
Current Store : [0x80000b90] : sd t5, 472(ra) -- Store: [0x800034f8]:0x2000000000008000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == 1', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000bb0]:KMADRS32 t6, t5, t4
	-[0x80000bb4]:sd t6, 480(ra)
Current Store : [0x80000bb8] : sd t5, 488(ra) -- Store: [0x80003508]:0x0000000100000010




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -3', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000bdc]:KMADRS32 t6, t5, t4
	-[0x80000be0]:sd t6, 496(ra)
Current Store : [0x80000be4] : sd t5, 504(ra) -- Store: [0x80003518]:0x00010000FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 2147483647', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000c04]:KMADRS32 t6, t5, t4
	-[0x80000c08]:sd t6, 512(ra)
Current Store : [0x80000c0c] : sd t5, 520(ra) -- Store: [0x80003528]:0xFF7FFFFFFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == -8193', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000c34]:KMADRS32 t6, t5, t4
	-[0x80000c38]:sd t6, 528(ra)
Current Store : [0x80000c3c] : sd t5, 536(ra) -- Store: [0x80003538]:0xFFFFFFBF00000009




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == -2049', 'rs1_w1_val == -129', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c5c]:KMADRS32 t6, t5, t4
	-[0x80000c60]:sd t6, 544(ra)
Current Store : [0x80000c64] : sd t5, 552(ra) -- Store: [0x80003548]:0xFFFFFF7F01000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c90]:KMADRS32 t6, t5, t4
	-[0x80000c94]:sd t6, 560(ra)
Current Store : [0x80000c98] : sd t5, 568(ra) -- Store: [0x80003558]:0x0000000900800000




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000cbc]:KMADRS32 t6, t5, t4
	-[0x80000cc0]:sd t6, 576(ra)
Current Store : [0x80000cc4] : sd t5, 584(ra) -- Store: [0x80003568]:0xFFFFFDFF00200000




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000ce8]:KMADRS32 t6, t5, t4
	-[0x80000cec]:sd t6, 592(ra)
Current Store : [0x80000cf0] : sd t5, 600(ra) -- Store: [0x80003578]:0x0000000700100000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == -2097153', 'rs1_w1_val == -2', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000d10]:KMADRS32 t6, t5, t4
	-[0x80000d14]:sd t6, 608(ra)
Current Store : [0x80000d18] : sd t5, 616(ra) -- Store: [0x80003588]:0xFFFFFFFE00020000




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == -262145', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000d40]:KMADRS32 t6, t5, t4
	-[0x80000d44]:sd t6, 624(ra)
Current Store : [0x80000d48] : sd t5, 632(ra) -- Store: [0x80003598]:0xFFDFFFFF00010000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == -257', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000d70]:KMADRS32 t6, t5, t4
	-[0x80000d74]:sd t6, 640(ra)
Current Store : [0x80000d78] : sd t5, 648(ra) -- Store: [0x800035a8]:0xFFFFFEFF00004000




Last Coverpoint : ['rs1_w1_val == -131073', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000da0]:KMADRS32 t6, t5, t4
	-[0x80000da4]:sd t6, 656(ra)
Current Store : [0x80000da8] : sd t5, 664(ra) -- Store: [0x800035b8]:0xFFFDFFFF00002000




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000dd0]:KMADRS32 t6, t5, t4
	-[0x80000dd4]:sd t6, 672(ra)
Current Store : [0x80000dd8] : sd t5, 680(ra) -- Store: [0x800035c8]:0xFFFFF7FF00001000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000df8]:KMADRS32 t6, t5, t4
	-[0x80000dfc]:sd t6, 688(ra)
Current Store : [0x80000e00] : sd t5, 696(ra) -- Store: [0x800035d8]:0x0004000000000200




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w1_val == 2048', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e1c]:KMADRS32 t6, t5, t4
	-[0x80000e20]:sd t6, 704(ra)
Current Store : [0x80000e24] : sd t5, 712(ra) -- Store: [0x800035e8]:0x0000080000000040




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w1_val == 268435456', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000e40]:KMADRS32 t6, t5, t4
	-[0x80000e44]:sd t6, 720(ra)
Current Store : [0x80000e48] : sd t5, 728(ra) -- Store: [0x800035f8]:0x1000000000000020




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e68]:KMADRS32 t6, t5, t4
	-[0x80000e6c]:sd t6, 736(ra)
Current Store : [0x80000e70] : sd t5, 744(ra) -- Store: [0x80003608]:0xFFFFFFDF00000008




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e94]:KMADRS32 t6, t5, t4
	-[0x80000e98]:sd t6, 752(ra)
Current Store : [0x80000e9c] : sd t5, 760(ra) -- Store: [0x80003618]:0xFFFFFFFC00000004




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000eb8]:KMADRS32 t6, t5, t4
	-[0x80000ebc]:sd t6, 768(ra)
Current Store : [0x80000ec0] : sd t5, 776(ra) -- Store: [0x80003628]:0xFFFFFFDF00000002




Last Coverpoint : ['rs1_w1_val == 32', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000edc]:KMADRS32 t6, t5, t4
	-[0x80000ee0]:sd t6, 784(ra)
Current Store : [0x80000ee4] : sd t5, 792(ra) -- Store: [0x80003638]:0x0000002000000001




Last Coverpoint : ['rs1_w1_val == 2', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000f00]:KMADRS32 t6, t5, t4
	-[0x80000f04]:sd t6, 800(ra)
Current Store : [0x80000f08] : sd t5, 808(ra) -- Store: [0x80003648]:0x00000002FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000f24]:KMADRS32 t6, t5, t4
	-[0x80000f28]:sd t6, 816(ra)
Current Store : [0x80000f2c] : sd t5, 824(ra) -- Store: [0x80003658]:0x00000020DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 134217728', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000f4c]:KMADRS32 t6, t5, t4
	-[0x80000f50]:sd t6, 832(ra)
Current Store : [0x80000f54] : sd t5, 840(ra) -- Store: [0x80003668]:0xFFFF7FFFF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000f74]:KMADRS32 t6, t5, t4
	-[0x80000f78]:sd t6, 848(ra)
Current Store : [0x80000f7c] : sd t5, 856(ra) -- Store: [0x80003678]:0xFFFFEFFF00000080




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000f98]:KMADRS32 t6, t5, t4
	-[0x80000f9c]:sd t6, 864(ra)
Current Store : [0x80000fa0] : sd t5, 872(ra) -- Store: [0x80003688]:0xFFFFFFBF00000200




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000fc0]:KMADRS32 t6, t5, t4
	-[0x80000fc4]:sd t6, 880(ra)
Current Store : [0x80000fc8] : sd t5, 888(ra) -- Store: [0x80003698]:0xFFFFFFDFFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80000fe8]:KMADRS32 t6, t5, t4
	-[0x80000fec]:sd t6, 896(ra)
Current Store : [0x80000ff0] : sd t5, 904(ra) -- Store: [0x800036a8]:0xFFFFBFFF00000080




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == -16777217', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80001014]:KMADRS32 t6, t5, t4
	-[0x80001018]:sd t6, 912(ra)
Current Store : [0x8000101c] : sd t5, 920(ra) -- Store: [0x800036b8]:0xFFFEFFFFFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80001038]:KMADRS32 t6, t5, t4
	-[0x8000103c]:sd t6, 928(ra)
Current Store : [0x80001040] : sd t5, 936(ra) -- Store: [0x800036c8]:0x0000000700004000




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80001068]:KMADRS32 t6, t5, t4
	-[0x8000106c]:sd t6, 944(ra)
Current Store : [0x80001070] : sd t5, 952(ra) -- Store: [0x800036d8]:0xFFFF7FFF00004000




Last Coverpoint : ['rs2_w1_val == 32']
Last Code Sequence : 
	-[0x80001090]:KMADRS32 t6, t5, t4
	-[0x80001094]:sd t6, 960(ra)
Current Store : [0x80001098] : sd t5, 968(ra) -- Store: [0x800036e8]:0xFFFFFFF900000020




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 1', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800010bc]:KMADRS32 t6, t5, t4
	-[0x800010c0]:sd t6, 976(ra)
Current Store : [0x800010c4] : sd t5, 984(ra) -- Store: [0x800036f8]:0x7FFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x800010e0]:KMADRS32 t6, t5, t4
	-[0x800010e4]:sd t6, 992(ra)
Current Store : [0x800010e8] : sd t5, 1000(ra) -- Store: [0x80003708]:0xFFFFFF7F02000000




Last Coverpoint : ['opcode : kmadrs32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 8388608', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800010fc]:KMADRS32 t6, t5, t4
	-[0x80001100]:sd t6, 1008(ra)
Current Store : [0x80001104] : sd t5, 1016(ra) -- Store: [0x80003718]:0x0000000700000400




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80001124]:KMADRS32 t6, t5, t4
	-[0x80001128]:sd t6, 1024(ra)
Current Store : [0x8000112c] : sd t5, 1032(ra) -- Store: [0x80003728]:0x00000080F7FFFFFF




Last Coverpoint : ['rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001148]:KMADRS32 t6, t5, t4
	-[0x8000114c]:sd t6, 1040(ra)
Current Store : [0x80001150] : sd t5, 1048(ra) -- Store: [0x80003738]:0xFFFFFEFF00000001




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001174]:KMADRS32 t6, t5, t4
	-[0x80001178]:sd t6, 1056(ra)
Current Store : [0x8000117c] : sd t5, 1064(ra) -- Store: [0x80003748]:0x0040000000000010




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000119c]:KMADRS32 t6, t5, t4
	-[0x800011a0]:sd t6, 1072(ra)
Current Store : [0x800011a4] : sd t5, 1080(ra) -- Store: [0x80003758]:0x0000040000000040




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800011c4]:KMADRS32 t6, t5, t4
	-[0x800011c8]:sd t6, 1088(ra)
Current Store : [0x800011cc] : sd t5, 1096(ra) -- Store: [0x80003768]:0xFFDFFFFF04000000




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800011f0]:KMADRS32 t6, t5, t4
	-[0x800011f4]:sd t6, 1104(ra)
Current Store : [0x800011f8] : sd t5, 1112(ra) -- Store: [0x80003778]:0xFFFFFFF600000020




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80001214]:KMADRS32 t6, t5, t4
	-[0x80001218]:sd t6, 1120(ra)
Current Store : [0x8000121c] : sd t5, 1128(ra) -- Store: [0x80003788]:0x0000200000000002




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000123c]:KMADRS32 t6, t5, t4
	-[0x80001240]:sd t6, 1136(ra)
Current Store : [0x80001244] : sd t5, 1144(ra) -- Store: [0x80003798]:0x0100000000000003




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80001260]:KMADRS32 t6, t5, t4
	-[0x80001264]:sd t6, 1152(ra)
Current Store : [0x80001268] : sd t5, 1160(ra) -- Store: [0x800037a8]:0x4000000000000006




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x8000128c]:KMADRS32 t6, t5, t4
	-[0x80001290]:sd t6, 1168(ra)
Current Store : [0x80001294] : sd t5, 1176(ra) -- Store: [0x800037b8]:0xFFFFFFF7FFFFBFFF




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800012b0]:KMADRS32 t6, t5, t4
	-[0x800012b4]:sd t6, 1184(ra)
Current Store : [0x800012b8] : sd t5, 1192(ra) -- Store: [0x800037c8]:0x00000002FFFFFFF7




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800012dc]:KMADRS32 t6, t5, t4
	-[0x800012e0]:sd t6, 1200(ra)
Current Store : [0x800012e4] : sd t5, 1208(ra) -- Store: [0x800037d8]:0x5555555504000000




Last Coverpoint : ['rs1_w1_val == -1073741825', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001308]:KMADRS32 t6, t5, t4
	-[0x8000130c]:sd t6, 1216(ra)
Current Store : [0x80001310] : sd t5, 1224(ra) -- Store: [0x800037e8]:0xBFFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x8000133c]:KMADRS32 t6, t5, t4
	-[0x80001340]:sd t6, 1232(ra)
Current Store : [0x80001344] : sd t5, 1240(ra) -- Store: [0x800037f8]:0xEFFFFFFF00000400




Last Coverpoint : ['rs1_w1_val == -134217729', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000136c]:KMADRS32 t6, t5, t4
	-[0x80001370]:sd t6, 1248(ra)
Current Store : [0x80001374] : sd t5, 1256(ra) -- Store: [0x80003808]:0xF7FFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001394]:KMADRS32 t6, t5, t4
	-[0x80001398]:sd t6, 1264(ra)
Current Store : [0x8000139c] : sd t5, 1272(ra) -- Store: [0x80003818]:0xFBFFFFFF00200000




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800013c8]:KMADRS32 t6, t5, t4
	-[0x800013cc]:sd t6, 1280(ra)
Current Store : [0x800013d0] : sd t5, 1288(ra) -- Store: [0x80003828]:0xFDFFFFFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == -17', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800013ec]:KMADRS32 t6, t5, t4
	-[0x800013f0]:sd t6, 1296(ra)
Current Store : [0x800013f4] : sd t5, 1304(ra) -- Store: [0x80003838]:0xFFFBFFFFFFFFFBFF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001414]:KMADRS32 t6, t5, t4
	-[0x80001418]:sd t6, 1312(ra)
Current Store : [0x8000141c] : sd t5, 1320(ra) -- Store: [0x80003848]:0xFFFFFBFF00000800




Last Coverpoint : ['rs1_w1_val == -17']
Last Code Sequence : 
	-[0x8000143c]:KMADRS32 t6, t5, t4
	-[0x80001440]:sd t6, 1328(ra)
Current Store : [0x80001444] : sd t5, 1336(ra) -- Store: [0x80003858]:0xFFFFFFEF02000000




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80001468]:KMADRS32 t6, t5, t4
	-[0x8000146c]:sd t6, 1344(ra)
Current Store : [0x80001470] : sd t5, 1352(ra) -- Store: [0x80003868]:0xFFFFFFFD00000800




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x8000149c]:KMADRS32 t6, t5, t4
	-[0x800014a0]:sd t6, 1360(ra)
Current Store : [0x800014a4] : sd t5, 1368(ra) -- Store: [0x80003878]:0x80000000FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x800014c8]:KMADRS32 t6, t5, t4
	-[0x800014cc]:sd t6, 1376(ra)
Current Store : [0x800014d0] : sd t5, 1384(ra) -- Store: [0x80003888]:0x0400000000400000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800014f0]:KMADRS32 t6, t5, t4
	-[0x800014f4]:sd t6, 1392(ra)
Current Store : [0x800014f8] : sd t5, 1400(ra) -- Store: [0x80003898]:0x0010000000000400




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80001518]:KMADRS32 t6, t5, t4
	-[0x8000151c]:sd t6, 1408(ra)
Current Store : [0x80001520] : sd t5, 1416(ra) -- Store: [0x800038a8]:0x0002000000000002




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001540]:KMADRS32 t6, t5, t4
	-[0x80001544]:sd t6, 1424(ra)
Current Store : [0x80001548] : sd t5, 1432(ra) -- Store: [0x800038b8]:0x0000004000000200




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x8000156c]:KMADRS32 t6, t5, t4
	-[0x80001570]:sd t6, 1440(ra)
Current Store : [0x80001574] : sd t5, 1448(ra) -- Store: [0x800038c8]:0x0000001000000800




Last Coverpoint : ['opcode : kmadrs32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == 8', 'rs1_w1_val == 8', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000158c]:KMADRS32 t6, t5, t4
	-[0x80001590]:sd t6, 1456(ra)
Current Store : [0x80001594] : sd t5, 1464(ra) -- Store: [0x800038d8]:0x0000000800000000




Last Coverpoint : ['rs1_w1_val == 4', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800015b4]:KMADRS32 t6, t5, t4
	-[0x800015b8]:sd t6, 1472(ra)
Current Store : [0x800015bc] : sd t5, 1480(ra) -- Store: [0x800038e8]:0x00000004FFFFF7FF




Last Coverpoint : ['rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800015dc]:KMADRS32 t6, t5, t4
	-[0x800015e0]:sd t6, 1488(ra)
Current Store : [0x800015e4] : sd t5, 1496(ra) -- Store: [0x800038f8]:0x7FFFFFFFFFFFFFFA




Last Coverpoint : ['opcode : kmadrs32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -8193', 'rs2_w0_val == -4194305', 'rs1_w1_val == 0', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800015fc]:KMADRS32 t6, t5, t4
	-[0x80001600]:sd t6, 1504(ra)
Current Store : [0x80001604] : sd t5, 1512(ra) -- Store: [0x80003908]:0x0000000000080000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001624]:KMADRS32 t6, t5, t4
	-[0x80001628]:sd t6, 1520(ra)
Current Store : [0x8000162c] : sd t5, 1528(ra) -- Store: [0x80003918]:0x00000010BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x8000164c]:KMADRS32 t6, t5, t4
	-[0x80001650]:sd t6, 1536(ra)
Current Store : [0x80001654] : sd t5, 1544(ra) -- Store: [0x80003928]:0x0000000500000004




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001678]:KMADRS32 t6, t5, t4
	-[0x8000167c]:sd t6, 1552(ra)
Current Store : [0x80001680] : sd t5, 1560(ra) -- Store: [0x80003938]:0x00002000FFFDFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800016a0]:KMADRS32 t6, t5, t4
	-[0x800016a4]:sd t6, 1568(ra)
Current Store : [0x800016a8] : sd t5, 1576(ra) -- Store: [0x80003948]:0x04000000FBFFFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800016cc]:KMADRS32 t6, t5, t4
	-[0x800016d0]:sd t6, 1584(ra)
Current Store : [0x800016d4] : sd t5, 1592(ra) -- Store: [0x80003958]:0xBFFFFFFFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x800016f8]:KMADRS32 t6, t5, t4
	-[0x800016fc]:sd t6, 1600(ra)
Current Store : [0x80001700] : sd t5, 1608(ra) -- Store: [0x80003968]:0x3FFFFFFF00000002




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001728]:KMADRS32 t6, t5, t4
	-[0x8000172c]:sd t6, 1616(ra)
Current Store : [0x80001730] : sd t5, 1624(ra) -- Store: [0x80003978]:0x3FFFFFFFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80001758]:KMADRS32 t6, t5, t4
	-[0x8000175c]:sd t6, 1632(ra)
Current Store : [0x80001760] : sd t5, 1640(ra) -- Store: [0x80003988]:0x00020000FFFBFFFF




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x8000177c]:KMADRS32 t6, t5, t4
	-[0x80001780]:sd t6, 1648(ra)
Current Store : [0x80001784] : sd t5, 1656(ra) -- Store: [0x80003998]:0xBFFFFFFFFFFFFFF8




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800017a4]:KMADRS32 t6, t5, t4
	-[0x800017a8]:sd t6, 1664(ra)
Current Store : [0x800017ac] : sd t5, 1672(ra) -- Store: [0x800039a8]:0x00000003FFFEFFFF




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800017cc]:KMADRS32 t6, t5, t4
	-[0x800017d0]:sd t6, 1680(ra)
Current Store : [0x800017d4] : sd t5, 1688(ra) -- Store: [0x800039b8]:0xFFFFFFFA00200000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x800017f0]:KMADRS32 t6, t5, t4
	-[0x800017f4]:sd t6, 1696(ra)
Current Store : [0x800017f8] : sd t5, 1704(ra) -- Store: [0x800039c8]:0x2000000080000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001820]:KMADRS32 t6, t5, t4
	-[0x80001824]:sd t6, 1712(ra)
Current Store : [0x80001828] : sd t5, 1720(ra) -- Store: [0x800039d8]:0xBFFFFFFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80001844]:KMADRS32 t6, t5, t4
	-[0x80001848]:sd t6, 1728(ra)
Current Store : [0x8000184c] : sd t5, 1736(ra) -- Store: [0x800039e8]:0xFFF7FFFFFFFFFEFF




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001868]:KMADRS32 t6, t5, t4
	-[0x8000186c]:sd t6, 1744(ra)
Current Store : [0x80001870] : sd t5, 1752(ra) -- Store: [0x800039f8]:0x00000040F7FFFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000188c]:KMADRS32 t6, t5, t4
	-[0x80001890]:sd t6, 1760(ra)
Current Store : [0x80001894] : sd t5, 1768(ra) -- Store: [0x80003a08]:0x00004000FFFFFFFC




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800018b8]:KMADRS32 t6, t5, t4
	-[0x800018bc]:sd t6, 1776(ra)
Current Store : [0x800018c0] : sd t5, 1784(ra) -- Store: [0x80003a18]:0x02000000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800018e0]:KMADRS32 t6, t5, t4
	-[0x800018e4]:sd t6, 1792(ra)
Current Store : [0x800018e8] : sd t5, 1800(ra) -- Store: [0x80003a28]:0xFFF7FFFF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800018fc]:KMADRS32 t6, t5, t4
	-[0x80001900]:sd t6, 1808(ra)
Current Store : [0x80001904] : sd t5, 1816(ra) -- Store: [0x80003a38]:0x00000002FFFFFFEF




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001924]:KMADRS32 t6, t5, t4
	-[0x80001928]:sd t6, 1824(ra)
Current Store : [0x8000192c] : sd t5, 1832(ra) -- Store: [0x80003a48]:0xFF7FFFFFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001948]:KMADRS32 t6, t5, t4
	-[0x8000194c]:sd t6, 1840(ra)
Current Store : [0x80001950] : sd t5, 1848(ra) -- Store: [0x80003a58]:0xFFFBFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001970]:KMADRS32 t6, t5, t4
	-[0x80001974]:sd t6, 1856(ra)
Current Store : [0x80001978] : sd t5, 1864(ra) -- Store: [0x80003a68]:0x00000800FFFFFFFA




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000198c]:KMADRS32 t6, t5, t4
	-[0x80001990]:sd t6, 1872(ra)
Current Store : [0x80001994] : sd t5, 1880(ra) -- Store: [0x80003a78]:0x0000000940000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800019b0]:KMADRS32 t6, t5, t4
	-[0x800019b4]:sd t6, 1888(ra)
Current Store : [0x800019b8] : sd t5, 1896(ra) -- Store: [0x80003a88]:0x0000020020000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800019d8]:KMADRS32 t6, t5, t4
	-[0x800019dc]:sd t6, 1904(ra)
Current Store : [0x800019e0] : sd t5, 1912(ra) -- Store: [0x80003a98]:0xFFFFFBFF00000007




Last Coverpoint : ['opcode : kmadrs32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 8192', 'rs2_w0_val == 262144', 'rs1_w1_val == 8192', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001a08]:KMADRS32 t6, t5, t4
	-[0x80001a0c]:sd t6, 1920(ra)
Current Store : [0x80001a10] : sd t5, 1928(ra) -- Store: [0x80003aa8]:0x00002000FFFFF7FF




Last Coverpoint : ['rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80001a30]:KMADRS32 t6, t5, t4
	-[0x80001a34]:sd t6, 1936(ra)
Current Store : [0x80001a38] : sd t5, 1944(ra) -- Store: [0x80003ab8]:0xFFFFFFFB3FFFFFFF




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001a68]:KMADRS32 t6, t5, t4
	-[0x80001a6c]:sd t6, 1952(ra)
Current Store : [0x80001a70] : sd t5, 1960(ra) -- Store: [0x80003ac8]:0x0800000000000800





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

|s.no|            signature             |                                                                                                                                        coverpoints                                                                                                                                         |                                   code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x6FAB7FBB6FAB7FBB|- opcode : kmadrs32<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 8<br> - rs1_w1_val == 8<br>       |[0x800003bc]:KMADRS32 s3, ra, ra<br> [0x800003c0]:sd s3, 0(s1)<br>        |
|   2|[0x80003220]<br>0x0000200FFC040000|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 8192<br> - rs2_w0_val == 262144<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 262144<br>                                                                       |[0x800003ec]:KMADRS32 a4, a4, a4<br> [0x800003f0]:sd a4, 16(s1)<br>       |
|   3|[0x80003230]<br>0xBEADDEEE5D8DFEEC|- rs1 : x26<br> - rs2 : x21<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val != rs2_w0_val<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -16777217<br> |[0x80000414]:KMADRS32 a7, s10, s5<br> [0x80000418]:sd a7, 32(s1)<br>      |
|   4|[0x80003240]<br>0x000000060000001E|- rs1 : x13<br> - rs2 : x4<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -5<br> - rs2_w0_val == 0<br> - rs1_w0_val == 0<br>                                                                                                             |[0x80000430]:KMADRS32 a3, a3, tp<br> [0x80000434]:sd a3, 48(s1)<br>       |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_w1_val == 0<br> - rs1_w1_val == -5<br>                                                                                                                                                                            |[0x80000458]:KMADRS32 zero, a2, zero<br> [0x8000045c]:sd zero, 64(s1)<br> |
|   6|[0x80003260]<br>0x6DF5854BC34AEFE7|- rs1 : x6<br> - rs2 : x7<br> - rd : x22<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 16<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -268435457<br>                                                                                        |[0x80000484]:KMADRS32 s6, t1, t2<br> [0x80000488]:sd s6, 80(s1)<br>       |
|   7|[0x80003270]<br>0xEAAAAAA60000000D|- rs1 : x28<br> - rs2 : x5<br> - rd : x12<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -2<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                          |[0x800004b0]:KMADRS32 a2, t3, t0<br> [0x800004b4]:sd a2, 96(s1)<br>       |
|   8|[0x80003280]<br>0xB7D5BDDAB5D5BFE3|- rs1 : x22<br> - rs2 : x3<br> - rd : x20<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 33554432<br>                                                                                                                |[0x800004d8]:KMADRS32 s4, s6, gp<br> [0x800004dc]:sd s4, 112(s1)<br>      |
|   9|[0x80003290]<br>0xEDBECCFEADBF31FF|- rs1 : x2<br> - rs2 : x27<br> - rd : x25<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -1025<br>                                                                                                                                                           |[0x80000508]:KMADRS32 s9, sp, s11<br> [0x8000050c]:sd s9, 128(s1)<br>     |
|  10|[0x800032a0]<br>0xFFF7FFFFDFC001FF|- rs1 : x24<br> - rs2 : x12<br> - rd : x10<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 512<br> - rs1_w1_val == -4194305<br>                                                                                                                                                          |[0x80000530]:KMADRS32 a0, s8, a2<br> [0x80000534]:sd a0, 144(s1)<br>      |
|  11|[0x800032b0]<br>0x55595553F3FFFFDE|- rs1 : x11<br> - rs2 : x22<br> - rd : x5<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == -33<br> - rs1_w0_val == -33554433<br>                                                                                                                            |[0x80000560]:KMADRS32 t0, a1, s6<br> [0x80000564]:sd t0, 160(s1)<br>      |
|  12|[0x800032c0]<br>0xB6F8B7FBAEB977F5|- rs1 : x8<br> - rs2 : x19<br> - rd : x23<br> - rs2_w1_val == -134217729<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                     |[0x80000590]:KMADRS32 s7, fp, s3<br> [0x80000594]:sd s7, 176(s1)<br>      |
|  13|[0x800032d0]<br>0x00000208FFFF7DF8|- rs1 : x16<br> - rs2 : x26<br> - rd : x1<br> - rs2_w1_val == -67108865<br> - rs1_w0_val == -129<br>                                                                                                                                                                                        |[0x800005bc]:KMADRS32 ra, a6, s10<br> [0x800005c0]:sd ra, 192(s1)<br>     |
|  14|[0x800032e0]<br>0xFFBFFFFEEFFFFBF8|- rs1 : x3<br> - rs2 : x23<br> - rd : x24<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 256<br>                                                                                                                                                                                         |[0x800005e4]:KMADRS32 s8, gp, s7<br> [0x800005e8]:sd s8, 208(s1)<br>      |
|  15|[0x800032f0]<br>0xFBE07FFEFE800200|- rs1 : x20<br> - rs2 : x30<br> - rd : x26<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 8388608<br>                                                                                                                                                       |[0x80000610]:KMADRS32 s10, s4, t5<br> [0x80000614]:sd s10, 224(s1)<br>    |
|  16|[0x80003300]<br>0x0000400170000117|- rs1 : x17<br> - rs2 : x2<br> - rd : x6<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 4<br> - rs1_w1_val == 256<br>                                                                                                                                                                     |[0x80000638]:KMADRS32 t1, a7, sp<br> [0x8000063c]:sd t1, 240(s1)<br>      |
|  17|[0x80003310]<br>0xAAAB2AAA3E000008|- rs1 : x15<br> - rs2 : x28<br> - rd : x7<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -131073<br>                                                                                                                                                                                      |[0x80000660]:KMADRS32 t2, a5, t3<br> [0x80000664]:sd t2, 256(s1)<br>      |
|  18|[0x80003320]<br>0xFFFFDFF8FF1FFFF2|- rs1 : x18<br> - rs2 : x25<br> - rd : x3<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 4194304<br>                                                                                                                                                         |[0x80000690]:KMADRS32 gp, s2, s9<br> [0x80000694]:sd gp, 0(ra)<br>        |
|  19|[0x80003330]<br>0xFBB6FACFEBBAFAB7|- rs1 : x19<br> - rs2 : x9<br> - rd : x31<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -129<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 268435456<br>                                                                                                                                 |[0x800006b4]:KMADRS32 t6, s3, s1<br> [0x800006b8]:sd t6, 16(ra)<br>       |
|  20|[0x80003340]<br>0xBFFFFFFF3FFFFFFF|- rs1 : x0<br> - rs2 : x11<br> - rd : x27<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 0<br>                                                                                                                                                              |[0x800006ec]:KMADRS32 s11, zero, a1<br> [0x800006f0]:sd s11, 32(ra)<br>   |
|  21|[0x80003350]<br>0xFFDFFFFF60003F80|- rs1 : x23<br> - rs2 : x6<br> - rd : x21<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 128<br> - rs1_w0_val == -8388609<br>                                                                                                                                                              |[0x80000718]:KMADRS32 s5, s7, t1<br> [0x8000071c]:sd s5, 48(ra)<br>       |
|  22|[0x80003360]<br>0x00008004FFC3FB7F|- rs1 : x30<br> - rs2 : x15<br> - rd : x16<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 1024<br>                                                                                                                                                                |[0x80000744]:KMADRS32 a6, t5, a5<br> [0x80000748]:sd a6, 64(ra)<br>       |
|  23|[0x80003370]<br>0xFFBFFFF803EF3FFE|- rs1 : x10<br> - rs2 : x16<br> - rd : x8<br> - rs2_w1_val == -32769<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                       |[0x8000076c]:KMADRS32 fp, a0, a6<br> [0x80000770]:sd fp, 80(ra)<br>       |
|  24|[0x80003380]<br>0x0004000027FFC404|- rs1 : x5<br> - rs2 : x13<br> - rd : x30<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -5<br> - rs1_w1_val == -1<br> - rs1_w0_val == -134217729<br>                                                                                                                                       |[0x8000078c]:KMADRS32 t5, t0, a3<br> [0x80000790]:sd t5, 96(ra)<br>       |
|  25|[0x80003390]<br>0xFFFF000000007FC4|- rs1 : x7<br> - rs2 : x29<br> - rd : x15<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 64<br> - rs1_w0_val == -65<br>                                                                                                                                                                      |[0x800007b4]:KMADRS32 a5, t2, t4<br> [0x800007b8]:sd a5, 112(ra)<br>      |
|  26|[0x800033a0]<br>0xFFFBFFBD15354655|- rs1 : x29<br> - rs2 : x10<br> - rd : x11<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -257<br> - rs1_w1_val == -2097153<br>                                                                                                                                                              |[0x800007dc]:KMADRS32 a1, t4, a0<br> [0x800007e0]:sd a1, 128(ra)<br>      |
|  27|[0x800033b0]<br>0xFFDFFFFF3FC37005|- rs1 : x25<br> - rs2 : x20<br> - rd : x29<br> - rs2_w1_val == -2049<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -32769<br>                                                                                                                                                               |[0x80000804]:KMADRS32 t4, s9, s4<br> [0x80000808]:sd t4, 144(ra)<br>      |
|  28|[0x800033c0]<br>0xFFC0000400FE1FFF|- rs1 : x4<br> - rs2 : x17<br> - rd : x28<br> - rs2_w1_val == -1025<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 2048<br>                                                                                                                                                               |[0x80000830]:KMADRS32 t3, tp, a7<br> [0x80000834]:sd t3, 160(ra)<br>      |
|  29|[0x800033d0]<br>0xFF7FFFFFAACABAB0|- rs1 : x27<br> - rs2 : x31<br> - rd : x2<br> - rs2_w1_val == -513<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -2<br>                                                                                                                                      |[0x8000085c]:KMADRS32 sp, s11, t6<br> [0x80000860]:sd sp, 176(ra)<br>     |
|  30|[0x800033e0]<br>0xFDF7FFFFF7EFEE7E|- rs1 : x21<br> - rs2 : x8<br> - rd : x9<br> - rs2_w1_val == -257<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 134217728<br>                                                                                                                               |[0x80000880]:KMADRS32 s1, s5, fp<br> [0x80000884]:sd s1, 192(ra)<br>      |
|  31|[0x800033f0]<br>0x00FFFFFFFFFA0C83|- rs1 : x9<br> - rs2 : x18<br> - rd : x4<br> - rs2_w1_val == -129<br>                                                                                                                                                                                                                       |[0x800008a8]:KMADRS32 tp, s1, s2<br> [0x800008ac]:sd tp, 208(ra)<br>      |
|  32|[0x80003400]<br>0x0000037FFFF6DFBE|- rs1 : x31<br> - rs2 : x24<br> - rd : x18<br> - rs2_w1_val == -65<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 524288<br>                                                                                                                                     |[0x800008cc]:KMADRS32 s2, t6, s8<br> [0x800008d0]:sd s2, 224(ra)<br>      |
|  33|[0x80003410]<br>0xFFFFDFFF0007FF19|- rs2_w1_val == -33<br>                                                                                                                                                                                                                                                                     |[0x800008ec]:KMADRS32 t6, t5, t4<br> [0x800008f0]:sd t6, 240(ra)<br>      |
|  34|[0x80003420]<br>0xFFFFDFFEF407FF02|- rs2_w1_val == -17<br>                                                                                                                                                                                                                                                                     |[0x80000914]:KMADRS32 t6, t5, t4<br> [0x80000918]:sd t6, 256(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFDFFED4071102|- rs2_w1_val == -9<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 512<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                          |[0x8000093c]:KMADRS32 t6, t5, t4<br> [0x80000940]:sd t6, 272(ra)<br>      |
|  36|[0x80003440]<br>0xFDFFDFFFD8071100|- rs2_w1_val == -3<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                          |[0x80000968]:KMADRS32 t6, t5, t4<br> [0x8000096c]:sd t6, 288(ra)<br>      |
|  37|[0x80003450]<br>0xFDFFDFFFD7F712FE|- rs2_w1_val == -2<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                  |[0x80000990]:KMADRS32 t6, t5, t4<br> [0x80000994]:sd t6, 304(ra)<br>      |
|  38|[0x80003460]<br>0xEDFE8AAA029F12FE|- rs2_w1_val == -2147483648<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                                                              |[0x800009cc]:KMADRS32 t6, t5, t4<br> [0x800009d0]:sd t6, 320(ra)<br>      |
|  39|[0x80003470]<br>0xEE1E8AA8429F1300|- rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs2_w1_val == 1073741824<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                          |[0x80000a04]:KMADRS32 t6, t5, t4<br> [0x80000a08]:sd t6, 336(ra)<br>      |
|  40|[0x80003480]<br>0xEDDE8AA8429F1100|- rs2_w1_val == 536870912<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                          |[0x80000a2c]:KMADRS32 t6, t5, t4<br> [0x80000a30]:sd t6, 352(ra)<br>      |
|  41|[0x80003490]<br>0xEDDE0AA6ED49BBAC|- rs2_w1_val == 268435456<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                    |[0x80000a64]:KMADRS32 t6, t5, t4<br> [0x80000a68]:sd t6, 368(ra)<br>      |
|  42|[0x800034a0]<br>0xEDBE0AA26D89BBAD|- rs2_w1_val == 134217728<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                          |[0x80000a90]:KMADRS32 t6, t5, t4<br> [0x80000a94]:sd t6, 384(ra)<br>      |
|  43|[0x800034b0]<br>0xEE3E0A227149BBAD|- rs2_w1_val == 67108864<br>                                                                                                                                                                                                                                                                |[0x80000ac4]:KMADRS32 t6, t5, t4<br> [0x80000ac8]:sd t6, 400(ra)<br>      |
|  44|[0x800034c0]<br>0xEE531F781C1F1103|- rs2_w1_val == 33554432<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                       |[0x80000b00]:KMADRS32 t6, t5, t4<br> [0x80000b04]:sd t6, 416(ra)<br>      |
|  45|[0x800034d0]<br>0xEEA874CDBA1F110C|- rs2_w1_val == 16777216<br> - rs2_w0_val == -9<br> - rs1_w1_val == -1431655766<br>                                                                                                                                                                                                         |[0x80000b34]:KMADRS32 t6, t5, t4<br> [0x80000b38]:sd t6, 432(ra)<br>      |
|  46|[0x800034e0]<br>0xEEA874CDBE9A110C|- rs2_w1_val == 8388608<br> - rs1_w1_val == -9<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                |[0x80000b5c]:KMADRS32 t6, t5, t4<br> [0x80000b60]:sd t6, 448(ra)<br>      |
|  47|[0x800034f0]<br>0xEEA074CDBE96110C|- rs2_w1_val == 4194304<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                   |[0x80000b88]:KMADRS32 t6, t5, t4<br> [0x80000b8c]:sd t6, 464(ra)<br>      |
|  48|[0x80003500]<br>0xEEA074D1BE8610FC|- rs2_w1_val == 1048576<br> - rs1_w1_val == 1<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                    |[0x80000bb0]:KMADRS32 t6, t5, t4<br> [0x80000bb4]:sd t6, 480(ra)<br>      |
|  49|[0x80003510]<br>0xEEA074C9C00610FF|- rs2_w1_val == 524288<br> - rs2_w0_val == -3<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                 |[0x80000bdc]:KMADRS32 t6, t5, t4<br> [0x80000be0]:sd t6, 496(ra)<br>      |
|  50|[0x80003520]<br>0xEEA075C9400A1300|- rs2_w1_val == 262144<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                          |[0x80000c04]:KMADRS32 t6, t5, t4<br> [0x80000c08]:sd t6, 512(ra)<br>      |
|  51|[0x80003530]<br>0xEEA075C9408AF2F7|- rs2_w1_val == 131072<br> - rs2_w0_val == -8193<br> - rs1_w1_val == -65<br>                                                                                                                                                                                                                |[0x80000c34]:KMADRS32 t6, t5, t4<br> [0x80000c38]:sd t6, 528(ra)<br>      |
|  52|[0x80003540]<br>0xEEA075C13F8AF3F9|- rs2_w1_val == 2<br> - rs2_w0_val == -2049<br> - rs1_w1_val == -129<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                       |[0x80000c5c]:KMADRS32 t6, t5, t4<br> [0x80000c60]:sd t6, 544(ra)<br>      |
|  53|[0x80003550]<br>0xEECB206D0A0AF402|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                 |[0x80000c90]:KMADRS32 t6, t5, t4<br> [0x80000c94]:sd t6, 560(ra)<br>      |
|  54|[0x80003560]<br>0xEECF1FC20A0AF2AC|- rs1_w1_val == -513<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                        |[0x80000cbc]:KMADRS32 t6, t5, t4<br> [0x80000cc0]:sd t6, 576(ra)<br>      |
|  55|[0x80003570]<br>0xEECF1FC60A42F2B3|- rs2_w0_val == 16384<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                       |[0x80000ce8]:KMADRS32 t6, t5, t4<br> [0x80000cec]:sd t6, 592(ra)<br>      |
|  56|[0x80003580]<br>0xEECF1F860A4112B3|- rs2_w1_val == 4096<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == -2<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                     |[0x80000d10]:KMADRS32 t6, t5, t4<br> [0x80000d14]:sd t6, 608(ra)<br>      |
|  57|[0x80003590]<br>0xEECF1F820A6012B4|- rs2_w1_val == 1<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                 |[0x80000d40]:KMADRS32 t6, t5, t4<br> [0x80000d44]:sd t6, 624(ra)<br>      |
|  58|[0x800035a0]<br>0xEECF1F81AA7FD2B4|- rs2_w1_val == 2097152<br> - rs1_w1_val == -257<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                              |[0x80000d70]:KMADRS32 t6, t5, t4<br> [0x80000d74]:sd t6, 640(ra)<br>      |
|  59|[0x800035b0]<br>0xEECF1F91B287D2B4|- rs1_w1_val == -131073<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                        |[0x80000da0]:KMADRS32 t6, t5, t4<br> [0x80000da4]:sd t6, 656(ra)<br>      |
|  60|[0x800035c0]<br>0xEECF2191FA87D2B4|- rs2_w0_val == 32768<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                          |[0x80000dd0]:KMADRS32 t6, t5, t4<br> [0x80000dd4]:sd t6, 672(ra)<br>      |
|  61|[0x800035d0]<br>0xEECF2191F66FD0B4|- rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                     |[0x80000df8]:KMADRS32 t6, t5, t4<br> [0x80000dfc]:sd t6, 688(ra)<br>      |
|  62|[0x800035e0]<br>0xEECF2191FA7000B4|- rs2_w0_val == 1048576<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                 |[0x80000e1c]:KMADRS32 t6, t5, t4<br> [0x80000e20]:sd t6, 704(ra)<br>      |
|  63|[0x800035f0]<br>0xEECF21905A700094|- rs2_w0_val == -268435457<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                         |[0x80000e40]:KMADRS32 t6, t5, t4<br> [0x80000e44]:sd t6, 720(ra)<br>      |
|  64|[0x80003600]<br>0xEECF21905A6EFF63|- rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                       |[0x80000e68]:KMADRS32 t6, t5, t4<br> [0x80000e6c]:sd t6, 736(ra)<br>      |
|  65|[0x80003610]<br>0xEECF21905C6EFF5F|- rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                       |[0x80000e94]:KMADRS32 t6, t5, t4<br> [0x80000e98]:sd t6, 752(ra)<br>      |
|  66|[0x80003620]<br>0xEECF21905C6EFD3E|- rs2_w0_val == 8192<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                              |[0x80000eb8]:KMADRS32 t6, t5, t4<br> [0x80000ebc]:sd t6, 768(ra)<br>      |
|  67|[0x80003630]<br>0xEECF21905C6EFF67|- rs1_w1_val == 32<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                |[0x80000edc]:KMADRS32 t6, t5, t4<br> [0x80000ee0]:sd t6, 784(ra)<br>      |
|  68|[0x80003640]<br>0xEECF21909C6EFF5E|- rs1_w1_val == 2<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                |[0x80000f00]:KMADRS32 t6, t5, t4<br> [0x80000f04]:sd t6, 800(ra)<br>      |
|  69|[0x80003650]<br>0xEECF21709C4EFE5E|- rs2_w1_val == 65536<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                    |[0x80000f24]:KMADRS32 t6, t5, t4<br> [0x80000f28]:sd t6, 816(ra)<br>      |
|  70|[0x80003660]<br>0xEE8F2170D44F7E5E|- rs2_w1_val == 32768<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == -32769<br>                                                                                                                                                                                                          |[0x80000f4c]:KMADRS32 t6, t5, t4<br> [0x80000f50]:sd t6, 832(ra)<br>      |
|  71|[0x80003670]<br>0xEE8F2170F84FBE5E|- rs2_w1_val == 16384<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                       |[0x80000f74]:KMADRS32 t6, t5, t4<br> [0x80000f78]:sd t6, 848(ra)<br>      |
|  72|[0x80003680]<br>0xEE8F2171F851C65E|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                                                    |[0x80000f98]:KMADRS32 t6, t5, t4<br> [0x80000f9c]:sd t6, 864(ra)<br>      |
|  73|[0x80003690]<br>0xEE8F217218624C5F|- rs2_w1_val == 1024<br> - rs2_w0_val == -1048577<br>                                                                                                                                                                                                                                       |[0x80000fc0]:KMADRS32 t6, t5, t4<br> [0x80000fc4]:sd t6, 880(ra)<br>      |
|  74|[0x800036a0]<br>0xEE8F217219624E5F|- rs2_w1_val == 512<br> - rs1_w1_val == -16385<br>                                                                                                                                                                                                                                          |[0x80000fe8]:KMADRS32 t6, t5, t4<br> [0x80000fec]:sd t6, 896(ra)<br>      |
|  75|[0x800036b0]<br>0xEE8F61721BA24F60|- rs2_w1_val == 256<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                            |[0x80001014]:KMADRS32 t6, t5, t4<br> [0x80001018]:sd t6, 912(ra)<br>      |
|  76|[0x800036c0]<br>0xEE8F61721B620BE0|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                     |[0x80001038]:KMADRS32 t6, t5, t4<br> [0x8000103c]:sd t6, 928(ra)<br>      |
|  77|[0x800036d0]<br>0xEE8F61721781CC20|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                      |[0x80001068]:KMADRS32 t6, t5, t4<br> [0x8000106c]:sd t6, 944(ra)<br>      |
|  78|[0x800036e0]<br>0xEE8F6171D781CCE0|- rs2_w1_val == 32<br>                                                                                                                                                                                                                                                                      |[0x80001090]:KMADRS32 t6, t5, t4<br> [0x80001094]:sd t6, 960(ra)<br>      |
|  79|[0x800036f0]<br>0xEE8F6169D771CCEF|- rs2_w1_val == 16<br> - rs2_w0_val == 1<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                   |[0x800010bc]:KMADRS32 t6, t5, t4<br> [0x800010c0]:sd t6, 976(ra)<br>      |
|  80|[0x80003700]<br>0xEE8F616AD771CEF3|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                       |[0x800010e0]:KMADRS32 t6, t5, t4<br> [0x800010e4]:sd t6, 992(ra)<br>      |
|  81|[0x80003720]<br>0xEE8F606CD771AF73|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                      |[0x80001124]:KMADRS32 t6, t5, t4<br> [0x80001128]:sd t6, 1024(ra)<br>     |
|  82|[0x80003730]<br>0xEE8F606CB771B073|- rs2_w0_val == -536870913<br>                                                                                                                                                                                                                                                              |[0x80001148]:KMADRS32 t6, t5, t4<br> [0x8000114c]:sd t6, 1040(ra)<br>     |
|  83|[0x80003740]<br>0xEE8F626CB7D1B073|- rs2_w0_val == 131072<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                      |[0x80001174]:KMADRS32 t6, t5, t4<br> [0x80001178]:sd t6, 1056(ra)<br>     |
|  84|[0x80003750]<br>0xEE8F626C37D5B073|- rs2_w0_val == 4096<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                           |[0x8000119c]:KMADRS32 t6, t5, t4<br> [0x800011a0]:sd t6, 1072(ra)<br>     |
|  85|[0x80003760]<br>0xED3A0D16DF75B070|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                |[0x800011c4]:KMADRS32 t6, t5, t4<br> [0x800011c8]:sd t6, 1088(ra)<br>     |
|  86|[0x80003770]<br>0xED3A0D195F76B070|- rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                                    |[0x800011f0]:KMADRS32 t6, t5, t4<br> [0x800011f4]:sd t6, 1104(ra)<br>     |
|  87|[0x80003780]<br>0xED3A0D195F775870|- rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                    |[0x80001214]:KMADRS32 t6, t5, t4<br> [0x80001218]:sd t6, 1120(ra)<br>     |
|  88|[0x80003790]<br>0xED3A0D99607758D0|- rs2_w0_val == 32<br>                                                                                                                                                                                                                                                                      |[0x8000123c]:KMADRS32 t6, t5, t4<br> [0x80001240]:sd t6, 1136(ra)<br>     |
|  89|[0x800037a0]<br>0xED3A0D98A0775900|- rs2_w0_val == 8<br>                                                                                                                                                                                                                                                                       |[0x80001260]:KMADRS32 t6, t5, t4<br> [0x80001264]:sd t6, 1152(ra)<br>     |
|  90|[0x800037b0]<br>0xED3A0D981076D8F5|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                       |[0x8000128c]:KMADRS32 t6, t5, t4<br> [0x80001290]:sd t6, 1168(ra)<br>     |
|  91|[0x800037c0]<br>0xED3A0D982076D900|- rs2_w0_val == -1<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                               |[0x800012b0]:KMADRS32 t6, t5, t4<br> [0x800012b4]:sd t6, 1184(ra)<br>     |
|  92|[0x800037d0]<br>0xECFA0DADC7218395|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                              |[0x800012dc]:KMADRS32 t6, t5, t4<br> [0x800012e0]:sd t6, 1200(ra)<br>     |
|  93|[0x800037e0]<br>0xECFB0DADC70D8392|- rs1_w1_val == -1073741825<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                 |[0x80001308]:KMADRS32 t6, t5, t4<br> [0x8000130c]:sd t6, 1216(ra)<br>     |
|  94|[0x800037f0]<br>0xE7A5B85791B82A3C|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                              |[0x8000133c]:KMADRS32 t6, t5, t4<br> [0x80001340]:sd t6, 1232(ra)<br>     |
|  95|[0x80003800]<br>0xE7ADB85793782A42|- rs1_w1_val == -134217729<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                 |[0x8000136c]:KMADRS32 t6, t5, t4<br> [0x80001370]:sd t6, 1248(ra)<br>     |
|  96|[0x80003810]<br>0xE7ADB4D78F772A41|- rs1_w1_val == -67108865<br>                                                                                                                                                                                                                                                               |[0x80001394]:KMADRS32 t6, t5, t4<br> [0x80001398]:sd t6, 1264(ra)<br>     |
|  97|[0x80003820]<br>0xE7ADB4CAE2CC779C|- rs1_w1_val == -33554433<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                               |[0x800013c8]:KMADRS32 t6, t5, t4<br> [0x800013cc]:sd t6, 1280(ra)<br>     |
|  98|[0x80003830]<br>0xE7ADB4C2E2C6BBAC|- rs2_w0_val == -17<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                                                                         |[0x800013ec]:KMADRS32 t6, t5, t4<br> [0x800013f0]:sd t6, 1296(ra)<br>     |
|  99|[0x80003840]<br>0xE7ADB4C2E2CEFBBC|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                   |[0x80001414]:KMADRS32 t6, t5, t4<br> [0x80001418]:sd t6, 1312(ra)<br>     |
| 100|[0x80003850]<br>0xE7ACB4C2DEAEFBAB|- rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                     |[0x8000143c]:KMADRS32 t6, t5, t4<br> [0x80001440]:sd t6, 1328(ra)<br>     |
| 101|[0x80003860]<br>0xE7ACB4C0DEB073AB|- rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                      |[0x80001468]:KMADRS32 t6, t5, t4<br> [0x8000146c]:sd t6, 1344(ra)<br>     |
| 102|[0x80003870]<br>0x07ACB4A05E7073AB|- rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                             |[0x8000149c]:KMADRS32 t6, t5, t4<br> [0x800014a0]:sd t6, 1360(ra)<br>     |
| 103|[0x80003880]<br>0x07ACB3A05CF073AB|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                |[0x800014c8]:KMADRS32 t6, t5, t4<br> [0x800014cc]:sd t6, 1376(ra)<br>     |
| 104|[0x80003890]<br>0x07ACB4F59245C7AB|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                 |[0x800014f0]:KMADRS32 t6, t5, t4<br> [0x800014f4]:sd t6, 1392(ra)<br>     |
| 105|[0x800038a0]<br>0x07ACB4F59005C7A9|- rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                  |[0x80001518]:KMADRS32 t6, t5, t4<br> [0x8000151c]:sd t6, 1408(ra)<br>     |
| 106|[0x800038b0]<br>0x07ACB4F58C05CDE9|- rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                      |[0x80001540]:KMADRS32 t6, t5, t4<br> [0x80001544]:sd t6, 1424(ra)<br>     |
| 107|[0x800038c0]<br>0x07ACB4E58C15C5F9|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                      |[0x8000156c]:KMADRS32 t6, t5, t4<br> [0x80001570]:sd t6, 1440(ra)<br>     |
| 108|[0x800038e0]<br>0x07ACB4E58A158615|- rs1_w1_val == 4<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                             |[0x800015b4]:KMADRS32 t6, t5, t4<br> [0x800015b8]:sd t6, 1472(ra)<br>     |
| 109|[0x800038f0]<br>0x07ACB465BA15871B|- rs2_w0_val == -134217729<br>                                                                                                                                                                                                                                                              |[0x800015dc]:KMADRS32 t6, t5, t4<br> [0x800015e0]:sd t6, 1488(ra)<br>     |
| 110|[0x80003910]<br>0x07ACB2657A1D872A|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                             |[0x80001624]:KMADRS32 t6, t5, t4<br> [0x80001628]:sd t6, 1520(ra)<br>     |
| 111|[0x80003920]<br>0x07ACB26579FD8735|- rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                 |[0x8000164c]:KMADRS32 t6, t5, t4<br> [0x80001650]:sd t6, 1536(ra)<br>     |
| 112|[0x80003930]<br>0x07AC9A6575FDA735|- rs2_w0_val == 67108864<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                    |[0x80001678]:KMADRS32 t6, t5, t4<br> [0x8000167c]:sd t6, 1552(ra)<br>     |
| 113|[0x80003940]<br>0x078C9A655DFDA735|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                               |[0x800016a0]:KMADRS32 t6, t5, t4<br> [0x800016a4]:sd t6, 1568(ra)<br>     |
| 114|[0x80003950]<br>0x088C9A6558FDA72C|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                               |[0x800016cc]:KMADRS32 t6, t5, t4<br> [0x800016d0]:sd t6, 1584(ra)<br>     |
| 115|[0x80003960]<br>0x088C9A2558FCA82A|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                  |[0x800016f8]:KMADRS32 t6, t5, t4<br> [0x800016fc]:sd t6, 1600(ra)<br>     |
| 116|[0x80003970]<br>0x088C9A2559FCE92B|- rs2_w0_val == -16385<br>                                                                                                                                                                                                                                                                  |[0x80001728]:KMADRS32 t6, t5, t4<br> [0x8000172c]:sd t6, 1616(ra)<br>     |
| 117|[0x80003980]<br>0x088C99A561DEE92B|- rs2_w0_val == 2097152<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                     |[0x80001758]:KMADRS32 t6, t5, t4<br> [0x8000175c]:sd t6, 1632(ra)<br>     |
| 118|[0x80003990]<br>0x088C99A761DEF93B|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                    |[0x8000177c]:KMADRS32 t6, t5, t4<br> [0x80001780]:sd t6, 1648(ra)<br>     |
| 119|[0x800039a0]<br>0x088C99A6E1DE790B|- rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                  |[0x800017a4]:KMADRS32 t6, t5, t4<br> [0x800017a8]:sd t6, 1664(ra)<br>     |
| 120|[0x800039b0]<br>0x088C99A559BE790B|- rs2_w0_val == -65<br>                                                                                                                                                                                                                                                                     |[0x800017cc]:KMADRS32 t6, t5, t4<br> [0x800017d0]:sd t6, 1680(ra)<br>     |
| 121|[0x800039c0]<br>0x088C99B4B9BE790B|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -33<br>                                                                                                                                                                                                                                     |[0x800017f0]:KMADRS32 t6, t5, t4<br> [0x800017f4]:sd t6, 1696(ra)<br>     |
| 122|[0x800039d0]<br>0x1DE1EF0A4F33E061|- rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                   |[0x80001820]:KMADRS32 t6, t5, t4<br> [0x80001824]:sd t6, 1712(ra)<br>     |
| 123|[0x800039e0]<br>0x1DE1EF0A6E32E461|- rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                    |[0x80001844]:KMADRS32 t6, t5, t4<br> [0x80001848]:sd t6, 1728(ra)<br>     |
| 124|[0x800039f0]<br>0x21E1EF0AEE32E5A1|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                             |[0x80001868]:KMADRS32 t6, t5, t4<br> [0x8000186c]:sd t6, 1744(ra)<br>     |
| 125|[0x80003a00]<br>0x21E1EF09EE3265A1|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                              |[0x8000188c]:KMADRS32 t6, t5, t4<br> [0x80001890]:sd t6, 1760(ra)<br>     |
| 126|[0x80003a10]<br>0x21E1E709EE3266A9|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                     |[0x800018b8]:KMADRS32 t6, t5, t4<br> [0x800018bc]:sd t6, 1776(ra)<br>     |
| 127|[0x80003a20]<br>0x29E1E7095E2A56A8|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                               |[0x800018e0]:KMADRS32 t6, t5, t4<br> [0x800018e4]:sd t6, 1792(ra)<br>     |
| 128|[0x80003a30]<br>0x29E1E7095E2A5598|- rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                     |[0x800018fc]:KMADRS32 t6, t5, t4<br> [0x80001900]:sd t6, 1808(ra)<br>     |
| 129|[0x80003a40]<br>0x29E1E7095CACD59A|- rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                      |[0x80001924]:KMADRS32 t6, t5, t4<br> [0x80001928]:sd t6, 1824(ra)<br>     |
| 130|[0x80003a50]<br>0x29E1E7095C80D592|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                      |[0x80001948]:KMADRS32 t6, t5, t4<br> [0x8000194c]:sd t6, 1840(ra)<br>     |
| 131|[0x80003a60]<br>0x29E1E7094680D592|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                |[0x80001970]:KMADRS32 t6, t5, t4<br> [0x80001974]:sd t6, 1856(ra)<br>     |
| 132|[0x80003a70]<br>0x2DE1E7094680D553|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                              |[0x8000198c]:KMADRS32 t6, t5, t4<br> [0x80001990]:sd t6, 1872(ra)<br>     |
| 133|[0x80003a80]<br>0x2DE1E718C680D753|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                               |[0x800019b0]:KMADRS32 t6, t5, t4<br> [0x800019b4]:sd t6, 1888(ra)<br>     |
| 134|[0x80003a90]<br>0x2DE1E71906C8D753|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                  |[0x800019d8]:KMADRS32 t6, t5, t4<br> [0x800019dc]:sd t6, 1904(ra)<br>     |
| 135|[0x80003ab0]<br>0x2DE1E618A364DB54|- rs2_w0_val == -1025<br>                                                                                                                                                                                                                                                                   |[0x80001a30]:KMADRS32 t6, t5, t4<br> [0x80001a34]:sd t6, 1936(ra)<br>     |
| 136|[0x80003ac0]<br>0x2DE208C3560F8354|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                               |[0x80001a68]:KMADRS32 t6, t5, t4<br> [0x80001a6c]:sd t6, 1952(ra)<br>     |
