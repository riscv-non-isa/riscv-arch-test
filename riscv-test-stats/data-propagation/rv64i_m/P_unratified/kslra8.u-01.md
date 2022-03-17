
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ea0')]      |
| SIG_REGION                | [('0x80003210', '0x80003af0', '284 dwords')]      |
| COV_LABELS                | kslra8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra8.u-01.S    |
| Total Number of coverpoints| 398     |
| Total Coverpoints Hit     | 392      |
| Total Signature Updates   | 284      |
| STAT1                     | 138      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 142     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013ec]:KSLRA8_U t6, t5, t4
      [0x800013f0]:sd t6, 1040(gp)
 -- Signature Address: 0x80003750 Data: 0x010003FF04FC0001
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -5
      - rs1_b6_val == 251
      - rs1_b5_val == 85
      - rs1_b4_val == 239
      - rs1_b3_val == 127
      - rs1_b2_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001dec]:KSLRA8_U t6, t5, t4
      [0x80001df0]:sd t6, 1904(gp)
 -- Signature Address: 0x80003ab0 Data: 0x807F407F7F8080C0
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6148914691236517205
      - rs1_b7_val == 251
      - rs1_b5_val == 2
      - rs1_b3_val == 32
      - rs1_b2_val == 170
      - rs1_b1_val == 239
      - rs1_b0_val == 254




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e1c]:KSLRA8_U t6, t5, t4
      [0x80001e20]:sd t6, 1920(gp)
 -- Signature Address: 0x80003ac0 Data: 0x0408082B07050001
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 9223372036854775807
      - rs1_b4_val == 85
      - rs1_b1_val == 255
      - rs1_b0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e8c]:KSLRA8_U t6, t5, t4
      [0x80001e90]:sd t6, 1952(gp)
 -- Signature Address: 0x80003ae0 Data: 0x03FC0307FE200808
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -1125899906842625
      - rs1_b6_val == 247
      - rs1_b3_val == 251
      - rs1_b2_val == 64






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x24', 'rs2 : x24', 'rd : x28', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_b7_val == 85', 'rs1_b6_val == 85', 'rs1_b5_val == 85', 'rs1_b4_val == 85', 'rs1_b3_val == 85', 'rs1_b2_val == 85', 'rs1_b1_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800003e4]:KSLRA8_U t3, s8, s8
	-[0x800003e8]:sd t3, 0(tp)
Current Store : [0x800003ec] : sd s8, 8(tp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x3', 'rs2 : x3', 'rd : x3', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_b7_val == 127', 'rs1_b6_val == 255', 'rs1_b5_val == 255', 'rs1_b4_val == 255', 'rs1_b3_val == 255', 'rs1_b2_val == 255', 'rs1_b1_val == 255', 'rs1_b0_val == 255']
Last Code Sequence : 
	-[0x80000414]:KSLRA8_U gp, gp, gp
	-[0x80000418]:sd gp, 16(tp)
Current Store : [0x8000041c] : sd gp, 24(tp) -- Store: [0x80003228]:0x4000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b5_val == 247', 'rs1_b4_val == 4', 'rs1_b1_val == 8', 'rs1_b0_val == 128']
Last Code Sequence : 
	-[0x80000444]:KSLRA8_U t4, ra, zero
	-[0x80000448]:sd t4, 32(tp)
Current Store : [0x8000044c] : sd ra, 40(tp) -- Store: [0x80003238]:0x0D55F704030F0880




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x7', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_b7_val == 255', 'rs1_b6_val == 127', 'rs1_b4_val == 64', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x8000047c]:KSLRA8_U t2, t2, a3
	-[0x80000480]:sd t2, 48(tp)
Current Store : [0x80000484] : sd t2, 56(tp) -- Store: [0x80003248]:0x0040072008030700




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x11', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_b6_val == 4', 'rs1_b4_val == 16', 'rs1_b3_val == 254', 'rs1_b2_val == 8', 'rs1_b1_val == 16', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800004ac]:KSLRA8_U a1, s10, a1
	-[0x800004b0]:sd a1, 64(tp)
Current Store : [0x800004b4] : sd s10, 72(tp) -- Store: [0x80003258]:0xFF040D10FE081002




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x27', 'rs2_val == -576460752303423489', 'rs1_b6_val == 32', 'rs1_b5_val == 4', 'rs1_b4_val == 253', 'rs1_b2_val == 253']
Last Code Sequence : 
	-[0x800004dc]:KSLRA8_U s11, s9, t2
	-[0x800004e0]:sd s11, 80(tp)
Current Store : [0x800004e4] : sd s9, 88(tp) -- Store: [0x80003268]:0x0B2004FD09FDFF80




Last Coverpoint : ['rs1 : x12', 'rs2 : x9', 'rd : x21', 'rs2_val == -288230376151711745', 'rs1_b6_val == 251', 'rs1_b3_val == 32', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x8000050c]:KSLRA8_U s5, a2, s1
	-[0x80000510]:sd s5, 96(tp)
Current Store : [0x80000514] : sd a2, 104(tp) -- Store: [0x80003278]:0xFFFB05FD20200D0D




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x16', 'rs2_val == -144115188075855873', 'rs1_b5_val == 2', 'rs1_b3_val == 247', 'rs1_b2_val == 128', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000544]:KSLRA8_U a6, a7, s11
	-[0x80000548]:sd a6, 112(tp)
Current Store : [0x8000054c] : sd a7, 120(tp) -- Store: [0x80003288]:0x5520020AF7800C20




Last Coverpoint : ['rs1 : x27', 'rs2 : x18', 'rd : x6', 'rs2_val == -72057594037927937', 'rs1_b7_val == 247', 'rs1_b4_val == 1', 'rs1_b1_val == 223']
Last Code Sequence : 
	-[0x8000057c]:KSLRA8_U t1, s11, s2
	-[0x80000580]:sd t1, 128(tp)
Current Store : [0x80000584] : sd s11, 136(tp) -- Store: [0x80003298]:0xF7060F010A13DF13




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x12', 'rs2_val == -36028797018963969', 'rs1_b6_val == 253', 'rs1_b5_val == 1', 'rs1_b4_val == 32', 'rs1_b1_val == 0', 'rs1_b0_val == 191']
Last Code Sequence : 
	-[0x800005b4]:KSLRA8_U a2, s5, s4
	-[0x800005b8]:sd a2, 144(tp)
Current Store : [0x800005bc] : sd s5, 152(tp) -- Store: [0x800032a8]:0x12FD01200A0D00BF




Last Coverpoint : ['rs1 : x13', 'rs2 : x30', 'rd : x14', 'rs2_val == -18014398509481985', 'rs1_b4_val == 8']
Last Code Sequence : 
	-[0x800005e4]:KSLRA8_U a4, a3, t5
	-[0x800005e8]:sd a4, 160(tp)
Current Store : [0x800005ec] : sd a3, 168(tp) -- Store: [0x800032b8]:0x0A03120809120613




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x8', 'rs2_val == -9007199254740993', 'rs1_b5_val == 8', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x8000061c]:KSLRA8_U fp, a1, s7
	-[0x80000620]:sd fp, 176(tp)
Current Store : [0x80000624] : sd a1, 184(tp) -- Store: [0x800032c8]:0x0AFF08400F07400F




Last Coverpoint : ['rs1 : x18', 'rs2 : x14', 'rd : x10', 'rs2_val == -4503599627370497', 'rs1_b7_val == 253', 'rs1_b6_val == 8', 'rs1_b2_val == 239', 'rs1_b1_val == 247']
Last Code Sequence : 
	-[0x80000654]:KSLRA8_U a0, s2, a4
	-[0x80000658]:sd a0, 192(tp)
Current Store : [0x8000065c] : sd s2, 200(tp) -- Store: [0x800032d8]:0xFD080B090BEFF7FF




Last Coverpoint : ['rs1 : x5', 'rs2 : x29', 'rd : x24', 'rs2_val == -2251799813685249', 'rs1_b6_val == 254', 'rs1_b5_val == 251', 'rs1_b4_val == 239', 'rs1_b3_val == 0', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000684]:KSLRA8_U s8, t0, t4
	-[0x80000688]:sd s8, 208(tp)
Current Store : [0x8000068c] : sd t0, 216(tp) -- Store: [0x800032e8]:0x7FFEFBEF00121304




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x0', 'rs2_val == -1125899906842625', 'rs1_b6_val == 247', 'rs1_b3_val == 251', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x800006bc]:KSLRA8_U zero, s1, a2
	-[0x800006c0]:sd zero, 224(tp)
Current Store : [0x800006c4] : sd s1, 232(tp) -- Store: [0x800032f8]:0x06F7050EFB400F0F




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x22', 'rs2_val == -562949953421313', 'rs1_b7_val == 0', 'rs1_b6_val == 16', 'rs1_b5_val == 64']
Last Code Sequence : 
	-[0x800006ec]:KSLRA8_U s6, t4, a0
	-[0x800006f0]:sd s6, 240(tp)
Current Store : [0x800006f4] : sd t4, 248(tp) -- Store: [0x80003308]:0x00104040FB03DF05




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x20', 'rs2_val == -281474976710657', 'rs1_b5_val == 32', 'rs1_b4_val == 223', 'rs1_b3_val == 128', 'rs1_b0_val == 253']
Last Code Sequence : 
	-[0x8000071c]:KSLRA8_U s4, t5, fp
	-[0x80000720]:sd s4, 256(tp)
Current Store : [0x80000724] : sd t5, 264(tp) -- Store: [0x80003318]:0x090A20DF800610FD




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x30', 'rs2_val == -140737488355329', 'rs1_b7_val == 223', 'rs1_b2_val == 251', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000754]:KSLRA8_U t5, a0, t0
	-[0x80000758]:sd t5, 272(tp)
Current Store : [0x8000075c] : sd a0, 280(tp) -- Store: [0x80003328]:0xDF1103FF06FB557F




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x17', 'rs2_val == -70368744177665', 'rs1_b4_val == 251']
Last Code Sequence : 
	-[0x8000078c]:KSLRA8_U a7, a6, sp
	-[0x80000790]:sd a7, 288(tp)
Current Store : [0x80000794] : sd a6, 296(tp) -- Store: [0x80003338]:0x7FFEF7FBFF0F0D0D




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x19', 'rs2_val == -35184372088833', 'rs1_b2_val == 1', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800007cc]:KSLRA8_U s3, tp, s5
	-[0x800007d0]:sd s3, 0(gp)
Current Store : [0x800007d4] : sd tp, 8(gp) -- Store: [0x80003348]:0x12130C0D20010255




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x23', 'rs2_val == -17592186044417', 'rs1_b7_val == 128', 'rs1_b5_val == 128', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x800007fc]:KSLRA8_U s7, a4, tp
	-[0x80000800]:sd s7, 16(gp)
Current Store : [0x80000804] : sd a4, 24(gp) -- Store: [0x80003358]:0x8006800A0D040600




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x5', 'rs2_val == -8796093022209', 'rs1_b6_val == 64', 'rs1_b5_val == 16', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x8000082c]:KSLRA8_U t0, fp, s3
	-[0x80000830]:sd t0, 32(gp)
Current Store : [0x80000834] : sd fp, 40(gp) -- Store: [0x80003368]:0x034010130B08010B




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x15', 'rs2_val == -4398046511105', 'rs1_b7_val == 4', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x8000085c]:KSLRA8_U a5, t1, s6
	-[0x80000860]:sd a5, 48(gp)
Current Store : [0x80000864] : sd t1, 56(gp) -- Store: [0x80003378]:0x040820400E0502DF




