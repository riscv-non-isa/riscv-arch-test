
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b30')]      |
| SIG_REGION                | [('0x80003210', '0x80003890', '208 dwords')]      |
| COV_LABELS                | khmbt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmbt16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 208      |
| STAT1                     | 99      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 104     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016f8]:KHMBT16 t6, t5, t4
      [0x800016fc]:sd t6, 832(ra)
 -- Signature Address: 0x80003750 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h2_val == 0
      - rs2_h1_val == -1
      - rs2_h0_val == -9
      - rs1_h3_val == -2
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a48]:KHMBT16 t6, t5, t4
      [0x80001a4c]:sd t6, 1072(ra)
 -- Signature Address: 0x80003840 Data: 0xFFFFFFFEFFFFFFC0
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt16
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
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -32768
      - rs2_h2_val == -1025
      - rs2_h1_val == 64
      - rs2_h0_val == 2048
      - rs1_h3_val == 16
      - rs1_h2_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a7c]:KHMBT16 t6, t5, t4
      [0x80001a80]:sd t6, 1088(ra)
 -- Signature Address: 0x80003850 Data: 0x00000004FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -33
      - rs2_h1_val == -513
      - rs1_h3_val == -33
      - rs1_h2_val == -4097
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ae0]:KHMBT16 t6, t5, t4
      [0x80001ae4]:sd t6, 1120(ra)
 -- Signature Address: 0x80003870 Data: 0xFFFFFFFB00000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -9
      - rs2_h2_val == -33
      - rs2_h0_val == 512
      - rs1_h3_val == 16
      - rs1_h2_val == 16384
      - rs1_h1_val == 0
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b1c]:KHMBT16 t6, t5, t4
      [0x80001b20]:sd t6, 1136(ra)
 -- Signature Address: 0x80003880 Data: 0x0000000000000004
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -5
      - rs2_h2_val == -1
      - rs2_h0_val == 512
      - rs1_h2_val == -17
      - rs1_h1_val == -513
      - rs1_h0_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmbt16', 'rs1 : x13', 'rs2 : x13', 'rd : x31', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -32768', 'rs2_h2_val == -1025', 'rs2_h1_val == 64', 'rs2_h0_val == 2048', 'rs1_h3_val == -32768', 'rs1_h2_val == -1025', 'rs1_h1_val == 64', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800003d0]:KHMBT16 t6, a3, a3
	-[0x800003d4]:sd t6, 0(s5)
Current Store : [0x800003d8] : sd a3, 8(s5) -- Store: [0x80003218]:0x8000FBFF00400800




