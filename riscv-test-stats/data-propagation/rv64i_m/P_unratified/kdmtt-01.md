
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b80')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | kdmtt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmtt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 212      |
| STAT1                     | 105      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001424]:KDMTT t6, t5, t4
      [0x80001428]:sd t6, 864(gp)
 -- Signature Address: 0x800036a0 Data: 0x00000000000000A2
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h2_val == -9
      - rs2_h1_val == -9
      - rs2_h0_val == 0
      - rs1_h2_val == -3
      - rs1_h1_val == -9
      - rs1_h0_val == 64






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmtt', 'rs1 : x14', 'rs2 : x14', 'rd : x21', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == 128', 'rs2_h1_val == 4096', 'rs2_h0_val == 32', 'rs1_h3_val == 256', 'rs1_h2_val == 128', 'rs1_h1_val == 4096', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800003c8]:KDMTT s5, a4, a4
	-[0x800003cc]:sd s5, 0(ra)
Current Store : [0x800003d0] : sd a4, 8(ra) -- Store: [0x80003218]:0x0100008010000020




Last Coverpoint : ['rs1 : x10', 'rs2 : x10', 'rd : x10', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs2_h2_val == 32', 'rs2_h1_val == 1024', 'rs2_h0_val == 2', 'rs1_h2_val == 32', 'rs1_h1_val == 1024', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800003fc]:KDMTT a0, a0, a0
	-[0x80000400]:sd a0, 16(ra)
Current Store : [0x80000404] : sd a0, 24(ra) -- Store: [0x80003228]:0x0000000000200000




Last Coverpoint : ['rs1 : x30', 'rs2 : x4', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -32768', 'rs2_h2_val == -33', 'rs2_h1_val == -1', 'rs2_h0_val == -9', 'rs1_h3_val == 8192', 'rs1_h2_val == -3', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000430]:KDMTT s11, t5, tp
	-[0x80000434]:sd s11, 32(ra)
Current Store : [0x80000438] : sd t5, 40(ra) -- Store: [0x80003238]:0x2000FFFDFFF9FFFB




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x3', 'rs1 == rd != rs2', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h2_val == 1024', 'rs2_h1_val == -21846', 'rs2_h0_val == -2049', 'rs1_h2_val == -513', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000468]:KDMTT gp, gp, s11
	-[0x8000046c]:sd gp, 48(ra)
Current Store : [0x80000470] : sd gp, 56(ra) -- Store: [0x80003248]:0x000000000004AAB4




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rd : x6', 'rs2 == rd != rs1', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == 8192', 'rs2_h1_val == -2049', 'rs2_h0_val == 2048', 'rs1_h3_val == -65', 'rs1_h2_val == 8192', 'rs1_h1_val == -9', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800004a4]:KDMTT t1, s1, t1
	-[0x800004a8]:sd t1, 64(ra)
Current Store : [0x800004ac] : sd s1, 72(ra) -- Store: [0x80003258]:0xFFBF2000FFF7FFEF




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x23', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == 8192', 'rs2_h2_val == -17', 'rs2_h1_val == -3', 'rs2_h0_val == 8', 'rs1_h3_val == 8', 'rs1_h2_val == 16', 'rs1_h1_val == -3', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800004e0]:KDMTT s7, fp, t2
	-[0x800004e4]:sd s7, 80(ra)
Current Store : [0x800004e8] : sd fp, 88(ra) -- Store: [0x80003268]:0x00080010FFFDF7FF




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x17', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -257', 'rs2_h2_val == -9', 'rs2_h0_val == -3', 'rs1_h3_val == -4097', 'rs1_h2_val == -16385', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000051c]:KDMTT a7, tp, s5
	-[0x80000520]:sd a7, 96(ra)
Current Store : [0x80000524] : sd tp, 104(ra) -- Store: [0x80003278]:0xEFFFBFFFFFF9FFFD




