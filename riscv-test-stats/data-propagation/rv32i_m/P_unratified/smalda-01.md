
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008d0')]      |
| SIG_REGION                | [('0x80002210', '0x80002460', '148 words')]      |
| COV_LABELS                | smalda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalda-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 148      |
| STAT1                     | 69      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 74     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ac]:SMALDA t5, t6, t4
      [0x800006b0]:sw t5, 168(ra)
 -- Signature Address: 0x800023b8 Data: 0xFBFF3FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 2048
      - rs2_h0_val == 0
      - rs1_h1_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000086c]:SMALDA t5, t6, t4
      [0x80000870]:sw t5, 304(ra)
 -- Signature Address: 0x80002440 Data: 0xFBFF3FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 16384
      - rs2_h0_val == -33
      - rs1_h1_val == 21845
      - rs1_h0_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000880]:SMALDA t5, t6, t4
      [0x80000884]:sw t5, 312(ra)
 -- Signature Address: 0x80002448 Data: 0xFBFF3FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val == rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 256
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000089c]:SMALDA t5, t6, t4
      [0x800008a0]:sw t5, 320(ra)
 -- Signature Address: 0x80002450 Data: 0xFBFF3FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -9
      - rs2_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b8]:SMALDA t5, t6, t4
      [0x800008bc]:sw t5, 328(ra)
 -- Signature Address: 0x80002458 Data: 0xFBFF3FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 16384
      - rs2_h0_val == -3
      - rs1_h1_val == -21846
      - rs1_h0_val == 256






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalda', 'rs1 : x28', 'rs2 : x28', 'rd : x28', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000010c]:SMALDA t3, t3, t3
	-[0x80000110]:sw t3, 0(ra)
Current Store : [0x80000114] : sw t4, 4(ra) -- Store: [0x80002214]:0xEEDBEADF




Last Coverpoint : ['rs1 : x16', 'rs2 : x16', 'rd : x6', 'rs1 == rs2 != rd', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 256', 'rs1_h1_val == 0', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000120]:SMALDA t1, a6, a6
	-[0x80000124]:sw t1, 8(ra)
Current Store : [0x80000128] : sw t2, 12(ra) -- Store: [0x8000221c]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x7', 'rs2 : x27', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -17', 'rs2_h0_val == 16', 'rs1_h1_val == -9', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000013c]:SMALDA a0, t2, s11
	-[0x80000140]:sw a0, 16(ra)
Current Store : [0x80000144] : sw a1, 20(ra) -- Store: [0x80002224]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x13', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -1025', 'rs2_h0_val == -9', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000158]:SMALDA s4, a3, s4
	-[0x8000015c]:sw s4, 24(ra)
Current Store : [0x80000160] : sw s5, 28(ra) -- Store: [0x8000222c]:0xDBEADFEE




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x14', 'rs1 == rd != rs2', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 2048', 'rs2_h0_val == 8192', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000170]:SMALDA a4, a4, t6
	-[0x80000174]:sw a4, 32(ra)
Current Store : [0x80000178] : sw a5, 36(ra) -- Store: [0x80002234]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x21', 'rs2 : x8', 'rd : x30', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 8192', 'rs2_h0_val == 8', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000018c]:SMALDA t5, s5, fp
	-[0x80000190]:sw t5, 40(ra)
Current Store : [0x80000194] : sw t6, 44(ra) -- Store: [0x8000223c]:0x08002000




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x4', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -257', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800001a8]:SMALDA tp, t4, s6
	-[0x800001ac]:sw tp, 48(ra)
Current Store : [0x800001b0] : sw t0, 52(ra) -- Store: [0x80002244]:0x800000F8




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rd : x16', 'rs2_h1_val == -21846', 'rs2_h0_val == 128', 'rs1_h1_val == 128', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800001c4]:SMALDA a6, s1, a7
	-[0x800001c8]:sw a6, 56(ra)
Current Store : [0x800001cc] : sw a7, 60(ra) -- Store: [0x8000224c]:0xAAAA007F




Last Coverpoint : ['rs1 : x31', 'rs2 : x13', 'rd : x2', 'rs2_h1_val == 21845', 'rs2_h0_val == 4', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800001e0]:SMALDA sp, t6, a3
	-[0x800001e4]:sw sp, 64(ra)
Current Store : [0x800001e8] : sw gp, 68(ra) -- Store: [0x80002254]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x12', 'rs2 : x11', 'rd : x18', 'rs2_h1_val == 32767', 'rs2_h0_val == -21846', 'rs1_h1_val == 32', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800001fc]:SMALDA s2, a2, a1
	-[0x80000200]:sw s2, 72(ra)
