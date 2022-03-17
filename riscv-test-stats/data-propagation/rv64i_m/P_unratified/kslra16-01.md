
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001bd0')]      |
| SIG_REGION                | [('0x80003210', '0x80003b00', '286 dwords')]      |
| COV_LABELS                | kslra16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra16-01.S    |
| Total Number of coverpoints| 382     |
| Total Coverpoints Hit     | 376      |
| Total Signature Updates   | 286      |
| STAT1                     | 139      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 143     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001af8]:KSLRA16 t6, t5, t4
      [0x80001afc]:sd t6, 1904(gp)
 -- Signature Address: 0x80003ab0 Data: 0xFFFF0000FFFFFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6148914691236517205
      - rs1_h3_val == -257
      - rs1_h1_val == -513
      - rs1_h0_val == -32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b28]:KSLRA16 t6, t5, t4
      [0x80001b2c]:sd t6, 1920(gp)
 -- Signature Address: 0x80003ac0 Data: 0x00200010FFDF0002
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 9223372036854775807
      - rs1_h3_val == 64
      - rs1_h2_val == 32
      - rs1_h1_val == -65
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b88]:KSLRA16 t6, t5, t4
      [0x80001b8c]:sd t6, 1952(gp)
 -- Signature Address: 0x80003ae0 Data: 0x1FFFEFFFFFFD0002
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -274877906945
      - rs1_h2_val == -8193
      - rs1_h1_val == -5
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bb8]:KSLRA16 t6, t5, t4
      [0x80001bbc]:sd t6, 1968(gp)
 -- Signature Address: 0x80003af0 Data: 0xEFFFFFF7FFFBFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -137438953473
      - rs1_h3_val == -8193
      - rs1_h2_val == -17
      - rs1_h0_val == -3






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra16', 'rs1 : x15', 'rs2 : x15', 'rd : x23', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_h3_val == 21845', 'rs1_h2_val == 21845', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800003d8]:KSLRA16 s7, a5, a5
	-[0x800003dc]:sd s7, 0(sp)
Current Store : [0x800003e0] : sd a5, 8(sp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_h3_val == 32767', 'rs1_h2_val == -1', 'rs1_h1_val == -1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000408]:KSLRA16 t5, t5, t5
	-[0x8000040c]:sd t5, 16(sp)
Current Store : [0x80000410] : sd t5, 24(sp) -- Store: [0x80003228]:0x3FFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rd : x16', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -4611686018427387905', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000438]:KSLRA16 a6, t1, s10
	-[0x8000043c]:sd a6, 32(sp)
Current Store : [0x80000440] : sd t1, 40(sp) -- Store: [0x80003238]:0xFFF8FFFAFFF80800




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x20', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_h3_val == -65', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000464]:KSLRA16 s4, s4, s9
	-[0x80000468]:sd s4, 48(sp)
Current Store : [0x8000046c] : sd s4, 56(sp) -- Store: [0x80003248]:0xFFDFFFFFDFFFE000




