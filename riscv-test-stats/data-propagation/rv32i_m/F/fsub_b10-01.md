
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000920')]      |
| SIG_REGION                | [('0x80002404', '0x8000264c', '146 words')]      |
| COV_LABELS                | fsub_b10      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsub_b10-01.S/ref.S    |
| Total Number of coverpoints| 179     |
| Total Coverpoints Hit     | 173      |
| Total Signature Updates   | 146      |
| STAT1                     | 73      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 73     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsub.s', 'rs1 : f29', 'rs2 : f29', 'rd : f29', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000124]:fsub.s ft9, ft9, ft9, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw ft9, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x80002408]:0x00000000




Last Coverpoint : ['rs1 : f5', 'rs2 : f6', 'rd : f5', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000140]:fsub.s ft5, ft5, ft6, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw ft5, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['rs1 : f25', 'rs2 : f13', 'rd : f24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xf1 and fm2 == 0x054a30 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000015c]:fsub.s fs8, fs9, fa3, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw fs8, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x80002418]:0x00000001




Last Coverpoint : ['rs1 : f23', 'rs2 : f8', 'rd : f8', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xed and fm2 == 0x554380 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000178]:fsub.s fs0, fs7, fs0, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw fs0, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x80002420]:0x00000001




Last Coverpoint : ['rs1 : f17', 'rs2 : f17', 'rd : f20', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000194]:fsub.s fs4, fa7, fa7, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw fs4, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['rs1 : f4', 'rs2 : f24', 'rd : f7', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe7 and fm2 == 0x087d1e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fsub.s ft7, ft4, fs8, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft7, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x80002430]:0x00000001




Last Coverpoint : ['rs1 : f19', 'rs2 : f23', 'rd : f11', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe3 and fm2 == 0x5a61ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fsub.s fa1, fs3, fs7, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw fa1, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x80002438]:0x00000001




Last Coverpoint : ['rs1 : f10', 'rs2 : f15', 'rd : f0', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe0 and fm2 == 0x2eb4a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fsub.s ft0, fa0, fa5, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw ft0, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['rs1 : f27', 'rs2 : f4', 'rd : f17', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xdd and fm2 == 0x0bc3b5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fsub.s fa7, fs11, ft4, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw fa7, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80002448]:0x00000001




Last Coverpoint : ['rs1 : f6', 'rs2 : f0', 'rd : f15', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd9 and fm2 == 0x5f9f88 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000220]:fsub.s fa5, ft6, ft0, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw fa5, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x80002450]:0x00000001




Last Coverpoint : ['rs1 : f1', 'rs2 : f31', 'rd : f21', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd6 and fm2 == 0x32e606 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fsub.s fs5, ft1, ft11, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw fs5, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['rs1 : f24', 'rs2 : f1', 'rd : f28', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd3 and fm2 == 0x0f1e6b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fsub.s ft8, fs8, ft1, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft8, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x80002460]:0x00000001




Last Coverpoint : ['rs1 : f11', 'rs2 : f10', 'rd : f26', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xcf and fm2 == 0x64fd78 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000274]:fsub.s fs10, fa1, fa0, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw fs10, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x80002468]:0x00000001




Last Coverpoint : ['rs1 : f8', 'rs2 : f30', 'rd : f9', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xcc and fm2 == 0x37312d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000290]:fsub.s fs1, fs0, ft10, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw fs1, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f20', 'rd : f2', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc9 and fm2 == 0x128dbe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fsub.s ft2, fs1, fs4, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw ft2, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x80002478]:0x00000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f28', 'rd : f16', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc5 and fm2 == 0x6a7c63 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fsub.s fa6, fs5, ft8, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fa6, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x80002480]:0x00000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f14', 'rd : f27', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc2 and fm2 == 0x3b96b5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fsub.s fs11, ft10, fa4, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw fs11, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['rs1 : f15', 'rs2 : f9', 'rd : f19', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xbf and fm2 == 0x16122b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fsub.s fs3, fa5, fs1, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fs3, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x80002490]:0x00000001




