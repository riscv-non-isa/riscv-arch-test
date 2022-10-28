
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000fc0')]      |
| SIG_REGION                | [('0x80002210', '0x80002670', '140 dwords')]      |
| COV_LABELS                | ksll8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ksll8-01.S    |
| Total Number of coverpoints| 274     |
| Total Coverpoints Hit     | 268      |
| Total Signature Updates   | 140      |
| STAT1                     | 68      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 70     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d0]:KSLL8 t6, t5, t4
      [0x800009d4]:sd t6, 64(ra)
 -- Signature Address: 0x80002440 Data: 0x80E07F24F0F0007F
 -- Redundant Coverpoints hit by the op
      - opcode : ksll8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b5_val == 127
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d34]:KSLL8 t6, t5, t4
      [0x80000d38]:sd t6, 384(ra)
 -- Signature Address: 0x80002580 Data: 0x8010387F00F88030
 -- Redundant Coverpoints hit by the op
      - opcode : ksll8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b6_val == 2
      - rs1_b4_val == 127
      - rs1_b3_val == 0
      - rs1_b2_val == -1
      - rs1_b1_val == -128






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksll8', 'rs1 : x26', 'rs2 : x26', 'rd : x20', 'rs1 == rs2 != rd', 'rs2_val == 5', 'rs1_b7_val == 0', 'rs1_b6_val == 0', 'rs1_b5_val == 0', 'rs1_b4_val == 0', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x800003c0]:KSLL8 s4, s10, s10
	-[0x800003c4]:sd s4, 0(a4)
Current Store : [0x800003c8] : sd s10, 8(a4) -- Store: [0x80002218]:0x0000000000000005




Last Coverpoint : ['rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs2_val == 3']
Last Code Sequence : 
	-[0x800003f0]:KSLL8 s7, s7, s7
	-[0x800003f4]:sd s7, 16(a4)
Current Store : [0x800003f8] : sd s7, 24(a4) -- Store: [0x80002228]:0x0000000000000018




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6', 'rs1_b7_val == -86', 'rs1_b2_val == 64', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000418]:KSLL8 t4, s5, a1
	-[0x8000041c]:sd t4, 32(a4)
Current Store : [0x80000420] : sd s5, 40(a4) -- Store: [0x80002238]:0xAAC03F030640F800




Last Coverpoint : ['rs1 : x18', 'rs2 : x4', 'rd : x18', 'rs1 == rd != rs2', 'rs2_val == 4', 'rs1_b6_val == 2', 'rs1_b5_val == -2', 'rs1_b4_val == 4', 'rs1_b2_val == -17', 'rs1_b1_val == 127', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x80000448]:KSLL8 s2, s2, tp
	-[0x8000044c]:sd s2, 48(a4)
Current Store : [0x80000450] : sd s2, 56(a4) -- Store: [0x80002248]:0x8020E04060807FD0




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs2_val == 2', 'rs1_b5_val == -9', 'rs1_b2_val == 85', 'rs1_b1_val == -5', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000470]:KSLL8 a3, s6, a3
	-[0x80000474]:sd a3, 64(a4)
Current Store : [0x80000478] : sd s6, 72(a4) -- Store: [0x80002258]:0x053FF7003F55FB01




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x28', 'rs2_val == 1', 'rs1_b5_val == -33', 'rs1_b4_val == -3', 'rs1_b3_val == -65', 'rs1_b2_val == -128', 'rs1_b0_val == -128']
Last Code Sequence : 
	-[0x800004a0]:KSLL8 t3, t0, t2
	-[0x800004a4]:sd t3, 80(a4)
Current Store : [0x800004a8] : sd t0, 88(a4) -- Store: [0x80002268]:0xC0F6DFFDBF80F880




Last Coverpoint : ['rs1 : x15', 'rs2 : x10', 'rd : x4', 'rs1_b7_val == 85', 'rs1_b4_val == -5', 'rs1_b2_val == 2', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x800004d0]:KSLL8 tp, a5, a0
	-[0x800004d4]:sd tp, 96(a4)
Current Store : [0x800004d8] : sd a5, 104(a4) -- Store: [0x80002278]:0x550206FBF602103F




Last Coverpoint : ['rs1 : x25', 'rs2 : x15', 'rd : x30', 'rs1_b7_val == 127', 'rs1_b6_val == 1', 'rs1_b3_val == -86']
Last Code Sequence : 
	-[0x80000500]:KSLL8 t5, s9, a5
	-[0x80000504]:sd t5, 112(a4)
Current Store : [0x80000508] : sd s9, 120(a4) -- Store: [0x80002288]:0x7F01DFFAAA067F00




Last Coverpoint : ['rs1 : x2', 'rs2 : x3', 'rd : x26', 'rs1_b7_val == -65', 'rs1_b6_val == -9', 'rs1_b3_val == -9', 'rs1_b2_val == -33', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000530]:KSLL8 s10, sp, gp
	-[0x80000534]:sd s10, 128(a4)
Current Store : [0x80000538] : sd sp, 136(a4) -- Store: [0x80002298]:0xBFF7C004F7DF0910




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x16', 'rs1_b7_val == -33', 'rs1_b6_val == -65', 'rs1_b3_val == -2', 'rs1_b1_val == -1', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000558]:KSLL8 a6, s1, fp
	-[0x8000055c]:sd a6, 144(a4)
Current Store : [0x80000560] : sd s1, 152(a4) -- Store: [0x800022a8]:0xDFBF0503FE3FFFDF




Last Coverpoint : ['rs1 : x8', 'rs2 : x0', 'rd : x2', 'rs1_b7_val == -17', 'rs1_b3_val == 16']
Last Code Sequence : 
	-[0x80000580]:KSLL8 sp, fp, zero
	-[0x80000584]:sd sp, 160(a4)
Current Store : [0x80000588] : sd fp, 168(a4) -- Store: [0x800022b8]:0xEFC0DF0010F80306




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x22', 'rs1_b7_val == -9', 'rs1_b6_val == -1', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x800005b0]:KSLL8 s6, a6, t4
	-[0x800005b4]:sd s6, 176(a4)