Last Coverpoint : ['rs1 : x28', 'rs2 : x17', 'rd : x1', 'rs2_val == -2199023255553', 'rs1_b7_val == 251', 'rs1_b5_val == 191', 'rs1_b4_val == 127', 'rs1_b3_val == 16', 'rs1_b1_val == 128']
Last Code Sequence : 
	-[0x8000088c]:KSLRA8_U ra, t3, a7
	-[0x80000890]:sd ra, 64(gp)
Current Store : [0x80000894] : sd t3, 72(gp) -- Store: [0x80003388]:0xFB04BF7F10EF800D




Last Coverpoint : ['rs1 : x22', 'rs2 : x1', 'rd : x25', 'rs2_val == -1099511627777', 'rs1_b7_val == 8', 'rs1_b6_val == 128']
Last Code Sequence : 
	-[0x800008c4]:KSLRA8_U s9, s6, ra
	-[0x800008c8]:sd s9, 80(gp)
Current Store : [0x800008cc] : sd s6, 88(gp) -- Store: [0x80003398]:0x08800F0E13031103




Last Coverpoint : ['rs1 : x31', 'rs2 : x6', 'rd : x2', 'rs2_val == -549755813889', 'rs1_b4_val == 191', 'rs1_b3_val == 127']
Last Code Sequence : 
	-[0x800008fc]:KSLRA8_U sp, t6, t1
	-[0x80000900]:sd sp, 96(gp)
Current Store : [0x80000904] : sd t6, 104(gp) -- Store: [0x800033a8]:0x090920BF7F0E0C0C




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x18', 'rs2_val == -274877906945', 'rs1_b5_val == 170', 'rs1_b3_val == 253', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x8000092c]:KSLRA8_U s2, s7, a6
	-[0x80000930]:sd s2, 112(gp)
Current Store : [0x80000934] : sd s7, 120(gp) -- Store: [0x800033b8]:0xFD40AA40FD0507F7




Last Coverpoint : ['rs1 : x19', 'rs2 : x31', 'rd : x9', 'rs2_val == -137438953473', 'rs1_b5_val == 239', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x8000095c]:KSLRA8_U s1, s3, t6
	-[0x80000960]:sd s1, 128(gp)
Current Store : [0x80000964] : sd s3, 136(gp) -- Store: [0x800033c8]:0x0D80EF12040E0155




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x13', 'rs2_val == -68719476737', 'rs1_b6_val == 0', 'rs1_b5_val == 0', 'rs1_b4_val == 0', 'rs1_b2_val == 0']
Last Code Sequence : 
	-[0x80000994]:KSLRA8_U a3, zero, s9
	-[0x80000998]:sd a3, 144(gp)
Current Store : [0x8000099c] : sd zero, 152(gp) -- Store: [0x800033d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x28', 'rd : x31', 'rs2_val == -34359738369', 'rs1_b6_val == 1', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x800009c4]:KSLRA8_U t6, s4, t3
	-[0x800009c8]:sd t6, 160(gp)
Current Store : [0x800009cc] : sd s4, 168(gp) -- Store: [0x800033e8]:0x0B01BFFD7F0B7F80




Last Coverpoint : ['rs1 : x2', 'rs2 : x15', 'rd : x26', 'rs2_val == -17179869185', 'rs1_b3_val == 191', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800009fc]:KSLRA8_U s10, sp, a5
	-[0x80000a00]:sd s10, 176(gp)
Current Store : [0x80000a04] : sd sp, 184(gp) -- Store: [0x800033f8]:0xFD0D000EBF095540




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x4', 'rs2_val == -8589934593', 'rs1_b6_val == 2', 'rs1_b2_val == 223']
Last Code Sequence : 
	-[0x80000a2c]:KSLRA8_U tp, a5, s10
	-[0x80000a30]:sd tp, 192(gp)
Current Store : [0x80000a34] : sd a5, 200(gp) -- Store: [0x80003408]:0x0802400CFDDF0206




Last Coverpoint : ['rs2_val == -4294967297', 'rs1_b7_val == 64', 'rs1_b5_val == 254']
Last Code Sequence : 
	-[0x80000a5c]:KSLRA8_U t6, t5, t4
	-[0x80000a60]:sd t6, 208(gp)
Current Store : [0x80000a64] : sd t5, 216(gp) -- Store: [0x80003418]:0x4012FE110455000F




Last Coverpoint : ['rs2_val == -2147483649', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x80000a94]:KSLRA8_U t6, t5, t4
	-[0x80000a98]:sd t6, 224(gp)
Current Store : [0x80000a9c] : sd t5, 232(gp) -- Store: [0x80003428]:0x550505000C0355FE




Last Coverpoint : ['rs2_val == -1073741825', 'rs1_b4_val == 254', 'rs1_b2_val == 191']
Last Code Sequence : 
	-[0x80000ac0]:KSLRA8_U t6, t5, t4
	-[0x80000ac4]:sd t6, 240(gp)
Current Store : [0x80000ac8] : sd t5, 248(gp) -- Store: [0x80003438]:0x8003FEFEFBBF0509




Last Coverpoint : ['rs2_val == -536870913', 'rs1_b6_val == 239', 'rs1_b3_val == 1', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000aec]:KSLRA8_U t6, t5, t4
	-[0x80000af0]:sd t6, 256(gp)
Current Store : [0x80000af4] : sd t5, 264(gp) -- Store: [0x80003448]:0xFFEF0ABF010D1008




Last Coverpoint : ['rs2_val == -268435457']
Last Code Sequence : 
	-[0x80000b18]:KSLRA8_U t6, t5, t4
	-[0x80000b1c]:sd t6, 272(gp)
Current Store : [0x80000b20] : sd t5, 280(gp) -- Store: [0x80003458]:0x07FBEF060E077FFD




Last Coverpoint : ['rs2_val == -134217729', 'rs1_b4_val == 170']
Last Code Sequence : 
	-[0x80000b4c]:KSLRA8_U t6, t5, t4
	-[0x80000b50]:sd t6, 288(gp)
Current Store : [0x80000b54] : sd t5, 296(gp) -- Store: [0x80003468]:0x11110EAAFF085512




Last Coverpoint : ['rs2_val == -67108865', 'rs1_b7_val == 191', 'rs1_b5_val == 223']
Last Code Sequence : 
	-[0x80000b80]:KSLRA8_U t6, t5, t4
	-[0x80000b84]:sd t6, 304(gp)
Current Store : [0x80000b88] : sd t5, 312(gp) -- Store: [0x80003478]:0xBF40DF08FDFB1102




Last Coverpoint : ['rs2_val == -33554433']
Last Code Sequence : 
	-[0x80000bb4]:KSLRA8_U t6, t5, t4
	-[0x80000bb8]:sd t6, 320(gp)
Current Store : [0x80000bbc] : sd t5, 328(gp) -- Store: [0x80003488]:0x0912BF550100DFDF




Last Coverpoint : ['rs2_val == -16777217', 'rs1_b6_val == 191', 'rs1_b1_val == 239']
Last Code Sequence : 
	-[0x80000be8]:KSLRA8_U t6, t5, t4
	-[0x80000bec]:sd t6, 336(gp)
Current Store : [0x80000bf0] : sd t5, 344(gp) -- Store: [0x80003498]:0x11BF05090713EF7F




Last Coverpoint : ['rs2_val == -8388609', 'rs1_b7_val == 2']
Last Code Sequence : 
	-[0x80000c1c]:KSLRA8_U t6, t5, t4
	-[0x80000c20]:sd t6, 352(gp)
Current Store : [0x80000c24] : sd t5, 360(gp) -- Store: [0x800034a8]:0x0207F7DF7F070907




Last Coverpoint : ['rs1_b1_val == 251']
Last Code Sequence : 
	-[0x80000c44]:KSLRA8_U t6, t5, t4
	-[0x80000c48]:sd t6, 368(gp)
Current Store : [0x80000c4c] : sd t5, 376(gp) -- Store: [0x800034b8]:0x03020508FF13FB00




Last Coverpoint : ['rs2_val == 18014398509481984', 'rs1_b6_val == 223', 'rs1_b1_val == 253']
Last Code Sequence : 
	-[0x80000c70]:KSLRA8_U t6, t5, t4
	-[0x80000c74]:sd t6, 384(gp)
Current Store : [0x80000c78] : sd t5, 392(gp) -- Store: [0x800034c8]:0x0FDF05FD030AFD40




Last Coverpoint : ['rs1_b1_val == 254']
Last Code Sequence : 
	-[0x80000ca8]:KSLRA8_U t6, t5, t4
	-[0x80000cac]:sd t6, 400(gp)
Current Store : [0x80000cb0] : sd t5, 408(gp) -- Store: [0x800034d8]:0x400FF7BF120AFE06




Last Coverpoint : ['rs2_val == 4194304', 'rs1_b7_val == 1', 'rs1_b4_val == 2', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000cd0]:KSLRA8_U t6, t5, t4
	-[0x80000cd4]:sd t6, 416(gp)
Current Store : [0x80000cd8] : sd t5, 424(gp) -- Store: [0x800034e8]:0x010D1202BF0C2013




Last Coverpoint : ['rs2_val == -2049', 'rs1_b2_val == 127', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x80000d04]:KSLRA8_U t6, t5, t4
	-[0x80000d08]:sd t6, 432(gp)
Current Store : [0x80000d0c] : sd t5, 440(gp) -- Store: [0x800034f8]:0x0840130C137F047F




Last Coverpoint : ['rs1_b0_val == 170', 'rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000d50]:KSLRA8_U t6, t5, t4
	-[0x80000d54]:sd t6, 448(gp)
Current Store : [0x80000d58] : sd t5, 456(gp) -- Store: [0x80003508]:0x0906080005000CAA




Last Coverpoint : ['rs1_b0_val == 239']
Last Code Sequence : 
	-[0x80000d88]:KSLRA8_U t6, t5, t4
	-[0x80000d8c]:sd t6, 464(gp)
Current Store : [0x80000d90] : sd t5, 472(gp) -- Store: [0x80003518]:0x0FF7DF20070EEFEF




Last Coverpoint : ['rs2_val == 2199023255552', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x80000dbc]:KSLRA8_U t6, t5, t4
	-[0x80000dc0]:sd t6, 480(gp)
Current Store : [0x80000dc4] : sd t5, 488(gp) -- Store: [0x80003528]:0x400C080B032009FB




Last Coverpoint : ['rs1_b3_val == 64', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000dec]:KSLRA8_U t6, t5, t4
	-[0x80000df0]:sd t6, 496(gp)
Current Store : [0x80000df4] : sd t5, 504(gp) -- Store: [0x80003538]:0x050DDF404020FD10




Last Coverpoint : ['rs2_val == -4194305']
Last Code Sequence : 
	-[0x80000e18]:KSLRA8_U t6, t5, t4
	-[0x80000e1c]:sd t6, 512(gp)
Current Store : [0x80000e20] : sd t5, 520(gp) -- Store: [0x80003548]:0x0E1204FE070101BF




Last Coverpoint : ['rs2_val == -2097153']
Last Code Sequence : 
	-[0x80000e4c]:KSLRA8_U t6, t5, t4
	-[0x80000e50]:sd t6, 528(gp)
Current Store : [0x80000e54] : sd t5, 536(gp) -- Store: [0x80003558]:0x01050611090C1312




Last Coverpoint : ['rs2_val == -1048577']
Last Code Sequence : 
	-[0x80000e78]:KSLRA8_U t6, t5, t4
	-[0x80000e7c]:sd t6, 544(gp)
Current Store : [0x80000e80] : sd t5, 552(gp) -- Store: [0x80003568]:0x03550208FFDF550F




Last Coverpoint : ['rs2_val == -524289']
Last Code Sequence : 
	-[0x80000eac]:KSLRA8_U t6, t5, t4
	-[0x80000eb0]:sd t6, 560(gp)
Current Store : [0x80000eb4] : sd t5, 568(gp) -- Store: [0x80003578]:0x11FD12EF0B090D07




Last Coverpoint : ['rs2_val == -262145', 'rs1_b7_val == 254']
Last Code Sequence : 
	-[0x80000ed8]:KSLRA8_U t6, t5, t4
	-[0x80000edc]:sd t6, 576(gp)
Current Store : [0x80000ee0] : sd t5, 584(gp) -- Store: [0x80003588]:0xFEFF007F0411EF0A




Last Coverpoint : ['rs2_val == -131073', 'rs1_b6_val == 170']
Last Code Sequence : 
	-[0x80000f0c]:KSLRA8_U t6, t5, t4
	-[0x80000f10]:sd t6, 592(gp)
Current Store : [0x80000f14] : sd t5, 600(gp) -- Store: [0x80003598]:0x0EAA110B070D09F7




Last Coverpoint : ['rs2_val == -65537', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000f38]:KSLRA8_U t6, t5, t4
	-[0x80000f3c]:sd t6, 608(gp)
Current Store : [0x80000f40] : sd t5, 616(gp) -- Store: [0x800035a8]:0xFF0F030600090B01




Last Coverpoint : ['rs2_val == -32769']
Last Code Sequence : 
	-[0x80000f64]:KSLRA8_U t6, t5, t4
	-[0x80000f68]:sd t6, 624(gp)
Current Store : [0x80000f6c] : sd t5, 632(gp) -- Store: [0x800035b8]:0x0706FEFB00080605




Last Coverpoint : ['rs2_val == -16385']
Last Code Sequence : 
	-[0x80000f98]:KSLRA8_U t6, t5, t4
	-[0x80000f9c]:sd t6, 640(gp)
Current Store : [0x80000fa0] : sd t5, 648(gp) -- Store: [0x800035c8]:0x13090B7FFE7FF7EF




Last Coverpoint : ['rs2_val == -8193', 'rs1_b2_val == 247']
Last Code Sequence : 
	-[0x80000fc4]:KSLRA8_U t6, t5, t4
	-[0x80000fc8]:sd t6, 656(gp)
Current Store : [0x80000fcc] : sd t5, 664(gp) -- Store: [0x800035d8]:0xFF0D03DF80F70701




Last Coverpoint : ['rs2_val == -4097']
Last Code Sequence : 
	-[0x80000ff0]:KSLRA8_U t6, t5, t4
	-[0x80000ff4]:sd t6, 672(gp)
Current Store : [0x80000ff8] : sd t5, 680(gp) -- Store: [0x800035e8]:0x0A0AFF04FB0BFDF7




Last Coverpoint : ['rs2_val == -1025', 'rs1_b3_val == 170']
Last Code Sequence : 
	-[0x80001020]:KSLRA8_U t6, t5, t4
	-[0x80001024]:sd t6, 688(gp)
Current Store : [0x80001028] : sd t5, 696(gp) -- Store: [0x800035f8]:0x55AA1104AAFBFD10




Last Coverpoint : ['rs2_val == -513', 'rs1_b2_val == 170']
Last Code Sequence : 
	-[0x80001048]:KSLRA8_U t6, t5, t4
	-[0x8000104c]:sd t6, 704(gp)
Current Store : [0x80001050] : sd t5, 712(gp) -- Store: [0x80003608]:0x08400109FBAA00AA




Last Coverpoint : ['rs2_val == -257']
Last Code Sequence : 
	-[0x80001070]:KSLRA8_U t6, t5, t4
	-[0x80001074]:sd t6, 720(gp)
Current Store : [0x80001078] : sd t5, 728(gp) -- Store: [0x80003618]:0xF70E0D0A0706FBF7




Last Coverpoint : ['rs2_val == -129']
Last Code Sequence : 
	-[0x80001098]:KSLRA8_U t6, t5, t4
	-[0x8000109c]:sd t6, 736(gp)
Current Store : [0x800010a0] : sd t5, 744(gp) -- Store: [0x80003628]:0x02FD05080E09070D




Last Coverpoint : ['rs2_val == -65']
Last Code Sequence : 
	-[0x800010c0]:KSLRA8_U t6, t5, t4
	-[0x800010c4]:sd t6, 752(gp)
Current Store : [0x800010c8] : sd t5, 760(gp) -- Store: [0x80003638]:0x40000A1212080213




Last Coverpoint : ['rs2_val == -33']
Last Code Sequence : 
	-[0x800010e8]:KSLRA8_U t6, t5, t4
	-[0x800010ec]:sd t6, 768(gp)
Current Store : [0x800010f0] : sd t5, 776(gp) -- Store: [0x80003648]:0x80FD0603FB7FFD02




Last Coverpoint : ['rs2_val == -17', 'rs1_b7_val == 32', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80001118]:KSLRA8_U t6, t5, t4
	-[0x8000111c]:sd t6, 784(gp)
Current Store : [0x80001120] : sd t5, 792(gp) -- Store: [0x80003658]:0x20FE0D0F02060CFB




Last Coverpoint : ['rs2_val == -9', 'rs1_b1_val == 170']
Last Code Sequence : 
	-[0x80001140]:KSLRA8_U t6, t5, t4
	-[0x80001144]:sd t6, 800(gp)
Current Store : [0x80001148] : sd t5, 808(gp) -- Store: [0x80003668]:0x077F12080011AA02




Last Coverpoint : ['rs2_val == -5', 'rs1_b5_val == 253', 'rs1_b3_val == 239', 'rs1_b2_val == 2']
Last Code Sequence : 
	-[0x80001170]:KSLRA8_U t6, t5, t4
	-[0x80001174]:sd t6, 816(gp)
Current Store : [0x80001178] : sd t5, 824(gp) -- Store: [0x80003678]:0x55AAFD11EF02AADF




Last Coverpoint : ['rs2_val == -3', 'rs1_b5_val == 127']
Last Code Sequence : 
	-[0x80001198]:KSLRA8_U t6, t5, t4
	-[0x8000119c]:sd t6, 832(gp)
Current Store : [0x800011a0] : sd t5, 840(gp) -- Store: [0x80003688]:0x0CF77FBF0607FB0B




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x800011c4]:KSLRA8_U t6, t5, t4
	-[0x800011c8]:sd t6, 848(gp)
Current Store : [0x800011cc] : sd t5, 856(gp) -- Store: [0x80003698]:0xFBFE000A0C0F0B03




Last Coverpoint : ['rs2_val == -9223372036854775808']
Last Code Sequence : 
	-[0x800011f0]:KSLRA8_U t6, t5, t4
	-[0x800011f4]:sd t6, 864(gp)
Current Store : [0x800011f8] : sd t5, 872(gp) -- Store: [0x800036a8]:0x200EFE5500EF2055




Last Coverpoint : ['rs2_val == 4611686018427387904']
Last Code Sequence : 
	-[0x8000121c]:KSLRA8_U t6, t5, t4
	-[0x80001220]:sd t6, 880(gp)
Current Store : [0x80001224] : sd t5, 888(gp) -- Store: [0x800036b8]:0x000BF703000208F7




Last Coverpoint : ['rs2_val == 2305843009213693952']
Last Code Sequence : 
	-[0x8000124c]:KSLRA8_U t6, t5, t4
	-[0x80001250]:sd t6, 896(gp)
Current Store : [0x80001254] : sd t5, 904(gp) -- Store: [0x800036c8]:0x02F7FFFE06135504




Last Coverpoint : ['rs2_val == 1152921504606846976', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x80001280]:KSLRA8_U t6, t5, t4
	-[0x80001284]:sd t6, 912(gp)
Current Store : [0x80001288] : sd t5, 920(gp) -- Store: [0x800036d8]:0x02AA0B400F101201




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x800012b4]:KSLRA8_U t6, t5, t4
	-[0x800012b8]:sd t6, 928(gp)
