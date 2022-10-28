
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a90')]      |
| SIG_REGION                | [('0x80003210', '0x80003880', '206 dwords')]      |
| COV_LABELS                | uksub16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uksub16-01.S    |
| Total Number of coverpoints| 404     |
| Total Coverpoints Hit     | 398      |
| Total Signature Updates   | 206      |
| STAT1                     | 99      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 103     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001938]:UKSUB16 t6, t5, t4
      [0x8000193c]:sd t6, 1232(ra)
 -- Signature Address: 0x80003810 Data: 0x0000FCFF00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 2
      - rs2_h2_val == 256
      - rs2_h1_val == 65407
      - rs2_h0_val == 65407
      - rs1_h3_val == 0
      - rs1_h2_val == 65023
      - rs1_h1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a14]:UKSUB16 t6, t5, t4
      [0x80001a18]:sd t6, 1296(ra)
 -- Signature Address: 0x80003850 Data: 0x0000000003FBFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 43690
      - rs2_h2_val == 57343
      - rs1_h3_val == 4096
      - rs1_h2_val == 8192
      - rs1_h1_val == 1024
      - rs1_h0_val == 65531




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a44]:UKSUB16 t6, t5, t4
      [0x80001a48]:sd t6, 1312(ra)
 -- Signature Address: 0x80003860 Data: 0x0002000000000080
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h3_val == 65533
      - rs2_h1_val == 49151
      - rs2_h0_val == 0
      - rs1_h3_val == 65535
      - rs1_h2_val == 1
      - rs1_h1_val == 32
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a80]:UKSUB16 t6, t5, t4
      [0x80001a84]:sd t6, 1328(ra)
 -- Signature Address: 0x80003870 Data: 0x7FC00000FFF00000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 64
      - rs2_h2_val == 1024
      - rs2_h0_val == 65471
      - rs1_h3_val == 32768
      - rs1_h2_val == 32
      - rs1_h1_val == 65535
      - rs1_h0_val == 64






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksub16', 'rs1 : x23', 'rs2 : x23', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 4', 'rs2_h1_val == 61439', 'rs1_h3_val == 21845', 'rs1_h2_val == 4', 'rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x800003d0]:UKSUB16 t0, s7, s7
	-[0x800003d4]:sd t0, 0(s1)
Current Store : [0x800003d8] : sd s7, 8(s1) -- Store: [0x80003218]:0x55550004EFFF000A




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs2_h2_val == 57343', 'rs2_h1_val == 512', 'rs2_h0_val == 4', 'rs1_h2_val == 57343', 'rs1_h1_val == 512', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000404]:UKSUB16 s11, s11, s11
	-[0x80000408]:sd s11, 16(s1)
Current Store : [0x8000040c] : sd s11, 24(s1) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x1', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == 1', 'rs2_h1_val == 57343', 'rs2_h0_val == 4096', 'rs1_h3_val == 4', 'rs1_h2_val == 1', 'rs1_h1_val == 21845', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x8000043c]:UKSUB16 ra, fp, s5
	-[0x80000440]:sd ra, 32(s1)
Current Store : [0x80000444] : sd fp, 40(s1) -- Store: [0x80003238]:0x000400015555EFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x29', 'rs1 == rd != rs2', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 64511', 'rs2_h1_val == 65503', 'rs2_h0_val == 32768', 'rs1_h3_val == 16', 'rs1_h1_val == 65503', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000474]:UKSUB16 t4, t4, s2
	-[0x80000478]:sd t4, 48(s1)
Current Store : [0x8000047c] : sd t4, 56(s1) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs2_h2_val == 65533', 'rs2_h1_val == 65531', 'rs1_h1_val == 1', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x800004a8]:UKSUB16 sp, t1, sp
	-[0x800004ac]:sd sp, 64(s1)
Current Store : [0x800004b0] : sd t1, 72(s1) -- Store: [0x80003258]:0x000C000C00018000




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x15', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 4096', 'rs1_h2_val == 8192', 'rs1_h1_val == 1024', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800004e4]:UKSUB16 a5, t2, zero
	-[0x800004e8]:sd a5, 80(s1)
Current Store : [0x800004ec] : sd t2, 88(s1) -- Store: [0x80003268]:0x100020000400FFFB




Last Coverpoint : ['rs1 : x3', 'rs2 : x1', 'rd : x31', 'rs2_h3_val == 32767', 'rs2_h2_val == 8192', 'rs2_h0_val == 16384', 'rs1_h3_val == 65503', 'rs1_h2_val == 65527', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x8000051c]:UKSUB16 t6, gp, ra
	-[0x80000520]:sd t6, 96(s1)
Current Store : [0x80000524] : sd gp, 104(s1) -- Store: [0x80003278]:0xFFDFFFF7FFFD000D




Last Coverpoint : ['rs1 : x10', 'rs2 : x17', 'rd : x12', 'rs2_h3_val == 49151', 'rs2_h2_val == 61439', 'rs2_h1_val == 1024', 'rs2_h0_val == 128', 'rs1_h2_val == 43690', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000558]:UKSUB16 a2, a0, a7
	-[0x8000055c]:sd a2, 112(s1)
Current Store : [0x80000560] : sd a0, 120(s1) -- Store: [0x80003288]:0x0012AAAA0008000C




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x24', 'rs2_h3_val == 57343', 'rs2_h2_val == 65535', 'rs2_h1_val == 65535', 'rs2_h0_val == 65279', 'rs1_h3_val == 16384', 'rs1_h2_val == 512', 'rs1_h1_val == 65527', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000588]:UKSUB16 s8, t0, t2
	-[0x8000058c]:sd s8, 128(s1)
Current Store : [0x80000590] : sd t0, 136(s1) -- Store: [0x80003298]:0x40000200FFF70100




Last Coverpoint : ['rs1 : x20', 'rs2 : x3', 'rd : x26', 'rs2_h3_val == 61439', 'rs2_h2_val == 128', 'rs2_h1_val == 49151', 'rs2_h0_val == 32767', 'rs1_h3_val == 65279', 'rs1_h2_val == 63487']
Last Code Sequence : 
	-[0x800005c4]:UKSUB16 s10, s4, gp
	-[0x800005c8]:sd s10, 144(s1)
Current Store : [0x800005cc] : sd s4, 152(s1) -- Store: [0x800032a8]:0xFEFFF7FF0008EFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x4', 'rd : x20', 'rs2_h3_val == 63487', 'rs2_h1_val == 4', 'rs1_h3_val == 61439', 'rs1_h2_val == 32767', 'rs1_h1_val == 65535', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x800005fc]:UKSUB16 s4, ra, tp
	-[0x80000600]:sd s4, 160(s1)
Current Store : [0x80000604] : sd ra, 168(s1) -- Store: [0x800032b8]:0xEFFF7FFFFFFFAAAA




Last Coverpoint : ['rs1 : x21', 'rs2 : x25', 'rd : x18', 'rs2_h3_val == 65023', 'rs2_h1_val == 43690', 'rs2_h0_val == 1', 'rs1_h3_val == 32', 'rs1_h2_val == 128', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000638]:UKSUB16 s2, s5, s9
	-[0x8000063c]:sd s2, 176(s1)
Current Store : [0x80000640] : sd s5, 184(s1) -- Store: [0x800032c8]:0x002000800003FFFD




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rd : x23', 'rs2_h3_val == 65279', 'rs2_h1_val == 65023', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80000668]:UKSUB16 s7, tp, t3
	-[0x8000066c]:sd s7, 192(s1)
Current Store : [0x80000670] : sd tp, 200(s1) -- Store: [0x800032d8]:0x0006002002000011




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x11', 'rs2_h3_val == 65407', 'rs2_h1_val == 65471', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x800006a0]:UKSUB16 a1, s6, a0
	-[0x800006a4]:sd a1, 208(s1)
