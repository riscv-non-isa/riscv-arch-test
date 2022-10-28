
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000950')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | smaltt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smaltt-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 158      |
| STAT1                     | 73      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 79     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:SMALTT t5, t6, t4
      [0x80000624]:sw t5, 192(gp)
 -- Signature Address: 0x80002390 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -4097
      - rs1_h0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000778]:SMALTT t5, t6, t4
      [0x8000077c]:sw t5, 296(gp)
 -- Signature Address: 0x800023f8 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -4097
      - rs2_h0_val == -257
      - rs1_h1_val == -257
      - rs1_h0_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ec]:SMALTT t5, t6, t4
      [0x800008f0]:sw t5, 408(gp)
 -- Signature Address: 0x80002468 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -257
      - rs2_h0_val == -129
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000908]:SMALTT t5, t6, t4
      [0x8000090c]:sw t5, 416(gp)
 -- Signature Address: 0x80002470 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -17
      - rs2_h0_val == -4097
      - rs1_h1_val == -17
      - rs1_h0_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000924]:SMALTT t5, t6, t4
      [0x80000928]:sw t5, 424(gp)
 -- Signature Address: 0x80002478 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -8193
      - rs2_h0_val == -8193
      - rs1_h1_val == 512
      - rs1_h0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000940]:SMALTT t5, t6, t4
      [0x80000944]:sw t5, 432(gp)
 -- Signature Address: 0x80002480 Data: 0xFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smaltt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -33
      - rs2_h0_val == -65
      - rs1_h1_val == 1024
      - rs1_h0_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smaltt', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -257', 'rs2_h0_val == -129', 'rs1_h1_val == -257', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000010c]:SMALTT a4, a4, a4
	-[0x80000110]:sw a4, 0(ra)
Current Store : [0x80000114] : sw a5, 4(ra) -- Store: [0x80002214]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x6', 'rs1 == rs2 != rd', 'rs2_h1_val == -17', 'rs2_h0_val == -4097', 'rs1_h1_val == -17', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000128]:SMALTT t1, s1, s1
	-[0x8000012c]:sw t1, 8(ra)
Current Store : [0x80000130] : sw t2, 12(ra) -- Store: [0x8000221c]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 2', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000140]:SMALTT s2, s9, fp
	-[0x80000144]:sw s2, 16(ra)
Current Store : [0x80000148] : sw s3, 20(ra) -- Store: [0x80002224]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x24', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -65', 'rs2_h0_val == -257', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000015c]:SMALTT s8, s5, s8
	-[0x80000160]:sw s8, 24(ra)
Current Store : [0x80000164] : sw s9, 28(ra) -- Store: [0x8000222c]:0xFFFA8000




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rd : x20', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h1_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000178]:SMALTT s4, s4, s3
	-[0x8000017c]:sw s4, 32(ra)
Current Store : [0x80000180] : sw s5, 36(ra) -- Store: [0x80002234]:0x04003FFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x10', 'rs2_h1_val == 21845', 'rs2_h0_val == -17', 'rs1_h1_val == 128', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000194]:SMALTT a0, a6, s7
	-[0x80000198]:sw a0, 40(ra)
Current Store : [0x8000019c] : sw a1, 44(ra) -- Store: [0x8000223c]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x30', 'rs2 : x21', 'rd : x4', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs1_h1_val == 2048', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001b0]:SMALTT tp, t5, s5
	-[0x800001b4]:sw tp, 48(ra)
Current Store : [0x800001b8] : sw t0, 52(ra) -- Store: [0x80002244]:0x800000F8




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x26', 'rs2_h1_val == -21846', 'rs2_h0_val == -1', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800001cc]:SMALTT s10, gp, sp
	-[0x800001d0]:sw s10, 56(ra)
