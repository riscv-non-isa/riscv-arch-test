
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a30')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | ukadd16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukadd16-01.S    |
| Total Number of coverpoints| 404     |
| Total Coverpoints Hit     | 398      |
| Total Signature Updates   | 204      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 102     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000162c]:UKADD16 t6, t5, t4
      [0x80001630]:sd t6, 1040(t0)
 -- Signature Address: 0x80003740 Data: 0xFFFF0002FFFFFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 65534
      - rs2_h2_val == 0
      - rs2_h1_val == 32767
      - rs2_h0_val == 65503
      - rs1_h2_val == 2
      - rs1_h1_val == 65471




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000186c]:UKADD16 t6, t5, t4
      [0x80001870]:sd t6, 1200(t0)
 -- Signature Address: 0x800037e0 Data: 0x0800FFFFF8FFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 2048
      - rs2_h2_val == 49151
      - rs2_h1_val == 63487
      - rs1_h3_val == 0
      - rs1_h2_val == 65531
      - rs1_h1_val == 256
      - rs1_h0_val == 65519




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a24]:UKADD16 t6, t5, t4
      [0x80001a28]:sd t6, 1328(t0)
 -- Signature Address: 0x80003860 Data: 0xFFFFFFFFFFFFFFC8
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 21845
      - rs2_h2_val == 32767
      - rs2_h1_val == 512
      - rs2_h0_val == 65471
      - rs1_h3_val == 57343
      - rs1_h2_val == 65533
      - rs1_h1_val == 65519






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukadd16', 'rs1 : x17', 'rs2 : x17', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 65534', 'rs2_h1_val == 63487', 'rs1_h3_val == 65534', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x800003d0]:UKADD16 zero, a7, a7
	-[0x800003d4]:sd zero, 0(a5)
Current Store : [0x800003d8] : sd a7, 8(a5) -- Store: [0x80003218]:0xFFFE000AF7FF000C




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x31', 'rs1 == rs2 == rd', 'rs2_h3_val == 65527', 'rs2_h2_val == 256', 'rs2_h1_val == 65471', 'rs1_h3_val == 65527', 'rs1_h2_val == 256', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x80000408]:UKADD16 t6, t6, t6
	-[0x8000040c]:sd t6, 16(a5)
Current Store : [0x80000410] : sd t6, 24(a5) -- Store: [0x80003228]:0xFFFF0200FFFF000C




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 0', 'rs2_h2_val == 64511', 'rs2_h1_val == 128', 'rs2_h0_val == 4096', 'rs1_h2_val == 64511', 'rs1_h1_val == 8192', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000440]:UKADD16 a7, a2, s10
	-[0x80000444]:sd a7, 32(a5)
Current Store : [0x80000448] : sd a2, 40(a5) -- Store: [0x80003238]:0x000DFBFF2000FF7F




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x5', 'rs1 == rd != rs2', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs2_h3_val == 16384', 'rs2_h2_val == 32768', 'rs2_h1_val == 65531', 'rs2_h0_val == 65023', 'rs1_h3_val == 8', 'rs1_h2_val == 0', 'rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x8000047c]:UKADD16 t0, t0, s5
	-[0x80000480]:sd t0, 48(a5)
Current Store : [0x80000484] : sd t0, 56(a5) -- Store: [0x80003248]:0x40088000FFFFFE06




Last Coverpoint : ['rs1 : x22', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h2_val == 4', 'rs2_h0_val == 65531', 'rs1_h3_val == 57343', 'rs1_h2_val == 128', 'rs1_h1_val == 16', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800004b8]:UKADD16 t3, s6, t3
	-[0x800004bc]:sd t3, 64(a5)
Current Store : [0x800004c0] : sd s6, 72(a5) -- Store: [0x80003258]:0xDFFF00800010FFFB




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x8', 'rs2_h3_val == 43690', 'rs2_h2_val == 8192', 'rs2_h1_val == 8', 'rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x800004f4]:UKADD16 fp, s7, a2
	-[0x800004f8]:sd fp, 80(a5)
Current Store : [0x800004fc] : sd s7, 88(a5) -- Store: [0x80003268]:0xFFF7000500060013




Last Coverpoint : ['rs1 : x0', 'rs2 : x1', 'rd : x18', 'rs1_h0_val == 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 32767', 'rs2_h1_val == 512', 'rs2_h0_val == 65471', 'rs1_h3_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000530]:UKADD16 s2, zero, ra
	-[0x80000534]:sd s2, 96(a5)
Current Store : [0x80000538] : sd zero, 104(a5) -- Store: [0x80003278]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x9', 'rs2_h3_val == 32767', 'rs2_h0_val == 57343', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000568]:UKADD16 s1, s2, t0
	-[0x8000056c]:sd s1, 112(a5)
Current Store : [0x80000570] : sd s2, 120(a5) -- Store: [0x80003288]:0xFFFE400000120011




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x22', 'rs2_h3_val == 49151', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x800005a4]:UKADD16 s6, a1, s2
	-[0x800005a8]:sd s6, 128(a5)
Current Store : [0x800005ac] : sd a1, 136(a5) -- Store: [0x80003298]:0x0800000B000F000B




Last Coverpoint : ['rs1 : x21', 'rs2 : x9', 'rd : x19', 'rs2_h3_val == 57343', 'rs2_h2_val == 2048', 'rs2_h1_val == 65407', 'rs2_h0_val == 49151', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x800005e0]:UKADD16 s3, s5, s1
	-[0x800005e4]:sd s3, 144(a5)
Current Store : [0x800005e8] : sd s5, 152(a5) -- Store: [0x800032a8]:0x080000120003FFBF




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x2', 'rs2_h3_val == 61439', 'rs1_h3_val == 64', 'rs1_h2_val == 65527', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000061c]:UKADD16 sp, s4, t4
	-[0x80000620]:sd sp, 160(a5)
Current Store : [0x80000624] : sd s4, 168(a5) -- Store: [0x800032b8]:0x0040FFF700127FFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x13', 'rd : x16', 'rs2_h3_val == 63487', 'rs2_h1_val == 21845', 'rs1_h3_val == 65531', 'rs1_h2_val == 21845', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000660]:UKADD16 a6, s3, a3
	-[0x80000664]:sd a6, 176(a5)
Current Store : [0x80000668] : sd s3, 184(a5) -- Store: [0x800032c8]:0xFFFB55550005BFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x25', 'rd : x21', 'rs2_h3_val == 64511', 'rs2_h0_val == 32', 'rs1_h1_val == 32767', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000069c]:UKADD16 s5, gp, s9
	-[0x800006a0]:sd s5, 192(a5)
Current Store : [0x800006a4] : sd gp, 200(a5) -- Store: [0x800032d8]:0x001255557FFF0002




Last Coverpoint : ['rs1 : x29', 'rs2 : x3', 'rd : x7', 'rs2_h3_val == 65023', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800006d8]:UKADD16 t2, t4, gp
	-[0x800006dc]:sd t2, 208(a5)
Current Store : [0x800006e0] : sd t4, 216(a5) -- Store: [0x800032e8]:0x0011000C00057FFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x14', 'rs2_h3_val == 65279', 'rs2_h2_val == 64', 'rs1_h3_val == 2', 'rs1_h2_val == 65407', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x80000710]:UKADD16 a4, fp, s6
	-[0x80000714]:sd a4, 224(a5)
Current Store : [0x80000718] : sd fp, 232(a5) -- Store: [0x800032f8]:0x0002FF7FFBFF000B




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x24', 'rs2_h3_val == 65407', 'rs2_h1_val == 32', 'rs2_h0_val == 2', 'rs1_h2_val == 49151', 'rs1_h1_val == 256', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x8000074c]:UKADD16 s8, t1, s4
	-[0x80000750]:sd s8, 240(a5)
Current Store : [0x80000754] : sd t1, 248(a5) -- Store: [0x80003308]:0x000BBFFF0100FFDF




Last Coverpoint : ['rs1 : x9', 'rs2 : x11', 'rd : x23', 'rs2_h3_val == 65471', 'rs2_h1_val == 2048', 'rs2_h0_val == 256', 'rs1_h3_val == 49151', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000780]:UKADD16 s7, s1, a1
	-[0x80000784]:sd s7, 256(a5)
Current Store : [0x80000788] : sd s1, 264(a5) -- Store: [0x80003318]:0xBFFF000000050800




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x4', 'rs2_h3_val == 65503', 'rs2_h2_val == 65527', 'rs2_h1_val == 49151', 'rs2_h0_val == 65527', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x800007b4]:UKADD16 tp, a0, a4
	-[0x800007b8]:sd tp, 272(a5)
Current Store : [0x800007bc] : sd a0, 280(a5) -- Store: [0x80003328]:0x001000077FFF000D




Last Coverpoint : ['rs1 : x15', 'rs2 : x30', 'rd : x25', 'rs2_h3_val == 65519', 'rs2_h0_val == 65535', 'rs1_h3_val == 65503', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x800007ec]:UKADD16 s9, a5, t5
	-[0x800007f0]:sd s9, 0(t0)
Current Store : [0x800007f4] : sd a5, 8(t0) -- Store: [0x80003338]:0xFFDF20000000000F




Last Coverpoint : ['rs1 : x2', 'rs2 : x7', 'rd : x12', 'rs2_h3_val == 65531', 'rs2_h2_val == 57343', 'rs2_h1_val == 65535', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x8000081c]:UKADD16 a2, sp, t2
	-[0x80000820]:sd a2, 16(t0)
Current Store : [0x80000824] : sd sp, 24(t0) -- Store: [0x80003348]:0x00097FFF01000002




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x15', 'rs2_h3_val == 65533', 'rs2_h2_val == 4096', 'rs1_h3_val == 65471', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000854]:UKADD16 a5, s10, a0
	-[0x80000858]:sd a5, 32(t0)
Current Store : [0x8000085c] : sd s10, 40(t0) -- Store: [0x80003358]:0xFFBF000B00040011




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x30', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000890]:UKADD16 t5, t2, zero
	-[0x80000894]:sd t5, 48(t0)
Current Store : [0x80000898] : sd t2, 56(t0) -- Store: [0x80003368]:0xFFFE0100FBFF0002




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x29', 'rs2_h3_val == 8192', 'rs2_h0_val == 128', 'rs1_h2_val == 8', 'rs1_h1_val == 2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800008cc]:UKADD16 t4, t3, tp
	-[0x800008d0]:sd t4, 64(t0)
