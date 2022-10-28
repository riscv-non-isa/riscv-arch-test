
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b10')]      |
| SIG_REGION                | [('0x80002210', '0x800024d0', '176 words')]      |
| COV_LABELS                | kmmwt2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmwt2.u-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 176      |
| STAT1                     | 87      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 88     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:KMMWT2_U t6, t5, t4
      [0x80000730]:csrrs t5, vxsat, zero
      [0x80000734]:sw t6, 208(tp)
 -- Signature Address: 0x800023c0 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -8193
      - rs2_h0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwt2.u', 'rs1 : x10', 'rs2 : x10', 'rd : x10', 'rs1 == rs2 == rd', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000118]:KMMWT2_U a0, a0, a0
	-[0x8000011c]:csrrs a0, vxsat, zero
	-[0x80000120]:sw a0, 0(tp)
Current Store : [0x80000124] : sw a0, 4(tp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x23', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000134]:KMMWT2_U s7, s9, s9
	-[0x80000138]:csrrs s9, vxsat, zero
	-[0x8000013c]:sw s7, 8(tp)
Current Store : [0x80000140] : sw s9, 12(tp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x3', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == -1', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000150]:KMMWT2_U s11, t1, gp
	-[0x80000154]:csrrs t1, vxsat, zero
	-[0x80000158]:sw s11, 16(tp)
Current Store : [0x8000015c] : sw t1, 20(tp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000168]:KMMWT2_U a7, s6, a7
	-[0x8000016c]:csrrs s6, vxsat, zero
	-[0x80000170]:sw a7, 24(tp)
Current Store : [0x80000174] : sw s6, 28(tp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x24', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs2_h0_val == 16384', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000184]:KMMWT2_U s8, s8, fp
	-[0x80000188]:csrrs s8, vxsat, zero
	-[0x8000018c]:sw s8, 32(tp)
Current Store : [0x80000190] : sw s8, 36(tp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x8', 'rs2_h1_val == -8193', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800001a4]:KMMWT2_U fp, t4, sp
	-[0x800001a8]:csrrs t4, vxsat, zero
	-[0x800001ac]:sw fp, 40(tp)
Current Store : [0x800001b0] : sw t4, 44(tp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x26', 'rd : x21', 'rs2_h1_val == -4097', 'rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x800001bc]:KMMWT2_U s5, t2, s10
	-[0x800001c0]:csrrs t2, vxsat, zero
	-[0x800001c4]:sw s5, 48(tp)
Current Store : [0x800001c8] : sw t2, 52(tp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x18', 'rd : x12', 'rs2_h1_val == -2049', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800001d8]:KMMWT2_U a2, t3, s2
	-[0x800001dc]:csrrs t3, vxsat, zero
	-[0x800001e0]:sw a2, 56(tp)
Current Store : [0x800001e4] : sw t3, 60(tp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x9', 'rd : x18', 'rs2_h1_val == -1025', 'rs2_h0_val == -17', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800001f4]:KMMWT2_U s2, a6, s1
	-[0x800001f8]:csrrs a6, vxsat, zero
	-[0x800001fc]:sw s2, 64(tp)
Current Store : [0x80000200] : sw a6, 68(tp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x31', 'rs2_h1_val == -513', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000210]:KMMWT2_U t6, s7, t0
	-[0x80000214]:csrrs s7, vxsat, zero
	-[0x80000218]:sw t6, 72(tp)
Current Store : [0x8000021c] : sw s7, 76(tp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rd : x7', 'rs2_h1_val == -257', 'rs2_h0_val == 8', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000022c]:KMMWT2_U t2, s10, s4
	-[0x80000230]:csrrs s10, vxsat, zero
	-[0x80000234]:sw t2, 80(tp)
Current Store : [0x80000238] : sw s10, 84(tp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rd : x1', 'rs2_h1_val == -129', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000248]:KMMWT2_U ra, t5, a5
	-[0x8000024c]:csrrs t5, vxsat, zero
	-[0x80000250]:sw ra, 88(tp)
Current Store : [0x80000254] : sw t5, 92(tp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x20', 'rs2_h1_val == -65', 'rs2_h0_val == 21845', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000268]:KMMWT2_U s4, t6, a6
	-[0x8000026c]:csrrs t6, vxsat, zero
	-[0x80000270]:sw s4, 96(tp)
Current Store : [0x80000274] : sw t6, 100(tp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x9', 'rs2_h1_val == -33', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000284]:KMMWT2_U s1, a5, t3
	-[0x80000288]:csrrs a5, vxsat, zero
	-[0x8000028c]:sw s1, 104(tp)
Current Store : [0x80000290] : sw a5, 108(tp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x13', 'rs2_h1_val == -17', 'rs2_h0_val == -129', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800002a4]:KMMWT2_U a3, a1, s3
	-[0x800002a8]:csrrs a1, vxsat, zero
	-[0x800002ac]:sw a3, 112(tp)
Current Store : [0x800002b0] : sw a1, 116(tp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x11', 'rs2_h1_val == -9', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800002cc]:KMMWT2_U a1, fp, tp
	-[0x800002d0]:csrrs fp, vxsat, zero
	-[0x800002d4]:sw a1, 0(ra)
Current Store : [0x800002d8] : sw fp, 4(ra) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x22', 'rd : x28', 'rs2_h1_val == -5', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800002ec]:KMMWT2_U t3, gp, s6
	-[0x800002f0]:csrrs gp, vxsat, zero
	-[0x800002f4]:sw t3, 8(ra)
Current Store : [0x800002f8] : sw gp, 12(ra) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x7', 'rd : x15', 'rs2_h1_val == -3', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000304]:KMMWT2_U a5, s2, t2
	-[0x80000308]:csrrs s2, vxsat, zero
	-[0x8000030c]:sw a5, 16(ra)
Current Store : [0x80000310] : sw s2, 20(ra) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x4', 'rs2_h1_val == -2', 'rs2_h0_val == 32', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000324]:KMMWT2_U tp, s5, a1
	-[0x80000328]:csrrs s5, vxsat, zero
	-[0x8000032c]:sw tp, 24(ra)
Current Store : [0x80000330] : sw s5, 28(ra) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x27', 'rd : x16', 'rs2_h1_val == -32768', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000340]:KMMWT2_U a6, tp, s11
	-[0x80000344]:csrrs tp, vxsat, zero
	-[0x80000348]:sw a6, 32(ra)
Current Store : [0x8000034c] : sw tp, 36(ra) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rd : x22', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000035c]:KMMWT2_U s6, s11, t6
	-[0x80000360]:csrrs s11, vxsat, zero
	-[0x80000364]:sw s6, 40(ra)
Current Store : [0x80000368] : sw s11, 44(ra) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x19', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000378]:KMMWT2_U s3, sp, zero
	-[0x8000037c]:csrrs sp, vxsat, zero
	-[0x80000380]:sw s3, 48(ra)
Current Store : [0x80000384] : sw sp, 52(ra) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x14', 'rd : x26', 'rs2_h1_val == 4096', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000394]:KMMWT2_U s10, s4, a4
	-[0x80000398]:csrrs s4, vxsat, zero
	-[0x8000039c]:sw s10, 56(ra)
Current Store : [0x800003a0] : sw s4, 60(ra) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x25', 'rs2_h1_val == 2048', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800003b4]:KMMWT2_U s9, a2, t4
	-[0x800003b8]:csrrs a2, vxsat, zero
	-[0x800003bc]:sw s9, 64(ra)
Current Store : [0x800003c0] : sw a2, 68(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x13', 'rd : x29', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800003d0]:KMMWT2_U t4, a4, a3
	-[0x800003d4]:csrrs a4, vxsat, zero
	-[0x800003d8]:sw t4, 72(ra)
Current Store : [0x800003dc] : sw a4, 76(ra) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x24', 'rd : x14', 'rs2_h1_val == 512', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800003f0]:KMMWT2_U a4, s1, s8
	-[0x800003f4]:csrrs s1, vxsat, zero
	-[0x800003f8]:sw a4, 80(ra)
Current Store : [0x800003fc] : sw s1, 84(ra) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rd : x5', 'rs2_h1_val == 256', 'rs2_h0_val == 8192', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000408]:KMMWT2_U t0, s3, s7
	-[0x8000040c]:csrrs s3, vxsat, zero
	-[0x80000410]:sw t0, 88(ra)
Current Store : [0x80000414] : sw s3, 92(ra) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x30', 'rs1_w0_val == -2147483648', 'rs2_h1_val == 128', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000424]:KMMWT2_U t5, a3, a2
	-[0x80000428]:csrrs a3, vxsat, zero
	-[0x8000042c]:sw t5, 96(ra)
Current Store : [0x80000430] : sw a3, 100(ra) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x2', 'rs2_h1_val == 64', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000448]:KMMWT2_U sp, t0, ra
	-[0x8000044c]:csrrs t0, vxsat, zero
	-[0x80000450]:sw sp, 0(tp)
Current Store : [0x80000454] : sw t0, 4(tp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x3', 'rs2_h1_val == 32', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000464]:KMMWT2_U gp, a7, t1
	-[0x80000468]:csrrs a7, vxsat, zero
	-[0x8000046c]:sw gp, 8(tp)
Current Store : [0x80000470] : sw a7, 12(tp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x0', 'rs2_h1_val == 16', 'rs2_h0_val == 16', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000484]:KMMWT2_U zero, ra, s5
	-[0x80000488]:csrrs ra, vxsat, zero
	-[0x8000048c]:sw zero, 16(tp)
Current Store : [0x80000490] : sw ra, 20(tp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x6', 'rs2_h1_val == 8', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800004a0]:KMMWT2_U t1, zero, t5
	-[0x800004a4]:csrrs zero, vxsat, zero
	-[0x800004a8]:sw t1, 24(tp)
Current Store : [0x800004ac] : sw zero, 28(tp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800004c0]:KMMWT2_U t6, t5, t4
	-[0x800004c4]:csrrs t5, vxsat, zero
	-[0x800004c8]:sw t6, 32(tp)
Current Store : [0x800004cc] : sw t5, 36(tp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800004dc]:KMMWT2_U t6, t5, t4
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 40(tp)
Current Store : [0x800004e8] : sw t5, 44(tp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800004f8]:KMMWT2_U t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 48(tp)
Current Store : [0x80000504] : sw t5, 52(tp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000518]:KMMWT2_U t6, t5, t4
	-[0x8000051c]:csrrs t5, vxsat, zero
	-[0x80000520]:sw t6, 56(tp)
Current Store : [0x80000524] : sw t5, 60(tp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000530]:KMMWT2_U t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 64(tp)
Current Store : [0x8000053c] : sw t5, 68(tp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x8000054c]:KMMWT2_U t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 72(tp)
Current Store : [0x80000558] : sw t5, 76(tp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000568]:KMMWT2_U t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 80(tp)
Current Store : [0x80000574] : sw t5, 84(tp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000584]:KMMWT2_U t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 88(tp)
Current Store : [0x80000590] : sw t5, 92(tp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800005a0]:KMMWT2_U t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 96(tp)
Current Store : [0x800005ac] : sw t5, 100(tp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800005bc]:KMMWT2_U t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 104(tp)
Current Store : [0x800005c8] : sw t5, 108(tp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005d8]:KMMWT2_U t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 112(tp)
Current Store : [0x800005e4] : sw t5, 116(tp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800005f4]:KMMWT2_U t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 120(tp)
Current Store : [0x80000600] : sw t5, 124(tp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000614]:KMMWT2_U t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 128(tp)
Current Store : [0x80000620] : sw t5, 132(tp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000630]:KMMWT2_U t6, t5, t4
	-[0x80000634]:csrrs t5, vxsat, zero
	-[0x80000638]:sw t6, 136(tp)
Current Store : [0x8000063c] : sw t5, 140(tp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x8000064c]:KMMWT2_U t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 144(tp)
Current Store : [0x80000658] : sw t5, 148(tp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000668]:KMMWT2_U t6, t5, t4
	-[0x8000066c]:csrrs t5, vxsat, zero
	-[0x80000670]:sw t6, 152(tp)
Current Store : [0x80000674] : sw t5, 156(tp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000680]:KMMWT2_U t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 160(tp)
Current Store : [0x8000068c] : sw t5, 164(tp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800006a0]:KMMWT2_U t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 168(tp)
Current Store : [0x800006ac] : sw t5, 172(tp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800006bc]:KMMWT2_U t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 176(tp)
Current Store : [0x800006c8] : sw t5, 180(tp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800006dc]:KMMWT2_U t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 184(tp)
Current Store : [0x800006e8] : sw t5, 188(tp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800006f8]:KMMWT2_U t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 192(tp)
Current Store : [0x80000704] : sw t5, 196(tp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000714]:KMMWT2_U t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 200(tp)
Current Store : [0x80000720] : sw t5, 204(tp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['opcode : kmmwt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -8193', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x8000072c]:KMMWT2_U t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 208(tp)
Current Store : [0x80000738] : sw t5, 212(tp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000074c]:KMMWT2_U t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 216(tp)
Current Store : [0x80000758] : sw t5, 220(tp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000076c]:KMMWT2_U t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 224(tp)
Current Store : [0x80000778] : sw t5, 228(tp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000078c]:KMMWT2_U t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 232(tp)
Current Store : [0x80000798] : sw t5, 236(tp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800007ac]:KMMWT2_U t6, t5, t4
	-[0x800007b0]:csrrs t5, vxsat, zero
	-[0x800007b4]:sw t6, 240(tp)
Current Store : [0x800007b8] : sw t5, 244(tp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800007cc]:KMMWT2_U t6, t5, t4
	-[0x800007d0]:csrrs t5, vxsat, zero
	-[0x800007d4]:sw t6, 248(tp)
Current Store : [0x800007d8] : sw t5, 252(tp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800007ec]:KMMWT2_U t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 256(tp)
Current Store : [0x800007f8] : sw t5, 260(tp) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000808]:KMMWT2_U t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 264(tp)
Current Store : [0x80000814] : sw t5, 268(tp) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000828]:KMMWT2_U t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 272(tp)
Current Store : [0x80000834] : sw t5, 276(tp) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000848]:KMMWT2_U t6, t5, t4
	-[0x8000084c]:csrrs t5, vxsat, zero
	-[0x80000850]:sw t6, 280(tp)
Current Store : [0x80000854] : sw t5, 284(tp) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000868]:KMMWT2_U t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 288(tp)
Current Store : [0x80000874] : sw t5, 292(tp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000888]:KMMWT2_U t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 296(tp)
Current Store : [0x80000894] : sw t5, 300(tp) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800008a4]:KMMWT2_U t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 304(tp)
Current Store : [0x800008b0] : sw t5, 308(tp) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800008c4]:KMMWT2_U t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 312(tp)
Current Store : [0x800008d0] : sw t5, 316(tp) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800008e4]:KMMWT2_U t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 320(tp)
Current Store : [0x800008f0] : sw t5, 324(tp) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000904]:KMMWT2_U t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 328(tp)
Current Store : [0x80000910] : sw t5, 332(tp) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000920]:KMMWT2_U t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 336(tp)
Current Store : [0x8000092c] : sw t5, 340(tp) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000093c]:KMMWT2_U t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 344(tp)
Current Store : [0x80000948] : sw t5, 348(tp) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000958]:KMMWT2_U t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 352(tp)
Current Store : [0x80000964] : sw t5, 356(tp) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000974]:KMMWT2_U t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 360(tp)
Current Store : [0x80000980] : sw t5, 364(tp) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000990]:KMMWT2_U t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 368(tp)
Current Store : [0x8000099c] : sw t5, 372(tp) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009ac]:KMMWT2_U t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 376(tp)
Current Store : [0x800009b8] : sw t5, 380(tp) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009c8]:KMMWT2_U t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 384(tp)
Current Store : [0x800009d4] : sw t5, 388(tp) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800009e4]:KMMWT2_U t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 392(tp)
Current Store : [0x800009f0] : sw t5, 396(tp) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a00]:KMMWT2_U t6, t5, t4
	-[0x80000a04]:csrrs t5, vxsat, zero
	-[0x80000a08]:sw t6, 400(tp)
