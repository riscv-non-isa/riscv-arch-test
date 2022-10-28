
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002460', '148 words')]      |
| COV_LABELS                | smslda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smslda-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 148      |
| STAT1                     | 72      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 74     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008bc]:SMSLDA t5, t6, t4
      [0x800008c0]:sw t5, 392(ra)
 -- Signature Address: 0x80002450 Data: 0x1000FFF8
 -- Redundant Coverpoints hit by the op
      - opcode : smslda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 4
      - rs2_h0_val == 21845
      - rs1_h1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d4]:SMSLDA t5, t6, t4
      [0x800008d8]:sw t5, 400(ra)
 -- Signature Address: 0x80002458 Data: 0x1000FFF8
 -- Redundant Coverpoints hit by the op
      - opcode : smslda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 21845
      - rs2_h0_val == -32768
      - rs1_h1_val == -9
      - rs1_h0_val == -21846






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smslda', 'rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 2', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000010c]:SMSLDA a2, a2, a2
	-[0x80000110]:sw a2, 0(tp)
Current Store : [0x80000114] : sw a3, 4(tp) -- Store: [0x80002214]:0xEADFEEDB




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x2', 'rs1 == rs2 != rd', 'rs2_h1_val == 4', 'rs2_h0_val == 21845', 'rs1_h1_val == 4', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000128]:SMSLDA sp, a4, a4
	-[0x8000012c]:sw sp, 8(tp)
Current Store : [0x80000130] : sw gp, 12(tp) -- Store: [0x8000221c]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x2', 'rs2 : x10', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 256', 'rs2_h0_val == 128', 'rs1_h1_val == -8193', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000144]:SMSLDA s8, sp, a0
	-[0x80000148]:sw s8, 16(tp)
Current Store : [0x8000014c] : sw s9, 20(tp) -- Store: [0x80002224]:0xEDBEADFE




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -65', 'rs1_h1_val == -129', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000160]:SMSLDA s4, ra, s4
	-[0x80000164]:sw s4, 24(tp)
Current Store : [0x80000168] : sw s5, 28(tp) -- Store: [0x8000222c]:0xDBEADFEE




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x10', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -129']
Last Code Sequence : 
	-[0x8000017c]:SMSLDA a0, a0, ra
	-[0x80000180]:sw a0, 32(tp)
Current Store : [0x80000184] : sw a1, 36(tp) -- Store: [0x80002234]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x30', 'rs2_h1_val == -2', 'rs2_h0_val == 1', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000198]:SMSLDA t5, s7, s9
	-[0x8000019c]:sw t5, 40(tp)
Current Store : [0x800001a0] : sw t6, 44(tp) -- Store: [0x8000223c]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x6', 'rs2 : x8', 'rd : x18', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 2048', 'rs1_h1_val == 32767', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001b4]:SMSLDA s2, t1, fp
	-[0x800001b8]:sw s2, 48(tp)
Current Store : [0x800001bc] : sw s3, 52(tp) -- Store: [0x80002244]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x6', 'rs2_h1_val == -21846', 'rs2_h0_val == 4', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800001d0]:SMSLDA t1, s2, s5
	-[0x800001d4]:sw t1, 56(tp)
Current Store : [0x800001d8] : sw t2, 60(tp) -- Store: [0x8000224c]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x16', 'rs2_h1_val == 21845', 'rs2_h0_val == -32768', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800001e8]:SMSLDA a6, zero, s2
	-[0x800001ec]:sw a6, 64(tp)
Current Store : [0x800001f0] : sw a7, 68(tp) -- Store: [0x80002254]:0xBEADFEED




Last Coverpoint : ['rs1 : x7', 'rs2 : x15', 'rd : x26', 'rs2_h1_val == 32767', 'rs1_h1_val == 512', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000204]:SMSLDA s10, t2, a5
	-[0x80000208]:sw s10, 72(tp)
