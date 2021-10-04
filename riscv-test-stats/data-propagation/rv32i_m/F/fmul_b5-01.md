
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001960')]      |
| SIG_REGION                | [('0x80003804', '0x80003ef4', '444 words')]      |
| COV_LABELS                | fmul_b5      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmul_b5-01.S/ref.S    |
| Total Number of coverpoints| 328     |
| Total Coverpoints Hit     | 322      |
| Total Signature Updates   | 444      |
| STAT1                     | 222      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 222     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmul.s', 'rs1 : f26', 'rs2 : f26', 'rd : f26', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000124]:fmul.s fs10, fs10, fs10, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw fs10, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x80003808]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f18', 'rd : f17', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000140]:fmul.s fa7, ft11, fs2, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw fa7, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80003810]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f3', 'rd : f9', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000015c]:fmul.s fs1, ft3, ft3, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw fs1, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x80003818]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f22', 'rd : f27', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000178]:fmul.s fs11, fs11, fs6, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw fs11, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x80003820]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f19', 'rd : f19', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000194]:fmul.s fs3, ft6, fs3, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw fs3, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x80003828]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f27', 'rd : f10', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmul.s fa0, fs6, fs11, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw fa0, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x80003830]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f14', 'rd : f7', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fmul.s ft7, fa6, fa4, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw ft7, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x80003838]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f7', 'rd : f22', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fmul.s fs6, fa3, ft7, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw fs6, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x80003840]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f30', 'rd : f29', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000204]:fmul.s ft9, fa5, ft10, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw ft9, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80003848]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f31', 'rd : f24', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000220]:fmul.s fs8, fs9, ft11, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw fs8, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x80003850]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f6', 'rd : f1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fmul.s ft1, fs1, ft6, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw ft1, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x80003858]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f15', 'rd : f21', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000258]:fmul.s fs5, fs4, fa5, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw fs5, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x80003860]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f21', 'rd : f4', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000274]:fmul.s ft4, ft10, fs5, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw ft4, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x80003868]:0x00000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f28', 'rd : f5', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000290]:fmul.s ft5, fa0, ft8, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw ft5, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x80003870]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f20', 'rd : f6', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fmul.s ft6, fa7, fs4, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw ft6, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x80003878]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f11', 'rd : f23', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fmul.s fs7, ft9, fa1, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fs7, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x80003880]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f0', 'rd : f25', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fmul.s fs9, ft4, ft0, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw fs9, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x80003888]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f8', 'rd : f14', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000300]:fmul.s fa4, ft7, fs0, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fa4, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x80003890]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f23', 'rd : f20', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fmul.s fs4, fs0, fs7, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw fs4, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x80003898]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f12', 'rd : f2', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000338]:fmul.s ft2, ft0, fa2, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw ft2, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x800038a0]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f9', 'rd : f0', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fmul.s ft0, fs5, fs1, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw ft0, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x800038a8]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f17', 'rd : f3', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000370]:fmul.s ft3, fs2, fa7, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw ft3, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x800038b0]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f16', 'rd : f8', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fmul.s fs0, fs3, fa6, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw fs0, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x800038b8]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f29', 'rd : f13', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmul.s fa3, fa2, ft9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fa3, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x800038c0]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f5', 'rd : f11', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fmul.s fa1, ft2, ft5, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw fa1, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x800038c8]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f2', 'rd : f28', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fmul.s ft8, ft1, ft2, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw ft8, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x800038d0]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f13', 'rd : f12', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fmul.s fa2, fs7, fa3, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fa2, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x800038d8]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f24', 'rd : f18', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000418]:fmul.s fs2, fa1, fs8, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fs2, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x800038e0]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f25', 'rd : f15', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000434]:fmul.s fa5, ft5, fs9, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw fa5, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x800038e8]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f10', 'rd : f30', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000450]:fmul.s ft10, ft8, fa0, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw ft10, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x800038f0]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f4', 'rd : f31', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fmul.s ft11, fa4, ft4, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw ft11, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x800038f8]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f1', 'rd : f16', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000488]:fmul.s fa6, fs8, ft1, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fa6, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x80003900]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x80003908]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x80003910]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x80003918]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x80003920]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000514]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x80003928]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000530]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x80003930]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x80003938]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x80003940]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x80003948]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x80003950]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x80003958]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x80003960]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x80003968]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x80003970]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x80003978]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000648]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x80003980]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000664]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x80003988]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x80003990]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x80003998]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x800039a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006d8]:csrrs a7, fflags, zero
	-[0x800006dc]:fsw fa2, 416(a5)
Current Store : [0x800006e0] : sw a7, 420(a5) -- Store: [0x800039a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa2, 424(a5)
Current Store : [0x800006fc] : sw a7, 428(a5) -- Store: [0x800039b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000070c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000710]:csrrs a7, fflags, zero
	-[0x80000714]:fsw fa2, 432(a5)
Current Store : [0x80000718] : sw a7, 436(a5) -- Store: [0x800039b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000728]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa2, 440(a5)
Current Store : [0x80000734] : sw a7, 444(a5) -- Store: [0x800039c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000744]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000748]:csrrs a7, fflags, zero
	-[0x8000074c]:fsw fa2, 448(a5)
