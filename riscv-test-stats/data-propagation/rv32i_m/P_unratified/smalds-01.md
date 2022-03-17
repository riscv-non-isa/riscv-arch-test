
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000920')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | smalds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalds-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 152      |
| STAT1                     | 72      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 76     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000634]:SMALDS t5, t6, t4
      [0x80000638]:sw t5, 184(t0)
 -- Signature Address: 0x80002390 Data: 0xFFFB0010
 -- Redundant Coverpoints hit by the op
      - opcode : smalds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == -2049
      - rs1_h1_val == 64
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b4]:SMALDS t5, t6, t4
      [0x800008b8]:sw t5, 376(t0)
 -- Signature Address: 0x80002450 Data: 0xFFFB0010
 -- Redundant Coverpoints hit by the op
      - opcode : smalds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs1_h1_val == 0
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d0]:SMALDS t5, t6, t4
      [0x800008d4]:sw t5, 384(t0)
 -- Signature Address: 0x80002458 Data: 0xFFFB0010
 -- Redundant Coverpoints hit by the op
      - opcode : smalds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -129
      - rs2_h0_val == 1024
      - rs1_h1_val == -129
      - rs1_h0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000908]:SMALDS t5, t6, t4
      [0x8000090c]:sw t5, 400(t0)
 -- Signature Address: 0x80002468 Data: 0xFFFB0010
 -- Redundant Coverpoints hit by the op
      - opcode : smalds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -513
      - rs2_h0_val == -2049
      - rs1_h1_val == -2049
      - rs1_h0_val == 16






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalds', 'rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -5', 'rs1_h1_val == -21846', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000010c]:SMALDS s8, s8, s8
	-[0x80000110]:sw s8, 0(ra)
Current Store : [0x80000114] : sw s9, 4(ra) -- Store: [0x80002214]:0xEDBEADFE




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x4', 'rs1 == rs2 != rd', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -129', 'rs2_h0_val == 1024', 'rs1_h1_val == -129', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000128]:SMALDS tp, sp, sp
	-[0x8000012c]:sw tp, 8(ra)
Current Store : [0x80000130] : sw t0, 12(ra) -- Store: [0x8000221c]:0x800000F8




