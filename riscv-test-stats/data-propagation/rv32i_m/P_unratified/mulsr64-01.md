
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002530', '200 words')]      |
| COV_LABELS                | mulsr64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/mulsr64-01.S    |
| Total Number of coverpoints| 227     |
| Total Coverpoints Hit     | 221      |
| Total Signature Updates   | 200      |
| STAT1                     | 99      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 100     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:MULSR64 t5, t6, t4
      [0x80000740]:sw t5, 392(ra)
 -- Signature Address: 0x80002440 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulsr64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 8388608






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : mulsr64', 'rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000108]:MULSR64 t5, t5, t5
	-[0x8000010c]:sw t5, 0(tp)
Current Store : [0x80000110] : sw t6, 4(tp) -- Store: [0x80002214]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x10', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000120]:MULSR64 a0, s4, s4
	-[0x80000124]:sw a0, 8(tp)
Current Store : [0x80000128] : sw a1, 12(tp) -- Store: [0x8000221c]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x6', 'rs2 : x1', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000138]:MULSR64 sp, t1, ra
	-[0x8000013c]:sw sp, 16(tp)
Current Store : [0x80000140] : sw gp, 20(tp) -- Store: [0x80002224]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000150]:MULSR64 t3, a7, t3
	-[0x80000154]:sw t3, 24(tp)
Current Store : [0x80000158] : sw t4, 28(tp) -- Store: [0x8000222c]:0xEEDBEADF




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x18', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000168]:MULSR64 s2, s2, a7
	-[0x8000016c]:sw s2, 32(tp)
Current Store : [0x80000170] : sw s3, 36(tp) -- Store: [0x80002234]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x3', 'rs2 : x13', 'rd : x26', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000180]:MULSR64 s10, gp, a3
	-[0x80000184]:sw s10, 40(tp)
Current Store : [0x80000188] : sw s11, 44(tp) -- Store: [0x8000223c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x13', 'rs2 : x21', 'rd : x8', 'rs2_w0_val == -268435457', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000198]:MULSR64 fp, a3, s5
	-[0x8000019c]:sw fp, 48(tp)
Current Store : [0x800001a0] : sw s1, 52(tp) -- Store: [0x80002244]:0xADFEEDBE




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x14', 'rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001b0]:MULSR64 a4, a6, fp
	-[0x800001b4]:sw a4, 56(tp)
Current Store : [0x800001b8] : sw a5, 60(tp) -- Store: [0x8000224c]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x24', 'rs2_w0_val == -67108865', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800001cc]:MULSR64 s8, a0, a4
	-[0x800001d0]:sw s8, 64(tp)
Current Store : [0x800001d4] : sw s9, 68(tp) -- Store: [0x80002254]:0xEDBEADFE




Last Coverpoint : ['rs1 : x2', 'rs2 : x7', 'rd : x20', 'rs2_w0_val == -33554433', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001e8]:MULSR64 s4, sp, t2
	-[0x800001ec]:sw s4, 72(tp)
Current Store : [0x800001f0] : sw s5, 76(tp) -- Store: [0x8000225c]:0xEFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x11', 'rd : x22', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000208]:MULSR64 s6, s8, a1
	-[0x8000020c]:sw s6, 0(a4)
Current Store : [0x80000210] : sw s7, 4(a4) -- Store: [0x80002264]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x11', 'rs2 : x6', 'rd : x16', 'rs2_w0_val == -8388609', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000220]:MULSR64 a6, a1, t1
	-[0x80000224]:sw a6, 8(a4)
Current Store : [0x80000228] : sw a7, 12(a4) -- Store: [0x8000226c]:0xBFFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x5', 'rd : x6', 'rs2_w0_val == -4194305', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000023c]:MULSR64 t1, fp, t0
	-[0x80000240]:sw t1, 16(a4)
Current Store : [0x80000244] : sw t2, 20(a4) -- Store: [0x80002274]:0xFDFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x4', 'rs2_w0_val == -2097153', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000254]:MULSR64 tp, t6, s6
	-[0x80000258]:sw tp, 24(a4)
Current Store : [0x8000025c] : sw t0, 28(a4) -- Store: [0x8000227c]:0xFFBFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x25', 'rd : x12', 'rs2_w0_val == -1048577', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000026c]:MULSR64 a2, t4, s9
	-[0x80000270]:sw a2, 32(a4)
Current Store : [0x80000274] : sw a3, 36(a4) -- Store: [0x80002284]:0x00008000




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rs2_w0_val == -524289', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000288]:MULSR64 t5, s11, t6
	-[0x8000028c]:sw t5, 40(a4)
Current Store : [0x80000290] : sw t6, 44(a4) -- Store: [0x8000228c]:0xFFF7FFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x24', 'rs2_w0_val == -262145', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800002a0]:MULSR64 sp, t3, s8
	-[0x800002a4]:sw sp, 48(a4)
Current Store : [0x800002a8] : sw gp, 52(a4) -- Store: [0x80002294]:0x00000010




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rs2_w0_val == -131073', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800002b8]:MULSR64 s10, t2, s1
	-[0x800002bc]:sw s10, 56(a4)
Current Store : [0x800002c0] : sw s11, 60(a4) -- Store: [0x8000229c]:0xFFFEFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x800002d0]:MULSR64 tp, s5, a0
	-[0x800002d4]:sw tp, 64(a4)
Current Store : [0x800002d8] : sw t0, 68(a4) -- Store: [0x800022a4]:0xFFBFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rs2_w0_val == -32769', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800002e8]:MULSR64 t3, s7, tp
	-[0x800002ec]:sw t3, 72(a4)
Current Store : [0x800002f0] : sw t4, 76(a4) -- Store: [0x800022ac]:0xFFFFFFDF




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000300]:MULSR64 a6, ra, s2
	-[0x80000304]:sw a6, 80(a4)
Current Store : [0x80000308] : sw a7, 84(a4) -- Store: [0x800022b4]:0xBFFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rs2_w0_val == -8193', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000320]:MULSR64 t5, s6, s11
	-[0x80000324]:sw t5, 0(ra)
