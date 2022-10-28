
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001e70')]      |
| SIG_REGION                | [('0x80003210', '0x80003b10', '288 dwords')]      |
| COV_LABELS                | kslra8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra8-01.S    |
| Total Number of coverpoints| 398     |
| Total Coverpoints Hit     | 392      |
| Total Signature Updates   | 288      |
| STAT1                     | 139      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 144     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d1c]:KSLRA8 t6, t5, t4
      [0x80000d20]:sd t6, 256(ra)
 -- Signature Address: 0x80003510 Data: 0x0000FFFFFEFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b6_val == 1
      - rs1_b4_val == -17
      - rs1_b3_val == -128
      - rs1_b1_val == -3
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d9c]:KSLRA8 t6, t5, t4
      [0x80001da0]:sd t6, 1712(ra)
 -- Signature Address: 0x80003ac0 Data: 0xA080807F7F7F7F80
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6148914691236517205
      - rs1_b7_val == -3
      - rs1_b4_val == 16
      - rs1_b1_val == 32
      - rs1_b0_val == -86




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001dd4]:KSLRA8 t6, t5, t4
      [0x80001dd8]:sd t6, 1728(ra)
 -- Signature Address: 0x80003ad0 Data: 0x2002FC02FDFE2AFE
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 9223372036854775807
      - rs1_b7_val == 64
      - rs1_b4_val == 4
      - rs1_b1_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e04]:KSLRA8 t6, t5, t4
      [0x80001e08]:sd t6, 1744(ra)
 -- Signature Address: 0x80003ae0 Data: 0x0120D5041F08DF03
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -1152921504606846977
      - rs1_b6_val == 64
      - rs1_b5_val == -86
      - rs1_b4_val == 8
      - rs1_b2_val == 16
      - rs1_b1_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e34]:KSLRA8 t6, t5, t4
      [0x80001e38]:sd t6, 1760(ra)
 -- Signature Address: 0x80003af0 Data: 0xC0FDFB03FF0402FD
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -562949953421313
      - rs1_b7_val == -128
      - rs1_b6_val == -5
      - rs1_b3_val == -1
      - rs1_b2_val == 8
      - rs1_b0_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra8', 'rs1 : x25', 'rs2 : x25', 'rd : x27', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_b7_val == 85', 'rs1_b6_val == 85', 'rs1_b5_val == 85', 'rs1_b4_val == 85', 'rs1_b3_val == 85', 'rs1_b2_val == 85', 'rs1_b1_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800003e4]:KSLRA8 s11, s9, s9
	-[0x800003e8]:sd s11, 0(tp)
Current Store : [0x800003ec] : sd s9, 8(tp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x7', 'rs2 : x7', 'rd : x7', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_b7_val == 127', 'rs1_b6_val == -1', 'rs1_b5_val == -1', 'rs1_b4_val == -1', 'rs1_b3_val == -1', 'rs1_b2_val == -1', 'rs1_b1_val == -1', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x8000041c]:KSLRA8 t2, t2, t2
	-[0x80000420]:sd t2, 16(tp)
Current Store : [0x80000424] : sd t2, 24(tp) -- Store: [0x80003228]:0x3FFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x29', 'rd : x16', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -4611686018427387905', 'rs1_b5_val == 16', 'rs1_b2_val == 0', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x8000044c]:KSLRA8 a6, t5, t4
	-[0x80000450]:sd a6, 32(tp)
Current Store : [0x80000454] : sd t5, 40(tp) -- Store: [0x80003238]:0x0306100955000105




