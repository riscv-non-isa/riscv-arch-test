
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
| COV_LABELS                | smulx16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smulx16-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 148      |
| STAT1                     | 71      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 74     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000598]:SMULX16 t5, t6, t4
      [0x8000059c]:sw t5, 152(tp)
 -- Signature Address: 0x80002368 Data: 0x00060080
 -- Redundant Coverpoints hit by the op
      - opcode : smulx16
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -129
      - rs1_h1_val == 64
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000798]:SMULX16 t5, t6, t4
      [0x8000079c]:sw t5, 304(tp)
 -- Signature Address: 0x80002400 Data: 0x00060080
 -- Redundant Coverpoints hit by the op
      - opcode : smulx16
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 8192
      - rs1_h1_val == -33




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a8]:SMULX16 t5, t6, t4
      [0x800008ac]:sw t5, 384(tp)
 -- Signature Address: 0x80002450 Data: 0x00060080
 -- Redundant Coverpoints hit by the op
      - opcode : smulx16
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs1_h0_val == -513






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smulx16', 'rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 128', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000010c]:SMULX16 t5, t5, t5
	-[0x80000110]:sw t5, 0(ra)
Current Store : [0x80000114] : sw t6, 4(ra) -- Store: [0x80002214]:0x00000300




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x4', 'rs1 == rs2 != rd', 'rs1_h0_val < 0 and rs2_h0_val < 0']
Last Code Sequence : 
	-[0x80000128]:SMULX16 tp, t1, t1
	-[0x8000012c]:sw tp, 8(ra)
Current Store : [0x80000130] : sw t0, 12(ra) -- Store: [0x8000221c]:0xFFFFFFD6




Last Coverpoint : ['rs1 : x22', 'rs2 : x26', 'rd : x20', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000140]:SMULX16 s4, s6, s10
	-[0x80000144]:sw s4, 16(ra)
Current Store : [0x80000148] : sw s5, 20(ra) -- Store: [0x80002224]:0xFFFB000A




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h1_val == -2', 'rs1_h1_val == -5', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000015c]:SMULX16 a6, s7, a6
	-[0x80000160]:sw a6, 24(ra)
Current Store : [0x80000164] : sw a7, 28(ra) -- Store: [0x8000222c]:0x00000032




Last Coverpoint : ['rs1 : x2', 'rs2 : x25', 'rd : x2', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -5', 'rs2_h0_val == -2049', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000178]:SMULX16 sp, sp, s9
	-[0x8000017c]:sw sp, 32(ra)
Current Store : [0x80000180] : sw gp, 36(ra) -- Store: [0x80002234]:0xFFFF7FF0




Last Coverpoint : ['rs1 : x8', 'rs2 : x2', 'rd : x12', 'rs2_h1_val == 128', 'rs2_h0_val == -4097', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000194]:SMULX16 a2, fp, sp
	-[0x80000198]:sw a2, 40(ra)
Current Store : [0x8000019c] : sw a3, 44(ra) -- Store: [0x8000223c]:0xFFFF9FFA




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x14', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -5', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800001b0]:SMULX16 a4, s1, a0
	-[0x800001b4]:sw a4, 48(ra)
Current Store : [0x800001b8] : sw a5, 52(ra) -- Store: [0x80002244]:0xFFFFFB00




Last Coverpoint : ['rs1 : x14', 'rs2 : x28', 'rd : x8', 'rs2_h1_val == 4096', 'rs2_h0_val == 512', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800001cc]:SMULX16 fp, a4, t3
	-[0x800001d0]:sw fp, 56(ra)
Current Store : [0x800001d4] : sw s1, 60(ra) -- Store: [0x8000224c]:0x00000E00




Last Coverpoint : ['rs1 : x3', 'rs2 : x13', 'rd : x10', 'rs2_h1_val == -21846', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x800001e8]:SMULX16 a0, gp, a3
	-[0x800001ec]:sw a0, 64(ra)
Current Store : [0x800001f0] : sw a1, 68(ra) -- Store: [0x80002254]:0xFFFE0002




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x26', 'rs2_h1_val == 21845', 'rs2_h0_val == -2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000204]:SMULX16 s10, tp, a2
	-[0x80000208]:sw s10, 72(ra)
Current Store : [0x8000020c] : sw s11, 76(ra) -- Store: [0x8000225c]:0xFFFFFFFA




Last Coverpoint : ['rs1 : x18', 'rs2 : x7', 'rd : x6', 'rs2_h1_val == 32767', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000220]:SMULX16 t1, s2, t2
	-[0x80000224]:sw t1, 80(ra)
Current Store : [0x80000228] : sw t2, 84(ra) -- Store: [0x80002264]:0x00000005




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x18', 'rs2_h1_val == -16385', 'rs2_h0_val == -3', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000244]:SMULX16 s2, s9, t0
	-[0x80000248]:sw s2, 0(ra)
