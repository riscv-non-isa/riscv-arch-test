
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001d70')]      |
| SIG_REGION                | [('0x80003210', '0x80003b70', '300 dwords')]      |
| COV_LABELS                | kwmmul      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kwmmul-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 300      |
| STAT1                     | 147      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 150     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001960]:KWMMUL t6, t5, t4
      [0x80001964]:sd t6, 1520(ra)
 -- Signature Address: 0x800039e0 Data: 0x00000000002AAAAB
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -2147483648
      - rs2_w0_val == -4194305
      - rs1_w1_val == 0
      - rs1_w0_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d20]:KWMMUL t6, t5, t4
      [0x80001d24]:sd t6, 1872(ra)
 -- Signature Address: 0x80003b40 Data: 0x0000000055555556
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w1_val == -129
      - rs2_w0_val == -1431655766
      - rs1_w1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d40]:KWMMUL t6, t5, t4
      [0x80001d44]:sd t6, 1888(ra)
 -- Signature Address: 0x80003b50 Data: 0x0000000000001000
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -9
      - rs2_w0_val == 524288
      - rs1_w0_val == 16777216






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kwmmul', 'rs1 : x8', 'rs2 : x8', 'rd : x23', 'rs1 == rs2 != rd', 'rs2_w1_val == -129', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -129', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800003bc]:KWMMUL s7, fp, fp
	-[0x800003c0]:sd s7, 0(tp)
Current Store : [0x800003c4] : sd fp, 8(tp) -- Store: [0x80003218]:0xFFFFFF7FAAAAAAAA




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -134217729', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800003e8]:KWMMUL s11, s11, s11
	-[0x800003ec]:sd s11, 16(tp)
Current Store : [0x800003f0] : sd s11, 24(tp) -- Store: [0x80003228]:0x38E38E3900800000




Last Coverpoint : ['rs1 : x9', 'rs2 : x1', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 128', 'rs1_w1_val == 268435456', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000414]:KWMMUL s2, s1, ra
	-[0x80000418]:sd s2, 32(tp)
Current Store : [0x8000041c] : sd s1, 40(tp) -- Store: [0x80003238]:0x10000000FFFFFFFD




Last Coverpoint : ['rs1 : x20', 'rs2 : x22', 'rd : x20', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 131072', 'rs1_w1_val == -65537', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000440]:KWMMUL s4, s4, s6
	-[0x80000444]:sd s4, 48(tp)
Current Store : [0x80000448] : sd s4, 56(tp) -- Store: [0x80003248]:0xFFFEFFFF00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000478]:KWMMUL a3, s7, a3
	-[0x8000047c]:sd a3, 64(tp)
Current Store : [0x80000480] : sd s7, 72(tp) -- Store: [0x80003258]:0x5555555400000003




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x19', 'rs2_w1_val == -536870913', 'rs2_w0_val == 67108864', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800004a4]:KWMMUL s3, a4, a7
	-[0x800004a8]:sd s3, 80(tp)
Current Store : [0x800004ac] : sd a4, 88(tp) -- Store: [0x80003268]:0x0000000855555556




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x30', 'rs2_w1_val == -268435457', 'rs2_w0_val == -513', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800004cc]:KWMMUL t5, a0, sp
	-[0x800004d0]:sd t5, 96(tp)
Current Store : [0x800004d4] : sd a0, 104(tp) -- Store: [0x80003278]:0x5555555400000020




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x12', 'rs2_w1_val == -134217729', 'rs2_w0_val == -2049', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004f4]:KWMMUL a2, t5, s2
	-[0x800004f8]:sd a2, 112(tp)
Current Store : [0x800004fc] : sd t5, 120(tp) -- Store: [0x80003288]:0x0000000602000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x11', 'rs2_w1_val == -67108865', 'rs1_w1_val == 131072', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000520]:KWMMUL a1, sp, s8
	-[0x80000524]:sd a1, 128(tp)
Current Store : [0x80000528] : sd sp, 136(tp) -- Store: [0x80003298]:0x0002000000004000




Last Coverpoint : ['rs1 : x3', 'rs2 : x19', 'rd : x14', 'rs2_w1_val == -33554433', 'rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000548]:KWMMUL a4, gp, s3
	-[0x8000054c]:sd a4, 144(tp)
Current Store : [0x80000550] : sd gp, 152(tp) -- Store: [0x800032a8]:0xFFFFFFF900000003




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x10', 'rs2_w1_val == -16777217', 'rs2_w0_val == 64', 'rs1_w1_val == -2', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000574]:KWMMUL a0, t6, gp
	-[0x80000578]:sd a0, 160(tp)
Current Store : [0x8000057c] : sd t6, 168(tp) -- Store: [0x800032b8]:0xFFFFFFFEFFEFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x26', 'rs2_w1_val == -8388609', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000594]:KWMMUL s10, s5, a0
	-[0x80000598]:sd s10, 176(tp)
Current Store : [0x8000059c] : sd s5, 184(tp) -- Store: [0x800032c8]:0x0000000000000005




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x28', 'rs2_w1_val == -4194305', 'rs2_w0_val == -2147483648', 'rs1_w1_val == -4194305', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800005c0]:KWMMUL t3, a7, s4
	-[0x800005c4]:sd t3, 192(tp)
Current Store : [0x800005c8] : sd a7, 200(tp) -- Store: [0x800032d8]:0xFFBFFFFF00010000




Last Coverpoint : ['rs1 : x29', 'rs2 : x16', 'rd : x22', 'rs2_w1_val == -2097153', 'rs1_w1_val == -513', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800005f0]:KWMMUL s6, t4, a6
	-[0x800005f4]:sd s6, 208(tp)
Current Store : [0x800005f8] : sd t4, 216(tp) -- Store: [0x800032e8]:0xFFFFFDFF01000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x31', 'rd : x0', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -1048577', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000614]:KWMMUL zero, t2, t6
	-[0x80000618]:sd zero, 224(tp)
Current Store : [0x8000061c] : sd t2, 232(tp) -- Store: [0x800032f8]:0xFFFF4AFD80000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x29', 'rs2_w1_val == -524289', 'rs2_w0_val == -17', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x8000063c]:KWMMUL t4, t0, s10
	-[0x80000640]:sd t4, 240(tp)
Current Store : [0x80000644] : sd t0, 248(tp) -- Store: [0x80003308]:0x0800000000004000




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x2', 'rs2_w1_val == -262145', 'rs2_w0_val == -16777217', 'rs1_w1_val == -131073', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x8000066c]:KWMMUL sp, a6, t5
	-[0x80000670]:sd sp, 0(gp)
Current Store : [0x80000674] : sd a6, 8(gp) -- Store: [0x80003318]:0xFFFDFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x7', 'rd : x9', 'rs2_w1_val == -131073', 'rs2_w0_val == -262145', 'rs1_w1_val == 32768', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000069c]:KWMMUL s1, s2, t2
	-[0x800006a0]:sd s1, 16(gp)
Current Store : [0x800006a4] : sd s2, 24(gp) -- Store: [0x80003328]:0x00008000FFFFFF7F




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x1', 'rs2_w1_val == -65537', 'rs2_w0_val == 8', 'rs1_w1_val == 4', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800006c8]:KWMMUL ra, s9, a2
	-[0x800006cc]:sd ra, 32(gp)
Current Store : [0x800006d0] : sd s9, 40(gp) -- Store: [0x80003338]:0x00000004FFFEFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x9', 'rd : x25', 'rs2_w1_val == -32769']
Last Code Sequence : 
	-[0x800006f8]:KWMMUL s9, tp, s1
	-[0x800006fc]:sd s9, 48(gp)
Current Store : [0x80000700] : sd tp, 56(gp) -- Store: [0x80003348]:0x33333333C0000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x17', 'rs2_w1_val == -16385', 'rs1_w1_val == -65', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000072c]:KWMMUL a7, s8, a5
	-[0x80000730]:sd a7, 64(gp)
Current Store : [0x80000734] : sd s8, 72(gp) -- Store: [0x80003358]:0xFFFFFFBFFDFFFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rd : x21', 'rs2_w1_val == -8193', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000758]:KWMMUL s5, a1, t4
	-[0x8000075c]:sd s5, 80(gp)
Current Store : [0x80000760] : sd a1, 88(gp) -- Store: [0x80003368]:0x3333333408000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x24', 'rs2_w1_val == -4097', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x8000078c]:KWMMUL s8, t1, t3
	-[0x80000790]:sd s8, 96(gp)
Current Store : [0x80000794] : sd t1, 104(gp) -- Store: [0x80003378]:0x00020000FFFFFFEF




Last Coverpoint : ['rs1 : x28', 'rs2 : x23', 'rd : x4', 'rs2_w1_val == -2049', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800007b8]:KWMMUL tp, t3, s7
	-[0x800007bc]:sd tp, 112(gp)
Current Store : [0x800007c0] : sd t3, 120(gp) -- Store: [0x80003388]:0x6666666500040000




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x7', 'rs2_w1_val == -1025', 'rs2_w0_val == 256', 'rs1_w1_val == -8193', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800007dc]:KWMMUL t2, a5, s5
	-[0x800007e0]:sd t2, 128(gp)
Current Store : [0x800007e4] : sd a5, 136(gp) -- Store: [0x80003398]:0xFFFFDFFF00200000




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x8', 'rs2_w1_val == -513', 'rs2_w0_val == -1025', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000808]:KWMMUL fp, a3, t1
	-[0x8000080c]:sd fp, 144(gp)
Current Store : [0x80000810] : sd a3, 152(gp) -- Store: [0x800033a8]:0x0000B50400002000




Last Coverpoint : ['rs1 : x19', 'rs2 : x5', 'rd : x31', 'rs2_w1_val == -257', 'rs2_w0_val == 4', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000082c]:KWMMUL t6, s3, t0
	-[0x80000830]:sd t6, 160(gp)
Current Store : [0x80000834] : sd s3, 168(gp) -- Store: [0x800033b8]:0x00000005EFFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x6', 'rs2_w1_val == -65']
Last Code Sequence : 
	-[0x80000854]:KWMMUL t1, s6, a1
	-[0x80000858]:sd t1, 176(gp)
Current Store : [0x8000085c] : sd s6, 184(gp) -- Store: [0x800033c8]:0x10000000FFFFFFF8




Last Coverpoint : ['rs1 : x1', 'rs2 : x4', 'rd : x16', 'rs2_w1_val == -33', 'rs2_w0_val == -129', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000884]:KWMMUL a6, ra, tp
	-[0x80000888]:sd a6, 192(gp)
Current Store : [0x8000088c] : sd ra, 200(gp) -- Store: [0x800033d8]:0x666666667FFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x14', 'rd : x15', 'rs2_w1_val == -17', 'rs2_w0_val == -9', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800008ac]:KWMMUL a5, s10, a4
	-[0x800008b0]:sd a5, 208(gp)
Current Store : [0x800008b4] : sd s10, 216(gp) -- Store: [0x800033e8]:0xFEFFFFFF02000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x3', 'rs2_w1_val == -9', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800008d4]:KWMMUL gp, zero, s9
	-[0x800008d8]:sd gp, 0(ra)
Current Store : [0x800008dc] : sd zero, 8(ra) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x0', 'rd : x5', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800008f4]:KWMMUL t0, a2, zero
	-[0x800008f8]:sd t0, 16(ra)
Current Store : [0x800008fc] : sd a2, 24(ra) -- Store: [0x80003408]:0x00000006FFFFFEFF




Last Coverpoint : ['rs2_w1_val == -3', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000920]:KWMMUL t6, t5, t4
	-[0x80000924]:sd t6, 32(ra)
Current Store : [0x80000928] : sd t5, 40(ra) -- Store: [0x80003418]:0x7FFFFFFF00000040




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000958]:KWMMUL t6, t5, t4
	-[0x8000095c]:sd t6, 48(ra)
