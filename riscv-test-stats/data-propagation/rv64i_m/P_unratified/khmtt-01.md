
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001970')]      |
| SIG_REGION                | [('0x80003210', '0x80003830', '196 dwords')]      |
| COV_LABELS                | khmtt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmtt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 196      |
| STAT1                     | 96      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 98     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000187c]:KHMTT t6, t5, t4
      [0x80001880]:sd t6, 1200(tp)
 -- Signature Address: 0x800037e0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 4
      - rs2_h2_val == 64
      - rs2_h1_val == 64
      - rs1_h3_val == 512
      - rs1_h2_val == 32
      - rs1_h1_val == -65
      - rs1_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001958]:KHMTT t6, t5, t4
      [0x8000195c]:sd t6, 1264(tp)
 -- Signature Address: 0x80003820 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h2_val == 4
      - rs2_h1_val == -2
      - rs2_h0_val == -65
      - rs1_h3_val == -129
      - rs1_h2_val == -5
      - rs1_h0_val == -21846






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmtt', 'rs1 : x0', 'rs2 : x0', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h2_val == rs2_h2_val', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800003c8]:KHMTT a0, zero, zero
	-[0x800003cc]:sd a0, 0(ra)
Current Store : [0x800003d0] : sd zero, 8(ra) -- Store: [0x80003218]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x15', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -65', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000040c]:KHMTT a5, a5, a5
	-[0x80000410]:sd a5, 16(ra)
Current Store : [0x80000414] : sd a5, 24(ra) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h2_val == 32767', 'rs2_h0_val == 64', 'rs1_h3_val == -5', 'rs1_h2_val == 8', 'rs1_h1_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000444]:KHMTT s10, a4, tp
	-[0x80000448]:sd s10, 32(ra)
Current Store : [0x8000044c] : sd a4, 40(ra) -- Store: [0x80003238]:0xFFFB0008FFFF2000




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rd : x19', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -3', 'rs2_h2_val == 2', 'rs2_h1_val == -32768', 'rs2_h0_val == -1025', 'rs1_h3_val == 512', 'rs1_h1_val == 1024', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000480]:KHMTT s3, s3, a7
	-[0x80000484]:sd s3, 48(ra)
Current Store : [0x80000488] : sd s3, 56(ra) -- Store: [0x80003248]:0xFFFFFFFFFFFFFC00




