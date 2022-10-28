
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001cb0')]      |
| SIG_REGION                | [('0x80003210', '0x80003b50', '296 dwords')]      |
| COV_LABELS                | kslra16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra16.u-01.S    |
| Total Number of coverpoints| 382     |
| Total Coverpoints Hit     | 376      |
| Total Signature Updates   | 294      |
| STAT1                     | 143      |
| STAT2                     | 4      |
| STAT3                     | 1     |
| STAT4                     | 147     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015a8]:KSLRA16_U t6, t5, t4
      [0x800015ac]:sd t6, 1408(t1)
 -- Signature Address: 0x800038a0 Data: 0x00032AAB0005000A
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -2305843009213693953
      - rs1_h2_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bcc]:KSLRA16_U t6, t5, t4
      [0x80001bd0]:sd t6, 2016(t1)
 -- Signature Address: 0x80003b00 Data: 0x00000010FFF80000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6148914691236517205
      - rs1_h3_val == 128
      - rs1_h2_val == 32767
      - rs1_h1_val == 49151
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001c38]:KSLRA16_U t6, t5, t4
      [0x80001c3c]:sd t6, 0(t1)
 -- Signature Address: 0x80003b20 Data: 0x000610002000C000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -2251799813685249
      - rs1_h2_val == 8192
      - rs1_h1_val == 16384
      - rs1_h0_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ca0]:KSLRA16_U t6, t5, t4
      [0x80001ca4]:sd t6, 16(t1)
 -- Signature Address: 0x80003b40 Data: 0x0040FFC000040002
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -68719476737
      - rs1_h3_val == 128
      - rs1_h2_val == 65407
      - rs1_h1_val == 8






```

## Details of STAT3

```
[0x80001c00]:KSLRA16_U t6, t5, t4
[0x80001c04]:addi t1, t1, 2032
[0x80001c08]:sd t6, 2032(t1)
[0x80001c0c]:sd t5, 2040(t1)
[0x80001c10]:auipc t1, 2
[0x80001c14]:addi t1, t1, 3856
[0x80001c18]:lui t5, 712
[0x80001c1c]:addiw t5, t5, 1
[0x80001c20]:slli t5, t5, 15
[0x80001c24]:addi t5, t5, 1
[0x80001c28]:slli t5, t5, 15
[0x80001c2c]:addiw t4, zero, 4095
[0x80001c30]:slli t4, t4, 51
[0x80001c34]:addi t4, t4, 4095



