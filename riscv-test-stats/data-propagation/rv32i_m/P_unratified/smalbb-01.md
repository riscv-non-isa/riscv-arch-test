
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000910')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | smalbb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalbb-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 152      |
| STAT1                     | 71      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 76     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000548]:SMALBB t5, t6, t4
      [0x8000054c]:sw t5, 96(ra)
 -- Signature Address: 0x80002350 Data: 0x0004EFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbb
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h0_val == -513
      - rs1_h1_val == 4096
      - rs1_h0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000057c]:SMALBB t5, t6, t4
      [0x80000580]:sw t5, 112(ra)
 -- Signature Address: 0x80002360 Data: 0x0004EFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbb
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 1024
      - rs2_h0_val == -5
      - rs1_h1_val == 512
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000688]:SMALBB t5, t6, t4
      [0x8000068c]:sw t5, 192(ra)
 -- Signature Address: 0x800023b0 Data: 0x0004EFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbb
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -17
      - rs2_h0_val == 0
      - rs1_h1_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:SMALBB t5, t6, t4
      [0x80000730]:sw t5, 240(ra)
 -- Signature Address: 0x800023e0 Data: 0x0004EFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbb
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -2049
      - rs2_h0_val == 128
      - rs1_h1_val == -3
      - rs1_h0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:SMALBB t5, t6, t4
      [0x800007f4]:sw t5, 296(ra)
 -- Signature Address: 0x80002418 Data: 0x0004EFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbb
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs1_h1_val == -3
      - rs1_h0_val == 2048






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalbb', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -3', 'rs2_h0_val == 8192', 'rs1_h1_val == -3', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000108]:SMALBB a4, a4, a4
	-[0x8000010c]:sw a4, 0(t0)
Current Store : [0x80000110] : sw a5, 4(t0) -- Store: [0x80002214]:0xFAB7FBB7




Last Coverpoint : ['rs1 : x19', 'rs2 : x19', 'rd : x18', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == 2', 'rs1_h1_val == 16384', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000124]:SMALBB s2, s3, s3
	-[0x80000128]:sw s2, 8(t0)
Current Store : [0x8000012c] : sw s3, 12(t0) -- Store: [0x8000221c]:0x40000002




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 8192', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000138]:SMALBB t3, sp, fp
	-[0x8000013c]:sw t3, 16(t0)
Current Store : [0x80000140] : sw t4, 20(t0) -- Store: [0x80002224]:0xEEDBEADF




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x22', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -129', 'rs1_h1_val == -21846', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000154]:SMALBB s6, a5, s6
	-[0x80000158]:sw s6, 24(t0)
Current Store : [0x8000015c] : sw s7, 28(t0) -- Store: [0x8000222c]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x8', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -257', 'rs2_h0_val == -16385', 'rs1_h1_val == 4', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000170]:SMALBB fp, fp, a2
	-[0x80000174]:sw fp, 32(t0)
Current Store : [0x80000178] : sw s1, 36(t0) -- Store: [0x80002234]:0xADFEEDBE




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rd : x24', 'rs2_h1_val == -21846', 'rs2_h0_val == -65', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000018c]:SMALBB s8, ra, a1
	-[0x80000190]:sw s8, 40(t0)
Current Store : [0x80000194] : sw s9, 44(t0) -- Store: [0x8000223c]:0xEDBEADFE




Last Coverpoint : ['rs1 : x9', 'rs2 : x15', 'rd : x26', 'rs2_h1_val == 21845', 'rs2_h0_val == -5', 'rs1_h1_val == -9', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800001a8]:SMALBB s10, s1, a5
	-[0x800001ac]:sw s10, 48(t0)
Current Store : [0x800001b0] : sw s11, 52(t0) -- Store: [0x80002244]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x6', 'rs2_h1_val == 32767', 'rs2_h0_val == -21846', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800001c0]:SMALBB t1, tp, s10
	-[0x800001c4]:sw t1, 56(t0)
Current Store : [0x800001c8] : sw t2, 60(t0) -- Store: [0x8000224c]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x2', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x800001d8]:SMALBB sp, t6, s9
	-[0x800001dc]:sw sp, 64(t0)
Current Store : [0x800001e0] : sw gp, 68(t0) -- Store: [0x80002254]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x18', 'rs2 : x0', 'rd : x12', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800001f0]:SMALBB a2, s2, zero
	-[0x800001f4]:sw a2, 72(t0)
Current Store : [0x800001f8] : sw a3, 76(t0) -- Store: [0x8000225c]:0xEADFEEDB




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x30', 'rs2_h1_val == -4097', 'rs2_h0_val == -1025', 'rs1_h1_val == 64', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000020c]:SMALBB t5, s4, t2
	-[0x80000210]:sw t5, 80(t0)
