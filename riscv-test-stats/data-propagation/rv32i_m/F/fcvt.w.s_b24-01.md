
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b50')]      |
| SIG_REGION                | [('0x80002304', '0x80002654', '212 words')]      |
| COV_LABELS                | fcvt.w.s_b24      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fcvt.w.s_b24-01.S/ref.S    |
| Total Number of coverpoints| 174     |
| Total Coverpoints Hit     | 170      |
| Total Signature Updates   | 212      |
| STAT1                     | 105      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b40]:fcvt.w.s a1, fa0, dyn
      [0x80000b44]:csrrs a7, fflags, zero
      [0x80000b48]:sw a1, 696(a5)
 -- Signature Address: 0x8000264c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.w.s
      - rd : x11
      - rs1 : f10
      - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x7', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.w.s t2, fa4, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw t2, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002308]:0x00000001




Last Coverpoint : ['rd : x25', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.w.s s9, ft11, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sw s9, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002310]:0x00000001




Last Coverpoint : ['rd : x24', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.w.s s8, fs2, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sw s8, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002318]:0x00000001




Last Coverpoint : ['rd : x14', 'rs1 : f29', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.w.s a4, ft9, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sw a4, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002320]:0x00000001




Last Coverpoint : ['rd : x26', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.w.s s10, fs8, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sw s10, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002328]:0x00000001




Last Coverpoint : ['rd : x30', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.w.s t5, fs11, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sw t5, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002330]:0x00000001




Last Coverpoint : ['rd : x0', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fcvt.w.s zero, fs9, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sw zero, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002338]:0x00000001




Last Coverpoint : ['rd : x1', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.w.s ra, fs4, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw ra, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002340]:0x00000001




Last Coverpoint : ['rd : x12', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.w.s a2, fa1, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sw a2, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80002348]:0x00000001




