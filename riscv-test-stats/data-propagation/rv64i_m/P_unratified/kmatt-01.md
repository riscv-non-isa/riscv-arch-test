
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a50')]      |
| SIG_REGION                | [('0x80003210', '0x80003860', '202 dwords')]      |
| COV_LABELS                | kmatt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmatt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 202      |
| STAT1                     | 98      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 101     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001988]:KMATT t6, t5, t4
      [0x8000198c]:sd t6, 1040(ra)
 -- Signature Address: 0x80003820 Data: 0x355DFC45B2FCF4FB
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -65
      - rs2_h2_val == 32767
      - rs2_h1_val == 256
      - rs2_h0_val == 4
      - rs1_h3_val == -4097
      - rs1_h2_val == -33
      - rs1_h1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c0]:KMATT t6, t5, t4
      [0x800019c4]:sd t6, 1056(ra)
 -- Signature Address: 0x80003830 Data: 0x355DFC4EB2FCF52B
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h2_val == -32768
      - rs2_h0_val == 4096
      - rs1_h2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a40]:KMATT t6, t5, t4
      [0x80001a44]:sd t6, 1088(ra)
 -- Signature Address: 0x80003850 Data: 0x555D3C4BB2F9653A
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 32767
      - rs2_h2_val == 32767
      - rs2_h1_val == -4097
      - rs2_h0_val == -8193
      - rs1_h2_val == 2048
      - rs1_h0_val == -1






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmatt', 'rs1 : x16', 'rs2 : x16', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -65', 'rs2_h2_val == 32767', 'rs2_h1_val == 256', 'rs2_h0_val == 4', 'rs1_h3_val == -65', 'rs1_h2_val == 32767', 'rs1_h1_val == 256', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800003c8]:KMATT zero, a6, a6
	-[0x800003cc]:sd zero, 0(a3)
Current Store : [0x800003d0] : sd a6, 8(a3) -- Store: [0x80003218]:0xFFBF7FFF01000004




Last Coverpoint : ['rs1 : x19', 'rs2 : x19', 'rd : x19', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h2_val == -32768', 'rs2_h0_val == 4096', 'rs1_h2_val == -32768', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000400]:KMATT s3, s3, s3
	-[0x80000404]:sd s3, 16(a3)
Current Store : [0x80000408] : sd s3, 24(a3) -- Store: [0x80003228]:0x00038009FFFA1024




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x25', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 1024', 'rs2_h2_val == 0', 'rs2_h1_val == 1', 'rs2_h0_val == -17', 'rs1_h3_val == -257', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80000438]:KMATT s9, s2, t6
	-[0x8000043c]:sd s9, 32(a3)
Current Store : [0x80000440] : sd s2, 40(a3) -- Store: [0x80003238]:0xFEFF00400005FFF8




Last Coverpoint : ['rs1 : x9', 'rs2 : x11', 'rd : x9', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -9', 'rs2_h2_val == -4097', 'rs2_h1_val == -65', 'rs1_h3_val == 32', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x8000046c]:KMATT s1, s1, a1
	-[0x80000470]:sd s1, 48(a3)
Current Store : [0x80000474] : sd s1, 56(a3) -- Store: [0x80003248]:0x001FFEE20006FE70




Last Coverpoint : ['rs1 : x23', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs2_h3_val == 16', 'rs2_h0_val == 1', 'rs1_h1_val == 0', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800004a8]:KMATT a2, s7, a2
	-[0x800004ac]:sd a2, 64(a3)
Current Store : [0x800004b0] : sd s7, 72(a3) -- Store: [0x80003258]:0xFFFCFFFA00005555




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x15', 'rs2_h3_val == -2', 'rs2_h2_val == 4096', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800004e4]:KMATT a5, zero, s5
	-[0x800004e8]:sd a5, 80(a3)
Current Store : [0x800004ec] : sd zero, 88(a3) -- Store: [0x80003268]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x17', 'rs2_h3_val == -257', 'rs2_h2_val == -5', 'rs2_h1_val == 21845', 'rs2_h0_val == -8193', 'rs1_h3_val == 4096', 'rs1_h2_val == -21846', 'rs1_h1_val == 21845', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x8000052c]:KMATT a7, t3, gp
	-[0x80000530]:sd a7, 96(a3)
Current Store : [0x80000534] : sd t3, 104(a3) -- Store: [0x80003278]:0x1000AAAA5555FEFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x23', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 32', 'rs2_h2_val == -9', 'rs2_h0_val == -32768', 'rs1_h3_val == 64', 'rs1_h2_val == 8', 'rs1_h1_val == -513', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000564]:KMATT s7, a5, ra
	-[0x80000568]:sd s7, 112(a3)
Current Store : [0x8000056c] : sd a5, 120(a3) -- Store: [0x80003288]:0x00400008FDFF0002




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x1', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 8192', 'rs2_h2_val == 32', 'rs2_h0_val == -2049', 'rs1_h3_val == 4', 'rs1_h2_val == -17', 'rs1_h1_val == -33', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800005a0]:KMATT ra, t2, sp
	-[0x800005a4]:sd ra, 128(a3)
Current Store : [0x800005a8] : sd t2, 136(a3) -- Store: [0x80003298]:0x0004FFEFFFDFF7FF




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x8', 'rs2_h3_val == -21846', 'rs2_h2_val == -65', 'rs2_h1_val == 0', 'rs2_h0_val == 256', 'rs1_h2_val == 4', 'rs1_h1_val == 2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800005d4]:KMATT fp, a0, t0
	-[0x800005d8]:sd fp, 144(a3)
Current Store : [0x800005dc] : sd a0, 152(a3) -- Store: [0x800032a8]:0x100000040002FF7F




Last Coverpoint : ['rs1 : x1', 'rs2 : x30', 'rd : x2', 'rs2_h3_val == 21845', 'rs2_h2_val == -257', 'rs1_h3_val == -513', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x8000060c]:KMATT sp, ra, t5
	-[0x80000610]:sd sp, 160(a3)
Current Store : [0x80000614] : sd ra, 168(a3) -- Store: [0x800032b8]:0xFDFFFFF68000C000




Last Coverpoint : ['rs1 : x6', 'rs2 : x0', 'rd : x28', 'rs2_h3_val == 0', 'rs2_h0_val == 0', 'rs1_h2_val == 2048', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000650]:KMATT t3, t1, zero
	-[0x80000654]:sd t3, 176(a3)
Current Store : [0x80000658] : sd t1, 184(a3) -- Store: [0x800032c8]:0x3FFF0800FFF9FFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rd : x27', 'rs2_h3_val == -16385', 'rs2_h2_val == 4', 'rs2_h0_val == 32', 'rs1_h3_val == -32768', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000068c]:KMATT s11, t0, t1
	-[0x80000690]:sd s11, 192(a3)
Current Store : [0x80000694] : sd t0, 200(a3) -- Store: [0x800032d8]:0x80007FFFFFFEFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x26', 'rs2_h3_val == -8193', 'rs1_h3_val == -2049', 'rs1_h2_val == 512', 'rs1_h1_val == 2048', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800006c8]:KMATT s10, t4, s6
	-[0x800006cc]:sd s10, 208(a3)
