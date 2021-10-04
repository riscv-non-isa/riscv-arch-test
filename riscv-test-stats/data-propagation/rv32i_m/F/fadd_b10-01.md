
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000970')]      |
| SIG_REGION                | [('0x80002404', '0x80002664', '152 words')]      |
| COV_LABELS                | fadd_b10      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fadd_b10-01.S/ref.S    |
| Total Number of coverpoints| 182     |
| Total Coverpoints Hit     | 176      |
| Total Signature Updates   | 152      |
| STAT1                     | 76      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 76     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fadd.s', 'rs1 : f0', 'rs2 : f0', 'rd : f0', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000124]:fadd.s ft0, ft0, ft0, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw ft0, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x80002408]:0x00000000




Last Coverpoint : ['rs1 : f29', 'rs2 : f18', 'rd : f18', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000140]:fadd.s fs2, ft9, fs2, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw fs2, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80002410]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f4', 'rd : f20', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xf4 and fm2 == 0x150517 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000015c]:fadd.s fs4, fs4, ft4, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw fs4, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x80002418]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f13', 'rd : f7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xf0 and fm2 == 0x6e6e8c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000178]:fadd.s ft7, fs10, fa3, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw ft7, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x80002420]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f5', 'rd : f13', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000194]:fadd.s fa3, ft5, ft5, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw fa3, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x80002428]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f19', 'rd : f28', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xea and fm2 == 0x1898ab and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fadd.s ft8, fa1, fs3, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft8, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x80002430]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f29', 'rd : f27', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe6 and fm2 == 0x742779 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fadd.s fs11, fs2, ft9, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw fs11, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x80002438]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f2', 'rd : f9', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe3 and fm2 == 0x4352c7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fadd.s fs1, fs6, ft2, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw fs1, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x80002440]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f22', 'rd : f31', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe0 and fm2 == 0x1c4239 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fadd.s ft11, ft6, fs6, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw ft11, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80002448]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f21', 'rd : f25', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xdc and fm2 == 0x7a038e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000220]:fadd.s fs9, fa2, fs5, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw fs9, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x80002450]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f23', 'rd : f30', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd9 and fm2 == 0x4802d8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fadd.s ft10, fa6, fs7, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw ft10, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x80002458]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f27', 'rd : f22', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd6 and fm2 == 0x200246 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fadd.s fs6, fa3, fs11, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw fs6, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x80002460]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f6', 'rd : f4', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd3 and fm2 == 0x0001d2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000274]:fadd.s ft4, fs5, ft6, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw ft4, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x80002468]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f24', 'rd : f23', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xcf and fm2 == 0x4ccfb6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000290]:fadd.s fs7, fa5, fs8, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw fs7, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x80002470]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f28', 'rd : f21', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xcc and fm2 == 0x23d95e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fadd.s fs5, fs1, ft8, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw fs5, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x80002478]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f17', 'rd : f24', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc9 and fm2 == 0x03144b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fadd.s fs8, ft2, fa7, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fs8, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x80002480]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f3', 'rd : f29', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc5 and fm2 == 0x51ba13 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fadd.s ft9, fs8, ft3, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw ft9, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x80002488]:0x00000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f25', 'rd : f5', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc2 and fm2 == 0x27c80f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fadd.s ft5, fa0, fs9, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft5, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x80002490]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f15', 'rd : f10', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xbf and fm2 == 0x0639a5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fadd.s fa0, fs11, fa5, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw fa0, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x80002498]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f14', 'rd : f12', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xbb and fm2 == 0x56c2a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fadd.s fa2, fs3, fa4, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw fa2, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x800024a0]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f9', 'rd : f11', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb8 and fm2 == 0x2bcee8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fadd.s fa1, ft1, fs1, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw fa1, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x800024a8]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f1', 'rd : f8', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb5 and fm2 == 0x097253 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000370]:fadd.s fs0, fa4, ft1, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw fs0, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x800024b0]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f8', 'rd : f17', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb1 and fm2 == 0x5bea1f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fadd.s fa7, ft3, fs0, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw fa7, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x800024b8]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f7', 'rd : f1', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xae and fm2 == 0x2fee7f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fadd.s ft1, fa7, ft7, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft1, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x800024c0]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f11', 'rd : f6', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xab and fm2 == 0x0cbecc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fadd.s ft6, ft8, fa1, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw ft6, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x800024c8]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f31', 'rd : f26', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa7 and fm2 == 0x613147 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fadd.s fs10, fs9, ft11, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw fs10, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x800024d0]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f26', 'rd : f16', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa4 and fm2 == 0x34276c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fadd.s fa6, ft11, fs10, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fa6, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x800024d8]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f30', 'rd : f14', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa1 and fm2 == 0x101f89 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fadd.s fa4, fs0, ft10, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fa4, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x800024e0]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f12', 'rd : f2', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x9d and fm2 == 0x6698dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000434]:fadd.s ft2, ft7, fa2, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw ft2, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x800024e8]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f16', 'rd : f19', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x9a and fm2 == 0x387a4a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fadd.s fs3, ft4, fa6, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw fs3, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x800024f0]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f20', 'rd : f3', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x97 and fm2 == 0x139508 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fadd.s ft3, fs7, fs4, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw ft3, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x800024f8]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f10', 'rd : f15', 'fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x93 and fm2 == 0x6c21a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fadd.s fa5, ft10, fa0, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fa5, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x80002500]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x90 and fm2 == 0x3ce7b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fadd.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x80002508]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x8d and fm2 == 0x171fc6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fadd.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x80002510]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x89 and fm2 == 0x71cc71 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fadd.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x80002518]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x86 and fm2 == 0x41705a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fadd.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x80002520]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x83 and fm2 == 0x1ac048 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000514]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x80002528]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x779a0d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000530]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x80002530]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x7c and fm2 == 0x4614d7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x80002538]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x79 and fm2 == 0x1e7712 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x80002540]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x75 and fm2 == 0x7d8b51 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x80002548]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x72 and fm2 == 0x4ad5da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fadd.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x80002550]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x6f and fm2 == 0x2244ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fadd.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x80002558]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x6c and fm2 == 0x01d08b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fadd.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x80002560]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x68 and fm2 == 0x4fb413 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fadd.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x80002568]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x65 and fm2 == 0x2629a8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x80002570]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x62 and fm2 == 0x04ee20 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x80002578]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x5e and fm2 == 0x54b034 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x80002580]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x5b and fm2 == 0x2a2690 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000664]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x80002588]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x58 and fm2 == 0x081ed9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x80002590]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x54 and fm2 == 0x59caf6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fadd.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x80002598]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x51 and fm2 == 0x2e3bf8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fadd.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x800025a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x4e and fm2 == 0x0b632c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d4]:fadd.s fa2, fa0, fa1, dyn
	-[0x800006d8]:csrrs a7, fflags, zero
	-[0x800006dc]:fsw fa2, 416(a5)