Current Store : [0x800005b8] : sd a6, 184(a4) -- Store: [0x800022c8]:0xF7FF0504F9F9F709




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x3', 'rs1_b7_val == -5', 'rs1_b1_val == 1', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x800005d8]:KSLL8 gp, s4, t5
	-[0x800005dc]:sd gp, 192(a4)
Current Store : [0x800005e0] : sd s4, 200(a4) -- Store: [0x800022d8]:0xFBFADF05C0F901FF




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x9', 'rs1_b7_val == -3', 'rs1_b6_val == -17', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000600]:KSLL8 s1, a2, s3
	-[0x80000604]:sd s1, 208(a4)
Current Store : [0x80000608] : sd a2, 216(a4) -- Store: [0x800022e8]:0xFDEF0707FA40FB02




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x10', 'rs1_b7_val == -2', 'rs1_b5_val == 64', 'rs1_b4_val == 85', 'rs1_b1_val == -128', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000628]:KSLL8 a0, ra, t1
	-[0x8000062c]:sd a0, 224(a4)
Current Store : [0x80000630] : sd ra, 232(a4) -- Store: [0x800022f8]:0xFEC04055F8F8807F




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x27', 'rs1_b7_val == -128', 'rs1_b5_val == 127', 'rs1_b2_val == 8', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000658]:KSLL8 s11, t2, s1
	-[0x8000065c]:sd s11, 240(a4)
Current Store : [0x80000660] : sd t2, 248(a4) -- Store: [0x80002308]:0x80077F03AA0801BF




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x19', 'rs1_b7_val == 64', 'rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000690]:KSLL8 s3, gp, t6
	-[0x80000694]:sd s3, 0(t2)
Current Store : [0x80000698] : sd gp, 8(t2) -- Store: [0x80002318]:0x40F6FAF92055063F




Last Coverpoint : ['rs1 : x10', 'rs2 : x18', 'rd : x5', 'rs1_b7_val == 32', 'rs1_b4_val == -2', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800006c0]:KSLL8 t0, a0, s2
	-[0x800006c4]:sd t0, 16(t2)
Current Store : [0x800006c8] : sd a0, 24(t2) -- Store: [0x80002328]:0x200940FEFAF6EFFA




Last Coverpoint : ['rs1 : x24', 'rs2 : x16', 'rd : x0', 'rs1_b7_val == 16', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800006f0]:KSLL8 zero, s8, a6
	-[0x800006f4]:sd zero, 32(t2)
Current Store : [0x800006f8] : sd s8, 40(t2) -- Store: [0x80002338]:0x1006FA06F8051040




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x31', 'rs1_b7_val == 8', 'rs1_b6_val == 127', 'rs1_b5_val == 32', 'rs1_b3_val == -17', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000720]:KSLL8 t6, t1, t3
	-[0x80000724]:sd t6, 48(t2)
Current Store : [0x80000728] : sd t1, 56(t2) -- Store: [0x80002348]:0x087F2007EF5520FC




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x24']
Last Code Sequence : 
	-[0x80000748]:KSLL8 s8, zero, t0
	-[0x8000074c]:sd s8, 64(t2)
Current Store : [0x80000750] : sd zero, 72(t2) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x11', 'rs1_b7_val == 2', 'rs1_b6_val == 8', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80000778]:KSLL8 a1, t3, s9
	-[0x8000077c]:sd a1, 80(t2)
Current Store : [0x80000780] : sd t3, 88(t2) -- Store: [0x80002368]:0x02080909FB3F20C0




Last Coverpoint : ['rs1 : x29', 'rs2 : x20', 'rd : x15', 'rs1_b7_val == 1', 'rs1_b3_val == 8', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x800007a0]:KSLL8 a5, t4, s4
	-[0x800007a4]:sd a5, 96(t2)
Current Store : [0x800007a8] : sd t4, 104(t2) -- Store: [0x80002378]:0x01FC03FC08F7F980




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x14', 'rs1_b6_val == -5', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x800007c8]:KSLL8 a4, a1, sp
	-[0x800007cc]:sd a4, 112(t2)
Current Store : [0x800007d0] : sd a1, 120(t2) -- Store: [0x80002388]:0x00FB40FCC03FFAFB




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rd : x1', 'rs1_b7_val == -1', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800007f0]:KSLL8 ra, s11, a4
	-[0x800007f4]:sd ra, 128(t2)
Current Store : [0x800007f8] : sd s11, 136(t2) -- Store: [0x80002398]:0xFFF9203F20F80280




Last Coverpoint : ['rs1 : x17', 'rs2 : x21', 'rd : x25', 'rs1_b6_val == -86', 'rs1_b3_val == -128', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000818]:KSLL8 s9, a7, s5
	-[0x8000081c]:sd s9, 144(t2)
Current Store : [0x80000820] : sd a7, 152(t2) -- Store: [0x800023a8]:0xEFAAF7F680EF2055




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x17', 'rs1_b6_val == 85', 'rs1_b5_val == 16']
Last Code Sequence : 
	-[0x80000840]:KSLL8 a7, t5, ra
	-[0x80000844]:sd a7, 160(t2)
Current Store : [0x80000848] : sd t5, 168(t2) -- Store: [0x800023b8]:0x015510FE10F77F00




Last Coverpoint : ['rs1 : x14', 'rs2 : x24', 'rd : x6', 'rs1_b6_val == -33', 'rs1_b5_val == 8', 'rs1_b1_val == -3', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000868]:KSLL8 t1, a4, s8
	-[0x8000086c]:sd t1, 176(t2)
Current Store : [0x80000870] : sd a4, 184(t2) -- Store: [0x800023c8]:0x07DF08060880FDEF




Last Coverpoint : ['rs1 : x4', 'rs2 : x27', 'rd : x12', 'rs1_b6_val == -3', 'rs1_b3_val == 64', 'rs1_b2_val == -1']
Last Code Sequence : 
	-[0x80000898]:KSLL8 a2, tp, s11
	-[0x8000089c]:sd a2, 192(t2)
Current Store : [0x800008a0] : sd tp, 200(t2) -- Store: [0x800023d8]:0x20FD3FFD40FF03F6




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x8', 'rs1_b4_val == -128', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x800008c8]:KSLL8 fp, t6, s6
	-[0x800008cc]:sd fp, 208(t2)