Current Store : [0x80000204] : sw s3, 76(ra) -- Store: [0x8000225c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x15', 'rs2 : x24', 'rd : x26', 'rs2_h1_val == -16385', 'rs1_h1_val == 4', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000220]:SMALDA s10, a5, s8
	-[0x80000224]:sw s10, 0(t0)
Current Store : [0x80000228] : sw s11, 4(t0) -- Store: [0x80002264]:0xFFEF0010




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x24', 'rs2_h1_val == -8193', 'rs2_h0_val == 1024', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000023c]:SMALDA s8, s6, s2
	-[0x80000240]:sw s8, 8(t0)
Current Store : [0x80000244] : sw s9, 12(t0) -- Store: [0x8000226c]:0xEDBEADFE




Last Coverpoint : ['rs1 : x19', 'rs2 : x1', 'rd : x8', 'rs2_h1_val == -4097', 'rs2_h0_val == 2', 'rs1_h1_val == 1', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000258]:SMALDA fp, s3, ra
	-[0x8000025c]:sw fp, 16(t0)
Current Store : [0x80000260] : sw s1, 20(t0) -- Store: [0x80002274]:0x0080FDFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x12', 'rs2_h1_val == -2049', 'rs2_h0_val == 32', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000274]:SMALDA a2, a7, a0
	-[0x80000278]:sw a2, 24(t0)
Current Store : [0x8000027c] : sw a3, 28(t0) -- Store: [0x8000227c]:0x55550004




Last Coverpoint : ['rs1 : x4', 'rs2 : x30', 'rd : x22', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80000290]:SMALDA s6, tp, t5
	-[0x80000294]:sw s6, 32(t0)
Current Store : [0x80000298] : sw s7, 36(t0) -- Store: [0x80002284]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rs2_h1_val == -257', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800002ac]:SMALDA s8, s7, gp
	-[0x800002b0]:sw s8, 40(t0)
Current Store : [0x800002b4] : sw s9, 44(t0) -- Store: [0x8000228c]:0xEDBEADFE




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rs1_h0_val == -32768', 'rs2_h1_val == -129', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800002c4]:SMALDA t1, sp, s7
	-[0x800002c8]:sw t1, 48(t0)
Current Store : [0x800002cc] : sw t2, 52(t0) -- Store: [0x80002294]:0xFFF70080




Last Coverpoint : ['rs1 : x1', 'rs2 : x12', 'rs2_h1_val == -65', 'rs2_h0_val == 4096', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800002d8]:SMALDA s8, ra, a2
	-[0x800002dc]:sw s8, 56(t0)
Current Store : [0x800002e0] : sw s9, 60(t0) -- Store: [0x8000229c]:0xEDBEADFE




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rs2_h1_val == -33', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800002f4]:SMALDA s10, t5, s1
	-[0x800002f8]:sw s10, 64(t0)
Current Store : [0x800002fc] : sw s11, 68(t0) -- Store: [0x800022a4]:0xFFEF0010




Last Coverpoint : ['rs1 : x0', 'rs2 : x14', 'rs2_h1_val == -9', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000310]:SMALDA t3, zero, a4
	-[0x80000314]:sw t3, 72(t0)
Current Store : [0x80000318] : sw t4, 76(t0) -- Store: [0x800022ac]:0xFFF80004




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rs2_h1_val == -5', 'rs1_h1_val == -513', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000328]:SMALDA s4, s10, s3
	-[0x8000032c]:sw s4, 80(t0)
Current Store : [0x80000330] : sw s5, 84(t0) -- Store: [0x800022b4]:0xFFF60008




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x8000034c]:SMALDA a4, a0, t2
	-[0x80000350]:sw a4, 0(ra)
Current Store : [0x80000354] : sw a5, 4(ra) -- Store: [0x800022bc]:0x0004FF7F




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rs2_h1_val == -2', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000368]:SMALDA t1, s4, t4
	-[0x8000036c]:sw t1, 8(ra)
Current Store : [0x80000370] : sw t2, 12(ra) -- Store: [0x800022c4]:0xFFFD0100




Last Coverpoint : ['rs1 : x11', 'rs2 : x25', 'rs2_h1_val == -32768', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000384]:SMALDA a4, a1, s9
	-[0x80000388]:sw a4, 16(ra)
Current Store : [0x8000038c] : sw a5, 20(ra) -- Store: [0x800022cc]:0x0004FF7F




Last Coverpoint : ['rs1 : x27', 'rs2 : x0', 'rs2_h0_val == 0', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800003a0]:SMALDA a0, s11, zero
	-[0x800003a4]:sw a0, 24(ra)
Current Store : [0x800003a8] : sw a1, 28(ra) -- Store: [0x800022d4]:0x00060005




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rs2_h1_val == 4096', 'rs1_h1_val == 8192', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800003b8]:SMALDA fp, t1, s10
	-[0x800003bc]:sw fp, 32(ra)
Current Store : [0x800003c0] : sw s1, 36(ra) -- Store: [0x800022dc]:0xFFDF0400




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rs2_h1_val == 1024', 'rs2_h0_val == -1', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800003d4]:SMALDA s10, t0, tp
	-[0x800003d8]:sw s10, 40(ra)