Last Coverpoint : ['rs1 : f14', 'rs2 : f11', 'rd : f4', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xbb and fm2 == 0x701d11 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fsub.s ft4, fa4, fa1, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw ft4, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x80002498]:0x00000001




Last Coverpoint : ['rs1 : f22', 'rs2 : f27', 'rd : f18', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb8 and fm2 == 0x401741 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fsub.s fs2, fs6, fs11, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw fs2, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x800024a0]:0x00000001




Last Coverpoint : ['rs1 : f3', 'rs2 : f25', 'rd : f13', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb5 and fm2 == 0x19ac34 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fsub.s fa3, ft3, fs9, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw fa3, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x800024a8]:0x00000001




Last Coverpoint : ['rs1 : f18', 'rs2 : f2', 'rd : f12', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb1 and fm2 == 0x75e053 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000370]:fsub.s fa2, fs2, ft2, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw fa2, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x800024b0]:0x00000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f3', 'rd : f10', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xae and fm2 == 0x44b376 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fsub.s fa0, ft8, ft3, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw fa0, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x800024b8]:0x00000001




Last Coverpoint : ['rs1 : f16', 'rs2 : f18', 'rd : f3', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xab and fm2 == 0x1d5c5e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fsub.s ft3, fa6, fs2, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft3, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x800024c0]:0x00000001




Last Coverpoint : ['rs1 : f20', 'rs2 : f16', 'rd : f30', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa7 and fm2 == 0x7bc6fd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fsub.s ft10, fs4, fa6, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw ft10, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x800024c8]:0x00000001




Last Coverpoint : ['rs1 : f2', 'rs2 : f12', 'rd : f1', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa4 and fm2 == 0x496bfe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fsub.s ft1, ft2, fa2, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw ft1, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x800024d0]:0x00000001




Last Coverpoint : ['rs1 : f13', 'rs2 : f19', 'rd : f25', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa1 and fm2 == 0x212331 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fsub.s fs9, fa3, fs3, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fs9, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x800024d8]:0x00000001




Last Coverpoint : ['rs1 : f7', 'rs2 : f21', 'rd : f14', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x9e and fm2 == 0x00e8f4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fsub.s fa4, ft7, fs5, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fa4, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x800024e0]:0x00000001




Last Coverpoint : ['rs1 : f26', 'rs2 : f7', 'rd : f22', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x9a and fm2 == 0x4e4187 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000434]:fsub.s fs6, fs10, ft7, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw fs6, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x800024e8]:0x00000001




Last Coverpoint : ['rs1 : f0', 'rs2 : f26', 'rd : f31', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x97 and fm2 == 0x250138 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fsub.s ft11, ft0, fs10, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw ft11, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x800024f0]:0x00000001




Last Coverpoint : ['rs1 : f12', 'rs2 : f5', 'rd : f6', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x94 and fm2 == 0x0400fa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fsub.s ft6, fa2, ft5, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw ft6, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x800024f8]:0x00000001