Current Store : [0x80000960] : sd t5, 56(ra) -- Store: [0x80003428]:0xAAAAAAAAAAAAAAAB




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x8000097c]:KWMMUL t6, t5, t4
	-[0x80000980]:sd t6, 64(ra)
Current Store : [0x80000984] : sd t5, 72(ra) -- Store: [0x80003438]:0x00000007FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 16777216', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800009ac]:KWMMUL t6, t5, t4
	-[0x800009b0]:sd t6, 80(ra)
Current Store : [0x800009b4] : sd t5, 88(ra) -- Store: [0x80003448]:0x5555555500040000




Last Coverpoint : ['rs2_w1_val == 536870912']
Last Code Sequence : 
	-[0x800009dc]:KWMMUL t6, t5, t4
	-[0x800009e0]:sd t6, 96(ra)
Current Store : [0x800009e4] : sd t5, 104(ra) -- Store: [0x80003458]:0xFFFF4AFCFDFFFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == -1048577', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000a18]:KWMMUL t6, t5, t4
	-[0x80000a1c]:sd t6, 112(ra)
Current Store : [0x80000a20] : sd t5, 120(ra) -- Store: [0x80003468]:0x0000100055555556




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == -1025', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000a40]:KWMMUL t6, t5, t4
	-[0x80000a44]:sd t6, 128(ra)
Current Store : [0x80000a48] : sd t5, 136(ra) -- Store: [0x80003478]:0xFFFFFBFF00000004




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80000a78]:KWMMUL t6, t5, t4
	-[0x80000a7c]:sd t6, 144(ra)
Current Store : [0x80000a80] : sd t5, 152(ra) -- Store: [0x80003488]:0xAAAAAAAB08000000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000aac]:KWMMUL t6, t5, t4
	-[0x80000ab0]:sd t6, 160(ra)
Current Store : [0x80000ab4] : sd t5, 168(ra) -- Store: [0x80003498]:0x0000B505FFFF4AFD




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 4194304', 'rs1_w1_val == 256', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000ad8]:KWMMUL t6, t5, t4
	-[0x80000adc]:sd t6, 176(ra)
Current Store : [0x80000ae0] : sd t5, 184(ra) -- Store: [0x800034a8]:0x00000100FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000b08]:KWMMUL t6, t5, t4
	-[0x80000b0c]:sd t6, 192(ra)
Current Store : [0x80000b10] : sd t5, 200(ra) -- Store: [0x800034b8]:0xFFBFFFFF55555555




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000b40]:KWMMUL t6, t5, t4
	-[0x80000b44]:sd t6, 208(ra)
Current Store : [0x80000b48] : sd t5, 216(ra) -- Store: [0x800034c8]:0xDFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -8193', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80000b7c]:KWMMUL t6, t5, t4
	-[0x80000b80]:sd t6, 224(ra)
Current Store : [0x80000b84] : sd t5, 232(ra) -- Store: [0x800034d8]:0xFFFFEFFF55555555




Last Coverpoint : ['rs2_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000ba8]:KWMMUL t6, t5, t4
	-[0x80000bac]:sd t6, 240(ra)
Current Store : [0x80000bb0] : sd t5, 248(ra) -- Store: [0x800034e8]:0xFFFEFFFF00000004




Last Coverpoint : ['rs2_w1_val == 524288']
Last Code Sequence : 
	-[0x80000bd4]:KWMMUL t6, t5, t4
	-[0x80000bd8]:sd t6, 256(ra)
Current Store : [0x80000bdc] : sd t5, 264(ra) -- Store: [0x800034f8]:0x00000003FDFFFFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == -524289', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000c08]:KWMMUL t6, t5, t4
	-[0x80000c0c]:sd t6, 272(ra)
Current Store : [0x80000c10] : sd t5, 280(ra) -- Store: [0x80003508]:0x3333333400000080




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000c2c]:KWMMUL t6, t5, t4
	-[0x80000c30]:sd t6, 288(ra)
Current Store : [0x80000c34] : sd t5, 296(ra) -- Store: [0x80003518]:0x000000087FFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536']
Last Code Sequence : 
	-[0x80000c54]:KWMMUL t6, t5, t4
	-[0x80000c58]:sd t6, 304(ra)
Current Store : [0x80000c5c] : sd t5, 312(ra) -- Store: [0x80003528]:0x3333333400000004




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000c88]:KWMMUL t6, t5, t4
	-[0x80000c8c]:sd t6, 320(ra)
Current Store : [0x80000c90] : sd t5, 328(ra) -- Store: [0x80003538]:0x66666667FFBFFFFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -268435457', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80000cb4]:KWMMUL t6, t5, t4
	-[0x80000cb8]:sd t6, 336(ra)
Current Store : [0x80000cbc] : sd t5, 344(ra) -- Store: [0x80003548]:0x00040000FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000cdc]:KWMMUL t6, t5, t4
	-[0x80000ce0]:sd t6, 352(ra)
Current Store : [0x80000ce4] : sd t5, 360(ra) -- Store: [0x80003558]:0xFFFFFF7FFF7FFFFF




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000d0c]:KWMMUL t6, t5, t4
	-[0x80000d10]:sd t6, 368(ra)
Current Store : [0x80000d14] : sd t5, 376(ra) -- Store: [0x80003568]:0xFFFFFBFF00000004




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000d34]:KWMMUL t6, t5, t4
	-[0x80000d38]:sd t6, 384(ra)
Current Store : [0x80000d3c] : sd t5, 392(ra) -- Store: [0x80003578]:0xDFFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000d54]:KWMMUL t6, t5, t4
	-[0x80000d58]:sd t6, 400(ra)
Current Store : [0x80000d5c] : sd t5, 408(ra) -- Store: [0x80003588]:0xFFFFFFFE00000000




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000d78]:KWMMUL t6, t5, t4
	-[0x80000d7c]:sd t6, 416(ra)
Current Store : [0x80000d80] : sd t5, 424(ra) -- Store: [0x80003598]:0x00000005FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 256']
Last Code Sequence : 
	-[0x80000da4]:KWMMUL t6, t5, t4
	-[0x80000da8]:sd t6, 432(ra)
Current Store : [0x80000dac] : sd t5, 440(ra) -- Store: [0x800035a8]:0xAAAAAAAB00000006




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w1_val == -524289', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000dd0]:KWMMUL t6, t5, t4
	-[0x80000dd4]:sd t6, 448(ra)
Current Store : [0x80000dd8] : sd t5, 456(ra) -- Store: [0x800035b8]:0xFFF7FFFF00001000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000e14]:KWMMUL t6, t5, t4
	-[0x80000e18]:sd t6, 464(ra)
Current Store : [0x80000e1c] : sd t5, 472(ra) -- Store: [0x800035c8]:0x5555555400000800




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000e3c]:KWMMUL t6, t5, t4
	-[0x80000e40]:sd t6, 480(ra)
Current Store : [0x80000e44] : sd t5, 488(ra) -- Store: [0x800035d8]:0xFFFFFEFF00000400




Last Coverpoint : ['rs1_w1_val == 1073741824', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000e70]:KWMMUL t6, t5, t4
	-[0x80000e74]:sd t6, 496(ra)
Current Store : [0x80000e78] : sd t5, 504(ra) -- Store: [0x800035e8]:0x4000000000000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000e98]:KWMMUL t6, t5, t4
	-[0x80000e9c]:sd t6, 512(ra)
Current Store : [0x80000ea0] : sd t5, 520(ra) -- Store: [0x800035f8]:0xFFFEFFFF00000100




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -1073741825', 'rs1_w1_val == 1048576', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ebc]:KWMMUL t6, t5, t4
	-[0x80000ec0]:sd t6, 528(ra)
Current Store : [0x80000ec4] : sd t5, 536(ra) -- Store: [0x80003608]:0x0010000000000010




Last Coverpoint : ['rs1_w1_val == 512', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000ee0]:KWMMUL t6, t5, t4
	-[0x80000ee4]:sd t6, 544(ra)
Current Store : [0x80000ee8] : sd t5, 552(ra) -- Store: [0x80003618]:0x0000020000000008




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000f10]:KWMMUL t6, t5, t4
	-[0x80000f14]:sd t6, 560(ra)
Current Store : [0x80000f18] : sd t5, 568(ra) -- Store: [0x80003628]:0x5555555400000002




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000f38]:KWMMUL t6, t5, t4
	-[0x80000f3c]:sd t6, 576(ra)
Current Store : [0x80000f40] : sd t5, 584(ra) -- Store: [0x80003638]:0xFFBFFFFF00000001




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000f64]:KWMMUL t6, t5, t4
	-[0x80000f68]:sd t6, 592(ra)