Current Store : [0x800008d4] : sd t3, 72(t0) -- Store: [0x80003378]:0x0005000800020080




Last Coverpoint : ['rs1 : x4', 'rs2 : x15', 'rd : x27', 'rs2_h3_val == 4096', 'rs2_h1_val == 32767', 'rs1_h3_val == 256', 'rs1_h2_val == 512', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000900]:UKADD16 s11, tp, a5
	-[0x80000904]:sd s11, 80(t0)
Current Store : [0x80000908] : sd tp, 88(t0) -- Store: [0x80003388]:0x0100020008000005




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x1', 'rs2_h3_val == 2048', 'rs1_h3_val == 63487', 'rs1_h1_val == 4096', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000938]:UKADD16 ra, a6, sp
	-[0x8000093c]:sd ra, 96(t0)
Current Store : [0x80000940] : sd a6, 104(t0) -- Store: [0x80003398]:0xF7FFFF7F10000040




Last Coverpoint : ['rs1 : x14', 'rs2 : x6', 'rd : x20', 'rs2_h3_val == 1024', 'rs1_h1_val == 1', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000974]:UKADD16 s4, a4, t1
	-[0x80000978]:sd s4, 112(t0)
Current Store : [0x8000097c] : sd a4, 120(t0) -- Store: [0x800033a8]:0xFFFE001100010100




Last Coverpoint : ['rs1 : x30', 'rs2 : x23', 'rd : x10', 'rs2_h3_val == 512', 'rs2_h2_val == 65471', 'rs2_h1_val == 65023', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x800009a8]:UKADD16 a0, t5, s7
	-[0x800009ac]:sd a0, 128(t0)
Current Store : [0x800009b0] : sd t5, 136(t0) -- Store: [0x800033b8]:0x0400000B0000000D




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rd : x6', 'rs2_h3_val == 256', 'rs2_h2_val == 16384', 'rs1_h2_val == 1024', 'rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x800009d4]:UKADD16 t1, ra, s8
	-[0x800009d8]:sd t1, 144(t0)
Current Store : [0x800009dc] : sd ra, 152(t0) -- Store: [0x800033c8]:0x00130400FFDFFF7F




Last Coverpoint : ['rs1 : x13', 'rs2 : x27', 'rd : x3', 'rs2_h3_val == 128', 'rs2_h0_val == 43690', 'rs1_h3_val == 32768', 'rs1_h1_val == 49151', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000a10]:UKADD16 gp, a3, s11
	-[0x80000a14]:sd gp, 160(t0)
Current Store : [0x80000a18] : sd a3, 168(t0) -- Store: [0x800033d8]:0x8000000DBFFF2000




Last Coverpoint : ['rs1 : x25', 'rs2 : x16', 'rd : x11', 'rs2_h3_val == 64', 'rs1_h2_val == 57343', 'rs1_h1_val == 65279', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000a44]:UKADD16 a1, s9, a6
	-[0x80000a48]:sd a1, 176(t0)
Current Store : [0x80000a4c] : sd s9, 184(t0) -- Store: [0x800033e8]:0x0009DFFFFEFFFBFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x8', 'rd : x13', 'rs2_h3_val == 32', 'rs2_h2_val == 65531', 'rs2_h0_val == 64', 'rs1_h2_val == 2048', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000a80]:UKADD16 a3, s11, fp
	-[0x80000a84]:sd a3, 192(t0)
Current Store : [0x80000a88] : sd s11, 200(t0) -- Store: [0x800033f8]:0x000C080004000800




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x26', 'rs2_h3_val == 16', 'rs2_h2_val == 1', 'rs2_h1_val == 65534', 'rs2_h0_val == 32768', 'rs1_h2_val == 1', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x80000ab8]:UKADD16 s10, s8, s3
	-[0x80000abc]:sd s10, 208(t0)
Current Store : [0x80000ac0] : sd s8, 216(t0) -- Store: [0x80003408]:0x00100001FFEF7FFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80000af0]:UKADD16 t6, t5, t4
	-[0x80000af4]:sd t6, 224(t0)
Current Store : [0x80000af8] : sd t5, 232(t0) -- Store: [0x80003418]:0xFFDF0002000B2000




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 65534', 'rs2_h0_val == 65503', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000b2c]:UKADD16 t6, t5, t4
	-[0x80000b30]:sd t6, 240(t0)
Current Store : [0x80000b34] : sd t5, 248(t0) -- Store: [0x80003428]:0xF7FF0080DFFF0800




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 21845', 'rs1_h1_val == 128', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000b60]:UKADD16 t6, t5, t4
	-[0x80000b64]:sd t6, 256(t0)
Current Store : [0x80000b68] : sd t5, 264(t0) -- Store: [0x80003438]:0x0006000900808000




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 2', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80000b98]:UKADD16 t6, t5, t4
	-[0x80000b9c]:sd t6, 272(t0)
Current Store : [0x80000ba0] : sd t5, 280(t0) -- Store: [0x80003448]:0x0002000CBFFF2000




Last Coverpoint : ['rs2_h3_val == 65535', 'rs2_h2_val == 16', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000bcc]:UKADD16 t6, t5, t4
	-[0x80000bd0]:sd t6, 288(t0)
Current Store : [0x80000bd4] : sd t5, 296(t0) -- Store: [0x80003458]:0x0013000840000100