Current Store : [0x800012bc] : sd t5, 936(gp) -- Store: [0x800036e8]:0x13400A060FFF04FF




Last Coverpoint : ['rs2_val == 288230376151711744', 'rs1_b3_val == 223']
Last Code Sequence : 
	-[0x800012e0]:KSLRA8_U t6, t5, t4
	-[0x800012e4]:sd t6, 944(gp)
Current Store : [0x800012e8] : sd t5, 952(gp) -- Store: [0x800036f8]:0x027F0A0CDF0AFE01




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x80001314]:KSLRA8_U t6, t5, t4
	-[0x80001318]:sd t6, 960(gp)
Current Store : [0x8000131c] : sd t5, 968(gp) -- Store: [0x80003708]:0x7F20110C0E101308




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x8000133c]:KSLRA8_U t6, t5, t4
	-[0x80001340]:sd t6, 976(gp)
Current Store : [0x80001344] : sd t5, 984(gp) -- Store: [0x80003718]:0xFB064009100CFD0C




Last Coverpoint : ['rs2_val == 524288', 'rs1_b7_val == 239']
Last Code Sequence : 
	-[0x80001364]:KSLRA8_U t6, t5, t4
	-[0x80001368]:sd t6, 992(gp)
Current Store : [0x8000136c] : sd t5, 1000(gp) -- Store: [0x80003728]:0xEF0D0C0404200206




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x8000138c]:KSLRA8_U t6, t5, t4
	-[0x80001390]:sd t6, 1008(gp)
Current Store : [0x80001394] : sd t5, 1016(gp) -- Store: [0x80003738]:0xF7070E0F7F12FB01




Last Coverpoint : ['rs1_b7_val == 16']
Last Code Sequence : 
	-[0x800013c4]:KSLRA8_U t6, t5, t4
	-[0x800013c8]:sd t6, 1024(gp)
Current Store : [0x800013cc] : sd t5, 1032(gp) -- Store: [0x80003748]:0x10EF0EFE02400DFF




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -5', 'rs1_b6_val == 251', 'rs1_b5_val == 85', 'rs1_b4_val == 239', 'rs1_b3_val == 127', 'rs1_b2_val == 128']
Last Code Sequence : 
	-[0x800013ec]:KSLRA8_U t6, t5, t4
	-[0x800013f0]:sd t6, 1040(gp)
Current Store : [0x800013f4] : sd t5, 1048(gp) -- Store: [0x80003758]:0x13FB55EF7F800D11




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x8000141c]:KSLRA8_U t6, t5, t4
	-[0x80001420]:sd t6, 1056(gp)
Current Store : [0x80001424] : sd t5, 1064(gp) -- Store: [0x80003768]:0x12AA02060FFBF7FE




Last Coverpoint : ['rs1_b4_val == 247']
Last Code Sequence : 
	-[0x8000144c]:KSLRA8_U t6, t5, t4
	-[0x80001450]:sd t6, 1072(gp)
Current Store : [0x80001454] : sd t5, 1080(gp) -- Store: [0x80003778]:0x0A0905F77F040455




Last Coverpoint : ['rs1_b4_val == 128']
Last Code Sequence : 
	-[0x80001484]:KSLRA8_U t6, t5, t4
	-[0x80001488]:sd t6, 1088(gp)
Current Store : [0x8000148c] : sd t5, 1096(gp) -- Store: [0x80003788]:0x0A8004800755EFF7




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x800014b0]:KSLRA8_U t6, t5, t4
	-[0x800014b4]:sd t6, 1104(gp)
Current Store : [0x800014b8] : sd t5, 1112(gp) -- Store: [0x80003798]:0x55FB020F0004100B