Last Coverpoint : ['rs1 : x7', 'rs2 : x7', 'rd : x7', 'rs1 == rs2 == rd', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -33', 'rs2_h1_val == -513', 'rs1_h3_val == -33', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000404]:KHMBT16 t2, t2, t2
	-[0x80000408]:sd t2, 16(s5)
Current Store : [0x8000040c] : sd t2, 24(s5) -- Store: [0x80003228]:0xFFFFFFFF00000100




Last Coverpoint : ['rs1 : x27', 'rs2 : x16', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 128', 'rs2_h2_val == -257', 'rs2_h0_val == 8', 'rs1_h3_val == -5', 'rs1_h2_val == 2', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000438]:KHMBT16 a1, s11, a6
	-[0x8000043c]:sd a1, 32(s5)
Current Store : [0x80000440] : sd s11, 40(s5) -- Store: [0x80003238]:0xFFFB000202000009




Last Coverpoint : ['rs1 : x4', 'rs2 : x3', 'rd : x4', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 16', 'rs2_h1_val == 8', 'rs2_h0_val == 1024', 'rs1_h3_val == 16384', 'rs1_h2_val == -2049', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000474]:KHMBT16 tp, tp, gp
	-[0x80000478]:sd tp, 48(s5)
Current Store : [0x8000047c] : sd tp, 56(s5) -- Store: [0x80003248]:0xFFFFFFFEFFFFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs2_h3_val == -8193', 'rs2_h2_val == 16', 'rs2_h1_val == -21846', 'rs1_h3_val == -257', 'rs1_h2_val == 16', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800004b4]:KHMBT16 fp, s3, fp
	-[0x800004b8]:sd fp, 64(s5)
Current Store : [0x800004bc] : sd s3, 72(s5) -- Store: [0x80003258]:0xFEFF0010FFF94000




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x1', 'rs2_h3_val == 16384', 'rs2_h0_val == 64', 'rs1_h3_val == -65', 'rs1_h2_val == -17', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800004f0]:KHMBT16 ra, a7, t3
	-[0x800004f4]:sd ra, 80(s5)
Current Store : [0x800004f8] : sd a7, 88(s5) -- Store: [0x80003268]:0xFFBFFFEF0008FFF9




Last Coverpoint : ['rs1 : x16', 'rs2 : x19', 'rd : x5', 'rs2_h1_val == 16384', 'rs2_h0_val == 21845', 'rs1_h3_val == -9', 'rs1_h2_val == 64', 'rs1_h1_val == -1025', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x8000052c]:KHMBT16 t0, a6, s3
	-[0x80000530]:sd t0, 96(s5)
Current Store : [0x80000534] : sd a6, 104(s5) -- Store: [0x80003278]:0xFFF70040FBFF5555




Last Coverpoint : ['rs1 : x20', 'rs2 : x14', 'rd : x18', 'rs2_h2_val == -129', 'rs2_h1_val == 4', 'rs1_h3_val == 4096', 'rs1_h2_val == -5', 'rs1_h1_val == 32', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000568]:KHMBT16 s2, s4, a4
	-[0x8000056c]:sd s2, 112(s5)
Current Store : [0x80000570] : sd s4, 120(s5) -- Store: [0x80003288]:0x1000FFFB0020FF7F




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rd : x15', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == 8192', 'rs2_h1_val == -4097', 'rs2_h0_val == -129', 'rs1_h2_val == -129', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005a4]:KHMBT16 a5, s1, s2
	-[0x800005a8]:sd a5, 128(s5)
Current Store : [0x800005ac] : sd s1, 136(s5) -- Store: [0x80003298]:0x4000FF7FFFF60200




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x2', 'rs2_h3_val == 21845', 'rs2_h1_val == -2049', 'rs1_h2_val == 256', 'rs1_h1_val == -8193', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800005d8]:KHMBT16 sp, s7, a2
	-[0x800005dc]:sd sp, 144(s5)
Current Store : [0x800005e0] : sd s7, 152(s5) -- Store: [0x800032a8]:0xFFF70100DFFFFFEF




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x22', 'rs2_h3_val == 32767', 'rs2_h2_val == 1', 'rs2_h1_val == 32', 'rs1_h2_val == -4097', 'rs1_h1_val == 4096', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000060c]:KHMBT16 s6, gp, s10
	-[0x80000610]:sd s6, 160(s5)
Current Store : [0x80000614] : sd gp, 168(s5) -- Store: [0x800032b8]:0xFFFCEFFF10000040




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x3', 'rs2_h3_val == -16385', 'rs2_h2_val == 1024', 'rs2_h0_val == 2', 'rs1_h2_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000648]:KHMBT16 gp, ra, s1
	-[0x8000064c]:sd gp, 176(s5)
Current Store : [0x80000650] : sd ra, 184(s5) -- Store: [0x800032c8]:0x400040000007FFF7




Last Coverpoint : ['rs1 : x15', 'rs2 : x24', 'rd : x23', 'rs2_h3_val == -4097', 'rs2_h1_val == -2', 'rs1_h3_val == 2', 'rs1_h2_val == -16385', 'rs1_h1_val == -32768', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000684]:KHMBT16 s7, a5, s8
	-[0x80000688]:sd s7, 192(s5)
Current Store : [0x8000068c] : sd a5, 200(s5) -- Store: [0x800032d8]:0x0002BFFF8000DFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x13', 'rs2_h3_val == -2049', 'rs2_h2_val == 512', 'rs2_h1_val == 2048', 'rs2_h0_val == -1', 'rs1_h2_val == -3', 'rs1_h1_val == -9', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800006c8]:KHMBT16 a3, a4, ra
	-[0x800006cc]:sd a3, 208(s5)
Current Store : [0x800006d0] : sd a4, 216(s5) -- Store: [0x800032e8]:0x8000FFFDFFF70400




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x10', 'rs2_h3_val == -1025', 'rs2_h0_val == -3', 'rs1_h1_val == -21846', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000704]:KHMBT16 a0, t1, s4
	-[0x80000708]:sd a0, 224(s5)
Current Store : [0x8000070c] : sd t1, 232(s5) -- Store: [0x800032f8]:0xFFFBFBFFAAAA0004




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rd : x30', 'rs1_h0_val == -32768', 'rs2_h3_val == -513', 'rs2_h2_val == -32768', 'rs2_h1_val == 4096', 'rs1_h3_val == 1', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x80000740]:KHMBT16 t5, sp, s7
	-[0x80000744]:sd t5, 0(ra)
Current Store : [0x80000748] : sd sp, 8(ra) -- Store: [0x80003308]:0x0001AAAAFFBF8000




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x14', 'rs2_h3_val == -257', 'rs2_h2_val == 4096', 'rs2_h1_val == -1', 'rs2_h0_val == 32767', 'rs1_h3_val == -2049', 'rs1_h2_val == -65', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000778]:KHMBT16 a4, t6, t5
	-[0x8000077c]:sd a4, 16(ra)
Current Store : [0x80000780] : sd t6, 24(ra) -- Store: [0x80003318]:0xF7FFFFBFAAAA0000




Last Coverpoint : ['rs1 : x21', 'rs2 : x25', 'rd : x29', 'rs2_h3_val == -129', 'rs2_h1_val == 0', 'rs1_h3_val == 2048', 'rs1_h1_val == -257', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800007b4]:KHMBT16 t4, s5, s9
	-[0x800007b8]:sd t4, 32(ra)
Current Store : [0x800007bc] : sd s5, 40(ra) -- Store: [0x80003328]:0x0800F7FFFEFFFFFB




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x24', 'rs2_h3_val == -65', 'rs2_h1_val == 2', 'rs1_h3_val == -2', 'rs1_h1_val == 1024', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800007ec]:KHMBT16 s8, fp, s6
	-[0x800007f0]:sd s8, 48(ra)
Current Store : [0x800007f4] : sd fp, 56(ra) -- Store: [0x80003338]:0xFFFE00090400FFBF




Last Coverpoint : ['rs1 : x12', 'rs2 : x0', 'rd : x25', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 128', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000824]:KHMBT16 s9, a2, zero
	-[0x80000828]:sd s9, 64(ra)
Current Store : [0x8000082c] : sd a2, 72(ra) -- Store: [0x80003348]:0x00800002FFF6FBFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x21', 'rs2_h3_val == -9', 'rs2_h2_val == -33', 'rs2_h0_val == 512', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000850]:KHMBT16 s5, zero, t4
	-[0x80000854]:sd s5, 80(ra)
Current Store : [0x80000858] : sd zero, 88(ra) -- Store: [0x80003358]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x0', 'rs2_h3_val == -5', 'rs2_h2_val == -1', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000088c]:KHMBT16 zero, s2, s11
	-[0x80000890]:sd zero, 96(ra)
Current Store : [0x80000894] : sd s2, 104(ra) -- Store: [0x80003368]:0x3FFFFFEFFDFFBFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x5', 'rd : x16', 'rs2_h3_val == -3', 'rs1_h3_val == -513', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800008c0]:KHMBT16 a6, s10, t0
	-[0x800008c4]:sd a6, 112(ra)
Current Store : [0x800008c8] : sd s10, 120(ra) -- Store: [0x80003378]:0xFDFFAAAA00200080




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x27', 'rs2_h3_val == -2', 'rs1_h2_val == 1', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800008f8]:KHMBT16 s11, s8, a5
	-[0x800008fc]:sd s11, 128(ra)
Current Store : [0x80000900] : sd s8, 136(ra) -- Store: [0x80003388]:0xFDFF000100040400




Last Coverpoint : ['rs1 : x22', 'rs2 : x31', 'rd : x6', 'rs2_h3_val == 8192', 'rs2_h0_val == -17', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000092c]:KHMBT16 t1, s6, t6
	-[0x80000930]:sd t1, 144(ra)
Current Store : [0x80000934] : sd s6, 152(ra) -- Store: [0x80003398]:0xFFF6FFEF00200001




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x28', 'rs2_h3_val == 4096', 'rs2_h2_val == 128', 'rs2_h1_val == 1024', 'rs2_h0_val == -32768', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x8000096c]:KHMBT16 t3, s9, t1
	-[0x80000970]:sd t3, 160(ra)
Current Store : [0x80000974] : sd s9, 168(ra) -- Store: [0x800033a8]:0x00090800FFF80004




Last Coverpoint : ['rs1 : x10', 'rs2 : x21', 'rd : x9', 'rs2_h3_val == 2048', 'rs2_h2_val == 32767', 'rs2_h1_val == -33', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800009a8]:KHMBT16 s1, a0, s5
	-[0x800009ac]:sd s1, 176(ra)
Current Store : [0x800009b0] : sd a0, 184(ra) -- Store: [0x800033b8]:0x8000FFF6FFBF0100




Last Coverpoint : ['rs1 : x28', 'rs2 : x17', 'rd : x26', 'rs2_h3_val == 1024', 'rs2_h2_val == -3', 'rs2_h1_val == 16', 'rs2_h0_val == 32', 'rs1_h3_val == 32', 'rs1_h2_val == -513', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800009e4]:KHMBT16 s10, t3, a7
	-[0x800009e8]:sd s10, 192(ra)
Current Store : [0x800009ec] : sd t3, 200(ra) -- Store: [0x800033c8]:0x0020FDFFFFFDFFEF




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x17', 'rs2_h3_val == 512', 'rs2_h0_val == -1025', 'rs1_h3_val == -1', 'rs1_h1_val == -17', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000a18]:KHMBT16 a7, t4, a0
	-[0x80000a1c]:sd a7, 208(ra)
Current Store : [0x80000a20] : sd t4, 216(ra) -- Store: [0x800033d8]:0xFFFF0002FFEFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x19', 'rs2_h3_val == 256', 'rs2_h0_val == -2049', 'rs1_h3_val == -4097', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000a54]:KHMBT16 s3, t0, a1
	-[0x80000a58]:sd s3, 224(ra)
Current Store : [0x80000a5c] : sd t0, 232(ra) -- Store: [0x800033e8]:0xEFFF4000FFF7FFFE




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x12', 'rs2_h3_val == 64', 'rs2_h1_val == -257', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000a88]:KHMBT16 a2, a1, tp
	-[0x80000a8c]:sd a2, 240(ra)
Current Store : [0x80000a90] : sd a1, 248(ra) -- Store: [0x800033f8]:0x00014000F7FFDFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x2', 'rd : x20', 'rs2_h3_val == 32', 'rs2_h0_val == -2', 'rs1_h2_val == -33', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000ac4]:KHMBT16 s4, t5, sp
	-[0x80000ac8]:sd s4, 256(ra)
Current Store : [0x80000acc] : sd t5, 264(ra) -- Store: [0x80003408]:0x8000FFDFBFFFFBFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000b08]:KHMBT16 t6, t5, t4
	-[0x80000b0c]:sd t6, 0(ra)
Current Store : [0x80000b10] : sd t5, 8(ra) -- Store: [0x80003418]:0xFFFAC000FFFFDFFF




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h1_val == -1025', 'rs2_h0_val == 8192', 'rs1_h2_val == 1024', 'rs1_h1_val == -5', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000b40]:KHMBT16 t6, t5, t4
	-[0x80000b44]:sd t6, 16(ra)
Current Store : [0x80000b48] : sd t5, 24(ra) -- Store: [0x80003428]:0xFFF90400FFFBFFDF




Last Coverpoint : ['rs1_h3_val == -8193', 'rs1_h1_val == -2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000b7c]:KHMBT16 t6, t5, t4
	-[0x80000b80]:sd t6, 32(ra)
Current Store : [0x80000b84] : sd t5, 40(ra) -- Store: [0x80003438]:0xDFFFFFFAFFFE0020




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h0_val == 16384', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000bb4]:KHMBT16 t6, t5, t4
	-[0x80000bb8]:sd t6, 48(ra)
Current Store : [0x80000bbc] : sd t5, 56(ra) -- Store: [0x80003448]:0xFFFBFFFB4000FFF6




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000be8]:KHMBT16 t6, t5, t4
	-[0x80000bec]:sd t6, 64(ra)
Current Store : [0x80000bf0] : sd t5, 72(ra) -- Store: [0x80003458]:0xFFBFFFFC2000C000




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h3_val == 4', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000c24]:KHMBT16 t6, t5, t4
	-[0x80000c28]:sd t6, 80(ra)
Current Store : [0x80000c2c] : sd t5, 88(ra) -- Store: [0x80003468]:0x000440000800FFF7




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c60]:KHMBT16 t6, t5, t4
	-[0x80000c64]:sd t6, 96(ra)