Last Coverpoint : ['rd : x31', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fcvt.w.s t6, fa7, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sw t6, 72(a5)
Current Store : [0x80000204] : sw a7, 76(a5) -- Store: [0x80002350]:0x00000001




Last Coverpoint : ['rd : x8', 'rs1 : f6', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000210]:fcvt.w.s fp, ft6, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sw fp, 80(a5)
Current Store : [0x8000021c] : sw a7, 84(a5) -- Store: [0x80002358]:0x00000001




Last Coverpoint : ['rd : x17', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000234]:fcvt.w.s a7, fs0, dyn
	-[0x80000238]:csrrs s5, fflags, zero
	-[0x8000023c]:sw a7, 0(s3)
Current Store : [0x80000240] : sw s5, 4(s3) -- Store: [0x80002360]:0x00000001




Last Coverpoint : ['rd : x6', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000258]:fcvt.w.s t1, fa2, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sw t1, 0(a5)
Current Store : [0x80000264] : sw a7, 4(a5) -- Store: [0x80002368]:0x00000001




Last Coverpoint : ['rd : x23', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000270]:fcvt.w.s s7, fs7, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sw s7, 8(a5)
Current Store : [0x8000027c] : sw a7, 12(a5) -- Store: [0x80002370]:0x00000001




Last Coverpoint : ['rd : x15', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000294]:fcvt.w.s a5, fs1, dyn
	-[0x80000298]:csrrs s5, fflags, zero
	-[0x8000029c]:sw a5, 0(s3)
Current Store : [0x800002a0] : sw s5, 4(s3) -- Store: [0x80002378]:0x00000001




Last Coverpoint : ['rd : x19', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fcvt.w.s s3, fa0, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw s3, 0(a5)
Current Store : [0x800002c4] : sw a7, 4(a5) -- Store: [0x80002380]:0x00000001




Last Coverpoint : ['rd : x3', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fcvt.w.s gp, fs6, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sw gp, 8(a5)
Current Store : [0x800002dc] : sw a7, 12(a5) -- Store: [0x80002388]:0x00000001




Last Coverpoint : ['rd : x16', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002f4]:fcvt.w.s a6, fa5, dyn
	-[0x800002f8]:csrrs s5, fflags, zero
	-[0x800002fc]:sw a6, 0(s3)
Current Store : [0x80000300] : sw s5, 4(s3) -- Store: [0x80002390]:0x00000001




Last Coverpoint : ['rd : x11', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.w.s a1, ft1, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw a1, 0(a5)
Current Store : [0x80000324] : sw a7, 4(a5) -- Store: [0x80002398]:0x00000001




Last Coverpoint : ['rd : x5', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.w.s t0, ft7, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw t0, 8(a5)
Current Store : [0x8000033c] : sw a7, 12(a5) -- Store: [0x800023a0]:0x00000001




Last Coverpoint : ['rd : x10', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fcvt.w.s a0, fa3, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sw a0, 16(a5)
Current Store : [0x80000354] : sw a7, 20(a5) -- Store: [0x800023a8]:0x00000001




Last Coverpoint : ['rd : x28', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000360]:fcvt.w.s t3, ft3, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sw t3, 24(a5)
Current Store : [0x8000036c] : sw a7, 28(a5) -- Store: [0x800023b0]:0x00000001




Last Coverpoint : ['rd : x18', 'rs1 : f2', 'fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000378]:fcvt.w.s s2, ft2, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw s2, 32(a5)
Current Store : [0x80000384] : sw a7, 36(a5) -- Store: [0x800023b8]:0x00000001




Last Coverpoint : ['rd : x27', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000390]:fcvt.w.s s11, fs3, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw s11, 40(a5)
Current Store : [0x8000039c] : sw a7, 44(a5) -- Store: [0x800023c0]:0x00000001




Last Coverpoint : ['rd : x2', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fcvt.w.s sp, ft10, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sw sp, 48(a5)
Current Store : [0x800003b4] : sw a7, 52(a5) -- Store: [0x800023c8]:0x00000001




Last Coverpoint : ['rd : x22', 'rs1 : f0', 'fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fcvt.w.s s6, ft0, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sw s6, 56(a5)
Current Store : [0x800003cc] : sw a7, 60(a5) -- Store: [0x800023d0]:0x00000001




Last Coverpoint : ['rd : x9', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fcvt.w.s s1, ft8, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sw s1, 64(a5)
Current Store : [0x800003e4] : sw a7, 68(a5) -- Store: [0x800023d8]:0x00000001




Last Coverpoint : ['rd : x13', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fcvt.w.s a3, ft5, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw a3, 72(a5)
Current Store : [0x800003fc] : sw a7, 76(a5) -- Store: [0x800023e0]:0x00000001




Last Coverpoint : ['rd : x20', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000408]:fcvt.w.s s4, fs10, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sw s4, 80(a5)
Current Store : [0x80000414] : sw a7, 84(a5) -- Store: [0x800023e8]:0x00000001




Last Coverpoint : ['rd : x29', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000420]:fcvt.w.s t4, ft4, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sw t4, 88(a5)
Current Store : [0x8000042c] : sw a7, 92(a5) -- Store: [0x800023f0]:0x00000001




Last Coverpoint : ['rd : x4', 'rs1 : f21', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fcvt.w.s tp, fs5, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sw tp, 96(a5)
Current Store : [0x80000444] : sw a7, 100(a5) -- Store: [0x800023f8]:0x00000001




Last Coverpoint : ['rd : x21', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000450]:fcvt.w.s s5, fa6, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sw s5, 104(a5)
Current Store : [0x8000045c] : sw a7, 108(a5) -- Store: [0x80002400]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.w.s a1, fa0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sw a1, 112(a5)
Current Store : [0x80000474] : sw a7, 116(a5) -- Store: [0x80002408]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000480]:fcvt.w.s a1, fa0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:sw a1, 120(a5)
Current Store : [0x8000048c] : sw a7, 124(a5) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000498]:fcvt.w.s a1, fa0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:sw a1, 128(a5)
Current Store : [0x800004a4] : sw a7, 132(a5) -- Store: [0x80002418]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fcvt.w.s a1, fa0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:sw a1, 136(a5)
Current Store : [0x800004bc] : sw a7, 140(a5) -- Store: [0x80002420]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fcvt.w.s a1, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:sw a1, 144(a5)
Current Store : [0x800004d4] : sw a7, 148(a5) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004e0]:fcvt.w.s a1, fa0, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:sw a1, 152(a5)
Current Store : [0x800004ec] : sw a7, 156(a5) -- Store: [0x80002430]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fcvt.w.s a1, fa0, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:sw a1, 160(a5)
Current Store : [0x80000504] : sw a7, 164(a5) -- Store: [0x80002438]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000510]:fcvt.w.s a1, fa0, dyn
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:sw a1, 168(a5)
Current Store : [0x8000051c] : sw a7, 172(a5) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000528]:fcvt.w.s a1, fa0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:sw a1, 176(a5)
Current Store : [0x80000534] : sw a7, 180(a5) -- Store: [0x80002448]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000540]:fcvt.w.s a1, fa0, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:sw a1, 184(a5)
Current Store : [0x8000054c] : sw a7, 188(a5) -- Store: [0x80002450]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000558]:fcvt.w.s a1, fa0, dyn
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:sw a1, 192(a5)
Current Store : [0x80000564] : sw a7, 196(a5) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000570]:fcvt.w.s a1, fa0, dyn
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:sw a1, 200(a5)
Current Store : [0x8000057c] : sw a7, 204(a5) -- Store: [0x80002460]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000588]:fcvt.w.s a1, fa0, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:sw a1, 208(a5)
Current Store : [0x80000594] : sw a7, 212(a5) -- Store: [0x80002468]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fcvt.w.s a1, fa0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:sw a1, 216(a5)
Current Store : [0x800005ac] : sw a7, 220(a5) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005b8]:fcvt.w.s a1, fa0, dyn
	-[0x800005bc]:csrrs a7, fflags, zero
	-[0x800005c0]:sw a1, 224(a5)
Current Store : [0x800005c4] : sw a7, 228(a5) -- Store: [0x80002478]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fcvt.w.s a1, fa0, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:sw a1, 232(a5)
Current Store : [0x800005dc] : sw a7, 236(a5) -- Store: [0x80002480]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fcvt.w.s a1, fa0, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:sw a1, 240(a5)
Current Store : [0x800005f4] : sw a7, 244(a5) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fcvt.w.s a1, fa0, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:sw a1, 248(a5)
Current Store : [0x8000060c] : sw a7, 252(a5) -- Store: [0x80002490]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000618]:fcvt.w.s a1, fa0, dyn
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:sw a1, 256(a5)
Current Store : [0x80000624] : sw a7, 260(a5) -- Store: [0x80002498]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000630]:fcvt.w.s a1, fa0, dyn
	-[0x80000634]:csrrs a7, fflags, zero
	-[0x80000638]:sw a1, 264(a5)