Current Store : [0x80000328] : sw t6, 4(ra) -- Store: [0x800022bc]:0xFFF7FFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x23', 'rs2_w0_val == -4097', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000338]:MULSR64 t5, s10, s7
	-[0x8000033c]:sw t5, 8(ra)
Current Store : [0x80000340] : sw t6, 12(ra) -- Store: [0x800022c4]:0xFFF7FFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80000350]:MULSR64 tp, a5, s3
	-[0x80000354]:sw tp, 16(ra)
Current Store : [0x80000358] : sw t0, 20(ra) -- Store: [0x800022cc]:0xFFBFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x15', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80000364]:MULSR64 t3, t0, a5
	-[0x80000368]:sw t3, 24(ra)
Current Store : [0x8000036c] : sw t4, 28(ra) -- Store: [0x800022d4]:0xFFFFFFDF




Last Coverpoint : ['rs1 : x0', 'rs2 : x16', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80000378]:MULSR64 s2, zero, a6
	-[0x8000037c]:sw s2, 32(ra)
Current Store : [0x80000380] : sw s3, 36(ra) -- Store: [0x800022dc]:0xFFFFF7FF




Last Coverpoint : ['rs1 : x14', 'rs2 : x2', 'rs2_w0_val == -257', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000390]:MULSR64 s6, a4, sp
	-[0x80000394]:sw s6, 40(ra)
Current Store : [0x80000398] : sw s7, 44(ra) -- Store: [0x800022e4]:0xFFFFEFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x800003a4]:MULSR64 s6, tp, a2
	-[0x800003a8]:sw s6, 48(ra)
Current Store : [0x800003ac] : sw s7, 52(ra) -- Store: [0x800022ec]:0xFFFFEFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rs2_w0_val == 0', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800003bc]:MULSR64 s4, s3, zero
	-[0x800003c0]:sw s4, 56(ra)
Current Store : [0x800003c4] : sw s5, 60(ra) -- Store: [0x800022f4]:0x40000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x3', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x800003d0]:MULSR64 a0, s1, gp
	-[0x800003d4]:sw a0, 64(ra)
Current Store : [0x800003d8] : sw a1, 68(ra) -- Store: [0x800022fc]:0x00040000




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rs2_w0_val == -17', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800003e8]:MULSR64 t3, s9, t4
	-[0x800003ec]:sw t3, 72(ra)
Current Store : [0x800003f0] : sw t4, 76(ra) -- Store: [0x80002304]:0xFFFFFFEF




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rs2_w0_val == -9', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800003fc]:MULSR64 s6, a2, s10
	-[0x80000400]:sw s6, 80(ra)
Current Store : [0x80000404] : sw s7, 84(ra) -- Store: [0x8000230c]:0xFFFFEFFF




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000410]:MULSR64 t5, t6, t4
	-[0x80000414]:sw t5, 88(ra)
Current Store : [0x80000418] : sw t6, 92(ra) -- Store: [0x80002314]:0xFFFFFDFF




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x80000424]:MULSR64 t5, t6, t4
	-[0x80000428]:sw t5, 96(ra)
Current Store : [0x8000042c] : sw t6, 100(ra) -- Store: [0x8000231c]:0x40000000




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000438]:MULSR64 t5, t6, t4
	-[0x8000043c]:sw t5, 104(ra)
Current Store : [0x80000440] : sw t6, 108(ra) -- Store: [0x80002324]:0x10000000




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000450]:MULSR64 t5, t6, t4
	-[0x80000454]:sw t5, 112(ra)
Current Store : [0x80000458] : sw t6, 116(ra) -- Store: [0x8000232c]:0xFFFFBFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000464]:MULSR64 t5, t6, t4
	-[0x80000468]:sw t5, 120(ra)
Current Store : [0x8000046c] : sw t6, 124(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000478]:MULSR64 t5, t6, t4
	-[0x8000047c]:sw t5, 128(ra)
Current Store : [0x80000480] : sw t6, 132(ra) -- Store: [0x8000233c]:0x80000000




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000490]:MULSR64 t5, t6, t4
	-[0x80000494]:sw t5, 136(ra)
Current Store : [0x80000498] : sw t6, 140(ra) -- Store: [0x80002344]:0xFDFFFFFF




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x800004a4]:MULSR64 t5, t6, t4
	-[0x800004a8]:sw t5, 144(ra)
Current Store : [0x800004ac] : sw t6, 148(ra) -- Store: [0x8000234c]:0x00040000




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x800004b8]:MULSR64 t5, t6, t4
	-[0x800004bc]:sw t5, 152(ra)
Current Store : [0x800004c0] : sw t6, 156(ra) -- Store: [0x80002354]:0xFFFFFFFC




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004cc]:MULSR64 t5, t6, t4
	-[0x800004d0]:sw t5, 160(ra)
Current Store : [0x800004d4] : sw t6, 164(ra) -- Store: [0x8000235c]:0xFFFFFDFF




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800004e0]:MULSR64 t5, t6, t4
	-[0x800004e4]:sw t5, 168(ra)
Current Store : [0x800004e8] : sw t6, 172(ra) -- Store: [0x80002364]:0xFFFFFFF6




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800004f4]:MULSR64 t5, t6, t4
	-[0x800004f8]:sw t5, 176(ra)
Current Store : [0x800004fc] : sw t6, 180(ra) -- Store: [0x8000236c]:0x00000040




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000508]:MULSR64 t5, t6, t4
	-[0x8000050c]:sw t5, 184(ra)
Current Store : [0x80000510] : sw t6, 188(ra) -- Store: [0x80002374]:0xFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000051c]:MULSR64 t5, t6, t4
	-[0x80000520]:sw t5, 192(ra)
Current Store : [0x80000524] : sw t6, 196(ra) -- Store: [0x8000237c]:0x00000400




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000530]:MULSR64 t5, t6, t4
	-[0x80000534]:sw t5, 200(ra)
Current Store : [0x80000538] : sw t6, 204(ra) -- Store: [0x80002384]:0x00000020




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000544]:MULSR64 t5, t6, t4
	-[0x80000548]:sw t5, 208(ra)
Current Store : [0x8000054c] : sw t6, 212(ra) -- Store: [0x8000238c]:0x00000008




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000055c]:MULSR64 t5, t6, t4
	-[0x80000560]:sw t5, 216(ra)