Current Store : [0x80000c68] : sd t5, 104(ra) -- Store: [0x80003478]:0x080000050100FF7F




Last Coverpoint : ['rs1_h1_val == 128', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000c9c]:KHMBT16 t6, t5, t4
	-[0x80000ca0]:sd t6, 112(ra)
Current Store : [0x80000ca4] : sd t5, 120(ra) -- Store: [0x80003488]:0x008000060080FEFF




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x80000cd4]:KHMBT16 t6, t5, t4
	-[0x80000cd8]:sd t6, 128(ra)
Current Store : [0x80000cdc] : sd t5, 136(ra) -- Store: [0x80003498]:0x0200001000400020




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -5', 'rs1_h2_val == -8193', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d0c]:KHMBT16 t6, t5, t4
	-[0x80000d10]:sd t6, 144(ra)
Current Store : [0x80000d14] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFDFFDFFF00104000




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d44]:KHMBT16 t6, t5, t4
	-[0x80000d48]:sd t6, 160(ra)
Current Store : [0x80000d4c] : sd t5, 168(ra) -- Store: [0x800034b8]:0xFFF808000002FFEF




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h2_val == 4096', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000d78]:KHMBT16 t6, t5, t4
	-[0x80000d7c]:sd t6, 176(ra)
Current Store : [0x80000d80] : sd t5, 184(ra) -- Store: [0x800034c8]:0x000010000001FFDF




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h3_val == 8', 'rs1_h2_val == 21845', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000db4]:KHMBT16 t6, t5, t4
	-[0x80000db8]:sd t6, 192(ra)
Current Store : [0x80000dbc] : sd t5, 200(ra) -- Store: [0x800034d8]:0x000855550000AAAA




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_h1_val == -129', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000dec]:KHMBT16 t6, t5, t4
	-[0x80000df0]:sd t6, 208(ra)
Current Store : [0x80000df4] : sd t5, 216(ra) -- Store: [0x800034e8]:0x0200C000FF7F7FFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h3_val == 8192', 'rs1_h2_val == 32767', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e30]:KHMBT16 t6, t5, t4
	-[0x80000e34]:sd t6, 224(ra)
Current Store : [0x80000e38] : sd t5, 232(ra) -- Store: [0x800034f8]:0x20007FFF2000EFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 4', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000e60]:KHMBT16 t6, t5, t4
	-[0x80000e64]:sd t6, 240(ra)
Current Store : [0x80000e68] : sd t5, 248(ra) -- Store: [0x80003508]:0x00043FFFFFBFF7FF




Last Coverpoint : ['rs1_h3_val == -1025', 'rs1_h2_val == 4', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e9c]:KHMBT16 t6, t5, t4
	-[0x80000ea0]:sd t6, 256(ra)
Current Store : [0x80000ea4] : sd t5, 264(ra) -- Store: [0x80003518]:0xFBFF00040020FDFF




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000ed8]:KHMBT16 t6, t5, t4
	-[0x80000edc]:sd t6, 272(ra)
Current Store : [0x80000ee0] : sd t5, 280(ra) -- Store: [0x80003528]:0x800055550004FFFD




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f10]:KHMBT16 t6, t5, t4
	-[0x80000f14]:sd t6, 288(ra)
Current Store : [0x80000f18] : sd t5, 296(ra) -- Store: [0x80003538]:0x10000004BFFF2000




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f4c]:KHMBT16 t6, t5, t4
	-[0x80000f50]:sd t6, 304(ra)
Current Store : [0x80000f54] : sd t5, 312(ra) -- Store: [0x80003548]:0xFFDFEFFFFFF81000




Last Coverpoint : ['rs1_h3_val == 16', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x80000f80]:KHMBT16 t6, t5, t4
	-[0x80000f84]:sd t6, 320(ra)
Current Store : [0x80000f88] : sd t5, 328(ra) -- Store: [0x80003558]:0x0010FEFF00010800




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000fc4]:KHMBT16 t6, t5, t4
	-[0x80000fc8]:sd t6, 336(ra)
Current Store : [0x80000fcc] : sd t5, 344(ra) -- Store: [0x80003568]:0x80005555FF7F0008




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000ff0]:KHMBT16 t6, t5, t4
	-[0x80000ff4]:sd t6, 352(ra)
Current Store : [0x80000ff8] : sd t5, 360(ra) -- Store: [0x80003578]:0x0080001000000002




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -16385', 'rs1_h3_val == 64']
Last Code Sequence : 
	-[0x80001024]:KHMBT16 t6, t5, t4
	-[0x80001028]:sd t6, 368(ra)
Current Store : [0x8000102c] : sd t5, 376(ra) -- Store: [0x80003588]:0x00400040FEFF0004




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001060]:KHMBT16 t6, t5, t4
	-[0x80001064]:sd t6, 384(ra)