Last Coverpoint : ['rs1 : x23', 'rs2 : x15', 'rd : x23', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_b7_val == 0', 'rs1_b6_val == 2', 'rs1_b5_val == 32', 'rs1_b4_val == -17', 'rs1_b3_val == -33', 'rs1_b2_val == -17', 'rs1_b1_val == 16', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x8000047c]:KSLRA8 s7, s7, a5
	-[0x80000480]:sd s7, 48(tp)
Current Store : [0x80000484] : sd s7, 56(tp) -- Store: [0x80003248]:0x000110F7EFF708D5




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x18', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_b6_val == 0', 'rs1_b5_val == 0', 'rs1_b4_val == 0', 'rs1_b3_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800004ac]:KSLRA8 s2, zero, s2
	-[0x800004b0]:sd s2, 64(tp)
Current Store : [0x800004b4] : sd zero, 72(tp) -- Store: [0x80003258]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x2', 'rd : x24', 'rs2_val == -576460752303423489', 'rs1_b7_val == 2']
Last Code Sequence : 
	-[0x800004dc]:KSLRA8 s8, ra, sp
	-[0x800004e0]:sd s8, 80(tp)
Current Store : [0x800004e4] : sd ra, 88(tp) -- Store: [0x80003268]:0x020055F6FCF603FF




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x19', 'rs2_val == -288230376151711745', 'rs1_b7_val == 16', 'rs1_b4_val == -5']
Last Code Sequence : 
	-[0x8000050c]:KSLRA8 s3, t1, a6
	-[0x80000510]:sd s3, 96(tp)
Current Store : [0x80000514] : sd t1, 104(tp) -- Store: [0x80003278]:0x10C006FB3FFCFA06




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x25', 'rs2_val == -144115188075855873', 'rs1_b6_val == -128', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x80000544]:KSLRA8 s9, s1, t5
	-[0x80000548]:sd s9, 112(tp)
Current Store : [0x8000054c] : sd s1, 120(tp) -- Store: [0x80003288]:0x558020F6F9015505




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rd : x28', 'rs2_val == -72057594037927937', 'rs1_b6_val == -5', 'rs1_b3_val == 127', 'rs1_b2_val == 127', 'rs1_b1_val == 2', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x80000574]:KSLRA8 t3, s3, s5
	-[0x80000578]:sd t3, 128(tp)
Current Store : [0x8000057c] : sd s3, 136(tp) -- Store: [0x80003298]:0x03FB00057F7F02FD




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x12', 'rs2_val == -36028797018963969', 'rs1_b7_val == 32', 'rs1_b6_val == 32', 'rs1_b5_val == 127', 'rs1_b2_val == -9', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x800005a4]:KSLRA8 a2, s11, a7
	-[0x800005a8]:sd a2, 144(tp)
Current Store : [0x800005ac] : sd s11, 152(tp) -- Store: [0x800032a8]:0x20207F00F9F7FA01




Last Coverpoint : ['rs1 : x31', 'rs2 : x9', 'rd : x29', 'rs2_val == -18014398509481985', 'rs1_b7_val == -17', 'rs1_b1_val == 4', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x800005dc]:KSLRA8 t4, t6, s1
	-[0x800005e0]:sd t4, 160(tp)
Current Store : [0x800005e4] : sd t6, 168(tp) -- Store: [0x800032b8]:0xEF0203C0F6F90408




Last Coverpoint : ['rs1 : x16', 'rs2 : x19', 'rd : x13', 'rs2_val == -9007199254740993', 'rs1_b7_val == -2', 'rs1_b6_val == -33', 'rs1_b5_val == -5', 'rs1_b4_val == 127', 'rs1_b3_val == -65']
Last Code Sequence : 
	-[0x8000060c]:KSLRA8 a3, a6, s3
	-[0x80000610]:sd a3, 176(tp)
Current Store : [0x80000614] : sd a6, 184(tp) -- Store: [0x800032c8]:0xFEDFFB7FBFF90003




Last Coverpoint : ['rs1 : x3', 'rs2 : x5', 'rd : x2', 'rs2_val == -4503599627370497', 'rs1_b5_val == 64', 'rs1_b2_val == -2', 'rs1_b1_val == 8', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x8000063c]:KSLRA8 sp, gp, t0
	-[0x80000640]:sd sp, 192(tp)
Current Store : [0x80000644] : sd gp, 200(tp) -- Store: [0x800032d8]:0xC0F640C0FFFE0804




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x5', 'rs2_val == -2251799813685249', 'rs1_b2_val == -33']
Last Code Sequence : 
	-[0x8000066c]:KSLRA8 t0, a7, ra
	-[0x80000670]:sd t0, 208(tp)
Current Store : [0x80000674] : sd a7, 216(tp) -- Store: [0x800032e8]:0x7F55070707DFF805




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x6', 'rs2_val == -1125899906842625', 'rs1_b4_val == 8']
Last Code Sequence : 
	-[0x8000069c]:KSLRA8 t1, t3, fp
	-[0x800006a0]:sd t1, 224(tp)
Current Store : [0x800006a4] : sd t3, 232(tp) -- Store: [0x800032f8]:0x20060008FAF60605




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x0', 'rs2_val == -562949953421313', 'rs1_b7_val == -128', 'rs1_b2_val == 8', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x800006cc]:KSLRA8 zero, s6, a0
	-[0x800006d0]:sd zero, 240(tp)
Current Store : [0x800006d4] : sd s6, 248(tp) -- Store: [0x80003308]:0x80FBF607FF0805FB




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rd : x3', 'rs2_val == -281474976710657', 'rs1_b7_val == -86', 'rs1_b6_val == -17', 'rs1_b5_val == -17', 'rs1_b4_val == 4', 'rs1_b3_val == 1', 'rs1_b2_val == 64', 'rs1_b1_val == -2']
Last Code Sequence : 
	-[0x800006fc]:KSLRA8 gp, s10, s4
	-[0x80000700]:sd gp, 256(tp)
Current Store : [0x80000704] : sd s10, 264(tp) -- Store: [0x80003318]:0xAAEFEF040140FE07




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x21', 'rs2_val == -140737488355329', 'rs1_b6_val == 8', 'rs1_b5_val == -65', 'rs1_b3_val == -86']
Last Code Sequence : 
	-[0x8000073c]:KSLRA8 s5, t4, s11
	-[0x80000740]:sd s5, 0(t2)
Current Store : [0x80000744] : sd t4, 8(t2) -- Store: [0x80003328]:0x1008BFFAAADF0908




Last Coverpoint : ['rs1 : x10', 'rs2 : x6', 'rd : x31', 'rs2_val == -70368744177665', 'rs1_b7_val == -3', 'rs1_b5_val == -128', 'rs1_b4_val == -65', 'rs1_b3_val == -9', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x8000076c]:KSLRA8 t6, a0, t1
	-[0x80000770]:sd t6, 16(t2)
Current Store : [0x80000774] : sd a0, 24(t2) -- Store: [0x80003338]:0xFD5580BFF7FEEFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x3', 'rd : x30', 'rs2_val == -35184372088833', 'rs1_b7_val == 64', 'rs1_b6_val == 1', 'rs1_b4_val == 32', 'rs1_b1_val == -33', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800007a4]:KSLRA8 t5, s5, gp
	-[0x800007a8]:sd t5, 32(t2)
Current Store : [0x800007ac] : sd s5, 40(t2) -- Store: [0x80003348]:0x4001F920FCF8DFF7




Last Coverpoint : ['rs1 : x8', 'rs2 : x23', 'rd : x9', 'rs2_val == -17592186044417']
Last Code Sequence : 
	-[0x800007dc]:KSLRA8 s1, fp, s7
	-[0x800007e0]:sd s1, 48(t2)
Current Store : [0x800007e4] : sd fp, 56(t2) -- Store: [0x80003358]:0xF9F9EF0501090909




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x15', 'rs2_val == -8796093022209', 'rs1_b7_val == -5', 'rs1_b5_val == -33', 'rs1_b2_val == 16', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x8000080c]:KSLRA8 a5, sp, s10
	-[0x80000810]:sd a5, 64(t2)
Current Store : [0x80000814] : sd sp, 72(t2) -- Store: [0x80003368]:0xFB00DFBF0010EF40




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x1', 'rs2_val == -4398046511105', 'rs1_b3_val == -5', 'rs1_b2_val == -65', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x8000083c]:KSLRA8 ra, t0, a4
	-[0x80000840]:sd ra, 80(t2)
Current Store : [0x80000844] : sd t0, 88(t2) -- Store: [0x80003378]:0x06FBEF08FBBFFDFA




Last Coverpoint : ['rs1 : x15', 'rs2 : x13', 'rd : x10', 'rs2_val == -2199023255553', 'rs1_b3_val == -17']
Last Code Sequence : 
	-[0x8000086c]:KSLRA8 a0, a5, a3
	-[0x80000870]:sd a0, 96(t2)
Current Store : [0x80000874] : sd a5, 104(t2) -- Store: [0x80003388]:0x05C0FC09EF400707




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x4', 'rs2_val == -1099511627777', 'rs1_b7_val == 1', 'rs1_b6_val == 64', 'rs1_b5_val == 8', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x800008a4]:KSLRA8 tp, s4, a2
	-[0x800008a8]:sd tp, 112(t2)
Current Store : [0x800008ac] : sd s4, 120(t2) -- Store: [0x80003398]:0x0140087F064009BF




Last Coverpoint : ['rs1 : x12', 'rs2 : x4', 'rd : x8', 'rs2_val == -549755813889', 'rs1_b5_val == -3', 'rs1_b3_val == 2', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x800008d4]:KSLRA8 fp, a2, tp
	-[0x800008d8]:sd fp, 128(t2)
Current Store : [0x800008dc] : sd a2, 136(t2) -- Store: [0x800033a8]:0x0908FDC00204F9FC




Last Coverpoint : ['rs1 : x4', 'rs2 : x11', 'rd : x17', 'rs2_val == -274877906945', 'rs1_b5_val == 1', 'rs1_b3_val == 16', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x8000090c]:KSLRA8 a7, tp, a1
	-[0x80000910]:sd a7, 144(t2)
Current Store : [0x80000914] : sd tp, 152(t2) -- Store: [0x800033b8]:0x55FF01FB10EF4004




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x14', 'rs1_b7_val == -9', 'rs1_b6_val == -3', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000934]:KSLRA8 a4, a1, zero
	-[0x80000938]:sd a4, 160(t2)
Current Store : [0x8000093c] : sd a1, 168(t2) -- Store: [0x800033c8]:0xF7FD093FBFF70820




Last Coverpoint : ['rs1 : x24', 'rs2 : x28', 'rd : x11', 'rs2_val == -68719476737', 'rs1_b6_val == -2', 'rs1_b5_val == -2', 'rs1_b3_val == -2']
Last Code Sequence : 
	-[0x80000964]:KSLRA8 a1, s8, t3
	-[0x80000968]:sd a1, 176(t2)
Current Store : [0x8000096c] : sd s8, 184(t2) -- Store: [0x800033d8]:0x01FEFE09FE55C0FC




Last Coverpoint : ['rs1 : x13', 'rs2 : x22', 'rd : x20', 'rs2_val == -34359738369', 'rs1_b6_val == -9', 'rs1_b2_val == 2']
Last Code Sequence : 
	-[0x80000994]:KSLRA8 s4, a3, s6
	-[0x80000998]:sd s4, 192(t2)
Current Store : [0x8000099c] : sd a3, 200(t2) -- Store: [0x800033e8]:0x06F7EF037F023FF8




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x26', 'rs2_val == -17179869185']
Last Code Sequence : 
	-[0x800009c4]:KSLRA8 s10, a4, t6
	-[0x800009c8]:sd s10, 208(t2)
Current Store : [0x800009cc] : sd a4, 216(t2) -- Store: [0x800033f8]:0xFA40FAFCEF04F9BF




Last Coverpoint : ['rs1 : x18', 'rs2 : x24', 'rd : x22', 'rs2_val == -8589934593', 'rs1_b6_val == 127', 'rs1_b4_val == -128', 'rs1_b3_val == 8', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x800009fc]:KSLRA8 s6, s2, s8
	-[0x80000a00]:sd s6, 224(t2)
Current Store : [0x80000a04] : sd s2, 232(t2) -- Store: [0x80003408]:0x807F3F8008EF08EF




Last Coverpoint : ['rs2_val == -4294967297', 'rs1_b5_val == -86', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000a34]:KSLRA8 t6, t5, t4
	-[0x80000a38]:sd t6, 0(ra)
Current Store : [0x80000a3c] : sd t5, 8(ra) -- Store: [0x80003418]:0x0109AAFC4007FA04




Last Coverpoint : ['rs2_val == -2147483649', 'rs1_b4_val == 16', 'rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000a64]:KSLRA8 t6, t5, t4
	-[0x80000a68]:sd t6, 16(ra)
Current Store : [0x80000a6c] : sd t5, 24(ra) -- Store: [0x80003428]:0xF605201020F8DF20




Last Coverpoint : ['rs2_val == -1073741825', 'rs1_b6_val == 16', 'rs1_b3_val == -128']
Last Code Sequence : 
	-[0x80000a98]:KSLRA8 t6, t5, t4
	-[0x80000a9c]:sd t6, 32(ra)
Current Store : [0x80000aa0] : sd t5, 40(ra) -- Store: [0x80003438]:0x7F103F808003FDAA




Last Coverpoint : ['rs2_val == -536870913', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000acc]:KSLRA8 t6, t5, t4
	-[0x80000ad0]:sd t6, 48(ra)
Current Store : [0x80000ad4] : sd t5, 56(ra) -- Store: [0x80003448]:0xF8FEF655020140FE




Last Coverpoint : ['rs2_val == -268435457', 'rs1_b4_val == -86']
Last Code Sequence : 
	-[0x80000af8]:KSLRA8 t6, t5, t4
	-[0x80000afc]:sd t6, 64(ra)
Current Store : [0x80000b00] : sd t5, 72(ra) -- Store: [0x80003458]:0x050807AADF10FEFB




Last Coverpoint : ['rs2_val == -134217729', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000b2c]:KSLRA8 t6, t5, t4
	-[0x80000b30]:sd t6, 80(ra)
Current Store : [0x80000b34] : sd t5, 88(ra) -- Store: [0x80003468]:0x4005BFFB7FF7067F




Last Coverpoint : ['rs2_val == -67108865', 'rs1_b4_val == -2', 'rs1_b2_val == -86']
Last Code Sequence : 
	-[0x80000b58]:KSLRA8 t6, t5, t4
	-[0x80000b5c]:sd t6, 96(ra)
Current Store : [0x80000b60] : sd t5, 104(ra) -- Store: [0x80003478]:0xF706F6FEF9AA0304




Last Coverpoint : ['rs2_val == -33554433']
Last Code Sequence : 
	-[0x80000b8c]:KSLRA8 t6, t5, t4
	-[0x80000b90]:sd t6, 112(ra)
Current Store : [0x80000b94] : sd t5, 120(ra) -- Store: [0x80003488]:0xFEFDF809AA0708F9




Last Coverpoint : ['rs2_val == -16777217', 'rs1_b4_val == -33']
Last Code Sequence : 
	-[0x80000bb8]:KSLRA8 t6, t5, t4
	-[0x80000bbc]:sd t6, 128(ra)
Current Store : [0x80000bc0] : sd t5, 136(ra) -- Store: [0x80003498]:0x557F55DF00F8FABF




Last Coverpoint : ['rs1_b4_val == 2', 'rs1_b3_val == 4', 'rs1_b1_val == -5']
Last Code Sequence : 
	-[0x80000be4]:KSLRA8 t6, t5, t4
	-[0x80000be8]:sd t6, 144(ra)
Current Store : [0x80000bec] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFA7FAA0204F6FBBF




Last Coverpoint : ['rs2_val == -5', 'rs1_b6_val == 4', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000c0c]:KSLRA8 t6, t5, t4
	-[0x80000c10]:sd t6, 160(ra)
Current Store : [0x80000c14] : sd t5, 168(ra) -- Store: [0x800034b8]:0x050409C001F680F9




Last Coverpoint : ['rs1_b6_val == -86', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000c3c]:KSLRA8 t6, t5, t4
	-[0x80000c40]:sd t6, 176(ra)
Current Store : [0x80000c44] : sd t5, 184(ra) -- Store: [0x800034c8]:0x80AA3FFAAA7FFF02




Last Coverpoint : ['rs2_val == 2147483648', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x80000c68]:KSLRA8 t6, t5, t4
	-[0x80000c6c]:sd t6, 192(ra)
Current Store : [0x80000c70] : sd t5, 200(ra) -- Store: [0x800034d8]:0xFD553F0803BF7F55




Last Coverpoint : ['rs2_val == -524289', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000c94]:KSLRA8 t6, t5, t4
	-[0x80000c98]:sd t6, 208(ra)
Current Store : [0x80000c9c] : sd t5, 216(ra) -- Store: [0x800034e8]:0xF604BFFB4003FADF




Last Coverpoint : ['rs1_b0_val == -128']
Last Code Sequence : 
	-[0x80000cc4]:KSLRA8 t6, t5, t4
	-[0x80000cc8]:sd t6, 224(ra)
Current Store : [0x80000ccc] : sd t5, 232(ra) -- Store: [0x800034f8]:0x010206C0FCAA0480




Last Coverpoint : ['rs1_b4_val == 64', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000cf4]:KSLRA8 t6, t5, t4
	-[0x80000cf8]:sd t6, 240(ra)
Current Store : [0x80000cfc] : sd t5, 248(ra) -- Store: [0x80003508]:0xF9EF0940DF3F0910




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b6_val == 1', 'rs1_b4_val == -17', 'rs1_b3_val == -128', 'rs1_b1_val == -3', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000d1c]:KSLRA8 t6, t5, t4
	-[0x80000d20]:sd t6, 256(ra)
Current Store : [0x80000d24] : sd t5, 264(ra) -- Store: [0x80003518]:0x0301F9EF80FAFD00




Last Coverpoint : ['rs1_b4_val == -9', 'rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000d68]:KSLRA8 t6, t5, t4
	-[0x80000d6c]:sd t6, 272(ra)
Current Store : [0x80000d70] : sd t5, 280(ra) -- Store: [0x80003528]:0x7F05C0F70203DF05




Last Coverpoint : ['rs2_val == -8388609']
Last Code Sequence : 
	-[0x80000d94]:KSLRA8 t6, t5, t4
	-[0x80000d98]:sd t6, 288(ra)
Current Store : [0x80000d9c] : sd t5, 296(ra) -- Store: [0x80003538]:0x0303BFAAFEC0C003




Last Coverpoint : ['rs2_val == -4194305', 'rs1_b5_val == 2', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000dc8]:KSLRA8 t6, t5, t4
	-[0x80000dcc]:sd t6, 304(ra)
Current Store : [0x80000dd0] : sd t5, 312(ra) -- Store: [0x80003548]:0x03FD02DFFCAA20FA




Last Coverpoint : ['rs2_val == -2097153', 'rs1_b1_val == -86']
Last Code Sequence : 
	-[0x80000dfc]:KSLRA8 t6, t5, t4
	-[0x80000e00]:sd t6, 320(ra)
Current Store : [0x80000e04] : sd t5, 328(ra) -- Store: [0x80003558]:0xF80106FFAAF9AAF7




Last Coverpoint : ['rs2_val == -1048577']
Last Code Sequence : 
	-[0x80000e30]:KSLRA8 t6, t5, t4
	-[0x80000e34]:sd t6, 336(ra)
Current Store : [0x80000e38] : sd t5, 344(ra) -- Store: [0x80003568]:0x3FFB0155407F0608




Last Coverpoint : ['rs2_val == -262145', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000e5c]:KSLRA8 t6, t5, t4
	-[0x80000e60]:sd t6, 352(ra)
Current Store : [0x80000e64] : sd t5, 360(ra) -- Store: [0x80003578]:0xF97F02C0012002FC




Last Coverpoint : ['rs2_val == -131073']
Last Code Sequence : 
	-[0x80000e90]:KSLRA8 t6, t5, t4
	-[0x80000e94]:sd t6, 368(ra)
Current Store : [0x80000e98] : sd t5, 376(ra) -- Store: [0x80003588]:0x40FA0000F9FF1055




Last Coverpoint : ['rs2_val == -65537', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x80000ec4]:KSLRA8 t6, t5, t4
	-[0x80000ec8]:sd t6, 384(ra)
Current Store : [0x80000ecc] : sd t5, 392(ra) -- Store: [0x80003598]:0xFDEFAAFAFC01F7F9




Last Coverpoint : ['rs2_val == -32769', 'rs1_b7_val == -33', 'rs1_b4_val == 1']
Last Code Sequence : 
	-[0x80000ef8]:KSLRA8 t6, t5, t4
	-[0x80000efc]:sd t6, 400(ra)
Current Store : [0x80000f00] : sd t5, 408(ra) -- Store: [0x800035a8]:0xDF020901C055F8F7




Last Coverpoint : ['rs2_val == -16385']
Last Code Sequence : 
	-[0x80000f2c]:KSLRA8 t6, t5, t4
	-[0x80000f30]:sd t6, 416(ra)
Current Store : [0x80000f34] : sd t5, 424(ra) -- Store: [0x800035b8]:0x10FCAAF707FEAA02




Last Coverpoint : ['rs2_val == -8193', 'rs1_b4_val == -3', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x80000f58]:KSLRA8 t6, t5, t4
	-[0x80000f5c]:sd t6, 432(ra)
Current Store : [0x80000f60] : sd t5, 440(ra) -- Store: [0x800035c8]:0xFE09AAFD0400BF08




Last Coverpoint : ['rs2_val == -4097']
Last Code Sequence : 
	-[0x80000f84]:KSLRA8 t6, t5, t4
	-[0x80000f88]:sd t6, 448(ra)
Current Store : [0x80000f8c] : sd t5, 456(ra) -- Store: [0x800035d8]:0x000608F8F6FCDFFE




Last Coverpoint : ['rs2_val == -2049']
Last Code Sequence : 
	-[0x80000fb0]:KSLRA8 t6, t5, t4
	-[0x80000fb4]:sd t6, 464(ra)
Current Store : [0x80000fb8] : sd t5, 472(ra) -- Store: [0x800035e8]:0x2005FF3FFF042003




Last Coverpoint : ['rs2_val == -1025']
Last Code Sequence : 
	-[0x80000fe0]:KSLRA8 t6, t5, t4
	-[0x80000fe4]:sd t6, 480(ra)
Current Store : [0x80000fe8] : sd t5, 488(ra) -- Store: [0x800035f8]:0x55FD05DF087FBFFD




Last Coverpoint : ['rs2_val == -513', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80001010]:KSLRA8 t6, t5, t4
	-[0x80001014]:sd t6, 496(ra)
Current Store : [0x80001018] : sd t5, 504(ra) -- Store: [0x80003608]:0x09FDF60605FBDF01




Last Coverpoint : ['rs2_val == -257']
Last Code Sequence : 
	-[0x80001038]:KSLRA8 t6, t5, t4
	-[0x8000103c]:sd t6, 512(ra)
Current Store : [0x80001040] : sd t5, 520(ra) -- Store: [0x80003618]:0xEFFD3FFE40F8FF07




Last Coverpoint : ['rs2_val == -129']
Last Code Sequence : 
	-[0x80001068]:KSLRA8 t6, t5, t4
	-[0x8000106c]:sd t6, 528(ra)
Current Store : [0x80001070] : sd t5, 536(ra) -- Store: [0x80003628]:0x200020003F07EFFC




Last Coverpoint : ['rs2_val == -65']
Last Code Sequence : 
	-[0x80001090]:KSLRA8 t6, t5, t4
	-[0x80001094]:sd t6, 544(ra)
Current Store : [0x80001098] : sd t5, 552(ra) -- Store: [0x80003638]:0xFC0910FBF63FFF7F




Last Coverpoint : ['rs2_val == -33']
Last Code Sequence : 
	-[0x800010b8]:KSLRA8 t6, t5, t4
	-[0x800010bc]:sd t6, 560(ra)
Current Store : [0x800010c0] : sd t5, 568(ra) -- Store: [0x80003648]:0xC0DFF8FB04F603F6




Last Coverpoint : ['rs2_val == -17']
Last Code Sequence : 
	-[0x800010e0]:KSLRA8 t6, t5, t4
	-[0x800010e4]:sd t6, 576(ra)
Current Store : [0x800010e8] : sd t5, 584(ra) -- Store: [0x80003658]:0xFC04EFFA3FAA04F9




Last Coverpoint : ['rs2_val == -9']
Last Code Sequence : 
	-[0x80001110]:KSLRA8 t6, t5, t4
	-[0x80001114]:sd t6, 592(ra)
Current Store : [0x80001118] : sd t5, 600(ra) -- Store: [0x80003668]:0x20FFFEDFEF55BF20




Last Coverpoint : ['rs2_val == -3']
Last Code Sequence : 
	-[0x80001140]:KSLRA8 t6, t5, t4
	-[0x80001144]:sd t6, 608(ra)
Current Store : [0x80001148] : sd t5, 616(ra) -- Store: [0x80003678]:0x0704FE0306F655FF




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x80001168]:KSLRA8 t6, t5, t4
	-[0x8000116c]:sd t6, 624(ra)
Current Store : [0x80001170] : sd t5, 632(ra) -- Store: [0x80003688]:0x402055F9FFFE80F9




Last Coverpoint : ['rs2_val == -9223372036854775808']
Last Code Sequence : 
	-[0x80001194]:KSLRA8 t6, t5, t4
	-[0x80001198]:sd t6, 640(ra)
Current Store : [0x8000119c] : sd t5, 648(ra) -- Store: [0x80003698]:0xDF557F00FFDF0220




Last Coverpoint : ['rs2_val == 4611686018427387904']
Last Code Sequence : 
	-[0x800011c8]:KSLRA8 t6, t5, t4
	-[0x800011cc]:sd t6, 656(ra)
Current Store : [0x800011d0] : sd t5, 664(ra) -- Store: [0x800036a8]:0xF780F9FB1010F87F




Last Coverpoint : ['rs2_val == 2305843009213693952']
Last Code Sequence : 
	-[0x800011f4]:KSLRA8 t6, t5, t4
	-[0x800011f8]:sd t6, 672(ra)
Current Store : [0x800011fc] : sd t5, 680(ra) -- Store: [0x800036b8]:0x0909FA7F01060606




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80001228]:KSLRA8 t6, t5, t4
	-[0x8000122c]:sd t6, 688(ra)
Current Store : [0x80001230] : sd t5, 696(ra) -- Store: [0x800036c8]:0xF980EFFA06BF80FD




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x80001254]:KSLRA8 t6, t5, t4
	-[0x80001258]:sd t6, 704(ra)