Last Coverpoint : ['rs1 : x13', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_h2_val == 4096', 'rs1_h1_val == 128', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000048c]:KSLRA16 fp, a3, fp
	-[0x80000490]:sd fp, 64(sp)
Current Store : [0x80000494] : sd a3, 72(sp) -- Store: [0x80003258]:0x0005100000800100




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x9', 'rs1_h3_val == -513', 'rs1_h2_val == -513', 'rs1_h1_val == 8', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800004b4]:KSLRA16 s1, gp, zero
	-[0x800004b8]:sd s1, 80(sp)
Current Store : [0x800004bc] : sd gp, 88(sp) -- Store: [0x80003268]:0xFDFFFDFF0008EFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x4', 'rs2_val == -288230376151711745', 'rs1_h2_val == 512', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004e0]:KSLRA16 tp, s1, a3
	-[0x800004e4]:sd tp, 96(sp)
Current Store : [0x800004e8] : sd s1, 104(sp) -- Store: [0x80003278]:0x000302000009BFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x24', 'rd : x3', 'rs2_val == -144115188075855873', 'rs1_h3_val == 4', 'rs1_h2_val == 32767', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000050c]:KSLRA16 gp, t0, s8
	-[0x80000510]:sd gp, 112(sp)
Current Store : [0x80000514] : sd t0, 120(sp) -- Store: [0x80003288]:0x00047FFFFFF8AAAA




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x12', 'rs2_val == -72057594037927937', 'rs1_h3_val == -33', 'rs1_h2_val == 4', 'rs1_h1_val == -513', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000053c]:KSLRA16 a2, t4, s11
	-[0x80000540]:sd a2, 128(sp)
Current Store : [0x80000544] : sd t4, 136(sp) -- Store: [0x80003298]:0xFFDF0004FDFF0004




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x21', 'rs2_val == -36028797018963969', 'rs1_h3_val == 8192', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x8000056c]:KSLRA16 s5, s10, t6
	-[0x80000570]:sd s5, 144(sp)
Current Store : [0x80000574] : sd s10, 152(sp) -- Store: [0x800032a8]:0x2000FFBF00800007




Last Coverpoint : ['rs1 : x12', 'rs2 : x3', 'rd : x26', 'rs2_val == -18014398509481985', 'rs1_h3_val == -32768', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x8000059c]:KSLRA16 s10, a2, gp
	-[0x800005a0]:sd s10, 160(sp)
Current Store : [0x800005a4] : sd a2, 168(sp) -- Store: [0x800032b8]:0x8000FFFAFFF9FEFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x12', 'rd : x19', 'rs2_val == -9007199254740993', 'rs1_h1_val == 1', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005cc]:KSLRA16 s3, a4, a2
	-[0x800005d0]:sd s3, 176(sp)
Current Store : [0x800005d4] : sd a4, 184(sp) -- Store: [0x800032c8]:0xFFFC000400010200




Last Coverpoint : ['rs1 : x10', 'rs2 : x21', 'rd : x29', 'rs2_val == -4503599627370497', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005fc]:KSLRA16 t4, a0, s5
	-[0x80000600]:sd t4, 192(sp)
Current Store : [0x80000604] : sd a0, 200(sp) -- Store: [0x800032d8]:0xFFF90009BFFF0001




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x11', 'rs2_val == -2251799813685249', 'rs1_h3_val == -2049', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000634]:KSLRA16 a1, s9, t1
	-[0x80000638]:sd a1, 208(sp)
Current Store : [0x8000063c] : sd s9, 216(sp) -- Store: [0x800032e8]:0xF7FF000910003FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x17', 'rs2_val == -1125899906842625', 'rs1_h1_val == -32768', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000066c]:KSLRA16 a7, t2, tp
	-[0x80000670]:sd a7, 224(sp)
Current Store : [0x80000674] : sd t2, 232(sp) -- Store: [0x800032f8]:0x8000FFFF8000F7FF




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rd : x10', 'rs2_val == -562949953421313', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000069c]:KSLRA16 a0, s11, a4
	-[0x800006a0]:sd a0, 240(sp)
Current Store : [0x800006a4] : sd s11, 248(sp) -- Store: [0x80003308]:0xFEFFFFFC0003FFF6




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rd : x31', 'rs2_val == -281474976710657', 'rs1_h3_val == 0', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800006c0]:KSLRA16 t6, s7, a0
	-[0x800006c4]:sd t6, 256(sp)
Current Store : [0x800006c8] : sd s7, 264(sp) -- Store: [0x80003318]:0x00000200FFFC4000




Last Coverpoint : ['rs1 : x16', 'rs2 : x17', 'rd : x14', 'rs2_val == -140737488355329']
Last Code Sequence : 
	-[0x800006f8]:KSLRA16 a4, a6, a7
	-[0x800006fc]:sd a4, 272(sp)
Current Store : [0x80000700] : sd a6, 280(sp) -- Store: [0x80003328]:0x7FFFC000C0003FFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x29', 'rd : x27', 'rs2_val == -70368744177665', 'rs1_h3_val == 256', 'rs1_h1_val == -17', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000724]:KSLRA16 s11, ra, t4
	-[0x80000728]:sd s11, 288(sp)
Current Store : [0x8000072c] : sd ra, 296(sp) -- Store: [0x80003338]:0x01000004FFEF2000




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x15', 'rs2_val == -35184372088833', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000075c]:KSLRA16 a5, sp, t0
	-[0x80000760]:sd a5, 0(gp)
Current Store : [0x80000764] : sd sp, 8(gp) -- Store: [0x80003348]:0xFFF6FFF8FFFF0008




Last Coverpoint : ['rs1 : x21', 'rs2 : x23', 'rd : x7', 'rs2_val == -17592186044417', 'rs1_h2_val == -16385', 'rs1_h1_val == -3', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000788]:KSLRA16 t2, s5, s7
	-[0x8000078c]:sd t2, 16(gp)
Current Store : [0x80000790] : sd s5, 24(gp) -- Store: [0x80003358]:0xFFF9BFFFFFFDFFFB




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x25', 'rs2_val == -8796093022209', 'rs1_h2_val == -3', 'rs1_h1_val == 2', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800007b4]:KSLRA16 s9, s6, s2
	-[0x800007b8]:sd s9, 32(gp)
Current Store : [0x800007bc] : sd s6, 40(gp) -- Store: [0x80003368]:0xF7FFFFFD00021000




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x1', 'rs2_val == -4398046511105', 'rs1_h1_val == 2048', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800007ec]:KSLRA16 ra, fp, s1
	-[0x800007f0]:sd ra, 48(gp)
Current Store : [0x800007f4] : sd fp, 56(gp) -- Store: [0x80003378]:0x2000FFFA0800FFF7




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x6', 'rs2_val == -2199023255553', 'rs1_h1_val == 0', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000081c]:KSLRA16 t1, s3, s6
	-[0x80000820]:sd t1, 64(gp)
Current Store : [0x80000824] : sd s3, 72(gp) -- Store: [0x80003388]:0x0000BFFF0000FBFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x28', 'rd : x18', 'rs2_val == -1099511627777', 'rs1_h3_val == 32']
Last Code Sequence : 
	-[0x80000844]:KSLRA16 s2, s8, t3
	-[0x80000848]:sd s2, 80(gp)
Current Store : [0x8000084c] : sd s8, 88(gp) -- Store: [0x80003398]:0x0020FDFF00800005




Last Coverpoint : ['rs1 : x11', 'rs2 : x1', 'rd : x2', 'rs2_val == -549755813889', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x8000086c]:KSLRA16 sp, a1, ra
	-[0x80000870]:sd sp, 96(gp)
Current Store : [0x80000874] : sd a1, 104(gp) -- Store: [0x800033a8]:0xFFFEFFF9FDFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x2', 'rd : x22', 'rs2_val == -274877906945', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000089c]:KSLRA16 s6, zero, sp
	-[0x800008a0]:sd s6, 112(gp)
Current Store : [0x800008a4] : sd zero, 120(gp) -- Store: [0x800033b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x0', 'rs2_val == -137438953473', 'rs1_h3_val == -8193', 'rs1_h2_val == -17', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800008cc]:KSLRA16 zero, a7, s4
	-[0x800008d0]:sd zero, 128(gp)
Current Store : [0x800008d4] : sd a7, 136(gp) -- Store: [0x800033c8]:0xDFFFFFEFFFF6FFFD




Last Coverpoint : ['rs1 : x4', 'rs2 : x7', 'rd : x13', 'rs2_val == -68719476737', 'rs1_h1_val == 4', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800008fc]:KSLRA16 a3, tp, t2
	-[0x80000900]:sd a3, 144(gp)
Current Store : [0x80000904] : sd tp, 152(gp) -- Store: [0x800033d8]:0xC000FFFF0004FDFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x16', 'rd : x5', 'rs2_val == -34359738369', 'rs1_h2_val == 1024', 'rs1_h1_val == -4097', 'rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x80000928]:KSLRA16 t0, t3, a6
	-[0x8000092c]:sd t0, 160(gp)
Current Store : [0x80000930] : sd t3, 168(gp) -- Store: [0x800033e8]:0xFFFA0400EFFF8000




Last Coverpoint : ['rs1 : x18', 'rs2 : x19', 'rd : x28', 'rs2_val == -17179869185', 'rs1_h2_val == -1025', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000950]:KSLRA16 t3, s2, s3
	-[0x80000954]:sd t3, 176(gp)
Current Store : [0x80000958] : sd s2, 184(gp) -- Store: [0x800033f8]:0x0005FBFFFBFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x11', 'rd : x24', 'rs2_val == -8589934593', 'rs1_h2_val == 2', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000980]:KSLRA16 s8, t6, a1
	-[0x80000984]:sd s8, 192(gp)
Current Store : [0x80000988] : sd t6, 200(gp) -- Store: [0x80003408]:0xFFF90002FF7F0005




Last Coverpoint : ['rs2_val == -4294967297', 'rs1_h3_val == 2048', 'rs1_h2_val == -257', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800009b0]:KSLRA16 t6, t5, t4
	-[0x800009b4]:sd t6, 208(gp)
Current Store : [0x800009b8] : sd t5, 216(gp) -- Store: [0x80003418]:0x0800FEFF00087FFF




Last Coverpoint : ['rs2_val == -2147483649', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800009d8]:KSLRA16 t6, t5, t4
	-[0x800009dc]:sd t6, 224(gp)
Current Store : [0x800009e0] : sd t5, 232(gp) -- Store: [0x80003428]:0xFFFE000000040010




Last Coverpoint : ['rs2_val == -1073741825', 'rs1_h3_val == -1025', 'rs1_h1_val == 32767', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800009fc]:KSLRA16 t6, t5, t4
	-[0x80000a00]:sd t6, 240(gp)
Current Store : [0x80000a04] : sd t5, 248(gp) -- Store: [0x80003438]:0xFBFFFBFF7FFFFFBF




Last Coverpoint : ['rs2_val == -536870913', 'rs1_h3_val == -21846', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000a28]:KSLRA16 t6, t5, t4
	-[0x80000a2c]:sd t6, 256(gp)
Current Store : [0x80000a30] : sd t5, 264(gp) -- Store: [0x80003448]:0xAAAAC0000000FFFE




Last Coverpoint : ['rs2_val == -268435457', 'rs1_h3_val == 16', 'rs1_h2_val == 1', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000a4c]:KSLRA16 t6, t5, t4
	-[0x80000a50]:sd t6, 272(gp)
Current Store : [0x80000a54] : sd t5, 280(gp) -- Store: [0x80003458]:0x0010000100800400




Last Coverpoint : ['rs2_val == -134217729', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000a78]:KSLRA16 t6, t5, t4
	-[0x80000a7c]:sd t6, 288(gp)
Current Store : [0x80000a80] : sd t5, 296(gp) -- Store: [0x80003468]:0x20000004FFFE0200




Last Coverpoint : ['rs2_val == -67108865', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80000aa4]:KSLRA16 t6, t5, t4
	-[0x80000aa8]:sd t6, 304(gp)
Current Store : [0x80000aac] : sd t5, 312(gp) -- Store: [0x80003478]:0x0007FFFB00077FFF




Last Coverpoint : ['rs2_val == -33554433', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80000ac8]:KSLRA16 t6, t5, t4
	-[0x80000acc]:sd t6, 320(gp)
Current Store : [0x80000ad0] : sd t5, 328(gp) -- Store: [0x80003488]:0x0001FFBF00040004




Last Coverpoint : ['rs2_val == -16777217']
Last Code Sequence : 
	-[0x80000af4]:KSLRA16 t6, t5, t4
	-[0x80000af8]:sd t6, 336(gp)
Current Store : [0x80000afc] : sd t5, 344(gp) -- Store: [0x80003498]:0x00201000EFFF7FFF




Last Coverpoint : ['rs2_val == -8388609', 'rs1_h3_val == 16384', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x80000b20]:KSLRA16 t6, t5, t4
	-[0x80000b24]:sd t6, 352(gp)
Current Store : [0x80000b28] : sd t5, 360(gp) -- Store: [0x800034a8]:0x4000FF7F0002FFF9




Last Coverpoint : ['rs2_val == -4194305']
Last Code Sequence : 
	-[0x80000b44]:KSLRA16 t6, t5, t4
	-[0x80000b48]:sd t6, 368(gp)
Current Store : [0x80000b4c] : sd t5, 376(gp) -- Store: [0x800034b8]:0x0020000280000400




Last Coverpoint : ['rs2_val == -2097153']
Last Code Sequence : 
	-[0x80000b70]:KSLRA16 t6, t5, t4
	-[0x80000b74]:sd t6, 384(gp)
Current Store : [0x80000b78] : sd t5, 392(gp) -- Store: [0x800034c8]:0xFFBF00090004BFFF




Last Coverpoint : ['rs2_val == -1048577']
Last Code Sequence : 
	-[0x80000b9c]:KSLRA16 t6, t5, t4
	-[0x80000ba0]:sd t6, 400(gp)
Current Store : [0x80000ba4] : sd t5, 408(gp) -- Store: [0x800034d8]:0x00100000FDFFAAAA




Last Coverpoint : ['rs2_val == -524289', 'rs1_h3_val == 64']
Last Code Sequence : 
	-[0x80000bc4]:KSLRA16 t6, t5, t4
	-[0x80000bc8]:sd t6, 416(gp)
Current Store : [0x80000bcc] : sd t5, 424(gp) -- Store: [0x800034e8]:0x00403FFFFFEF0100




Last Coverpoint : ['rs2_val == -262145', 'rs1_h3_val == -17', 'rs1_h2_val == 32', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000bf0]:KSLRA16 t6, t5, t4
	-[0x80000bf4]:sd t6, 432(gp)
Current Store : [0x80000bf8] : sd t5, 440(gp) -- Store: [0x800034f8]:0xFFEF00200200FEFF




Last Coverpoint : ['rs2_val == -131073', 'rs1_h3_val == -4097', 'rs1_h2_val == -21846', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000c1c]:KSLRA16 t6, t5, t4
	-[0x80000c20]:sd t6, 448(gp)
Current Store : [0x80000c24] : sd t5, 456(gp) -- Store: [0x80003508]:0xEFFFAAAAFFBFFFFA




Last Coverpoint : ['rs2_val == -65537', 'rs1_h1_val == -9', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000c48]:KSLRA16 t6, t5, t4
	-[0x80000c4c]:sd t6, 464(gp)
Current Store : [0x80000c50] : sd t5, 472(gp) -- Store: [0x80003518]:0x40005555FFF7DFFF




Last Coverpoint : ['rs2_val == -32769', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80000c74]:KSLRA16 t6, t5, t4
	-[0x80000c78]:sd t6, 480(gp)
Current Store : [0x80000c7c] : sd t5, 488(gp) -- Store: [0x80003528]:0xFFEF00800008FFFF




Last Coverpoint : ['rs2_val == -16385', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80000ca0]:KSLRA16 t6, t5, t4
	-[0x80000ca4]:sd t6, 496(gp)
Current Store : [0x80000ca8] : sd t5, 504(gp) -- Store: [0x80003538]:0xFFF73FFF0009FFF7




Last Coverpoint : ['rs2_val == 2', 'rs1_h3_val == -5', 'rs1_h2_val == -2049', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000cc8]:KSLRA16 t6, t5, t4
	-[0x80000ccc]:sd t6, 512(gp)
Current Store : [0x80000cd0] : sd t5, 520(gp) -- Store: [0x80003548]:0xFFFBF7FF7FFF0080




Last Coverpoint : ['rs2_val == 524288', 'rs1_h3_val == 8', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000cf0]:KSLRA16 t6, t5, t4
	-[0x80000cf4]:sd t6, 528(gp)
Current Store : [0x80000cf8] : sd t5, 536(gp) -- Store: [0x80003558]:0x0008FFFAFFFC0040




Last Coverpoint : ['rs2_val == 72057594037927936', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000d1c]:KSLRA16 t6, t5, t4
	-[0x80000d20]:sd t6, 544(gp)
Current Store : [0x80000d24] : sd t5, 552(gp) -- Store: [0x80003568]:0x0800FFEF3FFF0020




Last Coverpoint : ['rs1_h2_val == -33', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000d4c]:KSLRA16 t6, t5, t4
	-[0x80000d50]:sd t6, 560(gp)
Current Store : [0x80000d54] : sd t5, 568(gp) -- Store: [0x80003578]:0xF7FFFFDFFFFF0002




Last Coverpoint : ['rs2_val == 64', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x80000d70]:KSLRA16 t6, t5, t4
	-[0x80000d74]:sd t6, 576(gp)
Current Store : [0x80000d78] : sd t5, 584(gp) -- Store: [0x80003588]:0xBFFF000700060000




Last Coverpoint : ['rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000db4]:KSLRA16 t6, t5, t4
	-[0x80000db8]:sd t6, 592(gp)
Current Store : [0x80000dbc] : sd t5, 600(gp) -- Store: [0x80003598]:0x0100000155550040




Last Coverpoint : ['rs2_val == -8193']
Last Code Sequence : 
	-[0x80000ddc]:KSLRA16 t6, t5, t4
	-[0x80000de0]:sd t6, 608(gp)
Current Store : [0x80000de4] : sd t5, 616(gp) -- Store: [0x800035a8]:0xFFF8BFFFFDFF0010




Last Coverpoint : ['rs2_val == -4097', 'rs1_h2_val == 256', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000e00]:KSLRA16 t6, t5, t4
	-[0x80000e04]:sd t6, 624(gp)
Current Store : [0x80000e08] : sd t5, 632(gp) -- Store: [0x800035b8]:0xFFF9010040000009




Last Coverpoint : ['rs2_val == -2049']
Last Code Sequence : 
	-[0x80000e2c]:KSLRA16 t6, t5, t4
	-[0x80000e30]:sd t6, 640(gp)
Current Store : [0x80000e34] : sd t5, 648(gp) -- Store: [0x800035c8]:0x80000005FFF6AAAA




Last Coverpoint : ['rs2_val == -1025', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80000e54]:KSLRA16 t6, t5, t4
	-[0x80000e58]:sd t6, 656(gp)
Current Store : [0x80000e5c] : sd t5, 664(gp) -- Store: [0x800035d8]:0x0400020008000008




Last Coverpoint : ['rs2_val == -513']
Last Code Sequence : 
	-[0x80000e7c]:KSLRA16 t6, t5, t4
	-[0x80000e80]:sd t6, 672(gp)
Current Store : [0x80000e84] : sd t5, 680(gp) -- Store: [0x800035e8]:0xFFBF000608005555




Last Coverpoint : ['rs2_val == -257', 'rs1_h1_val == -8193', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000e9c]:KSLRA16 t6, t5, t4
	-[0x80000ea0]:sd t6, 688(gp)
Current Store : [0x80000ea4] : sd t5, 696(gp) -- Store: [0x800035f8]:0x0007FFEFDFFFFF7F




Last Coverpoint : ['rs2_val == -129', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000ec0]:KSLRA16 t6, t5, t4
	-[0x80000ec4]:sd t6, 704(gp)
Current Store : [0x80000ec8] : sd t5, 712(gp) -- Store: [0x80003608]:0xBFFF000700402000




Last Coverpoint : ['rs2_val == -65', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x80000ee4]:KSLRA16 t6, t5, t4
	-[0x80000ee8]:sd t6, 720(gp)
Current Store : [0x80000eec] : sd t5, 728(gp) -- Store: [0x80003618]:0x0020EFFFFFF6FBFF




Last Coverpoint : ['rs2_val == -33', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80000f00]:KSLRA16 t6, t5, t4
	-[0x80000f04]:sd t6, 736(gp)
Current Store : [0x80000f08] : sd t5, 744(gp) -- Store: [0x80003628]:0x0020080000000007




Last Coverpoint : ['rs2_val == -17']
Last Code Sequence : 
	-[0x80000f30]:KSLRA16 t6, t5, t4
	-[0x80000f34]:sd t6, 752(gp)
Current Store : [0x80000f38] : sd t5, 760(gp) -- Store: [0x80003638]:0x5555FBFF55555555




Last Coverpoint : ['rs2_val == -9']
Last Code Sequence : 
	-[0x80000f58]:KSLRA16 t6, t5, t4
	-[0x80000f5c]:sd t6, 768(gp)
Current Store : [0x80000f60] : sd t5, 776(gp) -- Store: [0x80003648]:0x3FFF0020FFF70001




Last Coverpoint : ['rs2_val == -5', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80000f80]:KSLRA16 t6, t5, t4
	-[0x80000f84]:sd t6, 784(gp)
Current Store : [0x80000f88] : sd t5, 792(gp) -- Store: [0x80003658]:0x040000400001FFF7




Last Coverpoint : ['rs2_val == -3', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000fa8]:KSLRA16 t6, t5, t4
	-[0x80000fac]:sd t6, 800(gp)
Current Store : [0x80000fb0] : sd t5, 808(gp) -- Store: [0x80003668]:0xFFDFFFF820007FFF




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x80000fd0]:KSLRA16 t6, t5, t4
	-[0x80000fd4]:sd t6, 816(gp)
Current Store : [0x80000fd8] : sd t5, 824(gp) -- Store: [0x80003678]:0xFBFFFFEF0008EFFF




Last Coverpoint : ['rs2_val == -9223372036854775808']
Last Code Sequence : 
	-[0x80000ffc]:KSLRA16 t6, t5, t4
	-[0x80001000]:sd t6, 832(gp)
Current Store : [0x80001004] : sd t5, 840(gp) -- Store: [0x80003688]:0x55550080FFF93FFF




Last Coverpoint : ['rs2_val == 4611686018427387904', 'rs1_h3_val == 2']
Last Code Sequence : 
	-[0x80001028]:KSLRA16 t6, t5, t4
	-[0x8000102c]:sd t6, 848(gp)
Current Store : [0x80001030] : sd t5, 856(gp) -- Store: [0x80003698]:0x0002FFFDFFF6AAAA




Last Coverpoint : ['rs2_val == 2305843009213693952', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80001054]:KSLRA16 t6, t5, t4
	-[0x80001058]:sd t6, 864(gp)
Current Store : [0x8000105c] : sd t5, 872(gp) -- Store: [0x800036a8]:0xF7FF004004000009




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80001074]:KSLRA16 t6, t5, t4
	-[0x80001078]:sd t6, 880(gp)
