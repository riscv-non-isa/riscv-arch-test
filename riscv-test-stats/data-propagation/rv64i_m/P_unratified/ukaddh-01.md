
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a60')]      |
| SIG_REGION                | [('0x80003210', '0x80003880', '206 dwords')]      |
| COV_LABELS                | ukaddh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukaddh-01.S    |
| Total Number of coverpoints| 404     |
| Total Coverpoints Hit     | 398      |
| Total Signature Updates   | 206      |
| STAT1                     | 102      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 103     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001794]:UKADDH t6, t5, t4
      [0x80001798]:sd t6, 896(sp)
 -- Signature Address: 0x800037a0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 32767
      - rs2_h2_val == 65527
      - rs2_h1_val == 4
      - rs2_h0_val == 32767
      - rs1_h3_val == 64
      - rs1_h2_val == 0
      - rs1_h0_val == 64






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukaddh', 'rs1 : x0', 'rs2 : x0', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h0_val == 0', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800003d0]:UKADDH a0, zero, zero
	-[0x800003d4]:sd a0, 0(sp)
Current Store : [0x800003d8] : sd zero, 8(sp) -- Store: [0x80003218]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 4096', 'rs2_h2_val == 65533', 'rs1_h3_val == 4096', 'rs1_h2_val == 65533']
Last Code Sequence : 
	-[0x80000404]:UKADDH s11, s11, s11
	-[0x80000408]:sd s11, 16(sp)
Current Store : [0x8000040c] : sd s11, 24(sp) -- Store: [0x80003228]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x25', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 65531', 'rs2_h2_val == 512', 'rs2_h1_val == 128', 'rs2_h0_val == 2048', 'rs1_h2_val == 512', 'rs1_h1_val == 61439', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000440]:UKADDH s1, s8, s9
	-[0x80000444]:sd s1, 32(sp)
Current Store : [0x80000448] : sd s8, 40(sp) -- Store: [0x80003238]:0x000F0200EFFF0080




