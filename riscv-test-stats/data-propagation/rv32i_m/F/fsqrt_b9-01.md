
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001350')]      |
| SIG_REGION                | [('0x80003504', '0x80003b14', '388 words')]      |
| COV_LABELS                | fsqrt_b9      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsqrt_b9-01.S/ref.S    |
| Total Number of coverpoints| 266     |
| Total Coverpoints Hit     | 261      |
| Total Signature Updates   | 388      |
| STAT1                     | 194      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 194     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsqrt.s', 'rs1 : f20', 'rd : f20', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fsqrt.s fs4, fs4, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw fs4, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80003508]:0x00000000




Last Coverpoint : ['rs1 : f16', 'rd : f7', 'rs1 != rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fsqrt.s ft7, fa6, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw ft7, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80003510]:0x00000001




Last Coverpoint : ['rs1 : f4', 'rd : f3', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fsqrt.s ft3, ft4, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw ft3, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80003518]:0x00000001




Last Coverpoint : ['rs1 : f9', 'rd : f26', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fsqrt.s fs10, fs1, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw fs10, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80003520]:0x00000001




Last Coverpoint : ['rs1 : f6', 'rd : f15', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fsqrt.s fa5, ft6, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw fa5, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80003528]:0x00000001




Last Coverpoint : ['rs1 : f5', 'rd : f28', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fsqrt.s ft8, ft5, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw ft8, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80003530]:0x00000001




Last Coverpoint : ['rs1 : f23', 'rd : f21', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fsqrt.s fs5, fs7, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw fs5, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80003538]:0x00000001




Last Coverpoint : ['rs1 : f21', 'rd : f25', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fsqrt.s fs9, fs5, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw fs9, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80003540]:0x00000001




Last Coverpoint : ['rs1 : f10', 'rd : f8', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fsqrt.s fs0, fa0, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw fs0, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80003548]:0x00000001




Last Coverpoint : ['rs1 : f2', 'rd : f5', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fsqrt.s ft5, ft2, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:fsw ft5, 72(a5)
Current Store : [0x80000204] : sw a7, 76(a5) -- Store: [0x80003550]:0x00000001




Last Coverpoint : ['rs1 : f0', 'rd : f4', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000210]:fsqrt.s ft4, ft0, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw ft4, 80(a5)
Current Store : [0x8000021c] : sw a7, 84(a5) -- Store: [0x80003558]:0x00000001




Last Coverpoint : ['rs1 : f22', 'rd : f16', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fsqrt.s fa6, fs6, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fa6, 88(a5)
Current Store : [0x80000234] : sw a7, 92(a5) -- Store: [0x80003560]:0x00000001




Last Coverpoint : ['rs1 : f19', 'rd : f22', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fsqrt.s fs6, fs3, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw fs6, 96(a5)
Current Store : [0x8000024c] : sw a7, 100(a5) -- Store: [0x80003568]:0x00000001




Last Coverpoint : ['rs1 : f1', 'rd : f2', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fsqrt.s ft2, ft1, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft2, 104(a5)
Current Store : [0x80000264] : sw a7, 108(a5) -- Store: [0x80003570]:0x00000001




Last Coverpoint : ['rs1 : f15', 'rd : f18', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fsqrt.s fs2, fa5, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fs2, 112(a5)
Current Store : [0x8000027c] : sw a7, 116(a5) -- Store: [0x80003578]:0x00000001




Last Coverpoint : ['rs1 : f8', 'rd : f0', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fsqrt.s ft0, fs0, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw ft0, 120(a5)
Current Store : [0x80000294] : sw a7, 124(a5) -- Store: [0x80003580]:0x00000001




Last Coverpoint : ['rs1 : f14', 'rd : f10', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fsqrt.s fa0, fa4, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw fa0, 128(a5)
Current Store : [0x800002ac] : sw a7, 132(a5) -- Store: [0x80003588]:0x00000001




Last Coverpoint : ['rs1 : f18', 'rd : f11', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fsqrt.s fa1, fs2, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw fa1, 136(a5)
Current Store : [0x800002c4] : sw a7, 140(a5) -- Store: [0x80003590]:0x00000001




Last Coverpoint : ['rs1 : f12', 'rd : f29', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fsqrt.s ft9, fa2, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw ft9, 144(a5)
Current Store : [0x800002dc] : sw a7, 148(a5) -- Store: [0x80003598]:0x00000001




Last Coverpoint : ['rs1 : f26', 'rd : f13', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fsqrt.s fa3, fs10, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw fa3, 152(a5)
Current Store : [0x800002f4] : sw a7, 156(a5) -- Store: [0x800035a0]:0x00000001




Last Coverpoint : ['rs1 : f7', 'rd : f19', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fsqrt.s fs3, ft7, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fs3, 160(a5)
Current Store : [0x8000030c] : sw a7, 164(a5) -- Store: [0x800035a8]:0x00000001




Last Coverpoint : ['rs1 : f3', 'rd : f30', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fsqrt.s ft10, ft3, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw ft10, 168(a5)
Current Store : [0x80000324] : sw a7, 172(a5) -- Store: [0x800035b0]:0x00000001




Last Coverpoint : ['rs1 : f11', 'rd : f6', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fsqrt.s ft6, fa1, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw ft6, 176(a5)
Current Store : [0x8000033c] : sw a7, 180(a5) -- Store: [0x800035b8]:0x00000001




Last Coverpoint : ['rs1 : f30', 'rd : f9', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fsqrt.s fs1, ft10, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw fs1, 184(a5)
Current Store : [0x80000354] : sw a7, 188(a5) -- Store: [0x800035c0]:0x00000001




Last Coverpoint : ['rs1 : f28', 'rd : f27', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fsqrt.s fs11, ft8, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw fs11, 192(a5)
Current Store : [0x8000036c] : sw a7, 196(a5) -- Store: [0x800035c8]:0x00000001




Last Coverpoint : ['rs1 : f17', 'rd : f23', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000378]:fsqrt.s fs7, fa7, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:fsw fs7, 200(a5)
Current Store : [0x80000384] : sw a7, 204(a5) -- Store: [0x800035d0]:0x00000001




Last Coverpoint : ['rs1 : f31', 'rd : f14', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000390]:fsqrt.s fa4, ft11, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:fsw fa4, 208(a5)
Current Store : [0x8000039c] : sw a7, 212(a5) -- Store: [0x800035d8]:0x00000001




Last Coverpoint : ['rs1 : f25', 'rd : f24', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fsqrt.s fs8, fs9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs8, 216(a5)
Current Store : [0x800003b4] : sw a7, 220(a5) -- Store: [0x800035e0]:0x00000001




Last Coverpoint : ['rs1 : f24', 'rd : f12', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fsqrt.s fa2, fs8, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsw fa2, 224(a5)
Current Store : [0x800003cc] : sw a7, 228(a5) -- Store: [0x800035e8]:0x00000001




Last Coverpoint : ['rs1 : f27', 'rd : f31', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fsqrt.s ft11, fs11, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsw ft11, 232(a5)
Current Store : [0x800003e4] : sw a7, 236(a5) -- Store: [0x800035f0]:0x00000001




Last Coverpoint : ['rs1 : f29', 'rd : f1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fsqrt.s ft1, ft9, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw ft1, 240(a5)
Current Store : [0x800003fc] : sw a7, 244(a5) -- Store: [0x800035f8]:0x00000001




Last Coverpoint : ['rs1 : f13', 'rd : f17', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000408]:fsqrt.s fa7, fa3, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fa7, 248(a5)
Current Store : [0x80000414] : sw a7, 252(a5) -- Store: [0x80003600]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000420]:fsqrt.s fa1, fa0, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw fa1, 256(a5)
Current Store : [0x8000042c] : sw a7, 260(a5) -- Store: [0x80003608]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fsqrt.s fa1, fa0, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:fsw fa1, 264(a5)
Current Store : [0x80000444] : sw a7, 268(a5) -- Store: [0x80003610]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fsqrt.s fa1, fa0, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw fa1, 272(a5)
Current Store : [0x8000045c] : sw a7, 276(a5) -- Store: [0x80003618]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fsqrt.s fa1, fa0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa1, 280(a5)
Current Store : [0x80000474] : sw a7, 284(a5) -- Store: [0x80003620]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fsqrt.s fa1, fa0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsw fa1, 288(a5)
Current Store : [0x8000048c] : sw a7, 292(a5) -- Store: [0x80003628]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000498]:fsqrt.s fa1, fa0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:fsw fa1, 296(a5)
Current Store : [0x800004a4] : sw a7, 300(a5) -- Store: [0x80003630]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fsqrt.s fa1, fa0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:fsw fa1, 304(a5)
Current Store : [0x800004bc] : sw a7, 308(a5) -- Store: [0x80003638]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fsqrt.s fa1, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:fsw fa1, 312(a5)
Current Store : [0x800004d4] : sw a7, 316(a5) -- Store: [0x80003640]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e0]:fsqrt.s fa1, fa0, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsw fa1, 320(a5)
Current Store : [0x800004ec] : sw a7, 324(a5) -- Store: [0x80003648]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fsqrt.s fa1, fa0, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa1, 328(a5)
Current Store : [0x80000504] : sw a7, 332(a5) -- Store: [0x80003650]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000510]:fsqrt.s fa1, fa0, dyn
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:fsw fa1, 336(a5)
Current Store : [0x8000051c] : sw a7, 340(a5) -- Store: [0x80003658]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fsqrt.s fa1, fa0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsw fa1, 344(a5)
Current Store : [0x80000534] : sw a7, 348(a5) -- Store: [0x80003660]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000540]:fsqrt.s fa1, fa0, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsw fa1, 352(a5)
Current Store : [0x8000054c] : sw a7, 356(a5) -- Store: [0x80003668]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000558]:fsqrt.s fa1, fa0, dyn
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:fsw fa1, 360(a5)
Current Store : [0x80000564] : sw a7, 364(a5) -- Store: [0x80003670]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000570]:fsqrt.s fa1, fa0, dyn
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:fsw fa1, 368(a5)
Current Store : [0x8000057c] : sw a7, 372(a5) -- Store: [0x80003678]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000588]:fsqrt.s fa1, fa0, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:fsw fa1, 376(a5)
Current Store : [0x80000594] : sw a7, 380(a5) -- Store: [0x80003680]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fsqrt.s fa1, fa0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa1, 384(a5)
Current Store : [0x800005ac] : sw a7, 388(a5) -- Store: [0x80003688]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b8]:fsqrt.s fa1, fa0, dyn
	-[0x800005bc]:csrrs a7, fflags, zero
	-[0x800005c0]:fsw fa1, 392(a5)
Current Store : [0x800005c4] : sw a7, 396(a5) -- Store: [0x80003690]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fsqrt.s fa1, fa0, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsw fa1, 400(a5)
Current Store : [0x800005dc] : sw a7, 404(a5) -- Store: [0x80003698]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fsqrt.s fa1, fa0, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:fsw fa1, 408(a5)
Current Store : [0x800005f4] : sw a7, 412(a5) -- Store: [0x800036a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fsqrt.s fa1, fa0, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsw fa1, 416(a5)
Current Store : [0x8000060c] : sw a7, 420(a5) -- Store: [0x800036a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000618]:fsqrt.s fa1, fa0, dyn
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:fsw fa1, 424(a5)
Current Store : [0x80000624] : sw a7, 428(a5) -- Store: [0x800036b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000630]:fsqrt.s fa1, fa0, dyn
	-[0x80000634]:csrrs a7, fflags, zero
	-[0x80000638]:fsw fa1, 432(a5)
Current Store : [0x8000063c] : sw a7, 436(a5) -- Store: [0x800036b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fsqrt.s fa1, fa0, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa1, 440(a5)
Current Store : [0x80000654] : sw a7, 444(a5) -- Store: [0x800036c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000660]:fsqrt.s fa1, fa0, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsw fa1, 448(a5)
Current Store : [0x8000066c] : sw a7, 452(a5) -- Store: [0x800036c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fsqrt.s fa1, fa0, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsw fa1, 456(a5)
Current Store : [0x80000684] : sw a7, 460(a5) -- Store: [0x800036d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000690]:fsqrt.s fa1, fa0, dyn
	-[0x80000694]:csrrs a7, fflags, zero
	-[0x80000698]:fsw fa1, 464(a5)
Current Store : [0x8000069c] : sw a7, 468(a5) -- Store: [0x800036d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fsqrt.s fa1, fa0, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsw fa1, 472(a5)
Current Store : [0x800006b4] : sw a7, 476(a5) -- Store: [0x800036e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fsqrt.s fa1, fa0, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsw fa1, 480(a5)
Current Store : [0x800006cc] : sw a7, 484(a5) -- Store: [0x800036e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d8]:fsqrt.s fa1, fa0, dyn
	-[0x800006dc]:csrrs a7, fflags, zero
	-[0x800006e0]:fsw fa1, 488(a5)
Current Store : [0x800006e4] : sw a7, 492(a5) -- Store: [0x800036f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fsqrt.s fa1, fa0, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa1, 496(a5)
Current Store : [0x800006fc] : sw a7, 500(a5) -- Store: [0x800036f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000708]:fsqrt.s fa1, fa0, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:fsw fa1, 504(a5)
Current Store : [0x80000714] : sw a7, 508(a5) -- Store: [0x80003700]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fsqrt.s fa1, fa0, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsw fa1, 512(a5)
Current Store : [0x8000072c] : sw a7, 516(a5) -- Store: [0x80003708]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000738]:fsqrt.s fa1, fa0, dyn
	-[0x8000073c]:csrrs a7, fflags, zero
	-[0x80000740]:fsw fa1, 520(a5)
Current Store : [0x80000744] : sw a7, 524(a5) -- Store: [0x80003710]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000750]:fsqrt.s fa1, fa0, dyn
	-[0x80000754]:csrrs a7, fflags, zero
	-[0x80000758]:fsw fa1, 528(a5)
Current Store : [0x8000075c] : sw a7, 532(a5) -- Store: [0x80003718]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000768]:fsqrt.s fa1, fa0, dyn
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:fsw fa1, 536(a5)
Current Store : [0x80000774] : sw a7, 540(a5) -- Store: [0x80003720]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fsqrt.s fa1, fa0, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsw fa1, 544(a5)
Current Store : [0x8000078c] : sw a7, 548(a5) -- Store: [0x80003728]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000798]:fsqrt.s fa1, fa0, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa1, 552(a5)
Current Store : [0x800007a4] : sw a7, 556(a5) -- Store: [0x80003730]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b0]:fsqrt.s fa1, fa0, dyn
	-[0x800007b4]:csrrs a7, fflags, zero
	-[0x800007b8]:fsw fa1, 560(a5)
Current Store : [0x800007bc] : sw a7, 564(a5) -- Store: [0x80003738]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fsqrt.s fa1, fa0, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsw fa1, 568(a5)
Current Store : [0x800007d4] : sw a7, 572(a5) -- Store: [0x80003740]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fsqrt.s fa1, fa0, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsw fa1, 576(a5)
Current Store : [0x800007ec] : sw a7, 580(a5) -- Store: [0x80003748]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007f8]:fsqrt.s fa1, fa0, dyn
	-[0x800007fc]:csrrs a7, fflags, zero
	-[0x80000800]:fsw fa1, 584(a5)
Current Store : [0x80000804] : sw a7, 588(a5) -- Store: [0x80003750]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000810]:fsqrt.s fa1, fa0, dyn
	-[0x80000814]:csrrs a7, fflags, zero
	-[0x80000818]:fsw fa1, 592(a5)
Current Store : [0x8000081c] : sw a7, 596(a5) -- Store: [0x80003758]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000828]:fsqrt.s fa1, fa0, dyn
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:fsw fa1, 600(a5)
Current Store : [0x80000834] : sw a7, 604(a5) -- Store: [0x80003760]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fsqrt.s fa1, fa0, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa1, 608(a5)
Current Store : [0x8000084c] : sw a7, 612(a5) -- Store: [0x80003768]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000858]:fsqrt.s fa1, fa0, dyn
	-[0x8000085c]:csrrs a7, fflags, zero
	-[0x80000860]:fsw fa1, 616(a5)
Current Store : [0x80000864] : sw a7, 620(a5) -- Store: [0x80003770]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000870]:fsqrt.s fa1, fa0, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsw fa1, 624(a5)
Current Store : [0x8000087c] : sw a7, 628(a5) -- Store: [0x80003778]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000888]:fsqrt.s fa1, fa0, dyn
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:fsw fa1, 632(a5)
Current Store : [0x80000894] : sw a7, 636(a5) -- Store: [0x80003780]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fsqrt.s fa1, fa0, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsw fa1, 640(a5)
Current Store : [0x800008ac] : sw a7, 644(a5) -- Store: [0x80003788]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b8]:fsqrt.s fa1, fa0, dyn
	-[0x800008bc]:csrrs a7, fflags, zero
	-[0x800008c0]:fsw fa1, 648(a5)
Current Store : [0x800008c4] : sw a7, 652(a5) -- Store: [0x80003790]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008d0]:fsqrt.s fa1, fa0, dyn
	-[0x800008d4]:csrrs a7, fflags, zero
	-[0x800008d8]:fsw fa1, 656(a5)
Current Store : [0x800008dc] : sw a7, 660(a5) -- Store: [0x80003798]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fsqrt.s fa1, fa0, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa1, 664(a5)
Current Store : [0x800008f4] : sw a7, 668(a5) -- Store: [0x800037a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000900]:fsqrt.s fa1, fa0, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsw fa1, 672(a5)
Current Store : [0x8000090c] : sw a7, 676(a5) -- Store: [0x800037a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000918]:fsqrt.s fa1, fa0, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsw fa1, 680(a5)
Current Store : [0x80000924] : sw a7, 684(a5) -- Store: [0x800037b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000930]:fsqrt.s fa1, fa0, dyn
	-[0x80000934]:csrrs a7, fflags, zero
	-[0x80000938]:fsw fa1, 688(a5)
Current Store : [0x8000093c] : sw a7, 692(a5) -- Store: [0x800037b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000948]:fsqrt.s fa1, fa0, dyn
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:fsw fa1, 696(a5)
Current Store : [0x80000954] : sw a7, 700(a5) -- Store: [0x800037c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fsqrt.s fa1, fa0, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsw fa1, 704(a5)
Current Store : [0x8000096c] : sw a7, 708(a5) -- Store: [0x800037c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000978]:fsqrt.s fa1, fa0, dyn
	-[0x8000097c]:csrrs a7, fflags, zero
	-[0x80000980]:fsw fa1, 712(a5)
Current Store : [0x80000984] : sw a7, 716(a5) -- Store: [0x800037d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000990]:fsqrt.s fa1, fa0, dyn
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:fsw fa1, 720(a5)
Current Store : [0x8000099c] : sw a7, 724(a5) -- Store: [0x800037d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a8]:fsqrt.s fa1, fa0, dyn
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:fsw fa1, 728(a5)
Current Store : [0x800009b4] : sw a7, 732(a5) -- Store: [0x800037e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fsqrt.s fa1, fa0, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsw fa1, 736(a5)
Current Store : [0x800009cc] : sw a7, 740(a5) -- Store: [0x800037e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009d8]:fsqrt.s fa1, fa0, dyn
	-[0x800009dc]:csrrs a7, fflags, zero
	-[0x800009e0]:fsw fa1, 744(a5)
Current Store : [0x800009e4] : sw a7, 748(a5) -- Store: [0x800037f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009f0]:fsqrt.s fa1, fa0, dyn
	-[0x800009f4]:csrrs a7, fflags, zero
	-[0x800009f8]:fsw fa1, 752(a5)
Current Store : [0x800009fc] : sw a7, 756(a5) -- Store: [0x800037f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a08]:fsqrt.s fa1, fa0, dyn
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:fsw fa1, 760(a5)
Current Store : [0x80000a14] : sw a7, 764(a5) -- Store: [0x80003800]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fsqrt.s fa1, fa0, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsw fa1, 768(a5)
Current Store : [0x80000a2c] : sw a7, 772(a5) -- Store: [0x80003808]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a38]:fsqrt.s fa1, fa0, dyn
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:fsw fa1, 776(a5)
Current Store : [0x80000a44] : sw a7, 780(a5) -- Store: [0x80003810]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a50]:fsqrt.s fa1, fa0, dyn
	-[0x80000a54]:csrrs a7, fflags, zero
	-[0x80000a58]:fsw fa1, 784(a5)
Current Store : [0x80000a5c] : sw a7, 788(a5) -- Store: [0x80003818]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fsqrt.s fa1, fa0, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsw fa1, 792(a5)
Current Store : [0x80000a74] : sw a7, 796(a5) -- Store: [0x80003820]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fsqrt.s fa1, fa0, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsw fa1, 800(a5)
Current Store : [0x80000a8c] : sw a7, 804(a5) -- Store: [0x80003828]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a98]:fsqrt.s fa1, fa0, dyn
	-[0x80000a9c]:csrrs a7, fflags, zero
	-[0x80000aa0]:fsw fa1, 808(a5)
Current Store : [0x80000aa4] : sw a7, 812(a5) -- Store: [0x80003830]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ab0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ab4]:csrrs a7, fflags, zero
	-[0x80000ab8]:fsw fa1, 816(a5)
Current Store : [0x80000abc] : sw a7, 820(a5) -- Store: [0x80003838]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:fsqrt.s fa1, fa0, dyn
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:fsw fa1, 824(a5)
Current Store : [0x80000ad4] : sw a7, 828(a5) -- Store: [0x80003840]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsw fa1, 832(a5)
Current Store : [0x80000aec] : sw a7, 836(a5) -- Store: [0x80003848]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000af8]:fsqrt.s fa1, fa0, dyn
	-[0x80000afc]:csrrs a7, fflags, zero
	-[0x80000b00]:fsw fa1, 840(a5)
Current Store : [0x80000b04] : sw a7, 844(a5) -- Store: [0x80003850]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fsqrt.s fa1, fa0, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsw fa1, 848(a5)
Current Store : [0x80000b1c] : sw a7, 852(a5) -- Store: [0x80003858]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b28]:fsqrt.s fa1, fa0, dyn
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:fsw fa1, 856(a5)
Current Store : [0x80000b34] : sw a7, 860(a5) -- Store: [0x80003860]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fsqrt.s fa1, fa0, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsw fa1, 864(a5)
Current Store : [0x80000b4c] : sw a7, 868(a5) -- Store: [0x80003868]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b58]:fsqrt.s fa1, fa0, dyn
	-[0x80000b5c]:csrrs a7, fflags, zero
	-[0x80000b60]:fsw fa1, 872(a5)