Last Coverpoint : ['rs1 : x27', 'rs2 : x22', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8192', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000144]:SMALDS t1, s11, s6
	-[0x80000148]:sw t1, 16(ra)
Current Store : [0x8000014c] : sw t2, 20(ra) -- Store: [0x80002224]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -257', 'rs2_h0_val == 1', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000160]:SMALDS t3, t4, t3
	-[0x80000164]:sw t3, 24(ra)
Current Store : [0x80000168] : sw t4, 28(ra) -- Store: [0x8000222c]:0x00080007




Last Coverpoint : ['rs1 : x20', 'rs2 : x31', 'rd : x20', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 32', 'rs1_h1_val == 64', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000017c]:SMALDS s4, s4, t6
	-[0x80000180]:sw s4, 32(ra)
Current Store : [0x80000184] : sw s5, 36(ra) -- Store: [0x80002234]:0xDBEADFEE




Last Coverpoint : ['rs1 : x22', 'rs2 : x5', 'rd : x16', 'rs2_h1_val == 0', 'rs2_h0_val == 8192', 'rs1_h1_val == 128', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000190]:SMALDS a6, s6, t0
	-[0x80000194]:sw a6, 40(ra)
Current Store : [0x80000198] : sw a7, 44(ra) -- Store: [0x8000223c]:0xBEADFEED




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x22', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -3', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800001ac]:SMALDS s6, t6, a6
	-[0x800001b0]:sw s6, 48(ra)
Current Store : [0x800001b4] : sw s7, 52(ra) -- Store: [0x80002244]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x18', 'rs2_h1_val == 21845', 'rs2_h0_val == -1025', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800001c8]:SMALDS s2, fp, t2
	-[0x800001cc]:sw s2, 56(ra)
Current Store : [0x800001d0] : sw s3, 60(ra) -- Store: [0x8000224c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x12', 'rs2_h1_val == 32767', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800001e4]:SMALDS a2, s10, t4
	-[0x800001e8]:sw a2, 64(ra)
Current Store : [0x800001ec] : sw a3, 68(ra) -- Store: [0x80002254]:0xEADFEEDB




Last Coverpoint : ['rs1 : x16', 'rs2 : x27', 'rd : x30', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -16385', 'rs1_h1_val == -16385', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000200]:SMALDS t5, a6, s11
	-[0x80000204]:sw t5, 72(ra)
Current Store : [0x80000208] : sw t6, 76(ra) -- Store: [0x8000225c]:0x0100000A




Last Coverpoint : ['rs1 : x13', 'rs2 : x0', 'rd : x26', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x8000021c]:SMALDS s10, a3, zero
	-[0x80000220]:sw s10, 80(ra)
Current Store : [0x80000224] : sw s11, 84(ra) -- Store: [0x80002264]:0xBFFF3FFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x9', 'rd : x14', 'rs2_h1_val == -4097', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000238]:SMALDS a4, a2, s1
	-[0x8000023c]:sw a4, 88(ra)
Current Store : [0x80000240] : sw a5, 92(ra) -- Store: [0x8000226c]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x10', 'rs2_h1_val == -2049', 'rs1_h1_val == -2049', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000025c]:SMALDS a0, a1, gp
	-[0x80000260]:sw a0, 0(t1)
Current Store : [0x80000264] : sw a1, 4(t1) -- Store: [0x80002274]:0xF7FFBFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x30', 'rd : x8', 'rs2_h1_val == -1025', 'rs2_h0_val == -17', 'rs1_h1_val == -2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000278]:SMALDS fp, t3, t5
	-[0x8000027c]:sw fp, 8(t1)
Current Store : [0x80000280] : sw s1, 12(t1) -- Store: [0x8000227c]:0xEFFF5555




Last Coverpoint : ['rs1 : x0', 'rs2 : x13', 'rd : x2', 'rs2_h1_val == -513', 'rs2_h0_val == -2049', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000294]:SMALDS sp, zero, a3
	-[0x80000298]:sw sp, 16(t1)
Current Store : [0x8000029c] : sw gp, 20(t1) -- Store: [0x80002284]:0xF7FF5555




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rs2_h1_val == -65', 'rs2_h0_val == -4097', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800002b0]:SMALDS a6, s7, s4
	-[0x800002b4]:sw a6, 24(t1)
Current Store : [0x800002b8] : sw a7, 28(t1) -- Store: [0x8000228c]:0xBEADFEED




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rs2_h1_val == -33', 'rs2_h0_val == 4', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800002cc]:SMALDS sp, gp, fp
	-[0x800002d0]:sw sp, 32(t1)
Current Store : [0x800002d4] : sw gp, 36(t1) -- Store: [0x80002294]:0x0008DFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x11', 'rs2_h1_val == -17', 'rs2_h0_val == -1', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800002e8]:SMALDS sp, t2, a1
	-[0x800002ec]:sw sp, 40(t1)
Current Store : [0x800002f0] : sw gp, 44(t1) -- Store: [0x8000229c]:0x0008DFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rs2_h1_val == -9', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000304]:SMALDS t3, tp, a4
	-[0x80000308]:sw t3, 48(t1)
Current Store : [0x8000030c] : sw t4, 52(t1) -- Store: [0x800022a4]:0x7FFFFFF9




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80000320]:SMALDS s10, ra, s5
	-[0x80000324]:sw s10, 56(t1)
Current Store : [0x80000328] : sw s11, 60(t1) -- Store: [0x800022ac]:0xBFFF3FFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rs2_h1_val == -3', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000033c]:SMALDS s6, s3, s7
	-[0x80000340]:sw s6, 64(t1)
Current Store : [0x80000344] : sw s7, 68(t1) -- Store: [0x800022b4]:0xFFFDFFFD




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rs2_h1_val == -2', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000358]:SMALDS s4, a0, s3
	-[0x8000035c]:sw s4, 72(t1)
Current Store : [0x80000360] : sw s5, 76(t1) -- Store: [0x800022bc]:0xFFFBF7FF




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rs2_h1_val == -32768', 'rs1_h1_val == 16', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000374]:SMALDS a6, s1, a7
	-[0x80000378]:sw a6, 80(t1)
Current Store : [0x8000037c] : sw a7, 84(t1) -- Store: [0x800022c4]:0x80000400




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rs2_h1_val == 16384', 'rs2_h0_val == 2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000390]:SMALDS a6, t0, s10
	-[0x80000394]:sw a6, 88(t1)
Current Store : [0x80000398] : sw a7, 92(t1) -- Store: [0x800022cc]:0x80000400




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x800003a8]:SMALDS sp, a5, s2
	-[0x800003ac]:sw sp, 96(t1)
Current Store : [0x800003b0] : sw gp, 100(t1) -- Store: [0x800022d4]:0x0008DFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rs2_h1_val == 2048', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800003cc]:SMALDS s6, t5, a5
	-[0x800003d0]:sw s6, 0(t0)
Current Store : [0x800003d4] : sw s7, 4(t0) -- Store: [0x800022dc]:0xFFFDFFFD




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rs2_h1_val == 1024', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800003e8]:SMALDS a6, a4, s9
	-[0x800003ec]:sw a6, 8(t0)
Current Store : [0x800003f0] : sw a7, 12(t0) -- Store: [0x800022e4]:0x80000400




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rs2_h1_val == 512', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000404]:SMALDS t5, s9, a2
	-[0x80000408]:sw t5, 16(t0)
Current Store : [0x8000040c] : sw t6, 20(t0) -- Store: [0x800022ec]:0x0100000B