Last Coverpoint : ['rs1 : x26', 'rs2 : x24', 'rd : x26', 'rs1 == rd != rs2', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h2_val == 4', 'rs2_h1_val == 61439', 'rs2_h0_val == 64511', 'rs1_h3_val == 65519', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000478]:UKADDH s10, s10, s8
	-[0x8000047c]:sd s10, 48(sp)
Current Store : [0x80000480] : sd s10, 56(sp) -- Store: [0x80003248]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs2_h3_val == 65533', 'rs2_h1_val == 49151', 'rs2_h0_val == 32', 'rs1_h3_val == 65527', 'rs1_h1_val == 128', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004ac]:UKADDH tp, t4, tp
	-[0x800004b0]:sd tp, 64(sp)
Current Store : [0x800004b4] : sd t4, 72(sp) -- Store: [0x80003258]:0xFFF7000500800020




Last Coverpoint : ['rs1 : x25', 'rs2 : x23', 'rd : x6', 'rs2_h3_val == 43690', 'rs2_h1_val == 65527', 'rs2_h0_val == 1', 'rs1_h1_val == 4096', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800004e0]:UKADDH t1, s9, s7
	-[0x800004e4]:sd t1, 80(sp)
Current Store : [0x800004e8] : sd s9, 88(sp) -- Store: [0x80003268]:0x000E000A10000008




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x12', 'rs2_h3_val == 21845', 'rs2_h2_val == 65503', 'rs2_h1_val == 65503', 'rs1_h2_val == 49151', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x8000051c]:UKADDH a2, a3, gp
	-[0x80000520]:sd a2, 96(sp)
Current Store : [0x80000524] : sd a3, 104(sp) -- Store: [0x80003278]:0x000CBFFFDFFF0200




Last Coverpoint : ['rs1 : x31', 'rs2 : x7', 'rd : x0', 'rs2_h3_val == 32767', 'rs1_h3_val == 8192', 'rs1_h2_val == 65534', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000558]:UKADDH zero, t6, t2
	-[0x8000055c]:sd zero, 112(sp)
Current Store : [0x80000560] : sd t6, 120(sp) -- Store: [0x80003288]:0x2000FFFE000FFFDF




Last Coverpoint : ['rs1 : x7', 'rs2 : x31', 'rd : x14', 'rs2_h3_val == 49151', 'rs2_h1_val == 65531', 'rs1_h2_val == 57343']
Last Code Sequence : 
	-[0x8000058c]:UKADDH a4, t2, t6
	-[0x80000590]:sd a4, 128(sp)
Current Store : [0x80000594] : sd t2, 136(sp) -- Store: [0x80003298]:0x0000DFFF00120008




Last Coverpoint : ['rs1 : x14', 'rs2 : x26', 'rd : x31', 'rs2_h3_val == 57343', 'rs2_h2_val == 65471', 'rs2_h0_val == 65535', 'rs1_h3_val == 2048', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800005c4]:UKADDH t6, a4, s10
	-[0x800005c8]:sd t6, 144(sp)
Current Store : [0x800005cc] : sd a4, 152(sp) -- Store: [0x800032a8]:0x0800001308000006




Last Coverpoint : ['rs1 : x28', 'rs2 : x10', 'rd : x25', 'rs2_h3_val == 61439', 'rs1_h3_val == 65407', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800005f8]:UKADDH s9, t3, a0
	-[0x800005fc]:sd s9, 160(sp)
Current Store : [0x80000600] : sd t3, 168(sp) -- Store: [0x800032b8]:0xFF7F000D04000005




Last Coverpoint : ['rs1 : x1', 'rs2 : x17', 'rd : x23', 'rs2_h3_val == 64511', 'rs2_h2_val == 32', 'rs2_h1_val == 43690', 'rs2_h0_val == 65471', 'rs1_h3_val == 65279', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x8000062c]:UKADDH s7, ra, a7
	-[0x80000630]:sd s7, 176(sp)
Current Store : [0x80000634] : sd ra, 184(sp) -- Store: [0x800032c8]:0xFEFF080000000012




Last Coverpoint : ['rs1 : x5', 'rs2 : x20', 'rd : x11', 'rs2_h3_val == 65023', 'rs2_h2_val == 21845', 'rs1_h2_val == 65503', 'rs1_h1_val == 65527', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000668]:UKADDH a1, t0, s4
	-[0x8000066c]:sd a1, 192(sp)
Current Store : [0x80000670] : sd t0, 200(sp) -- Store: [0x800032d8]:0x000DFFDFFFF70400




Last Coverpoint : ['rs1 : x15', 'rs2 : x11', 'rd : x22', 'rs2_h3_val == 65279', 'rs2_h0_val == 65503', 'rs1_h3_val == 16', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000069c]:UKADDH s6, a5, a1
	-[0x800006a0]:sd s6, 208(sp)
Current Store : [0x800006a4] : sd a5, 216(sp) -- Store: [0x800032e8]:0x0010FFDF0040000B




Last Coverpoint : ['rs1 : x30', 'rs2 : x19', 'rd : x29', 'rs2_h3_val == 65407', 'rs1_h3_val == 32768', 'rs1_h1_val == 32', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x800006d8]:UKADDH t4, t5, s3
	-[0x800006dc]:sd t4, 224(sp)
Current Store : [0x800006e0] : sd t5, 232(sp) -- Store: [0x800032f8]:0x8000000F0020FFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x1', 'rs2_h3_val == 65471', 'rs2_h2_val == 64511', 'rs2_h1_val == 32768', 'rs2_h0_val == 8192', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000708]:UKADDH ra, a7, a5
	-[0x8000070c]:sd ra, 240(sp)
Current Store : [0x80000710] : sd a7, 248(sp) -- Store: [0x80003308]:0x000D000A10000040




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x8', 'rs2_h3_val == 65503', 'rs2_h0_val == 65527', 'rs1_h2_val == 61439', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000744]:UKADDH fp, s5, a6
	-[0x80000748]:sd fp, 256(sp)
Current Store : [0x8000074c] : sd s5, 264(sp) -- Store: [0x80003318]:0x000EEFFF7FFF000C




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x18', 'rs2_h3_val == 65519', 'rs2_h1_val == 256', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000788]:UKADDH s2, tp, t0
	-[0x8000078c]:sd s2, 0(s9)
Current Store : [0x80000790] : sd tp, 8(s9) -- Store: [0x80003328]:0x20000009000DFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rd : x24', 'rs2_h3_val == 65527', 'rs2_h2_val == 63487', 'rs2_h0_val == 4096', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x800007c0]:UKADDH s8, s3, s5
	-[0x800007c4]:sd s8, 16(s9)
Current Store : [0x800007c8] : sd s3, 24(s9) -- Store: [0x80003338]:0x555500060011000A




Last Coverpoint : ['rs1 : x6', 'rs2 : x14', 'rd : x2', 'rs2_h3_val == 65534', 'rs2_h2_val == 43690', 'rs2_h1_val == 2048', 'rs1_h3_val == 512', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x800007f4]:UKADDH sp, t1, a4
	-[0x800007f8]:sd sp, 32(s9)
Current Store : [0x800007fc] : sd t1, 40(s9) -- Store: [0x80003348]:0x020000110005FFBF




Last Coverpoint : ['rs1 : x16', 'rs2 : x28', 'rd : x20', 'rs2_h3_val == 32768', 'rs2_h2_val == 64', 'rs2_h0_val == 65531', 'rs1_h3_val == 49151', 'rs1_h2_val == 16384', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000834]:UKADDH s4, a6, t3
	-[0x80000838]:sd s4, 48(s9)
Current Store : [0x8000083c] : sd a6, 56(s9) -- Store: [0x80003358]:0xBFFF40000007BFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x1', 'rd : x13', 'rs2_h3_val == 16384', 'rs2_h2_val == 4096', 'rs1_h3_val == 16384', 'rs1_h2_val == 2', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000870]:UKADDH a3, s1, ra
	-[0x80000874]:sd a3, 64(s9)
Current Store : [0x80000878] : sd s1, 72(s9) -- Store: [0x80003368]:0x400000020010FFDF




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x16', 'rs2_h3_val == 8192', 'rs2_h1_val == 64', 'rs2_h0_val == 128', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800008b4]:UKADDH a6, sp, s6
	-[0x800008b8]:sd a6, 80(s9)
Current Store : [0x800008bc] : sd sp, 88(s9) -- Store: [0x80003378]:0xBFFF08005555000B




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x19', 'rs2_h3_val == 2048', 'rs2_h1_val == 65023', 'rs2_h0_val == 512', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x800008f0]:UKADDH s3, gp, sp
	-[0x800008f4]:sd s3, 96(s9)
Current Store : [0x800008f8] : sd gp, 104(s9) -- Store: [0x80003388]:0x01000007000B000F




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x5', 'rs2_h3_val == 1024', 'rs2_h2_val == 32768', 'rs2_h0_val == 1024', 'rs1_h3_val == 64', 'rs1_h2_val == 8', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000928]:UKADDH t0, fp, s1
	-[0x8000092c]:sd t0, 112(s9)
Current Store : [0x80000930] : sd fp, 120(s9) -- Store: [0x80003398]:0x00400008000C8000




Last Coverpoint : ['rs1 : x20', 'rs2 : x18', 'rd : x3', 'rs2_h3_val == 512', 'rs2_h2_val == 65534', 'rs2_h1_val == 1024', 'rs2_h0_val == 32768', 'rs1_h3_val == 65023', 'rs1_h1_val == 65534', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000960]:UKADDH gp, s4, s2
	-[0x80000964]:sd gp, 128(s9)
Current Store : [0x80000968] : sd s4, 136(s9) -- Store: [0x800033a8]:0xFDFF0013FFFEFDFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x8', 'rd : x7', 'rs2_h3_val == 256', 'rs2_h1_val == 65471', 'rs1_h3_val == 32', 'rs1_h2_val == 21845', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000099c]:UKADDH t2, a1, fp
	-[0x800009a0]:sd t2, 144(s9)
Current Store : [0x800009a4] : sd a1, 152(s9) -- Store: [0x800033b8]:0x0020555500800800




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x15', 'rs2_h3_val == 128', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800009d4]:UKADDH a5, s6, t1
	-[0x800009d8]:sd a5, 160(s9)
Current Store : [0x800009dc] : sd s6, 168(s9) -- Store: [0x800033c8]:0x8000000AAAAA000A




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x17', 'rs2_h3_val == 64', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000a10]:UKADDH a7, s7, a2
	-[0x80000a14]:sd a7, 176(s9)
Current Store : [0x80000a18] : sd s7, 184(s9) -- Store: [0x800033d8]:0xFFF7000AFFFE0007




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x21', 'rs2_h3_val == 32', 'rs2_h1_val == 64511', 'rs1_h3_val == 64511', 'rs1_h2_val == 4', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000a48]:UKADDH s5, a0, a3
	-[0x80000a4c]:sd s5, 192(s9)
Current Store : [0x80000a50] : sd a0, 200(s9) -- Store: [0x800033e8]:0xFBFF000400800010




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x28', 'rs2_h3_val == 16', 'rs2_h2_val == 61439', 'rs2_h1_val == 512', 'rs2_h0_val == 57343', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80000a7c]:UKADDH t3, a2, t4
	-[0x80000a80]:sd t3, 208(s9)
Current Store : [0x80000a84] : sd a2, 216(s9) -- Store: [0x800033f8]:0x00067FFF00000200




Last Coverpoint : ['rs1 : x18', 'rs2_h3_val == 8', 'rs2_h0_val == 64', 'rs1_h2_val == 65527', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000ab8]:UKADDH a0, s2, fp
	-[0x80000abc]:sd a0, 224(s9)
Current Store : [0x80000ac0] : sd s2, 232(s9) -- Store: [0x80003408]:0xFDFFFFF70005FEFF




Last Coverpoint : ['rs2 : x30', 'rs2_h3_val == 4', 'rs2_h2_val == 65531', 'rs2_h0_val == 61439', 'rs1_h2_val == 65407']
Last Code Sequence : 
	-[0x80000af4]:UKADDH s4, s3, t5
	-[0x80000af8]:sd s4, 240(s9)
Current Store : [0x80000afc] : sd s3, 248(s9) -- Store: [0x80003418]:0x0200FF7F00400020




Last Coverpoint : ['rd : x30', 'rs2_h3_val == 2', 'rs2_h1_val == 2', 'rs2_h0_val == 16384', 'rs1_h3_val == 61439', 'rs1_h2_val == 65471']
Last Code Sequence : 
	-[0x80000b34]:UKADDH t5, ra, t3
	-[0x80000b38]:sd t5, 0(sp)
Current Store : [0x80000b3c] : sd ra, 8(sp) -- Store: [0x80003428]:0xEFFFFFBF000A0012




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == 63487', 'rs2_h0_val == 2', 'rs1_h3_val == 65534']
Last Code Sequence : 
	-[0x80000b70]:UKADDH t6, t5, t4
	-[0x80000b74]:sd t6, 16(sp)
Current Store : [0x80000b78] : sd t5, 24(sp) -- Store: [0x80003438]:0xFFFE000DFFFEFFDF




Last Coverpoint : ['rs2_h3_val == 65535', 'rs1_h2_val == 1024', 'rs1_h1_val == 49151', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000bac]:UKADDH t6, t5, t4
	-[0x80000bb0]:sd t6, 32(sp)
Current Store : [0x80000bb4] : sd t5, 40(sp) -- Store: [0x80003448]:0x20000400BFFF0001




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_h1_val == 4', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000be4]:UKADDH t6, t5, t4
	-[0x80000be8]:sd t6, 48(sp)
Current Store : [0x80000bec] : sd t5, 56(sp) -- Store: [0x80003458]:0x000C020000047FFF




Last Coverpoint : ['rs1_h2_val == 65023', 'rs1_h1_val == 2', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000c20]:UKADDH t6, t5, t4
	-[0x80000c24]:sd t6, 64(sp)
Current Store : [0x80000c28] : sd t5, 72(sp) -- Store: [0x80003468]:0x0007FDFF0002DFFF




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000c54]:UKADDH t6, t5, t4
	-[0x80000c58]:sd t6, 80(sp)