Last Coverpoint : ['rs1 : x10', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs2_h3_val == 512', 'rs2_h2_val == -21846', 'rs1_h3_val == -1025', 'rs1_h2_val == -21846', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800004b4]:KHMTT fp, a0, fp
	-[0x800004b8]:sd fp, 64(ra)
Current Store : [0x800004bc] : sd a0, 72(ra) -- Store: [0x80003258]:0xFBFFAAAAFBFF0005




Last Coverpoint : ['rs1 : x22', 'rs2 : x21', 'rd : x0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h2_val == 4', 'rs2_h1_val == -2', 'rs2_h0_val == -65', 'rs1_h3_val == -129', 'rs1_h2_val == -5', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800004f0]:KHMTT zero, s6, s5
	-[0x800004f4]:sd zero, 80(ra)
Current Store : [0x800004f8] : sd s6, 88(ra) -- Store: [0x80003268]:0xFF7FFFFBFFFCAAAA




Last Coverpoint : ['rs1 : x9', 'rs2 : x31', 'rd : x7', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -16385', 'rs2_h1_val == -33', 'rs2_h0_val == -8193', 'rs1_h2_val == 2048', 'rs1_h1_val == -17', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000052c]:KHMTT t2, s1, t6
	-[0x80000530]:sd t2, 96(ra)
Current Store : [0x80000534] : sd s1, 104(ra) -- Store: [0x80003278]:0x00070800FFEF0020




Last Coverpoint : ['rs1 : x26', 'rs2 : x5', 'rd : x29', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -21846', 'rs2_h2_val == 4096', 'rs2_h1_val == 128', 'rs2_h0_val == 512', 'rs1_h3_val == 2', 'rs1_h2_val == 1024', 'rs1_h1_val == 128', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000560]:KHMTT t4, s10, t0
	-[0x80000564]:sd t4, 112(ra)
Current Store : [0x80000568] : sd s10, 120(ra) -- Store: [0x80003288]:0x0002040000800010




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x30', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == 16384', 'rs2_h2_val == -1', 'rs2_h1_val == 4096', 'rs2_h0_val == 8192', 'rs1_h3_val == -8193', 'rs1_h2_val == -4097', 'rs1_h1_val == -16385', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800005a8]:KHMTT t5, t2, a3
	-[0x800005ac]:sd t5, 128(ra)
Current Store : [0x800005b0] : sd t2, 136(ra) -- Store: [0x80003298]:0xDFFFEFFFBFFF7FFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x5', 'rs1_h0_val == -32768', 'rs2_h2_val == 1024', 'rs2_h1_val == -17', 'rs2_h0_val == -32768', 'rs1_h3_val == -21846', 'rs1_h2_val == -8193', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800005dc]:KHMTT t0, t5, t2
	-[0x800005e0]:sd t0, 144(ra)
Current Store : [0x800005e4] : sd t5, 152(ra) -- Store: [0x800032a8]:0xAAAADFFF7FFF8000




Last Coverpoint : ['rs1 : x12', 'rs2 : x11', 'rd : x17', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -513', 'rs2_h2_val == -17', 'rs2_h1_val == 2048', 'rs2_h0_val == 4096', 'rs1_h2_val == 256', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000614]:KHMTT a7, a2, a1
	-[0x80000618]:sd a7, 160(ra)
Current Store : [0x8000061c] : sd a2, 168(ra) -- Store: [0x800032b8]:0x02000100FFFDFFF9




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x4', 'rs2_h3_val == 21845', 'rs2_h2_val == 16', 'rs2_h0_val == -21846', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000648]:KHMTT tp, t4, s2
	-[0x8000064c]:sd tp, 176(ra)
Current Store : [0x80000650] : sd t4, 184(ra) -- Store: [0x800032c8]:0xFFFCFFF980000007




Last Coverpoint : ['rs1 : x24', 'rs2 : x27', 'rd : x9', 'rs2_h3_val == 32767', 'rs2_h2_val == -16385', 'rs2_h1_val == 64', 'rs1_h3_val == -33', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80000684]:KHMTT s1, s8, s11
	-[0x80000688]:sd s1, 192(ra)
Current Store : [0x8000068c] : sd s8, 200(ra) -- Store: [0x800032d8]:0xFFDF000200050006




Last Coverpoint : ['rs1 : x21', 'rs2 : x29', 'rd : x31', 'rs2_h3_val == -8193', 'rs2_h2_val == -32768', 'rs2_h1_val == -2049', 'rs2_h0_val == 21845', 'rs1_h2_val == 16384', 'rs1_h1_val == 16384', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800006c8]:KHMTT t6, s5, t4
	-[0x800006cc]:sd t6, 208(ra)
Current Store : [0x800006d0] : sd s5, 216(ra) -- Store: [0x800032e8]:0xFF7F40004000FDFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x30', 'rd : x21', 'rs2_h3_val == -4097', 'rs2_h1_val == -21846', 'rs1_h3_val == -2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000708]:KHMTT s5, tp, t5
	-[0x8000070c]:sd s5, 224(ra)
Current Store : [0x80000710] : sd tp, 232(ra) -- Store: [0x800032f8]:0xFFFE000900030004




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x22', 'rs2_h3_val == -2049', 'rs2_h2_val == -8193', 'rs2_h1_val == -257', 'rs2_h0_val == -9', 'rs1_h3_val == 8', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000740]:KHMTT s6, gp, sp
	-[0x80000744]:sd s6, 240(ra)
Current Store : [0x80000748] : sd gp, 248(ra) -- Store: [0x80003308]:0x0008FFF801002000




Last Coverpoint : ['rs1 : x18', 'rs2 : x26', 'rd : x20', 'rs2_h3_val == -1025', 'rs2_h2_val == 256', 'rs2_h0_val == -17', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x8000077c]:KHMTT s4, s2, s10
	-[0x80000780]:sd s4, 256(ra)
Current Store : [0x80000784] : sd s2, 264(ra) -- Store: [0x80003318]:0xFFF80008FFF9FFEF




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x25', 'rs2_h3_val == -257', 'rs2_h0_val == -257', 'rs1_h3_val == 256', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800007a8]:KHMTT s9, fp, a6
	-[0x800007ac]:sd s9, 272(ra)
Current Store : [0x800007b0] : sd fp, 280(ra) -- Store: [0x80003328]:0x0100010004000002




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x2', 'rs2_h3_val == -129', 'rs2_h2_val == 1', 'rs2_h0_val == 16384', 'rs1_h1_val == 1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800007e8]:KHMTT sp, a1, gp
	-[0x800007ec]:sd sp, 0(tp)
Current Store : [0x800007f0] : sd a1, 8(tp) -- Store: [0x80003338]:0xFFFA00030001FFDF




Last Coverpoint : ['rs1 : x1', 'rs2 : x22', 'rd : x27', 'rs2_h3_val == -65', 'rs2_h2_val == 2048', 'rs1_h3_val == -3', 'rs1_h2_val == 64', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000820]:KHMTT s11, ra, s6
	-[0x80000824]:sd s11, 16(tp)
Current Store : [0x80000828] : sd ra, 24(tp) -- Store: [0x80003348]:0xFFFD0040FFEF5555




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x13', 'rs2_h3_val == -33', 'rs2_h2_val == 128', 'rs2_h1_val == -4097', 'rs1_h1_val == -21846', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000085c]:KHMTT a3, t6, s3
	-[0x80000860]:sd a3, 32(tp)
Current Store : [0x80000864] : sd t6, 40(tp) -- Store: [0x80003358]:0x0008FFF9AAAAFBFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x28', 'rs2_h3_val == -17', 'rs2_h1_val == -16385', 'rs1_h2_val == -3', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000898]:KHMTT t3, s4, ra
	-[0x8000089c]:sd t3, 48(tp)
Current Store : [0x800008a0] : sd s4, 56(tp) -- Store: [0x80003368]:0xC000FFFD00070800




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x24', 'rs2_h3_val == -9', 'rs2_h2_val == -5', 'rs1_h1_val == -129', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800008cc]:KHMTT s8, sp, a2
	-[0x800008d0]:sd s8, 64(tp)
Current Store : [0x800008d4] : sd sp, 72(tp) -- Store: [0x80003378]:0x00090800FF7FFFFE




Last Coverpoint : ['rs1 : x28', 'rs2 : x14', 'rd : x11', 'rs2_h3_val == -5', 'rs2_h0_val == -2049', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x80000908]:KHMTT a1, t3, a4
	-[0x8000090c]:sd a1, 80(tp)
Current Store : [0x80000910] : sd t3, 88(tp) -- Store: [0x80003388]:0xFFFCFFBF00065555




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x14', 'rs2_h3_val == -2', 'rs2_h2_val == 8', 'rs1_h2_val == 16', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000944]:KHMTT a4, s11, t1
	-[0x80000948]:sd a4, 96(tp)
Current Store : [0x8000094c] : sd s11, 104(tp) -- Store: [0x80003398]:0xFFFB00100200FFF9




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x23', 'rs2_h3_val == -32768', 'rs2_h2_val == 512', 'rs2_h1_val == 16384', 'rs2_h0_val == -16385', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x80000980]:KHMTT s7, t1, s8
	-[0x80000984]:sd s7, 112(tp)
Current Store : [0x80000988] : sd t1, 120(tp) -- Store: [0x800033a8]:0x0007FFDF7FFFFFFC




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x16', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs2_h3_val == 8192', 'rs2_h2_val == -129', 'rs2_h1_val == 8', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x800009bc]:KHMTT a6, a3, s7
	-[0x800009c0]:sd a6, 128(tp)
Current Store : [0x800009c4] : sd a3, 136(tp) -- Store: [0x800033b8]:0x00070080FF7F0010




Last Coverpoint : ['rs1 : x25', 'rs2 : x10', 'rd : x1', 'rs2_h3_val == 4096', 'rs2_h2_val == -33', 'rs2_h0_val == 2', 'rs1_h3_val == 16384', 'rs1_h2_val == 4096', 'rs1_h1_val == 32', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800009f4]:KHMTT ra, s9, a0
	-[0x800009f8]:sd ra, 144(tp)
Current Store : [0x800009fc] : sd s9, 152(tp) -- Store: [0x800033c8]:0x4000100000204000




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x6', 'rs2_h3_val == 1024', 'rs2_h1_val == 32767', 'rs1_h2_val == 32', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000a30]:KHMTT t1, a7, t3
	-[0x80000a34]:sd t1, 160(tp)
Current Store : [0x80000a38] : sd a7, 168(tp) -- Store: [0x800033d8]:0x0100002000100010




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x3', 'rs2_h3_val == 256', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80000a68]:KHMTT gp, a6, s9
	-[0x80000a6c]:sd gp, 176(tp)
