
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001910')]      |
| SIG_REGION                | [('0x80003210', '0x80003840', '198 dwords')]      |
| COV_LABELS                | khmbt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmbt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 198      |
| STAT1                     | 98      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 99     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018d0]:KHMBT t6, t5, t4
      [0x800018d4]:sd t6, 1024(ra)
 -- Signature Address: 0x80003820 Data: 0xFFFFFFFFFFFFC001
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -21846
      - rs2_h2_val == -4097
      - rs2_h0_val == -17
      - rs1_h3_val == 16384
      - rs1_h2_val == 16384
      - rs1_h1_val == -129






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmbt', 'rs1 : x21', 'rs2 : x21', 'rd : x14', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == -4097', 'rs2_h0_val == -17', 'rs1_h3_val == -21846', 'rs1_h2_val == -4097', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800003d0]:KHMBT a4, s5, s5
	-[0x800003d4]:sd a4, 0(sp)
Current Store : [0x800003d8] : sd s5, 8(sp) -- Store: [0x80003218]:0xAAAAEFFF3FFFFFEF




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x20', 'rs1 == rs2 == rd', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h0_val == -129', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000404]:KHMBT s4, s4, s4
	-[0x80000408]:sd s4, 16(sp)
Current Store : [0x8000040c] : sd s4, 24(sp) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x15', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 1024', 'rs2_h2_val == -513', 'rs2_h1_val == -65', 'rs2_h0_val == 32767', 'rs1_h3_val == -1025', 'rs1_h2_val == -8193', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000043c]:KHMBT a1, s1, a5
	-[0x80000440]:sd a1, 32(sp)
Current Store : [0x80000444] : sd s1, 40(sp) -- Store: [0x80003238]:0xFBFFDFFF1000C000