Last Coverpoint : ['rs2_h2_val == 43690', 'rs2_h1_val == 4096', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000bfc]:UKADD16 t6, t5, t4
	-[0x80000c00]:sd t6, 304(t0)
Current Store : [0x80000c04] : sd t5, 312(t0) -- Store: [0x80003468]:0x00037FFFFFDFFFFF




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h0_val == 2048', 'rs1_h1_val == 65535', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000c38]:UKADD16 t6, t5, t4
	-[0x80000c3c]:sd t6, 320(t0)
Current Store : [0x80000c40] : sd t5, 328(t0) -- Store: [0x80003478]:0x0006000FFFFF0004




Last Coverpoint : ['rs2_h3_val == 32768', 'rs2_h2_val == 65279', 'rs2_h1_val == 32768', 'rs2_h0_val == 8', 'rs1_h2_val == 43690', 'rs1_h1_val == 61439', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000c74]:UKADD16 t6, t5, t4
	-[0x80000c78]:sd t6, 336(t0)
Current Store : [0x80000c7c] : sd t5, 344(t0) -- Store: [0x80003488]:0xFFFEAAAAEFFFAAAA




Last Coverpoint : ['rs2_h1_val == 57343', 'rs2_h0_val == 65519', 'rs1_h3_val == 64511', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000ca8]:UKADD16 t6, t5, t4
	-[0x80000cac]:sd t6, 352(t0)
Current Store : [0x80000cb0] : sd t5, 360(t0) -- Store: [0x80003498]:0xFBFF0001EFFF5555




Last Coverpoint : ['rs2_h0_val == 65407', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000ce4]:UKADD16 t6, t5, t4
	-[0x80000ce8]:sd t6, 368(t0)
Current Store : [0x80000cec] : sd t5, 376(t0) -- Store: [0x800034a8]:0x000E0200FFFFDFFF




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h2_val == 65533', 'rs1_h1_val == 512', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000d1c]:UKADD16 t6, t5, t4
	-[0x80000d20]:sd t6, 384(t0)
Current Store : [0x80000d24] : sd t5, 392(t0) -- Store: [0x800034b8]:0x0007FFFD0200EFFF




Last Coverpoint : ['rs2_h2_val == 65503', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000d58]:UKADD16 t6, t5, t4
	-[0x80000d5c]:sd t6, 400(t0)
Current Store : [0x80000d60] : sd t5, 408(t0) -- Store: [0x800034c8]:0x000900020200F7FF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == 65519', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000d94]:UKADD16 t6, t5, t4
	-[0x80000d98]:sd t6, 416(t0)
Current Store : [0x80000d9c] : sd t5, 424(t0) -- Store: [0x800034d8]:0xFFFE7FFF0002FDFF




Last Coverpoint : ['rs2_h1_val == 65503', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000dd0]:UKADD16 t6, t5, t4
	-[0x80000dd4]:sd t6, 432(t0)
Current Store : [0x80000dd8] : sd t5, 440(t0) -- Store: [0x800034e8]:0x000500094000FEFF




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 1', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000e04]:UKADD16 t6, t5, t4
	-[0x80000e08]:sd t6, 448(t0)
Current Store : [0x80000e0c] : sd t5, 456(t0) -- Store: [0x800034f8]:0xFFF70011FFFFFFEF




Last Coverpoint : ['rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000e30]:UKADD16 t6, t5, t4
	-[0x80000e34]:sd t6, 464(t0)
Current Store : [0x80000e38] : sd t5, 472(t0) -- Store: [0x80003508]:0x0008FFFDF7FFFFF7




Last Coverpoint : ['rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000e64]:UKADD16 t6, t5, t4
	-[0x80000e68]:sd t6, 480(t0)
Current Store : [0x80000e6c] : sd t5, 488(t0) -- Store: [0x80003518]:0x000A000CFFBFFFFD




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000ea0]:UKADD16 t6, t5, t4
	-[0x80000ea4]:sd t6, 496(t0)
Current Store : [0x80000ea8] : sd t5, 504(t0) -- Store: [0x80003528]:0xBFFF2000EFFFFFFE




Last Coverpoint : ['rs2_h0_val == 61439', 'rs1_h2_val == 65519', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000ed8]:UKADD16 t6, t5, t4
	-[0x80000edc]:sd t6, 512(t0)
Current Store : [0x80000ee0] : sd t5, 520(t0) -- Store: [0x80003538]:0xFBFFFFEF10004000




Last Coverpoint : ['rs2_h1_val == 65533', 'rs1_h3_val == 4096', 'rs1_h2_val == 65503', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000f14]:UKADD16 t6, t5, t4
	-[0x80000f18]:sd t6, 528(t0)
Current Store : [0x80000f1c] : sd t5, 536(t0) -- Store: [0x80003548]:0x1000FFDFFFFB0400




Last Coverpoint : ['rs1_h3_val == 65279', 'rs1_h1_val == 21845', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000f4c]:UKADD16 t6, t5, t4
	-[0x80000f50]:sd t6, 544(t0)
Current Store : [0x80000f54] : sd t5, 552(t0) -- Store: [0x80003558]:0xFEFF001255550200




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000f88]:UKADD16 t6, t5, t4
	-[0x80000f8c]:sd t6, 560(t0)
Current Store : [0x80000f90] : sd t5, 568(t0) -- Store: [0x80003568]:0xFFFE0000FFBF0020




Last Coverpoint : ['rs1_h3_val == 128', 'rs1_h1_val == 65527', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000fc0]:UKADD16 t6, t5, t4
	-[0x80000fc4]:sd t6, 576(t0)
Current Store : [0x80000fc8] : sd t5, 584(t0) -- Store: [0x80003578]:0x00800100FFF70010




Last Coverpoint : ['rs1_h1_val == 65533', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000ffc]:UKADD16 t6, t5, t4
	-[0x80001000]:sd t6, 592(t0)
Current Store : [0x80001004] : sd t5, 600(t0) -- Store: [0x80003588]:0xFEFF0005FFFD0008




Last Coverpoint : ['rs1_h1_val == 65023', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001030]:UKADD16 t6, t5, t4
	-[0x80001034]:sd t6, 608(t0)
Current Store : [0x80001038] : sd t5, 616(t0) -- Store: [0x80003598]:0x000A0012FDFF0001




Last Coverpoint : ['rs2_h2_val == 61439', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x80001074]:UKADD16 t6, t5, t4
	-[0x80001078]:sd t6, 624(t0)
Current Store : [0x8000107c] : sd t5, 632(t0) -- Store: [0x800035a8]:0xF7FF0002AAAADFFF




Last Coverpoint : ['rs2_h2_val == 63487', 'rs1_h3_val == 43690', 'rs1_h2_val == 65535', 'rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x800010b8]:UKADD16 t6, t5, t4
	-[0x800010bc]:sd t6, 640(t0)
Current Store : [0x800010c0] : sd t5, 648(t0) -- Store: [0x800035b8]:0xAAAAFFFF8000DFFF




Last Coverpoint : ['rs2_h2_val == 65023', 'rs2_h1_val == 2', 'rs1_h3_val == 512', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x800010f4]:UKADD16 t6, t5, t4
	-[0x800010f8]:sd t6, 656(t0)
Current Store : [0x800010fc] : sd t5, 664(t0) -- Store: [0x800035c8]:0x02001000FFFF000E




Last Coverpoint : ['rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x80001130]:UKADD16 t6, t5, t4
	-[0x80001134]:sd t6, 672(t0)
Current Store : [0x80001138] : sd t5, 680(t0) -- Store: [0x800035d8]:0xFFDF000DFFFD0100




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h3_val == 21845', 'rs1_h2_val == 63487', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80001160]:UKADD16 t6, t5, t4
	-[0x80001164]:sd t6, 688(t0)
Current Store : [0x80001168] : sd t5, 696(t0) -- Store: [0x800035e8]:0x5555F7FF0040000E




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h3_val == 65535', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80001190]:UKADD16 t6, t5, t4
	-[0x80001194]:sd t6, 704(t0)
Current Store : [0x80001198] : sd t5, 712(t0) -- Store: [0x800035f8]:0xFFFF0040000A000F




Last Coverpoint : ['rs2_h2_val == 65533', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800011c4]:UKADD16 t6, t5, t4
	-[0x800011c8]:sd t6, 720(t0)
Current Store : [0x800011cc] : sd t5, 728(t0) -- Store: [0x80003608]:0xFFFFAAAA00400003




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80001200]:UKADD16 t6, t5, t4
	-[0x80001204]:sd t6, 736(t0)
Current Store : [0x80001208] : sd t5, 744(t0) -- Store: [0x80003618]:0x4000004008000200




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80001234]:UKADD16 t6, t5, t4
	-[0x80001238]:sd t6, 752(t0)