Current Store : [0x8000020c] : sw s11, 76(tp) -- Store: [0x8000225c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x22', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x8000021c]:SMSLDA s6, fp, t6
	-[0x80000220]:sw s6, 80(tp)
Current Store : [0x80000224] : sw s7, 84(tp) -- Store: [0x80002264]:0x00060001




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x28', 'rs2_h1_val == -8193', 'rs2_h0_val == 1024', 'rs1_h1_val == 1024', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000240]:SMSLDA t3, s6, a1
	-[0x80000244]:sw t3, 0(ra)
Current Store : [0x80000248] : sw t4, 4(ra) -- Store: [0x8000226c]:0xEEDBEADF




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x14', 'rs2_h1_val == -4097', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000025c]:SMSLDA a4, a6, gp
	-[0x80000260]:sw a4, 8(ra)
Current Store : [0x80000264] : sw a5, 12(ra) -- Store: [0x80002274]:0x7FFF5555




Last Coverpoint : ['rs1 : x11', 'rs2 : x13', 'rd : x8', 'rs2_h1_val == -2049', 'rs1_h1_val == -17', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000278]:SMSLDA fp, a1, a3
	-[0x8000027c]:sw fp, 16(ra)
Current Store : [0x80000280] : sw s1, 20(ra) -- Store: [0x8000227c]:0xADFEEDBE




Last Coverpoint : ['rs1 : x31', 'rs2 : x9', 'rd : x4', 'rs2_h1_val == -1025', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000294]:SMSLDA tp, t6, s1
	-[0x80000298]:sw tp, 24(ra)
Current Store : [0x8000029c] : sw t0, 28(ra) -- Store: [0x80002284]:0x800000F8




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rs2_h1_val == -513', 'rs2_h0_val == -1', 'rs1_h1_val == -2049', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800002b0]:SMSLDA s2, t3, s10
	-[0x800002b4]:sw s2, 32(ra)
Current Store : [0x800002b8] : sw s3, 36(ra) -- Store: [0x8000228c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rs2_h1_val == -257', 'rs1_h1_val == -1025', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800002cc]:SMSLDA a2, s10, s3
	-[0x800002d0]:sw a2, 40(ra)
Current Store : [0x800002d4] : sw a3, 44(ra) -- Store: [0x80002294]:0xF7FFFFF6




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rs2_h1_val == -65', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800002e8]:SMSLDA sp, s1, t1
	-[0x800002ec]:sw sp, 48(ra)
Current Store : [0x800002f0] : sw gp, 52(ra) -- Store: [0x8000229c]:0xEFFF0080




Last Coverpoint : ['rs1 : x21', 'rs2 : x22', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80000304]:SMSLDA a0, s5, s6
	-[0x80000308]:sw a0, 56(ra)
Current Store : [0x8000030c] : sw a1, 60(ra) -- Store: [0x800022a4]:0xFFEFFEFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x28', 'rs2_h1_val == -17', 'rs2_h0_val == 2048', 'rs1_h1_val == 128', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000320]:SMSLDA fp, s9, t3
	-[0x80000324]:sw fp, 64(ra)
Current Store : [0x80000328] : sw s1, 68(ra) -- Store: [0x800022ac]:0xBFFFBFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rs2_h1_val == -9', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000033c]:SMSLDA s2, t5, a7
	-[0x80000340]:sw s2, 72(ra)
Current Store : [0x80000344] : sw s3, 76(ra) -- Store: [0x800022b4]:0xFEFFFFF9




Last Coverpoint : ['rs1 : x4', 'rs2 : x2', 'rs2_h1_val == -5', 'rs2_h0_val == -9', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000358]:SMSLDA a4, tp, sp
	-[0x8000035c]:sw a4, 80(ra)
Current Store : [0x80000360] : sw a5, 84(ra) -- Store: [0x800022bc]:0x7FFF5555




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rs2_h1_val == -3', 'rs2_h0_val == 512', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000374]:SMSLDA s10, a5, s11
	-[0x80000378]:sw s10, 88(ra)
Current Store : [0x8000037c] : sw s11, 92(ra) -- Store: [0x800022c4]:0xFFFD0200




Last Coverpoint : ['rs1 : x27', 'rs2 : x29', 'rs2_h1_val == -32768', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000398]:SMSLDA s10, s11, t4
	-[0x8000039c]:sw s10, 0(ra)
Current Store : [0x800003a0] : sw s11, 4(ra) -- Store: [0x800022cc]:0xFFF7BFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x16', 'rs2_h1_val == 16384', 'rs2_h0_val == -1025', 'rs1_h1_val == 16', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800003b4]:SMSLDA s4, a7, a6
	-[0x800003b8]:sw s4, 8(ra)
Current Store : [0x800003bc] : sw s5, 12(ra) -- Store: [0x800022d4]:0x0000FFF8




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800003d0]:SMSLDA s8, s4, zero
	-[0x800003d4]:sw s8, 16(ra)
Current Store : [0x800003d8] : sw s9, 20(ra) -- Store: [0x800022dc]:0x00800004




Last Coverpoint : ['rs1 : x5', 'rs2 : x30', 'rs2_h1_val == 4096', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800003ec]:SMSLDA s4, t0, t5
	-[0x800003f0]:sw s4, 24(ra)
Current Store : [0x800003f4] : sw s5, 28(ra) -- Store: [0x800022e4]:0x0000FFF8




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rs2_h1_val == 1024', 'rs2_h0_val == 256', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000408]:SMSLDA s4, s3, s7
	-[0x8000040c]:sw s4, 32(ra)
Current Store : [0x80000410] : sw s5, 36(ra) -- Store: [0x800022ec]:0x0000FFF8




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rs2_h1_val == 512', 'rs2_h0_val == 16384', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000420]:SMSLDA sp, gp, s8
	-[0x80000424]:sw sp, 40(ra)
Current Store : [0x80000428] : sw gp, 44(ra) -- Store: [0x800022f4]:0x0009FFFD




Last Coverpoint : ['rs1 : x29', 'rs2 : x7', 'rs2_h1_val == 128', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000043c]:SMSLDA t1, t4, t2
	-[0x80000440]:sw t1, 48(ra)
Current Store : [0x80000444] : sw t2, 52(ra) -- Store: [0x800022fc]:0x0080DFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x4', 'rs2_h1_val == 8192', 'rs2_h0_val == -2', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000458]:SMSLDA t1, s8, tp
	-[0x8000045c]:sw t1, 56(ra)
Current Store : [0x80000460] : sw t2, 60(ra) -- Store: [0x80002304]:0x0080DFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rs2_h0_val == 16', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000474]:SMSLDA t3, a3, t0
	-[0x80000478]:sw t3, 64(ra)
Current Store : [0x8000047c] : sw t4, 68(ra) -- Store: [0x8000230c]:0x0080DFFF




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000490]:SMSLDA t5, t6, t4
	-[0x80000494]:sw t5, 72(ra)