Current Store : [0x80000c5c] : sd t5, 88(sp) -- Store: [0x80003478]:0x0003FFFD00010000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h3_val == 4', 'rs1_h2_val == 4096', 'rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x80000c88]:UKADDH t6, t5, t4
	-[0x80000c8c]:sd t6, 96(sp)
Current Store : [0x80000c90] : sd t5, 104(sp) -- Store: [0x80003488]:0x00041000FFFF0013




Last Coverpoint : ['rs2_h2_val == 65519', 'rs2_h0_val == 16', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000cc4]:UKADDH t6, t5, t4
	-[0x80000cc8]:sd t6, 112(sp)
Current Store : [0x80000ccc] : sd t5, 120(sp) -- Store: [0x80003498]:0x000C00120005AAAA




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h1_val == 4096', 'rs1_h1_val == 8192', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000d04]:UKADDH t6, t5, t4
	-[0x80000d08]:sd t6, 128(sp)
Current Store : [0x80000d0c] : sd t5, 136(sp) -- Store: [0x800034a8]:0x1000000720005555




Last Coverpoint : ['rs1_h2_val == 65519', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000d40]:UKADDH t6, t5, t4
	-[0x80000d44]:sd t6, 144(sp)
Current Store : [0x80000d48] : sd t5, 152(sp) -- Store: [0x800034b8]:0x0200FFEF0002EFFF




Last Coverpoint : ['rs1_h2_val == 8192', 'rs1_h1_val == 256', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000d7c]:UKADDH t6, t5, t4
	-[0x80000d80]:sd t6, 160(sp)
Current Store : [0x80000d84] : sd t5, 168(sp) -- Store: [0x800034c8]:0x002020000100F7FF




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == 65535', 'rs2_h0_val == 63487', 'rs1_h3_val == 63487', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000db0]:UKADDH t6, t5, t4
	-[0x80000db4]:sd t6, 176(sp)
Current Store : [0x80000db8] : sd t5, 184(sp) -- Store: [0x800034d8]:0xF7FFDFFFBFFFFBFF




Last Coverpoint : ['rs1_h3_val == 57343', 'rs1_h1_val == 63487', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000dec]:UKADDH t6, t5, t4
	-[0x80000df0]:sd t6, 192(sp)
Current Store : [0x80000df4] : sd t5, 200(sp) -- Store: [0x800034e8]:0xDFFF1000F7FFFF7F




Last Coverpoint : ['rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000e28]:UKADDH t6, t5, t4
	-[0x80000e2c]:sd t6, 208(sp)
Current Store : [0x80000e30] : sd t5, 216(sp) -- Store: [0x800034f8]:0xFDFF000B0013FFEF




Last Coverpoint : ['rs2_h2_val == 65535', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000e60]:UKADDH t6, t5, t4
	-[0x80000e64]:sd t6, 224(sp)
Current Store : [0x80000e68] : sd t5, 232(sp) -- Store: [0x80003508]:0x000310000400FFF7




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000e9c]:UKADDH t6, t5, t4
	-[0x80000ea0]:sd t6, 240(sp)
Current Store : [0x80000ea4] : sd t5, 248(sp) -- Store: [0x80003518]:0x040008000800FFFB




Last Coverpoint : ['rs1_h1_val == 65279', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000ed0]:UKADDH t6, t5, t4
	-[0x80000ed4]:sd t6, 256(sp)
Current Store : [0x80000ed8] : sd t5, 264(sp) -- Store: [0x80003528]:0x00130200FEFFFFFD




Last Coverpoint : ['rs2_h1_val == 65534', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000f0c]:UKADDH t6, t5, t4
	-[0x80000f10]:sd t6, 272(sp)
Current Store : [0x80000f14] : sd t5, 280(sp) -- Store: [0x80003538]:0xEFFFFF7F0001FFFE




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f38]:UKADDH t6, t5, t4
	-[0x80000f3c]:sd t6, 288(sp)
Current Store : [0x80000f40] : sd t5, 296(sp) -- Store: [0x80003548]:0x2000FFEF000E4000




Last Coverpoint : ['rs1_h3_val == 2', 'rs1_h2_val == 63487', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f68]:UKADDH t6, t5, t4
	-[0x80000f6c]:sd t6, 304(sp)