Last Coverpoint : ['rs1 : x31', 'rs2 : x1', 'rd : x31', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -2049', 'rs2_h1_val == -32768', 'rs2_h0_val == -513', 'rs1_h3_val == 2', 'rs1_h1_val == -1025', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000474]:KHMBT t6, t6, ra
	-[0x80000478]:sd t6, 48(sp)
Current Store : [0x8000047c] : sd t6, 56(sp) -- Store: [0x80003248]:0xFFFFFFFFFFFFF000




Last Coverpoint : ['rs1 : x6', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -17', 'rs2_h2_val == 16384', 'rs2_h1_val == -21846', 'rs2_h0_val == -5', 'rs1_h3_val == 128', 'rs1_h2_val == 16384', 'rs1_h1_val == 64', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004ac]:KHMBT t0, t1, t0
	-[0x800004b0]:sd t0, 64(sp)
Current Store : [0x800004b4] : sd t1, 72(sp) -- Store: [0x80003258]:0x008040000040BFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x31', 'rd : x4', 'rs2_h3_val == -16385', 'rs2_h2_val == 0', 'rs2_h1_val == 21845', 'rs2_h0_val == -9', 'rs1_h3_val == 32767', 'rs1_h2_val == 128', 'rs1_h1_val == 21845', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800004f8]:KHMBT tp, a3, t6
	-[0x800004fc]:sd tp, 80(sp)
Current Store : [0x80000500] : sd a3, 88(sp) -- Store: [0x80003268]:0x7FFF00805555FFFB




Last Coverpoint : ['rs1 : x23', 'rs2 : x24', 'rd : x7', 'rs2_h3_val == -33', 'rs2_h1_val == 64', 'rs2_h0_val == -2049', 'rs1_h3_val == -4097', 'rs1_h2_val == 256', 'rs1_h1_val == 0', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000534]:KHMBT t2, s7, s8
	-[0x80000538]:sd t2, 96(sp)
Current Store : [0x8000053c] : sd s7, 104(sp) -- Store: [0x80003278]:0xEFFF01000000F7FF




Last Coverpoint : ['rs1 : x3', 'rs2 : x9', 'rd : x19', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 0', 'rs2_h2_val == -1', 'rs2_h1_val == -4097', 'rs2_h0_val == 4096', 'rs1_h3_val == -8193', 'rs1_h2_val == 32', 'rs1_h1_val == 8', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000056c]:KHMBT s3, gp, s1
	-[0x80000570]:sd s3, 112(sp)
Current Store : [0x80000574] : sd gp, 120(sp) -- Store: [0x80003288]:0xDFFF002000080001




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x1', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 21845', 'rs2_h1_val == 16384', 'rs2_h0_val == 256', 'rs1_h3_val == 1024', 'rs1_h2_val == -16385', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800005a8]:KHMBT ra, t3, fp
	-[0x800005ac]:sd ra, 128(sp)
Current Store : [0x800005b0] : sd t3, 136(sp) -- Store: [0x80003298]:0x0400BFFF2000FFFA




Last Coverpoint : ['rs1 : x5', 'rs2 : x23', 'rd : x28', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -9', 'rs2_h0_val == 1', 'rs1_h3_val == 8', 'rs1_h1_val == -3', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800005e0]:KHMBT t3, t0, s7
	-[0x800005e4]:sd t3, 144(sp)
Current Store : [0x800005e8] : sd t0, 152(sp) -- Store: [0x800032a8]:0x00080003FFFD2000




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rd : x24', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000624]:KHMBT s8, t4, zero
	-[0x80000628]:sd s8, 160(sp)
Current Store : [0x8000062c] : sd t4, 168(sp) -- Store: [0x800032b8]:0x000900205555FBFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x30', 'rs2_h3_val == -4097', 'rs2_h2_val == 8192', 'rs1_h3_val == 16384', 'rs1_h1_val == 4', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000660]:KHMBT t5, fp, tp
	-[0x80000664]:sd t5, 176(sp)
Current Store : [0x80000668] : sd fp, 184(sp) -- Store: [0x800032c8]:0x4000BFFF00040020




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x15', 'rs2_h3_val == -2049', 'rs2_h2_val == -8193', 'rs2_h1_val == 2', 'rs2_h0_val == 4', 'rs1_h2_val == 21845', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000069c]:KHMBT a5, s2, gp
	-[0x800006a0]:sd a5, 192(sp)
Current Store : [0x800006a4] : sd s2, 200(sp) -- Store: [0x800032d8]:0xAAAA5555FFF6FFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x12', 'rd : x18', 'rs2_h3_val == -1025', 'rs2_h2_val == 16', 'rs2_h1_val == -9', 'rs2_h0_val == 128', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800006d4]:KHMBT s2, ra, a2
	-[0x800006d8]:sd s2, 208(sp)
Current Store : [0x800006dc] : sd ra, 216(sp) -- Store: [0x800032e8]:0x0003C000FFEF2000




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x27', 'rs2_h3_val == -513', 'rs2_h2_val == 21845', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000708]:KHMBT s11, s6, t1
	-[0x8000070c]:sd s11, 224(sp)
Current Store : [0x80000710] : sd s6, 232(sp) -- Store: [0x800032f8]:0x00095555FFFE0003




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rd : x13', 'rs2_h3_val == -257', 'rs2_h2_val == -2', 'rs2_h1_val == 4', 'rs1_h3_val == 0', 'rs1_h2_val == -5', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000744]:KHMBT a3, a0, a1
	-[0x80000748]:sd a3, 240(sp)
Current Store : [0x8000074c] : sd a0, 248(sp) -- Store: [0x80003308]:0x0000FFFBFFFD0100




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x10', 'rs2_h3_val == -129', 'rs1_h2_val == 16', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000774]:KHMBT a0, a5, a6
	-[0x80000778]:sd a0, 256(sp)
Current Store : [0x8000077c] : sd a5, 264(sp) -- Store: [0x80003318]:0x00050010BFFFFFF8




Last Coverpoint : ['rs1 : x19', 'rs2 : x18', 'rd : x0', 'rs1_h0_val == -32768', 'rs2_h3_val == -65', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x800007b4]:KHMBT zero, s3, s2
	-[0x800007b8]:sd zero, 0(ra)
Current Store : [0x800007bc] : sd s3, 8(ra) -- Store: [0x80003328]:0xDFFF0005FFFD8000




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x29', 'rs2_h3_val == -9', 'rs2_h1_val == 2048', 'rs2_h0_val == 32', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800007e8]:KHMBT t4, s10, s9
	-[0x800007ec]:sd t4, 16(ra)
Current Store : [0x800007f0] : sd s10, 24(ra) -- Store: [0x80003338]:0x4000DFFFFFF90080




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x12', 'rs2_h3_val == -5', 'rs2_h1_val == -33', 'rs1_h3_val == -2', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x8000081c]:KHMBT a2, sp, s10
	-[0x80000820]:sd a2, 32(ra)
Current Store : [0x80000824] : sd sp, 40(ra) -- Store: [0x80003348]:0xFFFEFFF7FFF9FFEF




Last Coverpoint : ['rs1 : x4', 'rs2 : x22', 'rd : x17', 'rs2_h3_val == -3', 'rs2_h1_val == -1', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000084c]:KHMBT a7, tp, s6
	-[0x80000850]:sd a7, 48(ra)
Current Store : [0x80000854] : sd tp, 56(ra) -- Store: [0x80003358]:0x00030010FDFF2000




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x23', 'rs2_h3_val == -2', 'rs2_h2_val == -17', 'rs2_h1_val == -129', 'rs2_h0_val == -257', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000878]:KHMBT s7, s8, a7
	-[0x8000087c]:sd s7, 64(ra)
Current Store : [0x80000880] : sd s8, 72(ra) -- Store: [0x80003368]:0x0003001000080400




Last Coverpoint : ['rs1 : x7', 'rs2 : x19', 'rd : x22', 'rs2_h3_val == -32768', 'rs2_h2_val == -1025', 'rs1_h3_val == -129', 'rs1_h2_val == -1025', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800008b4]:KHMBT s6, t2, s3
	-[0x800008b8]:sd s6, 80(ra)
Current Store : [0x800008bc] : sd t2, 88(ra) -- Store: [0x80003378]:0xFF7FFBFF0010FF7F




Last Coverpoint : ['rs1 : x30', 'rs2 : x27', 'rd : x26', 'rs2_h3_val == 16384', 'rs2_h0_val == -65', 'rs1_h2_val == -129', 'rs1_h1_val == 1', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800008f0]:KHMBT s10, t5, s11
	-[0x800008f4]:sd s10, 96(ra)
Current Store : [0x800008f8] : sd t5, 104(ra) -- Store: [0x80003388]:0x0002FF7F0001AAAA




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x21', 'rs2_h3_val == 8192', 'rs2_h1_val == 32', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000928]:KHMBT s5, a2, sp
	-[0x8000092c]:sd s5, 112(ra)
Current Store : [0x80000930] : sd a2, 120(ra) -- Store: [0x80003398]:0x3FFF0004FFEF2000




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rd : x16', 'rs2_h3_val == 4096', 'rs2_h2_val == 256']
Last Code Sequence : 
	-[0x80000958]:KHMBT a6, a7, t5
	-[0x8000095c]:sd a6, 128(ra)
Current Store : [0x80000960] : sd a7, 136(ra) -- Store: [0x800033a8]:0x0009FFF720000400




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rd : x25', 'rs2_h3_val == 2048', 'rs2_h0_val == -21846', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000994]:KHMBT s9, zero, a0
	-[0x80000998]:sd s9, 144(ra)
Current Store : [0x8000099c] : sd zero, 152(ra) -- Store: [0x800033b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rd : x8', 'rs2_h3_val == 512', 'rs2_h2_val == 1024', 'rs2_h0_val == 1024', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x800009cc]:KHMBT fp, s9, t4
	-[0x800009d0]:sd fp, 160(ra)
Current Store : [0x800009d4] : sd s9, 168(ra) -- Store: [0x800033c8]:0x0004FF7FFFFA0000




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x2', 'rs2_h3_val == 256', 'rs2_h1_val == -2', 'rs2_h0_val == -1', 'rs1_h3_val == 512', 'rs1_h1_val == 2', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000a08]:KHMBT sp, s11, t3
	-[0x80000a0c]:sd sp, 176(ra)
Current Store : [0x80000a10] : sd s11, 184(ra) -- Store: [0x800033d8]:0x020000090002FFFD




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x3', 'rs2_h3_val == 128', 'rs2_h1_val == 128', 'rs1_h3_val == -65', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80000a3c]:KHMBT gp, a4, t2
	-[0x80000a40]:sd gp, 192(ra)
Current Store : [0x80000a44] : sd a4, 200(ra) -- Store: [0x800033e8]:0xFFBF000100040000




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x9', 'rs2_h3_val == 64', 'rs2_h2_val == -65', 'rs2_h0_val == 8', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000a70]:KHMBT s1, a6, a4
	-[0x80000a74]:sd s1, 208(ra)
Current Store : [0x80000a78] : sd a6, 216(ra) -- Store: [0x800033f8]:0xC000000180000006




Last Coverpoint : ['rs1 : x11', 'rs2 : x13', 'rd : x6', 'rs2_h3_val == 32', 'rs2_h2_val == -257', 'rs2_h1_val == 8192', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000aac]:KHMBT t1, a1, a3
	-[0x80000ab0]:sd t1, 224(ra)
Current Store : [0x80000ab4] : sd a1, 232(ra) -- Store: [0x80003408]:0x000200090100FFF6




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 32767', 'rs2_h0_val == 21845', 'rs1_h3_val == 8192', 'rs1_h2_val == -65', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ae4]:KHMBT t6, t5, t4
	-[0x80000ae8]:sd t6, 240(ra)
Current Store : [0x80000aec] : sd t5, 248(ra) -- Store: [0x80003418]:0x2000FFBF0000FDFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == 16', 'rs1_h2_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000b24]:KHMBT t6, t5, t4
	-[0x80000b28]:sd t6, 0(ra)
Current Store : [0x80000b2c] : sd t5, 8(ra) -- Store: [0x80003428]:0x0400FFFFFBFFFFDF




Last Coverpoint : ['rs2_h1_val == -2049', 'rs1_h2_val == -513', 'rs1_h1_val == -5', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000b60]:KHMBT t6, t5, t4
	-[0x80000b64]:sd t6, 16(ra)
Current Store : [0x80000b68] : sd t5, 24(ra) -- Store: [0x80003438]:0xFF7FFDFFFFFBDFFF




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_h3_val == 64', 'rs1_h2_val == -2', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000b90]:KHMBT t6, t5, t4
	-[0x80000b94]:sd t6, 32(ra)
Current Store : [0x80000b98] : sd t5, 40(ra) -- Store: [0x80003448]:0x0040FFFE40008000




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -2', 'rs1_h2_val == -17', 'rs1_h1_val == 2048', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000bd0]:KHMBT t6, t5, t4
	-[0x80000bd4]:sd t6, 48(ra)
Current Store : [0x80000bd8] : sd t5, 56(ra) -- Store: [0x80003458]:0x7FFFFFEF0800FFFE




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h3_val == 256', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000c00]:KHMBT t6, t5, t4
	-[0x80000c04]:sd t6, 64(ra)
Current Store : [0x80000c08] : sd t5, 72(ra) -- Store: [0x80003468]:0x0100FFBF04000007




Last Coverpoint : ['rs1_h1_val == 512', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000c38]:KHMBT t6, t5, t4
	-[0x80000c3c]:sd t6, 80(ra)
Current Store : [0x80000c40] : sd t5, 88(ra) -- Store: [0x80003478]:0xFFBFC00002005555




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h1_val == -17', 'rs1_h3_val == -1', 'rs1_h2_val == -257', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000c68]:KHMBT t6, t5, t4
	-[0x80000c6c]:sd t6, 96(ra)
Current Store : [0x80000c70] : sd t5, 104(ra) -- Store: [0x80003488]:0xFFFFFEFF0080FF7F




Last Coverpoint : ['rs1_h3_val == -3', 'rs1_h2_val == 8192', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000ca0]:KHMBT t6, t5, t4
	-[0x80000ca4]:sd t6, 112(ra)
Current Store : [0x80000ca8] : sd t5, 120(ra) -- Store: [0x80003498]:0xFFFD200000200006




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000cd4]:KHMBT t6, t5, t4
	-[0x80000cd8]:sd t6, 128(ra)
Current Store : [0x80000cdc] : sd t5, 136(ra) -- Store: [0x800034a8]:0x00080005FFFF5555




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000d0c]:KHMBT t6, t5, t4
	-[0x80000d10]:sd t6, 144(ra)
Current Store : [0x80000d14] : sd t5, 152(ra) -- Store: [0x800034b8]:0xFFBF0004FFEF7FFF




Last Coverpoint : ['rs2_h2_val == -5', 'rs1_h3_val == -513', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000d48]:KHMBT t6, t5, t4
	-[0x80000d4c]:sd t6, 160(ra)
Current Store : [0x80000d50] : sd t5, 168(ra) -- Store: [0x800034c8]:0xFDFFFFBFC000EFFF




Last Coverpoint : ['rs1_h1_val == -129', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000d78]:KHMBT t6, t5, t4
	-[0x80000d7c]:sd t6, 176(ra)
Current Store : [0x80000d80] : sd t5, 184(ra) -- Store: [0x800034d8]:0x0040DFFFFF7FFEFF




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000db4]:KHMBT t6, t5, t4
	-[0x80000db8]:sd t6, 192(ra)