Current Store : [0x80000f6c] : sd t5, 600(ra) -- Store: [0x80003648]:0x0000400000000800




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000f88]:KWMMUL t6, t5, t4
	-[0x80000f8c]:sd t6, 608(ra)
Current Store : [0x80000f90] : sd t5, 616(ra) -- Store: [0x80003658]:0x0000100000000200




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000fac]:KWMMUL t6, t5, t4
	-[0x80000fb0]:sd t6, 624(ra)
Current Store : [0x80000fb4] : sd t5, 632(ra) -- Store: [0x80003668]:0x0000000500001000




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x80000fd4]:KWMMUL t6, t5, t4
	-[0x80000fd8]:sd t6, 640(ra)
Current Store : [0x80000fdc] : sd t5, 648(ra) -- Store: [0x80003678]:0xDFFFFFFF00000002




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80000ff8]:KWMMUL t6, t5, t4
	-[0x80000ffc]:sd t6, 656(ra)
Current Store : [0x80001000] : sd t5, 664(ra) -- Store: [0x80003688]:0xFFFFFFF6FFFFFFF9




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001020]:KWMMUL t6, t5, t4
	-[0x80001024]:sd t6, 672(ra)
Current Store : [0x80001028] : sd t5, 680(ra) -- Store: [0x80003698]:0x00080000FFFFFFF9




Last Coverpoint : ['rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001044]:KWMMUL t6, t5, t4
	-[0x80001048]:sd t6, 688(ra)
Current Store : [0x8000104c] : sd t5, 696(ra) -- Store: [0x800036a8]:0x0000B50400000000




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w1_val == -17', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001068]:KWMMUL t6, t5, t4
	-[0x8000106c]:sd t6, 704(ra)
Current Store : [0x80001070] : sd t5, 712(ra) -- Store: [0x800036b8]:0xFFFFFFEFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001090]:KWMMUL t6, t5, t4
	-[0x80001094]:sd t6, 720(ra)
Current Store : [0x80001098] : sd t5, 728(ra) -- Store: [0x800036c8]:0x0000800000000020




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800010c4]:KWMMUL t6, t5, t4
	-[0x800010c8]:sd t6, 736(ra)
Current Store : [0x800010cc] : sd t5, 744(ra) -- Store: [0x800036d8]:0x0080000000002000




Last Coverpoint : ['rs2_w0_val == -67108865', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x800010e8]:KWMMUL t6, t5, t4
	-[0x800010ec]:sd t6, 752(ra)
Current Store : [0x800010f0] : sd t5, 760(ra) -- Store: [0x800036e8]:0xFDFFFFFF00000000




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001118]:KWMMUL t6, t5, t4
	-[0x8000111c]:sd t6, 768(ra)
Current Store : [0x80001120] : sd t5, 776(ra) -- Store: [0x800036f8]:0xAAAAAAAA00000006




Last Coverpoint : ['rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001148]:KWMMUL t6, t5, t4
	-[0x8000114c]:sd t6, 784(ra)
Current Store : [0x80001150] : sd t5, 792(ra) -- Store: [0x80003708]:0x0000000855555554




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001174]:KWMMUL t6, t5, t4
	-[0x80001178]:sd t6, 800(ra)
Current Store : [0x8000117c] : sd t5, 808(ra) -- Store: [0x80003718]:0x00004000FEFFFFFF




Last Coverpoint : ['rs2_w0_val == -131073', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800011a4]:KWMMUL t6, t5, t4
	-[0x800011a8]:sd t6, 816(ra)
Current Store : [0x800011ac] : sd t5, 824(ra) -- Store: [0x80003728]:0xFFFFFFFBFFFF4AFC




Last Coverpoint : ['rs2_w0_val == -65537', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800011d4]:KWMMUL t6, t5, t4
	-[0x800011d8]:sd t6, 832(ra)
Current Store : [0x800011dc] : sd t5, 840(ra) -- Store: [0x80003738]:0x0000080000000003




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80001200]:KWMMUL t6, t5, t4
	-[0x80001204]:sd t6, 848(ra)
Current Store : [0x80001208] : sd t5, 856(ra) -- Store: [0x80003748]:0xDFFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80001234]:KWMMUL t6, t5, t4
	-[0x80001238]:sd t6, 864(ra)
Current Store : [0x8000123c] : sd t5, 872(ra) -- Store: [0x80003758]:0x5555555500000005




Last Coverpoint : ['rs2_w0_val == -257']
Last Code Sequence : 
	-[0x80001268]:KWMMUL t6, t5, t4
	-[0x8000126c]:sd t6, 880(ra)
Current Store : [0x80001270] : sd t5, 888(ra) -- Store: [0x80003768]:0xFFBFFFFF33333332




Last Coverpoint : ['rs2_w0_val == -65', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000128c]:KWMMUL t6, t5, t4
	-[0x80001290]:sd t6, 896(ra)
Current Store : [0x80001294] : sd t5, 904(ra) -- Store: [0x80003778]:0x0000040000000001




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800012b0]:KWMMUL t6, t5, t4
	-[0x800012b4]:sd t6, 912(ra)
Current Store : [0x800012b8] : sd t5, 920(ra) -- Store: [0x80003788]:0x0000040000000005




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x800012dc]:KWMMUL t6, t5, t4
	-[0x800012e0]:sd t6, 928(ra)
Current Store : [0x800012e4] : sd t5, 936(ra) -- Store: [0x80003798]:0x5555555600000005




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001318]:KWMMUL t6, t5, t4
	-[0x8000131c]:sd t6, 944(ra)
Current Store : [0x80001320] : sd t5, 952(ra) -- Store: [0x800037a8]:0x5555555633333333




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w1_val == 16', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x8000133c]:KWMMUL t6, t5, t4
	-[0x80001340]:sd t6, 960(ra)
Current Store : [0x80001344] : sd t5, 968(ra) -- Store: [0x800037b8]:0x0000001000020000




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001370]:KWMMUL t6, t5, t4
	-[0x80001374]:sd t6, 976(ra)
Current Store : [0x80001378] : sd t5, 984(ra) -- Store: [0x800037c8]:0x20000000AAAAAAAB




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001394]:KWMMUL t6, t5, t4
	-[0x80001398]:sd t6, 992(ra)
Current Store : [0x8000139c] : sd t5, 1000(ra) -- Store: [0x800037d8]:0xFFFFFDFF00040000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x800013c4]:KWMMUL t6, t5, t4
	-[0x800013c8]:sd t6, 1008(ra)
Current Store : [0x800013cc] : sd t5, 1016(ra) -- Store: [0x800037e8]:0x0004000000020000




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800013f4]:KWMMUL t6, t5, t4
	-[0x800013f8]:sd t6, 1024(ra)
Current Store : [0x800013fc] : sd t5, 1032(ra) -- Store: [0x800037f8]:0x20000000FFFDFFFF




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80001418]:KWMMUL t6, t5, t4
	-[0x8000141c]:sd t6, 1040(ra)
Current Store : [0x80001420] : sd t5, 1048(ra) -- Store: [0x80003808]:0xFFFFFFF700000009




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80001444]:KWMMUL t6, t5, t4
	-[0x80001448]:sd t6, 1056(ra)
Current Store : [0x8000144c] : sd t5, 1064(ra) -- Store: [0x80003818]:0xFFFDFFFFFFFBFFFF




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001470]:KWMMUL t6, t5, t4
	-[0x80001474]:sd t6, 1072(ra)
Current Store : [0x80001478] : sd t5, 1080(ra) -- Store: [0x80003828]:0x3FFFFFFFFFFFF7FF




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800014a4]:KWMMUL t6, t5, t4
	-[0x800014a8]:sd t6, 1088(ra)
Current Store : [0x800014ac] : sd t5, 1096(ra) -- Store: [0x80003838]:0xFFFBFFFFAAAAAAAB




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x800014d4]:KWMMUL t6, t5, t4
	-[0x800014d8]:sd t6, 1104(ra)
Current Store : [0x800014dc] : sd t5, 1112(ra) -- Store: [0x80003848]:0xFBFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80001500]:KWMMUL t6, t5, t4
	-[0x80001504]:sd t6, 1120(ra)
Current Store : [0x80001508] : sd t5, 1128(ra) -- Store: [0x80003858]:0xFFFEFFFF3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x8000152c]:KWMMUL t6, t5, t4
	-[0x80001530]:sd t6, 1136(ra)
Current Store : [0x80001534] : sd t5, 1144(ra) -- Store: [0x80003868]:0xBFFFFFFF00000005




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001554]:KWMMUL t6, t5, t4
	-[0x80001558]:sd t6, 1152(ra)
Current Store : [0x8000155c] : sd t5, 1160(ra) -- Store: [0x80003878]:0xEFFFFFFF00000001




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000158c]:KWMMUL t6, t5, t4
	-[0x80001590]:sd t6, 1168(ra)
Current Store : [0x80001594] : sd t5, 1176(ra) -- Store: [0x80003888]:0xF7FFFFFF66666665




Last Coverpoint : ['rs1_w1_val == -8388609', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800015bc]:KWMMUL t6, t5, t4
	-[0x800015c0]:sd t6, 1184(ra)
Current Store : [0x800015c4] : sd t5, 1192(ra) -- Store: [0x80003898]:0xFF7FFFFF00400000




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800015ec]:KWMMUL t6, t5, t4
	-[0x800015f0]:sd t6, 1200(ra)
Current Store : [0x800015f4] : sd t5, 1208(ra) -- Store: [0x800038a8]:0xFFDFFFFF33333334




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x8000160c]:KWMMUL t6, t5, t4
	-[0x80001610]:sd t6, 1216(ra)
Current Store : [0x80001614] : sd t5, 1224(ra) -- Store: [0x800038b8]:0xFFEFFFFF00000000




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80001638]:KWMMUL t6, t5, t4
	-[0x8000163c]:sd t6, 1232(ra)
Current Store : [0x80001640] : sd t5, 1240(ra) -- Store: [0x800038c8]:0xFFFF7FFF00000008




Last Coverpoint : ['rs1_w1_val == -16385', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001660]:KWMMUL t6, t5, t4
	-[0x80001664]:sd t6, 1248(ra)