Current Store : [0x80000f70] : sd t5, 312(sp) -- Store: [0x80003558]:0x0002F7FF00052000




Last Coverpoint : ['rs2_h1_val == 32767', 'rs1_h3_val == 65471', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000fa0]:UKADDH t6, t5, t4
	-[0x80000fa4]:sd t6, 320(sp)
Current Store : [0x80000fa8] : sd t5, 328(sp) -- Store: [0x80003568]:0xFFBFEFFF00111000




Last Coverpoint : ['rs2_h2_val == 57343', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000fd4]:UKADDH t6, t5, t4
	-[0x80000fd8]:sd t6, 336(sp)
Current Store : [0x80000fdc] : sd t5, 344(sp) -- Store: [0x80003578]:0x0003100004000100




Last Coverpoint : ['rs1_h1_val == 512', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001008]:UKADDH t6, t5, t4
	-[0x8000100c]:sd t6, 352(sp)
Current Store : [0x80001010] : sd t5, 360(sp) -- Store: [0x80003588]:0xFFF7DFFF02000004




Last Coverpoint : ['rs2_h2_val == 16384', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000103c]:UKADDH t6, t5, t4
	-[0x80001040]:sd t6, 368(sp)
Current Store : [0x80001044] : sd t5, 376(sp) -- Store: [0x80003598]:0xFFBFFF7F00400002




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80001078]:UKADDH t6, t5, t4
	-[0x8000107c]:sd t6, 384(sp)
Current Store : [0x80001080] : sd t5, 392(sp) -- Store: [0x800035a8]:0xBFFF000A00020800




Last Coverpoint : ['rs2_h2_val == 49151']
Last Code Sequence : 
	-[0x800010ac]:UKADDH t6, t5, t4
	-[0x800010b0]:sd t6, 400(sp)
Current Store : [0x800010b4] : sd t5, 408(sp) -- Store: [0x800035b8]:0x0800000CFFF7FFBF




Last Coverpoint : ['rs2_h0_val == 65519', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x800010e8]:UKADDH t6, t5, t4
	-[0x800010ec]:sd t6, 416(sp)
Current Store : [0x800010f0] : sd t5, 424(sp) -- Store: [0x800035c8]:0x00104000FFBF0002




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x80001124]:UKADDH t6, t5, t4
	-[0x80001128]:sd t6, 432(sp)
Current Store : [0x8000112c] : sd t5, 440(sp) -- Store: [0x800035d8]:0xFFBF2000FFF7000F




Last Coverpoint : ['rs1_h2_val == 1', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001158]:UKADDH t6, t5, t4
	-[0x8000115c]:sd t6, 448(sp)
Current Store : [0x80001160] : sd t5, 456(sp) -- Store: [0x800035e8]:0x001000010008000E




Last Coverpoint : ['rs2_h2_val == 65023', 'rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x80001194]:UKADDH t6, t5, t4
	-[0x80001198]:sd t6, 464(sp)
Current Store : [0x8000119c] : sd t5, 472(sp) -- Store: [0x800035f8]:0xEFFFFF7F00030400




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h0_val == 256', 'rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x800011cc]:UKADDH t6, t5, t4
	-[0x800011d0]:sd t6, 480(sp)
Current Store : [0x800011d4] : sd t5, 488(sp) -- Store: [0x80003608]:0xEFFF080080008000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80001204]:UKADDH t6, t5, t4
	-[0x80001208]:sd t6, 496(sp)
Current Store : [0x8000120c] : sd t5, 504(sp) -- Store: [0x80003618]:0x0010000B00102000




Last Coverpoint : ['rs1_h3_val == 43690']
Last Code Sequence : 
	-[0x80001240]:UKADDH t6, t5, t4
	-[0x80001244]:sd t6, 512(sp)
Current Store : [0x80001248] : sd t5, 520(sp) -- Store: [0x80003628]:0xAAAA040002000100




Last Coverpoint : ['rs2_h1_val == 65519', 'rs1_h3_val == 32767', 'rs1_h1_val == 65407']
Last Code Sequence : 
	-[0x80001278]:UKADDH t6, t5, t4
	-[0x8000127c]:sd t6, 528(sp)
Current Store : [0x80001280] : sd t5, 536(sp) -- Store: [0x80003638]:0x7FFFFFFDFF7F0200




Last Coverpoint : ['rs1_h3_val == 65503', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800012a8]:UKADDH t6, t5, t4
	-[0x800012ac]:sd t6, 544(sp)
Current Store : [0x800012b0] : sd t5, 552(sp) -- Store: [0x80003648]:0xFFDF010001000007




Last Coverpoint : ['rs1_h3_val == 65531']
Last Code Sequence : 
	-[0x800012e4]:UKADDH t6, t5, t4
	-[0x800012e8]:sd t6, 560(sp)
Current Store : [0x800012ec] : sd t5, 568(sp) -- Store: [0x80003658]:0xFFFB200055550005




Last Coverpoint : ['rs1_h3_val == 65533', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x80001320]:UKADDH t6, t5, t4
	-[0x80001324]:sd t6, 576(sp)
Current Store : [0x80001328] : sd t5, 584(sp) -- Store: [0x80003668]:0xFFFD0008FFEF7FFF




Last Coverpoint : ['rs1_h3_val == 128']
Last Code Sequence : 
	-[0x8000135c]:UKADDH t6, t5, t4
	-[0x80001360]:sd t6, 592(sp)
Current Store : [0x80001364] : sd t5, 600(sp) -- Store: [0x80003678]:0x0080000500800200




Last Coverpoint : ['rs2_h2_val == 65279']
Last Code Sequence : 
	-[0x80001398]:UKADDH t6, t5, t4
	-[0x8000139c]:sd t6, 608(sp)
Current Store : [0x800013a0] : sd t5, 616(sp) -- Store: [0x80003688]:0x000EFDFF0001AAAA




Last Coverpoint : ['rs2_h2_val == 65407']
Last Code Sequence : 
	-[0x800013cc]:UKADDH t6, t5, t4
	-[0x800013d0]:sd t6, 624(sp)
Current Store : [0x800013d4] : sd t5, 632(sp) -- Store: [0x80003698]:0xFFFB000A0200000E




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x80001408]:UKADDH t6, t5, t4
	-[0x8000140c]:sd t6, 640(sp)
Current Store : [0x80001410] : sd t5, 648(sp) -- Store: [0x800036a8]:0x00080800BFFF0080




Last Coverpoint : ['rs2_h2_val == 16', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80001448]:UKADDH t6, t5, t4
	-[0x8000144c]:sd t6, 656(sp)
Current Store : [0x80001450] : sd t5, 664(sp) -- Store: [0x800036b8]:0x0001FFFD000E4000




Last Coverpoint : ['rs2_h2_val == 65527']
Last Code Sequence : 
	-[0x80001484]:UKADDH t6, t5, t4
	-[0x80001488]:sd t6, 672(sp)