Last Coverpoint : ['rs1 : x18', 'rs2 : x1', 'rs2_h1_val == 256', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000420]:SMALDS sp, s2, ra
	-[0x80000424]:sw sp, 24(t0)
Current Store : [0x80000428] : sw gp, 28(t0) -- Store: [0x800022f4]:0x0008DFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x6', 'rs2_h1_val == 128', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x8000043c]:SMALDS a4, s5, t1
	-[0x80000440]:sw a4, 32(t0)
Current Store : [0x80000444] : sw a5, 36(t0) -- Store: [0x800022fc]:0x0800F800




Last Coverpoint : ['rs1 : x6', 'rs2 : x4', 'rs2_h1_val == 64', 'rs2_h0_val == -65', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000458]:SMALDS a6, t1, tp
	-[0x8000045c]:sw a6, 40(t0)
Current Store : [0x80000460] : sw a7, 44(t0) -- Store: [0x80002304]:0x80000400




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rs2_h1_val == 16', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000474]:SMALDS a4, a7, a0
	-[0x80000478]:sw a4, 48(t0)
Current Store : [0x8000047c] : sw a5, 52(t0) -- Store: [0x8000230c]:0x0800F800




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h1_val == -257', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000490]:SMALDS t5, t6, t4
	-[0x80000494]:sw t5, 56(t0)
Current Store : [0x80000498] : sw t6, 60(t0) -- Store: [0x80002314]:0xFEFFFEFF




Last Coverpoint : ['rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004ac]:SMALDS t5, t6, t4
	-[0x800004b0]:sw t5, 64(t0)
Current Store : [0x800004b4] : sw t6, 68(t0) -- Store: [0x8000231c]:0xFFF6FF7F




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004c8]:SMALDS t5, t6, t4
	-[0x800004cc]:sw t5, 72(t0)
Current Store : [0x800004d0] : sw t6, 76(t0) -- Store: [0x80002324]:0xBFFFFFBF




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800004e4]:SMALDS t5, t6, t4
	-[0x800004e8]:sw t5, 80(t0)
Current Store : [0x800004ec] : sw t6, 84(t0) -- Store: [0x8000232c]:0xFBFFFFF7




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000500]:SMALDS t5, t6, t4
	-[0x80000504]:sw t5, 88(t0)
Current Store : [0x80000508] : sw t6, 92(t0) -- Store: [0x80002334]:0x1000FFFB




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000518]:SMALDS t5, t6, t4
	-[0x8000051c]:sw t5, 96(t0)
Current Store : [0x80000520] : sw t6, 100(t0) -- Store: [0x8000233c]:0x5555FFFC




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000530]:SMALDS t5, t6, t4
	-[0x80000534]:sw t5, 104(t0)
Current Store : [0x80000538] : sw t6, 108(t0) -- Store: [0x80002344]:0x0080FFFE




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -21846', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000548]:SMALDS t5, t6, t4
	-[0x8000054c]:sw t5, 112(t0)
Current Store : [0x80000550] : sw t6, 116(t0) -- Store: [0x8000234c]:0xFEFF4000




Last Coverpoint : ['rs1_h1_val == -1', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000560]:SMALDS t5, t6, t4
	-[0x80000564]:sw t5, 120(t0)
Current Store : [0x80000568] : sw t6, 124(t0) -- Store: [0x80002354]:0xFFFF1000




Last Coverpoint : ['rs1_h1_val == 32767', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000057c]:SMALDS t5, t6, t4
	-[0x80000580]:sw t5, 128(t0)
Current Store : [0x80000584] : sw t6, 132(t0) -- Store: [0x8000235c]:0x7FFF0800




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000598]:SMALDS t5, t6, t4
	-[0x8000059c]:sw t5, 136(t0)
Current Store : [0x800005a0] : sw t6, 140(t0) -- Store: [0x80002364]:0xFFF80200




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005b4]:SMALDS t5, t6, t4
	-[0x800005b8]:sw t5, 144(t0)
Current Store : [0x800005bc] : sw t6, 148(t0) -- Store: [0x8000236c]:0x00060080




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800005cc]:SMALDS t5, t6, t4
	-[0x800005d0]:sw t5, 152(t0)
Current Store : [0x800005d4] : sw t6, 156(t0) -- Store: [0x80002374]:0x08000008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005e8]:SMALDS t5, t6, t4
	-[0x800005ec]:sw t5, 160(t0)
Current Store : [0x800005f0] : sw t6, 164(t0) -- Store: [0x8000237c]:0x01000004




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000604]:SMALDS t5, t6, t4
	-[0x80000608]:sw t5, 168(t0)
Current Store : [0x8000060c] : sw t6, 172(t0) -- Store: [0x80002384]:0xFFFE0002




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000061c]:SMALDS t5, t6, t4
	-[0x80000620]:sw t5, 176(t0)