Current Store : [0x8000063c] : sw a7, 268(a5) -- Store: [0x800024a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000648]:fcvt.w.s a1, fa0, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:sw a1, 272(a5)
Current Store : [0x80000654] : sw a7, 276(a5) -- Store: [0x800024a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000660]:fcvt.w.s a1, fa0, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:sw a1, 280(a5)
Current Store : [0x8000066c] : sw a7, 284(a5) -- Store: [0x800024b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fcvt.w.s a1, fa0, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:sw a1, 288(a5)
Current Store : [0x80000684] : sw a7, 292(a5) -- Store: [0x800024b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000690]:fcvt.w.s a1, fa0, dyn
	-[0x80000694]:csrrs a7, fflags, zero
	-[0x80000698]:sw a1, 296(a5)
Current Store : [0x8000069c] : sw a7, 300(a5) -- Store: [0x800024c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fcvt.w.s a1, fa0, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:sw a1, 304(a5)
Current Store : [0x800006b4] : sw a7, 308(a5) -- Store: [0x800024c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fcvt.w.s a1, fa0, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:sw a1, 312(a5)
Current Store : [0x800006cc] : sw a7, 316(a5) -- Store: [0x800024d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006d8]:fcvt.w.s a1, fa0, dyn
	-[0x800006dc]:csrrs a7, fflags, zero
	-[0x800006e0]:sw a1, 320(a5)
Current Store : [0x800006e4] : sw a7, 324(a5) -- Store: [0x800024d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fcvt.w.s a1, fa0, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:sw a1, 328(a5)
Current Store : [0x800006fc] : sw a7, 332(a5) -- Store: [0x800024e0]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000708]:fcvt.w.s a1, fa0, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:sw a1, 336(a5)
Current Store : [0x80000714] : sw a7, 340(a5) -- Store: [0x800024e8]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000720]:fcvt.w.s a1, fa0, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:sw a1, 344(a5)
Current Store : [0x8000072c] : sw a7, 348(a5) -- Store: [0x800024f0]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000738]:fcvt.w.s a1, fa0, dyn
	-[0x8000073c]:csrrs a7, fflags, zero
	-[0x80000740]:sw a1, 352(a5)
Current Store : [0x80000744] : sw a7, 356(a5) -- Store: [0x800024f8]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000750]:fcvt.w.s a1, fa0, dyn
	-[0x80000754]:csrrs a7, fflags, zero
	-[0x80000758]:sw a1, 360(a5)
Current Store : [0x8000075c] : sw a7, 364(a5) -- Store: [0x80002500]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000768]:fcvt.w.s a1, fa0, dyn
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:sw a1, 368(a5)
Current Store : [0x80000774] : sw a7, 372(a5) -- Store: [0x80002508]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000780]:fcvt.w.s a1, fa0, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:sw a1, 376(a5)
Current Store : [0x8000078c] : sw a7, 380(a5) -- Store: [0x80002510]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000798]:fcvt.w.s a1, fa0, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:sw a1, 384(a5)
Current Store : [0x800007a4] : sw a7, 388(a5) -- Store: [0x80002518]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007b0]:fcvt.w.s a1, fa0, dyn
	-[0x800007b4]:csrrs a7, fflags, zero
	-[0x800007b8]:sw a1, 392(a5)
Current Store : [0x800007bc] : sw a7, 396(a5) -- Store: [0x80002520]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fcvt.w.s a1, fa0, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:sw a1, 400(a5)
Current Store : [0x800007d4] : sw a7, 404(a5) -- Store: [0x80002528]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fcvt.w.s a1, fa0, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:sw a1, 408(a5)
Current Store : [0x800007ec] : sw a7, 412(a5) -- Store: [0x80002530]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007f8]:fcvt.w.s a1, fa0, dyn
	-[0x800007fc]:csrrs a7, fflags, zero
	-[0x80000800]:sw a1, 416(a5)
Current Store : [0x80000804] : sw a7, 420(a5) -- Store: [0x80002538]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000810]:fcvt.w.s a1, fa0, dyn
	-[0x80000814]:csrrs a7, fflags, zero
	-[0x80000818]:sw a1, 424(a5)
Current Store : [0x8000081c] : sw a7, 428(a5) -- Store: [0x80002540]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000828]:fcvt.w.s a1, fa0, dyn
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:sw a1, 432(a5)
Current Store : [0x80000834] : sw a7, 436(a5) -- Store: [0x80002548]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000840]:fcvt.w.s a1, fa0, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:sw a1, 440(a5)
Current Store : [0x8000084c] : sw a7, 444(a5) -- Store: [0x80002550]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000858]:fcvt.w.s a1, fa0, dyn
	-[0x8000085c]:csrrs a7, fflags, zero
	-[0x80000860]:sw a1, 448(a5)
Current Store : [0x80000864] : sw a7, 452(a5) -- Store: [0x80002558]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000870]:fcvt.w.s a1, fa0, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:sw a1, 456(a5)
Current Store : [0x8000087c] : sw a7, 460(a5) -- Store: [0x80002560]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000888]:fcvt.w.s a1, fa0, dyn
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:sw a1, 464(a5)
Current Store : [0x80000894] : sw a7, 468(a5) -- Store: [0x80002568]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fcvt.w.s a1, fa0, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:sw a1, 472(a5)
Current Store : [0x800008ac] : sw a7, 476(a5) -- Store: [0x80002570]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008b8]:fcvt.w.s a1, fa0, dyn
	-[0x800008bc]:csrrs a7, fflags, zero
	-[0x800008c0]:sw a1, 480(a5)
Current Store : [0x800008c4] : sw a7, 484(a5) -- Store: [0x80002578]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008d0]:fcvt.w.s a1, fa0, dyn
	-[0x800008d4]:csrrs a7, fflags, zero
	-[0x800008d8]:sw a1, 488(a5)