Current Store : [0x80001668] : sd t5, 1256(ra) -- Store: [0x800038d8]:0xFFFFBFFF04000000




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x8000168c]:KWMMUL t6, t5, t4
	-[0x80001690]:sd t6, 1264(ra)
Current Store : [0x80001694] : sd t5, 1272(ra) -- Store: [0x800038e8]:0xFFFFF7FF00000008




Last Coverpoint : ['rs1_w1_val == -33', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800016b0]:KWMMUL t6, t5, t4
	-[0x800016b4]:sd t6, 1280(ra)
Current Store : [0x800016b8] : sd t5, 1288(ra) -- Store: [0x800038f8]:0xFFFFFFDFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == -3', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800016dc]:KWMMUL t6, t5, t4
	-[0x800016e0]:sd t6, 1296(ra)
Current Store : [0x800016e4] : sd t5, 1304(ra) -- Store: [0x80003908]:0xFFFFFFFDFFFFDFFF




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80001710]:KWMMUL t6, t5, t4
	-[0x80001714]:sd t6, 1312(ra)
Current Store : [0x80001718] : sd t5, 1320(ra) -- Store: [0x80003918]:0x80000000FFFFFDFF




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000173c]:KWMMUL t6, t5, t4
	-[0x80001740]:sd t6, 1328(ra)
Current Store : [0x80001744] : sd t5, 1336(ra) -- Store: [0x80003928]:0x04000000FFBFFFFF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x8000177c]:KWMMUL t6, t5, t4
	-[0x80001780]:sd t6, 1344(ra)
Current Store : [0x80001784] : sd t5, 1352(ra) -- Store: [0x80003938]:0x02000000FFFFF7FF




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800017b0]:KWMMUL t6, t5, t4
	-[0x800017b4]:sd t6, 1360(ra)
Current Store : [0x800017b8] : sd t5, 1368(ra) -- Store: [0x80003948]:0x01000000FFFF4AFC




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800017e8]:KWMMUL t6, t5, t4
	-[0x800017ec]:sd t6, 1376(ra)
Current Store : [0x800017f0] : sd t5, 1384(ra) -- Store: [0x80003958]:0x00400000F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001810]:KWMMUL t6, t5, t4
	-[0x80001814]:sd t6, 1392(ra)
Current Store : [0x80001818] : sd t5, 1400(ra) -- Store: [0x80003968]:0x0020000010000000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x8000183c]:KWMMUL t6, t5, t4
	-[0x80001840]:sd t6, 1408(ra)
Current Store : [0x80001844] : sd t5, 1416(ra) -- Store: [0x80003978]:0x00010000FFFFFFFF




Last Coverpoint : ['rs1_w1_val == 128', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80001860]:KWMMUL t6, t5, t4
	-[0x80001864]:sd t6, 1424(ra)
Current Store : [0x80001868] : sd t5, 1432(ra) -- Store: [0x80003988]:0x00000080FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x8000188c]:KWMMUL t6, t5, t4
	-[0x80001890]:sd t6, 1440(ra)
Current Store : [0x80001894] : sd t5, 1448(ra) -- Store: [0x80003998]:0x0000004000000800




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800018b0]:KWMMUL t6, t5, t4
	-[0x800018b4]:sd t6, 1456(ra)
Current Store : [0x800018b8] : sd t5, 1464(ra) -- Store: [0x800039a8]:0x000000203FFFFFFF




Last Coverpoint : ['rs1_w1_val == 2', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800018d8]:KWMMUL t6, t5, t4
	-[0x800018dc]:sd t6, 1472(ra)
Current Store : [0x800018e0] : sd t5, 1480(ra) -- Store: [0x800039b8]:0x0000000220000000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000190c]:KWMMUL t6, t5, t4
	-[0x80001910]:sd t6, 1488(ra)
Current Store : [0x80001914] : sd t5, 1496(ra) -- Store: [0x800039c8]:0x00000001FFFF4AFC




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001930]:KWMMUL t6, t5, t4
	-[0x80001934]:sd t6, 1504(ra)
Current Store : [0x80001938] : sd t5, 1512(ra) -- Store: [0x800039d8]:0xFFFFFFFFFFFF4AFC




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -2147483648', 'rs2_w0_val == -4194305', 'rs1_w1_val == 0', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001960]:KWMMUL t6, t5, t4
	-[0x80001964]:sd t6, 1520(ra)
Current Store : [0x80001968] : sd t5, 1528(ra) -- Store: [0x800039e8]:0x00000000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001988]:KWMMUL t6, t5, t4
	-[0x8000198c]:sd t6, 1536(ra)
Current Store : [0x80001990] : sd t5, 1544(ra) -- Store: [0x800039f8]:0x04000000BFFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800019b0]:KWMMUL t6, t5, t4
	-[0x800019b4]:sd t6, 1552(ra)
Current Store : [0x800019b8] : sd t5, 1560(ra) -- Store: [0x80003a08]:0xFFFFFFF6DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800019dc]:KWMMUL t6, t5, t4
	-[0x800019e0]:sd t6, 1568(ra)
Current Store : [0x800019e4] : sd t5, 1576(ra) -- Store: [0x80003a18]:0x3FFFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001a08]:KWMMUL t6, t5, t4
	-[0x80001a0c]:sd t6, 1584(ra)
Current Store : [0x80001a10] : sd t5, 1592(ra) -- Store: [0x80003a28]:0x00000005FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001a38]:KWMMUL t6, t5, t4
	-[0x80001a3c]:sd t6, 1600(ra)
Current Store : [0x80001a40] : sd t5, 1608(ra) -- Store: [0x80003a38]:0x0000B505FFFF7FFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001a6c]:KWMMUL t6, t5, t4
	-[0x80001a70]:sd t6, 1616(ra)
Current Store : [0x80001a74] : sd t5, 1624(ra) -- Store: [0x80003a48]:0x00000040FFFFBFFF




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001a98]:KWMMUL t6, t5, t4
	-[0x80001a9c]:sd t6, 1632(ra)
Current Store : [0x80001aa0] : sd t5, 1640(ra) -- Store: [0x80003a58]:0x0000080000004000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001acc]:KWMMUL t6, t5, t4
	-[0x80001ad0]:sd t6, 1648(ra)
Current Store : [0x80001ad4] : sd t5, 1656(ra) -- Store: [0x80003a68]:0x04000000FFFFEFFF




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001afc]:KWMMUL t6, t5, t4
	-[0x80001b00]:sd t6, 1664(ra)
Current Store : [0x80001b04] : sd t5, 1672(ra) -- Store: [0x80003a78]:0x66666667FFFFFFF6




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001b28]:KWMMUL t6, t5, t4
	-[0x80001b2c]:sd t6, 1680(ra)
Current Store : [0x80001b30] : sd t5, 1688(ra) -- Store: [0x80003a88]:0x00000000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001b50]:KWMMUL t6, t5, t4
	-[0x80001b54]:sd t6, 1696(ra)
Current Store : [0x80001b58] : sd t5, 1704(ra) -- Store: [0x80003a98]:0x55555556FFFFFFFB




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001b7c]:KWMMUL t6, t5, t4
	-[0x80001b80]:sd t6, 1712(ra)
Current Store : [0x80001b84] : sd t5, 1720(ra) -- Store: [0x80003aa8]:0x08000000FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001ba8]:KWMMUL t6, t5, t4
	-[0x80001bac]:sd t6, 1728(ra)
Current Store : [0x80001bb0] : sd t5, 1736(ra) -- Store: [0x80003ab8]:0x0000000140000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001bcc]:KWMMUL t6, t5, t4
	-[0x80001bd0]:sd t6, 1744(ra)
Current Store : [0x80001bd4] : sd t5, 1752(ra) -- Store: [0x80003ac8]:0x0000001000800000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001bfc]:KWMMUL t6, t5, t4
	-[0x80001c00]:sd t6, 1760(ra)
Current Store : [0x80001c04] : sd t5, 1768(ra) -- Store: [0x80003ad8]:0x33333334FF7FFFFF




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80001c24]:KWMMUL t6, t5, t4
	-[0x80001c28]:sd t6, 1776(ra)
Current Store : [0x80001c2c] : sd t5, 1784(ra) -- Store: [0x80003ae8]:0xFFFFDFFFFFF7FFFF




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001c48]:KWMMUL t6, t5, t4
	-[0x80001c4c]:sd t6, 1792(ra)
Current Store : [0x80001c50] : sd t5, 1800(ra) -- Store: [0x80003af8]:0x0000080000100000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001c6c]:KWMMUL t6, t5, t4
	-[0x80001c70]:sd t6, 1808(ra)
Current Store : [0x80001c74] : sd t5, 1816(ra) -- Store: [0x80003b08]:0xFFFFFFDF00080000




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80001ca0]:KWMMUL t6, t5, t4
	-[0x80001ca4]:sd t6, 1824(ra)
Current Store : [0x80001ca8] : sd t5, 1832(ra) -- Store: [0x80003b18]:0x0040000000080000




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001ccc]:KWMMUL t6, t5, t4
	-[0x80001cd0]:sd t6, 1840(ra)
Current Store : [0x80001cd4] : sd t5, 1848(ra) -- Store: [0x80003b28]:0x00002000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80001cfc]:KWMMUL t6, t5, t4
	-[0x80001d00]:sd t6, 1856(ra)
Current Store : [0x80001d04] : sd t5, 1864(ra) -- Store: [0x80003b38]:0x4000000000008000




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -129', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80001d20]:KWMMUL t6, t5, t4
	-[0x80001d24]:sd t6, 1872(ra)
Current Store : [0x80001d28] : sd t5, 1880(ra) -- Store: [0x80003b48]:0x0000000080000000




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -9', 'rs2_w0_val == 524288', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001d40]:KWMMUL t6, t5, t4
	-[0x80001d44]:sd t6, 1888(ra)
Current Store : [0x80001d48] : sd t5, 1896(ra) -- Store: [0x80003b58]:0xFFFFFFF801000000




Last Coverpoint : ['rs2_w1_val == -5']
Last Code Sequence : 
	-[0x80001d60]:KWMMUL t6, t5, t4
	-[0x80001d64]:sd t6, 1904(ra)
Current Store : [0x80001d68] : sd t5, 1912(ra) -- Store: [0x80003b68]:0x00000006FFFFFEFF





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