Current Store : [0x800003dc] : sw s11, 44(ra) -- Store: [0x800022e4]:0xAAAA0100




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rs2_h1_val == 512', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800003ec]:SMALDA tp, gp, s5
	-[0x800003f0]:sw tp, 48(ra)
Current Store : [0x800003f4] : sw t0, 52(ra) -- Store: [0x800022ec]:0xBFFF0003




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80000408]:SMALDA fp, s9, t1
	-[0x8000040c]:sw fp, 56(ra)
Current Store : [0x80000410] : sw s1, 60(ra) -- Store: [0x800022f4]:0xFFDF0400




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rs2_h1_val == 128', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000420]:SMALDA s6, s2, a5
	-[0x80000424]:sw s6, 64(ra)
Current Store : [0x80000428] : sw s7, 68(ra) -- Store: [0x800022fc]:0xFF7F0080




Last Coverpoint : ['rs1 : x8', 'rs2 : x2', 'rs2_h1_val == 64', 'rs2_h0_val == 512', 'rs1_h1_val == 21845', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000043c]:SMALDA a2, fp, sp
	-[0x80000440]:sw a2, 72(ra)
Current Store : [0x80000444] : sw a3, 76(ra) -- Store: [0x80002304]:0x55550004




Last Coverpoint : ['rs1 : x24', 'rs2 : x5', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000458]:SMALDA t5, s8, t0
	-[0x8000045c]:sw t5, 80(ra)
Current Store : [0x80000460] : sw t6, 84(ra) -- Store: [0x8000230c]:0xEFFF3FFF




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000047c]:SMALDA t5, t6, t4
	-[0x80000480]:sw t5, 0(ra)
Current Store : [0x80000484] : sw t6, 4(ra) -- Store: [0x80002314]:0x5555FBFF




Last Coverpoint : ['rs1_h1_val == -1', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000494]:SMALDA t5, t6, t4
	-[0x80000498]:sw t5, 8(ra)
Current Store : [0x8000049c] : sw t6, 12(ra) -- Store: [0x8000231c]:0xFFFFFEFF




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004b0]:SMALDA t5, t6, t4
	-[0x800004b4]:sw t5, 16(ra)
Current Store : [0x800004b8] : sw t6, 20(ra) -- Store: [0x80002324]:0x0000FFBF




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004cc]:SMALDA t5, t6, t4
	-[0x800004d0]:sw t5, 24(ra)
Current Store : [0x800004d4] : sw t6, 28(ra) -- Store: [0x8000232c]:0xFFFEFFDF




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800004e8]:SMALDA t5, t6, t4
	-[0x800004ec]:sw t5, 32(ra)
Current Store : [0x800004f0] : sw t6, 36(ra) -- Store: [0x80002334]:0xFFF8FFEF




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000504]:SMALDA t5, t6, t4
	-[0x80000508]:sw t5, 40(ra)
Current Store : [0x8000050c] : sw t6, 44(ra) -- Store: [0x8000233c]:0x4000FFF7




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == 8', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000520]:SMALDA t5, t6, t4
	-[0x80000524]:sw t5, 48(ra)
Current Store : [0x80000528] : sw t6, 52(ra) -- Store: [0x80002344]:0x0008FFFB




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000053c]:SMALDA t5, t6, t4
	-[0x80000540]:sw t5, 56(ra)
Current Store : [0x80000544] : sw t6, 60(ra) -- Store: [0x8000234c]:0x0040FFFD




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000558]:SMALDA t5, t6, t4
	-[0x8000055c]:sw t5, 64(ra)
Current Store : [0x80000560] : sw t6, 68(ra) -- Store: [0x80002354]:0xFFFE0800




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000574]:SMALDA t5, t6, t4
	-[0x80000578]:sw t5, 72(ra)
Current Store : [0x8000057c] : sw t6, 76(ra) -- Store: [0x8000235c]:0x00050400




Last Coverpoint : ['rs1_h1_val == 256', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000590]:SMALDA t5, t6, t4
	-[0x80000594]:sw t5, 80(ra)
Current Store : [0x80000598] : sw t6, 84(ra) -- Store: [0x80002364]:0x01000200




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005ac]:SMALDA t5, t6, t4
	-[0x800005b0]:sw t5, 88(ra)
Current Store : [0x800005b4] : sw t6, 92(ra) -- Store: [0x8000236c]:0x20000040




Last Coverpoint : ['rs2_h1_val == 16384', 'rs2_h0_val == -32768', 'rs1_h1_val == 512', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005c4]:SMALDA t5, t6, t4
	-[0x800005c8]:sw t5, 96(ra)
Current Store : [0x800005cc] : sw t6, 100(ra) -- Store: [0x80002374]:0x02000010




Last Coverpoint : ['rs1_h1_val == -129', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800005e0]:SMALDA t5, t6, t4
	-[0x800005e4]:sw t5, 104(ra)