Current Store : [0x800006a8] : sd s6, 216(s1) -- Store: [0x800032e8]:0x000E0400000E0012




Last Coverpoint : ['rs1 : x13', 'rs2 : x15', 'rd : x6', 'rs2_h3_val == 65471', 'rs1_h2_val == 32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800006dc]:UKSUB16 t1, a3, a5
	-[0x800006e0]:sd t1, 224(s1)
Current Store : [0x800006e4] : sd a3, 232(s1) -- Store: [0x800032f8]:0x4000800000050008




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x28', 'rs2_h3_val == 65503', 'rs1_h3_val == 65519', 'rs1_h2_val == 64511']
Last Code Sequence : 
	-[0x80000718]:UKSUB16 t3, s2, t0
	-[0x8000071c]:sd t3, 240(s1)
Current Store : [0x80000720] : sd s2, 248(s1) -- Store: [0x80003308]:0xFFEFFBFF000E0013




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x10', 'rs2_h3_val == 65519', 'rs1_h2_val == 65519', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000748]:UKSUB16 a0, t6, s6
	-[0x8000074c]:sd a0, 256(s1)
Current Store : [0x80000750] : sd t6, 264(s1) -- Store: [0x80003318]:0x000DFFEF01000006




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x13', 'rs2_h3_val == 65527', 'rs2_h2_val == 4096', 'rs2_h1_val == 128', 'rs1_h3_val == 2048', 'rs1_h2_val == 8', 'rs1_h1_val == 63487', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000778]:UKSUB16 a3, s8, a2
	-[0x8000077c]:sd a3, 272(s1)
Current Store : [0x80000780] : sd s8, 280(s1) -- Store: [0x80003328]:0x08000008F7FFFFFE




Last Coverpoint : ['rs1 : x19', 'rs2 : x11', 'rd : x21', 'rs2_h3_val == 65531', 'rs2_h0_val == 65519', 'rs1_h3_val == 65407', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800007b4]:UKSUB16 s5, s3, a1
	-[0x800007b8]:sd s5, 288(s1)
Current Store : [0x800007bc] : sd s3, 296(s1) -- Store: [0x80003338]:0xFF7F0009FFDF0002




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x0', 'rs2_h3_val == 65533', 'rs1_h3_val == 65535', 'rs1_h1_val == 32', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800007ec]:UKSUB16 zero, a7, s1
	-[0x800007f0]:sd zero, 0(ra)
Current Store : [0x800007f4] : sd a7, 8(ra) -- Store: [0x80003348]:0xFFFF000100200080




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x14', 'rs2_h3_val == 65534', 'rs2_h2_val == 32768', 'rs2_h1_val == 65533', 'rs2_h0_val == 8', 'rs1_h3_val == 65527']
Last Code Sequence : 
	-[0x80000828]:UKSUB16 a4, sp, a6
	-[0x8000082c]:sd a4, 16(ra)
Current Store : [0x80000830] : sd sp, 24(ra) -- Store: [0x80003358]:0xFFF7000D55550005




Last Coverpoint : ['rs1 : x26', 'rs2 : x14', 'rd : x3', 'rs2_h3_val == 32768', 'rs1_h2_val == 64', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000854]:UKSUB16 gp, s10, a4
	-[0x80000858]:sd gp, 32(ra)
Current Store : [0x8000085c] : sd s10, 40(ra) -- Store: [0x80003368]:0xFF7F00400800000A




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x30', 'rs2_h3_val == 16384', 'rs2_h2_val == 65471', 'rs2_h0_val == 65407', 'rs1_h3_val == 128', 'rs1_h2_val == 65534', 'rs1_h1_val == 65407', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000890]:UKSUB16 t5, a1, s3
	-[0x80000894]:sd t5, 48(ra)
Current Store : [0x80000898] : sd a1, 56(ra) -- Store: [0x80003378]:0x0080FFFEFF7F0200




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x8', 'rs2_h3_val == 8192', 'rs2_h2_val == 65023']
Last Code Sequence : 
	-[0x800008d0]:UKSUB16 fp, a2, t6
	-[0x800008d4]:sd fp, 64(ra)
Current Store : [0x800008d8] : sd a2, 72(ra) -- Store: [0x80003388]:0x0013000F00110009




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x7', 'rs2_h3_val == 4096', 'rs2_h2_val == 64511', 'rs2_h1_val == 65534', 'rs1_h2_val == 2048', 'rs1_h1_val == 0', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000908]:UKSUB16 t2, s1, s4
	-[0x8000090c]:sd t2, 80(ra)
Current Store : [0x80000910] : sd s1, 88(ra) -- Store: [0x80003398]:0x0010080000000800




Last Coverpoint : ['rs1 : x14', 'rs2 : x8', 'rd : x4', 'rs2_h3_val == 2048', 'rs2_h2_val == 32', 'rs2_h1_val == 63487', 'rs1_h3_val == 32768', 'rs1_h2_val == 256', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000948]:UKSUB16 tp, a4, fp
	-[0x8000094c]:sd tp, 96(ra)
Current Store : [0x80000950] : sd a4, 104(ra) -- Store: [0x800033a8]:0x80000100FF7FFBFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x29', 'rd : x17', 'rs2_h3_val == 1024', 'rs1_h3_val == 1024', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000984]:UKSUB16 a7, t5, t4
	-[0x80000988]:sd a7, 112(ra)
Current Store : [0x8000098c] : sd t5, 120(ra) -- Store: [0x800033b8]:0x040000070010FFFD




Last Coverpoint : ['rs1 : x28', 'rs2 : x24', 'rd : x22', 'rs2_h3_val == 512', 'rs2_h2_val == 16384', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800009c0]:UKSUB16 s6, t3, s8
	-[0x800009c4]:sd s6, 128(ra)
Current Store : [0x800009c8] : sd t3, 136(ra) -- Store: [0x800033c8]:0x000CAAAA00060012




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x9', 'rs2_h3_val == 256', 'rs2_h0_val == 8192', 'rs1_h3_val == 8192', 'rs1_h2_val == 16384', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x800009f8]:UKSUB16 s1, s9, t1
	-[0x800009fc]:sd s1, 144(ra)
Current Store : [0x80000a00] : sd s9, 152(ra) -- Store: [0x800033d8]:0x20004000FFBFEFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x19', 'rs2_h3_val == 128', 'rs2_h0_val == 64511']
Last Code Sequence : 
	-[0x80000a30]:UKSUB16 s3, a6, t5
	-[0x80000a34]:sd s3, 160(ra)
Current Store : [0x80000a38] : sd a6, 168(ra) -- Store: [0x800033e8]:0xFEFFAAAAFFDF0006




Last Coverpoint : ['rs1 : x0', 'rs2 : x13', 'rd : x25', 'rs1_h0_val == 0', 'rs2_h3_val == 64', 'rs2_h2_val == 1024', 'rs2_h0_val == 65471', 'rs1_h3_val == 0', 'rs1_h2_val == 0']
Last Code Sequence : 
	-[0x80000a6c]:UKSUB16 s9, zero, a3
	-[0x80000a70]:sd s9, 176(ra)
Current Store : [0x80000a74] : sd zero, 184(ra) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x16', 'rs2_h3_val == 32', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80000aa8]:UKSUB16 a6, a5, s10
	-[0x80000aac]:sd a6, 192(ra)
Current Store : [0x80000ab0] : sd a5, 200(ra) -- Store: [0x80003408]:0x0001DFFF000AFFFD




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h0_val == 65533', 'rs1_h2_val == 4096', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000adc]:UKSUB16 t6, t5, t4
	-[0x80000ae0]:sd t6, 208(ra)
Current Store : [0x80000ae4] : sd t5, 216(ra) -- Store: [0x80003418]:0xFFDF10000012FFFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == 64', 'rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x80000b10]:UKSUB16 t6, t5, t4
	-[0x80000b14]:sd t6, 224(ra)