Current Store : [0x80000214] : sw t6, 84(t0) -- Store: [0x80002264]:0x0007FFF9




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x4', 'rs2_h1_val == -2049', 'rs2_h0_val == 8', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000230]:SMALBB tp, s10, t4
	-[0x80000234]:sw tp, 0(t2)
Current Store : [0x80000238] : sw t0, 4(t2) -- Store: [0x8000226c]:0x80002210




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x20', 'rs2_h1_val == -1025', 'rs2_h0_val == -2049', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000248]:SMALBB s4, a6, sp
	-[0x8000024c]:sw s4, 8(t2)
Current Store : [0x80000250] : sw s5, 12(t2) -- Store: [0x80002274]:0xDBEADFED




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x10', 'rs2_h1_val == -513', 'rs2_h0_val == 16', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000264]:SMALBB a0, t4, t6
	-[0x80000268]:sw a0, 16(t2)
Current Store : [0x8000026c] : sw a1, 20(t2) -- Store: [0x8000227c]:0xAAAAFFBF




Last Coverpoint : ['rs1 : x17', 'rs2 : x13', 'rd : x16', 'rs2_h1_val == -129', 'rs2_h0_val == -32768', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000027c]:SMALBB a6, a7, a3
	-[0x80000280]:sw a6, 24(t2)
Current Store : [0x80000284] : sw a7, 28(t2) -- Store: [0x80002284]:0x0006BFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x27', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -65', 'rs2_h0_val == 21845', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000298]:SMALBB a6, t1, s11
	-[0x8000029c]:sw a6, 32(t2)
Current Store : [0x800002a0] : sw a7, 36(t2) -- Store: [0x8000228c]:0x0006BFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rs2_h1_val == -33', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800002b4]:SMALBB s6, t0, t3
	-[0x800002b8]:sw s6, 40(t2)
Current Store : [0x800002bc] : sw s7, 44(t2) -- Store: [0x80002294]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x27', 'rs2 : x5', 'rs2_h1_val == -17', 'rs2_h0_val == -33', 'rs1_h1_val == -17', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800002d0]:SMALBB t3, s11, t0
	-[0x800002d4]:sw t3, 48(t2)
Current Store : [0x800002d8] : sw t4, 52(t2) -- Store: [0x8000229c]:0x20003FFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rs2_h1_val == -9', 'rs2_h0_val == -3', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800002ec]:SMALBB a6, t3, s4
	-[0x800002f0]:sw a6, 56(t2)
Current Store : [0x800002f4] : sw a7, 60(t2) -- Store: [0x800022a4]:0x0006BFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x9', 'rs2_h1_val == -5', 'rs2_h0_val == 256', 'rs1_h1_val == 4096', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000308]:SMALBB s4, s5, s1
	-[0x8000030c]:sw s4, 64(t2)
Current Store : [0x80000310] : sw s5, 68(t2) -- Store: [0x800022ac]:0x1000FEFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rs2_h1_val == -2', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000324]:SMALBB a2, zero, s7
	-[0x80000328]:sw a2, 72(t2)
Current Store : [0x8000032c] : sw a3, 76(t2) -- Store: [0x800022b4]:0xFF7F8000




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rs2_h1_val == -32768', 'rs2_h0_val == 32', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000340]:SMALBB s10, s6, t1
	-[0x80000344]:sw s10, 80(t2)
Current Store : [0x80000348] : sw s11, 84(t2) -- Store: [0x800022bc]:0xFFEFFFF7




Last Coverpoint : ['rs1 : x25', 'rs2 : x24', 'rs2_h1_val == 4096', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000035c]:SMALBB a2, s9, s8
	-[0x80000360]:sw a2, 88(t2)
Current Store : [0x80000364] : sw a3, 92(t2) -- Store: [0x800022c4]:0xFF7F8000




Last Coverpoint : ['rs1 : x30', 'rs2 : x16', 'rs2_h1_val == 2048', 'rs2_h0_val == -513', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000378]:SMALBB a0, t5, a6
	-[0x8000037c]:sw a0, 96(t2)
Current Store : [0x80000380] : sw a1, 100(t2) -- Store: [0x800022cc]:0xAAAAFFBF




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rs2_h1_val == 1024', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000394]:SMALBB t5, a1, a0
	-[0x80000398]:sw t5, 104(t2)
Current Store : [0x8000039c] : sw t6, 108(t2) -- Store: [0x800022d4]:0xFDFF0010




Last Coverpoint : ['rs1 : x13', 'rs2 : x18', 'rs2_h1_val == 512', 'rs1_h1_val == 2', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800003b0]:SMALBB tp, a3, s2
	-[0x800003b4]:sw tp, 112(t2)
Current Store : [0x800003b8] : sw t0, 116(t2) -- Store: [0x800022dc]:0xFFEFFFDF




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rs2_h1_val == 256', 'rs2_h0_val == 512', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800003cc]:SMALBB s4, s8, a7
	-[0x800003d0]:sw s4, 120(t2)