Current Store : [0x80000dbc] : sd t5, 200(ra) -- Store: [0x800034e8]:0xFFFE20004000FFBF




Last Coverpoint : ['rs2_h3_val == -8193', 'rs2_h1_val == 32767', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000dec]:KHMBT t6, t5, t4
	-[0x80000df0]:sd t6, 208(ra)
Current Store : [0x80000df4] : sd t5, 216(ra) -- Store: [0x800034f8]:0xFFBF00100008FFF7




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h3_val == -16385', 'rs1_h2_val == 64', 'rs1_h1_val == -65', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000e1c]:KHMBT t6, t5, t4
	-[0x80000e20]:sd t6, 224(ra)
Current Store : [0x80000e24] : sd t5, 232(ra) -- Store: [0x80003508]:0xBFFF0040FFBF4000




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000e60]:KHMBT t6, t5, t4
	-[0x80000e64]:sd t6, 240(ra)
Current Store : [0x80000e68] : sd t5, 248(ra) -- Store: [0x80003518]:0x3FFFFFF600800800




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h3_val == 1', 'rs1_h1_val == -8193', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000e98]:KHMBT t6, t5, t4
	-[0x80000e9c]:sd t6, 256(ra)
Current Store : [0x80000ea0] : sd t5, 264(ra) -- Store: [0x80003528]:0x0001FBFFDFFF0200




Last Coverpoint : ['rs1_h3_val == 21845', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000ecc]:KHMBT t6, t5, t4
	-[0x80000ed0]:sd t6, 272(ra)
Current Store : [0x80000ed4] : sd t5, 280(ra) -- Store: [0x80003538]:0x5555555500010040




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000ef4]:KHMBT t6, t5, t4
	-[0x80000ef8]:sd t6, 288(ra)
Current Store : [0x80000efc] : sd t5, 296(ra) -- Store: [0x80003548]:0xFFFFFFFA55550010




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000f28]:KHMBT t6, t5, t4
	-[0x80000f2c]:sd t6, 304(ra)
Current Store : [0x80000f30] : sd t5, 312(ra) -- Store: [0x80003558]:0xFFFCFFFB40000008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000f5c]:KHMBT t6, t5, t4
	-[0x80000f60]:sd t6, 320(ra)