Current Store : [0x80000a70] : sd a6, 184(tp) -- Store: [0x800033e8]:0x00065555FFF95555




Last Coverpoint : ['rs1 : x5', 'rs2 : x9', 'rd : x18', 'rs2_h3_val == 64']
Last Code Sequence : 
	-[0x80000aa0]:KHMTT s2, t0, s1
	-[0x80000aa4]:sd s2, 192(tp)
Current Store : [0x80000aa8] : sd t0, 200(tp) -- Store: [0x800033f8]:0x3FFFDFFF01000005




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x12', 'rs2_h3_val == 32', 'rs2_h0_val == -1', 'rs1_h3_val == -17', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000ad4]:KHMTT a2, s7, s4
	-[0x80000ad8]:sd a2, 208(tp)
Current Store : [0x80000adc] : sd s7, 216(tp) -- Store: [0x80003408]:0xFFEFFFFD40000001




Last Coverpoint : ['rs2_h3_val == 16', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000b08]:KHMTT t6, t5, t4
	-[0x80000b0c]:sd t6, 224(tp)
Current Store : [0x80000b10] : sd t5, 232(tp) -- Store: [0x80003418]:0x0005FFF6FBFFFFFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h3_val == -513', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000b3c]:KHMTT t6, t5, t4
	-[0x80000b40]:sd t6, 240(tp)
Current Store : [0x80000b44] : sd t5, 248(tp) -- Store: [0x80003428]:0xFDFF00000009DFFF




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h3_val == 64', 'rs1_h2_val == -2049', 'rs1_h1_val == -5', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000b78]:KHMTT t6, t5, t4
	-[0x80000b7c]:sd t6, 256(tp)
Current Store : [0x80000b80] : sd t5, 264(tp) -- Store: [0x80003438]:0x0040F7FFFFFBFEFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == 21845', 'rs2_h0_val == -4097', 'rs1_h1_val == -2', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000bb8]:KHMTT t6, t5, t4
	-[0x80000bbc]:sd t6, 272(tp)
Current Store : [0x80000bc0] : sd t5, 280(tp) -- Store: [0x80003448]:0xFFFE0003FFFE1000




Last Coverpoint : ['rs1_h3_val == 128', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000be8]:KHMTT t6, t5, t4
	-[0x80000bec]:sd t6, 288(tp)
Current Store : [0x80000bf0] : sd t5, 296(tp) -- Store: [0x80003458]:0x0080AAAA20000020




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h2_val == 512', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c24]:KHMTT t6, t5, t4
	-[0x80000c28]:sd t6, 304(tp)
Current Store : [0x80000c2c] : sd t5, 312(tp) -- Store: [0x80003468]:0xFFFB02001000FEFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 8192', 'rs1_h3_val == 32767', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000c58]:KHMTT t6, t5, t4
	-[0x80000c5c]:sd t6, 320(tp)
Current Store : [0x80000c60] : sd t5, 328(tp) -- Store: [0x80003478]:0x7FFFEFFF00401000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h3_val == 16', 'rs1_h1_val == 8', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000c94]:KHMTT t6, t5, t4
	-[0x80000c98]:sd t6, 336(tp)
Current Store : [0x80000c9c] : sd t5, 344(tp) -- Store: [0x80003488]:0x0010000700080200




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000cd0]:KHMTT t6, t5, t4
	-[0x80000cd4]:sd t6, 352(tp)
Current Store : [0x80000cd8] : sd t5, 360(tp) -- Store: [0x80003498]:0x004001000004FFF9




Last Coverpoint : ['rs1_h3_val == 8192', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d0c]:KHMTT t6, t5, t4
	-[0x80000d10]:sd t6, 368(tp)
Current Store : [0x80000d14] : sd t5, 376(tp) -- Store: [0x800034a8]:0x2000F7FF00020020




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x80000d50]:KHMTT t6, t5, t4
	-[0x80000d54]:sd t6, 384(tp)
Current Store : [0x80000d58] : sd t5, 392(tp) -- Store: [0x800034b8]:0xBFFFFFFD0000FDFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h0_val == -5', 'rs1_h3_val == 21845', 'rs1_h2_val == -129', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000d90]:KHMTT t6, t5, t4
	-[0x80000d94]:sd t6, 400(tp)
Current Store : [0x80000d98] : sd t5, 408(tp) -- Store: [0x800034c8]:0x5555FF7F4000BFFF




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000dc8]:KHMTT t6, t5, t4
	-[0x80000dcc]:sd t6, 416(tp)
Current Store : [0x80000dd0] : sd t5, 424(tp) -- Store: [0x800034d8]:0xFFDF3FFFFFFFEFFF




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h1_val == 32', 'rs1_h2_val == 4', 'rs1_h1_val == 21845', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000e04]:KHMTT t6, t5, t4
	-[0x80000e08]:sd t6, 432(tp)
Current Store : [0x80000e0c] : sd t5, 440(tp) -- Store: [0x800034e8]:0x004000045555FF7F




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000e38]:KHMTT t6, t5, t4
	-[0x80000e3c]:sd t6, 448(tp)
Current Store : [0x80000e40] : sd t5, 456(tp) -- Store: [0x800034f8]:0x000200098000FFBF




Last Coverpoint : ['rs1_h2_val == -257', 'rs1_h1_val == 2048', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000e6c]:KHMTT t6, t5, t4
	-[0x80000e70]:sd t6, 464(tp)
Current Store : [0x80000e74] : sd t5, 472(tp) -- Store: [0x80003508]:0xFFFBFEFF0800FFF7




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000ea4]:KHMTT t6, t5, t4
	-[0x80000ea8]:sd t6, 480(tp)
Current Store : [0x80000eac] : sd t5, 488(tp) -- Store: [0x80003518]:0x0008FFFD0009FFFB




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == 2048', 'rs1_h2_val == -16385', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000ee0]:KHMTT t6, t5, t4
	-[0x80000ee4]:sd t6, 496(tp)
Current Store : [0x80000ee8] : sd t5, 504(tp) -- Store: [0x80003528]:0x3FFFBFFFFFFCFFFD




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000f1c]:KHMTT t6, t5, t4
	-[0x80000f20]:sd t6, 512(tp)
Current Store : [0x80000f24] : sd t5, 520(tp) -- Store: [0x80003538]:0x0007FEFF00070400




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000f58]:KHMTT t6, t5, t4
	-[0x80000f5c]:sd t6, 528(tp)