Current Store : [0x8000148c] : sd t5, 680(sp) -- Store: [0x800036c8]:0x5555FFF7FEFF0800




Last Coverpoint : ['rs1_h3_val == 65535']
Last Code Sequence : 
	-[0x800014b0]:UKADDH t6, t5, t4
	-[0x800014b4]:sd t6, 688(sp)
Current Store : [0x800014b8] : sd t5, 696(sp) -- Store: [0x800036d8]:0xFFFF000E0008000C




Last Coverpoint : ['rs1_h2_val == 43690']
Last Code Sequence : 
	-[0x800014ec]:UKADDH t6, t5, t4
	-[0x800014f0]:sd t6, 704(sp)
Current Store : [0x800014f4] : sd t5, 712(sp) -- Store: [0x800036e8]:0xFFFDAAAA55550011




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001520]:UKADDH t6, t5, t4
	-[0x80001524]:sd t6, 720(sp)
Current Store : [0x80001528] : sd t5, 728(sp) -- Store: [0x800036f8]:0x0800AAAAFFFEFBFF




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80001558]:UKADDH t6, t5, t4
	-[0x8000155c]:sd t6, 736(sp)
Current Store : [0x80001560] : sd t5, 744(sp) -- Store: [0x80003708]:0xFFFB001204004000




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h2_val == 64511']
Last Code Sequence : 
	-[0x8000158c]:UKADDH t6, t5, t4
	-[0x80001590]:sd t6, 752(sp)
Current Store : [0x80001594] : sd t5, 760(sp) -- Store: [0x80003718]:0x0001FBFF0008000D




Last Coverpoint : ['rs1_h2_val == 65531', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x800015bc]:UKADDH t6, t5, t4
	-[0x800015c0]:sd t6, 768(sp)
Current Store : [0x800015c4] : sd t5, 776(sp) -- Store: [0x80003728]:0xF7FFFFFBFFFD8000




Last Coverpoint : ['rs2_h0_val == 43690', 'rs1_h2_val == 32768']
Last Code Sequence : 
	-[0x800015f8]:UKADDH t6, t5, t4
	-[0x800015fc]:sd t6, 784(sp)
Current Store : [0x80001600] : sd t5, 792(sp) -- Store: [0x80003738]:0x00208000FFFE000E




Last Coverpoint : ['rs2_h1_val == 57343', 'rs1_h2_val == 65535']
Last Code Sequence : 
	-[0x80001634]:UKADDH t6, t5, t4
	-[0x80001638]:sd t6, 800(sp)
Current Store : [0x8000163c] : sd t5, 808(sp) -- Store: [0x80003748]:0xFFBFFFFFAAAA0100




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001670]:UKADDH t6, t5, t4
	-[0x80001674]:sd t6, 816(sp)
Current Store : [0x80001678] : sd t5, 824(sp) -- Store: [0x80003758]:0xEFFF0080000BBFFF




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800016ac]:UKADDH t6, t5, t4
	-[0x800016b0]:sd t6, 832(sp)
Current Store : [0x800016b4] : sd t5, 840(sp) -- Store: [0x80003768]:0x0020004055555555




Last Coverpoint : ['rs1_h2_val == 32', 'rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x800016e4]:UKADDH t6, t5, t4
	-[0x800016e8]:sd t6, 848(sp)
Current Store : [0x800016ec] : sd t5, 856(sp) -- Store: [0x80003778]:0x00200020FFDF4000




Last Coverpoint : ['rs2_h1_val == 65279']
Last Code Sequence : 
	-[0x80001720]:UKADDH t6, t5, t4
	-[0x80001724]:sd t6, 864(sp)
Current Store : [0x80001728] : sd t5, 872(sp) -- Store: [0x80003788]:0x0080000E0001EFFF




Last Coverpoint : ['rs1_h2_val == 16', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x8000175c]:UKADDH t6, t5, t4
	-[0x80001760]:sd t6, 880(sp)
Current Store : [0x80001764] : sd t5, 888(sp) -- Store: [0x80003798]:0x00040010FBFF0001




Last Coverpoint : ['opcode : ukaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 65527', 'rs2_h1_val == 4', 'rs2_h0_val == 32767', 'rs1_h3_val == 64', 'rs1_h2_val == 0', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001794]:UKADDH t6, t5, t4
	-[0x80001798]:sd t6, 896(sp)
Current Store : [0x8000179c] : sd t5, 904(sp) -- Store: [0x800037a8]:0x00400000000A0040




Last Coverpoint : ['rs2_h1_val == 65533']
Last Code Sequence : 
	-[0x800017cc]:UKADDH t6, t5, t4
	-[0x800017d0]:sd t6, 912(sp)
Current Store : [0x800017d4] : sd t5, 920(sp) -- Store: [0x800037b8]:0x000E0002FEFF0080




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x800017fc]:UKADDH t6, t5, t4
	-[0x80001800]:sd t6, 928(sp)
Current Store : [0x80001804] : sd t5, 936(sp) -- Store: [0x800037c8]:0xF7FF000B00060002




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x80001834]:UKADDH t6, t5, t4
	-[0x80001838]:sd t6, 944(sp)
Current Store : [0x8000183c] : sd t5, 952(sp) -- Store: [0x800037d8]:0x000F0200FFFB0010




Last Coverpoint : ['rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x8000186c]:UKADDH t6, t5, t4
	-[0x80001870]:sd t6, 960(sp)
Current Store : [0x80001874] : sd t5, 968(sp) -- Store: [0x800037e8]:0xDFFF000FFDFF0003




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800018a8]:UKADDH t6, t5, t4
	-[0x800018ac]:sd t6, 976(sp)
Current Store : [0x800018b0] : sd t5, 984(sp) -- Store: [0x800037f8]:0x00100080FFFD0012




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800018e0]:UKADDH t6, t5, t4
	-[0x800018e4]:sd t6, 992(sp)
Current Store : [0x800018e8] : sd t5, 1000(sp) -- Store: [0x80003808]:0x0001FFEFBFFF0000




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x8000190c]:UKADDH t6, t5, t4
	-[0x80001910]:sd t6, 1008(sp)
Current Store : [0x80001914] : sd t5, 1016(sp) -- Store: [0x80003818]:0x0400FFFE40000009




Last Coverpoint : ['rs2_h0_val == 49151']
Last Code Sequence : 
	-[0x80001948]:UKADDH t6, t5, t4
	-[0x8000194c]:sd t6, 1024(sp)
Current Store : [0x80001950] : sd t5, 1032(sp) -- Store: [0x80003828]:0xDFFF0080FFFB0012




Last Coverpoint : ['rs2_h1_val == 65407']
Last Code Sequence : 
	-[0x80001980]:UKADDH t6, t5, t4
	-[0x80001984]:sd t6, 1040(sp)