Current Store : [0x800006d0] : sd t4, 216(a3) -- Store: [0x800032e8]:0xF7FF020008000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x21', 'rs2_h3_val == -4097', 'rs1_h3_val == 1024', 'rs1_h2_val == 1', 'rs1_h1_val == 8', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000700]:KMATT s5, t6, a5
	-[0x80000704]:sd s5, 224(a3)
Current Store : [0x80000708] : sd t6, 232(a3) -- Store: [0x800032f8]:0x0400000100082000




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x4', 'rs2_h3_val == -2049', 'rs2_h1_val == -2', 'rs1_h3_val == -21846', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000744]:KMATT tp, sp, s10
	-[0x80000748]:sd tp, 240(a3)
Current Store : [0x8000074c] : sd sp, 248(a3) -- Store: [0x80003308]:0xAAAA40008000FFF6




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x6', 'rs2_h3_val == -1025', 'rs2_h2_val == 8192', 'rs2_h1_val == -16385', 'rs1_h3_val == 21845', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x8000078c]:KMATT t1, s11, a7
	-[0x80000790]:sd t1, 0(ra)
Current Store : [0x80000794] : sd s11, 8(ra) -- Store: [0x80003318]:0x5555FFFB80003FFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x10', 'rd : x24', 'rs2_h3_val == -513', 'rs2_h2_val == -1', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800007c4]:KMATT s8, a4, a0
	-[0x800007c8]:sd s8, 16(ra)
Current Store : [0x800007cc] : sd a4, 24(ra) -- Store: [0x80003328]:0x0020800000200006




Last Coverpoint : ['rs1 : x22', 'rs2 : x20', 'rd : x3', 'rs2_h3_val == -129', 'rs2_h2_val == -2049', 'rs2_h1_val == 32', 'rs2_h0_val == 64', 'rs1_h3_val == -4097', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80000800]:KMATT gp, s6, s4
	-[0x80000804]:sd gp, 32(ra)
Current Store : [0x80000808] : sd s6, 40(ra) -- Store: [0x80003338]:0xEFFF5555FFF9FFF9




Last Coverpoint : ['rs1 : x8', 'rs2 : x14', 'rd : x30', 'rs2_h3_val == -33', 'rs2_h2_val == 256', 'rs2_h1_val == -32768', 'rs1_h2_val == -4097', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000838]:KMATT t5, fp, a4
	-[0x8000083c]:sd t5, 48(ra)
Current Store : [0x80000840] : sd fp, 56(ra) -- Store: [0x80003348]:0x0003EFFF00027FFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rd : x31', 'rs2_h3_val == -17', 'rs2_h0_val == -2', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x8000086c]:KMATT t6, gp, s8
	-[0x80000870]:sd t6, 64(ra)
Current Store : [0x80000874] : sd gp, 72(ra) -- Store: [0x80003358]:0xFFF80000EFFF0004




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x29', 'rs2_h3_val == -5', 'rs2_h2_val == 2', 'rs2_h1_val == -17', 'rs1_h2_val == -16385', 'rs1_h1_val == -129', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000898]:KMATT t4, s4, s9
	-[0x8000089c]:sd t4, 80(ra)
Current Store : [0x800008a0] : sd s4, 88(ra) -- Store: [0x80003368]:0x0004BFFFFF7FFFDF




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x5', 'rs2_h3_val == -3', 'rs2_h2_val == -16385', 'rs1_h3_val == 32767', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800008d4]:KMATT t0, t5, s2
	-[0x800008d8]:sd t0, 96(ra)
Current Store : [0x800008dc] : sd t5, 104(ra) -- Store: [0x80003378]:0x7FFF5555FFFAFFBF




Last Coverpoint : ['rs1 : x13', 'rs2 : x27', 'rd : x20', 'rs2_h3_val == -32768', 'rs2_h1_val == -3', 'rs1_h2_val == 32', 'rs1_h1_val == 8192', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000914]:KMATT s4, a3, s11
	-[0x80000918]:sd s4, 112(ra)
Current Store : [0x8000091c] : sd a3, 120(ra) -- Store: [0x80003388]:0x800000202000FFFB




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x10', 'rs2_h3_val == 16384', 'rs2_h2_val == 512', 'rs2_h1_val == 16', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000948]:KMATT a0, tp, t4
	-[0x8000094c]:sd a0, 128(ra)
Current Store : [0x80000950] : sd tp, 136(ra) -- Store: [0x80003398]:0xFFF9C000FFDFFFEF




Last Coverpoint : ['rs1 : x21', 'rs2 : x7', 'rd : x16', 'rs2_h3_val == 4096', 'rs1_h3_val == 128', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000984]:KMATT a6, s5, t2
	-[0x80000988]:sd a6, 144(ra)
Current Store : [0x8000098c] : sd s5, 152(ra) -- Store: [0x800033a8]:0x0080000455550008




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x7', 'rs2_h3_val == 2048', 'rs2_h2_val == 64', 'rs2_h1_val == 4', 'rs2_h0_val == 2', 'rs1_h3_val == 512', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x800009c0]:KMATT t2, s9, tp
	-[0x800009c4]:sd t2, 160(ra)
Current Store : [0x800009c8] : sd s9, 168(ra) -- Store: [0x800033b8]:0x0200FDFFFFF90008




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x13', 'rs2_h3_val == 512', 'rs2_h2_val == -2', 'rs2_h1_val == 128', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800009f8]:KMATT a3, a7, s7
	-[0x800009fc]:sd a3, 176(ra)
Current Store : [0x80000a00] : sd a7, 184(ra) -- Store: [0x800033c8]:0xFFF9AAAAFFF77FFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x13', 'rd : x11', 'rs2_h3_val == 256', 'rs2_h2_val == 16384', 'rs1_h3_val == 16384', 'rs1_h1_val == -17', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000a34]:KMATT a1, s10, a3
	-[0x80000a38]:sd a1, 192(ra)
Current Store : [0x80000a3c] : sd s10, 200(ra) -- Store: [0x800033d8]:0x4000FFFCFFEFFBFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x28', 'rd : x22', 'rs2_h3_val == 128', 'rs2_h1_val == -5', 'rs1_h3_val == 2048', 'rs1_h2_val == 128', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000a64]:KMATT s6, a2, t3
	-[0x80000a68]:sd s6, 208(ra)
Current Store : [0x80000a6c] : sd a2, 216(ra) -- Store: [0x800033e8]:0x08000080DFFFFEFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x14', 'rs2_h3_val == 64', 'rs2_h1_val == -21846', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000a98]:KMATT a4, s8, fp
	-[0x80000a9c]:sd a4, 224(ra)
Current Store : [0x80000aa0] : sd s8, 232(ra) -- Store: [0x800033f8]:0xFDFFFFFC80000003




Last Coverpoint : ['rs1 : x11', 'rs2 : x9', 'rd : x18', 'rs2_h3_val == 8', 'rs2_h1_val == -257', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000acc]:KMATT s2, a1, s1
	-[0x80000ad0]:sd s2, 240(ra)
Current Store : [0x80000ad4] : sd a1, 248(ra) -- Store: [0x80003408]:0x0007EFFF3FFF0006




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == -4097', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x80000b0c]:KMATT t6, t5, t4
	-[0x80000b10]:sd t6, 0(ra)