Current Store : [0x800003d4] : sw s5, 124(t2) -- Store: [0x800022e4]:0x1000FEFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x1', 'rs2_h1_val == 128', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800003e8]:SMALBB s4, gp, ra
	-[0x800003ec]:sw s4, 128(t2)
Current Store : [0x800003f0] : sw s5, 132(t2) -- Store: [0x800022ec]:0x1000FEFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000040c]:SMALBB tp, s7, gp
	-[0x80000410]:sw tp, 0(ra)
Current Store : [0x80000414] : sw t0, 4(ra) -- Store: [0x800022f4]:0xFFEFFFDF




Last Coverpoint : ['rs1 : x7', 'rs2 : x30', 'rs2_h1_val == 4', 'rs2_h0_val == -4097', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000428]:SMALBB fp, t2, t5
	-[0x8000042c]:sw fp, 8(ra)
Current Store : [0x80000430] : sw s1, 12(ra) -- Store: [0x800022fc]:0xFFFB0100




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000444]:SMALBB s6, a0, tp
	-[0x80000448]:sw s6, 16(ra)
Current Store : [0x8000044c] : sw s7, 20(ra) -- Store: [0x80002304]:0xAAAAFBFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x21', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000460]:SMALBB s8, a2, s5
	-[0x80000464]:sw s8, 24(ra)
Current Store : [0x80000468] : sw s9, 28(ra) -- Store: [0x8000230c]:0xF7FF0800




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000478]:SMALBB t5, t6, t4
	-[0x8000047c]:sw t5, 32(ra)
Current Store : [0x80000480] : sw t6, 36(ra) -- Store: [0x80002314]:0xAAAAFFEF




Last Coverpoint : ['rs1_h1_val == 16', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000490]:SMALBB t5, t6, t4
	-[0x80000494]:sw t5, 40(ra)
Current Store : [0x80000498] : sw t6, 44(ra) -- Store: [0x8000231c]:0x00101000




Last Coverpoint : ['rs1_h1_val == 8', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800004a8]:SMALBB t5, t6, t4
	-[0x800004ac]:sw t5, 48(ra)
Current Store : [0x800004b0] : sw t6, 52(ra) -- Store: [0x80002324]:0x000800FF




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800004c4]:SMALBB t5, t6, t4
	-[0x800004c8]:sw t5, 56(ra)
Current Store : [0x800004cc] : sw t6, 60(ra) -- Store: [0x8000232c]:0x02000080




Last Coverpoint : ['rs1_h1_val == -257', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800004e0]:SMALBB t5, t6, t4
	-[0x800004e4]:sw t5, 64(ra)
Current Store : [0x800004e8] : sw t6, 68(ra) -- Store: [0x80002334]:0xFEFF0040




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004fc]:SMALBB t5, t6, t4
	-[0x80000500]:sw t5, 72(ra)
Current Store : [0x80000504] : sw t6, 76(ra) -- Store: [0x8000233c]:0x80000020




Last Coverpoint : ['rs1_h1_val == 1024', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000514]:SMALBB t5, t6, t4
	-[0x80000518]:sw t5, 80(ra)
Current Store : [0x8000051c] : sw t6, 84(ra) -- Store: [0x80002344]:0x04000010




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000052c]:SMALBB t5, t6, t4
	-[0x80000530]:sw t5, 88(ra)
Current Store : [0x80000534] : sw t6, 92(ra) -- Store: [0x8000234c]:0x00030004




Last Coverpoint : ['opcode : smalbb', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -513', 'rs1_h1_val == 4096', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000548]:SMALBB t5, t6, t4
	-[0x8000054c]:sw t5, 96(ra)
Current Store : [0x80000550] : sw t6, 100(ra) -- Store: [0x80002354]:0x10000002




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000564]:SMALBB t5, t6, t4
	-[0x80000568]:sw t5, 104(ra)
Current Store : [0x8000056c] : sw t6, 108(ra) -- Store: [0x8000235c]:0xC0000001




Last Coverpoint : ['opcode : smalbb', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 1024', 'rs2_h0_val == -5', 'rs1_h1_val == 512', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000057c]:SMALBB t5, t6, t4
	-[0x80000580]:sw t5, 112(ra)
Current Store : [0x80000584] : sw t6, 116(ra) -- Store: [0x80002364]:0x02000000




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == 21845', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000594]:SMALBB t5, t6, t4
	-[0x80000598]:sw t5, 120(ra)
Current Store : [0x8000059c] : sw t6, 124(ra) -- Store: [0x8000236c]:0x5555FFFF




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == -17', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800005ac]:SMALBB t5, t6, t4
	-[0x800005b0]:sw t5, 128(ra)
Current Store : [0x800005b4] : sw t6, 132(ra) -- Store: [0x80002374]:0xFFDF0000




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800005c8]:SMALBB t5, t6, t4
	-[0x800005cc]:sw t5, 136(ra)