Current Store : [0x8000107c] : sd t5, 888(gp) -- Store: [0x800036b8]:0x00000400FFF72000




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x8000109c]:KSLRA16 t6, t5, t4
	-[0x800010a0]:sd t6, 896(gp)
Current Store : [0x800010a4] : sd t5, 904(gp) -- Store: [0x800036c8]:0x0007010000060002




Last Coverpoint : ['rs2_val == 288230376151711744', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x800010c8]:KSLRA16 t6, t5, t4
	-[0x800010cc]:sd t6, 912(gp)
Current Store : [0x800010d0] : sd t5, 920(gp) -- Store: [0x800036d8]:0xFFF94000BFFF0002




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x800010f4]:KSLRA16 t6, t5, t4
	-[0x800010f8]:sd t6, 928(gp)
Current Store : [0x800010fc] : sd t5, 936(gp) -- Store: [0x800036e8]:0x0006FFFF00020009




Last Coverpoint : ['rs2_val == 36028797018963968', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x8000111c]:KSLRA16 t6, t5, t4
	-[0x80001120]:sd t6, 944(gp)
Current Store : [0x80001124] : sd t5, 952(gp) -- Store: [0x800036f8]:0xFFF7FFFE00061000




Last Coverpoint : ['rs2_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001148]:KSLRA16 t6, t5, t4
	-[0x8000114c]:sd t6, 960(gp)
Current Store : [0x80001150] : sd t5, 968(gp) -- Store: [0x80003708]:0xFFBF0009FFF9FFFF




Last Coverpoint : ['rs2_val == 9007199254740992', 'rs1_h3_val == 512']
Last Code Sequence : 
	-[0x80001170]:KSLRA16 t6, t5, t4
	-[0x80001174]:sd t6, 976(gp)
Current Store : [0x80001178] : sd t5, 984(gp) -- Store: [0x80003718]:0x0200000202000020




Last Coverpoint : ['rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x8000119c]:KSLRA16 t6, t5, t4
	-[0x800011a0]:sd t6, 992(gp)
Current Store : [0x800011a4] : sd t5, 1000(gp) -- Store: [0x80003728]:0x55550800FFF6FFFD




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x800011c8]:KSLRA16 t6, t5, t4
	-[0x800011cc]:sd t6, 1008(gp)
Current Store : [0x800011d0] : sd t5, 1016(gp) -- Store: [0x80003738]:0x0200AAAAFFFC0007




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x800011ec]:KSLRA16 t6, t5, t4
	-[0x800011f0]:sd t6, 1024(gp)
Current Store : [0x800011f4] : sd t5, 1032(gp) -- Store: [0x80003748]:0xFFF9000200000003




Last Coverpoint : ['rs2_val == 562949953421312', 'rs1_h1_val == 16', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80001218]:KSLRA16 t6, t5, t4
	-[0x8000121c]:sd t6, 1040(gp)
Current Store : [0x80001220] : sd t5, 1048(gp) -- Store: [0x80003758]:0xAAAA02000010FFDF




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80001244]:KSLRA16 t6, t5, t4
	-[0x80001248]:sd t6, 1056(gp)
Current Store : [0x8000124c] : sd t5, 1064(gp) -- Store: [0x80003768]:0xDFFFFFF6FFFCFFFA




Last Coverpoint : ['rs2_val == 1', 'rs1_h3_val == -1', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001268]:KSLRA16 t6, t5, t4
	-[0x8000126c]:sd t6, 1072(gp)
Current Store : [0x80001270] : sd t5, 1080(gp) -- Store: [0x80003778]:0xFFFF200000055555




Last Coverpoint : ['rs2_val == 128', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80001290]:KSLRA16 t6, t5, t4
	-[0x80001294]:sd t6, 1088(gp)
Current Store : [0x80001298] : sd t5, 1096(gp) -- Store: [0x80003788]:0x800020000020FFF6




Last Coverpoint : ['rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800012b8]:KSLRA16 t6, t5, t4
	-[0x800012bc]:sd t6, 1104(gp)
Current Store : [0x800012c0] : sd t5, 1112(gp) -- Store: [0x80003798]:0xFF7F000304000004




Last Coverpoint : ['rs2_val == 8', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x800012e0]:KSLRA16 t6, t5, t4
	-[0x800012e4]:sd t6, 1120(gp)
Current Store : [0x800012e8] : sd t5, 1128(gp) -- Store: [0x800037a8]:0xFFFDFFFE00060007




Last Coverpoint : ['rs1_h3_val == 4096', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001310]:KSLRA16 t6, t5, t4
	-[0x80001314]:sd t6, 1136(gp)
Current Store : [0x80001318] : sd t5, 1144(gp) -- Store: [0x800037b8]:0x1000800000200008




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x8000133c]:KSLRA16 t6, t5, t4
	-[0x80001340]:sd t6, 1152(gp)
Current Store : [0x80001344] : sd t5, 1160(gp) -- Store: [0x800037c8]:0xAAAA00070008FFEF




Last Coverpoint : ['rs2_val == 17179869184', 'rs1_h3_val == 128']
Last Code Sequence : 
	-[0x80001368]:KSLRA16 t6, t5, t4
	-[0x8000136c]:sd t6, 1168(gp)
Current Store : [0x80001370] : sd t5, 1176(gp) -- Store: [0x800037d8]:0x00800002C000FDFF




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001394]:KSLRA16 t6, t5, t4
	-[0x80001398]:sd t6, 1184(gp)
Current Store : [0x8000139c] : sd t5, 1192(gp) -- Store: [0x800037e8]:0x3FFFFFF700050080




Last Coverpoint : ['rs2_val == 4', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800013c0]:KSLRA16 t6, t5, t4
	-[0x800013c4]:sd t6, 1200(gp)
Current Store : [0x800013c8] : sd t5, 1208(gp) -- Store: [0x800037f8]:0xBFFF001008002000




Last Coverpoint : ['rs2_val == 268435456', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x800013e4]:KSLRA16 t6, t5, t4
	-[0x800013e8]:sd t6, 1216(gp)
Current Store : [0x800013ec] : sd t5, 1224(gp) -- Store: [0x80003808]:0xFFF8000800041000




Last Coverpoint : ['rs2_val == 33554432', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001408]:KSLRA16 t6, t5, t4
	-[0x8000140c]:sd t6, 1232(gp)