Current Store : [0x80000564] : sw t6, 220(ra) -- Store: [0x80002394]:0x00000004




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000570]:MULSR64 t5, t6, t4
	-[0x80000574]:sw t5, 224(ra)
Current Store : [0x80000578] : sw t6, 228(ra) -- Store: [0x8000239c]:0xFFFFFFFF




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000584]:MULSR64 t5, t6, t4
	-[0x80000588]:sw t5, 232(ra)
Current Store : [0x8000058c] : sw t6, 236(ra) -- Store: [0x800023a4]:0xC0000000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000598]:MULSR64 t5, t6, t4
	-[0x8000059c]:sw t5, 240(ra)
Current Store : [0x800005a0] : sw t6, 244(ra) -- Store: [0x800023ac]:0x00100000




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800005ac]:MULSR64 t5, t6, t4
	-[0x800005b0]:sw t5, 248(ra)
Current Store : [0x800005b4] : sw t6, 252(ra) -- Store: [0x800023b4]:0xFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x800005c4]:MULSR64 t5, t6, t4
	-[0x800005c8]:sw t5, 256(ra)
Current Store : [0x800005cc] : sw t6, 260(ra) -- Store: [0x800023bc]:0xF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800005dc]:MULSR64 t5, t6, t4
	-[0x800005e0]:sw t5, 264(ra)
Current Store : [0x800005e4] : sw t6, 268(ra) -- Store: [0x800023c4]:0x7FFFFFFF




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800005f0]:MULSR64 t5, t6, t4
	-[0x800005f4]:sw t5, 272(ra)
Current Store : [0x800005f8] : sw t6, 276(ra) -- Store: [0x800023cc]:0xFFFFFFEF




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000608]:MULSR64 t5, t6, t4
	-[0x8000060c]:sw t5, 280(ra)
Current Store : [0x80000610] : sw t6, 284(ra) -- Store: [0x800023d4]:0xAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x8000061c]:MULSR64 t5, t6, t4
	-[0x80000620]:sw t5, 288(ra)
Current Store : [0x80000624] : sw t6, 292(ra) -- Store: [0x800023dc]:0x00008000




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000634]:MULSR64 t5, t6, t4
	-[0x80000638]:sw t5, 296(ra)
Current Store : [0x8000063c] : sw t6, 300(ra) -- Store: [0x800023e4]:0xFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000650]:MULSR64 t5, t6, t4
	-[0x80000654]:sw t5, 304(ra)
Current Store : [0x80000658] : sw t6, 308(ra) -- Store: [0x800023ec]:0xFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000664]:MULSR64 t5, t6, t4
	-[0x80000668]:sw t5, 312(ra)
Current Store : [0x8000066c] : sw t6, 316(ra) -- Store: [0x800023f4]:0x00020000




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000678]:MULSR64 t5, t6, t4
	-[0x8000067c]:sw t5, 320(ra)
Current Store : [0x80000680] : sw t6, 324(ra) -- Store: [0x800023fc]:0x08000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x8000068c]:MULSR64 t5, t6, t4
	-[0x80000690]:sw t5, 328(ra)
Current Store : [0x80000694] : sw t6, 332(ra) -- Store: [0x80002404]:0xFFFFFFF6




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800006a4]:MULSR64 t5, t6, t4
	-[0x800006a8]:sw t5, 336(ra)
Current Store : [0x800006ac] : sw t6, 340(ra) -- Store: [0x8000240c]:0xFEFFFFFF




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800006bc]:MULSR64 t5, t6, t4
	-[0x800006c0]:sw t5, 344(ra)
Current Store : [0x800006c4] : sw t6, 348(ra) -- Store: [0x80002414]:0xFBFFFFFF




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800006d0]:MULSR64 t5, t6, t4
	-[0x800006d4]:sw t5, 352(ra)
Current Store : [0x800006d8] : sw t6, 356(ra) -- Store: [0x8000241c]:0x00000010




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800006e8]:MULSR64 t5, t6, t4
	-[0x800006ec]:sw t5, 360(ra)
Current Store : [0x800006f0] : sw t6, 364(ra) -- Store: [0x80002424]:0x55555555




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x800006fc]:MULSR64 t5, t6, t4
	-[0x80000700]:sw t5, 368(ra)
Current Store : [0x80000704] : sw t6, 372(ra) -- Store: [0x8000242c]:0x00008000




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000710]:MULSR64 t5, t6, t4
	-[0x80000714]:sw t5, 376(ra)
Current Store : [0x80000718] : sw t6, 380(ra) -- Store: [0x80002434]:0x00100000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80000728]:MULSR64 t5, t6, t4
	-[0x8000072c]:sw t5, 384(ra)
Current Store : [0x80000730] : sw t6, 388(ra) -- Store: [0x8000243c]:0xFFFEFFFF




Last Coverpoint : ['opcode : mulsr64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000073c]:MULSR64 t5, t6, t4
	-[0x80000740]:sw t5, 392(ra)
Current Store : [0x80000744] : sw t6, 396(ra) -- Store: [0x80002444]:0x00800000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000754]:MULSR64 t5, t6, t4
	-[0x80000758]:sw t5, 400(ra)
Current Store : [0x8000075c] : sw t6, 404(ra) -- Store: [0x8000244c]:0xBFFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000076c]:MULSR64 t5, t6, t4
	-[0x80000770]:sw t5, 408(ra)
Current Store : [0x80000774] : sw t6, 412(ra) -- Store: [0x80002454]:0xDFFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000788]:MULSR64 t5, t6, t4
	-[0x8000078c]:sw t5, 416(ra)
Current Store : [0x80000790] : sw t6, 420(ra) -- Store: [0x8000245c]:0xFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800007a0]:MULSR64 t5, t6, t4
	-[0x800007a4]:sw t5, 424(ra)
Current Store : [0x800007a8] : sw t6, 428(ra) -- Store: [0x80002464]:0xFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800007b8]:MULSR64 t5, t6, t4
	-[0x800007bc]:sw t5, 432(ra)
Current Store : [0x800007c0] : sw t6, 436(ra) -- Store: [0x8000246c]:0xFFDFFFFF




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800007d0]:MULSR64 t5, t6, t4
	-[0x800007d4]:sw t5, 440(ra)