Current Store : [0x80000624] : sw t6, 180(t0) -- Store: [0x8000238c]:0xFFF90001




Last Coverpoint : ['opcode : smalds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == -2049', 'rs1_h1_val == 64', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000634]:SMALDS t5, t6, t4
	-[0x80000638]:sw t5, 184(t0)
Current Store : [0x8000063c] : sw t6, 188(t0) -- Store: [0x80002394]:0x00400000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000650]:SMALDS t5, t6, t4
	-[0x80000654]:sw t5, 192(t0)
Current Store : [0x80000658] : sw t6, 196(t0) -- Store: [0x8000239c]:0xBFFFFFFF




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x8000066c]:SMALDS t5, t6, t4
	-[0x80000670]:sw t5, 200(t0)
Current Store : [0x80000674] : sw t6, 204(t0) -- Store: [0x800023a4]:0x01000007




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000684]:SMALDS t5, t6, t4
	-[0x80000688]:sw t5, 208(t0)
Current Store : [0x8000068c] : sw t6, 212(t0) -- Store: [0x800023ac]:0x02000200




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000069c]:SMALDS t5, t6, t4
	-[0x800006a0]:sw t5, 216(t0)
Current Store : [0x800006a4] : sw t6, 220(t0) -- Store: [0x800023b4]:0x20000003




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800006b8]:SMALDS t5, t6, t4
	-[0x800006bc]:sw t5, 224(t0)
Current Store : [0x800006c0] : sw t6, 228(t0) -- Store: [0x800023bc]:0xFDFFBFFF




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800006d4]:SMALDS t5, t6, t4
	-[0x800006d8]:sw t5, 232(t0)
Current Store : [0x800006dc] : sw t6, 236(t0) -- Store: [0x800023c4]:0x00047FFF




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800006f0]:SMALDS t5, t6, t4
	-[0x800006f4]:sw t5, 240(t0)
Current Store : [0x800006f8] : sw t6, 244(t0) -- Store: [0x800023cc]:0xFFF80400




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == -4097', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000070c]:SMALDS t5, t6, t4
	-[0x80000710]:sw t5, 248(t0)
Current Store : [0x80000714] : sw t6, 252(t0) -- Store: [0x800023d4]:0xEFFFAAAA




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000728]:SMALDS t5, t6, t4
	-[0x8000072c]:sw t5, 256(t0)
Current Store : [0x80000730] : sw t6, 260(t0) -- Store: [0x800023dc]:0xFEFF0009




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000744]:SMALDS t5, t6, t4
	-[0x80000748]:sw t5, 264(t0)
Current Store : [0x8000074c] : sw t6, 268(t0) -- Store: [0x800023e4]:0xFFBF0003




Last Coverpoint : ['rs1_h1_val == -33', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000760]:SMALDS t5, t6, t4
	-[0x80000764]:sw t5, 272(t0)
Current Store : [0x80000768] : sw t6, 276(t0) -- Store: [0x800023ec]:0xFFDFFFEF




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x8000077c]:SMALDS t5, t6, t4
	-[0x80000780]:sw t5, 280(t0)
Current Store : [0x80000784] : sw t6, 284(t0) -- Store: [0x800023f4]:0xFFF7BFFF




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000794]:SMALDS t5, t6, t4
	-[0x80000798]:sw t5, 288(t0)
Current Store : [0x8000079c] : sw t6, 292(t0) -- Store: [0x800023fc]:0xFFFDC000




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800007b0]:SMALDS t5, t6, t4
	-[0x800007b4]:sw t5, 296(t0)
Current Store : [0x800007b8] : sw t6, 300(t0) -- Store: [0x80002404]:0x80000040




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800007c8]:SMALDS t5, t6, t4
	-[0x800007cc]:sw t5, 304(t0)
Current Store : [0x800007d0] : sw t6, 308(t0) -- Store: [0x8000240c]:0x40008000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800007dc]:SMALDS t5, t6, t4
	-[0x800007e0]:sw t5, 312(t0)
Current Store : [0x800007e4] : sw t6, 316(t0) -- Store: [0x80002414]:0xFFBF1000




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800007f8]:SMALDS t5, t6, t4
	-[0x800007fc]:sw t5, 320(t0)
Current Store : [0x80000800] : sw t6, 324(t0) -- Store: [0x8000241c]:0x00200004




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000814]:SMALDS t5, t6, t4
	-[0x80000818]:sw t5, 328(t0)
Current Store : [0x8000081c] : sw t6, 332(t0) -- Store: [0x80002424]:0xC000F7FF




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000082c]:SMALDS t5, t6, t4
	-[0x80000830]:sw t5, 336(t0)
Current Store : [0x80000834] : sw t6, 340(t0) -- Store: [0x8000242c]:0x00024000




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000848]:SMALDS t5, t6, t4
	-[0x8000084c]:sw t5, 344(t0)