Current Store : [0x80001410] : sd t5, 1240(gp) -- Store: [0x80003818]:0x01001000AAAA8000




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000143c]:KSLRA16 t6, t5, t4
	-[0x80001440]:sd t6, 1248(gp)
Current Store : [0x80001444] : sd t5, 1256(gp) -- Store: [0x80003828]:0x3FFFFFF9F7FF0040




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80001468]:KSLRA16 t6, t5, t4
	-[0x8000146c]:sd t6, 1264(gp)
Current Store : [0x80001470] : sd t5, 1272(gp) -- Store: [0x80003838]:0xFFBFFFFE00080800




Last Coverpoint : ['rs1_h2_val == -8193', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001498]:KSLRA16 t6, t5, t4
	-[0x8000149c]:sd t6, 1280(gp)
Current Store : [0x800014a0] : sd t5, 1288(gp) -- Store: [0x80003848]:0xFEFFDFFFFEFFFDFF




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x800014c0]:KSLRA16 t6, t5, t4
	-[0x800014c4]:sd t6, 1296(gp)
Current Store : [0x800014c8] : sd t5, 1304(gp) -- Store: [0x80003858]:0xFFF810000040FFBF




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x800014e8]:KSLRA16 t6, t5, t4
	-[0x800014ec]:sd t6, 1312(gp)
Current Store : [0x800014f0] : sd t5, 1320(gp) -- Store: [0x80003868]:0x0006AAAAFFFF0000




Last Coverpoint : ['rs2_val == 17592186044416']
Last Code Sequence : 
	-[0x80001514]:KSLRA16 t6, t5, t4
	-[0x80001518]:sd t6, 1328(gp)
Current Store : [0x8000151c] : sd t5, 1336(gp) -- Store: [0x80003878]:0xBFFFFFF800027FFF




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001544]:KSLRA16 t6, t5, t4
	-[0x80001548]:sd t6, 1344(gp)
Current Store : [0x8000154c] : sd t5, 1352(gp) -- Store: [0x80003888]:0xF7FF0005FFDFFEFF




Last Coverpoint : ['rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x80001570]:KSLRA16 t6, t5, t4
	-[0x80001574]:sd t6, 1360(gp)
Current Store : [0x80001578] : sd t5, 1368(gp) -- Store: [0x80003898]:0xF7FFFFDFFFFAFBFF




Last Coverpoint : ['rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x8000159c]:KSLRA16 t6, t5, t4
	-[0x800015a0]:sd t6, 1376(gp)
Current Store : [0x800015a4] : sd t5, 1384(gp) -- Store: [0x800038a8]:0xFFFCAAAAFFF7AAAA




Last Coverpoint : ['rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x800015c4]:KSLRA16 t6, t5, t4
	-[0x800015c8]:sd t6, 1392(gp)
Current Store : [0x800015cc] : sd t5, 1400(gp) -- Store: [0x800038b8]:0xFBFFFEFFFFF61000




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x800015f0]:KSLRA16 t6, t5, t4
	-[0x800015f4]:sd t6, 1408(gp)
Current Store : [0x800015f8] : sd t5, 1416(gp) -- Store: [0x800038c8]:0x40007FFF00020005




Last Coverpoint : ['rs2_val == 549755813888']
Last Code Sequence : 
	-[0x8000161c]:KSLRA16 t6, t5, t4
	-[0x80001620]:sd t6, 1424(gp)
Current Store : [0x80001624] : sd t5, 1432(gp) -- Store: [0x800038d8]:0x0004F7FF2000F7FF




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x80001648]:KSLRA16 t6, t5, t4
	-[0x8000164c]:sd t6, 1440(gp)
Current Store : [0x80001650] : sd t5, 1448(gp) -- Store: [0x800038e8]:0x800008000006FFF9




Last Coverpoint : ['rs2_val == 137438953472', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000167c]:KSLRA16 t6, t5, t4
	-[0x80001680]:sd t6, 1456(gp)
Current Store : [0x80001684] : sd t5, 1464(gp) -- Store: [0x800038f8]:0xDFFF00050100AAAA




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x800016a8]:KSLRA16 t6, t5, t4
	-[0x800016ac]:sd t6, 1472(gp)
Current Store : [0x800016b0] : sd t5, 1480(gp) -- Store: [0x80003908]:0x5555FFF680000040




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x800016cc]:KSLRA16 t6, t5, t4
	-[0x800016d0]:sd t6, 1488(gp)
Current Store : [0x800016d4] : sd t5, 1496(gp) -- Store: [0x80003918]:0xFFF8004000000002




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800016f4]:KSLRA16 t6, t5, t4
	-[0x800016f8]:sd t6, 1504(gp)
Current Store : [0x800016fc] : sd t5, 1512(gp) -- Store: [0x80003928]:0xFFFB02003FFF8000




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x80001724]:KSLRA16 t6, t5, t4
	-[0x80001728]:sd t6, 1520(gp)
Current Store : [0x8000172c] : sd t5, 1528(gp) -- Store: [0x80003938]:0x7FFF20003FFF8000




Last Coverpoint : ['rs2_val == 2147483648']
Last Code Sequence : 
	-[0x80001748]:KSLRA16 t6, t5, t4
	-[0x8000174c]:sd t6, 1536(gp)
Current Store : [0x80001750] : sd t5, 1544(gp) -- Store: [0x80003948]:0xFFFDFFEF80000007




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80001770]:KSLRA16 t6, t5, t4
	-[0x80001774]:sd t6, 1552(gp)
Current Store : [0x80001778] : sd t5, 1560(gp) -- Store: [0x80003958]:0x3FFFFFBFFFF80007




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80001798]:KSLRA16 t6, t5, t4
	-[0x8000179c]:sd t6, 1568(gp)
Current Store : [0x800017a0] : sd t5, 1576(gp) -- Store: [0x80003968]:0xC0000200FFF60006




Last Coverpoint : ['rs2_val == 134217728', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800017c0]:KSLRA16 t6, t5, t4
	-[0x800017c4]:sd t6, 1584(gp)
Current Store : [0x800017c8] : sd t5, 1592(gp) -- Store: [0x80003978]:0x10000100FFFB0200




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x800017e8]:KSLRA16 t6, t5, t4
	-[0x800017ec]:sd t6, 1600(gp)
Current Store : [0x800017f0] : sd t5, 1608(gp) -- Store: [0x80003988]:0x000700060002F7FF




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x80001818]:KSLRA16 t6, t5, t4
	-[0x8000181c]:sd t6, 1616(gp)
Current Store : [0x80001820] : sd t5, 1624(gp) -- Store: [0x80003998]:0x55550040DFFF0005




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x80001840]:KSLRA16 t6, t5, t4
	-[0x80001844]:sd t6, 1632(gp)
Current Store : [0x80001848] : sd t5, 1640(gp) -- Store: [0x800039a8]:0x0009FF7F0080EFFF




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x80001868]:KSLRA16 t6, t5, t4
	-[0x8000186c]:sd t6, 1648(gp)
Current Store : [0x80001870] : sd t5, 1656(gp) -- Store: [0x800039b8]:0x20002000FFDF0200




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80001890]:KSLRA16 t6, t5, t4
	-[0x80001894]:sd t6, 1664(gp)
Current Store : [0x80001898] : sd t5, 1672(gp) -- Store: [0x800039c8]:0xDFFFF7FFFFDF7FFF




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x800018b4]:KSLRA16 t6, t5, t4
	-[0x800018b8]:sd t6, 1680(gp)
Current Store : [0x800018bc] : sd t5, 1688(gp) -- Store: [0x800039d8]:0xFFEFBFFFFFF90800




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x800018dc]:KSLRA16 t6, t5, t4
	-[0x800018e0]:sd t6, 1696(gp)
Current Store : [0x800018e4] : sd t5, 1704(gp) -- Store: [0x800039e8]:0xFFFAC0008000FFFE




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x80001904]:KSLRA16 t6, t5, t4
	-[0x80001908]:sd t6, 1712(gp)
Current Store : [0x8000190c] : sd t5, 1720(gp) -- Store: [0x800039f8]:0xFFF700030010FFFA




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x8000192c]:KSLRA16 t6, t5, t4
	-[0x80001930]:sd t6, 1728(gp)
Current Store : [0x80001934] : sd t5, 1736(gp) -- Store: [0x80003a08]:0xF7FFFFF68000FBFF




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x8000194c]:KSLRA16 t6, t5, t4
	-[0x80001950]:sd t6, 1744(gp)
Current Store : [0x80001954] : sd t5, 1752(gp) -- Store: [0x80003a18]:0x1000FFF800000040




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80001974]:KSLRA16 t6, t5, t4
	-[0x80001978]:sd t6, 1760(gp)
Current Store : [0x8000197c] : sd t5, 1768(gp) -- Store: [0x80003a28]:0x5555004000060003




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x8000199c]:KSLRA16 t6, t5, t4
	-[0x800019a0]:sd t6, 1776(gp)
Current Store : [0x800019a4] : sd t5, 1784(gp) -- Store: [0x80003a38]:0x0009400008003FFF




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x800019c4]:KSLRA16 t6, t5, t4
	-[0x800019c8]:sd t6, 1792(gp)
Current Store : [0x800019cc] : sd t5, 1800(gp) -- Store: [0x80003a48]:0xFFFD00040001FFFA




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x800019f0]:KSLRA16 t6, t5, t4
	-[0x800019f4]:sd t6, 1808(gp)
Current Store : [0x800019f8] : sd t5, 1816(gp) -- Store: [0x80003a58]:0x00020002FFDF0004




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80001a18]:KSLRA16 t6, t5, t4
	-[0x80001a1c]:sd t6, 1824(gp)
Current Store : [0x80001a20] : sd t5, 1832(gp) -- Store: [0x80003a68]:0xFFF6000700090020




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x80001a40]:KSLRA16 t6, t5, t4
	-[0x80001a44]:sd t6, 1840(gp)
Current Store : [0x80001a48] : sd t5, 1848(gp) -- Store: [0x80003a78]:0x5555FFDFFFFC0400




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80001a68]:KSLRA16 t6, t5, t4
	-[0x80001a6c]:sd t6, 1856(gp)
Current Store : [0x80001a70] : sd t5, 1864(gp) -- Store: [0x80003a88]:0x000300020080FFDF




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001a90]:KSLRA16 t6, t5, t4
	-[0x80001a94]:sd t6, 1872(gp)
Current Store : [0x80001a98] : sd t5, 1880(gp) -- Store: [0x80003a98]:0xF7FFFFFC00017FFF




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x80001ab8]:KSLRA16 t6, t5, t4
	-[0x80001abc]:sd t6, 1888(gp)
Current Store : [0x80001ac0] : sd t5, 1896(gp) -- Store: [0x80003aa8]:0xFFEF4000EFFFEFFF




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_h3_val == -257', 'rs1_h1_val == -513', 'rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x80001af8]:KSLRA16 t6, t5, t4
	-[0x80001afc]:sd t6, 1904(gp)