Current Store : [0x80000b64] : sw a7, 876(a5) -- Store: [0x80003870]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b70]:fsqrt.s fa1, fa0, dyn
	-[0x80000b74]:csrrs a7, fflags, zero
	-[0x80000b78]:fsw fa1, 880(a5)
Current Store : [0x80000b7c] : sw a7, 884(a5) -- Store: [0x80003878]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fsqrt.s fa1, fa0, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa1, 888(a5)
Current Store : [0x80000b94] : sw a7, 892(a5) -- Store: [0x80003880]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsw fa1, 896(a5)
Current Store : [0x80000bac] : sw a7, 900(a5) -- Store: [0x80003888]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fsqrt.s fa1, fa0, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsw fa1, 904(a5)
Current Store : [0x80000bc4] : sw a7, 908(a5) -- Store: [0x80003890]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bd0]:fsqrt.s fa1, fa0, dyn
	-[0x80000bd4]:csrrs a7, fflags, zero
	-[0x80000bd8]:fsw fa1, 912(a5)
Current Store : [0x80000bdc] : sw a7, 916(a5) -- Store: [0x80003898]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be8]:fsqrt.s fa1, fa0, dyn
	-[0x80000bec]:csrrs a7, fflags, zero
	-[0x80000bf0]:fsw fa1, 920(a5)