Current Store : [0x800007d8] : sw t6, 444(ra) -- Store: [0x80002474]:0xFFFDFFFF




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800007e8]:MULSR64 t5, t6, t4
	-[0x800007ec]:sw t5, 448(ra)
Current Store : [0x800007f0] : sw t6, 452(ra) -- Store: [0x8000247c]:0xFFFF7FFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000804]:MULSR64 t5, t6, t4
	-[0x80000808]:sw t5, 456(ra)
Current Store : [0x8000080c] : sw t6, 460(ra) -- Store: [0x80002484]:0xFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000820]:MULSR64 t5, t6, t4
	-[0x80000824]:sw t5, 464(ra)
Current Store : [0x80000828] : sw t6, 468(ra) -- Store: [0x8000248c]:0xFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000834]:MULSR64 t5, t6, t4
	-[0x80000838]:sw t5, 472(ra)
Current Store : [0x8000083c] : sw t6, 476(ra) -- Store: [0x80002494]:0xFFFFFEFF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000084c]:MULSR64 t5, t6, t4
	-[0x80000850]:sw t5, 480(ra)
Current Store : [0x80000854] : sw t6, 484(ra) -- Store: [0x8000249c]:0xFFFFFF7F




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000860]:MULSR64 t5, t6, t4
	-[0x80000864]:sw t5, 488(ra)
Current Store : [0x80000868] : sw t6, 492(ra) -- Store: [0x800024a4]:0xFFFFFFBF




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000874]:MULSR64 t5, t6, t4
	-[0x80000878]:sw t5, 496(ra)
Current Store : [0x8000087c] : sw t6, 500(ra) -- Store: [0x800024ac]:0xFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000088c]:MULSR64 t5, t6, t4
	-[0x80000890]:sw t5, 504(ra)
Current Store : [0x80000894] : sw t6, 508(ra) -- Store: [0x800024b4]:0x20000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800008a4]:MULSR64 t5, t6, t4
	-[0x800008a8]:sw t5, 512(ra)
Current Store : [0x800008ac] : sw t6, 516(ra) -- Store: [0x800024bc]:0x02000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800008bc]:MULSR64 t5, t6, t4
	-[0x800008c0]:sw t5, 520(ra)
Current Store : [0x800008c4] : sw t6, 524(ra) -- Store: [0x800024c4]:0x01000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800008d0]:MULSR64 t5, t6, t4
	-[0x800008d4]:sw t5, 528(ra)
Current Store : [0x800008d8] : sw t6, 532(ra) -- Store: [0x800024cc]:0x00400000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800008e8]:MULSR64 t5, t6, t4
	-[0x800008ec]:sw t5, 536(ra)
Current Store : [0x800008f0] : sw t6, 540(ra) -- Store: [0x800024d4]:0x00200000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800008fc]:MULSR64 t5, t6, t4
	-[0x80000900]:sw t5, 544(ra)
Current Store : [0x80000904] : sw t6, 548(ra) -- Store: [0x800024dc]:0x00080000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000910]:MULSR64 t5, t6, t4
	-[0x80000914]:sw t5, 552(ra)
Current Store : [0x80000918] : sw t6, 556(ra) -- Store: [0x800024e4]:0x00010000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000924]:MULSR64 t5, t6, t4
	-[0x80000928]:sw t5, 560(ra)
Current Store : [0x8000092c] : sw t6, 564(ra) -- Store: [0x800024ec]:0x00004000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000938]:MULSR64 t5, t6, t4
	-[0x8000093c]:sw t5, 568(ra)
Current Store : [0x80000940] : sw t6, 572(ra) -- Store: [0x800024f4]:0x00002000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000950]:MULSR64 t5, t6, t4
	-[0x80000954]:sw t5, 576(ra)
Current Store : [0x80000958] : sw t6, 580(ra) -- Store: [0x800024fc]:0x00000800




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000964]:MULSR64 t5, t6, t4
	-[0x80000968]:sw t5, 584(ra)
Current Store : [0x8000096c] : sw t6, 588(ra) -- Store: [0x80002504]:0x00000100




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000097c]:MULSR64 t5, t6, t4
	-[0x80000980]:sw t5, 592(ra)
Current Store : [0x80000984] : sw t6, 596(ra) -- Store: [0x8000250c]:0x00000080




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000990]:MULSR64 t5, t6, t4
	-[0x80000994]:sw t5, 600(ra)
Current Store : [0x80000998] : sw t6, 604(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800009a8]:MULSR64 t5, t6, t4
	-[0x800009ac]:sw t5, 608(ra)
Current Store : [0x800009b0] : sw t6, 612(ra) -- Store: [0x8000251c]:0x04000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800009bc]:MULSR64 t5, t6, t4
	-[0x800009c0]:sw t5, 616(ra)
Current Store : [0x800009c4] : sw t6, 620(ra) -- Store: [0x80002524]:0x00000200




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800009d4]:MULSR64 t5, t6, t4
	-[0x800009d8]:sw t5, 624(ra)
Current Store : [0x800009dc] : sw t6, 628(ra) -- Store: [0x8000252c]:0xEFFFFFFF





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