Current Store : [0x80000b18] : sd t5, 232(ra) -- Store: [0x80003428]:0x20000040FDFF000D




Last Coverpoint : ['rs2_h2_val == 49151', 'rs2_h0_val == 65023', 'rs1_h3_val == 8', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000b4c]:UKSUB16 t6, t5, t4
	-[0x80000b50]:sd t6, 240(ra)
Current Store : [0x80000b54] : sd t5, 248(ra) -- Store: [0x80003438]:0x0008000B00040011




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h1_val == 2', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000b88]:UKSUB16 t6, t5, t4
	-[0x80000b8c]:sd t6, 256(ra)
Current Store : [0x80000b90] : sd t5, 264(ra) -- Store: [0x80003448]:0x000AFBFF0002FFEF




Last Coverpoint : ['rs2_h3_val == 43690', 'rs2_h2_val == 32767', 'rs2_h0_val == 2048', 'rs1_h3_val == 65023', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000bc4]:UKSUB16 t6, t5, t4
	-[0x80000bc8]:sd t6, 272(ra)
Current Store : [0x80000bcc] : sd t5, 280(ra) -- Store: [0x80003458]:0xFDFF000DFFDF5555




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000c00]:UKSUB16 t6, t5, t4
	-[0x80000c04]:sd t6, 288(ra)
Current Store : [0x80000c08] : sd t5, 296(ra) -- Store: [0x80003468]:0x000BFFF7000DBFFF




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h2_val == 65471', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000c34]:UKSUB16 t6, t5, t4
	-[0x80000c38]:sd t6, 304(ra)
Current Store : [0x80000c3c] : sd t5, 312(ra) -- Store: [0x80003478]:0x0003FFBFF7FFDFFF




Last Coverpoint : ['rs1_h3_val == 65534', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000c70]:UKSUB16 t6, t5, t4
	-[0x80000c74]:sd t6, 320(ra)
Current Store : [0x80000c78] : sd t5, 328(ra) -- Store: [0x80003488]:0xFFFE00060400F7FF




Last Coverpoint : ['rs2_h2_val == 63487', 'rs1_h2_val == 65407', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000cac]:UKSUB16 t6, t5, t4
	-[0x80000cb0]:sd t6, 336(ra)
Current Store : [0x80000cb4] : sd t5, 344(ra) -- Store: [0x80003498]:0x1000FF7FEFFFFDFF




Last Coverpoint : ['rs2_h1_val == 65407', 'rs2_h0_val == 65503', 'rs1_h3_val == 65471', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000ce8]:UKSUB16 t6, t5, t4
	-[0x80000cec]:sd t6, 352(ra)
Current Store : [0x80000cf0] : sd t5, 360(ra) -- Store: [0x800034a8]:0xFFBF00070100FEFF




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h1_val == 57343', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000d1c]:UKSUB16 t6, t5, t4
	-[0x80000d20]:sd t6, 368(ra)
Current Store : [0x80000d24] : sd t5, 376(ra) -- Store: [0x800034b8]:0x00110003DFFFFF7F




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000d58]:UKSUB16 t6, t5, t4
	-[0x80000d5c]:sd t6, 384(ra)
Current Store : [0x80000d60] : sd t5, 392(ra) -- Store: [0x800034c8]:0x000B000D0009FFBF




Last Coverpoint : ['rs1_h2_val == 49151', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000d88]:UKSUB16 t6, t5, t4
	-[0x80000d8c]:sd t6, 400(ra)
Current Store : [0x80000d90] : sd t5, 408(ra) -- Store: [0x800034d8]:0xFEFFBFFFDFFFFFDF




Last Coverpoint : ['rs1_h2_val == 61439', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000dcc]:UKSUB16 t6, t5, t4
	-[0x80000dd0]:sd t6, 416(ra)
Current Store : [0x80000dd4] : sd t5, 424(ra) -- Store: [0x800034e8]:0x1000EFFF5555FFF7




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 32', 'rs1_h1_val == 65531', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000e04]:UKSUB16 t6, t5, t4
	-[0x80000e08]:sd t6, 432(ra)
Current Store : [0x80000e0c] : sd t5, 440(ra) -- Store: [0x800034f8]:0x20004000FFFB4000




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000e34]:UKSUB16 t6, t5, t4
	-[0x80000e38]:sd t6, 448(ra)
Current Store : [0x80000e3c] : sd t5, 456(ra) -- Store: [0x80003508]:0xFDFF0001000B2000




Last Coverpoint : ['rs1_h3_val == 65533', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000e6c]:UKSUB16 t6, t5, t4
	-[0x80000e70]:sd t6, 464(ra)
Current Store : [0x80000e74] : sd t5, 472(ra) -- Store: [0x80003518]:0xFFFD000500111000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000ea0]:UKSUB16 t6, t5, t4
	-[0x80000ea4]:sd t6, 480(ra)
Current Store : [0x80000ea8] : sd t5, 488(ra) -- Store: [0x80003528]:0xFFBF004001000400




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000ed4]:UKSUB16 t6, t5, t4
	-[0x80000ed8]:sd t6, 496(ra)
Current Store : [0x80000edc] : sd t5, 504(ra) -- Store: [0x80003538]:0x000AFFBF04000020




Last Coverpoint : ['rs2_h0_val == 65531', 'rs1_h2_val == 16', 'rs1_h1_val == 32767', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000f10]:UKSUB16 t6, t5, t4
	-[0x80000f14]:sd t6, 512(ra)
Current Store : [0x80000f18] : sd t5, 520(ra) -- Store: [0x80003548]:0x000800107FFF0010




Last Coverpoint : ['rs2_h2_val == 256']
Last Code Sequence : 
	-[0x80000f44]:UKSUB16 t6, t5, t4
	-[0x80000f48]:sd t6, 528(ra)
Current Store : [0x80000f4c] : sd t5, 536(ra) -- Store: [0x80003558]:0x4000200000020004




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 65519', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000f80]:UKSUB16 t6, t5, t4
	-[0x80000f84]:sd t6, 544(ra)
Current Store : [0x80000f88] : sd t5, 552(ra) -- Store: [0x80003568]:0xFFFEAAAA0040FEFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == 32', 'rs1_h3_val == 49151']
Last Code Sequence : 
	-[0x80000fc4]:UKSUB16 t6, t5, t4
	-[0x80000fc8]:sd t6, 560(ra)
Current Store : [0x80000fcc] : sd t5, 568(ra) -- Store: [0x80003578]:0xBFFF000CDFFFAAAA




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 65531', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000ffc]:UKSUB16 t6, t5, t4
	-[0x80001000]:sd t6, 576(ra)
Current Store : [0x80001004] : sd t5, 584(ra) -- Store: [0x80003588]:0x0005DFFF0002000C




Last Coverpoint : ['rs2_h3_val == 65535']
Last Code Sequence : 
	-[0x8000102c]:UKSUB16 t6, t5, t4
	-[0x80001030]:sd t6, 592(ra)
Current Store : [0x80001034] : sd t5, 600(ra) -- Store: [0x80003598]:0x000E000B08004000




Last Coverpoint : ['rs2_h2_val == 65503', 'rs1_h3_val == 63487']
Last Code Sequence : 
	-[0x80001068]:UKSUB16 t6, t5, t4
	-[0x8000106c]:sd t6, 608(ra)
Current Store : [0x80001070] : sd t5, 616(ra) -- Store: [0x800035a8]:0xF7FFEFFF55550013




Last Coverpoint : ['rs2_h2_val == 43690', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x800010ac]:UKSUB16 t6, t5, t4
	-[0x800010b0]:sd t6, 624(ra)
Current Store : [0x800010b4] : sd t5, 632(ra) -- Store: [0x800035b8]:0x40000200BFFFEFFF




Last Coverpoint : ['rs2_h0_val == 65527']
Last Code Sequence : 
	-[0x800010e8]:UKSUB16 t6, t5, t4
	-[0x800010ec]:sd t6, 640(ra)