Current Store : [0x8000123c] : sd t5, 760(t0) -- Store: [0x80003628]:0x000B0009FFFBEFFF




Last Coverpoint : ['rs2_h2_val == 65519', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x8000126c]:UKADD16 t6, t5, t4
	-[0x80001270]:sd t6, 768(t0)
Current Store : [0x80001274] : sd t5, 776(t0) -- Store: [0x80003638]:0x008000020080000C




Last Coverpoint : ['rs2_h2_val == 49151', 'rs2_h1_val == 64', 'rs1_h2_val == 65534', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x8000129c]:UKADD16 t6, t5, t4
	-[0x800012a0]:sd t6, 784(t0)
Current Store : [0x800012a4] : sd t5, 792(t0) -- Store: [0x80003648]:0x0006FFFE0008AAAA




Last Coverpoint : ['rs1_h3_val == 32767', 'rs1_h2_val == 61439']
Last Code Sequence : 
	-[0x800012dc]:UKADD16 t6, t5, t4
	-[0x800012e0]:sd t6, 800(t0)
Current Store : [0x800012e4] : sd t5, 808(t0) -- Store: [0x80003658]:0x7FFFEFFFF7FF0000




Last Coverpoint : ['rs1_h3_val == 61439']
Last Code Sequence : 
	-[0x80001318]:UKADD16 t6, t5, t4
	-[0x8000131c]:sd t6, 816(t0)
Current Store : [0x80001320] : sd t5, 824(t0) -- Store: [0x80003668]:0xEFFF40000007FF7F




Last Coverpoint : ['rs2_h1_val == 256', 'rs1_h3_val == 65023', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80001344]:UKADD16 t6, t5, t4
	-[0x80001348]:sd t6, 832(t0)
Current Store : [0x8000134c] : sd t5, 840(t0) -- Store: [0x80003678]:0xFDFF0020BFFFFFEF




Last Coverpoint : ['rs2_h0_val == 63487', 'rs1_h3_val == 65407']
Last Code Sequence : 
	-[0x80001380]:UKADD16 t6, t5, t4
	-[0x80001384]:sd t6, 848(t0)
Current Store : [0x80001388] : sd t5, 856(t0) -- Store: [0x80003688]:0xFF7F5555FFFF0020




Last Coverpoint : ['rs1_h3_val == 65519', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800013bc]:UKADD16 t6, t5, t4
	-[0x800013c0]:sd t6, 864(t0)
Current Store : [0x800013c4] : sd t5, 872(t0) -- Store: [0x80003698]:0xFFEF001000050400




Last Coverpoint : ['rs1_h3_val == 65533']
Last Code Sequence : 
	-[0x800013f0]:UKADD16 t6, t5, t4
	-[0x800013f4]:sd t6, 880(t0)
Current Store : [0x800013f8] : sd t5, 888(t0) -- Store: [0x800036a8]:0xFFFD1000FEFF0011




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x8000142c]:UKADD16 t6, t5, t4
	-[0x80001430]:sd t6, 896(t0)
Current Store : [0x80001434] : sd t5, 904(t0) -- Store: [0x800036b8]:0xAAAA555504000002




Last Coverpoint : ['rs2_h1_val == 65279', 'rs1_h2_val == 65023']
Last Code Sequence : 
	-[0x80001470]:UKADD16 t6, t5, t4
	-[0x80001474]:sd t6, 912(t0)
Current Store : [0x80001478] : sd t5, 920(t0) -- Store: [0x800036c8]:0xAAAAFDFFDFFF0008




Last Coverpoint : ['rs1_h2_val == 65279']
Last Code Sequence : 
	-[0x800014ac]:UKADD16 t6, t5, t4
	-[0x800014b0]:sd t6, 928(t0)
Current Store : [0x800014b4] : sd t5, 936(t0) -- Store: [0x800036d8]:0xFDFFFEFFFBFF0012




Last Coverpoint : ['rs2_h1_val == 43690', 'rs1_h2_val == 65471']
Last Code Sequence : 
	-[0x800014e0]:UKADD16 t6, t5, t4
	-[0x800014e4]:sd t6, 944(t0)
Current Store : [0x800014e8] : sd t5, 952(t0) -- Store: [0x800036e8]:0xFFFFFFBF00090100




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x8000151c]:UKADD16 t6, t5, t4
	-[0x80001520]:sd t6, 960(t0)
Current Store : [0x80001524] : sd t5, 968(t0) -- Store: [0x800036f8]:0xFFBF00120008FFBF




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x80001550]:UKADD16 t6, t5, t4
	-[0x80001554]:sd t6, 976(t0)
Current Store : [0x80001558] : sd t5, 984(t0) -- Store: [0x80003708]:0xDFFF4000FFBF0100




Last Coverpoint : ['rs1_h2_val == 65531']
Last Code Sequence : 
	-[0x80001588]:UKADD16 t6, t5, t4
	-[0x8000158c]:sd t6, 992(t0)
Current Store : [0x80001590] : sd t5, 1000(t0) -- Store: [0x80003718]:0xFEFFFFFB0200000E




Last Coverpoint : ['rs2_h2_val == 65535']
Last Code Sequence : 
	-[0x800015c0]:UKADD16 t6, t5, t4
	-[0x800015c4]:sd t6, 1008(t0)
Current Store : [0x800015c8] : sd t5, 1016(t0) -- Store: [0x80003728]:0x00034000FFFD0008




Last Coverpoint : ['rs2_h2_val == 65407', 'rs1_h2_val == 32768']
Last Code Sequence : 
	-[0x800015f8]:UKADD16 t6, t5, t4
	-[0x800015fc]:sd t6, 1024(t0)
Current Store : [0x80001600] : sd t5, 1032(t0) -- Store: [0x80003738]:0xFFFE80000003000C




Last Coverpoint : ['opcode : ukadd16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 65534', 'rs2_h2_val == 0', 'rs2_h1_val == 32767', 'rs2_h0_val == 65503', 'rs1_h2_val == 2', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x8000162c]:UKADD16 t6, t5, t4
	-[0x80001630]:sd t6, 1040(t0)
Current Store : [0x80001634] : sd t5, 1048(t0) -- Store: [0x80003748]:0x000F0002FFBF0011




Last Coverpoint : ['rs2_h1_val == 61439']
Last Code Sequence : 
	-[0x8000165c]:UKADD16 t6, t5, t4
	-[0x80001660]:sd t6, 1056(t0)
Current Store : [0x80001664] : sd t5, 1064(t0) -- Store: [0x80003758]:0xFFDF001000100000




Last Coverpoint : ['rs2_h1_val == 64511']
Last Code Sequence : 
	-[0x80001690]:UKADD16 t6, t5, t4
	-[0x80001694]:sd t6, 1072(t0)
Current Store : [0x80001698] : sd t5, 1080(t0) -- Store: [0x80003768]:0x000E000B0010000C




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x800016c4]:UKADD16 t6, t5, t4
	-[0x800016c8]:sd t6, 1088(t0)
Current Store : [0x800016cc] : sd t5, 1096(t0) -- Store: [0x80003778]:0x000CFFDF000B000D




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h3_val == 32']
Last Code Sequence : 
	-[0x80001704]:UKADD16 t6, t5, t4
	-[0x80001708]:sd t6, 1104(t0)