Current Store : [0x80000850] : sw t6, 348(t0) -- Store: [0x80002434]:0x0001FFDF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000864]:SMALDS t5, t6, t4
	-[0x80000868]:sw t5, 352(t0)
Current Store : [0x8000086c] : sw t6, 356(t0) -- Store: [0x8000243c]:0xFFFF0009




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000880]:SMALDS t5, t6, t4
	-[0x80000884]:sw t5, 360(t0)
Current Store : [0x80000888] : sw t6, 364(t0) -- Store: [0x80002444]:0xFFEF0005




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x8000089c]:SMALDS t5, t6, t4
	-[0x800008a0]:sw t5, 368(t0)
Current Store : [0x800008a4] : sw t6, 372(t0) -- Store: [0x8000244c]:0xFFEFFFFE




Last Coverpoint : ['opcode : smalds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs1_h1_val == 0', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800008b4]:SMALDS t5, t6, t4
	-[0x800008b8]:sw t5, 376(t0)
Current Store : [0x800008bc] : sw t6, 380(t0) -- Store: [0x80002454]:0x00000400




Last Coverpoint : ['opcode : smalds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -129', 'rs2_h0_val == 1024', 'rs1_h1_val == -129', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800008d0]:SMALDS t5, t6, t4
	-[0x800008d4]:sw t5, 384(t0)
Current Store : [0x800008d8] : sw t6, 388(t0) -- Store: [0x8000245c]:0xFF7FFFEF




Last Coverpoint : ['rs2_h1_val == -8193', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800008ec]:SMALDS t5, t6, t4
	-[0x800008f0]:sw t5, 392(t0)
Current Store : [0x800008f4] : sw t6, 396(t0) -- Store: [0x80002464]:0x00050007




Last Coverpoint : ['opcode : smalds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -513', 'rs2_h0_val == -2049', 'rs1_h1_val == -2049', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000908]:SMALDS t5, t6, t4
	-[0x8000090c]:sw t5, 400(t0)