Current Store : [0x8000024c] : sw s3, 4(ra) -- Store: [0x8000226c]:0x0000001E




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x28', 'rs2_h1_val == -8193', 'rs2_h0_val == -129', 'rs1_h1_val == 8192', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000260]:SMULX16 t3, a5, s5
	-[0x80000264]:sw t3, 8(ra)
Current Store : [0x80000268] : sw t4, 12(ra) -- Store: [0x80002274]:0xFFEFE000




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rd : x22', 'rs2_h1_val == -4097', 'rs2_h0_val == 8', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000027c]:SMULX16 s6, a7, s8
	-[0x80000280]:sw s6, 16(ra)
Current Store : [0x80000284] : sw s7, 20(ra) -- Store: [0x8000227c]:0xFFFFBFF8




Last Coverpoint : ['rs1 : x12', 'rs2 : x27', 'rd : x24', 'rs2_h1_val == -2049', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000298]:SMULX16 s8, a2, s11
	-[0x8000029c]:sw s8, 24(ra)
Current Store : [0x800002a0] : sw s9, 28(ra) -- Store: [0x80002284]:0xFFFFF7FF




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rs2_h1_val == -1025', 'rs2_h0_val == 2', 'rs1_h1_val == -3', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800002b4]:SMULX16 s4, a3, t4
	-[0x800002b8]:sw s4, 32(ra)
Current Store : [0x800002bc] : sw s5, 36(ra) -- Store: [0x8000228c]:0xFFFFFFFA




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rs2_h1_val == -513', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800002d0]:SMULX16 a6, a0, s3
	-[0x800002d4]:sw a6, 40(ra)
Current Store : [0x800002d8] : sw a7, 44(ra) -- Store: [0x80002294]:0xFBFFD001




Last Coverpoint : ['rs1 : x26', 'rs2 : x17', 'rs2_h1_val == -257', 'rs2_h0_val == -9', 'rs1_h1_val == 0', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800002ec]:SMULX16 s8, s10, a7
	-[0x800002f0]:sw s8, 48(ra)
Current Store : [0x800002f4] : sw s9, 52(ra) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x18', 'rs2_h1_val == -129', 'rs2_h0_val == 1', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000308]:SMULX16 s4, t0, s2
	-[0x8000030c]:sw s4, 56(ra)
Current Store : [0x80000310] : sw s5, 60(ra) -- Store: [0x800022a4]:0xFFFFFFEF




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rs2_h1_val == -65', 'rs2_h0_val == 4096', 'rs1_h1_val == 64', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000031c]:SMULX16 s6, a6, gp
	-[0x80000320]:sw s6, 64(ra)
Current Store : [0x80000324] : sw s7, 68(ra) -- Store: [0x800022ac]:0x00040000




Last Coverpoint : ['rs1 : x24', 'rs2 : x11', 'rs2_h1_val == -33', 'rs1_h1_val == 32', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000338]:SMULX16 tp, s8, a1
	-[0x8000033c]:sw tp, 72(ra)
Current Store : [0x80000340] : sw t0, 76(ra) -- Store: [0x800022b4]:0xFFFEFFE0




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rs2_h1_val == -17', 'rs2_h0_val == -1', 'rs1_h1_val == 16384', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000354]:SMULX16 t1, s3, tp
	-[0x80000358]:sw t1, 80(ra)
Current Store : [0x8000035c] : sw t2, 84(ra) -- Store: [0x800022bc]:0xFFFFC000




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000370]:SMULX16 a2, t4, zero
	-[0x80000374]:sw a2, 88(ra)
Current Store : [0x80000378] : sw a3, 92(ra) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rs2_h1_val == -3', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000038c]:SMULX16 sp, zero, fp
	-[0x80000390]:sw sp, 96(ra)
Current Store : [0x80000394] : sw gp, 100(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rs2_h1_val == -32768', 'rs2_h0_val == 8192', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800003ac]:SMULX16 s2, t2, s7
	-[0x800003b0]:sw s2, 0(tp)
Current Store : [0x800003b4] : sw s3, 4(tp) -- Store: [0x800022d4]:0xF8000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x31', 'rs2_h1_val == 16384', 'rs1_h1_val == 128', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800003c8]:SMULX16 t1, s5, t6
	-[0x800003cc]:sw t1, 8(tp)
Current Store : [0x800003d0] : sw t2, 12(tp) -- Store: [0x800022dc]:0xFFFFFF00




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rs1_h0_val == -32768', 'rs2_h1_val == 8192', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800003e0]:SMULX16 sp, t3, s4
	-[0x800003e4]:sw sp, 16(tp)
Current Store : [0x800003e8] : sw gp, 20(tp) -- Store: [0x800022e4]:0xFDFF8401




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800003f8]:SMULX16 s6, ra, a5
	-[0x800003fc]:sw s6, 24(tp)