Current Store : [0x80000498] : sw t6, 76(ra) -- Store: [0x80002314]:0x0006FFEF




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800004ac]:SMSLDA t5, t6, t4
	-[0x800004b0]:sw t5, 80(ra)
Current Store : [0x800004b4] : sw t6, 84(ra) -- Store: [0x8000231c]:0x0009FFF7




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800004c8]:SMSLDA t5, t6, t4
	-[0x800004cc]:sw t5, 88(ra)
Current Store : [0x800004d0] : sw t6, 92(ra) -- Store: [0x80002324]:0xFFF9FFFE




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800004e0]:SMSLDA t5, t6, t4
	-[0x800004e4]:sw t5, 96(ra)
Current Store : [0x800004e8] : sw t6, 100(ra) -- Store: [0x8000232c]:0xFFF64000




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004f8]:SMSLDA t5, t6, t4
	-[0x800004fc]:sw t5, 104(ra)
Current Store : [0x80000500] : sw t6, 108(ra) -- Store: [0x80002334]:0xFFF72000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -65', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000510]:SMSLDA t5, t6, t4
	-[0x80000514]:sw t5, 112(ra)
Current Store : [0x80000518] : sw t6, 116(ra) -- Store: [0x8000233c]:0xFFBF1000




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000528]:SMSLDA t5, t6, t4
	-[0x8000052c]:sw t5, 120(ra)
Current Store : [0x80000530] : sw t6, 124(ra) -- Store: [0x80002344]:0x02000200




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == -3', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000544]:SMSLDA t5, t6, t4
	-[0x80000548]:sw t5, 128(ra)
Current Store : [0x8000054c] : sw t6, 132(ra) -- Store: [0x8000234c]:0xFFFD0100




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000560]:SMSLDA t5, t6, t4
	-[0x80000564]:sw t5, 136(ra)
Current Store : [0x80000568] : sw t6, 140(ra) -- Store: [0x80002354]:0xFFF60010




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x8000057c]:SMSLDA t5, t6, t4
	-[0x80000580]:sw t5, 144(ra)
Current Store : [0x80000584] : sw t6, 148(ra) -- Store: [0x8000235c]:0x40000002




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000598]:SMSLDA t5, t6, t4
	-[0x8000059c]:sw t5, 152(ra)
Current Store : [0x800005a0] : sw t6, 156(ra) -- Store: [0x80002364]:0xF7FFFFFF




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x800005b4]:SMSLDA t5, t6, t4
	-[0x800005b8]:sw t5, 160(ra)
Current Store : [0x800005bc] : sw t6, 164(ra) -- Store: [0x8000236c]:0x00040010




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800005cc]:SMSLDA t5, t6, t4
	-[0x800005d0]:sw t5, 168(ra)
Current Store : [0x800005d4] : sw t6, 172(ra) -- Store: [0x80002374]:0x7FFFC000




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800005e8]:SMSLDA t5, t6, t4
	-[0x800005ec]:sw t5, 176(ra)
Current Store : [0x800005f0] : sw t6, 180(ra) -- Store: [0x8000237c]:0xFFF90200




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -2049', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000604]:SMSLDA t5, t6, t4
	-[0x80000608]:sw t5, 184(ra)
Current Store : [0x8000060c] : sw t6, 188(ra) -- Store: [0x80002384]:0xFFFD7FFF




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000061c]:SMSLDA t5, t6, t4
	-[0x80000620]:sw t5, 192(ra)