Current Store : [0x800008dc] : sw a7, 492(a5) -- Store: [0x80002580]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fcvt.w.s a1, fa0, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:sw a1, 496(a5)
Current Store : [0x800008f4] : sw a7, 500(a5) -- Store: [0x80002588]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000900]:fcvt.w.s a1, fa0, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:sw a1, 504(a5)
Current Store : [0x8000090c] : sw a7, 508(a5) -- Store: [0x80002590]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000918]:fcvt.w.s a1, fa0, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:sw a1, 512(a5)
Current Store : [0x80000924] : sw a7, 516(a5) -- Store: [0x80002598]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000930]:fcvt.w.s a1, fa0, dyn
	-[0x80000934]:csrrs a7, fflags, zero
	-[0x80000938]:sw a1, 520(a5)
Current Store : [0x8000093c] : sw a7, 524(a5) -- Store: [0x800025a0]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000948]:fcvt.w.s a1, fa0, dyn
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:sw a1, 528(a5)
Current Store : [0x80000954] : sw a7, 532(a5) -- Store: [0x800025a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000960]:fcvt.w.s a1, fa0, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:sw a1, 536(a5)
Current Store : [0x8000096c] : sw a7, 540(a5) -- Store: [0x800025b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000978]:fcvt.w.s a1, fa0, dyn
	-[0x8000097c]:csrrs a7, fflags, zero
	-[0x80000980]:sw a1, 544(a5)
Current Store : [0x80000984] : sw a7, 548(a5) -- Store: [0x800025b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000990]:fcvt.w.s a1, fa0, dyn
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:sw a1, 552(a5)
Current Store : [0x8000099c] : sw a7, 556(a5) -- Store: [0x800025c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009a8]:fcvt.w.s a1, fa0, dyn
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:sw a1, 560(a5)
Current Store : [0x800009b4] : sw a7, 564(a5) -- Store: [0x800025c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fcvt.w.s a1, fa0, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:sw a1, 568(a5)
Current Store : [0x800009cc] : sw a7, 572(a5) -- Store: [0x800025d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800009d8]:fcvt.w.s a1, fa0, dyn
	-[0x800009dc]:csrrs a7, fflags, zero
	-[0x800009e0]:sw a1, 576(a5)
Current Store : [0x800009e4] : sw a7, 580(a5) -- Store: [0x800025d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009f0]:fcvt.w.s a1, fa0, dyn
	-[0x800009f4]:csrrs a7, fflags, zero
	-[0x800009f8]:sw a1, 584(a5)
Current Store : [0x800009fc] : sw a7, 588(a5) -- Store: [0x800025e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a08]:fcvt.w.s a1, fa0, dyn
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:sw a1, 592(a5)
Current Store : [0x80000a14] : sw a7, 596(a5) -- Store: [0x800025e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fcvt.w.s a1, fa0, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:sw a1, 600(a5)
Current Store : [0x80000a2c] : sw a7, 604(a5) -- Store: [0x800025f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a38]:fcvt.w.s a1, fa0, dyn
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:sw a1, 608(a5)
Current Store : [0x80000a44] : sw a7, 612(a5) -- Store: [0x800025f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a50]:fcvt.w.s a1, fa0, dyn
	-[0x80000a54]:csrrs a7, fflags, zero
	-[0x80000a58]:sw a1, 616(a5)
Current Store : [0x80000a5c] : sw a7, 620(a5) -- Store: [0x80002600]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fcvt.w.s a1, fa0, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:sw a1, 624(a5)
Current Store : [0x80000a74] : sw a7, 628(a5) -- Store: [0x80002608]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fcvt.w.s a1, fa0, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:sw a1, 632(a5)
Current Store : [0x80000a8c] : sw a7, 636(a5) -- Store: [0x80002610]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a98]:fcvt.w.s a1, fa0, dyn
	-[0x80000a9c]:csrrs a7, fflags, zero
	-[0x80000aa0]:sw a1, 640(a5)
Current Store : [0x80000aa4] : sw a7, 644(a5) -- Store: [0x80002618]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ab0]:fcvt.w.s a1, fa0, dyn
	-[0x80000ab4]:csrrs a7, fflags, zero
	-[0x80000ab8]:sw a1, 648(a5)
Current Store : [0x80000abc] : sw a7, 652(a5) -- Store: [0x80002620]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:fcvt.w.s a1, fa0, dyn
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:sw a1, 656(a5)
Current Store : [0x80000ad4] : sw a7, 660(a5) -- Store: [0x80002628]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fcvt.w.s a1, fa0, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:sw a1, 664(a5)
Current Store : [0x80000aec] : sw a7, 668(a5) -- Store: [0x80002630]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000af8]:fcvt.w.s a1, fa0, dyn
	-[0x80000afc]:csrrs a7, fflags, zero
	-[0x80000b00]:sw a1, 672(a5)
Current Store : [0x80000b04] : sw a7, 676(a5) -- Store: [0x80002638]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fcvt.w.s a1, fa0, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:sw a1, 680(a5)
Current Store : [0x80000b1c] : sw a7, 684(a5) -- Store: [0x80002640]:0x00000001




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b28]:fcvt.w.s a1, fa0, dyn
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:sw a1, 688(a5)
Current Store : [0x80000b34] : sw a7, 692(a5) -- Store: [0x80002648]:0x00000001




Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x11', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fcvt.w.s a1, fa0, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:sw a1, 696(a5)
Current Store : [0x80000b4c] : sw a7, 700(a5) -- Store: [0x80002650]:0x00000001





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