Current Store : [0x800001d4] : sw s11, 60(ra) -- Store: [0x8000224c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x29', 'rs2 : x5', 'rd : x16', 'rs2_h1_val == 32767', 'rs2_h0_val == 128', 'rs1_h1_val == 4', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800001e8]:SMALTT a6, t4, t0
	-[0x800001ec]:sw a6, 64(ra)
Current Store : [0x800001f0] : sw a7, 68(ra) -- Store: [0x80002254]:0xBEADFEED




Last Coverpoint : ['rs1 : x31', 'rs2 : x29', 'rd : x2', 'rs2_h1_val == -16385', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000204]:SMALTT sp, t6, t4
	-[0x80000208]:sw sp, 72(ra)
Current Store : [0x8000020c] : sw gp, 76(ra) -- Store: [0x8000225c]:0xF7FF0009




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x30', 'rs2_h1_val == -8193', 'rs2_h0_val == -8193', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000228]:SMALTT t5, zero, a2
	-[0x8000022c]:sw t5, 0(a4)
Current Store : [0x80000230] : sw t6, 4(a4) -- Store: [0x80002264]:0x0004FFBF




Last Coverpoint : ['rs1 : x1', 'rs2 : x28', 'rd : x22', 'rs2_h1_val == -4097', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000244]:SMALTT s6, ra, t3
	-[0x80000248]:sw s6, 8(a4)
Current Store : [0x8000024c] : sw s7, 12(a4) -- Store: [0x8000226c]:0x5555FFEF




Last Coverpoint : ['rs1 : x27', 'rs2 : x25', 'rd : x28', 'rs2_h1_val == -2049', 'rs1_h1_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x8000025c]:SMALTT t3, s11, s9
	-[0x80000260]:sw t3, 16(a4)
Current Store : [0x80000264] : sw t4, 20(a4) -- Store: [0x80002274]:0xBFFF0005




Last Coverpoint : ['rs1 : x13', 'rs2 : x30', 'rd : x8', 'rs2_h1_val == -1025', 'rs2_h0_val == -2', 'rs1_h1_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000278]:SMALTT fp, a3, t5
	-[0x8000027c]:sw fp, 24(a4)
Current Store : [0x80000280] : sw s1, 28(a4) -- Store: [0x8000227c]:0xFFEFEFFE




Last Coverpoint : ['rs1 : x23', 'rs2 : x7', 'rd : x12', 'rs2_h1_val == -513', 'rs2_h0_val == 4096', 'rs1_h1_val == -9', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000290]:SMALTT a2, s7, t2
	-[0x80000294]:sw a2, 32(a4)
Current Store : [0x80000298] : sw a3, 36(a4) -- Store: [0x80002284]:0x4000FBFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x22', 'rs2_h1_val == -129', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800002a8]:SMALTT sp, t0, s6
	-[0x800002ac]:sw sp, 40(a4)
Current Store : [0x800002b0] : sw gp, 44(a4) -- Store: [0x8000228c]:0xF7FF0009




Last Coverpoint : ['rs1 : x6', 'rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800002c4]:SMALTT s8, t1, zero
	-[0x800002c8]:sw s8, 48(a4)
Current Store : [0x800002cc] : sw s9, 52(a4) -- Store: [0x80002294]:0xF7FFDFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x13', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x800002e0]:SMALTT a2, fp, a3
	-[0x800002e4]:sw a2, 56(a4)
Current Store : [0x800002e8] : sw a3, 60(a4) -- Store: [0x8000229c]:0xFFF7FFF8




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rs2_h1_val == -5', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800002fc]:SMALTT s8, s6, gp
	-[0x80000300]:sw s8, 64(a4)
Current Store : [0x80000304] : sw s9, 68(a4) -- Store: [0x800022a4]:0xF7FFDFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rs2_h1_val == -3', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000314]:SMALTT tp, s2, t1
	-[0x80000318]:sw tp, 72(a4)
Current Store : [0x8000031c] : sw t0, 76(a4) -- Store: [0x800022ac]:0xFFF62000




Last Coverpoint : ['rs1 : x10', 'rs2 : x18', 'rs2_h1_val == -2', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000330]:SMALTT t3, a0, s2
	-[0x80000334]:sw t3, 80(a4)
Current Store : [0x80000338] : sw t4, 84(a4) -- Store: [0x800022b4]:0xBFFF0005




Last Coverpoint : ['rs1 : x26', 'rs2 : x16', 'rs2_h1_val == -32768', 'rs2_h0_val == 1', 'rs1_h1_val == 8', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000034c]:SMALTT tp, s10, a6
	-[0x80000350]:sw tp, 88(a4)
Current Store : [0x80000354] : sw t0, 92(a4) -- Store: [0x800022bc]:0xFFF62000




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rs2_h1_val == 16384', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000364]:SMALTT s6, s8, a5
	-[0x80000368]:sw s6, 96(a4)
Current Store : [0x8000036c] : sw s7, 100(a4) -- Store: [0x800022c4]:0xFFF70800




Last Coverpoint : ['rs1 : x11', 'rs2 : x31', 'rs2_h1_val == 8192', 'rs2_h0_val == 256', 'rs1_h1_val == 256', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000037c]:SMALTT a6, a1, t6
	-[0x80000380]:sw a6, 104(a4)
Current Store : [0x80000384] : sw a7, 108(a4) -- Store: [0x800022cc]:0xBEADFEED




Last Coverpoint : ['rs1 : x17', 'rs2 : x26', 'rs2_h1_val == 4096', 'rs2_h0_val == 2048', 'rs1_h1_val == 1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800003a0]:SMALTT s8, a7, s10
	-[0x800003a4]:sw s8, 0(gp)
Current Store : [0x800003a8] : sw s9, 4(gp) -- Store: [0x800022d4]:0xF7FFE000




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rs2_h1_val == 2048', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800003bc]:SMALTT fp, t2, s4
	-[0x800003c0]:sw fp, 8(gp)
Current Store : [0x800003c4] : sw s1, 12(gp) -- Store: [0x800022dc]:0xFFEFEFFE




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rs2_h1_val == 1024', 'rs2_h0_val == -32768', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800003d4]:SMALTT fp, t3, ra
	-[0x800003d8]:sw fp, 16(gp)
Current Store : [0x800003dc] : sw s1, 20(gp) -- Store: [0x800022e4]:0xFFEFEFFE




Last Coverpoint : ['rs1 : x12', 'rs2 : x11', 'rs2_h1_val == 512', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800003f0]:SMALTT s6, a2, a1
	-[0x800003f4]:sw s6, 24(gp)
Current Store : [0x800003f8] : sw s7, 28(gp) -- Store: [0x800022ec]:0xFFF70800




Last Coverpoint : ['rs1 : x4', 'rs2 : x10', 'rs2_h1_val == 256', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000040c]:SMALTT a4, tp, a0
	-[0x80000410]:sw a4, 32(gp)
Current Store : [0x80000414] : sw a5, 36(gp) -- Store: [0x800022f4]:0x40000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rs2_h1_val == 8', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000424]:SMALTT t5, s3, a7
	-[0x80000428]:sw t5, 40(gp)
Current Store : [0x8000042c] : sw t6, 44(gp) -- Store: [0x800022fc]:0x20000100




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000440]:SMALTT a4, sp, tp
	-[0x80000444]:sw a4, 48(gp)
Current Store : [0x80000448] : sw a5, 52(gp) -- Store: [0x80002304]:0x40000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rs2_h0_val == 16', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000458]:SMALTT a6, a5, s11
	-[0x8000045c]:sw a6, 56(gp)
Current Store : [0x80000460] : sw a7, 60(gp) -- Store: [0x8000230c]:0x00080000




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000474]:SMALTT t5, t6, t4
	-[0x80000478]:sw t5, 64(gp)
Current Store : [0x8000047c] : sw t6, 68(gp) -- Store: [0x80002314]:0x0100FFFE




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000048c]:SMALTT t5, t6, t4
	-[0x80000490]:sw t5, 72(gp)
Current Store : [0x80000494] : sw t6, 76(gp) -- Store: [0x8000231c]:0xFFF84000




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800004a8]:SMALTT t5, t6, t4
	-[0x800004ac]:sw t5, 80(gp)
Current Store : [0x800004b0] : sw t6, 84(gp) -- Store: [0x80002324]:0xFFF90200




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800004c4]:SMALTT t5, t6, t4
	-[0x800004c8]:sw t5, 88(gp)