Last Coverpoint : ['rs1 : x17', 'rs2 : x26', 'rd : x15', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h3_val == -5', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80000558]:KDMTT a5, a7, s10
	-[0x8000055c]:sd a5, 112(ra)
Current Store : [0x80000560] : sd a7, 120(ra) -- Store: [0x80003288]:0x8000000600050020




Last Coverpoint : ['rs1 : x22', 'rs2 : x28', 'rd : x19', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -16385', 'rs2_h2_val == 4', 'rs2_h1_val == -16385', 'rs1_h3_val == -129', 'rs1_h2_val == 2048', 'rs1_h1_val == 512', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000058c]:KDMTT s3, s6, t3
	-[0x80000590]:sd s3, 128(ra)
Current Store : [0x80000594] : sd s6, 136(ra) -- Store: [0x80003298]:0xFF7F080002000040




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x4', 'rs2_h3_val == -21846', 'rs2_h2_val == 512', 'rs2_h1_val == 64', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800005c8]:KDMTT tp, zero, s2
	-[0x800005cc]:sd tp, 144(ra)
Current Store : [0x800005d0] : sd zero, 152(ra) -- Store: [0x800032a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x3', 'rd : x13', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs2_h3_val == 21845', 'rs2_h1_val == -257', 'rs1_h3_val == -2', 'rs1_h2_val == 4096', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800005fc]:KDMTT a3, t1, gp
	-[0x80000600]:sd a3, 160(ra)
Current Store : [0x80000604] : sd t1, 168(ra) -- Store: [0x800032b8]:0xFFFE10000003FFDF




Last Coverpoint : ['rs1 : x15', 'rs2 : x13', 'rd : x28', 'rs2_h3_val == 32767', 'rs2_h2_val == 1', 'rs1_h3_val == 1024', 'rs1_h1_val == 4', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000638]:KDMTT t3, a5, a3
	-[0x8000063c]:sd t3, 176(ra)
Current Store : [0x80000640] : sd a5, 184(ra) -- Store: [0x800032c8]:0x0400C00000040100




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x22', 'rs2_h3_val == -8193', 'rs2_h2_val == 256', 'rs2_h1_val == 4', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80000674]:KDMTT s6, s4, t4
	-[0x80000678]:sd s6, 192(ra)
Current Store : [0x8000067c] : sd s4, 200(ra) -- Store: [0x800032d8]:0xFFF600010009FFFB




Last Coverpoint : ['rs1 : x21', 'rs2 : x15', 'rd : x7', 'rs2_h3_val == -4097', 'rs2_h2_val == -8193', 'rs2_h1_val == 32', 'rs1_h3_val == 512', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800006b0]:KDMTT t2, s5, a5
	-[0x800006b4]:sd t2, 208(ra)
Current Store : [0x800006b8] : sd s5, 216(ra) -- Store: [0x800032e8]:0x020000070005FF7F




Last Coverpoint : ['rs1 : x25', 'rs2 : x19', 'rd : x12', 'rs2_h3_val == -2049', 'rs1_h2_val == -32768', 'rs1_h1_val == 128', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800006f0]:KDMTT a2, s9, s3
	-[0x800006f4]:sd a2, 224(ra)
Current Store : [0x800006f8] : sd s9, 232(ra) -- Store: [0x800032f8]:0x0007800000807FFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x18', 'rs2_h3_val == -1025', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000728]:KDMTT s2, t4, sp
	-[0x8000072c]:sd s2, 240(ra)
Current Store : [0x80000730] : sd t4, 248(ra) -- Store: [0x80003308]:0x0400000000800002




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x5', 'rs2_h3_val == -513', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000764]:KDMTT t0, sp, a2
	-[0x80000768]:sd t0, 256(ra)
Current Store : [0x8000076c] : sd sp, 264(ra) -- Store: [0x80003318]:0x0100200000090100




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x14', 'rs1_h0_val == -32768', 'rs2_h3_val == -129', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000798]:KDMTT a4, s3, s6
	-[0x8000079c]:sd a4, 272(ra)
Current Store : [0x800007a0] : sd s3, 280(ra) -- Store: [0x80003328]:0x0009C000FBFF8000




Last Coverpoint : ['rs1 : x5', 'rs2 : x16', 'rd : x0', 'rs2_h3_val == -65', 'rs2_h0_val == -1', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x800007d0]:KDMTT zero, t0, a6
	-[0x800007d4]:sd zero, 288(ra)
Current Store : [0x800007d8] : sd t0, 296(ra) -- Store: [0x80003338]:0x5555BFFF0005F7FF




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x26', 'rs2_h3_val == -33', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x8000080c]:KDMTT s10, t6, fp
	-[0x80000810]:sd s10, 0(gp)
Current Store : [0x80000814] : sd t6, 8(gp) -- Store: [0x80003348]:0x400000030006F7FF




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rd : x31', 'rs2_h3_val == -17', 'rs2_h1_val == -4097', 'rs2_h0_val == 128', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x80000850]:KDMTT t6, s2, s7
	-[0x80000854]:sd t6, 16(gp)
Current Store : [0x80000858] : sd s2, 24(gp) -- Store: [0x80003358]:0xBFFF00053FFF7FFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rd : x20', 'rs2_h3_val == -9', 'rs2_h1_val == 2048', 'rs1_h3_val == -2049', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80000894]:KDMTT s4, a3, t0
	-[0x80000898]:sd s4, 32(gp)
Current Store : [0x8000089c] : sd a3, 40(gp) -- Store: [0x80003368]:0xF7FF04001000FFF8




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x30', 'rs2_h3_val == -3', 'rs2_h1_val == 0', 'rs2_h0_val == -5', 'rs1_h3_val == -21846', 'rs1_h2_val == 16384', 'rs1_h1_val == -2049', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008d8]:KDMTT t5, s8, a7
	-[0x800008dc]:sd t5, 48(gp)
Current Store : [0x800008e0] : sd s8, 56(gp) -- Store: [0x80003378]:0xAAAA4000F7FF5555




Last Coverpoint : ['rs1 : x16', 'rs2 : x11', 'rd : x25', 'rs2_h3_val == -2', 'rs2_h2_val == 8', 'rs2_h1_val == 8192', 'rs1_h3_val == -1025', 'rs1_h2_val == -17', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000914]:KDMTT s9, a6, a1
	-[0x80000918]:sd s9, 64(gp)
Current Store : [0x8000091c] : sd a6, 72(gp) -- Store: [0x80003388]:0xFBFFFFEFFFFAFEFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x24', 'rd : x2', 'rs2_h3_val == 16384', 'rs2_h2_val == 0', 'rs2_h1_val == -2', 'rs2_h0_val == 16', 'rs1_h2_val == -129', 'rs1_h1_val == -21846', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000950]:KDMTT sp, t2, s8
	-[0x80000954]:sd sp, 80(gp)
Current Store : [0x80000958] : sd t2, 88(gp) -- Store: [0x80003398]:0xFFF9FF7FAAAADFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x29', 'rs2_h3_val == 0', 'rs2_h0_val == 0', 'rs1_h2_val == 32767', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000988]:KDMTT t4, a1, zero
	-[0x8000098c]:sd t4, 96(gp)
Current Store : [0x80000990] : sd a1, 104(gp) -- Store: [0x800033a8]:0xFFF67FFFFEFF0100




Last Coverpoint : ['rs1 : x27', 'rs2 : x20', 'rd : x1', 'rs2_h3_val == 2048', 'rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x800009cc]:KDMTT ra, s11, s4
	-[0x800009d0]:sd ra, 112(gp)
Current Store : [0x800009d4] : sd s11, 120(gp) -- Store: [0x800033b8]:0xFFBFFFFDAAAA7FFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x31', 'rd : x9', 'rs2_h3_val == 1024', 'rs2_h2_val == 2048', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000a08]:KDMTT s1, s7, t6
	-[0x80000a0c]:sd s1, 128(gp)
Current Store : [0x80000a10] : sd s7, 136(gp) -- Store: [0x800033c8]:0xFFFCC000FFFDFEFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x30', 'rd : x24', 'rs2_h3_val == 512', 'rs2_h0_val == 64', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a40]:KDMTT s8, s10, t5
	-[0x80000a44]:sd s8, 144(gp)
Current Store : [0x80000a48] : sd s10, 152(gp) -- Store: [0x800033d8]:0xFFFC0000FFF71000




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == 128', 'rs2_h1_val == 16384', 'rs2_h0_val == 1', 'rs1_h2_val == -2', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000a74]:KDMTT a1, a2, s9
	-[0x80000a78]:sd a1, 160(gp)
Current Store : [0x80000a7c] : sd a2, 168(gp) -- Store: [0x800033e8]:0x0100FFFE0020FF7F




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x8', 'rs2_h3_val == 64', 'rs2_h2_val == -5', 'rs2_h1_val == 32767', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ab0]:KDMTT fp, ra, s1
	-[0x80000ab4]:sd fp, 176(gp)
Current Store : [0x80000ab8] : sd ra, 184(gp) -- Store: [0x800033f8]:0x800004000004FFF7




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rd : x16', 'rs2_h3_val == 32', 'rs2_h2_val == -3', 'rs2_h0_val == -513', 'rs1_h1_val == 64', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000aec]:KDMTT a6, t3, ra
	-[0x80000af0]:sd a6, 192(gp)
Current Store : [0x80000af4] : sd t3, 200(gp) -- Store: [0x80003408]:0x0100FFF900400200




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h1_val == -33', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000b28]:KDMTT t6, t5, t4
	-[0x80000b2c]:sd t6, 208(gp)
Current Store : [0x80000b30] : sd t5, 216(gp) -- Store: [0x80003418]:0xF7FF3FFFFFFAFFFB




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == -1', 'rs2_h0_val == -8193', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x80000b64]:KDMTT t6, t5, t4
	-[0x80000b68]:sd t6, 224(gp)
Current Store : [0x80000b6c] : sd t5, 232(gp) -- Store: [0x80003428]:0x7FFF0006FFF7FFDF




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -65', 'rs2_h1_val == -129', 'rs1_h3_val == -513', 'rs1_h2_val == -1025', 'rs1_h1_val == 2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000ba0]:KDMTT t6, t5, t4
	-[0x80000ba4]:sd t6, 240(gp)
Current Store : [0x80000ba8] : sd t5, 248(gp) -- Store: [0x80003438]:0xFDFFFBFF00020010




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -1025', 'rs1_h2_val == -5', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000bd8]:KDMTT t6, t5, t4
	-[0x80000bdc]:sd t6, 256(gp)
Current Store : [0x80000be0] : sd t5, 264(gp) -- Store: [0x80003448]:0x7FFFFFFB00060004




Last Coverpoint : ['rs2_h2_val == -513', 'rs1_h3_val == 64', 'rs1_h2_val == -4097', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000c08]:KDMTT t6, t5, t4
	-[0x80000c0c]:sd t6, 272(gp)
Current Store : [0x80000c10] : sd t5, 280(gp) -- Store: [0x80003458]:0x0040EFFFFFFB0003




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000c4c]:KDMTT t6, t5, t4
	-[0x80000c50]:sd t6, 288(gp)
Current Store : [0x80000c54] : sd t5, 296(gp) -- Store: [0x80003468]:0x0009FFF6FFFE0010




Last Coverpoint : ['rs2_h1_val == -17', 'rs2_h0_val == 4', 'rs1_h1_val == -32768', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000c84]:KDMTT t6, t5, t4
	-[0x80000c88]:sd t6, 304(gp)
Current Store : [0x80000c8c] : sd t5, 312(gp) -- Store: [0x80003478]:0x7FFFFFFC80000400




Last Coverpoint : ['rs2_h1_val == -9', 'rs2_h0_val == 4096', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000cb0]:KDMTT t6, t5, t4
	-[0x80000cb4]:sd t6, 320(gp)
Current Store : [0x80000cb8] : sd t5, 328(gp) -- Store: [0x80003488]:0xFFFE001040000006




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000ce4]:KDMTT t6, t5, t4
	-[0x80000ce8]:sd t6, 336(gp)