Current Store : [0x8000170c] : sd t5, 1112(t0) -- Store: [0x80003788]:0x0020000700130010




Last Coverpoint : ['rs1_h1_val == 65407']
Last Code Sequence : 
	-[0x80001738]:UKADD16 t6, t5, t4
	-[0x8000173c]:sd t6, 1120(t0)
Current Store : [0x80001740] : sd t5, 1128(t0) -- Store: [0x80003798]:0x0009FBFFFF7F5555




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80001774]:UKADD16 t6, t5, t4
	-[0x80001778]:sd t6, 1136(t0)
Current Store : [0x8000177c] : sd t5, 1144(t0) -- Store: [0x800037a8]:0x200055550009FFFF




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800017b0]:UKADD16 t6, t5, t4
	-[0x800017b4]:sd t6, 1152(t0)
Current Store : [0x800017b8] : sd t5, 1160(t0) -- Store: [0x800037b8]:0xFFFF000E0007F7FF




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x800017ec]:UKADD16 t6, t5, t4
	-[0x800017f0]:sd t6, 1168(t0)
Current Store : [0x800017f4] : sd t5, 1176(t0) -- Store: [0x800037c8]:0x0009FFFEFFFEBFFF




Last Coverpoint : ['rs2_h0_val == 64511']
Last Code Sequence : 
	-[0x80001828]:UKADD16 t6, t5, t4
	-[0x8000182c]:sd t6, 1184(t0)
Current Store : [0x80001830] : sd t5, 1192(t0) -- Store: [0x800037d8]:0x0003000EAAAAFFEF




Last Coverpoint : ['opcode : ukadd16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h2_val == 49151', 'rs2_h1_val == 63487', 'rs1_h3_val == 0', 'rs1_h2_val == 65531', 'rs1_h1_val == 256', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x8000186c]:UKADD16 t6, t5, t4
	-[0x80001870]:sd t6, 1200(t0)
Current Store : [0x80001874] : sd t5, 1208(t0) -- Store: [0x800037e8]:0x0000FFFB0100FFEF




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x800018a0]:UKADD16 t6, t5, t4
	-[0x800018a4]:sd t6, 1216(t0)
Current Store : [0x800018a8] : sd t5, 1224(t0) -- Store: [0x800037f8]:0x0004F7FF00800002




Last Coverpoint : ['rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800018d8]:UKADD16 t6, t5, t4
	-[0x800018dc]:sd t6, 1232(t0)
Current Store : [0x800018e0] : sd t5, 1240(t0) -- Store: [0x80003808]:0x0001BFFFFF7F0008




Last Coverpoint : ['rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001914]:UKADD16 t6, t5, t4
	-[0x80001918]:sd t6, 1248(t0)
Current Store : [0x8000191c] : sd t5, 1256(t0) -- Store: [0x80003818]:0x000A0004FFEF0200




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80001940]:UKADD16 t6, t5, t4
	-[0x80001944]:sd t6, 1264(t0)
Current Store : [0x80001948] : sd t5, 1272(t0) -- Store: [0x80003828]:0xFFFE010000204000




Last Coverpoint : ['rs2_h0_val == 65279']
Last Code Sequence : 
	-[0x80001974]:UKADD16 t6, t5, t4
	-[0x80001978]:sd t6, 1280(t0)
Current Store : [0x8000197c] : sd t5, 1288(t0) -- Store: [0x80003838]:0x000600100004DFFF




Last Coverpoint : ['rs2_h1_val == 65527']
Last Code Sequence : 
	-[0x800019b0]:UKADD16 t6, t5, t4
	-[0x800019b4]:sd t6, 1296(t0)
Current Store : [0x800019b8] : sd t5, 1304(t0) -- Store: [0x80003848]:0x800001000020000B




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800019e8]:UKADD16 t6, t5, t4
	-[0x800019ec]:sd t6, 1312(t0)
Current Store : [0x800019f0] : sd t5, 1320(t0) -- Store: [0x80003858]:0xFFF7FBFF00121000




Last Coverpoint : ['opcode : ukadd16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 32767', 'rs2_h1_val == 512', 'rs2_h0_val == 65471', 'rs1_h3_val == 57343', 'rs1_h2_val == 65533', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x80001a24]:UKADD16 t6, t5, t4
	-[0x80001a28]:sd t6, 1328(t0)
Current Store : [0x80001a2c] : sd t5, 1336(t0) -- Store: [0x80003868]:0xDFFFFFFDFFEF0009





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