Current Store : [0x80000910] : sw t6, 404(t0) -- Store: [0x8000246c]:0xF7FF0010





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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                  |                                 code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xAAAAFFFB|- opcode : smalds<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -5<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -5<br> |[0x8000010c]:SMALDS s8, s8, s8<br> [0x80000110]:sw s8, 0(ra)<br>      |
|   2|[0x80002218]<br>0xBFDDB7D5|- rs1 : x2<br> - rs2 : x2<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -129<br> - rs1_h0_val == 1024<br>                                                                                                                                |[0x80000128]:SMALDS tp, sp, sp<br> [0x8000012c]:sw tp, 8(ra)<br>      |
|   3|[0x80002220]<br>0x80002000|- rs1 : x27<br> - rs2 : x22<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 256<br>                                                                                            |[0x80000144]:SMALDS t1, s11, s6<br> [0x80000148]:sw t1, 16(ra)<br>    |
|   4|[0x80002228]<br>0xFEFF0001|- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == 1<br> - rs1_h1_val == 8<br>                                                                                                                                                            |[0x80000160]:SMALDS t3, t4, t3<br> [0x80000164]:sw t3, 24(ra)<br>     |
|   5|[0x80002230]<br>0x00400010|- rs1 : x20<br> - rs2 : x31<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 32<br> - rs1_h1_val == 64<br> - rs1_h0_val == 16<br>                                                                                                                                                            |[0x8000017c]:SMALDS s4, s4, t6<br> [0x80000180]:sw s4, 32(ra)<br>     |
|   6|[0x80002238]<br>0x7D5BFDDB|- rs1 : x22<br> - rs2 : x5<br> - rd : x16<br> - rs2_h1_val == 0<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 128<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                 |[0x80000190]:SMALDS a6, s6, t0<br> [0x80000194]:sw a6, 40(ra)<br>     |
|   7|[0x80002240]<br>0x00802000|- rs1 : x31<br> - rs2 : x16<br> - rd : x22<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -3<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                         |[0x800001ac]:SMALDS s6, t6, a6<br> [0x800001b0]:sw s6, 48(ra)<br>     |
|   8|[0x80002248]<br>0xDF56FF76|- rs1 : x8<br> - rs2 : x7<br> - rd : x18<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                    |[0x800001c8]:SMALDS s2, fp, t2<br> [0x800001cc]:sw s2, 56(ra)<br>     |
|   9|[0x80002250]<br>0xD5BFDDB7|- rs1 : x26<br> - rs2 : x29<br> - rd : x12<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                            |[0x800001e4]:SMALDS a2, s10, t4<br> [0x800001e8]:sw a2, 64(ra)<br>    |
|  10|[0x80002258]<br>0xF76DF56F|- rs1 : x16<br> - rs2 : x27<br> - rd : x30<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -1025<br>                                                                                                                                                                        |[0x80000200]:SMALDS t5, a6, s11<br> [0x80000204]:sw t5, 72(ra)<br>    |
|  11|[0x80002260]<br>0xDFFFFFF8|- rs1 : x13<br> - rs2 : x0<br> - rd : x26<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                                                                           |[0x8000021c]:SMALDS s10, a3, zero<br> [0x80000220]:sw s10, 80(ra)<br> |
|  12|[0x80002268]<br>0xF56FF76D|- rs1 : x12<br> - rs2 : x9<br> - rd : x14<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                                             |[0x80000238]:SMALDS a4, a2, s1<br> [0x8000023c]:sw a4, 88(ra)<br>     |
|  13|[0x80002270]<br>0x56FF76DF|- rs1 : x11<br> - rs2 : x3<br> - rd : x10<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                  |[0x8000025c]:SMALDS a0, a1, gp<br> [0x80000260]:sw a0, 0(t1)<br>      |
|  14|[0x80002278]<br>0x0008EFFF|- rs1 : x28<br> - rs2 : x30<br> - rd : x8<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -17<br> - rs1_h1_val == -2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                              |[0x80000278]:SMALDS fp, t3, t5<br> [0x8000027c]:sw fp, 8(t1)<br>      |
|  15|[0x80002280]<br>0xFF7F0400|- rs1 : x0<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == -513<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                   |[0x80000294]:SMALDS sp, zero, a3<br> [0x80000298]:sw sp, 16(t1)<br>   |
|  16|[0x80002288]<br>0xBFFFFBFF|- rs1 : x23<br> - rs2 : x20<br> - rs2_h1_val == -65<br> - rs2_h0_val == -4097<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                      |[0x800002b0]:SMALDS a6, s7, s4<br> [0x800002b4]:sw a6, 24(t1)<br>     |
|  17|[0x80002290]<br>0xFF7F0400|- rs1 : x3<br> - rs2 : x8<br> - rs2_h1_val == -33<br> - rs2_h0_val == 4<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                         |[0x800002cc]:SMALDS sp, gp, fp<br> [0x800002d0]:sw sp, 32(t1)<br>     |
|  18|[0x80002298]<br>0xFF7F0400|- rs1 : x7<br> - rs2 : x11<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                        |[0x800002e8]:SMALDS sp, t2, a1<br> [0x800002ec]:sw sp, 40(t1)<br>     |
|  19|[0x800022a0]<br>0xFFFE5555|- rs1 : x4<br> - rs2 : x14<br> - rs2_h1_val == -9<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                 |[0x80000304]:SMALDS t3, tp, a4<br> [0x80000308]:sw t3, 48(t1)<br>     |
|  20|[0x800022a8]<br>0xDFFFFFF8|- rs1 : x1<br> - rs2 : x21<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                         |[0x80000320]:SMALDS s10, ra, s5<br> [0x80000324]:sw s10, 56(t1)<br>   |
|  21|[0x800022b0]<br>0x00802000|- rs1 : x19<br> - rs2 : x23<br> - rs2_h1_val == -3<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                              |[0x8000033c]:SMALDS s6, s3, s7<br> [0x80000340]:sw s6, 64(t1)<br>     |
|  22|[0x800022b8]<br>0xFFBFEFFF|- rs1 : x10<br> - rs2 : x19<br> - rs2_h1_val == -2<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                 |[0x80000358]:SMALDS s4, a0, s3<br> [0x8000035c]:sw s4, 72(t1)<br>     |
|  23|[0x800022c0]<br>0xBFFFFBFF|- rs1 : x9<br> - rs2 : x17<br> - rs2_h1_val == -32768<br> - rs1_h1_val == 16<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                    |[0x80000374]:SMALDS a6, s1, a7<br> [0x80000378]:sw a6, 80(t1)<br>     |
|  24|[0x800022c8]<br>0xBFFFFBFF|- rs1 : x5<br> - rs2 : x26<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                       |[0x80000390]:SMALDS a6, t0, s10<br> [0x80000394]:sw a6, 88(t1)<br>    |
|  25|[0x800022d0]<br>0xFF7F0400|- rs1 : x15<br> - rs2 : x18<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                      |[0x800003a8]:SMALDS sp, a5, s2<br> [0x800003ac]:sw sp, 96(t1)<br>     |
|  26|[0x800022d8]<br>0x00802000|- rs1 : x30<br> - rs2 : x15<br> - rs2_h1_val == 2048<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                               |[0x800003cc]:SMALDS s6, t5, a5<br> [0x800003d0]:sw s6, 0(t0)<br>      |
|  27|[0x800022e0]<br>0xBFFFFBFF|- rs1 : x14<br> - rs2 : x25<br> - rs2_h1_val == 1024<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                             |[0x800003e8]:SMALDS a6, a4, s9<br> [0x800003ec]:sw a6, 8(t0)<br>      |
|  28|[0x800022e8]<br>0xFFFB0010|- rs1 : x25<br> - rs2 : x12<br> - rs2_h1_val == 512<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                             |[0x80000404]:SMALDS t5, s9, a2<br> [0x80000408]:sw t5, 16(t0)<br>     |
|  29|[0x800022f0]<br>0xFF7F0400|- rs1 : x18<br> - rs2 : x1<br> - rs2_h1_val == 256<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                               |[0x80000420]:SMALDS sp, s2, ra<br> [0x80000424]:sw sp, 24(t0)<br>     |
|  30|[0x800022f8]<br>0xFFFBFDFF|- rs1 : x21<br> - rs2 : x6<br> - rs2_h1_val == 128<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                  |[0x8000043c]:SMALDS a4, s5, t1<br> [0x80000440]:sw a4, 32(t0)<br>     |
|  31|[0x80002300]<br>0xBFFFFBFF|- rs1 : x6<br> - rs2 : x4<br> - rs2_h1_val == 64<br> - rs2_h0_val == -65<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                          |[0x80000458]:SMALDS a6, t1, tp<br> [0x8000045c]:sw a6, 40(t0)<br>     |
|  32|[0x80002308]<br>0xFFFBFDFF|- rs1 : x17<br> - rs2 : x10<br> - rs2_h1_val == 16<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                 |[0x80000474]:SMALDS a4, a7, a0<br> [0x80000478]:sw a4, 48(t0)<br>     |
|  33|[0x80002310]<br>0xFFFB0010|- rs2_h0_val == -8193<br> - rs1_h1_val == -257<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                   |[0x80000490]:SMALDS t5, t6, t4<br> [0x80000494]:sw t5, 56(t0)<br>     |
|  34|[0x80002318]<br>0xFFFB0010|- rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                      |[0x800004ac]:SMALDS t5, t6, t4<br> [0x800004b0]:sw t5, 64(t0)<br>     |
|  35|[0x80002320]<br>0xFFFB0010|- rs2_h1_val == 4<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                 |[0x800004c8]:SMALDS t5, t6, t4<br> [0x800004cc]:sw t5, 72(t0)<br>     |
|  36|[0x80002328]<br>0xFFFB0010|- rs2_h0_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                 |[0x800004e4]:SMALDS t5, t6, t4<br> [0x800004e8]:sw t5, 80(t0)<br>     |
|  37|[0x80002330]<br>0xFFFB0010|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                      |[0x80000500]:SMALDS t5, t6, t4<br> [0x80000504]:sw t5, 88(t0)<br>     |
|  38|[0x80002338]<br>0xFFFB0010|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                        |[0x80000518]:SMALDS t5, t6, t4<br> [0x8000051c]:sw t5, 96(t0)<br>     |
|  39|[0x80002340]<br>0xFFFB0010|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000530]:SMALDS t5, t6, t4<br> [0x80000534]:sw t5, 104(t0)<br>    |
|  40|[0x80002348]<br>0xFFFB0010|- rs2_h1_val == 1<br> - rs2_h0_val == -21846<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                    |[0x80000548]:SMALDS t5, t6, t4<br> [0x8000054c]:sw t5, 112(t0)<br>    |
|  41|[0x80002350]<br>0xFFFB0010|- rs1_h1_val == -1<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                               |[0x80000560]:SMALDS t5, t6, t4<br> [0x80000564]:sw t5, 120(t0)<br>    |
|  42|[0x80002358]<br>0xFFFB0010|- rs1_h1_val == 32767<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                            |[0x8000057c]:SMALDS t5, t6, t4<br> [0x80000580]:sw t5, 128(t0)<br>    |
|  43|[0x80002360]<br>0xFFFB0010|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                       |[0x80000598]:SMALDS t5, t6, t4<br> [0x8000059c]:sw t5, 136(t0)<br>    |
|  44|[0x80002368]<br>0xFFFB0010|- rs2_h1_val == 2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                 |[0x800005b4]:SMALDS t5, t6, t4<br> [0x800005b8]:sw t5, 144(t0)<br>    |
|  45|[0x80002370]<br>0xFFFB0010|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                         |[0x800005cc]:SMALDS t5, t6, t4<br> [0x800005d0]:sw t5, 152(t0)<br>    |
|  46|[0x80002378]<br>0xFFFB0010|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                         |[0x800005e8]:SMALDS t5, t6, t4<br> [0x800005ec]:sw t5, 160(t0)<br>    |
|  47|[0x80002380]<br>0xFFFB0010|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                         |[0x80000604]:SMALDS t5, t6, t4<br> [0x80000608]:sw t5, 168(t0)<br>    |
|  48|[0x80002388]<br>0xFFFB0010|- rs2_h0_val == -32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x8000061c]:SMALDS t5, t6, t4<br> [0x80000620]:sw t5, 176(t0)<br>    |
|  49|[0x80002398]<br>0xFFFB0010|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000650]:SMALDS t5, t6, t4<br> [0x80000654]:sw t5, 192(t0)<br>    |
|  50|[0x800023a0]<br>0xFFFB0010|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x8000066c]:SMALDS t5, t6, t4<br> [0x80000670]:sw t5, 200(t0)<br>    |
|  51|[0x800023a8]<br>0xFFFB0010|- rs2_h0_val == 16384<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                             |[0x80000684]:SMALDS t5, t6, t4<br> [0x80000688]:sw t5, 208(t0)<br>    |
|  52|[0x800023b0]<br>0xFFFB0010|- rs2_h0_val == 4096<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x8000069c]:SMALDS t5, t6, t4<br> [0x800006a0]:sw t5, 216(t0)<br>    |
|  53|[0x800023b8]<br>0xFFFB0010|- rs2_h0_val == 512<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                              |[0x800006b8]:SMALDS t5, t6, t4<br> [0x800006bc]:sw t5, 224(t0)<br>    |
|  54|[0x800023c0]<br>0xFFFB0010|- rs2_h0_val == 128<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                 |[0x800006d4]:SMALDS t5, t6, t4<br> [0x800006d8]:sw t5, 232(t0)<br>    |
|  55|[0x800023c8]<br>0xFFFB0010|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                        |[0x800006f0]:SMALDS t5, t6, t4<br> [0x800006f4]:sw t5, 240(t0)<br>    |
|  56|[0x800023d0]<br>0xFFFB0010|- rs2_h1_val == 8<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                    |[0x8000070c]:SMALDS t5, t6, t4<br> [0x80000710]:sw t5, 248(t0)<br>    |
|  57|[0x800023d8]<br>0xFFFB0010|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                      |[0x80000728]:SMALDS t5, t6, t4<br> [0x8000072c]:sw t5, 256(t0)<br>    |
|  58|[0x800023e0]<br>0xFFFB0010|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                       |[0x80000744]:SMALDS t5, t6, t4<br> [0x80000748]:sw t5, 264(t0)<br>    |
|  59|[0x800023e8]<br>0xFFFB0010|- rs1_h1_val == -33<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                               |[0x80000760]:SMALDS t5, t6, t4<br> [0x80000764]:sw t5, 272(t0)<br>    |
|  60|[0x800023f0]<br>0xFFFB0010|- rs2_h0_val == -9<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                 |[0x8000077c]:SMALDS t5, t6, t4<br> [0x80000780]:sw t5, 280(t0)<br>    |
|  61|[0x800023f8]<br>0xFFFB0010|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                        |[0x80000794]:SMALDS t5, t6, t4<br> [0x80000798]:sw t5, 288(t0)<br>    |
|  62|[0x80002400]<br>0xFFFB0010|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                    |[0x800007b0]:SMALDS t5, t6, t4<br> [0x800007b4]:sw t5, 296(t0)<br>    |
|  63|[0x80002408]<br>0xFFFB0010|- rs1_h0_val == -32768<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x800007c8]:SMALDS t5, t6, t4<br> [0x800007cc]:sw t5, 304(t0)<br>    |
|  64|[0x80002410]<br>0xFFFB0010|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                        |[0x800007dc]:SMALDS t5, t6, t4<br> [0x800007e0]:sw t5, 312(t0)<br>    |
|  65|[0x80002418]<br>0xFFFB0010|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                        |[0x800007f8]:SMALDS t5, t6, t4<br> [0x800007fc]:sw t5, 320(t0)<br>    |
|  66|[0x80002420]<br>0xFFFB0010|- rs2_h0_val == -16385<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                          |[0x80000814]:SMALDS t5, t6, t4<br> [0x80000818]:sw t5, 328(t0)<br>    |
|  67|[0x80002428]<br>0xFFFB0010|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                         |[0x8000082c]:SMALDS t5, t6, t4<br> [0x80000830]:sw t5, 336(t0)<br>    |
|  68|[0x80002430]<br>0xFFFB0010|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                         |[0x80000848]:SMALDS t5, t6, t4<br> [0x8000084c]:sw t5, 344(t0)<br>    |
|  69|[0x80002438]<br>0xFFFB0010|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                      |[0x80000864]:SMALDS t5, t6, t4<br> [0x80000868]:sw t5, 352(t0)<br>    |
|  70|[0x80002440]<br>0xFFFB0010|- rs2_h0_val == -129<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                              |[0x80000880]:SMALDS t5, t6, t4<br> [0x80000884]:sw t5, 360(t0)<br>    |
|  71|[0x80002448]<br>0xFFFB0010|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                       |[0x8000089c]:SMALDS t5, t6, t4<br> [0x800008a0]:sw t5, 368(t0)<br>    |
|  72|[0x80002460]<br>0xFFFB0010|- rs2_h1_val == -8193<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                           |[0x800008ec]:SMALDS t5, t6, t4<br> [0x800008f0]:sw t5, 392(t0)<br>    |
