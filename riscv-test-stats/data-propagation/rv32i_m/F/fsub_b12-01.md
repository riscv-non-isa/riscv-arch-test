
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800006d0')]      |
| SIG_REGION                | [('0x80002304', '0x800024a4', '104 words')]      |
| COV_LABELS                | fsub_b12      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsub_b12-01.S/ref.S    |
| Total Number of coverpoints| 158     |
| Total Coverpoints Hit     | 152      |
| Total Signature Updates   | 104      |
| STAT1                     | 52      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 52     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsub.s', 'rs1 : f8', 'rs2 : f8', 'rd : f8', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000124]:fsub.s fs0, fs0, fs0, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw fs0, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x80002308]:0x00000000




Last Coverpoint : ['rs1 : f10', 'rs2 : f2', 'rd : f10', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x578fb8 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4fc538 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000140]:fsub.s fa0, fa0, ft2, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw fa0, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80002310]:0x00000000




Last Coverpoint : ['rs1 : f20', 'rs2 : f14', 'rd : f24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1b5ad7 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x5f1313 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000015c]:fsub.s fs8, fs4, fa4, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw fs8, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x80002318]:0x00000001




Last Coverpoint : ['rs1 : f25', 'rs2 : f21', 'rd : f21', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2a257f and fs2 == 0 and fe2 == 0xfb and fm2 == 0x5fc232 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000178]:fsub.s fs5, fs9, fs5, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw fs5, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x80002320]:0x00000001




Last Coverpoint : ['rs1 : f31', 'rs2 : f31', 'rd : f25', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000194]:fsub.s fs9, ft11, ft11, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw fs9, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x80002328]:0x00000001




Last Coverpoint : ['rs1 : f19', 'rs2 : f7', 'rd : f6', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x37c42d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x36ab8f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fsub.s ft6, fs3, ft7, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft6, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x80002330]:0x00000001




Last Coverpoint : ['rs1 : f15', 'rs2 : f16', 'rd : f9', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x4ece7f and fs2 == 1 and fe2 == 0xfc and fm2 == 0x560df4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fsub.s fs1, fa5, fa6, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw fs1, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x80002338]:0x00000001




Last Coverpoint : ['rs1 : f11', 'rs2 : f10', 'rd : f16', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x5ddf89 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x364437 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fsub.s fa6, fa1, fa0, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw fa6, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x80002340]:0x00000001




Last Coverpoint : ['rs1 : f6', 'rs2 : f25', 'rd : f30', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4549ce and fs2 == 1 and fe2 == 0xfd and fm2 == 0x28758a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fsub.s ft10, ft6, fs9, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw ft10, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80002348]:0x00000001




Last Coverpoint : ['rs1 : f0', 'rs2 : f29', 'rd : f19', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x252cf6 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x713214 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000220]:fsub.s fs3, ft0, ft9, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw fs3, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x80002350]:0x00000001




Last Coverpoint : ['rs1 : f7', 'rs2 : f30', 'rd : f11', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x13f0c0 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x3155e7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fsub.s fa1, ft7, ft10, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw fa1, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x80002358]:0x00000001




Last Coverpoint : ['rs1 : f26', 'rs2 : f28', 'rd : f0', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x40dc0e and fs2 == 1 and fe2 == 0xfd and fm2 == 0x384200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fsub.s ft0, fs10, ft8, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft0, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x80002360]:0x00000001




Last Coverpoint : ['rs1 : f24', 'rs2 : f12', 'rd : f17', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x17246c and fs2 == 0 and fe2 == 0xfc and fm2 == 0x2b74d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000274]:fsub.s fa7, fs8, fa2, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw fa7, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x80002368]:0x00000001




Last Coverpoint : ['rs1 : f17', 'rs2 : f0', 'rd : f23', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cc5a4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x15c2f3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000290]:fsub.s fs7, fa7, ft0, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw fs7, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x80002370]:0x00000001