Current Store : [0x80000400] : sw s7, 28(tp) -- Store: [0x800022ec]:0x04000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x22', 'rs2_h1_val == 1024', 'rs2_h0_val == 256', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000414]:SMULX16 s8, s4, s6
	-[0x80000418]:sw s8, 32(tp)
Current Store : [0x8000041c] : sw s9, 36(tp) -- Store: [0x800022f4]:0xFFFFEF00




Last Coverpoint : ['rs1 : x31', 'rs2 : x9', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x8000042c]:SMULX16 a6, t6, s1
	-[0x80000430]:sw a6, 40(tp)
Current Store : [0x80000434] : sw a7, 44(tp) -- Store: [0x800022fc]:0xFFFF6000




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rs2_h1_val == 256', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000444]:SMULX16 a4, s11, ra
	-[0x80000448]:sw a4, 48(tp)
Current Store : [0x8000044c] : sw a5, 52(tp) -- Store: [0x80002304]:0xFFFFFFD0




Last Coverpoint : ['rs1 : x11', 'rs2 : x14', 'rs2_h0_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000045c]:SMULX16 t1, a1, a4
	-[0x80000460]:sw t1, 56(tp)
Current Store : [0x80000464] : sw t2, 60(tp) -- Store: [0x8000230c]:0x00040000




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == -17', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000478]:SMULX16 t5, t6, t4
	-[0x8000047c]:sw t5, 64(tp)
Current Store : [0x80000480] : sw t6, 68(tp) -- Store: [0x80002314]:0xFFFFEF00




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000490]:SMULX16 t5, t6, t4
	-[0x80000494]:sw t5, 72(tp)
Current Store : [0x80000498] : sw t6, 76(tp) -- Store: [0x8000231c]:0x00009000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == 512', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004ac]:SMULX16 t5, t6, t4
	-[0x800004b0]:sw t5, 80(tp)
Current Store : [0x800004b4] : sw t6, 84(tp) -- Store: [0x80002324]:0x00000800




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800004c4]:SMULX16 t5, t6, t4
	-[0x800004c8]:sw t5, 88(tp)
Current Store : [0x800004cc] : sw t6, 92(tp) -- Store: [0x8000232c]:0xE0000000




Last Coverpoint : ['rs1_h1_val == -2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004d8]:SMULX16 t5, t6, t4
	-[0x800004dc]:sw t5, 96(tp)
Current Store : [0x800004e0] : sw t6, 100(tp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800004f4]:SMULX16 t5, t6, t4
	-[0x800004f8]:sw t5, 104(tp)
Current Store : [0x800004fc] : sw t6, 108(tp) -- Store: [0x8000233c]:0xFFDFFE00




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h1_val == -16385', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000510]:SMULX16 t5, t6, t4
	-[0x80000514]:sw t5, 112(tp)
Current Store : [0x80000518] : sw t6, 116(tp) -- Store: [0x80002344]:0x00804201




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x8000052c]:SMULX16 t5, t6, t4
	-[0x80000530]:sw t5, 120(tp)
Current Store : [0x80000534] : sw t6, 124(tp) -- Store: [0x8000234c]:0xFFFBFE00




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000548]:SMULX16 t5, t6, t4
	-[0x8000054c]:sw t5, 128(tp)
Current Store : [0x80000550] : sw t6, 132(tp) -- Store: [0x80002354]:0x00000070




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000564]:SMULX16 t5, t6, t4
	-[0x80000568]:sw t5, 136(tp)
Current Store : [0x8000056c] : sw t6, 140(tp) -- Store: [0x8000235c]:0xFDFFF800




Last Coverpoint : ['rs1_h1_val == -129', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000580]:SMULX16 t5, t6, t4
	-[0x80000584]:sw t5, 144(tp)
Current Store : [0x80000588] : sw t6, 148(tp) -- Store: [0x80002364]:0xFFFFFCFA




Last Coverpoint : ['opcode : smulx16', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -129', 'rs1_h1_val == 64', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000598]:SMULX16 t5, t6, t4
	-[0x8000059c]:sw t5, 152(tp)
Current Store : [0x800005a0] : sw t6, 156(tp) -- Store: [0x8000236c]:0xFFFFFE00




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800005b4]:SMULX16 t5, t6, t4
	-[0x800005b8]:sw t5, 160(tp)
Current Store : [0x800005bc] : sw t6, 164(tp) -- Store: [0x80002374]:0x001FFF80




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -65', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800005d0]:SMULX16 t5, t6, t4
	-[0x800005d4]:sw t5, 168(tp)
Current Store : [0x800005d8] : sw t6, 172(tp) -- Store: [0x8000237c]:0x00000104




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800005ec]:SMULX16 t5, t6, t4
	-[0x800005f0]:sw t5, 176(tp)