Current Store : [0x800006e0] : sw a7, 420(a5) -- Store: [0x800025a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x4a and fm2 == 0x5f0514 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fadd.s fa2, fa0, fa1, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa2, 424(a5)
Current Store : [0x800006fc] : sw a7, 428(a5) -- Store: [0x800025b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x47 and fm2 == 0x326a76 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000070c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000710]:csrrs a7, fflags, zero
	-[0x80000714]:fsw fa2, 432(a5)
Current Store : [0x80000718] : sw a7, 436(a5) -- Store: [0x800025b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x44 and fm2 == 0x0ebb92 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000728]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa2, 440(a5)
Current Store : [0x80000734] : sw a7, 444(a5) -- Store: [0x800025c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x40 and fm2 == 0x645f50 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000744]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000748]:csrrs a7, fflags, zero
	-[0x8000074c]:fsw fa2, 448(a5)
Current Store : [0x80000750] : sw a7, 452(a5) -- Store: [0x800025c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x3d and fm2 == 0x36b2a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsw fa2, 456(a5)
Current Store : [0x8000076c] : sw a7, 460(a5) -- Store: [0x800025d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x3a and fm2 == 0x122885 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000077c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000780]:csrrs a7, fflags, zero
	-[0x80000784]:fsw fa2, 464(a5)
Current Store : [0x80000788] : sw a7, 468(a5) -- Store: [0x800025d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x36 and fm2 == 0x69da6f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000798]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa2, 472(a5)
Current Store : [0x800007a4] : sw a7, 476(a5) -- Store: [0x800025e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x33 and fm2 == 0x3b1525 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b4]:fadd.s fa2, fa0, fa1, dyn
	-[0x800007b8]:csrrs a7, fflags, zero
	-[0x800007bc]:fsw fa2, 480(a5)
Current Store : [0x800007c0] : sw a7, 484(a5) -- Store: [0x800025e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x30 and fm2 == 0x15aa84 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fadd.s fa2, fa0, fa1, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:fsw fa2, 488(a5)
Current Store : [0x800007dc] : sw a7, 492(a5) -- Store: [0x800025f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x2c and fm2 == 0x6f773a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ec]:fadd.s fa2, fa0, fa1, dyn
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsw fa2, 496(a5)
Current Store : [0x800007f8] : sw a7, 500(a5) -- Store: [0x800025f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x29 and fm2 == 0x3f9295 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa2, 504(a5)
Current Store : [0x80000814] : sw a7, 508(a5) -- Store: [0x80002600]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x26 and fm2 == 0x194210 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000824]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000828]:csrrs a7, fflags, zero
	-[0x8000082c]:fsw fa2, 512(a5)
Current Store : [0x80000830] : sw a7, 516(a5) -- Store: [0x80002608]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x22 and fm2 == 0x753681 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa2, 520(a5)
Current Store : [0x8000084c] : sw a7, 524(a5) -- Store: [0x80002610]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x442b9a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000085c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000860]:csrrs a7, fflags, zero
	-[0x80000864]:fsw fa2, 528(a5)