Last Coverpoint : ['rs2_val == 36028797018963968', 'rs1_b3_val == 8', 'rs1_b2_val == 254']
Last Code Sequence : 
	-[0x800014e4]:KSLRA8_U t6, t5, t4
	-[0x800014e8]:sd t6, 1120(gp)
Current Store : [0x800014ec] : sd t5, 1128(gp) -- Store: [0x800037a8]:0x040F0C0208FE0A04




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80001518]:KSLRA8_U t6, t5, t4
	-[0x8000151c]:sd t6, 1136(gp)
Current Store : [0x80001520] : sd t5, 1144(gp) -- Store: [0x800037b8]:0x8009FD0B800412FE




Last Coverpoint : ['rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x8000154c]:KSLRA8_U t6, t5, t4
	-[0x80001550]:sd t6, 1152(gp)
Current Store : [0x80001554] : sd t5, 1160(gp) -- Store: [0x800037c8]:0xEF0BFE02137F0511




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x80001580]:KSLRA8_U t6, t5, t4
	-[0x80001584]:sd t6, 1168(gp)
Current Store : [0x80001588] : sd t5, 1176(gp) -- Store: [0x800037d8]:0xBFF709EF0BF70909




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x800015ac]:KSLRA8_U t6, t5, t4
	-[0x800015b0]:sd t6, 1184(gp)
Current Store : [0x800015b4] : sd t5, 1192(gp) -- Store: [0x800037e8]:0x0E100DDF0004DF01




Last Coverpoint : ['rs2_val == 562949953421312']
Last Code Sequence : 
	-[0x800015d8]:KSLRA8_U t6, t5, t4
	-[0x800015dc]:sd t6, 1200(gp)
Current Store : [0x800015e0] : sd t5, 1208(gp) -- Store: [0x800037f8]:0x040D08070FAA0411




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x8000160c]:KSLRA8_U t6, t5, t4
	-[0x80001610]:sd t6, 1216(gp)
Current Store : [0x80001614] : sd t5, 1224(gp) -- Store: [0x80003808]:0x13080D08080102FF




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80001640]:KSLRA8_U t6, t5, t4
	-[0x80001644]:sd t6, 1232(gp)
Current Store : [0x80001648] : sd t5, 1240(gp) -- Store: [0x80003818]:0x0D00FFFB0B110AFD




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x80001674]:KSLRA8_U t6, t5, t4
	-[0x80001678]:sd t6, 1248(gp)
Current Store : [0x8000167c] : sd t5, 1256(gp) -- Store: [0x80003828]:0x130B4001F706FF08




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x800016a4]:KSLRA8_U t6, t5, t4
	-[0x800016a8]:sd t6, 1264(gp)
Current Store : [0x800016ac] : sd t5, 1272(gp) -- Store: [0x80003838]:0x0DF700FD55FB0F00




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x800016d8]:KSLRA8_U t6, t5, t4
	-[0x800016dc]:sd t6, 1280(gp)
Current Store : [0x800016e0] : sd t5, 1288(gp) -- Store: [0x80003848]:0x130004130E0B04FF




Last Coverpoint : ['rs2_val == 17592186044416']
Last Code Sequence : 
	-[0x80001704]:KSLRA8_U t6, t5, t4
	-[0x80001708]:sd t6, 1296(gp)
Current Store : [0x8000170c] : sd t5, 1304(gp) -- Store: [0x80003858]:0x0040FFDF80AA0A04




Last Coverpoint : ['rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x80001738]:KSLRA8_U t6, t5, t4
	-[0x8000173c]:sd t6, 1312(gp)
Current Store : [0x80001740] : sd t5, 1320(gp) -- Store: [0x80003868]:0x120608040EBFDF02




Last Coverpoint : ['rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x8000176c]:KSLRA8_U t6, t5, t4
	-[0x80001770]:sd t6, 1328(gp)
Current Store : [0x80001774] : sd t5, 1336(gp) -- Store: [0x80003878]:0x55DF090113100C12




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x80001798]:KSLRA8_U t6, t5, t4
	-[0x8000179c]:sd t6, 1344(gp)
Current Store : [0x800017a0] : sd t5, 1352(gp) -- Store: [0x80003888]:0x0C0B0003DFFB040A




Last Coverpoint : ['rs2_val == 549755813888']
Last Code Sequence : 
	-[0x800017c4]:KSLRA8_U t6, t5, t4
	-[0x800017c8]:sd t6, 1360(gp)
Current Store : [0x800017cc] : sd t5, 1368(gp) -- Store: [0x80003898]:0x11FBDF127F070603




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800017f0]:KSLRA8_U t6, t5, t4
	-[0x800017f4]:sd t6, 1376(gp)
Current Store : [0x800017f8] : sd t5, 1384(gp) -- Store: [0x800038a8]:0x0C55551010200412




Last Coverpoint : ['rs2_val == 137438953472']
Last Code Sequence : 
	-[0x80001824]:KSLRA8_U t6, t5, t4
	-[0x80001828]:sd t6, 1392(gp)
Current Store : [0x8000182c] : sd t5, 1400(gp) -- Store: [0x800038b8]:0x02FB1107DF080802




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x80001858]:KSLRA8_U t6, t5, t4
	-[0x8000185c]:sd t6, 1408(gp)
Current Store : [0x80001860] : sd t5, 1416(gp) -- Store: [0x800038c8]:0x0A0DEF0713DF10DF




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x8000188c]:KSLRA8_U t6, t5, t4
	-[0x80001890]:sd t6, 1424(gp)
Current Store : [0x80001894] : sd t5, 1432(gp) -- Store: [0x800038d8]:0xF77F040C080902AA




Last Coverpoint : ['rs2_val == 17179869184']
Last Code Sequence : 
	-[0x800018b8]:KSLRA8_U t6, t5, t4
	-[0x800018bc]:sd t6, 1440(gp)
Current Store : [0x800018c0] : sd t5, 1448(gp) -- Store: [0x800038e8]:0x011355FF08800013




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800018ec]:KSLRA8_U t6, t5, t4
	-[0x800018f0]:sd t6, 1456(gp)
Current Store : [0x800018f4] : sd t5, 1464(gp) -- Store: [0x800038f8]:0x0E001306FBAA0A0A




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x80001920]:KSLRA8_U t6, t5, t4
	-[0x80001924]:sd t6, 1472(gp)
Current Store : [0x80001928] : sd t5, 1480(gp) -- Store: [0x80003908]:0x040813FF02550F11




Last Coverpoint : ['rs2_val == 2147483648']
Last Code Sequence : 
	-[0x8000194c]:KSLRA8_U t6, t5, t4
	-[0x80001950]:sd t6, 1488(gp)
Current Store : [0x80001954] : sd t5, 1496(gp) -- Store: [0x80003918]:0xFF0612AA12090720




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80001974]:KSLRA8_U t6, t5, t4
	-[0x80001978]:sd t6, 1504(gp)
Current Store : [0x8000197c] : sd t5, 1512(gp) -- Store: [0x80003928]:0xEF13FBFFFF0DFF11




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x8000199c]:KSLRA8_U t6, t5, t4
	-[0x800019a0]:sd t6, 1520(gp)
Current Store : [0x800019a4] : sd t5, 1528(gp) -- Store: [0x80003938]:0x03AA0D0A0206050A




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x800019c4]:KSLRA8_U t6, t5, t4
	-[0x800019c8]:sd t6, 1536(gp)
Current Store : [0x800019cc] : sd t5, 1544(gp) -- Store: [0x80003948]:0xFB0F000940101011




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x800019f4]:KSLRA8_U t6, t5, t4
	-[0x800019f8]:sd t6, 1552(gp)
Current Store : [0x800019fc] : sd t5, 1560(gp) -- Store: [0x80003958]:0xEFFFFEDF03AAAA55




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x80001a24]:KSLRA8_U t6, t5, t4
	-[0x80001a28]:sd t6, 1568(gp)
Current Store : [0x80001a2c] : sd t5, 1576(gp) -- Store: [0x80003968]:0x100B000501FB0901




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x80001a54]:KSLRA8_U t6, t5, t4
	-[0x80001a58]:sd t6, 1584(gp)
Current Store : [0x80001a5c] : sd t5, 1592(gp) -- Store: [0x80003978]:0xEFFBFB08AA400801




Last Coverpoint : ['rs2_val == 8388608', 'rs1_b7_val == 170']
Last Code Sequence : 
	-[0x80001a7c]:KSLRA8_U t6, t5, t4
	-[0x80001a80]:sd t6, 1600(gp)
Current Store : [0x80001a84] : sd t5, 1608(gp) -- Store: [0x80003988]:0xAA0AFB8000030012




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80001aa4]:KSLRA8_U t6, t5, t4
	-[0x80001aa8]:sd t6, 1616(gp)
Current Store : [0x80001aac] : sd t5, 1624(gp) -- Store: [0x80003998]:0xF755AA07F7020455




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x80001ad4]:KSLRA8_U t6, t5, t4
	-[0x80001ad8]:sd t6, 1632(gp)
Current Store : [0x80001adc] : sd t5, 1640(gp) -- Store: [0x800039a8]:0x07027F0202BF20EF




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80001afc]:KSLRA8_U t6, t5, t4
	-[0x80001b00]:sd t6, 1648(gp)
Current Store : [0x80001b04] : sd t5, 1656(gp) -- Store: [0x800039b8]:0x07FF067F12070711




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x80001b24]:KSLRA8_U t6, t5, t4
	-[0x80001b28]:sd t6, 1664(gp)
Current Store : [0x80001b2c] : sd t5, 1672(gp) -- Store: [0x800039c8]:0x110D0B0A00AA00EF




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x80001b4c]:KSLRA8_U t6, t5, t4
	-[0x80001b50]:sd t6, 1680(gp)
Current Store : [0x80001b54] : sd t5, 1688(gp) -- Store: [0x800039d8]:0x0A0EFB1313040680




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x80001b7c]:KSLRA8_U t6, t5, t4
	-[0x80001b80]:sd t6, 1696(gp)
Current Store : [0x80001b84] : sd t5, 1704(gp) -- Store: [0x800039e8]:0xEFF7100DDFBF0703




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80001bac]:KSLRA8_U t6, t5, t4
	-[0x80001bb0]:sd t6, 1712(gp)
Current Store : [0x80001bb4] : sd t5, 1720(gp) -- Store: [0x800039f8]:0x13401006DF0A0B20




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80001bd4]:KSLRA8_U t6, t5, t4
	-[0x80001bd8]:sd t6, 1728(gp)
Current Store : [0x80001bdc] : sd t5, 1736(gp) -- Store: [0x80003a08]:0xFF120A0004AA00FF




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x80001bfc]:KSLRA8_U t6, t5, t4
	-[0x80001c00]:sd t6, 1744(gp)
Current Store : [0x80001c04] : sd t5, 1752(gp) -- Store: [0x80003a18]:0xFD1308AAFB100104




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80001c30]:KSLRA8_U t6, t5, t4
	-[0x80001c34]:sd t6, 1760(gp)
Current Store : [0x80001c38] : sd t5, 1768(gp) -- Store: [0x80003a28]:0x200CFB0D00BF0F0D




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80001c58]:KSLRA8_U t6, t5, t4
	-[0x80001c5c]:sd t6, 1776(gp)
Current Store : [0x80001c60] : sd t5, 1784(gp) -- Store: [0x80003a38]:0x08FE057F11FE0302




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x80001c88]:KSLRA8_U t6, t5, t4
	-[0x80001c8c]:sd t6, 1792(gp)
Current Store : [0x80001c90] : sd t5, 1800(gp) -- Store: [0x80003a48]:0x0B05120AEF070406