Current Store : [0x8000125c] : sd t5, 712(ra) -- Store: [0x800036d8]:0xFBFB55DFFA0007EF




Last Coverpoint : ['rs2_val == 288230376151711744', 'rs1_b2_val == -3']
Last Code Sequence : 
	-[0x80001288]:KSLRA8 t6, t5, t4
	-[0x8000128c]:sd t6, 720(ra)
Current Store : [0x80001290] : sd t5, 728(ra) -- Store: [0x800036e8]:0x55F7AA0708FD0401




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x800012bc]:KSLRA8 t6, t5, t4
	-[0x800012c0]:sd t6, 736(ra)
Current Store : [0x800012c4] : sd t5, 744(ra) -- Store: [0x800036f8]:0x40FCFA1040FF0255




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x800012f0]:KSLRA8 t6, t5, t4
	-[0x800012f4]:sd t6, 752(ra)
Current Store : [0x800012f8] : sd t5, 760(ra) -- Store: [0x80003708]:0xFA803F05F6EFF640




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x8000131c]:KSLRA8 t6, t5, t4
	-[0x80001320]:sd t6, 768(ra)
Current Store : [0x80001324] : sd t5, 776(ra) -- Store: [0x80003718]:0xFD20DFDFEF0604DF




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80001344]:KSLRA8 t6, t5, t4
	-[0x80001348]:sd t6, 784(ra)
Current Store : [0x8000134c] : sd t5, 792(ra) -- Store: [0x80003728]:0x06F800C004050505




Last Coverpoint : ['rs2_val == 137438953472', 'rs1_b7_val == -65']
Last Code Sequence : 
	-[0x80001378]:KSLRA8 t6, t5, t4
	-[0x8000137c]:sd t6, 800(ra)
Current Store : [0x80001380] : sd t5, 808(ra) -- Store: [0x80003738]:0xBF80090805F820F6




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x800013a0]:KSLRA8 t6, t5, t4
	-[0x800013a4]:sd t6, 816(ra)
Current Store : [0x800013a8] : sd t5, 824(ra) -- Store: [0x80003748]:0xFD08403F0906FAFA




Last Coverpoint : ['rs2_val == 8388608', 'rs1_b7_val == 8']
Last Code Sequence : 
	-[0x800013d0]:KSLRA8 t6, t5, t4
	-[0x800013d4]:sd t6, 832(ra)
Current Store : [0x800013d8] : sd t5, 840(ra) -- Store: [0x80003758]:0x08FF40C0AA08FABF




Last Coverpoint : ['rs1_b7_val == 4', 'rs1_b3_val == -3']
Last Code Sequence : 
	-[0x80001404]:KSLRA8 t6, t5, t4
	-[0x80001408]:sd t6, 848(ra)
Current Store : [0x8000140c] : sd t5, 856(ra) -- Store: [0x80003768]:0x04EF7F08FD082009




Last Coverpoint : ['rs1_b7_val == -1']
Last Code Sequence : 
	-[0x8000143c]:KSLRA8 t6, t5, t4
	-[0x80001440]:sd t6, 864(ra)
Current Store : [0x80001444] : sd t5, 872(ra) -- Store: [0x80003778]:0xFF20C0AAFD040805




Last Coverpoint : ['rs2_val == 4194304', 'rs1_b6_val == -65']
Last Code Sequence : 
	-[0x80001464]:KSLRA8 t6, t5, t4
	-[0x80001468]:sd t6, 880(ra)
Current Store : [0x8000146c] : sd t5, 888(ra) -- Store: [0x80003788]:0x02BF40FE5520F9FE




Last Coverpoint : ['rs1_b5_val == -9']
Last Code Sequence : 
	-[0x80001490]:KSLRA8 t6, t5, t4
	-[0x80001494]:sd t6, 896(ra)
Current Store : [0x80001498] : sd t5, 904(ra) -- Store: [0x80003798]:0xC040F706FC7F0410




Last Coverpoint : ['rs2_val == 2199023255552', 'rs1_b5_val == 4']
Last Code Sequence : 
	-[0x800014bc]:KSLRA8 t6, t5, t4
	-[0x800014c0]:sd t6, 912(ra)
Current Store : [0x800014c4] : sd t5, 920(ra) -- Store: [0x800037a8]:0xAA0704F70102F9C0




Last Coverpoint : ['rs2_val == 18014398509481984']
Last Code Sequence : 
	-[0x800014e8]:KSLRA8 t6, t5, t4
	-[0x800014ec]:sd t6, 928(ra)
Current Store : [0x800014f0] : sd t5, 936(ra) -- Store: [0x800037b8]:0x05FAFF00807F0503




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80001514]:KSLRA8 t6, t5, t4
	-[0x80001518]:sd t6, 944(ra)
