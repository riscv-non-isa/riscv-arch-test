
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001f00')]      |
| SIG_REGION                | [('0x80004610', '0x800053b0', '436 dwords')]      |
| COV_LABELS                | fnmadd_b5      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fnmadd_b5-01.S/ref.S    |
| Total Number of coverpoints| 358     |
| Total Coverpoints Hit     | 351      |
| Total Signature Updates   | 436      |
| STAT1                     | 218      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 218     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fnmadd.d', 'rs1 : f4', 'rs2 : f22', 'rs3 : f10', 'rd : f10', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fnmadd.d fa0, ft4, fs6, fa0, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd fa0, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80004618]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f20', 'rs3 : f20', 'rd : f18', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x800003e0]:fnmadd.d fs2, fs4, fs4, fs4, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd fs2, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80004628]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f10', 'rs3 : f29', 'rd : f11', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000400]:fnmadd.d fa1, ft9, fa0, ft9, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fa1, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80004638]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f15', 'rs3 : f26', 'rd : f26', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x80000420]:fnmadd.d fs10, fs10, fa5, fs10, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd fs10, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80004648]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f5', 'rs3 : f24', 'rd : f23', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000440]:fnmadd.d fs7, ft10, ft5, fs8, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd fs7, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80004658]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f25', 'rs3 : f25', 'rd : f25', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fnmadd.d fs9, ft2, fs9, fs9, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs9, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80004668]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f24', 'rs3 : f14', 'rd : f24', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000480]:fnmadd.d fs8, fs8, fs8, fa4, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs8, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80004678]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f9', 'rs3 : f2', 'rd : f9', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fnmadd.d fs1, ft1, fs1, ft2, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd fs1, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80004688]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f23', 'rs3 : f18', 'rd : f3', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x800004c0]:fnmadd.d ft3, fs7, fs7, fs2, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft3, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80004698]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f7', 'rs3 : f7', 'rd : f7', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800004e0]:fnmadd.d ft7, ft7, ft7, ft7, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd ft7, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x800046a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f16', 'rs3 : f16', 'rd : f31', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x80000500]:fnmadd.d ft11, fs1, fa6, fa6, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd ft11, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x800046b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f18', 'rs3 : f17', 'rd : f14', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000520]:fnmadd.d fa4, fa4, fs2, fa7, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fa4, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x800046c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f6', 'rs3 : f30', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000540]:fnmadd.d fa5, fa0, ft6, ft10, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd fa5, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x800046d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f4', 'rs3 : f6', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000560]:fnmadd.d ft0, fs11, ft4, ft6, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft0, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x800046e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f19', 'rs3 : f27', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000580]:fnmadd.d fa3, ft8, fs3, fs11, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa3, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x800046f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f12', 'rs3 : f23', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fnmadd.d ft6, ft0, fa2, fs7, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd ft6, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80004708]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f29', 'rs3 : f8', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fnmadd.d fs6, fa2, ft9, fs0, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd fs6, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80004718]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f8', 'rs3 : f28', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fnmadd.d ft2, fs3, fs0, ft8, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd ft2, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80004728]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f1', 'rs3 : f3', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000600]:fnmadd.d ft9, fa7, ft1, ft3, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd ft9, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80004738]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f3', 'rs3 : f22', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000620]:fnmadd.d ft1, fa5, ft3, fs6, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd ft1, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80004748]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f17', 'rs3 : f13', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fnmadd.d fa2, ft11, fa7, fa3, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fa2, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80004758]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f11', 'rs3 : f19', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000660]:fnmadd.d ft4, ft5, fa1, fs3, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd ft4, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80004768]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f30', 'rs3 : f0', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000680]:fnmadd.d fa6, fa3, ft10, ft0, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd fa6, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80004778]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f13', 'rs3 : f15', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fnmadd.d ft10, fs6, fa3, fa5, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd ft10, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80004788]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f14', 'rs3 : f9', 'rd : f17', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fnmadd.d fa7, fa1, fa4, fs1, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd fa7, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80004798]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f26', 'rs3 : f31', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fnmadd.d ft5, ft3, fs10, ft11, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd ft5, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x800047a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f2', 'rs3 : f11', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000700]:fnmadd.d fs4, fs0, ft2, fa1, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fs4, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x800047b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f0', 'rs3 : f21', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000720]:fnmadd.d fs0, fs9, ft0, fs5, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fs0, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x800047c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f21', 'rs3 : f5', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000740]:fnmadd.d fs3, ft6, fs5, ft5, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd fs3, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x800047d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f28', 'rs3 : f1', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000760]:fnmadd.d fs11, fs5, ft8, ft1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fs11, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x800047e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f31', 'rs3 : f12', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fnmadd.d ft8, fa6, ft11, fa2, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd ft8, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x800047f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f27', 'rs3 : f4', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fnmadd.d fs5, fs2, fs11, ft4, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd fs5, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80004808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80004818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80004828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000800]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80004838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80004848]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000840]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80004858]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000860]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80004868]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000880]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80004878]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80004888]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80004898]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x800048a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000900]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x800048b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000920]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x800048c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000940]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x800048d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x800048e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000980]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x800048f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80004908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80004918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80004928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80004938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80004948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80004958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80004968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80004978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80004988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80004998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x800049a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x800049b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x800049c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x800049d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x800049e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x800049f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80004a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80004a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80004a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80004a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80004a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80004a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80004a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80004a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80004a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80004a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x80004aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x80004ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x80004ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x80004ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x80004ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x80004af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80004b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80004b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80004b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80004b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80004b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80004b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80004b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80004b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80004b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80004b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x80004ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x80004bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x80004bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x80004bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x80004be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x80004bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80004c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80004c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80004c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001004]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80004c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001024]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80004c48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001044]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80004c58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001064]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80004c68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001084]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80004c78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80004c88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80004c98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x80004ca8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001104]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x80004cb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001124]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x80004cc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001144]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x80004cd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001164]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x80004ce8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x80004cf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80004d08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80004d18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80004d28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001204]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80004d38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001224]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80004d48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001244]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80004d58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001264]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80004d68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001284]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80004d78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80004d88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80004d98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x80004da8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001304]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x80004db8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001324]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x80004dc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001344]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x80004dd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001364]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x80004de8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001384]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x80004df8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80004e08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80004e18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80004e28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80004e38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80004e48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80004e58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80004e68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80004e78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80004e88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80004e98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x80004ea8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x80004eb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x80004ec8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x80004ed8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x80004ee8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x80004ef8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80004f08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80004f18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80004f28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80004f38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80004f48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000164c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001650]:csrrs a7, fflags, zero
	-[0x80001654]:fsd fa3, 336(a5)