Last Coverpoint : ['rs2_val == 128', 'rs1_b1_val == 191']
Last Code Sequence : 
	-[0x80001cb8]:KSLRA8_U t6, t5, t4
	-[0x80001cbc]:sd t6, 1808(gp)
Current Store : [0x80001cc0] : sd t5, 1816(gp) -- Store: [0x80003a58]:0x0E04040DEF06BF03




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80001ce0]:KSLRA8_U t6, t5, t4
	-[0x80001ce4]:sd t6, 1824(gp)
Current Store : [0x80001ce8] : sd t5, 1832(gp) -- Store: [0x80003a68]:0x550F0003FE40FF40




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80001d10]:KSLRA8_U t6, t5, t4
	-[0x80001d14]:sd t6, 1840(gp)
Current Store : [0x80001d18] : sd t5, 1848(gp) -- Store: [0x80003a78]:0x40BF10FDBF09FF09




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001d40]:KSLRA8_U t6, t5, t4
	-[0x80001d44]:sd t6, 1856(gp)
Current Store : [0x80001d48] : sd t5, 1864(gp) -- Store: [0x80003a88]:0xDF11DF10400CFD06




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001d70]:KSLRA8_U t6, t5, t4
	-[0x80001d74]:sd t6, 1872(gp)
Current Store : [0x80001d78] : sd t5, 1880(gp) -- Store: [0x80003a98]:0x0D0B7F5510070100




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80001da0]:KSLRA8_U t6, t5, t4
	-[0x80001da4]:sd t6, 1888(gp)
Current Store : [0x80001da8] : sd t5, 1896(gp) -- Store: [0x80003aa8]:0x12FF8080FEBF0909




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_b7_val == 251', 'rs1_b5_val == 2', 'rs1_b3_val == 32', 'rs1_b2_val == 170', 'rs1_b1_val == 239', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x80001dec]:KSLRA8_U t6, t5, t4
	-[0x80001df0]:sd t6, 1904(gp)
Current Store : [0x80001df4] : sd t5, 1912(gp) -- Store: [0x80003ab8]:0xFB0A020920AAEFFE




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 9223372036854775807', 'rs1_b4_val == 85', 'rs1_b1_val == 255', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80001e1c]:KSLRA8_U t6, t5, t4
	-[0x80001e20]:sd t6, 1920(gp)
Current Store : [0x80001e24] : sd t5, 1928(gp) -- Store: [0x80003ac8]:0x070F0F550E09FF01




Last Coverpoint : ['rs2_val == -4611686018427387905']
Last Code Sequence : 
	-[0x80001e54]:KSLRA8_U t6, t5, t4
	-[0x80001e58]:sd t6, 1936(gp)
Current Store : [0x80001e5c] : sd t5, 1944(gp) -- Store: [0x80003ad8]:0x0D55F704030F0880




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1125899906842625', 'rs1_b6_val == 247', 'rs1_b3_val == 251', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x80001e8c]:KSLRA8_U t6, t5, t4
	-[0x80001e90]:sd t6, 1952(gp)
Current Store : [0x80001e94] : sd t5, 1960(gp) -- Store: [0x80003ae8]:0x06F7050EFB400F0F





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