Current Store : [0x80000b14] : sd t5, 8(ra) -- Store: [0x80003418]:0xDFFF0006FFF85555




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -1025', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000b44]:KMATT t6, t5, t4
	-[0x80000b48]:sd t6, 16(ra)
Current Store : [0x80000b4c] : sd t5, 24(ra) -- Store: [0x80003428]:0x000400083FFF0001




Last Coverpoint : ['rs1_h3_val == -1025', 'rs1_h1_val == -5', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000b7c]:KMATT t6, t5, t4
	-[0x80000b80]:sd t6, 32(ra)
Current Store : [0x80000b84] : sd t5, 40(ra) -- Store: [0x80003438]:0xFBFF0005FFFBEFFF




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h0_val == -257', 'rs1_h2_val == -129', 'rs1_h1_val == -3', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000bb8]:KMATT t6, t5, t4
	-[0x80000bbc]:sd t6, 48(ra)
Current Store : [0x80000bc0] : sd t5, 56(ra) -- Store: [0x80003448]:0x3FFFFF7FFFFD0800




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h2_val == -9', 'rs1_h1_val == 16384', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000bf4]:KMATT t6, t5, t4
	-[0x80000bf8]:sd t6, 64(ra)
Current Store : [0x80000bfc] : sd t5, 72(ra) -- Store: [0x80003458]:0x8000FFF740000100




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h3_val == 16', 'rs1_h1_val == 4096', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000c30]:KMATT t6, t5, t4
	-[0x80000c34]:sd t6, 80(ra)
Current Store : [0x80000c38] : sd t5, 88(ra) -- Store: [0x80003468]:0x0010FDFF1000BFFF




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == 16384', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000c60]:KMATT t6, t5, t4
	-[0x80000c64]:sd t6, 96(ra)
Current Store : [0x80000c68] : sd t5, 104(ra) -- Store: [0x80003478]:0xDFFFFFEF04000000




Last Coverpoint : ['rs2_h2_val == -3', 'rs2_h1_val == -2049', 'rs2_h0_val == -5', 'rs1_h2_val == 16', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000c98]:KMATT t6, t5, t4
	-[0x80000c9c]:sd t6, 112(ra)
Current Store : [0x80000ca0] : sd t5, 120(ra) -- Store: [0x80003488]:0x0007001002003FFF




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000cd4]:KMATT t6, t5, t4
	-[0x80000cd8]:sd t6, 128(ra)
Current Store : [0x80000cdc] : sd t5, 136(ra) -- Store: [0x80003498]:0x555580000100FF7F




Last Coverpoint : ['rs1_h3_val == 2', 'rs1_h1_val == 128', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000d08]:KMATT t6, t5, t4
	-[0x80000d0c]:sd t6, 144(ra)
Current Store : [0x80000d10] : sd t5, 152(ra) -- Store: [0x800034a8]:0x0002FFFA00800400




Last Coverpoint : ['rs1_h1_val == 64', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000d44]:KMATT t6, t5, t4
	-[0x80000d48]:sd t6, 160(ra)
Current Store : [0x80000d4c] : sd t5, 168(ra) -- Store: [0x800034b8]:0xFFBF000400400200




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == 2', 'rs2_h0_val == 128', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d78]:KMATT t6, t5, t4
	-[0x80000d7c]:sd t6, 176(ra)
Current Store : [0x80000d80] : sd t5, 184(ra) -- Store: [0x800034c8]:0x0000FFEF00100002




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h3_val == -129', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000db8]:KMATT t6, t5, t4
	-[0x80000dbc]:sd t6, 192(ra)
Current Store : [0x80000dc0] : sd t5, 200(ra) -- Store: [0x800034d8]:0xFF7FFF7F0004EFFF




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_h2_val == 8192', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000df4]:KMATT t6, t5, t4
	-[0x80000df8]:sd t6, 208(ra)
Current Store : [0x80000dfc] : sd t5, 216(ra) -- Store: [0x800034e8]:0x0200200000010007




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -1', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000e24]:KMATT t6, t5, t4
	-[0x80000e28]:sd t6, 224(ra)
Current Store : [0x80000e2c] : sd t5, 232(ra) -- Store: [0x800034f8]:0x00100020FFFFFFF7




Last Coverpoint : ['rs1_h2_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000e5c]:KMATT t6, t5, t4
	-[0x80000e60]:sd t6, 240(ra)
Current Store : [0x80000e64] : sd t5, 248(ra) -- Store: [0x80003508]:0xFBFF10003FFFAAAA




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e98]:KMATT t6, t5, t4
	-[0x80000e9c]:sd t6, 256(ra)
Current Store : [0x80000ea0] : sd t5, 264(ra) -- Store: [0x80003518]:0x55550006FFFBDFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h2_val == -2', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ec8]:KMATT t6, t5, t4
	-[0x80000ecc]:sd t6, 272(ra)
Current Store : [0x80000ed0] : sd t5, 280(ra) -- Store: [0x80003528]:0x3FFFFFFE0200FDFF




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h0_val == -513', 'rs1_h2_val == -3', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f04]:KMATT t6, t5, t4
	-[0x80000f08]:sd t6, 288(ra)
Current Store : [0x80000f0c] : sd t5, 296(ra) -- Store: [0x80003538]:0xFFFAFFFD0400FFFD




Last Coverpoint : ['rs1_h3_val == -17', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f40]:KMATT t6, t5, t4
	-[0x80000f44]:sd t6, 304(ra)
Current Store : [0x80000f48] : sd t5, 312(ra) -- Store: [0x80003548]:0xFFEFAAAA0004FFFE




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == -33', 'rs2_h0_val == 16', 'rs1_h3_val == -16385', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f7c]:KMATT t6, t5, t4
	-[0x80000f80]:sd t6, 320(ra)
Current Store : [0x80000f84] : sd t5, 328(ra) -- Store: [0x80003558]:0xBFFFFFFBEFFF4000




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x80000fb4]:KMATT t6, t5, t4
	-[0x80000fb8]:sd t6, 336(ra)
Current Store : [0x80000fbc] : sd t5, 344(ra) -- Store: [0x80003568]:0xFFFDFFFDFFDF1000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000ff0]:KMATT t6, t5, t4
	-[0x80000ff4]:sd t6, 352(ra)
Current Store : [0x80000ff8] : sd t5, 360(ra) -- Store: [0x80003578]:0x001000090000FF7F




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == 21845', 'rs1_h3_val == 8', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x8000102c]:KMATT t6, t5, t4
	-[0x80001030]:sd t6, 368(ra)
Current Store : [0x80001034] : sd t5, 376(ra) -- Store: [0x80003588]:0x0008FFDF0001FFFC




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x8000106c]:KMATT t6, t5, t4
	-[0x80001070]:sd t6, 384(ra)
Current Store : [0x80001074] : sd t5, 392(ra) -- Store: [0x80003598]:0xBFFF0006FFFFDFFF




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800010a8]:KMATT t6, t5, t4
	-[0x800010ac]:sd t6, 400(ra)
Current Store : [0x800010b0] : sd t5, 408(ra) -- Store: [0x800035a8]:0x00060006FFF7FFF8




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800010e0]:KMATT t6, t5, t4
	-[0x800010e4]:sd t6, 416(ra)