Current Store : [0x80001068] : sd t5, 392(ra) -- Store: [0x80003598]:0x020004004000FFFE




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800010a0]:KHMBT16 t6, t5, t4
	-[0x800010a4]:sd t6, 400(ra)
Current Store : [0x800010a8] : sd t5, 408(ra) -- Store: [0x800035a8]:0xFDFF0100FFF7FFBF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == -16385', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x800010e4]:KHMBT16 t6, t5, t4
	-[0x800010e8]:sd t6, 416(ra)
Current Store : [0x800010ec] : sd t5, 424(ra) -- Store: [0x800035b8]:0x00010008FFF97FFF




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80001120]:KHMBT16 t6, t5, t4
	-[0x80001124]:sd t6, 432(ra)
Current Store : [0x80001128] : sd t5, 440(ra) -- Store: [0x800035c8]:0x002000053FFF0004




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80001164]:KHMBT16 t6, t5, t4
	-[0x80001168]:sd t6, 448(ra)
Current Store : [0x8000116c] : sd t5, 456(ra) -- Store: [0x800035d8]:0x2000FFF6BFFFF7FF




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800011a0]:KHMBT16 t6, t5, t4
	-[0x800011a4]:sd t6, 464(ra)
Current Store : [0x800011a8] : sd t5, 472(ra) -- Store: [0x800035e8]:0x0005FEFF0008FFDF




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800011dc]:KHMBT16 t6, t5, t4
	-[0x800011e0]:sd t6, 480(ra)
Current Store : [0x800011e4] : sd t5, 488(ra) -- Store: [0x800035f8]:0xFFDFFBFFFFDFFFFD




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001218]:KHMBT16 t6, t5, t4
	-[0x8000121c]:sd t6, 496(ra)
Current Store : [0x80001220] : sd t5, 504(ra) -- Store: [0x80003608]:0x0002C000FFFB0007




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001250]:KHMBT16 t6, t5, t4
	-[0x80001254]:sd t6, 512(ra)
Current Store : [0x80001258] : sd t5, 520(ra) -- Store: [0x80003618]:0x00020004FFFA0008




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000128c]:KHMBT16 t6, t5, t4
	-[0x80001290]:sd t6, 528(ra)
Current Store : [0x80001294] : sd t5, 536(ra) -- Store: [0x80003628]:0xFFFE0400FFFBAAAA




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == -9', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800012c8]:KHMBT16 t6, t5, t4
	-[0x800012cc]:sd t6, 544(ra)
Current Store : [0x800012d0] : sd t5, 552(ra) -- Store: [0x80003638]:0xFFBFC000DFFFF7FF




Last Coverpoint : ['rs2_h1_val == 32767', 'rs2_h0_val == 4', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x8000130c]:KHMBT16 t6, t5, t4
	-[0x80001310]:sd t6, 560(ra)
Current Store : [0x80001314] : sd t5, 568(ra) -- Store: [0x80003648]:0x5555000304000020




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80001348]:KHMBT16 t6, t5, t4
	-[0x8000134c]:sd t6, 576(ra)
Current Store : [0x80001350] : sd t5, 584(ra) -- Store: [0x80003658]:0x00800010FFFF0001




Last Coverpoint : ['rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80001380]:KHMBT16 t6, t5, t4
	-[0x80001384]:sd t6, 592(ra)
Current Store : [0x80001388] : sd t5, 600(ra) -- Store: [0x80003668]:0x000800050001BFFF




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x800013bc]:KHMBT16 t6, t5, t4
	-[0x800013c0]:sd t6, 608(ra)
Current Store : [0x800013c4] : sd t5, 616(ra) -- Store: [0x80003678]:0xAAAA01000080FF7F




Last Coverpoint : ['rs2_h2_val == 16384', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x800013f8]:KHMBT16 t6, t5, t4
	-[0x800013fc]:sd t6, 624(ra)
Current Store : [0x80001400] : sd t5, 632(ra) -- Store: [0x80003688]:0x7FFF08000006FFF7




Last Coverpoint : ['rs1_h3_val == -16385', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001438]:KHMBT16 t6, t5, t4
	-[0x8000143c]:sd t6, 640(ra)
Current Store : [0x80001440] : sd t5, 648(ra) -- Store: [0x80003698]:0xBFFF000755557FFF




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x8000146c]:KHMBT16 t6, t5, t4
	-[0x80001470]:sd t6, 656(ra)
Current Store : [0x80001474] : sd t5, 664(ra) -- Store: [0x800036a8]:0xFF7FEFFF00024000




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x800014a8]:KHMBT16 t6, t5, t4
	-[0x800014ac]:sd t6, 672(ra)
Current Store : [0x800014b0] : sd t5, 680(ra) -- Store: [0x800036b8]:0xFFEF0010FFF8FFF8




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h1_val == 256', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x800014e0]:KHMBT16 t6, t5, t4
	-[0x800014e4]:sd t6, 688(ra)
Current Store : [0x800014e8] : sd t5, 696(ra) -- Store: [0x800036c8]:0x0400000004000001




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80001518]:KHMBT16 t6, t5, t4
	-[0x8000151c]:sd t6, 704(ra)
Current Store : [0x80001520] : sd t5, 712(ra) -- Store: [0x800036d8]:0x0010000880000009




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x8000155c]:KHMBT16 t6, t5, t4
	-[0x80001560]:sd t6, 720(ra)
Current Store : [0x80001564] : sd t5, 728(ra) -- Store: [0x800036e8]:0x0020EFFF4000FFFB




Last Coverpoint : ['rs1_h3_val == 256']
Last Code Sequence : 
	-[0x80001590]:KHMBT16 t6, t5, t4
	-[0x80001594]:sd t6, 736(ra)
Current Store : [0x80001598] : sd t5, 744(ra) -- Store: [0x800036f8]:0x01001000FFDFFFFD




Last Coverpoint : ['rs2_h2_val == -513']
Last Code Sequence : 
	-[0x800015cc]:KHMBT16 t6, t5, t4
	-[0x800015d0]:sd t6, 752(ra)
Current Store : [0x800015d4] : sd t5, 760(ra) -- Store: [0x80003708]:0x8000FFFAFFF6FFFD




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001610]:KHMBT16 t6, t5, t4
	-[0x80001614]:sd t6, 768(ra)
Current Store : [0x80001618] : sd t5, 776(ra) -- Store: [0x80003718]:0xBFFF00404000FFF9




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x8000164c]:KHMBT16 t6, t5, t4
	-[0x80001650]:sd t6, 784(ra)
Current Store : [0x80001654] : sd t5, 792(ra) -- Store: [0x80003728]:0xFFF80009FFFD3FFF




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001688]:KHMBT16 t6, t5, t4
	-[0x8000168c]:sd t6, 800(ra)
Current Store : [0x80001690] : sd t5, 808(ra) -- Store: [0x80003738]:0xFBFFFFF74000FFF8




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x800016c4]:KHMBT16 t6, t5, t4
	-[0x800016c8]:sd t6, 816(ra)
Current Store : [0x800016cc] : sd t5, 824(ra) -- Store: [0x80003748]:0xFEFFFFFE00200005