|s.no|            signature             |                                                                                                                                                        coverpoints                                                                                                                                                        |                                  code                                   |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7F7F7F7F7F7F7F7F|- opcode : kslra8.u<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_b7_val == 85<br> - rs1_b6_val == 85<br> - rs1_b5_val == 85<br> - rs1_b4_val == 85<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b1_val == 85<br> - rs1_b0_val == 85<br> |[0x800003e4]:KSLRA8_U t3, s8, s8<br> [0x800003e8]:sd t3, 0(tp)<br>       |
|   2|[0x80003220]<br>0x4000000000000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_b7_val == 127<br> - rs1_b6_val == 255<br> - rs1_b5_val == 255<br> - rs1_b4_val == 255<br> - rs1_b3_val == 255<br> - rs1_b2_val == 255<br> - rs1_b1_val == 255<br> - rs1_b0_val == 255<br>                    |[0x80000414]:KSLRA8_U gp, gp, gp<br> [0x80000418]:sd gp, 16(tp)<br>      |
|   3|[0x80003230]<br>0x0D55F704030F0880|- rs1 : x1<br> - rs2 : x0<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b5_val == 247<br> - rs1_b4_val == 4<br> - rs1_b1_val == 8<br> - rs1_b0_val == 128<br>                                                                                                                                     |[0x80000444]:KSLRA8_U t4, ra, zero<br> [0x80000448]:sd t4, 32(tp)<br>    |
|   4|[0x80003240]<br>0x0040072008030700|- rs1 : x7<br> - rs2 : x13<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_b7_val == 255<br> - rs1_b6_val == 127<br> - rs1_b4_val == 64<br> - rs1_b0_val == 0<br>                                                                                                                     |[0x8000047c]:KSLRA8_U t2, t2, a3<br> [0x80000480]:sd t2, 48(tp)<br>      |
|   5|[0x80003250]<br>0x00020708FF040801|- rs1 : x26<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_b6_val == 4<br> - rs1_b4_val == 16<br> - rs1_b3_val == 254<br> - rs1_b2_val == 8<br> - rs1_b1_val == 16<br> - rs1_b0_val == 2<br>                                                                        |[0x800004ac]:KSLRA8_U a1, s10, a1<br> [0x800004b0]:sd a1, 64(tp)<br>     |
|   6|[0x80003260]<br>0x061002FF05FF00C0|- rs1 : x25<br> - rs2 : x7<br> - rd : x27<br> - rs2_val == -576460752303423489<br> - rs1_b6_val == 32<br> - rs1_b5_val == 4<br> - rs1_b4_val == 253<br> - rs1_b2_val == 253<br>                                                                                                                                            |[0x800004dc]:KSLRA8_U s11, s9, t2<br> [0x800004e0]:sd s11, 80(tp)<br>    |
|   7|[0x80003270]<br>0x00FE03FF10100707|- rs1 : x12<br> - rs2 : x9<br> - rd : x21<br> - rs2_val == -288230376151711745<br> - rs1_b6_val == 251<br> - rs1_b3_val == 32<br> - rs1_b2_val == 32<br>                                                                                                                                                                   |[0x8000050c]:KSLRA8_U s5, a2, s1<br> [0x80000510]:sd s5, 96(tp)<br>      |
|   8|[0x80003280]<br>0x2B100105FCC00610|- rs1 : x17<br> - rs2 : x27<br> - rd : x16<br> - rs2_val == -144115188075855873<br> - rs1_b5_val == 2<br> - rs1_b3_val == 247<br> - rs1_b2_val == 128<br> - rs1_b0_val == 32<br>                                                                                                                                           |[0x80000544]:KSLRA8_U a6, a7, s11<br> [0x80000548]:sd a6, 112(tp)<br>    |
|   9|[0x80003290]<br>0xFC030801050AF00A|- rs1 : x27<br> - rs2 : x18<br> - rd : x6<br> - rs2_val == -72057594037927937<br> - rs1_b7_val == 247<br> - rs1_b4_val == 1<br> - rs1_b1_val == 223<br>                                                                                                                                                                    |[0x8000057c]:KSLRA8_U t1, s11, s2<br> [0x80000580]:sd t1, 128(tp)<br>    |
|  10|[0x800032a0]<br>0x09FF0110050700E0|- rs1 : x21<br> - rs2 : x20<br> - rd : x12<br> - rs2_val == -36028797018963969<br> - rs1_b6_val == 253<br> - rs1_b5_val == 1<br> - rs1_b4_val == 32<br> - rs1_b1_val == 0<br> - rs1_b0_val == 191<br>                                                                                                                      |[0x800005b4]:KSLRA8_U a2, s5, s4<br> [0x800005b8]:sd a2, 144(tp)<br>     |
|  11|[0x800032b0]<br>0x050209040509030A|- rs1 : x13<br> - rs2 : x30<br> - rd : x14<br> - rs2_val == -18014398509481985<br> - rs1_b4_val == 8<br>                                                                                                                                                                                                                   |[0x800005e4]:KSLRA8_U a4, a3, t5<br> [0x800005e8]:sd a4, 160(tp)<br>     |
|  12|[0x800032c0]<br>0x0500042008042008|- rs1 : x11<br> - rs2 : x23<br> - rd : x8<br> - rs2_val == -9007199254740993<br> - rs1_b5_val == 8<br> - rs1_b1_val == 64<br>                                                                                                                                                                                              |[0x8000061c]:KSLRA8_U fp, a1, s7<br> [0x80000620]:sd fp, 176(tp)<br>     |
|  13|[0x800032d0]<br>0xFF04060506F8FC00|- rs1 : x18<br> - rs2 : x14<br> - rd : x10<br> - rs2_val == -4503599627370497<br> - rs1_b7_val == 253<br> - rs1_b6_val == 8<br> - rs1_b2_val == 239<br> - rs1_b1_val == 247<br>                                                                                                                                            |[0x80000654]:KSLRA8_U a0, s2, a4<br> [0x80000658]:sd a0, 192(tp)<br>     |
|  14|[0x800032e0]<br>0x40FFFEF800090A02|- rs1 : x5<br> - rs2 : x29<br> - rd : x24<br> - rs2_val == -2251799813685249<br> - rs1_b6_val == 254<br> - rs1_b5_val == 251<br> - rs1_b4_val == 239<br> - rs1_b3_val == 0<br> - rs1_b0_val == 4<br>                                                                                                                       |[0x80000684]:KSLRA8_U s8, t0, t4<br> [0x80000688]:sd s8, 208(tp)<br>     |
|  15|[0x800032f0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x0<br> - rs2_val == -1125899906842625<br> - rs1_b6_val == 247<br> - rs1_b3_val == 251<br> - rs1_b2_val == 64<br>                                                                                                                                                                     |[0x800006bc]:KSLRA8_U zero, s1, a2<br> [0x800006c0]:sd zero, 224(tp)<br> |
|  16|[0x80003300]<br>0x00082020FE02F003|- rs1 : x29<br> - rs2 : x10<br> - rd : x22<br> - rs2_val == -562949953421313<br> - rs1_b7_val == 0<br> - rs1_b6_val == 16<br> - rs1_b5_val == 64<br>                                                                                                                                                                       |[0x800006ec]:KSLRA8_U s6, t4, a0<br> [0x800006f0]:sd s6, 240(tp)<br>     |
|  17|[0x80003310]<br>0x050510F0C00308FF|- rs1 : x30<br> - rs2 : x8<br> - rd : x20<br> - rs2_val == -281474976710657<br> - rs1_b5_val == 32<br> - rs1_b4_val == 223<br> - rs1_b3_val == 128<br> - rs1_b0_val == 253<br>                                                                                                                                             |[0x8000071c]:KSLRA8_U s4, t5, fp<br> [0x80000720]:sd s4, 256(tp)<br>     |
|  18|[0x80003320]<br>0xF009020003FE2B40|- rs1 : x10<br> - rs2 : x5<br> - rd : x30<br> - rs2_val == -140737488355329<br> - rs1_b7_val == 223<br> - rs1_b2_val == 251<br> - rs1_b0_val == 127<br>                                                                                                                                                                    |[0x80000754]:KSLRA8_U t5, a0, t0<br> [0x80000758]:sd t5, 272(tp)<br>     |
|  19|[0x80003330]<br>0x40FFFCFE00080707|- rs1 : x16<br> - rs2 : x2<br> - rd : x17<br> - rs2_val == -70368744177665<br> - rs1_b4_val == 251<br>                                                                                                                                                                                                                     |[0x8000078c]:KSLRA8_U a7, a6, sp<br> [0x80000790]:sd a7, 288(tp)<br>     |
|  20|[0x80003340]<br>0x090A06071001012B|- rs1 : x4<br> - rs2 : x21<br> - rd : x19<br> - rs2_val == -35184372088833<br> - rs1_b2_val == 1<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                 |[0x800007cc]:KSLRA8_U s3, tp, s5<br> [0x800007d0]:sd s3, 0(gp)<br>       |
|  21|[0x80003350]<br>0xC003C00507020300|- rs1 : x14<br> - rs2 : x4<br> - rd : x23<br> - rs2_val == -17592186044417<br> - rs1_b7_val == 128<br> - rs1_b5_val == 128<br> - rs1_b2_val == 4<br>                                                                                                                                                                       |[0x800007fc]:KSLRA8_U s7, a4, tp<br> [0x80000800]:sd s7, 16(gp)<br>      |
|  22|[0x80003360]<br>0x0220080A06040106|- rs1 : x8<br> - rs2 : x19<br> - rd : x5<br> - rs2_val == -8796093022209<br> - rs1_b6_val == 64<br> - rs1_b5_val == 16<br> - rs1_b1_val == 1<br>                                                                                                                                                                           |[0x8000082c]:KSLRA8_U t0, fp, s3<br> [0x80000830]:sd t0, 32(gp)<br>      |
|  23|[0x80003370]<br>0x02041020070301F0|- rs1 : x6<br> - rs2 : x22<br> - rd : x15<br> - rs2_val == -4398046511105<br> - rs1_b7_val == 4<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                |[0x8000085c]:KSLRA8_U a5, t1, s6<br> [0x80000860]:sd a5, 48(gp)<br>      |
|  24|[0x80003380]<br>0xFE02E04008F8C007|- rs1 : x28<br> - rs2 : x17<br> - rd : x1<br> - rs2_val == -2199023255553<br> - rs1_b7_val == 251<br> - rs1_b5_val == 191<br> - rs1_b4_val == 127<br> - rs1_b3_val == 16<br> - rs1_b1_val == 128<br>                                                                                                                       |[0x8000088c]:KSLRA8_U ra, t3, a7<br> [0x80000890]:sd ra, 64(gp)<br>      |
|  25|[0x80003390]<br>0x04C008070A020902|- rs1 : x22<br> - rs2 : x1<br> - rd : x25<br> - rs2_val == -1099511627777<br> - rs1_b7_val == 8<br> - rs1_b6_val == 128<br>                                                                                                                                                                                                |[0x800008c4]:KSLRA8_U s9, s6, ra<br> [0x800008c8]:sd s9, 80(gp)<br>      |
|  26|[0x800033a0]<br>0x050510E040070606|- rs1 : x31<br> - rs2 : x6<br> - rd : x2<br> - rs2_val == -549755813889<br> - rs1_b4_val == 191<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                |[0x800008fc]:KSLRA8_U sp, t6, t1<br> [0x80000900]:sd sp, 96(gp)<br>      |
|  27|[0x800033b0]<br>0xFF20D520FF0304FC|- rs1 : x23<br> - rs2 : x16<br> - rd : x18<br> - rs2_val == -274877906945<br> - rs1_b5_val == 170<br> - rs1_b3_val == 253<br> - rs1_b0_val == 247<br>                                                                                                                                                                      |[0x8000092c]:KSLRA8_U s2, s7, a6<br> [0x80000930]:sd s2, 112(gp)<br>     |
|  28|[0x800033c0]<br>0x07C0F8090207012B|- rs1 : x19<br> - rs2 : x31<br> - rd : x9<br> - rs2_val == -137438953473<br> - rs1_b5_val == 239<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                 |[0x8000095c]:KSLRA8_U s1, s3, t6<br> [0x80000960]:sd s1, 128(gp)<br>     |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x13<br> - rs2_val == -68719476737<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b2_val == 0<br>                                                                                                                                                        |[0x80000994]:KSLRA8_U a3, zero, s9<br> [0x80000998]:sd a3, 144(gp)<br>   |
|  30|[0x800033e0]<br>0x0601E0FF400640C0|- rs1 : x20<br> - rs2 : x28<br> - rd : x31<br> - rs2_val == -34359738369<br> - rs1_b6_val == 1<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                 |[0x800009c4]:KSLRA8_U t6, s4, t3<br> [0x800009c8]:sd t6, 160(gp)<br>     |
|  31|[0x800033f0]<br>0xFF070007E0052B20|- rs1 : x2<br> - rs2 : x15<br> - rd : x26<br> - rs2_val == -17179869185<br> - rs1_b3_val == 191<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                 |[0x800009fc]:KSLRA8_U s10, sp, a5<br> [0x80000a00]:sd s10, 176(gp)<br>   |
|  32|[0x80003400]<br>0x04012006FFF00103|- rs1 : x15<br> - rs2 : x26<br> - rd : x4<br> - rs2_val == -8589934593<br> - rs1_b6_val == 2<br> - rs1_b2_val == 223<br>                                                                                                                                                                                                   |[0x80000a2c]:KSLRA8_U tp, a5, s10<br> [0x80000a30]:sd tp, 192(gp)<br>    |
|  33|[0x80003410]<br>0x2009FF09022B0008|- rs2_val == -4294967297<br> - rs1_b7_val == 64<br> - rs1_b5_val == 254<br>                                                                                                                                                                                                                                                |[0x80000a5c]:KSLRA8_U t6, t5, t4<br> [0x80000a60]:sd t6, 208(gp)<br>     |
|  34|[0x80003420]<br>0x2B03030006022BFF|- rs2_val == -2147483649<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                       |[0x80000a94]:KSLRA8_U t6, t5, t4<br> [0x80000a98]:sd t6, 224(gp)<br>     |
|  35|[0x80003430]<br>0xC002FFFFFEE00305|- rs2_val == -1073741825<br> - rs1_b4_val == 254<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                               |[0x80000ac0]:KSLRA8_U t6, t5, t4<br> [0x80000ac4]:sd t6, 240(gp)<br>     |
|  36|[0x80003440]<br>0x00F805E001070804|- rs2_val == -536870913<br> - rs1_b6_val == 239<br> - rs1_b3_val == 1<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                            |[0x80000aec]:KSLRA8_U t6, t5, t4<br> [0x80000af0]:sd t6, 256(gp)<br>     |
|  37|[0x80003450]<br>0x04FEF803070440FF|- rs2_val == -268435457<br>                                                                                                                                                                                                                                                                                                |[0x80000b18]:KSLRA8_U t6, t5, t4<br> [0x80000b1c]:sd t6, 272(gp)<br>     |
|  38|[0x80003460]<br>0x090907D500042B09|- rs2_val == -134217729<br> - rs1_b4_val == 170<br>                                                                                                                                                                                                                                                                        |[0x80000b4c]:KSLRA8_U t6, t5, t4<br> [0x80000b50]:sd t6, 288(gp)<br>     |
|  39|[0x80003470]<br>0xE020F004FFFE0901|- rs2_val == -67108865<br> - rs1_b7_val == 191<br> - rs1_b5_val == 223<br>                                                                                                                                                                                                                                                 |[0x80000b80]:KSLRA8_U t6, t5, t4<br> [0x80000b84]:sd t6, 304(gp)<br>     |
|  40|[0x80003480]<br>0x0509E02B0100F0F0|- rs2_val == -33554433<br>                                                                                                                                                                                                                                                                                                 |[0x80000bb4]:KSLRA8_U t6, t5, t4<br> [0x80000bb8]:sd t6, 320(gp)<br>     |
|  41|[0x80003490]<br>0x09E00305040AF840|- rs2_val == -16777217<br> - rs1_b6_val == 191<br> - rs1_b1_val == 239<br>                                                                                                                                                                                                                                                 |[0x80000be8]:KSLRA8_U t6, t5, t4<br> [0x80000bec]:sd t6, 336(gp)<br>     |
|  42|[0x800034a0]<br>0x0104FCF040040504|- rs2_val == -8388609<br> - rs1_b7_val == 2<br>                                                                                                                                                                                                                                                                            |[0x80000c1c]:KSLRA8_U t6, t5, t4<br> [0x80000c20]:sd t6, 352(gp)<br>     |
|  43|[0x800034b0]<br>0x7F7F7F7FC07F8000|- rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                    |[0x80000c44]:KSLRA8_U t6, t5, t4<br> [0x80000c48]:sd t6, 368(gp)<br>     |
|  44|[0x800034c0]<br>0x0FDF05FD030AFD40|- rs2_val == 18014398509481984<br> - rs1_b6_val == 223<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                         |[0x80000c70]:KSLRA8_U t6, t5, t4<br> [0x80000c74]:sd t6, 384(gp)<br>     |
|  45|[0x800034d0]<br>0x2008FCE00905FF03|- rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                    |[0x80000ca8]:KSLRA8_U t6, t5, t4<br> [0x80000cac]:sd t6, 400(gp)<br>     |
|  46|[0x800034e0]<br>0x010D1202BF0C2013|- rs2_val == 4194304<br> - rs1_b7_val == 1<br> - rs1_b4_val == 2<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                |[0x80000cd0]:KSLRA8_U t6, t5, t4<br> [0x80000cd4]:sd t6, 416(gp)<br>     |
|  47|[0x800034f0]<br>0x04200A060A400240|- rs2_val == -2049<br> - rs1_b2_val == 127<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                       |[0x80000d04]:KSLRA8_U t6, t5, t4<br> [0x80000d08]:sd t6, 432(gp)<br>     |
|  48|[0x80003500]<br>0x00000000000000FF|- rs1_b0_val == 170<br> - rs2_val == -6148914691236517206<br>                                                                                                                                                                                                                                                              |[0x80000d50]:KSLRA8_U t6, t5, t4<br> [0x80000d54]:sd t6, 448(gp)<br>     |
|  49|[0x80003510]<br>0x08FCF0100407F8F8|- rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                    |[0x80000d88]:KSLRA8_U t6, t5, t4<br> [0x80000d8c]:sd t6, 464(gp)<br>     |
|  50|[0x80003520]<br>0x400C080B032009FB|- rs2_val == 2199023255552<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                     |[0x80000dbc]:KSLRA8_U t6, t5, t4<br> [0x80000dc0]:sd t6, 480(gp)<br>     |
|  51|[0x80003530]<br>0x0307F0202010FF08|- rs1_b3_val == 64<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                              |[0x80000dec]:KSLRA8_U t6, t5, t4<br> [0x80000df0]:sd t6, 496(gp)<br>     |
|  52|[0x80003540]<br>0x070902FF040101E0|- rs2_val == -4194305<br>                                                                                                                                                                                                                                                                                                  |[0x80000e18]:KSLRA8_U t6, t5, t4<br> [0x80000e1c]:sd t6, 512(gp)<br>     |
|  53|[0x80003550]<br>0x0103030905060A09|- rs2_val == -2097153<br>                                                                                                                                                                                                                                                                                                  |[0x80000e4c]:KSLRA8_U t6, t5, t4<br> [0x80000e50]:sd t6, 528(gp)<br>     |
|  54|[0x80003560]<br>0x022B010400F02B08|- rs2_val == -1048577<br>                                                                                                                                                                                                                                                                                                  |[0x80000e78]:KSLRA8_U t6, t5, t4<br> [0x80000e7c]:sd t6, 544(gp)<br>     |
|  55|[0x80003570]<br>0x09FF09F806050704|- rs2_val == -524289<br>                                                                                                                                                                                                                                                                                                   |[0x80000eac]:KSLRA8_U t6, t5, t4<br> [0x80000eb0]:sd t6, 560(gp)<br>     |
|  56|[0x80003580]<br>0xFF0000400209F805|- rs2_val == -262145<br> - rs1_b7_val == 254<br>                                                                                                                                                                                                                                                                           |[0x80000ed8]:KSLRA8_U t6, t5, t4<br> [0x80000edc]:sd t6, 576(gp)<br>     |
|  57|[0x80003590]<br>0x07D50906040705FC|- rs2_val == -131073<br> - rs1_b6_val == 170<br>                                                                                                                                                                                                                                                                           |[0x80000f0c]:KSLRA8_U t6, t5, t4<br> [0x80000f10]:sd t6, 592(gp)<br>     |
|  58|[0x800035a0]<br>0x0008020300050601|- rs2_val == -65537<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                              |[0x80000f38]:KSLRA8_U t6, t5, t4<br> [0x80000f3c]:sd t6, 608(gp)<br>     |
|  59|[0x800035b0]<br>0x0403FFFE00040303|- rs2_val == -32769<br>                                                                                                                                                                                                                                                                                                    |[0x80000f64]:KSLRA8_U t6, t5, t4<br> [0x80000f68]:sd t6, 624(gp)<br>     |
|  60|[0x800035c0]<br>0x0A050640FF40FCF8|- rs2_val == -16385<br>                                                                                                                                                                                                                                                                                                    |[0x80000f98]:KSLRA8_U t6, t5, t4<br> [0x80000f9c]:sd t6, 640(gp)<br>     |
|  61|[0x800035d0]<br>0x000702F0C0FC0401|- rs2_val == -8193<br> - rs1_b2_val == 247<br>                                                                                                                                                                                                                                                                             |[0x80000fc4]:KSLRA8_U t6, t5, t4<br> [0x80000fc8]:sd t6, 656(gp)<br>     |
|  62|[0x800035e0]<br>0x05050002FE06FFFC|- rs2_val == -4097<br>                                                                                                                                                                                                                                                                                                     |[0x80000ff0]:KSLRA8_U t6, t5, t4<br> [0x80000ff4]:sd t6, 672(gp)<br>     |
|  63|[0x800035f0]<br>0x2BD50902D5FEFF08|- rs2_val == -1025<br> - rs1_b3_val == 170<br>                                                                                                                                                                                                                                                                             |[0x80001020]:KSLRA8_U t6, t5, t4<br> [0x80001024]:sd t6, 688(gp)<br>     |
|  64|[0x80003600]<br>0x04200105FED500D5|- rs2_val == -513<br> - rs1_b2_val == 170<br>                                                                                                                                                                                                                                                                              |[0x80001048]:KSLRA8_U t6, t5, t4<br> [0x8000104c]:sd t6, 704(gp)<br>     |
|  65|[0x80003610]<br>0xFC0707050403FEFC|- rs2_val == -257<br>                                                                                                                                                                                                                                                                                                      |[0x80001070]:KSLRA8_U t6, t5, t4<br> [0x80001074]:sd t6, 720(gp)<br>     |
|  66|[0x80003620]<br>0x01FF030407050407|- rs2_val == -129<br>                                                                                                                                                                                                                                                                                                      |[0x80001098]:KSLRA8_U t6, t5, t4<br> [0x8000109c]:sd t6, 736(gp)<br>     |
|  67|[0x80003630]<br>0x200005090904010A|- rs2_val == -65<br>                                                                                                                                                                                                                                                                                                       |[0x800010c0]:KSLRA8_U t6, t5, t4<br> [0x800010c4]:sd t6, 752(gp)<br>     |
|  68|[0x80003640]<br>0xC0FF0302FE40FF01|- rs2_val == -33<br>                                                                                                                                                                                                                                                                                                       |[0x800010e8]:KSLRA8_U t6, t5, t4<br> [0x800010ec]:sd t6, 768(gp)<br>     |
|  69|[0x80003650]<br>0x10FF0708010306FE|- rs2_val == -17<br> - rs1_b7_val == 32<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                          |[0x80001118]:KSLRA8_U t6, t5, t4<br> [0x8000111c]:sd t6, 784(gp)<br>     |
|  70|[0x80003660]<br>0x7F7F7F7F007F807F|- rs2_val == -9<br> - rs1_b1_val == 170<br>                                                                                                                                                                                                                                                                                |[0x80001140]:KSLRA8_U t6, t5, t4<br> [0x80001144]:sd t6, 800(gp)<br>     |
|  71|[0x80003670]<br>0x03FD0001FF00FDFF|- rs2_val == -5<br> - rs1_b5_val == 253<br> - rs1_b3_val == 239<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                                                  |[0x80001170]:KSLRA8_U t6, t5, t4<br> [0x80001174]:sd t6, 816(gp)<br>     |
|  72|[0x80003680]<br>0x02FF10F80101FF01|- rs2_val == -3<br> - rs1_b5_val == 127<br>                                                                                                                                                                                                                                                                                |[0x80001198]:KSLRA8_U t6, t5, t4<br> [0x8000119c]:sd t6, 832(gp)<br>     |
|  73|[0x80003690]<br>0xFF00000303040301|- rs2_val == -2<br>                                                                                                                                                                                                                                                                                                        |[0x800011c4]:KSLRA8_U t6, t5, t4<br> [0x800011c8]:sd t6, 848(gp)<br>     |
|  74|[0x800036a0]<br>0x200EFE5500EF2055|- rs2_val == -9223372036854775808<br>                                                                                                                                                                                                                                                                                      |[0x800011f0]:KSLRA8_U t6, t5, t4<br> [0x800011f4]:sd t6, 864(gp)<br>     |
|  75|[0x800036b0]<br>0x000BF703000208F7|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                                                                                                                       |[0x8000121c]:KSLRA8_U t6, t5, t4<br> [0x80001220]:sd t6, 880(gp)<br>     |
|  76|[0x800036c0]<br>0x02F7FFFE06135504|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                                                                                                                       |[0x8000124c]:KSLRA8_U t6, t5, t4<br> [0x80001250]:sd t6, 896(gp)<br>     |
|  77|[0x800036d0]<br>0x02AA0B400F101201|- rs2_val == 1152921504606846976<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                |[0x80001280]:KSLRA8_U t6, t5, t4<br> [0x80001284]:sd t6, 912(gp)<br>     |
|  78|[0x800036e0]<br>0x13400A060FFF04FF|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                                                                                                        |[0x800012b4]:KSLRA8_U t6, t5, t4<br> [0x800012b8]:sd t6, 928(gp)<br>     |
|  79|[0x800036f0]<br>0x027F0A0CDF0AFE01|- rs2_val == 288230376151711744<br> - rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                |[0x800012e0]:KSLRA8_U t6, t5, t4<br> [0x800012e4]:sd t6, 944(gp)<br>     |
|  80|[0x80003700]<br>0x7F20110C0E101308|- rs2_val == 144115188075855872<br>                                                                                                                                                                                                                                                                                        |[0x80001314]:KSLRA8_U t6, t5, t4<br> [0x80001318]:sd t6, 960(gp)<br>     |
|  81|[0x80003710]<br>0xF60C7F122018FA18|- rs2_val == 1<br>                                                                                                                                                                                                                                                                                                         |[0x8000133c]:KSLRA8_U t6, t5, t4<br> [0x80001340]:sd t6, 976(gp)<br>     |
|  82|[0x80003720]<br>0xEF0D0C0404200206|- rs2_val == 524288<br> - rs1_b7_val == 239<br>                                                                                                                                                                                                                                                                            |[0x80001364]:KSLRA8_U t6, t5, t4<br> [0x80001368]:sd t6, 992(gp)<br>     |
|  83|[0x80003730]<br>0xF7070E0F7F12FB01|- rs2_val == 256<br>                                                                                                                                                                                                                                                                                                       |[0x8000138c]:KSLRA8_U t6, t5, t4<br> [0x80001390]:sd t6, 1008(gp)<br>    |
|  84|[0x80003740]<br>0x08F807FF01200700|- rs1_b7_val == 16<br>                                                                                                                                                                                                                                                                                                     |[0x800013c4]:KSLRA8_U t6, t5, t4<br> [0x800013c8]:sd t6, 1024(gp)<br>    |
|  85|[0x80003760]<br>0x12AA02060FFBF7FE|- rs2_val == 16<br>                                                                                                                                                                                                                                                                                                        |[0x8000141c]:KSLRA8_U t6, t5, t4<br> [0x80001420]:sd t6, 1056(gp)<br>    |
|  86|[0x80003770]<br>0x050503FC4002022B|- rs1_b4_val == 247<br>                                                                                                                                                                                                                                                                                                    |[0x8000144c]:KSLRA8_U t6, t5, t4<br> [0x80001450]:sd t6, 1072(gp)<br>    |
|  87|[0x80003780]<br>0x05C002C0042BF8FC|- rs1_b4_val == 128<br>                                                                                                                                                                                                                                                                                                    |[0x80001484]:KSLRA8_U t6, t5, t4<br> [0x80001488]:sd t6, 1088(gp)<br>    |
|  88|[0x80003790]<br>0x55FB020F0004100B|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                                                                                                         |[0x800014b0]:KSLRA8_U t6, t5, t4<br> [0x800014b4]:sd t6, 1104(gp)<br>    |
|  89|[0x800037a0]<br>0x040F0C0208FE0A04|- rs2_val == 36028797018963968<br> - rs1_b3_val == 8<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                                                           |[0x800014e4]:KSLRA8_U t6, t5, t4<br> [0x800014e8]:sd t6, 1120(gp)<br>    |
|  90|[0x800037b0]<br>0x8009FD0B800412FE|- rs2_val == 9007199254740992<br>                                                                                                                                                                                                                                                                                          |[0x80001518]:KSLRA8_U t6, t5, t4<br> [0x8000151c]:sd t6, 1136(gp)<br>    |
|  91|[0x800037c0]<br>0xEF0BFE02137F0511|- rs2_val == 4503599627370496<br>                                                                                                                                                                                                                                                                                          |[0x8000154c]:KSLRA8_U t6, t5, t4<br> [0x80001550]:sd t6, 1152(gp)<br>    |
|  92|[0x800037d0]<br>0xBFF709EF0BF70909|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                                                                                                          |[0x80001580]:KSLRA8_U t6, t5, t4<br> [0x80001584]:sd t6, 1168(gp)<br>    |
|  93|[0x800037e0]<br>0x0E100DDF0004DF01|- rs2_val == 1125899906842624<br>                                                                                                                                                                                                                                                                                          |[0x800015ac]:KSLRA8_U t6, t5, t4<br> [0x800015b0]:sd t6, 1184(gp)<br>    |
|  94|[0x800037f0]<br>0x040D08070FAA0411|- rs2_val == 562949953421312<br>                                                                                                                                                                                                                                                                                           |[0x800015d8]:KSLRA8_U t6, t5, t4<br> [0x800015dc]:sd t6, 1200(gp)<br>    |
|  95|[0x80003800]<br>0x13080D08080102FF|- rs2_val == 281474976710656<br>                                                                                                                                                                                                                                                                                           |[0x8000160c]:KSLRA8_U t6, t5, t4<br> [0x80001610]:sd t6, 1216(gp)<br>    |
|  96|[0x80003810]<br>0x0D00FFFB0B110AFD|- rs2_val == 140737488355328<br>                                                                                                                                                                                                                                                                                           |[0x80001640]:KSLRA8_U t6, t5, t4<br> [0x80001644]:sd t6, 1232(gp)<br>    |
|  97|[0x80003820]<br>0x130B4001F706FF08|- rs2_val == 70368744177664<br>                                                                                                                                                                                                                                                                                            |[0x80001674]:KSLRA8_U t6, t5, t4<br> [0x80001678]:sd t6, 1248(gp)<br>    |
|  98|[0x80003830]<br>0x0DF700FD55FB0F00|- rs2_val == 1073741824<br>                                                                                                                                                                                                                                                                                                |[0x800016a4]:KSLRA8_U t6, t5, t4<br> [0x800016a8]:sd t6, 1264(gp)<br>    |
|  99|[0x80003840]<br>0x130004130E0B04FF|- rs2_val == 35184372088832<br>                                                                                                                                                                                                                                                                                            |[0x800016d8]:KSLRA8_U t6, t5, t4<br> [0x800016dc]:sd t6, 1280(gp)<br>    |
| 100|[0x80003850]<br>0x0040FFDF80AA0A04|- rs2_val == 17592186044416<br>                                                                                                                                                                                                                                                                                            |[0x80001704]:KSLRA8_U t6, t5, t4<br> [0x80001708]:sd t6, 1296(gp)<br>    |
| 101|[0x80003860]<br>0x120608040EBFDF02|- rs2_val == 8796093022208<br>                                                                                                                                                                                                                                                                                             |[0x80001738]:KSLRA8_U t6, t5, t4<br> [0x8000173c]:sd t6, 1312(gp)<br>    |
| 102|[0x80003870]<br>0x55DF090113100C12|- rs2_val == 4398046511104<br>                                                                                                                                                                                                                                                                                             |[0x8000176c]:KSLRA8_U t6, t5, t4<br> [0x80001770]:sd t6, 1328(gp)<br>    |
| 103|[0x80003880]<br>0x0C0B0003DFFB040A|- rs2_val == 1099511627776<br>                                                                                                                                                                                                                                                                                             |[0x80001798]:KSLRA8_U t6, t5, t4<br> [0x8000179c]:sd t6, 1344(gp)<br>    |
| 104|[0x80003890]<br>0x11FBDF127F070603|- rs2_val == 549755813888<br>                                                                                                                                                                                                                                                                                              |[0x800017c4]:KSLRA8_U t6, t5, t4<br> [0x800017c8]:sd t6, 1360(gp)<br>    |
| 105|[0x800038a0]<br>0x0C55551010200412|- rs2_val == 274877906944<br>                                                                                                                                                                                                                                                                                              |[0x800017f0]:KSLRA8_U t6, t5, t4<br> [0x800017f4]:sd t6, 1376(gp)<br>    |
| 106|[0x800038b0]<br>0x02FB1107DF080802|- rs2_val == 137438953472<br>                                                                                                                                                                                                                                                                                              |[0x80001824]:KSLRA8_U t6, t5, t4<br> [0x80001828]:sd t6, 1392(gp)<br>    |
| 107|[0x800038c0]<br>0x0A0DEF0713DF10DF|- rs2_val == 68719476736<br>                                                                                                                                                                                                                                                                                               |[0x80001858]:KSLRA8_U t6, t5, t4<br> [0x8000185c]:sd t6, 1408(gp)<br>    |
| 108|[0x800038d0]<br>0xF77F040C080902AA|- rs2_val == 34359738368<br>                                                                                                                                                                                                                                                                                               |[0x8000188c]:KSLRA8_U t6, t5, t4<br> [0x80001890]:sd t6, 1424(gp)<br>    |
| 109|[0x800038e0]<br>0x011355FF08800013|- rs2_val == 17179869184<br>                                                                                                                                                                                                                                                                                               |[0x800018b8]:KSLRA8_U t6, t5, t4<br> [0x800018bc]:sd t6, 1440(gp)<br>    |
| 110|[0x800038f0]<br>0x0E001306FBAA0A0A|- rs2_val == 8589934592<br>                                                                                                                                                                                                                                                                                                |[0x800018ec]:KSLRA8_U t6, t5, t4<br> [0x800018f0]:sd t6, 1456(gp)<br>    |
| 111|[0x80003900]<br>0x040813FF02550F11|- rs2_val == 4294967296<br>                                                                                                                                                                                                                                                                                                |[0x80001920]:KSLRA8_U t6, t5, t4<br> [0x80001924]:sd t6, 1472(gp)<br>    |
| 112|[0x80003910]<br>0xFF0612AA12090720|- rs2_val == 2147483648<br>                                                                                                                                                                                                                                                                                                |[0x8000194c]:KSLRA8_U t6, t5, t4<br> [0x80001950]:sd t6, 1488(gp)<br>    |
| 113|[0x80003920]<br>0xEF13FBFFFF0DFF11|- rs2_val == 536870912<br>                                                                                                                                                                                                                                                                                                 |[0x80001974]:KSLRA8_U t6, t5, t4<br> [0x80001978]:sd t6, 1504(gp)<br>    |
| 114|[0x80003930]<br>0x03AA0D0A0206050A|- rs2_val == 268435456<br>                                                                                                                                                                                                                                                                                                 |[0x8000199c]:KSLRA8_U t6, t5, t4<br> [0x800019a0]:sd t6, 1520(gp)<br>    |
| 115|[0x80003940]<br>0xFB0F000940101011|- rs2_val == 134217728<br>                                                                                                                                                                                                                                                                                                 |[0x800019c4]:KSLRA8_U t6, t5, t4<br> [0x800019c8]:sd t6, 1536(gp)<br>    |
| 116|[0x80003950]<br>0xEFFFFEDF03AAAA55|- rs2_val == 67108864<br>                                                                                                                                                                                                                                                                                                  |[0x800019f4]:KSLRA8_U t6, t5, t4<br> [0x800019f8]:sd t6, 1552(gp)<br>    |
| 117|[0x80003960]<br>0x100B000501FB0901|- rs2_val == 33554432<br>                                                                                                                                                                                                                                                                                                  |[0x80001a24]:KSLRA8_U t6, t5, t4<br> [0x80001a28]:sd t6, 1568(gp)<br>    |
| 118|[0x80003970]<br>0xEFFBFB08AA400801|- rs2_val == 16777216<br>                                                                                                                                                                                                                                                                                                  |[0x80001a54]:KSLRA8_U t6, t5, t4<br> [0x80001a58]:sd t6, 1584(gp)<br>    |
| 119|[0x80003980]<br>0xAA0AFB8000030012|- rs2_val == 8388608<br> - rs1_b7_val == 170<br>                                                                                                                                                                                                                                                                           |[0x80001a7c]:KSLRA8_U t6, t5, t4<br> [0x80001a80]:sd t6, 1600(gp)<br>    |
| 120|[0x80003990]<br>0xF755AA07F7020455|- rs2_val == 2097152<br>                                                                                                                                                                                                                                                                                                   |[0x80001aa4]:KSLRA8_U t6, t5, t4<br> [0x80001aa8]:sd t6, 1616(gp)<br>    |
| 121|[0x800039a0]<br>0x07027F0202BF20EF|- rs2_val == 1048576<br>                                                                                                                                                                                                                                                                                                   |[0x80001ad4]:KSLRA8_U t6, t5, t4<br> [0x80001ad8]:sd t6, 1632(gp)<br>    |
| 122|[0x800039b0]<br>0x07FF067F12070711|- rs2_val == 262144<br>                                                                                                                                                                                                                                                                                                    |[0x80001afc]:KSLRA8_U t6, t5, t4<br> [0x80001b00]:sd t6, 1648(gp)<br>    |
| 123|[0x800039c0]<br>0x110D0B0A00AA00EF|- rs2_val == 131072<br>                                                                                                                                                                                                                                                                                                    |[0x80001b24]:KSLRA8_U t6, t5, t4<br> [0x80001b28]:sd t6, 1664(gp)<br>    |
| 124|[0x800039d0]<br>0x0A0EFB1313040680|- rs2_val == 65536<br>                                                                                                                                                                                                                                                                                                     |[0x80001b4c]:KSLRA8_U t6, t5, t4<br> [0x80001b50]:sd t6, 1680(gp)<br>    |
| 125|[0x800039e0]<br>0xEFF7100DDFBF0703|- rs2_val == 32768<br>                                                                                                                                                                                                                                                                                                     |[0x80001b7c]:KSLRA8_U t6, t5, t4<br> [0x80001b80]:sd t6, 1696(gp)<br>    |
| 126|[0x800039f0]<br>0x13401006DF0A0B20|- rs2_val == 16384<br>                                                                                                                                                                                                                                                                                                     |[0x80001bac]:KSLRA8_U t6, t5, t4<br> [0x80001bb0]:sd t6, 1712(gp)<br>    |
| 127|[0x80003a00]<br>0xFF120A0004AA00FF|- rs2_val == 8192<br>                                                                                                                                                                                                                                                                                                      |[0x80001bd4]:KSLRA8_U t6, t5, t4<br> [0x80001bd8]:sd t6, 1728(gp)<br>    |
| 128|[0x80003a10]<br>0xFD1308AAFB100104|- rs2_val == 4096<br>                                                                                                                                                                                                                                                                                                      |[0x80001bfc]:KSLRA8_U t6, t5, t4<br> [0x80001c00]:sd t6, 1744(gp)<br>    |
| 129|[0x80003a20]<br>0x200CFB0D00BF0F0D|- rs2_val == 2048<br>                                                                                                                                                                                                                                                                                                      |[0x80001c30]:KSLRA8_U t6, t5, t4<br> [0x80001c34]:sd t6, 1760(gp)<br>    |
| 130|[0x80003a30]<br>0x08FE057F11FE0302|- rs2_val == 1024<br>                                                                                                                                                                                                                                                                                                      |[0x80001c58]:KSLRA8_U t6, t5, t4<br> [0x80001c5c]:sd t6, 1776(gp)<br>    |
| 131|[0x80003a40]<br>0x0B05120AEF070406|- rs2_val == 512<br>                                                                                                                                                                                                                                                                                                       |[0x80001c88]:KSLRA8_U t6, t5, t4<br> [0x80001c8c]:sd t6, 1792(gp)<br>    |
| 132|[0x80003a50]<br>0x0E04040DEF06BF03|- rs2_val == 128<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                                               |[0x80001cb8]:KSLRA8_U t6, t5, t4<br> [0x80001cbc]:sd t6, 1808(gp)<br>    |
| 133|[0x80003a60]<br>0x550F0003FE40FF40|- rs2_val == 64<br>                                                                                                                                                                                                                                                                                                        |[0x80001ce0]:KSLRA8_U t6, t5, t4<br> [0x80001ce4]:sd t6, 1824(gp)<br>    |
| 134|[0x80003a70]<br>0x40BF10FDBF09FF09|- rs2_val == 32<br>                                                                                                                                                                                                                                                                                                        |[0x80001d10]:KSLRA8_U t6, t5, t4<br> [0x80001d14]:sd t6, 1840(gp)<br>    |
| 135|[0x80003a80]<br>0x0000000001000000|- rs2_val == 8<br>                                                                                                                                                                                                                                                                                                         |[0x80001d40]:KSLRA8_U t6, t5, t4<br> [0x80001d44]:sd t6, 1856(gp)<br>    |
| 136|[0x80003a90]<br>0x7F7F7F7F7F701000|- rs2_val == 4<br>                                                                                                                                                                                                                                                                                                         |[0x80001d70]:KSLRA8_U t6, t5, t4<br> [0x80001d74]:sd t6, 1872(gp)<br>    |
| 137|[0x80003aa0]<br>0x48FC8080F8802424|- rs2_val == 2<br>                                                                                                                                                                                                                                                                                                         |[0x80001da0]:KSLRA8_U t6, t5, t4<br> [0x80001da4]:sd t6, 1888(gp)<br>    |
| 138|[0x80003ad0]<br>0x072BFC02020804C0|- rs2_val == -4611686018427387905<br>                                                                                                                                                                                                                                                                                      |[0x80001e54]:KSLRA8_U t6, t5, t4<br> [0x80001e58]:sd t6, 1936(gp)<br>    |