|s.no|        signature         |                                                           coverpoints                                                           |                                                       code                                                       |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002304]<br>0x00000000|- opcode : fcvt.w.s<br> - rd : x7<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.w.s t2, fa4, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw t2, 0(a5)<br>      |
|   2|[0x8000230c]<br>0xFFFFFFFF|- rd : x25<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 4  #nosat<br>                        |[0x80000138]:fcvt.w.s s9, ft11, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sw s9, 8(a5)<br>     |
|   3|[0x80002314]<br>0x00000000|- rd : x24<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 3  #nosat<br>                        |[0x80000150]:fcvt.w.s s8, fs2, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sw s8, 16(a5)<br>     |
|   4|[0x8000231c]<br>0xFFFFFFFF|- rd : x14<br> - rs1 : f29<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 2  #nosat<br>                        |[0x80000168]:fcvt.w.s a4, ft9, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sw a4, 24(a5)<br>     |
|   5|[0x80002324]<br>0x00000000|- rd : x26<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 1  #nosat<br>                        |[0x80000180]:fcvt.w.s s10, fs8, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sw s10, 32(a5)<br>   |
|   6|[0x8000232c]<br>0xFFFFFFFF|- rd : x30<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 0  #nosat<br>                        |[0x80000198]:fcvt.w.s t5, fs11, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sw t5, 40(a5)<br>    |
|   7|[0x80002334]<br>0x00000000|- rd : x0<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat<br>                         |[0x800001b0]:fcvt.w.s zero, fs9, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sw zero, 48(a5)<br> |
|   8|[0x8000233c]<br>0x00000000|- rd : x1<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 3  #nosat<br>                         |[0x800001c8]:fcvt.w.s ra, fs4, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw ra, 56(a5)<br>     |
|   9|[0x80002344]<br>0xFFFFFFFF|- rd : x12<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 2  #nosat<br>                        |[0x800001e0]:fcvt.w.s a2, fa1, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sw a2, 64(a5)<br>     |
|  10|[0x8000234c]<br>0x00000000|- rd : x31<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 1  #nosat<br>                        |[0x800001f8]:fcvt.w.s t6, fa7, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sw t6, 72(a5)<br>     |
|  11|[0x80002354]<br>0x00000000|- rd : x8<br> - rs1 : f6<br> - fs1 == 1 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 0  #nosat<br>                          |[0x80000210]:fcvt.w.s fp, ft6, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sw fp, 80(a5)<br>     |
|  12|[0x8000235c]<br>0x00000001|- rd : x17<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 4  #nosat<br>                         |[0x80000234]:fcvt.w.s a7, fs0, dyn<br> [0x80000238]:csrrs s5, fflags, zero<br> [0x8000023c]:sw a7, 0(s3)<br>      |
|  13|[0x80002364]<br>0x00000001|- rd : x6<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 3  #nosat<br>                         |[0x80000258]:fcvt.w.s t1, fa2, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw t1, 0(a5)<br>      |
|  14|[0x8000236c]<br>0x00000000|- rd : x23<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 2  #nosat<br>                        |[0x80000270]:fcvt.w.s s7, fs7, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sw s7, 8(a5)<br>      |
|  15|[0x80002374]<br>0x00000000|- rd : x15<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 1  #nosat<br>                         |[0x80000294]:fcvt.w.s a5, fs1, dyn<br> [0x80000298]:csrrs s5, fflags, zero<br> [0x8000029c]:sw a5, 0(s3)<br>      |
|  16|[0x8000237c]<br>0x00000001|- rd : x19<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 0  #nosat<br>                        |[0x800002b8]:fcvt.w.s s3, fa0, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw s3, 0(a5)<br>      |
|  17|[0x80002384]<br>0x00000001|- rd : x3<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 4  #nosat<br>                         |[0x800002d0]:fcvt.w.s gp, fs6, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sw gp, 8(a5)<br>      |
|  18|[0x8000238c]<br>0x00000001|- rd : x16<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 3  #nosat<br>                        |[0x800002f4]:fcvt.w.s a6, fa5, dyn<br> [0x800002f8]:csrrs s5, fflags, zero<br> [0x800002fc]:sw a6, 0(s3)<br>      |
|  19|[0x80002394]<br>0x00000001|- rd : x11<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 2  #nosat<br>                         |[0x80000318]:fcvt.w.s a1, ft1, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw a1, 0(a5)<br>      |
|  20|[0x8000239c]<br>0x00000001|- rd : x5<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 1  #nosat<br>                          |[0x80000330]:fcvt.w.s t0, ft7, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw t0, 8(a5)<br>      |
|  21|[0x800023a4]<br>0x00000001|- rd : x10<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000348]:fcvt.w.s a0, fa3, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sw a0, 16(a5)<br>     |
|  22|[0x800023ac]<br>0x00000000|- rd : x28<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 4  #nosat<br>                         |[0x80000360]:fcvt.w.s t3, ft3, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sw t3, 24(a5)<br>     |
|  23|[0x800023b4]<br>0x00000000|- rd : x18<br> - rs1 : f2<br> - fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 3  #nosat<br>                         |[0x80000378]:fcvt.w.s s2, ft2, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw s2, 32(a5)<br>     |
|  24|[0x800023bc]<br>0xFFFFFFFF|- rd : x27<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 2  #nosat<br>                        |[0x80000390]:fcvt.w.s s11, fs3, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw s11, 40(a5)<br>   |
|  25|[0x800023c4]<br>0x00000000|- rd : x2<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 1  #nosat<br>                         |[0x800003a8]:fcvt.w.s sp, ft10, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sw sp, 48(a5)<br>    |
|  26|[0x800023cc]<br>0x00000000|- rd : x22<br> - rs1 : f0<br> - fs1 == 1 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 0  #nosat<br>                         |[0x800003c0]:fcvt.w.s s6, ft0, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sw s6, 56(a5)<br>     |
|  27|[0x800023d4]<br>0xFFFFFFFF|- rd : x9<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 4  #nosat<br>                         |[0x800003d8]:fcvt.w.s s1, ft8, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sw s1, 64(a5)<br>     |
|  28|[0x800023dc]<br>0xFFFFFFFF|- rd : x13<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 3  #nosat<br>                         |[0x800003f0]:fcvt.w.s a3, ft5, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw a3, 72(a5)<br>     |
|  29|[0x800023e4]<br>0xFFFFFFFF|- rd : x20<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 2  #nosat<br>                        |[0x80000408]:fcvt.w.s s4, fs10, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sw s4, 80(a5)<br>    |
|  30|[0x800023ec]<br>0xFFFFFFFF|- rd : x29<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 1  #nosat<br>                         |[0x80000420]:fcvt.w.s t4, ft4, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sw t4, 88(a5)<br>     |
|  31|[0x800023f4]<br>0xFFFFFFFF|- rd : x4<br> - rs1 : f21<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x80000438]:fcvt.w.s tp, fs5, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sw tp, 96(a5)<br>     |
|  32|[0x800023fc]<br>0xFFFFFFFF|- rd : x21<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 4  #nosat<br>                        |[0x80000450]:fcvt.w.s s5, fa6, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sw s5, 104(a5)<br>    |
|  33|[0x80002404]<br>0x00000000|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 3  #nosat<br>                                                       |[0x80000468]:fcvt.w.s a1, fa0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:sw a1, 112(a5)<br>    |
|  34|[0x8000240c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 2  #nosat<br>                                                       |[0x80000480]:fcvt.w.s a1, fa0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:sw a1, 120(a5)<br>    |
|  35|[0x80002414]<br>0x00000000|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 1  #nosat<br>                                                       |[0x80000498]:fcvt.w.s a1, fa0, dyn<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:sw a1, 128(a5)<br>    |
|  36|[0x8000241c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 0  #nosat<br>                                                       |[0x800004b0]:fcvt.w.s a1, fa0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:sw a1, 136(a5)<br>    |
|  37|[0x80002424]<br>0x00000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 4  #nosat<br>                                                       |[0x800004c8]:fcvt.w.s a1, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:sw a1, 144(a5)<br>    |
|  38|[0x8000242c]<br>0x00000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 3  #nosat<br>                                                       |[0x800004e0]:fcvt.w.s a1, fa0, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:sw a1, 152(a5)<br>    |
|  39|[0x80002434]<br>0x00000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 2  #nosat<br>                                                       |[0x800004f8]:fcvt.w.s a1, fa0, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:sw a1, 160(a5)<br>    |
|  40|[0x8000243c]<br>0x00000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 1  #nosat<br>                                                       |[0x80000510]:fcvt.w.s a1, fa0, dyn<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sw a1, 168(a5)<br>    |
|  41|[0x80002444]<br>0x00000000|- fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 4  #nosat<br>                                                       |[0x80000528]:fcvt.w.s a1, fa0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:sw a1, 176(a5)<br>    |
|  42|[0x8000244c]<br>0x00000000|- fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 3  #nosat<br>                                                       |[0x80000540]:fcvt.w.s a1, fa0, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:sw a1, 184(a5)<br>    |
|  43|[0x80002454]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 2  #nosat<br>                                                       |[0x80000558]:fcvt.w.s a1, fa0, dyn<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:sw a1, 192(a5)<br>    |
|  44|[0x8000245c]<br>0x00000000|- fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 1  #nosat<br>                                                       |[0x80000570]:fcvt.w.s a1, fa0, dyn<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:sw a1, 200(a5)<br>    |
|  45|[0x80002464]<br>0x00000000|- fs1 == 1 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 0  #nosat<br>                                                       |[0x80000588]:fcvt.w.s a1, fa0, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:sw a1, 208(a5)<br>    |
|  46|[0x8000246c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 4  #nosat<br>                                                       |[0x800005a0]:fcvt.w.s a1, fa0, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:sw a1, 216(a5)<br>    |
|  47|[0x80002474]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 3  #nosat<br>                                                       |[0x800005b8]:fcvt.w.s a1, fa0, dyn<br> [0x800005bc]:csrrs a7, fflags, zero<br> [0x800005c0]:sw a1, 224(a5)<br>    |
|  48|[0x8000247c]<br>0x00000000|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 2  #nosat<br>                                                       |[0x800005d0]:fcvt.w.s a1, fa0, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:sw a1, 232(a5)<br>    |
|  49|[0x80002484]<br>0x00000000|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 1  #nosat<br>                                                       |[0x800005e8]:fcvt.w.s a1, fa0, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:sw a1, 240(a5)<br>    |
|  50|[0x8000248c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x7d70a3 and rm_val == 0  #nosat<br>                                                       |[0x80000600]:fcvt.w.s a1, fa0, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:sw a1, 248(a5)<br>    |
|  51|[0x80002494]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 4  #nosat<br>                                                       |[0x80000618]:fcvt.w.s a1, fa0, dyn<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:sw a1, 256(a5)<br>    |
|  52|[0x8000249c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 3  #nosat<br>                                                       |[0x80000630]:fcvt.w.s a1, fa0, dyn<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:sw a1, 264(a5)<br>    |
|  53|[0x800024a4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 2  #nosat<br>                                                       |[0x80000648]:fcvt.w.s a1, fa0, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:sw a1, 272(a5)<br>    |
|  54|[0x800024ac]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 1  #nosat<br>                                                       |[0x80000660]:fcvt.w.s a1, fa0, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:sw a1, 280(a5)<br>    |
|  55|[0x800024b4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x4ccccc and rm_val == 0  #nosat<br>                                                       |[0x80000678]:fcvt.w.s a1, fa0, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:sw a1, 288(a5)<br>    |
|  56|[0x800024bc]<br>0x00000000|- fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 4  #nosat<br>                                                       |[0x80000690]:fcvt.w.s a1, fa0, dyn<br> [0x80000694]:csrrs a7, fflags, zero<br> [0x80000698]:sw a1, 296(a5)<br>    |
|  57|[0x800024c4]<br>0x00000001|- fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 3  #nosat<br>                                                       |[0x800006a8]:fcvt.w.s a1, fa0, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:sw a1, 304(a5)<br>    |
|  58|[0x800024cc]<br>0x00000000|- fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 2  #nosat<br>                                                       |[0x800006c0]:fcvt.w.s a1, fa0, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:sw a1, 312(a5)<br>    |
|  59|[0x800024d4]<br>0x00000000|- fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 1  #nosat<br>                                                       |[0x800006d8]:fcvt.w.s a1, fa0, dyn<br> [0x800006dc]:csrrs a7, fflags, zero<br> [0x800006e0]:sw a1, 320(a5)<br>    |
|  60|[0x800024dc]<br>0x00000000|- fs1 == 0 and fe1 == 0x78 and fm1 == 0x23d70a and rm_val == 0  #nosat<br>                                                       |[0x800006f0]:fcvt.w.s a1, fa0, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:sw a1, 328(a5)<br>    |
|  61|[0x800024e4]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 4  #nosat<br>                                                       |[0x80000708]:fcvt.w.s a1, fa0, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:sw a1, 336(a5)<br>    |
|  62|[0x800024ec]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 3  #nosat<br>                                                       |[0x80000720]:fcvt.w.s a1, fa0, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:sw a1, 344(a5)<br>    |
|  63|[0x800024f4]<br>0xFFFFFFFE|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 2  #nosat<br>                                                       |[0x80000738]:fcvt.w.s a1, fa0, dyn<br> [0x8000073c]:csrrs a7, fflags, zero<br> [0x80000740]:sw a1, 352(a5)<br>    |
|  64|[0x800024fc]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 1  #nosat<br>                                                       |[0x80000750]:fcvt.w.s a1, fa0, dyn<br> [0x80000754]:csrrs a7, fflags, zero<br> [0x80000758]:sw a1, 360(a5)<br>    |
|  65|[0x80002504]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 0  #nosat<br>                                                       |[0x80000768]:fcvt.w.s a1, fa0, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:sw a1, 368(a5)<br>    |
|  66|[0x8000250c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 4  #nosat<br>                                                       |[0x80000780]:fcvt.w.s a1, fa0, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:sw a1, 376(a5)<br>    |
|  67|[0x80002514]<br>0x00000002|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 3  #nosat<br>                                                       |[0x80000798]:fcvt.w.s a1, fa0, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:sw a1, 384(a5)<br>    |
|  68|[0x8000251c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 2  #nosat<br>                                                       |[0x800007b0]:fcvt.w.s a1, fa0, dyn<br> [0x800007b4]:csrrs a7, fflags, zero<br> [0x800007b8]:sw a1, 392(a5)<br>    |
|  69|[0x80002524]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 1  #nosat<br>                                                       |[0x800007c8]:fcvt.w.s a1, fa0, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:sw a1, 400(a5)<br>    |
|  70|[0x8000252c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 0  #nosat<br>                                                       |[0x800007e0]:fcvt.w.s a1, fa0, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:sw a1, 408(a5)<br>    |
|  71|[0x80002534]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 4  #nosat<br>                                                       |[0x800007f8]:fcvt.w.s a1, fa0, dyn<br> [0x800007fc]:csrrs a7, fflags, zero<br> [0x80000800]:sw a1, 416(a5)<br>    |
|  72|[0x8000253c]<br>0x00000002|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 3  #nosat<br>                                                       |[0x80000810]:fcvt.w.s a1, fa0, dyn<br> [0x80000814]:csrrs a7, fflags, zero<br> [0x80000818]:sw a1, 424(a5)<br>    |
|  73|[0x80002544]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 2  #nosat<br>                                                       |[0x80000828]:fcvt.w.s a1, fa0, dyn<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:sw a1, 432(a5)<br>    |
|  74|[0x8000254c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 1  #nosat<br>                                                       |[0x80000840]:fcvt.w.s a1, fa0, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:sw a1, 440(a5)<br>    |
|  75|[0x80002554]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0ccccc and rm_val == 0  #nosat<br>                                                       |[0x80000858]:fcvt.w.s a1, fa0, dyn<br> [0x8000085c]:csrrs a7, fflags, zero<br> [0x80000860]:sw a1, 448(a5)<br>    |
|  76|[0x8000255c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 4  #nosat<br>                                                       |[0x80000870]:fcvt.w.s a1, fa0, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:sw a1, 456(a5)<br>    |
|  77|[0x80002564]<br>0x00000000|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 3  #nosat<br>                                                       |[0x80000888]:fcvt.w.s a1, fa0, dyn<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:sw a1, 464(a5)<br>    |
|  78|[0x8000256c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 2  #nosat<br>                                                       |[0x800008a0]:fcvt.w.s a1, fa0, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:sw a1, 472(a5)<br>    |
|  79|[0x80002574]<br>0x00000000|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 1  #nosat<br>                                                       |[0x800008b8]:fcvt.w.s a1, fa0, dyn<br> [0x800008bc]:csrrs a7, fflags, zero<br> [0x800008c0]:sw a1, 480(a5)<br>    |
|  80|[0x8000257c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7e and fm1 == 0x63d70a and rm_val == 0  #nosat<br>                                                       |[0x800008d0]:fcvt.w.s a1, fa0, dyn<br> [0x800008d4]:csrrs a7, fflags, zero<br> [0x800008d8]:sw a1, 488(a5)<br>    |
|  81|[0x80002584]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 4  #nosat<br>                                                       |[0x800008e8]:fcvt.w.s a1, fa0, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:sw a1, 496(a5)<br>    |
|  82|[0x8000258c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 3  #nosat<br>                                                       |[0x80000900]:fcvt.w.s a1, fa0, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:sw a1, 504(a5)<br>    |
|  83|[0x80002594]<br>0xFFFFFFFE|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 2  #nosat<br>                                                       |[0x80000918]:fcvt.w.s a1, fa0, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:sw a1, 512(a5)<br>    |
|  84|[0x8000259c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 1  #nosat<br>                                                       |[0x80000930]:fcvt.w.s a1, fa0, dyn<br> [0x80000934]:csrrs a7, fflags, zero<br> [0x80000938]:sw a1, 520(a5)<br>    |
|  85|[0x800025a4]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0e147a and rm_val == 0  #nosat<br>                                                       |[0x80000948]:fcvt.w.s a1, fa0, dyn<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:sw a1, 528(a5)<br>    |
|  86|[0x800025ac]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 4  #nosat<br>                                                       |[0x80000960]:fcvt.w.s a1, fa0, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:sw a1, 536(a5)<br>    |
|  87|[0x800025b4]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 3  #nosat<br>                                                       |[0x80000978]:fcvt.w.s a1, fa0, dyn<br> [0x8000097c]:csrrs a7, fflags, zero<br> [0x80000980]:sw a1, 544(a5)<br>    |
|  88|[0x800025bc]<br>0x00000000|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 2  #nosat<br>                                                       |[0x80000990]:fcvt.w.s a1, fa0, dyn<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:sw a1, 552(a5)<br>    |
|  89|[0x800025c4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 1  #nosat<br>                                                       |[0x800009a8]:fcvt.w.s a1, fa0, dyn<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:sw a1, 560(a5)<br>    |
|  90|[0x800025cc]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x666666 and rm_val == 0  #nosat<br>                                                       |[0x800009c0]:fcvt.w.s a1, fa0, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:sw a1, 568(a5)<br>    |
|  91|[0x800025d4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 4  #nosat<br>                                                       |[0x800009d8]:fcvt.w.s a1, fa0, dyn<br> [0x800009dc]:csrrs a7, fflags, zero<br> [0x800009e0]:sw a1, 576(a5)<br>    |
|  92|[0x800025dc]<br>0x00000001|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 3  #nosat<br>                                                       |[0x800009f0]:fcvt.w.s a1, fa0, dyn<br> [0x800009f4]:csrrs a7, fflags, zero<br> [0x800009f8]:sw a1, 584(a5)<br>    |
|  93|[0x800025e4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 2  #nosat<br>                                                       |[0x80000a08]:fcvt.w.s a1, fa0, dyn<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:sw a1, 592(a5)<br>    |
|  94|[0x800025ec]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 1  #nosat<br>                                                       |[0x80000a20]:fcvt.w.s a1, fa0, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:sw a1, 600(a5)<br>    |
|  95|[0x800025f4]<br>0x00000000|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x6147ae and rm_val == 0  #nosat<br>                                                       |[0x80000a38]:fcvt.w.s a1, fa0, dyn<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:sw a1, 608(a5)<br>    |
|  96|[0x800025fc]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 4  #nosat<br>                                                       |[0x80000a50]:fcvt.w.s a1, fa0, dyn<br> [0x80000a54]:csrrs a7, fflags, zero<br> [0x80000a58]:sw a1, 616(a5)<br>    |
|  97|[0x80002604]<br>0x00000002|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 3  #nosat<br>                                                       |[0x80000a68]:fcvt.w.s a1, fa0, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:sw a1, 624(a5)<br>    |
|  98|[0x8000260c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 2  #nosat<br>                                                       |[0x80000a80]:fcvt.w.s a1, fa0, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:sw a1, 632(a5)<br>    |
|  99|[0x80002614]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 1  #nosat<br>                                                       |[0x80000a98]:fcvt.w.s a1, fa0, dyn<br> [0x80000a9c]:csrrs a7, fflags, zero<br> [0x80000aa0]:sw a1, 640(a5)<br>    |
| 100|[0x8000261c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 0  #nosat<br>                                                       |[0x80000ab0]:fcvt.w.s a1, fa0, dyn<br> [0x80000ab4]:csrrs a7, fflags, zero<br> [0x80000ab8]:sw a1, 648(a5)<br>    |
| 101|[0x80002624]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 4  #nosat<br>                                                       |[0x80000ac8]:fcvt.w.s a1, fa0, dyn<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:sw a1, 656(a5)<br>    |
| 102|[0x8000262c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 3  #nosat<br>                                                       |[0x80000ae0]:fcvt.w.s a1, fa0, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:sw a1, 664(a5)<br>    |
| 103|[0x80002634]<br>0xFFFFFFFE|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 2  #nosat<br>                                                       |[0x80000af8]:fcvt.w.s a1, fa0, dyn<br> [0x80000afc]:csrrs a7, fflags, zero<br> [0x80000b00]:sw a1, 672(a5)<br>    |
| 104|[0x8000263c]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 1  #nosat<br>                                                       |[0x80000b10]:fcvt.w.s a1, fa0, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:sw a1, 680(a5)<br>    |
| 105|[0x80002644]<br>0xFFFFFFFF|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0147ae and rm_val == 0  #nosat<br>                                                       |[0x80000b28]:fcvt.w.s a1, fa0, dyn<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:sw a1, 688(a5)<br>    |