Current Store : [0x800010e8] : sd t5, 424(ra) -- Store: [0x800035b8]:0x000402000006FFBF




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001114]:KMATT t6, t5, t4
	-[0x80001118]:sd t6, 432(ra)
Current Store : [0x8000111c] : sd t5, 440(ra) -- Store: [0x800035c8]:0xFFDFFFEF0020F7FF




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x8000114c]:KMATT t6, t5, t4
	-[0x80001150]:sd t6, 448(ra)
Current Store : [0x80001154] : sd t5, 456(ra) -- Store: [0x800035d8]:0xFFBF001080004000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x80001188]:KMATT t6, t5, t4
	-[0x8000118c]:sd t6, 464(ra)
Current Store : [0x80001190] : sd t5, 472(ra) -- Store: [0x800035e8]:0x010000090008FFF8




Last Coverpoint : ['rs2_h1_val == -1025', 'rs2_h0_val == 512', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x800011c4]:KMATT t6, t5, t4
	-[0x800011c8]:sd t6, 480(ra)
Current Store : [0x800011cc] : sd t5, 488(ra) -- Store: [0x800035f8]:0xFFBF0400FFF8FFFC




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800011f8]:KMATT t6, t5, t4
	-[0x800011fc]:sd t6, 496(ra)
Current Store : [0x80001200] : sd t5, 504(ra) -- Store: [0x80003608]:0xEFFF2000C000FFFF




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80001230]:KMATT t6, t5, t4
	-[0x80001234]:sd t6, 512(ra)
Current Store : [0x80001238] : sd t5, 520(ra) -- Store: [0x80003618]:0xFFF7AAAA0004EFFF




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80001260]:KMATT t6, t5, t4
	-[0x80001264]:sd t6, 528(ra)
Current Store : [0x80001268] : sd t5, 536(ra) -- Store: [0x80003628]:0xFFEF008000800000




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001290]:KMATT t6, t5, t4
	-[0x80001294]:sd t6, 544(ra)
Current Store : [0x80001298] : sd t5, 552(ra) -- Store: [0x80003638]:0xFFF6000640000080




Last Coverpoint : ['rs1_h2_val == -8193', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800012cc]:KMATT t6, t5, t4
	-[0x800012d0]:sd t6, 560(ra)
Current Store : [0x800012d4] : sd t5, 568(ra) -- Store: [0x80003648]:0xFFFDDFFF00040040




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80001308]:KMATT t6, t5, t4
	-[0x8000130c]:sd t6, 576(ra)
Current Store : [0x80001310] : sd t5, 584(ra) -- Store: [0x80003658]:0xFEFF000200000020




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000133c]:KMATT t6, t5, t4
	-[0x80001340]:sd t6, 592(ra)
Current Store : [0x80001344] : sd t5, 600(ra) -- Store: [0x80003668]:0xFEFFFFF600000010




Last Coverpoint : ['rs1_h3_val == -5']
Last Code Sequence : 
	-[0x80001378]:KMATT t6, t5, t4
	-[0x8000137c]:sd t6, 608(ra)
Current Store : [0x80001380] : sd t5, 616(ra) -- Store: [0x80003678]:0xFFFBFFF9FFFBFFF7




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h3_val == 1']
Last Code Sequence : 
	-[0x800013b0]:KMATT t6, t5, t4
	-[0x800013b4]:sd t6, 624(ra)
Current Store : [0x800013b8] : sd t5, 632(ra) -- Store: [0x80003688]:0x08000002DFFF8000




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x800013ec]:KMATT t6, t5, t4
	-[0x800013f0]:sd t6, 640(ra)
Current Store : [0x800013f4] : sd t5, 648(ra) -- Store: [0x80003698]:0xFFF80005C0004000




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x8000142c]:KMATT t6, t5, t4
	-[0x80001430]:sd t6, 656(ra)
Current Store : [0x80001434] : sd t5, 664(ra) -- Store: [0x800036a8]:0xFFF80100FFDF0040




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80001460]:KMATT t6, t5, t4
	-[0x80001464]:sd t6, 672(ra)
Current Store : [0x80001468] : sd t5, 680(ra) -- Store: [0x800036b8]:0x0001FBFF20000400




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001498]:KMATT t6, t5, t4
	-[0x8000149c]:sd t6, 688(ra)
Current Store : [0x800014a0] : sd t5, 696(ra) -- Store: [0x800036c8]:0xFFFFFFFD0200FFF8




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800014cc]:KMATT t6, t5, t4
	-[0x800014d0]:sd t6, 704(ra)
Current Store : [0x800014d4] : sd t5, 712(ra) -- Store: [0x800036d8]:0x08000080BFFF8000




Last Coverpoint : ['rs2_h3_val == 32767', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80001508]:KMATT t6, t5, t4
	-[0x8000150c]:sd t6, 720(ra)
Current Store : [0x80001510] : sd t5, 728(ra) -- Store: [0x800036e8]:0x0005F7FF0010FFF7




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x8000154c]:KMATT t6, t5, t4
	-[0x80001550]:sd t6, 736(ra)
Current Store : [0x80001554] : sd t5, 744(ra) -- Store: [0x800036f8]:0xFFF7FDFF0004FFDF




Last Coverpoint : ['rs1_h2_val == -257']
Last Code Sequence : 
	-[0x80001580]:KMATT t6, t5, t4
	-[0x80001584]:sd t6, 752(ra)
Current Store : [0x80001588] : sd t5, 760(ra) -- Store: [0x80003708]:0x0004FEFF40000003




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x800015c0]:KMATT t6, t5, t4
	-[0x800015c4]:sd t6, 768(ra)
Current Store : [0x800015c8] : sd t5, 776(ra) -- Store: [0x80003718]:0x2000AAAA4000AAAA




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x800015f4]:KMATT t6, t5, t4
	-[0x800015f8]:sd t6, 784(ra)
Current Store : [0x800015fc] : sd t5, 792(ra) -- Store: [0x80003728]:0x00000008BFFF0006




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80001634]:KMATT t6, t5, t4
	-[0x80001638]:sd t6, 800(ra)
Current Store : [0x8000163c] : sd t5, 808(ra) -- Store: [0x80003738]:0x3FFFC000FFF70000




Last Coverpoint : ['rs1_h2_val == -65', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001660]:KMATT t6, t5, t4
	-[0x80001664]:sd t6, 816(ra)
Current Store : [0x80001668] : sd t5, 824(ra) -- Store: [0x80003748]:0x0007FFBFF7FFFBFF




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001694]:KMATT t6, t5, t4
	-[0x80001698]:sd t6, 832(ra)
Current Store : [0x8000169c] : sd t5, 840(ra) -- Store: [0x80003758]:0x00007FFFFBFFFFBF




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x800016d8]:KMATT t6, t5, t4
	-[0x800016dc]:sd t6, 848(ra)
Current Store : [0x800016e0] : sd t5, 856(ra) -- Store: [0x80003768]:0x00030400EFFFDFFF




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x8000171c]:KMATT t6, t5, t4
	-[0x80001720]:sd t6, 864(ra)
Current Store : [0x80001724] : sd t5, 872(ra) -- Store: [0x80003778]:0xBFFFFFF90020EFFF




Last Coverpoint : ['rs1_h3_val == -2', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001754]:KMATT t6, t5, t4
	-[0x80001758]:sd t6, 880(ra)