Current Store : [0x80000cec] : sd t5, 344(gp) -- Store: [0x80003498]:0x000010002000FFFD




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000d18]:KDMTT t6, t5, t4
	-[0x80000d1c]:sd t6, 352(gp)
Current Store : [0x80000d20] : sd t5, 360(gp) -- Store: [0x800034a8]:0xFFFA100008000020




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h3_val == 4', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000d4c]:KDMTT t6, t5, t4
	-[0x80000d50]:sd t6, 368(gp)
Current Store : [0x80000d54] : sd t5, 376(gp) -- Store: [0x800034b8]:0x000400040400FFFA




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000d7c]:KDMTT t6, t5, t4
	-[0x80000d80]:sd t6, 384(gp)
Current Store : [0x80000d84] : sd t5, 392(gp) -- Store: [0x800034c8]:0xC000000901000000




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == 512', 'rs2_h0_val == 16384', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000dbc]:KDMTT t6, t5, t4
	-[0x80000dc0]:sd t6, 400(gp)
Current Store : [0x80000dc4] : sd t5, 408(gp) -- Store: [0x800034d8]:0x0006FFFC0010FFEF




Last Coverpoint : ['rs2_h1_val == -1025', 'rs2_h0_val == 21845', 'rs1_h3_val == -33', 'rs1_h2_val == -2049', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000df4]:KDMTT t6, t5, t4
	-[0x80000df8]:sd t6, 416(gp)
Current Store : [0x80000dfc] : sd t5, 424(gp) -- Store: [0x800034e8]:0xFFDFF7FF00080000




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000e28]:KDMTT t6, t5, t4
	-[0x80000e2c]:sd t6, 432(gp)
Current Store : [0x80000e30] : sd t5, 440(gp) -- Store: [0x800034f8]:0x0001000400010009




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000e5c]:KDMTT t6, t5, t4
	-[0x80000e60]:sd t6, 448(gp)
Current Store : [0x80000e64] : sd t5, 456(gp) -- Store: [0x80003508]:0xFFFAFBFF00000008




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h3_val == 2', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000e94]:KDMTT t6, t5, t4
	-[0x80000e98]:sd t6, 464(gp)
Current Store : [0x80000e9c] : sd t5, 472(gp) -- Store: [0x80003518]:0x00020020FFFF0009




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000ed0]:KDMTT t6, t5, t4
	-[0x80000ed4]:sd t6, 480(gp)
Current Store : [0x80000ed8] : sd t5, 488(gp) -- Store: [0x80003528]:0x5555BFFFFFFEAAAA




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000f04]:KDMTT t6, t5, t4
	-[0x80000f08]:sd t6, 496(gp)
Current Store : [0x80000f0c] : sd t5, 504(gp) -- Store: [0x80003538]:0x5555FFFB0010BFFF




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000f40]:KDMTT t6, t5, t4
	-[0x80000f44]:sd t6, 512(gp)
Current Store : [0x80000f48] : sd t5, 520(gp) -- Store: [0x80003548]:0x000600045555EFFF




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000f6c]:KDMTT t6, t5, t4
	-[0x80000f70]:sd t6, 528(gp)
Current Store : [0x80000f74] : sd t5, 536(gp) -- Store: [0x80003558]:0xFBFF0020FFFFFDFF




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000fa8]:KDMTT t6, t5, t4
	-[0x80000fac]:sd t6, 544(gp)
Current Store : [0x80000fb0] : sd t5, 552(gp) -- Store: [0x80003568]:0xBFFF0006FDFFFFBF




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000fdc]:KDMTT t6, t5, t4
	-[0x80000fe0]:sd t6, 560(gp)
Current Store : [0x80000fe4] : sd t5, 568(gp) -- Store: [0x80003578]:0xF7FF0010BFFFFFFE




Last Coverpoint : ['rs1_h3_val == -8193', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000101c]:KDMTT t6, t5, t4
	-[0x80001020]:sd t6, 576(gp)
Current Store : [0x80001024] : sd t5, 584(gp) -- Store: [0x80003588]:0xDFFFEFFF20004000




Last Coverpoint : ['rs1_h3_val == 2048', 'rs1_h2_val == -65', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80001054]:KDMTT t6, t5, t4
	-[0x80001058]:sd t6, 592(gp)
Current Store : [0x8000105c] : sd t5, 600(gp) -- Store: [0x80003598]:0x0800FFBF00052000




Last Coverpoint : ['rs1_h2_val == 8', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80001090]:KDMTT t6, t5, t4
	-[0x80001094]:sd t6, 608(gp)
Current Store : [0x80001098] : sd t5, 616(gp) -- Store: [0x800035a8]:0x010000083FFF0800




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800010c4]:KDMTT t6, t5, t4
	-[0x800010c8]:sd t6, 624(gp)
Current Store : [0x800010cc] : sd t5, 632(gp) -- Store: [0x800035b8]:0xFFF6FFFDC0000001




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h1_val == 2', 'rs1_h3_val == -257', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800010fc]:KDMTT t6, t5, t4
	-[0x80001100]:sd t6, 640(gp)
Current Store : [0x80001104] : sd t5, 648(gp) -- Store: [0x800035c8]:0xFEFF0002BFFF0000




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x8000112c]:KDMTT t6, t5, t4
	-[0x80001130]:sd t6, 656(gp)
Current Store : [0x80001134] : sd t5, 664(gp) -- Store: [0x800035d8]:0x00010800FFFFFFDF




Last Coverpoint : ['rs2_h1_val == -5', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80001160]:KDMTT t6, t5, t4
	-[0x80001164]:sd t6, 672(gp)