Last Coverpoint : ['rs1 : f31', 'rs2 : f22', 'rd : f23', 'fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x90 and fm2 == 0x5334c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fsub.s fs7, ft11, fs6, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fs7, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x80002500]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x8d and fm2 == 0x28f703 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x80002508]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x8a and fm2 == 0x072c02 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x80002510]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x86 and fm2 == 0x58466a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x80002518]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x83 and fm2 == 0x2d0521 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x80002520]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x0a6a81 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000514]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x80002528]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x7c and fm2 == 0x5d7735 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000530]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x80002530]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x79 and fm2 == 0x312c2a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x80002538]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x76 and fm2 == 0x0dbcef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x80002540]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x72 and fm2 == 0x62c7e4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x80002548]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x6f and fm2 == 0x356cb7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x80002550]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x6c and fm2 == 0x1123c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x80002558]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x68 and fm2 == 0x68393c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x80002560]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x65 and fm2 == 0x39c763 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x80002568]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x62 and fm2 == 0x149f82 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x80002570]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x5e and fm2 == 0x6dcc04 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x80002578]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x5b and fm2 == 0x3e3cd0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x80002580]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x58 and fm2 == 0x1830a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000664]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x80002588]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x54 and fm2 == 0x73810a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x80002590]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x51 and fm2 == 0x42cda2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x80002598]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x4e and fm2 == 0x1bd7b4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x800025a0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x4a and fm2 == 0x795921 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006d8]:csrrs a7, fflags, zero
	-[0x800006dc]:fsw fa2, 416(a5)
Current Store : [0x800006e0] : sw a7, 420(a5) -- Store: [0x800025a8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x47 and fm2 == 0x477a81 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa2, 424(a5)
Current Store : [0x800006fc] : sw a7, 428(a5) -- Store: [0x800025b0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x44 and fm2 == 0x1f9534 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000070c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000710]:csrrs a7, fflags, zero
	-[0x80000714]:fsw fa2, 432(a5)
Current Store : [0x80000718] : sw a7, 436(a5) -- Store: [0x800025b8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x40 and fm2 == 0x7f5520 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000728]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa2, 440(a5)
Current Store : [0x80000734] : sw a7, 444(a5) -- Store: [0x800025c0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x3d and fm2 == 0x4c4419 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000744]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000748]:csrrs a7, fflags, zero
	-[0x8000074c]:fsw fa2, 448(a5)
Current Store : [0x80000750] : sw a7, 452(a5) -- Store: [0x800025c8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x3a and fm2 == 0x2369ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsw fa2, 456(a5)
Current Store : [0x8000076c] : sw a7, 460(a5) -- Store: [0x800025d0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x37 and fm2 == 0x02baf1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000077c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000780]:csrrs a7, fflags, zero
	-[0x80000784]:fsw fa2, 464(a5)
Current Store : [0x80000788] : sw a7, 468(a5) -- Store: [0x800025d8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x33 and fm2 == 0x512b1c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000798]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa2, 472(a5)
Current Store : [0x800007a4] : sw a7, 476(a5) -- Store: [0x800025e0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x30 and fm2 == 0x2755b0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b4]:fsub.s fa2, fa0, fa1, dyn
	-[0x800007b8]:csrrs a7, fflags, zero
	-[0x800007bc]:fsw fa2, 480(a5)
Current Store : [0x800007c0] : sw a7, 484(a5) -- Store: [0x800025e8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x2d and fm2 == 0x05de26 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:fsw fa2, 488(a5)
Current Store : [0x800007dc] : sw a7, 492(a5) -- Store: [0x800025f0]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x29 and fm2 == 0x56303d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ec]:fsub.s fa2, fa0, fa1, dyn
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsw fa2, 496(a5)
Current Store : [0x800007f8] : sw a7, 500(a5) -- Store: [0x800025f8]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x26 and fm2 == 0x2b59cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa2, 504(a5)
Current Store : [0x80000814] : sw a7, 508(a5) -- Store: [0x80002600]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x23 and fm2 == 0x0914a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000824]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000828]:csrrs a7, fflags, zero
	-[0x8000082c]:fsw fa2, 512(a5)
Current Store : [0x80000830] : sw a7, 516(a5) -- Store: [0x80002608]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x5b5437 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa2, 520(a5)
Current Store : [0x8000084c] : sw a7, 524(a5) -- Store: [0x80002610]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x1c and fm2 == 0x2f7692 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000085c]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000860]:csrrs a7, fflags, zero
	-[0x80000864]:fsw fa2, 528(a5)
Current Store : [0x80000868] : sw a7, 532(a5) -- Store: [0x80002618]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x19 and fm2 == 0x0c5edb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000878]:fsub.s fa2, fa0, fa1, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:fsw fa2, 536(a5)
Current Store : [0x80000884] : sw a7, 540(a5) -- Store: [0x80002620]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x15 and fm2 == 0x6097c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000894]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000898]:csrrs a7, fflags, zero
	-[0x8000089c]:fsw fa2, 544(a5)