Current Store : [0x80000868] : sw a7, 532(a5) -- Store: [0x80002618]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x1c and fm2 == 0x1cefaf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000878]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:fsw fa2, 536(a5)
Current Store : [0x80000884] : sw a7, 540(a5) -- Store: [0x80002620]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x18 and fm2 == 0x7b1918 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000894]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000898]:csrrs a7, fflags, zero
	-[0x8000089c]:fsw fa2, 544(a5)
Current Store : [0x800008a0] : sw a7, 548(a5) -- Store: [0x80002628]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x15 and fm2 == 0x48e0e0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fadd.s fa2, fa0, fa1, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsw fa2, 552(a5)
Current Store : [0x800008bc] : sw a7, 556(a5) -- Store: [0x80002630]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x12 and fm2 == 0x20b3e6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008cc]:fadd.s fa2, fa0, fa1, dyn
	-[0x800008d0]:csrrs a7, fflags, zero
	-[0x800008d4]:fsw fa2, 560(a5)
Current Store : [0x800008d8] : sw a7, 564(a5) -- Store: [0x80002638]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x008feb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fadd.s fa2, fa0, fa1, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa2, 568(a5)
Current Store : [0x800008f4] : sw a7, 572(a5) -- Store: [0x80002640]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x0b and fm2 == 0x4db312 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000904]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000908]:csrrs a7, fflags, zero
	-[0x8000090c]:fsw fa2, 576(a5)
Current Store : [0x80000910] : sw a7, 580(a5) -- Store: [0x80002648]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x08 and fm2 == 0x248f41 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsw fa2, 584(a5)
Current Store : [0x8000092c] : sw a7, 588(a5) -- Store: [0x80002650]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000093c]:fadd.s fa2, fa0, fa1, dyn
	-[0x80000940]:csrrs a7, fflags, zero
	-[0x80000944]:fsw fa2, 592(a5)