Current Store : [0x800008d0] : sd t6, 216(t2) -- Store: [0x800023e8]:0x07FDC080F700BFF8




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x21', 'rs1_b5_val == -86', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x800008f8]:KSLL8 s5, a3, a2
	-[0x800008fc]:sd s5, 224(t2)
Current Store : [0x80000900] : sd a3, 232(t2) -- Store: [0x800023f8]:0x3FF9AA00F803DFBF




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rd : x7', 'rs1_b4_val == 64', 'rs1_b3_val == 1', 'rs1_b2_val == 32', 'rs1_b1_val == -2', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000928]:KSLL8 t2, s3, a7
	-[0x8000092c]:sd t2, 0(ra)
Current Store : [0x80000930] : sd s3, 8(ra) -- Store: [0x80002408]:0x09FFFA400120FEFE




Last Coverpoint : ['rs1_b1_val == 64']
Last Code Sequence : 
	-[0x80000958]:KSLL8 t6, t5, t4
	-[0x8000095c]:sd t6, 16(ra)
Current Store : [0x80000960] : sd t5, 24(ra) -- Store: [0x80002418]:0xDF06F90003404040




Last Coverpoint : ['rs1_b5_val == -17', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000980]:KSLL8 t6, t5, t4
	-[0x80000984]:sd t6, 32(ra)
Current Store : [0x80000988] : sd t5, 40(ra) -- Store: [0x80002428]:0x02FDEFFABFFF0840




Last Coverpoint : ['rs1_b5_val == 4', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x800009a8]:KSLL8 t6, t5, t4
	-[0x800009ac]:sd t6, 48(ra)
Current Store : [0x800009b0] : sd t5, 56(ra) -- Store: [0x80002438]:0xFB070455FBFA0402




Last Coverpoint : ['opcode : ksll8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b5_val == 127', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x800009d0]:KSLL8 t6, t5, t4
	-[0x800009d4]:sd t6, 64(ra)
Current Store : [0x800009d8] : sd t5, 72(ra) -- Store: [0x80002448]:0xC0F87F09FCFC003F




Last Coverpoint : ['rs1_b5_val == -5', 'rs1_b4_val == 1', 'rs1_b1_val == 85', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000a00]:KSLL8 t6, t5, t4
	-[0x80000a04]:sd t6, 80(ra)
Current Store : [0x80000a08] : sd t5, 88(ra) -- Store: [0x80002458]:0x4001FB01AA2055AA




Last Coverpoint : ['rs1_b2_val == 127', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x80000a28]:KSLL8 t6, t5, t4
	-[0x80000a2c]:sd t6, 96(ra)
Current Store : [0x80000a30] : sd t5, 104(ra) -- Store: [0x80002468]:0xEF06F9FBFC7F05F7