Current Store : [0x80001988] : sd t5, 1048(sp) -- Store: [0x80003838]:0x00400009FEFF4000




Last Coverpoint : ['rs2_h0_val == 65023']
Last Code Sequence : 
	-[0x800019ac]:UKADDH t6, t5, t4
	-[0x800019b0]:sd t6, 1056(sp)
Current Store : [0x800019b4] : sd t5, 1064(sp) -- Store: [0x80003848]:0x0009000408000009




Last Coverpoint : ['rs2_h0_val == 65279']
Last Code Sequence : 
	-[0x800019e4]:UKADDH t6, t5, t4
	-[0x800019e8]:sd t6, 1072(sp)
Current Store : [0x800019ec] : sd t5, 1080(sp) -- Store: [0x80003858]:0x000304000100FEFF




Last Coverpoint : ['rs2_h0_val == 65407']
Last Code Sequence : 
	-[0x80001a18]:UKADDH t6, t5, t4
	-[0x80001a1c]:sd t6, 1088(sp)
Current Store : [0x80001a20] : sd t5, 1096(sp) -- Store: [0x80003868]:0x000FEFFFFFFD0040




Last Coverpoint : ['rs2_h3_val == 63487', 'rs1_h2_val == 65279']
Last Code Sequence : 
	-[0x80001a50]:UKADDH t6, t5, t4
	-[0x80001a54]:sd t6, 1104(sp)
Current Store : [0x80001a58] : sd t5, 1112(sp) -- Store: [0x80003878]:0x000AFEFFFFF70000





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