Current Store : [0x80000f64] : sd t5, 328(ra) -- Store: [0x80003568]:0xFFF8C00001000004




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000f98]:KHMBT t6, t5, t4
	-[0x80000f9c]:sd t6, 336(ra)
Current Store : [0x80000fa0] : sd t5, 344(ra) -- Store: [0x80003578]:0x00800040FFFA0002




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 32', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000fc8]:KHMBT t6, t5, t4
	-[0x80000fcc]:sd t6, 352(ra)
Current Store : [0x80000fd0] : sd t5, 360(ra) -- Store: [0x80003588]:0xBFFFFFFBF7FFFFEF




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80001000]:KHMBT t6, t5, t4
	-[0x80001004]:sd t6, 368(ra)
Current Store : [0x80001008] : sd t5, 376(ra) -- Store: [0x80003598]:0x00080800FFF68000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001044]:KHMBT t6, t5, t4
	-[0x80001048]:sd t6, 384(ra)
Current Store : [0x8000104c] : sd t5, 392(ra) -- Store: [0x800035a8]:0x5555FFFEBFFFAAAA




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x8000107c]:KHMBT t6, t5, t4
	-[0x80001080]:sd t6, 400(ra)
Current Store : [0x80001084] : sd t5, 408(ra) -- Store: [0x800035b8]:0xFFFF7FFFFFBF0008




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x800010b8]:KHMBT t6, t5, t4
	-[0x800010bc]:sd t6, 416(ra)
Current Store : [0x800010c0] : sd t5, 424(ra) -- Store: [0x800035c8]:0xDFFF0006FFF6FDFF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800010f4]:KHMBT t6, t5, t4
	-[0x800010f8]:sd t6, 432(ra)
Current Store : [0x800010fc] : sd t5, 440(ra) -- Store: [0x800035d8]:0xFBFF00201000FFF8




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001130]:KHMBT t6, t5, t4
	-[0x80001134]:sd t6, 448(ra)
Current Store : [0x80001138] : sd t5, 456(ra) -- Store: [0x800035e8]:0x4000FFF9FFEFAAAA




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h3_val == -32768', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x8000116c]:KHMBT t6, t5, t4
	-[0x80001170]:sd t6, 464(ra)
Current Store : [0x80001174] : sd t5, 472(ra) -- Store: [0x800035f8]:0x80000002FBFF0010




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001198]:KHMBT t6, t5, t4
	-[0x8000119c]:sd t6, 480(ra)
Current Store : [0x800011a0] : sd t5, 488(ra) -- Store: [0x80003608]:0xFFDFFFFF01000000




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800011d0]:KHMBT t6, t5, t4
	-[0x800011d4]:sd t6, 496(ra)
Current Store : [0x800011d8] : sd t5, 504(ra) -- Store: [0x80003618]:0xC0005555FBFF0010




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001208]:KHMBT t6, t5, t4
	-[0x8000120c]:sd t6, 512(ra)
Current Store : [0x80001210] : sd t5, 520(ra) -- Store: [0x80003628]:0xFFFA0001FEFF0800




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000123c]:KHMBT t6, t5, t4
	-[0x80001240]:sd t6, 528(ra)
Current Store : [0x80001244] : sd t5, 536(ra) -- Store: [0x80003638]:0xFFFFC0000200FFFF




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80001270]:KHMBT t6, t5, t4
	-[0x80001274]:sd t6, 544(ra)
Current Store : [0x80001278] : sd t5, 552(ra) -- Store: [0x80003648]:0xDFFF2000FFFDFDFF




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h0_val == 64', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x800012ac]:KHMBT t6, t5, t4
	-[0x800012b0]:sd t6, 560(ra)
Current Store : [0x800012b4] : sd t5, 568(ra) -- Store: [0x80003658]:0x5555000800050006




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x800012e4]:KHMBT t6, t5, t4
	-[0x800012e8]:sd t6, 576(ra)
Current Store : [0x800012ec] : sd t5, 584(ra) -- Store: [0x80003668]:0xF7FFFEFF8000FBFF




Last Coverpoint : ['rs2_h1_val == 1024', 'rs1_h3_val == -257', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x8000131c]:KHMBT t6, t5, t4
	-[0x80001320]:sd t6, 592(ra)
Current Store : [0x80001324] : sd t5, 600(ra) -- Store: [0x80003678]:0xFEFFFFFD01007FFF




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x80001350]:KHMBT t6, t5, t4
	-[0x80001354]:sd t6, 608(ra)
Current Store : [0x80001358] : sd t5, 616(ra) -- Store: [0x80003688]:0xFFEF000200400008




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80001384]:KHMBT t6, t5, t4
	-[0x80001388]:sd t6, 624(ra)
Current Store : [0x8000138c] : sd t5, 632(ra) -- Store: [0x80003698]:0xFFF7FDFF00040002




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_h3_val == -5']
Last Code Sequence : 
	-[0x800013b4]:KHMBT t6, t5, t4
	-[0x800013b8]:sd t6, 640(ra)
Current Store : [0x800013bc] : sd t5, 648(ra) -- Store: [0x800036a8]:0xFFFBDFFF0005C000




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800013e8]:KHMBT t6, t5, t4
	-[0x800013ec]:sd t6, 656(ra)
Current Store : [0x800013f0] : sd t5, 664(ra) -- Store: [0x800036b8]:0x00400003FFF70100




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001428]:KHMBT t6, t5, t4
	-[0x8000142c]:sd t6, 672(ra)
Current Store : [0x80001430] : sd t5, 680(ra) -- Store: [0x800036c8]:0x00080100AAAA1000




Last Coverpoint : ['rs2_h2_val == -16385']
Last Code Sequence : 
	-[0x80001464]:KHMBT t6, t5, t4
	-[0x80001468]:sd t6, 688(ra)
Current Store : [0x8000146c] : sd t5, 696(ra) -- Store: [0x800036d8]:0x5555FDFF0005FFFE




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800014a0]:KHMBT t6, t5, t4
	-[0x800014a4]:sd t6, 704(ra)
Current Store : [0x800014a8] : sd t5, 712(ra) -- Store: [0x800036e8]:0x0020C0002000FFDF




Last Coverpoint : ['rs1_h3_val == 16']
Last Code Sequence : 
	-[0x800014d0]:KHMBT t6, t5, t4
	-[0x800014d4]:sd t6, 720(ra)
Current Store : [0x800014d8] : sd t5, 728(ra) -- Store: [0x800036f8]:0x0010FDFFFFF74000




Last Coverpoint : ['rs2_h2_val == -33']
Last Code Sequence : 
	-[0x8000150c]:KHMBT t6, t5, t4
	-[0x80001510]:sd t6, 736(ra)