Current Store : [0x80001168] : sd t5, 680(gp) -- Store: [0x800035e8]:0xFFF9FDFF01000100




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h3_val == -17']
Last Code Sequence : 
	-[0x8000119c]:KDMTT t6, t5, t4
	-[0x800011a0]:sd t6, 688(gp)
Current Store : [0x800011a4] : sd t5, 696(gp) -- Store: [0x800035f8]:0xFFEFFFF8FFF90002




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h3_val == -5']
Last Code Sequence : 
	-[0x800011cc]:KDMTT t6, t5, t4
	-[0x800011d0]:sd t6, 704(gp)
Current Store : [0x800011d4] : sd t5, 712(gp) -- Store: [0x80003608]:0xFFFBF7FFFFFFF7FF




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001208]:KDMTT t6, t5, t4
	-[0x8000120c]:sd t6, 720(gp)
Current Store : [0x80001210] : sd t5, 728(gp) -- Store: [0x80003618]:0x7FFF0002FFEF0040




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80001248]:KDMTT t6, t5, t4
	-[0x8000124c]:sd t6, 736(gp)
Current Store : [0x80001250] : sd t5, 744(gp) -- Store: [0x80003628]:0x7FFFFBFF00100006




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000127c]:KDMTT t6, t5, t4
	-[0x80001280]:sd t6, 752(gp)
Current Store : [0x80001284] : sd t5, 760(gp) -- Store: [0x80003638]:0xFFFBFDFF01000080




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x800012c0]:KDMTT t6, t5, t4
	-[0x800012c4]:sd t6, 768(gp)
Current Store : [0x800012c8] : sd t5, 776(gp) -- Store: [0x80003648]:0xAAAAFEFFF7FF0100




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800012fc]:KDMTT t6, t5, t4
	-[0x80001300]:sd t6, 784(gp)
Current Store : [0x80001304] : sd t5, 792(gp) -- Store: [0x80003658]:0x00040002FEFF0006




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80001330]:KDMTT t6, t5, t4
	-[0x80001334]:sd t6, 800(gp)
Current Store : [0x80001338] : sd t5, 808(gp) -- Store: [0x80003668]:0x7FFFFFFB40000020




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000136c]:KDMTT t6, t5, t4
	-[0x80001370]:sd t6, 816(gp)
Current Store : [0x80001374] : sd t5, 824(gp) -- Store: [0x80003678]:0x0040FFF80005FFFE




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800013b0]:KDMTT t6, t5, t4
	-[0x800013b4]:sd t6, 832(gp)
Current Store : [0x800013b8] : sd t5, 840(gp) -- Store: [0x80003688]:0x0009FFFC00037FFF




Last Coverpoint : ['rs2_h2_val == 16384', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800013ec]:KDMTT t6, t5, t4
	-[0x800013f0]:sd t6, 848(gp)
Current Store : [0x800013f4] : sd t5, 856(gp) -- Store: [0x80003698]:0xAAAABFFF00030400




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h2_val == -9', 'rs2_h1_val == -9', 'rs2_h0_val == 0', 'rs1_h2_val == -3', 'rs1_h1_val == -9', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001424]:KDMTT t6, t5, t4
	-[0x80001428]:sd t6, 864(gp)
Current Store : [0x8000142c] : sd t5, 872(gp) -- Store: [0x800036a8]:0xFFF9FFFDFFF70040




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000145c]:KDMTT t6, t5, t4
	-[0x80001460]:sd t6, 880(gp)
Current Store : [0x80001464] : sd t5, 888(gp) -- Store: [0x800036b8]:0xAAAA0001FFFCFFFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x8000149c]:KDMTT t6, t5, t4
	-[0x800014a0]:sd t6, 896(gp)
Current Store : [0x800014a4] : sd t5, 904(gp) -- Store: [0x800036c8]:0xFFF7EFFFFFEFAAAA




Last Coverpoint : ['rs1_h3_val == -3']
Last Code Sequence : 
	-[0x800014cc]:KDMTT t6, t5, t4
	-[0x800014d0]:sd t6, 912(gp)
Current Store : [0x800014d4] : sd t5, 920(gp) -- Store: [0x800036d8]:0xFFFDFFF93FFF0000




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x80001508]:KDMTT t6, t5, t4
	-[0x8000150c]:sd t6, 928(gp)
Current Store : [0x80001510] : sd t5, 936(gp) -- Store: [0x800036e8]:0xFFF700200800BFFF




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x8000153c]:KDMTT t6, t5, t4
	-[0x80001540]:sd t6, 944(gp)
Current Store : [0x80001544] : sd t5, 952(gp) -- Store: [0x800036f8]:0xAAAA0400FF7F0009




Last Coverpoint : ['rs2_h2_val == -16385']
Last Code Sequence : 
	-[0x8000156c]:KDMTT t6, t5, t4
	-[0x80001570]:sd t6, 960(gp)
Current Store : [0x80001574] : sd t5, 968(gp) -- Store: [0x80003708]:0x0008000300040000




Last Coverpoint : ['rs1_h3_val == 128']
Last Code Sequence : 
	-[0x800015a8]:KDMTT t6, t5, t4
	-[0x800015ac]:sd t6, 976(gp)
Current Store : [0x800015b0] : sd t5, 984(gp) -- Store: [0x80003718]:0x0080FFF8FFFC0200




Last Coverpoint : ['rs1_h3_val == 32', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800015e4]:KDMTT t6, t5, t4
	-[0x800015e8]:sd t6, 992(gp)
Current Store : [0x800015ec] : sd t5, 1000(gp) -- Store: [0x80003728]:0x0020010000400800




Last Coverpoint : ['rs1_h3_val == 16', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001620]:KDMTT t6, t5, t4
	-[0x80001624]:sd t6, 1008(gp)
Current Store : [0x80001628] : sd t5, 1016(gp) -- Store: [0x80003738]:0x00100200AAAA0006




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001658]:KDMTT t6, t5, t4
	-[0x8000165c]:sd t6, 1024(gp)
Current Store : [0x80001660] : sd t5, 1032(gp) -- Store: [0x80003748]:0xFFFFFFEF08000100




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80001694]:KDMTT t6, t5, t4
	-[0x80001698]:sd t6, 1040(gp)
Current Store : [0x8000169c] : sd t5, 1048(gp) -- Store: [0x80003758]:0x0002AAAA0100FF7F




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x800016d8]:KDMTT t6, t5, t4
	-[0x800016dc]:sd t6, 1056(gp)
Current Store : [0x800016e0] : sd t5, 1064(gp) -- Store: [0x80003768]:0xC00055550001FFF7




Last Coverpoint : ['rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x8000170c]:KDMTT t6, t5, t4
	-[0x80001710]:sd t6, 1072(gp)
Current Store : [0x80001714] : sd t5, 1080(gp) -- Store: [0x80003778]:0xFFFCDFFFFFF8C000




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80001750]:KDMTT t6, t5, t4
	-[0x80001754]:sd t6, 1088(gp)
Current Store : [0x80001758] : sd t5, 1096(gp) -- Store: [0x80003788]:0xFFEFFFDF00060008




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x8000178c]:KDMTT t6, t5, t4
	-[0x80001790]:sd t6, 1104(gp)