Current Store : [0x8000175c] : sd t5, 888(ra) -- Store: [0x80003788]:0xFFFE0002AAAA1000




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x80001790]:KMATT t6, t5, t4
	-[0x80001794]:sd t6, 896(ra)
Current Store : [0x80001798] : sd t5, 904(ra) -- Store: [0x80003798]:0x7FFFFFFF08004000




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x800017c8]:KMATT t6, t5, t4
	-[0x800017cc]:sd t6, 912(ra)
Current Store : [0x800017d0] : sd t5, 920(ra) -- Store: [0x800037a8]:0x0007FFEFFFF9FFF7




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800017fc]:KMATT t6, t5, t4
	-[0x80001800]:sd t6, 928(ra)
Current Store : [0x80001804] : sd t5, 936(ra) -- Store: [0x800037b8]:0xAAAA3FFFFFF6FBFF




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001838]:KMATT t6, t5, t4
	-[0x8000183c]:sd t6, 944(ra)
Current Store : [0x80001840] : sd t5, 952(ra) -- Store: [0x800037c8]:0xFFFBFFFDFFFE0008




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001874]:KMATT t6, t5, t4
	-[0x80001878]:sd t6, 960(ra)
Current Store : [0x8000187c] : sd t5, 968(ra) -- Store: [0x800037d8]:0x555500050001FFF9




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800018a8]:KMATT t6, t5, t4
	-[0x800018ac]:sd t6, 976(ra)
Current Store : [0x800018b0] : sd t5, 984(ra) -- Store: [0x800037e8]:0xFFBFFFFCFEFFFFEF




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800018e0]:KMATT t6, t5, t4
	-[0x800018e4]:sd t6, 992(ra)
Current Store : [0x800018e8] : sd t5, 1000(ra) -- Store: [0x800037f8]:0x02000010FFBFFFFE




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x80001914]:KMATT t6, t5, t4
	-[0x80001918]:sd t6, 1008(ra)
Current Store : [0x8000191c] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFFF67FFF20000002




Last Coverpoint : ['rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80001958]:KMATT t6, t5, t4
	-[0x8000195c]:sd t6, 1024(ra)
Current Store : [0x80001960] : sd t5, 1032(ra) -- Store: [0x80003818]:0x4000FFFA0100AAAA




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -65', 'rs2_h2_val == 32767', 'rs2_h1_val == 256', 'rs2_h0_val == 4', 'rs1_h3_val == -4097', 'rs1_h2_val == -33', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001988]:KMATT t6, t5, t4
	-[0x8000198c]:sd t6, 1040(ra)
Current Store : [0x80001990] : sd t5, 1048(ra) -- Store: [0x80003828]:0xEFFFFFDF00088000




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == -32768', 'rs2_h0_val == 4096', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800019c0]:KMATT t6, t5, t4
	-[0x800019c4]:sd t6, 1056(ra)
Current Store : [0x800019c8] : sd t5, 1064(ra) -- Store: [0x80003838]:0x00030001FFF8FFF6




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800019fc]:KMATT t6, t5, t4
	-[0x80001a00]:sd t6, 1072(ra)
Current Store : [0x80001a04] : sd t5, 1080(ra) -- Store: [0x80003848]:0x000240007FFF0004




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 32767', 'rs2_h1_val == -4097', 'rs2_h0_val == -8193', 'rs1_h2_val == 2048', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001a40]:KMATT t6, t5, t4
	-[0x80001a44]:sd t6, 1088(ra)