Current Store : [0x80001b00] : sd t5, 1912(gp) -- Store: [0x80003ab8]:0xFEFF0009FDFF8000




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 9223372036854775807', 'rs1_h3_val == 64', 'rs1_h2_val == 32', 'rs1_h1_val == -65', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001b28]:KSLRA16 t6, t5, t4
	-[0x80001b2c]:sd t6, 1920(gp)
Current Store : [0x80001b30] : sd t5, 1928(gp) -- Store: [0x80003ac8]:0x00400020FFBF0004




Last Coverpoint : ['rs2_val == -576460752303423489']
Last Code Sequence : 
	-[0x80001b58]:KSLRA16 t6, t5, t4
	-[0x80001b5c]:sd t6, 1936(gp)
Current Store : [0x80001b60] : sd t5, 1944(gp) -- Store: [0x80003ad8]:0xFDFFFDFF0008EFFF




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -274877906945', 'rs1_h2_val == -8193', 'rs1_h1_val == -5', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001b88]:KSLRA16 t6, t5, t4
	-[0x80001b8c]:sd t6, 1952(gp)
Current Store : [0x80001b90] : sd t5, 1960(gp) -- Store: [0x80003ae8]:0x3FFFDFFFFFFB0004




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -137438953473', 'rs1_h3_val == -8193', 'rs1_h2_val == -17', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80001bb8]:KSLRA16 t6, t5, t4
	-[0x80001bbc]:sd t6, 1968(gp)
Current Store : [0x80001bc0] : sd t5, 1976(gp) -- Store: [0x80003af8]:0xDFFFFFEFFFF6FFFD





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