Current Store : [0x800005f4] : sw t6, 180(tp) -- Store: [0x80002384]:0xFFFFFF00




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000608]:SMULX16 t5, t6, t4
	-[0x8000060c]:sw t5, 184(tp)
Current Store : [0x80000610] : sw t6, 188(tp) -- Store: [0x8000238c]:0x00020000




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000620]:SMULX16 t5, t6, t4
	-[0x80000624]:sw t5, 192(tp)
Current Store : [0x80000628] : sw t6, 196(tp) -- Store: [0x80002394]:0xFFFFE800




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000063c]:SMULX16 t5, t6, t4
	-[0x80000640]:sw t5, 200(tp)
Current Store : [0x80000644] : sw t6, 204(tp) -- Store: [0x8000239c]:0xFFFFFDF0




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000658]:SMULX16 t5, t6, t4
	-[0x8000065c]:sw t5, 208(tp)
Current Store : [0x80000660] : sw t6, 212(tp) -- Store: [0x800023a4]:0xFFF55540




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000674]:SMULX16 t5, t6, t4
	-[0x80000678]:sw t5, 216(tp)
Current Store : [0x8000067c] : sw t6, 220(tp) -- Store: [0x800023ac]:0xFFEA556B




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000690]:SMULX16 t5, t6, t4
	-[0x80000694]:sw t5, 224(tp)
Current Store : [0x80000698] : sw t6, 228(tp) -- Store: [0x800023b4]:0xFFFEFFF8




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h1_val == -4097', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800006ac]:SMULX16 t5, t6, t4
	-[0x800006b0]:sw t5, 232(tp)
Current Store : [0x800006b4] : sw t6, 236(tp) -- Store: [0x800023bc]:0x04005001




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800006c8]:SMULX16 t5, t6, t4
	-[0x800006cc]:sw t5, 240(tp)
Current Store : [0x800006d0] : sw t6, 244(tp) -- Store: [0x800023c4]:0xFFFFFE00




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006e0]:SMULX16 t5, t6, t4
	-[0x800006e4]:sw t5, 248(tp)
Current Store : [0x800006e8] : sw t6, 252(tp) -- Store: [0x800023cc]:0xFFFFDFE0




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800006fc]:SMULX16 t5, t6, t4
	-[0x80000700]:sw t5, 256(tp)
Current Store : [0x80000704] : sw t6, 260(tp) -- Store: [0x800023d4]:0x00010441




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000714]:SMULX16 t5, t6, t4
	-[0x80000718]:sw t5, 264(tp)
Current Store : [0x8000071c] : sw t6, 268(tp) -- Store: [0x800023dc]:0x2AAB0000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000730]:SMULX16 t5, t6, t4
	-[0x80000734]:sw t5, 272(tp)
Current Store : [0x80000738] : sw t6, 276(tp) -- Store: [0x800023e4]:0xFFFFD000




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000074c]:SMULX16 t5, t6, t4
	-[0x80000750]:sw t5, 280(tp)
Current Store : [0x80000754] : sw t6, 284(tp) -- Store: [0x800023ec]:0x00002000




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000768]:SMULX16 t5, t6, t4
	-[0x8000076c]:sw t5, 288(tp)
Current Store : [0x80000770] : sw t6, 292(tp) -- Store: [0x800023f4]:0x00030000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000780]:SMULX16 t5, t6, t4
	-[0x80000784]:sw t5, 296(tp)
Current Store : [0x80000788] : sw t6, 300(tp) -- Store: [0x800023fc]:0xFFFFC000




Last Coverpoint : ['opcode : smulx16', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 8192', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000798]:SMULX16 t5, t6, t4
	-[0x8000079c]:sw t5, 304(tp)
Current Store : [0x800007a0] : sw t6, 308(tp) -- Store: [0x80002404]:0xFFFBE000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800007b4]:SMULX16 t5, t6, t4
	-[0x800007b8]:sw t5, 312(tp)
Current Store : [0x800007bc] : sw t6, 316(tp) -- Store: [0x8000240c]:0x00000020




Last Coverpoint : ['rs1_h1_val == 8', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800007cc]:SMULX16 t5, t6, t4
	-[0x800007d0]:sw t5, 320(tp)
Current Store : [0x800007d4] : sw t6, 324(tp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800007e8]:SMULX16 t5, t6, t4
	-[0x800007ec]:sw t5, 328(tp)
Current Store : [0x800007f0] : sw t6, 332(tp) -- Store: [0x8000241c]:0x00000018




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000804]:SMULX16 t5, t6, t4
	-[0x80000808]:sw t5, 336(tp)
Current Store : [0x8000080c] : sw t6, 340(tp) -- Store: [0x80002424]:0xFBFFE000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000820]:SMULX16 t5, t6, t4
	-[0x80000824]:sw t5, 344(tp)
Current Store : [0x80000828] : sw t6, 348(tp) -- Store: [0x8000242c]:0xFFFFFFBE




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000083c]:SMULX16 t5, t6, t4
	-[0x80000840]:sw t5, 352(tp)