Current Store : [0x80000bf4] : sw a7, 924(a5) -- Store: [0x800038a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fsqrt.s fa1, fa0, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsw fa1, 928(a5)
Current Store : [0x80000c0c] : sw a7, 932(a5) -- Store: [0x800038a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c18]:fsqrt.s fa1, fa0, dyn
	-[0x80000c1c]:csrrs a7, fflags, zero
	-[0x80000c20]:fsw fa1, 936(a5)
Current Store : [0x80000c24] : sw a7, 940(a5) -- Store: [0x800038b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c30]:fsqrt.s fa1, fa0, dyn
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:fsw fa1, 944(a5)
Current Store : [0x80000c3c] : sw a7, 948(a5) -- Store: [0x800038b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c48]:fsqrt.s fa1, fa0, dyn
	-[0x80000c4c]:csrrs a7, fflags, zero
	-[0x80000c50]:fsw fa1, 952(a5)
Current Store : [0x80000c54] : sw a7, 956(a5) -- Store: [0x800038c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fsqrt.s fa1, fa0, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsw fa1, 960(a5)
Current Store : [0x80000c6c] : sw a7, 964(a5) -- Store: [0x800038c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c78]:fsqrt.s fa1, fa0, dyn
	-[0x80000c7c]:csrrs a7, fflags, zero
	-[0x80000c80]:fsw fa1, 968(a5)
Current Store : [0x80000c84] : sw a7, 972(a5) -- Store: [0x800038d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c90]:fsqrt.s fa1, fa0, dyn
	-[0x80000c94]:csrrs a7, fflags, zero
	-[0x80000c98]:fsw fa1, 976(a5)
Current Store : [0x80000c9c] : sw a7, 980(a5) -- Store: [0x800038d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca8]:fsqrt.s fa1, fa0, dyn
	-[0x80000cac]:csrrs a7, fflags, zero
	-[0x80000cb0]:fsw fa1, 984(a5)
Current Store : [0x80000cb4] : sw a7, 988(a5) -- Store: [0x800038e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fsqrt.s fa1, fa0, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsw fa1, 992(a5)
Current Store : [0x80000ccc] : sw a7, 996(a5) -- Store: [0x800038e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:fsqrt.s fa1, fa0, dyn
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:fsw fa1, 1000(a5)
Current Store : [0x80000ce4] : sw a7, 1004(a5) -- Store: [0x800038f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cf0]:fsqrt.s fa1, fa0, dyn
	-[0x80000cf4]:csrrs a7, fflags, zero
	-[0x80000cf8]:fsw fa1, 1008(a5)
Current Store : [0x80000cfc] : sw a7, 1012(a5) -- Store: [0x800038f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fsqrt.s fa1, fa0, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsw fa1, 1016(a5)
Current Store : [0x80000d14] : sw a7, 1020(a5) -- Store: [0x80003900]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fsqrt.s fa1, fa0, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsw fa1, 1024(a5)
Current Store : [0x80000d2c] : sw a7, 1028(a5) -- Store: [0x80003908]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d38]:fsqrt.s fa1, fa0, dyn
	-[0x80000d3c]:csrrs a7, fflags, zero
	-[0x80000d40]:fsw fa1, 1032(a5)
Current Store : [0x80000d44] : sw a7, 1036(a5) -- Store: [0x80003910]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d50]:fsqrt.s fa1, fa0, dyn
	-[0x80000d54]:csrrs a7, fflags, zero
	-[0x80000d58]:fsw fa1, 1040(a5)
Current Store : [0x80000d5c] : sw a7, 1044(a5) -- Store: [0x80003918]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d68]:fsqrt.s fa1, fa0, dyn
	-[0x80000d6c]:csrrs a7, fflags, zero
	-[0x80000d70]:fsw fa1, 1048(a5)
Current Store : [0x80000d74] : sw a7, 1052(a5) -- Store: [0x80003920]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fsqrt.s fa1, fa0, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsw fa1, 1056(a5)
Current Store : [0x80000d8c] : sw a7, 1060(a5) -- Store: [0x80003928]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d98]:fsqrt.s fa1, fa0, dyn
	-[0x80000d9c]:csrrs a7, fflags, zero
	-[0x80000da0]:fsw fa1, 1064(a5)
Current Store : [0x80000da4] : sw a7, 1068(a5) -- Store: [0x80003930]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fsqrt.s fa1, fa0, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsw fa1, 1072(a5)
Current Store : [0x80000dbc] : sw a7, 1076(a5) -- Store: [0x80003938]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc8]:fsqrt.s fa1, fa0, dyn
	-[0x80000dcc]:csrrs a7, fflags, zero
	-[0x80000dd0]:fsw fa1, 1080(a5)
Current Store : [0x80000dd4] : sw a7, 1084(a5) -- Store: [0x80003940]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fsqrt.s fa1, fa0, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsw fa1, 1088(a5)
Current Store : [0x80000dec] : sw a7, 1092(a5) -- Store: [0x80003948]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000df8]:fsqrt.s fa1, fa0, dyn
	-[0x80000dfc]:csrrs a7, fflags, zero
	-[0x80000e00]:fsw fa1, 1096(a5)
Current Store : [0x80000e04] : sw a7, 1100(a5) -- Store: [0x80003950]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e10]:fsqrt.s fa1, fa0, dyn
	-[0x80000e14]:csrrs a7, fflags, zero
	-[0x80000e18]:fsw fa1, 1104(a5)
Current Store : [0x80000e1c] : sw a7, 1108(a5) -- Store: [0x80003958]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fsqrt.s fa1, fa0, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa1, 1112(a5)
Current Store : [0x80000e34] : sw a7, 1116(a5) -- Store: [0x80003960]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fsqrt.s fa1, fa0, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsw fa1, 1120(a5)
Current Store : [0x80000e4c] : sw a7, 1124(a5) -- Store: [0x80003968]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fsqrt.s fa1, fa0, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsw fa1, 1128(a5)
Current Store : [0x80000e64] : sw a7, 1132(a5) -- Store: [0x80003970]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e70]:fsqrt.s fa1, fa0, dyn
	-[0x80000e74]:csrrs a7, fflags, zero
	-[0x80000e78]:fsw fa1, 1136(a5)
Current Store : [0x80000e7c] : sw a7, 1140(a5) -- Store: [0x80003978]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e88]:fsqrt.s fa1, fa0, dyn
	-[0x80000e8c]:csrrs a7, fflags, zero
	-[0x80000e90]:fsw fa1, 1144(a5)
Current Store : [0x80000e94] : sw a7, 1148(a5) -- Store: [0x80003980]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ea0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ea4]:csrrs a7, fflags, zero
	-[0x80000ea8]:fsw fa1, 1152(a5)
Current Store : [0x80000eac] : sw a7, 1156(a5) -- Store: [0x80003988]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eb8]:fsqrt.s fa1, fa0, dyn
	-[0x80000ebc]:csrrs a7, fflags, zero
	-[0x80000ec0]:fsw fa1, 1160(a5)
Current Store : [0x80000ec4] : sw a7, 1164(a5) -- Store: [0x80003990]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:fsw fa1, 1168(a5)
Current Store : [0x80000edc] : sw a7, 1172(a5) -- Store: [0x80003998]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee8]:fsqrt.s fa1, fa0, dyn
	-[0x80000eec]:csrrs a7, fflags, zero
	-[0x80000ef0]:fsw fa1, 1176(a5)