```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x16', 'rs2 : x16', 'rd : x21', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_h3_val == 21845', 'rs1_h2_val == 21845', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800003dc]:KSLRA16_U s5, a6, a6
	-[0x800003e0]:sd s5, 0(gp)
Current Store : [0x800003e4] : sd a6, 8(gp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x18', 'rs2 : x18', 'rd : x18', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_h3_val == 32767', 'rs1_h2_val == 65535', 'rs1_h1_val == 65535', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000410]:KSLRA16_U s2, s2, s2
	-[0x80000414]:sd s2, 16(gp)
Current Store : [0x80000418] : sd s2, 24(gp) -- Store: [0x80003228]:0x4000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x4', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -4611686018427387905', 'rs1_h3_val == 0', 'rs1_h2_val == 8192', 'rs1_h1_val == 65471', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000043c]:KSLRA16_U tp, t0, ra
	-[0x80000440]:sd tp, 32(gp)
Current Store : [0x80000444] : sd t0, 40(gp) -- Store: [0x80003238]:0x00002000FFBF1000




Last Coverpoint : ['rs1 : x7', 'rs2 : x11', 'rd : x7', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_h2_val == 64', 'rs1_h1_val == 8', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000046c]:KSLRA16_U t2, t2, a1
	-[0x80000470]:sd t2, 48(gp)
Current Store : [0x80000474] : sd t2, 56(gp) -- Store: [0x80003248]:0x0009002000040008




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rd : x15', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_h3_val == 4096', 'rs1_h2_val == 65407', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x800004a4]:KSLRA16_U a5, t1, a5
	-[0x800004a8]:sd a5, 64(gp)
Current Store : [0x800004ac] : sd t1, 72(gp) -- Store: [0x80003258]:0x1000FF7F5555FEFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x12', 'rs2_val == -576460752303423489', 'rs1_h3_val == 8', 'rs1_h2_val == 49151', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x800004cc]:KSLRA16_U a2, ra, s5
	-[0x800004d0]:sd a2, 80(gp)
Current Store : [0x800004d4] : sd ra, 88(gp) -- Store: [0x80003268]:0x0008BFFFBFFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x12', 'rd : x9', 'rs2_val == -288230376151711745', 'rs1_h3_val == 128', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800004fc]:KSLRA16_U s1, s5, a2
	-[0x80000500]:sd s1, 96(gp)
Current Store : [0x80000504] : sd s5, 104(gp) -- Store: [0x80003278]:0x00800009000E0100




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x25', 'rs2_val == -144115188075855873', 'rs1_h3_val == 65535']
Last Code Sequence : 
	-[0x8000052c]:KSLRA16_U s9, sp, s1
	-[0x80000530]:sd s9, 112(gp)
Current Store : [0x80000534] : sd sp, 120(gp) -- Store: [0x80003288]:0xFFFF0009FFBF0009




Last Coverpoint : ['rs1 : x26', 'rs2 : x7', 'rd : x20', 'rs2_val == -72057594037927937', 'rs1_h3_val == 61439', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000055c]:KSLRA16_U s4, s10, t2
	-[0x80000560]:sd s4, 128(gp)
Current Store : [0x80000564] : sd s10, 136(gp) -- Store: [0x80003298]:0xEFFF001100130002




Last Coverpoint : ['rs1 : x20', 'rs2 : x13', 'rd : x17', 'rs2_val == -36028797018963969', 'rs1_h3_val == 65534', 'rs1_h2_val == 63487', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000584]:KSLRA16_U a7, s4, a3
	-[0x80000588]:sd a7, 144(gp)
Current Store : [0x8000058c] : sd s4, 152(gp) -- Store: [0x800032a8]:0xFFFEF7FF01000006




Last Coverpoint : ['rs1 : x8', 'rs2 : x20', 'rd : x6', 'rs2_val == -18014398509481985', 'rs1_h2_val == 2', 'rs1_h1_val == 32767', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005b4]:KSLRA16_U t1, fp, s4
	-[0x800005b8]:sd t1, 160(gp)
Current Store : [0x800005bc] : sd fp, 168(gp) -- Store: [0x800032b8]:0xEFFF00027FFF0200




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x24', 'rs2_val == -9007199254740993', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x800005dc]:KSLRA16_U s8, a1, s3
	-[0x800005e0]:sd s8, 176(gp)
Current Store : [0x800005e4] : sd a1, 184(gp) -- Store: [0x800032c8]:0xFFFF00090007FF7F




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x5', 'rs2_val == -4503599627370497', 'rs1_h3_val == 32', 'rs1_h2_val == 1', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x8000060c]:KSLRA16_U t0, t4, t6
	-[0x80000610]:sd t0, 192(gp)
Current Store : [0x80000614] : sd t4, 200(gp) -- Store: [0x800032d8]:0x00200001AAAA0010




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x0', 'rs2_val == -2251799813685249', 'rs1_h1_val == 16384', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000638]:KSLRA16_U zero, a7, t1
	-[0x8000063c]:sd zero, 208(gp)
Current Store : [0x80000640] : sd a7, 216(gp) -- Store: [0x800032e8]:0x000B200040008000




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x16', 'rs2_val == -1125899906842625', 'rs1_h3_val == 1024', 'rs1_h2_val == 1024', 'rs1_h1_val == 61439', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000668]:KSLRA16_U a6, a0, a4
	-[0x8000066c]:sd a6, 224(gp)
Current Store : [0x80000670] : sd a0, 232(gp) -- Store: [0x800032f8]:0x04000400EFFFDFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x19', 'rs2_val == -562949953421313', 'rs1_h2_val == 16', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000698]:KSLRA16_U s3, t3, s9
	-[0x8000069c]:sd s3, 240(gp)
Current Store : [0x800006a0] : sd t3, 248(gp) -- Store: [0x80003308]:0x000C0010FFFF0008




Last Coverpoint : ['rs1 : x27', 'rs2 : x0', 'rd : x28', 'rs1_h3_val == 64511', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800006c0]:KSLRA16_U t3, s11, zero
	-[0x800006c4]:sd t3, 256(gp)
Current Store : [0x800006c8] : sd s11, 264(gp) -- Store: [0x80003318]:0xFBFF0007BFFF0020




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x8', 'rs2_val == -140737488355329', 'rs1_h2_val == 2048', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x800006f4]:KSLRA16_U fp, a3, gp
	-[0x800006f8]:sd fp, 0(t1)
Current Store : [0x800006fc] : sd a3, 8(t1) -- Store: [0x80003328]:0x00070800DFFF8000




Last Coverpoint : ['rs1 : x24', 'rs2 : x29', 'rd : x1', 'rs2_val == -70368744177665', 'rs1_h1_val == 65519', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x8000071c]:KSLRA16_U ra, s8, t4
	-[0x80000720]:sd ra, 16(t1)
Current Store : [0x80000724] : sd s8, 24(t1) -- Store: [0x80003338]:0x0006000FFFEFFFBF




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x11', 'rs2_val == -35184372088833', 'rs1_h3_val == 65471', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x8000074c]:KSLRA16_U a1, tp, s10
	-[0x80000750]:sd a1, 32(t1)
Current Store : [0x80000754] : sd tp, 40(t1) -- Store: [0x80003348]:0xFFBF000BFBFF000A




Last Coverpoint : ['rs1 : x22', 'rs2 : x4', 'rd : x3', 'rs2_val == -17592186044417', 'rs1_h2_val == 57343', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000778]:KSLRA16_U gp, s6, tp
	-[0x8000077c]:sd gp, 48(t1)
Current Store : [0x80000780] : sd s6, 56(t1) -- Store: [0x80003358]:0x0011DFFF00201000




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rd : x29', 'rs2_val == -8796093022209', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800007a4]:KSLRA16_U t4, gp, s8
	-[0x800007a8]:sd t4, 64(t1)
Current Store : [0x800007ac] : sd gp, 72(t1) -- Store: [0x80003368]:0x00050100000E000F




Last Coverpoint : ['rs1 : x12', 'rs2 : x23', 'rd : x27', 'rs2_val == -4398046511105', 'rs1_h3_val == 57343', 'rs1_h1_val == 65407', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x800007dc]:KSLRA16_U s11, a2, s7
	-[0x800007e0]:sd s11, 80(t1)
Current Store : [0x800007e4] : sd a2, 88(t1) -- Store: [0x80003378]:0xDFFFF7FFFF7FF7FF




Last Coverpoint : ['rs1 : x15', 'rs2 : x2', 'rd : x23', 'rs2_val == -2199023255553', 'rs1_h3_val == 2', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000080c]:KSLRA16_U s7, a5, sp
	-[0x80000810]:sd s7, 96(t1)
Current Store : [0x80000814] : sd a5, 104(t1) -- Store: [0x80003388]:0x000200090400FF7F




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x26', 'rs2_val == -1099511627777', 'rs1_h3_val == 65407', 'rs1_h2_val == 65279', 'rs1_h1_val == 512', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000083c]:KSLRA16_U s10, s3, s6
	-[0x80000840]:sd s10, 112(t1)
Current Store : [0x80000844] : sd s3, 120(t1) -- Store: [0x80003398]:0xFF7FFEFF02007FFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x14', 'rs2_val == -549755813889', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x8000086c]:KSLRA16_U a4, s9, t5
	-[0x80000870]:sd a4, 128(t1)
Current Store : [0x80000874] : sd s9, 136(t1) -- Store: [0x800033a8]:0x01000040FFBF0002




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x2', 'rs2_val == -274877906945', 'rs1_h3_val == 65519', 'rs1_h2_val == 8', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000894]:KSLRA16_U sp, s7, t3
	-[0x80000898]:sd sp, 144(t1)
Current Store : [0x8000089c] : sd s7, 152(t1) -- Store: [0x800033b8]:0xFFEF000800400006




Last Coverpoint : ['rs1 : x14', 'rs2 : x27', 'rd : x10', 'rs2_val == -137438953473', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800008c0]:KSLRA16_U a0, a4, s11
	-[0x800008c4]:sd a0, 160(t1)
Current Store : [0x800008c8] : sd a4, 168(t1) -- Store: [0x800033c8]:0xFFEF0008FBFF0000




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rd : x13', 'rs2_val == -68719476737', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800008f0]:KSLRA16_U a3, zero, fp
	-[0x800008f4]:sd a3, 176(t1)
Current Store : [0x800008f8] : sd zero, 184(t1) -- Store: [0x800033d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x10', 'rd : x22', 'rs2_val == -34359738369', 'rs1_h2_val == 61439', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000928]:KSLRA16_U s6, t6, a0
	-[0x8000092c]:sd s6, 192(t1)
Current Store : [0x80000930] : sd t6, 200(t1) -- Store: [0x800033e8]:0x7FFFEFFFDFFF0400




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x31', 'rs2_val == -17179869185', 'rs1_h3_val == 32768', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x80000958]:KSLRA16_U t6, t5, a7
	-[0x8000095c]:sd t6, 208(t1)
Current Store : [0x80000960] : sd t5, 216(t1) -- Store: [0x800033f8]:0x80000800FFF70400




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x30', 'rs2_val == -8589934593', 'rs1_h3_val == 65023', 'rs1_h1_val == 128', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000988]:KSLRA16_U t5, s1, t0
	-[0x8000098c]:sd t5, 224(t1)
Current Store : [0x80000990] : sd s1, 232(t1) -- Store: [0x80003408]:0xFDFF00130080FFFB




Last Coverpoint : ['rs2_val == -4294967297', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x800009b8]:KSLRA16_U t6, t5, t4
	-[0x800009bc]:sd t6, 240(t1)
Current Store : [0x800009c0] : sd t5, 248(t1) -- Store: [0x80003418]:0x000C0020FFBF000D




Last Coverpoint : ['rs2_val == -2147483649', 'rs1_h2_val == 65527', 'rs1_h1_val == 65531', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800009e8]:KSLRA16_U t6, t5, t4
	-[0x800009ec]:sd t6, 256(t1)
Current Store : [0x800009f0] : sd t5, 264(t1) -- Store: [0x80003428]:0x000FFFF7FFFB0080




Last Coverpoint : ['rs2_val == -1073741825']
Last Code Sequence : 
	-[0x80000a14]:KSLRA16_U t6, t5, t4
	-[0x80000a18]:sd t6, 272(t1)
Current Store : [0x80000a1c] : sd t5, 280(t1) -- Store: [0x80003438]:0x000C000700110100




Last Coverpoint : ['rs2_val == -536870913', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000a40]:KSLRA16_U t6, t5, t4
	-[0x80000a44]:sd t6, 288(t1)
Current Store : [0x80000a48] : sd t5, 296(t1) -- Store: [0x80003448]:0x00050011FBFF0001




Last Coverpoint : ['rs2_val == -268435457', 'rs1_h3_val == 65531', 'rs1_h2_val == 65534']
Last Code Sequence : 
	-[0x80000a6c]:KSLRA16_U t6, t5, t4
	-[0x80000a70]:sd t6, 304(t1)
Current Store : [0x80000a74] : sd t5, 312(t1) -- Store: [0x80003458]:0xFFFBFFFE00120100




Last Coverpoint : ['rs2_val == -134217729']
Last Code Sequence : 
	-[0x80000a94]:KSLRA16_U t6, t5, t4
	-[0x80000a98]:sd t6, 320(t1)
Current Store : [0x80000a9c] : sd t5, 328(t1) -- Store: [0x80003468]:0x0400000702000020




Last Coverpoint : ['rs2_val == -67108865', 'rs1_h3_val == 65533', 'rs1_h1_val == 65279']
Last Code Sequence : 
	-[0x80000ac0]:KSLRA16_U t6, t5, t4
	-[0x80000ac4]:sd t6, 336(t1)
Current Store : [0x80000ac8] : sd t5, 344(t1) -- Store: [0x80003478]:0xFFFD0013FEFF000D




Last Coverpoint : ['rs2_val == -33554433']
Last Code Sequence : 
	-[0x80000aec]:KSLRA16_U t6, t5, t4
	-[0x80000af0]:sd t6, 352(t1)
Current Store : [0x80000af4] : sd t5, 360(t1) -- Store: [0x80003488]:0x7FFF000B000D0080




Last Coverpoint : ['rs2_val == -16777217', 'rs1_h2_val == 65531']
Last Code Sequence : 
	-[0x80000b10]:KSLRA16_U t6, t5, t4
	-[0x80000b14]:sd t6, 368(t1)
Current Store : [0x80000b18] : sd t5, 376(t1) -- Store: [0x80003498]:0xFFBFFFFBFBFFFEFF




Last Coverpoint : ['rs2_val == -8388609', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80000b3c]:KSLRA16_U t6, t5, t4
	-[0x80000b40]:sd t6, 384(t1)
Current Store : [0x80000b44] : sd t5, 392(t1) -- Store: [0x800034a8]:0x000400020005000E




Last Coverpoint : ['rs2_val == -4194305']
Last Code Sequence : 
	-[0x80000b68]:KSLRA16_U t6, t5, t4
	-[0x80000b6c]:sd t6, 400(t1)
Current Store : [0x80000b70] : sd t5, 408(t1) -- Store: [0x800034b8]:0x0013000200120080




Last Coverpoint : ['rs2_val == -2097153', 'rs1_h1_val == 63487', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000b94]:KSLRA16_U t6, t5, t4
	-[0x80000b98]:sd t6, 416(t1)
Current Store : [0x80000b9c] : sd t5, 424(t1) -- Store: [0x800034c8]:0x04000013F7FF0004




Last Coverpoint : ['rs2_val == -1048577', 'rs1_h2_val == 128', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000bb8]:KSLRA16_U t6, t5, t4
	-[0x80000bbc]:sd t6, 432(t1)
Current Store : [0x80000bc0] : sd t5, 440(t1) -- Store: [0x800034d8]:0x0013008020000013




Last Coverpoint : ['rs2_val == -524289', 'rs1_h2_val == 65503', 'rs1_h1_val == 2048', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000be8]:KSLRA16_U t6, t5, t4
	-[0x80000bec]:sd t6, 448(t1)
Current Store : [0x80000bf0] : sd t5, 456(t1) -- Store: [0x800034e8]:0xEFFFFFDF0800FBFF




Last Coverpoint : ['rs2_val == -262145']
Last Code Sequence : 
	-[0x80000c14]:KSLRA16_U t6, t5, t4
	-[0x80000c18]:sd t6, 464(t1)
Current Store : [0x80000c1c] : sd t5, 472(t1) -- Store: [0x800034f8]:0xFFFF0009FBFF0200




Last Coverpoint : ['rs2_val == -131073']
Last Code Sequence : 
	-[0x80000c3c]:KSLRA16_U t6, t5, t4
	-[0x80000c40]:sd t6, 480(t1)
Current Store : [0x80000c44] : sd t5, 488(t1) -- Store: [0x80003508]:0x0080FFFF00200100




Last Coverpoint : ['rs2_val == -65537']
Last Code Sequence : 
	-[0x80000c64]:KSLRA16_U t6, t5, t4
	-[0x80000c68]:sd t6, 496(t1)
Current Store : [0x80000c6c] : sd t5, 504(t1) -- Store: [0x80003518]:0x000F0002000D0000




Last Coverpoint : ['rs2_val == -32769']
Last Code Sequence : 
	-[0x80000c88]:KSLRA16_U t6, t5, t4
	-[0x80000c8c]:sd t6, 512(t1)
Current Store : [0x80000c90] : sd t5, 520(t1) -- Store: [0x80003528]:0x0020BFFF08000080




Last Coverpoint : ['rs2_val == -16385', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000cac]:KSLRA16_U t6, t5, t4
	-[0x80000cb0]:sd t6, 528(t1)
Current Store : [0x80000cb4] : sd t5, 536(t1) -- Store: [0x80003538]:0x000DBFFF10000010




Last Coverpoint : ['rs2_val == -8193']
Last Code Sequence : 
	-[0x80000cd8]:KSLRA16_U t6, t5, t4
	-[0x80000cdc]:sd t6, 544(t1)
Current Store : [0x80000ce0] : sd t5, 552(t1) -- Store: [0x80003548]:0x000F000300060007




Last Coverpoint : ['rs2_val == -4097']
Last Code Sequence : 
	-[0x80000d04]:KSLRA16_U t6, t5, t4
	-[0x80000d08]:sd t6, 560(t1)
Current Store : [0x80000d0c] : sd t5, 568(t1) -- Store: [0x80003558]:0x00130005AAAA0020




Last Coverpoint : ['rs2_val == 512', 'rs1_h1_val == 65503', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000d28]:KSLRA16_U t6, t5, t4
	-[0x80000d2c]:sd t6, 576(t1)
Current Store : [0x80000d30] : sd t5, 584(t1) -- Store: [0x80003568]:0x8000FFFBFFDF4000




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000d50]:KSLRA16_U t6, t5, t4
	-[0x80000d54]:sd t6, 592(t1)
Current Store : [0x80000d58] : sd t5, 600(t1) -- Store: [0x80003578]:0x00110020FFEF2000




Last Coverpoint : ['rs2_val == 4611686018427387904', 'rs1_h3_val == 43690', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000d7c]:KSLRA16_U t6, t5, t4
	-[0x80000d80]:sd t6, 608(t1)
Current Store : [0x80000d84] : sd t5, 616(t1) -- Store: [0x80003588]:0xAAAA001000060800




Last Coverpoint : ['rs1_h2_val == 65533', 'rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000db8]:KSLRA16_U t6, t5, t4
	-[0x80000dbc]:sd t6, 624(t1)
Current Store : [0x80000dc0] : sd t5, 632(t1) -- Store: [0x80003598]:0xDFFFFFFD00000100




Last Coverpoint : ['rs2_val == -2049']
Last Code Sequence : 
	-[0x80000ddc]:KSLRA16_U t6, t5, t4
	-[0x80000de0]:sd t6, 640(t1)
Current Store : [0x80000de4] : sd t5, 648(t1) -- Store: [0x800035a8]:0x0100FFFFFBFFFEFF




Last Coverpoint : ['rs2_val == -1025', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80000e04]:KSLRA16_U t6, t5, t4
	-[0x80000e08]:sd t6, 656(t1)
Current Store : [0x80000e0c] : sd t5, 664(t1) -- Store: [0x800035b8]:0x4000EFFF00800002




Last Coverpoint : ['rs2_val == -513']
Last Code Sequence : 
	-[0x80000e2c]:KSLRA16_U t6, t5, t4
	-[0x80000e30]:sd t6, 672(t1)
Current Store : [0x80000e34] : sd t5, 680(t1) -- Store: [0x800035c8]:0x00120012FEFF0006




Last Coverpoint : ['rs2_val == -257', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80000e54]:KSLRA16_U t6, t5, t4
	-[0x80000e58]:sd t6, 688(t1)
Current Store : [0x80000e5c] : sd t5, 696(t1) -- Store: [0x800035d8]:0x10000200000AFEFF




Last Coverpoint : ['rs2_val == -129', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000e74]:KSLRA16_U t6, t5, t4
	-[0x80000e78]:sd t6, 704(t1)
Current Store : [0x80000e7c] : sd t5, 712(t1) -- Store: [0x800035e8]:0x000B0040DFFFFFEF




Last Coverpoint : ['rs2_val == -65', 'rs1_h3_val == 65279', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000e94]:KSLRA16_U t6, t5, t4
	-[0x80000e98]:sd t6, 720(t1)
Current Store : [0x80000e9c] : sd t5, 728(t1) -- Store: [0x800035f8]:0xFEFF400001004000




Last Coverpoint : ['rs2_val == -33', 'rs1_h2_val == 65471', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000ebc]:KSLRA16_U t6, t5, t4
	-[0x80000ec0]:sd t6, 736(t1)
Current Store : [0x80000ec4] : sd t5, 744(t1) -- Store: [0x80003608]:0x0005FFBF0006FFF7




Last Coverpoint : ['rs2_val == -17', 'rs1_h2_val == 32767', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000ee4]:KSLRA16_U t6, t5, t4
	-[0x80000ee8]:sd t6, 752(t1)
Current Store : [0x80000eec] : sd t5, 760(t1) -- Store: [0x80003618]:0x000F7FFF0200FDFF




Last Coverpoint : ['rs2_val == -9', 'rs1_h2_val == 65023']
Last Code Sequence : 
	-[0x80000f04]:KSLRA16_U t6, t5, t4
	-[0x80000f08]:sd t6, 768(t1)
Current Store : [0x80000f0c] : sd t5, 776(t1) -- Store: [0x80003628]:0xFFFDFDFFFFBFFFBF




Last Coverpoint : ['rs2_val == -5', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000f34]:KSLRA16_U t6, t5, t4
	-[0x80000f38]:sd t6, 784(t1)
Current Store : [0x80000f3c] : sd t5, 792(t1) -- Store: [0x80003638]:0x7FFF00042000FFFB




Last Coverpoint : ['rs2_val == -3']
Last Code Sequence : 
	-[0x80000f58]:KSLRA16_U t6, t5, t4
	-[0x80000f5c]:sd t6, 800(t1)
Current Store : [0x80000f60] : sd t5, 808(t1) -- Store: [0x80003648]:0x0020FDFFEFFF4000




Last Coverpoint : ['rs2_val == -2', 'rs1_h3_val == 65527']
Last Code Sequence : 
	-[0x80000f80]:KSLRA16_U t6, t5, t4
	-[0x80000f84]:sd t6, 816(t1)
Current Store : [0x80000f88] : sd t5, 824(t1) -- Store: [0x80003658]:0xFFF70020FFF7000A




Last Coverpoint : ['rs2_val == -9223372036854775808']
Last Code Sequence : 
	-[0x80000fac]:KSLRA16_U t6, t5, t4
	-[0x80000fb0]:sd t6, 832(t1)
Current Store : [0x80000fb4] : sd t5, 840(t1) -- Store: [0x80003668]:0x0005FFFD02000800




Last Coverpoint : ['rs2_val == 2305843009213693952', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x80000fd8]:KSLRA16_U t6, t5, t4
	-[0x80000fdc]:sd t6, 848(t1)
Current Store : [0x80000fe0] : sd t5, 856(t1) -- Store: [0x80003678]:0x00100005FF7F0200




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80001000]:KSLRA16_U t6, t5, t4
	-[0x80001004]:sd t6, 864(t1)
Current Store : [0x80001008] : sd t5, 872(t1) -- Store: [0x80003688]:0x0011FFDF000F4000




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x8000102c]:KSLRA16_U t6, t5, t4
	-[0x80001030]:sd t6, 880(t1)
Current Store : [0x80001034] : sd t5, 888(t1) -- Store: [0x80003698]:0x0020FFFE00070001




Last Coverpoint : ['rs2_val == 288230376151711744']
Last Code Sequence : 
	-[0x80001058]:KSLRA16_U t6, t5, t4
	-[0x8000105c]:sd t6, 896(t1)
Current Store : [0x80001060] : sd t5, 904(t1) -- Store: [0x800036a8]:0x000D0007000A0003




Last Coverpoint : ['rs2_val == 144115188075855872', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001084]:KSLRA16_U t6, t5, t4
	-[0x80001088]:sd t6, 912(t1)
Current Store : [0x8000108c] : sd t5, 920(t1) -- Store: [0x800036b8]:0x0005FEFF00110040




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x800010b0]:KSLRA16_U t6, t5, t4
	-[0x800010b4]:sd t6, 928(t1)
Current Store : [0x800010b8] : sd t5, 936(t1) -- Store: [0x800036c8]:0x4000FF7F01000005




Last Coverpoint : ['rs2_val == 36028797018963968', 'rs1_h2_val == 32768']
Last Code Sequence : 
	-[0x800010dc]:KSLRA16_U t6, t5, t4
	-[0x800010e0]:sd t6, 944(t1)
Current Store : [0x800010e4] : sd t5, 952(t1) -- Store: [0x800036d8]:0xFFFB8000FF7F0009




Last Coverpoint : ['rs2_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001108]:KSLRA16_U t6, t5, t4
	-[0x8000110c]:sd t6, 960(t1)
Current Store : [0x80001110] : sd t5, 968(t1) -- Store: [0x800036e8]:0xFEFF0000FFDF000F




Last Coverpoint : ['rs2_val == 9007199254740992', 'rs1_h3_val == 63487']
Last Code Sequence : 
	-[0x80001134]:KSLRA16_U t6, t5, t4
	-[0x80001138]:sd t6, 976(t1)
Current Store : [0x8000113c] : sd t5, 984(t1) -- Store: [0x800036f8]:0xF7FF08000000FFEF




Last Coverpoint : ['rs2_val == 4503599627370496', 'rs1_h3_val == 2048', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80001160]:KSLRA16_U t6, t5, t4
	-[0x80001164]:sd t6, 992(t1)
Current Store : [0x80001168] : sd t5, 1000(t1) -- Store: [0x80003708]:0x0800FFFE5555FFFE




Last Coverpoint : ['rs2_val == 2251799813685248', 'rs1_h3_val == 64']
Last Code Sequence : 
	-[0x80001188]:KSLRA16_U t6, t5, t4
	-[0x8000118c]:sd t6, 1008(t1)
Current Store : [0x80001190] : sd t5, 1016(t1) -- Store: [0x80003718]:0x0040FFFB000C4000




Last Coverpoint : ['rs2_val == 1125899906842624', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800011b0]:KSLRA16_U t6, t5, t4
	-[0x800011b4]:sd t6, 1024(t1)
Current Store : [0x800011b8] : sd t5, 1032(t1) -- Store: [0x80003728]:0x002008000010000B




Last Coverpoint : ['rs2_val == 562949953421312']
Last Code Sequence : 
	-[0x800011dc]:KSLRA16_U t6, t5, t4
	-[0x800011e0]:sd t6, 1040(t1)
Current Store : [0x800011e4] : sd t5, 1048(t1) -- Store: [0x80003738]:0x40007FFFFFFF0013




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80001208]:KSLRA16_U t6, t5, t4
	-[0x8000120c]:sd t6, 1056(t1)
Current Store : [0x80001210] : sd t5, 1064(t1) -- Store: [0x80003748]:0x000B00800007000B




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80001234]:KSLRA16_U t6, t5, t4
	-[0x80001238]:sd t6, 1072(t1)
Current Store : [0x8000123c] : sd t5, 1080(t1) -- Store: [0x80003758]:0xFFFDFFFBFFBF000A




Last Coverpoint : ['rs2_val == 70368744177664', 'rs1_h3_val == 65503']
Last Code Sequence : 
	-[0x80001260]:KSLRA16_U t6, t5, t4
	-[0x80001264]:sd t6, 1088(t1)
Current Store : [0x80001268] : sd t5, 1096(t1) -- Store: [0x80003768]:0xFFDFEFFF0011FFFB




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x80001294]:KSLRA16_U t6, t5, t4
	-[0x80001298]:sd t6, 1104(t1)
Current Store : [0x8000129c] : sd t5, 1112(t1) -- Store: [0x80003778]:0xDFFF7FFF1000F7FF




Last Coverpoint : ['rs2_val == 17592186044416']
Last Code Sequence : 
	-[0x800012c0]:KSLRA16_U t6, t5, t4
	-[0x800012c4]:sd t6, 1120(t1)
Current Store : [0x800012c8] : sd t5, 1128(t1) -- Store: [0x80003788]:0x0003FF7F0006000F




Last Coverpoint : ['rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x800012ec]:KSLRA16_U t6, t5, t4
	-[0x800012f0]:sd t6, 1136(t1)
Current Store : [0x800012f4] : sd t5, 1144(t1) -- Store: [0x80003798]:0x40000006FFFBDFFF




Last Coverpoint : ['rs2_val == 4398046511104', 'rs1_h3_val == 49151']
Last Code Sequence : 
	-[0x80001318]:KSLRA16_U t6, t5, t4
	-[0x8000131c]:sd t6, 1152(t1)
Current Store : [0x80001320] : sd t5, 1160(t1) -- Store: [0x800037a8]:0xBFFF0080000D0080




Last Coverpoint : ['rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x80001344]:KSLRA16_U t6, t5, t4
	-[0x80001348]:sd t6, 1168(t1)
Current Store : [0x8000134c] : sd t5, 1176(t1) -- Store: [0x800037b8]:0x001200081000FDFF




Last Coverpoint : ['rs2_val == 1', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x8000136c]:KSLRA16_U t6, t5, t4
	-[0x80001370]:sd t6, 1184(t1)
Current Store : [0x80001374] : sd t5, 1192(t1) -- Store: [0x800037c8]:0x0800FFFF0004FFFB




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80001394]:KSLRA16_U t6, t5, t4
	-[0x80001398]:sd t6, 1200(t1)
Current Store : [0x8000139c] : sd t5, 1208(t1) -- Store: [0x800037d8]:0x5555000F00110010




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x800013c0]:KSLRA16_U t6, t5, t4
	-[0x800013c4]:sd t6, 1216(t1)
Current Store : [0x800013c8] : sd t5, 1224(t1) -- Store: [0x800037e8]:0x20000006FFBF0009




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800013e8]:KSLRA16_U t6, t5, t4
	-[0x800013ec]:sd t6, 1232(t1)
Current Store : [0x800013f0] : sd t5, 1240(t1) -- Store: [0x800037f8]:0xDFFF01000009FFFB




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x8000140c]:KSLRA16_U t6, t5, t4
	-[0x80001410]:sd t6, 1248(t1)
Current Store : [0x80001414] : sd t5, 1256(t1) -- Store: [0x80003808]:0x000C0001000B2000




Last Coverpoint : ['rs2_val == 1099511627776', 'rs1_h3_val == 512']
Last Code Sequence : 
	-[0x80001438]:KSLRA16_U t6, t5, t4
	-[0x8000143c]:sd t6, 1264(t1)
Current Store : [0x80001440] : sd t5, 1272(t1) -- Store: [0x80003818]:0x0200FFFE000AFFFE




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80001460]:KSLRA16_U t6, t5, t4
	-[0x80001464]:sd t6, 1280(t1)
Current Store : [0x80001468] : sd t5, 1288(t1) -- Store: [0x80003828]:0x000800060007FF7F




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80001488]:KSLRA16_U t6, t5, t4
	-[0x8000148c]:sd t6, 1296(t1)
Current Store : [0x80001490] : sd t5, 1304(t1) -- Store: [0x80003838]:0x000100010200FFFD




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x800014b0]:KSLRA16_U t6, t5, t4
	-[0x800014b4]:sd t6, 1312(t1)
Current Store : [0x800014b8] : sd t5, 1320(t1) -- Store: [0x80003848]:0xFFBF000C0003FBFF




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x800014d8]:KSLRA16_U t6, t5, t4
	-[0x800014dc]:sd t6, 1328(t1)
Current Store : [0x800014e0] : sd t5, 1336(t1) -- Store: [0x80003858]:0xFEFFFF7F0008FFFF




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x80001500]:KSLRA16_U t6, t5, t4
	-[0x80001504]:sd t6, 1344(t1)
Current Store : [0x80001508] : sd t5, 1352(t1) -- Store: [0x80003868]:0x010000800011FBFF




Last Coverpoint : ['rs1_h2_val == 43690']
Last Code Sequence : 
	-[0x80001520]:KSLRA16_U t6, t5, t4
	-[0x80001524]:sd t6, 1360(t1)
Current Store : [0x80001528] : sd t5, 1368(t1) -- Store: [0x80003878]:0x0007AAAA10000008




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x80001548]:KSLRA16_U t6, t5, t4
	-[0x8000154c]:sd t6, 1376(t1)
Current Store : [0x80001550] : sd t5, 1384(t1) -- Store: [0x80003888]:0xFFDF000B0080FFFF




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x80001578]:KSLRA16_U t6, t5, t4
	-[0x8000157c]:sd t6, 1392(t1)
Current Store : [0x80001580] : sd t5, 1400(t1) -- Store: [0x80003898]:0x0100040001000800




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -2305843009213693953', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x800015a8]:KSLRA16_U t6, t5, t4
	-[0x800015ac]:sd t6, 1408(t1)
Current Store : [0x800015b0] : sd t5, 1416(t1) -- Store: [0x800038a8]:0x0006555500090013




Last Coverpoint : ['rs1_h2_val == 64511']
Last Code Sequence : 
	-[0x800015d4]:KSLRA16_U t6, t5, t4
	-[0x800015d8]:sd t6, 1424(t1)
Current Store : [0x800015dc] : sd t5, 1432(t1) -- Store: [0x800038b8]:0x0009FBFFFFFFF7FF




Last Coverpoint : ['rs2_val == 8192', 'rs1_h2_val == 65519']
Last Code Sequence : 
	-[0x800015fc]:KSLRA16_U t6, t5, t4
	-[0x80001600]:sd t6, 1440(t1)
Current Store : [0x80001604] : sd t5, 1448(t1) -- Store: [0x800038c8]:0x000CFFEF000E000D




Last Coverpoint : ['rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001628]:KSLRA16_U t6, t5, t4
	-[0x8000162c]:sd t6, 1456(t1)
Current Store : [0x80001630] : sd t5, 1464(t1) -- Store: [0x800038d8]:0xFFF7100000100011




Last Coverpoint : ['rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x80001654]:KSLRA16_U t6, t5, t4
	-[0x80001658]:sd t6, 1472(t1)
Current Store : [0x8000165c] : sd t5, 1480(t1) -- Store: [0x800038e8]:0xEFFF0008FDFFFFBF




Last Coverpoint : ['rs2_val == 137438953472', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x80001680]:KSLRA16_U t6, t5, t4
	-[0x80001684]:sd t6, 1488(t1)
Current Store : [0x80001688] : sd t5, 1496(t1) -- Store: [0x800038f8]:0xAAAA0400FFFD0006




Last Coverpoint : ['rs2_val == 549755813888', 'rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x800016ac]:KSLRA16_U t6, t5, t4
	-[0x800016b0]:sd t6, 1504(t1)
Current Store : [0x800016b4] : sd t5, 1512(t1) -- Store: [0x80003908]:0x4000FEFF80000004




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x800016d0]:KSLRA16_U t6, t5, t4
	-[0x800016d4]:sd t6, 1520(t1)
Current Store : [0x800016d8] : sd t5, 1528(t1) -- Store: [0x80003918]:0x000F7FFFFFFEFDFF




Last Coverpoint : ['rs2_val == 274877906944', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x800016fc]:KSLRA16_U t6, t5, t4
	-[0x80001700]:sd t6, 1536(t1)
Current Store : [0x80001704] : sd t5, 1544(t1) -- Store: [0x80003928]:0x200000080000AAAA




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x80001724]:KSLRA16_U t6, t5, t4
	-[0x80001728]:sd t6, 1552(t1)
Current Store : [0x8000172c] : sd t5, 1560(t1) -- Store: [0x80003938]:0x000A0800000DFFFB




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001748]:KSLRA16_U t6, t5, t4
	-[0x8000174c]:sd t6, 1568(t1)
Current Store : [0x80001750] : sd t5, 1576(t1) -- Store: [0x80003948]:0x000E00134000000B




Last Coverpoint : ['rs2_val == 17179869184']
Last Code Sequence : 
	-[0x80001774]:KSLRA16_U t6, t5, t4
	-[0x80001778]:sd t6, 1584(t1)
Current Store : [0x8000177c] : sd t5, 1592(t1) -- Store: [0x80003958]:0x000D0011EFFF0003




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800017a0]:KSLRA16_U t6, t5, t4
	-[0x800017a4]:sd t6, 1600(t1)
Current Store : [0x800017a8] : sd t5, 1608(t1) -- Store: [0x80003968]:0xFFFBFFFEFEFF0800




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x800017c8]:KSLRA16_U t6, t5, t4
	-[0x800017cc]:sd t6, 1616(t1)
Current Store : [0x800017d0] : sd t5, 1624(t1) -- Store: [0x80003978]:0x00132000000DFEFF




Last Coverpoint : ['rs2_val == 2147483648']
Last Code Sequence : 
	-[0x800017f0]:KSLRA16_U t6, t5, t4
	-[0x800017f4]:sd t6, 1632(t1)
Current Store : [0x800017f8] : sd t5, 1640(t1) -- Store: [0x80003988]:0x0100000000120006




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80001810]:KSLRA16_U t6, t5, t4
	-[0x80001814]:sd t6, 1648(t1)
Current Store : [0x80001818] : sd t5, 1656(t1) -- Store: [0x80003998]:0x0000000700120100




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80001838]:KSLRA16_U t6, t5, t4
	-[0x8000183c]:sd t6, 1664(t1)
Current Store : [0x80001840] : sd t5, 1672(t1) -- Store: [0x800039a8]:0x000D000300405555




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x80001860]:KSLRA16_U t6, t5, t4
	-[0x80001864]:sd t6, 1680(t1)
Current Store : [0x80001868] : sd t5, 1688(t1) -- Store: [0x800039b8]:0x0000F7FFF7FFF7FF




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x80001888]:KSLRA16_U t6, t5, t4
	-[0x8000188c]:sd t6, 1696(t1)
Current Store : [0x80001890] : sd t5, 1704(t1) -- Store: [0x800039c8]:0x0400FBFF0012FDFF




Last Coverpoint : ['rs2_val == 33554432', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800018b0]:KSLRA16_U t6, t5, t4
	-[0x800018b4]:sd t6, 1712(t1)
Current Store : [0x800018b8] : sd t5, 1720(t1) -- Store: [0x800039d8]:0x0005FFEF0001AAAA




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x800018d8]:KSLRA16_U t6, t5, t4
	-[0x800018dc]:sd t6, 1728(t1)
Current Store : [0x800018e0] : sd t5, 1736(t1) -- Store: [0x800039e8]:0x20000400000E0007




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80001904]:KSLRA16_U t6, t5, t4
	-[0x80001908]:sd t6, 1744(t1)
Current Store : [0x8000190c] : sd t5, 1752(t1) -- Store: [0x800039f8]:0x000CFFFD0002000D




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x8000192c]:KSLRA16_U t6, t5, t4
	-[0x80001930]:sd t6, 1760(t1)
Current Store : [0x80001934] : sd t5, 1768(t1) -- Store: [0x80003a08]:0x0400000C0002AAAA




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80001950]:KSLRA16_U t6, t5, t4
	-[0x80001954]:sd t6, 1776(t1)
Current Store : [0x80001958] : sd t5, 1784(t1) -- Store: [0x80003a18]:0x0002080000040008




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x80001978]:KSLRA16_U t6, t5, t4
	-[0x8000197c]:sd t6, 1792(t1)
Current Store : [0x80001980] : sd t5, 1800(t1) -- Store: [0x80003a28]:0xEFFF0005000BFFFD




Last Coverpoint : ['rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x800019a0]:KSLRA16_U t6, t5, t4
	-[0x800019a4]:sd t6, 1808(t1)
Current Store : [0x800019a8] : sd t5, 1816(t1) -- Store: [0x80003a38]:0x020000041000BFFF




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x800019c8]:KSLRA16_U t6, t5, t4
	-[0x800019cc]:sd t6, 1824(t1)
Current Store : [0x800019d0] : sd t5, 1832(t1) -- Store: [0x80003a48]:0x000C0011FFFD000A




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x800019e8]:KSLRA16_U t6, t5, t4
	-[0x800019ec]:sd t6, 1840(t1)
Current Store : [0x800019f0] : sd t5, 1848(t1) -- Store: [0x80003a58]:0x000A100004000012




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80001a18]:KSLRA16_U t6, t5, t4
	-[0x80001a1c]:sd t6, 1856(t1)
Current Store : [0x80001a20] : sd t5, 1864(t1) -- Store: [0x80003a68]:0xF7FFAAAAF7FFAAAA




Last Coverpoint : ['rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80001a44]:KSLRA16_U t6, t5, t4
	-[0x80001a48]:sd t6, 1872(t1)
Current Store : [0x80001a4c] : sd t5, 1880(t1) -- Store: [0x80003a78]:0x08007FFF0000EFFF




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x80001a6c]:KSLRA16_U t6, t5, t4
	-[0x80001a70]:sd t6, 1888(t1)
Current Store : [0x80001a74] : sd t5, 1896(t1) -- Store: [0x80003a88]:0xFF7F8000EFFF000B




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80001a94]:KSLRA16_U t6, t5, t4
	-[0x80001a98]:sd t6, 1904(t1)
Current Store : [0x80001a9c] : sd t5, 1912(t1) -- Store: [0x80003a98]:0x0005100000060004




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80001abc]:KSLRA16_U t6, t5, t4
	-[0x80001ac0]:sd t6, 1920(t1)
Current Store : [0x80001ac4] : sd t5, 1928(t1) -- Store: [0x80003aa8]:0xAAAAFFFD000FFBFF




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x80001ae4]:KSLRA16_U t6, t5, t4
	-[0x80001ae8]:sd t6, 1936(t1)
Current Store : [0x80001aec] : sd t5, 1944(t1) -- Store: [0x80003ab8]:0x000D00010012FEFF




Last Coverpoint : ['rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80001b10]:KSLRA16_U t6, t5, t4
	-[0x80001b14]:sd t6, 1952(t1)
Current Store : [0x80001b18] : sd t5, 1960(t1) -- Store: [0x80003ac8]:0x0013000E0020FFDF




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001b38]:KSLRA16_U t6, t5, t4
	-[0x80001b3c]:sd t6, 1968(t1)
Current Store : [0x80001b40] : sd t5, 1976(t1) -- Store: [0x80003ad8]:0x7FFF000C00020400




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001b60]:KSLRA16_U t6, t5, t4
	-[0x80001b64]:sd t6, 1984(t1)
Current Store : [0x80001b68] : sd t5, 1992(t1) -- Store: [0x80003ae8]:0xFFFD0800AAAAFF7F




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001b88]:KSLRA16_U t6, t5, t4
	-[0x80001b8c]:sd t6, 2000(t1)
Current Store : [0x80001b90] : sd t5, 2008(t1) -- Store: [0x80003af8]:0xFEFF10000000FFDF




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_h3_val == 128', 'rs1_h2_val == 32767', 'rs1_h1_val == 49151', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001bcc]:KSLRA16_U t6, t5, t4
	-[0x80001bd0]:sd t6, 2016(t1)
Current Store : [0x80001bd4] : sd t5, 2024(t1) -- Store: [0x80003b08]:0x00807FFFBFFF0040




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -2251799813685249', 'rs1_h2_val == 8192', 'rs1_h1_val == 16384', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80001c38]:KSLRA16_U t6, t5, t4
	-[0x80001c3c]:sd t6, 0(t1)
Current Store : [0x80001c40] : sd t5, 8(t1) -- Store: [0x80003b28]:0x000B200040008000




Last Coverpoint : ['rs2_val == -281474976710657']
Last Code Sequence : 
	-[0x80001c70]:KSLRA16_U t6, t5, t4
	-[0x80001c74]:sd t6, 0(t1)
Current Store : [0x80001c78] : sd t5, 8(t1) -- Store: [0x80003b38]:0xFBFF0007BFFF0020




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -68719476737', 'rs1_h3_val == 128', 'rs1_h2_val == 65407', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001ca0]:KSLRA16_U t6, t5, t4
	-[0x80001ca4]:sd t6, 16(t1)
Current Store : [0x80001ca8] : sd t5, 24(t1) -- Store: [0x80003b48]:0x0080FF7F00080003





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

|s.no|            signature             |                                                                                                                coverpoints                                                                                                                 |                                   code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000B000B000B000B|- opcode : kslra16.u<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br> |[0x800003dc]:KSLRA16_U s5, a6, a6<br> [0x800003e0]:sd s5, 0(gp)<br>       |
|   2|[0x80003220]<br>0x4000000000000000|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 65535<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 65535<br>                          |[0x80000410]:KSLRA16_U s2, s2, s2<br> [0x80000414]:sd s2, 16(gp)<br>      |
|   3|[0x80003230]<br>0x00001000FFE00800|- rs1 : x5<br> - rs2 : x1<br> - rd : x4<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -4611686018427387905<br> - rs1_h3_val == 0<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 4096<br>           |[0x8000043c]:KSLRA16_U tp, t0, ra<br> [0x80000440]:sd tp, 32(gp)<br>      |
|   4|[0x80003240]<br>0x0009002000040008|- rs1 : x7<br> - rs2 : x11<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_h2_val == 64<br> - rs1_h1_val == 8<br> - rs1_h0_val == 16<br>                                                               |[0x8000046c]:KSLRA16_U t2, t2, a1<br> [0x80000470]:sd t2, 48(gp)<br>      |
|   5|[0x80003250]<br>0x0800FFC02AABFF80|- rs1 : x6<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 65407<br> - rs1_h0_val == 65279<br>                                                     |[0x800004a4]:KSLRA16_U a5, t1, a5<br> [0x800004a8]:sd a5, 64(gp)<br>      |
|   6|[0x80003260]<br>0x0004E000E0000000|- rs1 : x1<br> - rs2 : x21<br> - rd : x12<br> - rs2_val == -576460752303423489<br> - rs1_h3_val == 8<br> - rs1_h2_val == 49151<br> - rs1_h1_val == 49151<br>                                                                                |[0x800004cc]:KSLRA16_U a2, ra, s5<br> [0x800004d0]:sd a2, 80(gp)<br>      |
|   7|[0x80003270]<br>0x0040000500070080|- rs1 : x21<br> - rs2 : x12<br> - rd : x9<br> - rs2_val == -288230376151711745<br> - rs1_h3_val == 128<br> - rs1_h0_val == 256<br>                                                                                                          |[0x800004fc]:KSLRA16_U s1, s5, a2<br> [0x80000500]:sd s1, 96(gp)<br>      |
|   8|[0x80003280]<br>0x00000005FFE00005|- rs1 : x2<br> - rs2 : x9<br> - rd : x25<br> - rs2_val == -144115188075855873<br> - rs1_h3_val == 65535<br>                                                                                                                                 |[0x8000052c]:KSLRA16_U s9, sp, s1<br> [0x80000530]:sd s9, 112(gp)<br>     |
|   9|[0x80003290]<br>0xF8000009000A0001|- rs1 : x26<br> - rs2 : x7<br> - rd : x20<br> - rs2_val == -72057594037927937<br> - rs1_h3_val == 61439<br> - rs1_h0_val == 2<br>                                                                                                           |[0x8000055c]:KSLRA16_U s4, s10, t2<br> [0x80000560]:sd s4, 128(gp)<br>    |
|  10|[0x800032a0]<br>0xFFFFFC0000800003|- rs1 : x20<br> - rs2 : x13<br> - rd : x17<br> - rs2_val == -36028797018963969<br> - rs1_h3_val == 65534<br> - rs1_h2_val == 63487<br> - rs1_h1_val == 256<br>                                                                              |[0x80000584]:KSLRA16_U a7, s4, a3<br> [0x80000588]:sd a7, 144(gp)<br>     |
|  11|[0x800032b0]<br>0xF800000140000100|- rs1 : x8<br> - rs2 : x20<br> - rd : x6<br> - rs2_val == -18014398509481985<br> - rs1_h2_val == 2<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 512<br>                                                                                    |[0x800005b4]:KSLRA16_U t1, fp, s4<br> [0x800005b8]:sd t1, 160(gp)<br>     |
|  12|[0x800032c0]<br>0x000000050004FFC0|- rs1 : x11<br> - rs2 : x19<br> - rd : x24<br> - rs2_val == -9007199254740993<br> - rs1_h0_val == 65407<br>                                                                                                                                 |[0x800005dc]:KSLRA16_U s8, a1, s3<br> [0x800005e0]:sd s8, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x00100001D5550008|- rs1 : x29<br> - rs2 : x31<br> - rd : x5<br> - rs2_val == -4503599627370497<br> - rs1_h3_val == 32<br> - rs1_h2_val == 1<br> - rs1_h1_val == 43690<br>                                                                                     |[0x8000060c]:KSLRA16_U t0, t4, t6<br> [0x80000610]:sd t0, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x6<br> - rd : x0<br> - rs2_val == -2251799813685249<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 32768<br>                                                                                                         |[0x80000638]:KSLRA16_U zero, a7, t1<br> [0x8000063c]:sd zero, 208(gp)<br> |
|  15|[0x800032f0]<br>0x02000200F800F000|- rs1 : x10<br> - rs2 : x14<br> - rd : x16<br> - rs2_val == -1125899906842625<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 57343<br>                                                     |[0x80000668]:KSLRA16_U a6, a0, a4<br> [0x8000066c]:sd a6, 224(gp)<br>     |
|  16|[0x80003300]<br>0x0006000800000004|- rs1 : x28<br> - rs2 : x25<br> - rd : x19<br> - rs2_val == -562949953421313<br> - rs1_h2_val == 16<br> - rs1_h0_val == 8<br>                                                                                                               |[0x80000698]:KSLRA16_U s3, t3, s9<br> [0x8000069c]:sd s3, 240(gp)<br>     |
|  17|[0x80003310]<br>0xFBFF0007BFFF0020|- rs1 : x27<br> - rs2 : x0<br> - rd : x28<br> - rs1_h3_val == 64511<br> - rs1_h0_val == 32<br>                                                                                                                                              |[0x800006c0]:KSLRA16_U t3, s11, zero<br> [0x800006c4]:sd t3, 256(gp)<br>  |
|  18|[0x80003320]<br>0x00040400F000C000|- rs1 : x13<br> - rs2 : x3<br> - rd : x8<br> - rs2_val == -140737488355329<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 57343<br>                                                                                                           |[0x800006f4]:KSLRA16_U fp, a3, gp<br> [0x800006f8]:sd fp, 0(t1)<br>       |
|  19|[0x80003330]<br>0x00030008FFF8FFE0|- rs1 : x24<br> - rs2 : x29<br> - rd : x1<br> - rs2_val == -70368744177665<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 65471<br>                                                                                                          |[0x8000071c]:KSLRA16_U ra, s8, t4<br> [0x80000720]:sd ra, 16(t1)<br>      |
|  20|[0x80003340]<br>0xFFE00006FE000005|- rs1 : x4<br> - rs2 : x26<br> - rd : x11<br> - rs2_val == -35184372088833<br> - rs1_h3_val == 65471<br> - rs1_h1_val == 64511<br>                                                                                                          |[0x8000074c]:KSLRA16_U a1, tp, s10<br> [0x80000750]:sd a1, 32(t1)<br>     |
|  21|[0x80003350]<br>0x0009F00000100800|- rs1 : x22<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == -17592186044417<br> - rs1_h2_val == 57343<br> - rs1_h1_val == 32<br>                                                                                                              |[0x80000778]:KSLRA16_U gp, s6, tp<br> [0x8000077c]:sd gp, 48(t1)<br>      |
|  22|[0x80003360]<br>0x0003008000070008|- rs1 : x3<br> - rs2 : x24<br> - rd : x29<br> - rs2_val == -8796093022209<br> - rs1_h2_val == 256<br>                                                                                                                                       |[0x800007a4]:KSLRA16_U t4, gp, s8<br> [0x800007a8]:sd t4, 64(t1)<br>      |
|  23|[0x80003370]<br>0xF000FC00FFC0FC00|- rs1 : x12<br> - rs2 : x23<br> - rd : x27<br> - rs2_val == -4398046511105<br> - rs1_h3_val == 57343<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 63487<br>                                                                                |[0x800007dc]:KSLRA16_U s11, a2, s7<br> [0x800007e0]:sd s11, 80(t1)<br>    |
|  24|[0x80003380]<br>0x000100050200FFC0|- rs1 : x15<br> - rs2 : x2<br> - rd : x23<br> - rs2_val == -2199023255553<br> - rs1_h3_val == 2<br> - rs1_h1_val == 1024<br>                                                                                                                |[0x8000080c]:KSLRA16_U s7, a5, sp<br> [0x80000810]:sd s7, 96(t1)<br>      |
|  25|[0x80003390]<br>0xFFC0FF8001004000|- rs1 : x19<br> - rs2 : x22<br> - rd : x26<br> - rs2_val == -1099511627777<br> - rs1_h3_val == 65407<br> - rs1_h2_val == 65279<br> - rs1_h1_val == 512<br> - rs1_h0_val == 32767<br>                                                        |[0x8000083c]:KSLRA16_U s10, s3, s6<br> [0x80000840]:sd s10, 112(t1)<br>   |
|  26|[0x800033a0]<br>0x00800020FFE00001|- rs1 : x25<br> - rs2 : x30<br> - rd : x14<br> - rs2_val == -549755813889<br> - rs1_h3_val == 256<br>                                                                                                                                       |[0x8000086c]:KSLRA16_U a4, s9, t5<br> [0x80000870]:sd a4, 128(t1)<br>     |
|  27|[0x800033b0]<br>0xFFF8000400200003|- rs1 : x23<br> - rs2 : x28<br> - rd : x2<br> - rs2_val == -274877906945<br> - rs1_h3_val == 65519<br> - rs1_h2_val == 8<br> - rs1_h1_val == 64<br>                                                                                         |[0x80000894]:KSLRA16_U sp, s7, t3<br> [0x80000898]:sd sp, 144(t1)<br>     |
|  28|[0x800033c0]<br>0xFFF80004FE000000|- rs1 : x14<br> - rs2 : x27<br> - rd : x10<br> - rs2_val == -137438953473<br> - rs1_h0_val == 0<br>                                                                                                                                         |[0x800008c0]:KSLRA16_U a0, a4, s11<br> [0x800008c4]:sd a0, 160(t1)<br>    |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x13<br> - rs2_val == -68719476737<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                      |[0x800008f0]:KSLRA16_U a3, zero, fp<br> [0x800008f4]:sd a3, 176(t1)<br>   |
|  30|[0x800033e0]<br>0x4000F800F0000200|- rs1 : x31<br> - rs2 : x10<br> - rd : x22<br> - rs2_val == -34359738369<br> - rs1_h2_val == 61439<br> - rs1_h0_val == 1024<br>                                                                                                             |[0x80000928]:KSLRA16_U s6, t6, a0<br> [0x8000092c]:sd s6, 192(t1)<br>     |
|  31|[0x800033f0]<br>0xC0000400FFFC0200|- rs1 : x30<br> - rs2 : x17<br> - rd : x31<br> - rs2_val == -17179869185<br> - rs1_h3_val == 32768<br> - rs1_h1_val == 65527<br>                                                                                                            |[0x80000958]:KSLRA16_U t6, t5, a7<br> [0x8000095c]:sd t6, 208(t1)<br>     |
|  32|[0x80003400]<br>0xFF00000A0040FFFE|- rs1 : x9<br> - rs2 : x5<br> - rd : x30<br> - rs2_val == -8589934593<br> - rs1_h3_val == 65023<br> - rs1_h1_val == 128<br> - rs1_h0_val == 65531<br>                                                                                       |[0x80000988]:KSLRA16_U t5, s1, t0<br> [0x8000098c]:sd t5, 224(t1)<br>     |
|  33|[0x80003410]<br>0x00060010FFE00007|- rs2_val == -4294967297<br> - rs1_h2_val == 32<br>                                                                                                                                                                                         |[0x800009b8]:KSLRA16_U t6, t5, t4<br> [0x800009bc]:sd t6, 240(t1)<br>     |
|  34|[0x80003420]<br>0x0008FFFCFFFE0040|- rs2_val == -2147483649<br> - rs1_h2_val == 65527<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 128<br>                                                                                                                                    |[0x800009e8]:KSLRA16_U t6, t5, t4<br> [0x800009ec]:sd t6, 256(t1)<br>     |
|  35|[0x80003430]<br>0x0006000400090080|- rs2_val == -1073741825<br>                                                                                                                                                                                                                |[0x80000a14]:KSLRA16_U t6, t5, t4<br> [0x80000a18]:sd t6, 272(t1)<br>     |
|  36|[0x80003440]<br>0x00030009FE000001|- rs2_val == -536870913<br> - rs1_h0_val == 1<br>                                                                                                                                                                                           |[0x80000a40]:KSLRA16_U t6, t5, t4<br> [0x80000a44]:sd t6, 288(t1)<br>     |
|  37|[0x80003450]<br>0xFFFEFFFF00090080|- rs2_val == -268435457<br> - rs1_h3_val == 65531<br> - rs1_h2_val == 65534<br>                                                                                                                                                             |[0x80000a6c]:KSLRA16_U t6, t5, t4<br> [0x80000a70]:sd t6, 304(t1)<br>     |
|  38|[0x80003460]<br>0x0200000401000010|- rs2_val == -134217729<br>                                                                                                                                                                                                                 |[0x80000a94]:KSLRA16_U t6, t5, t4<br> [0x80000a98]:sd t6, 320(t1)<br>     |
|  39|[0x80003470]<br>0xFFFF000AFF800007|- rs2_val == -67108865<br> - rs1_h3_val == 65533<br> - rs1_h1_val == 65279<br>                                                                                                                                                              |[0x80000ac0]:KSLRA16_U t6, t5, t4<br> [0x80000ac4]:sd t6, 336(t1)<br>     |
|  40|[0x80003480]<br>0x4000000600070040|- rs2_val == -33554433<br>                                                                                                                                                                                                                  |[0x80000aec]:KSLRA16_U t6, t5, t4<br> [0x80000af0]:sd t6, 352(t1)<br>     |
|  41|[0x80003490]<br>0xFFE0FFFEFE00FF80|- rs2_val == -16777217<br> - rs1_h2_val == 65531<br>                                                                                                                                                                                        |[0x80000b10]:KSLRA16_U t6, t5, t4<br> [0x80000b14]:sd t6, 368(t1)<br>     |
|  42|[0x800034a0]<br>0x0002000100030007|- rs2_val == -8388609<br> - rs1_h3_val == 4<br>                                                                                                                                                                                             |[0x80000b3c]:KSLRA16_U t6, t5, t4<br> [0x80000b40]:sd t6, 384(t1)<br>     |
|  43|[0x800034b0]<br>0x000A000100090040|- rs2_val == -4194305<br>                                                                                                                                                                                                                   |[0x80000b68]:KSLRA16_U t6, t5, t4<br> [0x80000b6c]:sd t6, 400(t1)<br>     |
|  44|[0x800034c0]<br>0x0200000AFC000002|- rs2_val == -2097153<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 4<br>                                                                                                                                                                   |[0x80000b94]:KSLRA16_U t6, t5, t4<br> [0x80000b98]:sd t6, 416(t1)<br>     |
|  45|[0x800034d0]<br>0x000A00401000000A|- rs2_val == -1048577<br> - rs1_h2_val == 128<br> - rs1_h1_val == 8192<br>                                                                                                                                                                  |[0x80000bb8]:KSLRA16_U t6, t5, t4<br> [0x80000bbc]:sd t6, 432(t1)<br>     |
|  46|[0x800034e0]<br>0xF800FFF00400FE00|- rs2_val == -524289<br> - rs1_h2_val == 65503<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 64511<br>                                                                                                                                       |[0x80000be8]:KSLRA16_U t6, t5, t4<br> [0x80000bec]:sd t6, 448(t1)<br>     |
|  47|[0x800034f0]<br>0x00000005FE000100|- rs2_val == -262145<br>                                                                                                                                                                                                                    |[0x80000c14]:KSLRA16_U t6, t5, t4<br> [0x80000c18]:sd t6, 464(t1)<br>     |
|  48|[0x80003500]<br>0x0040000000100080|- rs2_val == -131073<br>                                                                                                                                                                                                                    |[0x80000c3c]:KSLRA16_U t6, t5, t4<br> [0x80000c40]:sd t6, 480(t1)<br>     |
|  49|[0x80003510]<br>0x0008000100070000|- rs2_val == -65537<br>                                                                                                                                                                                                                     |[0x80000c64]:KSLRA16_U t6, t5, t4<br> [0x80000c68]:sd t6, 496(t1)<br>     |
|  50|[0x80003520]<br>0x0010E00004000040|- rs2_val == -32769<br>                                                                                                                                                                                                                     |[0x80000c88]:KSLRA16_U t6, t5, t4<br> [0x80000c8c]:sd t6, 512(t1)<br>     |
|  51|[0x80003530]<br>0x0007E00008000008|- rs2_val == -16385<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                            |[0x80000cac]:KSLRA16_U t6, t5, t4<br> [0x80000cb0]:sd t6, 528(t1)<br>     |
|  52|[0x80003540]<br>0x0008000200030004|- rs2_val == -8193<br>                                                                                                                                                                                                                      |[0x80000cd8]:KSLRA16_U t6, t5, t4<br> [0x80000cdc]:sd t6, 544(t1)<br>     |
|  53|[0x80003550]<br>0x000A0003D5550010|- rs2_val == -4097<br>                                                                                                                                                                                                                      |[0x80000d04]:KSLRA16_U t6, t5, t4<br> [0x80000d08]:sd t6, 560(t1)<br>     |
|  54|[0x80003560]<br>0x8000FFFBFFDF4000|- rs2_val == 512<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 16384<br>                                                                                                                                                                    |[0x80000d28]:KSLRA16_U t6, t5, t4<br> [0x80000d2c]:sd t6, 576(t1)<br>     |
|  55|[0x80003570]<br>0x00090010FFF81000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                    |[0x80000d50]:KSLRA16_U t6, t5, t4<br> [0x80000d54]:sd t6, 592(t1)<br>     |
|  56|[0x80003580]<br>0xAAAA001000060800|- rs2_val == 4611686018427387904<br> - rs1_h3_val == 43690<br> - rs1_h0_val == 2048<br>                                                                                                                                                     |[0x80000d7c]:KSLRA16_U t6, t5, t4<br> [0x80000d80]:sd t6, 608(t1)<br>     |
|  57|[0x80003590]<br>0x8000F40000007FFF|- rs1_h2_val == 65533<br> - rs2_val == -6148914691236517206<br>                                                                                                                                                                             |[0x80000db8]:KSLRA16_U t6, t5, t4<br> [0x80000dbc]:sd t6, 624(t1)<br>     |
|  58|[0x800035a0]<br>0x00800000FE00FF80|- rs2_val == -2049<br>                                                                                                                                                                                                                      |[0x80000ddc]:KSLRA16_U t6, t5, t4<br> [0x80000de0]:sd t6, 640(t1)<br>     |
|  59|[0x800035b0]<br>0x2000F80000400001|- rs2_val == -1025<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                            |[0x80000e04]:KSLRA16_U t6, t5, t4<br> [0x80000e08]:sd t6, 656(t1)<br>     |
|  60|[0x800035c0]<br>0x00090009FF800003|- rs2_val == -513<br>                                                                                                                                                                                                                       |[0x80000e2c]:KSLRA16_U t6, t5, t4<br> [0x80000e30]:sd t6, 672(t1)<br>     |
|  61|[0x800035d0]<br>0x080001000005FF80|- rs2_val == -257<br> - rs1_h2_val == 512<br>                                                                                                                                                                                               |[0x80000e54]:KSLRA16_U t6, t5, t4<br> [0x80000e58]:sd t6, 688(t1)<br>     |
|  62|[0x800035e0]<br>0x00060020F000FFF8|- rs2_val == -129<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                             |[0x80000e74]:KSLRA16_U t6, t5, t4<br> [0x80000e78]:sd t6, 704(t1)<br>     |
|  63|[0x800035f0]<br>0xFF80200000802000|- rs2_val == -65<br> - rs1_h3_val == 65279<br> - rs1_h2_val == 16384<br>                                                                                                                                                                    |[0x80000e94]:KSLRA16_U t6, t5, t4<br> [0x80000e98]:sd t6, 720(t1)<br>     |
|  64|[0x80003600]<br>0x0003FFE00003FFFC|- rs2_val == -33<br> - rs1_h2_val == 65471<br> - rs1_h0_val == 65527<br>                                                                                                                                                                    |[0x80000ebc]:KSLRA16_U t6, t5, t4<br> [0x80000ec0]:sd t6, 736(t1)<br>     |
|  65|[0x80003610]<br>0x7FFF7FFF7FFF8000|- rs2_val == -17<br> - rs1_h2_val == 32767<br> - rs1_h0_val == 65023<br>                                                                                                                                                                    |[0x80000ee4]:KSLRA16_U t6, t5, t4<br> [0x80000ee8]:sd t6, 752(t1)<br>     |
|  66|[0x80003620]<br>0x0000FFFF00000000|- rs2_val == -9<br> - rs1_h2_val == 65023<br>                                                                                                                                                                                               |[0x80000f04]:KSLRA16_U t6, t5, t4<br> [0x80000f08]:sd t6, 768(t1)<br>     |
|  67|[0x80003630]<br>0x0400000001000000|- rs2_val == -5<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                   |[0x80000f34]:KSLRA16_U t6, t5, t4<br> [0x80000f38]:sd t6, 784(t1)<br>     |
|  68|[0x80003640]<br>0x0004FFC0FE000800|- rs2_val == -3<br>                                                                                                                                                                                                                         |[0x80000f58]:KSLRA16_U t6, t5, t4<br> [0x80000f5c]:sd t6, 800(t1)<br>     |
|  69|[0x80003650]<br>0xFFFE0008FFFE0003|- rs2_val == -2<br> - rs1_h3_val == 65527<br>                                                                                                                                                                                               |[0x80000f80]:KSLRA16_U t6, t5, t4<br> [0x80000f84]:sd t6, 816(t1)<br>     |
|  70|[0x80003660]<br>0x0005FFFD02000800|- rs2_val == -9223372036854775808<br>                                                                                                                                                                                                       |[0x80000fac]:KSLRA16_U t6, t5, t4<br> [0x80000fb0]:sd t6, 832(t1)<br>     |
|  71|[0x80003670]<br>0x00100005FF7F0200|- rs2_val == 2305843009213693952<br> - rs1_h3_val == 16<br>                                                                                                                                                                                 |[0x80000fd8]:KSLRA16_U t6, t5, t4<br> [0x80000fdc]:sd t6, 848(t1)<br>     |
|  72|[0x80003680]<br>0x0011FFDF000F4000|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                        |[0x80001000]:KSLRA16_U t6, t5, t4<br> [0x80001004]:sd t6, 864(t1)<br>     |
|  73|[0x80003690]<br>0x0020FFFE00070001|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                         |[0x8000102c]:KSLRA16_U t6, t5, t4<br> [0x80001030]:sd t6, 880(t1)<br>     |
|  74|[0x800036a0]<br>0x000D0007000A0003|- rs2_val == 288230376151711744<br>                                                                                                                                                                                                         |[0x80001058]:KSLRA16_U t6, t5, t4<br> [0x8000105c]:sd t6, 896(t1)<br>     |
|  75|[0x800036b0]<br>0x0005FEFF00110040|- rs2_val == 144115188075855872<br> - rs1_h0_val == 64<br>                                                                                                                                                                                  |[0x80001084]:KSLRA16_U t6, t5, t4<br> [0x80001088]:sd t6, 912(t1)<br>     |
|  76|[0x800036c0]<br>0x4000FF7F01000005|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                          |[0x800010b0]:KSLRA16_U t6, t5, t4<br> [0x800010b4]:sd t6, 928(t1)<br>     |
|  77|[0x800036d0]<br>0xFFFB8000FF7F0009|- rs2_val == 36028797018963968<br> - rs1_h2_val == 32768<br>                                                                                                                                                                                |[0x800010dc]:KSLRA16_U t6, t5, t4<br> [0x800010e0]:sd t6, 944(t1)<br>     |
|  78|[0x800036e0]<br>0xFEFF0000FFDF000F|- rs2_val == 18014398509481984<br>                                                                                                                                                                                                          |[0x80001108]:KSLRA16_U t6, t5, t4<br> [0x8000110c]:sd t6, 960(t1)<br>     |
|  79|[0x800036f0]<br>0xF7FF08000000FFEF|- rs2_val == 9007199254740992<br> - rs1_h3_val == 63487<br>                                                                                                                                                                                 |[0x80001134]:KSLRA16_U t6, t5, t4<br> [0x80001138]:sd t6, 976(t1)<br>     |
|  80|[0x80003700]<br>0x0800FFFE5555FFFE|- rs2_val == 4503599627370496<br> - rs1_h3_val == 2048<br> - rs1_h0_val == 65534<br>                                                                                                                                                        |[0x80001160]:KSLRA16_U t6, t5, t4<br> [0x80001164]:sd t6, 992(t1)<br>     |
|  81|[0x80003710]<br>0x0040FFFB000C4000|- rs2_val == 2251799813685248<br> - rs1_h3_val == 64<br>                                                                                                                                                                                    |[0x80001188]:KSLRA16_U t6, t5, t4<br> [0x8000118c]:sd t6, 1008(t1)<br>    |
|  82|[0x80003720]<br>0x002008000010000B|- rs2_val == 1125899906842624<br> - rs1_h1_val == 16<br>                                                                                                                                                                                    |[0x800011b0]:KSLRA16_U t6, t5, t4<br> [0x800011b4]:sd t6, 1024(t1)<br>    |
|  83|[0x80003730]<br>0x40007FFFFFFF0013|- rs2_val == 562949953421312<br>                                                                                                                                                                                                            |[0x800011dc]:KSLRA16_U t6, t5, t4<br> [0x800011e0]:sd t6, 1040(t1)<br>    |
|  84|[0x80003740]<br>0x000B00800007000B|- rs2_val == 281474976710656<br>                                                                                                                                                                                                            |[0x80001208]:KSLRA16_U t6, t5, t4<br> [0x8000120c]:sd t6, 1056(t1)<br>    |
|  85|[0x80003750]<br>0xFFFDFFFBFFBF000A|- rs2_val == 140737488355328<br>                                                                                                                                                                                                            |[0x80001234]:KSLRA16_U t6, t5, t4<br> [0x80001238]:sd t6, 1072(t1)<br>    |
|  86|[0x80003760]<br>0xFFDFEFFF0011FFFB|- rs2_val == 70368744177664<br> - rs1_h3_val == 65503<br>                                                                                                                                                                                   |[0x80001260]:KSLRA16_U t6, t5, t4<br> [0x80001264]:sd t6, 1088(t1)<br>    |
|  87|[0x80003770]<br>0xDFFF7FFF1000F7FF|- rs2_val == 35184372088832<br>                                                                                                                                                                                                             |[0x80001294]:KSLRA16_U t6, t5, t4<br> [0x80001298]:sd t6, 1104(t1)<br>    |
|  88|[0x80003780]<br>0x0003FF7F0006000F|- rs2_val == 17592186044416<br>                                                                                                                                                                                                             |[0x800012c0]:KSLRA16_U t6, t5, t4<br> [0x800012c4]:sd t6, 1120(t1)<br>    |
|  89|[0x80003790]<br>0x40000006FFFBDFFF|- rs2_val == 8796093022208<br>                                                                                                                                                                                                              |[0x800012ec]:KSLRA16_U t6, t5, t4<br> [0x800012f0]:sd t6, 1136(t1)<br>    |
|  90|[0x800037a0]<br>0xBFFF0080000D0080|- rs2_val == 4398046511104<br> - rs1_h3_val == 49151<br>                                                                                                                                                                                    |[0x80001318]:KSLRA16_U t6, t5, t4<br> [0x8000131c]:sd t6, 1152(t1)<br>    |
|  91|[0x800037b0]<br>0x001200081000FDFF|- rs2_val == 2199023255552<br>                                                                                                                                                                                                              |[0x80001344]:KSLRA16_U t6, t5, t4<br> [0x80001348]:sd t6, 1168(t1)<br>    |
|  92|[0x800037c0]<br>0x1000FFFE0008FFF6|- rs2_val == 1<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                    |[0x8000136c]:KSLRA16_U t6, t5, t4<br> [0x80001370]:sd t6, 1184(t1)<br>    |
|  93|[0x800037d0]<br>0x5555000F00110010|- rs2_val == 32<br>                                                                                                                                                                                                                         |[0x80001394]:KSLRA16_U t6, t5, t4<br> [0x80001398]:sd t6, 1200(t1)<br>    |
|  94|[0x800037e0]<br>0x10000003FFE00005|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                    |[0x800013c0]:KSLRA16_U t6, t5, t4<br> [0x800013c4]:sd t6, 1216(t1)<br>    |
|  95|[0x800037f0]<br>0xDFFF01000009FFFB|- rs2_val == 16777216<br>                                                                                                                                                                                                                   |[0x800013e8]:KSLRA16_U t6, t5, t4<br> [0x800013ec]:sd t6, 1232(t1)<br>    |
|  96|[0x80003800]<br>0x000C0001000B2000|- rs2_val == 67108864<br>                                                                                                                                                                                                                   |[0x8000140c]:KSLRA16_U t6, t5, t4<br> [0x80001410]:sd t6, 1248(t1)<br>    |
|  97|[0x80003810]<br>0x0200FFFE000AFFFE|- rs2_val == 1099511627776<br> - rs1_h3_val == 512<br>                                                                                                                                                                                      |[0x80001438]:KSLRA16_U t6, t5, t4<br> [0x8000143c]:sd t6, 1264(t1)<br>    |
|  98|[0x80003820]<br>0x000800060007FF7F|- rs2_val == 2097152<br>                                                                                                                                                                                                                    |[0x80001460]:KSLRA16_U t6, t5, t4<br> [0x80001464]:sd t6, 1280(t1)<br>    |
|  99|[0x80003830]<br>0x000100010100FFFF|- rs1_h3_val == 1<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                             |[0x80001488]:KSLRA16_U t6, t5, t4<br> [0x8000148c]:sd t6, 1296(t1)<br>    |
| 100|[0x80003840]<br>0xFEFC0030000CEFFC|- rs2_val == 2<br>                                                                                                                                                                                                                          |[0x800014b0]:KSLRA16_U t6, t5, t4<br> [0x800014b4]:sd t6, 1312(t1)<br>    |
| 101|[0x80003850]<br>0xFEFFFF7F0008FFFF|- rs2_val == 64<br>                                                                                                                                                                                                                         |[0x800014d8]:KSLRA16_U t6, t5, t4<br> [0x800014dc]:sd t6, 1328(t1)<br>    |
| 102|[0x80003860]<br>0x010000800011FBFF|- rs2_val == 1048576<br>                                                                                                                                                                                                                    |[0x80001500]:KSLRA16_U t6, t5, t4<br> [0x80001504]:sd t6, 1344(t1)<br>    |
| 103|[0x80003870]<br>0x0007AAAA10000008|- rs1_h2_val == 43690<br>                                                                                                                                                                                                                   |[0x80001520]:KSLRA16_U t6, t5, t4<br> [0x80001524]:sd t6, 1360(t1)<br>    |
| 104|[0x80003880]<br>0xFFDF000B0080FFFF|- rs2_val == 128<br>                                                                                                                                                                                                                        |[0x80001548]:KSLRA16_U t6, t5, t4<br> [0x8000154c]:sd t6, 1376(t1)<br>    |
| 105|[0x80003890]<br>0x0100040001000800|- rs2_val == 524288<br>                                                                                                                                                                                                                     |[0x80001578]:KSLRA16_U t6, t5, t4<br> [0x8000157c]:sd t6, 1392(t1)<br>    |
| 106|[0x800038b0]<br>0x0005FE000000FC00|- rs1_h2_val == 64511<br>                                                                                                                                                                                                                   |[0x800015d4]:KSLRA16_U t6, t5, t4<br> [0x800015d8]:sd t6, 1424(t1)<br>    |
| 107|[0x800038c0]<br>0x000CFFEF000E000D|- rs2_val == 8192<br> - rs1_h2_val == 65519<br>                                                                                                                                                                                             |[0x800015fc]:KSLRA16_U t6, t5, t4<br> [0x80001600]:sd t6, 1440(t1)<br>    |
| 108|[0x800038d0]<br>0xFFFC080000080009|- rs1_h2_val == 4096<br>                                                                                                                                                                                                                    |[0x80001628]:KSLRA16_U t6, t5, t4<br> [0x8000162c]:sd t6, 1456(t1)<br>    |
| 109|[0x800038e0]<br>0xF8000004FF00FFE0|- rs1_h1_val == 65023<br>                                                                                                                                                                                                                   |[0x80001654]:KSLRA16_U t6, t5, t4<br> [0x80001658]:sd t6, 1472(t1)<br>    |
| 110|[0x800038f0]<br>0xAAAA0400FFFD0006|- rs2_val == 137438953472<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                     |[0x80001680]:KSLRA16_U t6, t5, t4<br> [0x80001684]:sd t6, 1488(t1)<br>    |
| 111|[0x80003900]<br>0x4000FEFF80000004|- rs2_val == 549755813888<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                     |[0x800016ac]:KSLRA16_U t6, t5, t4<br> [0x800016b0]:sd t6, 1504(t1)<br>    |
| 112|[0x80003910]<br>0x001E7FFFFFFCFBFE|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                   |[0x800016d0]:KSLRA16_U t6, t5, t4<br> [0x800016d4]:sd t6, 1520(t1)<br>    |
| 113|[0x80003920]<br>0x200000080000AAAA|- rs2_val == 274877906944<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                     |[0x800016fc]:KSLRA16_U t6, t5, t4<br> [0x80001700]:sd t6, 1536(t1)<br>    |
| 114|[0x80003930]<br>0x000A0800000DFFFB|- rs2_val == 68719476736<br>                                                                                                                                                                                                                |[0x80001724]:KSLRA16_U t6, t5, t4<br> [0x80001728]:sd t6, 1552(t1)<br>    |
| 115|[0x80003940]<br>0x000E00134000000B|- rs2_val == 34359738368<br>                                                                                                                                                                                                                |[0x80001748]:KSLRA16_U t6, t5, t4<br> [0x8000174c]:sd t6, 1568(t1)<br>    |
| 116|[0x80003950]<br>0x000D0011EFFF0003|- rs2_val == 17179869184<br>                                                                                                                                                                                                                |[0x80001774]:KSLRA16_U t6, t5, t4<br> [0x80001778]:sd t6, 1584(t1)<br>    |
| 117|[0x80003960]<br>0xFFFBFFFEFEFF0800|- rs2_val == 8589934592<br>                                                                                                                                                                                                                 |[0x800017a0]:KSLRA16_U t6, t5, t4<br> [0x800017a4]:sd t6, 1600(t1)<br>    |
| 118|[0x80003970]<br>0x00132000000DFEFF|- rs2_val == 4294967296<br>                                                                                                                                                                                                                 |[0x800017c8]:KSLRA16_U t6, t5, t4<br> [0x800017cc]:sd t6, 1616(t1)<br>    |
| 119|[0x80003980]<br>0x0100000000120006|- rs2_val == 2147483648<br>                                                                                                                                                                                                                 |[0x800017f0]:KSLRA16_U t6, t5, t4<br> [0x800017f4]:sd t6, 1632(t1)<br>    |
| 120|[0x80003990]<br>0x0000000700120100|- rs2_val == 1073741824<br>                                                                                                                                                                                                                 |[0x80001810]:KSLRA16_U t6, t5, t4<br> [0x80001814]:sd t6, 1648(t1)<br>    |
| 121|[0x800039a0]<br>0x000D000300405555|- rs2_val == 536870912<br>                                                                                                                                                                                                                  |[0x80001838]:KSLRA16_U t6, t5, t4<br> [0x8000183c]:sd t6, 1664(t1)<br>    |
| 122|[0x800039b0]<br>0x0000F7FFF7FFF7FF|- rs2_val == 268435456<br>                                                                                                                                                                                                                  |[0x80001860]:KSLRA16_U t6, t5, t4<br> [0x80001864]:sd t6, 1680(t1)<br>    |
| 123|[0x800039c0]<br>0x0400FBFF0012FDFF|- rs2_val == 134217728<br>                                                                                                                                                                                                                  |[0x80001888]:KSLRA16_U t6, t5, t4<br> [0x8000188c]:sd t6, 1696(t1)<br>    |
| 124|[0x800039d0]<br>0x0005FFEF0001AAAA|- rs2_val == 33554432<br> - rs1_h1_val == 1<br>                                                                                                                                                                                             |[0x800018b0]:KSLRA16_U t6, t5, t4<br> [0x800018b4]:sd t6, 1712(t1)<br>    |
| 125|[0x800039e0]<br>0x20000400000E0007|- rs2_val == 8388608<br>                                                                                                                                                                                                                    |[0x800018d8]:KSLRA16_U t6, t5, t4<br> [0x800018dc]:sd t6, 1728(t1)<br>    |
| 126|[0x800039f0]<br>0x0006FFFF00010007|- rs1_h1_val == 2<br>                                                                                                                                                                                                                       |[0x80001904]:KSLRA16_U t6, t5, t4<br> [0x80001908]:sd t6, 1744(t1)<br>    |
| 127|[0x80003a00]<br>0x0400000C0002AAAA|- rs2_val == 4194304<br>                                                                                                                                                                                                                    |[0x8000192c]:KSLRA16_U t6, t5, t4<br> [0x80001930]:sd t6, 1760(t1)<br>    |
| 128|[0x80003a10]<br>0x0002080000040008|- rs2_val == 262144<br>                                                                                                                                                                                                                     |[0x80001950]:KSLRA16_U t6, t5, t4<br> [0x80001954]:sd t6, 1776(t1)<br>    |
| 129|[0x80003a20]<br>0xEFFF0005000BFFFD|- rs2_val == 131072<br>                                                                                                                                                                                                                     |[0x80001978]:KSLRA16_U t6, t5, t4<br> [0x8000197c]:sd t6, 1792(t1)<br>    |
| 130|[0x80003a30]<br>0x0400000820008000|- rs1_h0_val == 49151<br>                                                                                                                                                                                                                   |[0x800019a0]:KSLRA16_U t6, t5, t4<br> [0x800019a4]:sd t6, 1808(t1)<br>    |
| 131|[0x80003a40]<br>0x000C0011FFFD000A|- rs2_val == 65536<br>                                                                                                                                                                                                                      |[0x800019c8]:KSLRA16_U t6, t5, t4<br> [0x800019cc]:sd t6, 1824(t1)<br>    |
| 132|[0x80003a50]<br>0x000A100004000012|- rs2_val == 32768<br>                                                                                                                                                                                                                      |[0x800019e8]:KSLRA16_U t6, t5, t4<br> [0x800019ec]:sd t6, 1840(t1)<br>    |
| 133|[0x80003a60]<br>0xF7FFAAAAF7FFAAAA|- rs2_val == 16384<br>                                                                                                                                                                                                                      |[0x80001a18]:KSLRA16_U t6, t5, t4<br> [0x80001a1c]:sd t6, 1856(t1)<br>    |
| 134|[0x80003a70]<br>0x040040000000F800|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                   |[0x80001a44]:KSLRA16_U t6, t5, t4<br> [0x80001a48]:sd t6, 1872(t1)<br>    |
| 135|[0x80003a80]<br>0xFF7F8000EFFF000B|- rs2_val == 4096<br>                                                                                                                                                                                                                       |[0x80001a6c]:KSLRA16_U t6, t5, t4<br> [0x80001a70]:sd t6, 1888(t1)<br>    |
| 136|[0x80003a90]<br>0x0005100000060004|- rs2_val == 2048<br>                                                                                                                                                                                                                       |[0x80001a94]:KSLRA16_U t6, t5, t4<br> [0x80001a98]:sd t6, 1904(t1)<br>    |
| 137|[0x80003aa0]<br>0xAAAAFFFD000FFBFF|- rs2_val == 1024<br>                                                                                                                                                                                                                       |[0x80001abc]:KSLRA16_U t6, t5, t4<br> [0x80001ac0]:sd t6, 1920(t1)<br>    |
| 138|[0x80003ab0]<br>0x000D00010012FEFF|- rs2_val == 256<br>                                                                                                                                                                                                                        |[0x80001ae4]:KSLRA16_U t6, t5, t4<br> [0x80001ae8]:sd t6, 1936(t1)<br>    |
| 139|[0x80003ac0]<br>0x000A00070010FFF0|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                   |[0x80001b10]:KSLRA16_U t6, t5, t4<br> [0x80001b14]:sd t6, 1952(t1)<br>    |
| 140|[0x80003ad0]<br>0x0001000000000000|- rs2_val == 16<br>                                                                                                                                                                                                                         |[0x80001b38]:KSLRA16_U t6, t5, t4<br> [0x80001b3c]:sd t6, 1968(t1)<br>    |
| 141|[0x80003ae0]<br>0xFD007FFF80008000|- rs2_val == 8<br>                                                                                                                                                                                                                          |[0x80001b60]:KSLRA16_U t6, t5, t4<br> [0x80001b64]:sd t6, 1984(t1)<br>    |
| 142|[0x80003af0]<br>0xEFF07FFF0000FDF0|- rs2_val == 4<br>                                                                                                                                                                                                                          |[0x80001b88]:KSLRA16_U t6, t5, t4<br> [0x80001b8c]:sd t6, 2000(t1)<br>    |
| 143|[0x80003b30]<br>0xFE000004E0000010|- rs2_val == -281474976710657<br>                                                                                                                                                                                                           |[0x80001c70]:KSLRA16_U t6, t5, t4<br> [0x80001c74]:sd t6, 0(t1)<br>       |