Last Coverpoint : ['rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000a50]:KSLL8 t6, t5, t4
	-[0x80000a54]:sd t6, 112(ra)
Current Store : [0x80000a58] : sd t5, 120(ra) -- Store: [0x80002478]:0xFFF903C0C07F0820




Last Coverpoint : ['rs1_b4_val == 2', 'rs1_b2_val == -86', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000a78]:KSLL8 t6, t5, t4
	-[0x80000a7c]:sd t6, 128(ra)
Current Store : [0x80000a80] : sd t5, 136(ra) -- Store: [0x80002488]:0x09FDFB02F8AAF808




Last Coverpoint : ['rs1_b6_val == 64', 'rs1_b4_val == 127', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000aa8]:KSLL8 t6, t5, t4
	-[0x80000aac]:sd t6, 144(ra)
Current Store : [0x80000ab0] : sd t5, 152(ra) -- Store: [0x80002498]:0xEF40087F40F7F704




Last Coverpoint : ['rs1_b6_val == -2']
Last Code Sequence : 
	-[0x80000ad8]:KSLL8 t6, t5, t4
	-[0x80000adc]:sd t6, 160(ra)
Current Store : [0x80000ae0] : sd t5, 168(ra) -- Store: [0x800024a8]:0x10FEDF4010F8FAFF




Last Coverpoint : ['rs1_b6_val == -128']
Last Code Sequence : 
	-[0x80000b00]:KSLL8 t6, t5, t4
	-[0x80000b04]:sd t6, 176(ra)
Current Store : [0x80000b08] : sd t5, 184(ra) -- Store: [0x800024b8]:0x0780EF7F050303FC




Last Coverpoint : ['rs1_b6_val == 32']
Last Code Sequence : 
	-[0x80000b2c]:KSLL8 t6, t5, t4
	-[0x80000b30]:sd t6, 192(ra)
Current Store : [0x80000b34] : sd t5, 200(ra) -- Store: [0x800024c8]:0x1020000609F88007




Last Coverpoint : ['rs1_b5_val == -1']
Last Code Sequence : 
	-[0x80000b54]:KSLL8 t6, t5, t4
	-[0x80000b58]:sd t6, 208(ra)
Current Store : [0x80000b5c] : sd t5, 216(ra) -- Store: [0x800024d8]:0xFBC0FFFB2055F920




Last Coverpoint : ['rs1_b5_val == 2', 'rs1_b4_val == -86']
Last Code Sequence : 
	-[0x80000b84]:KSLL8 t6, t5, t4
	-[0x80000b88]:sd t6, 224(ra)
Current Store : [0x80000b8c] : sd t5, 232(ra) -- Store: [0x800024e8]:0xFAFC02AAFA05F7FF




Last Coverpoint : ['rs1_b4_val == -65']
Last Code Sequence : 
	-[0x80000bb4]:KSLL8 t6, t5, t4
	-[0x80000bb8]:sd t6, 240(ra)
Current Store : [0x80000bbc] : sd t5, 248(ra) -- Store: [0x800024f8]:0xFDFBF9BF09F60804




Last Coverpoint : ['rs1_b5_val == -128', 'rs1_b4_val == -33']
Last Code Sequence : 
	-[0x80000bdc]:KSLL8 t6, t5, t4
	-[0x80000be0]:sd t6, 256(ra)
Current Store : [0x80000be4] : sd t5, 264(ra) -- Store: [0x80002508]:0x020080DF8008FEFA




Last Coverpoint : ['rs1_b4_val == -17', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80000c04]:KSLL8 t6, t5, t4
	-[0x80000c08]:sd t6, 272(ra)
Current Store : [0x80000c0c] : sd t5, 280(ra) -- Store: [0x80002518]:0x063FAAEF025506F8




Last Coverpoint : ['rs1_b4_val == 32']
Last Code Sequence : 
	-[0x80000c34]:KSLL8 t6, t5, t4
	-[0x80000c38]:sd t6, 288(ra)
Current Store : [0x80000c3c] : sd t5, 296(ra) -- Store: [0x80002528]:0x7F400020053F3FFA




Last Coverpoint : ['rs1_b4_val == 16']
Last Code Sequence : 
	-[0x80000c64]:KSLL8 t6, t5, t4
	-[0x80000c68]:sd t6, 304(ra)
Current Store : [0x80000c6c] : sd t5, 312(ra) -- Store: [0x80002538]:0x1005F910FC802020




Last Coverpoint : ['rs1_b4_val == 8']
Last Code Sequence : 
	-[0x80000c8c]:KSLL8 t6, t5, t4
	-[0x80000c90]:sd t6, 320(ra)
Current Store : [0x80000c94] : sd t5, 328(ra) -- Store: [0x80002548]:0x80C0FE08FB0005FC




Last Coverpoint : ['rs1_b3_val == 85', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x80000cbc]:KSLL8 t6, t5, t4
	-[0x80000cc0]:sd t6, 336(ra)
Current Store : [0x80000cc4] : sd t5, 344(ra) -- Store: [0x80002558]:0xBF20C0BF551055FB




Last Coverpoint : ['rs1_b6_val == 16', 'rs1_b3_val == 127']
Last Code Sequence : 
	-[0x80000ce4]:KSLL8 t6, t5, t4
	-[0x80000ce8]:sd t6, 352(ra)
Current Store : [0x80000cec] : sd t5, 360(ra) -- Store: [0x80002568]:0xBF10FE087FEFFDF7




Last Coverpoint : ['rs1_b4_val == -1', 'rs1_b3_val == -33', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x80000d0c]:KSLL8 t6, t5, t4
	-[0x80000d10]:sd t6, 368(ra)
Current Store : [0x80000d14] : sd t5, 376(ra) -- Store: [0x80002578]:0xFE0304FFDF04FB04




Last Coverpoint : ['opcode : ksll8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b6_val == 2', 'rs1_b4_val == 127', 'rs1_b3_val == 0', 'rs1_b2_val == -1', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000d34]:KSLL8 t6, t5, t4
	-[0x80000d38]:sd t6, 384(ra)
Current Store : [0x80000d3c] : sd t5, 392(ra) -- Store: [0x80002588]:0xC002077F00FF8006




Last Coverpoint : ['rs1_b6_val == 4']
Last Code Sequence : 
	-[0x80000d64]:KSLL8 t6, t5, t4
	-[0x80000d68]:sd t6, 400(ra)
Current Store : [0x80000d6c] : sd t5, 408(ra) -- Store: [0x80002598]:0x550407FEDFDFF6FD




Last Coverpoint : ['rs1_b3_val == -1', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000d8c]:KSLL8 t6, t5, t4
	-[0x80000d90]:sd t6, 416(ra)
Current Store : [0x80000d94] : sd t5, 424(ra) -- Store: [0x800025a8]:0x55FA0707FFFB0701




Last Coverpoint : ['rs1_b7_val == 4', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x80000db4]:KSLL8 t6, t5, t4
	-[0x80000db8]:sd t6, 432(ra)
Current Store : [0x80000dbc] : sd t5, 440(ra) -- Store: [0x800025b8]:0x04FF40F820BF07F9




Last Coverpoint : ['rs1_b5_val == 85']
Last Code Sequence : 
	-[0x80000de4]:KSLL8 t6, t5, t4
	-[0x80000de8]:sd t6, 448(ra)
Current Store : [0x80000dec] : sd t5, 456(ra) -- Store: [0x800025c8]:0xFCEF55BFFE000907




Last Coverpoint : ['rs1_b5_val == -65']
Last Code Sequence : 
	-[0x80000e0c]:KSLL8 t6, t5, t4
	-[0x80000e10]:sd t6, 464(ra)
Current Store : [0x80000e14] : sd t5, 472(ra) -- Store: [0x800025d8]:0xFDFCBFFF0740FA02




Last Coverpoint : ['rs1_b2_val == -3']
Last Code Sequence : 
	-[0x80000e3c]:KSLL8 t6, t5, t4
	-[0x80000e40]:sd t6, 480(ra)
Current Store : [0x80000e44] : sd t5, 488(ra) -- Store: [0x800025e8]:0xC0F6F6FAFCFDF6FA




Last Coverpoint : ['rs1_b2_val == -2']
Last Code Sequence : 
	-[0x80000e6c]:KSLL8 t6, t5, t4
	-[0x80000e70]:sd t6, 496(ra)
Current Store : [0x80000e74] : sd t5, 504(ra) -- Store: [0x800025f8]:0x550404FCBFFE5540




Last Coverpoint : ['rs1_b5_val == -3']
Last Code Sequence : 
	-[0x80000e9c]:KSLL8 t6, t5, t4
	-[0x80000ea0]:sd t6, 512(ra)
Current Store : [0x80000ea4] : sd t5, 520(ra) -- Store: [0x80002608]:0xEF3FFDBF02053F10




Last Coverpoint : ['rs1_b3_val == -3']
Last Code Sequence : 
	-[0x80000ecc]:KSLL8 t6, t5, t4
	-[0x80000ed0]:sd t6, 528(ra)
Current Store : [0x80000ed4] : sd t5, 536(ra) -- Store: [0x80002618]:0xFB205520FD06F6F8




Last Coverpoint : ['rs1_b2_val == 1']
Last Code Sequence : 
	-[0x80000efc]:KSLL8 t6, t5, t4
	-[0x80000f00]:sd t6, 544(ra)
Current Store : [0x80000f04] : sd t5, 552(ra) -- Store: [0x80002628]:0xEF20AA09F60155C0




Last Coverpoint : ['rs1_b1_val == -86']
Last Code Sequence : 
	-[0x80000f2c]:KSLL8 t6, t5, t4
	-[0x80000f30]:sd t6, 560(ra)
Current Store : [0x80000f34] : sd t5, 568(ra) -- Store: [0x80002638]:0xFCFEC020FDAAAAAA




Last Coverpoint : ['rs1_b5_val == 1']
Last Code Sequence : 
	-[0x80000f5c]:KSLL8 t6, t5, t4
	-[0x80000f60]:sd t6, 576(ra)
Current Store : [0x80000f64] : sd t5, 584(ra) -- Store: [0x80002648]:0x010201FF00F9F6F6




Last Coverpoint : ['rs1_b4_val == -9']
Last Code Sequence : 
	-[0x80000f84]:KSLL8 t6, t5, t4
	-[0x80000f88]:sd t6, 592(ra)
Current Store : [0x80000f8c] : sd t5, 600(ra) -- Store: [0x80002658]:0xAA4009F7F93FFFFC




Last Coverpoint : ['rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000fb4]:KSLL8 t6, t5, t4
	-[0x80000fb8]:sd t6, 608(ra)
Current Store : [0x80000fbc] : sd t5, 616(ra) -- Store: [0x80002668]:0xF8FA7FFF04FB0902





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

|s.no|            signature             |                                                                                                                              coverpoints                                                                                                                               |                                code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000000000007F|- opcode : ksll8<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_val == 5<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> |[0x800003c0]:KSLL8 s4, s10, s10<br> [0x800003c4]:sd s4, 0(a4)<br>    |
|   2|[0x80002220]<br>0x0000000000000018|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs2_val == 3<br>                                                                                                                                                                                |[0x800003f0]:KSLL8 s7, s7, s7<br> [0x800003f4]:sd s7, 16(a4)<br>     |
|   3|[0x80002230]<br>0x80807F7F7F7F8000|- rs1 : x21<br> - rs2 : x11<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b7_val == -86<br> - rs1_b2_val == 64<br> - rs1_b0_val == 0<br>                                                                                    |[0x80000418]:KSLL8 t4, s5, a1<br> [0x8000041c]:sd t4, 32(a4)<br>     |
|   4|[0x80002240]<br>0x8020E04060807FD0|- rs1 : x18<br> - rs2 : x4<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_val == 4<br> - rs1_b6_val == 2<br> - rs1_b5_val == -2<br> - rs1_b4_val == 4<br> - rs1_b2_val == -17<br> - rs1_b1_val == 127<br> - rs1_b0_val == -3<br>                                       |[0x80000448]:KSLL8 s2, s2, tp<br> [0x8000044c]:sd s2, 48(a4)<br>     |
|   5|[0x80002250]<br>0x147FDC007F7FEC04|- rs1 : x22<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_val == 2<br> - rs1_b5_val == -9<br> - rs1_b2_val == 85<br> - rs1_b1_val == -5<br> - rs1_b0_val == 1<br>                                                                                     |[0x80000470]:KSLL8 a3, s6, a3<br> [0x80000474]:sd a3, 64(a4)<br>     |
|   6|[0x80002260]<br>0x80ECBEFA8080F080|- rs1 : x5<br> - rs2 : x7<br> - rd : x28<br> - rs2_val == 1<br> - rs1_b5_val == -33<br> - rs1_b4_val == -3<br> - rs1_b3_val == -65<br> - rs1_b2_val == -128<br> - rs1_b0_val == -128<br>                                                                                |[0x800004a0]:KSLL8 t3, t0, t2<br> [0x800004a4]:sd t3, 80(a4)<br>     |
|   7|[0x80002270]<br>0x550206FBF602103F|- rs1 : x15<br> - rs2 : x10<br> - rd : x4<br> - rs1_b7_val == 85<br> - rs1_b4_val == -5<br> - rs1_b2_val == 2<br> - rs1_b1_val == 16<br>                                                                                                                                |[0x800004d0]:KSLL8 tp, a5, a0<br> [0x800004d4]:sd tp, 96(a4)<br>     |
|   8|[0x80002280]<br>0x7F02BEF4800C7F00|- rs1 : x25<br> - rs2 : x15<br> - rd : x30<br> - rs1_b7_val == 127<br> - rs1_b6_val == 1<br> - rs1_b3_val == -86<br>                                                                                                                                                    |[0x80000500]:KSLL8 t5, s9, a5<br> [0x80000504]:sd t5, 112(a4)<br>    |
|   9|[0x80002290]<br>0x80DC8010DC802440|- rs1 : x2<br> - rs2 : x3<br> - rd : x26<br> - rs1_b7_val == -65<br> - rs1_b6_val == -9<br> - rs1_b3_val == -9<br> - rs1_b2_val == -33<br> - rs1_b0_val == 16<br>                                                                                                       |[0x80000530]:KSLL8 s10, sp, gp<br> [0x80000534]:sd s10, 128(a4)<br>  |
|  10|[0x800022a0]<br>0x80802818F07FF880|- rs1 : x9<br> - rs2 : x8<br> - rd : x16<br> - rs1_b7_val == -33<br> - rs1_b6_val == -65<br> - rs1_b3_val == -2<br> - rs1_b1_val == -1<br> - rs1_b0_val == -33<br>                                                                                                      |[0x80000558]:KSLL8 a6, s1, fp<br> [0x8000055c]:sd a6, 144(a4)<br>    |
|  11|[0x800022b0]<br>0xEFC0DF0010F80306|- rs1 : x8<br> - rs2 : x0<br> - rd : x2<br> - rs1_b7_val == -17<br> - rs1_b3_val == 16<br>                                                                                                                                                                              |[0x80000580]:KSLL8 sp, fp, zero<br> [0x80000584]:sd sp, 160(a4)<br>  |
|  12|[0x800022c0]<br>0xDCFC1410E4E4DC24|- rs1 : x16<br> - rs2 : x29<br> - rd : x22<br> - rs1_b7_val == -9<br> - rs1_b6_val == -1<br> - rs1_b1_val == -9<br>                                                                                                                                                     |[0x800005b0]:KSLL8 s6, a6, t4<br> [0x800005b4]:sd s6, 176(a4)<br>    |
|  13|[0x800022d0]<br>0xF6F4BE0A80F202FE|- rs1 : x20<br> - rs2 : x30<br> - rd : x3<br> - rs1_b7_val == -5<br> - rs1_b1_val == 1<br> - rs1_b0_val == -1<br>                                                                                                                                                       |[0x800005d8]:KSLL8 gp, s4, t5<br> [0x800005dc]:sd gp, 192(a4)<br>    |
|  14|[0x800022e0]<br>0x80807F7F807F807F|- rs1 : x12<br> - rs2 : x19<br> - rd : x9<br> - rs1_b7_val == -3<br> - rs1_b6_val == -17<br> - rs1_b0_val == 2<br>                                                                                                                                                      |[0x80000600]:KSLL8 s1, a2, s3<br> [0x80000604]:sd s1, 208(a4)<br>    |
|  15|[0x800022f0]<br>0x80807F7F8080807F|- rs1 : x1<br> - rs2 : x6<br> - rd : x10<br> - rs1_b7_val == -2<br> - rs1_b5_val == 64<br> - rs1_b4_val == 85<br> - rs1_b1_val == -128<br> - rs1_b0_val == 127<br>                                                                                                      |[0x80000628]:KSLL8 a0, ra, t1<br> [0x8000062c]:sd a0, 224(a4)<br>    |
|  16|[0x80002300]<br>0x800E7F0680100280|- rs1 : x7<br> - rs2 : x9<br> - rd : x27<br> - rs1_b7_val == -128<br> - rs1_b5_val == 127<br> - rs1_b2_val == 8<br> - rs1_b0_val == -65<br>                                                                                                                             |[0x80000658]:KSLL8 s11, t2, s1<br> [0x8000065c]:sd s11, 240(a4)<br>  |
|  17|[0x80002310]<br>0x40F6FAF92055063F|- rs1 : x3<br> - rs2 : x31<br> - rd : x19<br> - rs1_b7_val == 64<br> - rs1_b3_val == 32<br>                                                                                                                                                                             |[0x80000690]:KSLL8 s3, gp, t6<br> [0x80000694]:sd s3, 0(t2)<br>      |
|  18|[0x80002320]<br>0x7F7F7FC080808080|- rs1 : x10<br> - rs2 : x18<br> - rd : x5<br> - rs1_b7_val == 32<br> - rs1_b4_val == -2<br> - rs1_b1_val == -17<br>                                                                                                                                                     |[0x800006c0]:KSLL8 t0, a0, s2<br> [0x800006c4]:sd t0, 16(t2)<br>     |
|  19|[0x80002330]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x16<br> - rd : x0<br> - rs1_b7_val == 16<br> - rs1_b0_val == 64<br>                                                                                                                                                                             |[0x800006f0]:KSLL8 zero, s8, a6<br> [0x800006f4]:sd zero, 32(t2)<br> |
|  20|[0x80002340]<br>0x407F7F38807F7FE0|- rs1 : x6<br> - rs2 : x28<br> - rd : x31<br> - rs1_b7_val == 8<br> - rs1_b6_val == 127<br> - rs1_b5_val == 32<br> - rs1_b3_val == -17<br> - rs1_b1_val == 32<br>                                                                                                       |[0x80000720]:KSLL8 t6, t1, t3<br> [0x80000724]:sd t6, 48(t2)<br>     |
|  21|[0x80002350]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x5<br> - rd : x24<br>                                                                                                                                                                                                                            |[0x80000748]:KSLL8 s8, zero, t0<br> [0x8000074c]:sd s8, 64(t2)<br>   |
|  22|[0x80002360]<br>0x7F7F7F7F807F7F80|- rs1 : x28<br> - rs2 : x25<br> - rd : x11<br> - rs1_b7_val == 2<br> - rs1_b6_val == 8<br> - rs1_b3_val == -5<br>                                                                                                                                                       |[0x80000778]:KSLL8 a1, t3, s9<br> [0x8000077c]:sd a1, 80(t2)<br>     |
|  23|[0x80002370]<br>0x08E018E040B8C880|- rs1 : x29<br> - rs2 : x20<br> - rd : x15<br> - rs1_b7_val == 1<br> - rs1_b3_val == 8<br> - rs1_b2_val == -9<br>                                                                                                                                                       |[0x800007a0]:KSLL8 a5, t4, s4<br> [0x800007a4]:sd a5, 96(t2)<br>     |
|  24|[0x80002380]<br>0x00FB40FCC03FFAFB|- rs1 : x11<br> - rs2 : x2<br> - rd : x14<br> - rs1_b6_val == -5<br> - rs1_b0_val == -5<br>                                                                                                                                                                             |[0x800007c8]:KSLL8 a4, a1, sp<br> [0x800007cc]:sd a4, 112(t2)<br>    |
|  25|[0x80002390]<br>0xFEF2407E40F00480|- rs1 : x27<br> - rs2 : x14<br> - rd : x1<br> - rs1_b7_val == -1<br> - rs1_b1_val == 2<br>                                                                                                                                                                              |[0x800007f0]:KSLL8 ra, s11, a4<br> [0x800007f4]:sd ra, 128(t2)<br>   |
|  26|[0x800023a0]<br>0xEFAAF7F680EF2055|- rs1 : x17<br> - rs2 : x21<br> - rd : x25<br> - rs1_b6_val == -86<br> - rs1_b3_val == -128<br> - rs1_b0_val == 85<br>                                                                                                                                                  |[0x80000818]:KSLL8 s9, a7, s5<br> [0x8000081c]:sd s9, 144(t2)<br>    |
|  27|[0x800023b0]<br>0x027F20FC20EE7F00|- rs1 : x30<br> - rs2 : x1<br> - rd : x17<br> - rs1_b6_val == 85<br> - rs1_b5_val == 16<br>                                                                                                                                                                             |[0x80000840]:KSLL8 a7, t5, ra<br> [0x80000844]:sd a7, 160(t2)<br>    |
|  28|[0x800023c0]<br>0x0EBE100C1080FADE|- rs1 : x14<br> - rs2 : x24<br> - rd : x6<br> - rs1_b6_val == -33<br> - rs1_b5_val == 8<br> - rs1_b1_val == -3<br> - rs1_b0_val == -17<br>                                                                                                                              |[0x80000868]:KSLL8 t1, a4, s8<br> [0x8000086c]:sd t1, 176(t2)<br>    |
|  29|[0x800023d0]<br>0x7FE87FE87FF818B0|- rs1 : x4<br> - rs2 : x27<br> - rd : x12<br> - rs1_b6_val == -3<br> - rs1_b3_val == 64<br> - rs1_b2_val == -1<br>                                                                                                                                                      |[0x80000898]:KSLL8 a2, tp, s11<br> [0x8000089c]:sd a2, 192(t2)<br>   |
|  30|[0x800023e0]<br>0x07FDC080F700BFF8|- rs1 : x31<br> - rs2 : x22<br> - rd : x8<br> - rs1_b4_val == -128<br> - rs1_b1_val == -65<br>                                                                                                                                                                          |[0x800008c8]:KSLL8 fp, t6, s6<br> [0x800008cc]:sd fp, 208(t2)<br>    |
|  31|[0x800023f0]<br>0x7FE48000E00C8080|- rs1 : x13<br> - rs2 : x12<br> - rd : x21<br> - rs1_b5_val == -86<br> - rs1_b1_val == -33<br>                                                                                                                                                                          |[0x800008f8]:KSLL8 s5, a3, a2<br> [0x800008fc]:sd s5, 224(t2)<br>    |
|  32|[0x80002400]<br>0x7FE0807F207FC0C0|- rs1 : x19<br> - rs2 : x17<br> - rd : x7<br> - rs1_b4_val == 64<br> - rs1_b3_val == 1<br> - rs1_b2_val == 32<br> - rs1_b1_val == -2<br> - rs1_b0_val == -2<br>                                                                                                         |[0x80000928]:KSLL8 t2, s3, a7<br> [0x8000092c]:sd t2, 0(ra)<br>      |
|  33|[0x80002410]<br>0x8030C800187F7F7F|- rs1_b1_val == 64<br>                                                                                                                                                                                                                                                  |[0x80000958]:KSLL8 t6, t5, t4<br> [0x8000095c]:sd t6, 16(ra)<br>     |
|  34|[0x80002420]<br>0x08F4BCE880FC207F|- rs1_b5_val == -17<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                           |[0x80000980]:KSLL8 t6, t5, t4<br> [0x80000984]:sd t6, 32(ra)<br>     |
|  35|[0x80002430]<br>0xD838207FD8D02010|- rs1_b5_val == 4<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                             |[0x800009a8]:KSLL8 t6, t5, t4<br> [0x800009ac]:sd t6, 48(ra)<br>     |
|  36|[0x80002450]<br>0x7F7F807F807F7F80|- rs1_b5_val == -5<br> - rs1_b4_val == 1<br> - rs1_b1_val == 85<br> - rs1_b0_val == -86<br>                                                                                                                                                                             |[0x80000a00]:KSLL8 t6, t5, t4<br> [0x80000a04]:sd t6, 80(ra)<br>     |
|  37|[0x80002460]<br>0xDE0CF2F6F87F0AEE|- rs1_b2_val == 127<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                          |[0x80000a28]:KSLL8 t6, t5, t4<br> [0x80000a2c]:sd t6, 96(ra)<br>     |
|  38|[0x80002470]<br>0xFEF20680807F1040|- rs1_b0_val == 32<br>                                                                                                                                                                                                                                                  |[0x80000a50]:KSLL8 t6, t5, t4<br> [0x80000a54]:sd t6, 112(ra)<br>    |
|  39|[0x80002480]<br>0x7F80807F8080807F|- rs1_b4_val == 2<br> - rs1_b2_val == -86<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                     |[0x80000a78]:KSLL8 t6, t5, t4<br> [0x80000a7c]:sd t6, 128(ra)<br>    |
|  40|[0x80002490]<br>0x807F7F7F7F808040|- rs1_b6_val == 64<br> - rs1_b4_val == 127<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                    |[0x80000aa8]:KSLL8 t6, t5, t4<br> [0x80000aac]:sd t6, 144(ra)<br>    |
|  41|[0x800024a0]<br>0x10FEDF4010F8FAFF|- rs1_b6_val == -2<br>                                                                                                                                                                                                                                                  |[0x80000ad8]:KSLL8 t6, t5, t4<br> [0x80000adc]:sd t6, 160(ra)<br>    |
|  42|[0x800024b0]<br>0x0E80DE7F0A0606F8|- rs1_b6_val == -128<br>                                                                                                                                                                                                                                                |[0x80000b00]:KSLL8 t6, t5, t4<br> [0x80000b04]:sd t6, 176(ra)<br>    |
|  43|[0x800024c0]<br>0x7F7F007F7F80807F|- rs1_b6_val == 32<br>                                                                                                                                                                                                                                                  |[0x80000b2c]:KSLL8 t6, t5, t4<br> [0x80000b30]:sd t6, 192(ra)<br>    |
|  44|[0x800024d0]<br>0x8080C0807F7F807F|- rs1_b5_val == -1<br>                                                                                                                                                                                                                                                  |[0x80000b54]:KSLL8 t6, t5, t4<br> [0x80000b58]:sd t6, 208(ra)<br>    |
|  45|[0x800024e0]<br>0x80804080807F80E0|- rs1_b5_val == 2<br> - rs1_b4_val == -86<br>                                                                                                                                                                                                                           |[0x80000b84]:KSLL8 t6, t5, t4<br> [0x80000b88]:sd t6, 224(ra)<br>    |
|  46|[0x800024f0]<br>0xD0B090807F807F40|- rs1_b4_val == -65<br>                                                                                                                                                                                                                                                 |[0x80000bb4]:KSLL8 t6, t5, t4<br> [0x80000bb8]:sd t6, 240(ra)<br>    |
|  47|[0x80002500]<br>0x20008080807FE0A0|- rs1_b5_val == -128<br> - rs1_b4_val == -33<br>                                                                                                                                                                                                                        |[0x80000bdc]:KSLL8 t6, t5, t4<br> [0x80000be0]:sd t6, 256(ra)<br>    |
|  48|[0x80002510]<br>0x187F80BC087F18E0|- rs1_b4_val == -17<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                           |[0x80000c04]:KSLL8 t6, t5, t4<br> [0x80000c08]:sd t6, 272(ra)<br>    |
|  49|[0x80002520]<br>0x7F7F007F7F7F7F80|- rs1_b4_val == 32<br>                                                                                                                                                                                                                                                  |[0x80000c34]:KSLL8 t6, t5, t4<br> [0x80000c38]:sd t6, 288(ra)<br>    |
|  50|[0x80002530]<br>0x7F7F807F80807F7F|- rs1_b4_val == 16<br>                                                                                                                                                                                                                                                  |[0x80000c64]:KSLL8 t6, t5, t4<br> [0x80000c68]:sd t6, 304(ra)<br>    |
|  51|[0x80002540]<br>0x8080FC10F6000AF8|- rs1_b4_val == 8<br>                                                                                                                                                                                                                                                   |[0x80000c8c]:KSLL8 t6, t5, t4<br> [0x80000c90]:sd t6, 320(ra)<br>    |
|  52|[0x80002550]<br>0x807F80807F7F7FD8|- rs1_b3_val == 85<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                           |[0x80000cbc]:KSLL8 t6, t5, t4<br> [0x80000cc0]:sd t6, 336(ra)<br>    |
|  53|[0x80002560]<br>0xBF10FE087FEFFDF7|- rs1_b6_val == 16<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                          |[0x80000ce4]:KSLL8 t6, t5, t4<br> [0x80000ce8]:sd t6, 352(ra)<br>    |
|  54|[0x80002570]<br>0xFC0608FEBE08F608|- rs1_b4_val == -1<br> - rs1_b3_val == -33<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                    |[0x80000d0c]:KSLL8 t6, t5, t4<br> [0x80000d10]:sd t6, 368(ra)<br>    |
|  55|[0x80002590]<br>0x7F101CF88080D8F4|- rs1_b6_val == 4<br>                                                                                                                                                                                                                                                   |[0x80000d64]:KSLL8 t6, t5, t4<br> [0x80000d68]:sd t6, 400(ra)<br>    |
|  56|[0x800025a0]<br>0x7F807F7F80807F7F|- rs1_b3_val == -1<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                           |[0x80000d8c]:KSLL8 t6, t5, t4<br> [0x80000d90]:sd t6, 416(ra)<br>    |
|  57|[0x800025b0]<br>0x7F807F807F807F80|- rs1_b7_val == 4<br> - rs1_b2_val == -65<br>                                                                                                                                                                                                                           |[0x80000db4]:KSLL8 t6, t5, t4<br> [0x80000db8]:sd t6, 432(ra)<br>    |
|  58|[0x800025c0]<br>0xFCEF55BFFE000907|- rs1_b5_val == 85<br>                                                                                                                                                                                                                                                  |[0x80000de4]:KSLL8 t6, t5, t4<br> [0x80000de8]:sd t6, 448(ra)<br>    |
|  59|[0x800025d0]<br>0xD0C080F0707FA020|- rs1_b5_val == -65<br>                                                                                                                                                                                                                                                 |[0x80000e0c]:KSLL8 t6, t5, t4<br> [0x80000e10]:sd t6, 464(ra)<br>    |
|  60|[0x800025e0]<br>0x808080A0C0D080A0|- rs1_b2_val == -3<br>                                                                                                                                                                                                                                                  |[0x80000e3c]:KSLL8 t6, t5, t4<br> [0x80000e40]:sd t6, 480(ra)<br>    |
|  61|[0x800025f0]<br>0x550404FCBFFE5540|- rs1_b2_val == -2<br>                                                                                                                                                                                                                                                  |[0x80000e6c]:KSLL8 t6, t5, t4<br> [0x80000e70]:sd t6, 496(ra)<br>    |
|  62|[0x80002600]<br>0xDE7EFA80040A7E20|- rs1_b5_val == -3<br>                                                                                                                                                                                                                                                  |[0x80000e9c]:KSLL8 t6, t5, t4<br> [0x80000ea0]:sd t6, 512(ra)<br>    |
|  63|[0x80002610]<br>0xF6407F40FA0CECF0|- rs1_b3_val == -3<br>                                                                                                                                                                                                                                                  |[0x80000ecc]:KSLL8 t6, t5, t4<br> [0x80000ed0]:sd t6, 528(ra)<br>    |
|  64|[0x80002620]<br>0x807F807F80107F80|- rs1_b2_val == 1<br>                                                                                                                                                                                                                                                   |[0x80000efc]:KSLL8 t6, t5, t4<br> [0x80000f00]:sd t6, 544(ra)<br>    |
|  65|[0x80002630]<br>0x8080807F80808080|- rs1_b1_val == -86<br>                                                                                                                                                                                                                                                 |[0x80000f2c]:KSLL8 t6, t5, t4<br> [0x80000f30]:sd t6, 560(ra)<br>    |
|  66|[0x80002640]<br>0x010201FF00F9F6F6|- rs1_b5_val == 1<br>                                                                                                                                                                                                                                                   |[0x80000f5c]:KSLL8 t6, t5, t4<br> [0x80000f60]:sd t6, 576(ra)<br>    |
|  67|[0x80002650]<br>0x807F7F80807FE080|- rs1_b4_val == -9<br>                                                                                                                                                                                                                                                  |[0x80000f84]:KSLL8 t6, t5, t4<br> [0x80000f88]:sd t6, 592(ra)<br>    |
|  68|[0x80002660]<br>0xC0D07FF820D84810|- rs1_b3_val == 4<br>                                                                                                                                                                                                                                                   |[0x80000fb4]:KSLL8 t6, t5, t4<br> [0x80000fb8]:sd t6, 608(ra)<br>    |