Current Store : [0x800005d0] : sw t6, 140(ra) -- Store: [0x8000237c]:0xFFEFFBFF




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800005e4]:SMALBB t5, t6, t4
	-[0x800005e8]:sw t5, 144(ra)
Current Store : [0x800005ec] : sw t6, 148(ra) -- Store: [0x80002384]:0xEFFF0080




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000600]:SMALBB t5, t6, t4
	-[0x80000604]:sw t5, 152(ra)
Current Store : [0x80000608] : sw t6, 156(ra) -- Store: [0x8000238c]:0x0040FFFA




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x8000061c]:SMALBB t5, t6, t4
	-[0x80000620]:sw t5, 160(ra)
Current Store : [0x80000624] : sw t6, 164(ra) -- Store: [0x80002394]:0xFFF6FFFF




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000638]:SMALBB t5, t6, t4
	-[0x8000063c]:sw t5, 168(ra)
Current Store : [0x80000640] : sw t6, 172(ra) -- Store: [0x8000239c]:0xFFF70003




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000654]:SMALBB t5, t6, t4
	-[0x80000658]:sw t5, 176(ra)
Current Store : [0x8000065c] : sw t6, 180(ra) -- Store: [0x800023a4]:0xBFFFAAAA




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000670]:SMALBB t5, t6, t4
	-[0x80000674]:sw t5, 184(ra)
Current Store : [0x80000678] : sw t6, 188(ra) -- Store: [0x800023ac]:0xFFFCFFF9




Last Coverpoint : ['opcode : smalbb', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -17', 'rs2_h0_val == 0', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000688]:SMALBB t5, t6, t4
	-[0x8000068c]:sw t5, 192(ra)
Current Store : [0x80000690] : sw t6, 196(ra) -- Store: [0x800023b4]:0xFFEFFFF6




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800006a4]:SMALBB t5, t6, t4
	-[0x800006a8]:sw t5, 200(ra)
Current Store : [0x800006ac] : sw t6, 204(ra) -- Store: [0x800023bc]:0x0007FFFE




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800006c0]:SMALBB t5, t6, t4
	-[0x800006c4]:sw t5, 208(ra)
Current Store : [0x800006c8] : sw t6, 212(ra) -- Store: [0x800023c4]:0x7FFFFFFF




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800006dc]:SMALBB t5, t6, t4
	-[0x800006e0]:sw t5, 216(ra)
Current Store : [0x800006e4] : sw t6, 220(ra) -- Store: [0x800023cc]:0xFF7FFFF6




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800006f8]:SMALBB t5, t6, t4
	-[0x800006fc]:sw t5, 224(ra)
Current Store : [0x80000700] : sw t6, 228(ra) -- Store: [0x800023d4]:0xFFFBFFFD




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000710]:SMALBB t5, t6, t4
	-[0x80000714]:sw t5, 232(ra)
Current Store : [0x80000718] : sw t6, 236(ra) -- Store: [0x800023dc]:0x10008001




Last Coverpoint : ['opcode : smalbb', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs2_h0_val == 128', 'rs1_h1_val == -3', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000072c]:SMALBB t5, t6, t4
	-[0x80000730]:sw t5, 240(ra)
Current Store : [0x80000734] : sw t6, 244(ra) -- Store: [0x800023e4]:0xFFFD0001




Last Coverpoint : ['rs1_h1_val == -2', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000748]:SMALBB t5, t6, t4
	-[0x8000074c]:sw t5, 248(ra)
Current Store : [0x80000750] : sw t6, 252(ra) -- Store: [0x800023ec]:0xFFFEEFFF




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000764]:SMALBB t5, t6, t4
	-[0x80000768]:sw t5, 256(ra)
Current Store : [0x8000076c] : sw t6, 260(ra) -- Store: [0x800023f4]:0xFFF8FFF8




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000780]:SMALBB t5, t6, t4
	-[0x80000784]:sw t5, 264(ra)
Current Store : [0x80000788] : sw t6, 268(ra) -- Store: [0x800023fc]:0x0800FBFF




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x8000079c]:SMALBB t5, t6, t4
	-[0x800007a0]:sw t5, 272(ra)
Current Store : [0x800007a4] : sw t6, 276(ra) -- Store: [0x80002404]:0xDFFFFFFB




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800007b8]:SMALBB t5, t6, t4
	-[0x800007bc]:sw t5, 280(ra)
Current Store : [0x800007c0] : sw t6, 284(ra) -- Store: [0x8000240c]:0xFEFF0009




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800007d4]:SMALBB t5, t6, t4
	-[0x800007d8]:sw t5, 288(ra)
Current Store : [0x800007dc] : sw t6, 292(ra) -- Store: [0x80002414]:0x01000800




Last Coverpoint : ['opcode : smalbb', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs1_h1_val == -3', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800007f0]:SMALBB t5, t6, t4
	-[0x800007f4]:sw t5, 296(ra)
Current Store : [0x800007f8] : sw t6, 300(ra) -- Store: [0x8000241c]:0xFFFD0800




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000808]:SMALBB t5, t6, t4
	-[0x8000080c]:sw t5, 304(ra)