|s.no|        signature         |                                                                  coverpoints                                                                  |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000024|- opcode : mulsr64<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br>                                                   |[0x80000108]:MULSR64 t5, t5, t5<br> [0x8000010c]:sw t5, 0(tp)<br>    |
|   2|[0x80002218]<br>0xE38E38E4|- rs1 : x20<br> - rs2 : x20<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>          |[0x80000120]:MULSR64 a0, s4, s4<br> [0x80000124]:sw a0, 8(tp)<br>    |
|   3|[0x80002220]<br>0x55555555|- rs1 : x6<br> - rs2 : x1<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 1<br> |[0x80000138]:MULSR64 sp, t1, ra<br> [0x8000013c]:sw sp, 16(tp)<br>   |
|   4|[0x80002228]<br>0x80000005|- rs1 : x17<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -5<br>                    |[0x80000150]:MULSR64 t3, a7, t3<br> [0x80000154]:sw t3, 24(tp)<br>   |
|   5|[0x80002230]<br>0xFFFFFFF0|- rs1 : x18<br> - rs2 : x17<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 16<br>                   |[0x80000168]:MULSR64 s2, s2, a7<br> [0x8000016c]:sw s2, 32(tp)<br>   |
|   6|[0x80002238]<br>0xFFFFFFF0|- rs1 : x3<br> - rs2 : x13<br> - rd : x26<br> - rs2_w0_val == -536870913<br>                                                                   |[0x80000180]:MULSR64 s10, gp, a3<br> [0x80000184]:sw s10, 40(tp)<br> |
|   7|[0x80002240]<br>0xFFFF8000|- rs1 : x13<br> - rs2 : x21<br> - rd : x8<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 32768<br>                                         |[0x80000198]:MULSR64 fp, a3, s5<br> [0x8000019c]:sw fp, 48(tp)<br>   |
|   8|[0x80002248]<br>0x5000000A|- rs1 : x16<br> - rs2 : x8<br> - rd : x14<br> - rs2_w0_val == -134217729<br>                                                                   |[0x800001b0]:MULSR64 a4, a6, fp<br> [0x800001b4]:sw a4, 56(tp)<br>   |
|   9|[0x80002250]<br>0x04080001|- rs1 : x10<br> - rs2 : x14<br> - rd : x24<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -524289<br>                                       |[0x800001cc]:MULSR64 s8, a0, a4<br> [0x800001d0]:sw s8, 64(tp)<br>   |
|  10|[0x80002258]<br>0x0A000001|- rs1 : x2<br> - rs2 : x7<br> - rd : x20<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -134217729<br>                                      |[0x800001e8]:MULSR64 s4, sp, t2<br> [0x800001ec]:sw s4, 72(tp)<br>   |
|  11|[0x80002260]<br>0xF8FFFFF9|- rs1 : x24<br> - rs2 : x11<br> - rd : x22<br> - rs2_w0_val == -16777217<br>                                                                   |[0x80000208]:MULSR64 s6, s8, a1<br> [0x8000020c]:sw s6, 0(a4)<br>    |
|  12|[0x80002268]<br>0xFFFC0000|- rs1 : x11<br> - rs2 : x6<br> - rd : x16<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 262144<br>                                          |[0x80000220]:MULSR64 a6, a1, t1<br> [0x80000224]:sw a6, 8(a4)<br>    |
|  13|[0x80002270]<br>0x00500001|- rs1 : x8<br> - rs2 : x5<br> - rd : x6<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == -1048577<br>                                          |[0x8000023c]:MULSR64 t1, fp, t0<br> [0x80000240]:sw t1, 16(a4)<br>   |
|  14|[0x80002278]<br>0xFFBFFFFE|- rs1 : x31<br> - rs2 : x22<br> - rd : x4<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == 2<br>                                               |[0x80000254]:MULSR64 tp, t6, s6<br> [0x80000258]:sw tp, 24(a4)<br>   |
|  15|[0x80002280]<br>0x02100021|- rs1 : x29<br> - rs2 : x25<br> - rd : x12<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -33<br>                                            |[0x8000026c]:MULSR64 a2, t4, s9<br> [0x80000270]:sw a2, 32(a4)<br>   |
|  16|[0x80002288]<br>0x00090001|- rs1 : x27<br> - rs2 : x31<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -65537<br>                                                         |[0x80000288]:MULSR64 t5, s11, t6<br> [0x8000028c]:sw t5, 40(a4)<br>  |
|  17|[0x80002290]<br>0xBFFFF000|- rs1 : x28<br> - rs2 : x24<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 4096<br>                                                           |[0x800002a0]:MULSR64 sp, t3, s8<br> [0x800002a4]:sw sp, 48(a4)<br>   |
|  18|[0x80002298]<br>0xC0000000|- rs1 : x7<br> - rs2 : x9<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 1073741824<br>                                                       |[0x800002b8]:MULSR64 s10, t2, s1<br> [0x800002bc]:sw s10, 56(a4)<br> |
|  19|[0x800022a0]<br>0xC0000000|- rs1 : x21<br> - rs2 : x10<br> - rs2_w0_val == -65537<br>                                                                                     |[0x800002d0]:MULSR64 tp, s5, a0<br> [0x800002d4]:sw tp, 64(a4)<br>   |
|  20|[0x800022a8]<br>0x00048009|- rs1 : x23<br> - rs2 : x4<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -9<br>                                                               |[0x800002e8]:MULSR64 t3, s7, tp<br> [0x800002ec]:sw t3, 72(a4)<br>   |
|  21|[0x800022b0]<br>0xFFFF3FFD|- rs1 : x1<br> - rs2 : x18<br> - rs2_w0_val == -16385<br>                                                                                      |[0x80000300]:MULSR64 a6, ra, s2<br> [0x80000304]:sw a6, 80(a4)<br>   |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x22<br> - rs2 : x27<br> - rs2_w0_val == -8193<br> - rs1_w0_val == 0<br>                                                                |[0x80000320]:MULSR64 t5, s6, s11<br> [0x80000324]:sw t5, 0(ra)<br>   |
|  23|[0x800022c0]<br>0x00401401|- rs1 : x26<br> - rs2 : x23<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -1025<br>                                                            |[0x80000338]:MULSR64 t5, s10, s7<br> [0x8000033c]:sw t5, 8(ra)<br>   |
|  24|[0x800022c8]<br>0xFBFF8000|- rs1 : x15<br> - rs2 : x19<br> - rs2_w0_val == -2049<br>                                                                                      |[0x80000350]:MULSR64 tp, a5, s3<br> [0x80000354]:sw tp, 16(ra)<br>   |
|  25|[0x800022d0]<br>0xC0000000|- rs1 : x5<br> - rs2 : x15<br> - rs2_w0_val == -1025<br>                                                                                       |[0x80000364]:MULSR64 t3, t0, a5<br> [0x80000368]:sw t3, 24(ra)<br>   |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x0<br> - rs2 : x16<br> - rs2_w0_val == -513<br>                                                                                        |[0x80000378]:MULSR64 s2, zero, a6<br> [0x8000037c]:sw s2, 32(ra)<br> |
|  27|[0x800022e0]<br>0x00080901|- rs1 : x14<br> - rs2 : x2<br> - rs2_w0_val == -257<br> - rs1_w0_val == -2049<br>                                                              |[0x80000390]:MULSR64 s6, a4, sp<br> [0x80000394]:sw s6, 40(ra)<br>   |
|  28|[0x800022e8]<br>0xFFFFFF7F|- rs1 : x4<br> - rs2 : x12<br> - rs2_w0_val == -129<br>                                                                                        |[0x800003a4]:MULSR64 s6, tp, a2<br> [0x800003a8]:sw s6, 48(ra)<br>   |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x19<br> - rs2 : x0<br> - rs2_w0_val == 0<br> - rs1_w0_val == -268435457<br>                                                            |[0x800003bc]:MULSR64 s4, s3, zero<br> [0x800003c0]:sw s4, 56(ra)<br> |
|  30|[0x800022f8]<br>0xFFFDF000|- rs1 : x9<br> - rs2 : x3<br> - rs2_w0_val == -33<br>                                                                                          |[0x800003d0]:MULSR64 a0, s1, gp<br> [0x800003d4]:sw a0, 64(ra)<br>   |
|  31|[0x80002300]<br>0x00440011|- rs1 : x25<br> - rs2 : x29<br> - rs2_w0_val == -17<br> - rs1_w0_val == -262145<br>                                                            |[0x800003e8]:MULSR64 t3, s9, t4<br> [0x800003ec]:sw t3, 72(ra)<br>   |
|  32|[0x80002308]<br>0xFB800000|- rs1 : x12<br> - rs2 : x26<br> - rs2_w0_val == -9<br> - rs1_w0_val == 8388608<br>                                                             |[0x800003fc]:MULSR64 s6, a2, s10<br> [0x80000400]:sw s6, 80(ra)<br>  |
|  33|[0x80002310]<br>0x00000A05|- rs2_w0_val == -5<br> - rs1_w0_val == -513<br>                                                                                                |[0x80000410]:MULSR64 t5, t6, t4<br> [0x80000414]:sw t5, 88(ra)<br>   |
|  34|[0x80002318]<br>0x40000000|- rs2_w0_val == -3<br>                                                                                                                         |[0x80000424]:MULSR64 t5, t6, t4<br> [0x80000428]:sw t5, 96(ra)<br>   |
|  35|[0x80002320]<br>0xE0000000|- rs2_w0_val == -2<br> - rs1_w0_val == 268435456<br>                                                                                           |[0x80000438]:MULSR64 t5, t6, t4<br> [0x8000043c]:sw t5, 104(ra)<br>  |
|  36|[0x80002328]<br>0x80000000|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -16385<br>                                                                                     |[0x80000450]:MULSR64 t5, t6, t4<br> [0x80000454]:sw t5, 112(ra)<br>  |
|  37|[0x80002330]<br>0x40000000|- rs2_w0_val == 1073741824<br>                                                                                                                 |[0x80000464]:MULSR64 t5, t6, t4<br> [0x80000468]:sw t5, 120(ra)<br>  |
|  38|[0x80002338]<br>0x00000000|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 536870912<br>                                                                                  |[0x80000478]:MULSR64 t5, t6, t4<br> [0x8000047c]:sw t5, 128(ra)<br>  |
|  39|[0x80002340]<br>0xF0000000|- rs2_w0_val == 268435456<br> - rs1_w0_val == -33554433<br>                                                                                    |[0x80000490]:MULSR64 t5, t6, t4<br> [0x80000494]:sw t5, 136(ra)<br>  |
|  40|[0x80002348]<br>0x00000000|- rs2_w0_val == 134217728<br>                                                                                                                  |[0x800004a4]:MULSR64 t5, t6, t4<br> [0x800004a8]:sw t5, 144(ra)<br>  |
|  41|[0x80002350]<br>0xF0000000|- rs2_w0_val == 67108864<br>                                                                                                                   |[0x800004b8]:MULSR64 t5, t6, t4<br> [0x800004bc]:sw t5, 152(ra)<br>  |
|  42|[0x80002358]<br>0xFE000000|- rs2_w0_val == 33554432<br>                                                                                                                   |[0x800004cc]:MULSR64 t5, t6, t4<br> [0x800004d0]:sw t5, 160(ra)<br>  |
|  43|[0x80002360]<br>0xF6000000|- rs2_w0_val == 16777216<br>                                                                                                                   |[0x800004e0]:MULSR64 t5, t6, t4<br> [0x800004e4]:sw t5, 168(ra)<br>  |
|  44|[0x80002368]<br>0x20000000|- rs2_w0_val == 8388608<br> - rs1_w0_val == 64<br>                                                                                             |[0x800004f4]:MULSR64 t5, t6, t4<br> [0x800004f8]:sw t5, 176(ra)<br>  |
|  45|[0x80002370]<br>0xFF400000|- rs2_w0_val == 4194304<br> - rs1_w0_val == -3<br>                                                                                             |[0x80000508]:MULSR64 t5, t6, t4<br> [0x8000050c]:sw t5, 184(ra)<br>  |
|  46|[0x80002378]<br>0x80000000|- rs2_w0_val == 2097152<br> - rs1_w0_val == 1024<br>                                                                                           |[0x8000051c]:MULSR64 t5, t6, t4<br> [0x80000520]:sw t5, 192(ra)<br>  |
|  47|[0x80002380]<br>0xFFFFFF80|- rs1_w0_val == 32<br>                                                                                                                         |[0x80000530]:MULSR64 t5, t6, t4<br> [0x80000534]:sw t5, 200(ra)<br>  |
|  48|[0x80002388]<br>0xFFFFFFB8|- rs1_w0_val == 8<br>                                                                                                                          |[0x80000544]:MULSR64 t5, t6, t4<br> [0x80000548]:sw t5, 208(ra)<br>  |
|  49|[0x80002390]<br>0x7FFFFFFC|- rs1_w0_val == 4<br>                                                                                                                          |[0x8000055c]:MULSR64 t5, t6, t4<br> [0x80000560]:sw t5, 216(ra)<br>  |
|  50|[0x80002398]<br>0x00000001|- rs2_w0_val == -1<br> - rs1_w0_val == -1<br>                                                                                                  |[0x80000570]:MULSR64 t5, t6, t4<br> [0x80000574]:sw t5, 224(ra)<br>  |
|  51|[0x800023a0]<br>0x00000000|- rs2_w0_val == 1048576<br>                                                                                                                    |[0x80000584]:MULSR64 t5, t6, t4<br> [0x80000588]:sw t5, 232(ra)<br>  |
|  52|[0x800023a8]<br>0x00000000|- rs2_w0_val == 524288<br> - rs1_w0_val == 1048576<br>                                                                                         |[0x80000598]:MULSR64 t5, t6, t4<br> [0x8000059c]:sw t5, 240(ra)<br>  |
|  53|[0x800023b0]<br>0xFF7C0000|- rs2_w0_val == 262144<br>                                                                                                                     |[0x800005ac]:MULSR64 t5, t6, t4<br> [0x800005b0]:sw t5, 248(ra)<br>  |
|  54|[0x800023b8]<br>0xFFFE0000|- rs2_w0_val == 131072<br>                                                                                                                     |[0x800005c4]:MULSR64 t5, t6, t4<br> [0x800005c8]:sw t5, 256(ra)<br>  |
|  55|[0x800023c0]<br>0xFFFF0000|- rs2_w0_val == 65536<br> - rs1_w0_val == 2147483647<br>                                                                                       |[0x800005dc]:MULSR64 t5, t6, t4<br> [0x800005e0]:sw t5, 264(ra)<br>  |
|  56|[0x800023c8]<br>0xFFF78000|- rs2_w0_val == 32768<br> - rs1_w0_val == -17<br>                                                                                              |[0x800005f0]:MULSR64 t5, t6, t4<br> [0x800005f4]:sw t5, 272(ra)<br>  |
|  57|[0x800023d0]<br>0xAAAA8000|- rs2_w0_val == 16384<br>                                                                                                                      |[0x80000608]:MULSR64 t5, t6, t4<br> [0x8000060c]:sw t5, 280(ra)<br>  |
|  58|[0x800023d8]<br>0x10000000|- rs2_w0_val == 8192<br>                                                                                                                       |[0x8000061c]:MULSR64 t5, t6, t4<br> [0x80000620]:sw t5, 288(ra)<br>  |
|  59|[0x800023e0]<br>0xFFFFF000|- rs2_w0_val == 4096<br> - rs1_w0_val == -16777217<br>                                                                                         |[0x80000634]:MULSR64 t5, t6, t4<br> [0x80000638]:sw t5, 296(ra)<br>  |
|  60|[0x800023e8]<br>0xFFFFF800|- rs2_w0_val == 2048<br>                                                                                                                       |[0x80000650]:MULSR64 t5, t6, t4<br> [0x80000654]:sw t5, 304(ra)<br>  |
|  61|[0x800023f0]<br>0x08000000|- rs2_w0_val == 1024<br> - rs1_w0_val == 131072<br>                                                                                            |[0x80000664]:MULSR64 t5, t6, t4<br> [0x80000668]:sw t5, 312(ra)<br>  |
|  62|[0x800023f8]<br>0x00000000|- rs2_w0_val == 512<br> - rs1_w0_val == 134217728<br>                                                                                          |[0x80000678]:MULSR64 t5, t6, t4<br> [0x8000067c]:sw t5, 320(ra)<br>  |
|  63|[0x80002400]<br>0xFFFFF600|- rs2_w0_val == 256<br>                                                                                                                        |[0x8000068c]:MULSR64 t5, t6, t4<br> [0x80000690]:sw t5, 328(ra)<br>  |
|  64|[0x80002408]<br>0x7FFFFF80|- rs2_w0_val == 128<br>                                                                                                                        |[0x800006a4]:MULSR64 t5, t6, t4<br> [0x800006a8]:sw t5, 336(ra)<br>  |
|  65|[0x80002410]<br>0xFFFFFFC0|- rs2_w0_val == 64<br> - rs1_w0_val == -67108865<br>                                                                                           |[0x800006bc]:MULSR64 t5, t6, t4<br> [0x800006c0]:sw t5, 344(ra)<br>  |
|  66|[0x80002418]<br>0x00000200|- rs2_w0_val == 32<br>                                                                                                                         |[0x800006d0]:MULSR64 t5, t6, t4<br> [0x800006d4]:sw t5, 352(ra)<br>  |
|  67|[0x80002420]<br>0x55555550|- rs2_w0_val == 16<br> - rs1_w0_val == 1431655765<br>                                                                                          |[0x800006e8]:MULSR64 t5, t6, t4<br> [0x800006ec]:sw t5, 360(ra)<br>  |
|  68|[0x80002428]<br>0x00020000|- rs2_w0_val == 4<br>                                                                                                                          |[0x800006fc]:MULSR64 t5, t6, t4<br> [0x80000700]:sw t5, 368(ra)<br>  |
|  69|[0x80002430]<br>0x00200000|- rs2_w0_val == 2<br>                                                                                                                          |[0x80000710]:MULSR64 t5, t6, t4<br> [0x80000714]:sw t5, 376(ra)<br>  |
|  70|[0x80002438]<br>0xFFFEFFFF|- rs2_w0_val == 1<br>                                                                                                                          |[0x80000728]:MULSR64 t5, t6, t4<br> [0x8000072c]:sw t5, 384(ra)<br>  |
|  71|[0x80002448]<br>0xFFFFFF80|- rs1_w0_val == -1073741825<br>                                                                                                                |[0x80000754]:MULSR64 t5, t6, t4<br> [0x80000758]:sw t5, 400(ra)<br>  |
|  72|[0x80002450]<br>0xFFFFFC00|- rs1_w0_val == -536870913<br>                                                                                                                 |[0x8000076c]:MULSR64 t5, t6, t4<br> [0x80000770]:sw t5, 408(ra)<br>  |
|  73|[0x80002458]<br>0x04800001|- rs1_w0_val == -8388609<br>                                                                                                                   |[0x80000788]:MULSR64 t5, t6, t4<br> [0x8000078c]:sw t5, 416(ra)<br>  |
|  74|[0x80002460]<br>0xC0000000|- rs1_w0_val == -4194305<br>                                                                                                                   |[0x800007a0]:MULSR64 t5, t6, t4<br> [0x800007a4]:sw t5, 424(ra)<br>  |
|  75|[0x80002468]<br>0xFF9FFFFD|- rs1_w0_val == -2097153<br>                                                                                                                   |[0x800007b8]:MULSR64 t5, t6, t4<br> [0x800007bc]:sw t5, 432(ra)<br>  |
|  76|[0x80002470]<br>0x00060003|- rs1_w0_val == -131073<br>                                                                                                                    |[0x800007d0]:MULSR64 t5, t6, t4<br> [0x800007d4]:sw t5, 440(ra)<br>  |
|  77|[0x80002478]<br>0xFF000000|- rs1_w0_val == -32769<br>                                                                                                                     |[0x800007e8]:MULSR64 t5, t6, t4<br> [0x800007ec]:sw t5, 448(ra)<br>  |
|  78|[0x80002480]<br>0x40002001|- rs1_w0_val == -8193<br>                                                                                                                      |[0x80000804]:MULSR64 t5, t6, t4<br> [0x80000808]:sw t5, 456(ra)<br>  |
|  79|[0x80002488]<br>0x08001001|- rs1_w0_val == -4097<br>                                                                                                                      |[0x80000820]:MULSR64 t5, t6, t4<br> [0x80000824]:sw t5, 464(ra)<br>  |
|  80|[0x80002490]<br>0xFFFFFDFE|- rs1_w0_val == -257<br>                                                                                                                       |[0x80000834]:MULSR64 t5, t6, t4<br> [0x80000838]:sw t5, 472(ra)<br>  |
|  81|[0x80002498]<br>0x81000081|- rs1_w0_val == -129<br>                                                                                                                       |[0x8000084c]:MULSR64 t5, t6, t4<br> [0x80000850]:sw t5, 480(ra)<br>  |
|  82|[0x800024a0]<br>0xFEFC0000|- rs1_w0_val == -65<br>                                                                                                                        |[0x80000860]:MULSR64 t5, t6, t4<br> [0x80000864]:sw t5, 488(ra)<br>  |
|  83|[0x800024a8]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                         |[0x80000874]:MULSR64 t5, t6, t4<br> [0x80000878]:sw t5, 496(ra)<br>  |
|  84|[0x800024b0]<br>0xE0000000|- rs1_w0_val == 536870912<br>                                                                                                                  |[0x8000088c]:MULSR64 t5, t6, t4<br> [0x80000890]:sw t5, 504(ra)<br>  |
|  85|[0x800024b8]<br>0xFE000000|- rs1_w0_val == 33554432<br>                                                                                                                   |[0x800008a4]:MULSR64 t5, t6, t4<br> [0x800008a8]:sw t5, 512(ra)<br>  |
|  86|[0x800024c0]<br>0xAA000000|- rs1_w0_val == 16777216<br>                                                                                                                   |[0x800008bc]:MULSR64 t5, t6, t4<br> [0x800008c0]:sw t5, 520(ra)<br>  |
|  87|[0x800024c8]<br>0xFFC00000|- rs1_w0_val == 4194304<br>                                                                                                                    |[0x800008d0]:MULSR64 t5, t6, t4<br> [0x800008d4]:sw t5, 528(ra)<br>  |
|  88|[0x800024d0]<br>0xFFE00000|- rs1_w0_val == 2097152<br>                                                                                                                    |[0x800008e8]:MULSR64 t5, t6, t4<br> [0x800008ec]:sw t5, 536(ra)<br>  |
|  89|[0x800024d8]<br>0xDFF80000|- rs1_w0_val == 524288<br>                                                                                                                     |[0x800008fc]:MULSR64 t5, t6, t4<br> [0x80000900]:sw t5, 544(ra)<br>  |
|  90|[0x800024e0]<br>0x00000000|- rs1_w0_val == 65536<br>                                                                                                                      |[0x80000910]:MULSR64 t5, t6, t4<br> [0x80000914]:sw t5, 552(ra)<br>  |
|  91|[0x800024e8]<br>0x00008000|- rs1_w0_val == 16384<br>                                                                                                                      |[0x80000924]:MULSR64 t5, t6, t4<br> [0x80000928]:sw t5, 560(ra)<br>  |
|  92|[0x800024f0]<br>0xFFFFC000|- rs1_w0_val == 8192<br>                                                                                                                       |[0x80000938]:MULSR64 t5, t6, t4<br> [0x8000093c]:sw t5, 568(ra)<br>  |
|  93|[0x800024f8]<br>0xFFDFF800|- rs1_w0_val == 2048<br>                                                                                                                       |[0x80000950]:MULSR64 t5, t6, t4<br> [0x80000954]:sw t5, 576(ra)<br>  |
|  94|[0x80002500]<br>0xFFFFFB00|- rs1_w0_val == 256<br>                                                                                                                        |[0x80000964]:MULSR64 t5, t6, t4<br> [0x80000968]:sw t5, 584(ra)<br>  |
|  95|[0x80002508]<br>0xFFFFFF80|- rs1_w0_val == 128<br>                                                                                                                        |[0x8000097c]:MULSR64 t5, t6, t4<br> [0x80000980]:sw t5, 592(ra)<br>  |
|  96|[0x80002510]<br>0x00000008|- rs2_w0_val == 8<br>                                                                                                                          |[0x80000990]:MULSR64 t5, t6, t4<br> [0x80000994]:sw t5, 600(ra)<br>  |
|  97|[0x80002518]<br>0xA8000000|- rs1_w0_val == 67108864<br>                                                                                                                   |[0x800009a8]:MULSR64 t5, t6, t4<br> [0x800009ac]:sw t5, 608(ra)<br>  |
|  98|[0x80002520]<br>0xFFFBFE00|- rs1_w0_val == 512<br>                                                                                                                        |[0x800009bc]:MULSR64 t5, t6, t4<br> [0x800009c0]:sw t5, 616(ra)<br>  |
|  99|[0x80002528]<br>0x10000041|- rs2_w0_val == -65<br>                                                                                                                        |[0x800009d4]:MULSR64 t5, t6, t4<br> [0x800009d8]:sw t5, 624(ra)<br>  |