Last Coverpoint : ['rs1 : f3', 'rs2 : f19', 'rd : f20', 'fs1 == 0 and fe1 == 0xfa and fm1 == 0x0597cb and fs2 == 1 and fe2 == 0xfd and fm2 == 0x7d664b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fsub.s fs4, ft3, fs3, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw fs4, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x80002378]:0x00000001




Last Coverpoint : ['rs1 : f23', 'rs2 : f17', 'rd : f31', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c0ad4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x30af7e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fsub.s ft11, fs7, fa7, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw ft11, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x80002380]:0x00000001




Last Coverpoint : ['rs1 : f29', 'rs2 : f4', 'rd : f7', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x480a54 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x441f1f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fsub.s ft7, ft9, ft4, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw ft7, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x80002388]:0x00000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f13', 'rd : f4', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x433c5b and fs2 == 1 and fe2 == 0xfc and fm2 == 0x4f5f54 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fsub.s ft4, ft8, fa3, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft4, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x80002390]:0x00000001




Last Coverpoint : ['rs1 : f1', 'rs2 : f26', 'rd : f22', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x0fe2cd and fs2 == 1 and fe2 == 0xfa and fm2 == 0x456706 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fsub.s fs6, ft1, fs10, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw fs6, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x80002398]:0x00000001




Last Coverpoint : ['rs1 : f13', 'rs2 : f3', 'rd : f2', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x06fbdb and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x2f7105 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fsub.s ft2, fa3, ft3, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw ft2, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x800023a0]:0x00000001




Last Coverpoint : ['rs1 : f2', 'rs2 : f11', 'rd : f18', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x04dea3 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x104dca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fsub.s fs2, ft2, fa1, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw fs2, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x800023a8]:0x00000001




Last Coverpoint : ['rs1 : f22', 'rs2 : f18', 'rd : f3', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x191a03 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x131b4d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000370]:fsub.s ft3, fs6, fs2, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw ft3, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x800023b0]:0x00000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f1', 'rd : f14', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x54206e and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1fe890 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fsub.s fa4, fs1, ft1, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw fa4, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x800023b8]:0x00000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f23', 'rd : f5', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x42076b and fs2 == 1 and fe2 == 0xfb and fm2 == 0x00976d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fsub.s ft5, fs5, fs7, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft5, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x800023c0]:0x00000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f5', 'rd : f26', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x296f9b and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x5ee9fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fsub.s fs10, ft10, ft5, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw fs10, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x800023c8]:0x00000001




Last Coverpoint : ['rs1 : f12', 'rs2 : f15', 'rd : f1', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x68fcac and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5a465e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fsub.s ft1, fa2, fa5, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw ft1, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x800023d0]:0x00000001




Last Coverpoint : ['rs1 : f14', 'rs2 : f24', 'rd : f15', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1f5de9 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x755870 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fsub.s fa5, fa4, fs8, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fa5, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x800023d8]:0x00000001




Last Coverpoint : ['rs1 : f27', 'rs2 : f22', 'rd : f12', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x33cbed and fs2 == 0 and fe2 == 0xfd and fm2 == 0x45810c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fsub.s fa2, fs11, fs6, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fa2, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x800023e0]:0x00000001




Last Coverpoint : ['rs1 : f4', 'rs2 : f9', 'rd : f29', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0a8666 and fs2 == 0 and fe2 == 0xf7 and fm2 == 0x7cf3ad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000434]:fsub.s ft9, ft4, fs1, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw ft9, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x800023e8]:0x00000001




Last Coverpoint : ['rs1 : f5', 'rs2 : f6', 'rd : f27', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x39afdd and fs2 == 1 and fe2 == 0xfc and fm2 == 0x22aa99 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fsub.s fs11, ft5, ft6, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw fs11, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x800023f0]:0x00000001




Last Coverpoint : ['rs1 : f16', 'rs2 : f27', 'rd : f28', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3e917d and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4bab36 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fsub.s ft8, fa6, fs11, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw ft8, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x800023f8]:0x00000001