Current Store : [0x80000ef4] : sw a7, 1180(a5) -- Store: [0x800039a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fsqrt.s fa1, fa0, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsw fa1, 1184(a5)
Current Store : [0x80000f0c] : sw a7, 1188(a5) -- Store: [0x800039a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f18]:fsqrt.s fa1, fa0, dyn
	-[0x80000f1c]:csrrs a7, fflags, zero
	-[0x80000f20]:fsw fa1, 1192(a5)
Current Store : [0x80000f24] : sw a7, 1196(a5) -- Store: [0x800039b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f30]:fsqrt.s fa1, fa0, dyn
	-[0x80000f34]:csrrs a7, fflags, zero
	-[0x80000f38]:fsw fa1, 1200(a5)
Current Store : [0x80000f3c] : sw a7, 1204(a5) -- Store: [0x800039b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f48]:fsqrt.s fa1, fa0, dyn
	-[0x80000f4c]:csrrs a7, fflags, zero
	-[0x80000f50]:fsw fa1, 1208(a5)
Current Store : [0x80000f54] : sw a7, 1212(a5) -- Store: [0x800039c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f60]:fsqrt.s fa1, fa0, dyn
	-[0x80000f64]:csrrs a7, fflags, zero
	-[0x80000f68]:fsw fa1, 1216(a5)
Current Store : [0x80000f6c] : sw a7, 1220(a5) -- Store: [0x800039c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f78]:fsqrt.s fa1, fa0, dyn
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:fsw fa1, 1224(a5)
Current Store : [0x80000f84] : sw a7, 1228(a5) -- Store: [0x800039d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f90]:fsqrt.s fa1, fa0, dyn
	-[0x80000f94]:csrrs a7, fflags, zero
	-[0x80000f98]:fsw fa1, 1232(a5)
Current Store : [0x80000f9c] : sw a7, 1236(a5) -- Store: [0x800039d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fsqrt.s fa1, fa0, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsw fa1, 1240(a5)
Current Store : [0x80000fb4] : sw a7, 1244(a5) -- Store: [0x800039e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc0]:fsqrt.s fa1, fa0, dyn
	-[0x80000fc4]:csrrs a7, fflags, zero
	-[0x80000fc8]:fsw fa1, 1248(a5)
Current Store : [0x80000fcc] : sw a7, 1252(a5) -- Store: [0x800039e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fd8]:fsqrt.s fa1, fa0, dyn
	-[0x80000fdc]:csrrs a7, fflags, zero
	-[0x80000fe0]:fsw fa1, 1256(a5)
Current Store : [0x80000fe4] : sw a7, 1260(a5) -- Store: [0x800039f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ff0]:fsqrt.s fa1, fa0, dyn
	-[0x80000ff4]:csrrs a7, fflags, zero
	-[0x80000ff8]:fsw fa1, 1264(a5)
Current Store : [0x80000ffc] : sw a7, 1268(a5) -- Store: [0x800039f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001008]:fsqrt.s fa1, fa0, dyn
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:fsw fa1, 1272(a5)
Current Store : [0x80001014] : sw a7, 1276(a5) -- Store: [0x80003a00]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001020]:fsqrt.s fa1, fa0, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsw fa1, 1280(a5)
Current Store : [0x8000102c] : sw a7, 1284(a5) -- Store: [0x80003a08]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001038]:fsqrt.s fa1, fa0, dyn
	-[0x8000103c]:csrrs a7, fflags, zero
	-[0x80001040]:fsw fa1, 1288(a5)
Current Store : [0x80001044] : sw a7, 1292(a5) -- Store: [0x80003a10]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fsqrt.s fa1, fa0, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsw fa1, 1296(a5)
Current Store : [0x8000105c] : sw a7, 1300(a5) -- Store: [0x80003a18]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001068]:fsqrt.s fa1, fa0, dyn
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:fsw fa1, 1304(a5)
Current Store : [0x80001074] : sw a7, 1308(a5) -- Store: [0x80003a20]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001080]:fsqrt.s fa1, fa0, dyn
	-[0x80001084]:csrrs a7, fflags, zero
	-[0x80001088]:fsw fa1, 1312(a5)
Current Store : [0x8000108c] : sw a7, 1316(a5) -- Store: [0x80003a28]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001098]:fsqrt.s fa1, fa0, dyn
	-[0x8000109c]:csrrs a7, fflags, zero
	-[0x800010a0]:fsw fa1, 1320(a5)
Current Store : [0x800010a4] : sw a7, 1324(a5) -- Store: [0x80003a30]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010b0]:fsqrt.s fa1, fa0, dyn
	-[0x800010b4]:csrrs a7, fflags, zero
	-[0x800010b8]:fsw fa1, 1328(a5)
Current Store : [0x800010bc] : sw a7, 1332(a5) -- Store: [0x80003a38]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fsqrt.s fa1, fa0, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa1, 1336(a5)
Current Store : [0x800010d4] : sw a7, 1340(a5) -- Store: [0x80003a40]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e0]:fsqrt.s fa1, fa0, dyn
	-[0x800010e4]:csrrs a7, fflags, zero
	-[0x800010e8]:fsw fa1, 1344(a5)
Current Store : [0x800010ec] : sw a7, 1348(a5) -- Store: [0x80003a48]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fsqrt.s fa1, fa0, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsw fa1, 1352(a5)
Current Store : [0x80001104] : sw a7, 1356(a5) -- Store: [0x80003a50]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001110]:fsqrt.s fa1, fa0, dyn
	-[0x80001114]:csrrs a7, fflags, zero
	-[0x80001118]:fsw fa1, 1360(a5)
Current Store : [0x8000111c] : sw a7, 1364(a5) -- Store: [0x80003a58]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001128]:fsqrt.s fa1, fa0, dyn
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:fsw fa1, 1368(a5)
Current Store : [0x80001134] : sw a7, 1372(a5) -- Store: [0x80003a60]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001140]:fsqrt.s fa1, fa0, dyn
	-[0x80001144]:csrrs a7, fflags, zero
	-[0x80001148]:fsw fa1, 1376(a5)
Current Store : [0x8000114c] : sw a7, 1380(a5) -- Store: [0x80003a68]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001158]:fsqrt.s fa1, fa0, dyn
	-[0x8000115c]:csrrs a7, fflags, zero
	-[0x80001160]:fsw fa1, 1384(a5)
Current Store : [0x80001164] : sw a7, 1388(a5) -- Store: [0x80003a70]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001170]:fsqrt.s fa1, fa0, dyn
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:fsw fa1, 1392(a5)
Current Store : [0x8000117c] : sw a7, 1396(a5) -- Store: [0x80003a78]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001188]:fsqrt.s fa1, fa0, dyn
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:fsw fa1, 1400(a5)
Current Store : [0x80001194] : sw a7, 1404(a5) -- Store: [0x80003a80]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a0]:fsqrt.s fa1, fa0, dyn
	-[0x800011a4]:csrrs a7, fflags, zero
	-[0x800011a8]:fsw fa1, 1408(a5)
Current Store : [0x800011ac] : sw a7, 1412(a5) -- Store: [0x80003a88]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011b8]:fsqrt.s fa1, fa0, dyn
	-[0x800011bc]:csrrs a7, fflags, zero
	-[0x800011c0]:fsw fa1, 1416(a5)
Current Store : [0x800011c4] : sw a7, 1420(a5) -- Store: [0x80003a90]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011d0]:fsqrt.s fa1, fa0, dyn
	-[0x800011d4]:csrrs a7, fflags, zero
	-[0x800011d8]:fsw fa1, 1424(a5)
Current Store : [0x800011dc] : sw a7, 1428(a5) -- Store: [0x80003a98]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e8]:fsqrt.s fa1, fa0, dyn
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:fsw fa1, 1432(a5)
Current Store : [0x800011f4] : sw a7, 1436(a5) -- Store: [0x80003aa0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fsqrt.s fa1, fa0, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsw fa1, 1440(a5)
Current Store : [0x8000120c] : sw a7, 1444(a5) -- Store: [0x80003aa8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001218]:fsqrt.s fa1, fa0, dyn
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:fsw fa1, 1448(a5)
Current Store : [0x80001224] : sw a7, 1452(a5) -- Store: [0x80003ab0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001230]:fsqrt.s fa1, fa0, dyn
	-[0x80001234]:csrrs a7, fflags, zero
	-[0x80001238]:fsw fa1, 1456(a5)
Current Store : [0x8000123c] : sw a7, 1460(a5) -- Store: [0x80003ab8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001248]:fsqrt.s fa1, fa0, dyn
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:fsw fa1, 1464(a5)
Current Store : [0x80001254] : sw a7, 1468(a5) -- Store: [0x80003ac0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001260]:fsqrt.s fa1, fa0, dyn
	-[0x80001264]:csrrs a7, fflags, zero
	-[0x80001268]:fsw fa1, 1472(a5)
Current Store : [0x8000126c] : sw a7, 1476(a5) -- Store: [0x80003ac8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001278]:fsqrt.s fa1, fa0, dyn
	-[0x8000127c]:csrrs a7, fflags, zero
	-[0x80001280]:fsw fa1, 1480(a5)
Current Store : [0x80001284] : sw a7, 1484(a5) -- Store: [0x80003ad0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001290]:fsqrt.s fa1, fa0, dyn
	-[0x80001294]:csrrs a7, fflags, zero
	-[0x80001298]:fsw fa1, 1488(a5)
Current Store : [0x8000129c] : sw a7, 1492(a5) -- Store: [0x80003ad8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fsqrt.s fa1, fa0, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsw fa1, 1496(a5)
Current Store : [0x800012b4] : sw a7, 1500(a5) -- Store: [0x80003ae0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c0]:fsqrt.s fa1, fa0, dyn
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:fsw fa1, 1504(a5)
Current Store : [0x800012cc] : sw a7, 1508(a5) -- Store: [0x80003ae8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012d8]:fsqrt.s fa1, fa0, dyn
	-[0x800012dc]:csrrs a7, fflags, zero
	-[0x800012e0]:fsw fa1, 1512(a5)
Current Store : [0x800012e4] : sw a7, 1516(a5) -- Store: [0x80003af0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012f0]:fsqrt.s fa1, fa0, dyn
	-[0x800012f4]:csrrs a7, fflags, zero
	-[0x800012f8]:fsw fa1, 1520(a5)
Current Store : [0x800012fc] : sw a7, 1524(a5) -- Store: [0x80003af8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001308]:fsqrt.s fa1, fa0, dyn
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:fsw fa1, 1528(a5)
Current Store : [0x80001314] : sw a7, 1532(a5) -- Store: [0x80003b00]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001320]:fsqrt.s fa1, fa0, dyn
	-[0x80001324]:csrrs a7, fflags, zero
	-[0x80001328]:fsw fa1, 1536(a5)
Current Store : [0x8000132c] : sw a7, 1540(a5) -- Store: [0x80003b08]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001338]:fsqrt.s fa1, fa0, dyn
	-[0x8000133c]:csrrs a7, fflags, zero
	-[0x80001340]:fsw fa1, 1544(a5)