Current Store : [0x80001514] : sd t5, 744(ra) -- Store: [0x80003708]:0x0020EFFF0005FFF8




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_h3_val == 4096', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80001548]:KHMBT t6, t5, t4
	-[0x8000154c]:sd t6, 752(ra)
Current Store : [0x80001550] : sd t5, 760(ra) -- Store: [0x80003718]:0x1000FFDFFFF6FFFD




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001584]:KHMBT t6, t5, t4
	-[0x80001588]:sd t6, 768(ra)
Current Store : [0x8000158c] : sd t5, 776(ra) -- Store: [0x80003728]:0x8000AAAAFFFDFFFF




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800015b8]:KHMBT t6, t5, t4
	-[0x800015bc]:sd t6, 784(ra)
Current Store : [0x800015c0] : sd t5, 792(ra) -- Store: [0x80003738]:0xFFF7FDFFEFFFFFEF




Last Coverpoint : ['rs2_h2_val == 4096']
Last Code Sequence : 
	-[0x800015e0]:KHMBT t6, t5, t4
	-[0x800015e4]:sd t6, 800(ra)
Current Store : [0x800015e8] : sd t5, 808(ra) -- Store: [0x80003748]:0xFFFCFFFB20000000




Last Coverpoint : ['rs2_h2_val == 512']
Last Code Sequence : 
	-[0x80001620]:KHMBT t6, t5, t4
	-[0x80001624]:sd t6, 816(ra)
Current Store : [0x80001628] : sd t5, 824(ra) -- Store: [0x80003758]:0x7FFF5555C0007FFF




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80001654]:KHMBT t6, t5, t4
	-[0x80001658]:sd t6, 832(ra)
Current Store : [0x8000165c] : sd t5, 840(ra) -- Store: [0x80003768]:0xFFFC00100007FFFA




Last Coverpoint : ['rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80001688]:KHMBT t6, t5, t4
	-[0x8000168c]:sd t6, 848(ra)
Current Store : [0x80001690] : sd t5, 856(ra) -- Store: [0x80003778]:0x0800FFFC00000003




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x800016c4]:KHMBT t6, t5, t4
	-[0x800016c8]:sd t6, 864(ra)
Current Store : [0x800016cc] : sd t5, 872(ra) -- Store: [0x80003788]:0x0100100020000020




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x800016f8]:KHMBT t6, t5, t4
	-[0x800016fc]:sd t6, 880(ra)
Current Store : [0x80001700] : sd t5, 888(ra) -- Store: [0x80003798]:0xFFFD0400C000FFFC




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001730]:KHMBT t6, t5, t4
	-[0x80001734]:sd t6, 896(ra)
Current Store : [0x80001738] : sd t5, 904(ra) -- Store: [0x800037a8]:0x0040020000025555




Last Coverpoint : ['rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80001768]:KHMBT t6, t5, t4
	-[0x8000176c]:sd t6, 912(ra)
Current Store : [0x80001770] : sd t5, 920(ra) -- Store: [0x800037b8]:0xFFFB0003FFF70009




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x8000179c]:KHMBT t6, t5, t4
	-[0x800017a0]:sd t6, 928(ra)
Current Store : [0x800017a4] : sd t5, 936(ra) -- Store: [0x800037c8]:0x00050400FFFE7FFF




Last Coverpoint : ['rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800017d4]:KHMBT t6, t5, t4
	-[0x800017d8]:sd t6, 944(ra)
Current Store : [0x800017dc] : sd t5, 952(ra) -- Store: [0x800037d8]:0xFFFC00000005FFDF




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800017fc]:KHMBT t6, t5, t4
	-[0x80001800]:sd t6, 960(ra)
Current Store : [0x80001804] : sd t5, 968(ra) -- Store: [0x800037e8]:0x0004FFFE7FFFFFFF




Last Coverpoint : ['rs2_h1_val == 256', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001838]:KHMBT t6, t5, t4
	-[0x8000183c]:sd t6, 976(ra)
Current Store : [0x80001840] : sd t5, 984(ra) -- Store: [0x800037f8]:0x04000020FFDFFFF9




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001860]:KHMBT t6, t5, t4
	-[0x80001864]:sd t6, 992(ra)
Current Store : [0x80001868] : sd t5, 1000(ra) -- Store: [0x80003808]:0x0080FFFA7FFFFF7F




