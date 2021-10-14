
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80002204', '0x80002374', '92 words')]      |
| COV_LABELS                | fcvt.w.s_b23      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fcvt.w.s_b23-01.S/ref.S    |
| Total Number of coverpoints| 114     |
| Total Coverpoints Hit     | 110      |
| Total Signature Updates   | 92      |
| STAT1                     | 45      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 46     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a0]:fcvt.w.s a1, fa0, dyn
      [0x800005a4]:csrrs a7, fflags, zero
      [0x800005a8]:sw a1, 112(a5)
 -- Signature Address: 0x8000236c Data: 0x7FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.w.s
      - rd : x11
      - rs1 : f10
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x24', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.w.s s8, fs8, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw s8, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rd : x1', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.w.s ra, ft1, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sw ra, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000010




Last Coverpoint : ['rd : x19', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.w.s s3, ft4, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sw s3, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000010




Last Coverpoint : ['rd : x16', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000174]:fcvt.w.s a6, fa1, dyn
	-[0x80000178]:csrrs s5, fflags, zero
	-[0x8000017c]:sw a6, 0(s3)
Current Store : [0x80000180] : sw s5, 4(s3) -- Store: [0x80002220]:0x00000010




Last Coverpoint : ['rd : x29', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.w.s t4, ft3, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sw t4, 0(a5)
Current Store : [0x800001a4] : sw a7, 4(a5) -- Store: [0x80002228]:0x00000010




Last Coverpoint : ['rd : x3', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fcvt.w.s gp, fa4, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sw gp, 8(a5)
Current Store : [0x800001bc] : sw a7, 12(a5) -- Store: [0x80002230]:0x00000010




Last Coverpoint : ['rd : x31', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.w.s t6, ft2, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw t6, 16(a5)
Current Store : [0x800001d4] : sw a7, 20(a5) -- Store: [0x80002238]:0x00000010




Last Coverpoint : ['rd : x23', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.w.s s7, fa0, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sw s7, 24(a5)
Current Store : [0x800001ec] : sw a7, 28(a5) -- Store: [0x80002240]:0x00000010




Last Coverpoint : ['rd : x5', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fcvt.w.s t0, ft0, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sw t0, 32(a5)
Current Store : [0x80000204] : sw a7, 36(a5) -- Store: [0x80002248]:0x00000010




Last Coverpoint : ['rd : x21', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000210]:fcvt.w.s s5, fs10, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sw s5, 40(a5)
Current Store : [0x8000021c] : sw a7, 44(a5) -- Store: [0x80002250]:0x00000010




Last Coverpoint : ['rd : x0', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fcvt.w.s zero, fs1, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sw zero, 48(a5)
Current Store : [0x80000234] : sw a7, 52(a5) -- Store: [0x80002258]:0x00000010




Last Coverpoint : ['rd : x4', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000240]:fcvt.w.s tp, fs5, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sw tp, 56(a5)
Current Store : [0x8000024c] : sw a7, 60(a5) -- Store: [0x80002260]:0x00000010




Last Coverpoint : ['rd : x17', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000264]:fcvt.w.s a7, ft11, dyn
	-[0x80000268]:csrrs s5, fflags, zero
	-[0x8000026c]:sw a7, 0(s3)
Current Store : [0x80000270] : sw s5, 4(s3) -- Store: [0x80002268]:0x00000010




Last Coverpoint : ['rd : x26', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000288]:fcvt.w.s s10, ft6, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sw s10, 0(a5)
Current Store : [0x80000294] : sw a7, 4(a5) -- Store: [0x80002270]:0x00000010




Last Coverpoint : ['rd : x11', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fcvt.w.s a1, fa3, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sw a1, 8(a5)
Current Store : [0x800002ac] : sw a7, 12(a5) -- Store: [0x80002278]:0x00000010




Last Coverpoint : ['rd : x20', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fcvt.w.s s4, ft10, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw s4, 16(a5)
Current Store : [0x800002c4] : sw a7, 20(a5) -- Store: [0x80002280]:0x00000010




Last Coverpoint : ['rd : x25', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fcvt.w.s s9, fs0, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sw s9, 24(a5)
Current Store : [0x800002dc] : sw a7, 28(a5) -- Store: [0x80002288]:0x00000010




Last Coverpoint : ['rd : x30', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fcvt.w.s t5, fa2, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sw t5, 32(a5)
Current Store : [0x800002f4] : sw a7, 36(a5) -- Store: [0x80002290]:0x00000010




Last Coverpoint : ['rd : x18', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000300]:fcvt.w.s s2, fs7, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sw s2, 40(a5)
Current Store : [0x8000030c] : sw a7, 44(a5) -- Store: [0x80002298]:0x00000010




Last Coverpoint : ['rd : x12', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.w.s a2, fs6, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw a2, 48(a5)
Current Store : [0x80000324] : sw a7, 52(a5) -- Store: [0x800022a0]:0x00000010




Last Coverpoint : ['rd : x27', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.w.s s11, fa6, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw s11, 56(a5)
Current Store : [0x8000033c] : sw a7, 60(a5) -- Store: [0x800022a8]:0x00000010




Last Coverpoint : ['rd : x10', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000348]:fcvt.w.s a0, fs11, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sw a0, 64(a5)
Current Store : [0x80000354] : sw a7, 68(a5) -- Store: [0x800022b0]:0x00000010




Last Coverpoint : ['rd : x28', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000360]:fcvt.w.s t3, fs4, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sw t3, 72(a5)
Current Store : [0x8000036c] : sw a7, 76(a5) -- Store: [0x800022b8]:0x00000010




Last Coverpoint : ['rd : x14', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000378]:fcvt.w.s a4, fs3, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw a4, 80(a5)
Current Store : [0x80000384] : sw a7, 84(a5) -- Store: [0x800022c0]:0x00000010




Last Coverpoint : ['rd : x22', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000390]:fcvt.w.s s6, fa5, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw s6, 88(a5)
Current Store : [0x8000039c] : sw a7, 92(a5) -- Store: [0x800022c8]:0x00000010




Last Coverpoint : ['rd : x13', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fcvt.w.s a3, ft7, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sw a3, 96(a5)
Current Store : [0x800003b4] : sw a7, 100(a5) -- Store: [0x800022d0]:0x00000010




Last Coverpoint : ['rd : x7', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fcvt.w.s t2, ft5, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sw t2, 104(a5)
Current Store : [0x800003cc] : sw a7, 108(a5) -- Store: [0x800022d8]:0x00000010




Last Coverpoint : ['rd : x9', 'rs1 : f25', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fcvt.w.s s1, fs9, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sw s1, 112(a5)
Current Store : [0x800003e4] : sw a7, 116(a5) -- Store: [0x800022e0]:0x00000010




Last Coverpoint : ['rd : x8', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fcvt.w.s fp, ft8, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw fp, 120(a5)
Current Store : [0x800003fc] : sw a7, 124(a5) -- Store: [0x800022e8]:0x00000010




Last Coverpoint : ['rd : x2', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000408]:fcvt.w.s sp, ft9, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sw sp, 128(a5)
Current Store : [0x80000414] : sw a7, 132(a5) -- Store: [0x800022f0]:0x00000010




Last Coverpoint : ['rd : x15', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fcvt.w.s a5, fa7, dyn
	-[0x80000430]:csrrs s5, fflags, zero
	-[0x80000434]:sw a5, 0(s3)
Current Store : [0x80000438] : sw s5, 4(s3) -- Store: [0x800022f8]:0x00000010




Last Coverpoint : ['rd : x6', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000450]:fcvt.w.s t1, fs2, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sw t1, 0(a5)
Current Store : [0x8000045c] : sw a7, 4(a5) -- Store: [0x80002300]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.w.s a1, fa0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sw a1, 8(a5)
Current Store : [0x80000474] : sw a7, 12(a5) -- Store: [0x80002308]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000480]:fcvt.w.s a1, fa0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:sw a1, 16(a5)
Current Store : [0x8000048c] : sw a7, 20(a5) -- Store: [0x80002310]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000498]:fcvt.w.s a1, fa0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:sw a1, 24(a5)
Current Store : [0x800004a4] : sw a7, 28(a5) -- Store: [0x80002318]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fcvt.w.s a1, fa0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:sw a1, 32(a5)
Current Store : [0x800004bc] : sw a7, 36(a5) -- Store: [0x80002320]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fcvt.w.s a1, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:sw a1, 40(a5)
Current Store : [0x800004d4] : sw a7, 44(a5) -- Store: [0x80002328]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004e0]:fcvt.w.s a1, fa0, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:sw a1, 48(a5)
Current Store : [0x800004ec] : sw a7, 52(a5) -- Store: [0x80002330]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fcvt.w.s a1, fa0, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:sw a1, 56(a5)
Current Store : [0x80000504] : sw a7, 60(a5) -- Store: [0x80002338]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000510]:fcvt.w.s a1, fa0, dyn
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:sw a1, 64(a5)
Current Store : [0x8000051c] : sw a7, 68(a5) -- Store: [0x80002340]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fcvt.w.s a1, fa0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:sw a1, 72(a5)
Current Store : [0x80000534] : sw a7, 76(a5) -- Store: [0x80002348]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000540]:fcvt.w.s a1, fa0, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:sw a1, 80(a5)
Current Store : [0x8000054c] : sw a7, 84(a5) -- Store: [0x80002350]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000558]:fcvt.w.s a1, fa0, dyn
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:sw a1, 88(a5)
Current Store : [0x80000564] : sw a7, 92(a5) -- Store: [0x80002358]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000570]:fcvt.w.s a1, fa0, dyn
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:sw a1, 96(a5)
Current Store : [0x8000057c] : sw a7, 100(a5) -- Store: [0x80002360]:0x00000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000588]:fcvt.w.s a1, fa0, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:sw a1, 104(a5)
Current Store : [0x80000594] : sw a7, 108(a5) -- Store: [0x80002368]:0x00000010




Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x11', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fcvt.w.s a1, fa0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:sw a1, 112(a5)
Current Store : [0x800005ac] : sw a7, 116(a5) -- Store: [0x80002370]:0x00000010





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

|s.no|        signature         |                                                           coverpoints                                                            |                                                       code                                                       |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x7FFFFE00|- opcode : fcvt.w.s<br> - rd : x24<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.w.s s8, fs8, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw s8, 0(a5)<br>      |
|   2|[0x8000220c]<br>0x7FFFFFFF|- rd : x1<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat<br>                           |[0x80000138]:fcvt.w.s ra, ft1, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sw ra, 8(a5)<br>      |
|   3|[0x80002214]<br>0x7FFFFFFF|- rd : x19<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat<br>                          |[0x80000150]:fcvt.w.s s3, ft4, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sw s3, 16(a5)<br>     |
|   4|[0x8000221c]<br>0x7FFFFFFF|- rd : x16<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat<br>                         |[0x80000174]:fcvt.w.s a6, fa1, dyn<br> [0x80000178]:csrrs s5, fflags, zero<br> [0x8000017c]:sw a6, 0(s3)<br>      |
|   5|[0x80002224]<br>0x7FFFFFFF|- rd : x29<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat<br>                          |[0x80000198]:fcvt.w.s t4, ft3, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sw t4, 0(a5)<br>      |
|   6|[0x8000222c]<br>0x7FFFFFFF|- rd : x3<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat<br>                          |[0x800001b0]:fcvt.w.s gp, fa4, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sw gp, 8(a5)<br>      |
|   7|[0x80002234]<br>0x7FFFFFFF|- rd : x31<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat<br>                          |[0x800001c8]:fcvt.w.s t6, ft2, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw t6, 16(a5)<br>     |
|   8|[0x8000223c]<br>0x7FFFFFFF|- rd : x23<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat<br>                         |[0x800001e0]:fcvt.w.s s7, fa0, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sw s7, 24(a5)<br>     |
|   9|[0x80002244]<br>0x7FFFFFFF|- rd : x5<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat<br>                           |[0x800001f8]:fcvt.w.s t0, ft0, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sw t0, 32(a5)<br>     |
|  10|[0x8000224c]<br>0x7FFFFFFF|- rd : x21<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat<br>                         |[0x80000210]:fcvt.w.s s5, fs10, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sw s5, 40(a5)<br>    |
|  11|[0x80002254]<br>0x00000000|- rd : x0<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat<br>                           |[0x80000228]:fcvt.w.s zero, fs1, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sw zero, 48(a5)<br> |
|  12|[0x8000225c]<br>0x7FFFFFFF|- rd : x4<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat<br>                          |[0x80000240]:fcvt.w.s tp, fs5, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sw tp, 56(a5)<br>     |
|  13|[0x80002264]<br>0x7FFFFFFF|- rd : x17<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat<br>                         |[0x80000264]:fcvt.w.s a7, ft11, dyn<br> [0x80000268]:csrrs s5, fflags, zero<br> [0x8000026c]:sw a7, 0(s3)<br>     |
|  14|[0x8000226c]<br>0x7FFFFFFF|- rd : x26<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat<br>                          |[0x80000288]:fcvt.w.s s10, ft6, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sw s10, 0(a5)<br>    |
|  15|[0x80002274]<br>0x7FFFFFFF|- rd : x11<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat<br>                         |[0x800002a0]:fcvt.w.s a1, fa3, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sw a1, 8(a5)<br>      |
|  16|[0x8000227c]<br>0x7FFFFFFF|- rd : x20<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat<br>                         |[0x800002b8]:fcvt.w.s s4, ft10, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw s4, 16(a5)<br>    |
|  17|[0x80002284]<br>0x7FFFFFFF|- rd : x25<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat<br>                          |[0x800002d0]:fcvt.w.s s9, fs0, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sw s9, 24(a5)<br>     |
|  18|[0x8000228c]<br>0x7FFFFFFF|- rd : x30<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat<br>                         |[0x800002e8]:fcvt.w.s t5, fa2, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sw t5, 32(a5)<br>     |
|  19|[0x80002294]<br>0x7FFFFFFF|- rd : x18<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat<br>                         |[0x80000300]:fcvt.w.s s2, fs7, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sw s2, 40(a5)<br>     |
|  20|[0x8000229c]<br>0x7FFFFFFF|- rd : x12<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat<br>                         |[0x80000318]:fcvt.w.s a2, fs6, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw a2, 48(a5)<br>     |
|  21|[0x800022a4]<br>0x7FFFFFFF|- rd : x27<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat<br>                         |[0x80000330]:fcvt.w.s s11, fa6, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw s11, 56(a5)<br>   |
|  22|[0x800022ac]<br>0x7FFFFFFF|- rd : x10<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat<br>                         |[0x80000348]:fcvt.w.s a0, fs11, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sw a0, 64(a5)<br>    |
|  23|[0x800022b4]<br>0x7FFFFFFF|- rd : x28<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat<br>                         |[0x80000360]:fcvt.w.s t3, fs4, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sw t3, 72(a5)<br>     |
|  24|[0x800022bc]<br>0x7FFFFFFF|- rd : x14<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat<br>                         |[0x80000378]:fcvt.w.s a4, fs3, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw a4, 80(a5)<br>     |
|  25|[0x800022c4]<br>0x7FFFFFFF|- rd : x22<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat<br>                         |[0x80000390]:fcvt.w.s s6, fa5, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw s6, 88(a5)<br>     |
|  26|[0x800022cc]<br>0x7FFFFFFF|- rd : x13<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br>                          |[0x800003a8]:fcvt.w.s a3, ft7, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sw a3, 96(a5)<br>     |
|  27|[0x800022d4]<br>0x7FFFFF80|- rd : x7<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat<br>                           |[0x800003c0]:fcvt.w.s t2, ft5, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sw t2, 104(a5)<br>    |
|  28|[0x800022dc]<br>0x7FFFFF80|- rd : x9<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat<br>                          |[0x800003d8]:fcvt.w.s s1, fs9, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sw s1, 112(a5)<br>    |
|  29|[0x800022e4]<br>0x7FFFFF80|- rd : x8<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat<br>                          |[0x800003f0]:fcvt.w.s fp, ft8, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw fp, 120(a5)<br>    |
|  30|[0x800022ec]<br>0x7FFFFF80|- rd : x2<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat<br>                          |[0x80000408]:fcvt.w.s sp, ft9, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sw sp, 128(a5)<br>    |
|  31|[0x800022f4]<br>0x7FFFFF80|- rd : x15<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                         |[0x8000042c]:fcvt.w.s a5, fa7, dyn<br> [0x80000430]:csrrs s5, fflags, zero<br> [0x80000434]:sw a5, 0(s3)<br>      |
|  32|[0x800022fc]<br>0x7FFFFF00|- rd : x6<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat<br>                          |[0x80000450]:fcvt.w.s t1, fs2, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sw t1, 0(a5)<br>      |
|  33|[0x80002304]<br>0x7FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat<br>                                                        |[0x80000468]:fcvt.w.s a1, fa0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:sw a1, 8(a5)<br>      |
|  34|[0x8000230c]<br>0x7FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat<br>                                                        |[0x80000480]:fcvt.w.s a1, fa0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:sw a1, 16(a5)<br>     |
|  35|[0x80002314]<br>0x7FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat<br>                                                        |[0x80000498]:fcvt.w.s a1, fa0, dyn<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:sw a1, 24(a5)<br>     |
|  36|[0x8000231c]<br>0x7FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                        |[0x800004b0]:fcvt.w.s a1, fa0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:sw a1, 32(a5)<br>     |
|  37|[0x80002324]<br>0x7FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat<br>                                                        |[0x800004c8]:fcvt.w.s a1, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:sw a1, 40(a5)<br>     |
|  38|[0x8000232c]<br>0x7FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat<br>                                                        |[0x800004e0]:fcvt.w.s a1, fa0, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:sw a1, 48(a5)<br>     |
|  39|[0x80002334]<br>0x7FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat<br>                                                        |[0x800004f8]:fcvt.w.s a1, fa0, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:sw a1, 56(a5)<br>     |
|  40|[0x8000233c]<br>0x7FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat<br>                                                        |[0x80000510]:fcvt.w.s a1, fa0, dyn<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sw a1, 64(a5)<br>     |
|  41|[0x80002344]<br>0x7FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat<br>                                                        |[0x80000528]:fcvt.w.s a1, fa0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:sw a1, 72(a5)<br>     |
|  42|[0x8000234c]<br>0x7FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat<br>                                                        |[0x80000540]:fcvt.w.s a1, fa0, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:sw a1, 80(a5)<br>     |
|  43|[0x80002354]<br>0x7FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat<br>                                                        |[0x80000558]:fcvt.w.s a1, fa0, dyn<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:sw a1, 88(a5)<br>     |
|  44|[0x8000235c]<br>0x7FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat<br>                                                        |[0x80000570]:fcvt.w.s a1, fa0, dyn<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:sw a1, 96(a5)<br>     |
|  45|[0x80002364]<br>0x7FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat<br>                                                        |[0x80000588]:fcvt.w.s a1, fa0, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:sw a1, 104(a5)<br>    |