Current Store : [0x800010f0] : sd t5, 648(ra) -- Store: [0x800035c8]:0x10000040000D0010




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == 65534', 'rs1_h1_val == 32768', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000111c]:UKSUB16 t6, t5, t4
	-[0x80001120]:sd t6, 656(ra)
Current Store : [0x80001124] : sd t5, 664(ra) -- Store: [0x800035d8]:0x000D010080000040




Last Coverpoint : ['rs2_h1_val == 64511', 'rs2_h0_val == 1024', 'rs1_h2_val == 65533']
Last Code Sequence : 
	-[0x80001158]:UKSUB16 t6, t5, t4
	-[0x8000115c]:sd t6, 672(ra)
Current Store : [0x80001160] : sd t5, 680(ra) -- Store: [0x800035e8]:0x0007FFFD00070400




Last Coverpoint : ['rs2_h1_val == 65527', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001194]:UKSUB16 t6, t5, t4
	-[0x80001198]:sd t6, 688(ra)
Current Store : [0x8000119c] : sd t5, 696(ra) -- Store: [0x800035f8]:0x80000004000C0007




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h3_val == 2']
Last Code Sequence : 
	-[0x800011c8]:UKSUB16 t6, t5, t4
	-[0x800011cc]:sd t6, 704(ra)
Current Store : [0x800011d0] : sd t5, 712(ra) -- Store: [0x80003608]:0x00020010000D0080




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800011fc]:UKSUB16 t6, t5, t4
	-[0x80001200]:sd t6, 720(ra)
Current Store : [0x80001204] : sd t5, 728(ra) -- Store: [0x80003618]:0x1000000E00130400




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80001234]:UKSUB16 t6, t5, t4
	-[0x80001238]:sd t6, 736(ra)
Current Store : [0x8000123c] : sd t5, 744(ra) -- Store: [0x80003628]:0x00120012F7FF0000




Last Coverpoint : ['rs2_h2_val == 65534', 'rs2_h1_val == 65279', 'rs2_h0_val == 65535']
Last Code Sequence : 
	-[0x80001268]:UKSUB16 t6, t5, t4
	-[0x8000126c]:sd t6, 752(ra)
Current Store : [0x80001270] : sd t5, 760(ra) -- Store: [0x80003638]:0x000DAAAA0200FFFF




Last Coverpoint : ['rs1_h3_val == 43690']
Last Code Sequence : 
	-[0x800012a4]:UKSUB16 t6, t5, t4
	-[0x800012a8]:sd t6, 768(ra)
Current Store : [0x800012ac] : sd t5, 776(ra) -- Store: [0x80003648]:0xAAAA0000000E0007




Last Coverpoint : ['rs2_h2_val == 65407', 'rs1_h3_val == 32767', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x800012e4]:UKSUB16 t6, t5, t4
	-[0x800012e8]:sd t6, 784(ra)
Current Store : [0x800012ec] : sd t5, 792(ra) -- Store: [0x80003658]:0x7FFFFFF7FFEFFFBF




Last Coverpoint : ['rs1_h3_val == 64511']
Last Code Sequence : 
	-[0x80001320]:UKSUB16 t6, t5, t4
	-[0x80001324]:sd t6, 800(ra)
Current Store : [0x80001328] : sd t5, 808(ra) -- Store: [0x80003668]:0xFBFF200000010080




Last Coverpoint : ['rs1_h3_val == 65531']
Last Code Sequence : 
	-[0x8000135c]:UKSUB16 t6, t5, t4
	-[0x80001360]:sd t6, 816(ra)
Current Store : [0x80001364] : sd t5, 824(ra) -- Store: [0x80003678]:0xFFFB1000FDFF0011




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == 16384', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x800013a0]:UKSUB16 t6, t5, t4
	-[0x800013a4]:sd t6, 832(ra)
Current Store : [0x800013a8] : sd t5, 840(ra) -- Store: [0x80003688]:0xEFFF000BFBFFDFFF




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x800013d4]:UKSUB16 t6, t5, t4
	-[0x800013d8]:sd t6, 848(ra)
Current Store : [0x800013dc] : sd t5, 856(ra) -- Store: [0x80003698]:0x0200FBFF00070080




Last Coverpoint : ['rs1_h3_val == 256']
Last Code Sequence : 
	-[0x8000140c]:UKSUB16 t6, t5, t4
	-[0x80001410]:sd t6, 864(ra)
Current Store : [0x80001414] : sd t5, 872(ra) -- Store: [0x800036a8]:0x0100FF7FEFFF4000




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 65519']
Last Code Sequence : 
	-[0x80001448]:UKSUB16 t6, t5, t4
	-[0x8000144c]:sd t6, 880(ra)
Current Store : [0x80001450] : sd t5, 888(ra) -- Store: [0x800036b8]:0x000DBFFF0400FF7F




Last Coverpoint : ['rs1_h2_val == 65023']
Last Code Sequence : 
	-[0x80001484]:UKSUB16 t6, t5, t4
	-[0x80001488]:sd t6, 896(ra)
Current Store : [0x8000148c] : sd t5, 904(ra) -- Store: [0x800036c8]:0xFEFFFDFF00020011




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h0_val == 63487']
Last Code Sequence : 
	-[0x800014c0]:UKSUB16 t6, t5, t4
	-[0x800014c4]:sd t6, 912(ra)
Current Store : [0x800014c8] : sd t5, 920(ra) -- Store: [0x800036d8]:0xFFFF10007FFF0001




Last Coverpoint : ['rs1_h2_val == 65503']
Last Code Sequence : 
	-[0x800014fc]:UKSUB16 t6, t5, t4
	-[0x80001500]:sd t6, 928(ra)
Current Store : [0x80001504] : sd t5, 936(ra) -- Store: [0x800036e8]:0xEFFFFFDF00070006




Last Coverpoint : ['rs2_h2_val == 16', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x8000153c]:UKSUB16 t6, t5, t4
	-[0x80001540]:sd t6, 944(ra)
Current Store : [0x80001544] : sd t5, 952(ra) -- Store: [0x800036f8]:0x001255550004FEFF




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80001574]:UKSUB16 t6, t5, t4
	-[0x80001578]:sd t6, 960(ra)
Current Store : [0x8000157c] : sd t5, 968(ra) -- Store: [0x80003708]:0x0009FBFFFFFE000B




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800015b0]:UKSUB16 t6, t5, t4
	-[0x800015b4]:sd t6, 976(ra)
Current Store : [0x800015b8] : sd t5, 984(ra) -- Store: [0x80003718]:0x00080040AAAA0006




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x800015e8]:UKSUB16 t6, t5, t4
	-[0x800015ec]:sd t6, 992(ra)
Current Store : [0x800015f0] : sd t5, 1000(ra) -- Store: [0x80003728]:0x0013000300030011




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80001624]:UKSUB16 t6, t5, t4
	-[0x80001628]:sd t6, 1008(ra)
Current Store : [0x8000162c] : sd t5, 1016(ra) -- Store: [0x80003738]:0xFFFD0002FFFF0004




Last Coverpoint : ['rs1_h2_val == 65535']
Last Code Sequence : 
	-[0x80001660]:UKSUB16 t6, t5, t4
	-[0x80001664]:sd t6, 1024(ra)
Current Store : [0x80001668] : sd t5, 1032(ra) -- Store: [0x80003748]:0xEFFFFFFFBFFF0080




Last Coverpoint : ['rs2_h1_val == 32768']
Last Code Sequence : 
	-[0x80001694]:UKSUB16 t6, t5, t4
	-[0x80001698]:sd t6, 1040(ra)
Current Store : [0x8000169c] : sd t5, 1048(ra) -- Store: [0x80003758]:0x00057FFF0800DFFF




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x800016c8]:UKSUB16 t6, t5, t4
	-[0x800016cc]:sd t6, 1056(ra)