Current Store : [0x80000f60] : sd t5, 536(tp) -- Store: [0x80003548]:0x000600063FFF0100




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_h2_val == 1', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000f94]:KHMTT t6, t5, t4
	-[0x80000f98]:sd t6, 544(tp)
Current Store : [0x80000f9c] : sd t5, 552(tp) -- Store: [0x80003558]:0xFFDF000100200040




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000fd0]:KHMTT t6, t5, t4
	-[0x80000fd4]:sd t6, 560(tp)
Current Store : [0x80000fd8] : sd t5, 568(tp) -- Store: [0x80003568]:0x0080FFFBFDFF0008




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001004]:KHMTT t6, t5, t4
	-[0x80001008]:sd t6, 576(tp)
Current Store : [0x8000100c] : sd t5, 584(tp) -- Store: [0x80003578]:0x04000007FBFF0000




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == 32767', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x8000103c]:KHMTT t6, t5, t4
	-[0x80001040]:sd t6, 592(tp)
Current Store : [0x80001044] : sd t5, 600(tp) -- Store: [0x80003588]:0xFFFCFDFF00407FFF




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == 8', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x80001074]:KHMTT t6, t5, t4
	-[0x80001078]:sd t6, 608(tp)
Current Store : [0x8000107c] : sd t5, 616(tp) -- Store: [0x80003598]:0xEFFF040000020040




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800010a8]:KHMTT t6, t5, t4
	-[0x800010ac]:sd t6, 624(tp)
Current Store : [0x800010b0] : sd t5, 632(tp) -- Store: [0x800035a8]:0xFFDF000820000040




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800010e4]:KHMTT t6, t5, t4
	-[0x800010e8]:sd t6, 640(tp)
Current Store : [0x800010ec] : sd t5, 648(tp) -- Store: [0x800035b8]:0x00014000FFF60003




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001120]:KHMTT t6, t5, t4
	-[0x80001124]:sd t6, 656(tp)
Current Store : [0x80001128] : sd t5, 664(tp) -- Store: [0x800035c8]:0xEFFFF7FFDFFFFF7F




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h0_val == -3', 'rs1_h2_val == -17']
Last Code Sequence : 
	-[0x8000115c]:KHMTT t6, t5, t4
	-[0x80001160]:sd t6, 672(tp)
Current Store : [0x80001164] : sd t5, 680(tp) -- Store: [0x800035d8]:0xFFFAFFEF0040FFF9




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80001198]:KHMTT t6, t5, t4
	-[0x8000119c]:sd t6, 688(tp)
Current Store : [0x800011a0] : sd t5, 696(tp) -- Store: [0x800035e8]:0x004008000004FFFC




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800011c8]:KHMTT t6, t5, t4
	-[0x800011cc]:sd t6, 704(tp)
Current Store : [0x800011d0] : sd t5, 712(tp) -- Store: [0x800035f8]:0xFF7F400000040200




Last Coverpoint : ['rs2_h1_val == -3', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001204]:KHMTT t6, t5, t4
	-[0x80001208]:sd t6, 720(tp)
Current Store : [0x8000120c] : sd t5, 728(tp) -- Store: [0x80003608]:0xC000F7FF00100008




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80001238]:KHMTT t6, t5, t4
	-[0x8000123c]:sd t6, 736(tp)
Current Store : [0x80001240] : sd t5, 744(tp) -- Store: [0x80003618]:0xFDFF000820000020




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001274]:KHMTT t6, t5, t4
	-[0x80001278]:sd t6, 752(tp)
Current Store : [0x8000127c] : sd t5, 760(tp) -- Store: [0x80003628]:0xEFFF00040009FFDF




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800012a8]:KHMTT t6, t5, t4
	-[0x800012ac]:sd t6, 768(tp)
Current Store : [0x800012b0] : sd t5, 776(tp) -- Store: [0x80003638]:0xFFF8FFF81000FFF7




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800012e4]:KHMTT t6, t5, t4
	-[0x800012e8]:sd t6, 784(tp)
Current Store : [0x800012ec] : sd t5, 792(tp) -- Store: [0x80003648]:0xEFFF00060002BFFF




Last Coverpoint : ['rs2_h2_val == -513', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001324]:KHMTT t6, t5, t4
	-[0x80001328]:sd t6, 800(tp)
Current Store : [0x8000132c] : sd t5, 808(tp) -- Store: [0x80003658]:0x1000080055550007




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x80001360]:KHMTT t6, t5, t4
	-[0x80001364]:sd t6, 816(tp)
Current Store : [0x80001368] : sd t5, 824(tp) -- Store: [0x80003668]:0xF7FFC0000100FFFD




Last Coverpoint : ['rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000139c]:KHMTT t6, t5, t4
	-[0x800013a0]:sd t6, 832(tp)
Current Store : [0x800013a4] : sd t5, 840(tp) -- Store: [0x80003678]:0xFEFFAAAAFFF9FF7F




Last Coverpoint : ['rs1_h3_val == -65']
Last Code Sequence : 
	-[0x800013d8]:KHMTT t6, t5, t4
	-[0x800013dc]:sd t6, 848(tp)
Current Store : [0x800013e0] : sd t5, 856(tp) -- Store: [0x80003688]:0xFFBF010000080800




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80001414]:KHMTT t6, t5, t4
	-[0x80001418]:sd t6, 864(tp)
Current Store : [0x8000141c] : sd t5, 872(tp) -- Store: [0x80003698]:0xFFF7000500030040




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001448]:KHMTT t6, t5, t4
	-[0x8000144c]:sd t6, 880(tp)
Current Store : [0x80001450] : sd t5, 888(tp) -- Store: [0x800036a8]:0xFFFDFFF6FFF7AAAA




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h3_val == 32']
Last Code Sequence : 
	-[0x8000147c]:KHMTT t6, t5, t4
	-[0x80001480]:sd t6, 896(tp)
Current Store : [0x80001484] : sd t5, 904(tp) -- Store: [0x800036b8]:0x0020000400800008




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x800014b0]:KHMTT t6, t5, t4
	-[0x800014b4]:sd t6, 912(tp)
Current Store : [0x800014b8] : sd t5, 920(tp) -- Store: [0x800036c8]:0xFFF7FFF8FFF87FFF




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x800014e4]:KHMTT t6, t5, t4
	-[0x800014e8]:sd t6, 928(tp)
Current Store : [0x800014ec] : sd t5, 936(tp) -- Store: [0x800036d8]:0x00040000FFF6BFFF




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80001518]:KHMTT t6, t5, t4
	-[0x8000151c]:sd t6, 944(tp)