Current Store : [0x80001344] : sw a7, 1548(a5) -- Store: [0x80003b10]:0x00000001





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

|s.no|        signature         |                                                                   coverpoints                                                                   |                                                        code                                                        |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003504]<br>0xB7D5BFDD|- opcode : fsqrt.s<br> - rs1 : f20<br> - rd : f20<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br> |[0x80000120]:fsqrt.s fs4, fs4, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw fs4, 0(a5)<br>      |
|   2|[0x8000350c]<br>0xB7FBB6FA|- rs1 : f16<br> - rd : f7<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x4ccccc and rm_val == 0  #nosat<br>                         |[0x80000138]:fsqrt.s ft7, fa6, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw ft7, 8(a5)<br>      |
|   3|[0x80003514]<br>0x00000000|- rs1 : f4<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x333333 and rm_val == 0  #nosat<br>                                          |[0x80000150]:fsqrt.s ft3, ft4, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw ft3, 16(a5)<br>     |
|   4|[0x8000351c]<br>0x76DF56FF|- rs1 : f9<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x5b6db6 and rm_val == 0  #nosat<br>                                         |[0x80000168]:fsqrt.s fs10, fs1, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw fs10, 24(a5)<br>   |
|   5|[0x80003524]<br>0x80003504|- rs1 : f6<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x249249 and rm_val == 0  #nosat<br>                                         |[0x80000180]:fsqrt.s fa5, ft6, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw fa5, 32(a5)<br>     |
|   6|[0x8000352c]<br>0xDDB7D5BF|- rs1 : f5<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x444444 and rm_val == 0  #nosat<br>                                         |[0x80000198]:fsqrt.s ft8, ft5, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw ft8, 40(a5)<br>     |
|   7|[0x80003534]<br>0xDBEADFEE|- rs1 : f23<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3bbbbb and rm_val == 0  #nosat<br>                                        |[0x800001b0]:fsqrt.s fs5, fs7, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw fs5, 48(a5)<br>     |
|   8|[0x8000353c]<br>0xEDBEADFE|- rs1 : f21<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x666666 and rm_val == 0  #nosat<br>                                        |[0x800001c8]:fsqrt.s fs9, fs5, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw fs9, 56(a5)<br>     |
|   9|[0x80003544]<br>0x5BFDDB7D|- rs1 : f10<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x199999 and rm_val == 0  #nosat<br>                                         |[0x800001e0]:fsqrt.s fs0, fa0, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw fs0, 64(a5)<br>     |
|  10|[0x8000354c]<br>0x800000F8|- rs1 : f2<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x6db6db and rm_val == 0  #nosat<br>                                          |[0x800001f8]:fsqrt.s ft5, ft2, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsw ft5, 72(a5)<br>     |
|  11|[0x80003554]<br>0xBFDDB7D5|- rs1 : f0<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x36db6d and rm_val == 0  #nosat<br>                                          |[0x80000210]:fsqrt.s ft4, ft0, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw ft4, 80(a5)<br>     |
|  12|[0x8000355c]<br>0x80003004|- rs1 : f22<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x000001 and rm_val == 0  #nosat<br>                                        |[0x80000228]:fsqrt.s fa6, fs6, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fa6, 88(a5)<br>     |
|  13|[0x80003564]<br>0x6DF56FF7|- rs1 : f19<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                        |[0x80000240]:fsqrt.s fs6, fs3, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw fs6, 96(a5)<br>     |
|  14|[0x8000356c]<br>0x00006000|- rs1 : f1<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x000003 and rm_val == 0  #nosat<br>                                          |[0x80000258]:fsqrt.s ft2, ft1, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft2, 104(a5)<br>    |
|  15|[0x80003574]<br>0xDF56FF76|- rs1 : f15<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffc and rm_val == 0  #nosat<br>                                        |[0x80000270]:fsqrt.s fs2, fa5, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fs2, 112(a5)<br>    |
|  16|[0x8000357c]<br>0x00000000|- rs1 : f8<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x000007 and rm_val == 0  #nosat<br>                                          |[0x80000288]:fsqrt.s ft0, fs0, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw ft0, 120(a5)<br>    |
|  17|[0x80003584]<br>0x56FF76DF|- rs1 : f14<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff8 and rm_val == 0  #nosat<br>                                        |[0x800002a0]:fsqrt.s fa0, fa4, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw fa0, 128(a5)<br>    |
|  18|[0x8000358c]<br>0xAB7FBB6F|- rs1 : f18<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x00000f and rm_val == 0  #nosat<br>                                        |[0x800002b8]:fsqrt.s fa1, fs2, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw fa1, 136(a5)<br>    |
|  19|[0x80003594]<br>0xEEDBEADF|- rs1 : f12<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff0 and rm_val == 0  #nosat<br>                                        |[0x800002d0]:fsqrt.s ft9, fa2, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw ft9, 144(a5)<br>    |
|  20|[0x8000359c]<br>0xEADFEEDB|- rs1 : f26<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x00001f and rm_val == 0  #nosat<br>                                        |[0x800002e8]:fsqrt.s fa3, fs10, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw fa3, 152(a5)<br>   |
|  21|[0x800035a4]<br>0x6FAB7FBB|- rs1 : f7<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffe0 and rm_val == 0  #nosat<br>                                         |[0x80000300]:fsqrt.s fs3, ft7, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fs3, 160(a5)<br>    |
|  22|[0x800035ac]<br>0xF76DF56F|- rs1 : f3<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x00003f and rm_val == 0  #nosat<br>                                         |[0x80000318]:fsqrt.s ft10, ft3, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw ft10, 168(a5)<br>  |
|  23|[0x800035b4]<br>0x80003000|- rs1 : f11<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffc0 and rm_val == 0  #nosat<br>                                         |[0x80000330]:fsqrt.s ft6, fa1, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw ft6, 176(a5)<br>    |
|  24|[0x800035bc]<br>0xADFEEDBE|- rs1 : f30<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x00007f and rm_val == 0  #nosat<br>                                         |[0x80000348]:fsqrt.s fs1, ft10, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw fs1, 184(a5)<br>   |
|  25|[0x800035c4]<br>0xBB6FAB7F|- rs1 : f28<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff80 and rm_val == 0  #nosat<br>                                        |[0x80000360]:fsqrt.s fs11, ft8, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fs11, 192(a5)<br>  |
|  26|[0x800035cc]<br>0xB6FAB7FB|- rs1 : f17<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0000ff and rm_val == 0  #nosat<br>                                        |[0x80000378]:fsqrt.s fs7, fa7, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw fs7, 200(a5)<br>    |
|  27|[0x800035d4]<br>0xF56FF76D|- rs1 : f31<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff00 and rm_val == 0  #nosat<br>                                        |[0x80000390]:fsqrt.s fa4, ft11, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsw fa4, 208(a5)<br>   |
|  28|[0x800035dc]<br>0xDB7D5BFD|- rs1 : f25<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0001ff and rm_val == 0  #nosat<br>                                        |[0x800003a8]:fsqrt.s fs8, fs9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs8, 216(a5)<br>    |
|  29|[0x800035e4]<br>0xD5BFDDB7|- rs1 : f24<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffe00 and rm_val == 0  #nosat<br>                                        |[0x800003c0]:fsqrt.s fa2, fs8, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw fa2, 224(a5)<br>    |
|  30|[0x800035ec]<br>0xFBB6FAB7|- rs1 : f27<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0003ff and rm_val == 0  #nosat<br>                                        |[0x800003d8]:fsqrt.s ft11, fs11, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsw ft11, 232(a5)<br> |
|  31|[0x800035f4]<br>0xFEEDBEAD|- rs1 : f29<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffc00 and rm_val == 0  #nosat<br>                                         |[0x800003f0]:fsqrt.s ft1, ft9, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw ft1, 240(a5)<br>    |
|  32|[0x800035fc]<br>0x00000001|- rs1 : f13<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0007ff and rm_val == 0  #nosat<br>                                        |[0x80000408]:fsqrt.s fa7, fa3, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fa7, 248(a5)<br>    |
|  33|[0x80003604]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                       |[0x80000420]:fsqrt.s fa1, fa0, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fa1, 256(a5)<br>    |
|  34|[0x8000360c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000fff and rm_val == 0  #nosat<br>                                                                       |[0x80000438]:fsqrt.s fa1, fa0, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsw fa1, 264(a5)<br>    |
|  35|[0x80003614]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                       |[0x80000450]:fsqrt.s fa1, fa0, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw fa1, 272(a5)<br>    |
|  36|[0x8000361c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x001fff and rm_val == 0  #nosat<br>                                                                       |[0x80000468]:fsqrt.s fa1, fa0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa1, 280(a5)<br>    |
|  37|[0x80003624]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                       |[0x80000480]:fsqrt.s fa1, fa0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsw fa1, 288(a5)<br>    |
|  38|[0x8000362c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x003fff and rm_val == 0  #nosat<br>                                                                       |[0x80000498]:fsqrt.s fa1, fa0, dyn<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:fsw fa1, 296(a5)<br>    |
|  39|[0x80003634]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                       |[0x800004b0]:fsqrt.s fa1, fa0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:fsw fa1, 304(a5)<br>    |
|  40|[0x8000363c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x007fff and rm_val == 0  #nosat<br>                                                                       |[0x800004c8]:fsqrt.s fa1, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw fa1, 312(a5)<br>    |
|  41|[0x80003644]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                       |[0x800004e0]:fsqrt.s fa1, fa0, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsw fa1, 320(a5)<br>    |
|  42|[0x8000364c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00ffff and rm_val == 0  #nosat<br>                                                                       |[0x800004f8]:fsqrt.s fa1, fa0, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa1, 328(a5)<br>    |
|  43|[0x80003654]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000510]:fsqrt.s fa1, fa0, dyn<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:fsw fa1, 336(a5)<br>    |
|  44|[0x8000365c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x01ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000528]:fsqrt.s fa1, fa0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsw fa1, 344(a5)<br>    |
|  45|[0x80003664]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000540]:fsqrt.s fa1, fa0, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsw fa1, 352(a5)<br>    |
|  46|[0x8000366c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x03ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000558]:fsqrt.s fa1, fa0, dyn<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:fsw fa1, 360(a5)<br>    |
|  47|[0x80003674]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000570]:fsqrt.s fa1, fa0, dyn<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:fsw fa1, 368(a5)<br>    |
|  48|[0x8000367c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x07ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000588]:fsqrt.s fa1, fa0, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:fsw fa1, 376(a5)<br>    |
|  49|[0x80003684]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x780000 and rm_val == 0  #nosat<br>                                                                       |[0x800005a0]:fsqrt.s fa1, fa0, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa1, 384(a5)<br>    |
|  50|[0x8000368c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0fffff and rm_val == 0  #nosat<br>                                                                       |[0x800005b8]:fsqrt.s fa1, fa0, dyn<br> [0x800005bc]:csrrs a7, fflags, zero<br> [0x800005c0]:fsw fa1, 392(a5)<br>    |
|  51|[0x80003694]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x700000 and rm_val == 0  #nosat<br>                                                                       |[0x800005d0]:fsqrt.s fa1, fa0, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsw fa1, 400(a5)<br>    |
|  52|[0x8000369c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1fffff and rm_val == 0  #nosat<br>                                                                       |[0x800005e8]:fsqrt.s fa1, fa0, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:fsw fa1, 408(a5)<br>    |
|  53|[0x800036a4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x600000 and rm_val == 0  #nosat<br>                                                                       |[0x80000600]:fsqrt.s fa1, fa0, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsw fa1, 416(a5)<br>    |
|  54|[0x800036ac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000618]:fsqrt.s fa1, fa0, dyn<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:fsw fa1, 424(a5)<br>    |
|  55|[0x800036b4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x400000 and rm_val == 0  #nosat<br>                                                                       |[0x80000630]:fsqrt.s fa1, fa0, dyn<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:fsw fa1, 432(a5)<br>    |
|  56|[0x800036bc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000648]:fsqrt.s fa1, fa0, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa1, 440(a5)<br>    |
|  57|[0x800036c4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000660]:fsqrt.s fa1, fa0, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsw fa1, 448(a5)<br>    |
|  58|[0x800036cc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat<br>                                                                       |[0x80000678]:fsqrt.s fa1, fa0, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsw fa1, 456(a5)<br>    |
|  59|[0x800036d4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000690]:fsqrt.s fa1, fa0, dyn<br> [0x80000694]:csrrs a7, fflags, zero<br> [0x80000698]:fsw fa1, 464(a5)<br>    |
|  60|[0x800036dc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                       |[0x800006a8]:fsqrt.s fa1, fa0, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsw fa1, 472(a5)<br>    |
|  61|[0x800036e4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000003 and rm_val == 0  #nosat<br>                                                                       |[0x800006c0]:fsqrt.s fa1, fa0, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsw fa1, 480(a5)<br>    |
|  62|[0x800036ec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                       |[0x800006d8]:fsqrt.s fa1, fa0, dyn<br> [0x800006dc]:csrrs a7, fflags, zero<br> [0x800006e0]:fsw fa1, 488(a5)<br>    |
|  63|[0x800036f4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000007 and rm_val == 0  #nosat<br>                                                                       |[0x800006f0]:fsqrt.s fa1, fa0, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa1, 496(a5)<br>    |
|  64|[0x800036fc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80000708]:fsqrt.s fa1, fa0, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:fsw fa1, 504(a5)<br>    |
|  65|[0x80003704]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00000f and rm_val == 0  #nosat<br>                                                                       |[0x80000720]:fsqrt.s fa1, fa0, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsw fa1, 512(a5)<br>    |
|  66|[0x8000370c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80000738]:fsqrt.s fa1, fa0, dyn<br> [0x8000073c]:csrrs a7, fflags, zero<br> [0x80000740]:fsw fa1, 520(a5)<br>    |
|  67|[0x80003714]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00001f and rm_val == 0  #nosat<br>                                                                       |[0x80000750]:fsqrt.s fa1, fa0, dyn<br> [0x80000754]:csrrs a7, fflags, zero<br> [0x80000758]:fsw fa1, 528(a5)<br>    |
|  68|[0x8000371c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80000768]:fsqrt.s fa1, fa0, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:fsw fa1, 536(a5)<br>    |
|  69|[0x80003724]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00003f and rm_val == 0  #nosat<br>                                                                       |[0x80000780]:fsqrt.s fa1, fa0, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsw fa1, 544(a5)<br>    |
|  70|[0x8000372c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80000798]:fsqrt.s fa1, fa0, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa1, 552(a5)<br>    |
|  71|[0x80003734]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00007f and rm_val == 0  #nosat<br>                                                                       |[0x800007b0]:fsqrt.s fa1, fa0, dyn<br> [0x800007b4]:csrrs a7, fflags, zero<br> [0x800007b8]:fsw fa1, 560(a5)<br>    |
|  72|[0x8000373c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                       |[0x800007c8]:fsqrt.s fa1, fa0, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsw fa1, 568(a5)<br>    |
|  73|[0x80003744]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0000ff and rm_val == 0  #nosat<br>                                                                       |[0x800007e0]:fsqrt.s fa1, fa0, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsw fa1, 576(a5)<br>    |
|  74|[0x8000374c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                       |[0x800007f8]:fsqrt.s fa1, fa0, dyn<br> [0x800007fc]:csrrs a7, fflags, zero<br> [0x80000800]:fsw fa1, 584(a5)<br>    |
|  75|[0x80003754]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0001ff and rm_val == 0  #nosat<br>                                                                       |[0x80000810]:fsqrt.s fa1, fa0, dyn<br> [0x80000814]:csrrs a7, fflags, zero<br> [0x80000818]:fsw fa1, 592(a5)<br>    |
|  76|[0x8000375c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80000828]:fsqrt.s fa1, fa0, dyn<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:fsw fa1, 600(a5)<br>    |
|  77|[0x80003764]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0003ff and rm_val == 0  #nosat<br>                                                                       |[0x80000840]:fsqrt.s fa1, fa0, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa1, 608(a5)<br>    |
|  78|[0x8000376c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80000858]:fsqrt.s fa1, fa0, dyn<br> [0x8000085c]:csrrs a7, fflags, zero<br> [0x80000860]:fsw fa1, 616(a5)<br>    |
|  79|[0x80003774]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0007ff and rm_val == 0  #nosat<br>                                                                       |[0x80000870]:fsqrt.s fa1, fa0, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsw fa1, 624(a5)<br>    |
|  80|[0x8000377c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                       |[0x80000888]:fsqrt.s fa1, fa0, dyn<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:fsw fa1, 632(a5)<br>    |
|  81|[0x80003784]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000fff and rm_val == 0  #nosat<br>                                                                       |[0x800008a0]:fsqrt.s fa1, fa0, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsw fa1, 640(a5)<br>    |
|  82|[0x8000378c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                       |[0x800008b8]:fsqrt.s fa1, fa0, dyn<br> [0x800008bc]:csrrs a7, fflags, zero<br> [0x800008c0]:fsw fa1, 648(a5)<br>    |
|  83|[0x80003794]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001fff and rm_val == 0  #nosat<br>                                                                       |[0x800008d0]:fsqrt.s fa1, fa0, dyn<br> [0x800008d4]:csrrs a7, fflags, zero<br> [0x800008d8]:fsw fa1, 656(a5)<br>    |
|  84|[0x8000379c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                       |[0x800008e8]:fsqrt.s fa1, fa0, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa1, 664(a5)<br>    |
|  85|[0x800037a4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x003fff and rm_val == 0  #nosat<br>                                                                       |[0x80000900]:fsqrt.s fa1, fa0, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsw fa1, 672(a5)<br>    |
|  86|[0x800037ac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                       |[0x80000918]:fsqrt.s fa1, fa0, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsw fa1, 680(a5)<br>    |
|  87|[0x800037b4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x007fff and rm_val == 0  #nosat<br>                                                                       |[0x80000930]:fsqrt.s fa1, fa0, dyn<br> [0x80000934]:csrrs a7, fflags, zero<br> [0x80000938]:fsw fa1, 688(a5)<br>    |
|  88|[0x800037bc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                       |[0x80000948]:fsqrt.s fa1, fa0, dyn<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:fsw fa1, 696(a5)<br>    |
|  89|[0x800037c4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000960]:fsqrt.s fa1, fa0, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsw fa1, 704(a5)<br>    |
|  90|[0x800037cc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000978]:fsqrt.s fa1, fa0, dyn<br> [0x8000097c]:csrrs a7, fflags, zero<br> [0x80000980]:fsw fa1, 712(a5)<br>    |
|  91|[0x800037d4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x01ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000990]:fsqrt.s fa1, fa0, dyn<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:fsw fa1, 720(a5)<br>    |
|  92|[0x800037dc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                       |[0x800009a8]:fsqrt.s fa1, fa0, dyn<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:fsw fa1, 728(a5)<br>    |
|  93|[0x800037e4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x03ffff and rm_val == 0  #nosat<br>                                                                       |[0x800009c0]:fsqrt.s fa1, fa0, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsw fa1, 736(a5)<br>    |
|  94|[0x800037ec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                       |[0x800009d8]:fsqrt.s fa1, fa0, dyn<br> [0x800009dc]:csrrs a7, fflags, zero<br> [0x800009e0]:fsw fa1, 744(a5)<br>    |
|  95|[0x800037f4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x07ffff and rm_val == 0  #nosat<br>                                                                       |[0x800009f0]:fsqrt.s fa1, fa0, dyn<br> [0x800009f4]:csrrs a7, fflags, zero<br> [0x800009f8]:fsw fa1, 752(a5)<br>    |
|  96|[0x800037fc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x780000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a08]:fsqrt.s fa1, fa0, dyn<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:fsw fa1, 760(a5)<br>    |
|  97|[0x80003804]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000a20]:fsqrt.s fa1, fa0, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsw fa1, 768(a5)<br>    |
|  98|[0x8000380c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x700000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a38]:fsqrt.s fa1, fa0, dyn<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:fsw fa1, 776(a5)<br>    |
|  99|[0x80003814]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x1fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000a50]:fsqrt.s fa1, fa0, dyn<br> [0x80000a54]:csrrs a7, fflags, zero<br> [0x80000a58]:fsw fa1, 784(a5)<br>    |
| 100|[0x8000381c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x600000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a68]:fsqrt.s fa1, fa0, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsw fa1, 792(a5)<br>    |
| 101|[0x80003824]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x3fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000a80]:fsqrt.s fa1, fa0, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsw fa1, 800(a5)<br>    |
| 102|[0x8000382c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x400000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a98]:fsqrt.s fa1, fa0, dyn<br> [0x80000a9c]:csrrs a7, fflags, zero<br> [0x80000aa0]:fsw fa1, 808(a5)<br>    |
| 103|[0x80003834]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000ab0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ab4]:csrrs a7, fflags, zero<br> [0x80000ab8]:fsw fa1, 816(a5)<br>    |
| 104|[0x8000383c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat<br>                                                                       |[0x80000ac8]:fsqrt.s fa1, fa0, dyn<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:fsw fa1, 824(a5)<br>    |
| 105|[0x80003844]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                       |[0x80000ae0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsw fa1, 832(a5)<br>    |
| 106|[0x8000384c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and rm_val == 0  #nosat<br>                                                                       |[0x80000af8]:fsqrt.s fa1, fa0, dyn<br> [0x80000afc]:csrrs a7, fflags, zero<br> [0x80000b00]:fsw fa1, 840(a5)<br>    |
| 107|[0x80003854]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                       |[0x80000b10]:fsqrt.s fa1, fa0, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsw fa1, 848(a5)<br>    |
| 108|[0x8000385c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and rm_val == 0  #nosat<br>                                                                       |[0x80000b28]:fsqrt.s fa1, fa0, dyn<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:fsw fa1, 856(a5)<br>    |
| 109|[0x80003864]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80000b40]:fsqrt.s fa1, fa0, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsw fa1, 864(a5)<br>    |
| 110|[0x8000386c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and rm_val == 0  #nosat<br>                                                                       |[0x80000b58]:fsqrt.s fa1, fa0, dyn<br> [0x80000b5c]:csrrs a7, fflags, zero<br> [0x80000b60]:fsw fa1, 872(a5)<br>    |
| 111|[0x80003874]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80000b70]:fsqrt.s fa1, fa0, dyn<br> [0x80000b74]:csrrs a7, fflags, zero<br> [0x80000b78]:fsw fa1, 880(a5)<br>    |
| 112|[0x8000387c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and rm_val == 0  #nosat<br>                                                                       |[0x80000b88]:fsqrt.s fa1, fa0, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa1, 888(a5)<br>    |
| 113|[0x80003884]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80000ba0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsw fa1, 896(a5)<br>    |
| 114|[0x8000388c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and rm_val == 0  #nosat<br>                                                                       |[0x80000bb8]:fsqrt.s fa1, fa0, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsw fa1, 904(a5)<br>    |
| 115|[0x80003894]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80000bd0]:fsqrt.s fa1, fa0, dyn<br> [0x80000bd4]:csrrs a7, fflags, zero<br> [0x80000bd8]:fsw fa1, 912(a5)<br>    |
| 116|[0x8000389c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and rm_val == 0  #nosat<br>                                                                       |[0x80000be8]:fsqrt.s fa1, fa0, dyn<br> [0x80000bec]:csrrs a7, fflags, zero<br> [0x80000bf0]:fsw fa1, 920(a5)<br>    |
| 117|[0x800038a4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                       |[0x80000c00]:fsqrt.s fa1, fa0, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsw fa1, 928(a5)<br>    |
| 118|[0x800038ac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and rm_val == 0  #nosat<br>                                                                       |[0x80000c18]:fsqrt.s fa1, fa0, dyn<br> [0x80000c1c]:csrrs a7, fflags, zero<br> [0x80000c20]:fsw fa1, 936(a5)<br>    |
| 119|[0x800038b4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                       |[0x80000c30]:fsqrt.s fa1, fa0, dyn<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:fsw fa1, 944(a5)<br>    |
| 120|[0x800038bc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and rm_val == 0  #nosat<br>                                                                       |[0x80000c48]:fsqrt.s fa1, fa0, dyn<br> [0x80000c4c]:csrrs a7, fflags, zero<br> [0x80000c50]:fsw fa1, 952(a5)<br>    |
| 121|[0x800038c4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80000c60]:fsqrt.s fa1, fa0, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsw fa1, 960(a5)<br>    |
| 122|[0x800038cc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and rm_val == 0  #nosat<br>                                                                       |[0x80000c78]:fsqrt.s fa1, fa0, dyn<br> [0x80000c7c]:csrrs a7, fflags, zero<br> [0x80000c80]:fsw fa1, 968(a5)<br>    |
| 123|[0x800038d4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80000c90]:fsqrt.s fa1, fa0, dyn<br> [0x80000c94]:csrrs a7, fflags, zero<br> [0x80000c98]:fsw fa1, 976(a5)<br>    |
| 124|[0x800038dc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and rm_val == 0  #nosat<br>                                                                       |[0x80000ca8]:fsqrt.s fa1, fa0, dyn<br> [0x80000cac]:csrrs a7, fflags, zero<br> [0x80000cb0]:fsw fa1, 984(a5)<br>    |
| 125|[0x800038e4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                       |[0x80000cc0]:fsqrt.s fa1, fa0, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsw fa1, 992(a5)<br>    |
| 126|[0x800038ec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and rm_val == 0  #nosat<br>                                                                       |[0x80000cd8]:fsqrt.s fa1, fa0, dyn<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:fsw fa1, 1000(a5)<br>   |
| 127|[0x800038f4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                       |[0x80000cf0]:fsqrt.s fa1, fa0, dyn<br> [0x80000cf4]:csrrs a7, fflags, zero<br> [0x80000cf8]:fsw fa1, 1008(a5)<br>   |
| 128|[0x800038fc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and rm_val == 0  #nosat<br>                                                                       |[0x80000d08]:fsqrt.s fa1, fa0, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsw fa1, 1016(a5)<br>   |
| 129|[0x80003904]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d20]:fsqrt.s fa1, fa0, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsw fa1, 1024(a5)<br>   |
| 130|[0x8000390c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and rm_val == 0  #nosat<br>                                                                       |[0x80000d38]:fsqrt.s fa1, fa0, dyn<br> [0x80000d3c]:csrrs a7, fflags, zero<br> [0x80000d40]:fsw fa1, 1032(a5)<br>   |
| 131|[0x80003914]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d50]:fsqrt.s fa1, fa0, dyn<br> [0x80000d54]:csrrs a7, fflags, zero<br> [0x80000d58]:fsw fa1, 1040(a5)<br>   |
| 132|[0x8000391c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and rm_val == 0  #nosat<br>                                                                       |[0x80000d68]:fsqrt.s fa1, fa0, dyn<br> [0x80000d6c]:csrrs a7, fflags, zero<br> [0x80000d70]:fsw fa1, 1048(a5)<br>   |
| 133|[0x80003924]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d80]:fsqrt.s fa1, fa0, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsw fa1, 1056(a5)<br>   |
| 134|[0x8000392c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000d98]:fsqrt.s fa1, fa0, dyn<br> [0x80000d9c]:csrrs a7, fflags, zero<br> [0x80000da0]:fsw fa1, 1064(a5)<br>   |
| 135|[0x80003934]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000db0]:fsqrt.s fa1, fa0, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsw fa1, 1072(a5)<br>   |
| 136|[0x8000393c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000dc8]:fsqrt.s fa1, fa0, dyn<br> [0x80000dcc]:csrrs a7, fflags, zero<br> [0x80000dd0]:fsw fa1, 1080(a5)<br>   |
| 137|[0x80003944]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000de0]:fsqrt.s fa1, fa0, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsw fa1, 1088(a5)<br>   |
| 138|[0x8000394c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000df8]:fsqrt.s fa1, fa0, dyn<br> [0x80000dfc]:csrrs a7, fflags, zero<br> [0x80000e00]:fsw fa1, 1096(a5)<br>   |
| 139|[0x80003954]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000e10]:fsqrt.s fa1, fa0, dyn<br> [0x80000e14]:csrrs a7, fflags, zero<br> [0x80000e18]:fsw fa1, 1104(a5)<br>   |
| 140|[0x8000395c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and rm_val == 0  #nosat<br>                                                                       |[0x80000e28]:fsqrt.s fa1, fa0, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa1, 1112(a5)<br>   |
| 141|[0x80003964]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and rm_val == 0  #nosat<br>                                                                       |[0x80000e40]:fsqrt.s fa1, fa0, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsw fa1, 1120(a5)<br>   |
| 142|[0x8000396c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000e58]:fsqrt.s fa1, fa0, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsw fa1, 1128(a5)<br>   |
| 143|[0x80003974]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and rm_val == 0  #nosat<br>                                                                       |[0x80000e70]:fsqrt.s fa1, fa0, dyn<br> [0x80000e74]:csrrs a7, fflags, zero<br> [0x80000e78]:fsw fa1, 1136(a5)<br>   |
| 144|[0x8000397c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000e88]:fsqrt.s fa1, fa0, dyn<br> [0x80000e8c]:csrrs a7, fflags, zero<br> [0x80000e90]:fsw fa1, 1144(a5)<br>   |
| 145|[0x80003984]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ea0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ea4]:csrrs a7, fflags, zero<br> [0x80000ea8]:fsw fa1, 1152(a5)<br>   |
| 146|[0x8000398c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000eb8]:fsqrt.s fa1, fa0, dyn<br> [0x80000ebc]:csrrs a7, fflags, zero<br> [0x80000ec0]:fsw fa1, 1160(a5)<br>   |
| 147|[0x80003994]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ed0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:fsw fa1, 1168(a5)<br>   |
| 148|[0x8000399c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                                                                       |[0x80000ee8]:fsqrt.s fa1, fa0, dyn<br> [0x80000eec]:csrrs a7, fflags, zero<br> [0x80000ef0]:fsw fa1, 1176(a5)<br>   |
| 149|[0x800039a4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000001 and rm_val == 0  #nosat<br>                                                                       |[0x80000f00]:fsqrt.s fa1, fa0, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsw fa1, 1184(a5)<br>   |
| 150|[0x800039ac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000f18]:fsqrt.s fa1, fa0, dyn<br> [0x80000f1c]:csrrs a7, fflags, zero<br> [0x80000f20]:fsw fa1, 1192(a5)<br>   |
| 151|[0x800039b4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                       |[0x80000f30]:fsqrt.s fa1, fa0, dyn<br> [0x80000f34]:csrrs a7, fflags, zero<br> [0x80000f38]:fsw fa1, 1200(a5)<br>   |
| 152|[0x800039bc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000003 and rm_val == 0  #nosat<br>                                                                       |[0x80000f48]:fsqrt.s fa1, fa0, dyn<br> [0x80000f4c]:csrrs a7, fflags, zero<br> [0x80000f50]:fsw fa1, 1208(a5)<br>   |
| 153|[0x800039c4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                       |[0x80000f60]:fsqrt.s fa1, fa0, dyn<br> [0x80000f64]:csrrs a7, fflags, zero<br> [0x80000f68]:fsw fa1, 1216(a5)<br>   |
| 154|[0x800039cc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000007 and rm_val == 0  #nosat<br>                                                                       |[0x80000f78]:fsqrt.s fa1, fa0, dyn<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:fsw fa1, 1224(a5)<br>   |
| 155|[0x800039d4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80000f90]:fsqrt.s fa1, fa0, dyn<br> [0x80000f94]:csrrs a7, fflags, zero<br> [0x80000f98]:fsw fa1, 1232(a5)<br>   |
| 156|[0x800039dc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00000f and rm_val == 0  #nosat<br>                                                                       |[0x80000fa8]:fsqrt.s fa1, fa0, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsw fa1, 1240(a5)<br>   |
| 157|[0x800039e4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80000fc0]:fsqrt.s fa1, fa0, dyn<br> [0x80000fc4]:csrrs a7, fflags, zero<br> [0x80000fc8]:fsw fa1, 1248(a5)<br>   |
| 158|[0x800039ec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00001f and rm_val == 0  #nosat<br>                                                                       |[0x80000fd8]:fsqrt.s fa1, fa0, dyn<br> [0x80000fdc]:csrrs a7, fflags, zero<br> [0x80000fe0]:fsw fa1, 1256(a5)<br>   |
| 159|[0x800039f4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80000ff0]:fsqrt.s fa1, fa0, dyn<br> [0x80000ff4]:csrrs a7, fflags, zero<br> [0x80000ff8]:fsw fa1, 1264(a5)<br>   |
| 160|[0x800039fc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00003f and rm_val == 0  #nosat<br>                                                                       |[0x80001008]:fsqrt.s fa1, fa0, dyn<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:fsw fa1, 1272(a5)<br>   |
| 161|[0x80003a04]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80001020]:fsqrt.s fa1, fa0, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsw fa1, 1280(a5)<br>   |
| 162|[0x80003a0c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00007f and rm_val == 0  #nosat<br>                                                                       |[0x80001038]:fsqrt.s fa1, fa0, dyn<br> [0x8000103c]:csrrs a7, fflags, zero<br> [0x80001040]:fsw fa1, 1288(a5)<br>   |
| 163|[0x80003a14]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                       |[0x80001050]:fsqrt.s fa1, fa0, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsw fa1, 1296(a5)<br>   |
| 164|[0x80003a1c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0000ff and rm_val == 0  #nosat<br>                                                                       |[0x80001068]:fsqrt.s fa1, fa0, dyn<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:fsw fa1, 1304(a5)<br>   |
| 165|[0x80003a24]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                       |[0x80001080]:fsqrt.s fa1, fa0, dyn<br> [0x80001084]:csrrs a7, fflags, zero<br> [0x80001088]:fsw fa1, 1312(a5)<br>   |
| 166|[0x80003a2c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0001ff and rm_val == 0  #nosat<br>                                                                       |[0x80001098]:fsqrt.s fa1, fa0, dyn<br> [0x8000109c]:csrrs a7, fflags, zero<br> [0x800010a0]:fsw fa1, 1320(a5)<br>   |
| 167|[0x80003a34]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                       |[0x800010b0]:fsqrt.s fa1, fa0, dyn<br> [0x800010b4]:csrrs a7, fflags, zero<br> [0x800010b8]:fsw fa1, 1328(a5)<br>   |
| 168|[0x80003a3c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0003ff and rm_val == 0  #nosat<br>                                                                       |[0x800010c8]:fsqrt.s fa1, fa0, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa1, 1336(a5)<br>   |
| 169|[0x80003a44]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                       |[0x800010e0]:fsqrt.s fa1, fa0, dyn<br> [0x800010e4]:csrrs a7, fflags, zero<br> [0x800010e8]:fsw fa1, 1344(a5)<br>   |
| 170|[0x80003a4c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0007ff and rm_val == 0  #nosat<br>                                                                       |[0x800010f8]:fsqrt.s fa1, fa0, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsw fa1, 1352(a5)<br>   |
| 171|[0x80003a54]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                       |[0x80001110]:fsqrt.s fa1, fa0, dyn<br> [0x80001114]:csrrs a7, fflags, zero<br> [0x80001118]:fsw fa1, 1360(a5)<br>   |
| 172|[0x80003a5c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000fff and rm_val == 0  #nosat<br>                                                                       |[0x80001128]:fsqrt.s fa1, fa0, dyn<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:fsw fa1, 1368(a5)<br>   |
| 173|[0x80003a64]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                       |[0x80001140]:fsqrt.s fa1, fa0, dyn<br> [0x80001144]:csrrs a7, fflags, zero<br> [0x80001148]:fsw fa1, 1376(a5)<br>   |
| 174|[0x80003a6c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x001fff and rm_val == 0  #nosat<br>                                                                       |[0x80001158]:fsqrt.s fa1, fa0, dyn<br> [0x8000115c]:csrrs a7, fflags, zero<br> [0x80001160]:fsw fa1, 1384(a5)<br>   |
| 175|[0x80003a74]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                       |[0x80001170]:fsqrt.s fa1, fa0, dyn<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:fsw fa1, 1392(a5)<br>   |
| 176|[0x80003a7c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x003fff and rm_val == 0  #nosat<br>                                                                       |[0x80001188]:fsqrt.s fa1, fa0, dyn<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:fsw fa1, 1400(a5)<br>   |
| 177|[0x80003a84]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                       |[0x800011a0]:fsqrt.s fa1, fa0, dyn<br> [0x800011a4]:csrrs a7, fflags, zero<br> [0x800011a8]:fsw fa1, 1408(a5)<br>   |
| 178|[0x80003a8c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x007fff and rm_val == 0  #nosat<br>                                                                       |[0x800011b8]:fsqrt.s fa1, fa0, dyn<br> [0x800011bc]:csrrs a7, fflags, zero<br> [0x800011c0]:fsw fa1, 1416(a5)<br>   |
| 179|[0x80003a94]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                       |[0x800011d0]:fsqrt.s fa1, fa0, dyn<br> [0x800011d4]:csrrs a7, fflags, zero<br> [0x800011d8]:fsw fa1, 1424(a5)<br>   |
| 180|[0x80003a9c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00ffff and rm_val == 0  #nosat<br>                                                                       |[0x800011e8]:fsqrt.s fa1, fa0, dyn<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:fsw fa1, 1432(a5)<br>   |
| 181|[0x80003aa4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001200]:fsqrt.s fa1, fa0, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsw fa1, 1440(a5)<br>   |
| 182|[0x80003aac]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x01ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001218]:fsqrt.s fa1, fa0, dyn<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:fsw fa1, 1448(a5)<br>   |
| 183|[0x80003ab4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001230]:fsqrt.s fa1, fa0, dyn<br> [0x80001234]:csrrs a7, fflags, zero<br> [0x80001238]:fsw fa1, 1456(a5)<br>   |
| 184|[0x80003abc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x03ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001248]:fsqrt.s fa1, fa0, dyn<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:fsw fa1, 1464(a5)<br>   |
| 185|[0x80003ac4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001260]:fsqrt.s fa1, fa0, dyn<br> [0x80001264]:csrrs a7, fflags, zero<br> [0x80001268]:fsw fa1, 1472(a5)<br>   |
| 186|[0x80003acc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x07ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001278]:fsqrt.s fa1, fa0, dyn<br> [0x8000127c]:csrrs a7, fflags, zero<br> [0x80001280]:fsw fa1, 1480(a5)<br>   |
| 187|[0x80003ad4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x780000 and rm_val == 0  #nosat<br>                                                                       |[0x80001290]:fsqrt.s fa1, fa0, dyn<br> [0x80001294]:csrrs a7, fflags, zero<br> [0x80001298]:fsw fa1, 1488(a5)<br>   |
| 188|[0x80003adc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0fffff and rm_val == 0  #nosat<br>                                                                       |[0x800012a8]:fsqrt.s fa1, fa0, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsw fa1, 1496(a5)<br>   |
| 189|[0x80003ae4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x700000 and rm_val == 0  #nosat<br>                                                                       |[0x800012c0]:fsqrt.s fa1, fa0, dyn<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:fsw fa1, 1504(a5)<br>   |
| 190|[0x80003aec]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x1fffff and rm_val == 0  #nosat<br>                                                                       |[0x800012d8]:fsqrt.s fa1, fa0, dyn<br> [0x800012dc]:csrrs a7, fflags, zero<br> [0x800012e0]:fsw fa1, 1512(a5)<br>   |
| 191|[0x80003af4]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat<br>                                                                       |[0x800012f0]:fsqrt.s fa1, fa0, dyn<br> [0x800012f4]:csrrs a7, fflags, zero<br> [0x800012f8]:fsw fa1, 1520(a5)<br>   |
| 192|[0x80003afc]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x3fffff and rm_val == 0  #nosat<br>                                                                       |[0x80001308]:fsqrt.s fa1, fa0, dyn<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:fsw fa1, 1528(a5)<br>   |
| 193|[0x80003b04]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat<br>                                                                       |[0x80001320]:fsqrt.s fa1, fa0, dyn<br> [0x80001324]:csrrs a7, fflags, zero<br> [0x80001328]:fsw fa1, 1536(a5)<br>   |
| 194|[0x80003b0c]<br>0xAB7FBB6F|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                                                                       |[0x80001338]:fsqrt.s fa1, fa0, dyn<br> [0x8000133c]:csrrs a7, fflags, zero<br> [0x80001340]:fsw fa1, 1544(a5)<br>   |