Current Store : [0x80000624] : sw t6, 196(ra) -- Store: [0x8000238c]:0xFFF7AAAA




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000634]:SMSLDA t5, t6, t4
	-[0x80000638]:sw t5, 200(ra)
Current Store : [0x8000063c] : sw t6, 204(ra) -- Store: [0x80002394]:0xFFDFFFF8




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000650]:SMSLDA t5, t6, t4
	-[0x80000654]:sw t5, 208(ra)
Current Store : [0x80000658] : sw t6, 212(ra) -- Store: [0x8000239c]:0xFFF6FFF8




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000066c]:SMSLDA t5, t6, t4
	-[0x80000670]:sw t5, 216(ra)
Current Store : [0x80000674] : sw t6, 220(ra) -- Store: [0x800023a4]:0xFFDF0400




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000684]:SMSLDA t5, t6, t4
	-[0x80000688]:sw t5, 224(ra)
Current Store : [0x8000068c] : sw t6, 228(ra) -- Store: [0x800023ac]:0xFDFF0800




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800006a0]:SMSLDA t5, t6, t4
	-[0x800006a4]:sw t5, 232(ra)
Current Store : [0x800006a8] : sw t6, 236(ra) -- Store: [0x800023b4]:0xAAAA0010




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800006bc]:SMSLDA t5, t6, t4
	-[0x800006c0]:sw t5, 240(ra)
Current Store : [0x800006c4] : sw t6, 244(ra) -- Store: [0x800023bc]:0x55550100




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800006d8]:SMSLDA t5, t6, t4
	-[0x800006dc]:sw t5, 248(ra)
Current Store : [0x800006e0] : sw t6, 252(ra) -- Store: [0x800023c4]:0xEFFF0005




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006f4]:SMSLDA t5, t6, t4
	-[0x800006f8]:sw t5, 256(ra)
Current Store : [0x800006fc] : sw t6, 260(ra) -- Store: [0x800023cc]:0xFEFF0007




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000070c]:SMSLDA t5, t6, t4
	-[0x80000710]:sw t5, 264(ra)
Current Store : [0x80000714] : sw t6, 268(ra) -- Store: [0x800023d4]:0xFFFB0003




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000728]:SMSLDA t5, t6, t4
	-[0x8000072c]:sw t5, 272(ra)
Current Store : [0x80000730] : sw t6, 276(ra) -- Store: [0x800023dc]:0xFFFEFFFA




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000744]:SMSLDA t5, t6, t4
	-[0x80000748]:sw t5, 280(ra)
Current Store : [0x8000074c] : sw t6, 284(ra) -- Store: [0x800023e4]:0x80000002




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000760]:SMSLDA t5, t6, t4
	-[0x80000764]:sw t5, 288(ra)
Current Store : [0x80000768] : sw t6, 292(ra) -- Store: [0x800023ec]:0x20000005




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x8000077c]:SMSLDA t5, t6, t4
	-[0x80000780]:sw t5, 296(ra)
Current Store : [0x80000784] : sw t6, 300(ra) -- Store: [0x800023f4]:0x08000006




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000794]:SMSLDA t5, t6, t4
	-[0x80000798]:sw t5, 304(ra)
Current Store : [0x8000079c] : sw t6, 308(ra) -- Store: [0x800023fc]:0x01000000




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800007b0]:SMSLDA t5, t6, t4
	-[0x800007b4]:sw t5, 312(ra)
Current Store : [0x800007b8] : sw t6, 316(ra) -- Store: [0x80002404]:0x00400003




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800007c8]:SMSLDA t5, t6, t4
	-[0x800007cc]:sw t5, 320(ra)
Current Store : [0x800007d0] : sw t6, 324(ra) -- Store: [0x8000240c]:0xFFFCFF7F




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800007e0]:SMSLDA t5, t6, t4
	-[0x800007e4]:sw t5, 328(ra)
Current Store : [0x800007e8] : sw t6, 332(ra) -- Store: [0x80002414]:0x0020FFFA




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800007fc]:SMSLDA t5, t6, t4
	-[0x80000800]:sw t5, 336(ra)
Current Store : [0x80000804] : sw t6, 340(ra) -- Store: [0x8000241c]:0xFFDF0800




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000818]:SMSLDA t5, t6, t4
	-[0x8000081c]:sw t5, 344(ra)
Current Store : [0x80000820] : sw t6, 348(ra) -- Store: [0x80002424]:0x00025555




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000834]:SMSLDA t5, t6, t4
	-[0x80000838]:sw t5, 352(ra)