Current Store : [0x800004cc] : sw t6, 92(gp) -- Store: [0x8000232c]:0xFFFC0100




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == 512', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004e0]:SMALTT t5, t6, t4
	-[0x800004e4]:sw t5, 96(gp)
Current Store : [0x800004e8] : sw t6, 100(gp) -- Store: [0x80002334]:0x02000020




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800004f8]:SMALTT t5, t6, t4
	-[0x800004fc]:sw t5, 104(gp)
Current Store : [0x80000500] : sw t6, 108(gp) -- Store: [0x8000233c]:0x00060010




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h1_val == 16', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000514]:SMALTT t5, t6, t4
	-[0x80000518]:sw t5, 112(gp)
Current Store : [0x8000051c] : sw t6, 116(gp) -- Store: [0x80002344]:0x00100008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000530]:SMALTT t5, t6, t4
	-[0x80000534]:sw t5, 120(gp)
Current Store : [0x80000538] : sw t6, 124(gp) -- Store: [0x8000234c]:0xFFEF0004




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000054c]:SMALTT t5, t6, t4
	-[0x80000550]:sw t5, 128(gp)
Current Store : [0x80000554] : sw t6, 132(gp) -- Store: [0x80002354]:0x80000003




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000564]:SMALTT t5, t6, t4
	-[0x80000568]:sw t5, 136(gp)
Current Store : [0x8000056c] : sw t6, 140(gp) -- Store: [0x8000235c]:0x55550000




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000580]:SMALTT t5, t6, t4
	-[0x80000584]:sw t5, 144(gp)
Current Store : [0x80000588] : sw t6, 148(gp) -- Store: [0x80002364]:0x0002AAAA




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000059c]:SMALTT t5, t6, t4
	-[0x800005a0]:sw t5, 152(gp)
Current Store : [0x800005a4] : sw t6, 156(gp) -- Store: [0x8000236c]:0x7FFFFEFF




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800005b4]:SMALTT t5, t6, t4
	-[0x800005b8]:sw t5, 160(gp)
Current Store : [0x800005bc] : sw t6, 164(gp) -- Store: [0x80002374]:0xFBFF4000




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800005d0]:SMALTT t5, t6, t4
	-[0x800005d4]:sw t5, 168(gp)
Current Store : [0x800005d8] : sw t6, 172(gp) -- Store: [0x8000237c]:0xFFFCFBFF




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800005e8]:SMALTT t5, t6, t4
	-[0x800005ec]:sw t5, 176(gp)
Current Store : [0x800005f0] : sw t6, 180(gp) -- Store: [0x80002384]:0xFFFF0001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000604]:SMALTT t5, t6, t4
	-[0x80000608]:sw t5, 184(gp)