Current Store : [0x80000810] : sw t6, 308(ra) -- Store: [0x80002424]:0x0080FEFF




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000824]:SMALBB t5, t6, t4
	-[0x80000828]:sw t5, 312(ra)
Current Store : [0x8000082c] : sw t6, 316(ra) -- Store: [0x8000242c]:0xFFBF0100




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000840]:SMALBB t5, t6, t4
	-[0x80000844]:sw t5, 320(ra)
Current Store : [0x80000848] : sw t6, 324(ra) -- Store: [0x80002434]:0x00800008




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000085c]:SMALBB t5, t6, t4
	-[0x80000860]:sw t5, 328(ra)
Current Store : [0x80000864] : sw t6, 332(ra) -- Store: [0x8000243c]:0xF7FFAAAA




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000874]:SMALBB t5, t6, t4
	-[0x80000878]:sw t5, 336(ra)
Current Store : [0x8000087c] : sw t6, 340(ra) -- Store: [0x80002444]:0xFFFFFFFF




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000890]:SMALBB t5, t6, t4
	-[0x80000894]:sw t5, 344(ra)
Current Store : [0x80000898] : sw t6, 348(ra) -- Store: [0x8000244c]:0x00075555




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008ac]:SMALBB t5, t6, t4
	-[0x800008b0]:sw t5, 352(ra)
Current Store : [0x800008b4] : sw t6, 356(ra) -- Store: [0x80002454]:0xFFBF7FFF




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800008c8]:SMALBB t5, t6, t4
	-[0x800008cc]:sw t5, 360(ra)
Current Store : [0x800008d0] : sw t6, 364(ra) -- Store: [0x8000245c]:0x0004FFFA




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800008e4]:SMALBB t5, t6, t4
	-[0x800008e8]:sw t5, 368(ra)
Current Store : [0x800008ec] : sw t6, 372(ra) -- Store: [0x80002464]:0x4000DFFF




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x800008fc]:SMALBB t5, t6, t4
	-[0x80000900]:sw t5, 376(ra)
Current Store : [0x80000904] : sw t6, 380(ra) -- Store: [0x8000246c]:0xFDFFC000





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