|s.no|            signature             |                                                                                                coverpoints                                                                                                 |                                 code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000038E38E39|- opcode : kwmmul<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -129<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -129<br> - rs1_w0_val == -1431655766<br> |[0x800003bc]:KWMMUL s7, fp, fp<br> [0x800003c0]:sd s7, 0(tp)<br>       |
|   2|[0x80003220]<br>0x38E38E3900800000|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -134217729<br>         |[0x800003e8]:KWMMUL s11, s11, s11<br> [0x800003ec]:sd s11, 16(tp)<br>  |
|   3|[0x80003230]<br>0x0AAAAAAAFFFFFFFF|- rs1 : x9<br> - rs2 : x1<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 128<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -3<br>      |[0x80000414]:KWMMUL s2, s1, ra<br> [0x80000418]:sd s2, 32(tp)<br>      |
|   4|[0x80003240]<br>0xFFFEFFFF00000000|- rs1 : x20<br> - rs2 : x22<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 131072<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 0<br>                            |[0x80000440]:KWMMUL s4, s4, s6<br> [0x80000444]:sd s4, 48(tp)<br>      |
|   5|[0x80003250]<br>0xD555555500000002|- rs1 : x23<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br>                                                                                                       |[0x80000478]:KWMMUL a3, s7, a3<br> [0x8000047c]:sd a3, 64(tp)<br>      |
|   6|[0x80003260]<br>0xFFFFFFFD02AAAAAA|- rs1 : x14<br> - rs2 : x17<br> - rd : x19<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 8<br>                                                                            |[0x800004a4]:KWMMUL s3, a4, a7<br> [0x800004a8]:sd s3, 80(tp)<br>      |
|   7|[0x80003270]<br>0xF5555554FFFFFFFF|- rs1 : x10<br> - rs2 : x2<br> - rd : x30<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -513<br> - rs1_w0_val == 32<br>                                                                                |[0x800004cc]:KWMMUL t5, a0, sp<br> [0x800004d0]:sd t5, 96(tp)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFDF|- rs1 : x30<br> - rs2 : x18<br> - rd : x12<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 33554432<br>                                                                        |[0x800004f4]:KWMMUL a2, t5, s2<br> [0x800004f8]:sd a2, 112(tp)<br>     |
|   9|[0x80003290]<br>0xFFFFEFFF00000000|- rs1 : x2<br> - rs2 : x24<br> - rd : x11<br> - rs2_w1_val == -67108865<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 16384<br>                                                                            |[0x80000520]:KWMMUL a1, sp, s8<br> [0x80000524]:sd a1, 128(tp)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x19<br> - rd : x14<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 8388608<br>                                                                                                     |[0x80000548]:KWMMUL a4, gp, s3<br> [0x8000054c]:sd a4, 144(tp)<br>     |
|  11|[0x800032b0]<br>0x00000000FFFFFFFF|- rs1 : x31<br> - rs2 : x3<br> - rd : x10<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 64<br> - rs1_w1_val == -2<br> - rs1_w0_val == -1048577<br>                                                      |[0x80000574]:KWMMUL a0, t6, gp<br> [0x80000578]:sd a0, 160(tp)<br>     |
|  12|[0x800032c0]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x10<br> - rd : x26<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == 0<br>                                                                                                           |[0x80000594]:KWMMUL s10, s5, a0<br> [0x80000598]:sd s10, 176(tp)<br>   |
|  13|[0x800032d0]<br>0x00002000FFFF0000|- rs1 : x17<br> - rs2 : x20<br> - rd : x28<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 65536<br>                                          |[0x800005c0]:KWMMUL t3, a7, s4<br> [0x800005c4]:sd t3, 192(tp)<br>     |
|  14|[0x800032e0]<br>0x000000000000016A|- rs1 : x29<br> - rs2 : x16<br> - rd : x22<br> - rs2_w1_val == -2097153<br> - rs1_w1_val == -513<br> - rs1_w0_val == 16777216<br>                                                                           |[0x800005f0]:KWMMUL s6, t4, a6<br> [0x800005f4]:sd s6, 208(tp)<br>     |
|  15|[0x800032f0]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x31<br> - rd : x0<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -33<br>                                                                           |[0x80000614]:KWMMUL zero, t2, t6<br> [0x80000618]:sd zero, 224(tp)<br> |
|  16|[0x80003300]<br>0xFFFF7FFFFFFFFFFF|- rs1 : x5<br> - rs2 : x26<br> - rd : x29<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -17<br> - rs1_w1_val == 134217728<br>                                                                             |[0x8000063c]:KWMMUL t4, t0, s10<br> [0x80000640]:sd t4, 240(tp)<br>    |
|  17|[0x80003310]<br>0x0000001000000000|- rs1 : x16<br> - rs2 : x30<br> - rd : x2<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == -131073<br> - rs1_w0_val == -1<br>                                                  |[0x8000066c]:KWMMUL sp, a6, t5<br> [0x80000670]:sd sp, 0(gp)<br>       |
|  18|[0x80003320]<br>0xFFFFFFFD00000000|- rs1 : x18<br> - rs2 : x7<br> - rd : x9<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -129<br>                                                     |[0x8000069c]:KWMMUL s1, s2, t2<br> [0x800006a0]:sd s1, 16(gp)<br>      |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x12<br> - rd : x1<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 8<br> - rs1_w1_val == 4<br> - rs1_w0_val == -65537<br>                                                             |[0x800006c8]:KWMMUL ra, s9, a2<br> [0x800006cc]:sd ra, 32(gp)<br>      |
|  20|[0x80003340]<br>0xFFFFCCCCFFFFFFFE|- rs1 : x4<br> - rs2 : x9<br> - rd : x25<br> - rs2_w1_val == -32769<br>                                                                                                                                     |[0x800006f8]:KWMMUL s9, tp, s1<br> [0x800006fc]:sd s9, 48(gp)<br>      |
|  21|[0x80003350]<br>0x00000000FFFFFD2B|- rs1 : x24<br> - rs2 : x15<br> - rd : x17<br> - rs2_w1_val == -16385<br> - rs1_w1_val == -65<br> - rs1_w0_val == -33554433<br>                                                                             |[0x8000072c]:KWMMUL a7, s8, a5<br> [0x80000730]:sd a7, 64(gp)<br>      |
|  22|[0x80003360]<br>0xFFFFF332FFFFFFFF|- rs1 : x11<br> - rs2 : x29<br> - rd : x21<br> - rs2_w1_val == -8193<br> - rs1_w0_val == 134217728<br>                                                                                                      |[0x80000758]:KWMMUL s5, a1, t4<br> [0x8000075c]:sd s5, 80(gp)<br>      |
|  23|[0x80003370]<br>0xFFFFFFFF0000000B|- rs1 : x6<br> - rs2 : x28<br> - rd : x24<br> - rs2_w1_val == -4097<br> - rs1_w0_val == -17<br>                                                                                                             |[0x8000078c]:KWMMUL s8, t1, t3<br> [0x80000790]:sd s8, 96(gp)<br>      |
|  24|[0x80003380]<br>0xFFFFF99800002000|- rs1 : x28<br> - rs2 : x23<br> - rd : x4<br> - rs2_w1_val == -2049<br> - rs1_w0_val == 262144<br>                                                                                                          |[0x800007b8]:KWMMUL tp, t3, s7<br> [0x800007bc]:sd tp, 112(gp)<br>     |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x7<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 256<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 2097152<br>                                                       |[0x800007dc]:KWMMUL t2, a5, s5<br> [0x800007e0]:sd t2, 128(gp)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x6<br> - rd : x8<br> - rs2_w1_val == -513<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 8192<br>                                                                                    |[0x80000808]:KWMMUL fp, a3, t1<br> [0x8000080c]:sd fp, 144(gp)<br>     |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x5<br> - rd : x31<br> - rs2_w1_val == -257<br> - rs2_w0_val == 4<br> - rs1_w0_val == -268435457<br>                                                                                 |[0x8000082c]:KWMMUL t6, s3, t0<br> [0x80000830]:sd t6, 160(gp)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFF700000000|- rs1 : x22<br> - rs2 : x11<br> - rd : x6<br> - rs2_w1_val == -65<br>                                                                                                                                       |[0x80000854]:KWMMUL t1, s6, a1<br> [0x80000858]:sd t1, 176(gp)<br>     |
|  29|[0x800033d0]<br>0xFFFFFFE5FFFFFF7F|- rs1 : x1<br> - rs2 : x4<br> - rd : x16<br> - rs2_w1_val == -33<br> - rs2_w0_val == -129<br> - rs1_w0_val == 2147483647<br>                                                                                |[0x80000884]:KWMMUL a6, ra, tp<br> [0x80000888]:sd a6, 192(gp)<br>     |
|  30|[0x800033e0]<br>0x00000000FFFFFFFF|- rs1 : x26<br> - rs2 : x14<br> - rd : x15<br> - rs2_w1_val == -17<br> - rs2_w0_val == -9<br> - rs1_w1_val == -16777217<br>                                                                                 |[0x800008ac]:KWMMUL a5, s10, a4<br> [0x800008b0]:sd a5, 208(gp)<br>    |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x3<br> - rs2_w1_val == -9<br> - rs2_w0_val == 524288<br>                                                                                                              |[0x800008d4]:KWMMUL gp, zero, s9<br> [0x800008d8]:sd gp, 0(ra)<br>     |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x5<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w0_val == -257<br>                                                                                           |[0x800008f4]:KWMMUL t0, a2, zero<br> [0x800008f8]:sd t0, 16(ra)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFD00000019|- rs2_w1_val == -3<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 64<br>                                                                                                                                |[0x80000920]:KWMMUL t6, t5, t4<br> [0x80000924]:sd t6, 32(ra)<br>      |
|  34|[0x80003420]<br>0x00000001FFFFFD55|- rs2_w1_val == -2<br> - rs2_w0_val == 1024<br>                                                                                                                                                             |[0x80000958]:KWMMUL t6, t5, t4<br> [0x8000095c]:sd t6, 48(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFFF9FFFFFFFF|- rs2_w1_val == -2147483648<br> - rs1_w0_val == -9<br>                                                                                                                                                      |[0x8000097c]:KWMMUL t6, t5, t4<br> [0x80000980]:sd t6, 64(ra)<br>      |
|  36|[0x80003440]<br>0x2AAAAAAA00000800|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 1431655765<br>                                                                                                                  |[0x800009ac]:KWMMUL t6, t5, t4<br> [0x800009b0]:sd t6, 80(ra)<br>      |
|  37|[0x80003450]<br>0xFFFFD2BFFFFFFD2B|- rs2_w1_val == 536870912<br>                                                                                                                                                                               |[0x800009dc]:KWMMUL t6, t5, t4<br> [0x800009e0]:sd t6, 96(ra)<br>      |
|  38|[0x80003460]<br>0x00000200FFF55554|- rs2_w1_val == 268435456<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 4096<br>                                                                                                                         |[0x80000a18]:KWMMUL t6, t5, t4<br> [0x80000a1c]:sd t6, 112(ra)<br>     |
|  39|[0x80003470]<br>0xFFFFFFBF00000000|- rs2_w1_val == 134217728<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 4<br>                                                                                                                               |[0x80000a40]:KWMMUL t6, t5, t4<br> [0x80000a44]:sd t6, 128(ra)<br>     |
|  40|[0x80003480]<br>0xFD555555FFFFF7FF|- rs2_w1_val == 67108864<br> - rs2_w0_val == -32769<br>                                                                                                                                                     |[0x80000a78]:KWMMUL t6, t5, t4<br> [0x80000a7c]:sd t6, 144(ra)<br>     |
|  41|[0x80003490]<br>0x000002D4FFFFFFD2|- rs2_w1_val == 33554432<br> - rs2_w0_val == 2097152<br>                                                                                                                                                    |[0x80000aac]:KWMMUL t6, t5, t4<br> [0x80000ab0]:sd t6, 160(ra)<br>     |
|  42|[0x800034a0]<br>0x00000002FFFFEFFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 256<br> - rs1_w0_val == -2097153<br>                                                                                               |[0x80000ad8]:KWMMUL t6, t5, t4<br> [0x80000adc]:sd t6, 176(ra)<br>     |
|  43|[0x800034b0]<br>0xFFFFBFFF000002AA|- rs2_w1_val == 8388608<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                  |[0x80000b08]:KWMMUL t6, t5, t4<br> [0x80000b0c]:sd t6, 192(ra)<br>     |
|  44|[0x800034c0]<br>0xFFEFFFFF00000200|- rs2_w1_val == 4194304<br> - rs1_w1_val == -536870913<br>                                                                                                                                                  |[0x80000b40]:KWMMUL t6, t5, t4<br> [0x80000b44]:sd t6, 208(ra)<br>     |
|  45|[0x800034d0]<br>0xFFFFFFFBFFFFEAAA|- rs2_w1_val == 2097152<br> - rs2_w0_val == -8193<br> - rs1_w1_val == -4097<br>                                                                                                                             |[0x80000b7c]:KWMMUL t6, t5, t4<br> [0x80000b80]:sd t6, 224(ra)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFDFFFFFFFFF|- rs2_w1_val == 1048576<br>                                                                                                                                                                                 |[0x80000ba8]:KWMMUL t6, t5, t4<br> [0x80000bac]:sd t6, 240(ra)<br>     |
|  47|[0x800034f0]<br>0x00000000FFFFFD2B|- rs2_w1_val == 524288<br>                                                                                                                                                                                  |[0x80000bd4]:KWMMUL t6, t5, t4<br> [0x80000bd8]:sd t6, 256(ra)<br>     |
|  48|[0x80003500]<br>0x00019999FFFFFFFF|- rs2_w1_val == 262144<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 128<br>                                                                                                                              |[0x80000c08]:KWMMUL t6, t5, t4<br> [0x80000c0c]:sd t6, 272(ra)<br>     |
|  49|[0x80003510]<br>0x0000000000000002|- rs2_w1_val == 131072<br>                                                                                                                                                                                  |[0x80000c2c]:KWMMUL t6, t5, t4<br> [0x80000c30]:sd t6, 288(ra)<br>     |
|  50|[0x80003520]<br>0x0000666600000000|- rs2_w1_val == 65536<br>                                                                                                                                                                                   |[0x80000c54]:KWMMUL t6, t5, t4<br> [0x80000c58]:sd t6, 304(ra)<br>     |
|  51|[0x80003530]<br>0x00006666FFDFFFFF|- rs2_w1_val == 32768<br> - rs1_w0_val == -4194305<br>                                                                                                                                                      |[0x80000c88]:KWMMUL t6, t5, t4<br> [0x80000c8c]:sd t6, 320(ra)<br>     |
|  52|[0x80003540]<br>0x0000000200000010|- rs2_w1_val == 16384<br> - rs2_w0_val == -268435457<br> - rs1_w1_val == 262144<br>                                                                                                                         |[0x80000cb4]:KWMMUL t6, t5, t4<br> [0x80000cb8]:sd t6, 336(ra)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8192<br> - rs1_w0_val == -8388609<br>                                                                                                                                                       |[0x80000cdc]:KWMMUL t6, t5, t4<br> [0x80000ce0]:sd t6, 352(ra)<br>     |
|  54|[0x80003560]<br>0xFFFFFFFF00000003|- rs2_w1_val == 4096<br>                                                                                                                                                                                    |[0x80000d0c]:KWMMUL t6, t5, t4<br> [0x80000d10]:sd t6, 368(ra)<br>     |
|  55|[0x80003570]<br>0xFFFFFDFF00000000|- rs2_w1_val == 2048<br>                                                                                                                                                                                    |[0x80000d34]:KWMMUL t6, t5, t4<br> [0x80000d38]:sd t6, 384(ra)<br>     |
|  56|[0x80003580]<br>0xFFFFFFFF00000000|- rs2_w1_val == 1024<br> - rs2_w0_val == 2<br>                                                                                                                                                              |[0x80000d54]:KWMMUL t6, t5, t4<br> [0x80000d58]:sd t6, 400(ra)<br>     |
|  57|[0x80003590]<br>0x0000000000000000|- rs2_w1_val == 512<br> - rs1_w0_val == -65<br>                                                                                                                                                             |[0x80000d78]:KWMMUL t6, t5, t4<br> [0x80000d7c]:sd t6, 416(ra)<br>     |
|  58|[0x800035a0]<br>0xFFFFFF55FFFFFFFF|- rs2_w1_val == 256<br>                                                                                                                                                                                     |[0x80000da4]:KWMMUL t6, t5, t4<br> [0x80000da8]:sd t6, 432(ra)<br>     |
|  59|[0x800035b0]<br>0x00020000FFFFFFFF|- rs2_w0_val == -2<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 4096<br>                                                                                                                                 |[0x80000dd0]:KWMMUL t6, t5, t4<br> [0x80000dd4]:sd t6, 448(ra)<br>     |
|  60|[0x800035c0]<br>0x4444444300000555|- rs1_w0_val == 2048<br>                                                                                                                                                                                    |[0x80000e14]:KWMMUL t6, t5, t4<br> [0x80000e18]:sd t6, 464(ra)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFFD55|- rs1_w1_val == -257<br> - rs1_w0_val == 1024<br>                                                                                                                                                           |[0x80000e3c]:KWMMUL t6, t5, t4<br> [0x80000e40]:sd t6, 480(ra)<br>     |
|  62|[0x800035e0]<br>0xFDFFFFFF00000199|- rs1_w1_val == 1073741824<br> - rs1_w0_val == 512<br>                                                                                                                                                      |[0x80000e70]:KWMMUL t6, t5, t4<br> [0x80000e74]:sd t6, 496(ra)<br>     |
|  63|[0x800035f0]<br>0x00000000FFFFFFFF|- rs1_w0_val == 256<br>                                                                                                                                                                                     |[0x80000e98]:KWMMUL t6, t5, t4<br> [0x80000e9c]:sd t6, 512(ra)<br>     |
|  64|[0x80003600]<br>0x00000000FFFFFFF7|- rs2_w1_val == 32<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 16<br>                                                                                                   |[0x80000ebc]:KWMMUL t6, t5, t4<br> [0x80000ec0]:sd t6, 528(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFF00000000|- rs1_w1_val == 512<br> - rs1_w0_val == 8<br>                                                                                                                                                               |[0x80000ee0]:KWMMUL t6, t5, t4<br> [0x80000ee4]:sd t6, 544(ra)<br>     |
|  66|[0x80003620]<br>0x0000055500000000|- rs1_w0_val == 2<br>                                                                                                                                                                                       |[0x80000f10]:KWMMUL t6, t5, t4<br> [0x80000f14]:sd t6, 560(ra)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 64<br> - rs1_w0_val == 1<br>                                                                                                                                                                |[0x80000f38]:KWMMUL t6, t5, t4<br> [0x80000f3c]:sd t6, 576(ra)<br>     |
|  68|[0x80003640]<br>0x00000000FFFFFFFF|- rs2_w1_val == 128<br> - rs1_w1_val == 16384<br>                                                                                                                                                           |[0x80000f64]:KWMMUL t6, t5, t4<br> [0x80000f68]:sd t6, 592(ra)<br>     |
|  69|[0x80003650]<br>0x00000000FFFFFFDF|- rs2_w1_val == 16<br>                                                                                                                                                                                      |[0x80000f88]:KWMMUL t6, t5, t4<br> [0x80000f8c]:sd t6, 608(ra)<br>     |
|  70|[0x80003660]<br>0x00000000FFFFFFBF|- rs2_w1_val == 8<br> - rs2_w0_val == -33554433<br>                                                                                                                                                         |[0x80000fac]:KWMMUL t6, t5, t4<br> [0x80000fb0]:sd t6, 624(ra)<br>     |
|  71|[0x80003670]<br>0xFFFFFFFE00000000|- rs2_w1_val == 4<br>                                                                                                                                                                                       |[0x80000fd4]:KWMMUL t6, t5, t4<br> [0x80000fd8]:sd t6, 640(ra)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2<br>                                                                                                                                                                                       |[0x80000ff8]:KWMMUL t6, t5, t4<br> [0x80000ffc]:sd t6, 656(ra)<br>     |
|  73|[0x80003690]<br>0x0000000000000000|- rs2_w1_val == 1<br> - rs1_w1_val == 524288<br>                                                                                                                                                            |[0x80001020]:KWMMUL t6, t5, t4<br> [0x80001024]:sd t6, 672(ra)<br>     |
|  74|[0x800036a0]<br>0x0000000000000000|- rs2_w0_val == -536870913<br>                                                                                                                                                                              |[0x80001044]:KWMMUL t6, t5, t4<br> [0x80001048]:sd t6, 688(ra)<br>     |
|  75|[0x800036b0]<br>0x0000000000400000|- rs2_w1_val == -1<br> - rs1_w1_val == -17<br> - rs1_w0_val == -16777217<br>                                                                                                                                |[0x80001068]:KWMMUL t6, t5, t4<br> [0x8000106c]:sd t6, 704(ra)<br>     |
|  76|[0x800036c0]<br>0x0000000000000015|- rs2_w0_val == 1431655765<br>                                                                                                                                                                              |[0x80001090]:KWMMUL t6, t5, t4<br> [0x80001094]:sd t6, 720(ra)<br>     |
|  77|[0x800036d0]<br>0xFFAAAAAA00001FFF|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 8388608<br>                                                                                                                                                  |[0x800010c4]:KWMMUL t6, t5, t4<br> [0x800010c8]:sd t6, 736(ra)<br>     |
|  78|[0x800036e0]<br>0xFFFFFFFF00000000|- rs2_w0_val == -67108865<br> - rs1_w1_val == -33554433<br>                                                                                                                                                 |[0x800010e8]:KWMMUL t6, t5, t4<br> [0x800010ec]:sd t6, 752(ra)<br>     |
|  79|[0x800036f0]<br>0xF5555555FFFFFFFF|- rs2_w0_val == -8388609<br>                                                                                                                                                                                |[0x80001118]:KWMMUL t6, t5, t4<br> [0x8000111c]:sd t6, 768(ra)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFFFFD55554|- rs2_w0_val == -4194305<br>                                                                                                                                                                                |[0x80001148]:KWMMUL t6, t5, t4<br> [0x8000114c]:sd t6, 784(ra)<br>     |
|  81|[0x80003710]<br>0x0000000000004000|- rs2_w0_val == -2097153<br>                                                                                                                                                                                |[0x80001174]:KWMMUL t6, t5, t4<br> [0x80001178]:sd t6, 800(ra)<br>     |
|  82|[0x80003720]<br>0x0000000000000002|- rs2_w0_val == -131073<br> - rs1_w1_val == -5<br>                                                                                                                                                          |[0x800011a4]:KWMMUL t6, t5, t4<br> [0x800011a8]:sd t6, 816(ra)<br>     |
|  83|[0x80003730]<br>0x00000666FFFFFFFF|- rs2_w0_val == -65537<br> - rs1_w1_val == 2048<br>                                                                                                                                                         |[0x800011d4]:KWMMUL t6, t5, t4<br> [0x800011d8]:sd t6, 832(ra)<br>     |
|  84|[0x80003740]<br>0xFFFFFFEFFFFFFFFF|- rs2_w0_val == -16385<br>                                                                                                                                                                                  |[0x80001200]:KWMMUL t6, t5, t4<br> [0x80001204]:sd t6, 848(ra)<br>     |
|  85|[0x80003750]<br>0x05555555FFFFFFFF|- rs2_w0_val == -4097<br>                                                                                                                                                                                   |[0x80001234]:KWMMUL t6, t5, t4<br> [0x80001238]:sd t6, 864(ra)<br>     |
|  86|[0x80003760]<br>0xFFCCCCCCFFFFFF99|- rs2_w0_val == -257<br>                                                                                                                                                                                    |[0x80001268]:KWMMUL t6, t5, t4<br> [0x8000126c]:sd t6, 880(ra)<br>     |
|  87|[0x80003770]<br>0x00000000FFFFFFFF|- rs2_w0_val == -65<br> - rs1_w1_val == 1024<br>                                                                                                                                                            |[0x8000128c]:KWMMUL t6, t5, t4<br> [0x80001290]:sd t6, 896(ra)<br>     |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == -5<br>                                                                                                                                                                                      |[0x800012b0]:KWMMUL t6, t5, t4<br> [0x800012b4]:sd t6, 912(ra)<br>     |
|  89|[0x80003790]<br>0x00005555FFFFFFFF|- rs2_w0_val == -3<br>                                                                                                                                                                                      |[0x800012dc]:KWMMUL t6, t5, t4<br> [0x800012e0]:sd t6, 928(ra)<br>     |
|  90|[0x800037a0]<br>0xAAAAAAAA19999999|- rs2_w0_val == 1073741824<br>                                                                                                                                                                              |[0x80001318]:KWMMUL t6, t5, t4<br> [0x8000131c]:sd t6, 944(ra)<br>     |
|  91|[0x800037b0]<br>0xFFFFFFFF00008000|- rs2_w0_val == 536870912<br> - rs1_w1_val == 16<br> - rs1_w0_val == 131072<br>                                                                                                                             |[0x8000133c]:KWMMUL t6, t5, t4<br> [0x80001340]:sd t6, 960(ra)<br>     |
|  92|[0x800037c0]<br>0xFFFFFFBFF5555555|- rs2_w0_val == 268435456<br> - rs1_w1_val == 536870912<br>                                                                                                                                                 |[0x80001370]:KWMMUL t6, t5, t4<br> [0x80001374]:sd t6, 976(ra)<br>     |
|  93|[0x800037d0]<br>0xFFFFFFFF00004000|- rs2_w0_val == 134217728<br>                                                                                                                                                                               |[0x80001394]:KWMMUL t6, t5, t4<br> [0x80001398]:sd t6, 992(ra)<br>     |
|  94|[0x800037e0]<br>0x0002AAAA00000800|- rs2_w0_val == 33554432<br>                                                                                                                                                                                |[0x800013c4]:KWMMUL t6, t5, t4<br> [0x800013c8]:sd t6, 1008(ra)<br>    |
|  95|[0x800037f0]<br>0xFFFFFF7FFFFFFFBF|- rs2_w0_val == 1048576<br> - rs1_w0_val == -131073<br>                                                                                                                                                     |[0x800013f4]:KWMMUL t6, t5, t4<br> [0x800013f8]:sd t6, 1024(ra)<br>    |
|  96|[0x80003800]<br>0xFFFFFFFF00000000|- rs2_w0_val == 262144<br> - rs1_w1_val == -9<br>                                                                                                                                                           |[0x80001418]:KWMMUL t6, t5, t4<br> [0x8000141c]:sd t6, 1040(ra)<br>    |
|  97|[0x80003810]<br>0xFFFFFFFFFFFFFFF7|- rs2_w0_val == 65536<br> - rs1_w0_val == -262145<br>                                                                                                                                                       |[0x80001444]:KWMMUL t6, t5, t4<br> [0x80001448]:sd t6, 1056(ra)<br>    |
|  98|[0x80003820]<br>0x00001FFFFFFFFFFF|- rs2_w0_val == 32<br> - rs1_w0_val == -2049<br>                                                                                                                                                            |[0x80001470]:KWMMUL t6, t5, t4<br> [0x80001474]:sd t6, 1072(ra)<br>    |
|  99|[0x80003830]<br>0x00010000FFFFFFF5|- rs2_w0_val == 16<br> - rs1_w1_val == -262145<br>                                                                                                                                                          |[0x800014a4]:KWMMUL t6, t5, t4<br> [0x800014a8]:sd t6, 1088(ra)<br>    |
| 100|[0x80003840]<br>0xFDFFFFFFFFFFFFFF|- rs2_w0_val == 1<br> - rs1_w1_val == -67108865<br>                                                                                                                                                         |[0x800014d4]:KWMMUL t6, t5, t4<br> [0x800014d8]:sd t6, 1104(ra)<br>    |
| 101|[0x80003850]<br>0xFFFFBFFFFFFFFFFF|- rs2_w0_val == -1<br>                                                                                                                                                                                      |[0x80001500]:KWMMUL t6, t5, t4<br> [0x80001504]:sd t6, 1120(ra)<br>    |
| 102|[0x80003860]<br>0xFFFF7FFFFFFFFFFF|- rs1_w1_val == -1073741825<br>                                                                                                                                                                             |[0x8000152c]:KWMMUL t6, t5, t4<br> [0x80001530]:sd t6, 1136(ra)<br>    |
| 103|[0x80003870]<br>0xFFFFFFFF00000000|- rs1_w1_val == -268435457<br>                                                                                                                                                                              |[0x80001554]:KWMMUL t6, t5, t4<br> [0x80001558]:sd t6, 1152(ra)<br>    |
| 104|[0x80003880]<br>0xFFFFBFFFFFFFFFFA|- rs1_w1_val == -134217729<br>                                                                                                                                                                              |[0x8000158c]:KWMMUL t6, t5, t4<br> [0x80001590]:sd t6, 1168(ra)<br>    |
| 105|[0x80003890]<br>0xFFBFFFFFFFFFF7FF|- rs1_w1_val == -8388609<br> - rs1_w0_val == 4194304<br>                                                                                                                                                    |[0x800015bc]:KWMMUL t6, t5, t4<br> [0x800015c0]:sd t6, 1184(ra)<br>    |
| 106|[0x800038a0]<br>0xFFFFFFFFFCCCCCCC|- rs1_w1_val == -2097153<br>                                                                                                                                                                                |[0x800015ec]:KWMMUL t6, t5, t4<br> [0x800015f0]:sd t6, 1200(ra)<br>    |
| 107|[0x800038b0]<br>0xFFFFFFFF00000000|- rs1_w1_val == -1048577<br>                                                                                                                                                                                |[0x8000160c]:KWMMUL t6, t5, t4<br> [0x80001610]:sd t6, 1216(ra)<br>    |
| 108|[0x800038c0]<br>0x0000000000000000|- rs1_w1_val == -32769<br>                                                                                                                                                                                  |[0x80001638]:KWMMUL t6, t5, t4<br> [0x8000163c]:sd t6, 1232(ra)<br>    |
| 109|[0x800038d0]<br>0xFFFFFFFDFFFFFFDF|- rs1_w1_val == -16385<br> - rs1_w0_val == 67108864<br>                                                                                                                                                     |[0x80001660]:KWMMUL t6, t5, t4<br> [0x80001664]:sd t6, 1248(ra)<br>    |
| 110|[0x800038e0]<br>0xFFFFFFFF00000000|- rs1_w1_val == -2049<br>                                                                                                                                                                                   |[0x8000168c]:KWMMUL t6, t5, t4<br> [0x80001690]:sd t6, 1264(ra)<br>    |
| 111|[0x800038f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == -33<br> - rs1_w0_val == -513<br>                                                                                                                                                            |[0x800016b0]:KWMMUL t6, t5, t4<br> [0x800016b4]:sd t6, 1280(ra)<br>    |
| 112|[0x80003900]<br>0x00000000FFFFFFFF|- rs1_w1_val == -3<br> - rs1_w0_val == -8193<br>                                                                                                                                                            |[0x800016dc]:KWMMUL t6, t5, t4<br> [0x800016e0]:sd t6, 1296(ra)<br>    |
| 113|[0x80003910]<br>0xAAAAAAACFFFFFEFF|- rs1_w1_val == -2147483648<br>                                                                                                                                                                             |[0x80001710]:KWMMUL t6, t5, t4<br> [0x80001714]:sd t6, 1312(ra)<br>    |
| 114|[0x80003920]<br>0x00000000FFFFFFFF|- rs1_w1_val == 67108864<br>                                                                                                                                                                                |[0x8000173c]:KWMMUL t6, t5, t4<br> [0x80001740]:sd t6, 1328(ra)<br>    |
| 115|[0x80003930]<br>0x00200000FFFFF998|- rs1_w1_val == 33554432<br>                                                                                                                                                                                |[0x8000177c]:KWMMUL t6, t5, t4<br> [0x80001780]:sd t6, 1344(ra)<br>    |
| 116|[0x80003940]<br>0x0000016AFFFFFFFF|- rs2_w0_val == 512<br> - rs1_w1_val == 16777216<br>                                                                                                                                                        |[0x800017b0]:KWMMUL t6, t5, t4<br> [0x800017b4]:sd t6, 1360(ra)<br>    |
| 117|[0x80003950]<br>0xFFC00000FAAAAAAA|- rs1_w1_val == 4194304<br>                                                                                                                                                                                 |[0x800017e8]:KWMMUL t6, t5, t4<br> [0x800017ec]:sd t6, 1376(ra)<br>    |
| 118|[0x80003960]<br>0xFFFFFFFF000016A0|- rs1_w1_val == 2097152<br> - rs1_w0_val == 268435456<br>                                                                                                                                                   |[0x80001810]:KWMMUL t6, t5, t4<br> [0x80001814]:sd t6, 1392(ra)<br>    |
| 119|[0x80003970]<br>0x00000001FFFFFFFF|- rs1_w1_val == 65536<br>                                                                                                                                                                                   |[0x8000183c]:KWMMUL t6, t5, t4<br> [0x80001840]:sd t6, 1408(ra)<br>    |
| 120|[0x80003980]<br>0x0000000000000000|- rs1_w1_val == 128<br> - rs1_w0_val == -1025<br>                                                                                                                                                           |[0x80001860]:KWMMUL t6, t5, t4<br> [0x80001864]:sd t6, 1424(ra)<br>    |
| 121|[0x80003990]<br>0xFFFFFFFF00000000|- rs1_w1_val == 64<br>                                                                                                                                                                                      |[0x8000188c]:KWMMUL t6, t5, t4<br> [0x80001890]:sd t6, 1440(ra)<br>    |
| 122|[0x800039a0]<br>0xFFFFFFFF01FFFFFF|- rs1_w1_val == 32<br>                                                                                                                                                                                      |[0x800018b0]:KWMMUL t6, t5, t4<br> [0x800018b4]:sd t6, 1456(ra)<br>    |
| 123|[0x800039b0]<br>0x0000000000008000|- rs1_w1_val == 2<br> - rs1_w0_val == 536870912<br>                                                                                                                                                         |[0x800018d8]:KWMMUL t6, t5, t4<br> [0x800018dc]:sd t6, 1472(ra)<br>    |
| 124|[0x800039c0]<br>0x0000000000000000|- rs1_w1_val == 1<br>                                                                                                                                                                                       |[0x8000190c]:KWMMUL t6, t5, t4<br> [0x80001910]:sd t6, 1488(ra)<br>    |
| 125|[0x800039d0]<br>0xFFFFFFFF00000000|- rs1_w1_val == -1<br>                                                                                                                                                                                      |[0x80001930]:KWMMUL t6, t5, t4<br> [0x80001934]:sd t6, 1504(ra)<br>    |
| 126|[0x800039f0]<br>0x0000000000000004|- rs1_w0_val == -1073741825<br>                                                                                                                                                                             |[0x80001988]:KWMMUL t6, t5, t4<br> [0x8000198c]:sd t6, 1536(ra)<br>    |
| 127|[0x80003a00]<br>0x00000000FFFFFFFE|- rs1_w0_val == -536870913<br>                                                                                                                                                                              |[0x800019b0]:KWMMUL t6, t5, t4<br> [0x800019b4]:sd t6, 1552(ra)<br>    |
| 128|[0x80003a10]<br>0x3FFFFFFE00000000|- rs1_w0_val == -67108865<br>                                                                                                                                                                               |[0x800019dc]:KWMMUL t6, t5, t4<br> [0x800019e0]:sd t6, 1568(ra)<br>    |
| 129|[0x80003a20]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == -524289<br>                                                                                                                                                                                 |[0x80001a08]:KWMMUL t6, t5, t4<br> [0x80001a0c]:sd t6, 1584(ra)<br>    |
| 130|[0x80003a30]<br>0x0000000000000000|- rs1_w0_val == -32769<br>                                                                                                                                                                                  |[0x80001a38]:KWMMUL t6, t5, t4<br> [0x80001a3c]:sd t6, 1600(ra)<br>    |
| 131|[0x80003a40]<br>0x0000000000000000|- rs1_w0_val == -16385<br>                                                                                                                                                                                  |[0x80001a6c]:KWMMUL t6, t5, t4<br> [0x80001a70]:sd t6, 1616(ra)<br>    |
| 132|[0x80003a50]<br>0xFFFFFFFE00000000|- rs2_w0_val == 8192<br>                                                                                                                                                                                    |[0x80001a98]:KWMMUL t6, t5, t4<br> [0x80001a9c]:sd t6, 1632(ra)<br>    |
| 133|[0x80003a60]<br>0x01999999FFFFFFFF|- rs1_w0_val == -4097<br>                                                                                                                                                                                   |[0x80001acc]:KWMMUL t6, t5, t4<br> [0x80001ad0]:sd t6, 1648(ra)<br>    |
| 134|[0x80003a70]<br>0xFFFFE665FFFFFFFF|- rs2_w0_val == 4096<br>                                                                                                                                                                                    |[0x80001afc]:KWMMUL t6, t5, t4<br> [0x80001b00]:sd t6, 1664(ra)<br>    |
| 135|[0x80003a80]<br>0x0000000000000000|- rs1_w0_val == -33<br>                                                                                                                                                                                     |[0x80001b28]:KWMMUL t6, t5, t4<br> [0x80001b2c]:sd t6, 1680(ra)<br>    |
| 136|[0x80003a90]<br>0x0000000000000000|- rs1_w0_val == -5<br>                                                                                                                                                                                      |[0x80001b50]:KWMMUL t6, t5, t4<br> [0x80001b54]:sd t6, 1696(ra)<br>    |
| 137|[0x80003aa0]<br>0xFFFFFFDFFFFFFFFF|- rs1_w0_val == -2<br>                                                                                                                                                                                      |[0x80001b7c]:KWMMUL t6, t5, t4<br> [0x80001b80]:sd t6, 1712(ra)<br>    |
| 138|[0x80003ab0]<br>0x00000000FFBFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                                                                                              |[0x80001ba8]:KWMMUL t6, t5, t4<br> [0x80001bac]:sd t6, 1728(ra)<br>    |
| 139|[0x80003ac0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 8388608<br>                                                                                                                                                                                 |[0x80001bcc]:KWMMUL t6, t5, t4<br> [0x80001bd0]:sd t6, 1744(ra)<br>    |
| 140|[0x80003ad0]<br>0x00000003FFFFFF7F|- rs2_w0_val == 32768<br>                                                                                                                                                                                   |[0x80001bfc]:KWMMUL t6, t5, t4<br> [0x80001c00]:sd t6, 1760(ra)<br>    |
| 141|[0x80003ae0]<br>0xFFFFFFFFFFFFFFFB|- rs2_w0_val == 16384<br>                                                                                                                                                                                   |[0x80001c24]:KWMMUL t6, t5, t4<br> [0x80001c28]:sd t6, 1776(ra)<br>    |
| 142|[0x80003af0]<br>0xFFFFFFFD00000000|- rs1_w0_val == 1048576<br>                                                                                                                                                                                 |[0x80001c48]:KWMMUL t6, t5, t4<br> [0x80001c4c]:sd t6, 1792(ra)<br>    |
| 143|[0x80003b00]<br>0x0000000000000040|- rs1_w0_val == 524288<br>                                                                                                                                                                                  |[0x80001c6c]:KWMMUL t6, t5, t4<br> [0x80001c70]:sd t6, 1808(ra)<br>    |
| 144|[0x80003b10]<br>0xFFD5555500000000|- rs2_w0_val == 2048<br>                                                                                                                                                                                    |[0x80001ca0]:KWMMUL t6, t5, t4<br> [0x80001ca4]:sd t6, 1824(ra)<br>    |
| 145|[0x80003b20]<br>0xFFFFFFFFFFFFFFE5|- rs1_w1_val == 8192<br>                                                                                                                                                                                    |[0x80001ccc]:KWMMUL t6, t5, t4<br> [0x80001cd0]:sd t6, 1840(ra)<br>    |
| 146|[0x80003b30]<br>0xF7FFFFFFFFFFFFFF|- rs1_w0_val == 32768<br>                                                                                                                                                                                   |[0x80001cfc]:KWMMUL t6, t5, t4<br> [0x80001d00]:sd t6, 1856(ra)<br>    |
| 147|[0x80003b60]<br>0xFFFFFFFF00000000|- rs2_w1_val == -5<br>                                                                                                                                                                                      |[0x80001d60]:KWMMUL t6, t5, t4<br> [0x80001d64]:sd t6, 1904(ra)<br>    |