Current Store : [0x8000060c] : sw t6, 188(gp) -- Store: [0x8000238c]:0x2000FFFF




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -4097', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000620]:SMALTT t5, t6, t4
	-[0x80000624]:sw t5, 192(gp)
Current Store : [0x80000628] : sw t6, 196(gp) -- Store: [0x80002394]:0xFFF8FFEF




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x8000063c]:SMALTT t5, t6, t4
	-[0x80000640]:sw t5, 200(gp)
Current Store : [0x80000644] : sw t6, 204(gp) -- Store: [0x8000239c]:0xFFFCFFDF




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000654]:SMALTT t5, t6, t4
	-[0x80000658]:sw t5, 208(gp)
Current Store : [0x8000065c] : sw t6, 212(gp) -- Store: [0x800023a4]:0xFFF6FFEF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000066c]:SMALTT t5, t6, t4
	-[0x80000670]:sw t5, 216(gp)
Current Store : [0x80000674] : sw t6, 220(gp) -- Store: [0x800023ac]:0x00020800




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000684]:SMALTT t5, t6, t4
	-[0x80000688]:sw t5, 224(gp)
Current Store : [0x8000068c] : sw t6, 228(gp) -- Store: [0x800023b4]:0xFFF68000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800006a0]:SMALTT t5, t6, t4
	-[0x800006a4]:sw t5, 232(gp)
Current Store : [0x800006a8] : sw t6, 236(gp) -- Store: [0x800023bc]:0x0000FFFB




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800006bc]:SMALTT t5, t6, t4
	-[0x800006c0]:sw t5, 240(gp)
Current Store : [0x800006c4] : sw t6, 244(gp) -- Store: [0x800023c4]:0xFFFD0007




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800006d8]:SMALTT t5, t6, t4
	-[0x800006dc]:sw t5, 248(gp)
Current Store : [0x800006e0] : sw t6, 252(gp) -- Store: [0x800023cc]:0x0006FFF6




Last Coverpoint : ['rs2_h1_val == -33', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800006f4]:SMALTT t5, t6, t4
	-[0x800006f8]:sw t5, 256(gp)
Current Store : [0x800006fc] : sw t6, 260(gp) -- Store: [0x800023d4]:0x0400FFFF




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000710]:SMALTT t5, t6, t4
	-[0x80000714]:sw t5, 264(gp)
Current Store : [0x80000718] : sw t6, 268(gp) -- Store: [0x800023dc]:0xBFFFAAAA




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000072c]:SMALTT t5, t6, t4
	-[0x80000730]:sw t5, 272(gp)
Current Store : [0x80000734] : sw t6, 276(gp) -- Store: [0x800023e4]:0xDFFF00FF




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000744]:SMALTT t5, t6, t4
	-[0x80000748]:sw t5, 280(gp)
Current Store : [0x8000074c] : sw t6, 284(gp) -- Store: [0x800023ec]:0xEFFF4000




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000075c]:SMALTT t5, t6, t4
	-[0x80000760]:sw t5, 288(gp)
Current Store : [0x80000764] : sw t6, 292(gp) -- Store: [0x800023f4]:0xFDFFFFFB




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -4097', 'rs2_h0_val == -257', 'rs1_h1_val == -257', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000778]:SMALTT t5, t6, t4
	-[0x8000077c]:sw t5, 296(gp)
Current Store : [0x80000780] : sw t6, 300(gp) -- Store: [0x800023fc]:0xFEFFFBFF




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000794]:SMALTT t5, t6, t4
	-[0x80000798]:sw t5, 304(gp)
Current Store : [0x8000079c] : sw t6, 308(gp) -- Store: [0x80002404]:0xFF7F0010




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800007b0]:SMALTT t5, t6, t4
	-[0x800007b4]:sw t5, 312(gp)
Current Store : [0x800007b8] : sw t6, 316(gp) -- Store: [0x8000240c]:0xFFBFFFEF




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800007cc]:SMALTT t5, t6, t4
	-[0x800007d0]:sw t5, 320(gp)
Current Store : [0x800007d4] : sw t6, 324(gp) -- Store: [0x80002414]:0xFFDF0002




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800007e8]:SMALTT t5, t6, t4
	-[0x800007ec]:sw t5, 328(gp)
Current Store : [0x800007f0] : sw t6, 332(gp) -- Store: [0x8000241c]:0xFFFBFFF7




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000804]:SMALTT t5, t6, t4
	-[0x80000808]:sw t5, 336(gp)
Current Store : [0x8000080c] : sw t6, 340(gp) -- Store: [0x80002424]:0xFFFE0008




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x8000081c]:SMALTT t5, t6, t4
	-[0x80000820]:sw t5, 344(gp)
Current Store : [0x80000824] : sw t6, 348(gp) -- Store: [0x8000242c]:0xFDFFEFFF




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000838]:SMALTT t5, t6, t4
	-[0x8000083c]:sw t5, 352(gp)
Current Store : [0x80000840] : sw t6, 356(gp) -- Store: [0x80002434]:0x0040EFFF




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000850]:SMALTT t5, t6, t4
	-[0x80000854]:sw t5, 360(gp)