Current Store : [0x8000083c] : sw t6, 356(ra) -- Store: [0x8000242c]:0xFFFF0010




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000850]:SMSLDA t5, t6, t4
	-[0x80000854]:sw t5, 360(ra)
Current Store : [0x80000858] : sw t6, 364(ra) -- Store: [0x80002434]:0xFFFBAAAA




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000086c]:SMSLDA t5, t6, t4
	-[0x80000870]:sw t5, 368(ra)
Current Store : [0x80000874] : sw t6, 372(ra) -- Store: [0x8000243c]:0x02000200




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000888]:SMSLDA t5, t6, t4
	-[0x8000088c]:sw t5, 376(ra)
Current Store : [0x80000890] : sw t6, 380(ra) -- Store: [0x80002444]:0x0001F7FF




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800008a0]:SMSLDA t5, t6, t4
	-[0x800008a4]:sw t5, 384(ra)
Current Store : [0x800008a8] : sw t6, 388(ra) -- Store: [0x8000244c]:0x00088000




Last Coverpoint : ['opcode : smslda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 4', 'rs2_h0_val == 21845', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800008bc]:SMSLDA t5, t6, t4
	-[0x800008c0]:sw t5, 392(ra)
Current Store : [0x800008c4] : sw t6, 396(ra) -- Store: [0x80002454]:0x0004FFFC




Last Coverpoint : ['opcode : smslda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 21845', 'rs2_h0_val == -32768', 'rs1_h1_val == -9', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800008d4]:SMSLDA t5, t6, t4
	-[0x800008d8]:sw t5, 400(ra)