Current Store : [0x80000750] : sw a7, 452(a5) -- Store: [0x800039c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsw fa2, 456(a5)
Current Store : [0x8000076c] : sw a7, 460(a5) -- Store: [0x800039d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000077c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000780]:csrrs a7, fflags, zero
	-[0x80000784]:fsw fa2, 464(a5)
Current Store : [0x80000788] : sw a7, 468(a5) -- Store: [0x800039d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000798]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa2, 472(a5)
Current Store : [0x800007a4] : sw a7, 476(a5) -- Store: [0x800039e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007b8]:csrrs a7, fflags, zero
	-[0x800007bc]:fsw fa2, 480(a5)
Current Store : [0x800007c0] : sw a7, 484(a5) -- Store: [0x800039e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:fsw fa2, 488(a5)
Current Store : [0x800007dc] : sw a7, 492(a5) -- Store: [0x800039f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsw fa2, 496(a5)
Current Store : [0x800007f8] : sw a7, 500(a5) -- Store: [0x800039f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000808]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa2, 504(a5)
Current Store : [0x80000814] : sw a7, 508(a5) -- Store: [0x80003a00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000824]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000828]:csrrs a7, fflags, zero
	-[0x8000082c]:fsw fa2, 512(a5)
Current Store : [0x80000830] : sw a7, 516(a5) -- Store: [0x80003a08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa2, 520(a5)
Current Store : [0x8000084c] : sw a7, 524(a5) -- Store: [0x80003a10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000085c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000860]:csrrs a7, fflags, zero
	-[0x80000864]:fsw fa2, 528(a5)
Current Store : [0x80000868] : sw a7, 532(a5) -- Store: [0x80003a18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000878]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:fsw fa2, 536(a5)
Current Store : [0x80000884] : sw a7, 540(a5) -- Store: [0x80003a20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000894]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000898]:csrrs a7, fflags, zero
	-[0x8000089c]:fsw fa2, 544(a5)
Current Store : [0x800008a0] : sw a7, 548(a5) -- Store: [0x80003a28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsw fa2, 552(a5)
Current Store : [0x800008bc] : sw a7, 556(a5) -- Store: [0x80003a30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008d0]:csrrs a7, fflags, zero
	-[0x800008d4]:fsw fa2, 560(a5)
Current Store : [0x800008d8] : sw a7, 564(a5) -- Store: [0x80003a38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa2, 568(a5)
Current Store : [0x800008f4] : sw a7, 572(a5) -- Store: [0x80003a40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000904]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000908]:csrrs a7, fflags, zero
	-[0x8000090c]:fsw fa2, 576(a5)
Current Store : [0x80000910] : sw a7, 580(a5) -- Store: [0x80003a48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsw fa2, 584(a5)
Current Store : [0x8000092c] : sw a7, 588(a5) -- Store: [0x80003a50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000093c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000940]:csrrs a7, fflags, zero
	-[0x80000944]:fsw fa2, 592(a5)
Current Store : [0x80000948] : sw a7, 596(a5) -- Store: [0x80003a58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsw fa2, 600(a5)
Current Store : [0x80000964] : sw a7, 604(a5) -- Store: [0x80003a60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000974]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000978]:csrrs a7, fflags, zero
	-[0x8000097c]:fsw fa2, 608(a5)
Current Store : [0x80000980] : sw a7, 612(a5) -- Store: [0x80003a68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000990]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:fsw fa2, 616(a5)
Current Store : [0x8000099c] : sw a7, 620(a5) -- Store: [0x80003a70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009b0]:csrrs a7, fflags, zero
	-[0x800009b4]:fsw fa2, 624(a5)
Current Store : [0x800009b8] : sw a7, 628(a5) -- Store: [0x80003a78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa2, 632(a5)
Current Store : [0x800009d4] : sw a7, 636(a5) -- Store: [0x80003a80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009e8]:csrrs a7, fflags, zero
	-[0x800009ec]:fsw fa2, 640(a5)
Current Store : [0x800009f0] : sw a7, 644(a5) -- Store: [0x80003a88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsw fa2, 648(a5)
Current Store : [0x80000a0c] : sw a7, 652(a5) -- Store: [0x80003a90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a20]:csrrs a7, fflags, zero
	-[0x80000a24]:fsw fa2, 656(a5)
Current Store : [0x80000a28] : sw a7, 660(a5) -- Store: [0x80003a98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:fsw fa2, 664(a5)
Current Store : [0x80000a44] : sw a7, 668(a5) -- Store: [0x80003aa0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a58]:csrrs a7, fflags, zero
	-[0x80000a5c]:fsw fa2, 672(a5)
Current Store : [0x80000a60] : sw a7, 676(a5) -- Store: [0x80003aa8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a74]:csrrs a7, fflags, zero
	-[0x80000a78]:fsw fa2, 680(a5)
Current Store : [0x80000a7c] : sw a7, 684(a5) -- Store: [0x80003ab0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a90]:csrrs a7, fflags, zero
	-[0x80000a94]:fsw fa2, 688(a5)
Current Store : [0x80000a98] : sw a7, 692(a5) -- Store: [0x80003ab8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa2, 696(a5)
Current Store : [0x80000ab4] : sw a7, 700(a5) -- Store: [0x80003ac0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ac8]:csrrs a7, fflags, zero
	-[0x80000acc]:fsw fa2, 704(a5)
Current Store : [0x80000ad0] : sw a7, 708(a5) -- Store: [0x80003ac8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsw fa2, 712(a5)
Current Store : [0x80000aec] : sw a7, 716(a5) -- Store: [0x80003ad0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000afc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b00]:csrrs a7, fflags, zero
	-[0x80000b04]:fsw fa2, 720(a5)
Current Store : [0x80000b08] : sw a7, 724(a5) -- Store: [0x80003ad8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b1c]:csrrs a7, fflags, zero
	-[0x80000b20]:fsw fa2, 728(a5)
Current Store : [0x80000b24] : sw a7, 732(a5) -- Store: [0x80003ae0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b38]:csrrs a7, fflags, zero
	-[0x80000b3c]:fsw fa2, 736(a5)
Current Store : [0x80000b40] : sw a7, 740(a5) -- Store: [0x80003ae8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:fsw fa2, 744(a5)
Current Store : [0x80000b5c] : sw a7, 748(a5) -- Store: [0x80003af0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b70]:csrrs a7, fflags, zero
	-[0x80000b74]:fsw fa2, 752(a5)
Current Store : [0x80000b78] : sw a7, 756(a5) -- Store: [0x80003af8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa2, 760(a5)
Current Store : [0x80000b94] : sw a7, 764(a5) -- Store: [0x80003b00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ba8]:csrrs a7, fflags, zero
	-[0x80000bac]:fsw fa2, 768(a5)
Current Store : [0x80000bb0] : sw a7, 772(a5) -- Store: [0x80003b08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsw fa2, 776(a5)
Current Store : [0x80000bcc] : sw a7, 780(a5) -- Store: [0x80003b10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000be0]:csrrs a7, fflags, zero
	-[0x80000be4]:fsw fa2, 784(a5)
Current Store : [0x80000be8] : sw a7, 788(a5) -- Store: [0x80003b18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:fsw fa2, 792(a5)
Current Store : [0x80000c04] : sw a7, 796(a5) -- Store: [0x80003b20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c18]:csrrs a7, fflags, zero
	-[0x80000c1c]:fsw fa2, 800(a5)
Current Store : [0x80000c20] : sw a7, 804(a5) -- Store: [0x80003b28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:fsw fa2, 808(a5)
Current Store : [0x80000c3c] : sw a7, 812(a5) -- Store: [0x80003b30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c50]:csrrs a7, fflags, zero
	-[0x80000c54]:fsw fa2, 816(a5)
Current Store : [0x80000c58] : sw a7, 820(a5) -- Store: [0x80003b38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c6c]:csrrs a7, fflags, zero
	-[0x80000c70]:fsw fa2, 824(a5)
Current Store : [0x80000c74] : sw a7, 828(a5) -- Store: [0x80003b40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c88]:csrrs a7, fflags, zero
	-[0x80000c8c]:fsw fa2, 832(a5)
Current Store : [0x80000c90] : sw a7, 836(a5) -- Store: [0x80003b48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsw fa2, 840(a5)
Current Store : [0x80000cac] : sw a7, 844(a5) -- Store: [0x80003b50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cc0]:csrrs a7, fflags, zero
	-[0x80000cc4]:fsw fa2, 848(a5)
Current Store : [0x80000cc8] : sw a7, 852(a5) -- Store: [0x80003b58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:fsw fa2, 856(a5)
Current Store : [0x80000ce4] : sw a7, 860(a5) -- Store: [0x80003b60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cf8]:csrrs a7, fflags, zero
	-[0x80000cfc]:fsw fa2, 864(a5)
Current Store : [0x80000d00] : sw a7, 868(a5) -- Store: [0x80003b68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d14]:csrrs a7, fflags, zero
	-[0x80000d18]:fsw fa2, 872(a5)
Current Store : [0x80000d1c] : sw a7, 876(a5) -- Store: [0x80003b70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d30]:csrrs a7, fflags, zero
	-[0x80000d34]:fsw fa2, 880(a5)
Current Store : [0x80000d38] : sw a7, 884(a5) -- Store: [0x80003b78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsw fa2, 888(a5)
Current Store : [0x80000d54] : sw a7, 892(a5) -- Store: [0x80003b80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d68]:csrrs a7, fflags, zero
	-[0x80000d6c]:fsw fa2, 896(a5)
Current Store : [0x80000d70] : sw a7, 900(a5) -- Store: [0x80003b88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsw fa2, 904(a5)
Current Store : [0x80000d8c] : sw a7, 908(a5) -- Store: [0x80003b90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000da0]:csrrs a7, fflags, zero
	-[0x80000da4]:fsw fa2, 912(a5)
Current Store : [0x80000da8] : sw a7, 916(a5) -- Store: [0x80003b98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000db8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dbc]:csrrs a7, fflags, zero
	-[0x80000dc0]:fsw fa2, 920(a5)
Current Store : [0x80000dc4] : sw a7, 924(a5) -- Store: [0x80003ba0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dd8]:csrrs a7, fflags, zero
	-[0x80000ddc]:fsw fa2, 928(a5)
Current Store : [0x80000de0] : sw a7, 932(a5) -- Store: [0x80003ba8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000df0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:fsw fa2, 936(a5)
Current Store : [0x80000dfc] : sw a7, 940(a5) -- Store: [0x80003bb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e10]:csrrs a7, fflags, zero
	-[0x80000e14]:fsw fa2, 944(a5)
Current Store : [0x80000e18] : sw a7, 948(a5) -- Store: [0x80003bb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa2, 952(a5)
Current Store : [0x80000e34] : sw a7, 956(a5) -- Store: [0x80003bc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e48]:csrrs a7, fflags, zero
	-[0x80000e4c]:fsw fa2, 960(a5)
Current Store : [0x80000e50] : sw a7, 964(a5) -- Store: [0x80003bc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e64]:csrrs a7, fflags, zero
	-[0x80000e68]:fsw fa2, 968(a5)
Current Store : [0x80000e6c] : sw a7, 972(a5) -- Store: [0x80003bd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e80]:csrrs a7, fflags, zero
	-[0x80000e84]:fsw fa2, 976(a5)
Current Store : [0x80000e88] : sw a7, 980(a5) -- Store: [0x80003bd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:fsw fa2, 984(a5)
Current Store : [0x80000ea4] : sw a7, 988(a5) -- Store: [0x80003be0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000eb8]:csrrs a7, fflags, zero
	-[0x80000ebc]:fsw fa2, 992(a5)
Current Store : [0x80000ec0] : sw a7, 996(a5) -- Store: [0x80003be8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:fsw fa2, 1000(a5)
Current Store : [0x80000edc] : sw a7, 1004(a5) -- Store: [0x80003bf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000eec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ef0]:csrrs a7, fflags, zero
	-[0x80000ef4]:fsw fa2, 1008(a5)
Current Store : [0x80000ef8] : sw a7, 1012(a5) -- Store: [0x80003bf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f0c]:csrrs a7, fflags, zero
	-[0x80000f10]:fsw fa2, 1016(a5)
Current Store : [0x80000f14] : sw a7, 1020(a5) -- Store: [0x80003c00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsw fa2, 1024(a5)
Current Store : [0x80000f30] : sw a7, 1028(a5) -- Store: [0x80003c08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:fsw fa2, 1032(a5)
Current Store : [0x80000f4c] : sw a7, 1036(a5) -- Store: [0x80003c10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f60]:csrrs a7, fflags, zero
	-[0x80000f64]:fsw fa2, 1040(a5)
Current Store : [0x80000f68] : sw a7, 1044(a5) -- Store: [0x80003c18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:fsw fa2, 1048(a5)
Current Store : [0x80000f84] : sw a7, 1052(a5) -- Store: [0x80003c20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f98]:csrrs a7, fflags, zero
	-[0x80000f9c]:fsw fa2, 1056(a5)
Current Store : [0x80000fa0] : sw a7, 1060(a5) -- Store: [0x80003c28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fb4]:csrrs a7, fflags, zero
	-[0x80000fb8]:fsw fa2, 1064(a5)
Current Store : [0x80000fbc] : sw a7, 1068(a5) -- Store: [0x80003c30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fd0]:csrrs a7, fflags, zero
	-[0x80000fd4]:fsw fa2, 1072(a5)
Current Store : [0x80000fd8] : sw a7, 1076(a5) -- Store: [0x80003c38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fec]:csrrs a7, fflags, zero
	-[0x80000ff0]:fsw fa2, 1080(a5)
Current Store : [0x80000ff4] : sw a7, 1084(a5) -- Store: [0x80003c40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsw fa2, 1088(a5)
Current Store : [0x80001010] : sw a7, 1092(a5) -- Store: [0x80003c48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001020]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsw fa2, 1096(a5)
Current Store : [0x8000102c] : sw a7, 1100(a5) -- Store: [0x80003c50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000103c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001040]:csrrs a7, fflags, zero
	-[0x80001044]:fsw fa2, 1104(a5)
Current Store : [0x80001048] : sw a7, 1108(a5) -- Store: [0x80003c58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001058]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000105c]:csrrs a7, fflags, zero
	-[0x80001060]:fsw fa2, 1112(a5)
Current Store : [0x80001064] : sw a7, 1116(a5) -- Store: [0x80003c60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001074]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001078]:csrrs a7, fflags, zero
	-[0x8000107c]:fsw fa2, 1120(a5)
Current Store : [0x80001080] : sw a7, 1124(a5) -- Store: [0x80003c68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001090]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001094]:csrrs a7, fflags, zero
	-[0x80001098]:fsw fa2, 1128(a5)
Current Store : [0x8000109c] : sw a7, 1132(a5) -- Store: [0x80003c70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010b0]:csrrs a7, fflags, zero
	-[0x800010b4]:fsw fa2, 1136(a5)
Current Store : [0x800010b8] : sw a7, 1140(a5) -- Store: [0x80003c78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa2, 1144(a5)
Current Store : [0x800010d4] : sw a7, 1148(a5) -- Store: [0x80003c80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsw fa2, 1152(a5)
Current Store : [0x800010f0] : sw a7, 1156(a5) -- Store: [0x80003c88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001100]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001104]:csrrs a7, fflags, zero
	-[0x80001108]:fsw fa2, 1160(a5)
Current Store : [0x8000110c] : sw a7, 1164(a5) -- Store: [0x80003c90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000111c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001120]:csrrs a7, fflags, zero
	-[0x80001124]:fsw fa2, 1168(a5)
Current Store : [0x80001128] : sw a7, 1172(a5) -- Store: [0x80003c98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001138]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000113c]:csrrs a7, fflags, zero
	-[0x80001140]:fsw fa2, 1176(a5)
Current Store : [0x80001144] : sw a7, 1180(a5) -- Store: [0x80003ca0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001154]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001158]:csrrs a7, fflags, zero
	-[0x8000115c]:fsw fa2, 1184(a5)
Current Store : [0x80001160] : sw a7, 1188(a5) -- Store: [0x80003ca8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001170]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:fsw fa2, 1192(a5)
Current Store : [0x8000117c] : sw a7, 1196(a5) -- Store: [0x80003cb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000118c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001190]:csrrs a7, fflags, zero
	-[0x80001194]:fsw fa2, 1200(a5)
Current Store : [0x80001198] : sw a7, 1204(a5) -- Store: [0x80003cb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800011a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011ac]:csrrs a7, fflags, zero
	-[0x800011b0]:fsw fa2, 1208(a5)
Current Store : [0x800011b4] : sw a7, 1212(a5) -- Store: [0x80003cc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsw fa2, 1216(a5)
Current Store : [0x800011d0] : sw a7, 1220(a5) -- Store: [0x80003cc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011e4]:csrrs a7, fflags, zero
	-[0x800011e8]:fsw fa2, 1224(a5)
Current Store : [0x800011ec] : sw a7, 1228(a5) -- Store: [0x80003cd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001200]:csrrs a7, fflags, zero
	-[0x80001204]:fsw fa2, 1232(a5)
Current Store : [0x80001208] : sw a7, 1236(a5) -- Store: [0x80003cd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001218]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:fsw fa2, 1240(a5)
Current Store : [0x80001224] : sw a7, 1244(a5) -- Store: [0x80003ce0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001234]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001238]:csrrs a7, fflags, zero
	-[0x8000123c]:fsw fa2, 1248(a5)
Current Store : [0x80001240] : sw a7, 1252(a5) -- Store: [0x80003ce8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001250]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001254]:csrrs a7, fflags, zero
	-[0x80001258]:fsw fa2, 1256(a5)
Current Store : [0x8000125c] : sw a7, 1260(a5) -- Store: [0x80003cf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000126c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001270]:csrrs a7, fflags, zero
	-[0x80001274]:fsw fa2, 1264(a5)
Current Store : [0x80001278] : sw a7, 1268(a5) -- Store: [0x80003cf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001288]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000128c]:csrrs a7, fflags, zero
	-[0x80001290]:fsw fa2, 1272(a5)
Current Store : [0x80001294] : sw a7, 1276(a5) -- Store: [0x80003d00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsw fa2, 1280(a5)
Current Store : [0x800012b0] : sw a7, 1284(a5) -- Store: [0x80003d08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800012c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:fsw fa2, 1288(a5)
Current Store : [0x800012cc] : sw a7, 1292(a5) -- Store: [0x80003d10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012e0]:csrrs a7, fflags, zero
	-[0x800012e4]:fsw fa2, 1296(a5)
Current Store : [0x800012e8] : sw a7, 1300(a5) -- Store: [0x80003d18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012fc]:csrrs a7, fflags, zero
	-[0x80001300]:fsw fa2, 1304(a5)
Current Store : [0x80001304] : sw a7, 1308(a5) -- Store: [0x80003d20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001314]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001318]:csrrs a7, fflags, zero
	-[0x8000131c]:fsw fa2, 1312(a5)
Current Store : [0x80001320] : sw a7, 1316(a5) -- Store: [0x80003d28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001330]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001334]:csrrs a7, fflags, zero
	-[0x80001338]:fsw fa2, 1320(a5)
Current Store : [0x8000133c] : sw a7, 1324(a5) -- Store: [0x80003d30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000134c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001350]:csrrs a7, fflags, zero
	-[0x80001354]:fsw fa2, 1328(a5)
Current Store : [0x80001358] : sw a7, 1332(a5) -- Store: [0x80003d38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001368]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:fsw fa2, 1336(a5)
Current Store : [0x80001374] : sw a7, 1340(a5) -- Store: [0x80003d40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsw fa2, 1344(a5)
Current Store : [0x80001390] : sw a7, 1348(a5) -- Store: [0x80003d48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013a4]:csrrs a7, fflags, zero
	-[0x800013a8]:fsw fa2, 1352(a5)
Current Store : [0x800013ac] : sw a7, 1356(a5) -- Store: [0x80003d50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013c0]:csrrs a7, fflags, zero
	-[0x800013c4]:fsw fa2, 1360(a5)
Current Store : [0x800013c8] : sw a7, 1364(a5) -- Store: [0x80003d58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800013d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013dc]:csrrs a7, fflags, zero
	-[0x800013e0]:fsw fa2, 1368(a5)
Current Store : [0x800013e4] : sw a7, 1372(a5) -- Store: [0x80003d60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013f8]:csrrs a7, fflags, zero
	-[0x800013fc]:fsw fa2, 1376(a5)
Current Store : [0x80001400] : sw a7, 1380(a5) -- Store: [0x80003d68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001410]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001414]:csrrs a7, fflags, zero
	-[0x80001418]:fsw fa2, 1384(a5)
Current Store : [0x8000141c] : sw a7, 1388(a5) -- Store: [0x80003d70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsw fa2, 1392(a5)
Current Store : [0x80001438] : sw a7, 1396(a5) -- Store: [0x80003d78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001448]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000144c]:csrrs a7, fflags, zero
	-[0x80001450]:fsw fa2, 1400(a5)
Current Store : [0x80001454] : sw a7, 1404(a5) -- Store: [0x80003d80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001464]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001468]:csrrs a7, fflags, zero
	-[0x8000146c]:fsw fa2, 1408(a5)
Current Store : [0x80001470] : sw a7, 1412(a5) -- Store: [0x80003d88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001480]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001484]:csrrs a7, fflags, zero
	-[0x80001488]:fsw fa2, 1416(a5)
Current Store : [0x8000148c] : sw a7, 1420(a5) -- Store: [0x80003d90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000149c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014a0]:csrrs a7, fflags, zero
	-[0x800014a4]:fsw fa2, 1424(a5)
Current Store : [0x800014a8] : sw a7, 1428(a5) -- Store: [0x80003d98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014bc]:csrrs a7, fflags, zero
	-[0x800014c0]:fsw fa2, 1432(a5)
Current Store : [0x800014c4] : sw a7, 1436(a5) -- Store: [0x80003da0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014d8]:csrrs a7, fflags, zero
	-[0x800014dc]:fsw fa2, 1440(a5)
Current Store : [0x800014e0] : sw a7, 1444(a5) -- Store: [0x80003da8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800014f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014f4]:csrrs a7, fflags, zero
	-[0x800014f8]:fsw fa2, 1448(a5)
Current Store : [0x800014fc] : sw a7, 1452(a5) -- Store: [0x80003db0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsw fa2, 1456(a5)
Current Store : [0x80001518] : sw a7, 1460(a5) -- Store: [0x80003db8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001528]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000152c]:csrrs a7, fflags, zero
	-[0x80001530]:fsw fa2, 1464(a5)
Current Store : [0x80001534] : sw a7, 1468(a5) -- Store: [0x80003dc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001544]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001548]:csrrs a7, fflags, zero
	-[0x8000154c]:fsw fa2, 1472(a5)
Current Store : [0x80001550] : sw a7, 1476(a5) -- Store: [0x80003dc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001560]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001564]:csrrs a7, fflags, zero
	-[0x80001568]:fsw fa2, 1480(a5)
Current Store : [0x8000156c] : sw a7, 1484(a5) -- Store: [0x80003dd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000157c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001580]:csrrs a7, fflags, zero
	-[0x80001584]:fsw fa2, 1488(a5)
Current Store : [0x80001588] : sw a7, 1492(a5) -- Store: [0x80003dd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001598]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000159c]:csrrs a7, fflags, zero
	-[0x800015a0]:fsw fa2, 1496(a5)
Current Store : [0x800015a4] : sw a7, 1500(a5) -- Store: [0x80003de0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015b8]:csrrs a7, fflags, zero
	-[0x800015bc]:fsw fa2, 1504(a5)
Current Store : [0x800015c0] : sw a7, 1508(a5) -- Store: [0x80003de8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015d4]:csrrs a7, fflags, zero
	-[0x800015d8]:fsw fa2, 1512(a5)
Current Store : [0x800015dc] : sw a7, 1516(a5) -- Store: [0x80003df0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsw fa2, 1520(a5)
Current Store : [0x800015f8] : sw a7, 1524(a5) -- Store: [0x80003df8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001608]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:fsw fa2, 1528(a5)
Current Store : [0x80001614] : sw a7, 1532(a5) -- Store: [0x80003e00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001624]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001628]:csrrs a7, fflags, zero
	-[0x8000162c]:fsw fa2, 1536(a5)
Current Store : [0x80001630] : sw a7, 1540(a5) -- Store: [0x80003e08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001640]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001644]:csrrs a7, fflags, zero
	-[0x80001648]:fsw fa2, 1544(a5)
Current Store : [0x8000164c] : sw a7, 1548(a5) -- Store: [0x80003e10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000165c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001660]:csrrs a7, fflags, zero
	-[0x80001664]:fsw fa2, 1552(a5)
Current Store : [0x80001668] : sw a7, 1556(a5) -- Store: [0x80003e18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001678]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000167c]:csrrs a7, fflags, zero
	-[0x80001680]:fsw fa2, 1560(a5)
Current Store : [0x80001684] : sw a7, 1564(a5) -- Store: [0x80003e20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001694]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001698]:csrrs a7, fflags, zero
	-[0x8000169c]:fsw fa2, 1568(a5)
Current Store : [0x800016a0] : sw a7, 1572(a5) -- Store: [0x80003e28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016b4]:csrrs a7, fflags, zero
	-[0x800016b8]:fsw fa2, 1576(a5)
Current Store : [0x800016bc] : sw a7, 1580(a5) -- Store: [0x80003e30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsw fa2, 1584(a5)
Current Store : [0x800016d8] : sw a7, 1588(a5) -- Store: [0x80003e38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016ec]:csrrs a7, fflags, zero
	-[0x800016f0]:fsw fa2, 1592(a5)
Current Store : [0x800016f4] : sw a7, 1596(a5) -- Store: [0x80003e40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001704]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001708]:csrrs a7, fflags, zero
	-[0x8000170c]:fsw fa2, 1600(a5)
Current Store : [0x80001710] : sw a7, 1604(a5) -- Store: [0x80003e48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001720]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001724]:csrrs a7, fflags, zero
	-[0x80001728]:fsw fa2, 1608(a5)
Current Store : [0x8000172c] : sw a7, 1612(a5) -- Store: [0x80003e50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000173c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001740]:csrrs a7, fflags, zero
	-[0x80001744]:fsw fa2, 1616(a5)
Current Store : [0x80001748] : sw a7, 1620(a5) -- Store: [0x80003e58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001758]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000175c]:csrrs a7, fflags, zero
	-[0x80001760]:fsw fa2, 1624(a5)
Current Store : [0x80001764] : sw a7, 1628(a5) -- Store: [0x80003e60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001774]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001778]:csrrs a7, fflags, zero
	-[0x8000177c]:fsw fa2, 1632(a5)
Current Store : [0x80001780] : sw a7, 1636(a5) -- Store: [0x80003e68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001790]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001794]:csrrs a7, fflags, zero
	-[0x80001798]:fsw fa2, 1640(a5)
Current Store : [0x8000179c] : sw a7, 1644(a5) -- Store: [0x80003e70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsw fa2, 1648(a5)
Current Store : [0x800017b8] : sw a7, 1652(a5) -- Store: [0x80003e78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017cc]:csrrs a7, fflags, zero
	-[0x800017d0]:fsw fa2, 1656(a5)
Current Store : [0x800017d4] : sw a7, 1660(a5) -- Store: [0x80003e80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017e8]:csrrs a7, fflags, zero
	-[0x800017ec]:fsw fa2, 1664(a5)
Current Store : [0x800017f0] : sw a7, 1668(a5) -- Store: [0x80003e88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001800]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001804]:csrrs a7, fflags, zero
	-[0x80001808]:fsw fa2, 1672(a5)
Current Store : [0x8000180c] : sw a7, 1676(a5) -- Store: [0x80003e90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000181c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001820]:csrrs a7, fflags, zero
	-[0x80001824]:fsw fa2, 1680(a5)
Current Store : [0x80001828] : sw a7, 1684(a5) -- Store: [0x80003e98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001838]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000183c]:csrrs a7, fflags, zero
	-[0x80001840]:fsw fa2, 1688(a5)
Current Store : [0x80001844] : sw a7, 1692(a5) -- Store: [0x80003ea0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001854]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001858]:csrrs a7, fflags, zero
	-[0x8000185c]:fsw fa2, 1696(a5)
Current Store : [0x80001860] : sw a7, 1700(a5) -- Store: [0x80003ea8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001870]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001874]:csrrs a7, fflags, zero
	-[0x80001878]:fsw fa2, 1704(a5)
Current Store : [0x8000187c] : sw a7, 1708(a5) -- Store: [0x80003eb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsw fa2, 1712(a5)
Current Store : [0x80001898] : sw a7, 1716(a5) -- Store: [0x80003eb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018ac]:csrrs a7, fflags, zero
	-[0x800018b0]:fsw fa2, 1720(a5)
Current Store : [0x800018b4] : sw a7, 1724(a5) -- Store: [0x80003ec0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800018c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018c8]:csrrs a7, fflags, zero
	-[0x800018cc]:fsw fa2, 1728(a5)
Current Store : [0x800018d0] : sw a7, 1732(a5) -- Store: [0x80003ec8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018e4]:csrrs a7, fflags, zero
	-[0x800018e8]:fsw fa2, 1736(a5)
Current Store : [0x800018ec] : sw a7, 1740(a5) -- Store: [0x80003ed0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001900]:csrrs a7, fflags, zero
	-[0x80001904]:fsw fa2, 1744(a5)
Current Store : [0x80001908] : sw a7, 1748(a5) -- Store: [0x80003ed8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001918]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000191c]:csrrs a7, fflags, zero
	-[0x80001920]:fsw fa2, 1752(a5)
Current Store : [0x80001924] : sw a7, 1756(a5) -- Store: [0x80003ee0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001934]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001938]:csrrs a7, fflags, zero
	-[0x8000193c]:fsw fa2, 1760(a5)
Current Store : [0x80001940] : sw a7, 1764(a5) -- Store: [0x80003ee8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001950]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsw fa2, 1768(a5)
Current Store : [0x8000195c] : sw a7, 1772(a5) -- Store: [0x80003ef0]:0x00000005





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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                                         code                                                          |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003804]<br>0x76DF56FF|- opcode : fmul.s<br> - rs1 : f26<br> - rs2 : f26<br> - rd : f26<br> - rs1 == rs2 == rd<br>                                                                                                                              |[0x80000124]:fmul.s fs10, fs10, fs10, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw fs10, 0(a5)<br> |
|   2|[0x8000380c]<br>0x00000005|- rs1 : f31<br> - rs2 : f18<br> - rd : f17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br> |[0x80000140]:fmul.s fa7, ft11, fs2, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw fa7, 8(a5)<br>    |
|   3|[0x80003814]<br>0xADFEEDBE|- rs1 : f3<br> - rs2 : f3<br> - rd : f9<br> - rs1 == rs2 != rd<br>                                                                                                                                                       |[0x8000015c]:fmul.s fs1, ft3, ft3, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw fs1, 16(a5)<br>    |
|   4|[0x8000381c]<br>0xBB6FAB7F|- rs1 : f27<br> - rs2 : f22<br> - rd : f27<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                        |[0x80000178]:fmul.s fs11, fs11, fs6, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw fs11, 24(a5)<br> |
|   5|[0x80003824]<br>0x6FAB7FBB|- rs1 : f6<br> - rs2 : f19<br> - rd : f19<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                         |[0x80000194]:fmul.s fs3, ft6, fs3, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw fs3, 32(a5)<br>    |
|   6|[0x8000382c]<br>0x56FF76DF|- rs1 : f22<br> - rs2 : f27<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                               |[0x800001b0]:fmul.s fa0, fs6, fs11, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw fa0, 40(a5)<br>   |
|   7|[0x80003834]<br>0xB7FBB6FA|- rs1 : f16<br> - rs2 : f14<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                |[0x800001cc]:fmul.s ft7, fa6, fa4, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw ft7, 48(a5)<br>    |
|   8|[0x8000383c]<br>0x6DF56FF7|- rs1 : f13<br> - rs2 : f7<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x800001e8]:fmul.s fs6, fa3, ft7, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fs6, 56(a5)<br>    |
|   9|[0x80003844]<br>0xEEDBEADF|- rs1 : f15<br> - rs2 : f30<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                               |[0x80000204]:fmul.s ft9, fa5, ft10, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw ft9, 64(a5)<br>   |
|  10|[0x8000384c]<br>0xDB7D5BFD|- rs1 : f25<br> - rs2 : f31<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                               |[0x80000220]:fmul.s fs8, fs9, ft11, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fs8, 72(a5)<br>   |
|  11|[0x80003854]<br>0xFEEDBEAD|- rs1 : f9<br> - rs2 : f6<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                  |[0x8000023c]:fmul.s ft1, fs1, ft6, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw ft1, 80(a5)<br>    |
|  12|[0x8000385c]<br>0xDBEADFEE|- rs1 : f20<br> - rs2 : f15<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                               |[0x80000258]:fmul.s fs5, fs4, fa5, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw fs5, 88(a5)<br>    |
|  13|[0x80003864]<br>0xBFDDB7D5|- rs1 : f30<br> - rs2 : f21<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000274]:fmul.s ft4, ft10, fs5, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw ft4, 96(a5)<br>   |
|  14|[0x8000386c]<br>0x800000F8|- rs1 : f10<br> - rs2 : f28<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                |[0x80000290]:fmul.s ft5, fa0, ft8, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw ft5, 104(a5)<br>   |
|  15|[0x80003874]<br>0x80003000|- rs1 : f17<br> - rs2 : f20<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                |[0x800002ac]:fmul.s ft6, fa7, fs4, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw ft6, 112(a5)<br>   |
|  16|[0x8000387c]<br>0xB6FAB7FB|- rs1 : f29<br> - rs2 : f11<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                               |[0x800002c8]:fmul.s fs7, ft9, fa1, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fs7, 120(a5)<br>   |
|  17|[0x80003884]<br>0xEDBEADFE|- rs1 : f4<br> - rs2 : f0<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                 |[0x800002e4]:fmul.s fs9, ft4, ft0, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw fs9, 128(a5)<br>   |
|  18|[0x8000388c]<br>0xF56FF76D|- rs1 : f7<br> - rs2 : f8<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                 |[0x80000300]:fmul.s fa4, ft7, fs0, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fa4, 136(a5)<br>   |
|  19|[0x80003894]<br>0xB7D5BFDD|- rs1 : f8<br> - rs2 : f23<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                |[0x8000031c]:fmul.s fs4, fs0, fs7, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw fs4, 144(a5)<br>   |
|  20|[0x8000389c]<br>0x00006000|- rs1 : f0<br> - rs2 : f12<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                 |[0x80000338]:fmul.s ft2, ft0, fa2, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw ft2, 152(a5)<br>   |
|  21|[0x800038a4]<br>0x00000000|- rs1 : f21<br> - rs2 : f9<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                 |[0x80000354]:fmul.s ft0, fs5, fs1, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw ft0, 160(a5)<br>   |
|  22|[0x800038ac]<br>0x00000000|- rs1 : f18<br> - rs2 : f17<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                |[0x80000370]:fmul.s ft3, fs2, fa7, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw ft3, 168(a5)<br>   |
|  23|[0x800038b4]<br>0x5BFDDB7D|- rs1 : f19<br> - rs2 : f16<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x8000038c]:fmul.s fs0, fs3, fa6, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw fs0, 176(a5)<br>   |
|  24|[0x800038bc]<br>0xEADFEEDB|- rs1 : f12<br> - rs2 : f29<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                               |[0x800003a8]:fmul.s fa3, fa2, ft9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fa3, 184(a5)<br>   |
|  25|[0x800038c4]<br>0xAB7FBB6F|- rs1 : f2<br> - rs2 : f5<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                 |[0x800003c4]:fmul.s fa1, ft2, ft5, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw fa1, 192(a5)<br>   |
|  26|[0x800038cc]<br>0xDDB7D5BF|- rs1 : f1<br> - rs2 : f2<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                 |[0x800003e0]:fmul.s ft8, ft1, ft2, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw ft8, 200(a5)<br>   |
|  27|[0x800038d4]<br>0xD5BFDDB7|- rs1 : f23<br> - rs2 : f13<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                               |[0x800003fc]:fmul.s fa2, fs7, fa3, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fa2, 208(a5)<br>   |
|  28|[0x800038dc]<br>0xDF56FF76|- rs1 : f11<br> - rs2 : f24<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                               |[0x80000418]:fmul.s fs2, fa1, fs8, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fs2, 216(a5)<br>   |
|  29|[0x800038e4]<br>0x80003804|- rs1 : f5<br> - rs2 : f25<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                |[0x80000434]:fmul.s fa5, ft5, fs9, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw fa5, 224(a5)<br>   |
|  30|[0x800038ec]<br>0xF76DF56F|- rs1 : f28<br> - rs2 : f10<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                               |[0x80000450]:fmul.s ft10, ft8, fa0, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw ft10, 232(a5)<br> |
|  31|[0x800038f4]<br>0xFBB6FAB7|- rs1 : f14<br> - rs2 : f4<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                |[0x8000046c]:fmul.s ft11, fa4, ft4, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw ft11, 240(a5)<br> |
|  32|[0x800038fc]<br>0x80003004|- rs1 : f24<br> - rs2 : f1<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                |[0x80000488]:fmul.s fa6, fs8, ft1, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fa6, 248(a5)<br>   |
|  33|[0x80003904]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800004a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>   |
|  34|[0x8000390c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800004c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>   |
|  35|[0x80003914]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800004dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>   |
|  36|[0x8000391c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800004f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>   |
|  37|[0x80003924]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000514]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>   |
|  38|[0x8000392c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000530]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>   |
|  39|[0x80003934]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x8000054c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>   |
|  40|[0x8000393c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000568]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>   |
|  41|[0x80003944]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000584]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>   |
|  42|[0x8000394c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800005a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>   |
|  43|[0x80003954]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800005bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>   |
|  44|[0x8000395c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800005d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>   |
|  45|[0x80003964]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800005f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>   |
|  46|[0x8000396c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000610]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>   |
|  47|[0x80003974]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x8000062c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>   |
|  48|[0x8000397c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000648]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>   |
|  49|[0x80003984]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000664]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>   |
|  50|[0x8000398c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000680]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>   |
|  51|[0x80003994]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000069c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>   |
|  52|[0x8000399c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800006b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>   |
|  53|[0x800039a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800006d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006d8]:csrrs a7, fflags, zero<br> [0x800006dc]:fsw fa2, 416(a5)<br>   |
|  54|[0x800039ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800006f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa2, 424(a5)<br>   |
|  55|[0x800039b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x8000070c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000710]:csrrs a7, fflags, zero<br> [0x80000714]:fsw fa2, 432(a5)<br>   |
|  56|[0x800039bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000728]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa2, 440(a5)<br>   |
|  57|[0x800039c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000744]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000748]:csrrs a7, fflags, zero<br> [0x8000074c]:fsw fa2, 448(a5)<br>   |
|  58|[0x800039cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000760]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsw fa2, 456(a5)<br>   |
|  59|[0x800039d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x8000077c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000780]:csrrs a7, fflags, zero<br> [0x80000784]:fsw fa2, 464(a5)<br>   |
|  60|[0x800039dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000798]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa2, 472(a5)<br>   |
|  61|[0x800039e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800007b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007b8]:csrrs a7, fflags, zero<br> [0x800007bc]:fsw fa2, 480(a5)<br>   |
|  62|[0x800039ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800007d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw fa2, 488(a5)<br>   |
|  63|[0x800039f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800007ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsw fa2, 496(a5)<br>   |
|  64|[0x800039fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000808]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa2, 504(a5)<br>   |
|  65|[0x80003a04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000824]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000828]:csrrs a7, fflags, zero<br> [0x8000082c]:fsw fa2, 512(a5)<br>   |
|  66|[0x80003a0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000840]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa2, 520(a5)<br>   |
|  67|[0x80003a14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x8000085c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000860]:csrrs a7, fflags, zero<br> [0x80000864]:fsw fa2, 528(a5)<br>   |
|  68|[0x80003a1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000878]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:fsw fa2, 536(a5)<br>   |
|  69|[0x80003a24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000894]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000898]:csrrs a7, fflags, zero<br> [0x8000089c]:fsw fa2, 544(a5)<br>   |
|  70|[0x80003a2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800008b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsw fa2, 552(a5)<br>   |
|  71|[0x80003a34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800008cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008d0]:csrrs a7, fflags, zero<br> [0x800008d4]:fsw fa2, 560(a5)<br>   |
|  72|[0x80003a3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800008e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa2, 568(a5)<br>   |
|  73|[0x80003a44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000904]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000908]:csrrs a7, fflags, zero<br> [0x8000090c]:fsw fa2, 576(a5)<br>   |
|  74|[0x80003a4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000920]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsw fa2, 584(a5)<br>   |
|  75|[0x80003a54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x8000093c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000940]:csrrs a7, fflags, zero<br> [0x80000944]:fsw fa2, 592(a5)<br>   |
|  76|[0x80003a5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000958]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsw fa2, 600(a5)<br>   |
|  77|[0x80003a64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000974]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000978]:csrrs a7, fflags, zero<br> [0x8000097c]:fsw fa2, 608(a5)<br>   |
|  78|[0x80003a6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000990]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:fsw fa2, 616(a5)<br>   |
|  79|[0x80003a74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800009ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009b0]:csrrs a7, fflags, zero<br> [0x800009b4]:fsw fa2, 624(a5)<br>   |
|  80|[0x80003a7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800009c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa2, 632(a5)<br>   |
|  81|[0x80003a84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800009e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009e8]:csrrs a7, fflags, zero<br> [0x800009ec]:fsw fa2, 640(a5)<br>   |
|  82|[0x80003a8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000a00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsw fa2, 648(a5)<br>   |
|  83|[0x80003a94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a20]:csrrs a7, fflags, zero<br> [0x80000a24]:fsw fa2, 656(a5)<br>   |
|  84|[0x80003a9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000a38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:fsw fa2, 664(a5)<br>   |
|  85|[0x80003aa4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000a54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a58]:csrrs a7, fflags, zero<br> [0x80000a5c]:fsw fa2, 672(a5)<br>   |
|  86|[0x80003aac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a74]:csrrs a7, fflags, zero<br> [0x80000a78]:fsw fa2, 680(a5)<br>   |
|  87|[0x80003ab4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a90]:csrrs a7, fflags, zero<br> [0x80000a94]:fsw fa2, 688(a5)<br>   |
|  88|[0x80003abc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa2, 696(a5)<br>   |
|  89|[0x80003ac4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ac8]:csrrs a7, fflags, zero<br> [0x80000acc]:fsw fa2, 704(a5)<br>   |
|  90|[0x80003acc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsw fa2, 712(a5)<br>   |
|  91|[0x80003ad4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000afc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b00]:csrrs a7, fflags, zero<br> [0x80000b04]:fsw fa2, 720(a5)<br>   |
|  92|[0x80003adc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000b18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b1c]:csrrs a7, fflags, zero<br> [0x80000b20]:fsw fa2, 728(a5)<br>   |
|  93|[0x80003ae4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b38]:csrrs a7, fflags, zero<br> [0x80000b3c]:fsw fa2, 736(a5)<br>   |
|  94|[0x80003aec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000b50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:fsw fa2, 744(a5)<br>   |
|  95|[0x80003af4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b70]:csrrs a7, fflags, zero<br> [0x80000b74]:fsw fa2, 752(a5)<br>   |
|  96|[0x80003afc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa2, 760(a5)<br>   |
|  97|[0x80003b04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ba8]:csrrs a7, fflags, zero<br> [0x80000bac]:fsw fa2, 768(a5)<br>   |
|  98|[0x80003b0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsw fa2, 776(a5)<br>   |
|  99|[0x80003b14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000be0]:csrrs a7, fflags, zero<br> [0x80000be4]:fsw fa2, 784(a5)<br>   |
| 100|[0x80003b1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:fsw fa2, 792(a5)<br>   |
| 101|[0x80003b24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000c14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c18]:csrrs a7, fflags, zero<br> [0x80000c1c]:fsw fa2, 800(a5)<br>   |
| 102|[0x80003b2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000c30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:fsw fa2, 808(a5)<br>   |
| 103|[0x80003b34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c50]:csrrs a7, fflags, zero<br> [0x80000c54]:fsw fa2, 816(a5)<br>   |
| 104|[0x80003b3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000c68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c6c]:csrrs a7, fflags, zero<br> [0x80000c70]:fsw fa2, 824(a5)<br>   |
| 105|[0x80003b44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000c84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c88]:csrrs a7, fflags, zero<br> [0x80000c8c]:fsw fa2, 832(a5)<br>   |
| 106|[0x80003b4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsw fa2, 840(a5)<br>   |
| 107|[0x80003b54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cc0]:csrrs a7, fflags, zero<br> [0x80000cc4]:fsw fa2, 848(a5)<br>   |
| 108|[0x80003b5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:fsw fa2, 856(a5)<br>   |
| 109|[0x80003b64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cf8]:csrrs a7, fflags, zero<br> [0x80000cfc]:fsw fa2, 864(a5)<br>   |
| 110|[0x80003b6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000d10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d14]:csrrs a7, fflags, zero<br> [0x80000d18]:fsw fa2, 872(a5)<br>   |
| 111|[0x80003b74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d30]:csrrs a7, fflags, zero<br> [0x80000d34]:fsw fa2, 880(a5)<br>   |
| 112|[0x80003b7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000d48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsw fa2, 888(a5)<br>   |
| 113|[0x80003b84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d68]:csrrs a7, fflags, zero<br> [0x80000d6c]:fsw fa2, 896(a5)<br>   |
| 114|[0x80003b8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000d80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsw fa2, 904(a5)<br>   |
| 115|[0x80003b94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000da0]:csrrs a7, fflags, zero<br> [0x80000da4]:fsw fa2, 912(a5)<br>   |
| 116|[0x80003b9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000db8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dbc]:csrrs a7, fflags, zero<br> [0x80000dc0]:fsw fa2, 920(a5)<br>   |
| 117|[0x80003ba4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dd8]:csrrs a7, fflags, zero<br> [0x80000ddc]:fsw fa2, 928(a5)<br>   |
| 118|[0x80003bac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000df0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:fsw fa2, 936(a5)<br>   |
| 119|[0x80003bb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e10]:csrrs a7, fflags, zero<br> [0x80000e14]:fsw fa2, 944(a5)<br>   |
| 120|[0x80003bbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000e28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa2, 952(a5)<br>   |
| 121|[0x80003bc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e48]:csrrs a7, fflags, zero<br> [0x80000e4c]:fsw fa2, 960(a5)<br>   |
| 122|[0x80003bcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000e60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e64]:csrrs a7, fflags, zero<br> [0x80000e68]:fsw fa2, 968(a5)<br>   |
| 123|[0x80003bd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e80]:csrrs a7, fflags, zero<br> [0x80000e84]:fsw fa2, 976(a5)<br>   |
| 124|[0x80003bdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000e98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:fsw fa2, 984(a5)<br>   |
| 125|[0x80003be4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000eb8]:csrrs a7, fflags, zero<br> [0x80000ebc]:fsw fa2, 992(a5)<br>   |
| 126|[0x80003bec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:fsw fa2, 1000(a5)<br>  |
| 127|[0x80003bf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000eec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ef0]:csrrs a7, fflags, zero<br> [0x80000ef4]:fsw fa2, 1008(a5)<br>  |
| 128|[0x80003bfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f0c]:csrrs a7, fflags, zero<br> [0x80000f10]:fsw fa2, 1016(a5)<br>  |
| 129|[0x80003c04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000f24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsw fa2, 1024(a5)<br>  |
| 130|[0x80003c0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000f40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:fsw fa2, 1032(a5)<br>  |
| 131|[0x80003c14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f60]:csrrs a7, fflags, zero<br> [0x80000f64]:fsw fa2, 1040(a5)<br>  |
| 132|[0x80003c1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80000f78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:fsw fa2, 1048(a5)<br>  |
| 133|[0x80003c24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f98]:csrrs a7, fflags, zero<br> [0x80000f9c]:fsw fa2, 1056(a5)<br>  |
| 134|[0x80003c2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fb4]:csrrs a7, fflags, zero<br> [0x80000fb8]:fsw fa2, 1064(a5)<br>  |
| 135|[0x80003c34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fd0]:csrrs a7, fflags, zero<br> [0x80000fd4]:fsw fa2, 1072(a5)<br>  |
| 136|[0x80003c3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fec]:csrrs a7, fflags, zero<br> [0x80000ff0]:fsw fa2, 1080(a5)<br>  |
| 137|[0x80003c44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001004]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsw fa2, 1088(a5)<br>  |
| 138|[0x80003c4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001020]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsw fa2, 1096(a5)<br>  |
| 139|[0x80003c54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x8000103c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001040]:csrrs a7, fflags, zero<br> [0x80001044]:fsw fa2, 1104(a5)<br>  |
| 140|[0x80003c5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001058]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000105c]:csrrs a7, fflags, zero<br> [0x80001060]:fsw fa2, 1112(a5)<br>  |
| 141|[0x80003c64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001074]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001078]:csrrs a7, fflags, zero<br> [0x8000107c]:fsw fa2, 1120(a5)<br>  |
| 142|[0x80003c6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001090]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001094]:csrrs a7, fflags, zero<br> [0x80001098]:fsw fa2, 1128(a5)<br>  |
| 143|[0x80003c74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800010ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010b0]:csrrs a7, fflags, zero<br> [0x800010b4]:fsw fa2, 1136(a5)<br>  |
| 144|[0x80003c7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800010c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa2, 1144(a5)<br>  |
| 145|[0x80003c84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800010e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsw fa2, 1152(a5)<br>  |
| 146|[0x80003c8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001100]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001104]:csrrs a7, fflags, zero<br> [0x80001108]:fsw fa2, 1160(a5)<br>  |
| 147|[0x80003c94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x8000111c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001120]:csrrs a7, fflags, zero<br> [0x80001124]:fsw fa2, 1168(a5)<br>  |
| 148|[0x80003c9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001138]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000113c]:csrrs a7, fflags, zero<br> [0x80001140]:fsw fa2, 1176(a5)<br>  |
| 149|[0x80003ca4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001154]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001158]:csrrs a7, fflags, zero<br> [0x8000115c]:fsw fa2, 1184(a5)<br>  |
| 150|[0x80003cac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001170]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:fsw fa2, 1192(a5)<br>  |
| 151|[0x80003cb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000118c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001190]:csrrs a7, fflags, zero<br> [0x80001194]:fsw fa2, 1200(a5)<br>  |
| 152|[0x80003cbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800011a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011ac]:csrrs a7, fflags, zero<br> [0x800011b0]:fsw fa2, 1208(a5)<br>  |
| 153|[0x80003cc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800011c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsw fa2, 1216(a5)<br>  |
| 154|[0x80003ccc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800011e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011e4]:csrrs a7, fflags, zero<br> [0x800011e8]:fsw fa2, 1224(a5)<br>  |
| 155|[0x80003cd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800011fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001200]:csrrs a7, fflags, zero<br> [0x80001204]:fsw fa2, 1232(a5)<br>  |
| 156|[0x80003cdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001218]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:fsw fa2, 1240(a5)<br>  |
| 157|[0x80003ce4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001234]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001238]:csrrs a7, fflags, zero<br> [0x8000123c]:fsw fa2, 1248(a5)<br>  |
| 158|[0x80003cec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001250]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001254]:csrrs a7, fflags, zero<br> [0x80001258]:fsw fa2, 1256(a5)<br>  |
| 159|[0x80003cf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x8000126c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001270]:csrrs a7, fflags, zero<br> [0x80001274]:fsw fa2, 1264(a5)<br>  |
| 160|[0x80003cfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001288]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000128c]:csrrs a7, fflags, zero<br> [0x80001290]:fsw fa2, 1272(a5)<br>  |
| 161|[0x80003d04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800012a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsw fa2, 1280(a5)<br>  |
| 162|[0x80003d0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800012c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:fsw fa2, 1288(a5)<br>  |
| 163|[0x80003d14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800012dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012e0]:csrrs a7, fflags, zero<br> [0x800012e4]:fsw fa2, 1296(a5)<br>  |
| 164|[0x80003d1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800012f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012fc]:csrrs a7, fflags, zero<br> [0x80001300]:fsw fa2, 1304(a5)<br>  |
| 165|[0x80003d24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001314]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001318]:csrrs a7, fflags, zero<br> [0x8000131c]:fsw fa2, 1312(a5)<br>  |
| 166|[0x80003d2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001330]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001334]:csrrs a7, fflags, zero<br> [0x80001338]:fsw fa2, 1320(a5)<br>  |
| 167|[0x80003d34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x8000134c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001350]:csrrs a7, fflags, zero<br> [0x80001354]:fsw fa2, 1328(a5)<br>  |
| 168|[0x80003d3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001368]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:fsw fa2, 1336(a5)<br>  |
| 169|[0x80003d44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001384]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsw fa2, 1344(a5)<br>  |
| 170|[0x80003d4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800013a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013a4]:csrrs a7, fflags, zero<br> [0x800013a8]:fsw fa2, 1352(a5)<br>  |
| 171|[0x80003d54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800013bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013c0]:csrrs a7, fflags, zero<br> [0x800013c4]:fsw fa2, 1360(a5)<br>  |
| 172|[0x80003d5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800013d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013dc]:csrrs a7, fflags, zero<br> [0x800013e0]:fsw fa2, 1368(a5)<br>  |
| 173|[0x80003d64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800013f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013f8]:csrrs a7, fflags, zero<br> [0x800013fc]:fsw fa2, 1376(a5)<br>  |
| 174|[0x80003d6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001410]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001414]:csrrs a7, fflags, zero<br> [0x80001418]:fsw fa2, 1384(a5)<br>  |
| 175|[0x80003d74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x8000142c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsw fa2, 1392(a5)<br>  |
| 176|[0x80003d7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001448]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000144c]:csrrs a7, fflags, zero<br> [0x80001450]:fsw fa2, 1400(a5)<br>  |
| 177|[0x80003d84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001464]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001468]:csrrs a7, fflags, zero<br> [0x8000146c]:fsw fa2, 1408(a5)<br>  |
| 178|[0x80003d8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001480]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001484]:csrrs a7, fflags, zero<br> [0x80001488]:fsw fa2, 1416(a5)<br>  |
| 179|[0x80003d94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x8000149c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014a0]:csrrs a7, fflags, zero<br> [0x800014a4]:fsw fa2, 1424(a5)<br>  |
| 180|[0x80003d9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800014b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014bc]:csrrs a7, fflags, zero<br> [0x800014c0]:fsw fa2, 1432(a5)<br>  |
| 181|[0x80003da4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800014d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014d8]:csrrs a7, fflags, zero<br> [0x800014dc]:fsw fa2, 1440(a5)<br>  |
| 182|[0x80003dac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800014f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014f4]:csrrs a7, fflags, zero<br> [0x800014f8]:fsw fa2, 1448(a5)<br>  |
| 183|[0x80003db4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000150c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsw fa2, 1456(a5)<br>  |
| 184|[0x80003dbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001528]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000152c]:csrrs a7, fflags, zero<br> [0x80001530]:fsw fa2, 1464(a5)<br>  |
| 185|[0x80003dc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001544]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001548]:csrrs a7, fflags, zero<br> [0x8000154c]:fsw fa2, 1472(a5)<br>  |
| 186|[0x80003dcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001560]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001564]:csrrs a7, fflags, zero<br> [0x80001568]:fsw fa2, 1480(a5)<br>  |
| 187|[0x80003dd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x8000157c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001580]:csrrs a7, fflags, zero<br> [0x80001584]:fsw fa2, 1488(a5)<br>  |
| 188|[0x80003ddc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001598]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000159c]:csrrs a7, fflags, zero<br> [0x800015a0]:fsw fa2, 1496(a5)<br>  |
| 189|[0x80003de4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800015b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015b8]:csrrs a7, fflags, zero<br> [0x800015bc]:fsw fa2, 1504(a5)<br>  |
| 190|[0x80003dec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800015d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015d4]:csrrs a7, fflags, zero<br> [0x800015d8]:fsw fa2, 1512(a5)<br>  |
| 191|[0x80003df4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800015ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsw fa2, 1520(a5)<br>  |
| 192|[0x80003dfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001608]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:fsw fa2, 1528(a5)<br>  |
| 193|[0x80003e04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001624]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001628]:csrrs a7, fflags, zero<br> [0x8000162c]:fsw fa2, 1536(a5)<br>  |
| 194|[0x80003e0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001640]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001644]:csrrs a7, fflags, zero<br> [0x80001648]:fsw fa2, 1544(a5)<br>  |
| 195|[0x80003e14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x8000165c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001660]:csrrs a7, fflags, zero<br> [0x80001664]:fsw fa2, 1552(a5)<br>  |
| 196|[0x80003e1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001678]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000167c]:csrrs a7, fflags, zero<br> [0x80001680]:fsw fa2, 1560(a5)<br>  |
| 197|[0x80003e24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001694]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001698]:csrrs a7, fflags, zero<br> [0x8000169c]:fsw fa2, 1568(a5)<br>  |
| 198|[0x80003e2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800016b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016b4]:csrrs a7, fflags, zero<br> [0x800016b8]:fsw fa2, 1576(a5)<br>  |
| 199|[0x80003e34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800016cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsw fa2, 1584(a5)<br>  |
| 200|[0x80003e3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x800016e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016ec]:csrrs a7, fflags, zero<br> [0x800016f0]:fsw fa2, 1592(a5)<br>  |
| 201|[0x80003e44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001704]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001708]:csrrs a7, fflags, zero<br> [0x8000170c]:fsw fa2, 1600(a5)<br>  |
| 202|[0x80003e4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001720]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001724]:csrrs a7, fflags, zero<br> [0x80001728]:fsw fa2, 1608(a5)<br>  |
| 203|[0x80003e54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000173c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001740]:csrrs a7, fflags, zero<br> [0x80001744]:fsw fa2, 1616(a5)<br>  |
| 204|[0x80003e5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001758]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000175c]:csrrs a7, fflags, zero<br> [0x80001760]:fsw fa2, 1624(a5)<br>  |
| 205|[0x80003e64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001774]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001778]:csrrs a7, fflags, zero<br> [0x8000177c]:fsw fa2, 1632(a5)<br>  |
| 206|[0x80003e6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001790]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001794]:csrrs a7, fflags, zero<br> [0x80001798]:fsw fa2, 1640(a5)<br>  |
| 207|[0x80003e74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800017ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsw fa2, 1648(a5)<br>  |
| 208|[0x80003e7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800017c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017cc]:csrrs a7, fflags, zero<br> [0x800017d0]:fsw fa2, 1656(a5)<br>  |
| 209|[0x80003e84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800017e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017e8]:csrrs a7, fflags, zero<br> [0x800017ec]:fsw fa2, 1664(a5)<br>  |
| 210|[0x80003e8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001800]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001804]:csrrs a7, fflags, zero<br> [0x80001808]:fsw fa2, 1672(a5)<br>  |
| 211|[0x80003e94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000181c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001820]:csrrs a7, fflags, zero<br> [0x80001824]:fsw fa2, 1680(a5)<br>  |
| 212|[0x80003e9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x80001838]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000183c]:csrrs a7, fflags, zero<br> [0x80001840]:fsw fa2, 1688(a5)<br>  |
| 213|[0x80003ea4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001854]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001858]:csrrs a7, fflags, zero<br> [0x8000185c]:fsw fa2, 1696(a5)<br>  |
| 214|[0x80003eac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x80001870]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001874]:csrrs a7, fflags, zero<br> [0x80001878]:fsw fa2, 1704(a5)<br>  |
| 215|[0x80003eb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x8000188c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsw fa2, 1712(a5)<br>  |
| 216|[0x80003ebc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800018a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018ac]:csrrs a7, fflags, zero<br> [0x800018b0]:fsw fa2, 1720(a5)<br>  |
| 217|[0x80003ec4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 4  #nosat<br>                                                                                              |[0x800018c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018c8]:csrrs a7, fflags, zero<br> [0x800018cc]:fsw fa2, 1728(a5)<br>  |
| 218|[0x80003ecc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800018e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018e4]:csrrs a7, fflags, zero<br> [0x800018e8]:fsw fa2, 1736(a5)<br>  |
| 219|[0x80003ed4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 2  #nosat<br>                                                                                              |[0x800018fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001900]:csrrs a7, fflags, zero<br> [0x80001904]:fsw fa2, 1744(a5)<br>  |
| 220|[0x80003edc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 1  #nosat<br>                                                                                              |[0x80001918]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000191c]:csrrs a7, fflags, zero<br> [0x80001920]:fsw fa2, 1752(a5)<br>  |
| 221|[0x80003ee4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001934]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001938]:csrrs a7, fflags, zero<br> [0x8000193c]:fsw fa2, 1760(a5)<br>  |
| 222|[0x80003eec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001950]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsw fa2, 1768(a5)<br>  |