Current Store : [0x80000a0c] : sw t5, 404(tp) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a1c]:KMMWT2_U t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 408(tp)
Current Store : [0x80000a28] : sw t5, 412(tp) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a38]:KMMWT2_U t6, t5, t4
	-[0x80000a3c]:csrrs t5, vxsat, zero
	-[0x80000a40]:sw t6, 416(tp)
Current Store : [0x80000a44] : sw t5, 420(tp) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a50]:KMMWT2_U t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 424(tp)
Current Store : [0x80000a5c] : sw t5, 428(tp) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000a6c]:KMMWT2_U t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 432(tp)
Current Store : [0x80000a78] : sw t5, 436(tp) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000a88]:KMMWT2_U t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 440(tp)
Current Store : [0x80000a94] : sw t5, 444(tp) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000aa4]:KMMWT2_U t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 448(tp)
Current Store : [0x80000ab0] : sw t5, 452(tp) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ac0]:KMMWT2_U t6, t5, t4
	-[0x80000ac4]:csrrs t5, vxsat, zero
	-[0x80000ac8]:sw t6, 456(tp)
Current Store : [0x80000acc] : sw t5, 460(tp) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000adc]:KMMWT2_U t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 464(tp)
Current Store : [0x80000ae8] : sw t5, 468(tp) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000af8]:KMMWT2_U t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 472(tp)
Current Store : [0x80000b04] : sw t5, 476(tp) -- Store: [0x800024cc]:0x00000000





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