Current Store : [0x800016d0] : sd t5, 1064(ra) -- Store: [0x80003768]:0x0008EFFF000D000D




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h3_val == 57343']
Last Code Sequence : 
	-[0x80001704]:UKSUB16 t6, t5, t4
	-[0x80001708]:sd t6, 1072(ra)
Current Store : [0x8000170c] : sd t5, 1080(ra) -- Store: [0x80003778]:0xDFFFAAAADFFF0040




Last Coverpoint : ['rs2_h2_val == 65527']
Last Code Sequence : 
	-[0x80001738]:UKSUB16 t6, t5, t4
	-[0x8000173c]:sd t6, 1088(ra)
Current Store : [0x80001740] : sd t5, 1096(ra) -- Store: [0x80003788]:0x8000000CFFFFFEFF




Last Coverpoint : ['rs2_h0_val == 49151', 'rs1_h1_val == 65279']
Last Code Sequence : 
	-[0x8000176c]:UKSUB16 t6, t5, t4
	-[0x80001770]:sd t6, 1104(ra)
Current Store : [0x80001774] : sd t5, 1112(ra) -- Store: [0x80003798]:0xFFFFFF7FFEFF000E




Last Coverpoint : ['rs1_h3_val == 64']
Last Code Sequence : 
	-[0x800017a8]:UKSUB16 t6, t5, t4
	-[0x800017ac]:sd t6, 1120(ra)
Current Store : [0x800017b0] : sd t5, 1128(ra) -- Store: [0x800037a8]:0x0040F7FF000EFDFF




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800017e8]:UKSUB16 t6, t5, t4
	-[0x800017ec]:sd t6, 1136(ra)
Current Store : [0x800017f0] : sd t5, 1144(ra) -- Store: [0x800037b8]:0x8000FFFE40008000




Last Coverpoint : ['rs2_h0_val == 43690']
Last Code Sequence : 
	-[0x80001820]:UKSUB16 t6, t5, t4
	-[0x80001824]:sd t6, 1152(ra)
Current Store : [0x80001828] : sd t5, 1160(ra) -- Store: [0x800037c8]:0x00010005FFFF0009




Last Coverpoint : ['rs2_h0_val == 61439', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000185c]:UKSUB16 t6, t5, t4
	-[0x80001860]:sd t6, 1168(ra)
Current Store : [0x80001864] : sd t5, 1176(ra) -- Store: [0x800037d8]:0x0006FFFD2000FF7F




Last Coverpoint : ['rs2_h2_val == 65279']
Last Code Sequence : 
	-[0x80001894]:UKSUB16 t6, t5, t4
	-[0x80001898]:sd t6, 1184(ra)
Current Store : [0x8000189c] : sd t5, 1192(ra) -- Store: [0x800037e8]:0x0012EFFF000B4000




Last Coverpoint : ['rs2_h0_val == 57343']
Last Code Sequence : 
	-[0x800018d0]:UKSUB16 t6, t5, t4
	-[0x800018d4]:sd t6, 1200(ra)
Current Store : [0x800018d8] : sd t5, 1208(ra) -- Store: [0x800037f8]:0x00204000AAAA0012




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x8000190c]:UKSUB16 t6, t5, t4
	-[0x80001910]:sd t6, 1216(ra)
Current Store : [0x80001914] : sd t5, 1224(ra) -- Store: [0x80003808]:0x800000110080FFFE




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 2', 'rs2_h2_val == 256', 'rs2_h1_val == 65407', 'rs2_h0_val == 65407', 'rs1_h3_val == 0', 'rs1_h2_val == 65023', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80001938]:UKSUB16 t6, t5, t4
	-[0x8000193c]:sd t6, 1232(ra)
Current Store : [0x80001940] : sd t5, 1240(ra) -- Store: [0x80003818]:0x0000FDFF04000009




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000196c]:UKSUB16 t6, t5, t4
	-[0x80001970]:sd t6, 1248(ra)
Current Store : [0x80001974] : sd t5, 1256(ra) -- Store: [0x80003828]:0x000C100010000008




Last Coverpoint : ['rs1_h2_val == 65531']
Last Code Sequence : 
	-[0x800019a4]:UKSUB16 t6, t5, t4
	-[0x800019a8]:sd t6, 1264(ra)
Current Store : [0x800019ac] : sd t5, 1272(ra) -- Store: [0x80003838]:0x5555FFFB00000000




Last Coverpoint : ['rs1_h2_val == 65279', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800019d8]:UKSUB16 t6, t5, t4
	-[0x800019dc]:sd t6, 1280(ra)
Current Store : [0x800019e0] : sd t5, 1288(ra) -- Store: [0x80003848]:0xDFFFFEFFFFFB7FFF




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 43690', 'rs2_h2_val == 57343', 'rs1_h3_val == 4096', 'rs1_h2_val == 8192', 'rs1_h1_val == 1024', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80001a14]:UKSUB16 t6, t5, t4
	-[0x80001a18]:sd t6, 1296(ra)
Current Store : [0x80001a1c] : sd t5, 1304(ra) -- Store: [0x80003858]:0x100020000400FFFB




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 65533', 'rs2_h1_val == 49151', 'rs2_h0_val == 0', 'rs1_h3_val == 65535', 'rs1_h2_val == 1', 'rs1_h1_val == 32', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001a44]:UKSUB16 t6, t5, t4
	-[0x80001a48]:sd t6, 1312(ra)
Current Store : [0x80001a4c] : sd t5, 1320(ra) -- Store: [0x80003868]:0xFFFF000100200080




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h2_val == 1024', 'rs2_h0_val == 65471', 'rs1_h3_val == 32768', 'rs1_h2_val == 32', 'rs1_h1_val == 65535', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001a80]:UKSUB16 t6, t5, t4
	-[0x80001a84]:sd t6, 1328(ra)
Current Store : [0x80001a88] : sd t5, 1336(ra) -- Store: [0x80003878]:0x80000020FFFF0040





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