Last Coverpoint : ['opcode : khmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == 0', 'rs2_h1_val == -1', 'rs2_h0_val == -9', 'rs1_h3_val == -2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800016f8]:KHMBT16 t6, t5, t4
	-[0x800016fc]:sd t6, 832(ra)
Current Store : [0x80001700] : sd t5, 840(ra) -- Store: [0x80003758]:0xFFFE000600070004




Last Coverpoint : ['rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001734]:KHMBT16 t6, t5, t4
	-[0x80001738]:sd t6, 848(ra)
Current Store : [0x8000173c] : sd t5, 856(ra) -- Store: [0x80003768]:0xEFFF8000FFF9FFF6




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x8000176c]:KHMBT16 t6, t5, t4
	-[0x80001770]:sd t6, 864(ra)
Current Store : [0x80001774] : sd t5, 872(ra) -- Store: [0x80003778]:0x004020000100FEFF




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800017a4]:KHMBT16 t6, t5, t4
	-[0x800017a8]:sd t6, 880(ra)
Current Store : [0x800017ac] : sd t5, 888(ra) -- Store: [0x80003788]:0x02000200FFBFFFFC




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x800017e8]:KHMBT16 t6, t5, t4
	-[0x800017ec]:sd t6, 896(ra)
Current Store : [0x800017f0] : sd t5, 904(ra) -- Store: [0x80003798]:0x00070080FFFDFFFB




Last Coverpoint : ['rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80001824]:KHMBT16 t6, t5, t4
	-[0x80001828]:sd t6, 912(ra)
Current Store : [0x8000182c] : sd t5, 920(ra) -- Store: [0x800037a8]:0x3FFF0020FFF9FFF6




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000185c]:KHMBT16 t6, t5, t4
	-[0x80001860]:sd t6, 928(ra)
Current Store : [0x80001864] : sd t5, 936(ra) -- Store: [0x800037b8]:0x0400FEFFAAAA0010




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_h3_val == -3', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x80001898]:KHMBT16 t6, t5, t4
	-[0x8000189c]:sd t6, 944(ra)
Current Store : [0x800018a0] : sd t5, 952(ra) -- Store: [0x800037c8]:0xFFFDFFFF0008FFBF




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800018d0]:KHMBT16 t6, t5, t4
	-[0x800018d4]:sd t6, 960(ra)
Current Store : [0x800018d8] : sd t5, 968(ra) -- Store: [0x800037d8]:0xFFFA3FFFFFF60008




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001908]:KHMBT16 t6, t5, t4
	-[0x8000190c]:sd t6, 976(ra)
Current Store : [0x80001910] : sd t5, 984(ra) -- Store: [0x800037e8]:0x800000087FFF0080




Last Coverpoint : ['rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80001944]:KHMBT16 t6, t5, t4
	-[0x80001948]:sd t6, 992(ra)
Current Store : [0x8000194c] : sd t5, 1000(ra) -- Store: [0x800037f8]:0xFEFFFFFD00103FFF




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80001970]:KHMBT16 t6, t5, t4
	-[0x80001974]:sd t6, 1008(ra)
Current Store : [0x80001978] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFFFFFFF8FFFB0200




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800019a8]:KHMBT16 t6, t5, t4
	-[0x800019ac]:sd t6, 1024(ra)
Current Store : [0x800019b0] : sd t5, 1032(ra) -- Store: [0x80003818]:0xFFFD010000090001




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x800019e4]:KHMBT16 t6, t5, t4
	-[0x800019e8]:sd t6, 1040(ra)
Current Store : [0x800019ec] : sd t5, 1048(ra) -- Store: [0x80003828]:0xFFDF00064000FFEF




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001a10]:KHMBT16 t6, t5, t4
	-[0x80001a14]:sd t6, 1056(ra)
Current Store : [0x80001a18] : sd t5, 1064(ra) -- Store: [0x80003838]:0x02001000EFFFFFDF




Last Coverpoint : ['opcode : khmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -32768', 'rs2_h2_val == -1025', 'rs2_h1_val == 64', 'rs2_h0_val == 2048', 'rs1_h3_val == 16', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80001a48]:KHMBT16 t6, t5, t4
	-[0x80001a4c]:sd t6, 1072(ra)
Current Store : [0x80001a50] : sd t5, 1080(ra) -- Store: [0x80003848]:0x00100002FFFA8000




Last Coverpoint : ['opcode : khmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -33', 'rs2_h1_val == -513', 'rs1_h3_val == -33', 'rs1_h2_val == -4097', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80001a7c]:KHMBT16 t6, t5, t4
	-[0x80001a80]:sd t6, 1088(ra)
Current Store : [0x80001a84] : sd t5, 1096(ra) -- Store: [0x80003858]:0xFFDFEFFFFFFA0010




Last Coverpoint : ['rs2_h3_val == -17', 'rs2_h2_val == 256']
Last Code Sequence : 
	-[0x80001ab4]:KHMBT16 t6, t5, t4
	-[0x80001ab8]:sd t6, 1104(ra)
Current Store : [0x80001abc] : sd t5, 1112(ra) -- Store: [0x80003868]:0x00800002FFF6FBFF




Last Coverpoint : ['opcode : khmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -9', 'rs2_h2_val == -33', 'rs2_h0_val == 512', 'rs1_h3_val == 16', 'rs1_h2_val == 16384', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001ae0]:KHMBT16 t6, t5, t4
	-[0x80001ae4]:sd t6, 1120(ra)
Current Store : [0x80001ae8] : sd t5, 1128(ra) -- Store: [0x80003878]:0x0010400000000000




Last Coverpoint : ['opcode : khmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -5', 'rs2_h2_val == -1', 'rs2_h0_val == 512', 'rs1_h2_val == -17', 'rs1_h1_val == -513', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80001b1c]:KHMBT16 t6, t5, t4
	-[0x80001b20]:sd t6, 1136(ra)