Current Store : [0x80001794] : sd t5, 1112(gp) -- Store: [0x80003798]:0x4000FFF7FF7F0004




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x800017c8]:KDMTT t6, t5, t4
	-[0x800017cc]:sd t6, 1120(gp)
Current Store : [0x800017d0] : sd t5, 1128(gp) -- Store: [0x800037a8]:0x0800008000050008




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001804]:KDMTT t6, t5, t4
	-[0x80001808]:sd t6, 1136(gp)
Current Store : [0x8000180c] : sd t5, 1144(gp) -- Store: [0x800037b8]:0x0001FDFFDFFFBFFF




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001840]:KDMTT t6, t5, t4
	-[0x80001844]:sd t6, 1152(gp)
Current Store : [0x80001848] : sd t5, 1160(gp) -- Store: [0x800037c8]:0xFEFFFFFE0005FFFF




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80001878]:KDMTT t6, t5, t4
	-[0x8000187c]:sd t6, 1168(gp)
Current Store : [0x80001880] : sd t5, 1176(gp) -- Store: [0x800037d8]:0xBFFF0040FFF68000




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x800018b0]:KDMTT t6, t5, t4
	-[0x800018b4]:sd t6, 1184(gp)
Current Store : [0x800018b8] : sd t5, 1192(gp) -- Store: [0x800037e8]:0xBFFF555508000002




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x800018ec]:KDMTT t6, t5, t4
	-[0x800018f0]:sd t6, 1200(gp)
Current Store : [0x800018f4] : sd t5, 1208(gp) -- Store: [0x800037f8]:0xEFFFFFFF20001000




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x80001928]:KDMTT t6, t5, t4
	-[0x8000192c]:sd t6, 1216(gp)
Current Store : [0x80001930] : sd t5, 1224(gp) -- Store: [0x80003808]:0xFFFC000200200004




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x8000196c]:KDMTT t6, t5, t4
	-[0x80001970]:sd t6, 1232(gp)
Current Store : [0x80001974] : sd t5, 1240(gp) -- Store: [0x80003818]:0x3FFF0200F7FF0400




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800019a8]:KDMTT t6, t5, t4
	-[0x800019ac]:sd t6, 1248(gp)
Current Store : [0x800019b0] : sd t5, 1256(gp) -- Store: [0x80003828]:0xDFFF5555EFFF3FFF




Last Coverpoint : ['rs2_h1_val == 256']
Last Code Sequence : 
	-[0x800019e8]:KDMTT t6, t5, t4
	-[0x800019ec]:sd t6, 1264(gp)
Current Store : [0x800019f0] : sd t5, 1272(gp) -- Store: [0x80003838]:0x800000043FFF0001




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80001a20]:KDMTT t6, t5, t4
	-[0x80001a24]:sd t6, 1280(gp)
Current Store : [0x80001a28] : sd t5, 1288(gp) -- Store: [0x80003848]:0xFFFD0200FFBF1000




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001a5c]:KDMTT t6, t5, t4
	-[0x80001a60]:sd t6, 1296(gp)
Current Store : [0x80001a64] : sd t5, 1304(gp) -- Store: [0x80003858]:0xFFEF0009FFDF0010




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001a98]:KDMTT t6, t5, t4
	-[0x80001a9c]:sd t6, 1312(gp)
Current Store : [0x80001aa0] : sd t5, 1320(gp) -- Store: [0x80003868]:0x1000FFF7FFFB0020




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001ac8]:KDMTT t6, t5, t4
	-[0x80001acc]:sd t6, 1328(gp)
Current Store : [0x80001ad0] : sd t5, 1336(gp) -- Store: [0x80003878]:0xFFF90040FFFFFFFD




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001afc]:KDMTT t6, t5, t4
	-[0x80001b00]:sd t6, 1344(gp)
Current Store : [0x80001b04] : sd t5, 1352(gp) -- Store: [0x80003888]:0xFFF6FBFF7FFF0080