|s.no|            signature             |                                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                                             |                                 code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : uksub16<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 4<br> - rs2_h1_val == 61439<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 4<br> - rs1_h1_val == 61439<br> |[0x800003d0]:UKSUB16 t0, s7, s7<br> [0x800003d4]:sd t0, 0(s1)<br>      |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs2_h2_val == 57343<br> - rs2_h1_val == 512<br> - rs2_h0_val == 4<br> - rs1_h2_val == 57343<br> - rs1_h1_val == 512<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                               |[0x80000404]:UKSUB16 s11, s11, s11<br> [0x80000408]:sd s11, 16(s1)<br> |
|   3|[0x80003230]<br>0x000000000000DFFF|- rs1 : x8<br> - rs2 : x21<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == 1<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 4<br> - rs1_h2_val == 1<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 61439<br>                                                  |[0x8000043c]:UKSUB16 ra, fp, s5<br> [0x80000440]:sd ra, 32(s1)<br>     |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 64511<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 32768<br> - rs1_h3_val == 16<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                     |[0x80000474]:UKSUB16 t4, t4, s2<br> [0x80000478]:sd t4, 48(s1)<br>     |
|   5|[0x80003250]<br>0x0003000000000000|- rs1 : x6<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_h2_val == 65533<br> - rs2_h1_val == 65531<br> - rs1_h1_val == 1<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800004a8]:UKSUB16 sp, t1, sp<br> [0x800004ac]:sd sp, 64(s1)<br>     |
|   6|[0x80003260]<br>0x100020000400FFFB|- rs1 : x7<br> - rs2 : x0<br> - rd : x15<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                                                           |[0x800004e4]:UKSUB16 a5, t2, zero<br> [0x800004e8]:sd a5, 80(s1)<br>   |
|   7|[0x80003270]<br>0x7FE0DFF7001E0000|- rs1 : x3<br> - rs2 : x1<br> - rd : x31<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 65503<br> - rs1_h2_val == 65527<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                             |[0x8000051c]:UKSUB16 t6, gp, ra<br> [0x80000520]:sd t6, 96(s1)<br>     |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x17<br> - rd : x12<br> - rs2_h3_val == 49151<br> - rs2_h2_val == 61439<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 128<br> - rs1_h2_val == 43690<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000558]:UKSUB16 a2, a0, a7<br> [0x8000055c]:sd a2, 112(s1)<br>    |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x7<br> - rd : x24<br> - rs2_h3_val == 57343<br> - rs2_h2_val == 65535<br> - rs2_h1_val == 65535<br> - rs2_h0_val == 65279<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 512<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                            |[0x80000588]:UKSUB16 s8, t0, t2<br> [0x8000058c]:sd s8, 128(s1)<br>    |
|  10|[0x800032a0]<br>0x0F00F77F00007000|- rs1 : x20<br> - rs2 : x3<br> - rd : x26<br> - rs2_h3_val == 61439<br> - rs2_h2_val == 128<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 65279<br> - rs1_h2_val == 63487<br>                                                                                                                                                                                                                                                                                                                             |[0x800005c4]:UKSUB16 s10, s4, gp<br> [0x800005c8]:sd s10, 144(s1)<br>  |
|  11|[0x800032b0]<br>0x00007FF8FFFB6AAA|- rs1 : x1<br> - rs2 : x4<br> - rd : x20<br> - rs2_h3_val == 63487<br> - rs2_h1_val == 4<br> - rs1_h3_val == 61439<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                                |[0x800005fc]:UKSUB16 s4, ra, tp<br> [0x80000600]:sd s4, 160(s1)<br>    |
|  12|[0x800032c0]<br>0x000000000000FFFC|- rs1 : x21<br> - rs2 : x25<br> - rd : x18<br> - rs2_h3_val == 65023<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 1<br> - rs1_h3_val == 32<br> - rs1_h2_val == 128<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000638]:UKSUB16 s2, s5, s9<br> [0x8000063c]:sd s2, 176(s1)<br>    |
|  13|[0x800032d0]<br>0x0000001B00000000|- rs1 : x4<br> - rs2 : x28<br> - rd : x23<br> - rs2_h3_val == 65279<br> - rs2_h1_val == 65023<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000668]:UKSUB16 s7, tp, t3<br> [0x8000066c]:sd s7, 192(s1)<br>    |
|  14|[0x800032e0]<br>0x000003EE00000001|- rs1 : x22<br> - rs2 : x10<br> - rd : x11<br> - rs2_h3_val == 65407<br> - rs2_h1_val == 65471<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006a0]:UKSUB16 a1, s6, a0<br> [0x800006a4]:sd a1, 208(s1)<br>    |
|  15|[0x800032f0]<br>0x00007FF300000002|- rs1 : x13<br> - rs2 : x15<br> - rd : x6<br> - rs2_h3_val == 65471<br> - rs1_h2_val == 32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006dc]:UKSUB16 t1, a3, a5<br> [0x800006e0]:sd t1, 224(s1)<br>    |
|  16|[0x80003300]<br>0x0010FBEE00000002|- rs1 : x18<br> - rs2 : x5<br> - rd : x28<br> - rs2_h3_val == 65503<br> - rs1_h3_val == 65519<br> - rs1_h2_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000718]:UKSUB16 t3, s2, t0<br> [0x8000071c]:sd t3, 240(s1)<br>    |
|  17|[0x80003310]<br>0x0000DFEF00FD0000|- rs1 : x31<br> - rs2 : x22<br> - rd : x10<br> - rs2_h3_val == 65519<br> - rs1_h2_val == 65519<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000748]:UKSUB16 a0, t6, s6<br> [0x8000074c]:sd a0, 256(s1)<br>    |
|  18|[0x80003320]<br>0x00000000F77FFFF7|- rs1 : x24<br> - rs2 : x12<br> - rd : x13<br> - rs2_h3_val == 65527<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 128<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 8<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                        |[0x80000778]:UKSUB16 a3, s8, a2<br> [0x8000077c]:sd a3, 272(s1)<br>    |
|  19|[0x80003330]<br>0x00000000FFD30000|- rs1 : x19<br> - rs2 : x11<br> - rd : x21<br> - rs2_h3_val == 65531<br> - rs2_h0_val == 65519<br> - rs1_h3_val == 65407<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x800007b4]:UKSUB16 s5, s3, a1<br> [0x800007b8]:sd s5, 288(s1)<br>    |
|  20|[0x80003340]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x9<br> - rd : x0<br> - rs2_h3_val == 65533<br> - rs1_h3_val == 65535<br> - rs1_h1_val == 32<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x800007ec]:UKSUB16 zero, a7, s1<br> [0x800007f0]:sd zero, 0(ra)<br>  |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x16<br> - rd : x14<br> - rs2_h3_val == 65534<br> - rs2_h2_val == 32768<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 8<br> - rs1_h3_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000828]:UKSUB16 a4, sp, a6<br> [0x8000082c]:sd a4, 16(ra)<br>     |
|  22|[0x80003360]<br>0x7F7F000008000000|- rs1 : x26<br> - rs2 : x14<br> - rd : x3<br> - rs2_h3_val == 32768<br> - rs1_h2_val == 64<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000854]:UKSUB16 gp, s10, a4<br> [0x80000858]:sd gp, 32(ra)<br>    |
|  23|[0x80003370]<br>0x0000003F1F800000|- rs1 : x11<br> - rs2 : x19<br> - rd : x30<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 65471<br> - rs2_h0_val == 65407<br> - rs1_h3_val == 128<br> - rs1_h2_val == 65534<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                    |[0x80000890]:UKSUB16 t5, a1, s3<br> [0x80000894]:sd t5, 48(ra)<br>     |
|  24|[0x80003380]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x31<br> - rd : x8<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800008d0]:UKSUB16 fp, a2, t6<br> [0x800008d4]:sd fp, 64(ra)<br>     |
|  25|[0x80003390]<br>0x00000000000007F1|- rs1 : x9<br> - rs2 : x20<br> - rd : x7<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 64511<br> - rs2_h1_val == 65534<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 0<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000908]:UKSUB16 t2, s1, s4<br> [0x8000090c]:sd t2, 80(ra)<br>     |
|  26|[0x800033a0]<br>0x780000E00780FBF5|- rs1 : x14<br> - rs2 : x8<br> - rd : x4<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 32<br> - rs2_h1_val == 63487<br> - rs1_h3_val == 32768<br> - rs1_h2_val == 256<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000948]:UKSUB16 tp, a4, fp<br> [0x8000094c]:sd tp, 96(ra)<br>     |
|  27|[0x800033b0]<br>0x000000000007FFEE|- rs1 : x30<br> - rs2 : x29<br> - rd : x17<br> - rs2_h3_val == 1024<br> - rs1_h3_val == 1024<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000984]:UKSUB16 a7, t5, t4<br> [0x80000988]:sd a7, 112(ra)<br>    |
|  28|[0x800033c0]<br>0x00006AAA00050008|- rs1 : x28<br> - rs2 : x24<br> - rd : x22<br> - rs2_h3_val == 512<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800009c0]:UKSUB16 s6, t3, s8<br> [0x800009c4]:sd s6, 128(ra)<br>    |
|  29|[0x800033d0]<br>0x1F0000000000CFFF|- rs1 : x25<br> - rs2 : x6<br> - rd : x9<br> - rs2_h3_val == 256<br> - rs2_h0_val == 8192<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                          |[0x800009f8]:UKSUB16 s1, s9, t1<br> [0x800009fc]:sd s1, 144(ra)<br>    |
|  30|[0x800033e0]<br>0xFE7F2AAA00200000|- rs1 : x16<br> - rs2 : x30<br> - rd : x19<br> - rs2_h3_val == 128<br> - rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000a30]:UKSUB16 s3, a6, t5<br> [0x80000a34]:sd s3, 160(ra)<br>    |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x13<br> - rd : x25<br> - rs1_h0_val == 0<br> - rs2_h3_val == 64<br> - rs2_h2_val == 1024<br> - rs2_h0_val == 65471<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000a6c]:UKSUB16 s9, zero, a3<br> [0x80000a70]:sd s9, 176(ra)<br>  |
|  32|[0x80003400]<br>0x0000DFDF0000FFF9|- rs1 : x15<br> - rs2 : x26<br> - rd : x16<br> - rs2_h3_val == 32<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000aa8]:UKSUB16 a6, a5, s10<br> [0x80000aac]:sd a6, 192(ra)<br>   |
|  33|[0x80003410]<br>0xFFCF100000000002|- rs2_h3_val == 16<br> - rs2_h0_val == 65533<br> - rs1_h2_val == 4096<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000adc]:UKSUB16 t6, t5, t4<br> [0x80000ae0]:sd t6, 208(ra)<br>    |
|  34|[0x80003420]<br>0x1FF80000FDBF0000|- rs2_h3_val == 8<br> - rs2_h1_val == 64<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b10]:UKSUB16 t6, t5, t4<br> [0x80000b14]:sd t6, 224(ra)<br>    |
|  35|[0x80003430]<br>0x0000000000000000|- rs2_h2_val == 49151<br> - rs2_h0_val == 65023<br> - rs1_h3_val == 8<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b4c]:UKSUB16 t6, t5, t4<br> [0x80000b50]:sd t6, 240(ra)<br>    |
|  36|[0x80003440]<br>0x0000F3FF0000FFDC|- rs2_h2_val == 2048<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b88]:UKSUB16 t6, t5, t4<br> [0x80000b8c]:sd t6, 256(ra)<br>    |
|  37|[0x80003450]<br>0x5355000000004D55|- rs2_h3_val == 43690<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 65023<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000bc4]:UKSUB16 t6, t5, t4<br> [0x80000bc8]:sd t6, 272(ra)<br>    |
|  38|[0x80003460]<br>0x0006000000050000|- rs2_h1_val == 8<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c00]:UKSUB16 t6, t5, t4<br> [0x80000c04]:sd t6, 288(ra)<br>    |
|  39|[0x80003470]<br>0x0000FFBCD7FFDFF8|- rs2_h1_val == 8192<br> - rs1_h2_val == 65471<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c34]:UKSUB16 t6, t5, t4<br> [0x80000c38]:sd t6, 304(ra)<br>    |
|  40|[0x80003480]<br>0xFEFE000003F3F7FA|- rs1_h3_val == 65534<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c70]:UKSUB16 t6, t5, t4<br> [0x80000c74]:sd t6, 320(ra)<br>    |
|  41|[0x80003490]<br>0x0000078000007E00|- rs2_h2_val == 63487<br> - rs1_h2_val == 65407<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000cac]:UKSUB16 t6, t5, t4<br> [0x80000cb0]:sd t6, 336(ra)<br>    |
|  42|[0x800034a0]<br>0x0000000000000000|- rs2_h1_val == 65407<br> - rs2_h0_val == 65503<br> - rs1_h3_val == 65471<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ce8]:UKSUB16 t6, t5, t4<br> [0x80000cec]:sd t6, 352(ra)<br>    |
|  43|[0x800034b0]<br>0x000000008AAAFEFF|- rs2_h1_val == 21845<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d1c]:UKSUB16 t6, t5, t4<br> [0x80000d20]:sd t6, 368(ra)<br>    |
|  44|[0x800034c0]<br>0x000800040000FDBF|- rs2_h0_val == 512<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d58]:UKSUB16 t6, t5, t4<br> [0x80000d5c]:sd t6, 384(ra)<br>    |
|  45|[0x800034d0]<br>0xFEF30000000001E0|- rs1_h2_val == 49151<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d88]:UKSUB16 t6, t5, t4<br> [0x80000d8c]:sd t6, 400(ra)<br>    |
|  46|[0x800034e0]<br>0x0000EFEE0000FF77|- rs1_h2_val == 61439<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000dcc]:UKSUB16 t6, t5, t4<br> [0x80000dd0]:sd t6, 416(ra)<br>    |
|  47|[0x800034f0]<br>0x00003FF2FFF93FE0|- rs2_h1_val == 2<br> - rs2_h0_val == 32<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e04]:UKSUB16 t6, t5, t4<br> [0x80000e08]:sd t6, 432(ra)<br>    |
|  48|[0x80003500]<br>0x0000000000000000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e34]:UKSUB16 t6, t5, t4<br> [0x80000e38]:sd t6, 448(ra)<br>    |
|  49|[0x80003510]<br>0x000E000000000000|- rs1_h3_val == 65533<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e6c]:UKSUB16 t6, t5, t4<br> [0x80000e70]:sd t6, 464(ra)<br>    |
|  50|[0x80003520]<br>0xEFBF000000000000|- rs2_h0_val == 21845<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ea0]:UKSUB16 t6, t5, t4<br> [0x80000ea4]:sd t6, 480(ra)<br>    |
|  51|[0x80003530]<br>0x00001FC003FF0014|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ed4]:UKSUB16 t6, t5, t4<br> [0x80000ed8]:sd t6, 496(ra)<br>    |
|  52|[0x80003540]<br>0x000000007BFF0000|- rs2_h0_val == 65531<br> - rs1_h2_val == 16<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f10]:UKSUB16 t6, t5, t4<br> [0x80000f14]:sd t6, 512(ra)<br>    |
|  53|[0x80003550]<br>0x3F001F0000000000|- rs2_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f44]:UKSUB16 t6, t5, t4<br> [0x80000f48]:sd t6, 528(ra)<br>    |
|  54|[0x80003560]<br>0xFFFA0000003A0000|- rs2_h3_val == 4<br> - rs2_h2_val == 65519<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000f80]:UKSUB16 t6, t5, t4<br> [0x80000f84]:sd t6, 544(ra)<br>    |
|  55|[0x80003570]<br>0xBFFD0000DFDF0000|- rs2_h3_val == 2<br> - rs2_h1_val == 32<br> - rs1_h3_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000fc4]:UKSUB16 t6, t5, t4<br> [0x80000fc8]:sd t6, 560(ra)<br>    |
|  56|[0x80003580]<br>0x0004000000000000|- rs2_h3_val == 1<br> - rs2_h2_val == 65531<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ffc]:UKSUB16 t6, t5, t4<br> [0x80001000]:sd t6, 576(ra)<br>    |
|  57|[0x80003590]<br>0x0000000007F23FF6|- rs2_h3_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000102c]:UKSUB16 t6, t5, t4<br> [0x80001030]:sd t6, 592(ra)<br>    |
|  58|[0x800035a0]<br>0xF7FF000055460000|- rs2_h2_val == 65503<br> - rs1_h3_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001068]:UKSUB16 t6, t5, t4<br> [0x8000106c]:sd t6, 608(ra)<br>    |
|  59|[0x800035b0]<br>0x000000000000EFF9|- rs2_h2_val == 43690<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800010ac]:UKSUB16 t6, t5, t4<br> [0x800010b0]:sd t6, 624(ra)<br>    |
|  60|[0x800035c0]<br>0x0800000000050000|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010e8]:UKSUB16 t6, t5, t4<br> [0x800010ec]:sd t6, 640(ra)<br>    |
|  61|[0x800035d0]<br>0x000000007F000000|- rs2_h1_val == 256<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000111c]:UKSUB16 t6, t5, t4<br> [0x80001120]:sd t6, 656(ra)<br>    |
|  62|[0x800035e0]<br>0x000003FE00000000|- rs2_h1_val == 64511<br> - rs2_h0_val == 1024<br> - rs1_h2_val == 65533<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001158]:UKSUB16 t6, t5, t4<br> [0x8000115c]:sd t6, 672(ra)<br>    |
|  63|[0x800035f0]<br>0x2AAB000000000000|- rs2_h1_val == 65527<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001194]:UKSUB16 t6, t5, t4<br> [0x80001198]:sd t6, 688(ra)<br>    |
|  64|[0x80003600]<br>0x0000000F00090040|- rs2_h0_val == 64<br> - rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011c8]:UKSUB16 t6, t5, t4<br> [0x800011cc]:sd t6, 704(ra)<br>    |
|  65|[0x80003610]<br>0x0FFE0000000003F0|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800011fc]:UKSUB16 t6, t5, t4<br> [0x80001200]:sd t6, 720(ra)<br>    |
|  66|[0x80003620]<br>0x00000000F7FE0000|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001234]:UKSUB16 t6, t5, t4<br> [0x80001238]:sd t6, 736(ra)<br>    |
|  67|[0x80003630]<br>0x0000000000000000|- rs2_h2_val == 65534<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001268]:UKSUB16 t6, t5, t4<br> [0x8000126c]:sd t6, 752(ra)<br>    |
|  68|[0x80003640]<br>0x0000000000000000|- rs1_h3_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012a4]:UKSUB16 t6, t5, t4<br> [0x800012a8]:sd t6, 768(ra)<br>    |
|  69|[0x80003650]<br>0x00000078FDEFEFBF|- rs2_h2_val == 65407<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800012e4]:UKSUB16 t6, t5, t4<br> [0x800012e8]:sd t6, 784(ra)<br>    |
|  70|[0x80003660]<br>0x7C001FF900000074|- rs1_h3_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001320]:UKSUB16 t6, t5, t4<br> [0x80001324]:sd t6, 800(ra)<br>    |
|  71|[0x80003670]<br>0xFFEF0000FDFB0000|- rs1_h3_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000135c]:UKSUB16 t6, t5, t4<br> [0x80001360]:sd t6, 816(ra)<br>    |
|  72|[0x80003680]<br>0x00000000BBFF0000|- rs2_h2_val == 21845<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013a0]:UKSUB16 t6, t5, t4<br> [0x800013a4]:sd t6, 832(ra)<br>    |
|  73|[0x80003690]<br>0x0000FBFA00000079|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800013d4]:UKSUB16 t6, t5, t4<br> [0x800013d8]:sd t6, 848(ra)<br>    |
|  74|[0x800036a0]<br>0x000007809AAA3FC0|- rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000140c]:UKSUB16 t6, t5, t4<br> [0x80001410]:sd t6, 864(ra)<br>    |
|  75|[0x800036b0]<br>0x0002BDFF00000000|- rs2_h2_val == 512<br> - rs2_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001448]:UKSUB16 t6, t5, t4<br> [0x8000144c]:sd t6, 880(ra)<br>    |
|  76|[0x800036c0]<br>0x7F00FDDF00000001|- rs1_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001484]:UKSUB16 t6, t5, t4<br> [0x80001488]:sd t6, 896(ra)<br>    |
|  77|[0x800036d0]<br>0x00800FC000000000|- rs2_h2_val == 64<br> - rs2_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014c0]:UKSUB16 t6, t5, t4<br> [0x800014c4]:sd t6, 912(ra)<br>    |
|  78|[0x800036e0]<br>0xEFFA01E000000000|- rs1_h2_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014fc]:UKSUB16 t6, t5, t4<br> [0x80001500]:sd t6, 928(ra)<br>    |
|  79|[0x800036f0]<br>0x000055450000FEF8|- rs2_h2_val == 16<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000153c]:UKSUB16 t6, t5, t4<br> [0x80001540]:sd t6, 944(ra)<br>    |
|  80|[0x80003700]<br>0x0000FBF73FFF0000|- rs2_h2_val == 8<br> - rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001574]:UKSUB16 t6, t5, t4<br> [0x80001578]:sd t6, 960(ra)<br>    |
|  81|[0x80003710]<br>0x0000003EAA9B0000|- rs2_h2_val == 2<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800015b0]:UKSUB16 t6, t5, t4<br> [0x800015b4]:sd t6, 976(ra)<br>    |
|  82|[0x80003720]<br>0x0001000000000011|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800015e8]:UKSUB16 t6, t5, t4<br> [0x800015ec]:sd t6, 992(ra)<br>    |
|  83|[0x80003730]<br>0xFFF10000FFFC0000|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001624]:UKSUB16 t6, t5, t4<br> [0x80001628]:sd t6, 1008(ra)<br>   |
|  84|[0x80003740]<br>0xEFF4FFF27FFF0000|- rs1_h2_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001660]:UKSUB16 t6, t5, t4<br> [0x80001664]:sd t6, 1024(ra)<br>   |
|  85|[0x80003750]<br>0x00007FEF0000DFF5|- rs2_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001694]:UKSUB16 t6, t5, t4<br> [0x80001698]:sd t6, 1040(ra)<br>   |
|  86|[0x80003760]<br>0x0000EFF900000000|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800016c8]:UKSUB16 t6, t5, t4<br> [0x800016cc]:sd t6, 1056(ra)<br>   |
|  87|[0x80003770]<br>0xDFF3AAAAD7FF003F|- rs2_h1_val == 2048<br> - rs1_h3_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001704]:UKSUB16 t6, t5, t4<br> [0x80001708]:sd t6, 1072(ra)<br>   |
|  88|[0x80003780]<br>0x60000000FFF20700|- rs2_h2_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001738]:UKSUB16 t6, t5, t4<br> [0x8000173c]:sd t6, 1088(ra)<br>   |
|  89|[0x80003790]<br>0x0000FF7707000000|- rs2_h0_val == 49151<br> - rs1_h1_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000176c]:UKSUB16 t6, t5, t4<br> [0x80001770]:sd t6, 1104(ra)<br>   |
|  90|[0x800037a0]<br>0x0039F7F000000000|- rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017a8]:UKSUB16 t6, t5, t4<br> [0x800017ac]:sd t6, 1120(ra)<br>   |
|  91|[0x800037b0]<br>0x0000FFF33FFC0001|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800017e8]:UKSUB16 t6, t5, t4<br> [0x800017ec]:sd t6, 1136(ra)<br>   |
|  92|[0x800037c0]<br>0x00010000FFED0000|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001820]:UKSUB16 t6, t5, t4<br> [0x80001824]:sd t6, 1152(ra)<br>   |
|  93|[0x800037d0]<br>0x000003FE1FEF0F80|- rs2_h0_val == 61439<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000185c]:UKSUB16 t6, t5, t4<br> [0x80001860]:sd t6, 1168(ra)<br>   |
|  94|[0x800037e0]<br>0x0008000000093FE0|- rs2_h2_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001894]:UKSUB16 t6, t5, t4<br> [0x80001898]:sd t6, 1184(ra)<br>   |
|  95|[0x800037f0]<br>0x00003FF400000000|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018d0]:UKSUB16 t6, t5, t4<br> [0x800018d4]:sd t6, 1200(ra)<br>   |
|  96|[0x80003800]<br>0x7FF0000A007DFFF4|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000190c]:UKSUB16 t6, t5, t4<br> [0x80001910]:sd t6, 1216(ra)<br>   |
|  97|[0x80003820]<br>0x00000FF50E000000|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000196c]:UKSUB16 t6, t5, t4<br> [0x80001970]:sd t6, 1248(ra)<br>   |
|  98|[0x80003830]<br>0x0000FFF700000000|- rs1_h2_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800019a4]:UKSUB16 t6, t5, t4<br> [0x800019a8]:sd t6, 1264(ra)<br>   |
|  99|[0x80003840]<br>0xDFFA1F00FDFB7FFB|- rs1_h2_val == 65279<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800019d8]:UKSUB16 t6, t5, t4<br> [0x800019dc]:sd t6, 1280(ra)<br>   |