Current Store : [0x800005e8] : sw t6, 108(ra) -- Store: [0x8000237c]:0xFF7F0002




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005fc]:SMALDA t5, t6, t4
	-[0x80000600]:sw t5, 112(ra)
Current Store : [0x80000604] : sw t6, 116(ra) -- Store: [0x80002384]:0x00200001




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000614]:SMALDA t5, t6, t4
	-[0x80000618]:sw t5, 120(ra)
Current Store : [0x8000061c] : sw t6, 124(ra) -- Store: [0x8000238c]:0xFBFF8000




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000630]:SMALDA t5, t6, t4
	-[0x80000634]:sw t5, 128(ra)
Current Store : [0x80000638] : sw t6, 132(ra) -- Store: [0x80002394]:0x5555FFFE




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x8000064c]:SMALDA t5, t6, t4
	-[0x80000650]:sw t5, 136(ra)
Current Store : [0x80000654] : sw t6, 140(ra) -- Store: [0x8000239c]:0x0003FFFD




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000664]:SMALDA t5, t6, t4
	-[0x80000668]:sw t5, 144(ra)
Current Store : [0x8000066c] : sw t6, 148(ra) -- Store: [0x800023a4]:0x7FFF0080




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000067c]:SMALDA t5, t6, t4
	-[0x80000680]:sw t5, 152(ra)
Current Store : [0x80000684] : sw t6, 156(ra) -- Store: [0x800023ac]:0xAAAA1000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000694]:SMALDA t5, t6, t4
	-[0x80000698]:sw t5, 160(ra)
Current Store : [0x8000069c] : sw t6, 164(ra) -- Store: [0x800023b4]:0x02001000




Last Coverpoint : ['opcode : smalda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 2048', 'rs2_h0_val == 0', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800006ac]:SMALDA t5, t6, t4
	-[0x800006b0]:sw t5, 168(ra)
Current Store : [0x800006b4] : sw t6, 172(ra) -- Store: [0x800023bc]:0xFDFFFFF8




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800006c8]:SMALDA t5, t6, t4
	-[0x800006cc]:sw t5, 176(ra)
Current Store : [0x800006d0] : sw t6, 180(ra) -- Store: [0x800023c4]:0xDFFF7FFF




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h1_val == -2049', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800006e0]:SMALDA t5, t6, t4
	-[0x800006e4]:sw t5, 184(ra)
Current Store : [0x800006e8] : sw t6, 188(ra) -- Store: [0x800023cc]:0xF7FFEFFF




Last Coverpoint : ['rs1_h1_val == -257', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800006fc]:SMALDA t5, t6, t4
	-[0x80000700]:sw t5, 192(ra)
Current Store : [0x80000704] : sw t6, 196(ra) -- Store: [0x800023d4]:0xFEFF5555




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000718]:SMALDA t5, t6, t4
	-[0x8000071c]:sw t5, 200(ra)
Current Store : [0x80000720] : sw t6, 204(ra) -- Store: [0x800023dc]:0xFFBFFFF9




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000730]:SMALDA t5, t6, t4
	-[0x80000734]:sw t5, 208(ra)
Current Store : [0x80000738] : sw t6, 212(ra) -- Store: [0x800023e4]:0xFFDF0800




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000744]:SMALDA t5, t6, t4
	-[0x80000748]:sw t5, 216(ra)
Current Store : [0x8000074c] : sw t6, 220(ra) -- Store: [0x800023ec]:0xFFEF1000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000760]:SMALDA t5, t6, t4
	-[0x80000764]:sw t5, 224(ra)
Current Store : [0x80000768] : sw t6, 228(ra) -- Store: [0x800023f4]:0xFFFDFBFF




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000778]:SMALDA t5, t6, t4
	-[0x8000077c]:sw t5, 232(ra)
Current Store : [0x80000780] : sw t6, 236(ra) -- Store: [0x800023fc]:0x8000BFFF




Last Coverpoint : ['rs1_h1_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000794]:SMALDA t5, t6, t4
	-[0x80000798]:sw t5, 240(ra)
Current Store : [0x8000079c] : sw t6, 244(ra) -- Store: [0x80002404]:0x1000AAAA




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800007ac]:SMALDA t5, t6, t4
	-[0x800007b0]:sw t5, 248(ra)
Current Store : [0x800007b4] : sw t6, 252(ra) -- Store: [0x8000240c]:0x0400FFF6




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800007c8]:SMALDA t5, t6, t4
	-[0x800007cc]:sw t5, 256(ra)
Current Store : [0x800007d0] : sw t6, 260(ra) -- Store: [0x80002414]:0x0010FFFD




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800007e4]:SMALDA t5, t6, t4
	-[0x800007e8]:sw t5, 264(ra)
Current Store : [0x800007ec] : sw t6, 268(ra) -- Store: [0x8000241c]:0x0800FEFF




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800007fc]:SMALDA t5, t6, t4
	-[0x80000800]:sw t5, 272(ra)