Current Store : [0x800008dc] : sw t6, 404(ra) -- Store: [0x8000245c]:0xFFF7AAA9





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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                 |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00070002|- opcode : smslda<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 2<br> - rs1_h0_val == 2<br>                                                        |[0x8000010c]:SMSLDA a2, a2, a2<br> [0x80000110]:sw a2, 0(tp)<br>     |
|   2|[0x80002218]<br>0xFF76DF56|- rs1 : x14<br> - rs2 : x14<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 4<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 4<br> - rs1_h0_val == 21845<br>                                                                                                                                                                         |[0x80000128]:SMSLDA sp, a4, a4<br> [0x8000012c]:sw sp, 8(tp)<br>     |
|   3|[0x80002220]<br>0xDB7D5BFD|- rs1 : x2<br> - rs2 : x10<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 256<br> - rs2_h0_val == 128<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -129<br> |[0x80000144]:SMSLDA s8, sp, a0<br> [0x80000148]:sw s8, 16(tp)<br>    |
|   4|[0x80002228]<br>0xFFFCFFBF|- rs1 : x1<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -65<br> - rs1_h1_val == -129<br> - rs1_h0_val == -2049<br>                                                                                                              |[0x80000160]:SMSLDA s4, ra, s4<br> [0x80000164]:sw s4, 24(tp)<br>    |
|   5|[0x80002230]<br>0x00060009|- rs1 : x10<br> - rs2 : x1<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -129<br>                                                                                                                                                                                                        |[0x8000017c]:SMSLDA a0, a0, ra<br> [0x80000180]:sw a0, 32(tp)<br>    |
|   6|[0x80002238]<br>0xF76DF56F|- rs1 : x23<br> - rs2 : x25<br> - rd : x30<br> - rs2_h1_val == -2<br> - rs2_h0_val == 1<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                            |[0x80000198]:SMSLDA t5, s7, s9<br> [0x8000019c]:sw t5, 40(tp)<br>    |
|   7|[0x80002240]<br>0xDF56FF76|- rs1 : x6<br> - rs2 : x8<br> - rd : x18<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 128<br>                                                                                                                                                                              |[0x800001b4]:SMSLDA s2, t1, fp<br> [0x800001b8]:sw s2, 48(tp)<br>    |
|   8|[0x80002248]<br>0x7FFF0080|- rs1 : x18<br> - rs2 : x21<br> - rd : x6<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                      |[0x800001d0]:SMSLDA t1, s2, s5<br> [0x800001d4]:sw t1, 56(tp)<br>    |
|   9|[0x80002250]<br>0x7D5BFDDB|- rs1 : x0<br> - rs2 : x18<br> - rd : x16<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                               |[0x800001e8]:SMSLDA a6, zero, s2<br> [0x800001ec]:sw a6, 64(tp)<br>  |
|  10|[0x80002258]<br>0x76DF56FF|- rs1 : x7<br> - rs2 : x15<br> - rd : x26<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 512<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                    |[0x80000204]:SMSLDA s10, t2, a5<br> [0x80000208]:sw s10, 72(tp)<br>  |
|  11|[0x80002260]<br>0x6DF56FF7|- rs1 : x8<br> - rs2 : x31<br> - rd : x22<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                     |[0x8000021c]:SMSLDA s6, fp, t6<br> [0x80000220]:sw s6, 80(tp)<br>    |
|  12|[0x80002268]<br>0xDDB7D5BF|- rs1 : x22<br> - rs2 : x11<br> - rd : x28<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 32<br>                                                                                                                                                                                            |[0x80000240]:SMSLDA t3, s6, a1<br> [0x80000244]:sw t3, 0(ra)<br>     |
|  13|[0x80002270]<br>0x00045555|- rs1 : x16<br> - rs2 : x3<br> - rd : x14<br> - rs2_h1_val == -4097<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                           |[0x8000025c]:SMSLDA a4, a6, gp<br> [0x80000260]:sw a4, 8(ra)<br>     |
|  14|[0x80002278]<br>0xC0000000|- rs1 : x11<br> - rs2 : x13<br> - rd : x8<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                     |[0x80000278]:SMSLDA fp, a1, a3<br> [0x8000027c]:sw fp, 16(ra)<br>    |
|  15|[0x80002280]<br>0x80002210|- rs1 : x31<br> - rs2 : x9<br> - rd : x4<br> - rs2_h1_val == -1025<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                              |[0x80000294]:SMSLDA tp, t6, s1<br> [0x80000298]:sw tp, 24(ra)<br>    |
|  16|[0x80002288]<br>0x55558000|- rs1 : x28<br> - rs2 : x26<br> - rs2_h1_val == -513<br> - rs2_h0_val == -1<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                             |[0x800002b0]:SMSLDA s2, t3, s10<br> [0x800002b4]:sw s2, 32(ra)<br>   |
|  17|[0x80002290]<br>0x00070002|- rs1 : x26<br> - rs2 : x19<br> - rs2_h1_val == -257<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                    |[0x800002cc]:SMSLDA a2, s10, s3<br> [0x800002d0]:sw a2, 40(ra)<br>   |
|  18|[0x80002298]<br>0xDFFFFF7F|- rs1 : x9<br> - rs2 : x6<br> - rs2_h1_val == -65<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                             |[0x800002e8]:SMSLDA sp, s1, t1<br> [0x800002ec]:sw sp, 48(ra)<br>    |
|  19|[0x800022a0]<br>0x00060009|- rs1 : x21<br> - rs2 : x22<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                      |[0x80000304]:SMSLDA a0, s5, s6<br> [0x80000308]:sw a0, 56(ra)<br>    |
|  20|[0x800022a8]<br>0xC0000000|- rs1 : x25<br> - rs2 : x28<br> - rs2_h1_val == -17<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 128<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                               |[0x80000320]:SMSLDA fp, s9, t3<br> [0x80000324]:sw fp, 64(ra)<br>    |
|  21|[0x800022b0]<br>0x55558000|- rs1 : x30<br> - rs2 : x17<br> - rs2_h1_val == -9<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                               |[0x8000033c]:SMSLDA s2, t5, a7<br> [0x80000340]:sw s2, 72(ra)<br>    |
|  22|[0x800022b8]<br>0x00045555|- rs1 : x4<br> - rs2 : x2<br> - rs2_h1_val == -5<br> - rs2_h0_val == -9<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                         |[0x80000358]:SMSLDA a4, tp, sp<br> [0x8000035c]:sw a4, 80(ra)<br>    |
|  23|[0x800022c0]<br>0xFBFFFFFB|- rs1 : x15<br> - rs2 : x27<br> - rs2_h1_val == -3<br> - rs2_h0_val == 512<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                         |[0x80000374]:SMSLDA s10, a5, s11<br> [0x80000378]:sw s10, 88(ra)<br> |
|  24|[0x800022c8]<br>0xFBFFFFFB|- rs1 : x27<br> - rs2 : x29<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                            |[0x80000398]:SMSLDA s10, s11, t4<br> [0x8000039c]:sw s10, 0(ra)<br>  |
|  25|[0x800022d0]<br>0xFFFCFFBF|- rs1 : x17<br> - rs2 : x16<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 16<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                         |[0x800003b4]:SMSLDA s4, a7, a6<br> [0x800003b8]:sw s4, 8(ra)<br>     |
|  26|[0x800022d8]<br>0xDB7D5BFD|- rs1 : x20<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                          |[0x800003d0]:SMSLDA s8, s4, zero<br> [0x800003d4]:sw s8, 16(ra)<br>  |
|  27|[0x800022e0]<br>0x08003FFF|- rs1 : x5<br> - rs2 : x30<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                |[0x800003ec]:SMSLDA s4, t0, t5<br> [0x800003f0]:sw s4, 24(ra)<br>    |
|  28|[0x800022e8]<br>0x08003FFF|- rs1 : x19<br> - rs2 : x23<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 256<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                   |[0x80000408]:SMSLDA s4, s3, s7<br> [0x8000040c]:sw s4, 32(ra)<br>    |
|  29|[0x800022f0]<br>0xFFFBFFF7|- rs1 : x3<br> - rs2 : x24<br> - rs2_h1_val == 512<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                      |[0x80000420]:SMSLDA sp, gp, s8<br> [0x80000424]:sw sp, 40(ra)<br>    |
|  30|[0x800022f8]<br>0xFFBFFFFF|- rs1 : x29<br> - rs2 : x7<br> - rs2_h1_val == 128<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                             |[0x8000043c]:SMSLDA t1, t4, t2<br> [0x80000440]:sw t1, 48(ra)<br>    |
|  31|[0x80002300]<br>0xFFBFFFFF|- rs1 : x24<br> - rs2 : x4<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -2<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                      |[0x80000458]:SMSLDA t1, s8, tp<br> [0x8000045c]:sw t1, 56(ra)<br>    |
|  32|[0x80002308]<br>0xFFEF0800|- rs1 : x13<br> - rs2 : x5<br> - rs2_h0_val == 16<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                |[0x80000474]:SMSLDA t3, a3, t0<br> [0x80000478]:sw t3, 64(ra)<br>    |
|  33|[0x80002310]<br>0x1000FFF8|- rs2_h0_val == -16385<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                           |[0x80000490]:SMSLDA t5, t6, t4<br> [0x80000494]:sw t5, 72(ra)<br>    |
|  34|[0x80002318]<br>0x1000FFF8|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x800004ac]:SMSLDA t5, t6, t4<br> [0x800004b0]:sw t5, 80(ra)<br>    |
|  35|[0x80002320]<br>0x1000FFF8|- rs2_h0_val == -21846<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                            |[0x800004c8]:SMSLDA t5, t6, t4<br> [0x800004cc]:sw t5, 88(ra)<br>    |
|  36|[0x80002328]<br>0x1000FFF8|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x800004e0]:SMSLDA t5, t6, t4<br> [0x800004e4]:sw t5, 96(ra)<br>    |
|  37|[0x80002330]<br>0x1000FFF8|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x800004f8]:SMSLDA t5, t6, t4<br> [0x800004fc]:sw t5, 104(ra)<br>   |
|  38|[0x80002338]<br>0x1000FFF8|- rs2_h0_val == 8<br> - rs1_h1_val == -65<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                       |[0x80000510]:SMSLDA t5, t6, t4<br> [0x80000514]:sw t5, 112(ra)<br>   |
|  39|[0x80002340]<br>0x1000FFF8|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x80000528]:SMSLDA t5, t6, t4<br> [0x8000052c]:sw t5, 120(ra)<br>   |
|  40|[0x80002348]<br>0x1000FFF8|- rs2_h0_val == -33<br> - rs1_h1_val == -3<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                       |[0x80000544]:SMSLDA t5, t6, t4<br> [0x80000548]:sw t5, 128(ra)<br>   |
|  41|[0x80002350]<br>0x1000FFF8|- rs2_h0_val == -129<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                              |[0x80000560]:SMSLDA t5, t6, t4<br> [0x80000564]:sw t5, 136(ra)<br>   |
|  42|[0x80002358]<br>0x1000FFF8|- rs2_h0_val == -513<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                           |[0x8000057c]:SMSLDA t5, t6, t4<br> [0x80000580]:sw t5, 144(ra)<br>   |
|  43|[0x80002360]<br>0x1000FFF8|- rs2_h0_val == -3<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                |[0x80000598]:SMSLDA t5, t6, t4<br> [0x8000059c]:sw t5, 152(ra)<br>   |
|  44|[0x80002368]<br>0x1000FFF8|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x800005b4]:SMSLDA t5, t6, t4<br> [0x800005b8]:sw t5, 160(ra)<br>   |
|  45|[0x80002370]<br>0x1000FFF8|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x800005cc]:SMSLDA t5, t6, t4<br> [0x800005d0]:sw t5, 168(ra)<br>   |
|  46|[0x80002378]<br>0x1000FFF8|- rs2_h1_val == 16<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                |[0x800005e8]:SMSLDA t5, t6, t4<br> [0x800005ec]:sw t5, 176(ra)<br>   |
|  47|[0x80002380]<br>0x1000FFF8|- rs2_h1_val == 8<br> - rs2_h0_val == -2049<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                    |[0x80000604]:SMSLDA t5, t6, t4<br> [0x80000608]:sw t5, 184(ra)<br>   |
|  48|[0x80002388]<br>0x1000FFF8|- rs2_h0_val == 8192<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                          |[0x8000061c]:SMSLDA t5, t6, t4<br> [0x80000620]:sw t5, 192(ra)<br>   |
|  49|[0x80002390]<br>0x1000FFF8|- rs2_h0_val == 4096<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                             |[0x80000634]:SMSLDA t5, t6, t4<br> [0x80000638]:sw t5, 200(ra)<br>   |
|  50|[0x80002398]<br>0x1000FFF8|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x80000650]:SMSLDA t5, t6, t4<br> [0x80000654]:sw t5, 208(ra)<br>   |
|  51|[0x800023a0]<br>0x1000FFF8|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x8000066c]:SMSLDA t5, t6, t4<br> [0x80000670]:sw t5, 216(ra)<br>   |
|  52|[0x800023a8]<br>0x1000FFF8|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                     |[0x80000684]:SMSLDA t5, t6, t4<br> [0x80000688]:sw t5, 224(ra)<br>   |
|  53|[0x800023b0]<br>0x1000FFF8|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x800006a0]:SMSLDA t5, t6, t4<br> [0x800006a4]:sw t5, 232(ra)<br>   |
|  54|[0x800023b8]<br>0x1000FFF8|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                    |[0x800006bc]:SMSLDA t5, t6, t4<br> [0x800006c0]:sw t5, 240(ra)<br>   |
|  55|[0x800023c0]<br>0x1000FFF8|- rs2_h1_val == 2<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                              |[0x800006d8]:SMSLDA t5, t6, t4<br> [0x800006dc]:sw t5, 248(ra)<br>   |
|  56|[0x800023c8]<br>0x1000FFF8|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                     |[0x800006f4]:SMSLDA t5, t6, t4<br> [0x800006f8]:sw t5, 256(ra)<br>   |
|  57|[0x800023d0]<br>0x1000FFF8|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                       |[0x8000070c]:SMSLDA t5, t6, t4<br> [0x80000710]:sw t5, 264(ra)<br>   |
|  58|[0x800023d8]<br>0x1000FFF8|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                       |[0x80000728]:SMSLDA t5, t6, t4<br> [0x8000072c]:sw t5, 272(ra)<br>   |
|  59|[0x800023e0]<br>0x1000FFF8|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                   |[0x80000744]:SMSLDA t5, t6, t4<br> [0x80000748]:sw t5, 280(ra)<br>   |
|  60|[0x800023e8]<br>0x1000FFF8|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x80000760]:SMSLDA t5, t6, t4<br> [0x80000764]:sw t5, 288(ra)<br>   |
|  61|[0x800023f0]<br>0x1000FFF8|- rs2_h1_val == 1<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                |[0x8000077c]:SMSLDA t5, t6, t4<br> [0x80000780]:sw t5, 296(ra)<br>   |
|  62|[0x800023f8]<br>0x1000FFF8|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x80000794]:SMSLDA t5, t6, t4<br> [0x80000798]:sw t5, 304(ra)<br>   |
|  63|[0x80002400]<br>0x1000FFF8|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x800007b0]:SMSLDA t5, t6, t4<br> [0x800007b4]:sw t5, 312(ra)<br>   |
|  64|[0x80002408]<br>0x1000FFF8|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x800007c8]:SMSLDA t5, t6, t4<br> [0x800007cc]:sw t5, 320(ra)<br>   |
|  65|[0x80002410]<br>0x1000FFF8|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x800007e0]:SMSLDA t5, t6, t4<br> [0x800007e4]:sw t5, 328(ra)<br>   |
|  66|[0x80002418]<br>0x1000FFF8|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                    |[0x800007fc]:SMSLDA t5, t6, t4<br> [0x80000800]:sw t5, 336(ra)<br>   |
|  67|[0x80002420]<br>0x1000FFF8|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000818]:SMSLDA t5, t6, t4<br> [0x8000081c]:sw t5, 344(ra)<br>   |
|  68|[0x80002428]<br>0x1000FFF8|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000834]:SMSLDA t5, t6, t4<br> [0x80000838]:sw t5, 352(ra)<br>   |
|  69|[0x80002430]<br>0x1000FFF8|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                    |[0x80000850]:SMSLDA t5, t6, t4<br> [0x80000854]:sw t5, 360(ra)<br>   |
|  70|[0x80002438]<br>0x1000FFF8|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                     |[0x8000086c]:SMSLDA t5, t6, t4<br> [0x80000870]:sw t5, 368(ra)<br>   |
|  71|[0x80002440]<br>0x1000FFF8|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000888]:SMSLDA t5, t6, t4<br> [0x8000088c]:sw t5, 376(ra)<br>   |
|  72|[0x80002448]<br>0x1000FFF8|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                   |[0x800008a0]:SMSLDA t5, t6, t4<br> [0x800008a4]:sw t5, 384(ra)<br>   |