Current Store : [0x80001658] : sd a7, 344(a5) -- Store: [0x80004f58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000166c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:fsd fa3, 352(a5)
Current Store : [0x80001678] : sd a7, 360(a5) -- Store: [0x80004f68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000168c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001690]:csrrs a7, fflags, zero
	-[0x80001694]:fsd fa3, 368(a5)
Current Store : [0x80001698] : sd a7, 376(a5) -- Store: [0x80004f78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800016ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016b0]:csrrs a7, fflags, zero
	-[0x800016b4]:fsd fa3, 384(a5)
Current Store : [0x800016b8] : sd a7, 392(a5) -- Store: [0x80004f88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsd fa3, 400(a5)
Current Store : [0x800016d8] : sd a7, 408(a5) -- Store: [0x80004f98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa3, 416(a5)
Current Store : [0x800016f8] : sd a7, 424(a5) -- Store: [0x80004fa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000170c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001710]:csrrs a7, fflags, zero
	-[0x80001714]:fsd fa3, 432(a5)
Current Store : [0x80001718] : sd a7, 440(a5) -- Store: [0x80004fb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000172c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:fsd fa3, 448(a5)
Current Store : [0x80001738] : sd a7, 456(a5) -- Store: [0x80004fc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000174c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001750]:csrrs a7, fflags, zero
	-[0x80001754]:fsd fa3, 464(a5)
Current Store : [0x80001758] : sd a7, 472(a5) -- Store: [0x80004fd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000176c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001770]:csrrs a7, fflags, zero
	-[0x80001774]:fsd fa3, 480(a5)
Current Store : [0x80001778] : sd a7, 488(a5) -- Store: [0x80004fe8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000178c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:fsd fa3, 496(a5)
Current Store : [0x80001798] : sd a7, 504(a5) -- Store: [0x80004ff8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsd fa3, 512(a5)
Current Store : [0x800017b8] : sd a7, 520(a5) -- Store: [0x80005008]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa3, 528(a5)
Current Store : [0x800017d8] : sd a7, 536(a5) -- Store: [0x80005018]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800017ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:fsd fa3, 544(a5)
Current Store : [0x800017f8] : sd a7, 552(a5) -- Store: [0x80005028]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000180c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001810]:csrrs a7, fflags, zero
	-[0x80001814]:fsd fa3, 560(a5)
Current Store : [0x80001818] : sd a7, 568(a5) -- Store: [0x80005038]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000182c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001830]:csrrs a7, fflags, zero
	-[0x80001834]:fsd fa3, 576(a5)
Current Store : [0x80001838] : sd a7, 584(a5) -- Store: [0x80005048]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000184c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:fsd fa3, 592(a5)
Current Store : [0x80001858] : sd a7, 600(a5) -- Store: [0x80005058]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000186c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001870]:csrrs a7, fflags, zero
	-[0x80001874]:fsd fa3, 608(a5)
Current Store : [0x80001878] : sd a7, 616(a5) -- Store: [0x80005068]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsd fa3, 624(a5)
Current Store : [0x80001898] : sd a7, 632(a5) -- Store: [0x80005078]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa3, 640(a5)
Current Store : [0x800018b8] : sd a7, 648(a5) -- Store: [0x80005088]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018d0]:csrrs a7, fflags, zero
	-[0x800018d4]:fsd fa3, 656(a5)
Current Store : [0x800018d8] : sd a7, 664(a5) -- Store: [0x80005098]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018f0]:csrrs a7, fflags, zero
	-[0x800018f4]:fsd fa3, 672(a5)
Current Store : [0x800018f8] : sd a7, 680(a5) -- Store: [0x800050a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001910]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:fsd fa3, 688(a5)
Current Store : [0x8000191c] : sd a7, 696(a5) -- Store: [0x800050b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001930]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001934]:csrrs a7, fflags, zero
	-[0x80001938]:fsd fa3, 704(a5)
Current Store : [0x8000193c] : sd a7, 712(a5) -- Store: [0x800050c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001950]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa3, 720(a5)
Current Store : [0x8000195c] : sd a7, 728(a5) -- Store: [0x800050d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001970]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa3, 736(a5)
Current Store : [0x8000197c] : sd a7, 744(a5) -- Store: [0x800050e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001990]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001994]:csrrs a7, fflags, zero
	-[0x80001998]:fsd fa3, 752(a5)