Current Store : [0x80000844] : sw t6, 356(tp) -- Store: [0x80002434]:0xFFFFFEFF




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000858]:SMULX16 t5, t6, t4
	-[0x8000085c]:sw t5, 360(tp)
Current Store : [0x80000860] : sw t6, 364(tp) -- Store: [0x8000243c]:0xFFFFC000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000874]:SMULX16 t5, t6, t4
	-[0x80000878]:sw t5, 368(tp)
Current Store : [0x8000087c] : sw t6, 372(tp) -- Store: [0x80002444]:0x00084000




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000088c]:SMULX16 t5, t6, t4
	-[0x80000890]:sw t5, 376(tp)
Current Store : [0x80000894] : sw t6, 380(tp) -- Store: [0x8000244c]:0x003FFF80




Last Coverpoint : ['opcode : smulx16', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800008a8]:SMULX16 t5, t6, t4
	-[0x800008ac]:sw t5, 384(tp)
Current Store : [0x800008b0] : sw t6, 388(tp) -- Store: [0x80002454]:0xFFFFFFD6




Last Coverpoint : ['rs2_h1_val == -9', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800008c4]:SMULX16 t5, t6, t4
	-[0x800008c8]:sw t5, 392(tp)
Current Store : [0x800008cc] : sw t6, 396(tp) -- Store: [0x8000245c]:0xFFFFFDC0





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