|s.no|            signature             |                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                       |                                 code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ukaddh<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h0_val == 0<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                               |[0x800003d0]:UKADDH a0, zero, zero<br> [0x800003d4]:sd a0, 0(sp)<br>   |
|   2|[0x80003220]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 65533<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 65533<br>                         |[0x80000404]:UKADDH s11, s11, s11<br> [0x80000408]:sd s11, 16(sp)<br>  |
|   3|[0x80003230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x25<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 65531<br> - rs2_h2_val == 512<br> - rs2_h1_val == 128<br> - rs2_h0_val == 2048<br> - rs1_h2_val == 512<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 128<br> |[0x80000440]:UKADDH s1, s8, s9<br> [0x80000444]:sd s1, 32(sp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x24<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h2_val == 4<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 64511<br> - rs1_h3_val == 65519<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                  |[0x80000478]:UKADDH s10, s10, s8<br> [0x8000047c]:sd s10, 48(sp)<br>   |
|   5|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x29<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs2_h3_val == 65533<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 32<br> - rs1_h3_val == 65527<br> - rs1_h1_val == 128<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                 |[0x800004ac]:UKADDH tp, t4, tp<br> [0x800004b0]:sd tp, 64(sp)<br>      |
|   6|[0x80003260]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x23<br> - rd : x6<br> - rs2_h3_val == 43690<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 1<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                  |[0x800004e0]:UKADDH t1, s9, s7<br> [0x800004e4]:sd t1, 80(sp)<br>      |
|   7|[0x80003270]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x3<br> - rd : x12<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 65503<br> - rs2_h1_val == 65503<br> - rs1_h2_val == 49151<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                                         |[0x8000051c]:UKADDH a2, a3, gp<br> [0x80000520]:sd a2, 96(sp)<br>      |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x7<br> - rd : x0<br> - rs2_h3_val == 32767<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 65534<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000558]:UKADDH zero, t6, t2<br> [0x8000055c]:sd zero, 112(sp)<br> |
|   9|[0x80003290]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x7<br> - rs2 : x31<br> - rd : x14<br> - rs2_h3_val == 49151<br> - rs2_h1_val == 65531<br> - rs1_h2_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                             |[0x8000058c]:UKADDH a4, t2, t6<br> [0x80000590]:sd a4, 128(sp)<br>     |
|  10|[0x800032a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x26<br> - rd : x31<br> - rs2_h3_val == 57343<br> - rs2_h2_val == 65471<br> - rs2_h0_val == 65535<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                          |[0x800005c4]:UKADDH t6, a4, s10<br> [0x800005c8]:sd t6, 144(sp)<br>    |
|  11|[0x800032b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x28<br> - rs2 : x10<br> - rd : x25<br> - rs2_h3_val == 61439<br> - rs1_h3_val == 65407<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                             |[0x800005f8]:UKADDH s9, t3, a0<br> [0x800005fc]:sd s9, 160(sp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rs2 : x17<br> - rd : x23<br> - rs2_h3_val == 64511<br> - rs2_h2_val == 32<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 65471<br> - rs1_h3_val == 65279<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                   |[0x8000062c]:UKADDH s7, ra, a7<br> [0x80000630]:sd s7, 176(sp)<br>     |
|  13|[0x800032d0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x5<br> - rs2 : x20<br> - rd : x11<br> - rs2_h3_val == 65023<br> - rs2_h2_val == 21845<br> - rs1_h2_val == 65503<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                          |[0x80000668]:UKADDH a1, t0, s4<br> [0x8000066c]:sd a1, 192(sp)<br>     |
|  14|[0x800032e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rs2 : x11<br> - rd : x22<br> - rs2_h3_val == 65279<br> - rs2_h0_val == 65503<br> - rs1_h3_val == 16<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000069c]:UKADDH s6, a5, a1<br> [0x800006a0]:sd s6, 208(sp)<br>     |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rs2 : x19<br> - rd : x29<br> - rs2_h3_val == 65407<br> - rs1_h3_val == 32768<br> - rs1_h1_val == 32<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                                     |[0x800006d8]:UKADDH t4, t5, s3<br> [0x800006dc]:sd t4, 224(sp)<br>     |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x1<br> - rs2_h3_val == 65471<br> - rs2_h2_val == 64511<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 8192<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                             |[0x80000708]:UKADDH ra, a7, a5<br> [0x8000070c]:sd ra, 240(sp)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x21<br> - rs2 : x16<br> - rd : x8<br> - rs2_h3_val == 65503<br> - rs2_h0_val == 65527<br> - rs1_h2_val == 61439<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000744]:UKADDH fp, s5, a6<br> [0x80000748]:sd fp, 256(sp)<br>     |
|  18|[0x80003320]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x5<br> - rd : x18<br> - rs2_h3_val == 65519<br> - rs2_h1_val == 256<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000788]:UKADDH s2, tp, t0<br> [0x8000078c]:sd s2, 0(s9)<br>       |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x21<br> - rd : x24<br> - rs2_h3_val == 65527<br> - rs2_h2_val == 63487<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                   |[0x800007c0]:UKADDH s8, s3, s5<br> [0x800007c4]:sd s8, 16(s9)<br>      |
|  20|[0x80003340]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x6<br> - rs2 : x14<br> - rd : x2<br> - rs2_h3_val == 65534<br> - rs2_h2_val == 43690<br> - rs2_h1_val == 2048<br> - rs1_h3_val == 512<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                             |[0x800007f4]:UKADDH sp, t1, a4<br> [0x800007f8]:sd sp, 32(s9)<br>      |
|  21|[0x80003350]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x28<br> - rd : x20<br> - rs2_h3_val == 32768<br> - rs2_h2_val == 64<br> - rs2_h0_val == 65531<br> - rs1_h3_val == 49151<br> - rs1_h2_val == 16384<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                 |[0x80000834]:UKADDH s4, a6, t3<br> [0x80000838]:sd s4, 48(s9)<br>      |
|  22|[0x80003360]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x9<br> - rs2 : x1<br> - rd : x13<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 4096<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 2<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                  |[0x80000870]:UKADDH a3, s1, ra<br> [0x80000874]:sd a3, 64(s9)<br>      |
|  23|[0x80003370]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x22<br> - rd : x16<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 64<br> - rs2_h0_val == 128<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                         |[0x800008b4]:UKADDH a6, sp, s6<br> [0x800008b8]:sd a6, 80(s9)<br>      |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x2<br> - rd : x19<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 512<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                         |[0x800008f0]:UKADDH s3, gp, sp<br> [0x800008f4]:sd s3, 96(s9)<br>      |
|  25|[0x80003390]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rd : x5<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 32768<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 64<br> - rs1_h2_val == 8<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                          |[0x80000928]:UKADDH t0, fp, s1<br> [0x8000092c]:sd t0, 112(s9)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x18<br> - rd : x3<br> - rs2_h3_val == 512<br> - rs2_h2_val == 65534<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32768<br> - rs1_h3_val == 65023<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                        |[0x80000960]:UKADDH gp, s4, s2<br> [0x80000964]:sd gp, 128(s9)<br>     |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x11<br> - rs2 : x8<br> - rd : x7<br> - rs2_h3_val == 256<br> - rs2_h1_val == 65471<br> - rs1_h3_val == 32<br> - rs1_h2_val == 21845<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                |[0x8000099c]:UKADDH t2, a1, fp<br> [0x800009a0]:sd t2, 144(s9)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x6<br> - rd : x15<br> - rs2_h3_val == 128<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x800009d4]:UKADDH a5, s6, t1<br> [0x800009d8]:sd a5, 160(s9)<br>     |
|  29|[0x800033d0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x12<br> - rd : x17<br> - rs2_h3_val == 64<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a10]:UKADDH a7, s7, a2<br> [0x80000a14]:sd a7, 176(s9)<br>     |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x13<br> - rd : x21<br> - rs2_h3_val == 32<br> - rs2_h1_val == 64511<br> - rs1_h3_val == 64511<br> - rs1_h2_val == 4<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                  |[0x80000a48]:UKADDH s5, a0, a3<br> [0x80000a4c]:sd s5, 192(s9)<br>     |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x29<br> - rd : x28<br> - rs2_h3_val == 16<br> - rs2_h2_val == 61439<br> - rs2_h1_val == 512<br> - rs2_h0_val == 57343<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                             |[0x80000a7c]:UKADDH t3, a2, t4<br> [0x80000a80]:sd t3, 208(s9)<br>     |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rs2_h3_val == 8<br> - rs2_h0_val == 64<br> - rs1_h2_val == 65527<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ab8]:UKADDH a0, s2, fp<br> [0x80000abc]:sd a0, 224(s9)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFFFFFFFFFF|- rs2 : x30<br> - rs2_h3_val == 4<br> - rs2_h2_val == 65531<br> - rs2_h0_val == 61439<br> - rs1_h2_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000af4]:UKADDH s4, s3, t5<br> [0x80000af8]:sd s4, 240(s9)<br>     |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rd : x30<br> - rs2_h3_val == 2<br> - rs2_h1_val == 2<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 61439<br> - rs1_h2_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000b34]:UKADDH t5, ra, t3<br> [0x80000b38]:sd t5, 0(sp)<br>       |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 1<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 2<br> - rs1_h3_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000b70]:UKADDH t6, t5, t4<br> [0x80000b74]:sd t6, 16(sp)<br>      |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 65535<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bac]:UKADDH t6, t5, t4<br> [0x80000bb0]:sd t6, 32(sp)<br>      |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 8<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000be4]:UKADDH t6, t5, t4<br> [0x80000be8]:sd t6, 48(sp)<br>      |
|  38|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 65023<br> - rs1_h1_val == 2<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000c20]:UKADDH t6, t5, t4<br> [0x80000c24]:sd t6, 64(sp)<br>      |
|  39|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 2048<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000c54]:UKADDH t6, t5, t4<br> [0x80000c58]:sd t6, 80(sp)<br>      |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 4<br> - rs1_h3_val == 4<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000c88]:UKADDH t6, t5, t4<br> [0x80000c8c]:sd t6, 96(sp)<br>      |
|  41|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65519<br> - rs2_h0_val == 16<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cc4]:UKADDH t6, t5, t4<br> [0x80000cc8]:sd t6, 112(sp)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 128<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d04]:UKADDH t6, t5, t4<br> [0x80000d08]:sd t6, 128(sp)<br>     |
|  43|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 65519<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d40]:UKADDH t6, t5, t4<br> [0x80000d44]:sd t6, 144(sp)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 8192<br> - rs1_h1_val == 256<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000d7c]:UKADDH t6, t5, t4<br> [0x80000d80]:sd t6, 160(sp)<br>     |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 2<br> - rs2_h1_val == 65535<br> - rs2_h0_val == 63487<br> - rs1_h3_val == 63487<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                           |[0x80000db0]:UKADDH t6, t5, t4<br> [0x80000db4]:sd t6, 176(sp)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 57343<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000dec]:UKADDH t6, t5, t4<br> [0x80000df0]:sd t6, 192(sp)<br>     |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e28]:UKADDH t6, t5, t4<br> [0x80000e2c]:sd t6, 208(sp)<br>     |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65535<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e60]:UKADDH t6, t5, t4<br> [0x80000e64]:sd t6, 224(sp)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 1024<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000e9c]:UKADDH t6, t5, t4<br> [0x80000ea0]:sd t6, 240(sp)<br>     |
|  50|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 65279<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ed0]:UKADDH t6, t5, t4<br> [0x80000ed4]:sd t6, 256(sp)<br>     |
|  51|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 65534<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f0c]:UKADDH t6, t5, t4<br> [0x80000f10]:sd t6, 272(sp)<br>     |
|  52|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 32<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000f38]:UKADDH t6, t5, t4<br> [0x80000f3c]:sd t6, 288(sp)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 2<br> - rs1_h2_val == 63487<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f68]:UKADDH t6, t5, t4<br> [0x80000f6c]:sd t6, 304(sp)<br>     |
|  54|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 32767<br> - rs1_h3_val == 65471<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000fa0]:UKADDH t6, t5, t4<br> [0x80000fa4]:sd t6, 320(sp)<br>     |
|  55|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 57343<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000fd4]:UKADDH t6, t5, t4<br> [0x80000fd8]:sd t6, 336(sp)<br>     |
|  56|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 512<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001008]:UKADDH t6, t5, t4<br> [0x8000100c]:sd t6, 352(sp)<br>     |
|  57|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 16384<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000103c]:UKADDH t6, t5, t4<br> [0x80001040]:sd t6, 368(sp)<br>     |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 32767<br> - rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001078]:UKADDH t6, t5, t4<br> [0x8000107c]:sd t6, 384(sp)<br>     |
|  59|[0x800035b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800010ac]:UKADDH t6, t5, t4<br> [0x800010b0]:sd t6, 400(sp)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65519<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800010e8]:UKADDH t6, t5, t4<br> [0x800010ec]:sd t6, 416(sp)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 1<br> - rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001124]:UKADDH t6, t5, t4<br> [0x80001128]:sd t6, 432(sp)<br>     |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 1<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001158]:UKADDH t6, t5, t4<br> [0x8000115c]:sd t6, 448(sp)<br>     |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65023<br> - rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001194]:UKADDH t6, t5, t4<br> [0x80001198]:sd t6, 464(sp)<br>     |
|  64|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 256<br> - rs2_h0_val == 256<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800011cc]:UKADDH t6, t5, t4<br> [0x800011d0]:sd t6, 480(sp)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001204]:UKADDH t6, t5, t4<br> [0x80001208]:sd t6, 496(sp)<br>     |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001240]:UKADDH t6, t5, t4<br> [0x80001244]:sd t6, 512(sp)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 65519<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001278]:UKADDH t6, t5, t4<br> [0x8000127c]:sd t6, 528(sp)<br>     |
|  68|[0x80003640]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 65503<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800012a8]:UKADDH t6, t5, t4<br> [0x800012ac]:sd t6, 544(sp)<br>     |
|  69|[0x80003650]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012e4]:UKADDH t6, t5, t4<br> [0x800012e8]:sd t6, 560(sp)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 65533<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001320]:UKADDH t6, t5, t4<br> [0x80001324]:sd t6, 576(sp)<br>     |
|  71|[0x80003670]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000135c]:UKADDH t6, t5, t4<br> [0x80001360]:sd t6, 592(sp)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001398]:UKADDH t6, t5, t4<br> [0x8000139c]:sd t6, 608(sp)<br>     |
|  73|[0x80003690]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013cc]:UKADDH t6, t5, t4<br> [0x800013d0]:sd t6, 624(sp)<br>     |
|  74|[0x800036a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001408]:UKADDH t6, t5, t4<br> [0x8000140c]:sd t6, 640(sp)<br>     |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 16<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001448]:UKADDH t6, t5, t4<br> [0x8000144c]:sd t6, 656(sp)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001484]:UKADDH t6, t5, t4<br> [0x80001488]:sd t6, 672(sp)<br>     |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014b0]:UKADDH t6, t5, t4<br> [0x800014b4]:sd t6, 688(sp)<br>     |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014ec]:UKADDH t6, t5, t4<br> [0x800014f0]:sd t6, 704(sp)<br>     |
|  79|[0x800036f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 8192<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001520]:UKADDH t6, t5, t4<br> [0x80001524]:sd t6, 720(sp)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001558]:UKADDH t6, t5, t4<br> [0x8000155c]:sd t6, 736(sp)<br>     |
|  81|[0x80003710]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 21845<br> - rs1_h2_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000158c]:UKADDH t6, t5, t4<br> [0x80001590]:sd t6, 752(sp)<br>     |
|  82|[0x80003720]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 65531<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800015bc]:UKADDH t6, t5, t4<br> [0x800015c0]:sd t6, 768(sp)<br>     |
|  83|[0x80003730]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 43690<br> - rs1_h2_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800015f8]:UKADDH t6, t5, t4<br> [0x800015fc]:sd t6, 784(sp)<br>     |
|  84|[0x80003740]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 57343<br> - rs1_h2_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001634]:UKADDH t6, t5, t4<br> [0x80001638]:sd t6, 800(sp)<br>     |
|  85|[0x80003750]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001670]:UKADDH t6, t5, t4<br> [0x80001674]:sd t6, 816(sp)<br>     |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800016ac]:UKADDH t6, t5, t4<br> [0x800016b0]:sd t6, 832(sp)<br>     |
|  87|[0x80003770]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 32<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800016e4]:UKADDH t6, t5, t4<br> [0x800016e8]:sd t6, 848(sp)<br>     |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001720]:UKADDH t6, t5, t4<br> [0x80001724]:sd t6, 864(sp)<br>     |
|  89|[0x80003790]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 16<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000175c]:UKADDH t6, t5, t4<br> [0x80001760]:sd t6, 880(sp)<br>     |
|  90|[0x800037b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017cc]:UKADDH t6, t5, t4<br> [0x800017d0]:sd t6, 912(sp)<br>     |
|  91|[0x800037c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017fc]:UKADDH t6, t5, t4<br> [0x80001800]:sd t6, 928(sp)<br>     |
|  92|[0x800037d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 8192<br> - rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001834]:UKADDH t6, t5, t4<br> [0x80001838]:sd t6, 944(sp)<br>     |
|  93|[0x800037e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000186c]:UKADDH t6, t5, t4<br> [0x80001870]:sd t6, 960(sp)<br>     |
|  94|[0x800037f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018a8]:UKADDH t6, t5, t4<br> [0x800018ac]:sd t6, 976(sp)<br>     |
|  95|[0x80003800]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018e0]:UKADDH t6, t5, t4<br> [0x800018e4]:sd t6, 992(sp)<br>     |
|  96|[0x80003810]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000190c]:UKADDH t6, t5, t4<br> [0x80001910]:sd t6, 1008(sp)<br>    |
|  97|[0x80003820]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001948]:UKADDH t6, t5, t4<br> [0x8000194c]:sd t6, 1024(sp)<br>    |
|  98|[0x80003830]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001980]:UKADDH t6, t5, t4<br> [0x80001984]:sd t6, 1040(sp)<br>    |
|  99|[0x80003840]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800019ac]:UKADDH t6, t5, t4<br> [0x800019b0]:sd t6, 1056(sp)<br>    |
| 100|[0x80003850]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800019e4]:UKADDH t6, t5, t4<br> [0x800019e8]:sd t6, 1072(sp)<br>    |
| 101|[0x80003860]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a18]:UKADDH t6, t5, t4<br> [0x80001a1c]:sd t6, 1088(sp)<br>    |
| 102|[0x80003870]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 63487<br> - rs1_h2_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001a50]:UKADDH t6, t5, t4<br> [0x80001a54]:sd t6, 1104(sp)<br>    |