Current Store : [0x80001520] : sd t5, 952(tp) -- Store: [0x800036e8]:0x0000FFFE7FFFFFFF




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001540]:KHMTT t6, t5, t4
	-[0x80001544]:sd t6, 960(tp)
Current Store : [0x80001548] : sd t5, 968(tp) -- Store: [0x800036f8]:0xFFFFFFFDFFF88000




Last Coverpoint : ['rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001574]:KHMTT t6, t5, t4
	-[0x80001578]:sd t6, 976(tp)
Current Store : [0x8000157c] : sd t5, 984(tp) -- Store: [0x80003708]:0xFFFA7FFFFFFE0008




Last Coverpoint : ['rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x800015a4]:KHMTT t6, t5, t4
	-[0x800015a8]:sd t6, 992(tp)
Current Store : [0x800015ac] : sd t5, 1000(tp) -- Store: [0x80003718]:0x00010080BFFFFEFF




Last Coverpoint : ['rs1_h2_val == -1025', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800015e0]:KHMTT t6, t5, t4
	-[0x800015e4]:sd t6, 1008(tp)
Current Store : [0x800015e8] : sd t5, 1016(tp) -- Store: [0x80003728]:0x1000FBFFF7FFFBFF




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x8000161c]:KHMTT t6, t5, t4
	-[0x80001620]:sd t6, 1024(tp)
Current Store : [0x80001624] : sd t5, 1032(tp) -- Store: [0x80003738]:0x5555FFFA0080FFBF




Last Coverpoint : ['rs1_h2_val == -9', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80001658]:KHMTT t6, t5, t4
	-[0x8000165c]:sd t6, 1040(tp)
Current Store : [0x80001660] : sd t5, 1048(tp) -- Store: [0x80003748]:0xFEFFFFF7FFDF0020




Last Coverpoint : ['rs1_h3_val == -32768', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001694]:KHMTT t6, t5, t4
	-[0x80001698]:sd t6, 1056(tp)
Current Store : [0x8000169c] : sd t5, 1064(tp) -- Store: [0x80003758]:0x800020000004FFDF




Last Coverpoint : ['rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x800016c8]:KHMTT t6, t5, t4
	-[0x800016cc]:sd t6, 1072(tp)
Current Store : [0x800016d0] : sd t5, 1080(tp) -- Store: [0x80003768]:0xFFF78000FFFEFFEF




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x80001700]:KHMTT t6, t5, t4
	-[0x80001704]:sd t6, 1088(tp)
Current Store : [0x80001708] : sd t5, 1096(tp) -- Store: [0x80003778]:0x00072000FDFF0003




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80001730]:KHMTT t6, t5, t4
	-[0x80001734]:sd t6, 1104(tp)
Current Store : [0x80001738] : sd t5, 1112(tp) -- Store: [0x80003788]:0x08000200FFFAC000




Last Coverpoint : ['rs2_h1_val == -9']
Last Code Sequence : 
	-[0x8000176c]:KHMTT t6, t5, t4
	-[0x80001770]:sd t6, 1120(tp)
Current Store : [0x80001774] : sd t5, 1128(tp) -- Store: [0x80003798]:0xFFDFFFF800070200




Last Coverpoint : ['rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x800017a4]:KHMTT t6, t5, t4
	-[0x800017a8]:sd t6, 1136(tp)
Current Store : [0x800017ac] : sd t5, 1144(tp) -- Store: [0x800037a8]:0xFFFEF7FFFFFA0001




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800017e0]:KHMTT t6, t5, t4
	-[0x800017e4]:sd t6, 1152(tp)
Current Store : [0x800017e8] : sd t5, 1160(tp) -- Store: [0x800037b8]:0x0080FFBFEFFFAAAA




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001814]:KHMTT t6, t5, t4
	-[0x80001818]:sd t6, 1168(tp)
Current Store : [0x8000181c] : sd t5, 1176(tp) -- Store: [0x800037c8]:0xFFBF0008FFDF0080




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x8000184c]:KHMTT t6, t5, t4
	-[0x80001850]:sd t6, 1184(tp)
Current Store : [0x80001854] : sd t5, 1192(tp) -- Store: [0x800037d8]:0xFFF8F7FFFEFF0003




Last Coverpoint : ['opcode : khmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 4', 'rs2_h2_val == 64', 'rs2_h1_val == 64', 'rs1_h3_val == 512', 'rs1_h2_val == 32', 'rs1_h1_val == -65', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000187c]:KHMTT t6, t5, t4
	-[0x80001880]:sd t6, 1200(tp)
Current Store : [0x80001884] : sd t5, 1208(tp) -- Store: [0x800037e8]:0x02000020FFBF1000




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800018a8]:KHMTT t6, t5, t4
	-[0x800018ac]:sd t6, 1216(tp)
Current Store : [0x800018b0] : sd t5, 1224(tp) -- Store: [0x800037f8]:0x0004FEFFFFFF1000




Last Coverpoint : ['rs2_h3_val == 128']
Last Code Sequence : 
	-[0x800018d8]:KHMTT t6, t5, t4
	-[0x800018dc]:sd t6, 1232(tp)
Current Store : [0x800018e0] : sd t5, 1240(tp) -- Store: [0x80003808]:0x0007EFFF08008000