Current Store : [0x80001b24] : sd t5, 1144(ra) -- Store: [0x80003888]:0x3FFFFFEFFDFFBFFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                                                                            |                                  code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000040100000004|- opcode : khmbt16<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -1025<br> - rs2_h1_val == 64<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 64<br> - rs1_h0_val == 2048<br> |[0x800003d0]:KHMBT16 t6, a3, a3<br> [0x800003d4]:sd t6, 0(s5)<br>       |
|   2|[0x80003220]<br>0xFFFFFFFF00000100|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -33<br> - rs2_h1_val == -513<br> - rs1_h3_val == -33<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                       |[0x80000404]:KHMBT16 t2, t2, t2<br> [0x80000408]:sd t2, 16(s5)<br>      |
|   3|[0x80003230]<br>0x00000000FFFFFFFF|- rs1 : x27<br> - rs2 : x16<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 128<br> - rs2_h2_val == -257<br> - rs2_h0_val == 8<br> - rs1_h3_val == -5<br> - rs1_h2_val == 2<br> - rs1_h1_val == 512<br>                                                                                                       |[0x80000438]:KHMBT16 a1, s11, a6<br> [0x8000043c]:sd a1, 32(s5)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFEFFFFFFFF|- rs1 : x4<br> - rs2 : x3<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 16<br> - rs2_h1_val == 8<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -2049<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                       |[0x80000474]:KHMBT16 tp, tp, gp<br> [0x80000478]:sd tp, 48(s5)<br>      |
|   5|[0x80003250]<br>0xFFFFFFFBFFFFD555|- rs1 : x19<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 16<br> - rs2_h1_val == -21846<br> - rs1_h3_val == -257<br> - rs1_h2_val == 16<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x800004b4]:KHMBT16 fp, s3, fp<br> [0x800004b8]:sd fp, 64(s5)<br>      |
|   6|[0x80003260]<br>0xFFFFFFF7FFFFFFFF|- rs1 : x17<br> - rs2 : x28<br> - rd : x1<br> - rs2_h3_val == 16384<br> - rs2_h0_val == 64<br> - rs1_h3_val == -65<br> - rs1_h2_val == -17<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004f0]:KHMBT16 ra, a7, t3<br> [0x800004f4]:sd ra, 80(s5)<br>      |
|   7|[0x80003270]<br>0xFFFFFFFF00002AAA|- rs1 : x16<br> - rs2 : x19<br> - rd : x5<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -9<br> - rs1_h2_val == 64<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000052c]:KHMBT16 t0, a6, s3<br> [0x80000530]:sd t0, 96(s5)<br>      |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x14<br> - rd : x18<br> - rs2_h2_val == -129<br> - rs2_h1_val == 4<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -5<br> - rs1_h1_val == 32<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000568]:KHMBT16 s2, s4, a4<br> [0x8000056c]:sd s2, 112(s5)<br>     |
|   9|[0x80003290]<br>0x00000056FFFFFFBF|- rs1 : x9<br> - rs2 : x18<br> - rd : x15<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -129<br> - rs1_h2_val == -129<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                      |[0x800005a4]:KHMBT16 a5, s1, s2<br> [0x800005a8]:sd a5, 128(s5)<br>     |
|  10|[0x800032a0]<br>0x000000AA00000001|- rs1 : x23<br> - rs2 : x12<br> - rd : x2<br> - rs2_h3_val == 21845<br> - rs2_h1_val == -2049<br> - rs1_h2_val == 256<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005d8]:KHMBT16 sp, s7, a2<br> [0x800005dc]:sd sp, 144(s5)<br>     |
|  11|[0x800032b0]<br>0xFFFFEFFF00000000|- rs1 : x3<br> - rs2 : x26<br> - rd : x22<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 1<br> - rs2_h1_val == 32<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000060c]:KHMBT16 s6, gp, s10<br> [0x80000610]:sd s6, 160(s5)<br>    |
|  12|[0x800032c0]<br>0xFFFFDFFF00000000|- rs1 : x1<br> - rs2 : x9<br> - rd : x3<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 1024<br> - rs2_h0_val == 2<br> - rs1_h2_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000648]:KHMBT16 gp, ra, s1<br> [0x8000064c]:sd gp, 176(s5)<br>     |
|  13|[0x800032d0]<br>0x0000080000000000|- rs1 : x15<br> - rs2 : x24<br> - rd : x23<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -2<br> - rs1_h3_val == 2<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000684]:KHMBT16 s7, a5, s8<br> [0x80000688]:sd s7, 192(s5)<br>     |
|  14|[0x800032e0]<br>0x0000000000000040|- rs1 : x14<br> - rs2 : x1<br> - rd : x13<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 512<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -1<br> - rs1_h2_val == -3<br> - rs1_h1_val == -9<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800006c8]:KHMBT16 a3, a4, ra<br> [0x800006cc]:sd a3, 208(s5)<br>     |
|  15|[0x800032f0]<br>0x0000002000000000|- rs1 : x6<br> - rs2 : x20<br> - rd : x10<br> - rs2_h3_val == -1025<br> - rs2_h0_val == -3<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000704]:KHMBT16 a0, t1, s4<br> [0x80000708]:sd a0, 224(s5)<br>     |
|  16|[0x80003300]<br>0x00000156FFFFF000|- rs1 : x2<br> - rs2 : x23<br> - rd : x30<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -513<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 4096<br> - rs1_h3_val == 1<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000740]:KHMBT16 t5, sp, s7<br> [0x80000744]:sd t5, 0(ra)<br>       |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x30<br> - rd : x14<br> - rs2_h3_val == -257<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -1<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -65<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000778]:KHMBT16 a4, t6, t5<br> [0x8000077c]:sd a4, 16(ra)<br>      |
|  18|[0x80003320]<br>0x0000000800000000|- rs1 : x21<br> - rs2 : x25<br> - rd : x29<br> - rs2_h3_val == -129<br> - rs2_h1_val == 0<br> - rs1_h3_val == 2048<br> - rs1_h1_val == -257<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800007b4]:KHMBT16 t4, s5, s9<br> [0x800007b8]:sd t4, 32(ra)<br>      |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x22<br> - rd : x24<br> - rs2_h3_val == -65<br> - rs2_h1_val == 2<br> - rs1_h3_val == -2<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800007ec]:KHMBT16 s8, fp, s6<br> [0x800007f0]:sd s8, 48(ra)<br>      |
|  20|[0x80003340]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x25<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 128<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000824]:KHMBT16 s9, a2, zero<br> [0x80000828]:sd s9, 64(ra)<br>    |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x21<br> - rs2_h3_val == -9<br> - rs2_h2_val == -33<br> - rs2_h0_val == 512<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000850]:KHMBT16 s5, zero, t4<br> [0x80000854]:sd s5, 80(ra)<br>    |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x27<br> - rd : x0<br> - rs2_h3_val == -5<br> - rs2_h2_val == -1<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000088c]:KHMBT16 zero, s2, s11<br> [0x80000890]:sd zero, 96(ra)<br> |
|  23|[0x80003370]<br>0x0000000200000010|- rs1 : x26<br> - rs2 : x5<br> - rd : x16<br> - rs2_h3_val == -3<br> - rs1_h3_val == -513<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800008c0]:KHMBT16 a6, s10, t0<br> [0x800008c4]:sd a6, 112(ra)<br>    |
|  24|[0x80003380]<br>0xFFFFFFFF00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x27<br> - rs2_h3_val == -2<br> - rs1_h2_val == 1<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800008f8]:KHMBT16 s11, s8, a5<br> [0x800008fc]:sd s11, 128(ra)<br>   |
|  25|[0x80003390]<br>0xFFFFFFFB00000000|- rs1 : x22<br> - rs2 : x31<br> - rd : x6<br> - rs2_h3_val == 8192<br> - rs2_h0_val == -17<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000092c]:KHMBT16 t1, s6, t6<br> [0x80000930]:sd t1, 144(ra)<br>     |
|  26|[0x800033a0]<br>0x0000010000000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x28<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 128<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -32768<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000096c]:KHMBT16 t3, s9, t1<br> [0x80000970]:sd t3, 160(ra)<br>     |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x21<br> - rd : x9<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -33<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800009a8]:KHMBT16 s1, a0, s5<br> [0x800009ac]:sd s1, 176(ra)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFEFFFFFFFFF|- rs1 : x28<br> - rs2 : x17<br> - rd : x26<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -3<br> - rs2_h1_val == 16<br> - rs2_h0_val == 32<br> - rs1_h3_val == 32<br> - rs1_h2_val == -513<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x800009e4]:KHMBT16 s10, t3, a7<br> [0x800009e8]:sd s10, 192(ra)<br>   |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x10<br> - rd : x17<br> - rs2_h3_val == 512<br> - rs2_h0_val == -1025<br> - rs1_h3_val == -1<br> - rs1_h1_val == -17<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a18]:KHMBT16 a7, t4, a0<br> [0x80000a1c]:sd a7, 208(ra)<br>     |
|  30|[0x800033e0]<br>0x00000080FFFFFFFF|- rs1 : x5<br> - rs2 : x11<br> - rd : x19<br> - rs2_h3_val == 256<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -4097<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a54]:KHMBT16 s3, t0, a1<br> [0x80000a58]:sd s3, 224(ra)<br>     |
|  31|[0x800033f0]<br>0x0000002000000040|- rs1 : x11<br> - rs2 : x4<br> - rd : x12<br> - rs2_h3_val == 64<br> - rs2_h1_val == -257<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a88]:KHMBT16 a2, a1, tp<br> [0x80000a8c]:sd a2, 240(ra)<br>     |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFFDF|- rs1 : x30<br> - rs2 : x2<br> - rd : x20<br> - rs2_h3_val == 32<br> - rs2_h0_val == -2<br> - rs1_h2_val == -33<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ac4]:KHMBT16 s4, t5, sp<br> [0x80000ac8]:sd s4, 256(ra)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFCFFFFFFFE|- rs2_h3_val == 8<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b08]:KHMBT16 t6, t5, t4<br> [0x80000b0c]:sd t6, 0(ra)<br>       |
|  34|[0x80003420]<br>0x0000000400000001|- rs2_h2_val == -2<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 8192<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -5<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000b40]:KHMBT16 t6, t5, t4<br> [0x80000b44]:sd t6, 16(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFFFF00000000|- rs1_h3_val == -8193<br> - rs1_h1_val == -2<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b7c]:KHMBT16 t6, t5, t4<br> [0x80000b80]:sd t6, 32(ra)<br>      |
|  36|[0x80003440]<br>0x00000000FFFFFFFF|- rs2_h2_val == -9<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bb4]:KHMBT16 t6, t5, t4<br> [0x80000bb8]:sd t6, 48(ra)<br>      |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFE000|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000be8]:KHMBT16 t6, t5, t4<br> [0x80000bec]:sd t6, 64(ra)<br>      |
|  38|[0x80003460]<br>0xFFFFFFFF00000000|- rs2_h0_val == -8193<br> - rs1_h3_val == 4<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c24]:KHMBT16 t6, t5, t4<br> [0x80000c28]:sd t6, 80(ra)<br>      |
|  39|[0x80003470]<br>0xFFFFFFFF00000040|- rs2_h1_val == -16385<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c60]:KHMBT16 t6, t5, t4<br> [0x80000c64]:sd t6, 96(ra)<br>      |
|  40|[0x80003480]<br>0xFFFFFFFF00000000|- rs1_h1_val == 128<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c9c]:KHMBT16 t6, t5, t4<br> [0x80000ca0]:sd t6, 112(ra)<br>     |
|  41|[0x80003490]<br>0x0000000A00000000|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000cd4]:KHMBT16 t6, t5, t4<br> [0x80000cd8]:sd t6, 128(ra)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFDFFFFFFFD|- rs2_h2_val == 2<br> - rs2_h1_val == -5<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d0c]:KHMBT16 t6, t5, t4<br> [0x80000d10]:sd t6, 144(ra)<br>     |
|  43|[0x800034b0]<br>0x000000000000000B|- rs2_h3_val == 4<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d44]:KHMBT16 t6, t5, t4<br> [0x80000d48]:sd t6, 160(ra)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFF00000004|- rs2_h0_val == 256<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d78]:KHMBT16 t6, t5, t4<br> [0x80000d7c]:sd t6, 176(ra)<br>     |
|  45|[0x800034d0]<br>0xFFFFD55500000005|- rs2_h0_val == -257<br> - rs1_h3_val == 8<br> - rs1_h2_val == 21845<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000db4]:KHMBT16 t6, t5, t4<br> [0x80000db8]:sd t6, 192(ra)<br>     |
|  46|[0x800034e0]<br>0x00000001000003FF|- rs2_h2_val == 64<br> - rs1_h1_val == -129<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000dec]:KHMBT16 t6, t5, t4<br> [0x80000df0]:sd t6, 208(ra)<br>     |
|  47|[0x800034f0]<br>0x00003FFE00000000|- rs2_h2_val == -17<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e30]:KHMBT16 t6, t5, t4<br> [0x80000e34]:sd t6, 224(ra)<br>     |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == -1<br> - rs2_h2_val == 4<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e60]:KHMBT16 t6, t5, t4<br> [0x80000e64]:sd t6, 240(ra)<br>     |
|  49|[0x80003510]<br>0x0000000000000000|- rs1_h3_val == -1025<br> - rs1_h2_val == 4<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e9c]:KHMBT16 t6, t5, t4<br> [0x80000ea0]:sd t6, 256(ra)<br>     |
|  50|[0x80003520]<br>0x0000000AFFFFFFFE|- rs2_h0_val == -4097<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000ed8]:KHMBT16 t6, t5, t4<br> [0x80000edc]:sd t6, 272(ra)<br>     |
|  51|[0x80003530]<br>0x00000001FFFFFFFF|- rs2_h2_val == 2048<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000f10]:KHMBT16 t6, t5, t4<br> [0x80000f14]:sd t6, 288(ra)<br>     |
|  52|[0x80003540]<br>0xFFFFF7FF00000AAA|- rs2_h1_val == 21845<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000f4c]:KHMBT16 t6, t5, t4<br> [0x80000f50]:sd t6, 304(ra)<br>     |
|  53|[0x80003550]<br>0x0000008000000000|- rs1_h3_val == 16<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f80]:KHMBT16 t6, t5, t4<br> [0x80000f84]:sd t6, 320(ra)<br>     |
|  54|[0x80003560]<br>0x00002AAAFFFFFFFF|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000fc4]:KHMBT16 t6, t5, t4<br> [0x80000fc8]:sd t6, 336(ra)<br>     |
|  55|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -8193<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ff0]:KHMBT16 t6, t5, t4<br> [0x80000ff4]:sd t6, 352(ra)<br>     |
|  56|[0x80003580]<br>0x00000000FFFFFFFF|- rs2_h3_val == 2<br> - rs2_h2_val == -16385<br> - rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001024]:KHMBT16 t6, t5, t4<br> [0x80001028]:sd t6, 368(ra)<br>     |
|  57|[0x80003590]<br>0x000002AAFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001060]:KHMBT16 t6, t5, t4<br> [0x80001064]:sd t6, 384(ra)<br>     |
|  58|[0x800035a0]<br>0xFFFFFFDF00000010|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010a0]:KHMBT16 t6, t5, t4<br> [0x800010a4]:sd t6, 400(ra)<br>     |
|  59|[0x800035b0]<br>0x00000004FFFFBFFF|- rs2_h2_val == -2049<br> - rs2_h0_val == -16385<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010e4]:KHMBT16 t6, t5, t4<br> [0x800010e8]:sd t6, 416(ra)<br>     |
|  60|[0x800035c0]<br>0x0000000000000000|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001120]:KHMBT16 t6, t5, t4<br> [0x80001124]:sd t6, 432(ra)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFBFFFFFFFF|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001164]:KHMBT16 t6, t5, t4<br> [0x80001168]:sd t6, 448(ra)<br>     |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011a0]:KHMBT16 t6, t5, t4<br> [0x800011a4]:sd t6, 464(ra)<br>     |
|  63|[0x800035f0]<br>0x00000008FFFFFFFF|- rs2_h0_val == -9<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800011dc]:KHMBT16 t6, t5, t4<br> [0x800011e0]:sd t6, 480(ra)<br>     |
|  64|[0x80003600]<br>0x0000000400000000|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001218]:KHMBT16 t6, t5, t4<br> [0x8000121c]:sd t6, 496(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFDFFFFFFFF|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001250]:KHMBT16 t6, t5, t4<br> [0x80001254]:sd t6, 512(ra)<br>     |
|  66|[0x80003620]<br>0x000002AA00000002|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000128c]:KHMBT16 t6, t5, t4<br> [0x80001290]:sd t6, 528(ra)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFF00000000|- rs2_h3_val == 1<br> - rs2_h1_val == -9<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012c8]:KHMBT16 t6, t5, t4<br> [0x800012cc]:sd t6, 544(ra)<br>     |
|  68|[0x80003640]<br>0xFFFFFFFD0000001F|- rs2_h1_val == 32767<br> - rs2_h0_val == 4<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000130c]:KHMBT16 t6, t5, t4<br> [0x80001310]:sd t6, 560(ra)<br>     |
|  69|[0x80003650]<br>0xFFFFFFFF00000000|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001348]:KHMBT16 t6, t5, t4<br> [0x8000134c]:sd t6, 576(ra)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFF00000020|- rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001380]:KHMBT16 t6, t5, t4<br> [0x80001384]:sd t6, 592(ra)<br>     |
|  71|[0x80003670]<br>0x00000000FFFFFFAA|- rs2_h2_val == 32<br> - rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800013bc]:KHMBT16 t6, t5, t4<br> [0x800013c0]:sd t6, 608(ra)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFF00000000|- rs2_h2_val == 16384<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013f8]:KHMBT16 t6, t5, t4<br> [0x800013fc]:sd t6, 624(ra)<br>     |
|  73|[0x80003690]<br>0xFFFFFFFF00000005|- rs1_h3_val == -16385<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001438]:KHMBT16 t6, t5, t4<br> [0x8000143c]:sd t6, 640(ra)<br>     |
|  74|[0x800036a0]<br>0x00000080FFFFFFBF|- rs2_h1_val == -129<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000146c]:KHMBT16 t6, t5, t4<br> [0x80001470]:sd t6, 656(ra)<br>     |
|  75|[0x800036b0]<br>0x0000000000000000|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800014a8]:KHMBT16 t6, t5, t4<br> [0x800014ac]:sd t6, 672(ra)<br>     |
|  76|[0x800036c0]<br>0x0000000000000000|- rs2_h2_val == -5<br> - rs2_h1_val == 256<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800014e0]:KHMBT16 t6, t5, t4<br> [0x800014e4]:sd t6, 688(ra)<br>     |
|  77|[0x800036d0]<br>0x00000000FFFFFFFF|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001518]:KHMBT16 t6, t5, t4<br> [0x8000151c]:sd t6, 704(ra)<br>     |
|  78|[0x800036e0]<br>0xFFFFFBFF00000002|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000155c]:KHMBT16 t6, t5, t4<br> [0x80001560]:sd t6, 720(ra)<br>     |
|  79|[0x800036f0]<br>0xFFFFFFF7FFFFFFFD|- rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001590]:KHMBT16 t6, t5, t4<br> [0x80001594]:sd t6, 736(ra)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFAFFFFFFFF|- rs2_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800015cc]:KHMBT16 t6, t5, t4<br> [0x800015d0]:sd t6, 752(ra)<br>     |
|  81|[0x80003710]<br>0xFFFFFFFDFFFFFFFC|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001610]:KHMBT16 t6, t5, t4<br> [0x80001614]:sd t6, 768(ra)<br>     |
|  82|[0x80003720]<br>0x000000000000000F|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000164c]:KHMBT16 t6, t5, t4<br> [0x80001650]:sd t6, 784(ra)<br>     |
|  83|[0x80003730]<br>0x0000000900000000|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001688]:KHMBT16 t6, t5, t4<br> [0x8000168c]:sd t6, 800(ra)<br>     |
|  84|[0x80003740]<br>0xFFFFFFFF00000002|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800016c4]:KHMBT16 t6, t5, t4<br> [0x800016c8]:sd t6, 816(ra)<br>     |
|  85|[0x80003760]<br>0xFFFFFC00FFFFFFFF|- rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001734]:KHMBT16 t6, t5, t4<br> [0x80001738]:sd t6, 848(ra)<br>     |
|  86|[0x80003770]<br>0xFFFFFFFE00000000|- rs2_h1_val == -17<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000176c]:KHMBT16 t6, t5, t4<br> [0x80001770]:sd t6, 864(ra)<br>     |
|  87|[0x80003780]<br>0xFFFFFF7FFFFFFFFF|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800017a4]:KHMBT16 t6, t5, t4<br> [0x800017a8]:sd t6, 880(ra)<br>     |
|  88|[0x80003790]<br>0x00000055FFFFFFFF|- rs2_h1_val == 512<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017e8]:KHMBT16 t6, t5, t4<br> [0x800017ec]:sd t6, 896(ra)<br>     |
|  89|[0x800037a0]<br>0x0000001000000000|- rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001824]:KHMBT16 t6, t5, t4<br> [0x80001828]:sd t6, 912(ra)<br>     |
|  90|[0x800037b0]<br>0x00000000FFFFFFFF|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000185c]:KHMBT16 t6, t5, t4<br> [0x80001860]:sd t6, 928(ra)<br>     |
|  91|[0x800037c0]<br>0x0000000000000000|- rs2_h1_val == -3<br> - rs1_h3_val == -3<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001898]:KHMBT16 t6, t5, t4<br> [0x8000189c]:sd t6, 944(ra)<br>     |
|  92|[0x800037d0]<br>0xFFFFFBFFFFFFFFF8|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800018d0]:KHMBT16 t6, t5, t4<br> [0x800018d4]:sd t6, 960(ra)<br>     |
|  93|[0x800037e0]<br>0xFFFFFFFFFFFFFFC0|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001908]:KHMBT16 t6, t5, t4<br> [0x8000190c]:sd t6, 976(ra)<br>     |
|  94|[0x800037f0]<br>0x0000000000000FFF|- rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001944]:KHMBT16 t6, t5, t4<br> [0x80001948]:sd t6, 992(ra)<br>     |
|  95|[0x80003800]<br>0x00000000FFFFFFFF|- rs2_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001970]:KHMBT16 t6, t5, t4<br> [0x80001974]:sd t6, 1008(ra)<br>    |
|  96|[0x80003810]<br>0xFFFFFFFF00000000|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800019a8]:KHMBT16 t6, t5, t4<br> [0x800019ac]:sd t6, 1024(ra)<br>    |
|  97|[0x80003820]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800019e4]:KHMBT16 t6, t5, t4<br> [0x800019e8]:sd t6, 1040(ra)<br>    |
|  98|[0x80003830]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001a10]:KHMBT16 t6, t5, t4<br> [0x80001a14]:sd t6, 1056(ra)<br>    |
|  99|[0x80003860]<br>0xFFFFFFFFFFFFFFEF|- rs2_h3_val == -17<br> - rs2_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001ab4]:KHMBT16 t6, t5, t4<br> [0x80001ab8]:sd t6, 1104(ra)<br>    |