Last Coverpoint : ['rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001898]:KHMBT t6, t5, t4
	-[0x8000189c]:sd t6, 1008(ra)
Current Store : [0x800018a0] : sd t5, 1016(ra) -- Store: [0x80003818]:0xAAAA8000FFF90040




Last Coverpoint : ['opcode : khmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == -4097', 'rs2_h0_val == -17', 'rs1_h3_val == 16384', 'rs1_h2_val == 16384', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800018d0]:KHMBT t6, t5, t4
	-[0x800018d4]:sd t6, 1024(ra)
Current Store : [0x800018d8] : sd t5, 1032(ra) -- Store: [0x80003828]:0x40004000FF7F8000




Last Coverpoint : ['rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80001904]:KHMBT t6, t5, t4
	-[0x80001908]:sd t6, 1040(ra)
Current Store : [0x8000190c] : sd t5, 1048(ra) -- Store: [0x80003838]:0xFFF8F7FF00000400





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

|s.no|            signature             |                                                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                                                   |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFF7|- opcode : khmbt<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -4097<br> - rs2_h0_val == -17<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -4097<br> - rs1_h0_val == -17<br> |[0x800003d0]:KHMBT a4, s5, s5<br> [0x800003d4]:sd a4, 0(sp)<br>     |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h0_val == -129<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000404]:KHMBT s4, s4, s4<br> [0x80000408]:sd s4, 16(sp)<br>    |
|   3|[0x80003230]<br>0x0000000000000020|- rs1 : x9<br> - rs2 : x15<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -513<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 4096<br>                 |[0x8000043c]:KHMBT a1, s1, a5<br> [0x80000440]:sd a1, 32(sp)<br>    |
|   4|[0x80003240]<br>0xFFFFFFFFFFFFF000|- rs1 : x31<br> - rs2 : x1<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -513<br> - rs1_h3_val == 2<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                              |[0x80000474]:KHMBT t6, t6, ra<br> [0x80000478]:sd t6, 48(sp)<br>    |
|   5|[0x80003250]<br>0x0000000000002AAB|- rs1 : x6<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -17<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -5<br> - rs1_h3_val == 128<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 64<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                               |[0x800004ac]:KHMBT t0, t1, t0<br> [0x800004b0]:sd t0, 64(sp)<br>    |
|   6|[0x80003260]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x13<br> - rs2 : x31<br> - rd : x4<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -9<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 128<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                               |[0x800004f8]:KHMBT tp, a3, t6<br> [0x800004fc]:sd tp, 80(sp)<br>    |
|   7|[0x80003270]<br>0xFFFFFFFFFFFFFFFB|- rs1 : x23<br> - rs2 : x24<br> - rd : x7<br> - rs2_h3_val == -33<br> - rs2_h1_val == 64<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 256<br> - rs1_h1_val == 0<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                         |[0x80000534]:KHMBT t2, s7, s8<br> [0x80000538]:sd t2, 96(sp)<br>    |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x9<br> - rd : x19<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 0<br> - rs2_h2_val == -1<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 4096<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 32<br> - rs1_h1_val == 8<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                |[0x8000056c]:KHMBT s3, gp, s1<br> [0x80000570]:sd s3, 112(sp)<br>   |
|   9|[0x80003290]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x28<br> - rs2 : x8<br> - rd : x1<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 256<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                    |[0x800005a8]:KHMBT ra, t3, fp<br> [0x800005ac]:sd ra, 128(sp)<br>   |
|  10|[0x800032a0]<br>0x0000000000000010|- rs1 : x5<br> - rs2 : x23<br> - rd : x28<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -9<br> - rs2_h0_val == 1<br> - rs1_h3_val == 8<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                               |[0x800005e0]:KHMBT t3, t0, s7<br> [0x800005e4]:sd t3, 144(sp)<br>   |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x0<br> - rd : x24<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000624]:KHMBT s8, t4, zero<br> [0x80000628]:sd s8, 160(sp)<br> |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x4<br> - rd : x30<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 8192<br> - rs1_h3_val == 16384<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x80000660]:KHMBT t5, fp, tp<br> [0x80000664]:sd t5, 176(sp)<br>   |
|  13|[0x800032d0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rs2 : x3<br> - rd : x15<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 2<br> - rs2_h0_val == 4<br> - rs1_h2_val == 21845<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                   |[0x8000069c]:KHMBT a5, s2, gp<br> [0x800006a0]:sd a5, 192(sp)<br>   |
|  14|[0x800032e0]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x1<br> - rs2 : x12<br> - rd : x18<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 16<br> - rs2_h1_val == -9<br> - rs2_h0_val == 128<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x800006d4]:KHMBT s2, ra, a2<br> [0x800006d8]:sd s2, 208(sp)<br>   |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x6<br> - rd : x27<br> - rs2_h3_val == -513<br> - rs2_h2_val == 21845<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000708]:KHMBT s11, s6, t1<br> [0x8000070c]:sd s11, 224(sp)<br> |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x11<br> - rd : x13<br> - rs2_h3_val == -257<br> - rs2_h2_val == -2<br> - rs2_h1_val == 4<br> - rs1_h3_val == 0<br> - rs1_h2_val == -5<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                        |[0x80000744]:KHMBT a3, a0, a1<br> [0x80000748]:sd a3, 240(sp)<br>   |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x16<br> - rd : x10<br> - rs2_h3_val == -129<br> - rs1_h2_val == 16<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000774]:KHMBT a0, a5, a6<br> [0x80000778]:sd a0, 256(sp)<br>   |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x18<br> - rd : x0<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -65<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800007b4]:KHMBT zero, s3, s2<br> [0x800007b8]:sd zero, 0(ra)<br> |
|  19|[0x80003330]<br>0x0000000000000008|- rs1 : x26<br> - rs2 : x25<br> - rd : x29<br> - rs2_h3_val == -9<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 32<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800007e8]:KHMBT t4, s10, s9<br> [0x800007ec]:sd t4, 16(ra)<br>   |
|  20|[0x80003340]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x26<br> - rd : x12<br> - rs2_h3_val == -5<br> - rs2_h1_val == -33<br> - rs1_h3_val == -2<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000081c]:KHMBT a2, sp, s10<br> [0x80000820]:sd a2, 32(ra)<br>   |
|  21|[0x80003350]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x22<br> - rd : x17<br> - rs2_h3_val == -3<br> - rs2_h1_val == -1<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000084c]:KHMBT a7, tp, s6<br> [0x80000850]:sd a7, 48(ra)<br>    |
|  22|[0x80003360]<br>0xFFFFFFFFFFFFFFFB|- rs1 : x24<br> - rs2 : x17<br> - rd : x23<br> - rs2_h3_val == -2<br> - rs2_h2_val == -17<br> - rs2_h1_val == -129<br> - rs2_h0_val == -257<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000878]:KHMBT s7, s8, a7<br> [0x8000087c]:sd s7, 64(ra)<br>    |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x19<br> - rd : x22<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -1025<br> - rs1_h3_val == -129<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x800008b4]:KHMBT s6, t2, s3<br> [0x800008b8]:sd s6, 80(ra)<br>    |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFFFD5|- rs1 : x30<br> - rs2 : x27<br> - rd : x26<br> - rs2_h3_val == 16384<br> - rs2_h0_val == -65<br> - rs1_h2_val == -129<br> - rs1_h1_val == 1<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800008f0]:KHMBT s10, t5, s11<br> [0x800008f4]:sd s10, 96(ra)<br> |
|  25|[0x80003390]<br>0x0000000000000008|- rs1 : x12<br> - rs2 : x2<br> - rd : x21<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 32<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000928]:KHMBT s5, a2, sp<br> [0x8000092c]:sd s5, 112(ra)<br>   |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x30<br> - rd : x16<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000958]:KHMBT a6, a7, t5<br> [0x8000095c]:sd a6, 128(ra)<br>   |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x25<br> - rs2_h3_val == 2048<br> - rs2_h0_val == -21846<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000994]:KHMBT s9, zero, a0<br> [0x80000998]:sd s9, 144(ra)<br> |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x29<br> - rd : x8<br> - rs2_h3_val == 512<br> - rs2_h2_val == 1024<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800009cc]:KHMBT fp, s9, t4<br> [0x800009d0]:sd fp, 160(ra)<br>   |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x2<br> - rs2_h3_val == 256<br> - rs2_h1_val == -2<br> - rs2_h0_val == -1<br> - rs1_h3_val == 512<br> - rs1_h1_val == 2<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000a08]:KHMBT sp, s11, t3<br> [0x80000a0c]:sd sp, 176(ra)<br>  |
|  30|[0x800033e0]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x7<br> - rd : x3<br> - rs2_h3_val == 128<br> - rs2_h1_val == 128<br> - rs1_h3_val == -65<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000a3c]:KHMBT gp, a4, t2<br> [0x80000a40]:sd gp, 192(ra)<br>   |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x14<br> - rd : x9<br> - rs2_h3_val == 64<br> - rs2_h2_val == -65<br> - rs2_h0_val == 8<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000a70]:KHMBT s1, a6, a4<br> [0x80000a74]:sd s1, 208(ra)<br>   |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x11<br> - rs2 : x13<br> - rd : x6<br> - rs2_h3_val == 32<br> - rs2_h2_val == -257<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000aac]:KHMBT t1, a1, a3<br> [0x80000ab0]:sd t1, 224(ra)<br>   |
|  33|[0x80003410]<br>0x0000000000000000|- rs2_h3_val == 16<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -65<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ae4]:KHMBT t6, t5, t4<br> [0x80000ae8]:sd t6, 240(ra)<br>   |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 8<br> - rs2_h1_val == 16<br> - rs1_h2_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b24]:KHMBT t6, t5, t4<br> [0x80000b28]:sd t6, 0(ra)<br>     |
|  35|[0x80003430]<br>0x0000000000000200|- rs2_h1_val == -2049<br> - rs1_h2_val == -513<br> - rs1_h1_val == -5<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b60]:KHMBT t6, t5, t4<br> [0x80000b64]:sd t6, 16(ra)<br>    |
|  36|[0x80003440]<br>0x0000000000000801|- rs2_h2_val == 8<br> - rs1_h3_val == 64<br> - rs1_h2_val == -2<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000b90]:KHMBT t6, t5, t4<br> [0x80000b94]:sd t6, 32(ra)<br>    |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 8<br> - rs2_h0_val == -2<br> - rs1_h2_val == -17<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000bd0]:KHMBT t6, t5, t4<br> [0x80000bd4]:sd t6, 48(ra)<br>    |
|  38|[0x80003460]<br>0x0000000000000000|- rs2_h2_val == 2048<br> - rs1_h3_val == 256<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c00]:KHMBT t6, t5, t4<br> [0x80000c04]:sd t6, 64(ra)<br>    |
|  39|[0x80003470]<br>0xFFFFFFFFFFFFFFFE|- rs1_h1_val == 512<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c38]:KHMBT t6, t5, t4<br> [0x80000c3c]:sd t6, 80(ra)<br>    |
|  40|[0x80003480]<br>0x0000000000000000|- rs2_h2_val == -129<br> - rs2_h1_val == -17<br> - rs1_h3_val == -1<br> - rs1_h2_val == -257<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000c68]:KHMBT t6, t5, t4<br> [0x80000c6c]:sd t6, 96(ra)<br>    |
|  41|[0x80003490]<br>0xFFFFFFFFFFFFFFFA|- rs1_h3_val == -3<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ca0]:KHMBT t6, t5, t4<br> [0x80000ca4]:sd t6, 112(ra)<br>   |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFFF554|- rs2_h0_val == -1025<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cd4]:KHMBT t6, t5, t4<br> [0x80000cd8]:sd t6, 128(ra)<br>   |
|  43|[0x800034b0]<br>0x00000000000001FF|- rs2_h3_val == 1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d0c]:KHMBT t6, t5, t4<br> [0x80000d10]:sd t6, 144(ra)<br>   |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFFFEF|- rs2_h2_val == -5<br> - rs1_h3_val == -513<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d48]:KHMBT t6, t5, t4<br> [0x80000d4c]:sd t6, 160(ra)<br>   |
|  45|[0x800034d0]<br>0x0000000000000000|- rs1_h1_val == -129<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d78]:KHMBT t6, t5, t4<br> [0x80000d7c]:sd t6, 176(ra)<br>   |
|  46|[0x800034e0]<br>0x0000000000000000|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000db4]:KHMBT t6, t5, t4<br> [0x80000db8]:sd t6, 192(ra)<br>   |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFFFFF7|- rs2_h3_val == -8193<br> - rs2_h1_val == 32767<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000dec]:KHMBT t6, t5, t4<br> [0x80000df0]:sd t6, 208(ra)<br>   |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFDFFF|- rs2_h1_val == -16385<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 64<br> - rs1_h1_val == -65<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e1c]:KHMBT t6, t5, t4<br> [0x80000e20]:sd t6, 224(ra)<br>   |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFFB|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e60]:KHMBT t6, t5, t4<br> [0x80000e64]:sd t6, 240(ra)<br>   |
|  50|[0x80003520]<br>0x0000000000000000|- rs2_h0_val == 2<br> - rs1_h3_val == 1<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e98]:KHMBT t6, t5, t4<br> [0x80000e9c]:sd t6, 256(ra)<br>   |
|  51|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 21845<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ecc]:KHMBT t6, t5, t4<br> [0x80000ed0]:sd t6, 272(ra)<br>   |
|  52|[0x80003540]<br>0x0000000000000000|- rs2_h2_val == 2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ef4]:KHMBT t6, t5, t4<br> [0x80000ef8]:sd t6, 288(ra)<br>   |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFFFFB|- rs2_h0_val == -16385<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000f28]:KHMBT t6, t5, t4<br> [0x80000f2c]:sd t6, 304(ra)<br>   |
|  54|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f5c]:KHMBT t6, t5, t4<br> [0x80000f60]:sd t6, 320(ra)<br>   |
|  55|[0x80003570]<br>0x0000000000000000|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f98]:KHMBT t6, t5, t4<br> [0x80000f9c]:sd t6, 336(ra)<br>   |
|  56|[0x80003580]<br>0x0000000000000008|- rs2_h3_val == 4<br> - rs2_h2_val == 32<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000fc8]:KHMBT t6, t5, t4<br> [0x80000fcc]:sd t6, 352(ra)<br>   |
|  57|[0x80003590]<br>0x000000000000000A|- rs2_h3_val == 2<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001000]:KHMBT t6, t5, t4<br> [0x80001004]:sd t6, 368(ra)<br>   |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001044]:KHMBT t6, t5, t4<br> [0x80001048]:sd t6, 384(ra)<br>   |
|  59|[0x800035b0]<br>0x0000000000000000|- rs2_h2_val == 128<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000107c]:KHMBT t6, t5, t4<br> [0x80001080]:sd t6, 400(ra)<br>   |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 1<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800010b8]:KHMBT t6, t5, t4<br> [0x800010bc]:sd t6, 416(ra)<br>   |
|  61|[0x800035d0]<br>0x0000000000000000|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800010f4]:KHMBT t6, t5, t4<br> [0x800010f8]:sd t6, 432(ra)<br>   |
|  62|[0x800035e0]<br>0x00000000000038E4|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001130]:KHMBT t6, t5, t4<br> [0x80001134]:sd t6, 448(ra)<br>   |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == -3<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000116c]:KHMBT t6, t5, t4<br> [0x80001170]:sd t6, 464(ra)<br>   |
|  64|[0x80003600]<br>0x0000000000000000|- rs2_h0_val == -32768<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001198]:KHMBT t6, t5, t4<br> [0x8000119c]:sd t6, 480(ra)<br>   |
|  65|[0x80003610]<br>0x0000000000000000|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011d0]:KHMBT t6, t5, t4<br> [0x800011d4]:sd t6, 496(ra)<br>   |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 8192<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001208]:KHMBT t6, t5, t4<br> [0x8000120c]:sd t6, 512(ra)<br>   |
|  67|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000123c]:KHMBT t6, t5, t4<br> [0x80001240]:sd t6, 528(ra)<br>   |
|  68|[0x80003640]<br>0x0000000000000000|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001270]:KHMBT t6, t5, t4<br> [0x80001274]:sd t6, 544(ra)<br>   |
|  69|[0x80003650]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 4<br> - rs2_h0_val == 64<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012ac]:KHMBT t6, t5, t4<br> [0x800012b0]:sd t6, 560(ra)<br>   |
|  70|[0x80003660]<br>0xFFFFFFFFFFFFFFBF|- rs2_h0_val == 16<br> - rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800012e4]:KHMBT t6, t5, t4<br> [0x800012e8]:sd t6, 576(ra)<br>   |
|  71|[0x80003670]<br>0x00000000000003FF|- rs2_h1_val == 1024<br> - rs1_h3_val == -257<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000131c]:KHMBT t6, t5, t4<br> [0x80001320]:sd t6, 592(ra)<br>   |
|  72|[0x80003680]<br>0x0000000000000000|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001350]:KHMBT t6, t5, t4<br> [0x80001354]:sd t6, 608(ra)<br>   |
|  73|[0x80003690]<br>0x0000000000000000|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001384]:KHMBT t6, t5, t4<br> [0x80001388]:sd t6, 624(ra)<br>   |
|  74|[0x800036a0]<br>0x0000000000000200|- rs2_h1_val == -1025<br> - rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800013b4]:KHMBT t6, t5, t4<br> [0x800013b8]:sd t6, 640(ra)<br>   |
|  75|[0x800036b0]<br>0x0000000000000000|- rs2_h3_val == -1<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800013e8]:KHMBT t6, t5, t4<br> [0x800013ec]:sd t6, 656(ra)<br>   |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFF800|- rs2_h2_val == -21846<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001428]:KHMBT t6, t5, t4<br> [0x8000142c]:sd t6, 672(ra)<br>   |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001464]:KHMBT t6, t5, t4<br> [0x80001468]:sd t6, 688(ra)<br>   |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014a0]:KHMBT t6, t5, t4<br> [0x800014a4]:sd t6, 704(ra)<br>   |
|  79|[0x800036f0]<br>0x0000000000002000|- rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014d0]:KHMBT t6, t5, t4<br> [0x800014d4]:sd t6, 720(ra)<br>   |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000150c]:KHMBT t6, t5, t4<br> [0x80001510]:sd t6, 736(ra)<br>   |
|  81|[0x80003710]<br>0x0000000000000000|- rs2_h2_val == -3<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001548]:KHMBT t6, t5, t4<br> [0x8000154c]:sd t6, 752(ra)<br>   |
|  82|[0x80003720]<br>0x0000000000000001|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001584]:KHMBT t6, t5, t4<br> [0x80001588]:sd t6, 768(ra)<br>   |
|  83|[0x80003730]<br>0x0000000000000000|- rs2_h2_val == -32768<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015b8]:KHMBT t6, t5, t4<br> [0x800015bc]:sd t6, 784(ra)<br>   |
|  84|[0x80003740]<br>0x0000000000000000|- rs2_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800015e0]:KHMBT t6, t5, t4<br> [0x800015e4]:sd t6, 800(ra)<br>   |
|  85|[0x80003750]<br>0x0000000000000000|- rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001620]:KHMBT t6, t5, t4<br> [0x80001624]:sd t6, 816(ra)<br>   |
|  86|[0x80003760]<br>0x0000000000000000|- rs2_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001654]:KHMBT t6, t5, t4<br> [0x80001658]:sd t6, 832(ra)<br>   |
|  87|[0x80003770]<br>0x0000000000000000|- rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001688]:KHMBT t6, t5, t4<br> [0x8000168c]:sd t6, 848(ra)<br>   |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFFF7|- rs2_h1_val == -8193<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800016c4]:KHMBT t6, t5, t4<br> [0x800016c8]:sd t6, 864(ra)<br>   |
|  89|[0x80003790]<br>0x0000000000000000|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800016f8]:KHMBT t6, t5, t4<br> [0x800016fc]:sd t6, 880(ra)<br>   |
|  90|[0x800037a0]<br>0xFFFFFFFFFFFFFFFE|- rs2_h1_val == -3<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001730]:KHMBT t6, t5, t4<br> [0x80001734]:sd t6, 896(ra)<br>   |
|  91|[0x800037b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001768]:KHMBT t6, t5, t4<br> [0x8000176c]:sd t6, 912(ra)<br>   |
|  92|[0x800037c0]<br>0xFFFFFFFFFFFFFEFF|- rs2_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000179c]:KHMBT t6, t5, t4<br> [0x800017a0]:sd t6, 928(ra)<br>   |
|  93|[0x800037d0]<br>0x0000000000000000|- rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800017d4]:KHMBT t6, t5, t4<br> [0x800017d8]:sd t6, 944(ra)<br>   |
|  94|[0x800037e0]<br>0x0000000000000000|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800017fc]:KHMBT t6, t5, t4<br> [0x80001800]:sd t6, 960(ra)<br>   |
|  95|[0x800037f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 256<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001838]:KHMBT t6, t5, t4<br> [0x8000183c]:sd t6, 976(ra)<br>   |
|  96|[0x80003800]<br>0xFFFFFFFFFFFFFFEF|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001860]:KHMBT t6, t5, t4<br> [0x80001864]:sd t6, 992(ra)<br>   |
|  97|[0x80003810]<br>0x0000000000000000|- rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001898]:KHMBT t6, t5, t4<br> [0x8000189c]:sd t6, 1008(ra)<br>  |
|  98|[0x80003830]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001904]:KHMBT t6, t5, t4<br> [0x80001908]:sd t6, 1040(ra)<br>  |