Last Coverpoint : ['rs1 : f18', 'rs2 : f20', 'rd : f13', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x76a41a and fs2 == 0 and fe2 == 0xfd and fm2 == 0x2f40c6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fsub.s fa3, fs2, fs4, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fa3, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x80002400]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x20d0a1 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x57e728 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x80002408]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x5e8d61 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x4e0c55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x280619 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x38f39d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x80002418]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x330244 and fs2 == 0 and fe2 == 0xf5 and fm2 == 0x5a077f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x80002420]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x282619 and fs2 == 1 and fe2 == 0xfa and fm2 == 0x31f1cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000514]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x326d35 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x13f4b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000530]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x80002430]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x26592c and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1dd651 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x80002438]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x34510e and fs2 == 0 and fe2 == 0xfd and fm2 == 0x564037 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x1c56e0 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x462194 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x80002448]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2d12f5 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x273366 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x80002450]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2fb07b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0991d2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2b0757 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5415da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x80002460]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x125b96 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x11f412 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x80002468]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x207786 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x1ac051 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x102b16 and fs2 == 0 and fe2 == 0xfa and fm2 == 0x4940d1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x80002478]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a3631 and fs2 == 1 and fe2 == 0xfb and fm2 == 0x52a1db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x80002480]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3e3f3f and fs2 == 0 and fe2 == 0xfa and fm2 == 0x0d23d9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000664]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x12a50c and fs2 == 0 and fe2 == 0xfd and fm2 == 0x4357ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x80002490]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x08e8ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x80002498]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x167638 and fs2 == 1 and fe2 == 0xf9 and fm2 == 0x6249a5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x800024a0]:0x00000001





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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                                          code                                                          |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002304]<br>0x5BFDDB7D|- opcode : fsub.s<br> - rs1 : f8<br> - rs2 : f8<br> - rd : f8<br> - rs1 == rs2 == rd<br>                                                                                                                                 |[0x80000124]:fsub.s fs0, fs0, fs0, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw fs0, 0(a5)<br>      |
|   2|[0x8000230c]<br>0x56FF76DF|- rs1 : f10<br> - rs2 : f2<br> - rd : f10<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x578fb8 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4fc538 and rm_val == 0  #nosat<br>                         |[0x80000140]:fsub.s fa0, fa0, ft2, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw fa0, 8(a5)<br>      |
|   3|[0x80002314]<br>0xDB7D5BFD|- rs1 : f20<br> - rs2 : f14<br> - rd : f24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1b5ad7 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x5f1313 and rm_val == 0  #nosat<br> |[0x8000015c]:fsub.s fs8, fs4, fa4, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw fs8, 16(a5)<br>     |
|   4|[0x8000231c]<br>0xDBEADFEE|- rs1 : f25<br> - rs2 : f21<br> - rd : f21<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2a257f and fs2 == 0 and fe2 == 0xfb and fm2 == 0x5fc232 and rm_val == 0  #nosat<br>                        |[0x80000178]:fsub.s fs5, fs9, fs5, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw fs5, 24(a5)<br>     |
|   5|[0x80002324]<br>0xEDBEADFE|- rs1 : f31<br> - rs2 : f31<br> - rd : f25<br> - rs1 == rs2 != rd<br>                                                                                                                                                    |[0x80000194]:fsub.s fs9, ft11, ft11, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw fs9, 32(a5)<br>   |
|   6|[0x8000232c]<br>0x80002000|- rs1 : f19<br> - rs2 : f7<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x37c42d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x36ab8f and rm_val == 0  #nosat<br>                                                 |[0x800001b0]:fsub.s ft6, fs3, ft7, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft6, 40(a5)<br>     |
|   7|[0x80002334]<br>0xADFEEDBE|- rs1 : f15<br> - rs2 : f16<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x4ece7f and fs2 == 1 and fe2 == 0xfc and fm2 == 0x560df4 and rm_val == 0  #nosat<br>                                                |[0x800001cc]:fsub.s fs1, fa5, fa6, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw fs1, 48(a5)<br>     |
|   8|[0x8000233c]<br>0x80002004|- rs1 : f11<br> - rs2 : f10<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x5ddf89 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x364437 and rm_val == 0  #nosat<br>                                               |[0x800001e8]:fsub.s fa6, fa1, fa0, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fa6, 56(a5)<br>     |
|   9|[0x80002344]<br>0xF76DF56F|- rs1 : f6<br> - rs2 : f25<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4549ce and fs2 == 1 and fe2 == 0xfd and fm2 == 0x28758a and rm_val == 0  #nosat<br>                                                |[0x80000204]:fsub.s ft10, ft6, fs9, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw ft10, 64(a5)<br>   |
|  10|[0x8000234c]<br>0x6FAB7FBB|- rs1 : f0<br> - rs2 : f29<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x252cf6 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x713214 and rm_val == 0  #nosat<br>                                                |[0x80000220]:fsub.s fs3, ft0, ft9, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fs3, 72(a5)<br>     |
|  11|[0x80002354]<br>0xAB7FBB6F|- rs1 : f7<br> - rs2 : f30<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x13f0c0 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x3155e7 and rm_val == 0  #nosat<br>                                                |[0x8000023c]:fsub.s fa1, ft7, ft10, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw fa1, 80(a5)<br>    |
|  12|[0x8000235c]<br>0x00000000|- rs1 : f26<br> - rs2 : f28<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x40dc0e and fs2 == 1 and fe2 == 0xfd and fm2 == 0x384200 and rm_val == 0  #nosat<br>                                                |[0x80000258]:fsub.s ft0, fs10, ft8, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft0, 88(a5)<br>    |
|  13|[0x80002364]<br>0x00000001|- rs1 : f24<br> - rs2 : f12<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x17246c and fs2 == 0 and fe2 == 0xfc and fm2 == 0x2b74d4 and rm_val == 0  #nosat<br>                                               |[0x80000274]:fsub.s fa7, fs8, fa2, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw fa7, 96(a5)<br>     |
|  14|[0x8000236c]<br>0xB6FAB7FB|- rs1 : f17<br> - rs2 : f0<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cc5a4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x15c2f3 and rm_val == 0  #nosat<br>                                                |[0x80000290]:fsub.s fs7, fa7, ft0, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fs7, 104(a5)<br>    |
|  15|[0x80002374]<br>0xB7D5BFDD|- rs1 : f3<br> - rs2 : f19<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xfa and fm1 == 0x0597cb and fs2 == 1 and fe2 == 0xfd and fm2 == 0x7d664b and rm_val == 0  #nosat<br>                                                |[0x800002ac]:fsub.s fs4, ft3, fs3, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw fs4, 112(a5)<br>    |
|  16|[0x8000237c]<br>0xFBB6FAB7|- rs1 : f23<br> - rs2 : f17<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c0ad4 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x30af7e and rm_val == 0  #nosat<br>                                               |[0x800002c8]:fsub.s ft11, fs7, fa7, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw ft11, 120(a5)<br>  |
|  17|[0x80002384]<br>0xB7FBB6FA|- rs1 : f29<br> - rs2 : f4<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x480a54 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x441f1f and rm_val == 0  #nosat<br>                                                 |[0x800002e4]:fsub.s ft7, ft9, ft4, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw ft7, 128(a5)<br>    |
|  18|[0x8000238c]<br>0xBFDDB7D5|- rs1 : f28<br> - rs2 : f13<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x433c5b and fs2 == 1 and fe2 == 0xfc and fm2 == 0x4f5f54 and rm_val == 0  #nosat<br>                                                |[0x80000300]:fsub.s ft4, ft8, fa3, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft4, 136(a5)<br>    |
|  19|[0x80002394]<br>0x6DF56FF7|- rs1 : f1<br> - rs2 : f26<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x0fe2cd and fs2 == 1 and fe2 == 0xfa and fm2 == 0x456706 and rm_val == 0  #nosat<br>                                                |[0x8000031c]:fsub.s fs6, ft1, fs10, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw fs6, 144(a5)<br>   |
|  20|[0x8000239c]<br>0x00006000|- rs1 : f13<br> - rs2 : f3<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x06fbdb and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x2f7105 and rm_val == 0  #nosat<br>                                                 |[0x80000338]:fsub.s ft2, fa3, ft3, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw ft2, 152(a5)<br>    |
|  21|[0x800023a4]<br>0xDF56FF76|- rs1 : f2<br> - rs2 : f11<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x04dea3 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x104dca and rm_val == 0  #nosat<br>                                                |[0x80000354]:fsub.s fs2, ft2, fa1, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw fs2, 160(a5)<br>    |
|  22|[0x800023ac]<br>0x00000000|- rs1 : f22<br> - rs2 : f18<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x191a03 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x131b4d and rm_val == 0  #nosat<br>                                                |[0x80000370]:fsub.s ft3, fs6, fs2, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw ft3, 168(a5)<br>    |
|  23|[0x800023b4]<br>0xF56FF76D|- rs1 : f9<br> - rs2 : f1<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x54206e and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1fe890 and rm_val == 0  #nosat<br>                                                 |[0x8000038c]:fsub.s fa4, fs1, ft1, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw fa4, 176(a5)<br>    |
|  24|[0x800023bc]<br>0x800000F8|- rs1 : f21<br> - rs2 : f23<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x42076b and fs2 == 1 and fe2 == 0xfb and fm2 == 0x00976d and rm_val == 0  #nosat<br>                                                |[0x800003a8]:fsub.s ft5, fs5, fs7, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft5, 184(a5)<br>    |
|  25|[0x800023c4]<br>0x76DF56FF|- rs1 : f30<br> - rs2 : f5<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x296f9b and fs2 == 0 and fe2 == 0xf9 and fm2 == 0x5ee9fe and rm_val == 0  #nosat<br>                                                |[0x800003c4]:fsub.s fs10, ft10, ft5, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw fs10, 192(a5)<br> |
|  26|[0x800023cc]<br>0xFEEDBEAD|- rs1 : f12<br> - rs2 : f15<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x68fcac and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5a465e and rm_val == 0  #nosat<br>                                                |[0x800003e0]:fsub.s ft1, fa2, fa5, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw ft1, 200(a5)<br>    |
|  27|[0x800023d4]<br>0x80002304|- rs1 : f14<br> - rs2 : f24<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1f5de9 and fs2 == 0 and fe2 == 0xfb and fm2 == 0x755870 and rm_val == 0  #nosat<br>                                               |[0x800003fc]:fsub.s fa5, fa4, fs8, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fa5, 208(a5)<br>    |
|  28|[0x800023dc]<br>0xD5BFDDB7|- rs1 : f27<br> - rs2 : f22<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x33cbed and fs2 == 0 and fe2 == 0xfd and fm2 == 0x45810c and rm_val == 0  #nosat<br>                                               |[0x80000418]:fsub.s fa2, fs11, fs6, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fa2, 216(a5)<br>   |
|  29|[0x800023e4]<br>0xEEDBEADF|- rs1 : f4<br> - rs2 : f9<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0a8666 and fs2 == 0 and fe2 == 0xf7 and fm2 == 0x7cf3ad and rm_val == 0  #nosat<br>                                                 |[0x80000434]:fsub.s ft9, ft4, fs1, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw ft9, 224(a5)<br>    |
|  30|[0x800023ec]<br>0xBB6FAB7F|- rs1 : f5<br> - rs2 : f6<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x39afdd and fs2 == 1 and fe2 == 0xfc and fm2 == 0x22aa99 and rm_val == 0  #nosat<br>                                                 |[0x80000450]:fsub.s fs11, ft5, ft6, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw fs11, 232(a5)<br>  |
|  31|[0x800023f4]<br>0xDDB7D5BF|- rs1 : f16<br> - rs2 : f27<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3e917d and fs2 == 0 and fe2 == 0xfb and fm2 == 0x4bab36 and rm_val == 0  #nosat<br>                                               |[0x8000046c]:fsub.s ft8, fa6, fs11, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw ft8, 240(a5)<br>   |
|  32|[0x800023fc]<br>0xEADFEEDB|- rs1 : f18<br> - rs2 : f20<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x76a41a and fs2 == 0 and fe2 == 0xfd and fm2 == 0x2f40c6 and rm_val == 0  #nosat<br>                                               |[0x80000488]:fsub.s fa3, fs2, fs4, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fa3, 248(a5)<br>    |
|  33|[0x80002404]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x20d0a1 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x57e728 and rm_val == 0  #nosat<br>                                                                                              |[0x800004a4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>    |
|  34|[0x8000240c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x5e8d61 and fs2 == 0 and fe2 == 0xfc and fm2 == 0x4e0c55 and rm_val == 0  #nosat<br>                                                                                              |[0x800004c0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>    |
|  35|[0x80002414]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x280619 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x38f39d and rm_val == 0  #nosat<br>                                                                                              |[0x800004dc]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>    |
|  36|[0x8000241c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x330244 and fs2 == 0 and fe2 == 0xf5 and fm2 == 0x5a077f and rm_val == 0  #nosat<br>                                                                                              |[0x800004f8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>    |
|  37|[0x80002424]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x282619 and fs2 == 1 and fe2 == 0xfa and fm2 == 0x31f1cb and rm_val == 0  #nosat<br>                                                                                              |[0x80000514]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>    |
|  38|[0x8000242c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x326d35 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x13f4b3 and rm_val == 0  #nosat<br>                                                                                              |[0x80000530]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>    |
|  39|[0x80002434]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x26592c and fs2 == 1 and fe2 == 0xfc and fm2 == 0x1dd651 and rm_val == 0  #nosat<br>                                                                                              |[0x8000054c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>    |
|  40|[0x8000243c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x34510e and fs2 == 0 and fe2 == 0xfd and fm2 == 0x564037 and rm_val == 0  #nosat<br>                                                                                              |[0x80000568]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>    |
|  41|[0x80002444]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x1c56e0 and fs2 == 1 and fe2 == 0xfd and fm2 == 0x462194 and rm_val == 0  #nosat<br>                                                                                              |[0x80000584]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>    |
|  42|[0x8000244c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2d12f5 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x273366 and rm_val == 0  #nosat<br>                                                                                              |[0x800005a0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>    |
|  43|[0x80002454]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2fb07b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0991d2 and rm_val == 0  #nosat<br>                                                                                              |[0x800005bc]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>    |
|  44|[0x8000245c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2b0757 and fs2 == 1 and fe2 == 0xfc and fm2 == 0x5415da and rm_val == 0  #nosat<br>                                                                                              |[0x800005d8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>    |
|  45|[0x80002464]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x125b96 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x11f412 and rm_val == 0  #nosat<br>                                                                                              |[0x800005f4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>    |
|  46|[0x8000246c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x207786 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x1ac051 and rm_val == 0  #nosat<br>                                                                                              |[0x80000610]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>    |
|  47|[0x80002474]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x102b16 and fs2 == 0 and fe2 == 0xfa and fm2 == 0x4940d1 and rm_val == 0  #nosat<br>                                                                                              |[0x8000062c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>    |
|  48|[0x8000247c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a3631 and fs2 == 1 and fe2 == 0xfb and fm2 == 0x52a1db and rm_val == 0  #nosat<br>                                                                                              |[0x80000648]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>    |
|  49|[0x80002484]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3e3f3f and fs2 == 0 and fe2 == 0xfa and fm2 == 0x0d23d9 and rm_val == 0  #nosat<br>                                                                                              |[0x80000664]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>    |
|  50|[0x8000248c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x12a50c and fs2 == 0 and fe2 == 0xfd and fm2 == 0x4357ca and rm_val == 0  #nosat<br>                                                                                              |[0x80000680]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>    |
|  51|[0x80002494]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 1 and fe2 == 0xfe and fm2 == 0x08e8ca and rm_val == 0  #nosat<br>                                                                                              |[0x8000069c]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>    |
|  52|[0x8000249c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x167638 and fs2 == 1 and fe2 == 0xf9 and fm2 == 0x6249a5 and rm_val == 0  #nosat<br>                                                                                              |[0x800006b8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>    |