|s.no|        signature         |                                                                                coverpoints                                                                                |                                                     code                                                      |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmwt2.u<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs2_h0_val == 2<br>                                                        |[0x80000118]:KMMWT2_U a0, a0, a0<br> [0x8000011c]:csrrs a0, vxsat, zero<br> [0x80000120]:sw a0, 0(tp)<br>      |
|   2|[0x80002218]<br>0x38E471C5|- rs1 : x25<br> - rs2 : x25<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4<br>                                                     |[0x80000134]:KMMWT2_U s7, s9, s9<br> [0x80000138]:csrrs s9, vxsat, zero<br> [0x8000013c]:sw s7, 8(tp)<br>      |
|   3|[0x80002220]<br>0x2AAA8000|- rs1 : x6<br> - rs2 : x3<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -1<br> - rs1_w0_val == 1073741824<br> |[0x80000150]:KMMWT2_U s11, t1, gp<br> [0x80000154]:csrrs t1, vxsat, zero<br> [0x80000158]:sw s11, 16(tp)<br>   |
|   4|[0x80002228]<br>0xFFFFFFF7|- rs1 : x22<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -9<br>                                                     |[0x80000168]:KMMWT2_U a7, s6, a7<br> [0x8000016c]:csrrs s6, vxsat, zero<br> [0x80000170]:sw a7, 24(tp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x24<br> - rs2 : x8<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br> - rs1_w0_val == -1073741825<br>                  |[0x80000184]:KMMWT2_U s8, s8, fp<br> [0x80000188]:csrrs s8, vxsat, zero<br> [0x8000018c]:sw s8, 32(tp)<br>     |
|   6|[0x80002238]<br>0x10008000|- rs1 : x29<br> - rs2 : x2<br> - rd : x8<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -9<br>                                                                              |[0x800001a4]:KMMWT2_U fp, t4, sp<br> [0x800001a8]:csrrs t4, vxsat, zero<br> [0x800001ac]:sw fp, 40(tp)<br>     |
|   7|[0x80002240]<br>0x00000001|- rs1 : x7<br> - rs2 : x26<br> - rd : x21<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -32768<br>                                                                         |[0x800001bc]:KMMWT2_U s5, t2, s10<br> [0x800001c0]:csrrs t2, vxsat, zero<br> [0x800001c4]:sw s5, 48(tp)<br>    |
|   8|[0x80002248]<br>0xFDFFC000|- rs1 : x28<br> - rs2 : x18<br> - rd : x12<br> - rs2_h1_val == -2049<br> - rs1_w0_val == 536870912<br>                                                                     |[0x800001d8]:KMMWT2_U a2, t3, s2<br> [0x800001dc]:csrrs t3, vxsat, zero<br> [0x800001e0]:sw a2, 56(tp)<br>     |
|   9|[0x80002250]<br>0x00000000|- rs1 : x16<br> - rs2 : x9<br> - rd : x18<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -17<br> - rs1_w0_val == -1<br>                                                     |[0x800001f4]:KMMWT2_U s2, a6, s1<br> [0x800001f8]:csrrs a6, vxsat, zero<br> [0x800001fc]:sw s2, 64(tp)<br>     |
|  10|[0x80002258]<br>0x00000008|- rs1 : x23<br> - rs2 : x5<br> - rd : x31<br> - rs2_h1_val == -513<br> - rs1_w0_val == -513<br>                                                                            |[0x80000210]:KMMWT2_U t6, s7, t0<br> [0x80000214]:csrrs s7, vxsat, zero<br> [0x80000218]:sw t6, 72(tp)<br>     |
|  11|[0x80002260]<br>0xFFFFFF80|- rs1 : x26<br> - rs2 : x20<br> - rd : x7<br> - rs2_h1_val == -257<br> - rs2_h0_val == 8<br> - rs1_w0_val == 16384<br>                                                     |[0x8000022c]:KMMWT2_U t2, s10, s4<br> [0x80000230]:csrrs s10, vxsat, zero<br> [0x80000234]:sw t2, 80(tp)<br>   |
|  12|[0x80002268]<br>0xFFFF7F00|- rs1 : x30<br> - rs2 : x15<br> - rd : x1<br> - rs2_h1_val == -129<br> - rs1_w0_val == 8388608<br>                                                                         |[0x80000248]:KMMWT2_U ra, t5, a5<br> [0x8000024c]:csrrs t5, vxsat, zero<br> [0x80000250]:sw ra, 88(tp)<br>     |
|  13|[0x80002270]<br>0x00004100|- rs1 : x31<br> - rs2 : x16<br> - rd : x20<br> - rs2_h1_val == -65<br> - rs2_h0_val == 21845<br> - rs1_w0_val == -8388609<br>                                              |[0x80000268]:KMMWT2_U s4, t6, a6<br> [0x8000026c]:csrrs t6, vxsat, zero<br> [0x80000270]:sw s4, 96(tp)<br>     |
|  14|[0x80002278]<br>0x00000000|- rs1 : x15<br> - rs2 : x28<br> - rd : x9<br> - rs2_h1_val == -33<br> - rs1_w0_val == 128<br>                                                                              |[0x80000284]:KMMWT2_U s1, a5, t3<br> [0x80000288]:csrrs a5, vxsat, zero<br> [0x8000028c]:sw s1, 104(tp)<br>    |
|  15|[0x80002280]<br>0x00008800|- rs1 : x11<br> - rs2 : x19<br> - rd : x13<br> - rs2_h1_val == -17<br> - rs2_h0_val == -129<br> - rs1_w0_val == -67108865<br>                                              |[0x800002a4]:KMMWT2_U a3, a1, s3<br> [0x800002a8]:csrrs a1, vxsat, zero<br> [0x800002ac]:sw a3, 112(tp)<br>    |
|  16|[0x80002288]<br>0x00004800|- rs1 : x8<br> - rs2 : x4<br> - rd : x11<br> - rs2_h1_val == -9<br> - rs2_h0_val == -16385<br>                                                                             |[0x800002cc]:KMMWT2_U a1, fp, tp<br> [0x800002d0]:csrrs fp, vxsat, zero<br> [0x800002d4]:sw a1, 0(ra)<br>      |
|  17|[0x80002290]<br>0x00000001|- rs1 : x3<br> - rs2 : x22<br> - rd : x28<br> - rs2_h1_val == -5<br> - rs1_w0_val == -8193<br>                                                                             |[0x800002ec]:KMMWT2_U t3, gp, s6<br> [0x800002f0]:csrrs gp, vxsat, zero<br> [0x800002f4]:sw t3, 8(ra)<br>      |
|  18|[0x80002298]<br>0x00000000|- rs1 : x18<br> - rs2 : x7<br> - rd : x15<br> - rs2_h1_val == -3<br> - rs1_w0_val == -5<br>                                                                                |[0x80000304]:KMMWT2_U a5, s2, t2<br> [0x80000308]:csrrs s2, vxsat, zero<br> [0x8000030c]:sw a5, 16(ra)<br>     |
|  19|[0x800022a0]<br>0x00000001|- rs1 : x21<br> - rs2 : x11<br> - rd : x4<br> - rs2_h1_val == -2<br> - rs2_h0_val == 32<br> - rs1_w0_val == -16385<br>                                                     |[0x80000324]:KMMWT2_U tp, s5, a1<br> [0x80000328]:csrrs s5, vxsat, zero<br> [0x8000032c]:sw tp, 24(ra)<br>     |
|  20|[0x800022a8]<br>0xFF000000|- rs1 : x4<br> - rs2 : x27<br> - rd : x16<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 16777216<br>                                                                      |[0x80000340]:KMMWT2_U a6, tp, s11<br> [0x80000344]:csrrs tp, vxsat, zero<br> [0x80000348]:sw a6, 32(ra)<br>    |
|  21|[0x800022b0]<br>0x00002000|- rs1 : x27<br> - rs2 : x31<br> - rd : x22<br> - rs2_h1_val == 16384<br>                                                                                                   |[0x8000035c]:KMMWT2_U s6, s11, t6<br> [0x80000360]:csrrs s11, vxsat, zero<br> [0x80000364]:sw s6, 40(ra)<br>   |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x2<br> - rs2 : x0<br> - rd : x19<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 268435456<br>                                                     |[0x80000378]:KMMWT2_U s3, sp, zero<br> [0x8000037c]:csrrs sp, vxsat, zero<br> [0x80000380]:sw s3, 48(ra)<br>   |
|  23|[0x800022c0]<br>0x00000004|- rs1 : x20<br> - rs2 : x14<br> - rd : x26<br> - rs2_h1_val == 4096<br> - rs1_w0_val == 32<br>                                                                             |[0x80000394]:KMMWT2_U s10, s4, a4<br> [0x80000398]:csrrs s4, vxsat, zero<br> [0x8000039c]:sw s10, 56(ra)<br>   |
|  24|[0x800022c8]<br>0xFFFFF800|- rs1 : x12<br> - rs2 : x29<br> - rd : x25<br> - rs2_h1_val == 2048<br> - rs1_w0_val == -32769<br>                                                                         |[0x800003b4]:KMMWT2_U s9, a2, t4<br> [0x800003b8]:csrrs a2, vxsat, zero<br> [0x800003bc]:sw s9, 64(ra)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x29<br> - rs2_h1_val == 1024<br>                                                                                                    |[0x800003d0]:KMMWT2_U t4, a4, a3<br> [0x800003d4]:csrrs a4, vxsat, zero<br> [0x800003d8]:sw t4, 72(ra)<br>     |
|  26|[0x800022d8]<br>0xFFFFFF80|- rs1 : x9<br> - rs2 : x24<br> - rd : x14<br> - rs2_h1_val == 512<br> - rs2_h0_val == -2<br>                                                                               |[0x800003f0]:KMMWT2_U a4, s1, s8<br> [0x800003f4]:csrrs s1, vxsat, zero<br> [0x800003f8]:sw a4, 80(ra)<br>     |
|  27|[0x800022e0]<br>0x00004000|- rs1 : x19<br> - rs2 : x23<br> - rd : x5<br> - rs2_h1_val == 256<br> - rs2_h0_val == 8192<br> - rs1_w0_val == 2097152<br>                                                 |[0x80000408]:KMMWT2_U t0, s3, s7<br> [0x8000040c]:csrrs s3, vxsat, zero<br> [0x80000410]:sw t0, 88(ra)<br>     |
|  28|[0x800022e8]<br>0xFF800000|- rs1 : x13<br> - rs2 : x12<br> - rd : x30<br> - rs1_w0_val == -2147483648<br> - rs2_h1_val == 128<br> - rs2_h0_val == -2049<br>                                           |[0x80000424]:KMMWT2_U t5, a3, a2<br> [0x80000428]:csrrs a3, vxsat, zero<br> [0x8000042c]:sw t5, 96(ra)<br>     |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x1<br> - rd : x2<br> - rs2_h1_val == 64<br> - rs2_h0_val == -21846<br>                                                                              |[0x80000448]:KMMWT2_U sp, t0, ra<br> [0x8000044c]:csrrs t0, vxsat, zero<br> [0x80000450]:sw sp, 0(tp)<br>      |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x17<br> - rs2 : x6<br> - rd : x3<br> - rs2_h1_val == 32<br> - rs1_w0_val == 4<br>                                                                                  |[0x80000464]:KMMWT2_U gp, a7, t1<br> [0x80000468]:csrrs a7, vxsat, zero<br> [0x8000046c]:sw gp, 8(tp)<br>      |
|  31|[0x80002300]<br>0x00000000|- rs1 : x1<br> - rs2 : x21<br> - rd : x0<br> - rs2_h1_val == 16<br> - rs2_h0_val == 16<br> - rs1_w0_val == -1048577<br>                                                    |[0x80000484]:KMMWT2_U zero, ra, s5<br> [0x80000488]:csrrs ra, vxsat, zero<br> [0x8000048c]:sw zero, 16(tp)<br> |
|  32|[0x80002308]<br>0x00000000|- rs1 : x0<br> - rs2 : x30<br> - rd : x6<br> - rs2_h1_val == 8<br> - rs1_w0_val == 0<br>                                                                                   |[0x800004a0]:KMMWT2_U t1, zero, t5<br> [0x800004a4]:csrrs zero, vxsat, zero<br> [0x800004a8]:sw t1, 24(tp)<br> |
|  33|[0x80002310]<br>0xFFFFFF80|- rs2_h1_val == 4<br>                                                                                                                                                      |[0x800004c0]:KMMWT2_U t6, t5, t4<br> [0x800004c4]:csrrs t5, vxsat, zero<br> [0x800004c8]:sw t6, 32(tp)<br>     |
|  34|[0x80002318]<br>0x00000020|- rs2_h1_val == 2<br> - rs1_w0_val == 524288<br>                                                                                                                           |[0x800004dc]:KMMWT2_U t6, t5, t4<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 40(tp)<br>     |
|  35|[0x80002320]<br>0xFFFF8000|- rs2_h1_val == 1<br>                                                                                                                                                      |[0x800004f8]:KMMWT2_U t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 48(tp)<br>     |
|  36|[0x80002328]<br>0x00000000|- rs2_h0_val == 32767<br>                                                                                                                                                  |[0x80000518]:KMMWT2_U t6, t5, t4<br> [0x8000051c]:csrrs t5, vxsat, zero<br> [0x80000520]:sw t6, 56(tp)<br>     |
|  37|[0x80002330]<br>0x00000000|- rs1_w0_val == 512<br>                                                                                                                                                    |[0x80000530]:KMMWT2_U t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 64(tp)<br>     |
|  38|[0x80002338]<br>0x00000000|- rs2_h0_val == 512<br> - rs1_w0_val == 256<br>                                                                                                                            |[0x8000054c]:KMMWT2_U t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 72(tp)<br>     |
|  39|[0x80002340]<br>0xFFFFFFC0|- rs2_h0_val == -5<br> - rs1_w0_val == 64<br>                                                                                                                              |[0x80000568]:KMMWT2_U t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 80(tp)<br>     |
|  40|[0x80002348]<br>0x00000000|- rs2_h0_val == -65<br> - rs1_w0_val == 16<br>                                                                                                                             |[0x80000584]:KMMWT2_U t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 88(tp)<br>     |
|  41|[0x80002350]<br>0x00000000|- rs2_h0_val == -513<br> - rs1_w0_val == 8<br>                                                                                                                             |[0x800005a0]:KMMWT2_U t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 96(tp)<br>     |
|  42|[0x80002358]<br>0x00000001|- rs2_h0_val == -257<br> - rs1_w0_val == 2<br>                                                                                                                             |[0x800005bc]:KMMWT2_U t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 104(tp)<br>    |
|  43|[0x80002360]<br>0x00000000|- rs1_w0_val == 1<br>                                                                                                                                                      |[0x800005d8]:KMMWT2_U t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 112(tp)<br>    |
|  44|[0x80002368]<br>0x00000000|- rs2_h0_val == -1025<br>                                                                                                                                                  |[0x800005f4]:KMMWT2_U t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 120(tp)<br>    |
|  45|[0x80002370]<br>0x00000000|- rs2_h1_val == -1<br> - rs2_h0_val == 256<br>                                                                                                                             |[0x80000614]:KMMWT2_U t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 128(tp)<br>    |
|  46|[0x80002378]<br>0x0FFFE000|- rs2_h0_val == -8193<br>                                                                                                                                                  |[0x80000630]:KMMWT2_U t6, t5, t4<br> [0x80000634]:csrrs t5, vxsat, zero<br> [0x80000638]:sw t6, 136(tp)<br>    |
|  47|[0x80002380]<br>0x00000000|- rs2_h0_val == -4097<br>                                                                                                                                                  |[0x8000064c]:KMMWT2_U t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 144(tp)<br>    |
|  48|[0x80002388]<br>0x00000000|- rs2_h0_val == -33<br>                                                                                                                                                    |[0x80000668]:KMMWT2_U t6, t5, t4<br> [0x8000066c]:csrrs t5, vxsat, zero<br> [0x80000670]:sw t6, 152(tp)<br>    |
|  49|[0x80002390]<br>0xFFFF0000|- rs2_h0_val == 4096<br> - rs1_w0_val == 131072<br>                                                                                                                        |[0x80000680]:KMMWT2_U t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 160(tp)<br>    |
|  50|[0x80002398]<br>0x00007000|- rs2_h0_val == 2048<br> - rs1_w0_val == -134217729<br>                                                                                                                    |[0x800006a0]:KMMWT2_U t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 168(tp)<br>    |
|  51|[0x800023a0]<br>0xFFFFFFFC|- rs2_h0_val == 1024<br> - rs1_w0_val == 4096<br>                                                                                                                          |[0x800006bc]:KMMWT2_U t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 176(tp)<br>    |
|  52|[0x800023a8]<br>0x00000000|- rs2_h0_val == 128<br> - rs1_w0_val == 2048<br>                                                                                                                           |[0x800006dc]:KMMWT2_U t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 184(tp)<br>    |
|  53|[0x800023b0]<br>0x00000009|- rs2_h0_val == 64<br>                                                                                                                                                     |[0x800006f8]:KMMWT2_U t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 192(tp)<br>    |
|  54|[0x800023b8]<br>0x00000000|- rs2_h0_val == 1<br>                                                                                                                                                      |[0x80000714]:KMMWT2_U t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 200(tp)<br>    |
|  55|[0x800023c8]<br>0xEAAAAAAB|- rs2_h1_val == 8192<br> - rs1_w0_val == -1431655766<br>                                                                                                                   |[0x8000074c]:KMMWT2_U t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 216(tp)<br>    |
|  56|[0x800023d0]<br>0x002AAAAB|- rs1_w0_val == 1431655765<br>                                                                                                                                             |[0x8000076c]:KMMWT2_U t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 224(tp)<br>    |
|  57|[0x800023d8]<br>0xFF7F0000|- rs1_w0_val == 2147483647<br>                                                                                                                                             |[0x8000078c]:KMMWT2_U t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 232(tp)<br>    |
|  58|[0x800023e0]<br>0xFFFF0000|- rs1_w0_val == -536870913<br>                                                                                                                                             |[0x800007ac]:KMMWT2_U t6, t5, t4<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sw t6, 240(tp)<br>    |
|  59|[0x800023e8]<br>0xFFF80000|- rs1_w0_val == -268435457<br>                                                                                                                                             |[0x800007cc]:KMMWT2_U t6, t5, t4<br> [0x800007d0]:csrrs t5, vxsat, zero<br> [0x800007d4]:sw t6, 248(tp)<br>    |
|  60|[0x800023f0]<br>0x00001400|- rs1_w0_val == -33554433<br>                                                                                                                                              |[0x800007ec]:KMMWT2_U t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 256(tp)<br>    |
|  61|[0x800023f8]<br>0xFFFFFA00|- rs1_w0_val == -16777217<br>                                                                                                                                              |[0x80000808]:KMMWT2_U t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 264(tp)<br>    |
|  62|[0x80002400]<br>0x00020080|- rs1_w0_val == -4194305<br>                                                                                                                                               |[0x80000828]:KMMWT2_U t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 272(tp)<br>    |
|  63|[0x80002408]<br>0x00002040|- rs1_w0_val == -2097153<br>                                                                                                                                               |[0x80000848]:KMMWT2_U t6, t5, t4<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sw t6, 280(tp)<br>    |
|  64|[0x80002410]<br>0x00000810|- rs1_w0_val == -524289<br>                                                                                                                                                |[0x80000868]:KMMWT2_U t6, t5, t4<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sw t6, 288(tp)<br>    |
|  65|[0x80002418]<br>0x00010008|- rs1_w0_val == -262145<br>                                                                                                                                                |[0x80000888]:KMMWT2_U t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 296(tp)<br>    |
|  66|[0x80002420]<br>0x00000404|- rs1_w0_val == -131073<br>                                                                                                                                                |[0x800008a4]:KMMWT2_U t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 304(tp)<br>    |
|  67|[0x80002428]<br>0x0000AAAD|- rs1_w0_val == -65537<br>                                                                                                                                                 |[0x800008c4]:KMMWT2_U t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 312(tp)<br>    |
|  68|[0x80002430]<br>0xFFFFFFFF|- rs1_w0_val == -4097<br>                                                                                                                                                  |[0x800008e4]:KMMWT2_U t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 320(tp)<br>    |
|  69|[0x80002438]<br>0x00000556|- rs1_w0_val == -2049<br>                                                                                                                                                  |[0x80000904]:KMMWT2_U t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 328(tp)<br>    |
|  70|[0x80002440]<br>0x00000000|- rs1_w0_val == -1025<br>                                                                                                                                                  |[0x80000920]:KMMWT2_U t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 336(tp)<br>    |
|  71|[0x80002448]<br>0x00000000|- rs1_w0_val == -257<br>                                                                                                                                                   |[0x8000093c]:KMMWT2_U t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 344(tp)<br>    |
|  72|[0x80002450]<br>0x00000002|- rs1_w0_val == -129<br>                                                                                                                                                   |[0x80000958]:KMMWT2_U t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 352(tp)<br>    |
|  73|[0x80002458]<br>0x00000000|- rs1_w0_val == -65<br>                                                                                                                                                    |[0x80000974]:KMMWT2_U t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 360(tp)<br>    |
|  74|[0x80002460]<br>0xFFFFFFF8|- rs1_w0_val == -33<br>                                                                                                                                                    |[0x80000990]:KMMWT2_U t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 368(tp)<br>    |
|  75|[0x80002468]<br>0x00000009|- rs1_w0_val == -17<br>                                                                                                                                                    |[0x800009ac]:KMMWT2_U t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 376(tp)<br>    |
|  76|[0x80002470]<br>0x00000000|- rs1_w0_val == -3<br>                                                                                                                                                     |[0x800009c8]:KMMWT2_U t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 384(tp)<br>    |
|  77|[0x80002478]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                                                     |[0x800009e4]:KMMWT2_U t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 392(tp)<br>    |
|  78|[0x80002480]<br>0x05555000|- rs1_w0_val == 134217728<br>                                                                                                                                              |[0x80000a00]:KMMWT2_U t6, t5, t4<br> [0x80000a04]:csrrs t5, vxsat, zero<br> [0x80000a08]:sw t6, 400(tp)<br>    |
|  79|[0x80002488]<br>0x02AAA800|- rs1_w0_val == 67108864<br>                                                                                                                                               |[0x80000a1c]:KMMWT2_U t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 408(tp)<br>    |
|  80|[0x80002490]<br>0xFFFFF000|- rs2_h0_val == -3<br> - rs1_w0_val == 33554432<br>                                                                                                                        |[0x80000a38]:KMMWT2_U t6, t5, t4<br> [0x80000a3c]:csrrs t5, vxsat, zero<br> [0x80000a40]:sw t6, 416(tp)<br>    |
|  81|[0x80002498]<br>0x00000800|- rs1_w0_val == 4194304<br>                                                                                                                                                |[0x80000a50]:KMMWT2_U t6, t5, t4<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sw t6, 424(tp)<br>    |
|  82|[0x800024a0]<br>0xFFF7FFE0|- rs1_w0_val == 1048576<br>                                                                                                                                                |[0x80000a6c]:KMMWT2_U t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 432(tp)<br>    |
|  83|[0x800024a8]<br>0xFFFFFEFE|- rs1_w0_val == 65536<br>                                                                                                                                                  |[0x80000a88]:KMMWT2_U t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 440(tp)<br>    |
|  84|[0x800024b0]<br>0xFFFFF7FF|- rs1_w0_val == 32768<br>                                                                                                                                                  |[0x80000aa4]:KMMWT2_U t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 448(tp)<br>    |
|  85|[0x800024b8]<br>0x00001000|- rs1_w0_val == 8192<br>                                                                                                                                                   |[0x80000ac0]:KMMWT2_U t6, t5, t4<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sw t6, 456(tp)<br>    |
|  86|[0x800024c0]<br>0x00000020|- rs1_w0_val == 262144<br>                                                                                                                                                 |[0x80000adc]:KMMWT2_U t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 464(tp)<br>    |
|  87|[0x800024c8]<br>0x00000000|- rs1_w0_val == 1024<br>                                                                                                                                                   |[0x80000af8]:KMMWT2_U t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 472(tp)<br>    |
