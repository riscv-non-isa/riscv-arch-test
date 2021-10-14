
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000730')]      |
| SIG_REGION                | [('0x80002304', '0x8000250c', '130 words')]      |
| COV_LABELS                | fsqrt_b20      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsqrt_b20-01.S/ref.S    |
| Total Number of coverpoints| 137     |
| Total Coverpoints Hit     | 132      |
| Total Signature Updates   | 130      |
| STAT1                     | 65      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 65     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsqrt.s', 'rs1 : f29', 'rd : f29', 'rs1 == rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fsqrt.s ft9, ft9, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw ft9, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002308]:0x00000001




Last Coverpoint : ['rs1 : f15', 'rd : f17', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fsqrt.s fa7, fa5, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw fa7, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002310]:0x00000001




Last Coverpoint : ['rs1 : f2', 'rd : f28', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x38d874 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fsqrt.s ft8, ft2, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw ft8, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002318]:0x00000001




Last Coverpoint : ['rs1 : f9', 'rd : f2', 'fs1 == 0 and fe1 == 0xd0 and fm1 == 0x010151 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fsqrt.s ft2, fs1, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw ft2, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002320]:0x00000001




Last Coverpoint : ['rs1 : f17', 'rd : f30', 'fs1 == 0 and fe1 == 0xb7 and fm1 == 0x4bce51 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fsqrt.s ft10, fa7, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw ft10, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002328]:0x00000001




Last Coverpoint : ['rs1 : f24', 'rd : f25', 'fs1 == 0 and fe1 == 0x30 and fm1 == 0x75cb89 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fsqrt.s fs9, fs8, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw fs9, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002330]:0x00000001




Last Coverpoint : ['rs1 : f11', 'rd : f4', 'fs1 == 0 and fe1 == 0x79 and fm1 == 0x785c55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fsqrt.s ft4, fa1, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft4, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002338]:0x00000001




Last Coverpoint : ['rs1 : f6', 'rd : f1', 'fs1 == 0 and fe1 == 0xac and fm1 == 0x13884e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fsqrt.s ft1, ft6, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw ft1, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002340]:0x00000001




Last Coverpoint : ['rs1 : f27', 'rd : f3', 'fs1 == 0 and fe1 == 0x65 and fm1 == 0x064562 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fsqrt.s ft3, fs11, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw ft3, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80002348]:0x00000001




Last Coverpoint : ['rs1 : f13', 'rd : f8', 'fs1 == 0 and fe1 == 0xd3 and fm1 == 0x190acf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fsqrt.s fs0, fa3, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:fsw fs0, 72(a5)
Current Store : [0x80000204] : sw a7, 76(a5) -- Store: [0x80002350]:0x00000001




Last Coverpoint : ['rs1 : f16', 'rd : f26', 'fs1 == 0 and fe1 == 0xea and fm1 == 0x284ae6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000210]:fsqrt.s fs10, fa6, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw fs10, 80(a5)
Current Store : [0x8000021c] : sw a7, 84(a5) -- Store: [0x80002358]:0x00000001




Last Coverpoint : ['rs1 : f18', 'rd : f22', 'fs1 == 0 and fe1 == 0x4e and fm1 == 0x454542 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fsqrt.s fs6, fs2, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fs6, 88(a5)
Current Store : [0x80000234] : sw a7, 92(a5) -- Store: [0x80002360]:0x00000001




Last Coverpoint : ['rs1 : f14', 'rd : f18', 'fs1 == 0 and fe1 == 0xb6 and fm1 == 0x479816 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fsqrt.s fs2, fa4, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw fs2, 96(a5)
Current Store : [0x8000024c] : sw a7, 100(a5) -- Store: [0x80002368]:0x00000001




Last Coverpoint : ['rs1 : f5', 'rd : f6', 'fs1 == 0 and fe1 == 0x65 and fm1 == 0x5b1e82 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fsqrt.s ft6, ft5, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft6, 104(a5)
Current Store : [0x80000264] : sw a7, 108(a5) -- Store: [0x80002370]:0x00000001




Last Coverpoint : ['rs1 : f0', 'rd : f15', 'fs1 == 0 and fe1 == 0x7b and fm1 == 0x64e1f0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fsqrt.s fa5, ft0, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fa5, 112(a5)
Current Store : [0x8000027c] : sw a7, 116(a5) -- Store: [0x80002378]:0x00000001




Last Coverpoint : ['rs1 : f28', 'rd : f19', 'fs1 == 0 and fe1 == 0xc2 and fm1 == 0x26f9c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fsqrt.s fs3, ft8, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fs3, 120(a5)
Current Store : [0x80000294] : sw a7, 124(a5) -- Store: [0x80002380]:0x00000001




Last Coverpoint : ['rs1 : f12', 'rd : f9', 'fs1 == 0 and fe1 == 0x31 and fm1 == 0x011313 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fsqrt.s fs1, fa2, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw fs1, 128(a5)
Current Store : [0x800002ac] : sw a7, 132(a5) -- Store: [0x80002388]:0x00000001




Last Coverpoint : ['rs1 : f31', 'rd : f16', 'fs1 == 0 and fe1 == 0xad and fm1 == 0x75bbd8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fsqrt.s fa6, ft11, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw fa6, 136(a5)
Current Store : [0x800002c4] : sw a7, 140(a5) -- Store: [0x80002390]:0x00000001




Last Coverpoint : ['rs1 : f10', 'rd : f12', 'fs1 == 0 and fe1 == 0xe4 and fm1 == 0x1477dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fsqrt.s fa2, fa0, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw fa2, 144(a5)
Current Store : [0x800002dc] : sw a7, 148(a5) -- Store: [0x80002398]:0x00000001




Last Coverpoint : ['rs1 : f4', 'rd : f7', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2b61ee and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fsqrt.s ft7, ft4, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw ft7, 152(a5)
Current Store : [0x800002f4] : sw a7, 156(a5) -- Store: [0x800023a0]:0x00000001




Last Coverpoint : ['rs1 : f25', 'rd : f0', 'fs1 == 0 and fe1 == 0x3f and fm1 == 0x0577a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fsqrt.s ft0, fs9, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft0, 160(a5)
Current Store : [0x8000030c] : sw a7, 164(a5) -- Store: [0x800023a8]:0x00000001




Last Coverpoint : ['rs1 : f7', 'rd : f14', 'fs1 == 0 and fe1 == 0xf5 and fm1 == 0x0aadc1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fsqrt.s fa4, ft7, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw fa4, 168(a5)
Current Store : [0x80000324] : sw a7, 172(a5) -- Store: [0x800023b0]:0x00000001




Last Coverpoint : ['rs1 : f26', 'rd : f20', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x2bf296 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fsqrt.s fs4, fs10, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw fs4, 176(a5)
Current Store : [0x8000033c] : sw a7, 180(a5) -- Store: [0x800023b8]:0x00000001




Last Coverpoint : ['rs1 : f20', 'rd : f5', 'fs1 == 0 and fe1 == 0x39 and fm1 == 0x0ef3b1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fsqrt.s ft5, fs4, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw ft5, 184(a5)
Current Store : [0x80000354] : sw a7, 188(a5) -- Store: [0x800023c0]:0x00000001




Last Coverpoint : ['rs1 : f3', 'rd : f13', 'fs1 == 0 and fe1 == 0x59 and fm1 == 0x0fed85 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fsqrt.s fa3, ft3, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw fa3, 192(a5)
Current Store : [0x8000036c] : sw a7, 196(a5) -- Store: [0x800023c8]:0x00000001




Last Coverpoint : ['rs1 : f23', 'rd : f27', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x0cd173 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000378]:fsqrt.s fs11, fs7, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:fsw fs11, 200(a5)
Current Store : [0x80000384] : sw a7, 204(a5) -- Store: [0x800023d0]:0x00000001




Last Coverpoint : ['rs1 : f30', 'rd : f21', 'fs1 == 0 and fe1 == 0xdd and fm1 == 0x4096e8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000390]:fsqrt.s fs5, ft10, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:fsw fs5, 208(a5)
Current Store : [0x8000039c] : sw a7, 212(a5) -- Store: [0x800023d8]:0x00000001




Last Coverpoint : ['rs1 : f8', 'rd : f31', 'fs1 == 0 and fe1 == 0x0b and fm1 == 0x0cd684 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fsqrt.s ft11, fs0, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft11, 216(a5)
Current Store : [0x800003b4] : sw a7, 220(a5) -- Store: [0x800023e0]:0x00000001




Last Coverpoint : ['rs1 : f21', 'rd : f11', 'fs1 == 0 and fe1 == 0xa7 and fm1 == 0x0f78f8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fsqrt.s fa1, fs5, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsw fa1, 224(a5)
Current Store : [0x800003cc] : sw a7, 228(a5) -- Store: [0x800023e8]:0x00000001




Last Coverpoint : ['rs1 : f1', 'rd : f23', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f3827 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fsqrt.s fs7, ft1, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsw fs7, 232(a5)
Current Store : [0x800003e4] : sw a7, 236(a5) -- Store: [0x800023f0]:0x00000001




Last Coverpoint : ['rs1 : f22', 'rd : f10', 'fs1 == 0 and fe1 == 0xf3 and fm1 == 0x6653ed and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fsqrt.s fa0, fs6, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw fa0, 240(a5)
Current Store : [0x800003fc] : sw a7, 244(a5) -- Store: [0x800023f8]:0x00000001




Last Coverpoint : ['rs1 : f19', 'rd : f24', 'fs1 == 0 and fe1 == 0xc0 and fm1 == 0x3590aa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000408]:fsqrt.s fs8, fs3, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fs8, 248(a5)
Current Store : [0x80000414] : sw a7, 252(a5) -- Store: [0x80002400]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3c and fm1 == 0x124e58 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000420]:fsqrt.s fa1, fa0, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw fa1, 256(a5)
Current Store : [0x8000042c] : sw a7, 260(a5) -- Store: [0x80002408]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000005 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fsqrt.s fa1, fa0, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:fsw fa1, 264(a5)
Current Store : [0x80000444] : sw a7, 268(a5) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x52 and fm1 == 0x216b44 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fsqrt.s fa1, fa0, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw fa1, 272(a5)
Current Store : [0x8000045c] : sw a7, 276(a5) -- Store: [0x80002418]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xce and fm1 == 0x1168e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fsqrt.s fa1, fa0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa1, 280(a5)
Current Store : [0x80000474] : sw a7, 284(a5) -- Store: [0x80002420]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xa0 and fm1 == 0x10d851 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fsqrt.s fa1, fa0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsw fa1, 288(a5)
Current Store : [0x8000048c] : sw a7, 292(a5) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xea and fm1 == 0x4f33d9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000498]:fsqrt.s fa1, fa0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:fsw fa1, 296(a5)
Current Store : [0x800004a4] : sw a7, 300(a5) -- Store: [0x80002430]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1b and fm1 == 0x5b5a62 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fsqrt.s fa1, fa0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:fsw fa1, 304(a5)
Current Store : [0x800004bc] : sw a7, 308(a5) -- Store: [0x80002438]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xbc and fm1 == 0x68cd04 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fsqrt.s fa1, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:fsw fa1, 312(a5)
Current Store : [0x800004d4] : sw a7, 316(a5) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000160 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e0]:fsqrt.s fa1, fa0, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsw fa1, 320(a5)
Current Store : [0x800004ec] : sw a7, 324(a5) -- Store: [0x80002448]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6a and fm1 == 0x3e2364 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fsqrt.s fa1, fa0, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa1, 328(a5)
Current Store : [0x80000504] : sw a7, 332(a5) -- Store: [0x80002450]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x34 and fm1 == 0x08f690 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000510]:fsqrt.s fa1, fa0, dyn
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:fsw fa1, 336(a5)
Current Store : [0x8000051c] : sw a7, 340(a5) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xd3 and fm1 == 0x6a7f20 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fsqrt.s fa1, fa0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsw fa1, 344(a5)
Current Store : [0x80000534] : sw a7, 348(a5) -- Store: [0x80002460]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x80 and fm1 == 0x6d5a40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000540]:fsqrt.s fa1, fa0, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsw fa1, 352(a5)
Current Store : [0x8000054c] : sw a7, 356(a5) -- Store: [0x80002468]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7b and fm1 == 0x46c080 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000558]:fsqrt.s fa1, fa0, dyn
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:fsw fa1, 360(a5)
Current Store : [0x80000564] : sw a7, 364(a5) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xd0 and fm1 == 0x095440 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000570]:fsqrt.s fa1, fa0, dyn
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:fsw fa1, 368(a5)
Current Store : [0x8000057c] : sw a7, 372(a5) -- Store: [0x80002478]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xef and fm1 == 0x7bb880 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000588]:fsqrt.s fa1, fa0, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:fsw fa1, 376(a5)
Current Store : [0x80000594] : sw a7, 380(a5) -- Store: [0x80002480]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x39 and fm1 == 0x69d200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fsqrt.s fa1, fa0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa1, 384(a5)
Current Store : [0x800005ac] : sw a7, 388(a5) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x7ff200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b8]:fsqrt.s fa1, fa0, dyn
	-[0x800005bc]:csrrs a7, fflags, zero
	-[0x800005c0]:fsw fa1, 392(a5)
Current Store : [0x800005c4] : sw a7, 396(a5) -- Store: [0x80002490]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x66 and fm1 == 0x64c400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fsqrt.s fa1, fa0, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsw fa1, 400(a5)
Current Store : [0x800005dc] : sw a7, 404(a5) -- Store: [0x80002498]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x88 and fm1 == 0x7c0400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fsqrt.s fa1, fa0, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:fsw fa1, 408(a5)
Current Store : [0x800005f4] : sw a7, 412(a5) -- Store: [0x800024a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x86 and fm1 == 0x130400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fsqrt.s fa1, fa0, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsw fa1, 416(a5)
Current Store : [0x8000060c] : sw a7, 420(a5) -- Store: [0x800024a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x8e and fm1 == 0x689000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000618]:fsqrt.s fa1, fa0, dyn
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:fsw fa1, 424(a5)
Current Store : [0x80000624] : sw a7, 428(a5) -- Store: [0x800024b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x59 and fm1 == 0x7d2000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000630]:fsqrt.s fa1, fa0, dyn
	-[0x80000634]:csrrs a7, fflags, zero
	-[0x80000638]:fsw fa1, 432(a5)
Current Store : [0x8000063c] : sw a7, 436(a5) -- Store: [0x800024b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x24 and fm1 == 0x689000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fsqrt.s fa1, fa0, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa1, 440(a5)
Current Store : [0x80000654] : sw a7, 444(a5) -- Store: [0x800024c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3b and fm1 == 0x108000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000660]:fsqrt.s fa1, fa0, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsw fa1, 448(a5)
Current Store : [0x8000066c] : sw a7, 452(a5) -- Store: [0x800024c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x82 and fm1 == 0x044000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fsqrt.s fa1, fa0, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsw fa1, 456(a5)
Current Store : [0x80000684] : sw a7, 460(a5) -- Store: [0x800024d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x97 and fm1 == 0x5c8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000690]:fsqrt.s fa1, fa0, dyn
	-[0x80000694]:csrrs a7, fflags, zero
	-[0x80000698]:fsw fa1, 464(a5)
Current Store : [0x8000069c] : sw a7, 468(a5) -- Store: [0x800024d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x86 and fm1 == 0x704000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fsqrt.s fa1, fa0, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsw fa1, 472(a5)
Current Store : [0x800006b4] : sw a7, 476(a5) -- Store: [0x800024e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x610000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fsqrt.s fa1, fa0, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsw fa1, 480(a5)
Current Store : [0x800006cc] : sw a7, 484(a5) -- Store: [0x800024e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xc7 and fm1 == 0x720000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d8]:fsqrt.s fa1, fa0, dyn
	-[0x800006dc]:csrrs a7, fflags, zero
	-[0x800006e0]:fsw fa1, 488(a5)
Current Store : [0x800006e4] : sw a7, 492(a5) -- Store: [0x800024f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xb7 and fm1 == 0x720000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fsqrt.s fa1, fa0, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa1, 496(a5)
Current Store : [0x800006fc] : sw a7, 500(a5) -- Store: [0x800024f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x480000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000708]:fsqrt.s fa1, fa0, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:fsw fa1, 504(a5)
Current Store : [0x80000714] : sw a7, 508(a5) -- Store: [0x80002500]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x39 and fm1 == 0x480000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fsqrt.s fa1, fa0, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsw fa1, 512(a5)
Current Store : [0x8000072c] : sw a7, 516(a5) -- Store: [0x80002508]:0x00000001





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

|s.no|        signature         |                                                                   coverpoints                                                                   |                                                       code                                                        |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002304]<br>0xEEDBEADF|- opcode : fsqrt.s<br> - rs1 : f29<br> - rd : f29<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat<br> |[0x80000120]:fsqrt.s ft9, ft9, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw ft9, 0(a5)<br>     |
|   2|[0x8000230c]<br>0x00000001|- rs1 : f15<br> - rd : f17<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000138]:fsqrt.s fa7, fa5, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw fa7, 8(a5)<br>     |
|   3|[0x80002314]<br>0xDDB7D5BF|- rs1 : f2<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x38d874 and rm_val == 0  #nosat<br>                                         |[0x80000150]:fsqrt.s ft8, ft2, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw ft8, 16(a5)<br>    |
|   4|[0x8000231c]<br>0x00006000|- rs1 : f9<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xd0 and fm1 == 0x010151 and rm_val == 0  #nosat<br>                                          |[0x80000168]:fsqrt.s ft2, fs1, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw ft2, 24(a5)<br>    |
|   5|[0x80002324]<br>0xF76DF56F|- rs1 : f17<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xb7 and fm1 == 0x4bce51 and rm_val == 0  #nosat<br>                                        |[0x80000180]:fsqrt.s ft10, fa7, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw ft10, 32(a5)<br>  |
|   6|[0x8000232c]<br>0xEDBEADFE|- rs1 : f24<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x30 and fm1 == 0x75cb89 and rm_val == 0  #nosat<br>                                        |[0x80000198]:fsqrt.s fs9, fs8, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw fs9, 40(a5)<br>    |
|   7|[0x80002334]<br>0xBFDDB7D5|- rs1 : f11<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x79 and fm1 == 0x785c55 and rm_val == 0  #nosat<br>                                         |[0x800001b0]:fsqrt.s ft4, fa1, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft4, 48(a5)<br>    |
|   8|[0x8000233c]<br>0xFEEDBEAD|- rs1 : f6<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xac and fm1 == 0x13884e and rm_val == 0  #nosat<br>                                          |[0x800001c8]:fsqrt.s ft1, ft6, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw ft1, 56(a5)<br>    |
|   9|[0x80002344]<br>0x00000000|- rs1 : f27<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x65 and fm1 == 0x064562 and rm_val == 0  #nosat<br>                                         |[0x800001e0]:fsqrt.s ft3, fs11, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw ft3, 64(a5)<br>   |
|  10|[0x8000234c]<br>0x5BFDDB7D|- rs1 : f13<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xd3 and fm1 == 0x190acf and rm_val == 0  #nosat<br>                                         |[0x800001f8]:fsqrt.s fs0, fa3, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsw fs0, 72(a5)<br>    |
|  11|[0x80002354]<br>0x76DF56FF|- rs1 : f16<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xea and fm1 == 0x284ae6 and rm_val == 0  #nosat<br>                                        |[0x80000210]:fsqrt.s fs10, fa6, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw fs10, 80(a5)<br>  |
|  12|[0x8000235c]<br>0x6DF56FF7|- rs1 : f18<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x4e and fm1 == 0x454542 and rm_val == 0  #nosat<br>                                        |[0x80000228]:fsqrt.s fs6, fs2, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fs6, 88(a5)<br>    |
|  13|[0x80002364]<br>0xDF56FF76|- rs1 : f14<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xb6 and fm1 == 0x479816 and rm_val == 0  #nosat<br>                                        |[0x80000240]:fsqrt.s fs2, fa4, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw fs2, 96(a5)<br>    |
|  14|[0x8000236c]<br>0x80002000|- rs1 : f5<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x65 and fm1 == 0x5b1e82 and rm_val == 0  #nosat<br>                                          |[0x80000258]:fsqrt.s ft6, ft5, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft6, 104(a5)<br>   |
|  15|[0x80002374]<br>0x80002304|- rs1 : f0<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7b and fm1 == 0x64e1f0 and rm_val == 0  #nosat<br>                                         |[0x80000270]:fsqrt.s fa5, ft0, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fa5, 112(a5)<br>   |
|  16|[0x8000237c]<br>0x6FAB7FBB|- rs1 : f28<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xc2 and fm1 == 0x26f9c3 and rm_val == 0  #nosat<br>                                        |[0x80000288]:fsqrt.s fs3, ft8, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fs3, 120(a5)<br>   |
|  17|[0x80002384]<br>0xADFEEDBE|- rs1 : f12<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x31 and fm1 == 0x011313 and rm_val == 0  #nosat<br>                                         |[0x800002a0]:fsqrt.s fs1, fa2, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw fs1, 128(a5)<br>   |
|  18|[0x8000238c]<br>0x80002004|- rs1 : f31<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xad and fm1 == 0x75bbd8 and rm_val == 0  #nosat<br>                                        |[0x800002b8]:fsqrt.s fa6, ft11, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw fa6, 136(a5)<br>  |
|  19|[0x80002394]<br>0xD5BFDDB7|- rs1 : f10<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xe4 and fm1 == 0x1477dc and rm_val == 0  #nosat<br>                                        |[0x800002d0]:fsqrt.s fa2, fa0, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw fa2, 144(a5)<br>   |
|  20|[0x8000239c]<br>0xB7FBB6FA|- rs1 : f4<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2b61ee and rm_val == 0  #nosat<br>                                          |[0x800002e8]:fsqrt.s ft7, ft4, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw ft7, 152(a5)<br>   |
|  21|[0x800023a4]<br>0x00000000|- rs1 : f25<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x3f and fm1 == 0x0577a2 and rm_val == 0  #nosat<br>                                         |[0x80000300]:fsqrt.s ft0, fs9, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft0, 160(a5)<br>   |
|  22|[0x800023ac]<br>0xF56FF76D|- rs1 : f7<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf5 and fm1 == 0x0aadc1 and rm_val == 0  #nosat<br>                                         |[0x80000318]:fsqrt.s fa4, ft7, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw fa4, 168(a5)<br>   |
|  23|[0x800023b4]<br>0xB7D5BFDD|- rs1 : f26<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x2bf296 and rm_val == 0  #nosat<br>                                        |[0x80000330]:fsqrt.s fs4, fs10, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw fs4, 176(a5)<br>  |
|  24|[0x800023bc]<br>0x800000F8|- rs1 : f20<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x39 and fm1 == 0x0ef3b1 and rm_val == 0  #nosat<br>                                         |[0x80000348]:fsqrt.s ft5, fs4, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw ft5, 184(a5)<br>   |
|  25|[0x800023c4]<br>0xEADFEEDB|- rs1 : f3<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x59 and fm1 == 0x0fed85 and rm_val == 0  #nosat<br>                                         |[0x80000360]:fsqrt.s fa3, ft3, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fa3, 192(a5)<br>   |
|  26|[0x800023cc]<br>0xBB6FAB7F|- rs1 : f23<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x0cd173 and rm_val == 0  #nosat<br>                                        |[0x80000378]:fsqrt.s fs11, fs7, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw fs11, 200(a5)<br> |
|  27|[0x800023d4]<br>0xDBEADFEE|- rs1 : f30<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xdd and fm1 == 0x4096e8 and rm_val == 0  #nosat<br>                                        |[0x80000390]:fsqrt.s fs5, ft10, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsw fs5, 208(a5)<br>  |
|  28|[0x800023dc]<br>0xFBB6FAB7|- rs1 : f8<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x0b and fm1 == 0x0cd684 and rm_val == 0  #nosat<br>                                         |[0x800003a8]:fsqrt.s ft11, fs0, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft11, 216(a5)<br> |
|  29|[0x800023e4]<br>0xAB7FBB6F|- rs1 : f21<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xa7 and fm1 == 0x0f78f8 and rm_val == 0  #nosat<br>                                        |[0x800003c0]:fsqrt.s fa1, fs5, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw fa1, 224(a5)<br>   |
|  30|[0x800023ec]<br>0xB6FAB7FB|- rs1 : f1<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f3827 and rm_val == 0  #nosat<br>                                         |[0x800003d8]:fsqrt.s fs7, ft1, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsw fs7, 232(a5)<br>   |
|  31|[0x800023f4]<br>0x56FF76DF|- rs1 : f22<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xf3 and fm1 == 0x6653ed and rm_val == 0  #nosat<br>                                        |[0x800003f0]:fsqrt.s fa0, fs6, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw fa0, 240(a5)<br>   |
|  32|[0x800023fc]<br>0xDB7D5BFD|- rs1 : f19<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xc0 and fm1 == 0x3590aa and rm_val == 0  #nosat<br>                                        |[0x80000408]:fsqrt.s fs8, fs3, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fs8, 248(a5)<br>   |
|  33|[0x80002404]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x3c and fm1 == 0x124e58 and rm_val == 0  #nosat<br>                                                                       |[0x80000420]:fsqrt.s fa1, fa0, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fa1, 256(a5)<br>   |
|  34|[0x8000240c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000005 and rm_val == 0  #nosat<br>                                                                       |[0x80000438]:fsqrt.s fa1, fa0, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsw fa1, 264(a5)<br>   |
|  35|[0x80002414]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x52 and fm1 == 0x216b44 and rm_val == 0  #nosat<br>                                                                       |[0x80000450]:fsqrt.s fa1, fa0, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw fa1, 272(a5)<br>   |
|  36|[0x8000241c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xce and fm1 == 0x1168e1 and rm_val == 0  #nosat<br>                                                                       |[0x80000468]:fsqrt.s fa1, fa0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa1, 280(a5)<br>   |
|  37|[0x80002424]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xa0 and fm1 == 0x10d851 and rm_val == 0  #nosat<br>                                                                       |[0x80000480]:fsqrt.s fa1, fa0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsw fa1, 288(a5)<br>   |
|  38|[0x8000242c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xea and fm1 == 0x4f33d9 and rm_val == 0  #nosat<br>                                                                       |[0x80000498]:fsqrt.s fa1, fa0, dyn<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:fsw fa1, 296(a5)<br>   |
|  39|[0x80002434]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x1b and fm1 == 0x5b5a62 and rm_val == 0  #nosat<br>                                                                       |[0x800004b0]:fsqrt.s fa1, fa0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:fsw fa1, 304(a5)<br>   |
|  40|[0x8000243c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xbc and fm1 == 0x68cd04 and rm_val == 0  #nosat<br>                                                                       |[0x800004c8]:fsqrt.s fa1, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw fa1, 312(a5)<br>   |
|  41|[0x80002444]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000160 and rm_val == 0  #nosat<br>                                                                       |[0x800004e0]:fsqrt.s fa1, fa0, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsw fa1, 320(a5)<br>   |
|  42|[0x8000244c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x6a and fm1 == 0x3e2364 and rm_val == 0  #nosat<br>                                                                       |[0x800004f8]:fsqrt.s fa1, fa0, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa1, 328(a5)<br>   |
|  43|[0x80002454]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x34 and fm1 == 0x08f690 and rm_val == 0  #nosat<br>                                                                       |[0x80000510]:fsqrt.s fa1, fa0, dyn<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:fsw fa1, 336(a5)<br>   |
|  44|[0x8000245c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xd3 and fm1 == 0x6a7f20 and rm_val == 0  #nosat<br>                                                                       |[0x80000528]:fsqrt.s fa1, fa0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsw fa1, 344(a5)<br>   |
|  45|[0x80002464]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x80 and fm1 == 0x6d5a40 and rm_val == 0  #nosat<br>                                                                       |[0x80000540]:fsqrt.s fa1, fa0, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsw fa1, 352(a5)<br>   |
|  46|[0x8000246c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x46c080 and rm_val == 0  #nosat<br>                                                                       |[0x80000558]:fsqrt.s fa1, fa0, dyn<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:fsw fa1, 360(a5)<br>   |
|  47|[0x80002474]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xd0 and fm1 == 0x095440 and rm_val == 0  #nosat<br>                                                                       |[0x80000570]:fsqrt.s fa1, fa0, dyn<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:fsw fa1, 368(a5)<br>   |
|  48|[0x8000247c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xef and fm1 == 0x7bb880 and rm_val == 0  #nosat<br>                                                                       |[0x80000588]:fsqrt.s fa1, fa0, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:fsw fa1, 376(a5)<br>   |
|  49|[0x80002484]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x39 and fm1 == 0x69d200 and rm_val == 0  #nosat<br>                                                                       |[0x800005a0]:fsqrt.s fa1, fa0, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa1, 384(a5)<br>   |
|  50|[0x8000248c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x7ff200 and rm_val == 0  #nosat<br>                                                                       |[0x800005b8]:fsqrt.s fa1, fa0, dyn<br> [0x800005bc]:csrrs a7, fflags, zero<br> [0x800005c0]:fsw fa1, 392(a5)<br>   |
|  51|[0x80002494]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x66 and fm1 == 0x64c400 and rm_val == 0  #nosat<br>                                                                       |[0x800005d0]:fsqrt.s fa1, fa0, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsw fa1, 400(a5)<br>   |
|  52|[0x8000249c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x88 and fm1 == 0x7c0400 and rm_val == 0  #nosat<br>                                                                       |[0x800005e8]:fsqrt.s fa1, fa0, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:fsw fa1, 408(a5)<br>   |
|  53|[0x800024a4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x86 and fm1 == 0x130400 and rm_val == 0  #nosat<br>                                                                       |[0x80000600]:fsqrt.s fa1, fa0, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsw fa1, 416(a5)<br>   |
|  54|[0x800024ac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x8e and fm1 == 0x689000 and rm_val == 0  #nosat<br>                                                                       |[0x80000618]:fsqrt.s fa1, fa0, dyn<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:fsw fa1, 424(a5)<br>   |
|  55|[0x800024b4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x59 and fm1 == 0x7d2000 and rm_val == 0  #nosat<br>                                                                       |[0x80000630]:fsqrt.s fa1, fa0, dyn<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:fsw fa1, 432(a5)<br>   |
|  56|[0x800024bc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x24 and fm1 == 0x689000 and rm_val == 0  #nosat<br>                                                                       |[0x80000648]:fsqrt.s fa1, fa0, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa1, 440(a5)<br>   |
|  57|[0x800024c4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x3b and fm1 == 0x108000 and rm_val == 0  #nosat<br>                                                                       |[0x80000660]:fsqrt.s fa1, fa0, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsw fa1, 448(a5)<br>   |
|  58|[0x800024cc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x82 and fm1 == 0x044000 and rm_val == 0  #nosat<br>                                                                       |[0x80000678]:fsqrt.s fa1, fa0, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsw fa1, 456(a5)<br>   |
|  59|[0x800024d4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x97 and fm1 == 0x5c8000 and rm_val == 0  #nosat<br>                                                                       |[0x80000690]:fsqrt.s fa1, fa0, dyn<br> [0x80000694]:csrrs a7, fflags, zero<br> [0x80000698]:fsw fa1, 464(a5)<br>   |
|  60|[0x800024dc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x86 and fm1 == 0x704000 and rm_val == 0  #nosat<br>                                                                       |[0x800006a8]:fsqrt.s fa1, fa0, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsw fa1, 472(a5)<br>   |
|  61|[0x800024e4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x610000 and rm_val == 0  #nosat<br>                                                                       |[0x800006c0]:fsqrt.s fa1, fa0, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsw fa1, 480(a5)<br>   |
|  62|[0x800024ec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xc7 and fm1 == 0x720000 and rm_val == 0  #nosat<br>                                                                       |[0x800006d8]:fsqrt.s fa1, fa0, dyn<br> [0x800006dc]:csrrs a7, fflags, zero<br> [0x800006e0]:fsw fa1, 488(a5)<br>   |
|  63|[0x800024f4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xb7 and fm1 == 0x720000 and rm_val == 0  #nosat<br>                                                                       |[0x800006f0]:fsqrt.s fa1, fa0, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa1, 496(a5)<br>   |
|  64|[0x800024fc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x480000 and rm_val == 0  #nosat<br>                                                                       |[0x80000708]:fsqrt.s fa1, fa0, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:fsw fa1, 504(a5)<br>   |
|  65|[0x80002504]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x39 and fm1 == 0x480000 and rm_val == 0  #nosat<br>                                                                       |[0x80000720]:fsqrt.s fa1, fa0, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsw fa1, 512(a5)<br>   |