Current Store : [0x80000858] : sw t6, 364(gp) -- Store: [0x8000243c]:0x0020FF7F




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000868]:SMALTT t5, t6, t4
	-[0x8000086c]:sw t5, 368(gp)
Current Store : [0x80000870] : sw t6, 372(gp) -- Store: [0x80002444]:0xDFFF0000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000884]:SMALTT t5, t6, t4
	-[0x80000888]:sw t5, 376(gp)
Current Store : [0x8000088c] : sw t6, 380(gp) -- Store: [0x8000244c]:0x7FFFFFFF




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800008a0]:SMALTT t5, t6, t4
	-[0x800008a4]:sw t5, 384(gp)
Current Store : [0x800008a8] : sw t6, 388(gp) -- Store: [0x80002454]:0x00020010




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800008b8]:SMALTT t5, t6, t4
	-[0x800008bc]:sw t5, 392(gp)
Current Store : [0x800008c0] : sw t6, 396(gp) -- Store: [0x8000245c]:0xFBFFDFFF




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800008d4]:SMALTT t5, t6, t4
	-[0x800008d8]:sw t5, 400(gp)
Current Store : [0x800008dc] : sw t6, 404(gp) -- Store: [0x80002464]:0xFFFCF7FF




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -257', 'rs2_h0_val == -129', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800008ec]:SMALTT t5, t6, t4
	-[0x800008f0]:sw t5, 408(gp)
Current Store : [0x800008f4] : sw t6, 412(gp) -- Store: [0x8000246c]:0x00008000




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -17', 'rs2_h0_val == -4097', 'rs1_h1_val == -17', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000908]:SMALTT t5, t6, t4
	-[0x8000090c]:sw t5, 416(gp)
Current Store : [0x80000910] : sw t6, 420(gp) -- Store: [0x80002474]:0xFFEFFF7F




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -8193', 'rs2_h0_val == -8193', 'rs1_h1_val == 512', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000924]:SMALTT t5, t6, t4
	-[0x80000928]:sw t5, 424(gp)
Current Store : [0x8000092c] : sw t6, 428(gp) -- Store: [0x8000247c]:0x0200FFFB




Last Coverpoint : ['opcode : smaltt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -33', 'rs2_h0_val == -65', 'rs1_h1_val == 1024', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000940]:SMALTT t5, t6, t4
	-[0x80000944]:sw t5, 432(gp)