Current Store : [0x8000151c] : sd t5, 952(ra) -- Store: [0x800037c8]:0x047F09F807FB03F6




Last Coverpoint : ['rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x80001548]:KSLRA8 t6, t5, t4
	-[0x8000154c]:sd t6, 960(ra)
Current Store : [0x80001550] : sd t5, 968(ra) -- Store: [0x800037d8]:0x0880FD06F8551010




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x80001574]:KSLRA8 t6, t5, t4
	-[0x80001578]:sd t6, 976(ra)
Current Store : [0x8000157c] : sd t5, 984(ra) -- Store: [0x800037e8]:0xF87FC0208002F740




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x800015a0]:KSLRA8 t6, t5, t4
	-[0x800015a4]:sd t6, 992(ra)
Current Store : [0x800015a8] : sd t5, 1000(ra) -- Store: [0x800037f8]:0xFD08DFF9FF073F20




Last Coverpoint : ['rs2_val == 562949953421312']
Last Code Sequence : 
	-[0x800015cc]:KSLRA8 t6, t5, t4
	-[0x800015d0]:sd t6, 1008(ra)
Current Store : [0x800015d4] : sd t5, 1016(ra) -- Store: [0x80003808]:0x100810C000FA0006




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80001600]:KSLRA8 t6, t5, t4
	-[0x80001604]:sd t6, 1024(ra)
Current Store : [0x80001608] : sd t5, 1032(ra) -- Store: [0x80003818]:0x10BF040907087FC0




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x8000162c]:KSLRA8 t6, t5, t4
	-[0x80001630]:sd t6, 1040(ra)
Current Store : [0x80001634] : sd t5, 1048(ra) -- Store: [0x80003828]:0xFEFA0905F80501FA




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x80001658]:KSLRA8 t6, t5, t4
	-[0x8000165c]:sd t6, 1056(ra)
Current Store : [0x80001660] : sd t5, 1064(ra) -- Store: [0x80003838]:0x550800DF0900033F




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x8000168c]:KSLRA8 t6, t5, t4
	-[0x80001690]:sd t6, 1072(ra)
Current Store : [0x80001694] : sd t5, 1080(ra) -- Store: [0x80003848]:0xDFF90608100109FC




Last Coverpoint : ['rs2_val == 17592186044416']
Last Code Sequence : 
	-[0x800016b8]:KSLRA8 t6, t5, t4
	-[0x800016bc]:sd t6, 1088(ra)
Current Store : [0x800016c0] : sd t5, 1096(ra) -- Store: [0x80003858]:0xFC55FDFF3F092008




Last Coverpoint : ['rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x800016e4]:KSLRA8 t6, t5, t4
	-[0x800016e8]:sd t6, 1104(ra)
Current Store : [0x800016ec] : sd t5, 1112(ra) -- Store: [0x80003868]:0x03AABFFEFAF7F8FA




Last Coverpoint : ['rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x80001718]:KSLRA8 t6, t5, t4
	-[0x8000171c]:sd t6, 1120(ra)
Current Store : [0x80001720] : sd t5, 1128(ra) -- Store: [0x80003878]:0x07FDF6FE80DFEFEF




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x80001744]:KSLRA8 t6, t5, t4
	-[0x80001748]:sd t6, 1136(ra)
Current Store : [0x8000174c] : sd t5, 1144(ra) -- Store: [0x80003888]:0x06F60605F90402FC




Last Coverpoint : ['rs2_val == 549755813888']
Last Code Sequence : 
	-[0x80001770]:KSLRA8 t6, t5, t4
	-[0x80001774]:sd t6, 1152(ra)
Current Store : [0x80001778] : sd t5, 1160(ra) -- Store: [0x80003898]:0xFEF705DF10FC4055




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800017a4]:KSLRA8 t6, t5, t4
	-[0x800017a8]:sd t6, 1168(ra)
Current Store : [0x800017ac] : sd t5, 1176(ra) -- Store: [0x800038a8]:0xF9FC00FAFADF7FFC




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x800017d8]:KSLRA8 t6, t5, t4
	-[0x800017dc]:sd t6, 1184(ra)
Current Store : [0x800017e0] : sd t5, 1192(ra) -- Store: [0x800038b8]:0x7F02FEF7EF08C006




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001804]:KSLRA8 t6, t5, t4
	-[0x80001808]:sd t6, 1200(ra)
Current Store : [0x8000180c] : sd t5, 1208(ra) -- Store: [0x800038c8]:0xFE80DFF8F6F7F900




Last Coverpoint : ['rs2_val == 17179869184']
Last Code Sequence : 
	-[0x80001830]:KSLRA8 t6, t5, t4
	-[0x80001834]:sd t6, 1216(ra)
Current Store : [0x80001838] : sd t5, 1224(ra) -- Store: [0x800038d8]:0xFFC0C0F6EFFF0604




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x80001864]:KSLRA8 t6, t5, t4
	-[0x80001868]:sd t6, 1232(ra)
Current Store : [0x8000186c] : sd t5, 1240(ra) -- Store: [0x800038e8]:0x0380F9FFFA09C0BF




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x80001898]:KSLRA8 t6, t5, t4
	-[0x8000189c]:sd t6, 1248(ra)
Current Store : [0x800018a0] : sd t5, 1256(ra) -- Store: [0x800038f8]:0x0240808006AAEFFF




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x800018c0]:KSLRA8 t6, t5, t4
	-[0x800018c4]:sd t6, 1264(ra)
Current Store : [0x800018c8] : sd t5, 1272(ra) -- Store: [0x80003908]:0xF87FFB7FF80803AA




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x800018f0]:KSLRA8 t6, t5, t4
	-[0x800018f4]:sd t6, 1280(ra)
Current Store : [0x800018f8] : sd t5, 1288(ra) -- Store: [0x80003918]:0xFD0140FD01030855




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x80001920]:KSLRA8 t6, t5, t4
	-[0x80001924]:sd t6, 1296(ra)
Current Store : [0x80001928] : sd t5, 1304(ra) -- Store: [0x80003928]:0x803F0607FBFD4006




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x80001948]:KSLRA8 t6, t5, t4
	-[0x8000194c]:sd t6, 1312(ra)
Current Store : [0x80001950] : sd t5, 1320(ra) -- Store: [0x80003938]:0x0701AA05402040F6




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x80001970]:KSLRA8 t6, t5, t4
	-[0x80001974]:sd t6, 1328(ra)
Current Store : [0x80001978] : sd t5, 1336(ra) -- Store: [0x80003948]:0xFA7FAA0610050109




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x80001998]:KSLRA8 t6, t5, t4
	-[0x8000199c]:sd t6, 1344(ra)
Current Store : [0x800019a0] : sd t5, 1352(ra) -- Store: [0x80003958]:0xF801065509F9F8BF




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800019c8]:KSLRA8 t6, t5, t4
	-[0x800019cc]:sd t6, 1360(ra)
Current Store : [0x800019d0] : sd t5, 1368(ra) -- Store: [0x80003968]:0xDF03060655FEFF55




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x800019f0]:KSLRA8 t6, t5, t4
	-[0x800019f4]:sd t6, 1376(ra)
Current Store : [0x800019f8] : sd t5, 1384(ra) -- Store: [0x80003978]:0x090007FC400408FF




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x80001a18]:KSLRA8 t6, t5, t4
	-[0x80001a1c]:sd t6, 1392(ra)
Current Store : [0x80001a20] : sd t5, 1400(ra) -- Store: [0x80003988]:0x3F02FCF701FA05EF




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x80001a40]:KSLRA8 t6, t5, t4
	-[0x80001a44]:sd t6, 1408(ra)
Current Store : [0x80001a48] : sd t5, 1416(ra) -- Store: [0x80003998]:0xAA0802000603003F




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80001a68]:KSLRA8 t6, t5, t4
	-[0x80001a6c]:sd t6, 1424(ra)
Current Store : [0x80001a70] : sd t5, 1432(ra) -- Store: [0x800039a8]:0x10DFF7F9070002FB




Last Coverpoint : ['rs1_b2_val == -128']
Last Code Sequence : 
	-[0x80001a94]:KSLRA8 t6, t5, t4
	-[0x80001a98]:sd t6, 1440(ra)
Current Store : [0x80001a9c] : sd t5, 1448(ra) -- Store: [0x800039b8]:0xFC0504F6F680FB3F




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x80001ac4]:KSLRA8 t6, t5, t4
	-[0x80001ac8]:sd t6, 1456(ra)
Current Store : [0x80001acc] : sd t5, 1464(ra) -- Store: [0x800039c8]:0xF7AAEF10FF040910




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x80001aec]:KSLRA8 t6, t5, t4
	-[0x80001af0]:sd t6, 1472(ra)
Current Store : [0x80001af4] : sd t5, 1480(ra) -- Store: [0x800039d8]:0x3F800707FAF90320




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x80001b14]:KSLRA8 t6, t5, t4
	-[0x80001b18]:sd t6, 1488(ra)
Current Store : [0x80001b1c] : sd t5, 1496(ra) -- Store: [0x800039e8]:0x408004F7FE02FDFA




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80001b3c]:KSLRA8 t6, t5, t4
	-[0x80001b40]:sd t6, 1504(ra)
Current Store : [0x80001b44] : sd t5, 1512(ra) -- Store: [0x800039f8]:0x000380FAFB025555




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80001b6c]:KSLRA8 t6, t5, t4
	-[0x80001b70]:sd t6, 1520(ra)
Current Store : [0x80001b74] : sd t5, 1528(ra) -- Store: [0x80003a08]:0xFEF6F7F8AAF608FA




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x80001b9c]:KSLRA8 t6, t5, t4
	-[0x80001ba0]:sd t6, 1536(ra)
Current Store : [0x80001ba4] : sd t5, 1544(ra) -- Store: [0x80003a18]:0xEF400302F77F3F07




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80001bc8]:KSLRA8 t6, t5, t4
	-[0x80001bcc]:sd t6, 1552(ra)
Current Store : [0x80001bd0] : sd t5, 1560(ra) -- Store: [0x80003a28]:0xF8FD01F6F804FC80




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80001bf8]:KSLRA8 t6, t5, t4
	-[0x80001bfc]:sd t6, 1568(ra)
Current Store : [0x80001c00] : sd t5, 1576(ra) -- Store: [0x80003a38]:0xFEFCF606AAFFF640




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x80001c20]:KSLRA8 t6, t5, t4
	-[0x80001c24]:sd t6, 1584(ra)
Current Store : [0x80001c28] : sd t5, 1592(ra) -- Store: [0x80003a48]:0xF6075505407F037F




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x80001c48]:KSLRA8 t6, t5, t4
	-[0x80001c4c]:sd t6, 1600(ra)
Current Store : [0x80001c50] : sd t5, 1608(ra) -- Store: [0x80003a58]:0x102005FAFA10FB02




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80001c78]:KSLRA8 t6, t5, t4
	-[0x80001c7c]:sd t6, 1616(ra)
Current Store : [0x80001c80] : sd t5, 1624(ra) -- Store: [0x80003a68]:0xBF01405506FA7F00




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80001ca8]:KSLRA8 t6, t5, t4
	-[0x80001cac]:sd t6, 1632(ra)
Current Store : [0x80001cb0] : sd t5, 1640(ra) -- Store: [0x80003a78]:0xBF3FC0FB55F8FDFC




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001cd0]:KSLRA8 t6, t5, t4
	-[0x80001cd4]:sd t6, 1648(ra)
Current Store : [0x80001cd8] : sd t5, 1656(ra) -- Store: [0x80003a88]:0xAA09FF0007070109




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001d00]:KSLRA8 t6, t5, t4
	-[0x80001d04]:sd t6, 1664(ra)