Last Coverpoint : ['rs1_h2_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000191c]:KHMTT t6, t5, t4
	-[0x80001920]:sd t6, 1248(tp)
Current Store : [0x80001924] : sd t5, 1256(tp) -- Store: [0x80003818]:0xC000FFFFBFFFF7FF




Last Coverpoint : ['opcode : khmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == 4', 'rs2_h1_val == -2', 'rs2_h0_val == -65', 'rs1_h3_val == -129', 'rs1_h2_val == -5', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80001958]:KHMTT t6, t5, t4
	-[0x8000195c]:sd t6, 1264(tp)
Current Store : [0x80001960] : sd t5, 1272(tp) -- Store: [0x80003828]:0xFF7FFFFBFFFCAAAA





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

|s.no|            signature             |                                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                                      |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : khmtt<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                   |[0x800003c8]:KHMTT a0, zero, zero<br> [0x800003cc]:sd a0, 0(ra)<br>  |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -65<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                  |[0x8000040c]:KHMTT a5, a5, a5<br> [0x80000410]:sd a5, 16(ra)<br>     |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x4<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 64<br> - rs1_h3_val == -5<br> - rs1_h2_val == 8<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8192<br> |[0x80000444]:KHMTT s10, a4, tp<br> [0x80000448]:sd s10, 32(ra)<br>   |
|   4|[0x80003240]<br>0xFFFFFFFFFFFFFC00|- rs1 : x19<br> - rs2 : x17<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -3<br> - rs2_h2_val == 2<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -1025<br> - rs1_h3_val == 512<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 128<br>                                                                                                                                               |[0x80000480]:KHMTT s3, s3, a7<br> [0x80000484]:sd s3, 48(ra)<br>     |
|   5|[0x80003250]<br>0x0000000000000401|- rs1 : x10<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs2_h3_val == 512<br> - rs2_h2_val == -21846<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                  |[0x800004b4]:KHMTT fp, a0, fp<br> [0x800004b8]:sd fp, 64(ra)<br>     |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x21<br> - rd : x0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h2_val == 4<br> - rs2_h1_val == -2<br> - rs2_h0_val == -65<br> - rs1_h3_val == -129<br> - rs1_h2_val == -5<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                  |[0x800004f0]:KHMTT zero, s6, s5<br> [0x800004f4]:sd zero, 80(ra)<br> |
|   7|[0x80003270]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x31<br> - rd : x7<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -16385<br> - rs2_h1_val == -33<br> - rs2_h0_val == -8193<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -17<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                              |[0x8000052c]:KHMTT t2, s1, t6<br> [0x80000530]:sd t2, 96(ra)<br>     |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x5<br> - rd : x29<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 128<br> - rs2_h0_val == 512<br> - rs1_h3_val == 2<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 128<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                |[0x80000560]:KHMTT t4, s10, t0<br> [0x80000564]:sd t4, 112(ra)<br>   |
|   9|[0x80003290]<br>0xFFFFFFFFFFFFF7FF|- rs1 : x7<br> - rs2 : x13<br> - rd : x30<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -1<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 8192<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                      |[0x800005a8]:KHMTT t5, t2, a3<br> [0x800005ac]:sd t5, 128(ra)<br>    |
|  10|[0x800032a0]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x30<br> - rs2 : x7<br> - rd : x5<br> - rs1_h0_val == -32768<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -17<br> - rs2_h0_val == -32768<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                     |[0x800005dc]:KHMTT t0, t5, t2<br> [0x800005e0]:sd t0, 144(ra)<br>    |
|  11|[0x800032b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x11<br> - rd : x17<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -513<br> - rs2_h2_val == -17<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4096<br> - rs1_h2_val == 256<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                               |[0x80000614]:KHMTT a7, a2, a1<br> [0x80000618]:sd a7, 160(ra)<br>    |
|  12|[0x800032c0]<br>0x000000000000000A|- rs1 : x29<br> - rs2 : x18<br> - rd : x4<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 16<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000648]:KHMTT tp, t4, s2<br> [0x8000064c]:sd tp, 176(ra)<br>    |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x27<br> - rd : x9<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 64<br> - rs1_h3_val == -33<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000684]:KHMTT s1, s8, s11<br> [0x80000688]:sd s1, 192(ra)<br>   |
|  14|[0x800032e0]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x21<br> - rs2 : x29<br> - rd : x31<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 21845<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                   |[0x800006c8]:KHMTT t6, s5, t4<br> [0x800006cc]:sd t6, 208(ra)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x4<br> - rs2 : x30<br> - rd : x21<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -21846<br> - rs1_h3_val == -2<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000708]:KHMTT s5, tp, t5<br> [0x8000070c]:sd s5, 224(ra)<br>    |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x3<br> - rs2 : x2<br> - rd : x22<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -8193<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br> - rs1_h3_val == 8<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                         |[0x80000740]:KHMTT s6, gp, sp<br> [0x80000744]:sd s6, 240(ra)<br>    |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x26<br> - rd : x20<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 256<br> - rs2_h0_val == -17<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x8000077c]:KHMTT s4, s2, s10<br> [0x80000780]:sd s4, 256(ra)<br>   |
|  18|[0x80003320]<br>0x00000000000001FF|- rs1 : x8<br> - rs2 : x16<br> - rd : x25<br> - rs2_h3_val == -257<br> - rs2_h0_val == -257<br> - rs1_h3_val == 256<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x800007a8]:KHMTT s9, fp, a6<br> [0x800007ac]:sd s9, 272(ra)<br>    |
|  19|[0x80003330]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x3<br> - rd : x2<br> - rs2_h3_val == -129<br> - rs2_h2_val == 1<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                    |[0x800007e8]:KHMTT sp, a1, gp<br> [0x800007ec]:sd sp, 0(tp)<br>      |
|  20|[0x80003340]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rs2 : x22<br> - rd : x27<br> - rs2_h3_val == -65<br> - rs2_h2_val == 2048<br> - rs1_h3_val == -3<br> - rs1_h2_val == 64<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000820]:KHMTT s11, ra, s6<br> [0x80000824]:sd s11, 16(tp)<br>   |
|  21|[0x80003350]<br>0x0000000000000AAB|- rs1 : x31<br> - rs2 : x19<br> - rd : x13<br> - rs2_h3_val == -33<br> - rs2_h2_val == 128<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000085c]:KHMTT a3, t6, s3<br> [0x80000860]:sd a3, 32(tp)<br>     |
|  22|[0x80003360]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x20<br> - rs2 : x1<br> - rd : x28<br> - rs2_h3_val == -17<br> - rs2_h1_val == -16385<br> - rs1_h2_val == -3<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x80000898]:KHMTT t3, s4, ra<br> [0x8000089c]:sd t3, 48(tp)<br>     |
|  23|[0x80003370]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x12<br> - rd : x24<br> - rs2_h3_val == -9<br> - rs2_h2_val == -5<br> - rs1_h1_val == -129<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x800008cc]:KHMTT s8, sp, a2<br> [0x800008d0]:sd s8, 64(tp)<br>     |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x28<br> - rs2 : x14<br> - rd : x11<br> - rs2_h3_val == -5<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000908]:KHMTT a1, t3, a4<br> [0x8000090c]:sd a1, 80(tp)<br>     |
|  25|[0x80003390]<br>0xFFFFFFFFFFFFFFDF|- rs1 : x27<br> - rs2 : x6<br> - rd : x14<br> - rs2_h3_val == -2<br> - rs2_h2_val == 8<br> - rs1_h2_val == 16<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000944]:KHMTT a4, s11, t1<br> [0x80000948]:sd a4, 96(tp)<br>    |
|  26|[0x800033a0]<br>0x0000000000003FFF|- rs1 : x6<br> - rs2 : x24<br> - rd : x23<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 512<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -16385<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000980]:KHMTT s7, t1, s8<br> [0x80000984]:sd s7, 112(tp)<br>    |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x23<br> - rd : x16<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -129<br> - rs2_h1_val == 8<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                 |[0x800009bc]:KHMTT a6, a3, s7<br> [0x800009c0]:sd a6, 128(tp)<br>    |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x10<br> - rd : x1<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -33<br> - rs2_h0_val == 2<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 32<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                               |[0x800009f4]:KHMTT ra, s9, a0<br> [0x800009f8]:sd ra, 144(tp)<br>    |
|  29|[0x800033d0]<br>0x000000000000000F|- rs1 : x17<br> - rs2 : x28<br> - rd : x6<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 32767<br> - rs1_h2_val == 32<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a30]:KHMTT t1, a7, t3<br> [0x80000a34]:sd t1, 160(tp)<br>    |
|  30|[0x800033e0]<br>0x0000000000000007|- rs1 : x16<br> - rs2 : x25<br> - rd : x3<br> - rs2_h3_val == 256<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a68]:KHMTT gp, a6, s9<br> [0x80000a6c]:sd gp, 176(tp)<br>    |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x9<br> - rd : x18<br> - rs2_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000aa0]:KHMTT s2, t0, s1<br> [0x80000aa4]:sd s2, 192(tp)<br>    |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFE000|- rs1 : x23<br> - rs2 : x20<br> - rd : x12<br> - rs2_h3_val == 32<br> - rs2_h0_val == -1<br> - rs1_h3_val == -17<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ad4]:KHMTT a2, s7, s4<br> [0x80000ad8]:sd a2, 208(tp)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 16<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000b08]:KHMTT t6, t5, t4<br> [0x80000b0c]:sd t6, 224(tp)<br>    |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFFFE|- rs2_h3_val == 8<br> - rs1_h3_val == -513<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b3c]:KHMTT t6, t5, t4<br> [0x80000b40]:sd t6, 240(tp)<br>    |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 4<br> - rs1_h3_val == 64<br> - rs1_h2_val == -2049<br> - rs1_h1_val == -5<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b78]:KHMTT t6, t5, t4<br> [0x80000b7c]:sd t6, 256(tp)<br>    |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFFFFE|- rs2_h2_val == 64<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -2<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000bb8]:KHMTT t6, t5, t4<br> [0x80000bbc]:sd t6, 272(tp)<br>    |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFFFD|- rs1_h3_val == 128<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000be8]:KHMTT t6, t5, t4<br> [0x80000bec]:sd t6, 288(tp)<br>    |
|  38|[0x80003460]<br>0x0000000000000010|- rs2_h0_val == -2<br> - rs1_h2_val == 512<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c24]:KHMTT t6, t5, t4<br> [0x80000c28]:sd t6, 304(tp)<br>    |
|  39|[0x80003470]<br>0x0000000000000000|- rs2_h3_val == -1<br> - rs2_h2_val == 8192<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c58]:KHMTT t6, t5, t4<br> [0x80000c5c]:sd t6, 320(tp)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -1<br> - rs1_h3_val == 16<br> - rs1_h1_val == 8<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c94]:KHMTT t6, t5, t4<br> [0x80000c98]:sd t6, 336(tp)<br>    |
|  41|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -1025<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000cd0]:KHMTT t6, t5, t4<br> [0x80000cd4]:sd t6, 352(tp)<br>    |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 8192<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000d0c]:KHMTT t6, t5, t4<br> [0x80000d10]:sd t6, 368(tp)<br>    |
|  43|[0x800034b0]<br>0x0000000000000000|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000d50]:KHMTT t6, t5, t4<br> [0x80000d54]:sd t6, 384(tp)<br>    |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFFDFF|- rs2_h2_val == -3<br> - rs2_h0_val == -5<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -129<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000d90]:KHMTT t6, t5, t4<br> [0x80000d94]:sd t6, 400(tp)<br>    |
|  45|[0x800034d0]<br>0x0000000000000000|- rs2_h1_val == -513<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dc8]:KHMTT t6, t5, t4<br> [0x80000dcc]:sd t6, 416(tp)<br>    |
|  46|[0x800034e0]<br>0x0000000000000015|- rs2_h2_val == -2<br> - rs2_h1_val == 32<br> - rs1_h2_val == 4<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000e04]:KHMTT t6, t5, t4<br> [0x80000e08]:sd t6, 432(tp)<br>    |
|  47|[0x800034f0]<br>0x0000000000000401|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e38]:KHMTT t6, t5, t4<br> [0x80000e3c]:sd t6, 448(tp)<br>    |
|  48|[0x80003500]<br>0x0000000000000400|- rs1_h2_val == -257<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e6c]:KHMTT t6, t5, t4<br> [0x80000e70]:sd t6, 464(tp)<br>    |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ea4]:KHMTT t6, t5, t4<br> [0x80000ea8]:sd t6, 480(tp)<br>    |
|  50|[0x80003520]<br>0x0000000000000000|- rs2_h2_val == -2049<br> - rs2_h0_val == 2048<br> - rs1_h2_val == -16385<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000ee0]:KHMTT t6, t5, t4<br> [0x80000ee4]:sd t6, 496(tp)<br>    |
|  51|[0x80003530]<br>0x0000000000000000|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f1c]:KHMTT t6, t5, t4<br> [0x80000f20]:sd t6, 512(tp)<br>    |
|  52|[0x80003540]<br>0x0000000000000000|- rs2_h1_val == 2<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000f58]:KHMTT t6, t5, t4<br> [0x80000f5c]:sd t6, 528(tp)<br>    |
|  53|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -5<br> - rs1_h2_val == 1<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f94]:KHMTT t6, t5, t4<br> [0x80000f98]:sd t6, 544(tp)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == -513<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000fd0]:KHMTT t6, t5, t4<br> [0x80000fd4]:sd t6, 560(tp)<br>    |
|  55|[0x80003570]<br>0xFFFFFFFFFFFFFFFB|- rs2_h2_val == 32<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001004]:KHMTT t6, t5, t4<br> [0x80001008]:sd t6, 576(tp)<br>    |
|  56|[0x80003580]<br>0x0000000000000000|- rs2_h3_val == 4<br> - rs2_h0_val == 32767<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000103c]:KHMTT t6, t5, t4<br> [0x80001040]:sd t6, 592(tp)<br>    |
|  57|[0x80003590]<br>0x0000000000000000|- rs2_h1_val == 1<br> - rs2_h0_val == 8<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001074]:KHMTT t6, t5, t4<br> [0x80001078]:sd t6, 608(tp)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFFFFFE|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800010a8]:KHMTT t6, t5, t4<br> [0x800010ac]:sd t6, 624(tp)<br>    |
|  59|[0x800035b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == -129<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010e4]:KHMTT t6, t5, t4<br> [0x800010e8]:sd t6, 640(tp)<br>    |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == -33<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001120]:KHMTT t6, t5, t4<br> [0x80001124]:sd t6, 656(tp)<br>    |
|  61|[0x800035d0]<br>0x000000000000002A|- rs2_h2_val == -4097<br> - rs2_h0_val == -3<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000115c]:KHMTT t6, t5, t4<br> [0x80001160]:sd t6, 672(tp)<br>    |
|  62|[0x800035e0]<br>0x0000000000000000|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001198]:KHMTT t6, t5, t4<br> [0x8000119c]:sd t6, 688(tp)<br>    |
|  63|[0x800035f0]<br>0x0000000000000002|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011c8]:KHMTT t6, t5, t4<br> [0x800011cc]:sd t6, 704(tp)<br>    |
|  64|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -3<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001204]:KHMTT t6, t5, t4<br> [0x80001208]:sd t6, 720(tp)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFFFFFFFFFB|- rs2_h2_val == -257<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001238]:KHMTT t6, t5, t4<br> [0x8000123c]:sd t6, 736(tp)<br>    |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs2_h3_val == 2<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001274]:KHMTT t6, t5, t4<br> [0x80001278]:sd t6, 752(tp)<br>    |
|  67|[0x80003630]<br>0xFFFFFFFFFFFFF000|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800012a8]:KHMTT t6, t5, t4<br> [0x800012ac]:sd t6, 768(tp)<br>    |
|  68|[0x80003640]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800012e4]:KHMTT t6, t5, t4<br> [0x800012e8]:sd t6, 784(tp)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFFFFFFFF54|- rs2_h2_val == -513<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001324]:KHMTT t6, t5, t4<br> [0x80001328]:sd t6, 800(tp)<br>    |
|  70|[0x80003660]<br>0xFFFFFFFFFFFFFF7F|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001360]:KHMTT t6, t5, t4<br> [0x80001364]:sd t6, 816(tp)<br>    |
|  71|[0x80003670]<br>0x0000000000000000|- rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000139c]:KHMTT t6, t5, t4<br> [0x800013a0]:sd t6, 832(tp)<br>    |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFFA|- rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013d8]:KHMTT t6, t5, t4<br> [0x800013dc]:sd t6, 848(tp)<br>    |
|  73|[0x80003690]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -129<br> - rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001414]:KHMTT t6, t5, t4<br> [0x80001418]:sd t6, 864(tp)<br>    |
|  74|[0x800036a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001448]:KHMTT t6, t5, t4<br> [0x8000144c]:sd t6, 880(tp)<br>    |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFFFFBF|- rs2_h2_val == -1025<br> - rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000147c]:KHMTT t6, t5, t4<br> [0x80001480]:sd t6, 896(tp)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == -65<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800014b0]:KHMTT t6, t5, t4<br> [0x800014b4]:sd t6, 912(tp)<br>    |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800014e4]:KHMTT t6, t5, t4<br> [0x800014e8]:sd t6, 928(tp)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFFFFF8|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001518]:KHMTT t6, t5, t4<br> [0x8000151c]:sd t6, 944(tp)<br>    |
|  79|[0x800036f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001540]:KHMTT t6, t5, t4<br> [0x80001544]:sd t6, 960(tp)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001574]:KHMTT t6, t5, t4<br> [0x80001578]:sd t6, 976(tp)<br>    |
|  81|[0x80003710]<br>0xFFFFFFFFFFFFFFFB|- rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015a4]:KHMTT t6, t5, t4<br> [0x800015a8]:sd t6, 992(tp)<br>    |
|  82|[0x80003720]<br>0x0000000000000000|- rs1_h2_val == -1025<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800015e0]:KHMTT t6, t5, t4<br> [0x800015e4]:sd t6, 1008(tp)<br>   |
|  83|[0x80003730]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000161c]:KHMTT t6, t5, t4<br> [0x80001620]:sd t6, 1024(tp)<br>   |
|  84|[0x80003740]<br>0x0000000000000000|- rs1_h2_val == -9<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001658]:KHMTT t6, t5, t4<br> [0x8000165c]:sd t6, 1040(tp)<br>   |
|  85|[0x80003750]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == -32768<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001694]:KHMTT t6, t5, t4<br> [0x80001698]:sd t6, 1056(tp)<br>   |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800016c8]:KHMTT t6, t5, t4<br> [0x800016cc]:sd t6, 1072(tp)<br>   |
|  87|[0x80003770]<br>0x0000000000000000|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001700]:KHMTT t6, t5, t4<br> [0x80001704]:sd t6, 1088(tp)<br>   |
|  88|[0x80003780]<br>0x0000000000000001|- rs2_h1_val == -8193<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001730]:KHMTT t6, t5, t4<br> [0x80001734]:sd t6, 1104(tp)<br>   |
|  89|[0x80003790]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000176c]:KHMTT t6, t5, t4<br> [0x80001770]:sd t6, 1120(tp)<br>   |
|  90|[0x800037a0]<br>0xFFFFFFFFFFFFFFFE|- rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017a4]:KHMTT t6, t5, t4<br> [0x800017a8]:sd t6, 1136(tp)<br>   |
|  91|[0x800037b0]<br>0x0000000000000001|- rs2_h2_val == -9<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800017e0]:KHMTT t6, t5, t4<br> [0x800017e4]:sd t6, 1152(tp)<br>   |
|  92|[0x800037c0]<br>0xFFFFFFFFFFFFFFFE|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001814]:KHMTT t6, t5, t4<br> [0x80001818]:sd t6, 1168(tp)<br>   |
|  93|[0x800037d0]<br>0xFFFFFFFFFFFFFFFB|- rs2_h1_val == 512<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000184c]:KHMTT t6, t5, t4<br> [0x80001850]:sd t6, 1184(tp)<br>   |
|  94|[0x800037f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800018a8]:KHMTT t6, t5, t4<br> [0x800018ac]:sd t6, 1216(tp)<br>   |
|  95|[0x80003800]<br>0xFFFFFFFFFFFFFBFF|- rs2_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018d8]:KHMTT t6, t5, t4<br> [0x800018dc]:sd t6, 1232(tp)<br>   |
|  96|[0x80003810]<br>0x0000000000000020|- rs1_h2_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000191c]:KHMTT t6, t5, t4<br> [0x80001920]:sd t6, 1248(tp)<br>   |