Current Store : [0x80000804] : sw t6, 276(ra) -- Store: [0x80002424]:0x0002FFFE




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000818]:SMALDA t5, t6, t4
	-[0x8000081c]:sw t5, 280(ra)
Current Store : [0x80000820] : sw t6, 284(ra) -- Store: [0x8000242c]:0xBFFF0006




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000834]:SMALDA t5, t6, t4
	-[0x80000838]:sw t5, 288(ra)
Current Store : [0x8000083c] : sw t6, 292(ra) -- Store: [0x80002434]:0xFDFFEFFF




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000850]:SMALDA t5, t6, t4
	-[0x80000854]:sw t5, 296(ra)
Current Store : [0x80000858] : sw t6, 300(ra) -- Store: [0x8000243c]:0x0002FFF7




Last Coverpoint : ['opcode : smalda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -33', 'rs1_h1_val == 21845', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000086c]:SMALDA t5, t6, t4
	-[0x80000870]:sw t5, 304(ra)
Current Store : [0x80000874] : sw t6, 308(ra) -- Store: [0x80002444]:0x5555F7FF




Last Coverpoint : ['opcode : smalda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 256', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000880]:SMALDA t5, t6, t4
	-[0x80000884]:sw t5, 312(ra)
Current Store : [0x80000888] : sw t6, 316(ra) -- Store: [0x8000244c]:0x00008000




Last Coverpoint : ['opcode : smalda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -9', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x8000089c]:SMALDA t5, t6, t4
	-[0x800008a0]:sw t5, 320(ra)
Current Store : [0x800008a4] : sw t6, 324(ra) -- Store: [0x80002454]:0x3FFF3FFF




Last Coverpoint : ['opcode : smalda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -3', 'rs1_h1_val == -21846', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800008b8]:SMALDA t5, t6, t4
	-[0x800008bc]:sw t5, 328(ra)
Current Store : [0x800008c0] : sw t6, 332(ra) -- Store: [0x8000245c]:0xAAAA0100





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