Last Coverpoint : ['rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80001b38]:KDMTT t6, t5, t4
	-[0x80001b3c]:sd t6, 1360(gp)
Current Store : [0x80001b40] : sd t5, 1368(gp) -- Store: [0x80003898]:0x0200FBFF0005FBFF




Last Coverpoint : ['rs2_h3_val == 4096']
Last Code Sequence : 
	-[0x80001b70]:KDMTT t6, t5, t4
	-[0x80001b74]:sd t6, 1376(gp)
Current Store : [0x80001b78] : sd t5, 1384(gp) -- Store: [0x800038a8]:0xFFF67FFFFEFF0100





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                                                                      |                                 code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000002000000|- opcode : kdmtt<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 256<br> - rs2_h2_val == 128<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 32<br> - rs1_h3_val == 256<br> - rs1_h2_val == 128<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 32<br> |[0x800003c8]:KDMTT s5, a4, a4<br> [0x800003cc]:sd s5, 0(ra)<br>       |
|   2|[0x80003220]<br>0x0000000000200000|- rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs2_h2_val == 32<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 2<br> - rs1_h2_val == 32<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                              |[0x800003fc]:KDMTT a0, a0, a0<br> [0x80000400]:sd a0, 16(ra)<br>      |
|   3|[0x80003230]<br>0x000000000000000E|- rs1 : x30<br> - rs2 : x4<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -33<br> - rs2_h1_val == -1<br> - rs2_h0_val == -9<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -3<br> - rs1_h0_val == -5<br>                        |[0x80000430]:KDMTT s11, t5, tp<br> [0x80000434]:sd s11, 32(ra)<br>    |
|   4|[0x80003240]<br>0x000000000004AAB4|- rs1 : x3<br> - rs2 : x27<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -513<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000468]:KDMTT gp, gp, s11<br> [0x8000046c]:sd gp, 48(ra)<br>     |
|   5|[0x80003250]<br>0x0000000000009012|- rs1 : x9<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -65<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -9<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                 |[0x800004a4]:KDMTT t1, s1, t1<br> [0x800004a8]:sd t1, 64(ra)<br>      |
|   6|[0x80003260]<br>0x0000000000000012|- rs1 : x8<br> - rs2 : x7<br> - rd : x23<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -17<br> - rs2_h1_val == -3<br> - rs2_h0_val == 8<br> - rs1_h3_val == 8<br> - rs1_h2_val == 16<br> - rs1_h1_val == -3<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                       |[0x800004e0]:KDMTT s7, fp, t2<br> [0x800004e4]:sd s7, 80(ra)<br>      |
|   7|[0x80003270]<br>0xFFFFFFFFFFFFC800|- rs1 : x4<br> - rs2 : x21<br> - rd : x17<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -257<br> - rs2_h2_val == -9<br> - rs2_h0_val == -3<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -16385<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                               |[0x8000051c]:KDMTT a7, tp, s5<br> [0x80000520]:sd a7, 96(ra)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFE2|- rs1 : x17<br> - rs2 : x26<br> - rd : x15<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h3_val == -5<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000558]:KDMTT a5, a7, s10<br> [0x8000055c]:sd a5, 112(ra)<br>    |
|   9|[0x80003290]<br>0xFFFFFFFFFEFFFC00|- rs1 : x22<br> - rs2 : x28<br> - rd : x19<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 4<br> - rs2_h1_val == -16385<br> - rs1_h3_val == -129<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 512<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                    |[0x8000058c]:KDMTT s3, s6, t3<br> [0x80000590]:sd s3, 128(ra)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x18<br> - rd : x4<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 512<br> - rs2_h1_val == 64<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x800005c8]:KDMTT tp, zero, s2<br> [0x800005cc]:sd tp, 144(ra)<br>   |
|  11|[0x800032b0]<br>0xFFFFFFFFFFFFF9FA|- rs1 : x6<br> - rs2 : x3<br> - rd : x13<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h1_val == -257<br> - rs1_h3_val == -2<br> - rs1_h2_val == 4096<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x800005fc]:KDMTT a3, t1, gp<br> [0x80000600]:sd a3, 160(ra)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFFFD0|- rs1 : x15<br> - rs2 : x13<br> - rd : x28<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 1<br> - rs1_h3_val == 1024<br> - rs1_h1_val == 4<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000638]:KDMTT t3, a5, a3<br> [0x8000063c]:sd t3, 176(ra)<br>     |
|  13|[0x800032d0]<br>0x0000000000000048|- rs1 : x20<br> - rs2 : x29<br> - rd : x22<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 256<br> - rs2_h1_val == 4<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000674]:KDMTT s6, s4, t4<br> [0x80000678]:sd s6, 192(ra)<br>     |
|  14|[0x800032e0]<br>0x0000000000000140|- rs1 : x21<br> - rs2 : x15<br> - rd : x7<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 32<br> - rs1_h3_val == 512<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006b0]:KDMTT t2, s5, a5<br> [0x800006b4]:sd t2, 208(ra)<br>     |
|  15|[0x800032f0]<br>0x0000000000100000|- rs1 : x25<br> - rs2 : x19<br> - rd : x12<br> - rs2_h3_val == -2049<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 128<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800006f0]:KDMTT a2, s9, s3<br> [0x800006f4]:sd a2, 224(ra)<br>     |
|  16|[0x80003300]<br>0x0000000000008000|- rs1 : x29<br> - rs2 : x2<br> - rd : x18<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000728]:KDMTT s2, t4, sp<br> [0x8000072c]:sd s2, 240(ra)<br>     |
|  17|[0x80003310]<br>0x0000000000000012|- rs1 : x2<br> - rs2 : x12<br> - rd : x5<br> - rs2_h3_val == -513<br> - rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000764]:KDMTT t0, sp, a2<br> [0x80000768]:sd t0, 256(ra)<br>     |
|  18|[0x80003320]<br>0x000000000000380E|- rs1 : x19<br> - rs2 : x22<br> - rd : x14<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -129<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000798]:KDMTT a4, s3, s6<br> [0x8000079c]:sd a4, 272(ra)<br>     |
|  19|[0x80003330]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x16<br> - rd : x0<br> - rs2_h3_val == -65<br> - rs2_h0_val == -1<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800007d0]:KDMTT zero, t0, a6<br> [0x800007d4]:sd zero, 288(ra)<br> |
|  20|[0x80003340]<br>0x000000000000C000|- rs1 : x31<br> - rs2 : x8<br> - rd : x26<br> - rs2_h3_val == -33<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000080c]:KDMTT s10, t6, fp<br> [0x80000810]:sd s10, 0(gp)<br>     |
|  21|[0x80003350]<br>0xFFFFFFFFF7FFA002|- rs1 : x18<br> - rs2 : x23<br> - rd : x31<br> - rs2_h3_val == -17<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 128<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000850]:KDMTT t6, s2, s7<br> [0x80000854]:sd t6, 16(gp)<br>      |
|  22|[0x80003360]<br>0x0000000001000000|- rs1 : x13<br> - rs2 : x5<br> - rd : x20<br> - rs2_h3_val == -9<br> - rs2_h1_val == 2048<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000894]:KDMTT s4, a3, t0<br> [0x80000898]:sd s4, 32(gp)<br>      |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x17<br> - rd : x30<br> - rs2_h3_val == -3<br> - rs2_h1_val == 0<br> - rs2_h0_val == -5<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                            |[0x800008d8]:KDMTT t5, s8, a7<br> [0x800008dc]:sd t5, 48(gp)<br>      |
|  24|[0x80003380]<br>0xFFFFFFFFFFFE8000|- rs1 : x16<br> - rs2 : x11<br> - rd : x25<br> - rs2_h3_val == -2<br> - rs2_h2_val == 8<br> - rs2_h1_val == 8192<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000914]:KDMTT s9, a6, a1<br> [0x80000918]:sd s9, 64(gp)<br>      |
|  25|[0x80003390]<br>0x0000000000015558|- rs1 : x7<br> - rs2 : x24<br> - rd : x2<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 0<br> - rs2_h1_val == -2<br> - rs2_h0_val == 16<br> - rs1_h2_val == -129<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000950]:KDMTT sp, t2, s8<br> [0x80000954]:sd sp, 80(gp)<br>      |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x0<br> - rd : x29<br> - rs2_h3_val == 0<br> - rs2_h0_val == 0<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000988]:KDMTT t4, a1, zero<br> [0x8000098c]:sd t4, 96(gp)<br>    |
|  27|[0x800033b0]<br>0xFFFFFFFFFAAAA000|- rs1 : x27<br> - rs2 : x20<br> - rd : x1<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800009cc]:KDMTT ra, s11, s4<br> [0x800009d0]:sd ra, 112(gp)<br>    |
|  28|[0x800033c0]<br>0x000000000000002A|- rs1 : x23<br> - rs2 : x31<br> - rd : x9<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 2048<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a08]:KDMTT s1, s7, t6<br> [0x80000a0c]:sd s1, 128(gp)<br>     |
|  29|[0x800033d0]<br>0x00000000000000B4|- rs1 : x26<br> - rs2 : x30<br> - rd : x24<br> - rs2_h3_val == 512<br> - rs2_h0_val == 64<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000a40]:KDMTT s8, s10, t5<br> [0x80000a44]:sd s8, 144(gp)<br>    |
|  30|[0x800033e0]<br>0x0000000000100000|- rs1 : x12<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == 128<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 1<br> - rs1_h2_val == -2<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a74]:KDMTT a1, a2, s9<br> [0x80000a78]:sd a1, 160(gp)<br>     |
|  31|[0x800033f0]<br>0x000000000003FFF8|- rs1 : x1<br> - rs2 : x9<br> - rd : x8<br> - rs2_h3_val == 64<br> - rs2_h2_val == -5<br> - rs2_h1_val == 32767<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ab0]:KDMTT fp, ra, s1<br> [0x80000ab4]:sd fp, 176(gp)<br>     |
|  32|[0x80003400]<br>0x0000000000000180|- rs1 : x28<br> - rs2 : x1<br> - rd : x16<br> - rs2_h3_val == 32<br> - rs2_h2_val == -3<br> - rs2_h0_val == -513<br> - rs1_h1_val == 64<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000aec]:KDMTT a6, t3, ra<br> [0x80000af0]:sd a6, 192(gp)<br>     |
|  33|[0x80003410]<br>0x000000000000018C|- rs2_h3_val == 16<br> - rs2_h1_val == -33<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b28]:KDMTT t6, t5, t4<br> [0x80000b2c]:sd t6, 208(gp)<br>     |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFF82|- rs2_h3_val == 8<br> - rs2_h2_val == -1<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b64]:KDMTT t6, t5, t4<br> [0x80000b68]:sd t6, 224(gp)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFDFC|- rs2_h3_val == 4<br> - rs2_h2_val == -65<br> - rs2_h1_val == -129<br> - rs1_h3_val == -513<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ba0]:KDMTT t6, t5, t4<br> [0x80000ba4]:sd t6, 240(gp)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFFFF4|- rs2_h3_val == 2<br> - rs2_h2_val == -1025<br> - rs1_h2_val == -5<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000bd8]:KDMTT t6, t5, t4<br> [0x80000bdc]:sd t6, 256(gp)<br>     |
|  37|[0x80003450]<br>0x0000000000000050|- rs2_h2_val == -513<br> - rs1_h3_val == 64<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c08]:KDMTT t6, t5, t4<br> [0x80000c0c]:sd t6, 272(gp)<br>     |
|  38|[0x80003460]<br>0xFFFFFFFFFFFEAAAC|- rs2_h1_val == 21845<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c4c]:KDMTT t6, t5, t4<br> [0x80000c50]:sd t6, 288(gp)<br>     |
|  39|[0x80003470]<br>0x0000000000110000|- rs2_h1_val == -17<br> - rs2_h0_val == 4<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c84]:KDMTT t6, t5, t4<br> [0x80000c88]:sd t6, 304(gp)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFFFFFB8000|- rs2_h1_val == -9<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cb0]:KDMTT t6, t5, t4<br> [0x80000cb4]:sd t6, 320(gp)<br>     |
|  41|[0x80003490]<br>0xFFFFFFFFFFFE0000|- rs2_h2_val == 64<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ce4]:KDMTT t6, t5, t4<br> [0x80000ce8]:sd t6, 336(gp)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFDF000|- rs2_h2_val == -2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d18]:KDMTT t6, t5, t4<br> [0x80000d1c]:sd t6, 352(gp)<br>     |
|  43|[0x800034b0]<br>0x0000000000800000|- rs2_h0_val == 256<br> - rs1_h3_val == 4<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000d4c]:KDMTT t6, t5, t4<br> [0x80000d50]:sd t6, 368(gp)<br>     |
|  44|[0x800034c0]<br>0x0000000000FFFE00|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d7c]:KDMTT t6, t5, t4<br> [0x80000d80]:sd t6, 384(gp)<br>     |
|  45|[0x800034d0]<br>0x0000000000004000|- rs2_h2_val == 21845<br> - rs2_h1_val == 512<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dbc]:KDMTT t6, t5, t4<br> [0x80000dc0]:sd t6, 400(gp)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFFBFF0|- rs2_h1_val == -1025<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -33<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000df4]:KDMTT t6, t5, t4<br> [0x80000df8]:sd t6, 416(gp)<br>     |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 1<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e28]:KDMTT t6, t5, t4<br> [0x80000e2c]:sd t6, 432(gp)<br>     |
|  48|[0x80003500]<br>0x0000000000000000|- rs2_h2_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000e5c]:KDMTT t6, t5, t4<br> [0x80000e60]:sd t6, 448(gp)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFEE|- rs2_h3_val == -1<br> - rs1_h3_val == 2<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e94]:KDMTT t6, t5, t4<br> [0x80000e98]:sd t6, 464(gp)<br>     |
|  50|[0x80003520]<br>0xFFFFFFFFFFFFC000|- rs2_h2_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ed0]:KDMTT t6, t5, t4<br> [0x80000ed4]:sd t6, 480(gp)<br>     |
|  51|[0x80003530]<br>0x0000000000000400|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f04]:KDMTT t6, t5, t4<br> [0x80000f08]:sd t6, 496(gp)<br>     |
|  52|[0x80003540]<br>0xFFFFFFFFFFF9555C|- rs1_h1_val == 21845<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f40]:KDMTT t6, t5, t4<br> [0x80000f44]:sd t6, 512(gp)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFF000|- rs2_h2_val == -129<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f6c]:KDMTT t6, t5, t4<br> [0x80000f70]:sd t6, 528(gp)<br>     |
|  54|[0x80003560]<br>0xFFFFFFFFFEFF8000|- rs1_h1_val == -513<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000fa8]:KDMTT t6, t5, t4<br> [0x80000fac]:sd t6, 544(gp)<br>     |
|  55|[0x80003570]<br>0x000000000800A002|- rs1_h1_val == -16385<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000fdc]:KDMTT t6, t5, t4<br> [0x80000fe0]:sd t6, 560(gp)<br>     |
|  56|[0x80003580]<br>0xFFFFFFFFEAAA8000|- rs1_h3_val == -8193<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000101c]:KDMTT t6, t5, t4<br> [0x80001020]:sd t6, 576(gp)<br>     |
|  57|[0x80003590]<br>0x0000000000000032|- rs1_h3_val == 2048<br> - rs1_h2_val == -65<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001054]:KDMTT t6, t5, t4<br> [0x80001058]:sd t6, 592(gp)<br>     |
|  58|[0x800035a0]<br>0x0000000000000000|- rs1_h2_val == 8<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001090]:KDMTT t6, t5, t4<br> [0x80001094]:sd t6, 608(gp)<br>     |
|  59|[0x800035b0]<br>0xFFFFFFFFE0000000|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800010c4]:KDMTT t6, t5, t4<br> [0x800010c8]:sd t6, 624(gp)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFEFFFC|- rs2_h2_val == 16<br> - rs2_h1_val == 2<br> - rs1_h3_val == -257<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010fc]:KDMTT t6, t5, t4<br> [0x80001100]:sd t6, 640(gp)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFFFFA|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000112c]:KDMTT t6, t5, t4<br> [0x80001130]:sd t6, 656(gp)<br>     |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFFF600|- rs2_h1_val == -5<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001160]:KDMTT t6, t5, t4<br> [0x80001164]:sd t6, 672(gp)<br>     |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFFE400|- rs2_h0_val == -4097<br> - rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000119c]:KDMTT t6, t5, t4<br> [0x800011a0]:sd t6, 688(gp)<br>     |
|  64|[0x80003600]<br>0x0000000000000102|- rs2_h0_val == -1025<br> - rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011cc]:KDMTT t6, t5, t4<br> [0x800011d0]:sd t6, 704(gp)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFFFFFBC000|- rs2_h0_val == -257<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001208]:KDMTT t6, t5, t4<br> [0x8000120c]:sd t6, 720(gp)<br>     |
|  66|[0x80003620]<br>0xFFFFFFFFFFF80000|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001248]:KDMTT t6, t5, t4<br> [0x8000124c]:sd t6, 736(gp)<br>     |
|  67|[0x80003630]<br>0x0000000000000200|- rs2_h0_val == -65<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000127c]:KDMTT t6, t5, t4<br> [0x80001280]:sd t6, 752(gp)<br>     |
|  68|[0x80003640]<br>0x0000000000009012|- rs2_h0_val == -33<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800012c0]:KDMTT t6, t5, t4<br> [0x800012c4]:sd t6, 768(gp)<br>     |
|  69|[0x80003650]<br>0xFFFFFFFFFFBFC000|- rs2_h2_val == -257<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800012fc]:KDMTT t6, t5, t4<br> [0x80001300]:sd t6, 784(gp)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFFFFFC8000|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001330]:KDMTT t6, t5, t4<br> [0x80001334]:sd t6, 800(gp)<br>     |
|  71|[0x80003670]<br>0x0000000000005000|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000136c]:KDMTT t6, t5, t4<br> [0x80001370]:sd t6, 816(gp)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFCFFA|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013b0]:KDMTT t6, t5, t4<br> [0x800013b4]:sd t6, 832(gp)<br>     |
|  73|[0x80003690]<br>0x0000000000017FFA|- rs2_h2_val == 16384<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013ec]:KDMTT t6, t5, t4<br> [0x800013f0]:sd t6, 848(gp)<br>     |
|  74|[0x800036b0]<br>0xFFFFFFFFFFFFFFC8|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000145c]:KDMTT t6, t5, t4<br> [0x80001460]:sd t6, 880(gp)<br>     |
|  75|[0x800036c0]<br>0x0000000000001122|- rs2_h2_val == -2049<br> - rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000149c]:KDMTT t6, t5, t4<br> [0x800014a0]:sd t6, 896(gp)<br>     |
|  76|[0x800036d0]<br>0xFFFFFFFFFFFC800E|- rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800014cc]:KDMTT t6, t5, t4<br> [0x800014d0]:sd t6, 912(gp)<br>     |
|  77|[0x800036e0]<br>0x0000000000006000|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001508]:KDMTT t6, t5, t4<br> [0x8000150c]:sd t6, 928(gp)<br>     |
|  78|[0x800036f0]<br>0xFFFFFFFFFFFDFC00|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000153c]:KDMTT t6, t5, t4<br> [0x80001540]:sd t6, 944(gp)<br>     |
|  79|[0x80003700]<br>0xFFFFFFFFFFFF7FF8|- rs2_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000156c]:KDMTT t6, t5, t4<br> [0x80001570]:sd t6, 960(gp)<br>     |
|  80|[0x80003710]<br>0xFFFFFFFFFFFFFE00|- rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015a8]:KDMTT t6, t5, t4<br> [0x800015ac]:sd t6, 976(gp)<br>     |
|  81|[0x80003720]<br>0x0000000000200000|- rs1_h3_val == 32<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800015e4]:KDMTT t6, t5, t4<br> [0x800015e8]:sd t6, 992(gp)<br>     |
|  82|[0x80003730]<br>0x0000000038E471C8|- rs1_h3_val == 16<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001620]:KDMTT t6, t5, t4<br> [0x80001624]:sd t6, 1008(gp)<br>    |
|  83|[0x80003740]<br>0xFFFFFFFFFAAAA000|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001658]:KDMTT t6, t5, t4<br> [0x8000165c]:sd t6, 1024(gp)<br>    |
|  84|[0x80003750]<br>0xFFFFFFFFFFFBFE00|- rs2_h1_val == -513<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001694]:KDMTT t6, t5, t4<br> [0x80001698]:sd t6, 1040(gp)<br>    |
|  85|[0x80003760]<br>0x0000000000002000|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016d8]:KDMTT t6, t5, t4<br> [0x800016dc]:sd t6, 1056(gp)<br>    |
|  86|[0x80003770]<br>0x0000000000002010|- rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000170c]:KDMTT t6, t5, t4<br> [0x80001710]:sd t6, 1072(gp)<br>    |
|  87|[0x80003780]<br>0xFFFFFFFFFFFFF9F4|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001750]:KDMTT t6, t5, t4<br> [0x80001754]:sd t6, 1088(gp)<br>    |
|  88|[0x80003790]<br>0x00000000005600AC|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000178c]:KDMTT t6, t5, t4<br> [0x80001790]:sd t6, 1104(gp)<br>    |
|  89|[0x800037a0]<br>0xFFFFFFFFFFFFEBF6|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800017c8]:KDMTT t6, t5, t4<br> [0x800017cc]:sd t6, 1120(gp)<br>    |
|  90|[0x800037b0]<br>0x0000000008008002|- rs2_h1_val == -8193<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001804]:KDMTT t6, t5, t4<br> [0x80001808]:sd t6, 1136(gp)<br>    |
|  91|[0x800037c0]<br>0x00000000000000A0|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001840]:KDMTT t6, t5, t4<br> [0x80001844]:sd t6, 1152(gp)<br>    |
|  92|[0x800037d0]<br>0xFFFFFFFFFFF9555C|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001878]:KDMTT t6, t5, t4<br> [0x8000187c]:sd t6, 1168(gp)<br>    |
|  93|[0x800037e0]<br>0xFFFFFFFFFFFBF000|- rs2_h2_val == 32767<br> - rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800018b0]:KDMTT t6, t5, t4<br> [0x800018b4]:sd t6, 1184(gp)<br>    |
|  94|[0x800037f0]<br>0x0000000000100000|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800018ec]:KDMTT t6, t5, t4<br> [0x800018f0]:sd t6, 1200(gp)<br>    |
|  95|[0x80003800]<br>0xFFFFFFFFFFE00000|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001928]:KDMTT t6, t5, t4<br> [0x8000192c]:sd t6, 1216(gp)<br>    |
|  96|[0x80003810]<br>0xFFFFFFFFFFFFAFF6|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000196c]:KDMTT t6, t5, t4<br> [0x80001970]:sd t6, 1232(gp)<br>    |
|  97|[0x80003820]<br>0x0000000000402402|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800019a8]:KDMTT t6, t5, t4<br> [0x800019ac]:sd t6, 1248(gp)<br>    |
|  98|[0x80003830]<br>0x00000000007FFE00|- rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800019e8]:KDMTT t6, t5, t4<br> [0x800019ec]:sd t6, 1264(gp)<br>    |
|  99|[0x80003840]<br>0xFFFFFFFFFFFFFB6E|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001a20]:KDMTT t6, t5, t4<br> [0x80001a24]:sd t6, 1280(gp)<br>    |
| 100|[0x80003850]<br>0x0000000000000252|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001a5c]:KDMTT t6, t5, t4<br> [0x80001a60]:sd t6, 1296(gp)<br>    |
| 101|[0x80003860]<br>0x0000000000000028|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a98]:KDMTT t6, t5, t4<br> [0x80001a9c]:sd t6, 1312(gp)<br>    |
| 102|[0x80003870]<br>0xFFFFFFFFFFFFFFF0|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001ac8]:KDMTT t6, t5, t4<br> [0x80001acc]:sd t6, 1328(gp)<br>    |
| 103|[0x80003880]<br>0x0000000003FFF800|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001afc]:KDMTT t6, t5, t4<br> [0x80001b00]:sd t6, 1344(gp)<br>    |
| 104|[0x80003890]<br>0x0000000000000280|- rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001b38]:KDMTT t6, t5, t4<br> [0x80001b3c]:sd t6, 1360(gp)<br>    |
| 105|[0x800038a0]<br>0x0000000000000000|- rs2_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001b70]:KDMTT t6, t5, t4<br> [0x80001b74]:sd t6, 1376(gp)<br>    |