Current Store : [0x80001d08] : sd t5, 1672(ra) -- Store: [0x80003a98]:0x7FF6F8F62006FC06




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001d28]:KSLRA8 t6, t5, t4
	-[0x80001d2c]:sd t6, 1680(ra)
Current Store : [0x80001d30] : sd t5, 1688(ra) -- Store: [0x80003aa8]:0xF9F8DFFC7FFDEF05




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80001d50]:KSLRA8 t6, t5, t4
	-[0x80001d54]:sd t6, 1696(ra)
Current Store : [0x80001d58] : sd t5, 1704(ra) -- Store: [0x80003ab8]:0xFDFCF6F807F94007




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_b7_val == -3', 'rs1_b4_val == 16', 'rs1_b1_val == 32', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80001d9c]:KSLRA8 t6, t5, t4
	-[0x80001da0]:sd t6, 1712(ra)
Current Store : [0x80001da4] : sd t5, 1720(ra) -- Store: [0x80003ac8]:0xFDF9F610063F20AA




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 9223372036854775807', 'rs1_b7_val == 64', 'rs1_b4_val == 4', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x80001dd4]:KSLRA8 t6, t5, t4
	-[0x80001dd8]:sd t6, 1728(ra)
Current Store : [0x80001ddc] : sd t5, 1736(ra) -- Store: [0x80003ad8]:0x4005F904FAFC55FC




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1152921504606846977', 'rs1_b6_val == 64', 'rs1_b5_val == -86', 'rs1_b4_val == 8', 'rs1_b2_val == 16', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x80001e04]:KSLRA8 t6, t5, t4
	-[0x80001e08]:sd t6, 1744(ra)
Current Store : [0x80001e0c] : sd t5, 1752(ra) -- Store: [0x80003ae8]:0x0340AA083F10BF06




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -562949953421313', 'rs1_b7_val == -128', 'rs1_b6_val == -5', 'rs1_b3_val == -1', 'rs1_b2_val == 8', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x80001e34]:KSLRA8 t6, t5, t4
	-[0x80001e38]:sd t6, 1760(ra)
Current Store : [0x80001e3c] : sd t5, 1768(ra) -- Store: [0x80003af8]:0x80FBF607FF0805FB




Last Coverpoint : ['rs2_val == -137438953473']
Last Code Sequence : 
	-[0x80001e64]:KSLRA8 t6, t5, t4
	-[0x80001e68]:sd t6, 1776(ra)
Current Store : [0x80001e6c] : sd t5, 1784(ra) -- Store: [0x80003b08]:0xF7FD093FBFF70820





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