|s.no|        signature         |                                                                                                                                          coverpoints                                                                                                                                           |                                code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0005F7FF|- opcode : smalda<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2049<br> - rs1_h0_val == -2049<br>   |[0x8000010c]:SMALDA t3, t3, t3<br> [0x80000110]:sw t3, 0(ra)<br>     |
|   2|[0x80002218]<br>0x80002000|- rs1 : x16<br> - rs2 : x16<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 256<br> - rs1_h1_val == 0<br> - rs1_h0_val == 256<br>                                                                                        |[0x80000120]:SMALDA t1, a6, a6<br> [0x80000124]:sw t1, 8(ra)<br>     |
|   3|[0x80002220]<br>0x56FF76DF|- rs1 : x7<br> - rs2 : x27<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == -17<br> - rs2_h0_val == 16<br> - rs1_h1_val == -9<br> - rs1_h0_val == 128<br> |[0x8000013c]:SMALDA a0, t2, s11<br> [0x80000140]:sw a0, 16(ra)<br>   |
|   4|[0x80002228]<br>0xFBFFFFF7|- rs1 : x13<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -9<br> - rs1_h1_val == 2048<br>                                                                                                         |[0x80000158]:SMALDA s4, a3, s4<br> [0x8000015c]:sw s4, 24(ra)<br>    |
|   5|[0x80002230]<br>0x0003FFFE|- rs1 : x14<br> - rs2 : x31<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -2<br>                                                                                                          |[0x80000170]:SMALDA a4, a4, t6<br> [0x80000174]:sw a4, 32(ra)<br>    |
|   6|[0x80002238]<br>0xF76DF56F|- rs1 : x21<br> - rs2 : x8<br> - rd : x30<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 8<br> - rs1_h0_val == 8<br>                                                                                                                                      |[0x8000018c]:SMALDA t5, s5, fp<br> [0x80000190]:sw t5, 40(ra)<br>    |
|   7|[0x80002240]<br>0xBFDDB7D5|- rs1 : x29<br> - rs2 : x22<br> - rd : x4<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -257<br> - rs1_h0_val == 4<br>                                                                                                                                                            |[0x800001a8]:SMALDA tp, t4, s6<br> [0x800001ac]:sw tp, 48(ra)<br>    |
|   8|[0x80002248]<br>0x00000100|- rs1 : x9<br> - rs2 : x17<br> - rd : x16<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 128<br> - rs1_h1_val == 128<br> - rs1_h0_val == -513<br>                                                                                                                                               |[0x800001c4]:SMALDA a6, s1, a7<br> [0x800001c8]:sw a6, 56(ra)<br>    |
|   9|[0x80002250]<br>0xFF76DF56|- rs1 : x31<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 4<br> - rs1_h1_val == -4097<br>                                                                                                                                                                         |[0x800001e0]:SMALDA sp, t6, a3<br> [0x800001e4]:sw sp, 64(ra)<br>    |
|  10|[0x80002258]<br>0xDF56FF76|- rs1 : x12<br> - rs2 : x11<br> - rd : x18<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 32<br> - rs1_h0_val == 32767<br>                                                                                                                                            |[0x800001fc]:SMALDA s2, a2, a1<br> [0x80000200]:sw s2, 72(ra)<br>    |
|  11|[0x80002260]<br>0x76DF56FF|- rs1 : x15<br> - rs2 : x24<br> - rd : x26<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 4<br> - rs1_h0_val == -129<br>                                                                                                                                                                        |[0x80000220]:SMALDA s10, a5, s8<br> [0x80000224]:sw s10, 0(t0)<br>   |
|  12|[0x80002268]<br>0xBFFFFFF6|- rs1 : x22<br> - rs2 : x18<br> - rd : x24<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -5<br>                                                                                                                                                                        |[0x8000023c]:SMALDA s8, s6, s2<br> [0x80000240]:sw s8, 8(t0)<br>     |
|  13|[0x80002270]<br>0x20000008|- rs1 : x19<br> - rs2 : x1<br> - rd : x8<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 2<br> - rs1_h1_val == 1<br> - rs1_h0_val == -8193<br>                                                                                                                                                    |[0x80000258]:SMALDA fp, s3, ra<br> [0x8000025c]:sw fp, 16(t0)<br>    |
|  14|[0x80002278]<br>0x00207FFF|- rs1 : x17<br> - rs2 : x10<br> - rd : x12<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 32<br> - rs1_h1_val == 64<br>                                                                                                                                                                          |[0x80000274]:SMALDA a2, a7, a0<br> [0x80000278]:sw a2, 24(t0)<br>    |
|  15|[0x80002280]<br>0xFFFB7FFF|- rs1 : x4<br> - rs2 : x30<br> - rd : x22<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                          |[0x80000290]:SMALDA s6, tp, t5<br> [0x80000294]:sw s6, 32(t0)<br>    |
|  16|[0x80002288]<br>0xBFFFFFF6|- rs1 : x23<br> - rs2 : x3<br> - rs2_h1_val == -257<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                  |[0x800002ac]:SMALDA s8, s7, gp<br> [0x800002b0]:sw s8, 40(t0)<br>    |
|  17|[0x80002290]<br>0x80002000|- rs1 : x2<br> - rs2 : x23<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -129<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                    |[0x800002c4]:SMALDA t1, sp, s7<br> [0x800002c8]:sw t1, 48(t0)<br>    |
|  18|[0x80002298]<br>0xBFFFFFF6|- rs1 : x1<br> - rs2 : x12<br> - rs2_h1_val == -65<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                        |[0x800002d8]:SMALDA s8, ra, a2<br> [0x800002dc]:sw s8, 56(t0)<br>    |
|  19|[0x800022a0]<br>0x76DF56FF|- rs1 : x30<br> - rs2 : x9<br> - rs2_h1_val == -33<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                |[0x800002f4]:SMALDA s10, t5, s1<br> [0x800002f8]:sw s10, 64(t0)<br>  |
|  20|[0x800022a8]<br>0x0005F7FF|- rs1 : x0<br> - rs2 : x14<br> - rs2_h1_val == -9<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                     |[0x80000310]:SMALDA t3, zero, a4<br> [0x80000314]:sw t3, 72(t0)<br>  |
|  21|[0x800022b0]<br>0xFBFFFFF7|- rs1 : x26<br> - rs2 : x19<br> - rs2_h1_val == -5<br> - rs1_h1_val == -513<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                        |[0x80000328]:SMALDA s4, s10, s3<br> [0x8000032c]:sw s4, 80(t0)<br>   |
|  22|[0x800022b8]<br>0xFFF70100|- rs1 : x10<br> - rs2 : x7<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                           |[0x8000034c]:SMALDA a4, a0, t2<br> [0x80000350]:sw a4, 0(ra)<br>     |
|  23|[0x800022c0]<br>0x80002000|- rs1 : x20<br> - rs2 : x29<br> - rs2_h1_val == -2<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                   |[0x80000368]:SMALDA t1, s4, t4<br> [0x8000036c]:sw t1, 8(ra)<br>     |
|  24|[0x800022c8]<br>0xFFF70100|- rs1 : x11<br> - rs2 : x25<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                               |[0x80000384]:SMALDA a4, a1, s9<br> [0x80000388]:sw a4, 16(ra)<br>    |
|  25|[0x800022d0]<br>0x00200080|- rs1 : x27<br> - rs2 : x0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                 |[0x800003a0]:SMALDA a0, s11, zero<br> [0x800003a4]:sw a0, 24(ra)<br> |
|  26|[0x800022d8]<br>0x20000008|- rs1 : x6<br> - rs2 : x26<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                      |[0x800003b8]:SMALDA fp, t1, s10<br> [0x800003bc]:sw fp, 32(ra)<br>   |
|  27|[0x800022e0]<br>0x10000009|- rs1 : x5<br> - rs2 : x4<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -1<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                        |[0x800003d4]:SMALDA s10, t0, tp<br> [0x800003d8]:sw s10, 40(ra)<br>  |
|  28|[0x800022e8]<br>0x0400FFFF|- rs1 : x3<br> - rs2 : x21<br> - rs2_h1_val == 512<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                   |[0x800003ec]:SMALDA tp, gp, s5<br> [0x800003f0]:sw tp, 48(ra)<br>    |
|  29|[0x800022f0]<br>0x20000008|- rs1 : x25<br> - rs2 : x6<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                          |[0x80000408]:SMALDA fp, s9, t1<br> [0x8000040c]:sw fp, 56(ra)<br>    |
|  30|[0x800022f8]<br>0xFFFB7FFF|- rs1 : x18<br> - rs2 : x15<br> - rs2_h1_val == 128<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                  |[0x80000420]:SMALDA s6, s2, a5<br> [0x80000424]:sw s6, 64(ra)<br>    |
|  31|[0x80002300]<br>0xFFBF1000|- rs1 : x8<br> - rs2 : x2<br> - rs2_h1_val == 64<br> - rs2_h0_val == 512<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -16385<br>                                                                                                                                                               |[0x8000043c]:SMALDA a2, fp, sp<br> [0x80000440]:sw a2, 72(ra)<br>    |
|  32|[0x80002308]<br>0xFBFF3FFF|- rs1 : x24<br> - rs2 : x5<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                           |[0x80000458]:SMALDA t5, s8, t0<br> [0x8000045c]:sw t5, 80(ra)<br>    |
|  33|[0x80002310]<br>0xFBFF3FFF|- rs2_h1_val == 4<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                 |[0x8000047c]:SMALDA t5, t6, t4<br> [0x80000480]:sw t5, 0(ra)<br>     |
|  34|[0x80002318]<br>0xFBFF3FFF|- rs1_h1_val == -1<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                 |[0x80000494]:SMALDA t5, t6, t4<br> [0x80000498]:sw t5, 8(ra)<br>     |
|  35|[0x80002320]<br>0xFBFF3FFF|- rs2_h0_val == -16385<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                              |[0x800004b0]:SMALDA t5, t6, t4<br> [0x800004b4]:sw t5, 16(ra)<br>    |
|  36|[0x80002328]<br>0xFBFF3FFF|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                         |[0x800004cc]:SMALDA t5, t6, t4<br> [0x800004d0]:sw t5, 24(ra)<br>    |
|  37|[0x80002330]<br>0xFBFF3FFF|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                         |[0x800004e8]:SMALDA t5, t6, t4<br> [0x800004ec]:sw t5, 32(ra)<br>    |
|  38|[0x80002338]<br>0xFBFF3FFF|- rs2_h0_val == -129<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                       |[0x80000504]:SMALDA t5, t6, t4<br> [0x80000508]:sw t5, 40(ra)<br>    |
|  39|[0x80002340]<br>0xFBFF3FFF|- rs2_h0_val == -33<br> - rs1_h1_val == 8<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                            |[0x80000520]:SMALDA t5, t6, t4<br> [0x80000524]:sw t5, 48(ra)<br>    |
|  40|[0x80002348]<br>0xFBFF3FFF|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                          |[0x8000053c]:SMALDA t5, t6, t4<br> [0x80000540]:sw t5, 56(ra)<br>    |
|  41|[0x80002350]<br>0xFBFF3FFF|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                        |[0x80000558]:SMALDA t5, t6, t4<br> [0x8000055c]:sw t5, 64(ra)<br>    |
|  42|[0x80002358]<br>0xFBFF3FFF|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                        |[0x80000574]:SMALDA t5, t6, t4<br> [0x80000578]:sw t5, 72(ra)<br>    |
|  43|[0x80002360]<br>0xFBFF3FFF|- rs1_h1_val == 256<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                 |[0x80000590]:SMALDA t5, t6, t4<br> [0x80000594]:sw t5, 80(ra)<br>    |
|  44|[0x80002368]<br>0xFBFF3FFF|- rs2_h0_val == 2048<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                 |[0x800005ac]:SMALDA t5, t6, t4<br> [0x800005b0]:sw t5, 88(ra)<br>    |
|  45|[0x80002370]<br>0xFBFF3FFF|- rs2_h1_val == 16384<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                                                                             |[0x800005c4]:SMALDA t5, t6, t4<br> [0x800005c8]:sw t5, 96(ra)<br>    |
|  46|[0x80002378]<br>0xFBFF3FFF|- rs1_h1_val == -129<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                  |[0x800005e0]:SMALDA t5, t6, t4<br> [0x800005e4]:sw t5, 104(ra)<br>   |
|  47|[0x80002380]<br>0xFBFF3FFF|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                           |[0x800005fc]:SMALDA t5, t6, t4<br> [0x80000600]:sw t5, 112(ra)<br>   |
|  48|[0x80002388]<br>0xFBFF3FFF|- rs2_h1_val == 16<br> - rs2_h0_val == -513<br>                                                                                                                                                                                                                                                 |[0x80000614]:SMALDA t5, t6, t4<br> [0x80000618]:sw t5, 120(ra)<br>   |
|  49|[0x80002390]<br>0xFBFF3FFF|- rs2_h1_val == 8<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                   |[0x80000630]:SMALDA t5, t6, t4<br> [0x80000634]:sw t5, 128(ra)<br>   |
|  50|[0x80002398]<br>0xFBFF3FFF|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                          |[0x8000064c]:SMALDA t5, t6, t4<br> [0x80000650]:sw t5, 136(ra)<br>   |
|  51|[0x800023a0]<br>0xFBFF3FFF|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                       |[0x80000664]:SMALDA t5, t6, t4<br> [0x80000668]:sw t5, 144(ra)<br>   |
|  52|[0x800023a8]<br>0xFBFF3FFF|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                          |[0x8000067c]:SMALDA t5, t6, t4<br> [0x80000680]:sw t5, 152(ra)<br>   |
|  53|[0x800023b0]<br>0xFBFF3FFF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                           |[0x80000694]:SMALDA t5, t6, t4<br> [0x80000698]:sw t5, 160(ra)<br>   |
|  54|[0x800023c0]<br>0xFBFF3FFF|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                       |[0x800006c8]:SMALDA t5, t6, t4<br> [0x800006cc]:sw t5, 176(ra)<br>   |
|  55|[0x800023c8]<br>0xFBFF3FFF|- rs2_h1_val == -1<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                      |[0x800006e0]:SMALDA t5, t6, t4<br> [0x800006e4]:sw t5, 184(ra)<br>   |
|  56|[0x800023d0]<br>0xFBFF3FFF|- rs1_h1_val == -257<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                              |[0x800006fc]:SMALDA t5, t6, t4<br> [0x80000700]:sw t5, 192(ra)<br>   |
|  57|[0x800023d8]<br>0xFBFF3FFF|- rs2_h1_val == 2<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                   |[0x80000718]:SMALDA t5, t6, t4<br> [0x8000071c]:sw t5, 200(ra)<br>   |
|  58|[0x800023e0]<br>0xFBFF3FFF|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                         |[0x80000730]:SMALDA t5, t6, t4<br> [0x80000734]:sw t5, 208(ra)<br>   |
|  59|[0x800023e8]<br>0xFBFF3FFF|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                         |[0x80000744]:SMALDA t5, t6, t4<br> [0x80000748]:sw t5, 216(ra)<br>   |
|  60|[0x800023f0]<br>0xFBFF3FFF|- rs2_h0_val == 21845<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                |[0x80000760]:SMALDA t5, t6, t4<br> [0x80000764]:sw t5, 224(ra)<br>   |
|  61|[0x800023f8]<br>0xFBFF3FFF|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                      |[0x80000778]:SMALDA t5, t6, t4<br> [0x8000077c]:sw t5, 232(ra)<br>   |
|  62|[0x80002400]<br>0xFBFF3FFF|- rs1_h1_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                             |[0x80000794]:SMALDA t5, t6, t4<br> [0x80000798]:sw t5, 240(ra)<br>   |
|  63|[0x80002408]<br>0xFBFF3FFF|- rs2_h1_val == 1<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                  |[0x800007ac]:SMALDA t5, t6, t4<br> [0x800007b0]:sw t5, 248(ra)<br>   |
|  64|[0x80002410]<br>0xFBFF3FFF|- rs2_h0_val == -4097<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                |[0x800007c8]:SMALDA t5, t6, t4<br> [0x800007cc]:sw t5, 256(ra)<br>   |
|  65|[0x80002418]<br>0xFBFF3FFF|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                       |[0x800007e4]:SMALDA t5, t6, t4<br> [0x800007e8]:sw t5, 264(ra)<br>   |
|  66|[0x80002420]<br>0xFBFF3FFF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                           |[0x800007fc]:SMALDA t5, t6, t4<br> [0x80000800]:sw t5, 272(ra)<br>   |
|  67|[0x80002428]<br>0xFBFF3FFF|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                       |[0x80000818]:SMALDA t5, t6, t4<br> [0x8000081c]:sw t5, 280(ra)<br>   |
|  68|[0x80002430]<br>0xFBFF3FFF|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                         |[0x80000834]:SMALDA t5, t6, t4<br> [0x80000838]:sw t5, 288(ra)<br>   |
|  69|[0x80002438]<br>0xFBFF3FFF|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                       |[0x80000850]:SMALDA t5, t6, t4<br> [0x80000854]:sw t5, 296(ra)<br>   |