|s.no|            signature             |                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                       |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ukadd16<br> - rs1 : x17<br> - rs2 : x17<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 65534<br> - rs2_h1_val == 63487<br> - rs1_h3_val == 65534<br> - rs1_h1_val == 63487<br> |[0x800003d0]:UKADD16 zero, a7, a7<br> [0x800003d4]:sd zero, 0(a5)<br> |
|   2|[0x80003220]<br>0xFFFF0200FFFF000C|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 65527<br> - rs2_h2_val == 256<br> - rs2_h1_val == 65471<br> - rs1_h3_val == 65527<br> - rs1_h2_val == 256<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                           |[0x80000408]:UKADD16 t6, t6, t6<br> [0x8000040c]:sd t6, 16(a5)<br>    |
|   3|[0x80003230]<br>0x000DFFFF2080FFFF|- rs1 : x12<br> - rs2 : x26<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 0<br> - rs2_h2_val == 64511<br> - rs2_h1_val == 128<br> - rs2_h0_val == 4096<br> - rs1_h2_val == 64511<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 65407<br>                                                                    |[0x80000440]:UKADD16 a7, a2, s10<br> [0x80000444]:sd a7, 32(a5)<br>   |
|   4|[0x80003240]<br>0x40088000FFFFFE06|- rs1 : x5<br> - rs2 : x21<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 32768<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65023<br> - rs1_h3_val == 8<br> - rs1_h2_val == 0<br> - rs1_h1_val == 65531<br>                                                                                                                                                                  |[0x8000047c]:UKADD16 t0, t0, s5<br> [0x80000480]:sd t0, 48(a5)<br>    |
|   5|[0x80003250]<br>0xE00E00840021FFFF|- rs1 : x22<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h2_val == 4<br> - rs2_h0_val == 65531<br> - rs1_h3_val == 57343<br> - rs1_h2_val == 128<br> - rs1_h1_val == 16<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                           |[0x800004b8]:UKADD16 t3, s6, t3<br> [0x800004bc]:sd t3, 64(a5)<br>    |
|   6|[0x80003260]<br>0xFFFF2005000EFFFF|- rs1 : x23<br> - rs2 : x12<br> - rd : x8<br> - rs2_h3_val == 43690<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 8<br> - rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                        |[0x800004f4]:UKADD16 fp, s7, a2<br> [0x800004f8]:sd fp, 80(a5)<br>    |
|   7|[0x80003270]<br>0x55557FFF0200FFBF|- rs1 : x0<br> - rs2 : x1<br> - rd : x18<br> - rs1_h0_val == 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 32767<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65471<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                    |[0x80000530]:UKADD16 s2, zero, ra<br> [0x80000534]:sd s2, 96(a5)<br>  |
|   8|[0x80003280]<br>0xFFFF4007001DE010|- rs1 : x18<br> - rs2 : x5<br> - rd : x9<br> - rs2_h3_val == 32767<br> - rs2_h0_val == 57343<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000568]:UKADD16 s1, s2, t0<br> [0x8000056c]:sd s1, 112(a5)<br>   |
|   9|[0x80003290]<br>0xC7FF0010008F001A|- rs1 : x11<br> - rs2 : x18<br> - rd : x22<br> - rs2_h3_val == 49151<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800005a4]:UKADD16 s6, a1, s2<br> [0x800005a8]:sd s6, 128(a5)<br>   |
|  10|[0x800032a0]<br>0xE7FF0812FF82FFFF|- rs1 : x21<br> - rs2 : x9<br> - rd : x19<br> - rs2_h3_val == 57343<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 49151<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                          |[0x800005e0]:UKADD16 s3, s5, s1<br> [0x800005e4]:sd s3, 144(a5)<br>   |
|  11|[0x800032b0]<br>0xF03FFFFF0023FFFF|- rs1 : x20<br> - rs2 : x29<br> - rd : x2<br> - rs2_h3_val == 61439<br> - rs1_h3_val == 64<br> - rs1_h2_val == 65527<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000061c]:UKADD16 sp, s4, t4<br> [0x80000620]:sd sp, 160(a5)<br>   |
|  12|[0x800032c0]<br>0xFFFF5558555AC009|- rs1 : x19<br> - rs2 : x13<br> - rd : x16<br> - rs2_h3_val == 63487<br> - rs2_h1_val == 21845<br> - rs1_h3_val == 65531<br> - rs1_h2_val == 21845<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                        |[0x80000660]:UKADD16 a6, s3, a3<br> [0x80000664]:sd a6, 176(a5)<br>   |
|  13|[0x800032d0]<br>0xFC11D554800A0022|- rs1 : x3<br> - rs2 : x25<br> - rd : x21<br> - rs2_h3_val == 64511<br> - rs2_h0_val == 32<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000069c]:UKADD16 s5, gp, s9<br> [0x800006a0]:sd s5, 192(a5)<br>   |
|  14|[0x800032e0]<br>0xFE100019FF8481FF|- rs1 : x29<br> - rs2 : x3<br> - rd : x7<br> - rs2_h3_val == 65023<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006d8]:UKADD16 t2, t4, gp<br> [0x800006dc]:sd t2, 208(a5)<br>   |
|  15|[0x800032f0]<br>0xFF01FFBFFC110010|- rs1 : x8<br> - rs2 : x22<br> - rd : x14<br> - rs2_h3_val == 65279<br> - rs2_h2_val == 64<br> - rs1_h3_val == 2<br> - rs1_h2_val == 65407<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                                                                                |[0x80000710]:UKADD16 a4, fp, s6<br> [0x80000714]:sd a4, 224(a5)<br>   |
|  16|[0x80003300]<br>0xFF8AC0060120FFE1|- rs1 : x6<br> - rs2 : x20<br> - rd : x24<br> - rs2_h3_val == 65407<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2<br> - rs1_h2_val == 49151<br> - rs1_h1_val == 256<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                        |[0x8000074c]:UKADD16 s8, t1, s4<br> [0x80000750]:sd s8, 240(a5)<br>   |
|  17|[0x80003310]<br>0xFFFF000508050900|- rs1 : x9<br> - rs2 : x11<br> - rd : x23<br> - rs2_h3_val == 65471<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 256<br> - rs1_h3_val == 49151<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                             |[0x80000780]:UKADD16 s7, s1, a1<br> [0x80000784]:sd s7, 256(a5)<br>   |
|  18|[0x80003320]<br>0xFFEFFFFEFFFFFFFF|- rs1 : x10<br> - rs2 : x14<br> - rd : x4<br> - rs2_h3_val == 65503<br> - rs2_h2_val == 65527<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 65527<br> - rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                            |[0x800007b4]:UKADD16 tp, a0, a4<br> [0x800007b8]:sd tp, 272(a5)<br>   |
|  19|[0x80003330]<br>0xFFFF2100000CFFFF|- rs1 : x15<br> - rs2 : x30<br> - rd : x25<br> - rs2_h3_val == 65519<br> - rs2_h0_val == 65535<br> - rs1_h3_val == 65503<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                   |[0x800007ec]:UKADD16 s9, a5, t5<br> [0x800007f0]:sd s9, 0(t0)<br>     |
|  20|[0x80003340]<br>0xFFFFFFFFFFFF0010|- rs1 : x2<br> - rs2 : x7<br> - rd : x12<br> - rs2_h3_val == 65531<br> - rs2_h2_val == 57343<br> - rs2_h1_val == 65535<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                    |[0x8000081c]:UKADD16 a2, sp, t2<br> [0x80000820]:sd a2, 16(t0)<br>    |
|  21|[0x80003350]<br>0xFFFF100B0007001D|- rs1 : x26<br> - rs2 : x10<br> - rd : x15<br> - rs2_h3_val == 65533<br> - rs2_h2_val == 4096<br> - rs1_h3_val == 65471<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000854]:UKADD16 a5, s10, a0<br> [0x80000858]:sd a5, 32(t0)<br>   |
|  22|[0x80003360]<br>0xFFFE0100FBFF0002|- rs1 : x7<br> - rs2 : x0<br> - rd : x30<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000890]:UKADD16 t5, t2, zero<br> [0x80000894]:sd t5, 48(t0)<br>  |
|  23|[0x80003370]<br>0x20052008000B0100|- rs1 : x28<br> - rs2 : x4<br> - rd : x29<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 128<br> - rs1_h2_val == 8<br> - rs1_h1_val == 2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                      |[0x800008cc]:UKADD16 t4, t3, tp<br> [0x800008d0]:sd t4, 64(t0)<br>    |
|  24|[0x80003380]<br>0x1100020C87FF0013|- rs1 : x4<br> - rs2 : x15<br> - rd : x27<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 32767<br> - rs1_h3_val == 256<br> - rs1_h2_val == 512<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                               |[0x80000900]:UKADD16 s11, tp, a5<br> [0x80000904]:sd s11, 80(t0)<br>  |
|  25|[0x80003390]<br>0xFFFFFFFF100D1040|- rs1 : x16<br> - rs2 : x2<br> - rd : x1<br> - rs2_h3_val == 2048<br> - rs1_h3_val == 63487<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000938]:UKADD16 ra, a6, sp<br> [0x8000093c]:sd ra, 96(t0)<br>    |
|  26|[0x800033a0]<br>0xFFFF0020000D010A|- rs1 : x14<br> - rs2 : x6<br> - rd : x20<br> - rs2_h3_val == 1024<br> - rs1_h1_val == 1<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000974]:UKADD16 s4, a4, t1<br> [0x80000978]:sd s4, 112(t0)<br>   |
|  27|[0x800033b0]<br>0x0600FFCAFDFF001F|- rs1 : x30<br> - rs2 : x23<br> - rd : x10<br> - rs2_h3_val == 512<br> - rs2_h2_val == 65471<br> - rs2_h1_val == 65023<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                     |[0x800009a8]:UKADD16 a0, t5, s7<br> [0x800009ac]:sd a0, 128(t0)<br>   |
|  28|[0x800033c0]<br>0x01134400FFDFFFFF|- rs1 : x1<br> - rs2 : x24<br> - rd : x6<br> - rs2_h3_val == 256<br> - rs2_h2_val == 16384<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                                                                                                       |[0x800009d4]:UKADD16 t1, ra, s8<br> [0x800009d8]:sd t1, 144(t0)<br>   |
|  29|[0x800033d0]<br>0x80800020FFFFCAAA|- rs1 : x13<br> - rs2 : x27<br> - rd : x3<br> - rs2_h3_val == 128<br> - rs2_h0_val == 43690<br> - rs1_h3_val == 32768<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                            |[0x80000a10]:UKADD16 gp, a3, s11<br> [0x80000a14]:sd gp, 160(t0)<br>  |
|  30|[0x800033e0]<br>0x0049FFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x16<br> - rd : x11<br> - rs2_h3_val == 64<br> - rs1_h2_val == 57343<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000a44]:UKADD16 a1, s9, a6<br> [0x80000a48]:sd a1, 176(t0)<br>   |
|  31|[0x800033f0]<br>0x002CFFFFFFFF0840|- rs1 : x27<br> - rs2 : x8<br> - rd : x13<br> - rs2_h3_val == 32<br> - rs2_h2_val == 65531<br> - rs2_h0_val == 64<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a80]:UKADD16 a3, s11, fp<br> [0x80000a84]:sd a3, 192(t0)<br>  |
|  32|[0x80003400]<br>0x00200002FFFFFFFF|- rs1 : x24<br> - rs2 : x19<br> - rd : x26<br> - rs2_h3_val == 16<br> - rs2_h2_val == 1<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 32768<br> - rs1_h2_val == 1<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                         |[0x80000ab8]:UKADD16 s10, s8, s3<br> [0x80000abc]:sd s10, 208(t0)<br> |
|  33|[0x80003410]<br>0xFFE7000300132020|- rs2_h3_val == 8<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000af0]:UKADD16 t6, t5, t4<br> [0x80000af4]:sd t6, 224(t0)<br>   |
|  34|[0x80003420]<br>0xF803FFFFDFFFFFFF|- rs2_h3_val == 4<br> - rs2_h2_val == 65534<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b2c]:UKADD16 t6, t5, t4<br> [0x80000b30]:sd t6, 240(t0)<br>   |
|  35|[0x80003430]<br>0x00084009008ED555|- rs2_h3_val == 2<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 128<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b60]:UKADD16 t6, t5, t4<br> [0x80000b64]:sd t6, 256(t0)<br>   |
|  36|[0x80003440]<br>0x0003000EC3FF7555|- rs2_h3_val == 1<br> - rs2_h2_val == 2<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000b98]:UKADD16 t6, t5, t4<br> [0x80000b9c]:sd t6, 272(t0)<br>   |
|  37|[0x80003450]<br>0xFFFF001840070113|- rs2_h3_val == 65535<br> - rs2_h2_val == 16<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000bcc]:UKADD16 t6, t5, t4<br> [0x80000bd0]:sd t6, 288(t0)<br>   |
|  38|[0x80003460]<br>0x0006FFFFFFFFFFFF|- rs2_h2_val == 43690<br> - rs2_h1_val == 4096<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000bfc]:UKADD16 t6, t5, t4<br> [0x80000c00]:sd t6, 304(t0)<br>   |
|  39|[0x80003470]<br>0xF805008FFFFF0804|- rs2_h2_val == 128<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c38]:UKADD16 t6, t5, t4<br> [0x80000c3c]:sd t6, 320(t0)<br>   |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFAAB2|- rs2_h3_val == 32768<br> - rs2_h2_val == 65279<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 8<br> - rs1_h2_val == 43690<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                       |[0x80000c74]:UKADD16 t6, t5, t4<br> [0x80000c78]:sd t6, 336(t0)<br>   |
|  41|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 57343<br> - rs2_h0_val == 65519<br> - rs1_h3_val == 64511<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ca8]:UKADD16 t6, t5, t4<br> [0x80000cac]:sd t6, 352(t0)<br>   |
|  42|[0x800034a0]<br>0x000FE1FFFFFFFFFF|- rs2_h0_val == 65407<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ce4]:UKADD16 t6, t5, t4<br> [0x80000ce8]:sd t6, 368(t0)<br>   |
|  43|[0x800034b0]<br>0xFFFFFFFF0204FFFF|- rs2_h1_val == 4<br> - rs1_h2_val == 65533<br> - rs1_h1_val == 512<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d1c]:UKADD16 t6, t5, t4<br> [0x80000d20]:sd t6, 384(t0)<br>   |
|  44|[0x800034c0]<br>0x0016FFE1FFFFF80B|- rs2_h2_val == 65503<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d58]:UKADD16 t6, t5, t4<br> [0x80000d5c]:sd t6, 400(t0)<br>   |
|  45|[0x800034d0]<br>0xFFFFD554FFF1FE1F|- rs2_h2_val == 21845<br> - rs2_h1_val == 65519<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000d94]:UKADD16 t6, t5, t4<br> [0x80000d98]:sd t6, 416(t0)<br>   |
|  46|[0x800034e0]<br>0x00130809FFFFFF05|- rs2_h1_val == 65503<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dd0]:UKADD16 t6, t5, t4<br> [0x80000dd4]:sd t6, 432(t0)<br>   |
|  47|[0x800034f0]<br>0xFFFF0211FFFFFFFF|- rs2_h2_val == 512<br> - rs2_h1_val == 1<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000e04]:UKADD16 t6, t5, t4<br> [0x80000e08]:sd t6, 448(t0)<br>   |
|  48|[0x80003500]<br>0x0008FFFFF811FFF9|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e30]:UKADD16 t6, t5, t4<br> [0x80000e34]:sd t6, 464(t0)<br>   |
|  49|[0x80003510]<br>0x002A0010FFC6FFFF|- rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e64]:UKADD16 t6, t5, t4<br> [0x80000e68]:sd t6, 480(t0)<br>   |
|  50|[0x80003520]<br>0xC1FF2010EFFFFFFF|- rs2_h0_val == 32767<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ea0]:UKADD16 t6, t5, t4<br> [0x80000ea4]:sd t6, 496(t0)<br>   |
|  51|[0x80003530]<br>0xFC09FFF91012FFFF|- rs2_h0_val == 61439<br> - rs1_h2_val == 65519<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ed8]:UKADD16 t6, t5, t4<br> [0x80000edc]:sd t6, 512(t0)<br>   |
|  52|[0x80003540]<br>0x1010FFFFFFFF0420|- rs2_h1_val == 65533<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 65503<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f14]:UKADD16 t6, t5, t4<br> [0x80000f18]:sd t6, 528(t0)<br>   |
|  53|[0x80003550]<br>0xFF0A081255630280|- rs1_h3_val == 65279<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f4c]:UKADD16 t6, t5, t4<br> [0x80000f50]:sd t6, 544(t0)<br>   |
|  54|[0x80003560]<br>0xFFFF0100FFCC0028|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000f88]:UKADD16 t6, t5, t4<br> [0x80000f8c]:sd t6, 560(t0)<br>   |
|  55|[0x80003570]<br>0x0087010DFFFF8010|- rs1_h3_val == 128<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000fc0]:UKADD16 t6, t5, t4<br> [0x80000fc4]:sd t6, 576(t0)<br>   |
|  56|[0x80003580]<br>0xFF050009FFFFE007|- rs1_h1_val == 65533<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ffc]:UKADD16 t6, t5, t4<br> [0x80001000]:sd t6, 592(t0)<br>   |
|  57|[0x80003590]<br>0xFFE90025FFFFFFF8|- rs1_h1_val == 65023<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001030]:UKADD16 t6, t5, t4<br> [0x80001034]:sd t6, 608(t0)<br>   |
|  58|[0x800035a0]<br>0xF80BF001AAB9E0FF|- rs2_h2_val == 61439<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001074]:UKADD16 t6, t5, t4<br> [0x80001078]:sd t6, 624(t0)<br>   |
|  59|[0x800035b0]<br>0xAAB8FFFF8011E07F|- rs2_h2_val == 63487<br> - rs1_h3_val == 43690<br> - rs1_h2_val == 65535<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x800010b8]:UKADD16 t6, t5, t4<br> [0x800010bc]:sd t6, 640(t0)<br>   |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFF5563|- rs2_h2_val == 65023<br> - rs2_h1_val == 2<br> - rs1_h3_val == 512<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800010f4]:UKADD16 t6, t5, t4<br> [0x800010f8]:sd t6, 656(t0)<br>   |
|  61|[0x800035d0]<br>0xFFFFFFCCFFFFFFFF|- rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001130]:UKADD16 t6, t5, t4<br> [0x80001134]:sd t6, 672(t0)<br>   |
|  62|[0x800035e0]<br>0xFFFFFFFF0053400E|- rs2_h0_val == 16384<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 63487<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001160]:UKADD16 t6, t5, t4<br> [0x80001164]:sd t6, 688(t0)<br>   |
|  63|[0x800035f0]<br>0xFFFF5595FFFF200F|- rs2_h0_val == 8192<br> - rs1_h3_val == 65535<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001190]:UKADD16 t6, t5, t4<br> [0x80001194]:sd t6, 704(t0)<br>   |
|  64|[0x80003600]<br>0xFFFFFFFF00600403|- rs2_h2_val == 65533<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800011c4]:UKADD16 t6, t5, t4<br> [0x800011c8]:sd t6, 720(t0)<br>   |
|  65|[0x80003610]<br>0xFFFF0051080E0210|- rs2_h0_val == 16<br> - rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001200]:UKADD16 t6, t5, t4<br> [0x80001204]:sd t6, 736(t0)<br>   |
|  66|[0x80003620]<br>0xFFFF0014FFFFF003|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001234]:UKADD16 t6, t5, t4<br> [0x80001238]:sd t6, 752(t0)<br>   |
|  67|[0x80003630]<br>0x00A0FFF1008F000D|- rs2_h2_val == 65519<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000126c]:UKADD16 t6, t5, t4<br> [0x80001270]:sd t6, 768(t0)<br>   |
|  68|[0x80003640]<br>0x000DFFFF0048AAAA|- rs2_h2_val == 49151<br> - rs2_h1_val == 64<br> - rs1_h2_val == 65534<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000129c]:UKADD16 t6, t5, t4<br> [0x800012a0]:sd t6, 784(t0)<br>   |
|  69|[0x80003650]<br>0x8007F00EF8100009|- rs1_h3_val == 32767<br> - rs1_h2_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800012dc]:UKADD16 t6, t5, t4<br> [0x800012e0]:sd t6, 800(t0)<br>   |
|  70|[0x80003660]<br>0xF00E4012000BFFFF|- rs1_h3_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001318]:UKADD16 t6, t5, t4<br> [0x8000131c]:sd t6, 816(t0)<br>   |
|  71|[0x80003670]<br>0xFFFF002FC0FFFFF9|- rs2_h1_val == 256<br> - rs1_h3_val == 65023<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001344]:UKADD16 t6, t5, t4<br> [0x80001348]:sd t6, 832(t0)<br>   |
|  72|[0x80003680]<br>0xFFFF5562FFFFF81F|- rs2_h0_val == 63487<br> - rs1_h3_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001380]:UKADD16 t6, t5, t4<br> [0x80001384]:sd t6, 848(t0)<br>   |
|  73|[0x80003690]<br>0xFFFF8010FFF45955|- rs1_h3_val == 65519<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800013bc]:UKADD16 t6, t5, t4<br> [0x800013c0]:sd t6, 864(t0)<br>   |
|  74|[0x800036a0]<br>0xFFFF100FFFFF001E|- rs1_h3_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013f0]:UKADD16 t6, t5, t4<br> [0x800013f4]:sd t6, 880(t0)<br>   |
|  75|[0x800036b0]<br>0xAACA5955FFFF0802|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000142c]:UKADD16 t6, t5, t4<br> [0x80001430]:sd t6, 896(t0)<br>   |
|  76|[0x800036c0]<br>0xABAAFE11FFFF0028|- rs2_h1_val == 65279<br> - rs1_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001470]:UKADD16 t6, t5, t4<br> [0x80001474]:sd t6, 912(t0)<br>   |
|  77|[0x800036d0]<br>0xFFFFFF0EFFFF8011|- rs1_h2_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014ac]:UKADD16 t6, t5, t4<br> [0x800014b0]:sd t6, 928(t0)<br>   |
|  78|[0x800036e0]<br>0xFFFFFFFFAAB30180|- rs2_h1_val == 43690<br> - rs1_h2_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800014e0]:UKADD16 t6, t5, t4<br> [0x800014e4]:sd t6, 944(t0)<br>   |
|  79|[0x800036f0]<br>0xFFFF00320408FFFF|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000151c]:UKADD16 t6, t5, t4<br> [0x80001520]:sd t6, 960(t0)<br>   |
|  80|[0x80003700]<br>0xE0014008FFFF0140|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001550]:UKADD16 t6, t5, t4<br> [0x80001554]:sd t6, 976(t0)<br>   |
|  81|[0x80003710]<br>0xFFFFFFFF0400001B|- rs1_h2_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001588]:UKADD16 t6, t5, t4<br> [0x8000158c]:sd t6, 992(t0)<br>   |
|  82|[0x80003720]<br>0x0103FFFFFFFFAAB2|- rs2_h2_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800015c0]:UKADD16 t6, t5, t4<br> [0x800015c4]:sd t6, 1008(t0)<br>  |
|  83|[0x80003730]<br>0xFFFFFFFF0014C00B|- rs2_h2_val == 65407<br> - rs1_h2_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800015f8]:UKADD16 t6, t5, t4<br> [0x800015fc]:sd t6, 1024(t0)<br>  |
|  84|[0x80003750]<br>0xFFEC0017F00FFDFF|- rs2_h1_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000165c]:UKADD16 t6, t5, t4<br> [0x80001660]:sd t6, 1056(t0)<br>  |
|  85|[0x80003760]<br>0x001A000DFC0FFFFB|- rs2_h1_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001690]:UKADD16 t6, t5, t4<br> [0x80001694]:sd t6, 1072(t0)<br>  |
|  86|[0x80003770]<br>0xFE0BFFFF400B0013|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800016c4]:UKADD16 t6, t5, t4<br> [0x800016c8]:sd t6, 1088(t0)<br>  |
|  87|[0x80003780]<br>0x801FFF862013C00F|- rs2_h1_val == 8192<br> - rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001704]:UKADD16 t6, t5, t4<br> [0x80001708]:sd t6, 1104(t0)<br>  |
|  88|[0x80003790]<br>0x0013FFFFFFFFFFFF|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001738]:UKADD16 t6, t5, t4<br> [0x8000173c]:sd t6, 1120(t0)<br>  |
|  89|[0x800037a0]<br>0x200AFFFFF808FFFF|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001774]:UKADD16 t6, t5, t4<br> [0x80001778]:sd t6, 1136(t0)<br>  |
|  90|[0x800037b0]<br>0xFFFFF00D0017F808|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800017b0]:UKADD16 t6, t5, t4<br> [0x800017b4]:sd t6, 1152(t0)<br>  |
|  91|[0x800037c0]<br>0x0014FFFFFFFFFFFF|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017ec]:UKADD16 t6, t5, t4<br> [0x800017f0]:sd t6, 1168(t0)<br>  |
|  92|[0x800037d0]<br>0x000CF00DAAAAFFFF|- rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001828]:UKADD16 t6, t5, t4<br> [0x8000182c]:sd t6, 1184(t0)<br>  |
|  93|[0x800037f0]<br>0x000FFFFF0280F001|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018a0]:UKADD16 t6, t5, t4<br> [0x800018a4]:sd t6, 1216(t0)<br>  |
|  94|[0x80003800]<br>0x0008C010FF8C0018|- rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018d8]:UKADD16 t6, t5, t4<br> [0x800018dc]:sd t6, 1232(t0)<br>  |
|  95|[0x80003810]<br>0x020AFFFBFFF30209|- rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001914]:UKADD16 t6, t5, t4<br> [0x80001918]:sd t6, 1248(t0)<br>  |
|  96|[0x80003820]<br>0xFFFFFFFF00404013|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001940]:UKADD16 t6, t5, t4<br> [0x80001944]:sd t6, 1264(t0)<br>  |
|  97|[0x80003830]<br>0x00120022C003FFFF|- rs2_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001974]:UKADD16 t6, t5, t4<br> [0x80001978]:sd t6, 1280(t0)<br>  |
|  98|[0x80003840]<br>0xC0000200FFFF004B|- rs2_h1_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800019b0]:UKADD16 t6, t5, t4<br> [0x800019b4]:sd t6, 1296(t0)<br>  |
|  99|[0x80003850]<br>0xFFFFFCFFFFD11006|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800019e8]:UKADD16 t6, t5, t4<br> [0x800019ec]:sd t6, 1312(t0)<br>  |