Current Store : [0x80001a48] : sd t5, 1096(ra) -- Store: [0x80003858]:0x3FFF0800FFF9FFFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                     coverpoints                                                                                                                                                                                                                                                                                      |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : kmatt<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -65<br> - rs2_h2_val == 32767<br> - rs2_h1_val == 256<br> - rs2_h0_val == 4<br> - rs1_h3_val == -65<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 256<br> - rs1_h0_val == 4<br> |[0x800003c8]:KMATT zero, a6, a6<br> [0x800003cc]:sd zero, 0(a3)<br> |
|   2|[0x80003220]<br>0x00038009FFFA1024|- rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h2_val == -32768<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                 |[0x80000400]:KMATT s3, s3, s3<br> [0x80000404]:sd s3, 16(a3)<br>    |
|   3|[0x80003230]<br>0xEDBAA9FEEDBEAE03|- rs1 : x18<br> - rs2 : x31<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 0<br> - rs2_h1_val == 1<br> - rs2_h0_val == -17<br> - rs1_h3_val == -257<br> - rs1_h2_val == 64<br>                                                                                                                                 |[0x80000438]:KMATT s9, s2, t6<br> [0x8000043c]:sd s9, 32(a3)<br>    |
|   4|[0x80003240]<br>0x001FFEE20006FE70|- rs1 : x9<br> - rs2 : x11<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -9<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -65<br> - rs1_h3_val == 32<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                             |[0x8000046c]:KMATT s1, s1, a1<br> [0x80000470]:sd s1, 48(a3)<br>    |
|   5|[0x80003250]<br>0x0010FFBA00010001|- rs1 : x23<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs2_h3_val == 16<br> - rs2_h0_val == 1<br> - rs1_h1_val == 0<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004a8]:KMATT a2, s7, a2<br> [0x800004ac]:sd a2, 64(a3)<br>    |
|   6|[0x80003260]<br>0xFAB7FBB6FAB7FBB6|- rs1 : x0<br> - rs2 : x21<br> - rd : x15<br> - rs2_h3_val == -2<br> - rs2_h2_val == 4096<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004e4]:KMATT a5, zero, s5<br> [0x800004e8]:sd a5, 80(a3)<br>  |
|   7|[0x80003270]<br>0xBE9DEEEDDB1F8D26|- rs1 : x28<br> - rs2 : x3<br> - rd : x17<br> - rs2_h3_val == -257<br> - rs2_h2_val == -5<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                              |[0x8000052c]:KMATT a7, t3, gp<br> [0x80000530]:sd a7, 96(a3)<br>    |
|   8|[0x80003280]<br>0xFFFD07FA00004F52|- rs1 : x15<br> - rs2 : x1<br> - rd : x23<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 32<br> - rs2_h2_val == -9<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 64<br> - rs1_h2_val == 8<br> - rs1_h1_val == -513<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                    |[0x80000564]:KMATT s7, a5, ra<br> [0x80000568]:sd s7, 112(a3)<br>   |
|   9|[0x80003290]<br>0x00217FF7000380C6|- rs1 : x7<br> - rs2 : x2<br> - rd : x1<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 32<br> - rs2_h0_val == -2049<br> - rs1_h3_val == 4<br> - rs1_h2_val == -17<br> - rs1_h1_val == -33<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                         |[0x800005a0]:KMATT ra, t2, sp<br> [0x800005a4]:sd ra, 128(a3)<br>   |
|  10|[0x800032a0]<br>0x56A87B7D5BFDDB7D|- rs1 : x10<br> - rs2 : x5<br> - rd : x8<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -65<br> - rs2_h1_val == 0<br> - rs2_h0_val == 256<br> - rs1_h2_val == 4<br> - rs1_h1_val == 2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800005d4]:KMATT fp, a0, t0<br> [0x800005d8]:sd fp, 144(a3)<br>   |
|  11|[0x800032b0]<br>0x1F5500CBFFF977FF|- rs1 : x1<br> - rs2 : x30<br> - rd : x2<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -257<br> - rs1_h3_val == -513<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000060c]:KMATT sp, ra, t5<br> [0x80000610]:sd sp, 160(a3)<br>   |
|  12|[0x800032c0]<br>0x1000AAAA5555FEFF|- rs1 : x6<br> - rs2 : x0<br> - rd : x28<br> - rs2_h3_val == 0<br> - rs2_h0_val == 0<br> - rs1_h2_val == 2048<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000650]:KMATT t3, t1, zero<br> [0x80000654]:sd t3, 176(a3)<br> |
|  13|[0x800032d0]<br>0xDB702B7FBB6FAB6D|- rs1 : x5<br> - rs2 : x6<br> - rd : x27<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 4<br> - rs2_h0_val == 32<br> - rs1_h3_val == -32768<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000068c]:KMATT s11, t0, t1<br> [0x80000690]:sd s11, 192(a3)<br> |
|  14|[0x800032e0]<br>0x77DF7F0076DF9EFF|- rs1 : x29<br> - rs2 : x22<br> - rd : x26<br> - rs2_h3_val == -8193<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 512<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006c8]:KMATT s10, t4, s6<br> [0x800006cc]:sd s10, 208(a3)<br> |
|  15|[0x800032f0]<br>0xFFBE0C00FFF907F6|- rs1 : x31<br> - rs2 : x15<br> - rd : x21<br> - rs2_h3_val == -4097<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 1<br> - rs1_h1_val == 8<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000700]:KMATT s5, t6, a5<br> [0x80000704]:sd s5, 224(a3)<br>   |
|  16|[0x80003300]<br>0xC288BD2BBFDEB7D5|- rs1 : x2<br> - rs2 : x26<br> - rd : x4<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -2<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000744]:KMATT tp, sp, s10<br> [0x80000748]:sd tp, 240(a3)<br>  |
|  17|[0x80003310]<br>0xBEA956AF20098020|- rs1 : x27<br> - rs2 : x17<br> - rd : x6<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -16385<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000078c]:KMATT t1, s11, a7<br> [0x80000790]:sd t1, 0(ra)<br>    |
|  18|[0x80003320]<br>0xDB7D1BDDDB755BFD|- rs1 : x14<br> - rs2 : x10<br> - rd : x24<br> - rs2_h3_val == -513<br> - rs2_h2_val == -1<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800007c4]:KMATT s8, a4, a0<br> [0x800007c8]:sd s8, 16(ra)<br>    |
|  19|[0x80003330]<br>0xFF08107C5555DF1F|- rs1 : x22<br> - rs2 : x20<br> - rd : x3<br> - rs2_h3_val == -129<br> - rs2_h2_val == -2049<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000800]:KMATT gp, s6, s4<br> [0x80000804]:sd gp, 32(ra)<br>    |
|  20|[0x80003340]<br>0x5555FE9C00020001|- rs1 : x8<br> - rs2 : x14<br> - rd : x30<br> - rs2_h3_val == -33<br> - rs2_h2_val == 256<br> - rs2_h1_val == -32768<br> - rs1_h2_val == -4097<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000838]:KMATT t5, fp, a4<br> [0x8000083c]:sd t5, 48(ra)<br>    |
|  21|[0x80003350]<br>0x04000089FC07F001|- rs1 : x3<br> - rs2 : x24<br> - rd : x31<br> - rs2_h3_val == -17<br> - rs2_h0_val == -2<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000086c]:KMATT t6, gp, s8<br> [0x80000870]:sd t6, 64(ra)<br>    |
|  22|[0x80003360]<br>0xF7FF01EC08000892|- rs1 : x20<br> - rs2 : x25<br> - rd : x29<br> - rs2_h3_val == -5<br> - rs2_h2_val == 2<br> - rs2_h1_val == -17<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -129<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000898]:KMATT t4, s4, s9<br> [0x8000089c]:sd t4, 80(ra)<br>    |
|  23|[0x80003370]<br>0x80000000FFFEFFFF|- rs1 : x30<br> - rs2 : x18<br> - rd : x5<br> - rs2_h3_val == -3<br> - rs2_h2_val == -16385<br> - rs1_h3_val == 32767<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800008d4]:KMATT t0, t5, s2<br> [0x800008d8]:sd t0, 96(ra)<br>    |
|  24|[0x80003380]<br>0x4004BFFFFF7F9FDF|- rs1 : x13<br> - rs2 : x27<br> - rd : x20<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -3<br> - rs1_h2_val == 32<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000914]:KMATT s4, a3, s11<br> [0x80000918]:sd s4, 112(ra)<br>  |
|  25|[0x80003390]<br>0xFDFE3FFFC0003DEF|- rs1 : x4<br> - rs2 : x29<br> - rd : x10<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 512<br> - rs2_h1_val == 16<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000948]:KMATT a0, tp, t4<br> [0x8000094c]:sd a0, 128(ra)<br>   |
|  26|[0x800033a0]<br>0xFFC77FFF00FA555F|- rs1 : x21<br> - rs2 : x7<br> - rd : x16<br> - rs2_h3_val == 4096<br> - rs1_h3_val == 128<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000984]:KMATT a6, s5, t2<br> [0x80000988]:sd a6, 144(ra)<br>   |
|  27|[0x800033b0]<br>0x1010FFFFFFEFFFE0|- rs1 : x25<br> - rs2 : x4<br> - rd : x7<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 64<br> - rs2_h1_val == 4<br> - rs2_h0_val == 2<br> - rs1_h3_val == 512<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x800009c0]:KMATT t2, s9, tp<br> [0x800009c4]:sd t2, 160(ra)<br>   |
|  28|[0x800033c0]<br>0x800000002000FB7B|- rs1 : x17<br> - rs2 : x23<br> - rd : x13<br> - rs2_h3_val == 512<br> - rs2_h2_val == -2<br> - rs2_h1_val == 128<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800009f8]:KMATT a3, a7, s7<br> [0x800009fc]:sd a3, 176(ra)<br>   |
|  29|[0x800033d0]<br>0x0037EFFFFFBAD011|- rs1 : x26<br> - rs2 : x13<br> - rd : x11<br> - rs2_h3_val == 256<br> - rs2_h2_val == 16384<br> - rs1_h3_val == 16384<br> - rs1_h1_val == -17<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000a34]:KMATT a1, s10, a3<br> [0x80000a38]:sd a1, 192(ra)<br>  |
|  30|[0x800033e0]<br>0xF0035555FFFA9FFE|- rs1 : x12<br> - rs2 : x28<br> - rd : x22<br> - rs2_h3_val == 128<br> - rs2_h1_val == -5<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 128<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a64]:KMATT s6, a2, t3<br> [0x80000a68]:sd s6, 208(ra)<br>   |
|  31|[0x800033f0]<br>0xFFDE80C0AAAB1000|- rs1 : x24<br> - rs2 : x8<br> - rd : x14<br> - rs2_h3_val == 64<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a98]:KMATT a4, s8, fp<br> [0x80000a9c]:sd a4, 224(ra)<br>   |
|  32|[0x80003400]<br>0xFFFDC037FFC00100|- rs1 : x11<br> - rs2 : x9<br> - rd : x18<br> - rs2_h3_val == 8<br> - rs2_h1_val == -257<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000acc]:KMATT s2, a1, s1<br> [0x80000ad0]:sd s2, 240(ra)<br>   |
|  33|[0x80003410]<br>0x03FF8085FC07F039|- rs2_h3_val == 4<br> - rs2_h0_val == -4097<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b0c]:KMATT t6, t5, t4<br> [0x80000b10]:sd t6, 0(ra)<br>     |
|  34|[0x80003420]<br>0x03FF808DFC06F03D|- rs2_h3_val == 2<br> - rs2_h2_val == -1025<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b44]:KMATT t6, t5, t4<br> [0x80000b48]:sd t6, 16(ra)<br>    |
|  35|[0x80003430]<br>0x03FFA897FC08303D|- rs1_h3_val == -1025<br> - rs1_h1_val == -5<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b7c]:KMATT t6, t5, t4<br> [0x80000b80]:sd t6, 32(ra)<br>    |
|  36|[0x80003440]<br>0x04012891FC08303A|- rs2_h2_val == 8<br> - rs2_h0_val == -257<br> - rs1_h2_val == -129<br> - rs1_h1_val == -3<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000bb8]:KMATT t6, t5, t4<br> [0x80000bbc]:sd t6, 48(ra)<br>    |
|  37|[0x80003450]<br>0x0501A8910C07F03A|- rs2_h0_val == -21846<br> - rs1_h2_val == -9<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000bf4]:KMATT t6, t5, t4<br> [0x80000bf8]:sd t6, 64(ra)<br>    |
|  38|[0x80003460]<br>0x0501A8E10C08403A|- rs2_h2_val == 21845<br> - rs1_h3_val == 16<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000c30]:KMATT t6, t5, t4<br> [0x80000c34]:sd t6, 80(ra)<br>    |
|  39|[0x80003470]<br>0x0D0208E20C09403A|- rs2_h1_val == 64<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c60]:KMATT t6, t5, t4<br> [0x80000c64]:sd t6, 96(ra)<br>    |
|  40|[0x80003480]<br>0x0D01ECDB0BF93E3A|- rs2_h2_val == -3<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -5<br> - rs1_h2_val == 16<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c98]:KMATT t6, t5, t4<br> [0x80000c9c]:sd t6, 112(ra)<br>   |
|  41|[0x80003490]<br>0x0D04ECD80BF9453A|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000cd4]:KMATT t6, t5, t4<br> [0x80000cd8]:sd t6, 128(ra)<br>   |
|  42|[0x800034a0]<br>0x0D04EDD80BF9423A|- rs1_h3_val == 2<br> - rs1_h1_val == 128<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d08]:KMATT t6, t5, t4<br> [0x80000d0c]:sd t6, 144(ra)<br>   |
|  43|[0x800034b0]<br>0x0D00DDD80BF940FA|- rs1_h1_val == 64<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d44]:KMATT t6, t5, t4<br> [0x80000d48]:sd t6, 160(ra)<br>   |
|  44|[0x800034c0]<br>0x0D00DDD80BF9411A|- rs2_h2_val == -33<br> - rs2_h1_val == 2<br> - rs2_h0_val == 128<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d78]:KMATT t6, t5, t4<br> [0x80000d7c]:sd t6, 176(ra)<br>   |
|  45|[0x800034d0]<br>0x0CD5DE030BFA411A|- rs2_h1_val == 16384<br> - rs1_h3_val == -129<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000db8]:KMATT t6, t5, t4<br> [0x80000dbc]:sd t6, 192(ra)<br>   |
|  46|[0x800034e0]<br>0x0C55DC030BFA411E|- rs2_h2_val == -8193<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000df4]:KMATT t6, t5, t4<br> [0x80000df8]:sd t6, 208(ra)<br>   |
|  47|[0x800034f0]<br>0x0C55D7F30BFA4119|- rs2_h0_val == 8192<br> - rs1_h1_val == -1<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e24]:KMATT t6, t5, t4<br> [0x80000e28]:sd t6, 224(ra)<br>   |
|  48|[0x80003500]<br>0x0C55E3F60BF6012A|- rs1_h2_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e5c]:KMATT t6, t5, t4<br> [0x80000e60]:sd t6, 240(ra)<br>   |
|  49|[0x80003510]<br>0x01AAEEA10BF6512F|- rs2_h1_val == -4097<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e98]:KMATT t6, t5, t4<br> [0x80000e9c]:sd t6, 256(ra)<br>   |
|  50|[0x80003520]<br>0x01AAAEA20BF65D2F|- rs2_h3_val == -1<br> - rs1_h2_val == -2<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ec8]:KMATT t6, t5, t4<br> [0x80000ecc]:sd t6, 272(ra)<br>   |
|  51|[0x80003530]<br>0x01AAB1A80AA1052F|- rs2_h2_val == 16<br> - rs2_h0_val == -513<br> - rs1_h2_val == -3<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f04]:KMATT t6, t5, t4<br> [0x80000f08]:sd t6, 288(ra)<br>   |
|  52|[0x80003540]<br>0x01AAA9280AA10547|- rs1_h3_val == -17<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000f40]:KMATT t6, t5, t4<br> [0x80000f44]:sd t6, 304(ra)<br>   |
|  53|[0x80003550]<br>0x01BAE9690AA31568|- rs2_h2_val == -513<br> - rs2_h1_val == -33<br> - rs2_h0_val == 16<br> - rs1_h3_val == -16385<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000f7c]:KMATT t6, t5, t4<br> [0x80000f80]:sd t6, 320(ra)<br>   |
|  54|[0x80003560]<br>0x01BBA96C0AA2D368|- rs2_h1_val == 512<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000fb4]:KMATT t6, t5, t4<br> [0x80000fb8]:sd t6, 336(ra)<br>   |
|  55|[0x80003570]<br>0x01B6540C0AA2D368|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ff0]:KMATT t6, t5, t4<br> [0x80000ff4]:sd t6, 352(ra)<br>   |
|  56|[0x80003580]<br>0x01B653C40AA2F368|- rs2_h1_val == 8192<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 8<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000102c]:KMATT t6, t5, t4<br> [0x80001030]:sd t6, 368(ra)<br>   |
|  57|[0x80003590]<br>0x21B6D3C40AA33368|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000106c]:KMATT t6, t5, t4<br> [0x80001070]:sd t6, 384(ra)<br>   |
|  58|[0x800035a0]<br>0x21B6D23E0AA33371|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010a8]:KMATT t6, t5, t4<br> [0x800010ac]:sd t6, 400(ra)<br>   |
|  59|[0x800035b0]<br>0x21B6D03A0AA03371|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800010e0]:KMATT t6, t5, t4<br> [0x800010e4]:sd t6, 416(ra)<br>   |
|  60|[0x800035c0]<br>0x21B6CF110A983351|- rs2_h0_val == -129<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001114]:KMATT t6, t5, t4<br> [0x80001118]:sd t6, 432(ra)<br>   |
|  61|[0x800035d0]<br>0x21B6CF11FA983351|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000114c]:KMATT t6, t5, t4<br> [0x80001150]:sd t6, 448(ra)<br>   |
|  62|[0x800035e0]<br>0x21AECE11FA983369|- rs2_h0_val == -3<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001188]:KMATT t6, t5, t4<br> [0x8000118c]:sd t6, 464(ra)<br>   |
|  63|[0x800035f0]<br>0x21BF0E11FA985371|- rs2_h1_val == -1025<br> - rs2_h0_val == 512<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011c4]:KMATT t6, t5, t4<br> [0x800011c8]:sd t6, 480(ra)<br>   |
|  64|[0x80003600]<br>0x21BF3E14F2985371|- rs2_h2_val == 1<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800011f8]:KMATT t6, t5, t4<br> [0x800011fc]:sd t6, 496(ra)<br>   |
|  65|[0x80003610]<br>0x21BEF614F2985B71|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001230]:KMATT t6, t5, t4<br> [0x80001234]:sd t6, 512(ra)<br>   |
|  66|[0x80003620]<br>0x21C33625F2785AF1|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001260]:KMATT t6, t5, t4<br> [0x80001264]:sd t6, 528(ra)<br>   |
|  67|[0x80003630]<br>0x21C334E5F275DAF1|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001290]:KMATT t6, t5, t4<br> [0x80001294]:sd t6, 544(ra)<br>   |
|  68|[0x80003640]<br>0x21C3F4E5F275DB05|- rs1_h2_val == -8193<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800012cc]:KMATT t6, t5, t4<br> [0x800012d0]:sd t6, 560(ra)<br>   |
|  69|[0x80003650]<br>0x216E4A90F275DB05|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001308]:KMATT t6, t5, t4<br> [0x8000130c]:sd t6, 576(ra)<br>   |
|  70|[0x80003660]<br>0x216E458BF275DB05|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000133c]:KMATT t6, t5, t4<br> [0x80001340]:sd t6, 592(ra)<br>   |
|  71|[0x80003670]<br>0x216D058BF275DAB5|- rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001378]:KMATT t6, t5, t4<br> [0x8000137c]:sd t6, 608(ra)<br>   |
|  72|[0x80003680]<br>0x216D0D8BF271DA95|- rs1_h0_val == -32768<br> - rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013b0]:KMATT t6, t5, t4<br> [0x800013b4]:sd t6, 624(ra)<br>   |
|  73|[0x80003690]<br>0x216C8D8BDD1C9A95|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013ec]:KMATT t6, t5, t4<br> [0x800013f0]:sd t6, 640(ra)<br>   |
|  74|[0x800036a0]<br>0x216E8D93DD1DA2B6|- rs2_h2_val == -17<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000142c]:KMATT t6, t5, t4<br> [0x80001430]:sd t6, 656(ra)<br>   |
|  75|[0x800036b0]<br>0x216E8D8BDD21A2B6|- rs1_h3_val == 1<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001460]:KMATT t6, t5, t4<br> [0x80001464]:sd t6, 672(ra)<br>   |
|  76|[0x800036c0]<br>0x216ECD8CDC21A2B6|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001498]:KMATT t6, t5, t4<br> [0x8000149c]:sd t6, 688(ra)<br>   |
|  77|[0x800036d0]<br>0x216FCD8CDC2162B5|- rs2_h2_val == 2048<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800014cc]:KMATT t6, t5, t4<br> [0x800014d0]:sd t6, 704(ra)<br>   |
|  78|[0x800036e0]<br>0x21724D87DC216345|- rs2_h3_val == 32767<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001508]:KMATT t6, t5, t4<br> [0x8000150c]:sd t6, 720(ra)<br>   |
|  79|[0x800036f0]<br>0x216F4D8ADC21E345|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000154c]:KMATT t6, t5, t4<br> [0x80001550]:sd t6, 736(ra)<br>   |
|  80|[0x80003700]<br>0x216E4D86DC25E345|- rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001580]:KMATT t6, t5, t4<br> [0x80001584]:sd t6, 752(ra)<br>   |
|  81|[0x80003710]<br>0x216DED86CC25A345|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015c0]:KMATT t6, t5, t4<br> [0x800015c4]:sd t6, 768(ra)<br>   |
|  82|[0x80003720]<br>0x216DED86CC65E446|- rs2_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800015f4]:KMATT t6, t5, t4<br> [0x800015f8]:sd t6, 784(ra)<br>   |
|  83|[0x80003730]<br>0x316D6D87CC659C46|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001634]:KMATT t6, t5, t4<br> [0x80001638]:sd t6, 800(ra)<br>   |
|  84|[0x80003740]<br>0x316D6680D0661C46|- rs1_h2_val == -65<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001660]:KMATT t6, t5, t4<br> [0x80001664]:sd t6, 816(ra)<br>   |
|  85|[0x80003750]<br>0x316D6680D066304B|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001694]:KMATT t6, t5, t4<br> [0x80001698]:sd t6, 832(ra)<br>   |
|  86|[0x80003760]<br>0x316E667FC865C04C|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800016d8]:KMATT t6, t5, t4<br> [0x800016dc]:sd t6, 848(ra)<br>   |
|  87|[0x80003770]<br>0x356EB680C861C02C|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000171c]:KMATT t6, t5, t4<br> [0x80001720]:sd t6, 864(ra)<br>   |
|  88|[0x80003780]<br>0x356EB674B30C9582|- rs1_h3_val == -2<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001754]:KMATT t6, t5, t4<br> [0x80001758]:sd t6, 880(ra)<br>   |
|  89|[0x80003790]<br>0x35663685B2FC8D82|- rs2_h1_val == -513<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001790]:KMATT t6, t5, t4<br> [0x80001794]:sd t6, 896(ra)<br>   |
|  90|[0x800037a0]<br>0x3567F67EB2FC9109|- rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017c8]:KMATT t6, t5, t4<br> [0x800017cc]:sd t6, 912(ra)<br>   |
|  91|[0x800037b0]<br>0x3568A12AB2FC90B9|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800017fc]:KMATT t6, t5, t4<br> [0x80001800]:sd t6, 928(ra)<br>   |
|  92|[0x800037c0]<br>0x3568AB2FB2FC70B9|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001838]:KMATT t6, t5, t4<br> [0x8000183c]:sd t6, 944(ra)<br>   |
|  93|[0x800037d0]<br>0x353DAB5AB2FC74B9|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001874]:KMATT t6, t5, t4<br> [0x80001878]:sd t6, 960(ra)<br>   |
|  94|[0x800037e0]<br>0x355E2B5AB31C95BA|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800018a8]:KMATT t6, t5, t4<br> [0x800018ac]:sd t6, 976(ra)<br>   |
|  95|[0x800037f0]<br>0x35622B5AB2FC15FB|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800018e0]:KMATT t6, t5, t4<br> [0x800018e4]:sd t6, 992(ra)<br>   |
|  96|[0x80003800]<br>0x35622C04B2FCF5FB|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001914]:KMATT t6, t5, t4<br> [0x80001918]:sd t6, 1008(ra)<br>  |
|  97|[0x80003810]<br>0x3559EC04B2FCECFB|- rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001958]:KMATT t6, t5, t4<br> [0x8000195c]:sd t6, 1024(ra)<br>  |
|  98|[0x80003840]<br>0x355DFC4AB2F8F533|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800019fc]:KMATT t6, t5, t4<br> [0x80001a00]:sd t6, 1072(ra)<br>  |