|s.no|            signature             |                                                                                                               coverpoints                                                                                                                |                                  code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000A000A000A000A|- opcode : kslra16<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br> |[0x800003d8]:KSLRA16 s7, a5, a5<br> [0x800003dc]:sd s7, 0(sp)<br>       |
|   2|[0x80003220]<br>0x3FFFFFFFFFFFFFFF|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -1<br> - rs1_h1_val == -1<br> - rs1_h0_val == -1<br>                                 |[0x80000408]:KSLRA16 t5, t5, t5<br> [0x8000040c]:sd t5, 16(sp)<br>      |
|   3|[0x80003230]<br>0xFFFCFFFDFFFC0400|- rs1 : x6<br> - rs2 : x26<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -4611686018427387905<br> - rs1_h0_val == 2048<br>                                                                                |[0x80000438]:KSLRA16 a6, t1, s10<br> [0x8000043c]:sd a6, 32(sp)<br>     |
|   4|[0x80003240]<br>0xFFDFFFFFDFFFE000|- rs1 : x20<br> - rs2 : x25<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_h3_val == -65<br> - rs1_h1_val == -16385<br>                                                                            |[0x80000464]:KSLRA16 s4, s4, s9<br> [0x80000468]:sd s4, 48(sp)<br>      |
|   5|[0x80003250]<br>0x0002080000400080|- rs1 : x13<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 128<br> - rs1_h0_val == 256<br>                                                        |[0x8000048c]:KSLRA16 fp, a3, fp<br> [0x80000490]:sd fp, 64(sp)<br>      |
|   6|[0x80003260]<br>0xFDFFFDFF0008EFFF|- rs1 : x3<br> - rs2 : x0<br> - rd : x9<br> - rs1_h3_val == -513<br> - rs1_h2_val == -513<br> - rs1_h1_val == 8<br> - rs1_h0_val == -4097<br>                                                                                             |[0x800004b4]:KSLRA16 s1, gp, zero<br> [0x800004b8]:sd s1, 80(sp)<br>    |
|   7|[0x80003270]<br>0x000101000004DFFF|- rs1 : x9<br> - rs2 : x13<br> - rd : x4<br> - rs2_val == -288230376151711745<br> - rs1_h2_val == 512<br> - rs1_h0_val == -16385<br>                                                                                                      |[0x800004e0]:KSLRA16 tp, s1, a3<br> [0x800004e4]:sd tp, 96(sp)<br>      |
|   8|[0x80003280]<br>0x00023FFFFFFCD555|- rs1 : x5<br> - rs2 : x24<br> - rd : x3<br> - rs2_val == -144115188075855873<br> - rs1_h3_val == 4<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -21846<br>                                                                              |[0x8000050c]:KSLRA16 gp, t0, s8<br> [0x80000510]:sd gp, 112(sp)<br>     |
|   9|[0x80003290]<br>0xFFEF0002FEFF0002|- rs1 : x29<br> - rs2 : x27<br> - rd : x12<br> - rs2_val == -72057594037927937<br> - rs1_h3_val == -33<br> - rs1_h2_val == 4<br> - rs1_h1_val == -513<br> - rs1_h0_val == 4<br>                                                           |[0x8000053c]:KSLRA16 a2, t4, s11<br> [0x80000540]:sd a2, 128(sp)<br>    |
|  10|[0x800032a0]<br>0x1000FFDF00400003|- rs1 : x26<br> - rs2 : x31<br> - rd : x21<br> - rs2_val == -36028797018963969<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -65<br>                                                                                                       |[0x8000056c]:KSLRA16 s5, s10, t6<br> [0x80000570]:sd s5, 144(sp)<br>    |
|  11|[0x800032b0]<br>0xC000FFFDFFFCFF7F|- rs1 : x12<br> - rs2 : x3<br> - rd : x26<br> - rs2_val == -18014398509481985<br> - rs1_h3_val == -32768<br> - rs1_h0_val == -257<br>                                                                                                     |[0x8000059c]:KSLRA16 s10, a2, gp<br> [0x800005a0]:sd s10, 160(sp)<br>   |
|  12|[0x800032c0]<br>0xFFFE000200000100|- rs1 : x14<br> - rs2 : x12<br> - rd : x19<br> - rs2_val == -9007199254740993<br> - rs1_h1_val == 1<br> - rs1_h0_val == 512<br>                                                                                                           |[0x800005cc]:KSLRA16 s3, a4, a2<br> [0x800005d0]:sd s3, 176(sp)<br>     |
|  13|[0x800032d0]<br>0xFFFC0004DFFF0000|- rs1 : x10<br> - rs2 : x21<br> - rd : x29<br> - rs2_val == -4503599627370497<br> - rs1_h0_val == 1<br>                                                                                                                                   |[0x800005fc]:KSLRA16 t4, a0, s5<br> [0x80000600]:sd t4, 192(sp)<br>     |
|  14|[0x800032e0]<br>0xFBFF000408001FFF|- rs1 : x25<br> - rs2 : x6<br> - rd : x11<br> - rs2_val == -2251799813685249<br> - rs1_h3_val == -2049<br> - rs1_h1_val == 4096<br>                                                                                                       |[0x80000634]:KSLRA16 a1, s9, t1<br> [0x80000638]:sd a1, 208(sp)<br>     |
|  15|[0x800032f0]<br>0xC000FFFFC000FBFF|- rs1 : x7<br> - rs2 : x4<br> - rd : x17<br> - rs2_val == -1125899906842625<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -2049<br>                                                                                                      |[0x8000066c]:KSLRA16 a7, t2, tp<br> [0x80000670]:sd a7, 224(sp)<br>     |
|  16|[0x80003300]<br>0xFF7FFFFE0001FFFB|- rs1 : x27<br> - rs2 : x14<br> - rd : x10<br> - rs2_val == -562949953421313<br> - rs1_h3_val == -257<br>                                                                                                                                 |[0x8000069c]:KSLRA16 a0, s11, a4<br> [0x800006a0]:sd a0, 240(sp)<br>    |
|  17|[0x80003310]<br>0x00000100FFFE2000|- rs1 : x23<br> - rs2 : x10<br> - rd : x31<br> - rs2_val == -281474976710657<br> - rs1_h3_val == 0<br> - rs1_h0_val == 16384<br>                                                                                                          |[0x800006c0]:KSLRA16 t6, s7, a0<br> [0x800006c4]:sd t6, 256(sp)<br>     |
|  18|[0x80003320]<br>0x3FFFE000E0001FFF|- rs1 : x16<br> - rs2 : x17<br> - rd : x14<br> - rs2_val == -140737488355329<br>                                                                                                                                                          |[0x800006f8]:KSLRA16 a4, a6, a7<br> [0x800006fc]:sd a4, 272(sp)<br>     |
|  19|[0x80003330]<br>0x00800002FFF71000|- rs1 : x1<br> - rs2 : x29<br> - rd : x27<br> - rs2_val == -70368744177665<br> - rs1_h3_val == 256<br> - rs1_h1_val == -17<br> - rs1_h0_val == 8192<br>                                                                                   |[0x80000724]:KSLRA16 s11, ra, t4<br> [0x80000728]:sd s11, 288(sp)<br>   |
|  20|[0x80003340]<br>0xFFFBFFFCFFFF0004|- rs1 : x2<br> - rs2 : x5<br> - rd : x15<br> - rs2_val == -35184372088833<br> - rs1_h0_val == 8<br>                                                                                                                                       |[0x8000075c]:KSLRA16 a5, sp, t0<br> [0x80000760]:sd a5, 0(gp)<br>       |
|  21|[0x80003350]<br>0xFFFCDFFFFFFEFFFD|- rs1 : x21<br> - rs2 : x23<br> - rd : x7<br> - rs2_val == -17592186044417<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -3<br> - rs1_h0_val == -5<br>                                                                                   |[0x80000788]:KSLRA16 t2, s5, s7<br> [0x8000078c]:sd t2, 16(gp)<br>      |
|  22|[0x80003360]<br>0xFBFFFFFE00010800|- rs1 : x22<br> - rs2 : x18<br> - rd : x25<br> - rs2_val == -8796093022209<br> - rs1_h2_val == -3<br> - rs1_h1_val == 2<br> - rs1_h0_val == 4096<br>                                                                                      |[0x800007b4]:KSLRA16 s9, s6, s2<br> [0x800007b8]:sd s9, 32(gp)<br>      |
|  23|[0x80003370]<br>0x1000FFFD0400FFFB|- rs1 : x8<br> - rs2 : x9<br> - rd : x1<br> - rs2_val == -4398046511105<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -9<br>                                                                                                               |[0x800007ec]:KSLRA16 ra, fp, s1<br> [0x800007f0]:sd ra, 48(gp)<br>      |
|  24|[0x80003380]<br>0x0000DFFF0000FDFF|- rs1 : x19<br> - rs2 : x22<br> - rd : x6<br> - rs2_val == -2199023255553<br> - rs1_h1_val == 0<br> - rs1_h0_val == -1025<br>                                                                                                             |[0x8000081c]:KSLRA16 t1, s3, s6<br> [0x80000820]:sd t1, 64(gp)<br>      |
|  25|[0x80003390]<br>0x0010FEFF00400002|- rs1 : x24<br> - rs2 : x28<br> - rd : x18<br> - rs2_val == -1099511627777<br> - rs1_h3_val == 32<br>                                                                                                                                     |[0x80000844]:KSLRA16 s2, s8, t3<br> [0x80000848]:sd s2, 80(gp)<br>      |
|  26|[0x800033a0]<br>0xFFFFFFFCFEFFFFFF|- rs1 : x11<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == -549755813889<br> - rs1_h3_val == -2<br>                                                                                                                                        |[0x8000086c]:KSLRA16 sp, a1, ra<br> [0x80000870]:sd sp, 96(gp)<br>      |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x22<br> - rs2_val == -274877906945<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                   |[0x8000089c]:KSLRA16 s6, zero, sp<br> [0x800008a0]:sd s6, 112(gp)<br>   |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x20<br> - rd : x0<br> - rs2_val == -137438953473<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -17<br> - rs1_h0_val == -3<br>                                                                                     |[0x800008cc]:KSLRA16 zero, a7, s4<br> [0x800008d0]:sd zero, 128(gp)<br> |
|  29|[0x800033d0]<br>0xE000FFFF0002FEFF|- rs1 : x4<br> - rs2 : x7<br> - rd : x13<br> - rs2_val == -68719476737<br> - rs1_h1_val == 4<br> - rs1_h0_val == -513<br>                                                                                                                 |[0x800008fc]:KSLRA16 a3, tp, t2<br> [0x80000900]:sd a3, 144(gp)<br>     |
|  30|[0x800033e0]<br>0xFFFD0200F7FFC000|- rs1 : x28<br> - rs2 : x16<br> - rd : x5<br> - rs2_val == -34359738369<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -32768<br>                                                                                 |[0x80000928]:KSLRA16 t0, t3, a6<br> [0x8000092c]:sd t0, 160(gp)<br>     |
|  31|[0x800033f0]<br>0x0002FDFFFDFFFFFF|- rs1 : x18<br> - rs2 : x19<br> - rd : x28<br> - rs2_val == -17179869185<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -1025<br>                                                                                                          |[0x80000950]:KSLRA16 t3, s2, s3<br> [0x80000954]:sd t3, 176(gp)<br>     |
|  32|[0x80003400]<br>0xFFFC0001FFBF0002|- rs1 : x31<br> - rs2 : x11<br> - rd : x24<br> - rs2_val == -8589934593<br> - rs1_h2_val == 2<br> - rs1_h1_val == -129<br>                                                                                                                |[0x80000980]:KSLRA16 s8, t6, a1<br> [0x80000984]:sd s8, 192(gp)<br>     |
|  33|[0x80003410]<br>0x0400FF7F00043FFF|- rs2_val == -4294967297<br> - rs1_h3_val == 2048<br> - rs1_h2_val == -257<br> - rs1_h0_val == 32767<br>                                                                                                                                  |[0x800009b0]:KSLRA16 t6, t5, t4<br> [0x800009b4]:sd t6, 208(gp)<br>     |
|  34|[0x80003420]<br>0xFFFF000000020008|- rs2_val == -2147483649<br> - rs1_h0_val == 16<br>                                                                                                                                                                                       |[0x800009d8]:KSLRA16 t6, t5, t4<br> [0x800009dc]:sd t6, 224(gp)<br>     |
|  35|[0x80003430]<br>0xFDFFFDFF3FFFFFDF|- rs2_val == -1073741825<br> - rs1_h3_val == -1025<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -65<br>                                                                                                                                  |[0x800009fc]:KSLRA16 t6, t5, t4<br> [0x80000a00]:sd t6, 240(gp)<br>     |
|  36|[0x80003440]<br>0xD555E0000000FFFF|- rs2_val == -536870913<br> - rs1_h3_val == -21846<br> - rs1_h0_val == -2<br>                                                                                                                                                             |[0x80000a28]:KSLRA16 t6, t5, t4<br> [0x80000a2c]:sd t6, 256(gp)<br>     |
|  37|[0x80003450]<br>0x0008000000400200|- rs2_val == -268435457<br> - rs1_h3_val == 16<br> - rs1_h2_val == 1<br> - rs1_h0_val == 1024<br>                                                                                                                                         |[0x80000a4c]:KSLRA16 t6, t5, t4<br> [0x80000a50]:sd t6, 272(gp)<br>     |
|  38|[0x80003460]<br>0x10000002FFFF0100|- rs2_val == -134217729<br> - rs1_h1_val == -2<br>                                                                                                                                                                                        |[0x80000a78]:KSLRA16 t6, t5, t4<br> [0x80000a7c]:sd t6, 288(gp)<br>     |
|  39|[0x80003470]<br>0x0003FFFD00033FFF|- rs2_val == -67108865<br> - rs1_h2_val == -5<br>                                                                                                                                                                                         |[0x80000aa4]:KSLRA16 t6, t5, t4<br> [0x80000aa8]:sd t6, 304(gp)<br>     |
|  40|[0x80003480]<br>0x0000FFDF00020002|- rs2_val == -33554433<br> - rs1_h3_val == 1<br>                                                                                                                                                                                          |[0x80000ac8]:KSLRA16 t6, t5, t4<br> [0x80000acc]:sd t6, 320(gp)<br>     |
|  41|[0x80003490]<br>0x00100800F7FF3FFF|- rs2_val == -16777217<br>                                                                                                                                                                                                                |[0x80000af4]:KSLRA16 t6, t5, t4<br> [0x80000af8]:sd t6, 336(gp)<br>     |
|  42|[0x800034a0]<br>0x2000FFBF0001FFFC|- rs2_val == -8388609<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -129<br>                                                                                                                                                              |[0x80000b20]:KSLRA16 t6, t5, t4<br> [0x80000b24]:sd t6, 352(gp)<br>     |
|  43|[0x800034b0]<br>0x00100001C0000200|- rs2_val == -4194305<br>                                                                                                                                                                                                                 |[0x80000b44]:KSLRA16 t6, t5, t4<br> [0x80000b48]:sd t6, 368(gp)<br>     |
|  44|[0x800034c0]<br>0xFFDF00040002DFFF|- rs2_val == -2097153<br>                                                                                                                                                                                                                 |[0x80000b70]:KSLRA16 t6, t5, t4<br> [0x80000b74]:sd t6, 384(gp)<br>     |
|  45|[0x800034d0]<br>0x00080000FEFFD555|- rs2_val == -1048577<br>                                                                                                                                                                                                                 |[0x80000b9c]:KSLRA16 t6, t5, t4<br> [0x80000ba0]:sd t6, 400(gp)<br>     |
|  46|[0x800034e0]<br>0x00201FFFFFF70080|- rs2_val == -524289<br> - rs1_h3_val == 64<br>                                                                                                                                                                                           |[0x80000bc4]:KSLRA16 t6, t5, t4<br> [0x80000bc8]:sd t6, 416(gp)<br>     |
|  47|[0x800034f0]<br>0xFFF700100100FF7F|- rs2_val == -262145<br> - rs1_h3_val == -17<br> - rs1_h2_val == 32<br> - rs1_h1_val == 512<br>                                                                                                                                           |[0x80000bf0]:KSLRA16 t6, t5, t4<br> [0x80000bf4]:sd t6, 432(gp)<br>     |
|  48|[0x80003500]<br>0xF7FFD555FFDFFFFD|- rs2_val == -131073<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -65<br>                                                                                                                                     |[0x80000c1c]:KSLRA16 t6, t5, t4<br> [0x80000c20]:sd t6, 448(gp)<br>     |
|  49|[0x80003510]<br>0x20002AAAFFFBEFFF|- rs2_val == -65537<br> - rs1_h1_val == -9<br> - rs1_h0_val == -8193<br>                                                                                                                                                                  |[0x80000c48]:KSLRA16 t6, t5, t4<br> [0x80000c4c]:sd t6, 464(gp)<br>     |
|  50|[0x80003520]<br>0xFFF700400004FFFF|- rs2_val == -32769<br> - rs1_h2_val == 128<br>                                                                                                                                                                                           |[0x80000c74]:KSLRA16 t6, t5, t4<br> [0x80000c78]:sd t6, 480(gp)<br>     |
|  51|[0x80003530]<br>0xFFFB1FFF0004FFFB|- rs2_val == -16385<br> - rs1_h3_val == -9<br>                                                                                                                                                                                            |[0x80000ca0]:KSLRA16 t6, t5, t4<br> [0x80000ca4]:sd t6, 496(gp)<br>     |
|  52|[0x80003540]<br>0xFFECDFFC7FFF0200|- rs2_val == 2<br> - rs1_h3_val == -5<br> - rs1_h2_val == -2049<br> - rs1_h0_val == 128<br>                                                                                                                                               |[0x80000cc8]:KSLRA16 t6, t5, t4<br> [0x80000ccc]:sd t6, 512(gp)<br>     |
|  53|[0x80003550]<br>0x0008FFFAFFFC0040|- rs2_val == 524288<br> - rs1_h3_val == 8<br> - rs1_h0_val == 64<br>                                                                                                                                                                      |[0x80000cf0]:KSLRA16 t6, t5, t4<br> [0x80000cf4]:sd t6, 528(gp)<br>     |
|  54|[0x80003560]<br>0x0800FFEF3FFF0020|- rs2_val == 72057594037927936<br> - rs1_h0_val == 32<br>                                                                                                                                                                                 |[0x80000d1c]:KSLRA16 t6, t5, t4<br> [0x80000d20]:sd t6, 544(gp)<br>     |
|  55|[0x80003570]<br>0xFBFFFFEFFFFF0001|- rs1_h2_val == -33<br> - rs1_h0_val == 2<br>                                                                                                                                                                                             |[0x80000d4c]:KSLRA16 t6, t5, t4<br> [0x80000d50]:sd t6, 560(gp)<br>     |
|  56|[0x80003580]<br>0xBFFF000700060000|- rs2_val == 64<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                            |[0x80000d70]:KSLRA16 t6, t5, t4<br> [0x80000d74]:sd t6, 576(gp)<br>     |
|  57|[0x80003590]<br>0x7FFF04007FFF7FFF|- rs2_val == -6148914691236517206<br>                                                                                                                                                                                                     |[0x80000db4]:KSLRA16 t6, t5, t4<br> [0x80000db8]:sd t6, 592(gp)<br>     |
|  58|[0x800035a0]<br>0xFFFCDFFFFEFF0008|- rs2_val == -8193<br>                                                                                                                                                                                                                    |[0x80000ddc]:KSLRA16 t6, t5, t4<br> [0x80000de0]:sd t6, 608(gp)<br>     |
|  59|[0x800035b0]<br>0xFFFC008020000004|- rs2_val == -4097<br> - rs1_h2_val == 256<br> - rs1_h1_val == 16384<br>                                                                                                                                                                  |[0x80000e00]:KSLRA16 t6, t5, t4<br> [0x80000e04]:sd t6, 624(gp)<br>     |
|  60|[0x800035c0]<br>0xC0000002FFFBD555|- rs2_val == -2049<br>                                                                                                                                                                                                                    |[0x80000e2c]:KSLRA16 t6, t5, t4<br> [0x80000e30]:sd t6, 640(gp)<br>     |
|  61|[0x800035d0]<br>0x0200010004000004|- rs2_val == -1025<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                           |[0x80000e54]:KSLRA16 t6, t5, t4<br> [0x80000e58]:sd t6, 656(gp)<br>     |
|  62|[0x800035e0]<br>0xFFDF000304002AAA|- rs2_val == -513<br>                                                                                                                                                                                                                     |[0x80000e7c]:KSLRA16 t6, t5, t4<br> [0x80000e80]:sd t6, 672(gp)<br>     |
|  63|[0x800035f0]<br>0x0003FFF7EFFFFFBF|- rs2_val == -257<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -129<br>                                                                                                                                                                  |[0x80000e9c]:KSLRA16 t6, t5, t4<br> [0x80000ea0]:sd t6, 688(gp)<br>     |
|  64|[0x80003600]<br>0xDFFF000300201000|- rs2_val == -129<br> - rs1_h1_val == 64<br>                                                                                                                                                                                              |[0x80000ec0]:KSLRA16 t6, t5, t4<br> [0x80000ec4]:sd t6, 704(gp)<br>     |
|  65|[0x80003610]<br>0x0010F7FFFFFBFDFF|- rs2_val == -65<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                            |[0x80000ee4]:KSLRA16 t6, t5, t4<br> [0x80000ee8]:sd t6, 720(gp)<br>     |
|  66|[0x80003620]<br>0x0010040000000003|- rs2_val == -33<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                             |[0x80000f00]:KSLRA16 t6, t5, t4<br> [0x80000f04]:sd t6, 736(gp)<br>     |
|  67|[0x80003630]<br>0x7FFF80007FFF7FFF|- rs2_val == -17<br>                                                                                                                                                                                                                      |[0x80000f30]:KSLRA16 t6, t5, t4<br> [0x80000f34]:sd t6, 752(gp)<br>     |
|  68|[0x80003640]<br>0x001F0000FFFF0000|- rs2_val == -9<br>                                                                                                                                                                                                                       |[0x80000f58]:KSLRA16 t6, t5, t4<br> [0x80000f5c]:sd t6, 768(gp)<br>     |
|  69|[0x80003650]<br>0x002000020000FFFF|- rs2_val == -5<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                |[0x80000f80]:KSLRA16 t6, t5, t4<br> [0x80000f84]:sd t6, 784(gp)<br>     |
|  70|[0x80003660]<br>0xFFFBFFFF04000FFF|- rs2_val == -3<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                              |[0x80000fa8]:KSLRA16 t6, t5, t4<br> [0x80000fac]:sd t6, 800(gp)<br>     |
|  71|[0x80003670]<br>0xFEFFFFFB0002FBFF|- rs2_val == -2<br>                                                                                                                                                                                                                       |[0x80000fd0]:KSLRA16 t6, t5, t4<br> [0x80000fd4]:sd t6, 816(gp)<br>     |
|  72|[0x80003680]<br>0x55550080FFF93FFF|- rs2_val == -9223372036854775808<br>                                                                                                                                                                                                     |[0x80000ffc]:KSLRA16 t6, t5, t4<br> [0x80001000]:sd t6, 832(gp)<br>     |
|  73|[0x80003690]<br>0x0002FFFDFFF6AAAA|- rs2_val == 4611686018427387904<br> - rs1_h3_val == 2<br>                                                                                                                                                                                |[0x80001028]:KSLRA16 t6, t5, t4<br> [0x8000102c]:sd t6, 848(gp)<br>     |
|  74|[0x800036a0]<br>0xF7FF004004000009|- rs2_val == 2305843009213693952<br> - rs1_h1_val == 1024<br>                                                                                                                                                                             |[0x80001054]:KSLRA16 t6, t5, t4<br> [0x80001058]:sd t6, 864(gp)<br>     |
|  75|[0x800036b0]<br>0x00000400FFF72000|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                      |[0x80001074]:KSLRA16 t6, t5, t4<br> [0x80001078]:sd t6, 880(gp)<br>     |
|  76|[0x800036c0]<br>0x0007010000060002|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                       |[0x8000109c]:KSLRA16 t6, t5, t4<br> [0x800010a0]:sd t6, 896(gp)<br>     |
|  77|[0x800036d0]<br>0xFFF94000BFFF0002|- rs2_val == 288230376151711744<br> - rs1_h2_val == 16384<br>                                                                                                                                                                             |[0x800010c8]:KSLRA16 t6, t5, t4<br> [0x800010cc]:sd t6, 912(gp)<br>     |
|  78|[0x800036e0]<br>0x0006FFFF00020009|- rs2_val == 144115188075855872<br>                                                                                                                                                                                                       |[0x800010f4]:KSLRA16 t6, t5, t4<br> [0x800010f8]:sd t6, 928(gp)<br>     |
|  79|[0x800036f0]<br>0xFFF7FFFE00061000|- rs2_val == 36028797018963968<br> - rs1_h2_val == -2<br>                                                                                                                                                                                 |[0x8000111c]:KSLRA16 t6, t5, t4<br> [0x80001120]:sd t6, 944(gp)<br>     |
|  80|[0x80003700]<br>0xFFBF0009FFF9FFFF|- rs2_val == 18014398509481984<br>                                                                                                                                                                                                        |[0x80001148]:KSLRA16 t6, t5, t4<br> [0x8000114c]:sd t6, 960(gp)<br>     |
|  81|[0x80003710]<br>0x0200000202000020|- rs2_val == 9007199254740992<br> - rs1_h3_val == 512<br>                                                                                                                                                                                 |[0x80001170]:KSLRA16 t6, t5, t4<br> [0x80001174]:sd t6, 976(gp)<br>     |
|  82|[0x80003720]<br>0x55550800FFF6FFFD|- rs2_val == 4503599627370496<br>                                                                                                                                                                                                         |[0x8000119c]:KSLRA16 t6, t5, t4<br> [0x800011a0]:sd t6, 992(gp)<br>     |
|  83|[0x80003730]<br>0x0200AAAAFFFC0007|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                         |[0x800011c8]:KSLRA16 t6, t5, t4<br> [0x800011cc]:sd t6, 1008(gp)<br>    |
|  84|[0x80003740]<br>0xFFF9000200000003|- rs2_val == 1125899906842624<br>                                                                                                                                                                                                         |[0x800011ec]:KSLRA16 t6, t5, t4<br> [0x800011f0]:sd t6, 1024(gp)<br>    |
|  85|[0x80003750]<br>0xAAAA02000010FFDF|- rs2_val == 562949953421312<br> - rs1_h1_val == 16<br> - rs1_h0_val == -33<br>                                                                                                                                                           |[0x80001218]:KSLRA16 t6, t5, t4<br> [0x8000121c]:sd t6, 1040(gp)<br>    |
|  86|[0x80003760]<br>0xDFFFFFF6FFFCFFFA|- rs2_val == 281474976710656<br>                                                                                                                                                                                                          |[0x80001244]:KSLRA16 t6, t5, t4<br> [0x80001248]:sd t6, 1056(gp)<br>    |
|  87|[0x80003770]<br>0xFFFE4000000A7FFF|- rs2_val == 1<br> - rs1_h3_val == -1<br> - rs1_h2_val == 8192<br>                                                                                                                                                                        |[0x80001268]:KSLRA16 t6, t5, t4<br> [0x8000126c]:sd t6, 1072(gp)<br>    |
|  88|[0x80003780]<br>0x800020000020FFF6|- rs2_val == 128<br> - rs1_h1_val == 32<br>                                                                                                                                                                                               |[0x80001290]:KSLRA16 t6, t5, t4<br> [0x80001294]:sd t6, 1088(gp)<br>    |
|  89|[0x80003790]<br>0xFFBF000102000002|- rs1_h3_val == -129<br>                                                                                                                                                                                                                  |[0x800012b8]:KSLRA16 t6, t5, t4<br> [0x800012bc]:sd t6, 1104(gp)<br>    |
|  90|[0x800037a0]<br>0xFD00FE0006000700|- rs2_val == 8<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                 |[0x800012e0]:KSLRA16 t6, t5, t4<br> [0x800012e4]:sd t6, 1120(gp)<br>    |
|  91|[0x800037b0]<br>0x0800C00000100004|- rs1_h3_val == 4096<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                       |[0x80001310]:KSLRA16 t6, t5, t4<br> [0x80001314]:sd t6, 1136(gp)<br>    |
|  92|[0x800037c0]<br>0xD55500030004FFF7|- rs1_h0_val == -17<br>                                                                                                                                                                                                                   |[0x8000133c]:KSLRA16 t6, t5, t4<br> [0x80001340]:sd t6, 1152(gp)<br>    |
|  93|[0x800037d0]<br>0x00800002C000FDFF|- rs2_val == 17179869184<br> - rs1_h3_val == 128<br>                                                                                                                                                                                      |[0x80001368]:KSLRA16 t6, t5, t4<br> [0x8000136c]:sd t6, 1168(gp)<br>    |
|  94|[0x800037e0]<br>0x1FFFFFFB00020040|- rs1_h2_val == -9<br>                                                                                                                                                                                                                    |[0x80001394]:KSLRA16 t6, t5, t4<br> [0x80001398]:sd t6, 1184(gp)<br>    |
|  95|[0x800037f0]<br>0x800001007FFF7FFF|- rs2_val == 4<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                 |[0x800013c0]:KSLRA16 t6, t5, t4<br> [0x800013c4]:sd t6, 1200(gp)<br>    |
|  96|[0x80003800]<br>0xFFF8000800041000|- rs2_val == 268435456<br> - rs1_h2_val == 8<br>                                                                                                                                                                                          |[0x800013e4]:KSLRA16 t6, t5, t4<br> [0x800013e8]:sd t6, 1216(gp)<br>    |
|  97|[0x80003810]<br>0x01001000AAAA8000|- rs2_val == 33554432<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                      |[0x80001408]:KSLRA16 t6, t5, t4<br> [0x8000140c]:sd t6, 1232(gp)<br>    |
|  98|[0x80003820]<br>0x1FFFFFFCFBFF0020|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                 |[0x8000143c]:KSLRA16 t6, t5, t4<br> [0x80001440]:sd t6, 1248(gp)<br>    |
|  99|[0x80003830]<br>0xFFBFFFFE00080800|- rs2_val == 140737488355328<br>                                                                                                                                                                                                          |[0x80001468]:KSLRA16 t6, t5, t4<br> [0x8000146c]:sd t6, 1264(gp)<br>    |
| 100|[0x80003840]<br>0xFF7FEFFFFF7FFEFF|- rs1_h2_val == -8193<br> - rs1_h1_val == -257<br>                                                                                                                                                                                        |[0x80001498]:KSLRA16 t6, t5, t4<br> [0x8000149c]:sd t6, 1280(gp)<br>    |
| 101|[0x80003850]<br>0xFFF810000040FFBF|- rs2_val == 70368744177664<br>                                                                                                                                                                                                           |[0x800014c0]:KSLRA16 t6, t5, t4<br> [0x800014c4]:sd t6, 1296(gp)<br>    |
| 102|[0x80003860]<br>0x0006AAAAFFFF0000|- rs2_val == 35184372088832<br>                                                                                                                                                                                                           |[0x800014e8]:KSLRA16 t6, t5, t4<br> [0x800014ec]:sd t6, 1312(gp)<br>    |
| 103|[0x80003870]<br>0xBFFFFFF800027FFF|- rs2_val == 17592186044416<br>                                                                                                                                                                                                           |[0x80001514]:KSLRA16 t6, t5, t4<br> [0x80001518]:sd t6, 1328(gp)<br>    |
| 104|[0x80003880]<br>0xFBFF0002FFEFFF7F|- rs1_h1_val == -33<br>                                                                                                                                                                                                                   |[0x80001544]:KSLRA16 t6, t5, t4<br> [0x80001548]:sd t6, 1344(gp)<br>    |
| 105|[0x80003890]<br>0xF7FFFFDFFFFAFBFF|- rs2_val == 8796093022208<br>                                                                                                                                                                                                            |[0x80001570]:KSLRA16 t6, t5, t4<br> [0x80001574]:sd t6, 1360(gp)<br>    |
| 106|[0x800038a0]<br>0xFFFCAAAAFFF7AAAA|- rs2_val == 4398046511104<br>                                                                                                                                                                                                            |[0x8000159c]:KSLRA16 t6, t5, t4<br> [0x800015a0]:sd t6, 1376(gp)<br>    |
| 107|[0x800038b0]<br>0xFBFFFEFFFFF61000|- rs2_val == 2199023255552<br>                                                                                                                                                                                                            |[0x800015c4]:KSLRA16 t6, t5, t4<br> [0x800015c8]:sd t6, 1392(gp)<br>    |
| 108|[0x800038c0]<br>0x40007FFF00020005|- rs2_val == 1099511627776<br>                                                                                                                                                                                                            |[0x800015f0]:KSLRA16 t6, t5, t4<br> [0x800015f4]:sd t6, 1408(gp)<br>    |
| 109|[0x800038d0]<br>0x0004F7FF2000F7FF|- rs2_val == 549755813888<br>                                                                                                                                                                                                             |[0x8000161c]:KSLRA16 t6, t5, t4<br> [0x80001620]:sd t6, 1424(gp)<br>    |
| 110|[0x800038e0]<br>0x800008000006FFF9|- rs2_val == 274877906944<br>                                                                                                                                                                                                             |[0x80001648]:KSLRA16 t6, t5, t4<br> [0x8000164c]:sd t6, 1440(gp)<br>    |
| 111|[0x800038f0]<br>0xDFFF00050100AAAA|- rs2_val == 137438953472<br> - rs1_h1_val == 256<br>                                                                                                                                                                                     |[0x8000167c]:KSLRA16 t6, t5, t4<br> [0x80001680]:sd t6, 1456(gp)<br>    |
| 112|[0x80003900]<br>0x5555FFF680000040|- rs2_val == 68719476736<br>                                                                                                                                                                                                              |[0x800016a8]:KSLRA16 t6, t5, t4<br> [0x800016ac]:sd t6, 1472(gp)<br>    |
| 113|[0x80003910]<br>0xFFF8004000000002|- rs2_val == 34359738368<br>                                                                                                                                                                                                              |[0x800016cc]:KSLRA16 t6, t5, t4<br> [0x800016d0]:sd t6, 1488(gp)<br>    |
| 114|[0x80003920]<br>0xFFFB02003FFF8000|- rs2_val == 8589934592<br>                                                                                                                                                                                                               |[0x800016f4]:KSLRA16 t6, t5, t4<br> [0x800016f8]:sd t6, 1504(gp)<br>    |
| 115|[0x80003930]<br>0x7FFF20003FFF8000|- rs2_val == 4294967296<br>                                                                                                                                                                                                               |[0x80001724]:KSLRA16 t6, t5, t4<br> [0x80001728]:sd t6, 1520(gp)<br>    |
| 116|[0x80003940]<br>0xFFFDFFEF80000007|- rs2_val == 2147483648<br>                                                                                                                                                                                                               |[0x80001748]:KSLRA16 t6, t5, t4<br> [0x8000174c]:sd t6, 1536(gp)<br>    |
| 117|[0x80003950]<br>0x3FFFFFBFFFF80007|- rs2_val == 1073741824<br>                                                                                                                                                                                                               |[0x80001770]:KSLRA16 t6, t5, t4<br> [0x80001774]:sd t6, 1552(gp)<br>    |
| 118|[0x80003960]<br>0xC0000200FFF60006|- rs2_val == 536870912<br>                                                                                                                                                                                                                |[0x80001798]:KSLRA16 t6, t5, t4<br> [0x8000179c]:sd t6, 1568(gp)<br>    |
| 119|[0x80003970]<br>0x10000100FFFB0200|- rs2_val == 134217728<br> - rs1_h1_val == -5<br>                                                                                                                                                                                         |[0x800017c0]:KSLRA16 t6, t5, t4<br> [0x800017c4]:sd t6, 1584(gp)<br>    |
| 120|[0x80003980]<br>0x000700060002F7FF|- rs2_val == 67108864<br>                                                                                                                                                                                                                 |[0x800017e8]:KSLRA16 t6, t5, t4<br> [0x800017ec]:sd t6, 1600(gp)<br>    |
| 121|[0x80003990]<br>0x55550040DFFF0005|- rs2_val == 16777216<br>                                                                                                                                                                                                                 |[0x80001818]:KSLRA16 t6, t5, t4<br> [0x8000181c]:sd t6, 1616(gp)<br>    |
| 122|[0x800039a0]<br>0x0009FF7F0080EFFF|- rs2_val == 8388608<br>                                                                                                                                                                                                                  |[0x80001840]:KSLRA16 t6, t5, t4<br> [0x80001844]:sd t6, 1632(gp)<br>    |
| 123|[0x800039b0]<br>0x20002000FFDF0200|- rs2_val == 4194304<br>                                                                                                                                                                                                                  |[0x80001868]:KSLRA16 t6, t5, t4<br> [0x8000186c]:sd t6, 1648(gp)<br>    |
| 124|[0x800039c0]<br>0xDFFFF7FFFFDF7FFF|- rs2_val == 2097152<br>                                                                                                                                                                                                                  |[0x80001890]:KSLRA16 t6, t5, t4<br> [0x80001894]:sd t6, 1664(gp)<br>    |
| 125|[0x800039d0]<br>0xFFEFBFFFFFF90800|- rs2_val == 1048576<br>                                                                                                                                                                                                                  |[0x800018b4]:KSLRA16 t6, t5, t4<br> [0x800018b8]:sd t6, 1680(gp)<br>    |
| 126|[0x800039e0]<br>0xFFFAC0008000FFFE|- rs2_val == 262144<br>                                                                                                                                                                                                                   |[0x800018dc]:KSLRA16 t6, t5, t4<br> [0x800018e0]:sd t6, 1696(gp)<br>    |
| 127|[0x800039f0]<br>0xFFF700030010FFFA|- rs2_val == 131072<br>                                                                                                                                                                                                                   |[0x80001904]:KSLRA16 t6, t5, t4<br> [0x80001908]:sd t6, 1712(gp)<br>    |
| 128|[0x80003a00]<br>0xF7FFFFF68000FBFF|- rs2_val == 65536<br>                                                                                                                                                                                                                    |[0x8000192c]:KSLRA16 t6, t5, t4<br> [0x80001930]:sd t6, 1728(gp)<br>    |
| 129|[0x80003a10]<br>0x1000FFF800000040|- rs2_val == 32768<br>                                                                                                                                                                                                                    |[0x8000194c]:KSLRA16 t6, t5, t4<br> [0x80001950]:sd t6, 1744(gp)<br>    |
| 130|[0x80003a20]<br>0x5555004000060003|- rs2_val == 16384<br>                                                                                                                                                                                                                    |[0x80001974]:KSLRA16 t6, t5, t4<br> [0x80001978]:sd t6, 1760(gp)<br>    |
| 131|[0x80003a30]<br>0x0009400008003FFF|- rs2_val == 8192<br>                                                                                                                                                                                                                     |[0x8000199c]:KSLRA16 t6, t5, t4<br> [0x800019a0]:sd t6, 1776(gp)<br>    |
| 132|[0x80003a40]<br>0xFFFD00040001FFFA|- rs2_val == 4096<br>                                                                                                                                                                                                                     |[0x800019c4]:KSLRA16 t6, t5, t4<br> [0x800019c8]:sd t6, 1792(gp)<br>    |
| 133|[0x80003a50]<br>0x00020002FFDF0004|- rs2_val == 2048<br>                                                                                                                                                                                                                     |[0x800019f0]:KSLRA16 t6, t5, t4<br> [0x800019f4]:sd t6, 1808(gp)<br>    |
| 134|[0x80003a60]<br>0xFFF6000700090020|- rs2_val == 1024<br>                                                                                                                                                                                                                     |[0x80001a18]:KSLRA16 t6, t5, t4<br> [0x80001a1c]:sd t6, 1824(gp)<br>    |
| 135|[0x80003a70]<br>0x5555FFDFFFFC0400|- rs2_val == 256<br>                                                                                                                                                                                                                      |[0x80001a40]:KSLRA16 t6, t5, t4<br> [0x80001a44]:sd t6, 1840(gp)<br>    |
| 136|[0x80003a80]<br>0x000300020080FFDF|- rs2_val == 32<br>                                                                                                                                                                                                                       |[0x80001a68]:KSLRA16 t6, t5, t4<br> [0x80001a6c]:sd t6, 1856(gp)<br>    |
| 137|[0x80003a90]<br>0xFFFFFFFF00000000|- rs2_val == 16<br>                                                                                                                                                                                                                       |[0x80001a90]:KSLRA16 t6, t5, t4<br> [0x80001a94]:sd t6, 1872(gp)<br>    |
| 138|[0x80003aa0]<br>0xFFEF4000EFFFEFFF|- rs2_val == 512<br>                                                                                                                                                                                                                      |[0x80001ab8]:KSLRA16 t6, t5, t4<br> [0x80001abc]:sd t6, 1888(gp)<br>    |
| 139|[0x80003ad0]<br>0xFEFFFEFF0004F7FF|- rs2_val == -576460752303423489<br>                                                                                                                                                                                                      |[0x80001b58]:KSLRA16 t6, t5, t4<br> [0x80001b5c]:sd t6, 1936(gp)<br>    |