Current Store : [0x8000199c] : sd a7, 760(a5) -- Store: [0x800050f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa3, 768(a5)
Current Store : [0x800019bc] : sd a7, 776(a5) -- Store: [0x80005108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800019d0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:fsd fa3, 784(a5)
Current Store : [0x800019dc] : sd a7, 792(a5) -- Store: [0x80005118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019f0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019f4]:csrrs a7, fflags, zero
	-[0x800019f8]:fsd fa3, 800(a5)
Current Store : [0x800019fc] : sd a7, 808(a5) -- Store: [0x80005128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa3, 816(a5)
Current Store : [0x80001a1c] : sd a7, 824(a5) -- Store: [0x80005138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsd fa3, 832(a5)
Current Store : [0x80001a3c] : sd a7, 840(a5) -- Store: [0x80005148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa3, 848(a5)
Current Store : [0x80001a5c] : sd a7, 856(a5) -- Store: [0x80005158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa3, 864(a5)
Current Store : [0x80001a7c] : sd a7, 872(a5) -- Store: [0x80005168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:fsd fa3, 880(a5)
Current Store : [0x80001a9c] : sd a7, 888(a5) -- Store: [0x80005178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ab0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ab4]:csrrs a7, fflags, zero
	-[0x80001ab8]:fsd fa3, 896(a5)
Current Store : [0x80001abc] : sd a7, 904(a5) -- Store: [0x80005188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa3, 912(a5)
Current Store : [0x80001adc] : sd a7, 920(a5) -- Store: [0x80005198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:fsd fa3, 928(a5)
Current Store : [0x80001afc] : sd a7, 936(a5) -- Store: [0x800051a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsd fa3, 944(a5)
Current Store : [0x80001b1c] : sd a7, 952(a5) -- Store: [0x800051b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa3, 960(a5)
Current Store : [0x80001b3c] : sd a7, 968(a5) -- Store: [0x800051c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:fsd fa3, 976(a5)
Current Store : [0x80001b5c] : sd a7, 984(a5) -- Store: [0x800051d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b74]:csrrs a7, fflags, zero
	-[0x80001b78]:fsd fa3, 992(a5)
Current Store : [0x80001b7c] : sd a7, 1000(a5) -- Store: [0x800051e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b94]:csrrs a7, fflags, zero
	-[0x80001b98]:fsd fa3, 1008(a5)
Current Store : [0x80001b9c] : sd a7, 1016(a5) -- Store: [0x800051f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:fsd fa3, 1024(a5)
Current Store : [0x80001bbc] : sd a7, 1032(a5) -- Store: [0x80005208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bd4]:csrrs a7, fflags, zero
	-[0x80001bd8]:fsd fa3, 1040(a5)
Current Store : [0x80001bdc] : sd a7, 1048(a5) -- Store: [0x80005218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsd fa3, 1056(a5)
Current Store : [0x80001bfc] : sd a7, 1064(a5) -- Store: [0x80005228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa3, 1072(a5)
Current Store : [0x80001c1c] : sd a7, 1080(a5) -- Store: [0x80005238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c34]:csrrs a7, fflags, zero
	-[0x80001c38]:fsd fa3, 1088(a5)
Current Store : [0x80001c3c] : sd a7, 1096(a5) -- Store: [0x80005248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001c50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c54]:csrrs a7, fflags, zero
	-[0x80001c58]:fsd fa3, 1104(a5)
Current Store : [0x80001c5c] : sd a7, 1112(a5) -- Store: [0x80005258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:fsd fa3, 1120(a5)
Current Store : [0x80001c7c] : sd a7, 1128(a5) -- Store: [0x80005268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c94]:csrrs a7, fflags, zero
	-[0x80001c98]:fsd fa3, 1136(a5)
Current Store : [0x80001c9c] : sd a7, 1144(a5) -- Store: [0x80005278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001cb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cb4]:csrrs a7, fflags, zero
	-[0x80001cb8]:fsd fa3, 1152(a5)
Current Store : [0x80001cbc] : sd a7, 1160(a5) -- Store: [0x80005288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsd fa3, 1168(a5)
Current Store : [0x80001cdc] : sd a7, 1176(a5) -- Store: [0x80005298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa3, 1184(a5)
Current Store : [0x80001cfc] : sd a7, 1192(a5) -- Store: [0x800052a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d14]:csrrs a7, fflags, zero
	-[0x80001d18]:fsd fa3, 1200(a5)
Current Store : [0x80001d1c] : sd a7, 1208(a5) -- Store: [0x800052b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsd fa3, 1216(a5)
Current Store : [0x80001d3c] : sd a7, 1224(a5) -- Store: [0x800052c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d54]:csrrs a7, fflags, zero
	-[0x80001d58]:fsd fa3, 1232(a5)
Current Store : [0x80001d5c] : sd a7, 1240(a5) -- Store: [0x800052d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d74]:csrrs a7, fflags, zero
	-[0x80001d78]:fsd fa3, 1248(a5)
Current Store : [0x80001d7c] : sd a7, 1256(a5) -- Store: [0x800052e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001d90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:fsd fa3, 1264(a5)
Current Store : [0x80001d9c] : sd a7, 1272(a5) -- Store: [0x800052f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001db0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001db4]:csrrs a7, fflags, zero
	-[0x80001db8]:fsd fa3, 1280(a5)
Current Store : [0x80001dbc] : sd a7, 1288(a5) -- Store: [0x80005308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa3, 1296(a5)
Current Store : [0x80001ddc] : sd a7, 1304(a5) -- Store: [0x80005318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001df0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:fsd fa3, 1312(a5)
Current Store : [0x80001dfc] : sd a7, 1320(a5) -- Store: [0x80005328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001e10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e14]:csrrs a7, fflags, zero
	-[0x80001e18]:fsd fa3, 1328(a5)
Current Store : [0x80001e1c] : sd a7, 1336(a5) -- Store: [0x80005338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e34]:csrrs a7, fflags, zero
	-[0x80001e38]:fsd fa3, 1344(a5)
Current Store : [0x80001e3c] : sd a7, 1352(a5) -- Store: [0x80005348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:fsd fa3, 1360(a5)
Current Store : [0x80001e5c] : sd a7, 1368(a5) -- Store: [0x80005358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e74]:csrrs a7, fflags, zero
	-[0x80001e78]:fsd fa3, 1376(a5)
Current Store : [0x80001e7c] : sd a7, 1384(a5) -- Store: [0x80005368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001e90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e94]:csrrs a7, fflags, zero
	-[0x80001e98]:fsd fa3, 1392(a5)
Current Store : [0x80001e9c] : sd a7, 1400(a5) -- Store: [0x80005378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:fsd fa3, 1408(a5)
Current Store : [0x80001ebc] : sd a7, 1416(a5) -- Store: [0x80005388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ed0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ed4]:csrrs a7, fflags, zero
	-[0x80001ed8]:fsd fa3, 1424(a5)
Current Store : [0x80001edc] : sd a7, 1432(a5) -- Store: [0x80005398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ef0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ef4]:csrrs a7, fflags, zero
	-[0x80001ef8]:fsd fa3, 1440(a5)
Current Store : [0x80001efc] : sd a7, 1448(a5) -- Store: [0x800053a8]:0x0000000000000005





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                         |                                                             code                                                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004610]<br>0x56FF76DF56FF76DF|- opcode : fnmadd.d<br> - rs1 : f4<br> - rs2 : f22<br> - rs3 : f10<br> - rd : f10<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 0  #nosat<br>       |[0x800003c0]:fnmadd.d fa0, ft4, fs6, fa0, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd fa0, 0(a5)<br>      |
|   2|[0x80004620]<br>0xDF56FF76DF56FF76|- rs1 : f20<br> - rs2 : f20<br> - rs3 : f20<br> - rd : f18<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                                |[0x800003e0]:fnmadd.d fs2, fs4, fs4, fs4, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd fs2, 16(a5)<br>     |
|   3|[0x80004630]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f29<br> - rs2 : f10<br> - rs3 : f29<br> - rd : f11<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                   |[0x80000400]:fnmadd.d fa1, ft9, fa0, ft9, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fa1, 32(a5)<br>     |
|   4|[0x80004640]<br>0x76DF56FF76DF56FF|- rs1 : f26<br> - rs2 : f15<br> - rs3 : f26<br> - rd : f26<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                                |[0x80000420]:fnmadd.d fs10, fs10, fa5, fs10, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd fs10, 48(a5)<br> |
|   5|[0x80004650]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f30<br> - rs2 : f5<br> - rs3 : f24<br> - rd : f23<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 1  #nosat<br> |[0x80000440]:fnmadd.d fs7, ft10, ft5, fs8, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd fs7, 64(a5)<br>    |
|   6|[0x80004660]<br>0xEDBEADFEEDBEADFE|- rs1 : f2<br> - rs2 : f25<br> - rs3 : f25<br> - rd : f25<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                                 |[0x80000460]:fnmadd.d fs9, ft2, fs9, fs9, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs9, 80(a5)<br>     |
|   7|[0x80004670]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f24<br> - rs2 : f24<br> - rs3 : f14<br> - rd : f24<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                                |[0x80000480]:fnmadd.d fs8, fs8, fs8, fa4, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs8, 96(a5)<br>     |
|   8|[0x80004680]<br>0xADFEEDBEADFEEDBE|- rs1 : f1<br> - rs2 : f9<br> - rs3 : f2<br> - rd : f9<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 3  #nosat<br>                                  |[0x800004a0]:fnmadd.d fs1, ft1, fs1, ft2, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd fs1, 112(a5)<br>    |
|   9|[0x80004690]<br>0x0000000A00000000|- rs1 : f23<br> - rs2 : f23<br> - rs3 : f18<br> - rd : f3<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                    |[0x800004c0]:fnmadd.d ft3, fs7, fs7, fs2, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft3, 128(a5)<br>    |
|  10|[0x800046a0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f7<br> - rs2 : f7<br> - rs3 : f7<br> - rd : f7<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                                    |[0x800004e0]:fnmadd.d ft7, ft7, ft7, ft7, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd ft7, 144(a5)<br>    |
|  11|[0x800046b0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f9<br> - rs2 : f16<br> - rs3 : f16<br> - rd : f31<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                                                    |[0x80000500]:fnmadd.d ft11, fs1, fa6, fa6, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd ft11, 160(a5)<br>  |
|  12|[0x800046c0]<br>0xF56FF76DF56FF76D|- rs1 : f14<br> - rs2 : f18<br> - rs3 : f17<br> - rd : f14<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 4  #nosat<br>                              |[0x80000520]:fnmadd.d fa4, fa4, fs2, fa7, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fa4, 176(a5)<br>    |
|  13|[0x800046d0]<br>0x0000000080004610|- rs1 : f10<br> - rs2 : f6<br> - rs3 : f30<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 3  #nosat<br>                                                                                          |[0x80000540]:fnmadd.d fa5, fa0, ft6, ft10, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd fa5, 192(a5)<br>   |
|  14|[0x800046e0]<br>0x0000000000000000|- rs1 : f27<br> - rs2 : f4<br> - rs3 : f6<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 2  #nosat<br>                                                                                            |[0x80000560]:fnmadd.d ft0, fs11, ft4, ft6, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft0, 208(a5)<br>   |
|  15|[0x800046f0]<br>0xEADFEEDBEADFEEDB|- rs1 : f28<br> - rs2 : f19<br> - rs3 : f27<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 1  #nosat<br>                                                                                         |[0x80000580]:fnmadd.d fa3, ft8, fs3, fs11, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa3, 224(a5)<br>   |
|  16|[0x80004700]<br>0x0000000080003000|- rs1 : f0<br> - rs2 : f12<br> - rs3 : f23<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5610c05b31c8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xd2834dff0917f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc8d5e8a69a864 and rm_val == 0  #nosat<br>                                                                                           |[0x800005a0]:fnmadd.d ft6, ft0, fa2, fs7, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd ft6, 240(a5)<br>    |
|  17|[0x80004710]<br>0x6DF56FF76DF56FF7|- rs1 : f12<br> - rs2 : f29<br> - rs3 : f8<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 4  #nosat<br>                                                                                          |[0x800005c0]:fnmadd.d fs6, fa2, ft9, fs0, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd fs6, 256(a5)<br>    |
|  18|[0x80004720]<br>0x0000000A00006000|- rs1 : f19<br> - rs2 : f8<br> - rs3 : f28<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 3  #nosat<br>                                                                                           |[0x800005e0]:fnmadd.d ft2, fs3, fs0, ft8, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd ft2, 272(a5)<br>    |
|  19|[0x80004730]<br>0xEEDBEADFEEDBEADF|- rs1 : f17<br> - rs2 : f1<br> - rs3 : f3<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 2  #nosat<br>                                                                                           |[0x80000600]:fnmadd.d ft9, fa7, ft1, ft3, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd ft9, 288(a5)<br>    |
|  20|[0x80004740]<br>0xFEEDBEADFEEDBEAD|- rs1 : f15<br> - rs2 : f3<br> - rs3 : f22<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 1  #nosat<br>                                                                                           |[0x80000620]:fnmadd.d ft1, fa5, ft3, fs6, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd ft1, 304(a5)<br>    |
|  21|[0x80004750]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f31<br> - rs2 : f17<br> - rs3 : f13<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf642299c3d7ea and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x001214aa3225f and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf665a2ce400e3 and rm_val == 0  #nosat<br>                                                                                         |[0x80000640]:fnmadd.d fa2, ft11, fa7, fa3, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fa2, 320(a5)<br>   |
|  22|[0x80004760]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f5<br> - rs2 : f11<br> - rs3 : f19<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 4  #nosat<br>                                                                                           |[0x80000660]:fnmadd.d ft4, ft5, fa1, fs3, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd ft4, 336(a5)<br>    |
|  23|[0x80004770]<br>0x0000000080003010|- rs1 : f13<br> - rs2 : f30<br> - rs3 : f0<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 3  #nosat<br>                                                                                          |[0x80000680]:fnmadd.d fa6, fa3, ft10, ft0, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd fa6, 352(a5)<br>   |
|  24|[0x80004780]<br>0xF76DF56FF76DF56F|- rs1 : f22<br> - rs2 : f13<br> - rs3 : f15<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 2  #nosat<br>                                                                                         |[0x800006a0]:fnmadd.d ft10, fs6, fa3, fa5, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd ft10, 368(a5)<br>  |
|  25|[0x80004790]<br>0x0000000000000005|- rs1 : f11<br> - rs2 : f14<br> - rs3 : f9<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 1  #nosat<br>                                                                                          |[0x800006c0]:fnmadd.d fa7, fa1, fa4, fs1, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd fa7, 384(a5)<br>    |
|  26|[0x800047a0]<br>0x0000000080000390|- rs1 : f3<br> - rs2 : f26<br> - rs3 : f31<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7e1cbdffe4992 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x10e1c43d3c4e6 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x974f860c491f9 and rm_val == 0  #nosat<br>                                                                                           |[0x800006e0]:fnmadd.d ft5, ft3, fs10, ft11, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd ft5, 400(a5)<br>  |
|  27|[0x800047b0]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f8<br> - rs2 : f2<br> - rs3 : f11<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 4  #nosat<br>                                                                                           |[0x80000700]:fnmadd.d fs4, fs0, ft2, fa1, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fs4, 416(a5)<br>    |
|  28|[0x800047c0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f25<br> - rs2 : f0<br> - rs3 : f21<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 3  #nosat<br>                                                                                           |[0x80000720]:fnmadd.d fs0, fs9, ft0, fs5, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fs0, 432(a5)<br>    |
|  29|[0x800047d0]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f6<br> - rs2 : f21<br> - rs3 : f5<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 2  #nosat<br>                                                                                           |[0x80000740]:fnmadd.d fs3, ft6, fs5, ft5, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd fs3, 448(a5)<br>    |
|  30|[0x800047e0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f21<br> - rs2 : f28<br> - rs3 : f1<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 1  #nosat<br>                                                                                          |[0x80000760]:fnmadd.d fs11, fs5, ft8, ft1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fs11, 464(a5)<br>  |
|  31|[0x800047f0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f16<br> - rs2 : f31<br> - rs3 : f12<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb8e934bdcc1bf and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf6db8ea3f5db5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb109b94c05e59 and rm_val == 0  #nosat<br>                                                                                         |[0x80000780]:fnmadd.d ft8, fa6, ft11, fa2, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd ft8, 480(a5)<br>   |
|  32|[0x80004800]<br>0xDBEADFEEDBEADFEE|- rs1 : f18<br> - rs2 : f27<br> - rs3 : f4<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 4  #nosat<br>                                                                                          |[0x800007a0]:fnmadd.d fs5, fs2, fs11, ft4, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd fs5, 496(a5)<br>   |
|  33|[0x80004810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>    |
|  34|[0x80004820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800007e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>    |
|  35|[0x80004830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000800]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>    |
|  36|[0x80004840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x03c1ecadc137f and fs2 == 0 and fe2 == 0x401 and fm2 == 0xf8884c44e2025 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfff0165f47cec and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000820]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>    |
|  37|[0x80004850]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000840]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>    |
|  38|[0x80004860]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000860]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>    |
|  39|[0x80004870]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000880]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>    |
|  40|[0x80004880]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800008a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>    |
|  41|[0x80004890]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8276674380fc3 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x07fa3fe059060 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e816c2502d73 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>    |
|  42|[0x800048a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800008e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>    |
|  43|[0x800048b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000900]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>    |
|  44|[0x800048c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000920]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>    |
|  45|[0x800048d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000940]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>    |
|  46|[0x800048e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d93686797715 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xf9620c1581628 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3978b52ff3f23 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000960]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>    |
|  47|[0x800048f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000980]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>    |
|  48|[0x80004900]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>    |
|  49|[0x80004910]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800009c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>    |
|  50|[0x80004920]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800009e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>    |
|  51|[0x80004930]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54e6e64764369 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x5bbe5dcd5070e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xcf127a6af77f2 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>    |
|  52|[0x80004940]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000a20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>    |
|  53|[0x80004950]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>    |
|  54|[0x80004960]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000a60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>    |
|  55|[0x80004970]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000a80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>    |
|  56|[0x80004980]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e5d8dcad33c4 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x67373f406a831 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x177d952f13e9f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000aa0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>    |
|  57|[0x80004990]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000ac0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>    |
|  58|[0x800049a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ae0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>    |
|  59|[0x800049b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000b00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>    |
|  60|[0x800049c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000b20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>    |
|  61|[0x800049d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x657d95216ac01 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x25d92dbf7772b and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x9a5803051b37f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000b40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>    |
|  62|[0x800049e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000b60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>    |
|  63|[0x800049f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>    |
|  64|[0x80004a00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ba0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>   |
|  65|[0x80004a10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000bc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>   |
|  66|[0x80004a20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xadd854d58145f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x07ed749af0a91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbb27f4381021f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000be0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>   |
|  67|[0x80004a30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000c00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>   |
|  68|[0x80004a40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>   |
|  69|[0x80004a50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000c40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>   |
|  70|[0x80004a60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000c60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>   |
|  71|[0x80004a70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xef5aa91c82b3d and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x24583e9aa4a5b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1ad71498eb7bb and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000c80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>   |
|  72|[0x80004a80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000ca0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>   |
|  73|[0x80004a90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000cc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>   |
|  74|[0x80004aa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ce0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>   |
|  75|[0x80004ab0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000d00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>   |
|  76|[0x80004ac0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3fc6805c084d1 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x41b82ca2e0c7d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x91ddf5613b02f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000d20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>   |
|  77|[0x80004ad0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000d40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>   |
|  78|[0x80004ae0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>   |
|  79|[0x80004af0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000d80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>   |
|  80|[0x80004b00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000da0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>   |
|  81|[0x80004b10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xde8341376716f and fs2 == 0 and fe2 == 0x401 and fm2 == 0x6b11ecf872f9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5352cf9125058 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000dc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>   |
|  82|[0x80004b20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000de0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>   |
|  83|[0x80004b30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>   |
|  84|[0x80004b40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000e20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>   |
|  85|[0x80004b50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000e40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>   |
|  86|[0x80004b60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc299b1ab6e737 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31948e12564a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0cef4bccbe789 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000e64]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>   |
|  87|[0x80004b70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000e84]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>   |
|  88|[0x80004b80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ea4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>   |
|  89|[0x80004b90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ec4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>   |
|  90|[0x80004ba0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000ee4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>   |
|  91|[0x80004bb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2da5f3c7a7466 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x37c47ae0bad3a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x6f5c1f001498f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000f04]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>   |
|  92|[0x80004bc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000f24]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>   |
|  93|[0x80004bd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f44]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>   |
|  94|[0x80004be0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000f64]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>   |
|  95|[0x80004bf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000f84]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>   |
|  96|[0x80004c00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x341836db80049 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x02efa596fbdf8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x37a0d12dbe9d7 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000fa4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>   |
|  97|[0x80004c10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000fc4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>   |
|  98|[0x80004c20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fe4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>   |
|  99|[0x80004c30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001004]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>   |
| 100|[0x80004c40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001024]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>   |
| 101|[0x80004c50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xd1aa6d115d25f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x96deab3c53820 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x720ca91f58bdf and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001044]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>   |
| 102|[0x80004c60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001064]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>   |
| 103|[0x80004c70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001084]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>   |
| 104|[0x80004c80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800010a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>   |
| 105|[0x80004c90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800010c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>   |
| 106|[0x80004ca0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c6b24203c777 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x364e03ef31b27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf3e76cbaa48e2 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800010e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>   |
| 107|[0x80004cb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001104]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>   |
| 108|[0x80004cc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001124]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>   |
| 109|[0x80004cd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001144]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>   |
| 110|[0x80004ce0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001164]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>   |
| 111|[0x80004cf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a0550fe15035 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x152f2078be37b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x655481791d37f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001184]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>   |
| 112|[0x80004d00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800011a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>   |
| 113|[0x80004d10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>   |
| 114|[0x80004d20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800011e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>   |
| 115|[0x80004d30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001204]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>   |
| 116|[0x80004d40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ab73cc65f52 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x21b7b40acb837 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x07805b64db437 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001224]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>   |
| 117|[0x80004d50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001244]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>   |
| 118|[0x80004d60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001264]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>   |
| 119|[0x80004d70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001284]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>   |
| 120|[0x80004d80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800012a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>   |
| 121|[0x80004d90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7107573e4c40b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x4b4a64f556751 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdd8fbb754b55c and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800012c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>   |
| 122|[0x80004da0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800012e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>   |
| 123|[0x80004db0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001304]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>   |
| 124|[0x80004dc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001324]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>   |
| 125|[0x80004dd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001344]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>   |
| 126|[0x80004de0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b63fed3f1873 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xa1a2014c80658 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f911cba6947d and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001364]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>   |
| 127|[0x80004df0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001384]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>   |
| 128|[0x80004e00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>      |
| 129|[0x80004e10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800013cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>     |
| 130|[0x80004e20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800013ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>     |
| 131|[0x80004e30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe71a5cc2ec78b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x3cc01737b632f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2d590539c6e1b and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000140c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>     |
| 132|[0x80004e40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000142c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>     |
| 133|[0x80004e50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000144c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>     |
| 134|[0x80004e60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000146c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>     |
| 135|[0x80004e70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000148c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>    |
| 136|[0x80004e80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x45141572f8653 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xd59f46589e2bf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a2c060c7c8c5 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800014ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>    |
| 137|[0x80004e90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800014cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>    |
| 138|[0x80004ea0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>    |
| 139|[0x80004eb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000150c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>    |
| 140|[0x80004ec0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000152c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>    |
| 141|[0x80004ed0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x801fd982d9eb7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x0d1acf34aef92 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x93c9b1b3642af and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000154c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>    |
| 142|[0x80004ee0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000156c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>    |
| 143|[0x80004ef0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000158c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>    |
| 144|[0x80004f00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800015ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>    |
| 145|[0x80004f10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800015cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>    |
| 146|[0x80004f20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c0c529007f92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x1b3e375a83590 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc7e5c3598d2dd and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800015ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>    |
| 147|[0x80004f30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000160c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>    |
| 148|[0x80004f40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000162c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>    |
| 149|[0x80004f50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000164c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001650]:csrrs a7, fflags, zero<br> [0x80001654]:fsd fa3, 336(a5)<br>    |
| 150|[0x80004f60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000166c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:fsd fa3, 352(a5)<br>    |
| 151|[0x80004f70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7d7ab2b96a7d7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x12f7d90af6886 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99bea81a3c895 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000168c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001690]:csrrs a7, fflags, zero<br> [0x80001694]:fsd fa3, 368(a5)<br>    |
| 152|[0x80004f80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800016ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016b0]:csrrs a7, fflags, zero<br> [0x800016b4]:fsd fa3, 384(a5)<br>    |
| 153|[0x80004f90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800016cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsd fa3, 400(a5)<br>    |
| 154|[0x80004fa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800016ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa3, 416(a5)<br>    |
| 155|[0x80004fb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000170c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001710]:csrrs a7, fflags, zero<br> [0x80001714]:fsd fa3, 432(a5)<br>    |
| 156|[0x80004fc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb045c5db2e460 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9703f7515ec33 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x57a2cffec0101 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000172c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:fsd fa3, 448(a5)<br>    |
| 157|[0x80004fd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000174c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001750]:csrrs a7, fflags, zero<br> [0x80001754]:fsd fa3, 464(a5)<br>    |
| 158|[0x80004fe0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000176c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001770]:csrrs a7, fflags, zero<br> [0x80001774]:fsd fa3, 480(a5)<br>    |
| 159|[0x80004ff0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000178c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:fsd fa3, 496(a5)<br>    |
| 160|[0x80005000]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800017ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsd fa3, 512(a5)<br>    |
| 161|[0x80005010]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b52b2a70b02a and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xb500d269fc9eb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f12be85a3941 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800017cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa3, 528(a5)<br>    |
| 162|[0x80005020]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800017ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:fsd fa3, 544(a5)<br>    |
| 163|[0x80005030]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000180c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001810]:csrrs a7, fflags, zero<br> [0x80001814]:fsd fa3, 560(a5)<br>    |
| 164|[0x80005040]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000182c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001830]:csrrs a7, fflags, zero<br> [0x80001834]:fsd fa3, 576(a5)<br>    |
| 165|[0x80005050]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000184c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:fsd fa3, 592(a5)<br>    |
| 166|[0x80005060]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c39382ea6198 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x51b4351475892 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0fe4c054d9e8b and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000186c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001870]:csrrs a7, fflags, zero<br> [0x80001874]:fsd fa3, 608(a5)<br>    |
| 167|[0x80005070]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000188c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsd fa3, 624(a5)<br>    |
| 168|[0x80005080]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800018ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa3, 640(a5)<br>    |
| 169|[0x80005090]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800018cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018d0]:csrrs a7, fflags, zero<br> [0x800018d4]:fsd fa3, 656(a5)<br>    |
| 170|[0x800050a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800018ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018f0]:csrrs a7, fflags, zero<br> [0x800018f4]:fsd fa3, 672(a5)<br>    |
| 171|[0x800050b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8b3ba7903c2ab and fs2 == 0 and fe2 == 0x400 and fm2 == 0x6f3177f7676dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1b73726cc4ff0 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001910]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:fsd fa3, 688(a5)<br>    |
| 172|[0x800050c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001930]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001934]:csrrs a7, fflags, zero<br> [0x80001938]:fsd fa3, 704(a5)<br>    |
| 173|[0x800050d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001950]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa3, 720(a5)<br>    |
| 174|[0x800050e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001970]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa3, 736(a5)<br>    |
| 175|[0x800050f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001990]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001994]:csrrs a7, fflags, zero<br> [0x80001998]:fsd fa3, 752(a5)<br>    |
| 176|[0x80005100]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x139cbde283143 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x445c6db753ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5d35e2c6078a3 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800019b0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa3, 768(a5)<br>    |
| 177|[0x80005110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800019d0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:fsd fa3, 784(a5)<br>    |
| 178|[0x80005120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800019f0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019f4]:csrrs a7, fflags, zero<br> [0x800019f8]:fsd fa3, 800(a5)<br>    |
| 179|[0x80005130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001a10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa3, 816(a5)<br>    |
| 180|[0x80005140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001a30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsd fa3, 832(a5)<br>    |
| 181|[0x80005150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ab99b7d728b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x2270fb41a1218 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa7f14df48da55 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001a50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa3, 848(a5)<br>    |
| 182|[0x80005160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001a70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa3, 864(a5)<br>    |
| 183|[0x80005170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:fsd fa3, 880(a5)<br>    |
| 184|[0x80005180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001ab0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ab4]:csrrs a7, fflags, zero<br> [0x80001ab8]:fsd fa3, 896(a5)<br>    |
| 185|[0x80005190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001ad0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa3, 912(a5)<br>    |
| 186|[0x800051a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x173e2abe9259b and fs2 == 0 and fe2 == 0x400 and fm2 == 0x7867ec4d41237 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9a94aa8cadc89 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001af0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:fsd fa3, 928(a5)<br>    |
| 187|[0x800051b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001b10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsd fa3, 944(a5)<br>    |
| 188|[0x800051c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa3, 960(a5)<br>    |
| 189|[0x800051d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001b50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:fsd fa3, 976(a5)<br>    |
| 190|[0x800051e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001b70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b74]:csrrs a7, fflags, zero<br> [0x80001b78]:fsd fa3, 992(a5)<br>    |
| 191|[0x800051f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7e1dc0a8e1a11 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x082b9acfac9b7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8a4fc4c166a46 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001b90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b94]:csrrs a7, fflags, zero<br> [0x80001b98]:fsd fa3, 1008(a5)<br>   |
| 192|[0x80005200]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001bb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:fsd fa3, 1024(a5)<br>   |
| 193|[0x80005210]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001bd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bd4]:csrrs a7, fflags, zero<br> [0x80001bd8]:fsd fa3, 1040(a5)<br>   |
| 194|[0x80005220]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001bf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsd fa3, 1056(a5)<br>   |
| 195|[0x80005230]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001c10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa3, 1072(a5)<br>   |
| 196|[0x80005240]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe18a54fb9615f and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x9d9644f56bb65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84fb69ef078ea and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001c30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c34]:csrrs a7, fflags, zero<br> [0x80001c38]:fsd fa3, 1088(a5)<br>   |
| 197|[0x80005250]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001c50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c54]:csrrs a7, fflags, zero<br> [0x80001c58]:fsd fa3, 1104(a5)<br>   |
| 198|[0x80005260]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:fsd fa3, 1120(a5)<br>   |
| 199|[0x80005270]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001c90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c94]:csrrs a7, fflags, zero<br> [0x80001c98]:fsd fa3, 1136(a5)<br>   |
| 200|[0x80005280]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001cb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cb4]:csrrs a7, fflags, zero<br> [0x80001cb8]:fsd fa3, 1152(a5)<br>   |
| 201|[0x80005290]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f3 and fm1 == 0xd9a84a89337ff and fs2 == 0 and fe2 == 0x409 and fm2 == 0x6ed5a71e5433a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x535cf46588f5e and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001cd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsd fa3, 1168(a5)<br>   |
| 202|[0x800052a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001cf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa3, 1184(a5)<br>   |
| 203|[0x800052b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d14]:csrrs a7, fflags, zero<br> [0x80001d18]:fsd fa3, 1200(a5)<br>   |
| 204|[0x800052c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001d30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsd fa3, 1216(a5)<br>   |
| 205|[0x800052d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001d50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d54]:csrrs a7, fflags, zero<br> [0x80001d58]:fsd fa3, 1232(a5)<br>   |
| 206|[0x800052e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0aceae190521 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x142a90077145a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0be68084b69b7 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001d70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d74]:csrrs a7, fflags, zero<br> [0x80001d78]:fsd fa3, 1248(a5)<br>   |
| 207|[0x800052f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001d90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:fsd fa3, 1264(a5)<br>   |
| 208|[0x80005300]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001db0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001db4]:csrrs a7, fflags, zero<br> [0x80001db8]:fsd fa3, 1280(a5)<br>   |
| 209|[0x80005310]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001dd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa3, 1296(a5)<br>   |
| 210|[0x80005320]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9630abe4b977e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x093bbbbab15dc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa4d72905280d4 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001df0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:fsd fa3, 1312(a5)<br>   |
| 211|[0x80005330]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001e10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e14]:csrrs a7, fflags, zero<br> [0x80001e18]:fsd fa3, 1328(a5)<br>   |
| 212|[0x80005340]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e34]:csrrs a7, fflags, zero<br> [0x80001e38]:fsd fa3, 1344(a5)<br>   |
| 213|[0x80005350]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001e50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:fsd fa3, 1360(a5)<br>   |
| 214|[0x80005360]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc9ed4464571af and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xdbdc83df362e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa99ad8d852394 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001e70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e74]:csrrs a7, fflags, zero<br> [0x80001e78]:fsd fa3, 1376(a5)<br>   |
| 215|[0x80005370]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001e90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e94]:csrrs a7, fflags, zero<br> [0x80001e98]:fsd fa3, 1392(a5)<br>   |
| 216|[0x80005380]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001eb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:fsd fa3, 1408(a5)<br>   |
| 217|[0x80005390]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001ed0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ed4]:csrrs a7, fflags, zero<br> [0x80001ed8]:fsd fa3, 1424(a5)<br>   |
| 218|[0x800053a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5726b277b5dce and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x53c36b188da64 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc76e305c8d1af and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001ef0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ef4]:csrrs a7, fflags, zero<br> [0x80001ef8]:fsd fa3, 1440(a5)<br>   |