Current Store : [0x80000948] : sw t6, 436(gp) -- Store: [0x80002484]:0x0400BFFF





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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                  |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFEFFFF7F|- opcode : smaltt<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == -129<br> - rs1_h1_val == -257<br> - rs1_h0_val == -129<br> |[0x8000010c]:SMALTT a4, a4, a4<br> [0x80000110]:sw a4, 0(ra)<br>    |
|   2|[0x80002218]<br>0x80002000|- rs1 : x9<br> - rs2 : x9<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -17<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -17<br> - rs1_h0_val == -4097<br>                                                                                                                                                                        |[0x80000128]:SMALTT t1, s1, s1<br> [0x8000012c]:sw t1, 8(ra)<br>    |
|   3|[0x80002220]<br>0xDF56FF76|- rs1 : x25<br> - rs2 : x8<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h0_val == -32768<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 2<br> - rs2_h0_val == 1024<br>                           |[0x80000140]:SMALTT s2, s9, fp<br> [0x80000144]:sw s2, 16(ra)<br>   |
|   4|[0x80002228]<br>0xFFBFFEFF|- rs1 : x21<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -65<br> - rs2_h0_val == -257<br> - rs1_h1_val == 1024<br>                                                                                                               |[0x8000015c]:SMALTT s8, s5, s8<br> [0x80000160]:sw s8, 24(ra)<br>   |
|   5|[0x80002230]<br>0x1000AAAA|- rs1 : x20<br> - rs2 : x19<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                             |[0x80000178]:SMALTT s4, s4, s3<br> [0x8000017c]:sw s4, 32(ra)<br>   |
|   6|[0x80002238]<br>0x56FF76DF|- rs1 : x16<br> - rs2 : x23<br> - rd : x10<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -17<br> - rs1_h1_val == 128<br> - rs1_h0_val == -17<br>                                                                                                                                                                                              |[0x80000194]:SMALTT a0, a6, s7<br> [0x80000198]:sw a0, 40(ra)<br>   |
|   7|[0x80002240]<br>0xBFDDB7D5|- rs1 : x30<br> - rs2 : x21<br> - rd : x4<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                        |[0x800001b0]:SMALTT tp, t5, s5<br> [0x800001b4]:sw tp, 48(ra)<br>   |
|   8|[0x80002248]<br>0x76DF56FF|- rs1 : x3<br> - rs2 : x2<br> - rd : x26<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -1<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                      |[0x800001cc]:SMALTT s10, gp, sp<br> [0x800001d0]:sw s10, 56(ra)<br> |
|   9|[0x80002250]<br>0x0080FFEF|- rs1 : x29<br> - rs2 : x5<br> - rd : x16<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 128<br> - rs1_h1_val == 4<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                |[0x800001e8]:SMALTT a6, t4, t0<br> [0x800001ec]:sw a6, 64(ra)<br>   |
|  10|[0x80002258]<br>0xAAAAFFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x2<br> - rs2_h1_val == -16385<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                              |[0x80000204]:SMALTT sp, t6, t4<br> [0x80000208]:sw sp, 72(ra)<br>   |
|  11|[0x80002260]<br>0x08000080|- rs1 : x0<br> - rs2 : x12<br> - rd : x30<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                 |[0x80000228]:SMALTT t5, zero, a2<br> [0x8000022c]:sw t5, 0(a4)<br>  |
|  12|[0x80002268]<br>0x6DF56FF7|- rs1 : x1<br> - rs2 : x28<br> - rd : x22<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                            |[0x80000244]:SMALTT s6, ra, t3<br> [0x80000248]:sw s6, 8(a4)<br>    |
|  13|[0x80002270]<br>0xEFFFFFEF|- rs1 : x27<br> - rs2 : x25<br> - rd : x28<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                      |[0x8000025c]:SMALTT t3, s11, s9<br> [0x80000260]:sw t3, 16(a4)<br>  |
|  14|[0x80002278]<br>0x00020400|- rs1 : x13<br> - rs2 : x30<br> - rd : x8<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -2<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                            |[0x80000278]:SMALTT fp, a3, t5<br> [0x8000027c]:sw fp, 24(a4)<br>   |
|  15|[0x80002280]<br>0xDFFFDFFF|- rs1 : x23<br> - rs2 : x7<br> - rd : x12<br> - rs2_h1_val == -513<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -9<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                               |[0x80000290]:SMALTT a2, s7, t2<br> [0x80000294]:sw a2, 32(a4)<br>   |
|  16|[0x80002288]<br>0xAAAAFFFF|- rs1 : x5<br> - rs2 : x22<br> - rs2_h1_val == -129<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                            |[0x800002a8]:SMALTT sp, t0, s6<br> [0x800002ac]:sw sp, 40(a4)<br>   |
|  17|[0x80002290]<br>0xFFBFFEFF|- rs1 : x6<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                          |[0x800002c4]:SMALTT s8, t1, zero<br> [0x800002c8]:sw s8, 48(a4)<br> |
|  18|[0x80002298]<br>0xDFFFDFFF|- rs1 : x8<br> - rs2 : x13<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                         |[0x800002e0]:SMALTT a2, fp, a3<br> [0x800002e4]:sw a2, 56(a4)<br>   |
|  19|[0x800022a0]<br>0xFFBFFEFF|- rs1 : x22<br> - rs2 : x3<br> - rs2_h1_val == -5<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                  |[0x800002fc]:SMALTT s8, s6, gp<br> [0x80000300]:sw s8, 64(a4)<br>   |
|  20|[0x800022a8]<br>0xBFDDB7D5|- rs1 : x18<br> - rs2 : x6<br> - rs2_h1_val == -3<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                               |[0x80000314]:SMALTT tp, s2, t1<br> [0x80000318]:sw tp, 72(a4)<br>   |
|  21|[0x800022b0]<br>0xEFFFFFEF|- rs1 : x10<br> - rs2 : x18<br> - rs2_h1_val == -2<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                 |[0x80000330]:SMALTT t3, a0, s2<br> [0x80000334]:sw t3, 80(a4)<br>   |
|  22|[0x800022b8]<br>0xBFDDB7D5|- rs1 : x26<br> - rs2 : x16<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1<br> - rs1_h1_val == 8<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                  |[0x8000034c]:SMALTT tp, s10, a6<br> [0x80000350]:sw tp, 88(a4)<br>  |
|  23|[0x800022c0]<br>0x0006FFFF|- rs1 : x24<br> - rs2 : x15<br> - rs2_h1_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                              |[0x80000364]:SMALTT s6, s8, a5<br> [0x80000368]:sw s6, 96(a4)<br>   |
|  24|[0x800022c8]<br>0x80000001|- rs1 : x11<br> - rs2 : x31<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 256<br> - rs1_h1_val == 256<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                             |[0x8000037c]:SMALTT a6, a1, t6<br> [0x80000380]:sw a6, 104(a4)<br>  |
|  25|[0x800022d0]<br>0xFFFFFFFD|- rs1 : x17<br> - rs2 : x26<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                             |[0x800003a0]:SMALTT s8, a7, s10<br> [0x800003a4]:sw s8, 0(gp)<br>   |
|  26|[0x800022d8]<br>0x3FFFFFF9|- rs1 : x7<br> - rs2 : x20<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                 |[0x800003bc]:SMALTT fp, t2, s4<br> [0x800003c0]:sw fp, 8(gp)<br>    |
|  27|[0x800022e0]<br>0x3FFFFFF9|- rs1 : x28<br> - rs2 : x1<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                        |[0x800003d4]:SMALTT fp, t3, ra<br> [0x800003d8]:sw fp, 16(gp)<br>   |
|  28|[0x800022e8]<br>0x0006FFFF|- rs1 : x12<br> - rs2 : x11<br> - rs2_h1_val == 512<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                              |[0x800003f0]:SMALTT s6, a2, a1<br> [0x800003f4]:sw s6, 24(gp)<br>   |
|  29|[0x800022f0]<br>0x80002260|- rs1 : x4<br> - rs2 : x10<br> - rs2_h1_val == 256<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                  |[0x8000040c]:SMALTT a4, tp, a0<br> [0x80000410]:sw a4, 32(gp)<br>   |
|  30|[0x800022f8]<br>0xFBFFFFFE|- rs1 : x19<br> - rs2 : x17<br> - rs2_h1_val == 8<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                |[0x80000424]:SMALTT t5, s3, a7<br> [0x80000428]:sw t5, 40(gp)<br>   |
|  31|[0x80002300]<br>0x80002260|- rs1 : x2<br> - rs2 : x4<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                         |[0x80000440]:SMALTT a4, sp, tp<br> [0x80000444]:sw a4, 48(gp)<br>   |
|  32|[0x80002308]<br>0x80000001|- rs1 : x15<br> - rs2 : x27<br> - rs2_h0_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                 |[0x80000458]:SMALTT a6, a5, s11<br> [0x8000045c]:sw a6, 56(gp)<br>  |
|  33|[0x80002310]<br>0xFBFFFFFE|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000474]:SMALTT t5, t6, t4<br> [0x80000478]:sw t5, 64(gp)<br>   |
|  34|[0x80002318]<br>0xFBFFFFFE|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                     |[0x8000048c]:SMALTT t5, t6, t4<br> [0x80000490]:sw t5, 72(gp)<br>   |
|  35|[0x80002320]<br>0xFBFFFFFE|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                       |[0x800004a8]:SMALTT t5, t6, t4<br> [0x800004ac]:sw t5, 80(gp)<br>   |
|  36|[0x80002328]<br>0xFBFFFFFE|- rs2_h0_val == -5<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                |[0x800004c4]:SMALTT t5, t6, t4<br> [0x800004c8]:sw t5, 88(gp)<br>   |
|  37|[0x80002330]<br>0xFBFFFFFE|- rs2_h0_val == -9<br> - rs1_h1_val == 512<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                         |[0x800004e0]:SMALTT t5, t6, t4<br> [0x800004e4]:sw t5, 96(gp)<br>   |
|  38|[0x80002338]<br>0xFBFFFFFE|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                        |[0x800004f8]:SMALTT t5, t6, t4<br> [0x800004fc]:sw t5, 104(gp)<br>  |
|  39|[0x80002340]<br>0xFBFFFFFE|- rs2_h0_val == -65<br> - rs1_h1_val == 16<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                          |[0x80000514]:SMALTT t5, t6, t4<br> [0x80000518]:sw t5, 112(gp)<br>  |
|  40|[0x80002348]<br>0xFBFFFFFE|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                         |[0x80000530]:SMALTT t5, t6, t4<br> [0x80000534]:sw t5, 120(gp)<br>  |
|  41|[0x80002350]<br>0xFBFFFFFE|- rs1_h1_val == -32768<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                              |[0x8000054c]:SMALTT t5, t6, t4<br> [0x80000550]:sw t5, 128(gp)<br>  |
|  42|[0x80002358]<br>0xFBFFFFFE|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                     |[0x80000564]:SMALTT t5, t6, t4<br> [0x80000568]:sw t5, 136(gp)<br>  |
|  43|[0x80002360]<br>0xFBFFFFFE|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                       |[0x80000580]:SMALTT t5, t6, t4<br> [0x80000584]:sw t5, 144(gp)<br>  |
|  44|[0x80002368]<br>0xFBFFFFFE|- rs2_h1_val == 64<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                              |[0x8000059c]:SMALTT t5, t6, t4<br> [0x800005a0]:sw t5, 152(gp)<br>  |
|  45|[0x80002370]<br>0xFBFFFFFE|- rs2_h1_val == 32<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                              |[0x800005b4]:SMALTT t5, t6, t4<br> [0x800005b8]:sw t5, 160(gp)<br>  |
|  46|[0x80002378]<br>0xFBFFFFFE|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                        |[0x800005d0]:SMALTT t5, t6, t4<br> [0x800005d4]:sw t5, 168(gp)<br>  |
|  47|[0x80002380]<br>0xFBFFFFFE|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                         |[0x800005e8]:SMALTT t5, t6, t4<br> [0x800005ec]:sw t5, 176(gp)<br>  |
|  48|[0x80002388]<br>0xFBFFFFFE|- rs2_h1_val == 1<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                |[0x80000604]:SMALTT t5, t6, t4<br> [0x80000608]:sw t5, 184(gp)<br>  |
|  49|[0x80002398]<br>0xFBFFFFFE|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                        |[0x8000063c]:SMALTT t5, t6, t4<br> [0x80000640]:sw t5, 200(gp)<br>  |
|  50|[0x800023a0]<br>0xFBFFFFFE|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                     |[0x80000654]:SMALTT t5, t6, t4<br> [0x80000658]:sw t5, 208(gp)<br>  |
|  51|[0x800023a8]<br>0xFBFFFFFE|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                      |[0x8000066c]:SMALTT t5, t6, t4<br> [0x80000670]:sw t5, 216(gp)<br>  |
|  52|[0x800023b0]<br>0xFBFFFFFE|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                       |[0x80000684]:SMALTT t5, t6, t4<br> [0x80000688]:sw t5, 224(gp)<br>  |
|  53|[0x800023b8]<br>0xFBFFFFFE|- rs2_h0_val == 64<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                 |[0x800006a0]:SMALTT t5, t6, t4<br> [0x800006a4]:sw t5, 232(gp)<br>  |
|  54|[0x800023c0]<br>0xFBFFFFFE|- rs2_h0_val == 32<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                 |[0x800006bc]:SMALTT t5, t6, t4<br> [0x800006c0]:sw t5, 240(gp)<br>  |
|  55|[0x800023c8]<br>0xFBFFFFFE|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                         |[0x800006d8]:SMALTT t5, t6, t4<br> [0x800006dc]:sw t5, 248(gp)<br>  |
|  56|[0x800023d0]<br>0xFBFFFFFE|- rs2_h1_val == -33<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                 |[0x800006f4]:SMALTT t5, t6, t4<br> [0x800006f8]:sw t5, 256(gp)<br>  |
|  57|[0x800023d8]<br>0xFBFFFFFE|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                    |[0x80000710]:SMALTT t5, t6, t4<br> [0x80000714]:sw t5, 264(gp)<br>  |
|  58|[0x800023e0]<br>0xFBFFFFFE|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                     |[0x8000072c]:SMALTT t5, t6, t4<br> [0x80000730]:sw t5, 272(gp)<br>  |
|  59|[0x800023e8]<br>0xFBFFFFFE|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                     |[0x80000744]:SMALTT t5, t6, t4<br> [0x80000748]:sw t5, 280(gp)<br>  |
|  60|[0x800023f0]<br>0xFBFFFFFE|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                      |[0x8000075c]:SMALTT t5, t6, t4<br> [0x80000760]:sw t5, 288(gp)<br>  |
|  61|[0x80002400]<br>0xFBFFFFFE|- rs2_h0_val == -33<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                              |[0x80000794]:SMALTT t5, t6, t4<br> [0x80000798]:sw t5, 304(gp)<br>  |
|  62|[0x80002408]<br>0xFBFFFFFE|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                       |[0x800007b0]:SMALTT t5, t6, t4<br> [0x800007b4]:sw t5, 312(gp)<br>  |
|  63|[0x80002410]<br>0xFBFFFFFE|- rs2_h0_val == -21846<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                            |[0x800007cc]:SMALTT t5, t6, t4<br> [0x800007d0]:sw t5, 320(gp)<br>  |
|  64|[0x80002418]<br>0xFBFFFFFE|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                        |[0x800007e8]:SMALTT t5, t6, t4<br> [0x800007ec]:sw t5, 328(gp)<br>  |
|  65|[0x80002420]<br>0xFBFFFFFE|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000804]:SMALTT t5, t6, t4<br> [0x80000808]:sw t5, 336(gp)<br>  |
|  66|[0x80002428]<br>0xFBFFFFFE|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                        |[0x8000081c]:SMALTT t5, t6, t4<br> [0x80000820]:sw t5, 344(gp)<br>  |
|  67|[0x80002430]<br>0xFBFFFFFE|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                        |[0x80000838]:SMALTT t5, t6, t4<br> [0x8000083c]:sw t5, 352(gp)<br>  |
|  68|[0x80002438]<br>0xFBFFFFFE|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                        |[0x80000850]:SMALTT t5, t6, t4<br> [0x80000854]:sw t5, 360(gp)<br>  |
|  69|[0x80002440]<br>0xFBFFFFFE|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                     |[0x80000868]:SMALTT t5, t6, t4<br> [0x8000086c]:sw t5, 368(gp)<br>  |
|  70|[0x80002448]<br>0xFBFFFFFE|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                     |[0x80000884]:SMALTT t5, t6, t4<br> [0x80000888]:sw t5, 376(gp)<br>  |
|  71|[0x80002450]<br>0xFBFFFFFE|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                      |[0x800008a0]:SMALTT t5, t6, t4<br> [0x800008a4]:sw t5, 384(gp)<br>  |
|  72|[0x80002458]<br>0xFBFFFFFE|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                     |[0x800008b8]:SMALTT t5, t6, t4<br> [0x800008bc]:sw t5, 392(gp)<br>  |
|  73|[0x80002460]<br>0xFBFFFFFE|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                     |[0x800008d4]:SMALTT t5, t6, t4<br> [0x800008d8]:sw t5, 400(gp)<br>  |