|s.no|            signature             |                                                                                                                                                       coverpoints                                                                                                                                                       |                                 code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7F7F7F7F7F7F7F7F|- opcode : kslra8<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_b7_val == 85<br> - rs1_b6_val == 85<br> - rs1_b5_val == 85<br> - rs1_b4_val == 85<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b1_val == 85<br> - rs1_b0_val == 85<br> |[0x800003e4]:KSLRA8 s11, s9, s9<br> [0x800003e8]:sd s11, 0(tp)<br>     |
|   2|[0x80003220]<br>0x3FFFFFFFFFFFFFFF|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_b7_val == 127<br> - rs1_b6_val == -1<br> - rs1_b5_val == -1<br> - rs1_b4_val == -1<br> - rs1_b3_val == -1<br> - rs1_b2_val == -1<br> - rs1_b1_val == -1<br> - rs1_b0_val == -1<br>                         |[0x8000041c]:KSLRA8 t2, t2, t2<br> [0x80000420]:sd t2, 16(tp)<br>      |
|   3|[0x80003230]<br>0x010308042A000002|- rs1 : x30<br> - rs2 : x29<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -4611686018427387905<br> - rs1_b5_val == 16<br> - rs1_b2_val == 0<br> - rs1_b1_val == 1<br>                                                                                                                    |[0x8000044c]:KSLRA8 a6, t5, t4<br> [0x80000450]:sd a6, 32(tp)<br>      |
|   4|[0x80003240]<br>0x000110F7EFF708D5|- rs1 : x23<br> - rs2 : x15<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_b7_val == 0<br> - rs1_b6_val == 2<br> - rs1_b5_val == 32<br> - rs1_b4_val == -17<br> - rs1_b3_val == -33<br> - rs1_b2_val == -17<br> - rs1_b1_val == 16<br> - rs1_b0_val == -86<br>                    |[0x8000047c]:KSLRA8 s7, s7, a5<br> [0x80000480]:sd s7, 48(tp)<br>      |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                           |[0x800004ac]:KSLRA8 s2, zero, s2<br> [0x800004b0]:sd s2, 64(tp)<br>    |
|   6|[0x80003260]<br>0x01002AFBFEFB01FF|- rs1 : x1<br> - rs2 : x2<br> - rd : x24<br> - rs2_val == -576460752303423489<br> - rs1_b7_val == 2<br>                                                                                                                                                                                                                  |[0x800004dc]:KSLRA8 s8, ra, sp<br> [0x800004e0]:sd s8, 80(tp)<br>      |
|   7|[0x80003270]<br>0x08E003FD1FFEFD03|- rs1 : x6<br> - rs2 : x16<br> - rd : x19<br> - rs2_val == -288230376151711745<br> - rs1_b7_val == 16<br> - rs1_b4_val == -5<br>                                                                                                                                                                                         |[0x8000050c]:KSLRA8 s3, t1, a6<br> [0x80000510]:sd s3, 96(tp)<br>      |
|   8|[0x80003280]<br>0x2AC010FBFC002A02|- rs1 : x9<br> - rs2 : x30<br> - rd : x25<br> - rs2_val == -144115188075855873<br> - rs1_b6_val == -128<br> - rs1_b2_val == 1<br>                                                                                                                                                                                        |[0x80000544]:KSLRA8 s9, s1, t5<br> [0x80000548]:sd s9, 112(tp)<br>     |
|   9|[0x80003290]<br>0x01FD00023F3F01FE|- rs1 : x19<br> - rs2 : x21<br> - rd : x28<br> - rs2_val == -72057594037927937<br> - rs1_b6_val == -5<br> - rs1_b3_val == 127<br> - rs1_b2_val == 127<br> - rs1_b1_val == 2<br> - rs1_b0_val == -3<br>                                                                                                                   |[0x80000574]:KSLRA8 t3, s3, s5<br> [0x80000578]:sd t3, 128(tp)<br>     |
|  10|[0x800032a0]<br>0x10103F00FCFBFD00|- rs1 : x27<br> - rs2 : x17<br> - rd : x12<br> - rs2_val == -36028797018963969<br> - rs1_b7_val == 32<br> - rs1_b6_val == 32<br> - rs1_b5_val == 127<br> - rs1_b2_val == -9<br> - rs1_b0_val == 1<br>                                                                                                                    |[0x800005a4]:KSLRA8 a2, s11, a7<br> [0x800005a8]:sd a2, 144(tp)<br>    |
|  11|[0x800032b0]<br>0xF70101E0FBFC0204|- rs1 : x31<br> - rs2 : x9<br> - rd : x29<br> - rs2_val == -18014398509481985<br> - rs1_b7_val == -17<br> - rs1_b1_val == 4<br> - rs1_b0_val == 8<br>                                                                                                                                                                    |[0x800005dc]:KSLRA8 t4, t6, s1<br> [0x800005e0]:sd t4, 160(tp)<br>     |
|  12|[0x800032c0]<br>0xFFEFFD3FDFFC0001|- rs1 : x16<br> - rs2 : x19<br> - rd : x13<br> - rs2_val == -9007199254740993<br> - rs1_b7_val == -2<br> - rs1_b6_val == -33<br> - rs1_b5_val == -5<br> - rs1_b4_val == 127<br> - rs1_b3_val == -65<br>                                                                                                                  |[0x8000060c]:KSLRA8 a3, a6, s3<br> [0x80000610]:sd a3, 176(tp)<br>     |
|  13|[0x800032d0]<br>0xE0FB20E0FFFF0402|- rs1 : x3<br> - rs2 : x5<br> - rd : x2<br> - rs2_val == -4503599627370497<br> - rs1_b5_val == 64<br> - rs1_b2_val == -2<br> - rs1_b1_val == 8<br> - rs1_b0_val == 4<br>                                                                                                                                                 |[0x8000063c]:KSLRA8 sp, gp, t0<br> [0x80000640]:sd sp, 192(tp)<br>     |
|  14|[0x800032e0]<br>0x3F2A030303EFFC02|- rs1 : x17<br> - rs2 : x1<br> - rd : x5<br> - rs2_val == -2251799813685249<br> - rs1_b2_val == -33<br>                                                                                                                                                                                                                  |[0x8000066c]:KSLRA8 t0, a7, ra<br> [0x80000670]:sd t0, 208(tp)<br>     |
|  15|[0x800032f0]<br>0x10030004FDFB0302|- rs1 : x28<br> - rs2 : x8<br> - rd : x6<br> - rs2_val == -1125899906842625<br> - rs1_b4_val == 8<br>                                                                                                                                                                                                                    |[0x8000069c]:KSLRA8 t1, t3, fp<br> [0x800006a0]:sd t1, 224(tp)<br>     |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x10<br> - rd : x0<br> - rs2_val == -562949953421313<br> - rs1_b7_val == -128<br> - rs1_b2_val == 8<br> - rs1_b0_val == -5<br>                                                                                                                                                                    |[0x800006cc]:KSLRA8 zero, s6, a0<br> [0x800006d0]:sd zero, 240(tp)<br> |
|  17|[0x80003310]<br>0xD5F7F7020020FF03|- rs1 : x26<br> - rs2 : x20<br> - rd : x3<br> - rs2_val == -281474976710657<br> - rs1_b7_val == -86<br> - rs1_b6_val == -17<br> - rs1_b5_val == -17<br> - rs1_b4_val == 4<br> - rs1_b3_val == 1<br> - rs1_b2_val == 64<br> - rs1_b1_val == -2<br>                                                                        |[0x800006fc]:KSLRA8 gp, s10, s4<br> [0x80000700]:sd gp, 256(tp)<br>    |
|  18|[0x80003320]<br>0x0804DFFDD5EF0404|- rs1 : x29<br> - rs2 : x27<br> - rd : x21<br> - rs2_val == -140737488355329<br> - rs1_b6_val == 8<br> - rs1_b5_val == -65<br> - rs1_b3_val == -86<br>                                                                                                                                                                   |[0x8000073c]:KSLRA8 s5, t4, s11<br> [0x80000740]:sd s5, 0(t2)<br>      |
|  19|[0x80003330]<br>0xFE2AC0DFFBFFF7FF|- rs1 : x10<br> - rs2 : x6<br> - rd : x31<br> - rs2_val == -70368744177665<br> - rs1_b7_val == -3<br> - rs1_b5_val == -128<br> - rs1_b4_val == -65<br> - rs1_b3_val == -9<br> - rs1_b1_val == -17<br>                                                                                                                    |[0x8000076c]:KSLRA8 t6, a0, t1<br> [0x80000770]:sd t6, 16(t2)<br>      |
|  20|[0x80003340]<br>0x2000FC10FEFCEFFB|- rs1 : x21<br> - rs2 : x3<br> - rd : x30<br> - rs2_val == -35184372088833<br> - rs1_b7_val == 64<br> - rs1_b6_val == 1<br> - rs1_b4_val == 32<br> - rs1_b1_val == -33<br> - rs1_b0_val == -9<br>                                                                                                                        |[0x800007a4]:KSLRA8 t5, s5, gp<br> [0x800007a8]:sd t5, 32(t2)<br>      |
|  21|[0x80003350]<br>0xFCFCF70200040404|- rs1 : x8<br> - rs2 : x23<br> - rd : x9<br> - rs2_val == -17592186044417<br>                                                                                                                                                                                                                                            |[0x800007dc]:KSLRA8 s1, fp, s7<br> [0x800007e0]:sd s1, 48(t2)<br>      |
|  22|[0x80003360]<br>0xFD00EFDF0008F720|- rs1 : x2<br> - rs2 : x26<br> - rd : x15<br> - rs2_val == -8796093022209<br> - rs1_b7_val == -5<br> - rs1_b5_val == -33<br> - rs1_b2_val == 16<br> - rs1_b0_val == 64<br>                                                                                                                                               |[0x8000080c]:KSLRA8 a5, sp, s10<br> [0x80000810]:sd a5, 64(t2)<br>     |
|  23|[0x80003370]<br>0x03FDF704FDDFFEFD|- rs1 : x5<br> - rs2 : x14<br> - rd : x1<br> - rs2_val == -4398046511105<br> - rs1_b3_val == -5<br> - rs1_b2_val == -65<br> - rs1_b1_val == -3<br>                                                                                                                                                                       |[0x8000083c]:KSLRA8 ra, t0, a4<br> [0x80000840]:sd ra, 80(t2)<br>      |
|  24|[0x80003380]<br>0x02E0FE04F7200303|- rs1 : x15<br> - rs2 : x13<br> - rd : x10<br> - rs2_val == -2199023255553<br> - rs1_b3_val == -17<br>                                                                                                                                                                                                                   |[0x8000086c]:KSLRA8 a0, a5, a3<br> [0x80000870]:sd a0, 96(t2)<br>      |
|  25|[0x80003390]<br>0x0020043F032004DF|- rs1 : x20<br> - rs2 : x12<br> - rd : x4<br> - rs2_val == -1099511627777<br> - rs1_b7_val == 1<br> - rs1_b6_val == 64<br> - rs1_b5_val == 8<br> - rs1_b0_val == -65<br>                                                                                                                                                 |[0x800008a4]:KSLRA8 tp, s4, a2<br> [0x800008a8]:sd tp, 112(t2)<br>     |
|  26|[0x800033a0]<br>0x0404FEE00102FCFE|- rs1 : x12<br> - rs2 : x4<br> - rd : x8<br> - rs2_val == -549755813889<br> - rs1_b5_val == -3<br> - rs1_b3_val == 2<br> - rs1_b2_val == 4<br>                                                                                                                                                                           |[0x800008d4]:KSLRA8 fp, a2, tp<br> [0x800008d8]:sd fp, 128(t2)<br>     |
|  27|[0x800033b0]<br>0x2AFF00FD08F72002|- rs1 : x4<br> - rs2 : x11<br> - rd : x17<br> - rs2_val == -274877906945<br> - rs1_b5_val == 1<br> - rs1_b3_val == 16<br> - rs1_b1_val == 64<br>                                                                                                                                                                         |[0x8000090c]:KSLRA8 a7, tp, a1<br> [0x80000910]:sd a7, 144(t2)<br>     |
|  28|[0x800033c0]<br>0xF7FD093FBFF70820|- rs1 : x11<br> - rs2 : x0<br> - rd : x14<br> - rs1_b7_val == -9<br> - rs1_b6_val == -3<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                       |[0x80000934]:KSLRA8 a4, a1, zero<br> [0x80000938]:sd a4, 160(t2)<br>   |
|  29|[0x800033d0]<br>0x00FFFF04FF2AE0FE|- rs1 : x24<br> - rs2 : x28<br> - rd : x11<br> - rs2_val == -68719476737<br> - rs1_b6_val == -2<br> - rs1_b5_val == -2<br> - rs1_b3_val == -2<br>                                                                                                                                                                        |[0x80000964]:KSLRA8 a1, s8, t3<br> [0x80000968]:sd a1, 176(t2)<br>     |
|  30|[0x800033e0]<br>0x03FBF7013F011FFC|- rs1 : x13<br> - rs2 : x22<br> - rd : x20<br> - rs2_val == -34359738369<br> - rs1_b6_val == -9<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                |[0x80000994]:KSLRA8 s4, a3, s6<br> [0x80000998]:sd s4, 192(t2)<br>     |
|  31|[0x800033f0]<br>0xFD20FDFEF702FCDF|- rs1 : x14<br> - rs2 : x31<br> - rd : x26<br> - rs2_val == -17179869185<br>                                                                                                                                                                                                                                             |[0x800009c4]:KSLRA8 s10, a4, t6<br> [0x800009c8]:sd s10, 208(t2)<br>   |
|  32|[0x80003400]<br>0xC03F1FC004F704F7|- rs1 : x18<br> - rs2 : x24<br> - rd : x22<br> - rs2_val == -8589934593<br> - rs1_b6_val == 127<br> - rs1_b4_val == -128<br> - rs1_b3_val == 8<br> - rs1_b0_val == -17<br>                                                                                                                                               |[0x800009fc]:KSLRA8 s6, s2, s8<br> [0x80000a00]:sd s6, 224(t2)<br>     |
|  33|[0x80003410]<br>0x0004D5FE2003FD02|- rs2_val == -4294967297<br> - rs1_b5_val == -86<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                              |[0x80000a34]:KSLRA8 t6, t5, t4<br> [0x80000a38]:sd t6, 0(ra)<br>       |
|  34|[0x80003420]<br>0xFB02100810FCEF10|- rs2_val == -2147483649<br> - rs1_b4_val == 16<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                                                               |[0x80000a64]:KSLRA8 t6, t5, t4<br> [0x80000a68]:sd t6, 16(ra)<br>      |
|  35|[0x80003430]<br>0x3F081FC0C001FED5|- rs2_val == -1073741825<br> - rs1_b6_val == 16<br> - rs1_b3_val == -128<br>                                                                                                                                                                                                                                             |[0x80000a98]:KSLRA8 t6, t5, t4<br> [0x80000a9c]:sd t6, 32(ra)<br>      |
|  36|[0x80003440]<br>0xFCFFFB2A010020FF|- rs2_val == -536870913<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                       |[0x80000acc]:KSLRA8 t6, t5, t4<br> [0x80000ad0]:sd t6, 48(ra)<br>      |
|  37|[0x80003450]<br>0x020403D5EF08FFFD|- rs2_val == -268435457<br> - rs1_b4_val == -86<br>                                                                                                                                                                                                                                                                      |[0x80000af8]:KSLRA8 t6, t5, t4<br> [0x80000afc]:sd t6, 64(ra)<br>      |
|  38|[0x80003460]<br>0x2002DFFD3FFB033F|- rs2_val == -134217729<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                      |[0x80000b2c]:KSLRA8 t6, t5, t4<br> [0x80000b30]:sd t6, 80(ra)<br>      |
|  39|[0x80003470]<br>0xFB03FBFFFCD50102|- rs2_val == -67108865<br> - rs1_b4_val == -2<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                                                |[0x80000b58]:KSLRA8 t6, t5, t4<br> [0x80000b5c]:sd t6, 96(ra)<br>      |
|  40|[0x80003480]<br>0xFFFEFC04D50304FC|- rs2_val == -33554433<br>                                                                                                                                                                                                                                                                                               |[0x80000b8c]:KSLRA8 t6, t5, t4<br> [0x80000b90]:sd t6, 112(ra)<br>     |
|  41|[0x80003490]<br>0x2A3F2AEF00FCFDDF|- rs2_val == -16777217<br> - rs1_b4_val == -33<br>                                                                                                                                                                                                                                                                       |[0x80000bb8]:KSLRA8 t6, t5, t4<br> [0x80000bbc]:sd t6, 128(ra)<br>     |
|  42|[0x800034a0]<br>0xFD3FD50102FBFDDF|- rs1_b4_val == 2<br> - rs1_b3_val == 4<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                       |[0x80000be4]:KSLRA8 t6, t5, t4<br> [0x80000be8]:sd t6, 144(ra)<br>     |
|  43|[0x800034b0]<br>0x000000FE00FFFCFF|- rs2_val == -5<br> - rs1_b6_val == 4<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                       |[0x80000c0c]:KSLRA8 t6, t5, t4<br> [0x80000c10]:sd t6, 160(ra)<br>     |
|  44|[0x800034c0]<br>0xC0D51FFDD53FFF01|- rs1_b6_val == -86<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                            |[0x80000c3c]:KSLRA8 t6, t5, t4<br> [0x80000c40]:sd t6, 176(ra)<br>     |
|  45|[0x800034d0]<br>0xFD553F0803BF7F55|- rs2_val == 2147483648<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                      |[0x80000c68]:KSLRA8 t6, t5, t4<br> [0x80000c6c]:sd t6, 192(ra)<br>     |
|  46|[0x800034e0]<br>0xFB02DFFD2001FDEF|- rs2_val == -524289<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                         |[0x80000c94]:KSLRA8 t6, t5, t4<br> [0x80000c98]:sd t6, 208(ra)<br>     |
|  47|[0x800034f0]<br>0x000103E0FED502C0|- rs1_b0_val == -128<br>                                                                                                                                                                                                                                                                                                 |[0x80000cc4]:KSLRA8 t6, t5, t4<br> [0x80000cc8]:sd t6, 224(ra)<br>     |
|  48|[0x80003500]<br>0xFFFF0000FF000000|- rs1_b4_val == 64<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                            |[0x80000cf4]:KSLRA8 t6, t5, t4<br> [0x80000cf8]:sd t6, 240(ra)<br>     |
|  49|[0x80003520]<br>0x0100FFFF0000FF00|- rs1_b4_val == -9<br> - rs2_val == -6148914691236517206<br>                                                                                                                                                                                                                                                             |[0x80000d68]:KSLRA8 t6, t5, t4<br> [0x80000d6c]:sd t6, 272(ra)<br>     |
|  50|[0x80003530]<br>0x0101DFD5FFE0E001|- rs2_val == -8388609<br>                                                                                                                                                                                                                                                                                                |[0x80000d94]:KSLRA8 t6, t5, t4<br> [0x80000d98]:sd t6, 288(ra)<br>     |
|  51|[0x80003540]<br>0x01FE01EFFED510FD|- rs2_val == -4194305<br> - rs1_b5_val == 2<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                   |[0x80000dc8]:KSLRA8 t6, t5, t4<br> [0x80000dcc]:sd t6, 304(ra)<br>     |
|  52|[0x80003550]<br>0xFC0003FFD5FCD5FB|- rs2_val == -2097153<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                        |[0x80000dfc]:KSLRA8 t6, t5, t4<br> [0x80000e00]:sd t6, 320(ra)<br>     |
|  53|[0x80003560]<br>0x1FFD002A203F0304|- rs2_val == -1048577<br>                                                                                                                                                                                                                                                                                                |[0x80000e30]:KSLRA8 t6, t5, t4<br> [0x80000e34]:sd t6, 336(ra)<br>     |
|  54|[0x80003570]<br>0xFC3F01E0001001FE|- rs2_val == -262145<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                          |[0x80000e5c]:KSLRA8 t6, t5, t4<br> [0x80000e60]:sd t6, 352(ra)<br>     |
|  55|[0x80003580]<br>0x20FD0000FCFF082A|- rs2_val == -131073<br>                                                                                                                                                                                                                                                                                                 |[0x80000e90]:KSLRA8 t6, t5, t4<br> [0x80000e94]:sd t6, 368(ra)<br>     |
|  56|[0x80003590]<br>0xFEF7D5FDFE00FBFC|- rs2_val == -65537<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                           |[0x80000ec4]:KSLRA8 t6, t5, t4<br> [0x80000ec8]:sd t6, 384(ra)<br>     |
|  57|[0x800035a0]<br>0xEF010400E02AFCFB|- rs2_val == -32769<br> - rs1_b7_val == -33<br> - rs1_b4_val == 1<br>                                                                                                                                                                                                                                                    |[0x80000ef8]:KSLRA8 t6, t5, t4<br> [0x80000efc]:sd t6, 400(ra)<br>     |
|  58|[0x800035b0]<br>0x08FED5FB03FFD501|- rs2_val == -16385<br>                                                                                                                                                                                                                                                                                                  |[0x80000f2c]:KSLRA8 t6, t5, t4<br> [0x80000f30]:sd t6, 416(ra)<br>     |
|  59|[0x800035c0]<br>0xFF04D5FE0200DF04|- rs2_val == -8193<br> - rs1_b4_val == -3<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                    |[0x80000f58]:KSLRA8 t6, t5, t4<br> [0x80000f5c]:sd t6, 432(ra)<br>     |
|  60|[0x800035d0]<br>0x000304FCFBFEEFFF|- rs2_val == -4097<br>                                                                                                                                                                                                                                                                                                   |[0x80000f84]:KSLRA8 t6, t5, t4<br> [0x80000f88]:sd t6, 448(ra)<br>     |
|  61|[0x800035e0]<br>0x1002FF1FFF021001|- rs2_val == -2049<br>                                                                                                                                                                                                                                                                                                   |[0x80000fb0]:KSLRA8 t6, t5, t4<br> [0x80000fb4]:sd t6, 464(ra)<br>     |
|  62|[0x800035f0]<br>0x2AFE02EF043FDFFE|- rs2_val == -1025<br>                                                                                                                                                                                                                                                                                                   |[0x80000fe0]:KSLRA8 t6, t5, t4<br> [0x80000fe4]:sd t6, 480(ra)<br>     |
|  63|[0x80003600]<br>0x04FEFB0302FDEF00|- rs2_val == -513<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                             |[0x80001010]:KSLRA8 t6, t5, t4<br> [0x80001014]:sd t6, 496(ra)<br>     |
|  64|[0x80003610]<br>0xF7FE1FFF20FCFF03|- rs2_val == -257<br>                                                                                                                                                                                                                                                                                                    |[0x80001038]:KSLRA8 t6, t5, t4<br> [0x8000103c]:sd t6, 512(ra)<br>     |
|  65|[0x80003620]<br>0x100010001F03F7FE|- rs2_val == -129<br>                                                                                                                                                                                                                                                                                                    |[0x80001068]:KSLRA8 t6, t5, t4<br> [0x8000106c]:sd t6, 528(ra)<br>     |
|  66|[0x80003630]<br>0xFE0408FDFB1FFF3F|- rs2_val == -65<br>                                                                                                                                                                                                                                                                                                     |[0x80001090]:KSLRA8 t6, t5, t4<br> [0x80001094]:sd t6, 544(ra)<br>     |
|  67|[0x80003640]<br>0xE0EFFCFD02FB01FB|- rs2_val == -33<br>                                                                                                                                                                                                                                                                                                     |[0x800010b8]:KSLRA8 t6, t5, t4<br> [0x800010bc]:sd t6, 560(ra)<br>     |
|  68|[0x80003650]<br>0xFE02F7FD1FD502FC|- rs2_val == -17<br>                                                                                                                                                                                                                                                                                                     |[0x800010e0]:KSLRA8 t6, t5, t4<br> [0x800010e4]:sd t6, 576(ra)<br>     |
|  69|[0x80003660]<br>0x7F808080807F807F|- rs2_val == -9<br>                                                                                                                                                                                                                                                                                                      |[0x80001110]:KSLRA8 t6, t5, t4<br> [0x80001114]:sd t6, 592(ra)<br>     |
|  70|[0x80003670]<br>0x0000FF0000FE0AFF|- rs2_val == -3<br>                                                                                                                                                                                                                                                                                                      |[0x80001140]:KSLRA8 t6, t5, t4<br> [0x80001144]:sd t6, 608(ra)<br>     |
|  71|[0x80003680]<br>0x100815FEFFFFE0FE|- rs2_val == -2<br>                                                                                                                                                                                                                                                                                                      |[0x80001168]:KSLRA8 t6, t5, t4<br> [0x8000116c]:sd t6, 624(ra)<br>     |
|  72|[0x80003690]<br>0xDF557F00FFDF0220|- rs2_val == -9223372036854775808<br>                                                                                                                                                                                                                                                                                    |[0x80001194]:KSLRA8 t6, t5, t4<br> [0x80001198]:sd t6, 640(ra)<br>     |
|  73|[0x800036a0]<br>0xF780F9FB1010F87F|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                                                                                                                     |[0x800011c8]:KSLRA8 t6, t5, t4<br> [0x800011cc]:sd t6, 656(ra)<br>     |
|  74|[0x800036b0]<br>0x0909FA7F01060606|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                                                                                                                     |[0x800011f4]:KSLRA8 t6, t5, t4<br> [0x800011f8]:sd t6, 672(ra)<br>     |
|  75|[0x800036c0]<br>0xF980EFFA06BF80FD|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                                                                                                     |[0x80001228]:KSLRA8 t6, t5, t4<br> [0x8000122c]:sd t6, 688(ra)<br>     |
|  76|[0x800036d0]<br>0xFBFB55DFFA0007EF|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                                                                                                      |[0x80001254]:KSLRA8 t6, t5, t4<br> [0x80001258]:sd t6, 704(ra)<br>     |
|  77|[0x800036e0]<br>0x55F7AA0708FD0401|- rs2_val == 288230376151711744<br> - rs1_b2_val == -3<br>                                                                                                                                                                                                                                                               |[0x80001288]:KSLRA8 t6, t5, t4<br> [0x8000128c]:sd t6, 720(ra)<br>     |
|  78|[0x800036f0]<br>0x40FCFA1040FF0255|- rs2_val == 144115188075855872<br>                                                                                                                                                                                                                                                                                      |[0x800012bc]:KSLRA8 t6, t5, t4<br> [0x800012c0]:sd t6, 736(ra)<br>     |
|  79|[0x80003700]<br>0xFA803F05F6EFF640|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                                                                                                       |[0x800012f0]:KSLRA8 t6, t5, t4<br> [0x800012f4]:sd t6, 752(ra)<br>     |
|  80|[0x80003710]<br>0xFD20DFDFEF0604DF|- rs2_val == 36028797018963968<br>                                                                                                                                                                                                                                                                                       |[0x8000131c]:KSLRA8 t6, t5, t4<br> [0x80001320]:sd t6, 768(ra)<br>     |
|  81|[0x80003720]<br>0x0CF00080080A0A0A|- rs2_val == 1<br>                                                                                                                                                                                                                                                                                                       |[0x80001344]:KSLRA8 t6, t5, t4<br> [0x80001348]:sd t6, 784(ra)<br>     |
|  82|[0x80003730]<br>0xBF80090805F820F6|- rs2_val == 137438953472<br> - rs1_b7_val == -65<br>                                                                                                                                                                                                                                                                    |[0x80001378]:KSLRA8 t6, t5, t4<br> [0x8000137c]:sd t6, 800(ra)<br>     |
|  83|[0x80003740]<br>0xFD08403F0906FAFA|- rs2_val == 256<br>                                                                                                                                                                                                                                                                                                     |[0x800013a0]:KSLRA8 t6, t5, t4<br> [0x800013a4]:sd t6, 816(ra)<br>     |
|  84|[0x80003750]<br>0x08FF40C0AA08FABF|- rs2_val == 8388608<br> - rs1_b7_val == 8<br>                                                                                                                                                                                                                                                                           |[0x800013d0]:KSLRA8 t6, t5, t4<br> [0x800013d4]:sd t6, 832(ra)<br>     |
|  85|[0x80003760]<br>0x02F73F04FE041004|- rs1_b7_val == 4<br> - rs1_b3_val == -3<br>                                                                                                                                                                                                                                                                             |[0x80001404]:KSLRA8 t6, t5, t4<br> [0x80001408]:sd t6, 848(ra)<br>     |
|  86|[0x80003770]<br>0xFF10E0D5FE020402|- rs1_b7_val == -1<br>                                                                                                                                                                                                                                                                                                   |[0x8000143c]:KSLRA8 t6, t5, t4<br> [0x80001440]:sd t6, 864(ra)<br>     |
|  87|[0x80003780]<br>0x02BF40FE5520F9FE|- rs2_val == 4194304<br> - rs1_b6_val == -65<br>                                                                                                                                                                                                                                                                         |[0x80001464]:KSLRA8 t6, t5, t4<br> [0x80001468]:sd t6, 880(ra)<br>     |
|  88|[0x80003790]<br>0xC040F706FC7F0410|- rs1_b5_val == -9<br>                                                                                                                                                                                                                                                                                                   |[0x80001490]:KSLRA8 t6, t5, t4<br> [0x80001494]:sd t6, 896(ra)<br>     |
|  89|[0x800037a0]<br>0xAA0704F70102F9C0|- rs2_val == 2199023255552<br> - rs1_b5_val == 4<br>                                                                                                                                                                                                                                                                     |[0x800014bc]:KSLRA8 t6, t5, t4<br> [0x800014c0]:sd t6, 912(ra)<br>     |
|  90|[0x800037b0]<br>0x05FAFF00807F0503|- rs2_val == 18014398509481984<br>                                                                                                                                                                                                                                                                                       |[0x800014e8]:KSLRA8 t6, t5, t4<br> [0x800014ec]:sd t6, 928(ra)<br>     |
|  91|[0x800037c0]<br>0x047F09F807FB03F6|- rs2_val == 9007199254740992<br>                                                                                                                                                                                                                                                                                        |[0x80001514]:KSLRA8 t6, t5, t4<br> [0x80001518]:sd t6, 944(ra)<br>     |
|  92|[0x800037d0]<br>0x0880FD06F8551010|- rs2_val == 4503599627370496<br>                                                                                                                                                                                                                                                                                        |[0x80001548]:KSLRA8 t6, t5, t4<br> [0x8000154c]:sd t6, 960(ra)<br>     |
|  93|[0x800037e0]<br>0xF87FC0208002F740|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                                                                                                        |[0x80001574]:KSLRA8 t6, t5, t4<br> [0x80001578]:sd t6, 976(ra)<br>     |
|  94|[0x800037f0]<br>0xFD08DFF9FF073F20|- rs2_val == 1125899906842624<br>                                                                                                                                                                                                                                                                                        |[0x800015a0]:KSLRA8 t6, t5, t4<br> [0x800015a4]:sd t6, 992(ra)<br>     |
|  95|[0x80003800]<br>0x100810C000FA0006|- rs2_val == 562949953421312<br>                                                                                                                                                                                                                                                                                         |[0x800015cc]:KSLRA8 t6, t5, t4<br> [0x800015d0]:sd t6, 1008(ra)<br>    |
|  96|[0x80003810]<br>0x10BF040907087FC0|- rs2_val == 281474976710656<br>                                                                                                                                                                                                                                                                                         |[0x80001600]:KSLRA8 t6, t5, t4<br> [0x80001604]:sd t6, 1024(ra)<br>    |
|  97|[0x80003820]<br>0xFEFA0905F80501FA|- rs2_val == 140737488355328<br>                                                                                                                                                                                                                                                                                         |[0x8000162c]:KSLRA8 t6, t5, t4<br> [0x80001630]:sd t6, 1040(ra)<br>    |
|  98|[0x80003830]<br>0x550800DF0900033F|- rs2_val == 70368744177664<br>                                                                                                                                                                                                                                                                                          |[0x80001658]:KSLRA8 t6, t5, t4<br> [0x8000165c]:sd t6, 1056(ra)<br>    |
|  99|[0x80003840]<br>0xDFF90608100109FC|- rs2_val == 35184372088832<br>                                                                                                                                                                                                                                                                                          |[0x8000168c]:KSLRA8 t6, t5, t4<br> [0x80001690]:sd t6, 1072(ra)<br>    |
| 100|[0x80003850]<br>0xFC55FDFF3F092008|- rs2_val == 17592186044416<br>                                                                                                                                                                                                                                                                                          |[0x800016b8]:KSLRA8 t6, t5, t4<br> [0x800016bc]:sd t6, 1088(ra)<br>    |
| 101|[0x80003860]<br>0x03AABFFEFAF7F8FA|- rs2_val == 8796093022208<br>                                                                                                                                                                                                                                                                                           |[0x800016e4]:KSLRA8 t6, t5, t4<br> [0x800016e8]:sd t6, 1104(ra)<br>    |
| 102|[0x80003870]<br>0x07FDF6FE80DFEFEF|- rs2_val == 4398046511104<br>                                                                                                                                                                                                                                                                                           |[0x80001718]:KSLRA8 t6, t5, t4<br> [0x8000171c]:sd t6, 1120(ra)<br>    |
| 103|[0x80003880]<br>0x06F60605F90402FC|- rs2_val == 1099511627776<br>                                                                                                                                                                                                                                                                                           |[0x80001744]:KSLRA8 t6, t5, t4<br> [0x80001748]:sd t6, 1136(ra)<br>    |
| 104|[0x80003890]<br>0xFEF705DF10FC4055|- rs2_val == 549755813888<br>                                                                                                                                                                                                                                                                                            |[0x80001770]:KSLRA8 t6, t5, t4<br> [0x80001774]:sd t6, 1152(ra)<br>    |
| 105|[0x800038a0]<br>0xF9FC00FAFADF7FFC|- rs2_val == 274877906944<br>                                                                                                                                                                                                                                                                                            |[0x800017a4]:KSLRA8 t6, t5, t4<br> [0x800017a8]:sd t6, 1168(ra)<br>    |
| 106|[0x800038b0]<br>0x7F02FEF7EF08C006|- rs2_val == 68719476736<br>                                                                                                                                                                                                                                                                                             |[0x800017d8]:KSLRA8 t6, t5, t4<br> [0x800017dc]:sd t6, 1184(ra)<br>    |
| 107|[0x800038c0]<br>0xFE80DFF8F6F7F900|- rs2_val == 34359738368<br>                                                                                                                                                                                                                                                                                             |[0x80001804]:KSLRA8 t6, t5, t4<br> [0x80001808]:sd t6, 1200(ra)<br>    |
| 108|[0x800038d0]<br>0xFFC0C0F6EFFF0604|- rs2_val == 17179869184<br>                                                                                                                                                                                                                                                                                             |[0x80001830]:KSLRA8 t6, t5, t4<br> [0x80001834]:sd t6, 1216(ra)<br>    |
| 109|[0x800038e0]<br>0x0380F9FFFA09C0BF|- rs2_val == 8589934592<br>                                                                                                                                                                                                                                                                                              |[0x80001864]:KSLRA8 t6, t5, t4<br> [0x80001868]:sd t6, 1232(ra)<br>    |
| 110|[0x800038f0]<br>0x0240808006AAEFFF|- rs2_val == 4294967296<br>                                                                                                                                                                                                                                                                                              |[0x80001898]:KSLRA8 t6, t5, t4<br> [0x8000189c]:sd t6, 1248(ra)<br>    |
| 111|[0x80003900]<br>0xF87FFB7FF80803AA|- rs2_val == 1073741824<br>                                                                                                                                                                                                                                                                                              |[0x800018c0]:KSLRA8 t6, t5, t4<br> [0x800018c4]:sd t6, 1264(ra)<br>    |
| 112|[0x80003910]<br>0xFD0140FD01030855|- rs2_val == 536870912<br>                                                                                                                                                                                                                                                                                               |[0x800018f0]:KSLRA8 t6, t5, t4<br> [0x800018f4]:sd t6, 1280(ra)<br>    |
| 113|[0x80003920]<br>0x803F0607FBFD4006|- rs2_val == 268435456<br>                                                                                                                                                                                                                                                                                               |[0x80001920]:KSLRA8 t6, t5, t4<br> [0x80001924]:sd t6, 1296(ra)<br>    |
| 114|[0x80003930]<br>0x0701AA05402040F6|- rs2_val == 134217728<br>                                                                                                                                                                                                                                                                                               |[0x80001948]:KSLRA8 t6, t5, t4<br> [0x8000194c]:sd t6, 1312(ra)<br>    |
| 115|[0x80003940]<br>0xFA7FAA0610050109|- rs2_val == 67108864<br>                                                                                                                                                                                                                                                                                                |[0x80001970]:KSLRA8 t6, t5, t4<br> [0x80001974]:sd t6, 1328(ra)<br>    |
| 116|[0x80003950]<br>0xF801065509F9F8BF|- rs2_val == 33554432<br>                                                                                                                                                                                                                                                                                                |[0x80001998]:KSLRA8 t6, t5, t4<br> [0x8000199c]:sd t6, 1344(ra)<br>    |
| 117|[0x80003960]<br>0xDF03060655FEFF55|- rs2_val == 16777216<br>                                                                                                                                                                                                                                                                                                |[0x800019c8]:KSLRA8 t6, t5, t4<br> [0x800019cc]:sd t6, 1360(ra)<br>    |
| 118|[0x80003970]<br>0x090007FC400408FF|- rs2_val == 2097152<br>                                                                                                                                                                                                                                                                                                 |[0x800019f0]:KSLRA8 t6, t5, t4<br> [0x800019f4]:sd t6, 1376(ra)<br>    |
| 119|[0x80003980]<br>0x3F02FCF701FA05EF|- rs2_val == 1048576<br>                                                                                                                                                                                                                                                                                                 |[0x80001a18]:KSLRA8 t6, t5, t4<br> [0x80001a1c]:sd t6, 1392(ra)<br>    |
| 120|[0x80003990]<br>0xAA0802000603003F|- rs2_val == 524288<br>                                                                                                                                                                                                                                                                                                  |[0x80001a40]:KSLRA8 t6, t5, t4<br> [0x80001a44]:sd t6, 1408(ra)<br>    |
| 121|[0x800039a0]<br>0x10DFF7F9070002FB|- rs2_val == 262144<br>                                                                                                                                                                                                                                                                                                  |[0x80001a68]:KSLRA8 t6, t5, t4<br> [0x80001a6c]:sd t6, 1424(ra)<br>    |
| 122|[0x800039b0]<br>0xFE0202FBFBC0FD1F|- rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                 |[0x80001a94]:KSLRA8 t6, t5, t4<br> [0x80001a98]:sd t6, 1440(ra)<br>    |
| 123|[0x800039c0]<br>0xF7AAEF10FF040910|- rs2_val == 131072<br>                                                                                                                                                                                                                                                                                                  |[0x80001ac4]:KSLRA8 t6, t5, t4<br> [0x80001ac8]:sd t6, 1456(ra)<br>    |
| 124|[0x800039d0]<br>0x3F800707FAF90320|- rs2_val == 65536<br>                                                                                                                                                                                                                                                                                                   |[0x80001aec]:KSLRA8 t6, t5, t4<br> [0x80001af0]:sd t6, 1472(ra)<br>    |
| 125|[0x800039e0]<br>0x408004F7FE02FDFA|- rs2_val == 32768<br>                                                                                                                                                                                                                                                                                                   |[0x80001b14]:KSLRA8 t6, t5, t4<br> [0x80001b18]:sd t6, 1488(ra)<br>    |
| 126|[0x800039f0]<br>0x000380FAFB025555|- rs2_val == 16384<br>                                                                                                                                                                                                                                                                                                   |[0x80001b3c]:KSLRA8 t6, t5, t4<br> [0x80001b40]:sd t6, 1504(ra)<br>    |
| 127|[0x80003a00]<br>0xFEF6F7F8AAF608FA|- rs2_val == 8192<br>                                                                                                                                                                                                                                                                                                    |[0x80001b6c]:KSLRA8 t6, t5, t4<br> [0x80001b70]:sd t6, 1520(ra)<br>    |
| 128|[0x80003a10]<br>0xEF400302F77F3F07|- rs2_val == 4096<br>                                                                                                                                                                                                                                                                                                    |[0x80001b9c]:KSLRA8 t6, t5, t4<br> [0x80001ba0]:sd t6, 1536(ra)<br>    |
| 129|[0x80003a20]<br>0xF8FD01F6F804FC80|- rs2_val == 2048<br>                                                                                                                                                                                                                                                                                                    |[0x80001bc8]:KSLRA8 t6, t5, t4<br> [0x80001bcc]:sd t6, 1552(ra)<br>    |
| 130|[0x80003a30]<br>0xFEFCF606AAFFF640|- rs2_val == 1024<br>                                                                                                                                                                                                                                                                                                    |[0x80001bf8]:KSLRA8 t6, t5, t4<br> [0x80001bfc]:sd t6, 1568(ra)<br>    |
| 131|[0x80003a40]<br>0xF6075505407F037F|- rs2_val == 512<br>                                                                                                                                                                                                                                                                                                     |[0x80001c20]:KSLRA8 t6, t5, t4<br> [0x80001c24]:sd t6, 1584(ra)<br>    |
| 132|[0x80003a50]<br>0x102005FAFA10FB02|- rs2_val == 128<br>                                                                                                                                                                                                                                                                                                     |[0x80001c48]:KSLRA8 t6, t5, t4<br> [0x80001c4c]:sd t6, 1600(ra)<br>    |
| 133|[0x80003a60]<br>0xBF01405506FA7F00|- rs2_val == 64<br>                                                                                                                                                                                                                                                                                                      |[0x80001c78]:KSLRA8 t6, t5, t4<br> [0x80001c7c]:sd t6, 1616(ra)<br>    |
| 134|[0x80003a70]<br>0xBF3FC0FB55F8FDFC|- rs2_val == 32<br>                                                                                                                                                                                                                                                                                                      |[0x80001ca8]:KSLRA8 t6, t5, t4<br> [0x80001cac]:sd t6, 1632(ra)<br>    |
| 135|[0x80003a80]<br>0xAA09FF0007070109|- rs2_val == 16<br>                                                                                                                                                                                                                                                                                                      |[0x80001cd0]:KSLRA8 t6, t5, t4<br> [0x80001cd4]:sd t6, 1648(ra)<br>    |
| 136|[0x80003a90]<br>0x00FFFFFF0000FF00|- rs2_val == 8<br>                                                                                                                                                                                                                                                                                                       |[0x80001d00]:KSLRA8 t6, t5, t4<br> [0x80001d04]:sd t6, 1664(ra)<br>    |
| 137|[0x80003aa0]<br>0x908080C07FD08050|- rs2_val == 4<br>                                                                                                                                                                                                                                                                                                       |[0x80001d28]:KSLRA8 t6, t5, t4<br> [0x80001d2c]:sd t6, 1680(ra)<br>    |
| 138|[0x80003ab0]<br>0xF4F0D8E01CE47F1C|- rs2_val == 2<br>                                                                                                                                                                                                                                                                                                       |[0x80001d50]:KSLRA8 t6, t5, t4<br> [0x80001d54]:sd t6, 1696(ra)<br>    |
| 139|[0x80003b00]<br>0xFBFE041FDFFB0410|- rs2_val == -137438953473<br>                                                                                                                                                                                                                                                                                           |[0x80001e64]:KSLRA8 t6, t5, t4<br> [0x80001e68]:sd t6, 1776(ra)<br>    |