|s.no|        signature         |                                                                                                                                        coverpoints                                                                                                                                        |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00060080|- opcode : smulx16<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 128<br> - rs1_h0_val == 128<br> |[0x8000010c]:SMULX16 t5, t5, t5<br> [0x80000110]:sw t5, 0(ra)<br>    |
|   2|[0x80002218]<br>0xBFDDB7D5|- rs1 : x6<br> - rs2 : x6<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br>                                                                                                                                                                                 |[0x80000128]:SMULX16 tp, t1, t1<br> [0x8000012c]:sw tp, 8(ra)<br>    |
|   3|[0x80002220]<br>0xB7D5BFDD|- rs1 : x22<br> - rs2 : x26<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h0_val == 32767<br>                       |[0x80000140]:SMULX16 s4, s6, s10<br> [0x80000144]:sw s4, 16(ra)<br>  |
|   4|[0x80002228]<br>0xFFFEFFF6|- rs1 : x23<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -2<br> - rs1_h1_val == -5<br> - rs1_h0_val == -16385<br>                                                                                                     |[0x8000015c]:SMULX16 a6, s7, a6<br> [0x80000160]:sw a6, 24(ra)<br>   |
|   5|[0x80002230]<br>0x0010FFF8|- rs1 : x2<br> - rs2 : x25<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -5<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 16<br>                                                                                                        |[0x80000178]:SMULX16 sp, sp, s9<br> [0x8000017c]:sw sp, 32(ra)<br>   |
|   6|[0x80002238]<br>0xD5BFDDB7|- rs1 : x8<br> - rs2 : x2<br> - rd : x12<br> - rs2_h1_val == 128<br> - rs2_h0_val == -4097<br> - rs1_h0_val == -4097<br>                                                                                                                                                                   |[0x80000194]:SMULX16 a2, fp, sp<br> [0x80000198]:sw a2, 40(ra)<br>   |
|   7|[0x80002240]<br>0xF56FF76D|- rs1 : x9<br> - rs2 : x10<br> - rd : x14<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -5<br> - rs1_h1_val == 256<br>                                                                                                                                                       |[0x800001b0]:SMULX16 a4, s1, a0<br> [0x800001b4]:sw a4, 48(ra)<br>   |
|   8|[0x80002248]<br>0x0006EFFF|- rs1 : x14<br> - rs2 : x28<br> - rd : x8<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 512<br> - rs1_h0_val == 21845<br>                                                                                                                                                                   |[0x800001cc]:SMULX16 fp, a4, t3<br> [0x800001d0]:sw fp, 56(ra)<br>   |
|   9|[0x80002250]<br>0x0006FFFB|- rs1 : x3<br> - rs2 : x13<br> - rd : x10<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                         |[0x800001e8]:SMULX16 a0, gp, a3<br> [0x800001ec]:sw a0, 64(ra)<br>   |
|  10|[0x80002258]<br>0x00097FFF|- rs1 : x4<br> - rs2 : x12<br> - rd : x26<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -2<br> - rs1_h0_val == 16<br>                                                                                                                                                                      |[0x80000204]:SMULX16 s10, tp, a2<br> [0x80000208]:sw s10, 72(ra)<br> |
|  11|[0x80002260]<br>0x0007FFFA|- rs1 : x18<br> - rs2 : x7<br> - rd : x6<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 1<br>                                                                                                                                                                                               |[0x80000220]:SMULX16 t1, s2, t2<br> [0x80000224]:sw t1, 80(ra)<br>   |
|  12|[0x80002268]<br>0x0001FFF6|- rs1 : x25<br> - rs2 : x5<br> - rd : x18<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -3<br> - rs1_h0_val == 32<br>                                                                                                                                                                     |[0x80000244]:SMULX16 s2, s9, t0<br> [0x80000248]:sw s2, 0(ra)<br>    |
|  13|[0x80002270]<br>0x10000200|- rs1 : x15<br> - rs2 : x21<br> - rd : x28<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -129<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                                         |[0x80000260]:SMULX16 t3, a5, s5<br> [0x80000264]:sw t3, 8(ra)<br>    |
|  14|[0x80002278]<br>0xFFF6C000|- rs1 : x17<br> - rs2 : x24<br> - rd : x22<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 8<br> - rs1_h1_val == -2049<br>                                                                                                                                                                   |[0x8000027c]:SMULX16 s6, a7, s8<br> [0x80000280]:sw s6, 16(ra)<br>   |
|  15|[0x80002280]<br>0xEFFF0008|- rs1 : x12<br> - rs2 : x27<br> - rd : x24<br> - rs2_h1_val == -2049<br> - rs1_h0_val == 64<br>                                                                                                                                                                                            |[0x80000298]:SMULX16 s8, a2, s11<br> [0x8000029c]:sw s8, 24(ra)<br>  |
|  16|[0x80002288]<br>0xB7D5BFDD|- rs1 : x13<br> - rs2 : x29<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 2<br> - rs1_h1_val == -3<br> - rs1_h0_val == 4<br>                                                                                                                                                               |[0x800002b4]:SMULX16 s4, a3, t4<br> [0x800002b8]:sw s4, 32(ra)<br>   |
|  17|[0x80002290]<br>0xFFFEFFF6|- rs1 : x10<br> - rs2 : x19<br> - rs2_h1_val == -513<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                             |[0x800002d0]:SMULX16 a6, a0, s3<br> [0x800002d4]:sw a6, 40(ra)<br>   |
|  18|[0x80002298]<br>0xEFFF0008|- rs1 : x26<br> - rs2 : x17<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br> - rs1_h1_val == 0<br> - rs1_h0_val == -2<br>                                                                                                                                                               |[0x800002ec]:SMULX16 s8, s10, a7<br> [0x800002f0]:sw s8, 48(ra)<br>  |
|  19|[0x800022a0]<br>0xB7D5BFDD|- rs1 : x5<br> - rs2 : x18<br> - rs2_h1_val == -129<br> - rs2_h0_val == 1<br> - rs1_h1_val == -17<br>                                                                                                                                                                                      |[0x80000308]:SMULX16 s4, t0, s2<br> [0x8000030c]:sw s4, 56(ra)<br>   |
|  20|[0x800022a8]<br>0xFFF6C000|- rs1 : x16<br> - rs2 : x3<br> - rs2_h1_val == -65<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 64<br> - rs1_h0_val == 4096<br>                                                                                                                                                            |[0x8000031c]:SMULX16 s6, a6, gp<br> [0x80000320]:sw s6, 64(ra)<br>   |
|  21|[0x800022b0]<br>0x00030010|- rs1 : x24<br> - rs2 : x11<br> - rs2_h1_val == -33<br> - rs1_h1_val == 32<br> - rs1_h0_val == -9<br>                                                                                                                                                                                      |[0x80000338]:SMULX16 tp, s8, a1<br> [0x8000033c]:sw tp, 72(ra)<br>   |
|  22|[0x800022b8]<br>0x0007FFFA|- rs1 : x19<br> - rs2 : x4<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -129<br>                                                                                                                                                           |[0x80000354]:SMULX16 t1, s3, tp<br> [0x80000358]:sw t1, 80(ra)<br>   |
|  23|[0x800022c0]<br>0x00010040|- rs1 : x29<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -9<br>                                                                                                                                                                                          |[0x80000370]:SMULX16 a2, t4, zero<br> [0x80000374]:sw a2, 88(ra)<br> |
|  24|[0x800022c8]<br>0x0080EFFF|- rs1 : x0<br> - rs2 : x8<br> - rs2_h1_val == -3<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                 |[0x8000038c]:SMULX16 sp, zero, fp<br> [0x80000390]:sw sp, 96(ra)<br> |
|  25|[0x800022d0]<br>0xFF7F0001|- rs1 : x7<br> - rs2 : x23<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -1<br>                                                                                                                                                                                  |[0x800003ac]:SMULX16 s2, t2, s7<br> [0x800003b0]:sw s2, 0(tp)<br>    |
|  26|[0x800022d8]<br>0x0007FFFA|- rs1 : x21<br> - rs2 : x31<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 128<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                |[0x800003c8]:SMULX16 t1, s5, t6<br> [0x800003cc]:sw t1, 8(tp)<br>    |
|  27|[0x800022e0]<br>0x0080EFFF|- rs1 : x28<br> - rs2 : x20<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 8192<br> - rs1_h1_val == -1025<br>                                                                                                                                                                              |[0x800003e0]:SMULX16 sp, t3, s4<br> [0x800003e4]:sw sp, 16(tp)<br>   |
|  28|[0x800022e8]<br>0xFFF6C000|- rs1 : x1<br> - rs2 : x15<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                    |[0x800003f8]:SMULX16 s6, ra, a5<br> [0x800003fc]:sw s6, 24(tp)<br>   |
|  29|[0x800022f0]<br>0x0020FFF7|- rs1 : x20<br> - rs2 : x22<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 256<br> - rs1_h0_val == -3<br>                                                                                                                                                                                    |[0x80000414]:SMULX16 s8, s4, s6<br> [0x80000418]:sw s8, 32(tp)<br>   |
|  30|[0x800022f8]<br>0x00401000|- rs1 : x31<br> - rs2 : x9<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                     |[0x8000042c]:SMULX16 a6, t6, s1<br> [0x80000430]:sw a6, 40(tp)<br>   |
|  31|[0x80002300]<br>0x00075555|- rs1 : x27<br> - rs2 : x1<br> - rs2_h1_val == 256<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                           |[0x80000444]:SMULX16 a4, s11, ra<br> [0x80000448]:sw a4, 48(tp)<br>  |
|  32|[0x80002308]<br>0x0007FFFA|- rs1 : x11<br> - rs2 : x14<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                        |[0x8000045c]:SMULX16 t1, a1, a4<br> [0x80000460]:sw t1, 56(tp)<br>   |
|  33|[0x80002310]<br>0x00060080|- rs2_h1_val == 64<br> - rs2_h0_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                    |[0x80000478]:SMULX16 t5, t6, t4<br> [0x8000047c]:sw t5, 64(tp)<br>   |
|  34|[0x80002318]<br>0x00060080|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                    |[0x80000490]:SMULX16 t5, t6, t4<br> [0x80000494]:sw t5, 72(tp)<br>   |
|  35|[0x80002320]<br>0x00060080|- rs2_h0_val == 4<br> - rs1_h1_val == 512<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                      |[0x800004ac]:SMULX16 t5, t6, t4<br> [0x800004b0]:sw t5, 80(tp)<br>   |
|  36|[0x80002328]<br>0x00060080|- rs2_h0_val == -32768<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                          |[0x800004c4]:SMULX16 t5, t6, t4<br> [0x800004c8]:sw t5, 88(tp)<br>   |
|  37|[0x80002330]<br>0x00060080|- rs1_h1_val == -2<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                            |[0x800004d8]:SMULX16 t5, t6, t4<br> [0x800004dc]:sw t5, 96(tp)<br>   |
|  38|[0x80002338]<br>0x00060080|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x800004f4]:SMULX16 t5, t6, t4<br> [0x800004f8]:sw t5, 104(tp)<br>  |
|  39|[0x80002340]<br>0x00060080|- rs2_h0_val == -513<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                               |[0x80000510]:SMULX16 t5, t6, t4<br> [0x80000514]:sw t5, 112(tp)<br>  |
|  40|[0x80002348]<br>0x00060080|- rs1_h1_val == -513<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                           |[0x8000052c]:SMULX16 t5, t6, t4<br> [0x80000530]:sw t5, 120(tp)<br>  |
|  41|[0x80002350]<br>0x00060080|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                    |[0x80000548]:SMULX16 t5, t6, t4<br> [0x8000054c]:sw t5, 128(tp)<br>  |
|  42|[0x80002358]<br>0x00060080|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x80000564]:SMULX16 t5, t6, t4<br> [0x80000568]:sw t5, 136(tp)<br>  |
|  43|[0x80002360]<br>0x00060080|- rs1_h1_val == -129<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                             |[0x80000580]:SMULX16 t5, t6, t4<br> [0x80000584]:sw t5, 144(tp)<br>  |
|  44|[0x80002370]<br>0x00060080|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                     |[0x800005b4]:SMULX16 t5, t6, t4<br> [0x800005b8]:sw t5, 160(tp)<br>  |
|  45|[0x80002378]<br>0x00060080|- rs2_h1_val == 16<br> - rs2_h0_val == -65<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                    |[0x800005d0]:SMULX16 t5, t6, t4<br> [0x800005d4]:sw t5, 168(tp)<br>  |
|  46|[0x80002380]<br>0x00060080|- rs2_h1_val == 8<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                               |[0x800005ec]:SMULX16 t5, t6, t4<br> [0x800005f0]:sw t5, 176(tp)<br>  |
|  47|[0x80002388]<br>0x00060080|- rs2_h1_val == 4<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                             |[0x80000608]:SMULX16 t5, t6, t4<br> [0x8000060c]:sw t5, 184(tp)<br>  |
|  48|[0x80002390]<br>0x00060080|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                   |[0x80000620]:SMULX16 t5, t6, t4<br> [0x80000624]:sw t5, 192(tp)<br>  |
|  49|[0x80002398]<br>0x00060080|- rs2_h0_val == 16<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                             |[0x8000063c]:SMULX16 t5, t6, t4<br> [0x80000640]:sw t5, 200(tp)<br>  |
|  50|[0x800023a0]<br>0x00060080|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                 |[0x80000658]:SMULX16 t5, t6, t4<br> [0x8000065c]:sw t5, 208(tp)<br>  |
|  51|[0x800023a8]<br>0x00060080|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                  |[0x80000674]:SMULX16 t5, t6, t4<br> [0x80000678]:sw t5, 216(tp)<br>  |
|  52|[0x800023b0]<br>0x00060080|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                  |[0x80000690]:SMULX16 t5, t6, t4<br> [0x80000694]:sw t5, 224(tp)<br>  |
|  53|[0x800023b8]<br>0x00060080|- rs2_h0_val == -16385<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                             |[0x800006ac]:SMULX16 t5, t6, t4<br> [0x800006b0]:sw t5, 232(tp)<br>  |
|  54|[0x800023c0]<br>0x00060080|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                     |[0x800006c8]:SMULX16 t5, t6, t4<br> [0x800006cc]:sw t5, 240(tp)<br>  |
|  55|[0x800023c8]<br>0x00060080|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                   |[0x800006e0]:SMULX16 t5, t6, t4<br> [0x800006e4]:sw t5, 248(tp)<br>  |
|  56|[0x800023d0]<br>0x00060080|- rs2_h0_val == -1025<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                          |[0x800006fc]:SMULX16 t5, t6, t4<br> [0x80000700]:sw t5, 256(tp)<br>  |
|  57|[0x800023d8]<br>0x00060080|- rs2_h0_val == -21846<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                      |[0x80000714]:SMULX16 t5, t6, t4<br> [0x80000718]:sw t5, 264(tp)<br>  |
|  58|[0x800023e0]<br>0x00060080|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x80000730]:SMULX16 t5, t6, t4<br> [0x80000734]:sw t5, 272(tp)<br>  |
|  59|[0x800023e8]<br>0x00060080|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                   |[0x8000074c]:SMULX16 t5, t6, t4<br> [0x80000750]:sw t5, 280(tp)<br>  |
|  60|[0x800023f0]<br>0x00060080|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                      |[0x80000768]:SMULX16 t5, t6, t4<br> [0x8000076c]:sw t5, 288(tp)<br>  |
|  61|[0x800023f8]<br>0x00060080|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                      |[0x80000780]:SMULX16 t5, t6, t4<br> [0x80000784]:sw t5, 296(tp)<br>  |
|  62|[0x80002408]<br>0x00060080|- rs2_h1_val == -1<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                               |[0x800007b4]:SMULX16 t5, t6, t4<br> [0x800007b8]:sw t5, 312(tp)<br>  |
|  63|[0x80002410]<br>0x00060080|- rs1_h1_val == 8<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                |[0x800007cc]:SMULX16 t5, t6, t4<br> [0x800007d0]:sw t5, 320(tp)<br>  |
|  64|[0x80002418]<br>0x00060080|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                      |[0x800007e8]:SMULX16 t5, t6, t4<br> [0x800007ec]:sw t5, 328(tp)<br>  |
|  65|[0x80002420]<br>0x00060080|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                  |[0x80000804]:SMULX16 t5, t6, t4<br> [0x80000808]:sw t5, 336(tp)<br>  |
|  66|[0x80002428]<br>0x00060080|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                 |[0x80000820]:SMULX16 t5, t6, t4<br> [0x80000824]:sw t5, 344(tp)<br>  |
|  67|[0x80002430]<br>0x00060080|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                   |[0x8000083c]:SMULX16 t5, t6, t4<br> [0x80000840]:sw t5, 352(tp)<br>  |
|  68|[0x80002438]<br>0x00060080|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                  |[0x80000858]:SMULX16 t5, t6, t4<br> [0x8000085c]:sw t5, 360(tp)<br>  |
|  69|[0x80002440]<br>0x00060080|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                    |[0x80000874]:SMULX16 t5, t6, t4<br> [0x80000878]:sw t5, 368(tp)<br>  |
|  70|[0x80002448]<br>0x00060080|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                  |[0x8000088c]:SMULX16 t5, t6, t4<br> [0x80000890]:sw t5, 376(tp)<br>  |
|  71|[0x80002458]<br>0x00060080|- rs2_h1_val == -9<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                              |[0x800008c4]:SMULX16 t5, t6, t4<br> [0x800008c8]:sw t5, 392(tp)<br>  |