|s.no|        signature         |                                                                                                                                                               coverpoints                                                                                                                                                                |                                code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFD2000|- opcode : smalbb<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -3<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8192<br> |[0x80000108]:SMALBB a4, a4, a4<br> [0x8000010c]:sw a4, 0(t0)<br>    |
|   2|[0x80002218]<br>0xDF56FF76|- rs1 : x19<br> - rs2 : x19<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 2<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 2<br>                                                                                                                             |[0x80000124]:SMALBB s2, s3, s3<br> [0x80000128]:sw s2, 8(t0)<br>    |
|   3|[0x80002220]<br>0xDDB7D5BF|- rs1 : x2<br> - rs2 : x8<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br> - rs1_h1_val == -16385<br>                                                                                                                     |[0x80000138]:SMALBB t3, sp, fp<br> [0x8000013c]:sw t3, 16(t0)<br>   |
|   4|[0x80002228]<br>0xFFF6FF7F|- rs1 : x15<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -129<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 512<br>                                                                                                                  |[0x80000154]:SMALBB s6, a5, s6<br> [0x80000158]:sw s6, 24(t0)<br>   |
|   5|[0x80002230]<br>0x0004FFDF|- rs1 : x8<br> - rs2 : x12<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 4<br> - rs1_h0_val == -33<br>                                                                                     |[0x80000170]:SMALBB fp, fp, a2<br> [0x80000174]:sw fp, 32(t0)<br>   |
|   6|[0x80002238]<br>0xDB7D5BFD|- rs1 : x1<br> - rs2 : x11<br> - rd : x24<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -65<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                  |[0x8000018c]:SMALBB s8, ra, a1<br> [0x80000190]:sw s8, 40(t0)<br>   |
|   7|[0x80002240]<br>0x76DF56FF|- rs1 : x9<br> - rs2 : x15<br> - rd : x26<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -5<br> - rs1_h1_val == -9<br> - rs1_h0_val == -5<br>                                                                                                                                                                                              |[0x800001a8]:SMALBB s10, s1, a5<br> [0x800001ac]:sw s10, 48(t0)<br> |
|   8|[0x80002248]<br>0x80002000|- rs1 : x4<br> - rs2 : x26<br> - rd : x6<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                 |[0x800001c0]:SMALBB t1, tp, s10<br> [0x800001c4]:sw t1, 56(t0)<br>  |
|   9|[0x80002250]<br>0xBFFF2000|- rs1 : x31<br> - rs2 : x25<br> - rd : x2<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                  |[0x800001d8]:SMALBB sp, t6, s9<br> [0x800001dc]:sw sp, 64(t0)<br>   |
|  10|[0x80002258]<br>0xFEFFBFFF|- rs1 : x18<br> - rs2 : x0<br> - rd : x12<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                        |[0x800001f0]:SMALBB a2, s2, zero<br> [0x800001f4]:sw a2, 72(t0)<br> |
|  11|[0x80002260]<br>0xF76DF56F|- rs1 : x20<br> - rs2 : x7<br> - rd : x30<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 64<br> - rs1_h0_val == -3<br>                                                                                                                                                                                           |[0x8000020c]:SMALBB t5, s4, t2<br> [0x80000210]:sw t5, 80(t0)<br>   |
|  12|[0x80002268]<br>0x02002000|- rs1 : x26<br> - rs2 : x29<br> - rd : x4<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 8<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                       |[0x80000230]:SMALBB tp, s10, t4<br> [0x80000234]:sw tp, 0(t2)<br>   |
|  13|[0x80002270]<br>0x0040FFFD|- rs1 : x16<br> - rs2 : x2<br> - rd : x20<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -2049<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                               |[0x80000248]:SMALBB s4, a6, sp<br> [0x8000024c]:sw s4, 8(t2)<br>    |
|  14|[0x80002278]<br>0x56FF76DF|- rs1 : x29<br> - rs2 : x31<br> - rd : x10<br> - rs2_h1_val == -513<br> - rs2_h0_val == 16<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                   |[0x80000264]:SMALBB a0, t4, t6<br> [0x80000268]:sw a0, 16(t2)<br>   |
|  15|[0x80002280]<br>0xAAAA4000|- rs1 : x17<br> - rs2 : x13<br> - rd : x16<br> - rs2_h1_val == -129<br> - rs2_h0_val == -32768<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                             |[0x8000027c]:SMALBB a6, a7, a3<br> [0x80000280]:sw a6, 24(t2)<br>   |
|  16|[0x80002288]<br>0xAAAA4000|- rs1 : x6<br> - rs2 : x27<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -65<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                       |[0x80000298]:SMALBB a6, t1, s11<br> [0x8000029c]:sw a6, 32(t2)<br>  |
|  17|[0x80002290]<br>0xFFF6FF7F|- rs1 : x5<br> - rs2 : x28<br> - rs2_h1_val == -33<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                          |[0x800002b4]:SMALBB s6, t0, t3<br> [0x800002b8]:sw s6, 40(t2)<br>   |
|  18|[0x80002298]<br>0xFFDF0009|- rs1 : x27<br> - rs2 : x5<br> - rs2_h1_val == -17<br> - rs2_h0_val == -33<br> - rs1_h1_val == -17<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                             |[0x800002d0]:SMALBB t3, s11, t0<br> [0x800002d4]:sw t3, 48(t2)<br>  |
|  19|[0x800022a0]<br>0xAAAA4000|- rs1 : x28<br> - rs2 : x20<br> - rs2_h1_val == -9<br> - rs2_h0_val == -3<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                      |[0x800002ec]:SMALBB a6, t3, s4<br> [0x800002f0]:sw a6, 56(t2)<br>   |
|  20|[0x800022a8]<br>0xFFF7FFFD|- rs1 : x21<br> - rs2 : x9<br> - rs2_h1_val == -5<br> - rs2_h0_val == 256<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                           |[0x80000308]:SMALBB s4, s5, s1<br> [0x8000030c]:sw s4, 64(t2)<br>   |
|  21|[0x800022b0]<br>0xFEFFBFFF|- rs1 : x0<br> - rs2 : x23<br> - rs2_h1_val == -2<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                         |[0x80000324]:SMALBB a2, zero, s7<br> [0x80000328]:sw a2, 72(t2)<br> |
|  22|[0x800022b8]<br>0x00010005|- rs1 : x22<br> - rs2 : x6<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 32<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                 |[0x80000340]:SMALBB s10, s6, t1<br> [0x80000344]:sw s10, 80(t2)<br> |
|  23|[0x800022c0]<br>0xFEFFBFFF|- rs1 : x25<br> - rs2 : x24<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                        |[0x8000035c]:SMALBB a2, s9, s8<br> [0x80000360]:sw a2, 88(t2)<br>   |
|  24|[0x800022c8]<br>0x56FF76DF|- rs1 : x30<br> - rs2 : x16<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -513<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                               |[0x80000378]:SMALBB a0, t5, a6<br> [0x8000037c]:sw a0, 96(t2)<br>   |
|  25|[0x800022d0]<br>0x0001F7FF|- rs1 : x11<br> - rs2 : x10<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                            |[0x80000394]:SMALBB t5, a1, a0<br> [0x80000398]:sw t5, 104(t2)<br>  |
|  26|[0x800022d8]<br>0x02002000|- rs1 : x13<br> - rs2 : x18<br> - rs2_h1_val == 512<br> - rs1_h1_val == 2<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                    |[0x800003b0]:SMALBB tp, a3, s2<br> [0x800003b4]:sw tp, 112(t2)<br>  |
|  27|[0x800022e0]<br>0xFFF7FFFD|- rs1 : x24<br> - rs2 : x17<br> - rs2_h1_val == 256<br> - rs2_h0_val == 512<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                    |[0x800003cc]:SMALBB s4, s8, a7<br> [0x800003d0]:sw s4, 120(t2)<br>  |
|  28|[0x800022e8]<br>0xFFF7FFFD|- rs1 : x3<br> - rs2 : x1<br> - rs2_h1_val == 128<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                           |[0x800003e8]:SMALBB s4, gp, ra<br> [0x800003ec]:sw s4, 128(t2)<br>  |
|  29|[0x800022f0]<br>0x02002000|- rs1 : x23<br> - rs2 : x3<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                  |[0x8000040c]:SMALBB tp, s7, gp<br> [0x80000410]:sw tp, 0(ra)<br>    |
|  30|[0x800022f8]<br>0x0004FFDF|- rs1 : x7<br> - rs2 : x30<br> - rs2_h1_val == 4<br> - rs2_h0_val == -4097<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                   |[0x80000428]:SMALBB fp, t2, t5<br> [0x8000042c]:sw fp, 8(ra)<br>    |
|  31|[0x80002300]<br>0x20000800|- rs1 : x10<br> - rs2 : x4<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                   |[0x80000444]:SMALBB s6, a0, tp<br> [0x80000448]:sw s6, 16(ra)<br>   |
|  32|[0x80002308]<br>0x0020FFFE|- rs1 : x12<br> - rs2 : x21<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                   |[0x80000460]:SMALBB s8, a2, s5<br> [0x80000464]:sw s8, 24(ra)<br>   |
|  33|[0x80002310]<br>0x0004EFFF|- rs2_h0_val == 16384<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                         |[0x80000478]:SMALBB t5, t6, t4<br> [0x8000047c]:sw t5, 32(ra)<br>   |
|  34|[0x80002318]<br>0x0004EFFF|- rs1_h1_val == 16<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                           |[0x80000490]:SMALBB t5, t6, t4<br> [0x80000494]:sw t5, 40(ra)<br>   |
|  35|[0x80002320]<br>0x0004EFFF|- rs1_h1_val == 8<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                             |[0x800004a8]:SMALBB t5, t6, t4<br> [0x800004ac]:sw t5, 48(ra)<br>   |
|  36|[0x80002328]<br>0x0004EFFF|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                   |[0x800004c4]:SMALBB t5, t6, t4<br> [0x800004c8]:sw t5, 56(ra)<br>   |
|  37|[0x80002330]<br>0x0004EFFF|- rs1_h1_val == -257<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                           |[0x800004e0]:SMALBB t5, t6, t4<br> [0x800004e4]:sw t5, 64(ra)<br>   |
|  38|[0x80002338]<br>0x0004EFFF|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                    |[0x800004fc]:SMALBB t5, t6, t4<br> [0x80000500]:sw t5, 72(ra)<br>   |
|  39|[0x80002340]<br>0x0004EFFF|- rs1_h1_val == 1024<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                           |[0x80000514]:SMALBB t5, t6, t4<br> [0x80000518]:sw t5, 80(ra)<br>   |
|  40|[0x80002348]<br>0x0004EFFF|- rs2_h0_val == 4096<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                            |[0x8000052c]:SMALBB t5, t6, t4<br> [0x80000530]:sw t5, 88(ra)<br>   |
|  41|[0x80002358]<br>0x0004EFFF|- rs2_h0_val == 64<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000564]:SMALBB t5, t6, t4<br> [0x80000568]:sw t5, 104(ra)<br>  |
|  42|[0x80002368]<br>0x0004EFFF|- rs2_h1_val == 32<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                   |[0x80000594]:SMALBB t5, t6, t4<br> [0x80000598]:sw t5, 120(ra)<br>  |
|  43|[0x80002370]<br>0x0004EFFF|- rs2_h1_val == 64<br> - rs2_h0_val == -17<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                    |[0x800005ac]:SMALBB t5, t6, t4<br> [0x800005b0]:sw t5, 128(ra)<br>  |
|  44|[0x80002378]<br>0x0004EFFF|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                    |[0x800005c8]:SMALBB t5, t6, t4<br> [0x800005cc]:sw t5, 136(ra)<br>  |
|  45|[0x80002380]<br>0x0004EFFF|- rs2_h0_val == -2<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                          |[0x800005e4]:SMALBB t5, t6, t4<br> [0x800005e8]:sw t5, 144(ra)<br>  |
|  46|[0x80002388]<br>0x0004EFFF|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                  |[0x80000600]:SMALBB t5, t6, t4<br> [0x80000604]:sw t5, 152(ra)<br>  |
|  47|[0x80002390]<br>0x0004EFFF|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                  |[0x8000061c]:SMALBB t5, t6, t4<br> [0x80000620]:sw t5, 160(ra)<br>  |
|  48|[0x80002398]<br>0x0004EFFF|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                   |[0x80000638]:SMALBB t5, t6, t4<br> [0x8000063c]:sw t5, 168(ra)<br>  |
|  49|[0x800023a0]<br>0x0004EFFF|- rs2_h0_val == 4<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                          |[0x80000654]:SMALBB t5, t6, t4<br> [0x80000658]:sw t5, 176(ra)<br>  |
|  50|[0x800023a8]<br>0x0004EFFF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                     |[0x80000670]:SMALBB t5, t6, t4<br> [0x80000674]:sw t5, 184(ra)<br>  |
|  51|[0x800023b8]<br>0x0004EFFF|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                    |[0x800006a4]:SMALBB t5, t6, t4<br> [0x800006a8]:sw t5, 200(ra)<br>  |
|  52|[0x800023c0]<br>0x0004EFFF|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                 |[0x800006c0]:SMALBB t5, t6, t4<br> [0x800006c4]:sw t5, 208(ra)<br>  |
|  53|[0x800023c8]<br>0x0004EFFF|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                  |[0x800006dc]:SMALBB t5, t6, t4<br> [0x800006e0]:sw t5, 216(ra)<br>  |
|  54|[0x800023d0]<br>0x0004EFFF|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                    |[0x800006f8]:SMALBB t5, t6, t4<br> [0x800006fc]:sw t5, 224(ra)<br>  |
|  55|[0x800023d8]<br>0x0004EFFF|- rs1_h0_val == -32768<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                       |[0x80000710]:SMALBB t5, t6, t4<br> [0x80000714]:sw t5, 232(ra)<br>  |
|  56|[0x800023e8]<br>0x0004EFFF|- rs1_h1_val == -2<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                          |[0x80000748]:SMALBB t5, t6, t4<br> [0x8000074c]:sw t5, 248(ra)<br>  |
|  57|[0x800023f0]<br>0x0004EFFF|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                     |[0x80000764]:SMALBB t5, t6, t4<br> [0x80000768]:sw t5, 256(ra)<br>  |
|  58|[0x800023f8]<br>0x0004EFFF|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                  |[0x80000780]:SMALBB t5, t6, t4<br> [0x80000784]:sw t5, 264(ra)<br>  |
|  59|[0x80002400]<br>0x0004EFFF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                     |[0x8000079c]:SMALBB t5, t6, t4<br> [0x800007a0]:sw t5, 272(ra)<br>  |
|  60|[0x80002408]<br>0x0004EFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                     |[0x800007b8]:SMALBB t5, t6, t4<br> [0x800007bc]:sw t5, 280(ra)<br>  |
|  61|[0x80002410]<br>0x0004EFFF|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                   |[0x800007d4]:SMALBB t5, t6, t4<br> [0x800007d8]:sw t5, 288(ra)<br>  |
|  62|[0x80002420]<br>0x0004EFFF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                   |[0x80000808]:SMALBB t5, t6, t4<br> [0x8000080c]:sw t5, 304(ra)<br>  |
|  63|[0x80002428]<br>0x0004EFFF|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                    |[0x80000824]:SMALBB t5, t6, t4<br> [0x80000828]:sw t5, 312(ra)<br>  |
|  64|[0x80002430]<br>0x0004EFFF|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                 |[0x80000840]:SMALBB t5, t6, t4<br> [0x80000844]:sw t5, 320(ra)<br>  |
|  65|[0x80002438]<br>0x0004EFFF|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                 |[0x8000085c]:SMALBB t5, t6, t4<br> [0x80000860]:sw t5, 328(ra)<br>  |
|  66|[0x80002440]<br>0x0004EFFF|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                    |[0x80000874]:SMALBB t5, t6, t4<br> [0x80000878]:sw t5, 336(ra)<br>  |
|  67|[0x80002448]<br>0x0004EFFF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                 |[0x80000890]:SMALBB t5, t6, t4<br> [0x80000894]:sw t5, 344(ra)<br>  |
|  68|[0x80002450]<br>0x0004EFFF|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                 |[0x800008ac]:SMALBB t5, t6, t4<br> [0x800008b0]:sw t5, 352(ra)<br>  |
|  69|[0x80002458]<br>0x0004EFFF|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                    |[0x800008c8]:SMALBB t5, t6, t4<br> [0x800008cc]:sw t5, 360(ra)<br>  |
|  70|[0x80002460]<br>0x0004EFFF|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                 |[0x800008e4]:SMALBB t5, t6, t4<br> [0x800008e8]:sw t5, 368(ra)<br>  |
|  71|[0x80002468]<br>0x0004EFFF|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                 |[0x800008fc]:SMALBB t5, t6, t4<br> [0x80000900]:sw t5, 376(ra)<br>  |