Current Store : [0x80000948] : sw a7, 596(a5) -- Store: [0x80002658]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xed and fm2 == 0x3ebed6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fadd.s fa2, fa0, fa1, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsw fa2, 600(a5)
Current Store : [0x80000964] : sw a7, 604(a5) -- Store: [0x80002660]:0x00000005





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

|s.no|        signature         |                                                                                                      coverpoints                                                                                                       |                                                          code                                                          |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002404]<br>0x00000000|- opcode : fadd.s<br> - rs1 : f0<br> - rs2 : f0<br> - rd : f0<br> - rs1 == rs2 == rd<br>                                                                                                                                |[0x80000124]:fadd.s ft0, ft0, ft0, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw ft0, 0(a5)<br>      |
|   2|[0x8000240c]<br>0xDF56FF76|- rs1 : f29<br> - rs2 : f18<br> - rd : f18<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                       |[0x80000140]:fadd.s fs2, ft9, fs2, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw fs2, 8(a5)<br>      |
|   3|[0x80002414]<br>0xB7D5BFDD|- rs1 : f20<br> - rs2 : f4<br> - rd : f20<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xf4 and fm2 == 0x150517 and rm_val == 0  #nosat<br>                        |[0x8000015c]:fadd.s fs4, fs4, ft4, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw fs4, 16(a5)<br>     |
|   4|[0x8000241c]<br>0xB7FBB6FA|- rs1 : f26<br> - rs2 : f13<br> - rd : f7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xf0 and fm2 == 0x6e6e8c and rm_val == 0  #nosat<br> |[0x80000178]:fadd.s ft7, fs10, fa3, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw ft7, 24(a5)<br>    |
|   5|[0x80002424]<br>0xEADFEEDB|- rs1 : f5<br> - rs2 : f5<br> - rd : f13<br> - rs1 == rs2 != rd<br>                                                                                                                                                     |[0x80000194]:fadd.s fa3, ft5, ft5, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw fa3, 32(a5)<br>     |
|   6|[0x8000242c]<br>0xDDB7D5BF|- rs1 : f11<br> - rs2 : f19<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xea and fm2 == 0x1898ab and rm_val == 0  #nosat<br>                                              |[0x800001b0]:fadd.s ft8, fa1, fs3, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft8, 40(a5)<br>     |
|   7|[0x80002434]<br>0xBB6FAB7F|- rs1 : f18<br> - rs2 : f29<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe6 and fm2 == 0x742779 and rm_val == 0  #nosat<br>                                              |[0x800001cc]:fadd.s fs11, fs2, ft9, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw fs11, 48(a5)<br>   |
|   8|[0x8000243c]<br>0xADFEEDBE|- rs1 : f22<br> - rs2 : f2<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe3 and fm2 == 0x4352c7 and rm_val == 0  #nosat<br>                                                |[0x800001e8]:fadd.s fs1, fs6, ft2, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fs1, 56(a5)<br>     |
|   9|[0x80002444]<br>0xFBB6FAB7|- rs1 : f6<br> - rs2 : f22<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xe0 and fm2 == 0x1c4239 and rm_val == 0  #nosat<br>                                               |[0x80000204]:fadd.s ft11, ft6, fs6, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw ft11, 64(a5)<br>   |
|  10|[0x8000244c]<br>0xEDBEADFE|- rs1 : f12<br> - rs2 : f21<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xdc and fm2 == 0x7a038e and rm_val == 0  #nosat<br>                                              |[0x80000220]:fadd.s fs9, fa2, fs5, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fs9, 72(a5)<br>     |
|  11|[0x80002454]<br>0xF76DF56F|- rs1 : f16<br> - rs2 : f23<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd9 and fm2 == 0x4802d8 and rm_val == 0  #nosat<br>                                              |[0x8000023c]:fadd.s ft10, fa6, fs7, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw ft10, 80(a5)<br>   |
|  12|[0x8000245c]<br>0x6DF56FF7|- rs1 : f13<br> - rs2 : f27<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd6 and fm2 == 0x200246 and rm_val == 0  #nosat<br>                                              |[0x80000258]:fadd.s fs6, fa3, fs11, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw fs6, 88(a5)<br>    |
|  13|[0x80002464]<br>0xBFDDB7D5|- rs1 : f21<br> - rs2 : f6<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xd3 and fm2 == 0x0001d2 and rm_val == 0  #nosat<br>                                                |[0x80000274]:fadd.s ft4, fs5, ft6, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw ft4, 96(a5)<br>     |
|  14|[0x8000246c]<br>0xB6FAB7FB|- rs1 : f15<br> - rs2 : f24<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xcf and fm2 == 0x4ccfb6 and rm_val == 0  #nosat<br>                                              |[0x80000290]:fadd.s fs7, fa5, fs8, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fs7, 104(a5)<br>    |
|  15|[0x80002474]<br>0xDBEADFEE|- rs1 : f9<br> - rs2 : f28<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xcc and fm2 == 0x23d95e and rm_val == 0  #nosat<br>                                               |[0x800002ac]:fadd.s fs5, fs1, ft8, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw fs5, 112(a5)<br>    |
|  16|[0x8000247c]<br>0xDB7D5BFD|- rs1 : f2<br> - rs2 : f17<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc9 and fm2 == 0x03144b and rm_val == 0  #nosat<br>                                               |[0x800002c8]:fadd.s fs8, ft2, fa7, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fs8, 120(a5)<br>    |
|  17|[0x80002484]<br>0xEEDBEADF|- rs1 : f24<br> - rs2 : f3<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc5 and fm2 == 0x51ba13 and rm_val == 0  #nosat<br>                                               |[0x800002e4]:fadd.s ft9, fs8, ft3, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw ft9, 128(a5)<br>    |
|  18|[0x8000248c]<br>0x800000F8|- rs1 : f10<br> - rs2 : f25<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xc2 and fm2 == 0x27c80f and rm_val == 0  #nosat<br>                                               |[0x80000300]:fadd.s ft5, fa0, fs9, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft5, 136(a5)<br>    |
|  19|[0x80002494]<br>0x56FF76DF|- rs1 : f27<br> - rs2 : f15<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xbf and fm2 == 0x0639a5 and rm_val == 0  #nosat<br>                                              |[0x8000031c]:fadd.s fa0, fs11, fa5, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw fa0, 144(a5)<br>   |
|  20|[0x8000249c]<br>0xD5BFDDB7|- rs1 : f19<br> - rs2 : f14<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xbb and fm2 == 0x56c2a2 and rm_val == 0  #nosat<br>                                              |[0x80000338]:fadd.s fa2, fs3, fa4, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw fa2, 152(a5)<br>    |
|  21|[0x800024a4]<br>0xAB7FBB6F|- rs1 : f1<br> - rs2 : f9<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb8 and fm2 == 0x2bcee8 and rm_val == 0  #nosat<br>                                                |[0x80000354]:fadd.s fa1, ft1, fs1, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw fa1, 160(a5)<br>    |
|  22|[0x800024ac]<br>0x5BFDDB7D|- rs1 : f14<br> - rs2 : f1<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb5 and fm2 == 0x097253 and rm_val == 0  #nosat<br>                                                |[0x80000370]:fadd.s fs0, fa4, ft1, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw fs0, 168(a5)<br>    |
|  23|[0x800024b4]<br>0x00000005|- rs1 : f3<br> - rs2 : f8<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xb1 and fm2 == 0x5bea1f and rm_val == 0  #nosat<br>                                                |[0x8000038c]:fadd.s fa7, ft3, fs0, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw fa7, 176(a5)<br>    |
|  24|[0x800024bc]<br>0xFEEDBEAD|- rs1 : f17<br> - rs2 : f7<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xae and fm2 == 0x2fee7f and rm_val == 0  #nosat<br>                                                |[0x800003a8]:fadd.s ft1, fa7, ft7, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft1, 184(a5)<br>    |
|  25|[0x800024c4]<br>0x80002000|- rs1 : f28<br> - rs2 : f11<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xab and fm2 == 0x0cbecc and rm_val == 0  #nosat<br>                                               |[0x800003c4]:fadd.s ft6, ft8, fa1, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw ft6, 192(a5)<br>    |
|  26|[0x800024cc]<br>0x76DF56FF|- rs1 : f25<br> - rs2 : f31<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa7 and fm2 == 0x613147 and rm_val == 0  #nosat<br>                                              |[0x800003e0]:fadd.s fs10, fs9, ft11, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fs10, 200(a5)<br> |
|  27|[0x800024d4]<br>0x80002004|- rs1 : f31<br> - rs2 : f26<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa4 and fm2 == 0x34276c and rm_val == 0  #nosat<br>                                              |[0x800003fc]:fadd.s fa6, ft11, fs10, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fa6, 208(a5)<br>  |
|  28|[0x800024dc]<br>0xF56FF76D|- rs1 : f8<br> - rs2 : f30<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xa1 and fm2 == 0x101f89 and rm_val == 0  #nosat<br>                                               |[0x80000418]:fadd.s fa4, fs0, ft10, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fa4, 216(a5)<br>   |
|  29|[0x800024e4]<br>0x00006000|- rs1 : f7<br> - rs2 : f12<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x9d and fm2 == 0x6698dc and rm_val == 0  #nosat<br>                                                |[0x80000434]:fadd.s ft2, ft7, fa2, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw ft2, 224(a5)<br>    |
|  30|[0x800024ec]<br>0x6FAB7FBB|- rs1 : f4<br> - rs2 : f16<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x9a and fm2 == 0x387a4a and rm_val == 0  #nosat<br>                                               |[0x80000450]:fadd.s fs3, ft4, fa6, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw fs3, 232(a5)<br>    |
|  31|[0x800024f4]<br>0x00000000|- rs1 : f23<br> - rs2 : f20<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x97 and fm2 == 0x139508 and rm_val == 0  #nosat<br>                                               |[0x8000046c]:fadd.s ft3, fs7, fs4, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw ft3, 240(a5)<br>    |
|  32|[0x800024fc]<br>0x80002404|- rs1 : f30<br> - rs2 : f10<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x93 and fm2 == 0x6c21a6 and rm_val == 0  #nosat<br>                                              |[0x80000488]:fadd.s fa5, ft10, fa0, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fa5, 248(a5)<br>   |
|  33|[0x80002504]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x90 and fm2 == 0x3ce7b8 and rm_val == 0  #nosat<br>                                                                                             |[0x800004a4]:fadd.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>    |
|  34|[0x8000250c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x8d and fm2 == 0x171fc6 and rm_val == 0  #nosat<br>                                                                                             |[0x800004c0]:fadd.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>    |
|  35|[0x80002514]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x89 and fm2 == 0x71cc71 and rm_val == 0  #nosat<br>                                                                                             |[0x800004dc]:fadd.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>    |
|  36|[0x8000251c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x86 and fm2 == 0x41705a and rm_val == 0  #nosat<br>                                                                                             |[0x800004f8]:fadd.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>    |
|  37|[0x80002524]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x83 and fm2 == 0x1ac048 and rm_val == 0  #nosat<br>                                                                                             |[0x80000514]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>    |
|  38|[0x8000252c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x779a0d and rm_val == 0  #nosat<br>                                                                                             |[0x80000530]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>    |
|  39|[0x80002534]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x7c and fm2 == 0x4614d7 and rm_val == 0  #nosat<br>                                                                                             |[0x8000054c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>    |
|  40|[0x8000253c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x79 and fm2 == 0x1e7712 and rm_val == 0  #nosat<br>                                                                                             |[0x80000568]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>    |
|  41|[0x80002544]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x75 and fm2 == 0x7d8b51 and rm_val == 0  #nosat<br>                                                                                             |[0x80000584]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>    |
|  42|[0x8000254c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x72 and fm2 == 0x4ad5da and rm_val == 0  #nosat<br>                                                                                             |[0x800005a0]:fadd.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>    |
|  43|[0x80002554]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x6f and fm2 == 0x2244ae and rm_val == 0  #nosat<br>                                                                                             |[0x800005bc]:fadd.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>    |
|  44|[0x8000255c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x6c and fm2 == 0x01d08b and rm_val == 0  #nosat<br>                                                                                             |[0x800005d8]:fadd.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>    |
|  45|[0x80002564]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x68 and fm2 == 0x4fb413 and rm_val == 0  #nosat<br>                                                                                             |[0x800005f4]:fadd.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>    |
|  46|[0x8000256c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x65 and fm2 == 0x2629a8 and rm_val == 0  #nosat<br>                                                                                             |[0x80000610]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>    |
|  47|[0x80002574]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x62 and fm2 == 0x04ee20 and rm_val == 0  #nosat<br>                                                                                             |[0x8000062c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>    |
|  48|[0x8000257c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x5e and fm2 == 0x54b034 and rm_val == 0  #nosat<br>                                                                                             |[0x80000648]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>    |
|  49|[0x80002584]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x5b and fm2 == 0x2a2690 and rm_val == 0  #nosat<br>                                                                                             |[0x80000664]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>    |
|  50|[0x8000258c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x58 and fm2 == 0x081ed9 and rm_val == 0  #nosat<br>                                                                                             |[0x80000680]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>    |
|  51|[0x80002594]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x54 and fm2 == 0x59caf6 and rm_val == 0  #nosat<br>                                                                                             |[0x8000069c]:fadd.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>    |
|  52|[0x8000259c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x51 and fm2 == 0x2e3bf8 and rm_val == 0  #nosat<br>                                                                                             |[0x800006b8]:fadd.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>    |
|  53|[0x800025a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x4e and fm2 == 0x0b632c and rm_val == 0  #nosat<br>                                                                                             |[0x800006d4]:fadd.s fa2, fa0, fa1, dyn<br> [0x800006d8]:csrrs a7, fflags, zero<br> [0x800006dc]:fsw fa2, 416(a5)<br>    |
|  54|[0x800025ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x4a and fm2 == 0x5f0514 and rm_val == 0  #nosat<br>                                                                                             |[0x800006f0]:fadd.s fa2, fa0, fa1, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa2, 424(a5)<br>    |
|  55|[0x800025b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x47 and fm2 == 0x326a76 and rm_val == 0  #nosat<br>                                                                                             |[0x8000070c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000710]:csrrs a7, fflags, zero<br> [0x80000714]:fsw fa2, 432(a5)<br>    |
|  56|[0x800025bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x44 and fm2 == 0x0ebb92 and rm_val == 0  #nosat<br>                                                                                             |[0x80000728]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa2, 440(a5)<br>    |
|  57|[0x800025c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x40 and fm2 == 0x645f50 and rm_val == 0  #nosat<br>                                                                                             |[0x80000744]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000748]:csrrs a7, fflags, zero<br> [0x8000074c]:fsw fa2, 448(a5)<br>    |
|  58|[0x800025cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x3d and fm2 == 0x36b2a6 and rm_val == 0  #nosat<br>                                                                                             |[0x80000760]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsw fa2, 456(a5)<br>    |
|  59|[0x800025d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x3a and fm2 == 0x122885 and rm_val == 0  #nosat<br>                                                                                             |[0x8000077c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000780]:csrrs a7, fflags, zero<br> [0x80000784]:fsw fa2, 464(a5)<br>    |
|  60|[0x800025dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x36 and fm2 == 0x69da6f and rm_val == 0  #nosat<br>                                                                                             |[0x80000798]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa2, 472(a5)<br>    |
|  61|[0x800025e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x33 and fm2 == 0x3b1525 and rm_val == 0  #nosat<br>                                                                                             |[0x800007b4]:fadd.s fa2, fa0, fa1, dyn<br> [0x800007b8]:csrrs a7, fflags, zero<br> [0x800007bc]:fsw fa2, 480(a5)<br>    |
|  62|[0x800025ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x30 and fm2 == 0x15aa84 and rm_val == 0  #nosat<br>                                                                                             |[0x800007d0]:fadd.s fa2, fa0, fa1, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw fa2, 488(a5)<br>    |
|  63|[0x800025f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x2c and fm2 == 0x6f773a and rm_val == 0  #nosat<br>                                                                                             |[0x800007ec]:fadd.s fa2, fa0, fa1, dyn<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsw fa2, 496(a5)<br>    |
|  64|[0x800025fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x29 and fm2 == 0x3f9295 and rm_val == 0  #nosat<br>                                                                                             |[0x80000808]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa2, 504(a5)<br>    |
|  65|[0x80002604]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x26 and fm2 == 0x194210 and rm_val == 0  #nosat<br>                                                                                             |[0x80000824]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000828]:csrrs a7, fflags, zero<br> [0x8000082c]:fsw fa2, 512(a5)<br>    |
|  66|[0x8000260c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x22 and fm2 == 0x753681 and rm_val == 0  #nosat<br>                                                                                             |[0x80000840]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa2, 520(a5)<br>    |
|  67|[0x80002614]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x442b9a and rm_val == 0  #nosat<br>                                                                                             |[0x8000085c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000860]:csrrs a7, fflags, zero<br> [0x80000864]:fsw fa2, 528(a5)<br>    |
|  68|[0x8000261c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x1c and fm2 == 0x1cefaf and rm_val == 0  #nosat<br>                                                                                             |[0x80000878]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:fsw fa2, 536(a5)<br>    |
|  69|[0x80002624]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x18 and fm2 == 0x7b1918 and rm_val == 0  #nosat<br>                                                                                             |[0x80000894]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000898]:csrrs a7, fflags, zero<br> [0x8000089c]:fsw fa2, 544(a5)<br>    |
|  70|[0x8000262c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x15 and fm2 == 0x48e0e0 and rm_val == 0  #nosat<br>                                                                                             |[0x800008b0]:fadd.s fa2, fa0, fa1, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsw fa2, 552(a5)<br>    |
|  71|[0x80002634]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x12 and fm2 == 0x20b3e6 and rm_val == 0  #nosat<br>                                                                                             |[0x800008cc]:fadd.s fa2, fa0, fa1, dyn<br> [0x800008d0]:csrrs a7, fflags, zero<br> [0x800008d4]:fsw fa2, 560(a5)<br>    |
|  72|[0x8000263c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x008feb and rm_val == 0  #nosat<br>                                                                                             |[0x800008e8]:fadd.s fa2, fa0, fa1, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa2, 568(a5)<br>    |
|  73|[0x80002644]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x0b and fm2 == 0x4db312 and rm_val == 0  #nosat<br>                                                                                             |[0x80000904]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000908]:csrrs a7, fflags, zero<br> [0x8000090c]:fsw fa2, 576(a5)<br>    |
|  74|[0x8000264c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x08 and fm2 == 0x248f41 and rm_val == 0  #nosat<br>                                                                                             |[0x80000920]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsw fa2, 584(a5)<br>    |
|  75|[0x80002654]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                             |[0x8000093c]:fadd.s fa2, fa0, fa1, dyn<br> [0x80000940]:csrrs a7, fflags, zero<br> [0x80000944]:fsw fa2, 592(a5)<br>    |
|  76|[0x8000265c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x260524 and fs2 == 0 and fe2 == 0xed and fm2 == 0x3ebed6 and rm_val == 0  #nosat<br>                                                                                             |[0x80000958]:fadd.s fa2, fa0, fa1, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsw fa2, 600(a5)<br>    |