Current Store : [0x800008a0] : sw a7, 548(a5) -- Store: [0x80002628]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x12 and fm2 == 0x33ac9e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fsub.s fa2, fa0, fa1, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsw fa2, 552(a5)
Current Store : [0x800008bc] : sw a7, 556(a5) -- Store: [0x80002630]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x0fbd4b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008cc]:fsub.s fa2, fa0, fa1, dyn
	-[0x800008d0]:csrrs a7, fflags, zero
	-[0x800008d4]:fsw fa2, 560(a5)
Current Store : [0x800008d8] : sw a7, 564(a5) -- Store: [0x80002638]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x178cde and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fsub.s fa2, fa0, fa1, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa2, 568(a5)
Current Store : [0x800008f4] : sw a7, 572(a5) -- Store: [0x80002640]:0x00000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xea and fm2 == 0x2a9c66 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000904]:fsub.s fa2, fa0, fa1, dyn
	-[0x80000908]:csrrs a7, fflags, zero
	-[0x8000090c]:fsw fa2, 576(a5)
Current Store : [0x80000910] : sw a7, 580(a5) -- Store: [0x80002648]:0x00000001





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
|   1|[0x80002404]<br>0xEEDBEADF|- opcode : fsub.s<br> - rs1 : f29<br> - rs2 : f29<br> - rd : f29<br> - rs1 == rs2 == rd<br>                                                                                                                              |[0x80000124]:fsub.s ft9, ft9, ft9, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw ft9, 0(a5)<br>      |
|   2|[0x8000240c]<br>0x800000F8|- rs1 : f5<br> - rs2 : f6<br> - rd : f5<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                           |[0x80000140]:fsub.s ft5, ft5, ft6, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw ft5, 8(a5)<br>      |
|   3|[0x80002414]<br>0xDB7D5BFD|- rs1 : f25<br> - rs2 : f13<br> - rd : f24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xf1 and fm2 == 0x054a30 and rm_val == 0  #nosat<br> |[0x8000015c]:fsub.s fs8, fs9, fa3, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw fs8, 16(a5)<br>     |
|   4|[0x8000241c]<br>0x5BFDDB7D|- rs1 : f23<br> - rs2 : f8<br> - rd : f8<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xed and fm2 == 0x554380 and rm_val == 0  #nosat<br>                          |[0x80000178]:fsub.s fs0, fs7, fs0, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw fs0, 24(a5)<br>     |
|   5|[0x80002424]<br>0xB7D5BFDD|- rs1 : f17<br> - rs2 : f17<br> - rd : f20<br> - rs1 == rs2 != rd<br>                                                                                                                                                    |[0x80000194]:fsub.s fs4, fa7, fa7, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw fs4, 32(a5)<br>     |
|   6|[0x8000242c]<br>0xB7FBB6FA|- rs1 : f4<br> - rs2 : f24<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe7 and fm2 == 0x087d1e and rm_val == 0  #nosat<br>                                                 |[0x800001b0]:fsub.s ft7, ft4, fs8, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft7, 40(a5)<br>     |
|   7|[0x80002434]<br>0xAB7FBB6F|- rs1 : f19<br> - rs2 : f23<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe3 and fm2 == 0x5a61ca and rm_val == 0  #nosat<br>                                               |[0x800001cc]:fsub.s fa1, fs3, fs7, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw fa1, 48(a5)<br>     |
|   8|[0x8000243c]<br>0x00000000|- rs1 : f10<br> - rs2 : f15<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xe0 and fm2 == 0x2eb4a2 and rm_val == 0  #nosat<br>                                                |[0x800001e8]:fsub.s ft0, fa0, fa5, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw ft0, 56(a5)<br>     |
|   9|[0x80002444]<br>0x00000001|- rs1 : f27<br> - rs2 : f4<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xdd and fm2 == 0x0bc3b5 and rm_val == 0  #nosat<br>                                                |[0x80000204]:fsub.s fa7, fs11, ft4, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw fa7, 64(a5)<br>    |
|  10|[0x8000244c]<br>0x80002404|- rs1 : f6<br> - rs2 : f0<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd9 and fm2 == 0x5f9f88 and rm_val == 0  #nosat<br>                                                 |[0x80000220]:fsub.s fa5, ft6, ft0, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fa5, 72(a5)<br>     |
|  11|[0x80002454]<br>0xDBEADFEE|- rs1 : f1<br> - rs2 : f31<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd6 and fm2 == 0x32e606 and rm_val == 0  #nosat<br>                                                |[0x8000023c]:fsub.s fs5, ft1, ft11, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw fs5, 80(a5)<br>    |
|  12|[0x8000245c]<br>0xDDB7D5BF|- rs1 : f24<br> - rs2 : f1<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xd3 and fm2 == 0x0f1e6b and rm_val == 0  #nosat<br>                                                |[0x80000258]:fsub.s ft8, fs8, ft1, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft8, 88(a5)<br>     |
|  13|[0x80002464]<br>0x76DF56FF|- rs1 : f11<br> - rs2 : f10<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xcf and fm2 == 0x64fd78 and rm_val == 0  #nosat<br>                                               |[0x80000274]:fsub.s fs10, fa1, fa0, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw fs10, 96(a5)<br>   |
|  14|[0x8000246c]<br>0xADFEEDBE|- rs1 : f8<br> - rs2 : f30<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xcc and fm2 == 0x37312d and rm_val == 0  #nosat<br>                                                 |[0x80000290]:fsub.s fs1, fs0, ft10, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fs1, 104(a5)<br>   |
|  15|[0x80002474]<br>0x00006000|- rs1 : f9<br> - rs2 : f20<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc9 and fm2 == 0x128dbe and rm_val == 0  #nosat<br>                                                 |[0x800002ac]:fsub.s ft2, fs1, fs4, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw ft2, 112(a5)<br>    |
|  16|[0x8000247c]<br>0x80002004|- rs1 : f21<br> - rs2 : f28<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc5 and fm2 == 0x6a7c63 and rm_val == 0  #nosat<br>                                               |[0x800002c8]:fsub.s fa6, fs5, ft8, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fa6, 120(a5)<br>    |
|  17|[0x80002484]<br>0xBB6FAB7F|- rs1 : f30<br> - rs2 : f14<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xc2 and fm2 == 0x3b96b5 and rm_val == 0  #nosat<br>                                               |[0x800002e4]:fsub.s fs11, ft10, fa4, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw fs11, 128(a5)<br> |
|  18|[0x8000248c]<br>0x6FAB7FBB|- rs1 : f15<br> - rs2 : f9<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xbf and fm2 == 0x16122b and rm_val == 0  #nosat<br>                                                |[0x80000300]:fsub.s fs3, fa5, fs1, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fs3, 136(a5)<br>    |
|  19|[0x80002494]<br>0xBFDDB7D5|- rs1 : f14<br> - rs2 : f11<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xbb and fm2 == 0x701d11 and rm_val == 0  #nosat<br>                                                |[0x8000031c]:fsub.s ft4, fa4, fa1, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw ft4, 144(a5)<br>    |
|  20|[0x8000249c]<br>0xDF56FF76|- rs1 : f22<br> - rs2 : f27<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb8 and fm2 == 0x401741 and rm_val == 0  #nosat<br>                                               |[0x80000338]:fsub.s fs2, fs6, fs11, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw fs2, 152(a5)<br>   |
|  21|[0x800024a4]<br>0xEADFEEDB|- rs1 : f3<br> - rs2 : f25<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb5 and fm2 == 0x19ac34 and rm_val == 0  #nosat<br>                                                |[0x80000354]:fsub.s fa3, ft3, fs9, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw fa3, 160(a5)<br>    |
|  22|[0x800024ac]<br>0xD5BFDDB7|- rs1 : f18<br> - rs2 : f2<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xb1 and fm2 == 0x75e053 and rm_val == 0  #nosat<br>                                                |[0x80000370]:fsub.s fa2, fs2, ft2, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw fa2, 168(a5)<br>    |
|  23|[0x800024b4]<br>0x56FF76DF|- rs1 : f28<br> - rs2 : f3<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xae and fm2 == 0x44b376 and rm_val == 0  #nosat<br>                                                |[0x8000038c]:fsub.s fa0, ft8, ft3, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw fa0, 176(a5)<br>    |
|  24|[0x800024bc]<br>0x00000000|- rs1 : f16<br> - rs2 : f18<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xab and fm2 == 0x1d5c5e and rm_val == 0  #nosat<br>                                                |[0x800003a8]:fsub.s ft3, fa6, fs2, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft3, 184(a5)<br>    |
|  25|[0x800024c4]<br>0xF76DF56F|- rs1 : f20<br> - rs2 : f16<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa7 and fm2 == 0x7bc6fd and rm_val == 0  #nosat<br>                                               |[0x800003c4]:fsub.s ft10, fs4, fa6, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw ft10, 192(a5)<br>  |
|  26|[0x800024cc]<br>0xFEEDBEAD|- rs1 : f2<br> - rs2 : f12<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa4 and fm2 == 0x496bfe and rm_val == 0  #nosat<br>                                                 |[0x800003e0]:fsub.s ft1, ft2, fa2, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw ft1, 200(a5)<br>    |
|  27|[0x800024d4]<br>0xEDBEADFE|- rs1 : f13<br> - rs2 : f19<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xa1 and fm2 == 0x212331 and rm_val == 0  #nosat<br>                                               |[0x800003fc]:fsub.s fs9, fa3, fs3, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fs9, 208(a5)<br>    |
|  28|[0x800024dc]<br>0xF56FF76D|- rs1 : f7<br> - rs2 : f21<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x9e and fm2 == 0x00e8f4 and rm_val == 0  #nosat<br>                                                |[0x80000418]:fsub.s fa4, ft7, fs5, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fa4, 216(a5)<br>    |
|  29|[0x800024e4]<br>0x6DF56FF7|- rs1 : f26<br> - rs2 : f7<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x9a and fm2 == 0x4e4187 and rm_val == 0  #nosat<br>                                                |[0x80000434]:fsub.s fs6, fs10, ft7, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw fs6, 224(a5)<br>   |
|  30|[0x800024ec]<br>0xFBB6FAB7|- rs1 : f0<br> - rs2 : f26<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x97 and fm2 == 0x250138 and rm_val == 0  #nosat<br>                                                |[0x80000450]:fsub.s ft11, ft0, fs10, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw ft11, 232(a5)<br> |
|  31|[0x800024f4]<br>0x80002000|- rs1 : f12<br> - rs2 : f5<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x94 and fm2 == 0x0400fa and rm_val == 0  #nosat<br>                                                 |[0x8000046c]:fsub.s ft6, fa2, ft5, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw ft6, 240(a5)<br>    |
|  32|[0x800024fc]<br>0xB6FAB7FB|- rs1 : f31<br> - rs2 : f22<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x90 and fm2 == 0x5334c3 and rm_val == 0  #nosat<br>                                               |[0x80000488]:fsub.s fs7, ft11, fs6, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fs7, 248(a5)<br>   |
|  33|[0x80002504]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x8d and fm2 == 0x28f703 and rm_val == 0  #nosat<br>                                                                                              |[0x800004a4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>    |
|  34|[0x8000250c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x8a and fm2 == 0x072c02 and rm_val == 0  #nosat<br>                                                                                              |[0x800004c0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>    |
|  35|[0x80002514]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x86 and fm2 == 0x58466a and rm_val == 0  #nosat<br>                                                                                              |[0x800004dc]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>    |
|  36|[0x8000251c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x83 and fm2 == 0x2d0521 and rm_val == 0  #nosat<br>                                                                                              |[0x800004f8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>    |
|  37|[0x80002524]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x0a6a81 and rm_val == 0  #nosat<br>                                                                                              |[0x80000514]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>    |
|  38|[0x8000252c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x7c and fm2 == 0x5d7735 and rm_val == 0  #nosat<br>                                                                                              |[0x80000530]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>    |
|  39|[0x80002534]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x79 and fm2 == 0x312c2a and rm_val == 0  #nosat<br>                                                                                              |[0x8000054c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>    |
|  40|[0x8000253c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x76 and fm2 == 0x0dbcef and rm_val == 0  #nosat<br>                                                                                              |[0x80000568]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>    |
|  41|[0x80002544]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x72 and fm2 == 0x62c7e4 and rm_val == 0  #nosat<br>                                                                                              |[0x80000584]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>    |
|  42|[0x8000254c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x6f and fm2 == 0x356cb7 and rm_val == 0  #nosat<br>                                                                                              |[0x800005a0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>    |
|  43|[0x80002554]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x6c and fm2 == 0x1123c5 and rm_val == 0  #nosat<br>                                                                                              |[0x800005bc]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>    |
|  44|[0x8000255c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x68 and fm2 == 0x68393c and rm_val == 0  #nosat<br>                                                                                              |[0x800005d8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>    |
|  45|[0x80002564]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x65 and fm2 == 0x39c763 and rm_val == 0  #nosat<br>                                                                                              |[0x800005f4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>    |
|  46|[0x8000256c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x62 and fm2 == 0x149f82 and rm_val == 0  #nosat<br>                                                                                              |[0x80000610]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>    |
|  47|[0x80002574]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x5e and fm2 == 0x6dcc04 and rm_val == 0  #nosat<br>                                                                                              |[0x8000062c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>    |
|  48|[0x8000257c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x5b and fm2 == 0x3e3cd0 and rm_val == 0  #nosat<br>                                                                                              |[0x80000648]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>    |
|  49|[0x80002584]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x58 and fm2 == 0x1830a6 and rm_val == 0  #nosat<br>                                                                                              |[0x80000664]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>    |
|  50|[0x8000258c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x54 and fm2 == 0x73810a and rm_val == 0  #nosat<br>                                                                                              |[0x80000680]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>    |
|  51|[0x80002594]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x51 and fm2 == 0x42cda2 and rm_val == 0  #nosat<br>                                                                                              |[0x8000069c]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>    |
|  52|[0x8000259c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x4e and fm2 == 0x1bd7b4 and rm_val == 0  #nosat<br>                                                                                              |[0x800006b8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>    |
|  53|[0x800025a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x4a and fm2 == 0x795921 and rm_val == 0  #nosat<br>                                                                                              |[0x800006d4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006d8]:csrrs a7, fflags, zero<br> [0x800006dc]:fsw fa2, 416(a5)<br>    |
|  54|[0x800025ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x47 and fm2 == 0x477a81 and rm_val == 0  #nosat<br>                                                                                              |[0x800006f0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa2, 424(a5)<br>    |
|  55|[0x800025b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x44 and fm2 == 0x1f9534 and rm_val == 0  #nosat<br>                                                                                              |[0x8000070c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000710]:csrrs a7, fflags, zero<br> [0x80000714]:fsw fa2, 432(a5)<br>    |
|  56|[0x800025bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x40 and fm2 == 0x7f5520 and rm_val == 0  #nosat<br>                                                                                              |[0x80000728]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa2, 440(a5)<br>    |
|  57|[0x800025c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x3d and fm2 == 0x4c4419 and rm_val == 0  #nosat<br>                                                                                              |[0x80000744]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000748]:csrrs a7, fflags, zero<br> [0x8000074c]:fsw fa2, 448(a5)<br>    |
|  58|[0x800025cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x3a and fm2 == 0x2369ae and rm_val == 0  #nosat<br>                                                                                              |[0x80000760]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsw fa2, 456(a5)<br>    |
|  59|[0x800025d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x37 and fm2 == 0x02baf1 and rm_val == 0  #nosat<br>                                                                                              |[0x8000077c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000780]:csrrs a7, fflags, zero<br> [0x80000784]:fsw fa2, 464(a5)<br>    |
|  60|[0x800025dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x33 and fm2 == 0x512b1c and rm_val == 0  #nosat<br>                                                                                              |[0x80000798]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa2, 472(a5)<br>    |
|  61|[0x800025e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x30 and fm2 == 0x2755b0 and rm_val == 0  #nosat<br>                                                                                              |[0x800007b4]:fsub.s fa2, fa0, fa1, dyn<br> [0x800007b8]:csrrs a7, fflags, zero<br> [0x800007bc]:fsw fa2, 480(a5)<br>    |
|  62|[0x800025ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x2d and fm2 == 0x05de26 and rm_val == 0  #nosat<br>                                                                                              |[0x800007d0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw fa2, 488(a5)<br>    |
|  63|[0x800025f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x29 and fm2 == 0x56303d and rm_val == 0  #nosat<br>                                                                                              |[0x800007ec]:fsub.s fa2, fa0, fa1, dyn<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsw fa2, 496(a5)<br>    |
|  64|[0x800025fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x26 and fm2 == 0x2b59cb and rm_val == 0  #nosat<br>                                                                                              |[0x80000808]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa2, 504(a5)<br>    |
|  65|[0x80002604]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x23 and fm2 == 0x0914a2 and rm_val == 0  #nosat<br>                                                                                              |[0x80000824]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000828]:csrrs a7, fflags, zero<br> [0x8000082c]:fsw fa2, 512(a5)<br>    |
|  66|[0x8000260c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x5b5437 and rm_val == 0  #nosat<br>                                                                                              |[0x80000840]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa2, 520(a5)<br>    |
|  67|[0x80002614]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x1c and fm2 == 0x2f7692 and rm_val == 0  #nosat<br>                                                                                              |[0x8000085c]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000860]:csrrs a7, fflags, zero<br> [0x80000864]:fsw fa2, 528(a5)<br>    |
|  68|[0x8000261c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x19 and fm2 == 0x0c5edb and rm_val == 0  #nosat<br>                                                                                              |[0x80000878]:fsub.s fa2, fa0, fa1, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:fsw fa2, 536(a5)<br>    |
|  69|[0x80002624]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x15 and fm2 == 0x6097c5 and rm_val == 0  #nosat<br>                                                                                              |[0x80000894]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000898]:csrrs a7, fflags, zero<br> [0x8000089c]:fsw fa2, 544(a5)<br>    |
|  70|[0x8000262c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x12 and fm2 == 0x33ac9e and rm_val == 0  #nosat<br>                                                                                              |[0x800008b0]:fsub.s fa2, fa0, fa1, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsw fa2, 552(a5)<br>    |
|  71|[0x80002634]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x0fbd4b and rm_val == 0  #nosat<br>                                                                                              |[0x800008cc]:fsub.s fa2, fa0, fa1, dyn<br> [0x800008d0]:csrrs a7, fflags, zero<br> [0x800008d4]:fsw fa2, 560(a5)<br>    |
|  72|[0x8000263c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x178cde and rm_val == 0  #nosat<br>                                                                                              |[0x800008e8]:fsub.s fa2, fa0, fa1, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa2, 568(a5)<br>    |
|  73|[0x80002644]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf1 and fm1 == 0x535630 and fs2 == 0 and fe2 == 0xea and fm2 == 0x2a9c66 and rm_val == 0  #nosat<br>                                                                                              |[0x80000904]:fsub.s fa2, fa0, fa1, dyn<br> [0x80000908]:csrrs a7, fflags, zero<br> [0x8000090c]:fsw fa2, 576(a5)<br>    |
